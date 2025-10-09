; ModuleID = 'src/mv-search.c'
source_filename = "src/mv-search.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.timeb = type { i64, i16, i16, i16 }

@QP2QUANT = dso_local local_unnamed_addr constant [40 x i32] [i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 16, i32 18, i32 20, i32 23, i32 25, i32 29, i32 32, i32 36, i32 40, i32 45, i32 51, i32 57, i32 64, i32 72, i32 81, i32 91], align 4
@LEVELMVLIMIT = dso_local local_unnamed_addr constant [17 x [6 x i32]] [[6 x i32] [i32 -63, i32 63, i32 -128, i32 127, i32 -256, i32 255], [6 x i32] [i32 -63, i32 63, i32 -128, i32 127, i32 -256, i32 255], [6 x i32] [i32 -127, i32 127, i32 -256, i32 255, i32 -512, i32 511], [6 x i32] [i32 -127, i32 127, i32 -256, i32 255, i32 -512, i32 511], [6 x i32] [i32 -127, i32 127, i32 -256, i32 255, i32 -512, i32 511], [6 x i32] [i32 -127, i32 127, i32 -256, i32 255, i32 -512, i32 511], [6 x i32] [i32 -255, i32 255, i32 -512, i32 511, i32 -1024, i32 1023], [6 x i32] [i32 -255, i32 255, i32 -512, i32 511, i32 -1024, i32 1023], [6 x i32] [i32 -255, i32 255, i32 -512, i32 511, i32 -1024, i32 1023], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047]], align 4
@input = external dso_local local_unnamed_addr global ptr, align 8
@BlockSAD = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [42 x i8] c"InitializeFastFullIntegerSearch: BlockSAD\00", align 1
@img = external dso_local local_unnamed_addr global ptr, align 8
@search_setup_done = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"InitializeFastFullIntegerSearch: search_setup_done\00", align 1
@search_center_x = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"InitializeFastFullIntegerSearch: search_center_x\00", align 1
@search_center_y = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"InitializeFastFullIntegerSearch: search_center_y\00", align 1
@pos_00 = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"InitializeFastFullIntegerSearch: pos_00\00", align 1
@max_search_range = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"InitializeFastFullIntegerSearch: max_search_range\00", align 1
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@listX = external dso_local local_unnamed_addr global [6 x ptr], align 8
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org = external dso_local local_unnamed_addr global ptr, align 8
@PelYline_11 = internal unnamed_addr global ptr null, align 8
@spiral_search_x = dso_local local_unnamed_addr global ptr null, align 8
@spiral_search_y = dso_local local_unnamed_addr global ptr null, align 8
@byte_abs = dso_local local_unnamed_addr global ptr null, align 8
@FME_blocktype = external dso_local local_unnamed_addr global i32, align 4
@pred_SAD_space = external dso_local local_unnamed_addr global i32, align 4
@fastme_l1_cost = external dso_local local_unnamed_addr global ptr, align 8
@fastme_l0_cost = external dso_local local_unnamed_addr global ptr, align 8
@max_mvd = dso_local local_unnamed_addr global i32 0, align 4
@byte_abs_range = dso_local local_unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Init_Motion_Search_Module: spiral_search_x\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Init_Motion_Search_Module: spiral_search_y\00", align 1
@spiral_hpel_search_x = dso_local local_unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"Init_Motion_Search_Module: spiral_hpel_search_x\00", align 1
@spiral_hpel_search_y = dso_local local_unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [48 x i8] c"Init_Motion_Search_Module: spiral_hpel_search_y\00", align 1
@mvbits = dso_local local_unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"Init_Motion_Search_Module: mvbits\00", align 1
@refbits = dso_local local_unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"Init_Motion_Search_Module: refbits\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Init_Motion_Search_Module: byte_abs\00", align 1
@motion_cost = dso_local global ptr null, align 8
@get_line = internal unnamed_addr global ptr null, align 8
@SubPelThreshold3 = external dso_local local_unnamed_addr global i16, align 2
@block_type_shift_factor = internal unnamed_addr constant [8 x i16] [i16 0, i16 0, i16 1, i16 1, i16 2, i16 3, i16 3, i16 1], align 2
@SubPelThreshold1 = external dso_local local_unnamed_addr global i16, align 2
@wbp_weight = external dso_local local_unnamed_addr global ptr, align 8
@luma_log_weight_denom = external dso_local local_unnamed_addr global i32, align 4
@wp_offset = external dso_local local_unnamed_addr global ptr, align 8
@wp_luma_round = external dso_local local_unnamed_addr global i32, align 4
@get_line_p2 = internal unnamed_addr global ptr null, align 8
@get_line_p1 = internal unnamed_addr global ptr null, align 8
@BlockMotionSearch.orig_val = internal global [256 x i16] zeroinitializer, align 2
@BlockMotionSearch.orig_pic = internal global [16 x ptr] [ptr @BlockMotionSearch.orig_val, ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 32), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 64), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 96), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 128), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 160), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 192), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 224), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 256), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 288), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 320), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 352), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 384), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 416), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 448), ptr getelementptr (i8, ptr @BlockMotionSearch.orig_val, i64 480)], align 8
@EPZSDistortion = external dso_local local_unnamed_addr global ptr, align 8
@fastme_ref_cost = external dso_local local_unnamed_addr global ptr, align 8
@simplified_fastme_l0_cost = external dso_local local_unnamed_addr global ptr, align 8
@simplified_fastme_l1_cost = external dso_local local_unnamed_addr global ptr, align 8
@me_tot_time = external dso_local local_unnamed_addr global i32, align 4
@me_time = external dso_local local_unnamed_addr global i32, align 4
@direct_pdir = external dso_local local_unnamed_addr global ptr, align 8
@direct_ref_idx = external dso_local local_unnamed_addr global ptr, align 8
@PartitionMotionSearch.bx0 = internal unnamed_addr constant [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] [i32 0, i32 2, i32 0, i32 2]], align 4
@PartitionMotionSearch.by0 = internal unnamed_addr constant [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 0, i32 2, i32 2]], align 4
@listXsize = external dso_local local_unnamed_addr global [6 x i32], align 4
@Co_located = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind
define dso_local void @InitializeFastFullIntegerSearch() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 32
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = shl nsw i32 %3, 1
  %5 = or disjoint i32 %4, 1
  %6 = mul nsw i32 %5, %5
  %7 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  store ptr %7, ptr @BlockSAD, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  br label %10

10:                                               ; preds = %9, %0
  %11 = zext nneg i32 %6 to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = load ptr, ptr @img, align 8, !tbaa !6
  %14 = getelementptr inbounds i8, ptr %13, i64 36
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #15
  %19 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  store ptr %18, ptr %19, align 8, !tbaa !6
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  br label %22

22:                                               ; preds = %21, %10
  %23 = load ptr, ptr @img, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 36
  %25 = load i32, ptr %24, align 4, !tbaa !14
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %22, %69
  %28 = phi i64 [ %70, %69 ], [ 0, %22 ]
  %29 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  %30 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds ptr, ptr %31, i64 %28
  store ptr %29, ptr %32, align 8, !tbaa !6
  %33 = icmp eq ptr %29, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35, %66
  %37 = phi i64 [ %67, %66 ], [ 1, %35 ]
  %38 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #15
  %39 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = getelementptr inbounds ptr, ptr %40, i64 %28
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = getelementptr inbounds ptr, ptr %42, i64 %37
  store ptr %38, ptr %43, align 8, !tbaa !6
  %44 = icmp eq ptr %38, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  %46 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  br label %47

47:                                               ; preds = %45, %36
  %48 = phi ptr [ %39, %36 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %62
  %50 = phi ptr [ %63, %62 ], [ %48, %47 ]
  %51 = phi i64 [ %64, %62 ], [ 0, %47 ]
  %52 = tail call noalias ptr @malloc(i64 noundef %12) #15
  %53 = load ptr, ptr %50, align 8, !tbaa !6
  %54 = getelementptr inbounds ptr, ptr %53, i64 %28
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds ptr, ptr %55, i64 %37
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = getelementptr inbounds ptr, ptr %57, i64 %51
  store ptr %52, ptr %58, align 8, !tbaa !6
  %59 = icmp eq ptr %52, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  %61 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  br label %62

62:                                               ; preds = %49, %60
  %63 = phi ptr [ %50, %49 ], [ %61, %60 ]
  %64 = add nuw nsw i64 %51, 1
  %65 = icmp eq i64 %64, 16
  br i1 %65, label %66, label %49

66:                                               ; preds = %62
  %67 = add nuw nsw i64 %37, 1
  %68 = icmp eq i64 %67, 8
  br i1 %68, label %69, label %36

69:                                               ; preds = %66
  %70 = add nuw nsw i64 %28, 1
  %71 = load ptr, ptr @img, align 8, !tbaa !6
  %72 = getelementptr inbounds i8, ptr %71, i64 36
  %73 = load i32, ptr %72, align 4, !tbaa !14
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %70, %74
  br i1 %75, label %27, label %76

76:                                               ; preds = %69, %22
  %77 = phi ptr [ %23, %22 ], [ %71, %69 ]
  %78 = getelementptr inbounds i8, ptr %77, i64 36
  %79 = load i32, ptr %78, align 4, !tbaa !14
  %80 = sext i32 %79 to i64
  %81 = shl nsw i64 %80, 3
  %82 = tail call noalias ptr @malloc(i64 noundef %81) #15
  %83 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 8
  store ptr %82, ptr %84, align 8, !tbaa !6
  %85 = icmp eq ptr %82, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  br label %87

87:                                               ; preds = %86, %76
  %88 = load ptr, ptr @img, align 8, !tbaa !6
  %89 = getelementptr inbounds i8, ptr %88, i64 36
  %90 = load i32, ptr %89, align 4, !tbaa !14
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %87, %137
  %93 = phi i64 [ %138, %137 ], [ 0, %87 ]
  %94 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  %95 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %95, i64 8
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = getelementptr inbounds ptr, ptr %97, i64 %93
  store ptr %94, ptr %98, align 8, !tbaa !6
  %99 = icmp eq ptr %94, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  br label %101

101:                                              ; preds = %100, %92
  br label %102

102:                                              ; preds = %134, %101
  %103 = phi i64 [ %135, %134 ], [ 1, %101 ]
  %104 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #15
  %105 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %106 = getelementptr inbounds i8, ptr %105, i64 8
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = getelementptr inbounds ptr, ptr %107, i64 %93
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = getelementptr inbounds ptr, ptr %109, i64 %103
  store ptr %104, ptr %110, align 8, !tbaa !6
  %111 = icmp eq ptr %104, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  %113 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  br label %114

114:                                              ; preds = %112, %102
  %115 = phi ptr [ %105, %102 ], [ %113, %112 ]
  br label %116

116:                                              ; preds = %130, %114
  %117 = phi ptr [ %131, %130 ], [ %115, %114 ]
  %118 = phi i64 [ %132, %130 ], [ 0, %114 ]
  %119 = tail call noalias ptr @malloc(i64 noundef %12) #15
  %120 = getelementptr inbounds i8, ptr %117, i64 8
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = getelementptr inbounds ptr, ptr %121, i64 %93
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = getelementptr inbounds ptr, ptr %123, i64 %103
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = getelementptr inbounds ptr, ptr %125, i64 %118
  store ptr %119, ptr %126, align 8, !tbaa !6
  %127 = icmp eq ptr %119, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %116
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #16
  %129 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  br label %130

130:                                              ; preds = %128, %116
  %131 = phi ptr [ %117, %116 ], [ %129, %128 ]
  %132 = add nuw nsw i64 %118, 1
  %133 = icmp eq i64 %132, 16
  br i1 %133, label %134, label %116

134:                                              ; preds = %130
  %135 = add nuw nsw i64 %103, 1
  %136 = icmp eq i64 %135, 8
  br i1 %136, label %137, label %102

137:                                              ; preds = %134
  %138 = add nuw nsw i64 %93, 1
  %139 = load ptr, ptr @img, align 8, !tbaa !6
  %140 = getelementptr inbounds i8, ptr %139, i64 36
  %141 = load i32, ptr %140, align 4, !tbaa !14
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %138, %142
  br i1 %143, label %92, label %144

144:                                              ; preds = %137, %87
  %145 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  store ptr %145, ptr @search_setup_done, align 8, !tbaa !6
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #16
  br label %148

148:                                              ; preds = %147, %144
  %149 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  store ptr %149, ptr @search_center_x, align 8, !tbaa !6
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #16
  br label %152

152:                                              ; preds = %151, %148
  %153 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  store ptr %153, ptr @search_center_y, align 8, !tbaa !6
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #16
  br label %156

156:                                              ; preds = %155, %152
  %157 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  store ptr %157, ptr @pos_00, align 8, !tbaa !6
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #16
  br label %160

160:                                              ; preds = %159, %156
  %161 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  store ptr %161, ptr @max_search_range, align 8, !tbaa !6
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #16
  br label %164

164:                                              ; preds = %163, %160
  %165 = load ptr, ptr @img, align 8, !tbaa !6
  %166 = getelementptr inbounds i8, ptr %165, i64 36
  %167 = load i32, ptr %166, align 4, !tbaa !14
  %168 = sext i32 %167 to i64
  %169 = shl nsw i64 %168, 2
  %170 = tail call noalias ptr @malloc(i64 noundef %169) #15
  %171 = load ptr, ptr @search_setup_done, align 8, !tbaa !6
  store ptr %170, ptr %171, align 8, !tbaa !6
  %172 = icmp eq ptr %170, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %164
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #16
  br label %174

174:                                              ; preds = %173, %164
  %175 = load ptr, ptr @img, align 8, !tbaa !6
  %176 = getelementptr inbounds i8, ptr %175, i64 36
  %177 = load i32, ptr %176, align 4, !tbaa !14
  %178 = sext i32 %177 to i64
  %179 = shl nsw i64 %178, 2
  %180 = tail call noalias ptr @malloc(i64 noundef %179) #15
  %181 = load ptr, ptr @search_center_x, align 8, !tbaa !6
  store ptr %180, ptr %181, align 8, !tbaa !6
  %182 = icmp eq ptr %180, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #16
  br label %184

184:                                              ; preds = %183, %174
  %185 = load ptr, ptr @img, align 8, !tbaa !6
  %186 = getelementptr inbounds i8, ptr %185, i64 36
  %187 = load i32, ptr %186, align 4, !tbaa !14
  %188 = sext i32 %187 to i64
  %189 = shl nsw i64 %188, 2
  %190 = tail call noalias ptr @malloc(i64 noundef %189) #15
  %191 = load ptr, ptr @search_center_y, align 8, !tbaa !6
  store ptr %190, ptr %191, align 8, !tbaa !6
  %192 = icmp eq ptr %190, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %184
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #16
  br label %194

194:                                              ; preds = %193, %184
  %195 = load ptr, ptr @img, align 8, !tbaa !6
  %196 = getelementptr inbounds i8, ptr %195, i64 36
  %197 = load i32, ptr %196, align 4, !tbaa !14
  %198 = sext i32 %197 to i64
  %199 = shl nsw i64 %198, 2
  %200 = tail call noalias ptr @malloc(i64 noundef %199) #15
  %201 = load ptr, ptr @pos_00, align 8, !tbaa !6
  store ptr %200, ptr %201, align 8, !tbaa !6
  %202 = icmp eq ptr %200, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #16
  br label %204

204:                                              ; preds = %203, %194
  %205 = load ptr, ptr @img, align 8, !tbaa !6
  %206 = getelementptr inbounds i8, ptr %205, i64 36
  %207 = load i32, ptr %206, align 4, !tbaa !14
  %208 = sext i32 %207 to i64
  %209 = shl nsw i64 %208, 2
  %210 = tail call noalias ptr @malloc(i64 noundef %209) #15
  %211 = load ptr, ptr @max_search_range, align 8, !tbaa !6
  store ptr %210, ptr %211, align 8, !tbaa !6
  %212 = icmp eq ptr %210, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #16
  br label %214

214:                                              ; preds = %204, %213
  %215 = load ptr, ptr @img, align 8, !tbaa !6
  %216 = getelementptr inbounds i8, ptr %215, i64 36
  %217 = load i32, ptr %216, align 4, !tbaa !14
  %218 = sext i32 %217 to i64
  %219 = shl nsw i64 %218, 2
  %220 = tail call noalias ptr @malloc(i64 noundef %219) #15
  %221 = load ptr, ptr @search_setup_done, align 8, !tbaa !6
  %222 = getelementptr inbounds i8, ptr %221, i64 8
  store ptr %220, ptr %222, align 8, !tbaa !6
  %223 = icmp eq ptr %220, null
  br i1 %223, label %224, label %230

224:                                              ; preds = %214
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #16
  %225 = load ptr, ptr @img, align 8, !tbaa !6
  %226 = getelementptr inbounds i8, ptr %225, i64 36
  %227 = load i32, ptr %226, align 4, !tbaa !14
  %228 = sext i32 %227 to i64
  %229 = shl nsw i64 %228, 2
  br label %230

230:                                              ; preds = %224, %214
  %231 = phi i64 [ %229, %224 ], [ %219, %214 ]
  %232 = tail call noalias ptr @malloc(i64 noundef %231) #15
  %233 = load ptr, ptr @search_center_x, align 8, !tbaa !6
  %234 = getelementptr inbounds i8, ptr %233, i64 8
  store ptr %232, ptr %234, align 8, !tbaa !6
  %235 = icmp eq ptr %232, null
  br i1 %235, label %236, label %242

236:                                              ; preds = %230
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #16
  %237 = load ptr, ptr @img, align 8, !tbaa !6
  %238 = getelementptr inbounds i8, ptr %237, i64 36
  %239 = load i32, ptr %238, align 4, !tbaa !14
  %240 = sext i32 %239 to i64
  %241 = shl nsw i64 %240, 2
  br label %242

242:                                              ; preds = %236, %230
  %243 = phi i64 [ %241, %236 ], [ %231, %230 ]
  %244 = tail call noalias ptr @malloc(i64 noundef %243) #15
  %245 = load ptr, ptr @search_center_y, align 8, !tbaa !6
  %246 = getelementptr inbounds i8, ptr %245, i64 8
  store ptr %244, ptr %246, align 8, !tbaa !6
  %247 = icmp eq ptr %244, null
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #16
  %249 = load ptr, ptr @img, align 8, !tbaa !6
  %250 = getelementptr inbounds i8, ptr %249, i64 36
  %251 = load i32, ptr %250, align 4, !tbaa !14
  %252 = sext i32 %251 to i64
  %253 = shl nsw i64 %252, 2
  br label %254

254:                                              ; preds = %248, %242
  %255 = phi i64 [ %253, %248 ], [ %243, %242 ]
  %256 = tail call noalias ptr @malloc(i64 noundef %255) #15
  %257 = load ptr, ptr @pos_00, align 8, !tbaa !6
  %258 = getelementptr inbounds i8, ptr %257, i64 8
  store ptr %256, ptr %258, align 8, !tbaa !6
  %259 = icmp eq ptr %256, null
  br i1 %259, label %260, label %266

260:                                              ; preds = %254
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #16
  %261 = load ptr, ptr @img, align 8, !tbaa !6
  %262 = getelementptr inbounds i8, ptr %261, i64 36
  %263 = load i32, ptr %262, align 4, !tbaa !14
  %264 = sext i32 %263 to i64
  %265 = shl nsw i64 %264, 2
  br label %266

266:                                              ; preds = %260, %254
  %267 = phi i64 [ %265, %260 ], [ %255, %254 ]
  %268 = tail call noalias ptr @malloc(i64 noundef %267) #15
  %269 = load ptr, ptr @max_search_range, align 8, !tbaa !6
  %270 = getelementptr inbounds i8, ptr %269, i64 8
  store ptr %268, ptr %270, align 8, !tbaa !6
  %271 = icmp eq ptr %268, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #16
  br label %273

273:                                              ; preds = %272, %266
  %274 = load ptr, ptr @input, align 8, !tbaa !6
  %275 = getelementptr inbounds i8, ptr %274, i64 3108
  %276 = load i32, ptr %275, align 4, !tbaa !18
  %277 = icmp eq i32 %276, 2
  br i1 %277, label %286, label %278

278:                                              ; preds = %273
  %279 = load ptr, ptr @max_search_range, align 8, !tbaa !6
  %280 = load ptr, ptr @img, align 8, !tbaa !6
  %281 = getelementptr inbounds i8, ptr %280, i64 36
  %282 = sdiv i32 %3, 2
  %283 = load ptr, ptr %279, align 8, !tbaa !6
  store i32 %3, ptr %283, align 4, !tbaa !19
  %284 = load i32, ptr %281, align 4, !tbaa !14
  %285 = icmp sgt i32 %284, 1
  br i1 %285, label %313, label %320

286:                                              ; preds = %273
  %287 = load ptr, ptr @img, align 8, !tbaa !6
  %288 = getelementptr inbounds i8, ptr %287, i64 36
  %289 = load ptr, ptr @max_search_range, align 8
  %290 = load i32, ptr %288, align 4, !tbaa !14
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %332

292:                                              ; preds = %286
  %293 = load ptr, ptr %289, align 8, !tbaa !6
  br label %294

294:                                              ; preds = %292, %294
  %295 = phi i64 [ 0, %292 ], [ %297, %294 ]
  %296 = getelementptr inbounds i32, ptr %293, i64 %295
  store i32 %3, ptr %296, align 4, !tbaa !19
  %297 = add nuw nsw i64 %295, 1
  %298 = load i32, ptr %288, align 4, !tbaa !14
  %299 = sext i32 %298 to i64
  %300 = icmp slt i64 %297, %299
  br i1 %300, label %294, label %301

301:                                              ; preds = %294
  %302 = icmp sgt i32 %298, 0
  br i1 %302, label %303, label %332

303:                                              ; preds = %301
  %304 = getelementptr inbounds i8, ptr %289, i64 8
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  br label %306

306:                                              ; preds = %306, %303
  %307 = phi i64 [ 0, %303 ], [ %309, %306 ]
  %308 = getelementptr inbounds i32, ptr %305, i64 %307
  store i32 %3, ptr %308, align 4, !tbaa !19
  %309 = add nuw nsw i64 %307, 1
  %310 = load i32, ptr %288, align 4, !tbaa !14
  %311 = sext i32 %310 to i64
  %312 = icmp slt i64 %309, %311
  br i1 %312, label %306, label %332

313:                                              ; preds = %278, %313
  %314 = phi i64 [ %316, %313 ], [ 1, %278 ]
  %315 = getelementptr inbounds i32, ptr %283, i64 %314
  store i32 %282, ptr %315, align 4, !tbaa !19
  %316 = add nuw nsw i64 %314, 1
  %317 = load i32, ptr %281, align 4, !tbaa !14
  %318 = sext i32 %317 to i64
  %319 = icmp slt i64 %316, %318
  br i1 %319, label %313, label %320

320:                                              ; preds = %313, %278
  %321 = getelementptr inbounds i8, ptr %279, i64 8
  %322 = load ptr, ptr %321, align 8, !tbaa !6
  store i32 %3, ptr %322, align 4, !tbaa !19
  %323 = load i32, ptr %281, align 4, !tbaa !14
  %324 = icmp sgt i32 %323, 1
  br i1 %324, label %325, label %332

325:                                              ; preds = %320, %325
  %326 = phi i64 [ %328, %325 ], [ 1, %320 ]
  %327 = getelementptr inbounds i32, ptr %322, i64 %326
  store i32 %282, ptr %327, align 4, !tbaa !19
  %328 = add nuw nsw i64 %326, 1
  %329 = load i32, ptr %281, align 4, !tbaa !14
  %330 = sext i32 %329 to i64
  %331 = icmp slt i64 %328, %330
  br i1 %331, label %325, label %332

332:                                              ; preds = %325, %306, %286, %320, %301
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @ClearFastFullIntegerSearch() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !14
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  br label %42

7:                                                ; preds = %0, %32
  %8 = phi i64 [ %36, %32 ], [ 0, %0 ]
  br label %9

9:                                                ; preds = %7, %23
  %10 = phi i64 [ 1, %7 ], [ %30, %23 ]
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %21, %11 ]
  %13 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %16, i64 %10
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds ptr, ptr %18, i64 %12
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  tail call void @free(ptr noundef %20) #16
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, 16
  br i1 %22, label %23, label %11

23:                                               ; preds = %11
  %24 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %8
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds ptr, ptr %27, i64 %10
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  tail call void @free(ptr noundef %29) #16
  %30 = add nuw nsw i64 %10, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %9

32:                                               ; preds = %23
  %33 = load ptr, ptr %24, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %33, i64 %8
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  tail call void @free(ptr noundef %35) #16
  %36 = add nuw nsw i64 %8, 1
  %37 = load ptr, ptr @img, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %37, i64 36
  %39 = load i32, ptr %38, align 4, !tbaa !14
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %7, label %42

42:                                               ; preds = %32, %5
  %43 = phi ptr [ %6, %5 ], [ %24, %32 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  tail call void @free(ptr noundef %44) #16
  %45 = load ptr, ptr @img, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 36
  %47 = load i32, ptr %46, align 4, !tbaa !14
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %42, %76
  %50 = phi i64 [ %81, %76 ], [ 0, %42 ]
  br label %51

51:                                               ; preds = %66, %49
  %52 = phi i64 [ 1, %49 ], [ %74, %66 ]
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi i64 [ 0, %51 ], [ %64, %53 ]
  %55 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %55, i64 8
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = getelementptr inbounds ptr, ptr %57, i64 %50
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds ptr, ptr %59, i64 %52
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = getelementptr inbounds ptr, ptr %61, i64 %54
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  tail call void @free(ptr noundef %63) #16
  %64 = add nuw nsw i64 %54, 1
  %65 = icmp eq i64 %64, 16
  br i1 %65, label %66, label %53

66:                                               ; preds = %53
  %67 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %68 = getelementptr inbounds i8, ptr %67, i64 8
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = getelementptr inbounds ptr, ptr %69, i64 %50
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds ptr, ptr %71, i64 %52
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  tail call void @free(ptr noundef %73) #16
  %74 = add nuw nsw i64 %52, 1
  %75 = icmp eq i64 %74, 8
  br i1 %75, label %76, label %51

76:                                               ; preds = %66
  %77 = getelementptr inbounds i8, ptr %67, i64 8
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = getelementptr inbounds ptr, ptr %78, i64 %50
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  tail call void @free(ptr noundef %80) #16
  %81 = add nuw nsw i64 %50, 1
  %82 = load ptr, ptr @img, align 8, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %82, i64 36
  %84 = load i32, ptr %83, align 4, !tbaa !14
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %81, %85
  br i1 %86, label %49, label %87

87:                                               ; preds = %76, %42
  %88 = phi ptr [ %43, %42 ], [ %67, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  tail call void @free(ptr noundef %90) #16
  %91 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  tail call void @free(ptr noundef %91) #16
  %92 = load ptr, ptr @search_setup_done, align 8, !tbaa !6
  %93 = load ptr, ptr @search_center_x, align 8, !tbaa !6
  %94 = load ptr, ptr @search_center_y, align 8, !tbaa !6
  %95 = load ptr, ptr @pos_00, align 8, !tbaa !6
  %96 = load ptr, ptr @max_search_range, align 8, !tbaa !6
  %97 = load ptr, ptr %92, align 8, !tbaa !6
  tail call void @free(ptr noundef %97) #16
  %98 = load ptr, ptr %93, align 8, !tbaa !6
  tail call void @free(ptr noundef %98) #16
  %99 = load ptr, ptr %94, align 8, !tbaa !6
  tail call void @free(ptr noundef %99) #16
  %100 = load ptr, ptr %95, align 8, !tbaa !6
  tail call void @free(ptr noundef %100) #16
  %101 = load ptr, ptr %96, align 8, !tbaa !6
  tail call void @free(ptr noundef %101) #16
  %102 = getelementptr inbounds i8, ptr %92, i64 8
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  tail call void @free(ptr noundef %103) #16
  %104 = getelementptr inbounds i8, ptr %93, i64 8
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  tail call void @free(ptr noundef %105) #16
  %106 = getelementptr inbounds i8, ptr %94, i64 8
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  tail call void @free(ptr noundef %107) #16
  %108 = getelementptr inbounds i8, ptr %95, i64 8
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  tail call void @free(ptr noundef %109) #16
  %110 = getelementptr inbounds i8, ptr %96, i64 8
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  tail call void @free(ptr noundef %111) #16
  tail call void @free(ptr noundef %92) #16
  tail call void @free(ptr noundef %93) #16
  tail call void @free(ptr noundef %94) #16
  tail call void @free(ptr noundef %95) #16
  tail call void @free(ptr noundef %96) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @ResetFastFullIntegerSearch() local_unnamed_addr #5 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 36
  %3 = load ptr, ptr @search_setup_done, align 8
  %4 = load i32, ptr %2, align 4, !tbaa !14
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  %7 = load ptr, ptr %3, align 8, !tbaa !6
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %11, %8 ]
  %10 = getelementptr inbounds i32, ptr %7, i64 %9
  store i32 0, ptr %10, align 4, !tbaa !19
  %11 = add nuw nsw i64 %9, 1
  %12 = load i32, ptr %2, align 4, !tbaa !14
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %8, label %15

15:                                               ; preds = %8
  %16 = icmp sgt i32 %12, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, ptr %3, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i64 [ 0, %17 ], [ %23, %20 ]
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  store i32 0, ptr %22, align 4, !tbaa !19
  %23 = add nuw nsw i64 %21, 1
  %24 = load i32, ptr %2, align 4, !tbaa !14
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %20, label %27

27:                                               ; preds = %20, %0, %15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @SetupLargerBlocks(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #5 {
  %4 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %10, i64 48
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %10, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 32
  %16 = load ptr, ptr %12, align 8, !tbaa !6
  %17 = load ptr, ptr %14, align 8, !tbaa !6
  %18 = load ptr, ptr %15, align 8, !tbaa !6
  %19 = icmp sgt i32 %2, 0
  br i1 %19, label %20, label %425

20:                                               ; preds = %3
  %21 = zext nneg i32 %2 to i64
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %30, %22 ]
  %24 = getelementptr inbounds i32, ptr %17, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !19
  %26 = getelementptr inbounds i32, ptr %18, i64 %23
  %27 = load i32, ptr %26, align 4, !tbaa !19
  %28 = add nsw i32 %27, %25
  %29 = getelementptr inbounds i32, ptr %16, i64 %23
  store i32 %28, ptr %29, align 4, !tbaa !19
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp eq i64 %30, %21
  br i1 %31, label %32, label %22

32:                                               ; preds = %22
  %33 = getelementptr inbounds i8, ptr %12, i64 8
  %34 = getelementptr inbounds i8, ptr %14, i64 8
  %35 = getelementptr inbounds i8, ptr %14, i64 40
  %36 = load ptr, ptr %33, align 8, !tbaa !6
  %37 = load ptr, ptr %34, align 8, !tbaa !6
  %38 = load ptr, ptr %35, align 8, !tbaa !6
  br i1 %19, label %39, label %425

39:                                               ; preds = %32
  %40 = zext nneg i32 %2 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %49, %41 ]
  %43 = getelementptr inbounds i32, ptr %37, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !19
  %45 = getelementptr inbounds i32, ptr %38, i64 %42
  %46 = load i32, ptr %45, align 4, !tbaa !19
  %47 = add nsw i32 %46, %44
  %48 = getelementptr inbounds i32, ptr %36, i64 %42
  store i32 %47, ptr %48, align 4, !tbaa !19
  %49 = add nuw nsw i64 %42, 1
  %50 = icmp eq i64 %49, %40
  br i1 %50, label %51, label %41

51:                                               ; preds = %41
  %52 = getelementptr inbounds i8, ptr %12, i64 16
  %53 = getelementptr inbounds i8, ptr %14, i64 16
  %54 = getelementptr inbounds i8, ptr %14, i64 48
  %55 = load ptr, ptr %52, align 8, !tbaa !6
  %56 = load ptr, ptr %53, align 8, !tbaa !6
  %57 = load ptr, ptr %54, align 8, !tbaa !6
  br i1 %19, label %58, label %425

58:                                               ; preds = %51
  %59 = zext nneg i32 %2 to i64
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i64 [ 0, %58 ], [ %68, %60 ]
  %62 = getelementptr inbounds i32, ptr %56, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !19
  %64 = getelementptr inbounds i32, ptr %57, i64 %61
  %65 = load i32, ptr %64, align 4, !tbaa !19
  %66 = add nsw i32 %65, %63
  %67 = getelementptr inbounds i32, ptr %55, i64 %61
  store i32 %66, ptr %67, align 4, !tbaa !19
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, %59
  br i1 %69, label %70, label %60

70:                                               ; preds = %60
  %71 = getelementptr inbounds i8, ptr %12, i64 24
  %72 = getelementptr inbounds i8, ptr %14, i64 24
  %73 = getelementptr inbounds i8, ptr %14, i64 56
  %74 = load ptr, ptr %71, align 8, !tbaa !6
  %75 = load ptr, ptr %72, align 8, !tbaa !6
  %76 = load ptr, ptr %73, align 8, !tbaa !6
  br i1 %19, label %77, label %425

77:                                               ; preds = %70
  %78 = zext nneg i32 %2 to i64
  br label %79

79:                                               ; preds = %77, %79
  %80 = phi i64 [ 0, %77 ], [ %87, %79 ]
  %81 = getelementptr inbounds i32, ptr %75, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !19
  %83 = getelementptr inbounds i32, ptr %76, i64 %80
  %84 = load i32, ptr %83, align 4, !tbaa !19
  %85 = add nsw i32 %84, %82
  %86 = getelementptr inbounds i32, ptr %74, i64 %80
  store i32 %85, ptr %86, align 4, !tbaa !19
  %87 = add nuw nsw i64 %80, 1
  %88 = icmp eq i64 %87, %78
  br i1 %88, label %89, label %79

89:                                               ; preds = %79
  %90 = getelementptr inbounds i8, ptr %12, i64 64
  %91 = getelementptr inbounds i8, ptr %14, i64 64
  %92 = getelementptr inbounds i8, ptr %14, i64 96
  %93 = load ptr, ptr %90, align 8, !tbaa !6
  %94 = load ptr, ptr %91, align 8, !tbaa !6
  %95 = load ptr, ptr %92, align 8, !tbaa !6
  br i1 %19, label %96, label %425

96:                                               ; preds = %89
  %97 = zext nneg i32 %2 to i64
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ 0, %96 ], [ %106, %98 ]
  %100 = getelementptr inbounds i32, ptr %94, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !19
  %102 = getelementptr inbounds i32, ptr %95, i64 %99
  %103 = load i32, ptr %102, align 4, !tbaa !19
  %104 = add nsw i32 %103, %101
  %105 = getelementptr inbounds i32, ptr %93, i64 %99
  store i32 %104, ptr %105, align 4, !tbaa !19
  %106 = add nuw nsw i64 %99, 1
  %107 = icmp eq i64 %106, %97
  br i1 %107, label %108, label %98

108:                                              ; preds = %98
  %109 = getelementptr inbounds i8, ptr %12, i64 72
  %110 = getelementptr inbounds i8, ptr %14, i64 72
  %111 = getelementptr inbounds i8, ptr %14, i64 104
  %112 = load ptr, ptr %109, align 8, !tbaa !6
  %113 = load ptr, ptr %110, align 8, !tbaa !6
  %114 = load ptr, ptr %111, align 8, !tbaa !6
  br i1 %19, label %115, label %425

115:                                              ; preds = %108
  %116 = zext nneg i32 %2 to i64
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi i64 [ 0, %115 ], [ %125, %117 ]
  %119 = getelementptr inbounds i32, ptr %113, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !19
  %121 = getelementptr inbounds i32, ptr %114, i64 %118
  %122 = load i32, ptr %121, align 4, !tbaa !19
  %123 = add nsw i32 %122, %120
  %124 = getelementptr inbounds i32, ptr %112, i64 %118
  store i32 %123, ptr %124, align 4, !tbaa !19
  %125 = add nuw nsw i64 %118, 1
  %126 = icmp eq i64 %125, %116
  br i1 %126, label %127, label %117

127:                                              ; preds = %117
  %128 = getelementptr inbounds i8, ptr %12, i64 80
  %129 = getelementptr inbounds i8, ptr %14, i64 80
  %130 = getelementptr inbounds i8, ptr %14, i64 112
  %131 = load ptr, ptr %128, align 8, !tbaa !6
  %132 = load ptr, ptr %129, align 8, !tbaa !6
  %133 = load ptr, ptr %130, align 8, !tbaa !6
  br i1 %19, label %134, label %425

134:                                              ; preds = %127
  %135 = zext nneg i32 %2 to i64
  br label %136

136:                                              ; preds = %134, %136
  %137 = phi i64 [ 0, %134 ], [ %144, %136 ]
  %138 = getelementptr inbounds i32, ptr %132, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !19
  %140 = getelementptr inbounds i32, ptr %133, i64 %137
  %141 = load i32, ptr %140, align 4, !tbaa !19
  %142 = add nsw i32 %141, %139
  %143 = getelementptr inbounds i32, ptr %131, i64 %137
  store i32 %142, ptr %143, align 4, !tbaa !19
  %144 = add nuw nsw i64 %137, 1
  %145 = icmp eq i64 %144, %135
  br i1 %145, label %146, label %136

146:                                              ; preds = %136
  %147 = getelementptr inbounds i8, ptr %12, i64 88
  %148 = getelementptr inbounds i8, ptr %14, i64 88
  %149 = getelementptr inbounds i8, ptr %14, i64 120
  %150 = load ptr, ptr %147, align 8, !tbaa !6
  %151 = load ptr, ptr %148, align 8, !tbaa !6
  %152 = load ptr, ptr %149, align 8, !tbaa !6
  br i1 %19, label %153, label %425

153:                                              ; preds = %146
  %154 = zext nneg i32 %2 to i64
  br label %155

155:                                              ; preds = %153, %155
  %156 = phi i64 [ 0, %153 ], [ %163, %155 ]
  %157 = getelementptr inbounds i32, ptr %151, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !19
  %159 = getelementptr inbounds i32, ptr %152, i64 %156
  %160 = load i32, ptr %159, align 4, !tbaa !19
  %161 = add nsw i32 %160, %158
  %162 = getelementptr inbounds i32, ptr %150, i64 %156
  store i32 %161, ptr %162, align 4, !tbaa !19
  %163 = add nuw nsw i64 %156, 1
  %164 = icmp eq i64 %163, %154
  br i1 %164, label %165, label %155

165:                                              ; preds = %155
  %166 = getelementptr inbounds i8, ptr %10, i64 40
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  br i1 %19, label %169, label %425

169:                                              ; preds = %165
  %170 = zext nneg i32 %2 to i64
  br label %171

171:                                              ; preds = %169, %171
  %172 = phi i64 [ 0, %169 ], [ %179, %171 ]
  %173 = getelementptr inbounds i32, ptr %17, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !19
  %175 = getelementptr inbounds i32, ptr %37, i64 %172
  %176 = load i32, ptr %175, align 4, !tbaa !19
  %177 = add nsw i32 %176, %174
  %178 = getelementptr inbounds i32, ptr %168, i64 %172
  store i32 %177, ptr %178, align 4, !tbaa !19
  %179 = add nuw nsw i64 %172, 1
  %180 = icmp eq i64 %179, %170
  br i1 %180, label %181, label %171

181:                                              ; preds = %171
  %182 = getelementptr inbounds i8, ptr %167, i64 16
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  br i1 %19, label %184, label %425

184:                                              ; preds = %181
  %185 = zext nneg i32 %2 to i64
  br label %186

186:                                              ; preds = %184, %186
  %187 = phi i64 [ 0, %184 ], [ %194, %186 ]
  %188 = getelementptr inbounds i32, ptr %56, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !19
  %190 = getelementptr inbounds i32, ptr %75, i64 %187
  %191 = load i32, ptr %190, align 4, !tbaa !19
  %192 = add nsw i32 %191, %189
  %193 = getelementptr inbounds i32, ptr %183, i64 %187
  store i32 %192, ptr %193, align 4, !tbaa !19
  %194 = add nuw nsw i64 %187, 1
  %195 = icmp eq i64 %194, %185
  br i1 %195, label %196, label %186

196:                                              ; preds = %186
  %197 = getelementptr inbounds i8, ptr %167, i64 32
  %198 = load ptr, ptr %197, align 8, !tbaa !6
  br i1 %19, label %199, label %425

199:                                              ; preds = %196
  %200 = zext nneg i32 %2 to i64
  br label %201

201:                                              ; preds = %199, %201
  %202 = phi i64 [ 0, %199 ], [ %209, %201 ]
  %203 = getelementptr inbounds i32, ptr %18, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !19
  %205 = getelementptr inbounds i32, ptr %38, i64 %202
  %206 = load i32, ptr %205, align 4, !tbaa !19
  %207 = add nsw i32 %206, %204
  %208 = getelementptr inbounds i32, ptr %198, i64 %202
  store i32 %207, ptr %208, align 4, !tbaa !19
  %209 = add nuw nsw i64 %202, 1
  %210 = icmp eq i64 %209, %200
  br i1 %210, label %211, label %201

211:                                              ; preds = %201
  %212 = getelementptr inbounds i8, ptr %167, i64 48
  %213 = load ptr, ptr %212, align 8, !tbaa !6
  br i1 %19, label %214, label %425

214:                                              ; preds = %211
  %215 = zext nneg i32 %2 to i64
  br label %216

216:                                              ; preds = %214, %216
  %217 = phi i64 [ 0, %214 ], [ %224, %216 ]
  %218 = getelementptr inbounds i32, ptr %57, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !19
  %220 = getelementptr inbounds i32, ptr %76, i64 %217
  %221 = load i32, ptr %220, align 4, !tbaa !19
  %222 = add nsw i32 %221, %219
  %223 = getelementptr inbounds i32, ptr %213, i64 %217
  store i32 %222, ptr %223, align 4, !tbaa !19
  %224 = add nuw nsw i64 %217, 1
  %225 = icmp eq i64 %224, %215
  br i1 %225, label %226, label %216

226:                                              ; preds = %216
  %227 = getelementptr inbounds i8, ptr %167, i64 64
  %228 = load ptr, ptr %227, align 8, !tbaa !6
  br i1 %19, label %229, label %425

229:                                              ; preds = %226
  %230 = zext nneg i32 %2 to i64
  br label %231

231:                                              ; preds = %229, %231
  %232 = phi i64 [ 0, %229 ], [ %239, %231 ]
  %233 = getelementptr inbounds i32, ptr %94, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !19
  %235 = getelementptr inbounds i32, ptr %113, i64 %232
  %236 = load i32, ptr %235, align 4, !tbaa !19
  %237 = add nsw i32 %236, %234
  %238 = getelementptr inbounds i32, ptr %228, i64 %232
  store i32 %237, ptr %238, align 4, !tbaa !19
  %239 = add nuw nsw i64 %232, 1
  %240 = icmp eq i64 %239, %230
  br i1 %240, label %241, label %231

241:                                              ; preds = %231
  %242 = getelementptr inbounds i8, ptr %167, i64 80
  %243 = load ptr, ptr %242, align 8, !tbaa !6
  br i1 %19, label %244, label %425

244:                                              ; preds = %241
  %245 = zext nneg i32 %2 to i64
  br label %246

246:                                              ; preds = %244, %246
  %247 = phi i64 [ 0, %244 ], [ %254, %246 ]
  %248 = getelementptr inbounds i32, ptr %132, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !19
  %250 = getelementptr inbounds i32, ptr %151, i64 %247
  %251 = load i32, ptr %250, align 4, !tbaa !19
  %252 = add nsw i32 %251, %249
  %253 = getelementptr inbounds i32, ptr %243, i64 %247
  store i32 %252, ptr %253, align 4, !tbaa !19
  %254 = add nuw nsw i64 %247, 1
  %255 = icmp eq i64 %254, %245
  br i1 %255, label %256, label %246

256:                                              ; preds = %246
  %257 = getelementptr inbounds i8, ptr %167, i64 96
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  br i1 %19, label %259, label %425

259:                                              ; preds = %256
  %260 = zext nneg i32 %2 to i64
  br label %261

261:                                              ; preds = %259, %261
  %262 = phi i64 [ 0, %259 ], [ %269, %261 ]
  %263 = getelementptr inbounds i32, ptr %95, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !19
  %265 = getelementptr inbounds i32, ptr %114, i64 %262
  %266 = load i32, ptr %265, align 4, !tbaa !19
  %267 = add nsw i32 %266, %264
  %268 = getelementptr inbounds i32, ptr %258, i64 %262
  store i32 %267, ptr %268, align 4, !tbaa !19
  %269 = add nuw nsw i64 %262, 1
  %270 = icmp eq i64 %269, %260
  br i1 %270, label %271, label %261

271:                                              ; preds = %261
  %272 = getelementptr inbounds i8, ptr %167, i64 112
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  br i1 %19, label %274, label %425

274:                                              ; preds = %271
  %275 = zext nneg i32 %2 to i64
  br label %276

276:                                              ; preds = %274, %276
  %277 = phi i64 [ 0, %274 ], [ %284, %276 ]
  %278 = getelementptr inbounds i32, ptr %133, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !19
  %280 = getelementptr inbounds i32, ptr %152, i64 %277
  %281 = load i32, ptr %280, align 4, !tbaa !19
  %282 = add nsw i32 %281, %279
  %283 = getelementptr inbounds i32, ptr %273, i64 %277
  store i32 %282, ptr %283, align 4, !tbaa !19
  %284 = add nuw nsw i64 %277, 1
  %285 = icmp eq i64 %284, %275
  br i1 %285, label %286, label %276

286:                                              ; preds = %276
  %287 = getelementptr inbounds i8, ptr %10, i64 32
  %288 = load ptr, ptr %287, align 8, !tbaa !6
  %289 = load ptr, ptr %288, align 8, !tbaa !6
  br i1 %19, label %290, label %425

290:                                              ; preds = %286
  %291 = zext nneg i32 %2 to i64
  br label %292

292:                                              ; preds = %290, %292
  %293 = phi i64 [ 0, %290 ], [ %300, %292 ]
  %294 = getelementptr inbounds i32, ptr %16, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !19
  %296 = getelementptr inbounds i32, ptr %36, i64 %293
  %297 = load i32, ptr %296, align 4, !tbaa !19
  %298 = add nsw i32 %297, %295
  %299 = getelementptr inbounds i32, ptr %289, i64 %293
  store i32 %298, ptr %299, align 4, !tbaa !19
  %300 = add nuw nsw i64 %293, 1
  %301 = icmp eq i64 %300, %291
  br i1 %301, label %302, label %292

302:                                              ; preds = %292
  %303 = getelementptr inbounds i8, ptr %288, i64 16
  %304 = load ptr, ptr %303, align 8, !tbaa !6
  br i1 %19, label %305, label %425

305:                                              ; preds = %302
  %306 = zext nneg i32 %2 to i64
  br label %307

307:                                              ; preds = %305, %307
  %308 = phi i64 [ 0, %305 ], [ %315, %307 ]
  %309 = getelementptr inbounds i32, ptr %55, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !19
  %311 = getelementptr inbounds i32, ptr %74, i64 %308
  %312 = load i32, ptr %311, align 4, !tbaa !19
  %313 = add nsw i32 %312, %310
  %314 = getelementptr inbounds i32, ptr %304, i64 %308
  store i32 %313, ptr %314, align 4, !tbaa !19
  %315 = add nuw nsw i64 %308, 1
  %316 = icmp eq i64 %315, %306
  br i1 %316, label %317, label %307

317:                                              ; preds = %307
  %318 = getelementptr inbounds i8, ptr %288, i64 64
  %319 = load ptr, ptr %318, align 8, !tbaa !6
  br i1 %19, label %320, label %425

320:                                              ; preds = %317
  %321 = zext nneg i32 %2 to i64
  br label %322

322:                                              ; preds = %320, %322
  %323 = phi i64 [ 0, %320 ], [ %330, %322 ]
  %324 = getelementptr inbounds i32, ptr %93, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !19
  %326 = getelementptr inbounds i32, ptr %112, i64 %323
  %327 = load i32, ptr %326, align 4, !tbaa !19
  %328 = add nsw i32 %327, %325
  %329 = getelementptr inbounds i32, ptr %319, i64 %323
  store i32 %328, ptr %329, align 4, !tbaa !19
  %330 = add nuw nsw i64 %323, 1
  %331 = icmp eq i64 %330, %321
  br i1 %331, label %332, label %322

332:                                              ; preds = %322
  %333 = getelementptr inbounds i8, ptr %288, i64 80
  %334 = load ptr, ptr %333, align 8, !tbaa !6
  br i1 %19, label %335, label %425

335:                                              ; preds = %332
  %336 = zext nneg i32 %2 to i64
  br label %337

337:                                              ; preds = %335, %337
  %338 = phi i64 [ 0, %335 ], [ %345, %337 ]
  %339 = getelementptr inbounds i32, ptr %131, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !19
  %341 = getelementptr inbounds i32, ptr %150, i64 %338
  %342 = load i32, ptr %341, align 4, !tbaa !19
  %343 = add nsw i32 %342, %340
  %344 = getelementptr inbounds i32, ptr %334, i64 %338
  store i32 %343, ptr %344, align 4, !tbaa !19
  %345 = add nuw nsw i64 %338, 1
  %346 = icmp eq i64 %345, %336
  br i1 %346, label %347, label %337

347:                                              ; preds = %337
  %348 = getelementptr inbounds i8, ptr %10, i64 24
  %349 = load ptr, ptr %348, align 8, !tbaa !6
  %350 = load ptr, ptr %349, align 8, !tbaa !6
  br i1 %19, label %351, label %425

351:                                              ; preds = %347
  %352 = zext nneg i32 %2 to i64
  br label %353

353:                                              ; preds = %351, %353
  %354 = phi i64 [ 0, %351 ], [ %361, %353 ]
  %355 = getelementptr inbounds i32, ptr %289, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !19
  %357 = getelementptr inbounds i32, ptr %319, i64 %354
  %358 = load i32, ptr %357, align 4, !tbaa !19
  %359 = add nsw i32 %358, %356
  %360 = getelementptr inbounds i32, ptr %350, i64 %354
  store i32 %359, ptr %360, align 4, !tbaa !19
  %361 = add nuw nsw i64 %354, 1
  %362 = icmp eq i64 %361, %352
  br i1 %362, label %363, label %353

363:                                              ; preds = %353
  %364 = getelementptr inbounds i8, ptr %349, i64 16
  %365 = load ptr, ptr %364, align 8, !tbaa !6
  br i1 %19, label %366, label %425

366:                                              ; preds = %363
  %367 = zext nneg i32 %2 to i64
  br label %368

368:                                              ; preds = %366, %368
  %369 = phi i64 [ 0, %366 ], [ %376, %368 ]
  %370 = getelementptr inbounds i32, ptr %304, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !19
  %372 = getelementptr inbounds i32, ptr %334, i64 %369
  %373 = load i32, ptr %372, align 4, !tbaa !19
  %374 = add nsw i32 %373, %371
  %375 = getelementptr inbounds i32, ptr %365, i64 %369
  store i32 %374, ptr %375, align 4, !tbaa !19
  %376 = add nuw nsw i64 %369, 1
  %377 = icmp eq i64 %376, %367
  br i1 %377, label %378, label %368

378:                                              ; preds = %368
  %379 = getelementptr inbounds i8, ptr %10, i64 16
  %380 = load ptr, ptr %379, align 8, !tbaa !6
  %381 = load ptr, ptr %380, align 8, !tbaa !6
  br i1 %19, label %382, label %425

382:                                              ; preds = %378
  %383 = zext nneg i32 %2 to i64
  br label %384

384:                                              ; preds = %382, %384
  %385 = phi i64 [ 0, %382 ], [ %392, %384 ]
  %386 = getelementptr inbounds i32, ptr %289, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !19
  %388 = getelementptr inbounds i32, ptr %304, i64 %385
  %389 = load i32, ptr %388, align 4, !tbaa !19
  %390 = add nsw i32 %389, %387
  %391 = getelementptr inbounds i32, ptr %381, i64 %385
  store i32 %390, ptr %391, align 4, !tbaa !19
  %392 = add nuw nsw i64 %385, 1
  %393 = icmp eq i64 %392, %383
  br i1 %393, label %394, label %384

394:                                              ; preds = %384
  %395 = getelementptr inbounds i8, ptr %380, i64 64
  %396 = load ptr, ptr %395, align 8, !tbaa !6
  br i1 %19, label %397, label %425

397:                                              ; preds = %394
  %398 = zext nneg i32 %2 to i64
  br label %399

399:                                              ; preds = %397, %399
  %400 = phi i64 [ 0, %397 ], [ %407, %399 ]
  %401 = getelementptr inbounds i32, ptr %319, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !19
  %403 = getelementptr inbounds i32, ptr %334, i64 %400
  %404 = load i32, ptr %403, align 4, !tbaa !19
  %405 = add nsw i32 %404, %402
  %406 = getelementptr inbounds i32, ptr %396, i64 %400
  store i32 %405, ptr %406, align 4, !tbaa !19
  %407 = add nuw nsw i64 %400, 1
  %408 = icmp eq i64 %407, %398
  br i1 %408, label %409, label %399

409:                                              ; preds = %399
  %410 = getelementptr inbounds i8, ptr %10, i64 8
  %411 = load ptr, ptr %410, align 8, !tbaa !6
  %412 = load ptr, ptr %411, align 8, !tbaa !6
  br i1 %19, label %413, label %425

413:                                              ; preds = %409
  %414 = zext nneg i32 %2 to i64
  br label %415

415:                                              ; preds = %413, %415
  %416 = phi i64 [ 0, %413 ], [ %423, %415 ]
  %417 = getelementptr inbounds i32, ptr %350, i64 %416
  %418 = load i32, ptr %417, align 4, !tbaa !19
  %419 = getelementptr inbounds i32, ptr %365, i64 %416
  %420 = load i32, ptr %419, align 4, !tbaa !19
  %421 = add nsw i32 %420, %418
  %422 = getelementptr inbounds i32, ptr %412, i64 %416
  store i32 %421, ptr %422, align 4, !tbaa !19
  %423 = add nuw nsw i64 %416, 1
  %424 = icmp eq i64 %423, %414
  br i1 %424, label %425, label %415

425:                                              ; preds = %415, %3, %32, %51, %70, %89, %108, %127, %146, %165, %181, %196, %211, %226, %241, %256, %271, %286, %302, %317, %332, %347, %363, %378, %394, %409
  ret void
}

; Function Attrs: nounwind
define dso_local void @SetupFastFullPelSearch(i16 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i16], align 2
  %4 = alloca [256 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #16
  %5 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = sext i16 %0 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load ptr, ptr @max_search_range, align 8, !tbaa !6
  %15 = getelementptr inbounds ptr, ptr %14, i64 %6
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds i32, ptr %16, i64 %9
  %18 = load i32, ptr %17, align 4, !tbaa !19
  %19 = shl nsw i32 %18, 1
  %20 = or disjoint i32 %19, 1
  %21 = mul nsw i32 %20, %20
  %22 = load ptr, ptr @img, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 31576
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = getelementptr inbounds i8, ptr %22, i64 12
  %26 = load i32, ptr %25, align 4, !tbaa !21
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %27, i32 20
  %29 = load i32, ptr %28, align 4, !tbaa !22
  %30 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %31 = getelementptr inbounds i8, ptr %30, i64 192
  %32 = load i32, ptr %31, align 8, !tbaa !25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = getelementptr inbounds i8, ptr %22, i64 24
  %36 = load i32, ptr %35, align 8, !tbaa !27
  switch i32 %36, label %37 [
    i32 0, label %48
    i32 3, label %48
  ]

37:                                               ; preds = %34, %2
  %38 = getelementptr inbounds i8, ptr %30, i64 196
  %39 = load i32, ptr %38, align 4, !tbaa !28
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = add nsw i32 %29, %1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds ptr, ptr %45, i64 %9
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  br label %73

48:                                               ; preds = %34, %34
  %49 = add nsw i32 %29, %1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds ptr, ptr %52, i64 %9
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  br label %65

55:                                               ; preds = %37
  %56 = getelementptr inbounds i8, ptr %22, i64 24
  %57 = load i32, ptr %56, align 8, !tbaa !27
  %58 = icmp eq i32 %57, 1
  %59 = add nsw i32 %29, %1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds ptr, ptr %62, i64 %9
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  br i1 %58, label %65, label %73

65:                                               ; preds = %48, %55
  %66 = phi ptr [ %54, %48 ], [ %64, %55 ]
  %67 = load ptr, ptr @input, align 8, !tbaa !6
  %68 = getelementptr inbounds i8, ptr %67, i64 1912
  %69 = load i32, ptr %68, align 8, !tbaa !29
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds i8, ptr %66, i64 6440
  br label %76

73:                                               ; preds = %41, %65, %55
  %74 = phi ptr [ %66, %65 ], [ %64, %55 ], [ %47, %41 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 6432
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi ptr [ %66, %71 ], [ %74, %73 ]
  %78 = phi ptr [ %72, %71 ], [ %75, %73 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %77, i64 6392
  %81 = load i32, ptr %80, align 8, !tbaa !30
  %82 = add nsw i32 %81, -17
  %83 = getelementptr inbounds i8, ptr %77, i64 6396
  %84 = load i32, ptr %83, align 4, !tbaa !32
  %85 = add nsw i32 %84, -17
  %86 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %87 = getelementptr inbounds i8, ptr %86, i64 6480
  %88 = load ptr, ptr %87, align 8, !tbaa !33
  %89 = getelementptr inbounds ptr, ptr %88, i64 %6
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = getelementptr inbounds i8, ptr %86, i64 6504
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = getelementptr inbounds ptr, ptr %92, i64 %6
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  call void @SetMotionVectorPredictor(ptr noundef nonnull %3, ptr noundef %90, ptr noundef %94, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 16, i32 noundef signext 16)
  %95 = load i16, ptr %3, align 2, !tbaa !35
  %96 = sdiv i16 %95, 4
  %97 = sext i16 %96 to i32
  %98 = load ptr, ptr @search_center_x, align 8, !tbaa !6
  %99 = getelementptr inbounds ptr, ptr %98, i64 %6
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds i32, ptr %100, i64 %9
  store i32 %97, ptr %101, align 4, !tbaa !19
  %102 = getelementptr inbounds i8, ptr %3, i64 2
  %103 = load i16, ptr %102, align 2, !tbaa !35
  %104 = sdiv i16 %103, 4
  %105 = sext i16 %104 to i32
  %106 = load ptr, ptr @search_center_y, align 8, !tbaa !6
  %107 = getelementptr inbounds ptr, ptr %106, i64 %6
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  %109 = getelementptr inbounds i32, ptr %108, i64 %9
  store i32 %105, ptr %109, align 4, !tbaa !19
  %110 = load ptr, ptr @input, align 8, !tbaa !6
  %111 = getelementptr inbounds i8, ptr %110, i64 3136
  %112 = load i32, ptr %111, align 8, !tbaa !36
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %76
  %115 = sub nsw i32 0, %18
  %116 = load i32, ptr %101, align 4, !tbaa !19
  %117 = tail call i32 @llvm.smin.i32(i32 %18, i32 %116)
  %118 = tail call i32 @llvm.smax.i32(i32 %117, i32 %115)
  store i32 %118, ptr %101, align 4, !tbaa !19
  %119 = load i32, ptr %109, align 4, !tbaa !19
  %120 = tail call i32 @llvm.smin.i32(i32 %18, i32 %119)
  %121 = tail call i32 @llvm.smax.i32(i32 %120, i32 %115)
  store i32 %121, ptr %109, align 4, !tbaa !19
  br label %122

122:                                              ; preds = %114, %76
  %123 = load i32, ptr %101, align 4, !tbaa !19
  %124 = add nsw i32 %18, -2047
  %125 = icmp slt i32 %123, %124
  %126 = sub nsw i32 2047, %18
  %127 = tail call i32 @llvm.smin.i32(i32 %123, i32 %126)
  %128 = select i1 %125, i32 %124, i32 %127
  store i32 %128, ptr %101, align 4, !tbaa !19
  %129 = load i32, ptr %109, align 4, !tbaa !19
  %130 = load ptr, ptr @img, align 8, !tbaa !6
  %131 = getelementptr inbounds i8, ptr %130, i64 8
  %132 = load i32, ptr %131, align 8, !tbaa !37
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [17 x [6 x i32]], ptr @LEVELMVLIMIT, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !19
  %136 = add nsw i32 %135, %18
  %137 = icmp slt i32 %129, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %122
  %139 = getelementptr inbounds i8, ptr %134, i64 4
  %140 = load i32, ptr %139, align 4, !tbaa !19
  %141 = sub nsw i32 %140, %18
  %142 = tail call i32 @llvm.smin.i32(i32 %129, i32 %141)
  br label %143

143:                                              ; preds = %138, %122
  %144 = phi i32 [ %136, %122 ], [ %142, %138 ]
  store i32 %144, ptr %109, align 4, !tbaa !19
  %145 = getelementptr inbounds i8, ptr %130, i64 168
  %146 = load i32, ptr %145, align 8, !tbaa !38
  %147 = load i32, ptr %101, align 4, !tbaa !19
  %148 = add nsw i32 %147, %146
  store i32 %148, ptr %101, align 4, !tbaa !19
  %149 = getelementptr inbounds i8, ptr %130, i64 172
  %150 = load i32, ptr %149, align 4, !tbaa !39
  %151 = load i32, ptr %109, align 4, !tbaa !19
  %152 = add nsw i32 %151, %150
  store i32 %152, ptr %109, align 4, !tbaa !19
  %153 = load i32, ptr %101, align 4, !tbaa !19
  %154 = load i32, ptr %149, align 4, !tbaa !39
  %155 = load i32, ptr %145, align 8, !tbaa !38
  %156 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %157 = sext i32 %155 to i64
  %158 = sext i32 %154 to i64
  %159 = add nsw i32 %154, 15
  %160 = sext i32 %159 to i64
  br label %161

161:                                              ; preds = %143, %161
  %162 = phi i64 [ %158, %143 ], [ %229, %161 ]
  %163 = phi ptr [ %4, %143 ], [ %228, %161 ]
  %164 = getelementptr inbounds ptr, ptr %156, i64 %162
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = getelementptr inbounds i16, ptr %165, i64 %157
  %167 = load i16, ptr %166, align 2, !tbaa !35
  %168 = getelementptr inbounds i8, ptr %163, i64 2
  store i16 %167, ptr %163, align 2, !tbaa !35
  %169 = getelementptr i16, ptr %165, i64 %157
  %170 = getelementptr i8, ptr %169, i64 2
  %171 = load i16, ptr %170, align 2, !tbaa !35
  %172 = getelementptr inbounds i8, ptr %163, i64 4
  store i16 %171, ptr %168, align 2, !tbaa !35
  %173 = getelementptr i16, ptr %165, i64 %157
  %174 = getelementptr i8, ptr %173, i64 4
  %175 = load i16, ptr %174, align 2, !tbaa !35
  %176 = getelementptr inbounds i8, ptr %163, i64 6
  store i16 %175, ptr %172, align 2, !tbaa !35
  %177 = getelementptr i16, ptr %165, i64 %157
  %178 = getelementptr i8, ptr %177, i64 6
  %179 = load i16, ptr %178, align 2, !tbaa !35
  %180 = getelementptr inbounds i8, ptr %163, i64 8
  store i16 %179, ptr %176, align 2, !tbaa !35
  %181 = getelementptr i16, ptr %165, i64 %157
  %182 = getelementptr i8, ptr %181, i64 8
  %183 = load i16, ptr %182, align 2, !tbaa !35
  %184 = getelementptr inbounds i8, ptr %163, i64 10
  store i16 %183, ptr %180, align 2, !tbaa !35
  %185 = getelementptr i16, ptr %165, i64 %157
  %186 = getelementptr i8, ptr %185, i64 10
  %187 = load i16, ptr %186, align 2, !tbaa !35
  %188 = getelementptr inbounds i8, ptr %163, i64 12
  store i16 %187, ptr %184, align 2, !tbaa !35
  %189 = getelementptr i16, ptr %165, i64 %157
  %190 = getelementptr i8, ptr %189, i64 12
  %191 = load i16, ptr %190, align 2, !tbaa !35
  %192 = getelementptr inbounds i8, ptr %163, i64 14
  store i16 %191, ptr %188, align 2, !tbaa !35
  %193 = getelementptr i16, ptr %165, i64 %157
  %194 = getelementptr i8, ptr %193, i64 14
  %195 = load i16, ptr %194, align 2, !tbaa !35
  %196 = getelementptr inbounds i8, ptr %163, i64 16
  store i16 %195, ptr %192, align 2, !tbaa !35
  %197 = getelementptr i16, ptr %165, i64 %157
  %198 = getelementptr i8, ptr %197, i64 16
  %199 = load i16, ptr %198, align 2, !tbaa !35
  %200 = getelementptr inbounds i8, ptr %163, i64 18
  store i16 %199, ptr %196, align 2, !tbaa !35
  %201 = getelementptr i16, ptr %165, i64 %157
  %202 = getelementptr i8, ptr %201, i64 18
  %203 = load i16, ptr %202, align 2, !tbaa !35
  %204 = getelementptr inbounds i8, ptr %163, i64 20
  store i16 %203, ptr %200, align 2, !tbaa !35
  %205 = getelementptr i16, ptr %165, i64 %157
  %206 = getelementptr i8, ptr %205, i64 20
  %207 = load i16, ptr %206, align 2, !tbaa !35
  %208 = getelementptr inbounds i8, ptr %163, i64 22
  store i16 %207, ptr %204, align 2, !tbaa !35
  %209 = getelementptr i16, ptr %165, i64 %157
  %210 = getelementptr i8, ptr %209, i64 22
  %211 = load i16, ptr %210, align 2, !tbaa !35
  %212 = getelementptr inbounds i8, ptr %163, i64 24
  store i16 %211, ptr %208, align 2, !tbaa !35
  %213 = getelementptr i16, ptr %165, i64 %157
  %214 = getelementptr i8, ptr %213, i64 24
  %215 = load i16, ptr %214, align 2, !tbaa !35
  %216 = getelementptr inbounds i8, ptr %163, i64 26
  store i16 %215, ptr %212, align 2, !tbaa !35
  %217 = getelementptr i16, ptr %165, i64 %157
  %218 = getelementptr i8, ptr %217, i64 26
  %219 = load i16, ptr %218, align 2, !tbaa !35
  %220 = getelementptr inbounds i8, ptr %163, i64 28
  store i16 %219, ptr %216, align 2, !tbaa !35
  %221 = getelementptr i16, ptr %165, i64 %157
  %222 = getelementptr i8, ptr %221, i64 28
  %223 = load i16, ptr %222, align 2, !tbaa !35
  %224 = getelementptr inbounds i8, ptr %163, i64 30
  store i16 %223, ptr %220, align 2, !tbaa !35
  %225 = getelementptr i16, ptr %165, i64 %157
  %226 = getelementptr i8, ptr %225, i64 30
  %227 = load i16, ptr %226, align 2, !tbaa !35
  %228 = getelementptr inbounds i8, ptr %163, i64 32
  store i16 %227, ptr %224, align 2, !tbaa !35
  %229 = add nsw i64 %162, 1
  %230 = icmp slt i64 %162, %160
  br i1 %230, label %161, label %231

231:                                              ; preds = %161
  %232 = icmp sge i32 %153, %18
  %233 = sub nsw i32 %82, %18
  %234 = icmp sle i32 %153, %233
  %235 = select i1 %232, i1 %234, i1 false
  %236 = icmp sge i32 %152, %18
  %237 = select i1 %235, i1 %236, i1 false
  %238 = sub nsw i32 %85, %18
  %239 = icmp sle i32 %152, %238
  %240 = select i1 %237, i1 %239, i1 false
  br i1 %240, label %241, label %242

241:                                              ; preds = %231
  store ptr @FastLine16Y_11, ptr @PelYline_11, align 8, !tbaa !6
  br label %242

242:                                              ; preds = %231, %241
  %243 = load i32, ptr %111, align 8, !tbaa !36
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = zext nneg i32 %21 to i64
  br label %273

247:                                              ; preds = %242
  %248 = sub nsw i32 %155, %153
  %249 = sub nsw i32 %154, %152
  %250 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %251 = load ptr, ptr @spiral_search_y, align 8
  %252 = zext nneg i32 %21 to i64
  br label %253

253:                                              ; preds = %247, %270
  %254 = phi i64 [ 0, %247 ], [ %271, %270 ]
  %255 = getelementptr inbounds i16, ptr %250, i64 %254
  %256 = load i16, ptr %255, align 2, !tbaa !35
  %257 = sext i16 %256 to i32
  %258 = icmp eq i32 %248, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %253
  %260 = getelementptr inbounds i16, ptr %251, i64 %254
  %261 = load i16, ptr %260, align 2, !tbaa !35
  %262 = sext i16 %261 to i32
  %263 = icmp eq i32 %249, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %259
  %265 = trunc nuw nsw i64 %254 to i32
  %266 = load ptr, ptr @pos_00, align 8, !tbaa !6
  %267 = getelementptr inbounds ptr, ptr %266, i64 %6
  %268 = load ptr, ptr %267, align 8, !tbaa !6
  %269 = getelementptr inbounds i32, ptr %268, i64 %9
  store i32 %265, ptr %269, align 4, !tbaa !19
  br label %273

270:                                              ; preds = %253, %259
  %271 = add nuw nsw i64 %254, 1
  %272 = icmp ult i64 %271, %252
  br i1 %272, label %253, label %273

273:                                              ; preds = %270, %245, %264
  %274 = phi i64 [ %246, %245 ], [ %252, %264 ], [ %252, %270 ]
  br label %275

275:                                              ; preds = %273, %495
  %276 = phi i64 [ 0, %273 ], [ %496, %495 ]
  %277 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %278 = getelementptr inbounds i16, ptr %277, i64 %276
  %279 = load i16, ptr %278, align 2, !tbaa !35
  %280 = sext i16 %279 to i32
  %281 = add nsw i32 %152, %280
  %282 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %283 = getelementptr inbounds i16, ptr %282, i64 %276
  %284 = load i16, ptr %283, align 2, !tbaa !35
  %285 = sext i16 %284 to i32
  %286 = add nsw i32 %153, %285
  br i1 %240, label %298, label %287

287:                                              ; preds = %275
  %288 = icmp sgt i32 %281, -1
  br i1 %288, label %289, label %295

289:                                              ; preds = %287
  %290 = icmp sgt i32 %281, %85
  %291 = icmp slt i32 %286, 0
  %292 = select i1 %290, i1 true, i1 %291
  %293 = icmp sgt i32 %286, %82
  %294 = select i1 %292, i1 true, i1 %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %289, %287
  br label %296

296:                                              ; preds = %289, %295
  %297 = phi ptr [ @UMVLine16Y_11, %295 ], [ @FastLine16Y_11, %289 ]
  store ptr %297, ptr @PelYline_11, align 8, !tbaa !6
  br label %298

298:                                              ; preds = %296, %275
  br label %299

299:                                              ; preds = %298, %477
  %300 = phi i64 [ %489, %477 ], [ 0, %298 ]
  %301 = phi ptr [ %478, %477 ], [ %4, %298 ]
  %302 = phi i32 [ %313, %477 ], [ %281, %298 ]
  %303 = phi i32 [ %493, %477 ], [ 0, %298 ]
  br label %304

304:                                              ; preds = %299, %304
  %305 = phi ptr [ %301, %299 ], [ %468, %304 ]
  %306 = phi i32 [ 0, %299 ], [ %475, %304 ]
  %307 = phi i32 [ %302, %299 ], [ %313, %304 ]
  %308 = phi i32 [ 0, %299 ], [ %355, %304 ]
  %309 = phi i32 [ 0, %299 ], [ %395, %304 ]
  %310 = phi i32 [ 0, %299 ], [ %474, %304 ]
  %311 = phi i32 [ 0, %299 ], [ %435, %304 ]
  %312 = load ptr, ptr @PelYline_11, align 8, !tbaa !6
  %313 = add nsw i32 %307, 1
  %314 = tail call ptr %312(ptr noundef %79, i32 noundef signext %307, i32 noundef signext %286, i32 noundef signext %84, i32 noundef signext %81) #16, !callees !40
  %315 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  %316 = getelementptr inbounds i8, ptr %314, i64 2
  %317 = load i16, ptr %314, align 2, !tbaa !35
  %318 = zext i16 %317 to i64
  %319 = getelementptr inbounds i8, ptr %305, i64 2
  %320 = load i16, ptr %305, align 2, !tbaa !35
  %321 = zext i16 %320 to i64
  %322 = sub nsw i64 %318, %321
  %323 = getelementptr inbounds i32, ptr %315, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !19
  %325 = add i32 %324, %308
  %326 = getelementptr inbounds i8, ptr %314, i64 4
  %327 = load i16, ptr %316, align 2, !tbaa !35
  %328 = zext i16 %327 to i64
  %329 = getelementptr inbounds i8, ptr %305, i64 4
  %330 = load i16, ptr %319, align 2, !tbaa !35
  %331 = zext i16 %330 to i64
  %332 = sub nsw i64 %328, %331
  %333 = getelementptr inbounds i32, ptr %315, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !19
  %335 = add i32 %325, %334
  %336 = getelementptr inbounds i8, ptr %314, i64 6
  %337 = load i16, ptr %326, align 2, !tbaa !35
  %338 = zext i16 %337 to i64
  %339 = getelementptr inbounds i8, ptr %305, i64 6
  %340 = load i16, ptr %329, align 2, !tbaa !35
  %341 = zext i16 %340 to i64
  %342 = sub nsw i64 %338, %341
  %343 = getelementptr inbounds i32, ptr %315, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !19
  %345 = add i32 %335, %344
  %346 = getelementptr inbounds i8, ptr %314, i64 8
  %347 = load i16, ptr %336, align 2, !tbaa !35
  %348 = zext i16 %347 to i64
  %349 = getelementptr inbounds i8, ptr %305, i64 8
  %350 = load i16, ptr %339, align 2, !tbaa !35
  %351 = zext i16 %350 to i64
  %352 = sub nsw i64 %348, %351
  %353 = getelementptr inbounds i32, ptr %315, i64 %352
  %354 = load i32, ptr %353, align 4, !tbaa !19
  %355 = add i32 %345, %354
  %356 = getelementptr inbounds i8, ptr %314, i64 10
  %357 = load i16, ptr %346, align 2, !tbaa !35
  %358 = zext i16 %357 to i64
  %359 = getelementptr inbounds i8, ptr %305, i64 10
  %360 = load i16, ptr %349, align 2, !tbaa !35
  %361 = zext i16 %360 to i64
  %362 = sub nsw i64 %358, %361
  %363 = getelementptr inbounds i32, ptr %315, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !19
  %365 = add i32 %364, %309
  %366 = getelementptr inbounds i8, ptr %314, i64 12
  %367 = load i16, ptr %356, align 2, !tbaa !35
  %368 = zext i16 %367 to i64
  %369 = getelementptr inbounds i8, ptr %305, i64 12
  %370 = load i16, ptr %359, align 2, !tbaa !35
  %371 = zext i16 %370 to i64
  %372 = sub nsw i64 %368, %371
  %373 = getelementptr inbounds i32, ptr %315, i64 %372
  %374 = load i32, ptr %373, align 4, !tbaa !19
  %375 = add i32 %365, %374
  %376 = getelementptr inbounds i8, ptr %314, i64 14
  %377 = load i16, ptr %366, align 2, !tbaa !35
  %378 = zext i16 %377 to i64
  %379 = getelementptr inbounds i8, ptr %305, i64 14
  %380 = load i16, ptr %369, align 2, !tbaa !35
  %381 = zext i16 %380 to i64
  %382 = sub nsw i64 %378, %381
  %383 = getelementptr inbounds i32, ptr %315, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !19
  %385 = add i32 %375, %384
  %386 = getelementptr inbounds i8, ptr %314, i64 16
  %387 = load i16, ptr %376, align 2, !tbaa !35
  %388 = zext i16 %387 to i64
  %389 = getelementptr inbounds i8, ptr %305, i64 16
  %390 = load i16, ptr %379, align 2, !tbaa !35
  %391 = zext i16 %390 to i64
  %392 = sub nsw i64 %388, %391
  %393 = getelementptr inbounds i32, ptr %315, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !19
  %395 = add i32 %385, %394
  %396 = getelementptr inbounds i8, ptr %314, i64 18
  %397 = load i16, ptr %386, align 2, !tbaa !35
  %398 = zext i16 %397 to i64
  %399 = getelementptr inbounds i8, ptr %305, i64 18
  %400 = load i16, ptr %389, align 2, !tbaa !35
  %401 = zext i16 %400 to i64
  %402 = sub nsw i64 %398, %401
  %403 = getelementptr inbounds i32, ptr %315, i64 %402
  %404 = load i32, ptr %403, align 4, !tbaa !19
  %405 = add i32 %404, %311
  %406 = getelementptr inbounds i8, ptr %314, i64 20
  %407 = load i16, ptr %396, align 2, !tbaa !35
  %408 = zext i16 %407 to i64
  %409 = getelementptr inbounds i8, ptr %305, i64 20
  %410 = load i16, ptr %399, align 2, !tbaa !35
  %411 = zext i16 %410 to i64
  %412 = sub nsw i64 %408, %411
  %413 = getelementptr inbounds i32, ptr %315, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !19
  %415 = add i32 %405, %414
  %416 = getelementptr inbounds i8, ptr %314, i64 22
  %417 = load i16, ptr %406, align 2, !tbaa !35
  %418 = zext i16 %417 to i64
  %419 = getelementptr inbounds i8, ptr %305, i64 22
  %420 = load i16, ptr %409, align 2, !tbaa !35
  %421 = zext i16 %420 to i64
  %422 = sub nsw i64 %418, %421
  %423 = getelementptr inbounds i32, ptr %315, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !19
  %425 = add i32 %415, %424
  %426 = getelementptr inbounds i8, ptr %314, i64 24
  %427 = load i16, ptr %416, align 2, !tbaa !35
  %428 = zext i16 %427 to i64
  %429 = getelementptr inbounds i8, ptr %305, i64 24
  %430 = load i16, ptr %419, align 2, !tbaa !35
  %431 = zext i16 %430 to i64
  %432 = sub nsw i64 %428, %431
  %433 = getelementptr inbounds i32, ptr %315, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !19
  %435 = add i32 %425, %434
  %436 = getelementptr inbounds i8, ptr %314, i64 26
  %437 = load i16, ptr %426, align 2, !tbaa !35
  %438 = zext i16 %437 to i64
  %439 = getelementptr inbounds i8, ptr %305, i64 26
  %440 = load i16, ptr %429, align 2, !tbaa !35
  %441 = zext i16 %440 to i64
  %442 = sub nsw i64 %438, %441
  %443 = getelementptr inbounds i32, ptr %315, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !19
  %445 = add i32 %444, %310
  %446 = getelementptr inbounds i8, ptr %314, i64 28
  %447 = load i16, ptr %436, align 2, !tbaa !35
  %448 = zext i16 %447 to i64
  %449 = getelementptr inbounds i8, ptr %305, i64 28
  %450 = load i16, ptr %439, align 2, !tbaa !35
  %451 = zext i16 %450 to i64
  %452 = sub nsw i64 %448, %451
  %453 = getelementptr inbounds i32, ptr %315, i64 %452
  %454 = load i32, ptr %453, align 4, !tbaa !19
  %455 = add i32 %445, %454
  %456 = getelementptr inbounds i8, ptr %314, i64 30
  %457 = load i16, ptr %446, align 2, !tbaa !35
  %458 = zext i16 %457 to i64
  %459 = getelementptr inbounds i8, ptr %305, i64 30
  %460 = load i16, ptr %449, align 2, !tbaa !35
  %461 = zext i16 %460 to i64
  %462 = sub nsw i64 %458, %461
  %463 = getelementptr inbounds i32, ptr %315, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !19
  %465 = add i32 %455, %464
  %466 = load i16, ptr %456, align 2, !tbaa !35
  %467 = zext i16 %466 to i64
  %468 = getelementptr inbounds i8, ptr %305, i64 32
  %469 = load i16, ptr %459, align 2, !tbaa !35
  %470 = zext i16 %469 to i64
  %471 = sub nsw i64 %467, %470
  %472 = getelementptr inbounds i32, ptr %315, i64 %471
  %473 = load i32, ptr %472, align 4, !tbaa !19
  %474 = add i32 %465, %473
  %475 = add nuw nsw i32 %306, 1
  %476 = icmp eq i32 %475, 4
  br i1 %476, label %477, label %304

477:                                              ; preds = %304
  %478 = getelementptr i8, ptr %301, i64 128
  %479 = getelementptr inbounds ptr, ptr %13, i64 %300
  %480 = load ptr, ptr %479, align 8, !tbaa !6
  %481 = getelementptr inbounds i32, ptr %480, i64 %276
  store i32 %355, ptr %481, align 4, !tbaa !19
  %482 = getelementptr i8, ptr %479, i64 8
  %483 = load ptr, ptr %482, align 8, !tbaa !6
  %484 = getelementptr inbounds i32, ptr %483, i64 %276
  store i32 %395, ptr %484, align 4, !tbaa !19
  %485 = or disjoint i64 %300, 3
  %486 = getelementptr i8, ptr %479, i64 16
  %487 = load ptr, ptr %486, align 8, !tbaa !6
  %488 = getelementptr inbounds i32, ptr %487, i64 %276
  store i32 %435, ptr %488, align 4, !tbaa !19
  %489 = add nuw nsw i64 %300, 4
  %490 = getelementptr inbounds ptr, ptr %13, i64 %485
  %491 = load ptr, ptr %490, align 8, !tbaa !6
  %492 = getelementptr inbounds i32, ptr %491, i64 %276
  store i32 %474, ptr %492, align 4, !tbaa !19
  %493 = add nuw nsw i32 %303, 1
  %494 = icmp eq i32 %493, 4
  br i1 %494, label %495, label %299

495:                                              ; preds = %477
  %496 = add nuw nsw i64 %276, 1
  %497 = icmp ult i64 %496, %274
  br i1 %497, label %275, label %498

498:                                              ; preds = %495
  %499 = sext i16 %0 to i32
  tail call void @SetupLargerBlocks(i32 noundef signext %1, i32 noundef signext %499, i32 noundef signext %21)
  %500 = load ptr, ptr @search_setup_done, align 8, !tbaa !6
  %501 = getelementptr inbounds ptr, ptr %500, i64 %6
  %502 = load ptr, ptr %501, align 8, !tbaa !6
  %503 = getelementptr inbounds i32, ptr %502, i64 %9
  store i32 1, ptr %503, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind
define dso_local void @SetMotionVectorPredictor(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.pix_pos, align 4
  %11 = alloca %struct.pix_pos, align 4
  %12 = alloca %struct.pix_pos, align 4
  %13 = alloca %struct.pix_pos, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = shl nsw i32 %5, 2
  %17 = load ptr, ptr @img, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15)
  %20 = load ptr, ptr @input, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 3964
  %22 = load i32, ptr %21, align 4, !tbaa !41
  %23 = icmp eq i32 %22, 1
  %24 = sext i16 %3 to i32
  %25 = icmp slt i16 %3, 1
  %26 = and i1 %25, %23
  %27 = load i32, ptr @FME_blocktype, align 4
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  store i32 0, ptr @pred_SAD_space, align 4, !tbaa !19
  br label %31

31:                                               ; preds = %9, %30
  call void @getLuma4x4Neighbour(i32 noundef signext %19, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %10) #16
  call void @getLuma4x4Neighbour(i32 noundef signext %19, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %11) #16
  call void @getLuma4x4Neighbour(i32 noundef signext %19, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext -1, ptr noundef nonnull %12) #16
  call void @getLuma4x4Neighbour(i32 noundef signext %19, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext -1, i32 noundef signext -1, ptr noundef nonnull %13) #16
  %32 = icmp sgt i32 %6, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  %34 = icmp slt i32 %5, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = icmp eq i32 %6, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = icmp eq i32 %7, 16
  br i1 %38, label %48, label %45

39:                                               ; preds = %35
  %40 = add nsw i32 %16, %7
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %48, label %45

42:                                               ; preds = %33
  %43 = add nsw i32 %16, %7
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %48, label %45

45:                                               ; preds = %39, %37, %42, %31
  %46 = load i32, ptr %12, align 4, !tbaa !42
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %39, %37, %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !44
  br label %49

49:                                               ; preds = %48, %45
  %50 = load ptr, ptr @img, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 90220
  %52 = load i32, ptr %51, align 4, !tbaa !45
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %101

54:                                               ; preds = %49
  %55 = load i32, ptr %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %10, i64 20
  %59 = load i32, ptr %58, align 4, !tbaa !46
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %1, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %10, i64 16
  %64 = load i32, ptr %63, align 4, !tbaa !47
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !48
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %54, %57
  %70 = phi i32 [ %68, %57 ], [ -1, %54 ]
  %71 = load i32, ptr %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %11, i64 20
  %75 = load i32, ptr %74, align 4, !tbaa !46
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %1, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %11, i64 16
  %80 = load i32, ptr %79, align 4, !tbaa !47
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %78, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !48
  %84 = zext i8 %83 to i32
  br label %85

85:                                               ; preds = %69, %73
  %86 = phi i32 [ %84, %73 ], [ -1, %69 ]
  %87 = load i32, ptr %12, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %256, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds i8, ptr %12, i64 20
  %91 = load i32, ptr %90, align 4, !tbaa !46
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %1, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = getelementptr inbounds i8, ptr %12, i64 16
  %96 = load i32, ptr %95, align 4, !tbaa !47
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %94, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !48
  %100 = zext i8 %99 to i32
  br label %256

101:                                              ; preds = %49
  %102 = getelementptr inbounds i8, ptr %50, i64 31576
  %103 = load ptr, ptr %102, align 8, !tbaa !20
  %104 = getelementptr inbounds i8, ptr %50, i64 12
  %105 = load i32, ptr %104, align 4, !tbaa !21
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.macroblock, ptr %103, i64 %106, i32 19
  %108 = load i32, ptr %107, align 8, !tbaa !49
  %109 = icmp eq i32 %108, 0
  %110 = load i32, ptr %10, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %109, label %181, label %112

112:                                              ; preds = %101
  br i1 %111, label %133, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds i8, ptr %10, i64 4
  %115 = load i32, ptr %114, align 4, !tbaa !50
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.macroblock, ptr %103, i64 %116, i32 19
  %118 = load i32, ptr %117, align 8, !tbaa !49
  %119 = icmp eq i32 %118, 0
  %120 = getelementptr inbounds i8, ptr %10, i64 20
  %121 = load i32, ptr %120, align 4, !tbaa !46
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds ptr, ptr %1, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  %125 = getelementptr inbounds i8, ptr %10, i64 16
  %126 = load i32, ptr %125, align 4, !tbaa !47
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %124, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !48
  %130 = zext i8 %129 to i32
  %131 = zext i1 %119 to i32
  %132 = shl nuw nsw i32 %130, %131
  br label %133

133:                                              ; preds = %113, %112
  %134 = phi i32 [ -1, %112 ], [ %132, %113 ]
  %135 = load i32, ptr %11, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %157, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds i8, ptr %11, i64 4
  %139 = load i32, ptr %138, align 4, !tbaa !50
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.macroblock, ptr %103, i64 %140, i32 19
  %142 = load i32, ptr %141, align 8, !tbaa !49
  %143 = icmp eq i32 %142, 0
  %144 = getelementptr inbounds i8, ptr %11, i64 20
  %145 = load i32, ptr %144, align 4, !tbaa !46
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %1, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %11, i64 16
  %150 = load i32, ptr %149, align 4, !tbaa !47
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %148, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !48
  %154 = zext i8 %153 to i32
  %155 = zext i1 %143 to i32
  %156 = shl nuw nsw i32 %154, %155
  br label %157

157:                                              ; preds = %137, %133
  %158 = phi i32 [ -1, %133 ], [ %156, %137 ]
  %159 = load i32, ptr %12, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %256, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds i8, ptr %12, i64 4
  %163 = load i32, ptr %162, align 4, !tbaa !50
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.macroblock, ptr %103, i64 %164, i32 19
  %166 = load i32, ptr %165, align 8, !tbaa !49
  %167 = icmp eq i32 %166, 0
  %168 = getelementptr inbounds i8, ptr %12, i64 20
  %169 = load i32, ptr %168, align 4, !tbaa !46
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %1, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = getelementptr inbounds i8, ptr %12, i64 16
  %174 = load i32, ptr %173, align 4, !tbaa !47
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %172, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !48
  %178 = zext i8 %177 to i32
  %179 = zext i1 %167 to i32
  %180 = shl nuw nsw i32 %178, %179
  br label %256

181:                                              ; preds = %101
  br i1 %111, label %204, label %182

182:                                              ; preds = %181
  %183 = getelementptr inbounds i8, ptr %10, i64 4
  %184 = load i32, ptr %183, align 4, !tbaa !50
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.macroblock, ptr %103, i64 %185, i32 19
  %187 = load i32, ptr %186, align 8, !tbaa !49
  %188 = icmp eq i32 %187, 0
  %189 = getelementptr inbounds i8, ptr %10, i64 20
  %190 = load i32, ptr %189, align 4, !tbaa !46
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds ptr, ptr %1, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !6
  %194 = getelementptr inbounds i8, ptr %10, i64 16
  %195 = load i32, ptr %194, align 4, !tbaa !47
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %193, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !48
  br i1 %188, label %202, label %199

199:                                              ; preds = %182
  %200 = lshr i8 %198, 1
  %201 = zext nneg i8 %200 to i32
  br label %204

202:                                              ; preds = %182
  %203 = zext i8 %198 to i32
  br label %204

204:                                              ; preds = %181, %199, %202
  %205 = phi i32 [ %201, %199 ], [ %203, %202 ], [ -1, %181 ]
  %206 = load i32, ptr %11, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %230, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds i8, ptr %11, i64 4
  %210 = load i32, ptr %209, align 4, !tbaa !50
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.macroblock, ptr %103, i64 %211, i32 19
  %213 = load i32, ptr %212, align 8, !tbaa !49
  %214 = icmp eq i32 %213, 0
  %215 = getelementptr inbounds i8, ptr %11, i64 20
  %216 = load i32, ptr %215, align 4, !tbaa !46
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds ptr, ptr %1, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  %220 = getelementptr inbounds i8, ptr %11, i64 16
  %221 = load i32, ptr %220, align 4, !tbaa !47
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, ptr %219, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !48
  br i1 %214, label %228, label %225

225:                                              ; preds = %208
  %226 = lshr i8 %224, 1
  %227 = zext nneg i8 %226 to i32
  br label %230

228:                                              ; preds = %208
  %229 = zext i8 %224 to i32
  br label %230

230:                                              ; preds = %204, %225, %228
  %231 = phi i32 [ %227, %225 ], [ %229, %228 ], [ -1, %204 ]
  %232 = load i32, ptr %12, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %256, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds i8, ptr %12, i64 4
  %236 = load i32, ptr %235, align 4, !tbaa !50
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.macroblock, ptr %103, i64 %237, i32 19
  %239 = load i32, ptr %238, align 8, !tbaa !49
  %240 = icmp eq i32 %239, 0
  %241 = getelementptr inbounds i8, ptr %12, i64 20
  %242 = load i32, ptr %241, align 4, !tbaa !46
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds ptr, ptr %1, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !6
  %246 = getelementptr inbounds i8, ptr %12, i64 16
  %247 = load i32, ptr %246, align 4, !tbaa !47
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, ptr %245, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !48
  br i1 %240, label %254, label %251

251:                                              ; preds = %234
  %252 = lshr i8 %250, 1
  %253 = zext nneg i8 %252 to i32
  br label %256

254:                                              ; preds = %234
  %255 = zext i8 %250 to i32
  br label %256

256:                                              ; preds = %161, %254, %251, %230, %157, %89, %85
  %257 = phi i1 [ true, %85 ], [ false, %89 ], [ true, %157 ], [ true, %230 ], [ false, %251 ], [ false, %254 ], [ false, %161 ]
  %258 = phi i1 [ false, %85 ], [ true, %89 ], [ false, %157 ], [ false, %230 ], [ true, %251 ], [ true, %254 ], [ true, %161 ]
  %259 = phi i32 [ %71, %85 ], [ %71, %89 ], [ %135, %157 ], [ %206, %230 ], [ %206, %251 ], [ %206, %254 ], [ %135, %161 ]
  %260 = phi i32 [ %55, %85 ], [ %55, %89 ], [ %110, %157 ], [ %110, %230 ], [ %110, %251 ], [ %110, %254 ], [ %110, %161 ]
  %261 = phi i32 [ %70, %85 ], [ %70, %89 ], [ %134, %157 ], [ %205, %230 ], [ %205, %251 ], [ %205, %254 ], [ %134, %161 ]
  %262 = phi i32 [ %86, %85 ], [ %86, %89 ], [ %158, %157 ], [ %231, %230 ], [ %231, %251 ], [ %231, %254 ], [ %158, %161 ]
  %263 = phi i32 [ -1, %85 ], [ %100, %89 ], [ -1, %157 ], [ -1, %230 ], [ %253, %251 ], [ %255, %254 ], [ %180, %161 ]
  %264 = icmp eq i32 %261, %24
  %265 = xor i1 %264, true
  %266 = icmp eq i32 %262, %24
  %267 = select i1 %265, i1 true, i1 %266
  %268 = icmp eq i32 %263, %24
  %269 = select i1 %267, i1 true, i1 %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %256
  %271 = xor i1 %266, true
  %272 = select i1 %264, i1 true, i1 %271
  %273 = select i1 %272, i1 true, i1 %268
  %274 = xor i1 %273, true
  %275 = or i1 %264, %274
  %276 = select i1 %273, i32 0, i32 2
  br i1 %275, label %281, label %277

277:                                              ; preds = %270
  %278 = icmp ne i32 %262, %24
  %279 = select i1 %278, i1 %268, i1 false
  %280 = select i1 %279, i32 3, i32 0
  br label %281

281:                                              ; preds = %277, %270, %256
  %282 = phi i32 [ 1, %256 ], [ %276, %270 ], [ %280, %277 ]
  %283 = icmp eq i32 %7, 8
  %284 = icmp eq i32 %8, 16
  %285 = and i1 %283, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %281
  %287 = icmp eq i32 %5, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %286
  %289 = select i1 %264, i32 1, i32 %282
  br label %302

290:                                              ; preds = %286
  %291 = select i1 %268, i32 3, i32 %282
  br label %302

292:                                              ; preds = %281
  %293 = icmp eq i32 %7, 16
  %294 = icmp eq i32 %8, 8
  %295 = and i1 %293, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  %297 = icmp eq i32 %6, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %296
  %299 = select i1 %266, i32 2, i32 %282
  br label %302

300:                                              ; preds = %296
  %301 = select i1 %264, i32 1, i32 %282
  br label %302

302:                                              ; preds = %300, %298, %290, %288, %292
  %303 = phi i32 [ %282, %292 ], [ %289, %288 ], [ %291, %290 ], [ %299, %298 ], [ %301, %300 ]
  %304 = getelementptr inbounds i8, ptr %50, i64 31576
  %305 = getelementptr inbounds i8, ptr %50, i64 12
  %306 = icmp eq i32 %260, 0
  %307 = getelementptr inbounds i8, ptr %10, i64 4
  %308 = load i32, ptr %307, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, ptr %10, i64 20
  %311 = load i32, ptr %310, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds ptr, ptr %2, i64 %312
  %314 = getelementptr inbounds i8, ptr %10, i64 16
  %315 = load i32, ptr %314, align 4
  %316 = sext i32 %315 to i64
  %317 = icmp eq i32 %259, 0
  %318 = getelementptr inbounds i8, ptr %11, i64 4
  %319 = load i32, ptr %318, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, ptr %11, i64 20
  %322 = load i32, ptr %321, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds ptr, ptr %2, i64 %323
  %325 = getelementptr inbounds i8, ptr %11, i64 16
  %326 = load i32, ptr %325, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, ptr %12, i64 4
  %329 = load i32, ptr %328, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, ptr %12, i64 20
  %332 = load i32, ptr %331, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds ptr, ptr %2, i64 %333
  %335 = getelementptr inbounds i8, ptr %12, i64 16
  %336 = load i32, ptr %335, align 4
  %337 = sext i32 %336 to i64
  %338 = icmp eq i32 %4, 1
  %339 = load ptr, ptr @fastme_l0_cost, align 8
  %340 = load i32, ptr @FME_blocktype, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds ptr, ptr %339, i64 %341
  %343 = load ptr, ptr @fastme_l1_cost, align 8
  %344 = getelementptr inbounds ptr, ptr %343, i64 %341
  %345 = load i32, ptr %13, align 4
  %346 = icmp eq i32 %345, 0
  %347 = getelementptr inbounds i8, ptr %13, i64 20
  %348 = load i32, ptr %347, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, ptr %13, i64 16
  %351 = load i32, ptr %350, align 4
  %352 = sext i32 %351 to i64
  %353 = icmp ne i32 %259, 0
  %354 = or i1 %353, %258
  %355 = sext i32 %332 to i64
  %356 = sext i32 %336 to i64
  %357 = select i1 %338, ptr %344, ptr %342
  br label %358

358:                                              ; preds = %302, %583
  %359 = phi i1 [ true, %302 ], [ false, %583 ]
  %360 = phi ptr [ %14, %302 ], [ %15, %583 ]
  %361 = phi i64 [ 0, %302 ], [ 1, %583 ]
  %362 = phi i32 [ 0, %302 ], [ %552, %583 ]
  %363 = phi i32 [ 0, %302 ], [ %551, %583 ]
  %364 = phi i32 [ 0, %302 ], [ %550, %583 ]
  %365 = or i1 %53, %359
  br i1 %365, label %366, label %392

366:                                              ; preds = %358
  br i1 %306, label %374, label %367

367:                                              ; preds = %366
  %368 = load ptr, ptr %313, align 8, !tbaa !6
  %369 = getelementptr inbounds ptr, ptr %368, i64 %316
  %370 = load ptr, ptr %369, align 8, !tbaa !6
  %371 = getelementptr inbounds i16, ptr %370, i64 %361
  %372 = load i16, ptr %371, align 2, !tbaa !35
  %373 = sext i16 %372 to i32
  br label %374

374:                                              ; preds = %366, %367
  %375 = phi i32 [ %373, %367 ], [ 0, %366 ]
  br i1 %317, label %383, label %376

376:                                              ; preds = %374
  %377 = load ptr, ptr %324, align 8, !tbaa !6
  %378 = getelementptr inbounds ptr, ptr %377, i64 %327
  %379 = load ptr, ptr %378, align 8, !tbaa !6
  %380 = getelementptr inbounds i16, ptr %379, i64 %361
  %381 = load i16, ptr %380, align 2, !tbaa !35
  %382 = sext i16 %381 to i32
  br label %383

383:                                              ; preds = %374, %376
  %384 = phi i32 [ %382, %376 ], [ 0, %374 ]
  br i1 %257, label %487, label %385

385:                                              ; preds = %383
  %386 = load ptr, ptr %334, align 8, !tbaa !6
  %387 = getelementptr inbounds ptr, ptr %386, i64 %337
  %388 = load ptr, ptr %387, align 8, !tbaa !6
  %389 = getelementptr inbounds i16, ptr %388, i64 %361
  %390 = load i16, ptr %389, align 2, !tbaa !35
  %391 = sext i16 %390 to i32
  br label %487

392:                                              ; preds = %358
  %393 = load ptr, ptr %304, align 8, !tbaa !20
  %394 = load i32, ptr %305, align 4, !tbaa !21
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.macroblock, ptr %393, i64 %395, i32 19
  %397 = load i32, ptr %396, align 8, !tbaa !49
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %446, label %399

399:                                              ; preds = %392
  br i1 %306, label %414, label %400

400:                                              ; preds = %399
  %401 = getelementptr inbounds %struct.macroblock, ptr %393, i64 %309, i32 19
  %402 = load i32, ptr %401, align 8, !tbaa !49
  %403 = icmp eq i32 %402, 0
  %404 = load ptr, ptr %313, align 8, !tbaa !6
  %405 = getelementptr inbounds ptr, ptr %404, i64 %316
  %406 = load ptr, ptr %405, align 8, !tbaa !6
  %407 = getelementptr inbounds i8, ptr %406, i64 2
  %408 = load i16, ptr %407, align 2, !tbaa !35
  br i1 %403, label %411, label %409

409:                                              ; preds = %400
  %410 = sext i16 %408 to i32
  br label %414

411:                                              ; preds = %400
  %412 = sdiv i16 %408, 2
  %413 = sext i16 %412 to i32
  br label %414

414:                                              ; preds = %399, %409, %411
  %415 = phi i32 [ %410, %409 ], [ %413, %411 ], [ 0, %399 ]
  br i1 %317, label %430, label %416

416:                                              ; preds = %414
  %417 = getelementptr inbounds %struct.macroblock, ptr %393, i64 %320, i32 19
  %418 = load i32, ptr %417, align 8, !tbaa !49
  %419 = icmp eq i32 %418, 0
  %420 = load ptr, ptr %324, align 8, !tbaa !6
  %421 = getelementptr inbounds ptr, ptr %420, i64 %327
  %422 = load ptr, ptr %421, align 8, !tbaa !6
  %423 = getelementptr inbounds i8, ptr %422, i64 2
  %424 = load i16, ptr %423, align 2, !tbaa !35
  br i1 %419, label %427, label %425

425:                                              ; preds = %416
  %426 = sext i16 %424 to i32
  br label %430

427:                                              ; preds = %416
  %428 = sdiv i16 %424, 2
  %429 = sext i16 %428 to i32
  br label %430

430:                                              ; preds = %414, %425, %427
  %431 = phi i32 [ %426, %425 ], [ %429, %427 ], [ 0, %414 ]
  br i1 %257, label %487, label %432

432:                                              ; preds = %430
  %433 = getelementptr inbounds %struct.macroblock, ptr %393, i64 %330, i32 19
  %434 = load i32, ptr %433, align 8, !tbaa !49
  %435 = icmp eq i32 %434, 0
  %436 = load ptr, ptr %334, align 8, !tbaa !6
  %437 = getelementptr inbounds ptr, ptr %436, i64 %337
  %438 = load ptr, ptr %437, align 8, !tbaa !6
  %439 = getelementptr inbounds i8, ptr %438, i64 2
  %440 = load i16, ptr %439, align 2, !tbaa !35
  br i1 %435, label %443, label %441

441:                                              ; preds = %432
  %442 = sext i16 %440 to i32
  br label %487

443:                                              ; preds = %432
  %444 = sdiv i16 %440, 2
  %445 = sext i16 %444 to i32
  br label %487

446:                                              ; preds = %392
  br i1 %306, label %459, label %447

447:                                              ; preds = %446
  %448 = getelementptr inbounds %struct.macroblock, ptr %393, i64 %309, i32 19
  %449 = load i32, ptr %448, align 8, !tbaa !49
  %450 = icmp ne i32 %449, 0
  %451 = load ptr, ptr %313, align 8, !tbaa !6
  %452 = getelementptr inbounds ptr, ptr %451, i64 %316
  %453 = load ptr, ptr %452, align 8, !tbaa !6
  %454 = getelementptr inbounds i8, ptr %453, i64 2
  %455 = load i16, ptr %454, align 2, !tbaa !35
  %456 = sext i16 %455 to i32
  %457 = zext i1 %450 to i32
  %458 = shl nsw i32 %456, %457
  br label %459

459:                                              ; preds = %447, %446
  %460 = phi i32 [ 0, %446 ], [ %458, %447 ]
  br i1 %317, label %473, label %461

461:                                              ; preds = %459
  %462 = getelementptr inbounds %struct.macroblock, ptr %393, i64 %320, i32 19
  %463 = load i32, ptr %462, align 8, !tbaa !49
  %464 = icmp ne i32 %463, 0
  %465 = load ptr, ptr %324, align 8, !tbaa !6
  %466 = getelementptr inbounds ptr, ptr %465, i64 %327
  %467 = load ptr, ptr %466, align 8, !tbaa !6
  %468 = getelementptr inbounds i8, ptr %467, i64 2
  %469 = load i16, ptr %468, align 2, !tbaa !35
  %470 = sext i16 %469 to i32
  %471 = zext i1 %464 to i32
  %472 = shl nsw i32 %470, %471
  br label %473

473:                                              ; preds = %461, %459
  %474 = phi i32 [ 0, %459 ], [ %472, %461 ]
  br i1 %257, label %487, label %475

475:                                              ; preds = %473
  %476 = getelementptr inbounds %struct.macroblock, ptr %393, i64 %330, i32 19
  %477 = load i32, ptr %476, align 8, !tbaa !49
  %478 = icmp ne i32 %477, 0
  %479 = load ptr, ptr %334, align 8, !tbaa !6
  %480 = getelementptr inbounds ptr, ptr %479, i64 %337
  %481 = load ptr, ptr %480, align 8, !tbaa !6
  %482 = getelementptr inbounds i8, ptr %481, i64 2
  %483 = load i16, ptr %482, align 2, !tbaa !35
  %484 = sext i16 %483 to i32
  %485 = zext i1 %478 to i32
  %486 = shl nsw i32 %484, %485
  br label %487

487:                                              ; preds = %475, %473, %443, %441, %430, %385, %383
  %488 = phi i32 [ %384, %383 ], [ %384, %385 ], [ %431, %430 ], [ %431, %441 ], [ %431, %443 ], [ %474, %473 ], [ %474, %475 ]
  %489 = phi i32 [ 0, %383 ], [ %391, %385 ], [ 0, %430 ], [ %442, %441 ], [ %445, %443 ], [ 0, %473 ], [ %486, %475 ]
  %490 = phi i32 [ %375, %383 ], [ %375, %385 ], [ %415, %430 ], [ %415, %441 ], [ %415, %443 ], [ %460, %473 ], [ %460, %475 ]
  br i1 %29, label %491, label %549

491:                                              ; preds = %487
  br i1 %306, label %493, label %492

492:                                              ; preds = %491
  br i1 %338, label %500, label %494

493:                                              ; preds = %491
  br i1 %317, label %517, label %506

494:                                              ; preds = %492
  %495 = load ptr, ptr %342, align 8, !tbaa !6
  %496 = getelementptr inbounds ptr, ptr %495, i64 %312
  %497 = load ptr, ptr %496, align 8, !tbaa !6
  %498 = getelementptr inbounds i32, ptr %497, i64 %316
  %499 = load i32, ptr %498, align 4, !tbaa !19
  br i1 %317, label %517, label %506

500:                                              ; preds = %492
  %501 = load ptr, ptr %344, align 8, !tbaa !6
  %502 = getelementptr inbounds ptr, ptr %501, i64 %312
  %503 = load ptr, ptr %502, align 8, !tbaa !6
  %504 = getelementptr inbounds i32, ptr %503, i64 %316
  %505 = load i32, ptr %504, align 4, !tbaa !19
  br i1 %317, label %517, label %510

506:                                              ; preds = %493, %494
  %507 = phi ptr [ %342, %494 ], [ %357, %493 ]
  %508 = phi i32 [ %499, %494 ], [ 0, %493 ]
  %509 = load ptr, ptr %507, align 8, !tbaa !6
  br label %510

510:                                              ; preds = %506, %500
  %511 = phi ptr [ %501, %500 ], [ %509, %506 ]
  %512 = phi i32 [ %505, %500 ], [ %508, %506 ]
  %513 = getelementptr inbounds ptr, ptr %511, i64 %323
  %514 = load ptr, ptr %513, align 8, !tbaa !6
  %515 = getelementptr inbounds i32, ptr %514, i64 %327
  %516 = load i32, ptr %515, align 4, !tbaa !19
  br label %517

517:                                              ; preds = %510, %494, %500, %493
  %518 = phi i32 [ 0, %493 ], [ %505, %500 ], [ %499, %494 ], [ %512, %510 ]
  %519 = phi i32 [ 0, %493 ], [ 0, %500 ], [ 0, %494 ], [ %516, %510 ]
  br i1 %346, label %521, label %520

520:                                              ; preds = %517
  br i1 %338, label %528, label %522

521:                                              ; preds = %517
  br i1 %257, label %549, label %534

522:                                              ; preds = %520
  %523 = load ptr, ptr %342, align 8, !tbaa !6
  %524 = getelementptr inbounds ptr, ptr %523, i64 %349
  %525 = load ptr, ptr %524, align 8, !tbaa !6
  %526 = getelementptr inbounds i32, ptr %525, i64 %352
  %527 = load i32, ptr %526, align 4, !tbaa !19
  br i1 %257, label %549, label %540

528:                                              ; preds = %520
  %529 = load ptr, ptr %344, align 8, !tbaa !6
  %530 = getelementptr inbounds ptr, ptr %529, i64 %349
  %531 = load ptr, ptr %530, align 8, !tbaa !6
  %532 = getelementptr inbounds i32, ptr %531, i64 %352
  %533 = load i32, ptr %532, align 4, !tbaa !19
  br i1 %257, label %549, label %537

534:                                              ; preds = %521
  br i1 %338, label %535, label %540

535:                                              ; preds = %534
  %536 = load ptr, ptr %344, align 8, !tbaa !6
  br label %537

537:                                              ; preds = %535, %528
  %538 = phi ptr [ %536, %535 ], [ %529, %528 ]
  %539 = getelementptr inbounds ptr, ptr %538, i64 %333
  br label %543

540:                                              ; preds = %522, %534
  %541 = load ptr, ptr %342, align 8, !tbaa !6
  %542 = getelementptr inbounds ptr, ptr %541, i64 %355
  br label %543

543:                                              ; preds = %537, %540
  %544 = phi ptr [ %542, %540 ], [ %539, %537 ]
  %545 = phi i64 [ %356, %540 ], [ %337, %537 ]
  %546 = load ptr, ptr %544, align 8, !tbaa !6
  %547 = getelementptr inbounds i32, ptr %546, i64 %545
  %548 = load i32, ptr %547, align 4, !tbaa !19
  br label %549

549:                                              ; preds = %543, %522, %528, %521, %487
  %550 = phi i32 [ %364, %487 ], [ %518, %521 ], [ %518, %528 ], [ %518, %522 ], [ %518, %543 ]
  %551 = phi i32 [ %363, %487 ], [ %519, %521 ], [ %519, %528 ], [ %519, %522 ], [ %519, %543 ]
  %552 = phi i32 [ %362, %487 ], [ 0, %521 ], [ %533, %528 ], [ %527, %522 ], [ %548, %543 ]
  switch i32 %303, label %582 [
    i32 0, label %553
    i32 1, label %576
    i32 2, label %578
    i32 3, label %580
  ]

553:                                              ; preds = %549
  br i1 %354, label %555, label %554

554:                                              ; preds = %553
  br i1 %29, label %564, label %583

555:                                              ; preds = %553
  %556 = call i32 @llvm.smin.i32(i32 %488, i32 %489)
  %557 = call i32 @llvm.smin.i32(i32 %490, i32 %556)
  %558 = call i32 @llvm.smax.i32(i32 %488, i32 %489)
  %559 = call i32 @llvm.smax.i32(i32 %490, i32 %558)
  %560 = add i32 %489, %488
  %561 = add i32 %560, %490
  %562 = add i32 %559, %557
  %563 = sub i32 %561, %562
  br i1 %29, label %564, label %583

564:                                              ; preds = %554, %555
  %565 = phi i32 [ %563, %555 ], [ %490, %554 ]
  %566 = icmp eq i32 %565, %490
  %567 = icmp ne i32 %550, 0
  %568 = select i1 %566, i1 %567, i1 false
  br i1 %568, label %569, label %570

569:                                              ; preds = %564
  store i32 %550, ptr %360, align 4, !tbaa !19
  br label %583

570:                                              ; preds = %564
  %571 = icmp eq i32 %565, %488
  %572 = icmp ne i32 %551, 0
  %573 = select i1 %571, i1 %572, i1 false
  br i1 %573, label %574, label %575

574:                                              ; preds = %570
  store i32 %551, ptr %360, align 4, !tbaa !19
  br label %583

575:                                              ; preds = %570
  store i32 %552, ptr %360, align 4, !tbaa !19
  br label %583

576:                                              ; preds = %549
  br i1 %29, label %577, label %583

577:                                              ; preds = %576
  store i32 %550, ptr %360, align 4, !tbaa !19
  br label %583

578:                                              ; preds = %549
  br i1 %29, label %579, label %583

579:                                              ; preds = %578
  store i32 %551, ptr %360, align 4, !tbaa !19
  br label %583

580:                                              ; preds = %549
  br i1 %29, label %581, label %583

581:                                              ; preds = %580
  store i32 %552, ptr %360, align 4, !tbaa !19
  br label %583

582:                                              ; preds = %549
  unreachable

583:                                              ; preds = %554, %580, %581, %578, %579, %576, %577, %555, %574, %575, %569
  %584 = phi i32 [ %489, %581 ], [ %489, %580 ], [ %488, %579 ], [ %488, %578 ], [ %490, %577 ], [ %490, %576 ], [ %490, %569 ], [ %488, %574 ], [ %565, %575 ], [ %563, %555 ], [ %490, %554 ]
  %585 = trunc i32 %584 to i16
  %586 = getelementptr inbounds i16, ptr %0, i64 %361
  store i16 %585, ptr %586, align 2, !tbaa !35
  br i1 %359, label %358, label %587

587:                                              ; preds = %583
  br i1 %29, label %588, label %592

588:                                              ; preds = %587
  %589 = load i32, ptr %14, align 4
  %590 = load i32, ptr %15, align 4
  %591 = call i32 @llvm.smin.i32(i32 %589, i32 %590)
  store i32 %591, ptr @pred_SAD_space, align 4, !tbaa !19
  br label %592

592:                                              ; preds = %588, %587
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  ret void
}

declare dso_local ptr @FastLine16Y_11(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare dso_local ptr @UMVLine16Y_11(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare dso_local void @getLuma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
define dso_local void @Init_Motion_Search_Module() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 32
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = shl nsw i32 %3, 1
  %5 = or disjoint i32 %4, 1
  %6 = mul nsw i32 %5, %5
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 9)
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 36
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %11 = icmp slt i32 %10, 15
  %12 = add nsw i32 %10, 1
  %13 = select i1 %11, i32 16, i32 %12
  %14 = uitofp nneg i32 %13 to double
  %15 = tail call double @log(double noundef %14) #16
  %16 = fdiv double %15, 0x3FE62E42FEFA39EF
  %17 = fadd double %16, 1.000000e-10
  %18 = tail call double @llvm.floor.f64(double %17)
  %19 = fptosi double %18 to i32
  %20 = shl nsw i32 %19, 1
  %21 = or disjoint i32 %20, 1
  %22 = add nsw i32 %19, 1
  %23 = shl nsw i32 -1, %22
  %24 = xor i32 %23, -1
  %25 = shl i32 %3, 3
  %26 = add i32 %25, 13
  %27 = sitofp i32 %26 to double
  %28 = tail call double @log(double noundef %27) #16
  %29 = fdiv double %28, 0x3FE62E42FEFA39EF
  %30 = fadd double %29, 1.000000e-10
  %31 = tail call double @llvm.ceil.f64(double %30)
  %32 = fptosi double %31 to i32
  %33 = shl nsw i32 %32, 1
  %34 = add nsw i32 %33, 3
  %35 = ashr i32 %34, 1
  %36 = shl nsw i32 -1, %35
  %37 = xor i32 %36, -1
  store i32 %37, ptr @max_mvd, align 4, !tbaa !19
  %38 = load ptr, ptr @img, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 90532
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = getelementptr inbounds i8, ptr %38, i64 90536
  %42 = load i32, ptr %41, align 8, !tbaa !52
  %43 = tail call i32 @llvm.smax.i32(i32 %40, i32 %42)
  %44 = shl i32 %43, 6
  %45 = add i32 %44, 64
  store i32 %45, ptr @byte_abs_range, align 4, !tbaa !19
  %46 = zext nneg i32 %7 to i64
  %47 = tail call noalias ptr @calloc(i64 noundef %46, i64 noundef 2) #17
  store ptr %47, ptr @spiral_search_x, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %50

50:                                               ; preds = %49, %0
  %51 = tail call noalias ptr @calloc(i64 noundef %46, i64 noundef 2) #17
  store ptr %51, ptr @spiral_search_y, align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #16
  br label %54

54:                                               ; preds = %53, %50
  %55 = tail call noalias ptr @calloc(i64 noundef %46, i64 noundef 2) #17
  store ptr %55, ptr @spiral_hpel_search_x, align 8, !tbaa !6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #16
  br label %58

58:                                               ; preds = %57, %54
  %59 = tail call noalias ptr @calloc(i64 noundef %46, i64 noundef 2) #17
  store ptr %59, ptr @spiral_hpel_search_y, align 8, !tbaa !6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #16
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, ptr @max_mvd, align 4, !tbaa !19
  %64 = shl nsw i32 %63, 1
  %65 = or disjoint i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = tail call noalias ptr @calloc(i64 noundef %66, i64 noundef 4) #17
  store ptr %67, ptr @mvbits, align 8, !tbaa !6
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #16
  br label %70

70:                                               ; preds = %69, %62
  %71 = zext nneg i32 %24 to i64
  %72 = tail call noalias ptr @calloc(i64 noundef %71, i64 noundef 4) #17
  store ptr %72, ptr @refbits, align 8, !tbaa !6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #16
  br label %75

75:                                               ; preds = %74, %70
  %76 = load i32, ptr @byte_abs_range, align 4, !tbaa !19
  %77 = sext i32 %76 to i64
  %78 = tail call noalias ptr @calloc(i64 noundef %77, i64 noundef 4) #17
  store ptr %78, ptr @byte_abs, align 8, !tbaa !6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #16
  br label %81

81:                                               ; preds = %80, %75
  %82 = load ptr, ptr @img, align 8, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %82, i64 36
  %84 = load i32, ptr %83, align 4, !tbaa !14
  %85 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @motion_cost, i32 noundef signext 8, i32 noundef signext 2, i32 noundef signext %84, i32 noundef signext 4) #16
  %86 = load i32, ptr @max_mvd, align 4, !tbaa !19
  %87 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, ptr %87, i64 %88
  store ptr %89, ptr @mvbits, align 8, !tbaa !6
  %90 = load i32, ptr @byte_abs_range, align 4, !tbaa !19
  %91 = sdiv i32 %90, 2
  %92 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, ptr %92, i64 %93
  store ptr %94, ptr @byte_abs, align 8, !tbaa !6
  store i32 1, ptr %89, align 4, !tbaa !19
  %95 = icmp slt i32 %32, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %81, %112
  %97 = phi i32 [ %113, %112 ], [ 3, %81 ]
  %98 = lshr i32 %97, 1
  %99 = icmp eq i32 %98, 31
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = shl nuw i32 1, %98
  %102 = ashr exact i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = sext i32 %101 to i64
  br label %105

105:                                              ; preds = %100, %105
  %106 = phi i64 [ %103, %100 ], [ %110, %105 ]
  %107 = getelementptr inbounds i32, ptr %89, i64 %106
  store i32 %97, ptr %107, align 4, !tbaa !19
  %108 = sub nsw i64 0, %106
  %109 = getelementptr inbounds i32, ptr %89, i64 %108
  store i32 %97, ptr %109, align 4, !tbaa !19
  %110 = add nsw i64 %106, 1
  %111 = icmp slt i64 %110, %104
  br i1 %111, label %105, label %112

112:                                              ; preds = %105, %96
  %113 = add nuw nsw i32 %97, 2
  %114 = icmp sgt i32 %113, %34
  br i1 %114, label %115, label %96

115:                                              ; preds = %112, %81
  %116 = load ptr, ptr @refbits, align 8, !tbaa !6
  store i32 1, ptr %116, align 4, !tbaa !19
  %117 = icmp slt i32 %21, 3
  br i1 %117, label %136, label %118

118:                                              ; preds = %115, %133
  %119 = phi i32 [ %134, %133 ], [ 3, %115 ]
  %120 = lshr i32 %119, 1
  %121 = shl nuw i32 2, %120
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = add nsw i32 %121, -1
  %125 = lshr i32 %124, 1
  %126 = zext nneg i32 %125 to i64
  %127 = zext nneg i32 %124 to i64
  br label %128

128:                                              ; preds = %123, %128
  %129 = phi i64 [ %126, %123 ], [ %131, %128 ]
  %130 = getelementptr inbounds i32, ptr %116, i64 %129
  store i32 %119, ptr %130, align 4, !tbaa !19
  %131 = add nuw nsw i64 %129, 1
  %132 = icmp ult i64 %131, %127
  br i1 %132, label %128, label %133

133:                                              ; preds = %128, %118
  %134 = add nuw nsw i32 %119, 2
  %135 = icmp sgt i32 %134, %21
  br i1 %135, label %136, label %118

136:                                              ; preds = %133, %115
  store i32 0, ptr %94, align 4, !tbaa !19
  %137 = load i32, ptr @byte_abs_range, align 4, !tbaa !19
  %138 = icmp sgt i32 %137, 3
  br i1 %138, label %139, label %150

139:                                              ; preds = %136, %139
  %140 = phi i64 [ %145, %139 ], [ 1, %136 ]
  %141 = sub nsw i64 0, %140
  %142 = getelementptr inbounds i32, ptr %94, i64 %141
  %143 = trunc nuw nsw i64 %140 to i32
  store i32 %143, ptr %142, align 4, !tbaa !19
  %144 = getelementptr inbounds i32, ptr %94, i64 %140
  store i32 %143, ptr %144, align 4, !tbaa !19
  %145 = add nuw nsw i64 %140, 1
  %146 = load i32, ptr @byte_abs_range, align 4, !tbaa !19
  %147 = sdiv i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %139, label %150

150:                                              ; preds = %139, %136
  %151 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  store i16 0, ptr %151, align 2, !tbaa !35
  %152 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  store i16 0, ptr %152, align 2, !tbaa !35
  %153 = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !6
  store i16 0, ptr %153, align 2, !tbaa !35
  %154 = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !6
  store i16 0, ptr %154, align 2, !tbaa !35
  %155 = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  %156 = add nuw i32 %155, 1
  br label %157

157:                                              ; preds = %210, %150
  %158 = phi i32 [ 2, %150 ], [ %212, %210 ]
  %159 = phi i64 [ 1, %150 ], [ %206, %210 ]
  %160 = phi i32 [ 1, %150 ], [ %211, %210 ]
  %161 = sub nsw i32 0, %160
  %162 = sub nsw i32 1, %160
  %163 = trunc i32 %161 to i16
  %164 = shl i16 %163, 1
  %165 = trunc i32 %160 to i16
  %166 = shl i16 %165, 1
  %167 = shl i64 %159, 32
  %168 = ashr exact i64 %167, 32
  br label %176

169:                                              ; preds = %176
  %170 = trunc i32 %161 to i16
  %171 = shl i16 %170, 1
  %172 = trunc i32 %160 to i16
  %173 = shl i16 %172, 1
  %174 = shl i64 %189, 32
  %175 = ashr exact i64 %174, 32
  br label %193

176:                                              ; preds = %157, %176
  %177 = phi i64 [ %168, %157 ], [ %189, %176 ]
  %178 = phi i32 [ %162, %157 ], [ %191, %176 ]
  %179 = trunc i32 %178 to i16
  %180 = getelementptr inbounds i16, ptr %152, i64 %177
  store i16 %179, ptr %180, align 2, !tbaa !35
  %181 = getelementptr inbounds i16, ptr %151, i64 %177
  store i16 %163, ptr %181, align 2, !tbaa !35
  %182 = shl i16 %179, 1
  %183 = getelementptr inbounds i16, ptr %154, i64 %177
  store i16 %182, ptr %183, align 2, !tbaa !35
  %184 = add nsw i64 %177, 1
  %185 = getelementptr inbounds i16, ptr %153, i64 %177
  store i16 %164, ptr %185, align 2, !tbaa !35
  %186 = getelementptr inbounds i16, ptr %152, i64 %184
  store i16 %179, ptr %186, align 2, !tbaa !35
  %187 = getelementptr inbounds i16, ptr %151, i64 %184
  store i16 %165, ptr %187, align 2, !tbaa !35
  %188 = getelementptr inbounds i16, ptr %154, i64 %184
  store i16 %182, ptr %188, align 2, !tbaa !35
  %189 = add nsw i64 %177, 2
  %190 = getelementptr inbounds i16, ptr %153, i64 %184
  store i16 %166, ptr %190, align 2, !tbaa !35
  %191 = add nsw i32 %178, 1
  %192 = icmp eq i32 %191, %160
  br i1 %192, label %169, label %176

193:                                              ; preds = %169, %193
  %194 = phi i64 [ %175, %169 ], [ %206, %193 ]
  %195 = phi i32 [ %161, %169 ], [ %208, %193 ]
  %196 = getelementptr inbounds i16, ptr %152, i64 %194
  store i16 %170, ptr %196, align 2, !tbaa !35
  %197 = trunc i32 %195 to i16
  %198 = getelementptr inbounds i16, ptr %151, i64 %194
  store i16 %197, ptr %198, align 2, !tbaa !35
  %199 = getelementptr inbounds i16, ptr %154, i64 %194
  store i16 %171, ptr %199, align 2, !tbaa !35
  %200 = shl i16 %197, 1
  %201 = add nsw i64 %194, 1
  %202 = getelementptr inbounds i16, ptr %153, i64 %194
  store i16 %200, ptr %202, align 2, !tbaa !35
  %203 = getelementptr inbounds i16, ptr %152, i64 %201
  store i16 %172, ptr %203, align 2, !tbaa !35
  %204 = getelementptr inbounds i16, ptr %151, i64 %201
  store i16 %197, ptr %204, align 2, !tbaa !35
  %205 = getelementptr inbounds i16, ptr %154, i64 %201
  store i16 %173, ptr %205, align 2, !tbaa !35
  %206 = add nsw i64 %194, 2
  %207 = getelementptr inbounds i16, ptr %153, i64 %201
  store i16 %200, ptr %207, align 2, !tbaa !35
  %208 = add i32 %195, 1
  %209 = icmp eq i32 %208, %158
  br i1 %209, label %210, label %193

210:                                              ; preds = %193
  %211 = add nuw nsw i32 %160, 1
  %212 = add nuw i32 %158, 1
  %213 = icmp eq i32 %158, %156
  br i1 %213, label %214, label %157

214:                                              ; preds = %210
  %215 = load ptr, ptr @input, align 8, !tbaa !6
  %216 = getelementptr inbounds i8, ptr %215, i64 3964
  %217 = load i32, ptr %216, align 4, !tbaa !41
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  tail call void @InitializeFastFullIntegerSearch()
  br label %220

220:                                              ; preds = %219, %214
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare dso_local double @log(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

declare dso_local signext i32 @get_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @Clear_Motion_Search_Module() local_unnamed_addr #0 {
  %1 = load i32, ptr @max_mvd, align 4, !tbaa !19
  %2 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %3 = sext i32 %1 to i64
  %4 = sub nsw i64 0, %3
  %5 = getelementptr inbounds i32, ptr %2, i64 %4
  store ptr %5, ptr @mvbits, align 8, !tbaa !6
  %6 = load i32, ptr @byte_abs_range, align 4, !tbaa !19
  %7 = sdiv i32 %6, -2
  %8 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store ptr %10, ptr @byte_abs, align 8, !tbaa !6
  %11 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  tail call void @free(ptr noundef %11) #16
  %12 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  tail call void @free(ptr noundef %12) #16
  %13 = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !6
  tail call void @free(ptr noundef %13) #16
  %14 = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !6
  tail call void @free(ptr noundef %14) #16
  %15 = load ptr, ptr @mvbits, align 8, !tbaa !6
  tail call void @free(ptr noundef %15) #16
  %16 = load ptr, ptr @refbits, align 8, !tbaa !6
  tail call void @free(ptr noundef %16) #16
  %17 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  tail call void @free(ptr noundef %17) #16
  %18 = load ptr, ptr @motion_cost, align 8, !tbaa !6
  tail call void @free_mem4Dint(ptr noundef %18, i32 noundef signext 8, i32 noundef signext 2) #16
  %19 = load ptr, ptr @input, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 3964
  %21 = load i32, ptr %20, align 4, !tbaa !41
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  tail call void @ClearFastFullIntegerSearch()
  br label %24

24:                                               ; preds = %23, %0
  ret void
}

declare dso_local void @free_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @FullPelBlockMotionSearch(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7, ptr nocapture noundef %8, ptr nocapture noundef %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12) local_unnamed_addr #0 {
  %14 = load ptr, ptr @img, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 31576
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = getelementptr inbounds i8, ptr %14, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !21
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.macroblock, ptr %16, i64 %19, i32 20
  %21 = load i32, ptr %20, align 4, !tbaa !22
  %22 = add nsw i32 %21, %2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = sext i16 %1 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %28, i64 6392
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = getelementptr inbounds i8, ptr %28, i64 6396
  %32 = load i32, ptr %31, align 4, !tbaa !32
  %33 = shl nsw i32 %10, 1
  %34 = or disjoint i32 %33, 1
  %35 = mul nsw i32 %34, %34
  %36 = load ptr, ptr @input, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 84
  %38 = sext i32 %5 to i64
  %39 = getelementptr inbounds [8 x [2 x i32]], ptr %37, i64 0, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 4
  %41 = load i32, ptr %40, align 4, !tbaa !19
  %42 = load i32, ptr %39, align 4, !tbaa !19
  %43 = ashr i32 %42, 2
  %44 = sext i16 %6 to i32
  %45 = sext i16 %7 to i32
  %46 = load i16, ptr %8, align 2, !tbaa !35
  %47 = sext i16 %46 to i32
  %48 = add nsw i32 %47, %3
  %49 = load i16, ptr %9, align 2, !tbaa !35
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %50, %4
  %52 = icmp eq i32 %5, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %13
  %54 = getelementptr inbounds i8, ptr %36, i64 3136
  %55 = load i32, ptr %54, align 8, !tbaa !36
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %14, i64 24
  %59 = load i32, ptr %58, align 8, !tbaa !27
  %60 = icmp ne i32 %59, 1
  %61 = icmp eq i16 %1, 0
  %62 = and i1 %61, %60
  br label %63

63:                                               ; preds = %57, %53, %13
  %64 = phi i1 [ false, %53 ], [ false, %13 ], [ %62, %57 ]
  %65 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %66 = getelementptr inbounds i8, ptr %65, i64 192
  %67 = load i32, ptr %66, align 8, !tbaa !25
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, ptr %14, i64 24
  %71 = load i32, ptr %70, align 8, !tbaa !27
  switch i32 %71, label %72 [
    i32 0, label %80
    i32 3, label %80
  ]

72:                                               ; preds = %69, %63
  %73 = getelementptr inbounds i8, ptr %65, i64 196
  %74 = load i32, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %14, i64 24
  %78 = load i32, ptr %77, align 8, !tbaa !27
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %69, %69, %76
  %81 = getelementptr inbounds i8, ptr %36, i64 1912
  %82 = load i32, ptr %81, align 8, !tbaa !29
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72, %80, %76
  br label %85

85:                                               ; preds = %80, %84
  %86 = phi i64 [ 6432, %84 ], [ 6440, %80 ]
  %87 = getelementptr inbounds i8, ptr %28, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = icmp sgt i32 %48, %10
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = xor i32 %10, -1
  %92 = add i32 %30, %91
  %93 = sub i32 %92, %42
  %94 = icmp slt i32 %48, %93
  %95 = icmp sgt i32 %51, %10
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = add i32 %32, %91
  %99 = sub i32 %98, %41
  %100 = icmp slt i32 %51, %99
  br i1 %100, label %102, label %101

101:                                              ; preds = %97, %90, %85
  br label %102

102:                                              ; preds = %97, %101
  %103 = phi ptr [ @UMVLineX, %101 ], [ @FastLineX, %97 ]
  %104 = mul i32 %3, -4
  %105 = sub i32 %104, %44
  %106 = mul i32 %4, -4
  %107 = sub i32 %106, %45
  %108 = ashr i32 %12, 12
  %109 = icmp sgt i32 %41, 0
  %110 = icmp sgt i32 %43, 0
  %111 = sext i32 %41 to i64
  %112 = zext nneg i32 %35 to i64
  br label %113

113:                                              ; preds = %102, %218
  %114 = phi i64 [ 0, %102 ], [ %221, %218 ]
  %115 = phi i32 [ %11, %102 ], [ %220, %218 ]
  %116 = phi i32 [ 0, %102 ], [ %219, %218 ]
  %117 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %118 = getelementptr inbounds i16, ptr %117, i64 %114
  %119 = load i16, ptr %118, align 2, !tbaa !35
  %120 = sext i16 %119 to i32
  %121 = add nsw i32 %48, %120
  %122 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %123 = getelementptr inbounds i16, ptr %122, i64 %114
  %124 = load i16, ptr %123, align 2, !tbaa !35
  %125 = sext i16 %124 to i32
  %126 = add nsw i32 %51, %125
  %127 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %128 = shl i32 %121, 2
  %129 = add i32 %105, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %127, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !19
  %133 = shl i32 %126, 2
  %134 = add i32 %107, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %127, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !19
  %138 = add nsw i32 %137, %132
  %139 = mul nsw i32 %138, %12
  %140 = ashr i32 %139, 16
  %141 = icmp eq i32 %121, %3
  %142 = and i1 %64, %141
  %143 = icmp eq i32 %126, %4
  %144 = and i1 %142, %143
  %145 = select i1 %144, i32 %108, i32 0
  %146 = sub nsw i32 %140, %145
  %147 = icmp slt i32 %146, %115
  br i1 %147, label %148, label %218

148:                                              ; preds = %113
  br i1 %109, label %149, label %212

149:                                              ; preds = %148, %206
  %150 = phi i64 [ %209, %206 ], [ 0, %148 ]
  %151 = phi i32 [ %207, %206 ], [ %146, %148 ]
  %152 = trunc i64 %150 to i32
  %153 = add i32 %126, %152
  %154 = tail call ptr %103(i32 noundef signext %42, ptr noundef %88, i32 noundef signext %153, i32 noundef signext %121, i32 noundef signext %32, i32 noundef signext %30) #16, !callees !53
  br i1 %110, label %155, label %206

155:                                              ; preds = %149
  %156 = getelementptr inbounds ptr, ptr %0, i64 %150
  %157 = load ptr, ptr %156, align 8, !tbaa !6
  %158 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  br label %159

159:                                              ; preds = %155, %159
  %160 = phi i32 [ 0, %155 ], [ %204, %159 ]
  %161 = phi i32 [ %151, %155 ], [ %203, %159 ]
  %162 = phi ptr [ %157, %155 ], [ %194, %159 ]
  %163 = phi ptr [ %154, %155 ], [ %197, %159 ]
  %164 = getelementptr inbounds i8, ptr %162, i64 2
  %165 = load i16, ptr %162, align 2, !tbaa !35
  %166 = zext i16 %165 to i64
  %167 = getelementptr inbounds i8, ptr %163, i64 2
  %168 = load i16, ptr %163, align 2, !tbaa !35
  %169 = zext i16 %168 to i64
  %170 = sub nsw i64 %166, %169
  %171 = getelementptr inbounds i32, ptr %158, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !19
  %173 = add i32 %172, %161
  %174 = getelementptr inbounds i8, ptr %162, i64 4
  %175 = load i16, ptr %164, align 2, !tbaa !35
  %176 = zext i16 %175 to i64
  %177 = getelementptr inbounds i8, ptr %163, i64 4
  %178 = load i16, ptr %167, align 2, !tbaa !35
  %179 = zext i16 %178 to i64
  %180 = sub nsw i64 %176, %179
  %181 = getelementptr inbounds i32, ptr %158, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !19
  %183 = add i32 %173, %182
  %184 = getelementptr inbounds i8, ptr %162, i64 6
  %185 = load i16, ptr %174, align 2, !tbaa !35
  %186 = zext i16 %185 to i64
  %187 = getelementptr inbounds i8, ptr %163, i64 6
  %188 = load i16, ptr %177, align 2, !tbaa !35
  %189 = zext i16 %188 to i64
  %190 = sub nsw i64 %186, %189
  %191 = getelementptr inbounds i32, ptr %158, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !19
  %193 = add i32 %183, %192
  %194 = getelementptr inbounds i8, ptr %162, i64 8
  %195 = load i16, ptr %184, align 2, !tbaa !35
  %196 = zext i16 %195 to i64
  %197 = getelementptr inbounds i8, ptr %163, i64 8
  %198 = load i16, ptr %187, align 2, !tbaa !35
  %199 = zext i16 %198 to i64
  %200 = sub nsw i64 %196, %199
  %201 = getelementptr inbounds i32, ptr %158, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !19
  %203 = add i32 %193, %202
  %204 = add nuw nsw i32 %160, 1
  %205 = icmp eq i32 %204, %43
  br i1 %205, label %206, label %159

206:                                              ; preds = %159, %149
  %207 = phi i32 [ %151, %149 ], [ %203, %159 ]
  %208 = icmp slt i32 %207, %115
  %209 = add nuw nsw i64 %150, 1
  %210 = icmp slt i64 %209, %111
  %211 = select i1 %208, i1 %210, i1 false
  br i1 %211, label %149, label %212

212:                                              ; preds = %206, %148
  %213 = phi i32 [ %146, %148 ], [ %207, %206 ]
  %214 = icmp slt i32 %213, %115
  %215 = trunc nuw nsw i64 %114 to i32
  %216 = select i1 %214, i32 %215, i32 %116
  %217 = tail call i32 @llvm.smin.i32(i32 %213, i32 %115)
  br label %218

218:                                              ; preds = %212, %113
  %219 = phi i32 [ %116, %113 ], [ %216, %212 ]
  %220 = phi i32 [ %115, %113 ], [ %217, %212 ]
  %221 = add nuw nsw i64 %114, 1
  %222 = icmp ult i64 %221, %112
  br i1 %222, label %113, label %223

223:                                              ; preds = %218
  %224 = icmp eq i32 %219, 0
  br i1 %224, label %237, label %225

225:                                              ; preds = %223
  %226 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %227 = sext i32 %219 to i64
  %228 = getelementptr inbounds i16, ptr %226, i64 %227
  %229 = load i16, ptr %228, align 2, !tbaa !35
  %230 = load i16, ptr %8, align 2, !tbaa !35
  %231 = add i16 %230, %229
  store i16 %231, ptr %8, align 2, !tbaa !35
  %232 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %233 = getelementptr inbounds i16, ptr %232, i64 %227
  %234 = load i16, ptr %233, align 2, !tbaa !35
  %235 = load i16, ptr %9, align 2, !tbaa !35
  %236 = add i16 %235, %234
  store i16 %236, ptr %9, align 2, !tbaa !35
  br label %237

237:                                              ; preds = %225, %223
  ret i32 %220
}

declare dso_local ptr @FastLineX(i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local ptr @UMVLineX(i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @FastFullPelBlockMotionSearch(ptr nocapture readnone %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12) local_unnamed_addr #0 {
  %14 = shl nsw i32 %10, 1
  %15 = or disjoint i32 %14, 1
  %16 = mul nsw i32 %15, %15
  %17 = load ptr, ptr @img, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 172
  %19 = load i32, ptr %18, align 4, !tbaa !39
  %20 = sub i32 %4, %19
  %21 = getelementptr inbounds i8, ptr %17, i64 168
  %22 = load i32, ptr %21, align 8, !tbaa !38
  %23 = sub nsw i32 %3, %22
  %24 = ashr i32 %23, 2
  %25 = add nsw i32 %20, %24
  %26 = load ptr, ptr @BlockSAD, align 8, !tbaa !6
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = sext i16 %1 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = sext i32 %5 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = sext i32 %25 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = load ptr, ptr @search_setup_done, align 8, !tbaa !6
  %40 = getelementptr inbounds ptr, ptr %39, i64 %27
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds i32, ptr %41, i64 %30
  %43 = load i32, ptr %42, align 4, !tbaa !19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %13
  tail call void @SetupFastFullPelSearch(i16 noundef signext %1, i32 noundef signext %2)
  %46 = load ptr, ptr @img, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 168
  %48 = load i32, ptr %47, align 8, !tbaa !38
  %49 = getelementptr inbounds i8, ptr %46, i64 172
  %50 = load i32, ptr %49, align 4, !tbaa !39
  br label %51

51:                                               ; preds = %45, %13
  %52 = phi i32 [ %50, %45 ], [ %19, %13 ]
  %53 = phi i32 [ %48, %45 ], [ %22, %13 ]
  %54 = load ptr, ptr @search_center_x, align 8, !tbaa !6
  %55 = getelementptr inbounds ptr, ptr %54, i64 %27
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = getelementptr inbounds i32, ptr %56, i64 %30
  %58 = load i32, ptr %57, align 4, !tbaa !19
  %59 = sub nsw i32 %58, %53
  %60 = load ptr, ptr @search_center_y, align 8, !tbaa !6
  %61 = getelementptr inbounds ptr, ptr %60, i64 %27
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds i32, ptr %62, i64 %30
  %64 = load i32, ptr %63, align 4, !tbaa !19
  %65 = sub nsw i32 %64, %52
  %66 = load ptr, ptr @input, align 8, !tbaa !6
  %67 = getelementptr inbounds i8, ptr %66, i64 3136
  %68 = load i32, ptr %67, align 8, !tbaa !36
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr @mvbits, align 8
  br i1 %69, label %71, label %95

71:                                               ; preds = %51
  %72 = load ptr, ptr @pos_00, align 8, !tbaa !6
  %73 = getelementptr inbounds ptr, ptr %72, i64 %27
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds i32, ptr %74, i64 %30
  %76 = load i32, ptr %75, align 4, !tbaa !19
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %38, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !19
  %80 = sext i16 %6 to i64
  %81 = sub nsw i64 0, %80
  %82 = getelementptr inbounds i32, ptr %70, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !19
  %84 = sext i16 %7 to i64
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i32, ptr %70, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !19
  %88 = add nsw i32 %87, %83
  %89 = mul nsw i32 %88, %12
  %90 = ashr i32 %89, 16
  %91 = add nsw i32 %90, %79
  %92 = icmp slt i32 %91, %11
  %93 = select i1 %92, i32 %76, i32 0
  %94 = tail call i32 @llvm.smin.i32(i32 %91, i32 %11)
  br label %95

95:                                               ; preds = %71, %51
  %96 = phi i32 [ 0, %51 ], [ %93, %71 ]
  %97 = phi i32 [ %11, %51 ], [ %94, %71 ]
  %98 = load ptr, ptr @spiral_search_x, align 8
  %99 = load ptr, ptr @spiral_search_y, align 8
  %100 = sext i16 %6 to i32
  %101 = sext i16 %7 to i32
  %102 = zext nneg i32 %16 to i64
  br label %103

103:                                              ; preds = %95, %137
  %104 = phi i64 [ 0, %95 ], [ %140, %137 ]
  %105 = phi ptr [ %38, %95 ], [ %141, %137 ]
  %106 = phi i32 [ %97, %95 ], [ %139, %137 ]
  %107 = phi i32 [ %96, %95 ], [ %138, %137 ]
  %108 = load i32, ptr %105, align 4, !tbaa !19
  %109 = icmp slt i32 %108, %106
  br i1 %109, label %110, label %137

110:                                              ; preds = %103
  %111 = getelementptr inbounds i16, ptr %98, i64 %104
  %112 = load i16, ptr %111, align 2, !tbaa !35
  %113 = sext i16 %112 to i32
  %114 = add nsw i32 %59, %113
  %115 = getelementptr inbounds i16, ptr %99, i64 %104
  %116 = load i16, ptr %115, align 2, !tbaa !35
  %117 = sext i16 %116 to i32
  %118 = add nsw i32 %65, %117
  %119 = shl i32 %114, 2
  %120 = sub nsw i32 %119, %100
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %70, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !19
  %124 = shl i32 %118, 2
  %125 = sub nsw i32 %124, %101
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %70, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !19
  %129 = add nsw i32 %128, %123
  %130 = mul nsw i32 %129, %12
  %131 = ashr i32 %130, 16
  %132 = add nsw i32 %131, %108
  %133 = icmp slt i32 %132, %106
  %134 = trunc nuw nsw i64 %104 to i32
  %135 = select i1 %133, i32 %134, i32 %107
  %136 = tail call i32 @llvm.smin.i32(i32 %132, i32 %106)
  br label %137

137:                                              ; preds = %110, %103
  %138 = phi i32 [ %107, %103 ], [ %135, %110 ]
  %139 = phi i32 [ %106, %103 ], [ %136, %110 ]
  %140 = add nuw nsw i64 %104, 1
  %141 = getelementptr inbounds i8, ptr %105, i64 4
  %142 = icmp ult i64 %140, %102
  br i1 %142, label %103, label %143

143:                                              ; preds = %137
  %144 = sext i32 %138 to i64
  %145 = getelementptr inbounds i16, ptr %98, i64 %144
  %146 = load i16, ptr %145, align 2, !tbaa !35
  %147 = trunc i32 %59 to i16
  %148 = add i16 %146, %147
  store i16 %148, ptr %8, align 2, !tbaa !35
  %149 = getelementptr inbounds i16, ptr %99, i64 %144
  %150 = load i16, ptr %149, align 2, !tbaa !35
  %151 = trunc i32 %65 to i16
  %152 = add i16 %150, %151
  store i16 %152, ptr %9, align 2, !tbaa !35
  ret i32 %139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext i32 @SATD(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #10 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %100

4:                                                ; preds = %2
  %5 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  %6 = load i32, ptr %0, align 4, !tbaa !19
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !19
  %10 = getelementptr inbounds i8, ptr %0, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !19
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %5, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !19
  %15 = add i32 %14, %9
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 4, !tbaa !19
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %5, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = add i32 %20, %15
  %22 = getelementptr inbounds i8, ptr %0, i64 12
  %23 = load i32, ptr %22, align 4, !tbaa !19
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %5, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !19
  %27 = add i32 %26, %21
  %28 = getelementptr inbounds i8, ptr %0, i64 16
  %29 = load i32, ptr %28, align 4, !tbaa !19
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %5, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !19
  %33 = add i32 %32, %27
  %34 = getelementptr inbounds i8, ptr %0, i64 20
  %35 = load i32, ptr %34, align 4, !tbaa !19
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %5, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !19
  %39 = add i32 %38, %33
  %40 = getelementptr inbounds i8, ptr %0, i64 24
  %41 = load i32, ptr %40, align 4, !tbaa !19
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %5, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !19
  %45 = add i32 %44, %39
  %46 = getelementptr inbounds i8, ptr %0, i64 28
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %5, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !19
  %51 = add i32 %50, %45
  %52 = getelementptr inbounds i8, ptr %0, i64 32
  %53 = load i32, ptr %52, align 4, !tbaa !19
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %5, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !19
  %57 = add i32 %56, %51
  %58 = getelementptr inbounds i8, ptr %0, i64 36
  %59 = load i32, ptr %58, align 4, !tbaa !19
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %5, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !19
  %63 = add i32 %62, %57
  %64 = getelementptr inbounds i8, ptr %0, i64 40
  %65 = load i32, ptr %64, align 4, !tbaa !19
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %5, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !19
  %69 = add i32 %68, %63
  %70 = getelementptr inbounds i8, ptr %0, i64 44
  %71 = load i32, ptr %70, align 4, !tbaa !19
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %5, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !19
  %75 = add i32 %74, %69
  %76 = getelementptr inbounds i8, ptr %0, i64 48
  %77 = load i32, ptr %76, align 4, !tbaa !19
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %5, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !19
  %81 = add i32 %80, %75
  %82 = getelementptr inbounds i8, ptr %0, i64 52
  %83 = load i32, ptr %82, align 4, !tbaa !19
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %5, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !19
  %87 = add i32 %86, %81
  %88 = getelementptr inbounds i8, ptr %0, i64 56
  %89 = load i32, ptr %88, align 4, !tbaa !19
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %5, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !19
  %93 = add i32 %92, %87
  %94 = getelementptr inbounds i8, ptr %0, i64 60
  %95 = load i32, ptr %94, align 4, !tbaa !19
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %5, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !19
  %99 = add i32 %98, %93
  br label %262

100:                                              ; preds = %2
  %101 = load i32, ptr %0, align 4, !tbaa !19
  %102 = getelementptr inbounds i8, ptr %0, i64 48
  %103 = load i32, ptr %102, align 4, !tbaa !19
  %104 = add nsw i32 %103, %101
  %105 = getelementptr inbounds i8, ptr %0, i64 4
  %106 = load i32, ptr %105, align 4, !tbaa !19
  %107 = getelementptr inbounds i8, ptr %0, i64 52
  %108 = load i32, ptr %107, align 4, !tbaa !19
  %109 = add nsw i32 %108, %106
  %110 = getelementptr inbounds i8, ptr %0, i64 8
  %111 = load i32, ptr %110, align 4, !tbaa !19
  %112 = getelementptr inbounds i8, ptr %0, i64 56
  %113 = load i32, ptr %112, align 4, !tbaa !19
  %114 = add nsw i32 %113, %111
  %115 = getelementptr inbounds i8, ptr %0, i64 12
  %116 = load i32, ptr %115, align 4, !tbaa !19
  %117 = getelementptr inbounds i8, ptr %0, i64 60
  %118 = load i32, ptr %117, align 4, !tbaa !19
  %119 = add nsw i32 %118, %116
  %120 = getelementptr inbounds i8, ptr %0, i64 16
  %121 = load i32, ptr %120, align 4, !tbaa !19
  %122 = getelementptr inbounds i8, ptr %0, i64 32
  %123 = load i32, ptr %122, align 4, !tbaa !19
  %124 = add nsw i32 %123, %121
  %125 = getelementptr inbounds i8, ptr %0, i64 20
  %126 = load i32, ptr %125, align 4, !tbaa !19
  %127 = getelementptr inbounds i8, ptr %0, i64 36
  %128 = load i32, ptr %127, align 4, !tbaa !19
  %129 = add nsw i32 %128, %126
  %130 = getelementptr inbounds i8, ptr %0, i64 24
  %131 = load i32, ptr %130, align 4, !tbaa !19
  %132 = getelementptr inbounds i8, ptr %0, i64 40
  %133 = load i32, ptr %132, align 4, !tbaa !19
  %134 = add nsw i32 %133, %131
  %135 = getelementptr inbounds i8, ptr %0, i64 28
  %136 = load i32, ptr %135, align 4, !tbaa !19
  %137 = getelementptr inbounds i8, ptr %0, i64 44
  %138 = load i32, ptr %137, align 4, !tbaa !19
  %139 = add nsw i32 %138, %136
  %140 = sub nsw i32 %121, %123
  %141 = sub nsw i32 %126, %128
  %142 = sub nsw i32 %131, %133
  %143 = sub nsw i32 %136, %138
  %144 = sub nsw i32 %101, %103
  %145 = sub nsw i32 %106, %108
  %146 = sub nsw i32 %111, %113
  %147 = sub nsw i32 %116, %118
  %148 = add nsw i32 %124, %104
  %149 = add nsw i32 %129, %109
  %150 = add nsw i32 %134, %114
  %151 = add nsw i32 %139, %119
  %152 = add nsw i32 %140, %144
  %153 = add nsw i32 %141, %145
  %154 = add nsw i32 %142, %146
  %155 = add nsw i32 %143, %147
  %156 = sub nsw i32 %104, %124
  %157 = sub nsw i32 %109, %129
  %158 = sub nsw i32 %114, %134
  %159 = sub nsw i32 %119, %139
  %160 = sub nsw i32 %144, %140
  %161 = sub nsw i32 %145, %141
  %162 = sub nsw i32 %146, %142
  %163 = sub nsw i32 %147, %143
  %164 = add nsw i32 %151, %148
  %165 = add nsw i32 %150, %149
  %166 = sub nsw i32 %149, %150
  %167 = sub nsw i32 %148, %151
  %168 = add nsw i32 %155, %152
  %169 = add nsw i32 %154, %153
  %170 = sub nsw i32 %153, %154
  %171 = sub nsw i32 %152, %155
  %172 = add nsw i32 %159, %156
  %173 = add nsw i32 %158, %157
  %174 = sub nsw i32 %157, %158
  %175 = sub nsw i32 %156, %159
  %176 = add nsw i32 %163, %160
  %177 = add nsw i32 %162, %161
  %178 = sub nsw i32 %161, %162
  %179 = sub nsw i32 %160, %163
  %180 = add nsw i32 %164, %165
  %181 = sub nsw i32 %164, %165
  %182 = add nsw i32 %167, %166
  %183 = sub nsw i32 %167, %166
  %184 = add nsw i32 %168, %169
  %185 = sub nsw i32 %168, %169
  %186 = add nsw i32 %171, %170
  %187 = sub nsw i32 %171, %170
  %188 = add nsw i32 %172, %173
  %189 = sub nsw i32 %172, %173
  %190 = add nsw i32 %175, %174
  %191 = sub nsw i32 %175, %174
  %192 = add nsw i32 %176, %177
  %193 = sub nsw i32 %176, %177
  %194 = add nsw i32 %179, %178
  %195 = sub nsw i32 %179, %178
  %196 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  %197 = sext i32 %180 to i64
  %198 = getelementptr inbounds i32, ptr %196, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !19
  %200 = sext i32 %181 to i64
  %201 = getelementptr inbounds i32, ptr %196, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !19
  %203 = add i32 %202, %199
  %204 = sext i32 %182 to i64
  %205 = getelementptr inbounds i32, ptr %196, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !19
  %207 = add i32 %206, %203
  %208 = sext i32 %183 to i64
  %209 = getelementptr inbounds i32, ptr %196, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !19
  %211 = add i32 %210, %207
  %212 = sext i32 %184 to i64
  %213 = getelementptr inbounds i32, ptr %196, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !19
  %215 = add i32 %214, %211
  %216 = sext i32 %185 to i64
  %217 = getelementptr inbounds i32, ptr %196, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !19
  %219 = add i32 %218, %215
  %220 = sext i32 %186 to i64
  %221 = getelementptr inbounds i32, ptr %196, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !19
  %223 = add i32 %222, %219
  %224 = sext i32 %187 to i64
  %225 = getelementptr inbounds i32, ptr %196, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !19
  %227 = add i32 %226, %223
  %228 = sext i32 %188 to i64
  %229 = getelementptr inbounds i32, ptr %196, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !19
  %231 = add i32 %230, %227
  %232 = sext i32 %189 to i64
  %233 = getelementptr inbounds i32, ptr %196, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !19
  %235 = add i32 %234, %231
  %236 = sext i32 %190 to i64
  %237 = getelementptr inbounds i32, ptr %196, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !19
  %239 = add i32 %238, %235
  %240 = sext i32 %191 to i64
  %241 = getelementptr inbounds i32, ptr %196, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !19
  %243 = add i32 %242, %239
  %244 = sext i32 %192 to i64
  %245 = getelementptr inbounds i32, ptr %196, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !19
  %247 = add i32 %246, %243
  %248 = sext i32 %193 to i64
  %249 = getelementptr inbounds i32, ptr %196, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !19
  %251 = add i32 %250, %247
  %252 = sext i32 %194 to i64
  %253 = getelementptr inbounds i32, ptr %196, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !19
  %255 = add i32 %254, %251
  %256 = sext i32 %195 to i64
  %257 = getelementptr inbounds i32, ptr %196, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !19
  %259 = add i32 %258, %255
  %260 = add nsw i32 %259, 1
  %261 = ashr i32 %260, 1
  br label %262

262:                                              ; preds = %4, %100
  %263 = phi i32 [ %261, %100 ], [ %99, %4 ]
  ret i32 %263
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext i32 @SATD8X8(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #11 {
  %3 = alloca [8 x [8 x i32]], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  br label %159

7:                                                ; preds = %15
  %8 = getelementptr inbounds i8, ptr %3, i64 128
  %9 = getelementptr inbounds i8, ptr %3, i64 32
  %10 = getelementptr inbounds i8, ptr %3, i64 160
  %11 = getelementptr inbounds i8, ptr %3, i64 64
  %12 = getelementptr inbounds i8, ptr %3, i64 192
  %13 = getelementptr inbounds i8, ptr %3, i64 96
  %14 = getelementptr inbounds i8, ptr %3, i64 224
  br label %75

15:                                               ; preds = %2, %15
  %16 = phi i64 [ %73, %15 ], [ 0, %2 ]
  %17 = shl nuw nsw i64 %16, 3
  %18 = getelementptr inbounds i32, ptr %0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !19
  %20 = or disjoint i64 %17, 4
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !19
  %23 = add nsw i32 %22, %19
  %24 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %16
  %25 = or disjoint i64 %17, 1
  %26 = getelementptr inbounds i32, ptr %0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !19
  %28 = or disjoint i64 %17, 5
  %29 = getelementptr inbounds i32, ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !19
  %31 = add nsw i32 %30, %27
  %32 = getelementptr inbounds i8, ptr %24, i64 4
  %33 = or disjoint i64 %17, 2
  %34 = getelementptr inbounds i32, ptr %0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !19
  %36 = or disjoint i64 %17, 6
  %37 = getelementptr inbounds i32, ptr %0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !19
  %39 = add nsw i32 %38, %35
  %40 = getelementptr inbounds i8, ptr %24, i64 8
  %41 = or disjoint i64 %17, 3
  %42 = getelementptr inbounds i32, ptr %0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !19
  %44 = or disjoint i64 %17, 7
  %45 = getelementptr inbounds i32, ptr %0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !19
  %47 = add nsw i32 %46, %43
  %48 = getelementptr inbounds i8, ptr %24, i64 12
  %49 = sub nsw i32 %19, %22
  %50 = getelementptr inbounds i8, ptr %24, i64 16
  %51 = sub nsw i32 %27, %30
  %52 = getelementptr inbounds i8, ptr %24, i64 20
  %53 = sub nsw i32 %35, %38
  %54 = getelementptr inbounds i8, ptr %24, i64 24
  %55 = sub nsw i32 %43, %46
  %56 = getelementptr inbounds i8, ptr %24, i64 28
  %57 = add nsw i32 %39, %23
  %58 = add nsw i32 %47, %31
  %59 = sub nsw i32 %23, %39
  %60 = sub nsw i32 %31, %47
  %61 = add nsw i32 %53, %49
  %62 = add nsw i32 %55, %51
  %63 = sub nsw i32 %49, %53
  %64 = sub nsw i32 %51, %55
  %65 = add nsw i32 %58, %57
  store i32 %65, ptr %24, align 4, !tbaa !19
  %66 = sub nsw i32 %57, %58
  store i32 %66, ptr %32, align 4, !tbaa !19
  %67 = add nsw i32 %60, %59
  store i32 %67, ptr %40, align 4, !tbaa !19
  %68 = sub nsw i32 %59, %60
  store i32 %68, ptr %48, align 4, !tbaa !19
  %69 = add nsw i32 %62, %61
  store i32 %69, ptr %50, align 4, !tbaa !19
  %70 = sub nsw i32 %61, %62
  store i32 %70, ptr %52, align 4, !tbaa !19
  %71 = add nsw i32 %64, %63
  store i32 %71, ptr %54, align 4, !tbaa !19
  %72 = sub nsw i32 %63, %64
  store i32 %72, ptr %56, align 4, !tbaa !19
  %73 = add nuw nsw i64 %16, 1
  %74 = icmp eq i64 %73, 8
  br i1 %74, label %7, label %15

75:                                               ; preds = %7, %75
  %76 = phi i64 [ 0, %7 ], [ %117, %75 ]
  %77 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !19
  %79 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 %76
  %80 = load i32, ptr %79, align 4, !tbaa !19
  %81 = add nsw i32 %80, %78
  %82 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 %76
  %83 = load i32, ptr %82, align 4, !tbaa !19
  %84 = getelementptr inbounds [8 x i32], ptr %10, i64 0, i64 %76
  %85 = load i32, ptr %84, align 4, !tbaa !19
  %86 = add nsw i32 %85, %83
  %87 = getelementptr inbounds [8 x i32], ptr %11, i64 0, i64 %76
  %88 = load i32, ptr %87, align 4, !tbaa !19
  %89 = getelementptr inbounds [8 x i32], ptr %12, i64 0, i64 %76
  %90 = load i32, ptr %89, align 4, !tbaa !19
  %91 = add nsw i32 %90, %88
  %92 = getelementptr inbounds [8 x i32], ptr %13, i64 0, i64 %76
  %93 = load i32, ptr %92, align 4, !tbaa !19
  %94 = getelementptr inbounds [8 x i32], ptr %14, i64 0, i64 %76
  %95 = load i32, ptr %94, align 4, !tbaa !19
  %96 = add nsw i32 %95, %93
  %97 = sub nsw i32 %78, %80
  %98 = sub nsw i32 %83, %85
  %99 = sub nsw i32 %88, %90
  %100 = sub nsw i32 %93, %95
  %101 = add nsw i32 %91, %81
  %102 = add nsw i32 %96, %86
  %103 = sub nsw i32 %81, %91
  %104 = sub nsw i32 %86, %96
  %105 = add nsw i32 %99, %97
  %106 = add nsw i32 %100, %98
  %107 = sub nsw i32 %97, %99
  %108 = sub nsw i32 %98, %100
  %109 = add nsw i32 %102, %101
  store i32 %109, ptr %77, align 4, !tbaa !19
  %110 = sub nsw i32 %101, %102
  store i32 %110, ptr %82, align 4, !tbaa !19
  %111 = add nsw i32 %104, %103
  store i32 %111, ptr %87, align 4, !tbaa !19
  %112 = sub nsw i32 %103, %104
  store i32 %112, ptr %92, align 4, !tbaa !19
  %113 = add nsw i32 %106, %105
  store i32 %113, ptr %79, align 4, !tbaa !19
  %114 = sub nsw i32 %105, %106
  store i32 %114, ptr %84, align 4, !tbaa !19
  %115 = add nsw i32 %108, %107
  store i32 %115, ptr %89, align 4, !tbaa !19
  %116 = sub nsw i32 %107, %108
  store i32 %116, ptr %94, align 4, !tbaa !19
  %117 = add nuw nsw i64 %76, 1
  %118 = icmp eq i64 %117, 8
  br i1 %118, label %119, label %75

119:                                              ; preds = %75, %119
  %120 = phi i64 [ %154, %119 ], [ 0, %75 ]
  %121 = phi i32 [ %153, %119 ], [ 0, %75 ]
  %122 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %120, i64 0
  %123 = load i32, ptr %122, align 4, !tbaa !19
  %124 = tail call i32 @llvm.abs.i32(i32 %123, i1 true)
  %125 = add nuw nsw i32 %124, %121
  %126 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %120, i64 1
  %127 = load i32, ptr %126, align 4, !tbaa !19
  %128 = tail call i32 @llvm.abs.i32(i32 %127, i1 true)
  %129 = add nuw nsw i32 %128, %125
  %130 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %120, i64 2
  %131 = load i32, ptr %130, align 4, !tbaa !19
  %132 = tail call i32 @llvm.abs.i32(i32 %131, i1 true)
  %133 = add nuw nsw i32 %132, %129
  %134 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %120, i64 3
  %135 = load i32, ptr %134, align 4, !tbaa !19
  %136 = tail call i32 @llvm.abs.i32(i32 %135, i1 true)
  %137 = add nuw nsw i32 %136, %133
  %138 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %120, i64 4
  %139 = load i32, ptr %138, align 4, !tbaa !19
  %140 = tail call i32 @llvm.abs.i32(i32 %139, i1 true)
  %141 = add nuw nsw i32 %140, %137
  %142 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %120, i64 5
  %143 = load i32, ptr %142, align 4, !tbaa !19
  %144 = tail call i32 @llvm.abs.i32(i32 %143, i1 true)
  %145 = add nuw nsw i32 %144, %141
  %146 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %120, i64 6
  %147 = load i32, ptr %146, align 4, !tbaa !19
  %148 = tail call i32 @llvm.abs.i32(i32 %147, i1 true)
  %149 = add nuw nsw i32 %148, %145
  %150 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %120, i64 7
  %151 = load i32, ptr %150, align 4, !tbaa !19
  %152 = tail call i32 @llvm.abs.i32(i32 %151, i1 true)
  %153 = add nuw nsw i32 %152, %149
  %154 = add nuw nsw i64 %120, 1
  %155 = icmp eq i64 %154, 8
  br i1 %155, label %156, label %119

156:                                              ; preds = %119
  %157 = add nuw nsw i32 %153, 2
  %158 = lshr i32 %157, 2
  br label %170

159:                                              ; preds = %5, %159
  %160 = phi i64 [ 0, %5 ], [ %168, %159 ]
  %161 = phi i32 [ 0, %5 ], [ %167, %159 ]
  %162 = getelementptr inbounds i32, ptr %0, i64 %160
  %163 = load i32, ptr %162, align 4, !tbaa !19
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, ptr %6, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !19
  %167 = add i32 %166, %161
  %168 = add nuw nsw i64 %160, 1
  %169 = icmp eq i64 %168, 64
  br i1 %169, label %170, label %159

170:                                              ; preds = %159, %156
  %171 = phi i32 [ %158, %156 ], [ %167, %159 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret i32 %171
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext i32 @find_SATD(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #11 {
  switch i32 %1, label %30 [
    i32 1, label %3
    i32 2, label %17
    i32 3, label %17
    i32 4, label %25
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr @input, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = tail call signext i32 @SATD8X8(ptr noundef %0, i32 noundef signext %6)
  %8 = getelementptr inbounds i8, ptr %0, i64 256
  %9 = tail call signext i32 @SATD8X8(ptr noundef nonnull %8, i32 noundef signext %6)
  %10 = add nsw i32 %9, %7
  %11 = getelementptr inbounds i8, ptr %0, i64 512
  %12 = tail call signext i32 @SATD8X8(ptr noundef nonnull %11, i32 noundef signext %6)
  %13 = add nsw i32 %10, %12
  %14 = getelementptr inbounds i8, ptr %0, i64 768
  %15 = tail call signext i32 @SATD8X8(ptr noundef nonnull %14, i32 noundef signext %6)
  %16 = add nsw i32 %13, %15
  br label %30

17:                                               ; preds = %2, %2
  %18 = load ptr, ptr @input, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 24
  %20 = load i32, ptr %19, align 8, !tbaa !54
  %21 = tail call signext i32 @SATD8X8(ptr noundef %0, i32 noundef signext %20)
  %22 = getelementptr inbounds i8, ptr %0, i64 256
  %23 = tail call signext i32 @SATD8X8(ptr noundef nonnull %22, i32 noundef signext %20)
  %24 = add nsw i32 %23, %21
  br label %30

25:                                               ; preds = %2
  %26 = load ptr, ptr @input, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %26, i64 24
  %28 = load i32, ptr %27, align 8, !tbaa !54
  %29 = tail call signext i32 @SATD8X8(ptr noundef %0, i32 noundef signext %28)
  br label %30

30:                                               ; preds = %2, %25, %17, %3
  %31 = phi i32 [ %29, %25 ], [ %24, %17 ], [ %16, %3 ], [ -1, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind
define dso_local signext i32 @SubPelBlockMotionSearch(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, ptr nocapture noundef %8, ptr nocapture noundef %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12, i32 noundef signext %13) local_unnamed_addr #0 {
  %15 = alloca [256 x i32], align 4
  %16 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #16
  %17 = icmp eq i32 %5, 3
  %18 = select i1 %17, i32 64, i32 128
  %19 = load ptr, ptr @input, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 3136
  %21 = load i32, ptr %20, align 8, !tbaa !36
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %22, label %24, label %42

24:                                               ; preds = %14
  %25 = getelementptr inbounds i8, ptr %23, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !27
  %27 = icmp ne i32 %26, 1
  %28 = icmp eq i16 %1, 0
  %29 = and i1 %28, %27
  %30 = icmp eq i32 %5, 1
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load i16, ptr %8, align 2, !tbaa !35
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i16, ptr %9, align 2, !tbaa !35
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %19, i64 24
  %40 = load i32, ptr %39, align 8, !tbaa !54
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %38, %35, %32, %24, %14
  %43 = phi i1 [ false, %35 ], [ false, %32 ], [ false, %24 ], [ false, %14 ], [ %41, %38 ]
  %44 = getelementptr inbounds i8, ptr %19, i64 84
  %45 = sext i32 %5 to i64
  %46 = getelementptr inbounds [8 x [2 x i32]], ptr %44, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = getelementptr inbounds i8, ptr %46, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !19
  %50 = shl i32 %3, 2
  %51 = add i32 %50, 16
  %52 = shl i32 %4, 2
  %53 = add i32 %52, 16
  %54 = getelementptr inbounds i8, ptr %19, i64 24
  %55 = load i32, ptr %54, align 8, !tbaa !54
  %56 = icmp ne i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = icmp eq i32 %55, 0
  %59 = tail call i32 @llvm.smax.i32(i32 %10, i32 1)
  %60 = select i1 %58, i32 %10, i32 %59
  %61 = getelementptr inbounds i8, ptr %23, i64 31576
  %62 = load ptr, ptr %61, align 8, !tbaa !20
  %63 = getelementptr inbounds i8, ptr %23, i64 12
  %64 = load i32, ptr %63, align 4, !tbaa !21
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.macroblock, ptr %62, i64 %65, i32 20
  %67 = load i32, ptr %66, align 4, !tbaa !22
  %68 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %68, i64 192
  %70 = load i32, ptr %69, align 8, !tbaa !25
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %42
  %73 = getelementptr inbounds i8, ptr %23, i64 24
  %74 = load i32, ptr %73, align 8, !tbaa !27
  switch i32 %74, label %75 [
    i32 0, label %83
    i32 3, label %83
  ]

75:                                               ; preds = %72, %42
  %76 = getelementptr inbounds i8, ptr %68, i64 196
  %77 = load i32, ptr %76, align 4, !tbaa !28
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds i8, ptr %23, i64 24
  %81 = load i32, ptr %80, align 8, !tbaa !27
  %82 = icmp eq i32 %81, 1
  br label %83

83:                                               ; preds = %72, %72, %75, %79
  %84 = phi i1 [ true, %72 ], [ false, %75 ], [ %82, %79 ], [ true, %72 ]
  %85 = icmp eq i32 %55, 2
  %86 = select i1 %85, i32 0, i32 %55
  %87 = icmp ne i32 %55, 2
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds i8, ptr %19, i64 3892
  %90 = load i32, ptr %89, align 4, !tbaa !55
  %91 = icmp ne i32 %90, 0
  %92 = icmp slt i32 %5, 5
  %93 = and i1 %92, %91
  %94 = icmp ne i32 %86, 0
  %95 = select i1 %93, i1 %94, i1 false
  %96 = add nsw i32 %67, %2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = sext i16 %1 to i64
  %101 = getelementptr inbounds ptr, ptr %99, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  br i1 %84, label %103, label %107

103:                                              ; preds = %83
  %104 = getelementptr inbounds i8, ptr %19, i64 1912
  %105 = load i32, ptr %104, align 8, !tbaa !29
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %83
  br label %108

108:                                              ; preds = %103, %107
  %109 = phi i64 [ 6448, %107 ], [ 6456, %103 ]
  %110 = getelementptr inbounds i8, ptr %102, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = getelementptr inbounds i8, ptr %102, i64 6392
  %113 = load i32, ptr %112, align 8, !tbaa !30
  %114 = shl i32 %113, 2
  %115 = add i32 %114, 28
  %116 = getelementptr inbounds i8, ptr %102, i64 6396
  %117 = load i32, ptr %116, align 4, !tbaa !32
  %118 = shl i32 %117, 2
  %119 = add i32 %118, 28
  %120 = sub nsw i32 %113, %47
  %121 = shl i32 %120, 2
  %122 = add i32 %121, 32
  %123 = sub nsw i32 %117, %49
  %124 = shl i32 %123, 2
  %125 = add i32 %124, 32
  %126 = load i16, ptr %8, align 2, !tbaa !35
  %127 = sext i16 %126 to i32
  %128 = add nsw i32 %51, %127
  %129 = icmp sgt i32 %128, 1
  %130 = add i32 %121, 31
  %131 = icmp slt i32 %128, %130
  %132 = select i1 %129, i1 %131, i1 false
  br i1 %132, label %133, label %141

133:                                              ; preds = %108
  %134 = load i16, ptr %9, align 2, !tbaa !35
  %135 = sext i16 %134 to i32
  %136 = add nsw i32 %53, %135
  %137 = icmp sgt i32 %136, 1
  %138 = add i32 %124, 31
  %139 = icmp slt i32 %136, %138
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %142, label %141

141:                                              ; preds = %133, %108
  br label %142

142:                                              ; preds = %133, %141
  %143 = phi ptr [ @UMVLine4X, %141 ], [ @FastLine4X, %133 ]
  store ptr %143, ptr @get_line, align 8, !tbaa !6
  %144 = icmp sgt i32 %60, %57
  br i1 %144, label %145, label %426

145:                                              ; preds = %142
  %146 = ashr i32 %13, 12
  %147 = icmp sgt i32 %49, 0
  %148 = icmp sgt i32 %47, 0
  %149 = getelementptr inbounds i8, ptr %16, i64 4
  %150 = getelementptr inbounds i8, ptr %16, i64 8
  %151 = getelementptr inbounds i8, ptr %16, i64 12
  %152 = getelementptr inbounds i8, ptr %16, i64 16
  %153 = getelementptr inbounds i8, ptr %16, i64 20
  %154 = getelementptr inbounds i8, ptr %16, i64 24
  %155 = getelementptr inbounds i8, ptr %16, i64 28
  %156 = getelementptr inbounds i8, ptr %16, i64 32
  %157 = getelementptr inbounds i8, ptr %16, i64 36
  %158 = getelementptr inbounds i8, ptr %16, i64 40
  %159 = getelementptr inbounds i8, ptr %16, i64 44
  %160 = getelementptr inbounds i8, ptr %16, i64 48
  %161 = getelementptr inbounds i8, ptr %16, i64 52
  %162 = getelementptr inbounds i8, ptr %16, i64 56
  %163 = getelementptr inbounds i8, ptr %16, i64 60
  %164 = zext i1 %56 to i64
  %165 = zext nneg i32 %60 to i64
  br label %166

166:                                              ; preds = %145, %406
  %167 = phi i64 [ %164, %145 ], [ %409, %406 ]
  %168 = phi i32 [ %12, %145 ], [ %408, %406 ]
  %169 = phi i32 [ 0, %145 ], [ %407, %406 ]
  %170 = load i16, ptr %8, align 2, !tbaa !35
  %171 = sext i16 %170 to i32
  %172 = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !6
  %173 = getelementptr inbounds i16, ptr %172, i64 %167
  %174 = load i16, ptr %173, align 2, !tbaa !35
  %175 = sext i16 %174 to i32
  %176 = add nsw i32 %175, %171
  %177 = load i16, ptr %9, align 2, !tbaa !35
  %178 = sext i16 %177 to i32
  %179 = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !6
  %180 = getelementptr inbounds i16, ptr %179, i64 %167
  %181 = load i16, ptr %180, align 2, !tbaa !35
  %182 = sext i16 %181 to i32
  %183 = add nsw i32 %182, %178
  %184 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %185 = sub nsw i32 %176, %6
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, ptr %184, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !19
  %189 = sub nsw i32 %183, %7
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, ptr %184, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !19
  %193 = add nsw i32 %192, %188
  %194 = mul nsw i32 %193, %13
  %195 = ashr i32 %194, 16
  %196 = icmp eq i64 %167, 0
  %197 = and i1 %43, %196
  %198 = select i1 %197, i32 %146, i32 0
  %199 = sub nsw i32 %195, %198
  %200 = icmp slt i32 %199, %168
  br i1 %200, label %201, label %406

201:                                              ; preds = %166
  %202 = add nsw i32 %176, %51
  %203 = add nsw i32 %183, %53
  br i1 %147, label %204, label %395

204:                                              ; preds = %201, %390
  %205 = phi i64 [ %392, %390 ], [ 0, %201 ]
  %206 = phi i32 [ %391, %390 ], [ %199, %201 ]
  %207 = icmp ugt i64 %205, 7
  %208 = select i1 %207, i32 %18, i32 0
  %209 = trunc nuw nsw i64 %205 to i32
  %210 = shl i32 %209, 2
  %211 = add nsw i32 %203, %210
  %212 = add nsw i32 %211, 4
  %213 = add nsw i32 %211, 8
  %214 = add nsw i32 %211, 12
  br i1 %148, label %215, label %390

215:                                              ; preds = %204
  %216 = or disjoint i64 %205, 3
  %217 = or disjoint i64 %205, 2
  %218 = or disjoint i64 %205, 1
  %219 = getelementptr inbounds ptr, ptr %0, i64 %205
  %220 = getelementptr inbounds ptr, ptr %0, i64 %218
  %221 = getelementptr inbounds ptr, ptr %0, i64 %217
  %222 = getelementptr inbounds ptr, ptr %0, i64 %216
  %223 = shl i32 %209, 3
  %224 = and i32 %223, 32
  %225 = trunc i64 %205 to i32
  %226 = shl i32 %225, 3
  %227 = and i32 %226, 32
  %228 = trunc i64 %205 to i32
  %229 = shl i32 %228, 3
  %230 = and i32 %229, 32
  %231 = trunc i64 %205 to i32
  %232 = shl i32 %231, 3
  %233 = and i32 %232, 32
  br label %234

234:                                              ; preds = %215, %385
  %235 = phi i64 [ 0, %215 ], [ %387, %385 ]
  %236 = phi i32 [ %206, %215 ], [ %386, %385 ]
  %237 = trunc nuw nsw i64 %235 to i32
  %238 = shl i32 %237, 2
  %239 = add nsw i32 %202, %238
  %240 = load ptr, ptr %219, align 8, !tbaa !6
  %241 = getelementptr inbounds i16, ptr %240, i64 %235
  %242 = load ptr, ptr @get_line, align 8, !tbaa !6
  %243 = tail call ptr %242(ptr noundef %111, i32 noundef signext %211, i32 noundef signext %239, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %244 = getelementptr inbounds i8, ptr %241, i64 2
  %245 = load i16, ptr %241, align 2, !tbaa !35
  %246 = zext i16 %245 to i32
  %247 = load i16, ptr %243, align 2, !tbaa !35
  %248 = zext i16 %247 to i32
  %249 = sub nsw i32 %246, %248
  store i32 %249, ptr %16, align 4, !tbaa !19
  %250 = getelementptr inbounds i8, ptr %241, i64 4
  %251 = load i16, ptr %244, align 2, !tbaa !35
  %252 = zext i16 %251 to i32
  %253 = getelementptr inbounds i8, ptr %243, i64 8
  %254 = load i16, ptr %253, align 2, !tbaa !35
  %255 = zext i16 %254 to i32
  %256 = sub nsw i32 %252, %255
  store i32 %256, ptr %149, align 4, !tbaa !19
  %257 = getelementptr inbounds i8, ptr %241, i64 6
  %258 = load i16, ptr %250, align 2, !tbaa !35
  %259 = zext i16 %258 to i32
  %260 = getelementptr inbounds i8, ptr %243, i64 16
  %261 = load i16, ptr %260, align 2, !tbaa !35
  %262 = zext i16 %261 to i32
  %263 = sub nsw i32 %259, %262
  store i32 %263, ptr %150, align 4, !tbaa !19
  %264 = load i16, ptr %257, align 2, !tbaa !35
  %265 = zext i16 %264 to i32
  %266 = getelementptr inbounds i8, ptr %243, i64 24
  %267 = load i16, ptr %266, align 2, !tbaa !35
  %268 = zext i16 %267 to i32
  %269 = sub nsw i32 %265, %268
  store i32 %269, ptr %151, align 4, !tbaa !19
  %270 = load ptr, ptr %220, align 8, !tbaa !6
  %271 = getelementptr inbounds i16, ptr %270, i64 %235
  %272 = load ptr, ptr @get_line, align 8, !tbaa !6
  %273 = tail call ptr %272(ptr noundef %111, i32 noundef signext %212, i32 noundef signext %239, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %274 = getelementptr inbounds i8, ptr %271, i64 2
  %275 = load i16, ptr %271, align 2, !tbaa !35
  %276 = zext i16 %275 to i32
  %277 = load i16, ptr %273, align 2, !tbaa !35
  %278 = zext i16 %277 to i32
  %279 = sub nsw i32 %276, %278
  store i32 %279, ptr %152, align 4, !tbaa !19
  %280 = getelementptr inbounds i8, ptr %271, i64 4
  %281 = load i16, ptr %274, align 2, !tbaa !35
  %282 = zext i16 %281 to i32
  %283 = getelementptr inbounds i8, ptr %273, i64 8
  %284 = load i16, ptr %283, align 2, !tbaa !35
  %285 = zext i16 %284 to i32
  %286 = sub nsw i32 %282, %285
  store i32 %286, ptr %153, align 4, !tbaa !19
  %287 = getelementptr inbounds i8, ptr %271, i64 6
  %288 = load i16, ptr %280, align 2, !tbaa !35
  %289 = zext i16 %288 to i32
  %290 = getelementptr inbounds i8, ptr %273, i64 16
  %291 = load i16, ptr %290, align 2, !tbaa !35
  %292 = zext i16 %291 to i32
  %293 = sub nsw i32 %289, %292
  store i32 %293, ptr %154, align 4, !tbaa !19
  %294 = load i16, ptr %287, align 2, !tbaa !35
  %295 = zext i16 %294 to i32
  %296 = getelementptr inbounds i8, ptr %273, i64 24
  %297 = load i16, ptr %296, align 2, !tbaa !35
  %298 = zext i16 %297 to i32
  %299 = sub nsw i32 %295, %298
  store i32 %299, ptr %155, align 4, !tbaa !19
  %300 = load ptr, ptr %221, align 8, !tbaa !6
  %301 = getelementptr inbounds i16, ptr %300, i64 %235
  %302 = load ptr, ptr @get_line, align 8, !tbaa !6
  %303 = tail call ptr %302(ptr noundef %111, i32 noundef signext %213, i32 noundef signext %239, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %304 = getelementptr inbounds i8, ptr %301, i64 2
  %305 = load i16, ptr %301, align 2, !tbaa !35
  %306 = zext i16 %305 to i32
  %307 = load i16, ptr %303, align 2, !tbaa !35
  %308 = zext i16 %307 to i32
  %309 = sub nsw i32 %306, %308
  store i32 %309, ptr %156, align 4, !tbaa !19
  %310 = getelementptr inbounds i8, ptr %301, i64 4
  %311 = load i16, ptr %304, align 2, !tbaa !35
  %312 = zext i16 %311 to i32
  %313 = getelementptr inbounds i8, ptr %303, i64 8
  %314 = load i16, ptr %313, align 2, !tbaa !35
  %315 = zext i16 %314 to i32
  %316 = sub nsw i32 %312, %315
  store i32 %316, ptr %157, align 4, !tbaa !19
  %317 = getelementptr inbounds i8, ptr %301, i64 6
  %318 = load i16, ptr %310, align 2, !tbaa !35
  %319 = zext i16 %318 to i32
  %320 = getelementptr inbounds i8, ptr %303, i64 16
  %321 = load i16, ptr %320, align 2, !tbaa !35
  %322 = zext i16 %321 to i32
  %323 = sub nsw i32 %319, %322
  store i32 %323, ptr %158, align 4, !tbaa !19
  %324 = load i16, ptr %317, align 2, !tbaa !35
  %325 = zext i16 %324 to i32
  %326 = getelementptr inbounds i8, ptr %303, i64 24
  %327 = load i16, ptr %326, align 2, !tbaa !35
  %328 = zext i16 %327 to i32
  %329 = sub nsw i32 %325, %328
  store i32 %329, ptr %159, align 4, !tbaa !19
  %330 = load ptr, ptr %222, align 8, !tbaa !6
  %331 = getelementptr inbounds i16, ptr %330, i64 %235
  %332 = load ptr, ptr @get_line, align 8, !tbaa !6
  %333 = tail call ptr %332(ptr noundef %111, i32 noundef signext %214, i32 noundef signext %239, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %334 = getelementptr inbounds i8, ptr %331, i64 2
  %335 = load i16, ptr %331, align 2, !tbaa !35
  %336 = zext i16 %335 to i32
  %337 = load i16, ptr %333, align 2, !tbaa !35
  %338 = zext i16 %337 to i32
  %339 = sub nsw i32 %336, %338
  store i32 %339, ptr %160, align 4, !tbaa !19
  %340 = getelementptr inbounds i8, ptr %331, i64 4
  %341 = load i16, ptr %334, align 2, !tbaa !35
  %342 = zext i16 %341 to i32
  %343 = getelementptr inbounds i8, ptr %333, i64 8
  %344 = load i16, ptr %343, align 2, !tbaa !35
  %345 = zext i16 %344 to i32
  %346 = sub nsw i32 %342, %345
  store i32 %346, ptr %161, align 4, !tbaa !19
  %347 = getelementptr inbounds i8, ptr %331, i64 6
  %348 = load i16, ptr %340, align 2, !tbaa !35
  %349 = zext i16 %348 to i32
  %350 = getelementptr inbounds i8, ptr %333, i64 16
  %351 = load i16, ptr %350, align 2, !tbaa !35
  %352 = zext i16 %351 to i32
  %353 = sub nsw i32 %349, %352
  store i32 %353, ptr %162, align 4, !tbaa !19
  %354 = load i16, ptr %347, align 2, !tbaa !35
  %355 = zext i16 %354 to i32
  %356 = getelementptr inbounds i8, ptr %333, i64 24
  %357 = load i16, ptr %356, align 2, !tbaa !35
  %358 = zext i16 %357 to i32
  %359 = sub nsw i32 %355, %358
  store i32 %359, ptr %163, align 4, !tbaa !19
  br i1 %95, label %364, label %360

360:                                              ; preds = %234
  %361 = call signext i32 @SATD(ptr noundef nonnull %16, i32 noundef signext %86)
  %362 = add nsw i32 %361, %236
  %363 = icmp sgt i32 %362, %168
  br i1 %363, label %400, label %385

364:                                              ; preds = %234
  %365 = and i32 %237, 4
  %366 = icmp ugt i64 %235, 7
  %367 = select i1 %366, i32 64, i32 0
  %368 = or disjoint i32 %365, %208
  %369 = add nuw nsw i32 %368, %367
  %370 = or disjoint i32 %224, %369
  %371 = zext nneg i32 %370 to i64
  %372 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %372, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false)
  %373 = or disjoint i32 %227, %369
  %374 = or disjoint i32 %373, 8
  %375 = zext nneg i32 %374 to i64
  %376 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %376, ptr noundef nonnull align 4 dereferenceable(16) %152, i64 16, i1 false)
  %377 = or disjoint i32 %230, %369
  %378 = or disjoint i32 %377, 16
  %379 = zext nneg i32 %378 to i64
  %380 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %380, ptr noundef nonnull align 4 dereferenceable(16) %156, i64 16, i1 false)
  %381 = or disjoint i32 %233, %369
  %382 = or disjoint i32 %381, 24
  %383 = zext nneg i32 %382 to i64
  %384 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %384, ptr noundef nonnull align 4 dereferenceable(16) %160, i64 16, i1 false)
  br label %385

385:                                              ; preds = %364, %360
  %386 = phi i32 [ %362, %360 ], [ %236, %364 ]
  %387 = add nuw nsw i64 %235, 4
  %388 = trunc nuw i64 %387 to i32
  %389 = icmp sgt i32 %47, %388
  br i1 %389, label %234, label %390

390:                                              ; preds = %385, %204
  %391 = phi i32 [ %206, %204 ], [ %386, %385 ]
  %392 = add nuw nsw i64 %205, 4
  %393 = trunc nuw i64 %392 to i32
  %394 = icmp sgt i32 %49, %393
  br i1 %394, label %204, label %395

395:                                              ; preds = %390, %201
  %396 = phi i32 [ %199, %201 ], [ %391, %390 ]
  br i1 %95, label %397, label %400

397:                                              ; preds = %395
  %398 = call signext i32 @find_SATD(ptr noundef nonnull %15, i32 noundef signext %5)
  %399 = add nsw i32 %398, %396
  br label %400

400:                                              ; preds = %360, %397, %395
  %401 = phi i32 [ %399, %397 ], [ %396, %395 ], [ %362, %360 ]
  %402 = icmp slt i32 %401, %168
  %403 = trunc nuw nsw i64 %167 to i32
  %404 = select i1 %402, i32 %403, i32 %169
  %405 = tail call i32 @llvm.smin.i32(i32 %401, i32 %168)
  br label %406

406:                                              ; preds = %400, %166
  %407 = phi i32 [ %169, %166 ], [ %404, %400 ]
  %408 = phi i32 [ %168, %166 ], [ %405, %400 ]
  %409 = add nuw nsw i64 %167, 1
  %410 = icmp eq i64 %409, %165
  br i1 %410, label %411, label %166

411:                                              ; preds = %406
  %412 = load i16, ptr %8, align 2, !tbaa !35
  %413 = icmp eq i32 %407, 0
  br i1 %413, label %426, label %414

414:                                              ; preds = %411
  %415 = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !6
  %416 = sext i32 %407 to i64
  %417 = getelementptr inbounds i16, ptr %415, i64 %416
  %418 = load i16, ptr %417, align 2, !tbaa !35
  %419 = add i16 %412, %418
  store i16 %419, ptr %8, align 2, !tbaa !35
  %420 = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !6
  %421 = getelementptr inbounds i16, ptr %420, i64 %416
  %422 = load i16, ptr %421, align 2, !tbaa !35
  %423 = load i16, ptr %9, align 2, !tbaa !35
  %424 = add i16 %423, %422
  store i16 %424, ptr %9, align 2, !tbaa !35
  %425 = load i16, ptr %8, align 2, !tbaa !35
  br label %426

426:                                              ; preds = %142, %414, %411
  %427 = phi i32 [ %408, %414 ], [ %408, %411 ], [ %12, %142 ]
  %428 = phi i16 [ %425, %414 ], [ %412, %411 ], [ %126, %142 ]
  %429 = load ptr, ptr @input, align 8, !tbaa !6
  %430 = getelementptr inbounds i8, ptr %429, i64 24
  %431 = load i32, ptr %430, align 8, !tbaa !54
  %432 = icmp eq i32 %431, 2
  %433 = select i1 %432, i32 2147483647, i32 %427
  %434 = getelementptr inbounds i8, ptr %429, i64 3892
  %435 = load i32, ptr %434, align 4, !tbaa !55
  %436 = icmp ne i32 %435, 0
  %437 = and i1 %92, %436
  %438 = icmp ne i32 %431, 0
  %439 = select i1 %437, i1 %438, i1 false
  %440 = sext i16 %428 to i32
  %441 = add nsw i32 %51, %440
  %442 = icmp sgt i32 %441, 0
  %443 = icmp slt i32 %441, %122
  %444 = select i1 %442, i1 %443, i1 false
  br i1 %444, label %445, label %452

445:                                              ; preds = %426
  %446 = load i16, ptr %9, align 2, !tbaa !35
  %447 = sext i16 %446 to i32
  %448 = add nsw i32 %53, %447
  %449 = icmp sgt i32 %448, 0
  %450 = icmp slt i32 %448, %125
  %451 = select i1 %449, i1 %450, i1 false
  br i1 %451, label %453, label %452

452:                                              ; preds = %445, %426
  br label %453

453:                                              ; preds = %445, %452
  %454 = phi ptr [ @UMVLine4X, %452 ], [ @FastLine4X, %445 ]
  store ptr %454, ptr @get_line, align 8, !tbaa !6
  %455 = icmp slt i32 %88, %11
  br i1 %455, label %456, label %734

456:                                              ; preds = %453
  %457 = icmp sgt i32 %49, 0
  %458 = icmp sgt i32 %47, 0
  %459 = getelementptr inbounds i8, ptr %16, i64 4
  %460 = getelementptr inbounds i8, ptr %16, i64 8
  %461 = getelementptr inbounds i8, ptr %16, i64 12
  %462 = getelementptr inbounds i8, ptr %16, i64 16
  %463 = getelementptr inbounds i8, ptr %16, i64 20
  %464 = getelementptr inbounds i8, ptr %16, i64 24
  %465 = getelementptr inbounds i8, ptr %16, i64 28
  %466 = getelementptr inbounds i8, ptr %16, i64 32
  %467 = getelementptr inbounds i8, ptr %16, i64 36
  %468 = getelementptr inbounds i8, ptr %16, i64 40
  %469 = getelementptr inbounds i8, ptr %16, i64 44
  %470 = getelementptr inbounds i8, ptr %16, i64 48
  %471 = getelementptr inbounds i8, ptr %16, i64 52
  %472 = getelementptr inbounds i8, ptr %16, i64 56
  %473 = getelementptr inbounds i8, ptr %16, i64 60
  %474 = zext i1 %87 to i64
  %475 = zext i32 %11 to i64
  br label %476

476:                                              ; preds = %456, %715
  %477 = phi i64 [ %474, %456 ], [ %718, %715 ]
  %478 = phi i32 [ %433, %456 ], [ %717, %715 ]
  %479 = phi i32 [ 0, %456 ], [ %716, %715 ]
  %480 = load i16, ptr %8, align 2, !tbaa !35
  %481 = sext i16 %480 to i32
  %482 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %483 = getelementptr inbounds i16, ptr %482, i64 %477
  %484 = load i16, ptr %483, align 2, !tbaa !35
  %485 = sext i16 %484 to i32
  %486 = add nsw i32 %485, %481
  %487 = load i16, ptr %9, align 2, !tbaa !35
  %488 = sext i16 %487 to i32
  %489 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %490 = getelementptr inbounds i16, ptr %489, i64 %477
  %491 = load i16, ptr %490, align 2, !tbaa !35
  %492 = sext i16 %491 to i32
  %493 = add nsw i32 %492, %488
  %494 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %495 = sub nsw i32 %486, %6
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, ptr %494, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !19
  %499 = sub nsw i32 %493, %7
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, ptr %494, i64 %500
  %502 = load i32, ptr %501, align 4, !tbaa !19
  %503 = add nsw i32 %502, %498
  %504 = mul nsw i32 %503, %13
  %505 = ashr i32 %504, 16
  %506 = icmp slt i32 %505, %478
  br i1 %506, label %507, label %715

507:                                              ; preds = %476
  %508 = add nsw i32 %486, %51
  %509 = add nsw i32 %493, %53
  br i1 %457, label %510, label %704

510:                                              ; preds = %507, %699
  %511 = phi i64 [ %701, %699 ], [ 0, %507 ]
  %512 = phi i32 [ %700, %699 ], [ %505, %507 ]
  %513 = icmp ugt i64 %511, 7
  %514 = select i1 %513, i32 %18, i32 0
  %515 = trunc nuw nsw i64 %511 to i32
  %516 = shl i32 %515, 2
  %517 = add nsw i32 %509, %516
  %518 = add nsw i32 %517, 4
  %519 = add nsw i32 %517, 8
  %520 = add nsw i32 %517, 12
  br i1 %458, label %521, label %699

521:                                              ; preds = %510
  %522 = or disjoint i64 %511, 3
  %523 = or disjoint i64 %511, 2
  %524 = or disjoint i64 %511, 1
  %525 = getelementptr inbounds ptr, ptr %0, i64 %511
  %526 = getelementptr inbounds ptr, ptr %0, i64 %524
  %527 = getelementptr inbounds ptr, ptr %0, i64 %523
  %528 = getelementptr inbounds ptr, ptr %0, i64 %522
  %529 = shl i32 %515, 3
  %530 = and i32 %529, 32
  %531 = trunc i64 %511 to i32
  %532 = shl i32 %531, 3
  %533 = and i32 %532, 32
  %534 = trunc i64 %511 to i32
  %535 = shl i32 %534, 3
  %536 = and i32 %535, 32
  %537 = trunc i64 %511 to i32
  %538 = shl i32 %537, 3
  %539 = and i32 %538, 32
  br label %540

540:                                              ; preds = %521, %694
  %541 = phi i64 [ 0, %521 ], [ %696, %694 ]
  %542 = phi i32 [ %512, %521 ], [ %695, %694 ]
  %543 = trunc nuw nsw i64 %541 to i32
  %544 = shl i32 %543, 2
  %545 = add nsw i32 %508, %544
  %546 = load ptr, ptr %525, align 8, !tbaa !6
  %547 = getelementptr inbounds i16, ptr %546, i64 %541
  %548 = load ptr, ptr @get_line, align 8, !tbaa !6
  %549 = tail call ptr %548(ptr noundef %111, i32 noundef signext %517, i32 noundef signext %545, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %550 = getelementptr inbounds i8, ptr %547, i64 2
  %551 = load i16, ptr %547, align 2, !tbaa !35
  %552 = zext i16 %551 to i32
  %553 = load i16, ptr %549, align 2, !tbaa !35
  %554 = zext i16 %553 to i32
  %555 = sub nsw i32 %552, %554
  store i32 %555, ptr %16, align 4, !tbaa !19
  %556 = getelementptr inbounds i8, ptr %547, i64 4
  %557 = load i16, ptr %550, align 2, !tbaa !35
  %558 = zext i16 %557 to i32
  %559 = getelementptr inbounds i8, ptr %549, i64 8
  %560 = load i16, ptr %559, align 2, !tbaa !35
  %561 = zext i16 %560 to i32
  %562 = sub nsw i32 %558, %561
  store i32 %562, ptr %459, align 4, !tbaa !19
  %563 = getelementptr inbounds i8, ptr %547, i64 6
  %564 = load i16, ptr %556, align 2, !tbaa !35
  %565 = zext i16 %564 to i32
  %566 = getelementptr inbounds i8, ptr %549, i64 16
  %567 = load i16, ptr %566, align 2, !tbaa !35
  %568 = zext i16 %567 to i32
  %569 = sub nsw i32 %565, %568
  store i32 %569, ptr %460, align 4, !tbaa !19
  %570 = load i16, ptr %563, align 2, !tbaa !35
  %571 = zext i16 %570 to i32
  %572 = getelementptr inbounds i8, ptr %549, i64 24
  %573 = load i16, ptr %572, align 2, !tbaa !35
  %574 = zext i16 %573 to i32
  %575 = sub nsw i32 %571, %574
  store i32 %575, ptr %461, align 4, !tbaa !19
  %576 = load ptr, ptr %526, align 8, !tbaa !6
  %577 = getelementptr inbounds i16, ptr %576, i64 %541
  %578 = load ptr, ptr @get_line, align 8, !tbaa !6
  %579 = tail call ptr %578(ptr noundef %111, i32 noundef signext %518, i32 noundef signext %545, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %580 = getelementptr inbounds i8, ptr %577, i64 2
  %581 = load i16, ptr %577, align 2, !tbaa !35
  %582 = zext i16 %581 to i32
  %583 = load i16, ptr %579, align 2, !tbaa !35
  %584 = zext i16 %583 to i32
  %585 = sub nsw i32 %582, %584
  store i32 %585, ptr %462, align 4, !tbaa !19
  %586 = getelementptr inbounds i8, ptr %577, i64 4
  %587 = load i16, ptr %580, align 2, !tbaa !35
  %588 = zext i16 %587 to i32
  %589 = getelementptr inbounds i8, ptr %579, i64 8
  %590 = load i16, ptr %589, align 2, !tbaa !35
  %591 = zext i16 %590 to i32
  %592 = sub nsw i32 %588, %591
  store i32 %592, ptr %463, align 4, !tbaa !19
  %593 = getelementptr inbounds i8, ptr %577, i64 6
  %594 = load i16, ptr %586, align 2, !tbaa !35
  %595 = zext i16 %594 to i32
  %596 = getelementptr inbounds i8, ptr %579, i64 16
  %597 = load i16, ptr %596, align 2, !tbaa !35
  %598 = zext i16 %597 to i32
  %599 = sub nsw i32 %595, %598
  store i32 %599, ptr %464, align 4, !tbaa !19
  %600 = load i16, ptr %593, align 2, !tbaa !35
  %601 = zext i16 %600 to i32
  %602 = getelementptr inbounds i8, ptr %579, i64 24
  %603 = load i16, ptr %602, align 2, !tbaa !35
  %604 = zext i16 %603 to i32
  %605 = sub nsw i32 %601, %604
  store i32 %605, ptr %465, align 4, !tbaa !19
  %606 = load ptr, ptr %527, align 8, !tbaa !6
  %607 = getelementptr inbounds i16, ptr %606, i64 %541
  %608 = load ptr, ptr @get_line, align 8, !tbaa !6
  %609 = tail call ptr %608(ptr noundef %111, i32 noundef signext %519, i32 noundef signext %545, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %610 = getelementptr inbounds i8, ptr %607, i64 2
  %611 = load i16, ptr %607, align 2, !tbaa !35
  %612 = zext i16 %611 to i32
  %613 = load i16, ptr %609, align 2, !tbaa !35
  %614 = zext i16 %613 to i32
  %615 = sub nsw i32 %612, %614
  store i32 %615, ptr %466, align 4, !tbaa !19
  %616 = getelementptr inbounds i8, ptr %607, i64 4
  %617 = load i16, ptr %610, align 2, !tbaa !35
  %618 = zext i16 %617 to i32
  %619 = getelementptr inbounds i8, ptr %609, i64 8
  %620 = load i16, ptr %619, align 2, !tbaa !35
  %621 = zext i16 %620 to i32
  %622 = sub nsw i32 %618, %621
  store i32 %622, ptr %467, align 4, !tbaa !19
  %623 = getelementptr inbounds i8, ptr %607, i64 6
  %624 = load i16, ptr %616, align 2, !tbaa !35
  %625 = zext i16 %624 to i32
  %626 = getelementptr inbounds i8, ptr %609, i64 16
  %627 = load i16, ptr %626, align 2, !tbaa !35
  %628 = zext i16 %627 to i32
  %629 = sub nsw i32 %625, %628
  store i32 %629, ptr %468, align 4, !tbaa !19
  %630 = load i16, ptr %623, align 2, !tbaa !35
  %631 = zext i16 %630 to i32
  %632 = getelementptr inbounds i8, ptr %609, i64 24
  %633 = load i16, ptr %632, align 2, !tbaa !35
  %634 = zext i16 %633 to i32
  %635 = sub nsw i32 %631, %634
  store i32 %635, ptr %469, align 4, !tbaa !19
  %636 = load ptr, ptr %528, align 8, !tbaa !6
  %637 = getelementptr inbounds i16, ptr %636, i64 %541
  %638 = load ptr, ptr @get_line, align 8, !tbaa !6
  %639 = tail call ptr %638(ptr noundef %111, i32 noundef signext %520, i32 noundef signext %545, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %640 = getelementptr inbounds i8, ptr %637, i64 2
  %641 = load i16, ptr %637, align 2, !tbaa !35
  %642 = zext i16 %641 to i32
  %643 = load i16, ptr %639, align 2, !tbaa !35
  %644 = zext i16 %643 to i32
  %645 = sub nsw i32 %642, %644
  store i32 %645, ptr %470, align 4, !tbaa !19
  %646 = getelementptr inbounds i8, ptr %637, i64 4
  %647 = load i16, ptr %640, align 2, !tbaa !35
  %648 = zext i16 %647 to i32
  %649 = getelementptr inbounds i8, ptr %639, i64 8
  %650 = load i16, ptr %649, align 2, !tbaa !35
  %651 = zext i16 %650 to i32
  %652 = sub nsw i32 %648, %651
  store i32 %652, ptr %471, align 4, !tbaa !19
  %653 = getelementptr inbounds i8, ptr %637, i64 6
  %654 = load i16, ptr %646, align 2, !tbaa !35
  %655 = zext i16 %654 to i32
  %656 = getelementptr inbounds i8, ptr %639, i64 16
  %657 = load i16, ptr %656, align 2, !tbaa !35
  %658 = zext i16 %657 to i32
  %659 = sub nsw i32 %655, %658
  store i32 %659, ptr %472, align 4, !tbaa !19
  %660 = load i16, ptr %653, align 2, !tbaa !35
  %661 = zext i16 %660 to i32
  %662 = getelementptr inbounds i8, ptr %639, i64 24
  %663 = load i16, ptr %662, align 2, !tbaa !35
  %664 = zext i16 %663 to i32
  %665 = sub nsw i32 %661, %664
  store i32 %665, ptr %473, align 4, !tbaa !19
  br i1 %439, label %673, label %666

666:                                              ; preds = %540
  %667 = load ptr, ptr @input, align 8, !tbaa !6
  %668 = getelementptr inbounds i8, ptr %667, i64 24
  %669 = load i32, ptr %668, align 8, !tbaa !54
  %670 = call signext i32 @SATD(ptr noundef nonnull %16, i32 noundef signext %669)
  %671 = add nsw i32 %670, %542
  %672 = icmp sgt i32 %671, %478
  br i1 %672, label %709, label %694

673:                                              ; preds = %540
  %674 = and i32 %543, 4
  %675 = icmp ugt i64 %541, 7
  %676 = select i1 %675, i32 64, i32 0
  %677 = or disjoint i32 %674, %514
  %678 = add nuw nsw i32 %677, %676
  %679 = or disjoint i32 %530, %678
  %680 = zext nneg i32 %679 to i64
  %681 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %681, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false)
  %682 = or disjoint i32 %533, %678
  %683 = or disjoint i32 %682, 8
  %684 = zext nneg i32 %683 to i64
  %685 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %685, ptr noundef nonnull align 4 dereferenceable(16) %462, i64 16, i1 false)
  %686 = or disjoint i32 %536, %678
  %687 = or disjoint i32 %686, 16
  %688 = zext nneg i32 %687 to i64
  %689 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %689, ptr noundef nonnull align 4 dereferenceable(16) %466, i64 16, i1 false)
  %690 = or disjoint i32 %539, %678
  %691 = or disjoint i32 %690, 24
  %692 = zext nneg i32 %691 to i64
  %693 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %693, ptr noundef nonnull align 4 dereferenceable(16) %470, i64 16, i1 false)
  br label %694

694:                                              ; preds = %673, %666
  %695 = phi i32 [ %671, %666 ], [ %542, %673 ]
  %696 = add nuw nsw i64 %541, 4
  %697 = trunc nuw i64 %696 to i32
  %698 = icmp sgt i32 %47, %697
  br i1 %698, label %540, label %699

699:                                              ; preds = %694, %510
  %700 = phi i32 [ %512, %510 ], [ %695, %694 ]
  %701 = add nuw nsw i64 %511, 4
  %702 = trunc nuw i64 %701 to i32
  %703 = icmp sgt i32 %49, %702
  br i1 %703, label %510, label %704

704:                                              ; preds = %699, %507
  %705 = phi i32 [ %505, %507 ], [ %700, %699 ]
  br i1 %439, label %706, label %709

706:                                              ; preds = %704
  %707 = call signext i32 @find_SATD(ptr noundef nonnull %15, i32 noundef signext %5)
  %708 = add nsw i32 %707, %705
  br label %709

709:                                              ; preds = %666, %706, %704
  %710 = phi i32 [ %708, %706 ], [ %705, %704 ], [ %671, %666 ]
  %711 = icmp slt i32 %710, %478
  %712 = trunc nuw nsw i64 %477 to i32
  %713 = select i1 %711, i32 %712, i32 %479
  %714 = tail call i32 @llvm.smin.i32(i32 %710, i32 %478)
  br label %715

715:                                              ; preds = %709, %476
  %716 = phi i32 [ %479, %476 ], [ %713, %709 ]
  %717 = phi i32 [ %478, %476 ], [ %714, %709 ]
  %718 = add nuw nsw i64 %477, 1
  %719 = icmp eq i64 %718, %475
  br i1 %719, label %720, label %476

720:                                              ; preds = %715
  %721 = icmp eq i32 %716, 0
  br i1 %721, label %734, label %722

722:                                              ; preds = %720
  %723 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %724 = sext i32 %716 to i64
  %725 = getelementptr inbounds i16, ptr %723, i64 %724
  %726 = load i16, ptr %725, align 2, !tbaa !35
  %727 = load i16, ptr %8, align 2, !tbaa !35
  %728 = add i16 %727, %726
  store i16 %728, ptr %8, align 2, !tbaa !35
  %729 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %730 = getelementptr inbounds i16, ptr %729, i64 %724
  %731 = load i16, ptr %730, align 2, !tbaa !35
  %732 = load i16, ptr %9, align 2, !tbaa !35
  %733 = add i16 %732, %731
  store i16 %733, ptr %9, align 2, !tbaa !35
  br label %734

734:                                              ; preds = %453, %722, %720
  %735 = phi i32 [ %717, %722 ], [ %717, %720 ], [ %433, %453 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %15) #16
  ret i32 %735
}

declare dso_local ptr @FastLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare dso_local ptr @UMVLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

; Function Attrs: nounwind
define dso_local signext i32 @simplified_FastFullSubPelBlockMotionSearch(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, ptr nocapture noundef %8, ptr nocapture noundef %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12, i32 noundef signext %13) local_unnamed_addr #0 {
  %15 = alloca [256 x i32], align 4
  %16 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #16
  %17 = icmp eq i32 %5, 3
  %18 = select i1 %17, i32 64, i32 128
  %19 = load ptr, ptr @input, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 3136
  %21 = load i32, ptr %20, align 8, !tbaa !36
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %22, label %24, label %42

24:                                               ; preds = %14
  %25 = getelementptr inbounds i8, ptr %23, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !27
  %27 = icmp ne i32 %26, 1
  %28 = icmp eq i16 %1, 0
  %29 = and i1 %28, %27
  %30 = icmp eq i32 %5, 1
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load i16, ptr %8, align 2, !tbaa !35
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i16, ptr %9, align 2, !tbaa !35
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %19, i64 24
  %40 = load i32, ptr %39, align 8, !tbaa !54
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %38, %35, %32, %24, %14
  %43 = phi i1 [ false, %35 ], [ false, %32 ], [ false, %24 ], [ false, %14 ], [ %41, %38 ]
  %44 = getelementptr inbounds i8, ptr %19, i64 84
  %45 = sext i32 %5 to i64
  %46 = getelementptr inbounds [8 x [2 x i32]], ptr %44, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = getelementptr inbounds i8, ptr %46, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !19
  %50 = shl i32 %3, 2
  %51 = add i32 %50, 16
  %52 = shl i32 %4, 2
  %53 = add i32 %52, 16
  %54 = getelementptr inbounds i8, ptr %19, i64 24
  %55 = load i32, ptr %54, align 8, !tbaa !54
  %56 = icmp ne i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = icmp eq i32 %55, 0
  %59 = tail call i32 @llvm.smax.i32(i32 %10, i32 1)
  %60 = select i1 %58, i32 %10, i32 %59
  %61 = getelementptr inbounds i8, ptr %23, i64 31576
  %62 = load ptr, ptr %61, align 8, !tbaa !20
  %63 = getelementptr inbounds i8, ptr %23, i64 12
  %64 = load i32, ptr %63, align 4, !tbaa !21
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.macroblock, ptr %62, i64 %65, i32 20
  %67 = load i32, ptr %66, align 4, !tbaa !22
  %68 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %68, i64 192
  %70 = load i32, ptr %69, align 8, !tbaa !25
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %42
  %73 = getelementptr inbounds i8, ptr %23, i64 24
  %74 = load i32, ptr %73, align 8, !tbaa !27
  switch i32 %74, label %75 [
    i32 0, label %83
    i32 3, label %83
  ]

75:                                               ; preds = %72, %42
  %76 = getelementptr inbounds i8, ptr %68, i64 196
  %77 = load i32, ptr %76, align 4, !tbaa !28
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds i8, ptr %23, i64 24
  %81 = load i32, ptr %80, align 8, !tbaa !27
  %82 = icmp eq i32 %81, 1
  br label %83

83:                                               ; preds = %72, %72, %75, %79
  %84 = phi i1 [ true, %72 ], [ false, %75 ], [ %82, %79 ], [ true, %72 ]
  %85 = icmp eq i32 %55, 2
  %86 = select i1 %85, i32 0, i32 %55
  %87 = icmp ne i32 %55, 2
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds i8, ptr %19, i64 3892
  %90 = load i32, ptr %89, align 4, !tbaa !55
  %91 = icmp ne i32 %90, 0
  %92 = icmp slt i32 %5, 5
  %93 = and i1 %92, %91
  %94 = icmp ne i32 %86, 0
  %95 = select i1 %93, i1 %94, i1 false
  %96 = add nsw i32 %67, %2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = sext i16 %1 to i64
  %101 = getelementptr inbounds ptr, ptr %99, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  br i1 %84, label %103, label %107

103:                                              ; preds = %83
  %104 = getelementptr inbounds i8, ptr %19, i64 1912
  %105 = load i32, ptr %104, align 8, !tbaa !29
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %83
  br label %108

108:                                              ; preds = %103, %107
  %109 = phi i64 [ 6448, %107 ], [ 6456, %103 ]
  %110 = getelementptr inbounds i8, ptr %102, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = getelementptr inbounds i8, ptr %102, i64 6392
  %113 = load i32, ptr %112, align 8, !tbaa !30
  %114 = shl i32 %113, 2
  %115 = add i32 %114, 28
  %116 = getelementptr inbounds i8, ptr %102, i64 6396
  %117 = load i32, ptr %116, align 4, !tbaa !32
  %118 = shl i32 %117, 2
  %119 = add i32 %118, 28
  %120 = sub nsw i32 %113, %47
  %121 = shl i32 %120, 2
  %122 = add i32 %121, 32
  %123 = sub nsw i32 %117, %49
  %124 = shl i32 %123, 2
  %125 = add i32 %124, 32
  %126 = load i16, ptr %8, align 2, !tbaa !35
  %127 = sext i16 %126 to i32
  %128 = add nsw i32 %51, %127
  %129 = icmp sgt i32 %128, 1
  %130 = add i32 %121, 31
  %131 = icmp slt i32 %128, %130
  %132 = select i1 %129, i1 %131, i1 false
  br i1 %132, label %133, label %141

133:                                              ; preds = %108
  %134 = load i16, ptr %9, align 2, !tbaa !35
  %135 = sext i16 %134 to i32
  %136 = add nsw i32 %53, %135
  %137 = icmp sgt i32 %136, 1
  %138 = add i32 %124, 31
  %139 = icmp slt i32 %136, %138
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %142, label %141

141:                                              ; preds = %133, %108
  br label %142

142:                                              ; preds = %133, %141
  %143 = phi ptr [ @UMVLine4X, %141 ], [ @FastLine4X, %133 ]
  store ptr %143, ptr @get_line, align 8, !tbaa !6
  %144 = icmp sgt i32 %60, %57
  br i1 %144, label %145, label %435

145:                                              ; preds = %142
  %146 = ashr i32 %13, 12
  %147 = icmp sgt i32 %49, 0
  %148 = icmp sgt i32 %47, 0
  %149 = getelementptr inbounds i8, ptr %16, i64 4
  %150 = getelementptr inbounds i8, ptr %16, i64 8
  %151 = getelementptr inbounds i8, ptr %16, i64 12
  %152 = getelementptr inbounds i8, ptr %16, i64 16
  %153 = getelementptr inbounds i8, ptr %16, i64 20
  %154 = getelementptr inbounds i8, ptr %16, i64 24
  %155 = getelementptr inbounds i8, ptr %16, i64 28
  %156 = getelementptr inbounds i8, ptr %16, i64 32
  %157 = getelementptr inbounds i8, ptr %16, i64 36
  %158 = getelementptr inbounds i8, ptr %16, i64 40
  %159 = getelementptr inbounds i8, ptr %16, i64 44
  %160 = getelementptr inbounds i8, ptr %16, i64 48
  %161 = getelementptr inbounds i8, ptr %16, i64 52
  %162 = getelementptr inbounds i8, ptr %16, i64 56
  %163 = getelementptr inbounds i8, ptr %16, i64 60
  %164 = getelementptr inbounds [8 x i16], ptr @block_type_shift_factor, i64 0, i64 %45
  %165 = zext i1 %56 to i64
  %166 = zext nneg i32 %60 to i64
  br label %167

167:                                              ; preds = %145, %413
  %168 = phi i64 [ %165, %145 ], [ %416, %413 ]
  %169 = phi i32 [ %12, %145 ], [ %415, %413 ]
  %170 = phi i32 [ 0, %145 ], [ %414, %413 ]
  %171 = load i16, ptr %8, align 2, !tbaa !35
  %172 = sext i16 %171 to i32
  %173 = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !6
  %174 = getelementptr inbounds i16, ptr %173, i64 %168
  %175 = load i16, ptr %174, align 2, !tbaa !35
  %176 = sext i16 %175 to i32
  %177 = add nsw i32 %176, %172
  %178 = load i16, ptr %9, align 2, !tbaa !35
  %179 = sext i16 %178 to i32
  %180 = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !6
  %181 = getelementptr inbounds i16, ptr %180, i64 %168
  %182 = load i16, ptr %181, align 2, !tbaa !35
  %183 = sext i16 %182 to i32
  %184 = add nsw i32 %183, %179
  %185 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %186 = sub nsw i32 %177, %6
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, ptr %185, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !19
  %190 = sub nsw i32 %184, %7
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, ptr %185, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !19
  %194 = add nsw i32 %193, %189
  %195 = mul nsw i32 %194, %13
  %196 = ashr i32 %195, 16
  %197 = icmp eq i64 %168, 0
  %198 = and i1 %43, %197
  %199 = select i1 %198, i32 %146, i32 0
  %200 = sub nsw i32 %196, %199
  %201 = icmp slt i32 %200, %169
  br i1 %201, label %202, label %413

202:                                              ; preds = %167
  %203 = add nsw i32 %177, %51
  %204 = add nsw i32 %184, %53
  br i1 %147, label %205, label %396

205:                                              ; preds = %202, %391
  %206 = phi i64 [ %393, %391 ], [ 0, %202 ]
  %207 = phi i32 [ %392, %391 ], [ %200, %202 ]
  %208 = icmp ugt i64 %206, 7
  %209 = select i1 %208, i32 %18, i32 0
  %210 = trunc nuw nsw i64 %206 to i32
  %211 = shl i32 %210, 2
  %212 = add nsw i32 %204, %211
  %213 = add nsw i32 %212, 4
  %214 = add nsw i32 %212, 8
  %215 = add nsw i32 %212, 12
  br i1 %148, label %216, label %391

216:                                              ; preds = %205
  %217 = or disjoint i64 %206, 3
  %218 = or disjoint i64 %206, 2
  %219 = or disjoint i64 %206, 1
  %220 = getelementptr inbounds ptr, ptr %0, i64 %206
  %221 = getelementptr inbounds ptr, ptr %0, i64 %219
  %222 = getelementptr inbounds ptr, ptr %0, i64 %218
  %223 = getelementptr inbounds ptr, ptr %0, i64 %217
  %224 = shl i32 %210, 3
  %225 = and i32 %224, 32
  %226 = trunc i64 %206 to i32
  %227 = shl i32 %226, 3
  %228 = and i32 %227, 32
  %229 = trunc i64 %206 to i32
  %230 = shl i32 %229, 3
  %231 = and i32 %230, 32
  %232 = trunc i64 %206 to i32
  %233 = shl i32 %232, 3
  %234 = and i32 %233, 32
  br label %235

235:                                              ; preds = %216, %386
  %236 = phi i64 [ 0, %216 ], [ %388, %386 ]
  %237 = phi i32 [ %207, %216 ], [ %387, %386 ]
  %238 = trunc nuw nsw i64 %236 to i32
  %239 = shl i32 %238, 2
  %240 = add nsw i32 %203, %239
  %241 = load ptr, ptr %220, align 8, !tbaa !6
  %242 = getelementptr inbounds i16, ptr %241, i64 %236
  %243 = load ptr, ptr @get_line, align 8, !tbaa !6
  %244 = tail call ptr %243(ptr noundef %111, i32 noundef signext %212, i32 noundef signext %240, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %245 = getelementptr inbounds i8, ptr %242, i64 2
  %246 = load i16, ptr %242, align 2, !tbaa !35
  %247 = zext i16 %246 to i32
  %248 = load i16, ptr %244, align 2, !tbaa !35
  %249 = zext i16 %248 to i32
  %250 = sub nsw i32 %247, %249
  store i32 %250, ptr %16, align 4, !tbaa !19
  %251 = getelementptr inbounds i8, ptr %242, i64 4
  %252 = load i16, ptr %245, align 2, !tbaa !35
  %253 = zext i16 %252 to i32
  %254 = getelementptr inbounds i8, ptr %244, i64 8
  %255 = load i16, ptr %254, align 2, !tbaa !35
  %256 = zext i16 %255 to i32
  %257 = sub nsw i32 %253, %256
  store i32 %257, ptr %149, align 4, !tbaa !19
  %258 = getelementptr inbounds i8, ptr %242, i64 6
  %259 = load i16, ptr %251, align 2, !tbaa !35
  %260 = zext i16 %259 to i32
  %261 = getelementptr inbounds i8, ptr %244, i64 16
  %262 = load i16, ptr %261, align 2, !tbaa !35
  %263 = zext i16 %262 to i32
  %264 = sub nsw i32 %260, %263
  store i32 %264, ptr %150, align 4, !tbaa !19
  %265 = load i16, ptr %258, align 2, !tbaa !35
  %266 = zext i16 %265 to i32
  %267 = getelementptr inbounds i8, ptr %244, i64 24
  %268 = load i16, ptr %267, align 2, !tbaa !35
  %269 = zext i16 %268 to i32
  %270 = sub nsw i32 %266, %269
  store i32 %270, ptr %151, align 4, !tbaa !19
  %271 = load ptr, ptr %221, align 8, !tbaa !6
  %272 = getelementptr inbounds i16, ptr %271, i64 %236
  %273 = load ptr, ptr @get_line, align 8, !tbaa !6
  %274 = tail call ptr %273(ptr noundef %111, i32 noundef signext %213, i32 noundef signext %240, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %275 = getelementptr inbounds i8, ptr %272, i64 2
  %276 = load i16, ptr %272, align 2, !tbaa !35
  %277 = zext i16 %276 to i32
  %278 = load i16, ptr %274, align 2, !tbaa !35
  %279 = zext i16 %278 to i32
  %280 = sub nsw i32 %277, %279
  store i32 %280, ptr %152, align 4, !tbaa !19
  %281 = getelementptr inbounds i8, ptr %272, i64 4
  %282 = load i16, ptr %275, align 2, !tbaa !35
  %283 = zext i16 %282 to i32
  %284 = getelementptr inbounds i8, ptr %274, i64 8
  %285 = load i16, ptr %284, align 2, !tbaa !35
  %286 = zext i16 %285 to i32
  %287 = sub nsw i32 %283, %286
  store i32 %287, ptr %153, align 4, !tbaa !19
  %288 = getelementptr inbounds i8, ptr %272, i64 6
  %289 = load i16, ptr %281, align 2, !tbaa !35
  %290 = zext i16 %289 to i32
  %291 = getelementptr inbounds i8, ptr %274, i64 16
  %292 = load i16, ptr %291, align 2, !tbaa !35
  %293 = zext i16 %292 to i32
  %294 = sub nsw i32 %290, %293
  store i32 %294, ptr %154, align 4, !tbaa !19
  %295 = load i16, ptr %288, align 2, !tbaa !35
  %296 = zext i16 %295 to i32
  %297 = getelementptr inbounds i8, ptr %274, i64 24
  %298 = load i16, ptr %297, align 2, !tbaa !35
  %299 = zext i16 %298 to i32
  %300 = sub nsw i32 %296, %299
  store i32 %300, ptr %155, align 4, !tbaa !19
  %301 = load ptr, ptr %222, align 8, !tbaa !6
  %302 = getelementptr inbounds i16, ptr %301, i64 %236
  %303 = load ptr, ptr @get_line, align 8, !tbaa !6
  %304 = tail call ptr %303(ptr noundef %111, i32 noundef signext %214, i32 noundef signext %240, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %305 = getelementptr inbounds i8, ptr %302, i64 2
  %306 = load i16, ptr %302, align 2, !tbaa !35
  %307 = zext i16 %306 to i32
  %308 = load i16, ptr %304, align 2, !tbaa !35
  %309 = zext i16 %308 to i32
  %310 = sub nsw i32 %307, %309
  store i32 %310, ptr %156, align 4, !tbaa !19
  %311 = getelementptr inbounds i8, ptr %302, i64 4
  %312 = load i16, ptr %305, align 2, !tbaa !35
  %313 = zext i16 %312 to i32
  %314 = getelementptr inbounds i8, ptr %304, i64 8
  %315 = load i16, ptr %314, align 2, !tbaa !35
  %316 = zext i16 %315 to i32
  %317 = sub nsw i32 %313, %316
  store i32 %317, ptr %157, align 4, !tbaa !19
  %318 = getelementptr inbounds i8, ptr %302, i64 6
  %319 = load i16, ptr %311, align 2, !tbaa !35
  %320 = zext i16 %319 to i32
  %321 = getelementptr inbounds i8, ptr %304, i64 16
  %322 = load i16, ptr %321, align 2, !tbaa !35
  %323 = zext i16 %322 to i32
  %324 = sub nsw i32 %320, %323
  store i32 %324, ptr %158, align 4, !tbaa !19
  %325 = load i16, ptr %318, align 2, !tbaa !35
  %326 = zext i16 %325 to i32
  %327 = getelementptr inbounds i8, ptr %304, i64 24
  %328 = load i16, ptr %327, align 2, !tbaa !35
  %329 = zext i16 %328 to i32
  %330 = sub nsw i32 %326, %329
  store i32 %330, ptr %159, align 4, !tbaa !19
  %331 = load ptr, ptr %223, align 8, !tbaa !6
  %332 = getelementptr inbounds i16, ptr %331, i64 %236
  %333 = load ptr, ptr @get_line, align 8, !tbaa !6
  %334 = tail call ptr %333(ptr noundef %111, i32 noundef signext %215, i32 noundef signext %240, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %335 = getelementptr inbounds i8, ptr %332, i64 2
  %336 = load i16, ptr %332, align 2, !tbaa !35
  %337 = zext i16 %336 to i32
  %338 = load i16, ptr %334, align 2, !tbaa !35
  %339 = zext i16 %338 to i32
  %340 = sub nsw i32 %337, %339
  store i32 %340, ptr %160, align 4, !tbaa !19
  %341 = getelementptr inbounds i8, ptr %332, i64 4
  %342 = load i16, ptr %335, align 2, !tbaa !35
  %343 = zext i16 %342 to i32
  %344 = getelementptr inbounds i8, ptr %334, i64 8
  %345 = load i16, ptr %344, align 2, !tbaa !35
  %346 = zext i16 %345 to i32
  %347 = sub nsw i32 %343, %346
  store i32 %347, ptr %161, align 4, !tbaa !19
  %348 = getelementptr inbounds i8, ptr %332, i64 6
  %349 = load i16, ptr %341, align 2, !tbaa !35
  %350 = zext i16 %349 to i32
  %351 = getelementptr inbounds i8, ptr %334, i64 16
  %352 = load i16, ptr %351, align 2, !tbaa !35
  %353 = zext i16 %352 to i32
  %354 = sub nsw i32 %350, %353
  store i32 %354, ptr %162, align 4, !tbaa !19
  %355 = load i16, ptr %348, align 2, !tbaa !35
  %356 = zext i16 %355 to i32
  %357 = getelementptr inbounds i8, ptr %334, i64 24
  %358 = load i16, ptr %357, align 2, !tbaa !35
  %359 = zext i16 %358 to i32
  %360 = sub nsw i32 %356, %359
  store i32 %360, ptr %163, align 4, !tbaa !19
  br i1 %95, label %365, label %361

361:                                              ; preds = %235
  %362 = call signext i32 @SATD(ptr noundef nonnull %16, i32 noundef signext %86)
  %363 = add nsw i32 %362, %237
  %364 = icmp slt i32 %363, %169
  br i1 %364, label %386, label %401

365:                                              ; preds = %235
  %366 = and i32 %238, 4
  %367 = icmp ugt i64 %236, 7
  %368 = select i1 %367, i32 64, i32 0
  %369 = or disjoint i32 %366, %209
  %370 = add nuw nsw i32 %369, %368
  %371 = or disjoint i32 %225, %370
  %372 = zext nneg i32 %371 to i64
  %373 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %373, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false)
  %374 = or disjoint i32 %228, %370
  %375 = or disjoint i32 %374, 8
  %376 = zext nneg i32 %375 to i64
  %377 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %377, ptr noundef nonnull align 4 dereferenceable(16) %152, i64 16, i1 false)
  %378 = or disjoint i32 %231, %370
  %379 = or disjoint i32 %378, 16
  %380 = zext nneg i32 %379 to i64
  %381 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %381, ptr noundef nonnull align 4 dereferenceable(16) %156, i64 16, i1 false)
  %382 = or disjoint i32 %234, %370
  %383 = or disjoint i32 %382, 24
  %384 = zext nneg i32 %383 to i64
  %385 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %385, ptr noundef nonnull align 4 dereferenceable(16) %160, i64 16, i1 false)
  br label %386

386:                                              ; preds = %365, %361
  %387 = phi i32 [ %363, %361 ], [ %237, %365 ]
  %388 = add nuw nsw i64 %236, 4
  %389 = trunc nuw i64 %388 to i32
  %390 = icmp sgt i32 %47, %389
  br i1 %390, label %235, label %391

391:                                              ; preds = %386, %205
  %392 = phi i32 [ %207, %205 ], [ %387, %386 ]
  %393 = add nuw nsw i64 %206, 4
  %394 = trunc nuw i64 %393 to i32
  %395 = icmp sgt i32 %49, %394
  br i1 %395, label %205, label %396

396:                                              ; preds = %391, %202
  %397 = phi i32 [ %200, %202 ], [ %392, %391 ]
  br i1 %95, label %398, label %401

398:                                              ; preds = %396
  %399 = call signext i32 @find_SATD(ptr noundef nonnull %15, i32 noundef signext %5)
  %400 = add nsw i32 %399, %397
  br label %401

401:                                              ; preds = %361, %398, %396
  %402 = phi i32 [ %400, %398 ], [ %397, %396 ], [ %363, %361 ]
  %403 = icmp slt i32 %402, %169
  %404 = trunc nuw nsw i64 %168 to i32
  %405 = select i1 %403, i32 %404, i32 %170
  %406 = tail call i32 @llvm.smin.i32(i32 %402, i32 %169)
  %407 = load i16, ptr @SubPelThreshold3, align 2, !tbaa !35
  %408 = zext i16 %407 to i32
  %409 = load i16, ptr %164, align 2, !tbaa !35
  %410 = zext nneg i16 %409 to i32
  %411 = lshr i32 %408, %410
  %412 = icmp slt i32 %406, %411
  br i1 %412, label %418, label %413

413:                                              ; preds = %401, %167
  %414 = phi i32 [ %170, %167 ], [ %405, %401 ]
  %415 = phi i32 [ %169, %167 ], [ %406, %401 ]
  %416 = add nuw nsw i64 %168, 1
  %417 = icmp eq i64 %416, %166
  br i1 %417, label %418, label %167

418:                                              ; preds = %413, %401
  %419 = phi i32 [ %414, %413 ], [ %405, %401 ]
  %420 = phi i32 [ %415, %413 ], [ %406, %401 ]
  %421 = load i16, ptr %8, align 2, !tbaa !35
  %422 = icmp eq i32 %419, 0
  br i1 %422, label %435, label %423

423:                                              ; preds = %418
  %424 = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !6
  %425 = sext i32 %419 to i64
  %426 = getelementptr inbounds i16, ptr %424, i64 %425
  %427 = load i16, ptr %426, align 2, !tbaa !35
  %428 = add i16 %421, %427
  store i16 %428, ptr %8, align 2, !tbaa !35
  %429 = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !6
  %430 = getelementptr inbounds i16, ptr %429, i64 %425
  %431 = load i16, ptr %430, align 2, !tbaa !35
  %432 = load i16, ptr %9, align 2, !tbaa !35
  %433 = add i16 %432, %431
  store i16 %433, ptr %9, align 2, !tbaa !35
  %434 = load i16, ptr %8, align 2, !tbaa !35
  br label %435

435:                                              ; preds = %142, %423, %418
  %436 = phi i32 [ %420, %423 ], [ %420, %418 ], [ %12, %142 ]
  %437 = phi i16 [ %434, %423 ], [ %421, %418 ], [ %126, %142 ]
  %438 = icmp eq i16 %437, 0
  br i1 %438, label %439, label %453

439:                                              ; preds = %435
  %440 = load i16, ptr %9, align 2, !tbaa !35
  %441 = icmp eq i16 %440, 0
  %442 = or i32 %7, %6
  %443 = icmp eq i32 %442, 0
  %444 = and i1 %443, %441
  br i1 %444, label %445, label %453

445:                                              ; preds = %439
  %446 = load i16, ptr @SubPelThreshold1, align 2, !tbaa !35
  %447 = zext i16 %446 to i32
  %448 = getelementptr inbounds [8 x i16], ptr @block_type_shift_factor, i64 0, i64 %45
  %449 = load i16, ptr %448, align 2, !tbaa !35
  %450 = zext nneg i16 %449 to i32
  %451 = lshr i32 %447, %450
  %452 = icmp slt i32 %436, %451
  br i1 %452, label %768, label %453

453:                                              ; preds = %445, %439, %435
  %454 = load ptr, ptr @input, align 8, !tbaa !6
  %455 = getelementptr inbounds i8, ptr %454, i64 24
  %456 = load i32, ptr %455, align 8, !tbaa !54
  %457 = icmp eq i32 %456, 2
  %458 = select i1 %457, i32 2147483647, i32 %436
  %459 = getelementptr inbounds i8, ptr %454, i64 3892
  %460 = load i32, ptr %459, align 4, !tbaa !55
  %461 = icmp ne i32 %460, 0
  %462 = and i1 %92, %461
  %463 = icmp ne i32 %456, 0
  %464 = select i1 %462, i1 %463, i1 false
  %465 = sext i16 %437 to i32
  %466 = add nsw i32 %51, %465
  %467 = icmp sgt i32 %466, 0
  %468 = icmp slt i32 %466, %122
  %469 = select i1 %467, i1 %468, i1 false
  br i1 %469, label %470, label %477

470:                                              ; preds = %453
  %471 = load i16, ptr %9, align 2, !tbaa !35
  %472 = sext i16 %471 to i32
  %473 = add nsw i32 %53, %472
  %474 = icmp sgt i32 %473, 0
  %475 = icmp slt i32 %473, %125
  %476 = select i1 %474, i1 %475, i1 false
  br i1 %476, label %478, label %477

477:                                              ; preds = %470, %453
  br label %478

478:                                              ; preds = %470, %477
  %479 = phi ptr [ @UMVLine4X, %477 ], [ @FastLine4X, %470 ]
  store ptr %479, ptr @get_line, align 8, !tbaa !6
  %480 = icmp slt i32 %88, %11
  br i1 %480, label %481, label %768

481:                                              ; preds = %478
  %482 = icmp sgt i32 %49, 0
  %483 = icmp sgt i32 %47, 0
  %484 = getelementptr inbounds i8, ptr %16, i64 4
  %485 = getelementptr inbounds i8, ptr %16, i64 8
  %486 = getelementptr inbounds i8, ptr %16, i64 12
  %487 = getelementptr inbounds i8, ptr %16, i64 16
  %488 = getelementptr inbounds i8, ptr %16, i64 20
  %489 = getelementptr inbounds i8, ptr %16, i64 24
  %490 = getelementptr inbounds i8, ptr %16, i64 28
  %491 = getelementptr inbounds i8, ptr %16, i64 32
  %492 = getelementptr inbounds i8, ptr %16, i64 36
  %493 = getelementptr inbounds i8, ptr %16, i64 40
  %494 = getelementptr inbounds i8, ptr %16, i64 44
  %495 = getelementptr inbounds i8, ptr %16, i64 48
  %496 = getelementptr inbounds i8, ptr %16, i64 52
  %497 = getelementptr inbounds i8, ptr %16, i64 56
  %498 = getelementptr inbounds i8, ptr %16, i64 60
  %499 = getelementptr inbounds [8 x i16], ptr @block_type_shift_factor, i64 0, i64 %45
  %500 = zext i1 %87 to i64
  %501 = zext i32 %11 to i64
  br label %502

502:                                              ; preds = %481, %747
  %503 = phi i64 [ %500, %481 ], [ %750, %747 ]
  %504 = phi i32 [ %458, %481 ], [ %749, %747 ]
  %505 = phi i32 [ 0, %481 ], [ %748, %747 ]
  %506 = load i16, ptr %8, align 2, !tbaa !35
  %507 = sext i16 %506 to i32
  %508 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %509 = getelementptr inbounds i16, ptr %508, i64 %503
  %510 = load i16, ptr %509, align 2, !tbaa !35
  %511 = sext i16 %510 to i32
  %512 = add nsw i32 %511, %507
  %513 = load i16, ptr %9, align 2, !tbaa !35
  %514 = sext i16 %513 to i32
  %515 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %516 = getelementptr inbounds i16, ptr %515, i64 %503
  %517 = load i16, ptr %516, align 2, !tbaa !35
  %518 = sext i16 %517 to i32
  %519 = add nsw i32 %518, %514
  %520 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %521 = sub nsw i32 %512, %6
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, ptr %520, i64 %522
  %524 = load i32, ptr %523, align 4, !tbaa !19
  %525 = sub nsw i32 %519, %7
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, ptr %520, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !19
  %529 = add nsw i32 %528, %524
  %530 = mul nsw i32 %529, %13
  %531 = ashr i32 %530, 16
  %532 = icmp slt i32 %531, %504
  br i1 %532, label %533, label %747

533:                                              ; preds = %502
  %534 = add nsw i32 %512, %51
  %535 = add nsw i32 %519, %53
  br i1 %482, label %536, label %730

536:                                              ; preds = %533, %725
  %537 = phi i64 [ %727, %725 ], [ 0, %533 ]
  %538 = phi i32 [ %726, %725 ], [ %531, %533 ]
  %539 = icmp ugt i64 %537, 7
  %540 = select i1 %539, i32 %18, i32 0
  %541 = trunc nuw nsw i64 %537 to i32
  %542 = shl i32 %541, 2
  %543 = add nsw i32 %535, %542
  %544 = add nsw i32 %543, 4
  %545 = add nsw i32 %543, 8
  %546 = add nsw i32 %543, 12
  br i1 %483, label %547, label %725

547:                                              ; preds = %536
  %548 = or disjoint i64 %537, 3
  %549 = or disjoint i64 %537, 2
  %550 = or disjoint i64 %537, 1
  %551 = getelementptr inbounds ptr, ptr %0, i64 %537
  %552 = getelementptr inbounds ptr, ptr %0, i64 %550
  %553 = getelementptr inbounds ptr, ptr %0, i64 %549
  %554 = getelementptr inbounds ptr, ptr %0, i64 %548
  %555 = shl i32 %541, 3
  %556 = and i32 %555, 32
  %557 = trunc i64 %537 to i32
  %558 = shl i32 %557, 3
  %559 = and i32 %558, 32
  %560 = trunc i64 %537 to i32
  %561 = shl i32 %560, 3
  %562 = and i32 %561, 32
  %563 = trunc i64 %537 to i32
  %564 = shl i32 %563, 3
  %565 = and i32 %564, 32
  br label %566

566:                                              ; preds = %547, %720
  %567 = phi i64 [ 0, %547 ], [ %722, %720 ]
  %568 = phi i32 [ %538, %547 ], [ %721, %720 ]
  %569 = trunc nuw nsw i64 %567 to i32
  %570 = shl i32 %569, 2
  %571 = add nsw i32 %534, %570
  %572 = load ptr, ptr %551, align 8, !tbaa !6
  %573 = getelementptr inbounds i16, ptr %572, i64 %567
  %574 = load ptr, ptr @get_line, align 8, !tbaa !6
  %575 = tail call ptr %574(ptr noundef %111, i32 noundef signext %543, i32 noundef signext %571, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %576 = getelementptr inbounds i8, ptr %573, i64 2
  %577 = load i16, ptr %573, align 2, !tbaa !35
  %578 = zext i16 %577 to i32
  %579 = load i16, ptr %575, align 2, !tbaa !35
  %580 = zext i16 %579 to i32
  %581 = sub nsw i32 %578, %580
  store i32 %581, ptr %16, align 4, !tbaa !19
  %582 = getelementptr inbounds i8, ptr %573, i64 4
  %583 = load i16, ptr %576, align 2, !tbaa !35
  %584 = zext i16 %583 to i32
  %585 = getelementptr inbounds i8, ptr %575, i64 8
  %586 = load i16, ptr %585, align 2, !tbaa !35
  %587 = zext i16 %586 to i32
  %588 = sub nsw i32 %584, %587
  store i32 %588, ptr %484, align 4, !tbaa !19
  %589 = getelementptr inbounds i8, ptr %573, i64 6
  %590 = load i16, ptr %582, align 2, !tbaa !35
  %591 = zext i16 %590 to i32
  %592 = getelementptr inbounds i8, ptr %575, i64 16
  %593 = load i16, ptr %592, align 2, !tbaa !35
  %594 = zext i16 %593 to i32
  %595 = sub nsw i32 %591, %594
  store i32 %595, ptr %485, align 4, !tbaa !19
  %596 = load i16, ptr %589, align 2, !tbaa !35
  %597 = zext i16 %596 to i32
  %598 = getelementptr inbounds i8, ptr %575, i64 24
  %599 = load i16, ptr %598, align 2, !tbaa !35
  %600 = zext i16 %599 to i32
  %601 = sub nsw i32 %597, %600
  store i32 %601, ptr %486, align 4, !tbaa !19
  %602 = load ptr, ptr %552, align 8, !tbaa !6
  %603 = getelementptr inbounds i16, ptr %602, i64 %567
  %604 = load ptr, ptr @get_line, align 8, !tbaa !6
  %605 = tail call ptr %604(ptr noundef %111, i32 noundef signext %544, i32 noundef signext %571, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %606 = getelementptr inbounds i8, ptr %603, i64 2
  %607 = load i16, ptr %603, align 2, !tbaa !35
  %608 = zext i16 %607 to i32
  %609 = load i16, ptr %605, align 2, !tbaa !35
  %610 = zext i16 %609 to i32
  %611 = sub nsw i32 %608, %610
  store i32 %611, ptr %487, align 4, !tbaa !19
  %612 = getelementptr inbounds i8, ptr %603, i64 4
  %613 = load i16, ptr %606, align 2, !tbaa !35
  %614 = zext i16 %613 to i32
  %615 = getelementptr inbounds i8, ptr %605, i64 8
  %616 = load i16, ptr %615, align 2, !tbaa !35
  %617 = zext i16 %616 to i32
  %618 = sub nsw i32 %614, %617
  store i32 %618, ptr %488, align 4, !tbaa !19
  %619 = getelementptr inbounds i8, ptr %603, i64 6
  %620 = load i16, ptr %612, align 2, !tbaa !35
  %621 = zext i16 %620 to i32
  %622 = getelementptr inbounds i8, ptr %605, i64 16
  %623 = load i16, ptr %622, align 2, !tbaa !35
  %624 = zext i16 %623 to i32
  %625 = sub nsw i32 %621, %624
  store i32 %625, ptr %489, align 4, !tbaa !19
  %626 = load i16, ptr %619, align 2, !tbaa !35
  %627 = zext i16 %626 to i32
  %628 = getelementptr inbounds i8, ptr %605, i64 24
  %629 = load i16, ptr %628, align 2, !tbaa !35
  %630 = zext i16 %629 to i32
  %631 = sub nsw i32 %627, %630
  store i32 %631, ptr %490, align 4, !tbaa !19
  %632 = load ptr, ptr %553, align 8, !tbaa !6
  %633 = getelementptr inbounds i16, ptr %632, i64 %567
  %634 = load ptr, ptr @get_line, align 8, !tbaa !6
  %635 = tail call ptr %634(ptr noundef %111, i32 noundef signext %545, i32 noundef signext %571, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %636 = getelementptr inbounds i8, ptr %633, i64 2
  %637 = load i16, ptr %633, align 2, !tbaa !35
  %638 = zext i16 %637 to i32
  %639 = load i16, ptr %635, align 2, !tbaa !35
  %640 = zext i16 %639 to i32
  %641 = sub nsw i32 %638, %640
  store i32 %641, ptr %491, align 4, !tbaa !19
  %642 = getelementptr inbounds i8, ptr %633, i64 4
  %643 = load i16, ptr %636, align 2, !tbaa !35
  %644 = zext i16 %643 to i32
  %645 = getelementptr inbounds i8, ptr %635, i64 8
  %646 = load i16, ptr %645, align 2, !tbaa !35
  %647 = zext i16 %646 to i32
  %648 = sub nsw i32 %644, %647
  store i32 %648, ptr %492, align 4, !tbaa !19
  %649 = getelementptr inbounds i8, ptr %633, i64 6
  %650 = load i16, ptr %642, align 2, !tbaa !35
  %651 = zext i16 %650 to i32
  %652 = getelementptr inbounds i8, ptr %635, i64 16
  %653 = load i16, ptr %652, align 2, !tbaa !35
  %654 = zext i16 %653 to i32
  %655 = sub nsw i32 %651, %654
  store i32 %655, ptr %493, align 4, !tbaa !19
  %656 = load i16, ptr %649, align 2, !tbaa !35
  %657 = zext i16 %656 to i32
  %658 = getelementptr inbounds i8, ptr %635, i64 24
  %659 = load i16, ptr %658, align 2, !tbaa !35
  %660 = zext i16 %659 to i32
  %661 = sub nsw i32 %657, %660
  store i32 %661, ptr %494, align 4, !tbaa !19
  %662 = load ptr, ptr %554, align 8, !tbaa !6
  %663 = getelementptr inbounds i16, ptr %662, i64 %567
  %664 = load ptr, ptr @get_line, align 8, !tbaa !6
  %665 = tail call ptr %664(ptr noundef %111, i32 noundef signext %546, i32 noundef signext %571, i32 noundef signext %119, i32 noundef signext %115) #16, !callees !56
  %666 = getelementptr inbounds i8, ptr %663, i64 2
  %667 = load i16, ptr %663, align 2, !tbaa !35
  %668 = zext i16 %667 to i32
  %669 = load i16, ptr %665, align 2, !tbaa !35
  %670 = zext i16 %669 to i32
  %671 = sub nsw i32 %668, %670
  store i32 %671, ptr %495, align 4, !tbaa !19
  %672 = getelementptr inbounds i8, ptr %663, i64 4
  %673 = load i16, ptr %666, align 2, !tbaa !35
  %674 = zext i16 %673 to i32
  %675 = getelementptr inbounds i8, ptr %665, i64 8
  %676 = load i16, ptr %675, align 2, !tbaa !35
  %677 = zext i16 %676 to i32
  %678 = sub nsw i32 %674, %677
  store i32 %678, ptr %496, align 4, !tbaa !19
  %679 = getelementptr inbounds i8, ptr %663, i64 6
  %680 = load i16, ptr %672, align 2, !tbaa !35
  %681 = zext i16 %680 to i32
  %682 = getelementptr inbounds i8, ptr %665, i64 16
  %683 = load i16, ptr %682, align 2, !tbaa !35
  %684 = zext i16 %683 to i32
  %685 = sub nsw i32 %681, %684
  store i32 %685, ptr %497, align 4, !tbaa !19
  %686 = load i16, ptr %679, align 2, !tbaa !35
  %687 = zext i16 %686 to i32
  %688 = getelementptr inbounds i8, ptr %665, i64 24
  %689 = load i16, ptr %688, align 2, !tbaa !35
  %690 = zext i16 %689 to i32
  %691 = sub nsw i32 %687, %690
  store i32 %691, ptr %498, align 4, !tbaa !19
  br i1 %464, label %699, label %692

692:                                              ; preds = %566
  %693 = load ptr, ptr @input, align 8, !tbaa !6
  %694 = getelementptr inbounds i8, ptr %693, i64 24
  %695 = load i32, ptr %694, align 8, !tbaa !54
  %696 = call signext i32 @SATD(ptr noundef nonnull %16, i32 noundef signext %695)
  %697 = add nsw i32 %696, %568
  %698 = icmp slt i32 %697, %504
  br i1 %698, label %720, label %735

699:                                              ; preds = %566
  %700 = and i32 %569, 4
  %701 = icmp ugt i64 %567, 7
  %702 = select i1 %701, i32 64, i32 0
  %703 = or disjoint i32 %700, %540
  %704 = add nuw nsw i32 %703, %702
  %705 = or disjoint i32 %556, %704
  %706 = zext nneg i32 %705 to i64
  %707 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %707, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false)
  %708 = or disjoint i32 %559, %704
  %709 = or disjoint i32 %708, 8
  %710 = zext nneg i32 %709 to i64
  %711 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %711, ptr noundef nonnull align 4 dereferenceable(16) %487, i64 16, i1 false)
  %712 = or disjoint i32 %562, %704
  %713 = or disjoint i32 %712, 16
  %714 = zext nneg i32 %713 to i64
  %715 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %715, ptr noundef nonnull align 4 dereferenceable(16) %491, i64 16, i1 false)
  %716 = or disjoint i32 %565, %704
  %717 = or disjoint i32 %716, 24
  %718 = zext nneg i32 %717 to i64
  %719 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %719, ptr noundef nonnull align 4 dereferenceable(16) %495, i64 16, i1 false)
  br label %720

720:                                              ; preds = %699, %692
  %721 = phi i32 [ %697, %692 ], [ %568, %699 ]
  %722 = add nuw nsw i64 %567, 4
  %723 = trunc nuw i64 %722 to i32
  %724 = icmp sgt i32 %47, %723
  br i1 %724, label %566, label %725

725:                                              ; preds = %720, %536
  %726 = phi i32 [ %538, %536 ], [ %721, %720 ]
  %727 = add nuw nsw i64 %537, 4
  %728 = trunc nuw i64 %727 to i32
  %729 = icmp sgt i32 %49, %728
  br i1 %729, label %536, label %730

730:                                              ; preds = %725, %533
  %731 = phi i32 [ %531, %533 ], [ %726, %725 ]
  br i1 %464, label %732, label %735

732:                                              ; preds = %730
  %733 = call signext i32 @find_SATD(ptr noundef nonnull %15, i32 noundef signext %5)
  %734 = add nsw i32 %733, %731
  br label %735

735:                                              ; preds = %692, %732, %730
  %736 = phi i32 [ %734, %732 ], [ %731, %730 ], [ %697, %692 ]
  %737 = icmp slt i32 %736, %504
  %738 = trunc nuw nsw i64 %503 to i32
  %739 = select i1 %737, i32 %738, i32 %505
  %740 = tail call i32 @llvm.smin.i32(i32 %736, i32 %504)
  %741 = load i16, ptr @SubPelThreshold3, align 2, !tbaa !35
  %742 = zext i16 %741 to i32
  %743 = load i16, ptr %499, align 2, !tbaa !35
  %744 = zext nneg i16 %743 to i32
  %745 = lshr i32 %742, %744
  %746 = icmp slt i32 %740, %745
  br i1 %746, label %752, label %747

747:                                              ; preds = %735, %502
  %748 = phi i32 [ %505, %502 ], [ %739, %735 ]
  %749 = phi i32 [ %504, %502 ], [ %740, %735 ]
  %750 = add nuw nsw i64 %503, 1
  %751 = icmp eq i64 %750, %501
  br i1 %751, label %752, label %502

752:                                              ; preds = %747, %735
  %753 = phi i32 [ %748, %747 ], [ %739, %735 ]
  %754 = phi i32 [ %749, %747 ], [ %740, %735 ]
  %755 = icmp eq i32 %753, 0
  br i1 %755, label %768, label %756

756:                                              ; preds = %752
  %757 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %758 = sext i32 %753 to i64
  %759 = getelementptr inbounds i16, ptr %757, i64 %758
  %760 = load i16, ptr %759, align 2, !tbaa !35
  %761 = load i16, ptr %8, align 2, !tbaa !35
  %762 = add i16 %761, %760
  store i16 %762, ptr %8, align 2, !tbaa !35
  %763 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %764 = getelementptr inbounds i16, ptr %763, i64 %758
  %765 = load i16, ptr %764, align 2, !tbaa !35
  %766 = load i16, ptr %9, align 2, !tbaa !35
  %767 = add i16 %766, %765
  store i16 %767, ptr %9, align 2, !tbaa !35
  br label %768

768:                                              ; preds = %478, %752, %756, %445
  %769 = phi i32 [ %436, %445 ], [ %754, %756 ], [ %754, %752 ], [ %458, %478 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %15) #16
  ret i32 %769
}

; Function Attrs: nounwind
define dso_local signext i32 @FullPelBlockMotionBiPred(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7, i16 noundef signext %8, i16 noundef signext %9, ptr nocapture noundef %10, ptr nocapture noundef %11, ptr nocapture noundef readonly %12, ptr nocapture noundef readonly %13, i32 noundef signext %14, i32 noundef signext %15, i32 noundef signext %16) local_unnamed_addr #0 {
  %18 = load ptr, ptr @img, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 31576
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds i8, ptr %18, i64 12
  %22 = load i32, ptr %21, align 4, !tbaa !21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.macroblock, ptr %20, i64 %23, i32 20
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = add nsw i32 %25, %2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = sext i16 %1 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %32, i64 6432
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = icmp eq i32 %2, 0
  %36 = add nsw i32 %25, 1
  %37 = select i1 %35, i32 %36, i32 %25
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %41, i64 6432
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = getelementptr inbounds i8, ptr %32, i64 6392
  %45 = load i32, ptr %44, align 8, !tbaa !30
  %46 = getelementptr inbounds i8, ptr %32, i64 6396
  %47 = load i32, ptr %46, align 4, !tbaa !32
  %48 = shl nsw i32 %14, 1
  %49 = or disjoint i32 %48, 1
  %50 = mul nsw i32 %49, %49
  %51 = load ptr, ptr @input, align 8, !tbaa !6
  %52 = getelementptr inbounds i8, ptr %51, i64 84
  %53 = sext i32 %5 to i64
  %54 = getelementptr inbounds [8 x [2 x i32]], ptr %52, i64 0, i64 %53
  %55 = getelementptr inbounds i8, ptr %54, i64 4
  %56 = load i32, ptr %55, align 4, !tbaa !19
  %57 = load i32, ptr %54, align 4, !tbaa !19
  %58 = ashr i32 %57, 2
  %59 = mul i32 %3, -4
  %60 = sext i16 %6 to i32
  %61 = mul i32 %4, -4
  %62 = sext i16 %7 to i32
  %63 = sext i16 %8 to i32
  %64 = sext i16 %9 to i32
  %65 = load i16, ptr %10, align 2, !tbaa !35
  %66 = trunc i32 %3 to i16
  %67 = add i16 %65, %66
  %68 = load i16, ptr %11, align 2, !tbaa !35
  %69 = trunc i32 %4 to i16
  %70 = add i16 %68, %69
  %71 = load i16, ptr %12, align 2, !tbaa !35
  %72 = add i16 %71, %66
  %73 = load i16, ptr %13, align 2, !tbaa !35
  %74 = add i16 %73, %69
  %75 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %76 = getelementptr inbounds i8, ptr %75, i64 196
  %77 = load i32, ptr %76, align 4, !tbaa !28
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %17
  %80 = load ptr, ptr @wbp_weight, align 8, !tbaa !6
  %81 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  br i1 %35, label %85, label %110

82:                                               ; preds = %17
  %83 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %84 = shl nuw i32 1, %83
  br label %133

85:                                               ; preds = %79
  %86 = sext i32 %25 to i64
  %87 = getelementptr inbounds ptr, ptr %80, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = getelementptr inbounds ptr, ptr %88, i64 %30
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = load i32, ptr %91, align 4, !tbaa !19
  %93 = sext i32 %36 to i64
  %94 = getelementptr inbounds ptr, ptr %80, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds ptr, ptr %95, i64 %30
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = load i32, ptr %98, align 4, !tbaa !19
  %100 = getelementptr inbounds ptr, ptr %81, i64 %86
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds ptr, ptr %101, i64 %30
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = load i32, ptr %103, align 4, !tbaa !19
  %105 = getelementptr inbounds ptr, ptr %81, i64 %93
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = getelementptr inbounds ptr, ptr %106, i64 %30
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  %109 = load i32, ptr %108, align 4, !tbaa !19
  br label %133

110:                                              ; preds = %79
  %111 = sext i32 %36 to i64
  %112 = getelementptr inbounds ptr, ptr %80, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = getelementptr inbounds ptr, ptr %114, i64 %30
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = load i32, ptr %116, align 4, !tbaa !19
  %118 = sext i32 %25 to i64
  %119 = getelementptr inbounds ptr, ptr %80, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = getelementptr inbounds ptr, ptr %121, i64 %30
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = load i32, ptr %123, align 4, !tbaa !19
  %125 = getelementptr inbounds ptr, ptr %81, i64 %111
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = load i32, ptr %127, align 4, !tbaa !19
  %129 = getelementptr inbounds ptr, ptr %81, i64 %118
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = load i32, ptr %131, align 4, !tbaa !19
  br label %133

133:                                              ; preds = %82, %85, %110
  %134 = phi i32 [ %104, %85 ], [ %128, %110 ], [ 0, %82 ]
  %135 = phi i32 [ %92, %85 ], [ %117, %110 ], [ %84, %82 ]
  %136 = phi i32 [ %99, %85 ], [ %124, %110 ], [ %84, %82 ]
  %137 = phi i32 [ %109, %85 ], [ %132, %110 ], [ 0, %82 ]
  %138 = shl i32 %137, 16
  %139 = ashr exact i32 %138, 16
  %140 = shl i32 %134, 16
  %141 = ashr exact i32 %140, 16
  %142 = add nsw i32 %139, %141
  %143 = sext i16 %67 to i32
  %144 = icmp sgt i32 %143, %14
  br i1 %144, label %145, label %157

145:                                              ; preds = %133
  %146 = xor i32 %14, -1
  %147 = add i32 %45, %146
  %148 = sub i32 %147, %57
  %149 = icmp sgt i32 %148, %143
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = sext i16 %70 to i32
  %152 = icmp sgt i32 %151, %14
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = add i32 %47, %146
  %155 = sub i32 %154, %56
  %156 = icmp sgt i32 %155, %151
  br i1 %156, label %158, label %157

157:                                              ; preds = %153, %150, %145, %133
  br label %158

158:                                              ; preds = %153, %157
  %159 = phi ptr [ @UMVLineX, %157 ], [ @FastLineX, %153 ]
  %160 = sext i16 %72 to i32
  %161 = icmp sgt i32 %160, %14
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = xor i32 %14, -1
  %164 = add i32 %45, %163
  %165 = sub i32 %164, %57
  %166 = icmp sgt i32 %165, %160
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = sext i16 %74 to i32
  %169 = icmp sgt i32 %168, %14
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = add i32 %47, %163
  %172 = sub i32 %171, %56
  %173 = icmp sgt i32 %172, %168
  br i1 %173, label %176, label %174

174:                                              ; preds = %170, %167, %162, %158
  %175 = sext i16 %74 to i32
  br label %176

176:                                              ; preds = %170, %174
  %177 = phi i32 [ %168, %170 ], [ %175, %174 ]
  %178 = phi ptr [ @FastLineX, %170 ], [ @UMVLineX, %174 ]
  %179 = sext i16 %70 to i32
  %180 = shl nsw i32 %160, 2
  %181 = sub i32 %59, %60
  %182 = add i32 %181, %180
  %183 = sext i32 %182 to i64
  %184 = shl nsw i32 %177, 2
  %185 = sub i32 %61, %62
  %186 = add i32 %185, %184
  %187 = sext i32 %186 to i64
  %188 = sub i32 %59, %63
  %189 = sub i32 %61, %64
  %190 = icmp sgt i32 %56, 0
  %191 = icmp sgt i32 %58, 0
  %192 = trunc i32 %135 to i16
  %193 = trunc i32 %136 to i16
  %194 = shl nsw i32 %142, 15
  %195 = add i32 %194, 32768
  %196 = ashr i32 %195, 16
  %197 = sext i32 %56 to i64
  %198 = zext nneg i32 %50 to i64
  br label %199

199:                                              ; preds = %176, %481
  %200 = phi i64 [ 0, %176 ], [ %484, %481 ]
  %201 = phi i32 [ %15, %176 ], [ %483, %481 ]
  %202 = phi i32 [ 0, %176 ], [ %482, %481 ]
  %203 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %204 = getelementptr inbounds i16, ptr %203, i64 %200
  %205 = load i16, ptr %204, align 2, !tbaa !35
  %206 = sext i16 %205 to i32
  %207 = add nsw i32 %206, %143
  %208 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %209 = getelementptr inbounds i16, ptr %208, i64 %200
  %210 = load i16, ptr %209, align 2, !tbaa !35
  %211 = sext i16 %210 to i32
  %212 = add nsw i32 %211, %179
  %213 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %214 = getelementptr inbounds i32, ptr %213, i64 %183
  %215 = load i32, ptr %214, align 4, !tbaa !19
  %216 = getelementptr inbounds i32, ptr %213, i64 %187
  %217 = load i32, ptr %216, align 4, !tbaa !19
  %218 = add nsw i32 %217, %215
  %219 = mul nsw i32 %218, %16
  %220 = ashr i32 %219, 16
  %221 = shl nsw i32 %207, 2
  %222 = add i32 %188, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, ptr %213, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !19
  %226 = shl nsw i32 %212, 2
  %227 = add i32 %189, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, ptr %213, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !19
  %231 = add nsw i32 %230, %225
  %232 = mul nsw i32 %231, %16
  %233 = ashr i32 %232, 16
  %234 = add nsw i32 %233, %220
  %235 = icmp slt i32 %234, %201
  br i1 %235, label %236, label %481

236:                                              ; preds = %199
  br i1 %78, label %238, label %237

237:                                              ; preds = %236
  br i1 %190, label %239, label %475

238:                                              ; preds = %236
  br i1 %190, label %384, label %475

239:                                              ; preds = %237, %378
  %240 = phi i64 [ %381, %378 ], [ 0, %237 ]
  %241 = phi i32 [ %379, %378 ], [ %234, %237 ]
  %242 = trunc i64 %240 to i32
  %243 = add i32 %212, %242
  %244 = tail call ptr %159(i32 noundef signext %57, ptr noundef %43, i32 noundef signext %243, i32 noundef signext %207, i32 noundef signext %47, i32 noundef signext %45) #16, !callees !53
  %245 = trunc i64 %240 to i32
  %246 = add i32 %177, %245
  %247 = tail call ptr %178(i32 noundef signext %57, ptr noundef %34, i32 noundef signext %246, i32 noundef signext %160, i32 noundef signext %47, i32 noundef signext %45) #16, !callees !53
  br i1 %191, label %248, label %378

248:                                              ; preds = %239
  %249 = getelementptr inbounds ptr, ptr %0, i64 %240
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  %251 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %252 = shl nsw i32 %251, 1
  %253 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %254 = add nsw i32 %253, 1
  %255 = load ptr, ptr @img, align 8
  %256 = getelementptr inbounds i8, ptr %255, i64 90532
  %257 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  br label %258

258:                                              ; preds = %248, %364
  %259 = phi i32 [ 0, %248 ], [ %376, %364 ]
  %260 = phi i32 [ %241, %248 ], [ %375, %364 ]
  %261 = phi ptr [ %250, %248 ], [ %366, %364 ]
  %262 = phi ptr [ %244, %248 ], [ %351, %364 ]
  %263 = phi ptr [ %247, %248 ], [ %348, %364 ]
  %264 = getelementptr inbounds i8, ptr %263, i64 2
  %265 = load i16, ptr %263, align 2, !tbaa !35
  %266 = mul i16 %265, %192
  %267 = getelementptr inbounds i8, ptr %262, i64 2
  %268 = load i16, ptr %262, align 2, !tbaa !35
  %269 = mul i16 %268, %193
  %270 = sext i16 %266 to i32
  %271 = sext i16 %269 to i32
  %272 = add nsw i32 %271, %270
  %273 = add nsw i32 %272, %252
  %274 = ashr i32 %273, %254
  %275 = add nsw i32 %274, %196
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %258
  %278 = load i32, ptr %256, align 4, !tbaa !51
  %279 = tail call i32 @llvm.smin.i32(i32 %275, i32 %278)
  br label %280

280:                                              ; preds = %277, %258
  %281 = phi i32 [ 0, %258 ], [ %279, %277 ]
  %282 = getelementptr inbounds i8, ptr %261, i64 2
  %283 = load i16, ptr %261, align 2, !tbaa !35
  %284 = zext i16 %283 to i32
  %285 = shl i32 %281, 16
  %286 = ashr exact i32 %285, 16
  %287 = sub nsw i32 %284, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, ptr %257, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !19
  %291 = add i32 %290, %260
  %292 = getelementptr inbounds i8, ptr %263, i64 4
  %293 = load i16, ptr %264, align 2, !tbaa !35
  %294 = mul i16 %293, %192
  %295 = getelementptr inbounds i8, ptr %262, i64 4
  %296 = load i16, ptr %267, align 2, !tbaa !35
  %297 = mul i16 %296, %193
  %298 = sext i16 %294 to i32
  %299 = sext i16 %297 to i32
  %300 = add i32 %252, %298
  %301 = add i32 %300, %299
  %302 = ashr i32 %301, %254
  %303 = add nsw i32 %302, %196
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %280
  %306 = load i32, ptr %256, align 4, !tbaa !51
  %307 = tail call i32 @llvm.smin.i32(i32 %303, i32 %306)
  br label %308

308:                                              ; preds = %305, %280
  %309 = phi i32 [ 0, %280 ], [ %307, %305 ]
  %310 = getelementptr inbounds i8, ptr %261, i64 4
  %311 = load i16, ptr %282, align 2, !tbaa !35
  %312 = zext i16 %311 to i32
  %313 = shl i32 %309, 16
  %314 = ashr exact i32 %313, 16
  %315 = sub nsw i32 %312, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, ptr %257, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !19
  %319 = add i32 %291, %318
  %320 = getelementptr inbounds i8, ptr %263, i64 6
  %321 = load i16, ptr %292, align 2, !tbaa !35
  %322 = mul i16 %321, %192
  %323 = getelementptr inbounds i8, ptr %262, i64 6
  %324 = load i16, ptr %295, align 2, !tbaa !35
  %325 = mul i16 %324, %193
  %326 = sext i16 %322 to i32
  %327 = sext i16 %325 to i32
  %328 = add i32 %252, %326
  %329 = add i32 %328, %327
  %330 = ashr i32 %329, %254
  %331 = add nsw i32 %330, %196
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %308
  %334 = load i32, ptr %256, align 4, !tbaa !51
  %335 = tail call i32 @llvm.smin.i32(i32 %331, i32 %334)
  br label %336

336:                                              ; preds = %333, %308
  %337 = phi i32 [ 0, %308 ], [ %335, %333 ]
  %338 = getelementptr inbounds i8, ptr %261, i64 6
  %339 = load i16, ptr %310, align 2, !tbaa !35
  %340 = zext i16 %339 to i32
  %341 = shl i32 %337, 16
  %342 = ashr exact i32 %341, 16
  %343 = sub nsw i32 %340, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, ptr %257, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !19
  %347 = add i32 %319, %346
  %348 = getelementptr inbounds i8, ptr %263, i64 8
  %349 = load i16, ptr %320, align 2, !tbaa !35
  %350 = mul i16 %349, %192
  %351 = getelementptr inbounds i8, ptr %262, i64 8
  %352 = load i16, ptr %323, align 2, !tbaa !35
  %353 = mul i16 %352, %193
  %354 = sext i16 %350 to i32
  %355 = sext i16 %353 to i32
  %356 = add i32 %252, %354
  %357 = add i32 %356, %355
  %358 = ashr i32 %357, %254
  %359 = add nsw i32 %358, %196
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %336
  %362 = load i32, ptr %256, align 4, !tbaa !51
  %363 = tail call i32 @llvm.smin.i32(i32 %359, i32 %362)
  br label %364

364:                                              ; preds = %361, %336
  %365 = phi i32 [ 0, %336 ], [ %363, %361 ]
  %366 = getelementptr inbounds i8, ptr %261, i64 8
  %367 = load i16, ptr %338, align 2, !tbaa !35
  %368 = zext i16 %367 to i32
  %369 = shl i32 %365, 16
  %370 = ashr exact i32 %369, 16
  %371 = sub nsw i32 %368, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, ptr %257, i64 %372
  %374 = load i32, ptr %373, align 4, !tbaa !19
  %375 = add i32 %347, %374
  %376 = add nuw nsw i32 %259, 1
  %377 = icmp eq i32 %376, %58
  br i1 %377, label %378, label %258

378:                                              ; preds = %364, %239
  %379 = phi i32 [ %241, %239 ], [ %375, %364 ]
  %380 = icmp slt i32 %379, %201
  %381 = add nuw nsw i64 %240, 1
  %382 = icmp slt i64 %381, %197
  %383 = select i1 %380, i1 %382, i1 false
  br i1 %383, label %239, label %475

384:                                              ; preds = %238, %469
  %385 = phi i64 [ %472, %469 ], [ 0, %238 ]
  %386 = phi i32 [ %470, %469 ], [ %234, %238 ]
  %387 = trunc i64 %385 to i32
  %388 = add i32 %212, %387
  %389 = tail call ptr %159(i32 noundef signext %57, ptr noundef %43, i32 noundef signext %388, i32 noundef signext %207, i32 noundef signext %47, i32 noundef signext %45) #16, !callees !53
  %390 = trunc i64 %385 to i32
  %391 = add i32 %177, %390
  %392 = tail call ptr %178(i32 noundef signext %57, ptr noundef %34, i32 noundef signext %391, i32 noundef signext %160, i32 noundef signext %47, i32 noundef signext %45) #16, !callees !53
  br i1 %191, label %393, label %469

393:                                              ; preds = %384
  %394 = getelementptr inbounds ptr, ptr %0, i64 %385
  %395 = load ptr, ptr %394, align 8, !tbaa !6
  %396 = load ptr, ptr @byte_abs, align 8, !tbaa !6
  br label %397

397:                                              ; preds = %393, %397
  %398 = phi i32 [ 0, %393 ], [ %467, %397 ]
  %399 = phi i32 [ %386, %393 ], [ %466, %397 ]
  %400 = phi ptr [ %395, %393 ], [ %451, %397 ]
  %401 = phi ptr [ %389, %393 ], [ %457, %397 ]
  %402 = phi ptr [ %392, %393 ], [ %454, %397 ]
  %403 = getelementptr inbounds i8, ptr %400, i64 2
  %404 = load i16, ptr %400, align 2, !tbaa !35
  %405 = zext i16 %404 to i32
  %406 = getelementptr inbounds i8, ptr %402, i64 2
  %407 = load i16, ptr %402, align 2, !tbaa !35
  %408 = zext i16 %407 to i32
  %409 = getelementptr inbounds i8, ptr %401, i64 2
  %410 = load i16, ptr %401, align 2, !tbaa !35
  %411 = zext i16 %410 to i32
  %412 = add nuw nsw i32 %411, %408
  %413 = lshr i32 %412, 1
  %414 = sub nsw i32 %405, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, ptr %396, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !19
  %418 = add i32 %417, %399
  %419 = getelementptr inbounds i8, ptr %400, i64 4
  %420 = load i16, ptr %403, align 2, !tbaa !35
  %421 = zext i16 %420 to i32
  %422 = getelementptr inbounds i8, ptr %402, i64 4
  %423 = load i16, ptr %406, align 2, !tbaa !35
  %424 = zext i16 %423 to i32
  %425 = getelementptr inbounds i8, ptr %401, i64 4
  %426 = load i16, ptr %409, align 2, !tbaa !35
  %427 = zext i16 %426 to i32
  %428 = add nuw nsw i32 %427, %424
  %429 = lshr i32 %428, 1
  %430 = sub nsw i32 %421, %429
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, ptr %396, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !19
  %434 = add i32 %418, %433
  %435 = getelementptr inbounds i8, ptr %400, i64 6
  %436 = load i16, ptr %419, align 2, !tbaa !35
  %437 = zext i16 %436 to i32
  %438 = getelementptr inbounds i8, ptr %402, i64 6
  %439 = load i16, ptr %422, align 2, !tbaa !35
  %440 = zext i16 %439 to i32
  %441 = getelementptr inbounds i8, ptr %401, i64 6
  %442 = load i16, ptr %425, align 2, !tbaa !35
  %443 = zext i16 %442 to i32
  %444 = add nuw nsw i32 %443, %440
  %445 = lshr i32 %444, 1
  %446 = sub nsw i32 %437, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, ptr %396, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !19
  %450 = add i32 %434, %449
  %451 = getelementptr inbounds i8, ptr %400, i64 8
  %452 = load i16, ptr %435, align 2, !tbaa !35
  %453 = zext i16 %452 to i32
  %454 = getelementptr inbounds i8, ptr %402, i64 8
  %455 = load i16, ptr %438, align 2, !tbaa !35
  %456 = zext i16 %455 to i32
  %457 = getelementptr inbounds i8, ptr %401, i64 8
  %458 = load i16, ptr %441, align 2, !tbaa !35
  %459 = zext i16 %458 to i32
  %460 = add nuw nsw i32 %459, %456
  %461 = lshr i32 %460, 1
  %462 = sub nsw i32 %453, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, ptr %396, i64 %463
  %465 = load i32, ptr %464, align 4, !tbaa !19
  %466 = add i32 %450, %465
  %467 = add nuw nsw i32 %398, 1
  %468 = icmp eq i32 %467, %58
  br i1 %468, label %469, label %397

469:                                              ; preds = %397, %384
  %470 = phi i32 [ %386, %384 ], [ %466, %397 ]
  %471 = icmp slt i32 %470, %201
  %472 = add nuw nsw i64 %385, 1
  %473 = icmp slt i64 %472, %197
  %474 = select i1 %471, i1 %473, i1 false
  br i1 %474, label %384, label %475

475:                                              ; preds = %378, %469, %237, %238
  %476 = phi i32 [ %234, %238 ], [ %234, %237 ], [ %470, %469 ], [ %379, %378 ]
  %477 = icmp slt i32 %476, %201
  %478 = trunc nuw nsw i64 %200 to i32
  %479 = select i1 %477, i32 %478, i32 %202
  %480 = tail call i32 @llvm.smin.i32(i32 %476, i32 %201)
  br label %481

481:                                              ; preds = %475, %199
  %482 = phi i32 [ %202, %199 ], [ %479, %475 ]
  %483 = phi i32 [ %201, %199 ], [ %480, %475 ]
  %484 = add nuw nsw i64 %200, 1
  %485 = icmp ult i64 %484, %198
  br i1 %485, label %199, label %486

486:                                              ; preds = %481
  %487 = icmp eq i32 %482, 0
  br i1 %487, label %500, label %488

488:                                              ; preds = %486
  %489 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %490 = sext i32 %482 to i64
  %491 = getelementptr inbounds i16, ptr %489, i64 %490
  %492 = load i16, ptr %491, align 2, !tbaa !35
  %493 = load i16, ptr %10, align 2, !tbaa !35
  %494 = add i16 %493, %492
  store i16 %494, ptr %10, align 2, !tbaa !35
  %495 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %496 = getelementptr inbounds i16, ptr %495, i64 %490
  %497 = load i16, ptr %496, align 2, !tbaa !35
  %498 = load i16, ptr %11, align 2, !tbaa !35
  %499 = add i16 %498, %497
  store i16 %499, ptr %11, align 2, !tbaa !35
  br label %500

500:                                              ; preds = %488, %486
  ret i32 %483
}

; Function Attrs: nounwind
define dso_local signext i32 @SubPelBlockSearchBiPred(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7, ptr nocapture noundef %8, ptr nocapture noundef %9, ptr nocapture noundef readonly %10, ptr nocapture noundef readonly %11, i32 noundef signext %12, i32 noundef signext %13, i32 noundef signext %14, i32 noundef signext %15) local_unnamed_addr #0 {
  %17 = alloca [256 x i32], align 4
  %18 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #16
  %19 = icmp eq i32 %5, 3
  %20 = select i1 %19, i32 64, i32 128
  %21 = load ptr, ptr @input, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 84
  %23 = sext i32 %5 to i64
  %24 = getelementptr inbounds [8 x [2 x i32]], ptr %22, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !19
  %26 = getelementptr inbounds i8, ptr %24, i64 4
  %27 = load i32, ptr %26, align 4, !tbaa !19
  %28 = shl i32 %3, 2
  %29 = add i32 %28, 16
  %30 = shl i32 %4, 2
  %31 = add i32 %30, 16
  %32 = getelementptr inbounds i8, ptr %21, i64 24
  %33 = load i32, ptr %32, align 8, !tbaa !54
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = tail call i32 @llvm.smax.i32(i32 %12, i32 1)
  %37 = select i1 %34, i32 %12, i32 %36
  %38 = load ptr, ptr @img, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 31576
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  %41 = getelementptr inbounds i8, ptr %38, i64 12
  %42 = load i32, ptr %41, align 4, !tbaa !21
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.macroblock, ptr %40, i64 %43, i32 20
  %45 = load i32, ptr %44, align 4, !tbaa !22
  %46 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 196
  %48 = load i32, ptr %47, align 4, !tbaa !28
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %16
  %51 = sext i16 %1 to i64
  br label %101

52:                                               ; preds = %16
  %53 = icmp eq i32 %2, 0
  %54 = load ptr, ptr @wbp_weight, align 8, !tbaa !6
  %55 = sext i32 %45 to i64
  %56 = getelementptr ptr, ptr %54, i64 %55
  %57 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %58 = getelementptr ptr, ptr %57, i64 %55
  br i1 %53, label %59, label %81

59:                                               ; preds = %52
  %60 = load ptr, ptr %56, align 8, !tbaa !6
  %61 = sext i16 %1 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = load i32, ptr %64, align 4, !tbaa !19
  %66 = getelementptr i8, ptr %56, i64 8
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = getelementptr inbounds ptr, ptr %67, i64 %61
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load i32, ptr %70, align 4, !tbaa !19
  %72 = load ptr, ptr %58, align 8, !tbaa !6
  %73 = getelementptr inbounds ptr, ptr %72, i64 %61
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = load i32, ptr %74, align 4, !tbaa !19
  %76 = getelementptr i8, ptr %58, i64 8
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds ptr, ptr %77, i64 %61
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = load i32, ptr %79, align 4, !tbaa !19
  br label %101

81:                                               ; preds = %52
  %82 = getelementptr i8, ptr %56, i64 8
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = sext i16 %1 to i64
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = load i32, ptr %87, align 4, !tbaa !19
  %89 = load ptr, ptr %56, align 8, !tbaa !6
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = getelementptr inbounds ptr, ptr %90, i64 %85
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = load i32, ptr %92, align 4, !tbaa !19
  %94 = getelementptr i8, ptr %58, i64 8
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = load i32, ptr %96, align 4, !tbaa !19
  %98 = load ptr, ptr %58, align 8, !tbaa !6
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = load i32, ptr %99, align 4, !tbaa !19
  br label %101

101:                                              ; preds = %50, %59, %81
  %102 = phi i64 [ %51, %50 ], [ %61, %59 ], [ %85, %81 ]
  %103 = phi i32 [ 0, %50 ], [ %75, %59 ], [ %97, %81 ]
  %104 = phi i32 [ 1, %50 ], [ %65, %59 ], [ %88, %81 ]
  %105 = phi i32 [ 1, %50 ], [ %71, %59 ], [ %93, %81 ]
  %106 = phi i32 [ 0, %50 ], [ %80, %59 ], [ %100, %81 ]
  %107 = shl i32 %106, 16
  %108 = ashr exact i32 %107, 16
  %109 = shl i32 %103, 16
  %110 = ashr exact i32 %109, 16
  %111 = add nsw i32 %110, 1
  %112 = add nsw i32 %111, %108
  %113 = lshr i32 %112, 1
  %114 = getelementptr inbounds i8, ptr %21, i64 3892
  %115 = load i32, ptr %114, align 4, !tbaa !55
  %116 = icmp ne i32 %115, 0
  %117 = icmp slt i32 %5, 5
  %118 = and i1 %117, %116
  %119 = icmp ne i32 %33, 0
  %120 = select i1 %118, i1 %119, i1 false
  %121 = load i16, ptr %10, align 2, !tbaa !35
  %122 = sext i16 %121 to i32
  %123 = add nsw i32 %29, %122
  %124 = load i16, ptr %11, align 2, !tbaa !35
  %125 = sext i16 %124 to i32
  %126 = add nsw i32 %31, %125
  %127 = add nsw i32 %45, %2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = getelementptr inbounds ptr, ptr %130, i64 %102
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = getelementptr inbounds i8, ptr %132, i64 6448
  %134 = load ptr, ptr %133, align 8, !tbaa !58
  %135 = icmp eq i32 %2, 0
  %136 = zext i1 %135 to i32
  %137 = add nsw i32 %45, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = getelementptr inbounds i8, ptr %141, i64 6448
  %143 = load ptr, ptr %142, align 8, !tbaa !58
  %144 = getelementptr inbounds i8, ptr %132, i64 6392
  %145 = load i32, ptr %144, align 8, !tbaa !30
  %146 = shl i32 %145, 2
  %147 = add i32 %146, 28
  %148 = getelementptr inbounds i8, ptr %132, i64 6396
  %149 = load i32, ptr %148, align 4, !tbaa !32
  %150 = shl i32 %149, 2
  %151 = add i32 %150, 28
  %152 = sub nsw i32 %145, %25
  %153 = shl i32 %152, 2
  %154 = add i32 %153, 32
  %155 = sub nsw i32 %149, %27
  %156 = shl i32 %155, 2
  %157 = add i32 %156, 32
  %158 = load i16, ptr %8, align 2, !tbaa !35
  %159 = sext i16 %158 to i32
  %160 = add nsw i32 %29, %159
  %161 = icmp sgt i32 %160, 2
  %162 = add i32 %153, 31
  %163 = icmp slt i32 %160, %162
  %164 = select i1 %161, i1 %163, i1 false
  br i1 %164, label %165, label %173

165:                                              ; preds = %101
  %166 = load i16, ptr %9, align 2, !tbaa !35
  %167 = sext i16 %166 to i32
  %168 = add nsw i32 %31, %167
  %169 = icmp sgt i32 %168, 2
  %170 = add i32 %156, 31
  %171 = icmp slt i32 %168, %170
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %174, label %173

173:                                              ; preds = %165, %101
  br label %174

174:                                              ; preds = %165, %173
  %175 = phi ptr [ @UMVLine4X, %173 ], [ @FastLine4X, %165 ]
  store ptr %175, ptr @get_line_p2, align 8, !tbaa !6
  %176 = icmp sgt i32 %123, 2
  %177 = icmp slt i32 %123, %162
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = icmp sgt i32 %126, 2
  %181 = add i32 %156, 31
  %182 = icmp slt i32 %126, %181
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %185, label %184

184:                                              ; preds = %179, %174
  br label %185

185:                                              ; preds = %179, %184
  %186 = phi ptr [ @UMVLine4X, %184 ], [ @FastLine4X, %179 ]
  store ptr %186, ptr @get_line_p1, align 8, !tbaa !6
  %187 = icmp sgt i32 %37, %35
  br i1 %187, label %188, label %1001

188:                                              ; preds = %185
  %189 = sext i16 %6 to i32
  %190 = sext i16 %7 to i32
  %191 = icmp sgt i32 %27, 0
  %192 = icmp sgt i32 %25, 0
  %193 = shl i32 %104, 16
  %194 = ashr exact i32 %193, 16
  %195 = shl i32 %105, 16
  %196 = ashr exact i32 %195, 16
  %197 = shl i32 %113, 16
  %198 = ashr exact i32 %197, 16
  %199 = getelementptr inbounds i8, ptr %18, i64 4
  %200 = getelementptr inbounds i8, ptr %18, i64 8
  %201 = getelementptr inbounds i8, ptr %18, i64 12
  %202 = getelementptr inbounds i8, ptr %18, i64 16
  %203 = getelementptr inbounds i8, ptr %18, i64 20
  %204 = getelementptr inbounds i8, ptr %18, i64 24
  %205 = getelementptr inbounds i8, ptr %18, i64 28
  %206 = getelementptr inbounds i8, ptr %18, i64 32
  %207 = getelementptr inbounds i8, ptr %18, i64 36
  %208 = getelementptr inbounds i8, ptr %18, i64 40
  %209 = getelementptr inbounds i8, ptr %18, i64 44
  %210 = getelementptr inbounds i8, ptr %18, i64 48
  %211 = getelementptr inbounds i8, ptr %18, i64 52
  %212 = getelementptr inbounds i8, ptr %18, i64 56
  %213 = getelementptr inbounds i8, ptr %18, i64 60
  %214 = zext i1 %34 to i64
  %215 = zext nneg i32 %37 to i64
  br label %216

216:                                              ; preds = %188, %982
  %217 = phi i64 [ %214, %188 ], [ %985, %982 ]
  %218 = phi i32 [ %14, %188 ], [ %984, %982 ]
  %219 = phi i32 [ 0, %188 ], [ %983, %982 ]
  %220 = load i16, ptr %8, align 2, !tbaa !35
  %221 = sext i16 %220 to i32
  %222 = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !6
  %223 = getelementptr inbounds i16, ptr %222, i64 %217
  %224 = load i16, ptr %223, align 2, !tbaa !35
  %225 = sext i16 %224 to i32
  %226 = add nsw i32 %225, %221
  %227 = load i16, ptr %9, align 2, !tbaa !35
  %228 = sext i16 %227 to i32
  %229 = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !6
  %230 = getelementptr inbounds i16, ptr %229, i64 %217
  %231 = load i16, ptr %230, align 2, !tbaa !35
  %232 = sext i16 %231 to i32
  %233 = add nsw i32 %232, %228
  %234 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %235 = sub nsw i32 %226, %189
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, ptr %234, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !19
  %239 = sub nsw i32 %233, %190
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, ptr %234, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !19
  %243 = add nsw i32 %242, %238
  %244 = mul nsw i32 %243, %15
  %245 = ashr i32 %244, 16
  %246 = icmp slt i32 %245, %218
  br i1 %246, label %247, label %982

247:                                              ; preds = %216
  %248 = add nsw i32 %226, %29
  %249 = add nsw i32 %233, %31
  br i1 %191, label %250, label %971

250:                                              ; preds = %247, %966
  %251 = phi i64 [ %968, %966 ], [ 0, %247 ]
  %252 = phi i32 [ %967, %966 ], [ %245, %247 ]
  %253 = icmp ugt i64 %251, 7
  %254 = select i1 %253, i32 %20, i32 0
  %255 = trunc nuw nsw i64 %251 to i32
  %256 = shl i32 %255, 2
  %257 = add nsw i32 %249, %256
  %258 = add nsw i32 %257, 4
  %259 = add nsw i32 %257, 8
  %260 = add nsw i32 %257, 12
  %261 = add nsw i32 %256, %126
  %262 = add nsw i32 %261, 4
  %263 = add nsw i32 %261, 8
  %264 = add nsw i32 %261, 12
  %265 = or disjoint i64 %251, 1
  %266 = or disjoint i64 %251, 2
  %267 = or disjoint i64 %251, 3
  br i1 %49, label %285, label %268

268:                                              ; preds = %250
  br i1 %192, label %269, label %966

269:                                              ; preds = %268
  %270 = getelementptr inbounds ptr, ptr %0, i64 %251
  %271 = getelementptr inbounds ptr, ptr %0, i64 %265
  %272 = getelementptr inbounds ptr, ptr %0, i64 %266
  %273 = getelementptr inbounds ptr, ptr %0, i64 %267
  %274 = shl i32 %255, 3
  %275 = and i32 %274, 32
  %276 = trunc i64 %251 to i32
  %277 = shl i32 %276, 3
  %278 = and i32 %277, 32
  %279 = trunc i64 %251 to i32
  %280 = shl i32 %279, 3
  %281 = and i32 %280, 32
  %282 = trunc i64 %251 to i32
  %283 = shl i32 %282, 3
  %284 = and i32 %283, 32
  br label %302

285:                                              ; preds = %250
  br i1 %192, label %286, label %966

286:                                              ; preds = %285
  %287 = getelementptr inbounds ptr, ptr %0, i64 %251
  %288 = getelementptr inbounds ptr, ptr %0, i64 %265
  %289 = getelementptr inbounds ptr, ptr %0, i64 %266
  %290 = getelementptr inbounds ptr, ptr %0, i64 %267
  %291 = shl i32 %255, 3
  %292 = and i32 %291, 32
  %293 = trunc i64 %251 to i32
  %294 = shl i32 %293, 3
  %295 = and i32 %294, 32
  %296 = trunc i64 %251 to i32
  %297 = shl i32 %296, 3
  %298 = and i32 %297, 32
  %299 = trunc i64 %251 to i32
  %300 = shl i32 %299, 3
  %301 = and i32 %300, 32
  br label %706

302:                                              ; preds = %269, %701
  %303 = phi i64 [ 0, %269 ], [ %703, %701 ]
  %304 = phi i32 [ %252, %269 ], [ %702, %701 ]
  %305 = trunc nuw nsw i64 %303 to i32
  %306 = shl i32 %305, 2
  %307 = add nsw i32 %306, %248
  %308 = add nsw i32 %306, %123
  %309 = load ptr, ptr %270, align 8, !tbaa !6
  %310 = getelementptr inbounds i16, ptr %309, i64 %303
  %311 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %312 = tail call ptr %311(ptr noundef %134, i32 noundef signext %261, i32 noundef signext %308, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %313 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %314 = tail call ptr %313(ptr noundef %143, i32 noundef signext %257, i32 noundef signext %307, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %315 = load i16, ptr %312, align 2, !tbaa !35
  %316 = zext i16 %315 to i32
  %317 = mul nsw i32 %194, %316
  %318 = load i16, ptr %314, align 2, !tbaa !35
  %319 = zext i16 %318 to i32
  %320 = mul nsw i32 %196, %319
  %321 = add nsw i32 %320, %317
  %322 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %323 = shl nsw i32 %322, 1
  %324 = add nsw i32 %321, %323
  %325 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %326 = add nsw i32 %325, 1
  %327 = ashr i32 %324, %326
  %328 = add nsw i32 %327, %198
  %329 = tail call signext i32 @clip1a(i32 noundef signext %328) #16
  %330 = getelementptr inbounds i8, ptr %310, i64 2
  %331 = load i16, ptr %310, align 2, !tbaa !35
  %332 = zext i16 %331 to i32
  %333 = and i32 %329, 65535
  %334 = sub nsw i32 %332, %333
  store i32 %334, ptr %18, align 4, !tbaa !19
  %335 = getelementptr inbounds i8, ptr %312, i64 8
  %336 = load i16, ptr %335, align 2, !tbaa !35
  %337 = zext i16 %336 to i32
  %338 = mul nsw i32 %194, %337
  %339 = getelementptr inbounds i8, ptr %314, i64 8
  %340 = load i16, ptr %339, align 2, !tbaa !35
  %341 = zext i16 %340 to i32
  %342 = mul nsw i32 %196, %341
  %343 = add nsw i32 %342, %338
  %344 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %345 = shl nsw i32 %344, 1
  %346 = add nsw i32 %343, %345
  %347 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %348 = add nsw i32 %347, 1
  %349 = ashr i32 %346, %348
  %350 = add nsw i32 %349, %198
  %351 = tail call signext i32 @clip1a(i32 noundef signext %350) #16
  %352 = getelementptr inbounds i8, ptr %310, i64 4
  %353 = load i16, ptr %330, align 2, !tbaa !35
  %354 = zext i16 %353 to i32
  %355 = and i32 %351, 65535
  %356 = sub nsw i32 %354, %355
  store i32 %356, ptr %199, align 4, !tbaa !19
  %357 = getelementptr inbounds i8, ptr %312, i64 16
  %358 = load i16, ptr %357, align 2, !tbaa !35
  %359 = zext i16 %358 to i32
  %360 = mul nsw i32 %194, %359
  %361 = getelementptr inbounds i8, ptr %314, i64 16
  %362 = load i16, ptr %361, align 2, !tbaa !35
  %363 = zext i16 %362 to i32
  %364 = mul nsw i32 %196, %363
  %365 = add nsw i32 %364, %360
  %366 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %367 = shl nsw i32 %366, 1
  %368 = add nsw i32 %365, %367
  %369 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %370 = add nsw i32 %369, 1
  %371 = ashr i32 %368, %370
  %372 = add nsw i32 %371, %198
  %373 = tail call signext i32 @clip1a(i32 noundef signext %372) #16
  %374 = getelementptr inbounds i8, ptr %310, i64 6
  %375 = load i16, ptr %352, align 2, !tbaa !35
  %376 = zext i16 %375 to i32
  %377 = and i32 %373, 65535
  %378 = sub nsw i32 %376, %377
  store i32 %378, ptr %200, align 4, !tbaa !19
  %379 = getelementptr inbounds i8, ptr %312, i64 24
  %380 = load i16, ptr %379, align 2, !tbaa !35
  %381 = zext i16 %380 to i32
  %382 = mul nsw i32 %194, %381
  %383 = getelementptr inbounds i8, ptr %314, i64 24
  %384 = load i16, ptr %383, align 2, !tbaa !35
  %385 = zext i16 %384 to i32
  %386 = mul nsw i32 %196, %385
  %387 = add nsw i32 %386, %382
  %388 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %389 = shl nsw i32 %388, 1
  %390 = add nsw i32 %387, %389
  %391 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %392 = add nsw i32 %391, 1
  %393 = ashr i32 %390, %392
  %394 = add nsw i32 %393, %198
  %395 = tail call signext i32 @clip1a(i32 noundef signext %394) #16
  %396 = load i16, ptr %374, align 2, !tbaa !35
  %397 = zext i16 %396 to i32
  %398 = and i32 %395, 65535
  %399 = sub nsw i32 %397, %398
  store i32 %399, ptr %201, align 4, !tbaa !19
  %400 = load ptr, ptr %271, align 8, !tbaa !6
  %401 = getelementptr inbounds i16, ptr %400, i64 %303
  %402 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %403 = tail call ptr %402(ptr noundef %134, i32 noundef signext %262, i32 noundef signext %308, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %404 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %405 = tail call ptr %404(ptr noundef %143, i32 noundef signext %258, i32 noundef signext %307, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %406 = load i16, ptr %403, align 2, !tbaa !35
  %407 = zext i16 %406 to i32
  %408 = mul nsw i32 %194, %407
  %409 = load i16, ptr %405, align 2, !tbaa !35
  %410 = zext i16 %409 to i32
  %411 = mul nsw i32 %196, %410
  %412 = add nsw i32 %411, %408
  %413 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %414 = shl nsw i32 %413, 1
  %415 = add nsw i32 %412, %414
  %416 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %417 = add nsw i32 %416, 1
  %418 = ashr i32 %415, %417
  %419 = add nsw i32 %418, %198
  %420 = tail call signext i32 @clip1a(i32 noundef signext %419) #16
  %421 = getelementptr inbounds i8, ptr %401, i64 2
  %422 = load i16, ptr %401, align 2, !tbaa !35
  %423 = zext i16 %422 to i32
  %424 = and i32 %420, 65535
  %425 = sub nsw i32 %423, %424
  store i32 %425, ptr %202, align 4, !tbaa !19
  %426 = getelementptr inbounds i8, ptr %403, i64 8
  %427 = load i16, ptr %426, align 2, !tbaa !35
  %428 = zext i16 %427 to i32
  %429 = mul nsw i32 %194, %428
  %430 = getelementptr inbounds i8, ptr %405, i64 8
  %431 = load i16, ptr %430, align 2, !tbaa !35
  %432 = zext i16 %431 to i32
  %433 = mul nsw i32 %196, %432
  %434 = add nsw i32 %433, %429
  %435 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %436 = shl nsw i32 %435, 1
  %437 = add nsw i32 %434, %436
  %438 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %439 = add nsw i32 %438, 1
  %440 = ashr i32 %437, %439
  %441 = add nsw i32 %440, %198
  %442 = tail call signext i32 @clip1a(i32 noundef signext %441) #16
  %443 = getelementptr inbounds i8, ptr %401, i64 4
  %444 = load i16, ptr %421, align 2, !tbaa !35
  %445 = zext i16 %444 to i32
  %446 = and i32 %442, 65535
  %447 = sub nsw i32 %445, %446
  store i32 %447, ptr %203, align 4, !tbaa !19
  %448 = getelementptr inbounds i8, ptr %403, i64 16
  %449 = load i16, ptr %448, align 2, !tbaa !35
  %450 = zext i16 %449 to i32
  %451 = mul nsw i32 %194, %450
  %452 = getelementptr inbounds i8, ptr %405, i64 16
  %453 = load i16, ptr %452, align 2, !tbaa !35
  %454 = zext i16 %453 to i32
  %455 = mul nsw i32 %196, %454
  %456 = add nsw i32 %455, %451
  %457 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %458 = shl nsw i32 %457, 1
  %459 = add nsw i32 %456, %458
  %460 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %461 = add nsw i32 %460, 1
  %462 = ashr i32 %459, %461
  %463 = add nsw i32 %462, %198
  %464 = tail call signext i32 @clip1a(i32 noundef signext %463) #16
  %465 = getelementptr inbounds i8, ptr %401, i64 6
  %466 = load i16, ptr %443, align 2, !tbaa !35
  %467 = zext i16 %466 to i32
  %468 = and i32 %464, 65535
  %469 = sub nsw i32 %467, %468
  store i32 %469, ptr %204, align 4, !tbaa !19
  %470 = getelementptr inbounds i8, ptr %403, i64 24
  %471 = load i16, ptr %470, align 2, !tbaa !35
  %472 = zext i16 %471 to i32
  %473 = mul nsw i32 %194, %472
  %474 = getelementptr inbounds i8, ptr %405, i64 24
  %475 = load i16, ptr %474, align 2, !tbaa !35
  %476 = zext i16 %475 to i32
  %477 = mul nsw i32 %196, %476
  %478 = add nsw i32 %477, %473
  %479 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %480 = shl nsw i32 %479, 1
  %481 = add nsw i32 %478, %480
  %482 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %483 = add nsw i32 %482, 1
  %484 = ashr i32 %481, %483
  %485 = add nsw i32 %484, %198
  %486 = tail call signext i32 @clip1a(i32 noundef signext %485) #16
  %487 = load i16, ptr %465, align 2, !tbaa !35
  %488 = zext i16 %487 to i32
  %489 = and i32 %486, 65535
  %490 = sub nsw i32 %488, %489
  store i32 %490, ptr %205, align 4, !tbaa !19
  %491 = load ptr, ptr %272, align 8, !tbaa !6
  %492 = getelementptr inbounds i16, ptr %491, i64 %303
  %493 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %494 = tail call ptr %493(ptr noundef %134, i32 noundef signext %263, i32 noundef signext %308, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %495 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %496 = tail call ptr %495(ptr noundef %143, i32 noundef signext %259, i32 noundef signext %307, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %497 = load i16, ptr %494, align 2, !tbaa !35
  %498 = zext i16 %497 to i32
  %499 = mul nsw i32 %194, %498
  %500 = load i16, ptr %496, align 2, !tbaa !35
  %501 = zext i16 %500 to i32
  %502 = mul nsw i32 %196, %501
  %503 = add nsw i32 %502, %499
  %504 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %505 = shl nsw i32 %504, 1
  %506 = add nsw i32 %503, %505
  %507 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %508 = add nsw i32 %507, 1
  %509 = ashr i32 %506, %508
  %510 = add nsw i32 %509, %198
  %511 = tail call signext i32 @clip1a(i32 noundef signext %510) #16
  %512 = getelementptr inbounds i8, ptr %492, i64 2
  %513 = load i16, ptr %492, align 2, !tbaa !35
  %514 = zext i16 %513 to i32
  %515 = and i32 %511, 65535
  %516 = sub nsw i32 %514, %515
  store i32 %516, ptr %206, align 4, !tbaa !19
  %517 = getelementptr inbounds i8, ptr %494, i64 8
  %518 = load i16, ptr %517, align 2, !tbaa !35
  %519 = zext i16 %518 to i32
  %520 = mul nsw i32 %194, %519
  %521 = getelementptr inbounds i8, ptr %496, i64 8
  %522 = load i16, ptr %521, align 2, !tbaa !35
  %523 = zext i16 %522 to i32
  %524 = mul nsw i32 %196, %523
  %525 = add nsw i32 %524, %520
  %526 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %527 = shl nsw i32 %526, 1
  %528 = add nsw i32 %525, %527
  %529 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %530 = add nsw i32 %529, 1
  %531 = ashr i32 %528, %530
  %532 = add nsw i32 %531, %198
  %533 = tail call signext i32 @clip1a(i32 noundef signext %532) #16
  %534 = getelementptr inbounds i8, ptr %492, i64 4
  %535 = load i16, ptr %512, align 2, !tbaa !35
  %536 = zext i16 %535 to i32
  %537 = and i32 %533, 65535
  %538 = sub nsw i32 %536, %537
  store i32 %538, ptr %207, align 4, !tbaa !19
  %539 = getelementptr inbounds i8, ptr %494, i64 16
  %540 = load i16, ptr %539, align 2, !tbaa !35
  %541 = zext i16 %540 to i32
  %542 = mul nsw i32 %194, %541
  %543 = getelementptr inbounds i8, ptr %496, i64 16
  %544 = load i16, ptr %543, align 2, !tbaa !35
  %545 = zext i16 %544 to i32
  %546 = mul nsw i32 %196, %545
  %547 = add nsw i32 %546, %542
  %548 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %549 = shl nsw i32 %548, 1
  %550 = add nsw i32 %547, %549
  %551 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %552 = add nsw i32 %551, 1
  %553 = ashr i32 %550, %552
  %554 = add nsw i32 %553, %198
  %555 = tail call signext i32 @clip1a(i32 noundef signext %554) #16
  %556 = getelementptr inbounds i8, ptr %492, i64 6
  %557 = load i16, ptr %534, align 2, !tbaa !35
  %558 = zext i16 %557 to i32
  %559 = and i32 %555, 65535
  %560 = sub nsw i32 %558, %559
  store i32 %560, ptr %208, align 4, !tbaa !19
  %561 = getelementptr inbounds i8, ptr %494, i64 24
  %562 = load i16, ptr %561, align 2, !tbaa !35
  %563 = zext i16 %562 to i32
  %564 = mul nsw i32 %194, %563
  %565 = getelementptr inbounds i8, ptr %496, i64 24
  %566 = load i16, ptr %565, align 2, !tbaa !35
  %567 = zext i16 %566 to i32
  %568 = mul nsw i32 %196, %567
  %569 = add nsw i32 %568, %564
  %570 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %571 = shl nsw i32 %570, 1
  %572 = add nsw i32 %569, %571
  %573 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %574 = add nsw i32 %573, 1
  %575 = ashr i32 %572, %574
  %576 = add nsw i32 %575, %198
  %577 = tail call signext i32 @clip1a(i32 noundef signext %576) #16
  %578 = load i16, ptr %556, align 2, !tbaa !35
  %579 = zext i16 %578 to i32
  %580 = and i32 %577, 65535
  %581 = sub nsw i32 %579, %580
  store i32 %581, ptr %209, align 4, !tbaa !19
  %582 = load ptr, ptr %273, align 8, !tbaa !6
  %583 = getelementptr inbounds i16, ptr %582, i64 %303
  %584 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %585 = tail call ptr %584(ptr noundef %134, i32 noundef signext %264, i32 noundef signext %308, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %586 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %587 = tail call ptr %586(ptr noundef %143, i32 noundef signext %260, i32 noundef signext %307, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %588 = load i16, ptr %585, align 2, !tbaa !35
  %589 = zext i16 %588 to i32
  %590 = mul nsw i32 %194, %589
  %591 = load i16, ptr %587, align 2, !tbaa !35
  %592 = zext i16 %591 to i32
  %593 = mul nsw i32 %196, %592
  %594 = add nsw i32 %593, %590
  %595 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %596 = shl nsw i32 %595, 1
  %597 = add nsw i32 %594, %596
  %598 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %599 = add nsw i32 %598, 1
  %600 = ashr i32 %597, %599
  %601 = add nsw i32 %600, %198
  %602 = tail call signext i32 @clip1a(i32 noundef signext %601) #16
  %603 = getelementptr inbounds i8, ptr %583, i64 2
  %604 = load i16, ptr %583, align 2, !tbaa !35
  %605 = zext i16 %604 to i32
  %606 = and i32 %602, 65535
  %607 = sub nsw i32 %605, %606
  store i32 %607, ptr %210, align 4, !tbaa !19
  %608 = getelementptr inbounds i8, ptr %585, i64 8
  %609 = load i16, ptr %608, align 2, !tbaa !35
  %610 = zext i16 %609 to i32
  %611 = mul nsw i32 %194, %610
  %612 = getelementptr inbounds i8, ptr %587, i64 8
  %613 = load i16, ptr %612, align 2, !tbaa !35
  %614 = zext i16 %613 to i32
  %615 = mul nsw i32 %196, %614
  %616 = add nsw i32 %615, %611
  %617 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %618 = shl nsw i32 %617, 1
  %619 = add nsw i32 %616, %618
  %620 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %621 = add nsw i32 %620, 1
  %622 = ashr i32 %619, %621
  %623 = add nsw i32 %622, %198
  %624 = tail call signext i32 @clip1a(i32 noundef signext %623) #16
  %625 = getelementptr inbounds i8, ptr %583, i64 4
  %626 = load i16, ptr %603, align 2, !tbaa !35
  %627 = zext i16 %626 to i32
  %628 = and i32 %624, 65535
  %629 = sub nsw i32 %627, %628
  store i32 %629, ptr %211, align 4, !tbaa !19
  %630 = getelementptr inbounds i8, ptr %585, i64 16
  %631 = load i16, ptr %630, align 2, !tbaa !35
  %632 = zext i16 %631 to i32
  %633 = mul nsw i32 %194, %632
  %634 = getelementptr inbounds i8, ptr %587, i64 16
  %635 = load i16, ptr %634, align 2, !tbaa !35
  %636 = zext i16 %635 to i32
  %637 = mul nsw i32 %196, %636
  %638 = add nsw i32 %637, %633
  %639 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %640 = shl nsw i32 %639, 1
  %641 = add nsw i32 %638, %640
  %642 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %643 = add nsw i32 %642, 1
  %644 = ashr i32 %641, %643
  %645 = add nsw i32 %644, %198
  %646 = tail call signext i32 @clip1a(i32 noundef signext %645) #16
  %647 = getelementptr inbounds i8, ptr %583, i64 6
  %648 = load i16, ptr %625, align 2, !tbaa !35
  %649 = zext i16 %648 to i32
  %650 = and i32 %646, 65535
  %651 = sub nsw i32 %649, %650
  store i32 %651, ptr %212, align 4, !tbaa !19
  %652 = getelementptr inbounds i8, ptr %585, i64 24
  %653 = load i16, ptr %652, align 2, !tbaa !35
  %654 = zext i16 %653 to i32
  %655 = mul nsw i32 %194, %654
  %656 = getelementptr inbounds i8, ptr %587, i64 24
  %657 = load i16, ptr %656, align 2, !tbaa !35
  %658 = zext i16 %657 to i32
  %659 = mul nsw i32 %196, %658
  %660 = add nsw i32 %659, %655
  %661 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %662 = shl nsw i32 %661, 1
  %663 = add nsw i32 %660, %662
  %664 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %665 = add nsw i32 %664, 1
  %666 = ashr i32 %663, %665
  %667 = add nsw i32 %666, %198
  %668 = tail call signext i32 @clip1a(i32 noundef signext %667) #16
  %669 = load i16, ptr %647, align 2, !tbaa !35
  %670 = zext i16 %669 to i32
  %671 = and i32 %668, 65535
  %672 = sub nsw i32 %670, %671
  store i32 %672, ptr %213, align 4, !tbaa !19
  br i1 %120, label %680, label %673

673:                                              ; preds = %302
  %674 = load ptr, ptr @input, align 8, !tbaa !6
  %675 = getelementptr inbounds i8, ptr %674, i64 24
  %676 = load i32, ptr %675, align 8, !tbaa !54
  %677 = call signext i32 @SATD(ptr noundef nonnull %18, i32 noundef signext %676)
  %678 = add nsw i32 %677, %304
  %679 = icmp sgt i32 %678, %218
  br i1 %679, label %976, label %701

680:                                              ; preds = %302
  %681 = and i32 %305, 4
  %682 = icmp ugt i64 %303, 7
  %683 = select i1 %682, i32 64, i32 0
  %684 = or disjoint i32 %681, %254
  %685 = add nuw nsw i32 %684, %683
  %686 = or disjoint i32 %275, %685
  %687 = zext nneg i32 %686 to i64
  %688 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %688, ptr noundef nonnull align 4 dereferenceable(16) %18, i64 16, i1 false)
  %689 = or disjoint i32 %278, %685
  %690 = or disjoint i32 %689, 8
  %691 = zext nneg i32 %690 to i64
  %692 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %692, ptr noundef nonnull align 4 dereferenceable(16) %202, i64 16, i1 false)
  %693 = or disjoint i32 %281, %685
  %694 = or disjoint i32 %693, 16
  %695 = zext nneg i32 %694 to i64
  %696 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %696, ptr noundef nonnull align 4 dereferenceable(16) %206, i64 16, i1 false)
  %697 = or disjoint i32 %284, %685
  %698 = or disjoint i32 %697, 24
  %699 = zext nneg i32 %698 to i64
  %700 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %700, ptr noundef nonnull align 4 dereferenceable(16) %210, i64 16, i1 false)
  br label %701

701:                                              ; preds = %680, %673
  %702 = phi i32 [ %678, %673 ], [ %304, %680 ]
  %703 = add nuw nsw i64 %303, 4
  %704 = trunc nuw i64 %703 to i32
  %705 = icmp sgt i32 %25, %704
  br i1 %705, label %302, label %966

706:                                              ; preds = %286, %961
  %707 = phi i64 [ 0, %286 ], [ %963, %961 ]
  %708 = phi i32 [ %252, %286 ], [ %962, %961 ]
  %709 = trunc nuw nsw i64 %707 to i32
  %710 = shl i32 %709, 2
  %711 = add nsw i32 %710, %248
  %712 = add nsw i32 %710, %123
  %713 = load ptr, ptr %287, align 8, !tbaa !6
  %714 = getelementptr inbounds i16, ptr %713, i64 %707
  %715 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %716 = tail call ptr %715(ptr noundef %134, i32 noundef signext %261, i32 noundef signext %712, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %717 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %718 = tail call ptr %717(ptr noundef %143, i32 noundef signext %257, i32 noundef signext %711, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %719 = getelementptr inbounds i8, ptr %714, i64 2
  %720 = load i16, ptr %714, align 2, !tbaa !35
  %721 = zext i16 %720 to i32
  %722 = load i16, ptr %716, align 2, !tbaa !35
  %723 = zext i16 %722 to i32
  %724 = load i16, ptr %718, align 2, !tbaa !35
  %725 = zext i16 %724 to i32
  %726 = add nuw nsw i32 %723, 1
  %727 = add nuw nsw i32 %726, %725
  %728 = lshr i32 %727, 1
  %729 = sub nsw i32 %721, %728
  store i32 %729, ptr %18, align 4, !tbaa !19
  %730 = getelementptr inbounds i8, ptr %714, i64 4
  %731 = load i16, ptr %719, align 2, !tbaa !35
  %732 = zext i16 %731 to i32
  %733 = getelementptr inbounds i8, ptr %716, i64 8
  %734 = load i16, ptr %733, align 2, !tbaa !35
  %735 = zext i16 %734 to i32
  %736 = getelementptr inbounds i8, ptr %718, i64 8
  %737 = load i16, ptr %736, align 2, !tbaa !35
  %738 = zext i16 %737 to i32
  %739 = add nuw nsw i32 %735, 1
  %740 = add nuw nsw i32 %739, %738
  %741 = lshr i32 %740, 1
  %742 = sub nsw i32 %732, %741
  store i32 %742, ptr %199, align 4, !tbaa !19
  %743 = getelementptr inbounds i8, ptr %714, i64 6
  %744 = load i16, ptr %730, align 2, !tbaa !35
  %745 = zext i16 %744 to i32
  %746 = getelementptr inbounds i8, ptr %716, i64 16
  %747 = load i16, ptr %746, align 2, !tbaa !35
  %748 = zext i16 %747 to i32
  %749 = getelementptr inbounds i8, ptr %718, i64 16
  %750 = load i16, ptr %749, align 2, !tbaa !35
  %751 = zext i16 %750 to i32
  %752 = add nuw nsw i32 %748, 1
  %753 = add nuw nsw i32 %752, %751
  %754 = lshr i32 %753, 1
  %755 = sub nsw i32 %745, %754
  store i32 %755, ptr %200, align 4, !tbaa !19
  %756 = load i16, ptr %743, align 2, !tbaa !35
  %757 = zext i16 %756 to i32
  %758 = getelementptr inbounds i8, ptr %716, i64 24
  %759 = load i16, ptr %758, align 2, !tbaa !35
  %760 = zext i16 %759 to i32
  %761 = getelementptr inbounds i8, ptr %718, i64 24
  %762 = load i16, ptr %761, align 2, !tbaa !35
  %763 = zext i16 %762 to i32
  %764 = add nuw nsw i32 %760, 1
  %765 = add nuw nsw i32 %764, %763
  %766 = lshr i32 %765, 1
  %767 = sub nsw i32 %757, %766
  store i32 %767, ptr %201, align 4, !tbaa !19
  %768 = load ptr, ptr %288, align 8, !tbaa !6
  %769 = getelementptr inbounds i16, ptr %768, i64 %707
  %770 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %771 = tail call ptr %770(ptr noundef %134, i32 noundef signext %262, i32 noundef signext %712, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %772 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %773 = tail call ptr %772(ptr noundef %143, i32 noundef signext %258, i32 noundef signext %711, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %774 = getelementptr inbounds i8, ptr %769, i64 2
  %775 = load i16, ptr %769, align 2, !tbaa !35
  %776 = zext i16 %775 to i32
  %777 = load i16, ptr %771, align 2, !tbaa !35
  %778 = zext i16 %777 to i32
  %779 = load i16, ptr %773, align 2, !tbaa !35
  %780 = zext i16 %779 to i32
  %781 = add nuw nsw i32 %778, 1
  %782 = add nuw nsw i32 %781, %780
  %783 = lshr i32 %782, 1
  %784 = sub nsw i32 %776, %783
  store i32 %784, ptr %202, align 4, !tbaa !19
  %785 = getelementptr inbounds i8, ptr %769, i64 4
  %786 = load i16, ptr %774, align 2, !tbaa !35
  %787 = zext i16 %786 to i32
  %788 = getelementptr inbounds i8, ptr %771, i64 8
  %789 = load i16, ptr %788, align 2, !tbaa !35
  %790 = zext i16 %789 to i32
  %791 = getelementptr inbounds i8, ptr %773, i64 8
  %792 = load i16, ptr %791, align 2, !tbaa !35
  %793 = zext i16 %792 to i32
  %794 = add nuw nsw i32 %790, 1
  %795 = add nuw nsw i32 %794, %793
  %796 = lshr i32 %795, 1
  %797 = sub nsw i32 %787, %796
  store i32 %797, ptr %203, align 4, !tbaa !19
  %798 = getelementptr inbounds i8, ptr %769, i64 6
  %799 = load i16, ptr %785, align 2, !tbaa !35
  %800 = zext i16 %799 to i32
  %801 = getelementptr inbounds i8, ptr %771, i64 16
  %802 = load i16, ptr %801, align 2, !tbaa !35
  %803 = zext i16 %802 to i32
  %804 = getelementptr inbounds i8, ptr %773, i64 16
  %805 = load i16, ptr %804, align 2, !tbaa !35
  %806 = zext i16 %805 to i32
  %807 = add nuw nsw i32 %803, 1
  %808 = add nuw nsw i32 %807, %806
  %809 = lshr i32 %808, 1
  %810 = sub nsw i32 %800, %809
  store i32 %810, ptr %204, align 4, !tbaa !19
  %811 = load i16, ptr %798, align 2, !tbaa !35
  %812 = zext i16 %811 to i32
  %813 = getelementptr inbounds i8, ptr %771, i64 24
  %814 = load i16, ptr %813, align 2, !tbaa !35
  %815 = zext i16 %814 to i32
  %816 = getelementptr inbounds i8, ptr %773, i64 24
  %817 = load i16, ptr %816, align 2, !tbaa !35
  %818 = zext i16 %817 to i32
  %819 = add nuw nsw i32 %815, 1
  %820 = add nuw nsw i32 %819, %818
  %821 = lshr i32 %820, 1
  %822 = sub nsw i32 %812, %821
  store i32 %822, ptr %205, align 4, !tbaa !19
  %823 = load ptr, ptr %289, align 8, !tbaa !6
  %824 = getelementptr inbounds i16, ptr %823, i64 %707
  %825 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %826 = tail call ptr %825(ptr noundef %134, i32 noundef signext %263, i32 noundef signext %712, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %827 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %828 = tail call ptr %827(ptr noundef %143, i32 noundef signext %259, i32 noundef signext %711, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %829 = getelementptr inbounds i8, ptr %824, i64 2
  %830 = load i16, ptr %824, align 2, !tbaa !35
  %831 = zext i16 %830 to i32
  %832 = load i16, ptr %826, align 2, !tbaa !35
  %833 = zext i16 %832 to i32
  %834 = load i16, ptr %828, align 2, !tbaa !35
  %835 = zext i16 %834 to i32
  %836 = add nuw nsw i32 %833, 1
  %837 = add nuw nsw i32 %836, %835
  %838 = lshr i32 %837, 1
  %839 = sub nsw i32 %831, %838
  store i32 %839, ptr %206, align 4, !tbaa !19
  %840 = getelementptr inbounds i8, ptr %824, i64 4
  %841 = load i16, ptr %829, align 2, !tbaa !35
  %842 = zext i16 %841 to i32
  %843 = getelementptr inbounds i8, ptr %826, i64 8
  %844 = load i16, ptr %843, align 2, !tbaa !35
  %845 = zext i16 %844 to i32
  %846 = getelementptr inbounds i8, ptr %828, i64 8
  %847 = load i16, ptr %846, align 2, !tbaa !35
  %848 = zext i16 %847 to i32
  %849 = add nuw nsw i32 %845, 1
  %850 = add nuw nsw i32 %849, %848
  %851 = lshr i32 %850, 1
  %852 = sub nsw i32 %842, %851
  store i32 %852, ptr %207, align 4, !tbaa !19
  %853 = getelementptr inbounds i8, ptr %824, i64 6
  %854 = load i16, ptr %840, align 2, !tbaa !35
  %855 = zext i16 %854 to i32
  %856 = getelementptr inbounds i8, ptr %826, i64 16
  %857 = load i16, ptr %856, align 2, !tbaa !35
  %858 = zext i16 %857 to i32
  %859 = getelementptr inbounds i8, ptr %828, i64 16
  %860 = load i16, ptr %859, align 2, !tbaa !35
  %861 = zext i16 %860 to i32
  %862 = add nuw nsw i32 %858, 1
  %863 = add nuw nsw i32 %862, %861
  %864 = lshr i32 %863, 1
  %865 = sub nsw i32 %855, %864
  store i32 %865, ptr %208, align 4, !tbaa !19
  %866 = load i16, ptr %853, align 2, !tbaa !35
  %867 = zext i16 %866 to i32
  %868 = getelementptr inbounds i8, ptr %826, i64 24
  %869 = load i16, ptr %868, align 2, !tbaa !35
  %870 = zext i16 %869 to i32
  %871 = getelementptr inbounds i8, ptr %828, i64 24
  %872 = load i16, ptr %871, align 2, !tbaa !35
  %873 = zext i16 %872 to i32
  %874 = add nuw nsw i32 %870, 1
  %875 = add nuw nsw i32 %874, %873
  %876 = lshr i32 %875, 1
  %877 = sub nsw i32 %867, %876
  store i32 %877, ptr %209, align 4, !tbaa !19
  %878 = load ptr, ptr %290, align 8, !tbaa !6
  %879 = getelementptr inbounds i16, ptr %878, i64 %707
  %880 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %881 = tail call ptr %880(ptr noundef %134, i32 noundef signext %264, i32 noundef signext %712, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %882 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %883 = tail call ptr %882(ptr noundef %143, i32 noundef signext %260, i32 noundef signext %711, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %884 = getelementptr inbounds i8, ptr %879, i64 2
  %885 = load i16, ptr %879, align 2, !tbaa !35
  %886 = zext i16 %885 to i32
  %887 = load i16, ptr %881, align 2, !tbaa !35
  %888 = zext i16 %887 to i32
  %889 = load i16, ptr %883, align 2, !tbaa !35
  %890 = zext i16 %889 to i32
  %891 = add nuw nsw i32 %888, 1
  %892 = add nuw nsw i32 %891, %890
  %893 = lshr i32 %892, 1
  %894 = sub nsw i32 %886, %893
  store i32 %894, ptr %210, align 4, !tbaa !19
  %895 = getelementptr inbounds i8, ptr %879, i64 4
  %896 = load i16, ptr %884, align 2, !tbaa !35
  %897 = zext i16 %896 to i32
  %898 = getelementptr inbounds i8, ptr %881, i64 8
  %899 = load i16, ptr %898, align 2, !tbaa !35
  %900 = zext i16 %899 to i32
  %901 = getelementptr inbounds i8, ptr %883, i64 8
  %902 = load i16, ptr %901, align 2, !tbaa !35
  %903 = zext i16 %902 to i32
  %904 = add nuw nsw i32 %900, 1
  %905 = add nuw nsw i32 %904, %903
  %906 = lshr i32 %905, 1
  %907 = sub nsw i32 %897, %906
  store i32 %907, ptr %211, align 4, !tbaa !19
  %908 = getelementptr inbounds i8, ptr %879, i64 6
  %909 = load i16, ptr %895, align 2, !tbaa !35
  %910 = zext i16 %909 to i32
  %911 = getelementptr inbounds i8, ptr %881, i64 16
  %912 = load i16, ptr %911, align 2, !tbaa !35
  %913 = zext i16 %912 to i32
  %914 = getelementptr inbounds i8, ptr %883, i64 16
  %915 = load i16, ptr %914, align 2, !tbaa !35
  %916 = zext i16 %915 to i32
  %917 = add nuw nsw i32 %913, 1
  %918 = add nuw nsw i32 %917, %916
  %919 = lshr i32 %918, 1
  %920 = sub nsw i32 %910, %919
  store i32 %920, ptr %212, align 4, !tbaa !19
  %921 = load i16, ptr %908, align 2, !tbaa !35
  %922 = zext i16 %921 to i32
  %923 = getelementptr inbounds i8, ptr %881, i64 24
  %924 = load i16, ptr %923, align 2, !tbaa !35
  %925 = zext i16 %924 to i32
  %926 = getelementptr inbounds i8, ptr %883, i64 24
  %927 = load i16, ptr %926, align 2, !tbaa !35
  %928 = zext i16 %927 to i32
  %929 = add nuw nsw i32 %925, 1
  %930 = add nuw nsw i32 %929, %928
  %931 = lshr i32 %930, 1
  %932 = sub nsw i32 %922, %931
  store i32 %932, ptr %213, align 4, !tbaa !19
  br i1 %120, label %940, label %933

933:                                              ; preds = %706
  %934 = load ptr, ptr @input, align 8, !tbaa !6
  %935 = getelementptr inbounds i8, ptr %934, i64 24
  %936 = load i32, ptr %935, align 8, !tbaa !54
  %937 = call signext i32 @SATD(ptr noundef nonnull %18, i32 noundef signext %936)
  %938 = add nsw i32 %937, %708
  %939 = icmp sgt i32 %938, %218
  br i1 %939, label %976, label %961

940:                                              ; preds = %706
  %941 = and i32 %709, 4
  %942 = icmp ugt i64 %707, 7
  %943 = select i1 %942, i32 64, i32 0
  %944 = or disjoint i32 %941, %254
  %945 = add nuw nsw i32 %944, %943
  %946 = or disjoint i32 %292, %945
  %947 = zext nneg i32 %946 to i64
  %948 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %948, ptr noundef nonnull align 4 dereferenceable(16) %18, i64 16, i1 false)
  %949 = or disjoint i32 %295, %945
  %950 = or disjoint i32 %949, 8
  %951 = zext nneg i32 %950 to i64
  %952 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %952, ptr noundef nonnull align 4 dereferenceable(16) %202, i64 16, i1 false)
  %953 = or disjoint i32 %298, %945
  %954 = or disjoint i32 %953, 16
  %955 = zext nneg i32 %954 to i64
  %956 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %956, ptr noundef nonnull align 4 dereferenceable(16) %206, i64 16, i1 false)
  %957 = or disjoint i32 %301, %945
  %958 = or disjoint i32 %957, 24
  %959 = zext nneg i32 %958 to i64
  %960 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %960, ptr noundef nonnull align 4 dereferenceable(16) %210, i64 16, i1 false)
  br label %961

961:                                              ; preds = %940, %933
  %962 = phi i32 [ %938, %933 ], [ %708, %940 ]
  %963 = add nuw nsw i64 %707, 4
  %964 = trunc nuw i64 %963 to i32
  %965 = icmp sgt i32 %25, %964
  br i1 %965, label %706, label %966

966:                                              ; preds = %701, %961, %268, %285
  %967 = phi i32 [ %252, %285 ], [ %252, %268 ], [ %962, %961 ], [ %702, %701 ]
  %968 = add nuw nsw i64 %251, 4
  %969 = trunc nuw i64 %968 to i32
  %970 = icmp sgt i32 %27, %969
  br i1 %970, label %250, label %971

971:                                              ; preds = %966, %247
  %972 = phi i32 [ %245, %247 ], [ %967, %966 ]
  br i1 %120, label %973, label %976

973:                                              ; preds = %971
  %974 = call signext i32 @find_SATD(ptr noundef nonnull %17, i32 noundef signext %5)
  %975 = add nsw i32 %974, %972
  br label %976

976:                                              ; preds = %673, %933, %973, %971
  %977 = phi i32 [ %975, %973 ], [ %972, %971 ], [ %938, %933 ], [ %678, %673 ]
  %978 = icmp slt i32 %977, %218
  %979 = trunc nuw nsw i64 %217 to i32
  %980 = select i1 %978, i32 %979, i32 %219
  %981 = tail call i32 @llvm.smin.i32(i32 %977, i32 %218)
  br label %982

982:                                              ; preds = %976, %216
  %983 = phi i32 [ %219, %216 ], [ %980, %976 ]
  %984 = phi i32 [ %218, %216 ], [ %981, %976 ]
  %985 = add nuw nsw i64 %217, 1
  %986 = icmp eq i64 %985, %215
  br i1 %986, label %987, label %216

987:                                              ; preds = %982
  %988 = icmp eq i32 %983, 0
  br i1 %988, label %1001, label %989

989:                                              ; preds = %987
  %990 = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !6
  %991 = sext i32 %983 to i64
  %992 = getelementptr inbounds i16, ptr %990, i64 %991
  %993 = load i16, ptr %992, align 2, !tbaa !35
  %994 = load i16, ptr %8, align 2, !tbaa !35
  %995 = add i16 %994, %993
  store i16 %995, ptr %8, align 2, !tbaa !35
  %996 = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !6
  %997 = getelementptr inbounds i16, ptr %996, i64 %991
  %998 = load i16, ptr %997, align 2, !tbaa !35
  %999 = load i16, ptr %9, align 2, !tbaa !35
  %1000 = add i16 %999, %998
  store i16 %1000, ptr %9, align 2, !tbaa !35
  br label %1001

1001:                                             ; preds = %185, %989, %987
  %1002 = phi i32 [ %984, %989 ], [ %984, %987 ], [ %14, %185 ]
  %1003 = load ptr, ptr @input, align 8, !tbaa !6
  %1004 = getelementptr inbounds i8, ptr %1003, i64 3892
  %1005 = load i32, ptr %1004, align 4, !tbaa !55
  %1006 = icmp ne i32 %1005, 0
  %1007 = and i1 %117, %1006
  br i1 %1007, label %1008, label %1012

1008:                                             ; preds = %1001
  %1009 = getelementptr inbounds i8, ptr %1003, i64 24
  %1010 = load i32, ptr %1009, align 8, !tbaa !54
  %1011 = icmp ne i32 %1010, 0
  br label %1012

1012:                                             ; preds = %1008, %1001
  %1013 = phi i1 [ false, %1001 ], [ %1011, %1008 ]
  %1014 = load i16, ptr %8, align 2, !tbaa !35
  %1015 = sext i16 %1014 to i32
  %1016 = add nsw i32 %29, %1015
  %1017 = icmp sgt i32 %1016, 0
  %1018 = icmp slt i32 %1016, %154
  %1019 = select i1 %1017, i1 %1018, i1 false
  br i1 %1019, label %1020, label %1027

1020:                                             ; preds = %1012
  %1021 = load i16, ptr %9, align 2, !tbaa !35
  %1022 = sext i16 %1021 to i32
  %1023 = add nsw i32 %31, %1022
  %1024 = icmp sgt i32 %1023, 0
  %1025 = icmp slt i32 %1023, %157
  %1026 = select i1 %1024, i1 %1025, i1 false
  br i1 %1026, label %1028, label %1027

1027:                                             ; preds = %1020, %1012
  br label %1028

1028:                                             ; preds = %1020, %1027
  %1029 = phi ptr [ @UMVLine4X, %1027 ], [ @FastLine4X, %1020 ]
  store ptr %1029, ptr @get_line_p2, align 8, !tbaa !6
  %1030 = load i16, ptr %10, align 2, !tbaa !35
  %1031 = sext i16 %1030 to i32
  %1032 = add nsw i32 %29, %1031
  %1033 = icmp sgt i32 %1032, 0
  %1034 = icmp slt i32 %1032, %154
  %1035 = select i1 %1033, i1 %1034, i1 false
  br i1 %1035, label %1036, label %1043

1036:                                             ; preds = %1028
  %1037 = load i16, ptr %11, align 2, !tbaa !35
  %1038 = sext i16 %1037 to i32
  %1039 = add nsw i32 %31, %1038
  %1040 = icmp sgt i32 %1039, 0
  %1041 = icmp slt i32 %1039, %157
  %1042 = select i1 %1040, i1 %1041, i1 false
  br i1 %1042, label %1044, label %1043

1043:                                             ; preds = %1036, %1028
  br label %1044

1044:                                             ; preds = %1036, %1043
  %1045 = phi ptr [ @UMVLine4X, %1043 ], [ @FastLine4X, %1036 ]
  store ptr %1045, ptr @get_line_p1, align 8, !tbaa !6
  %1046 = icmp sgt i32 %13, 1
  br i1 %1046, label %1047, label %1859

1047:                                             ; preds = %1044
  %1048 = sext i16 %6 to i32
  %1049 = sext i16 %7 to i32
  %1050 = icmp sgt i32 %27, 0
  %1051 = icmp sgt i32 %25, 0
  %1052 = shl i32 %104, 16
  %1053 = ashr exact i32 %1052, 16
  %1054 = shl i32 %105, 16
  %1055 = ashr exact i32 %1054, 16
  %1056 = shl i32 %113, 16
  %1057 = ashr exact i32 %1056, 16
  %1058 = getelementptr inbounds i8, ptr %18, i64 4
  %1059 = getelementptr inbounds i8, ptr %18, i64 8
  %1060 = getelementptr inbounds i8, ptr %18, i64 12
  %1061 = getelementptr inbounds i8, ptr %18, i64 16
  %1062 = getelementptr inbounds i8, ptr %18, i64 20
  %1063 = getelementptr inbounds i8, ptr %18, i64 24
  %1064 = getelementptr inbounds i8, ptr %18, i64 28
  %1065 = getelementptr inbounds i8, ptr %18, i64 32
  %1066 = getelementptr inbounds i8, ptr %18, i64 36
  %1067 = getelementptr inbounds i8, ptr %18, i64 40
  %1068 = getelementptr inbounds i8, ptr %18, i64 44
  %1069 = getelementptr inbounds i8, ptr %18, i64 48
  %1070 = getelementptr inbounds i8, ptr %18, i64 52
  %1071 = getelementptr inbounds i8, ptr %18, i64 56
  %1072 = getelementptr inbounds i8, ptr %18, i64 60
  %1073 = zext nneg i32 %13 to i64
  br label %1074

1074:                                             ; preds = %1047, %1840
  %1075 = phi i64 [ 1, %1047 ], [ %1843, %1840 ]
  %1076 = phi i32 [ %1002, %1047 ], [ %1842, %1840 ]
  %1077 = phi i32 [ 0, %1047 ], [ %1841, %1840 ]
  %1078 = load i16, ptr %8, align 2, !tbaa !35
  %1079 = sext i16 %1078 to i32
  %1080 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %1081 = getelementptr inbounds i16, ptr %1080, i64 %1075
  %1082 = load i16, ptr %1081, align 2, !tbaa !35
  %1083 = sext i16 %1082 to i32
  %1084 = add nsw i32 %1083, %1079
  %1085 = load i16, ptr %9, align 2, !tbaa !35
  %1086 = sext i16 %1085 to i32
  %1087 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %1088 = getelementptr inbounds i16, ptr %1087, i64 %1075
  %1089 = load i16, ptr %1088, align 2, !tbaa !35
  %1090 = sext i16 %1089 to i32
  %1091 = add nsw i32 %1090, %1086
  %1092 = load ptr, ptr @mvbits, align 8, !tbaa !6
  %1093 = sub nsw i32 %1084, %1048
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds i32, ptr %1092, i64 %1094
  %1096 = load i32, ptr %1095, align 4, !tbaa !19
  %1097 = sub nsw i32 %1091, %1049
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds i32, ptr %1092, i64 %1098
  %1100 = load i32, ptr %1099, align 4, !tbaa !19
  %1101 = add nsw i32 %1100, %1096
  %1102 = mul nsw i32 %1101, %15
  %1103 = ashr i32 %1102, 16
  %1104 = icmp slt i32 %1103, %1076
  br i1 %1104, label %1105, label %1840

1105:                                             ; preds = %1074
  %1106 = add nsw i32 %1084, %29
  %1107 = add nsw i32 %1091, %31
  br i1 %1050, label %1108, label %1829

1108:                                             ; preds = %1105, %1824
  %1109 = phi i64 [ %1826, %1824 ], [ 0, %1105 ]
  %1110 = phi i32 [ %1825, %1824 ], [ %1103, %1105 ]
  %1111 = icmp ugt i64 %1109, 7
  %1112 = select i1 %1111, i32 %20, i32 0
  %1113 = trunc nuw nsw i64 %1109 to i32
  %1114 = shl i32 %1113, 2
  %1115 = add nsw i32 %1107, %1114
  %1116 = add nsw i32 %1115, 4
  %1117 = add nsw i32 %1115, 8
  %1118 = add nsw i32 %1115, 12
  %1119 = add nsw i32 %1114, %126
  %1120 = add nsw i32 %1119, 4
  %1121 = add nsw i32 %1119, 8
  %1122 = add nsw i32 %1119, 12
  %1123 = or disjoint i64 %1109, 1
  %1124 = or disjoint i64 %1109, 2
  %1125 = or disjoint i64 %1109, 3
  br i1 %49, label %1143, label %1126

1126:                                             ; preds = %1108
  br i1 %1051, label %1127, label %1824

1127:                                             ; preds = %1126
  %1128 = getelementptr inbounds ptr, ptr %0, i64 %1109
  %1129 = getelementptr inbounds ptr, ptr %0, i64 %1123
  %1130 = getelementptr inbounds ptr, ptr %0, i64 %1124
  %1131 = getelementptr inbounds ptr, ptr %0, i64 %1125
  %1132 = shl i32 %1113, 3
  %1133 = and i32 %1132, 32
  %1134 = trunc i64 %1109 to i32
  %1135 = shl i32 %1134, 3
  %1136 = and i32 %1135, 32
  %1137 = trunc i64 %1109 to i32
  %1138 = shl i32 %1137, 3
  %1139 = and i32 %1138, 32
  %1140 = trunc i64 %1109 to i32
  %1141 = shl i32 %1140, 3
  %1142 = and i32 %1141, 32
  br label %1160

1143:                                             ; preds = %1108
  br i1 %1051, label %1144, label %1824

1144:                                             ; preds = %1143
  %1145 = getelementptr inbounds ptr, ptr %0, i64 %1109
  %1146 = getelementptr inbounds ptr, ptr %0, i64 %1123
  %1147 = getelementptr inbounds ptr, ptr %0, i64 %1124
  %1148 = getelementptr inbounds ptr, ptr %0, i64 %1125
  %1149 = shl i32 %1113, 3
  %1150 = and i32 %1149, 32
  %1151 = trunc i64 %1109 to i32
  %1152 = shl i32 %1151, 3
  %1153 = and i32 %1152, 32
  %1154 = trunc i64 %1109 to i32
  %1155 = shl i32 %1154, 3
  %1156 = and i32 %1155, 32
  %1157 = trunc i64 %1109 to i32
  %1158 = shl i32 %1157, 3
  %1159 = and i32 %1158, 32
  br label %1564

1160:                                             ; preds = %1127, %1559
  %1161 = phi i64 [ 0, %1127 ], [ %1561, %1559 ]
  %1162 = phi i32 [ %1110, %1127 ], [ %1560, %1559 ]
  %1163 = trunc nuw nsw i64 %1161 to i32
  %1164 = shl i32 %1163, 2
  %1165 = add nsw i32 %1164, %1106
  %1166 = add nsw i32 %1164, %123
  %1167 = load ptr, ptr %1128, align 8, !tbaa !6
  %1168 = getelementptr inbounds i16, ptr %1167, i64 %1161
  %1169 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %1170 = tail call ptr %1169(ptr noundef %134, i32 noundef signext %1119, i32 noundef signext %1166, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1171 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %1172 = tail call ptr %1171(ptr noundef %143, i32 noundef signext %1115, i32 noundef signext %1165, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1173 = load i16, ptr %1170, align 2, !tbaa !35
  %1174 = zext i16 %1173 to i32
  %1175 = mul nsw i32 %1053, %1174
  %1176 = load i16, ptr %1172, align 2, !tbaa !35
  %1177 = zext i16 %1176 to i32
  %1178 = mul nsw i32 %1055, %1177
  %1179 = add nsw i32 %1178, %1175
  %1180 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1181 = shl nsw i32 %1180, 1
  %1182 = add nsw i32 %1179, %1181
  %1183 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1184 = add nsw i32 %1183, 1
  %1185 = ashr i32 %1182, %1184
  %1186 = add nsw i32 %1185, %1057
  %1187 = tail call signext i32 @clip1a(i32 noundef signext %1186) #16
  %1188 = getelementptr inbounds i8, ptr %1168, i64 2
  %1189 = load i16, ptr %1168, align 2, !tbaa !35
  %1190 = zext i16 %1189 to i32
  %1191 = and i32 %1187, 65535
  %1192 = sub nsw i32 %1190, %1191
  store i32 %1192, ptr %18, align 4, !tbaa !19
  %1193 = getelementptr inbounds i8, ptr %1170, i64 8
  %1194 = load i16, ptr %1193, align 2, !tbaa !35
  %1195 = zext i16 %1194 to i32
  %1196 = mul nsw i32 %1053, %1195
  %1197 = getelementptr inbounds i8, ptr %1172, i64 8
  %1198 = load i16, ptr %1197, align 2, !tbaa !35
  %1199 = zext i16 %1198 to i32
  %1200 = mul nsw i32 %1055, %1199
  %1201 = add nsw i32 %1200, %1196
  %1202 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1203 = shl nsw i32 %1202, 1
  %1204 = add nsw i32 %1201, %1203
  %1205 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1206 = add nsw i32 %1205, 1
  %1207 = ashr i32 %1204, %1206
  %1208 = add nsw i32 %1207, %1057
  %1209 = tail call signext i32 @clip1a(i32 noundef signext %1208) #16
  %1210 = getelementptr inbounds i8, ptr %1168, i64 4
  %1211 = load i16, ptr %1188, align 2, !tbaa !35
  %1212 = zext i16 %1211 to i32
  %1213 = and i32 %1209, 65535
  %1214 = sub nsw i32 %1212, %1213
  store i32 %1214, ptr %1058, align 4, !tbaa !19
  %1215 = getelementptr inbounds i8, ptr %1170, i64 16
  %1216 = load i16, ptr %1215, align 2, !tbaa !35
  %1217 = zext i16 %1216 to i32
  %1218 = mul nsw i32 %1053, %1217
  %1219 = getelementptr inbounds i8, ptr %1172, i64 16
  %1220 = load i16, ptr %1219, align 2, !tbaa !35
  %1221 = zext i16 %1220 to i32
  %1222 = mul nsw i32 %1055, %1221
  %1223 = add nsw i32 %1222, %1218
  %1224 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1225 = shl nsw i32 %1224, 1
  %1226 = add nsw i32 %1223, %1225
  %1227 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1228 = add nsw i32 %1227, 1
  %1229 = ashr i32 %1226, %1228
  %1230 = add nsw i32 %1229, %1057
  %1231 = tail call signext i32 @clip1a(i32 noundef signext %1230) #16
  %1232 = getelementptr inbounds i8, ptr %1168, i64 6
  %1233 = load i16, ptr %1210, align 2, !tbaa !35
  %1234 = zext i16 %1233 to i32
  %1235 = and i32 %1231, 65535
  %1236 = sub nsw i32 %1234, %1235
  store i32 %1236, ptr %1059, align 4, !tbaa !19
  %1237 = getelementptr inbounds i8, ptr %1170, i64 24
  %1238 = load i16, ptr %1237, align 2, !tbaa !35
  %1239 = zext i16 %1238 to i32
  %1240 = mul nsw i32 %1053, %1239
  %1241 = getelementptr inbounds i8, ptr %1172, i64 24
  %1242 = load i16, ptr %1241, align 2, !tbaa !35
  %1243 = zext i16 %1242 to i32
  %1244 = mul nsw i32 %1055, %1243
  %1245 = add nsw i32 %1244, %1240
  %1246 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1247 = shl nsw i32 %1246, 1
  %1248 = add nsw i32 %1245, %1247
  %1249 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1250 = add nsw i32 %1249, 1
  %1251 = ashr i32 %1248, %1250
  %1252 = add nsw i32 %1251, %1057
  %1253 = tail call signext i32 @clip1a(i32 noundef signext %1252) #16
  %1254 = load i16, ptr %1232, align 2, !tbaa !35
  %1255 = zext i16 %1254 to i32
  %1256 = and i32 %1253, 65535
  %1257 = sub nsw i32 %1255, %1256
  store i32 %1257, ptr %1060, align 4, !tbaa !19
  %1258 = load ptr, ptr %1129, align 8, !tbaa !6
  %1259 = getelementptr inbounds i16, ptr %1258, i64 %1161
  %1260 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %1261 = tail call ptr %1260(ptr noundef %134, i32 noundef signext %1120, i32 noundef signext %1166, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1262 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %1263 = tail call ptr %1262(ptr noundef %143, i32 noundef signext %1116, i32 noundef signext %1165, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1264 = load i16, ptr %1261, align 2, !tbaa !35
  %1265 = zext i16 %1264 to i32
  %1266 = mul nsw i32 %1053, %1265
  %1267 = load i16, ptr %1263, align 2, !tbaa !35
  %1268 = zext i16 %1267 to i32
  %1269 = mul nsw i32 %1055, %1268
  %1270 = add nsw i32 %1269, %1266
  %1271 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1272 = shl nsw i32 %1271, 1
  %1273 = add nsw i32 %1270, %1272
  %1274 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1275 = add nsw i32 %1274, 1
  %1276 = ashr i32 %1273, %1275
  %1277 = add nsw i32 %1276, %1057
  %1278 = tail call signext i32 @clip1a(i32 noundef signext %1277) #16
  %1279 = getelementptr inbounds i8, ptr %1259, i64 2
  %1280 = load i16, ptr %1259, align 2, !tbaa !35
  %1281 = zext i16 %1280 to i32
  %1282 = and i32 %1278, 65535
  %1283 = sub nsw i32 %1281, %1282
  store i32 %1283, ptr %1061, align 4, !tbaa !19
  %1284 = getelementptr inbounds i8, ptr %1261, i64 8
  %1285 = load i16, ptr %1284, align 2, !tbaa !35
  %1286 = zext i16 %1285 to i32
  %1287 = mul nsw i32 %1053, %1286
  %1288 = getelementptr inbounds i8, ptr %1263, i64 8
  %1289 = load i16, ptr %1288, align 2, !tbaa !35
  %1290 = zext i16 %1289 to i32
  %1291 = mul nsw i32 %1055, %1290
  %1292 = add nsw i32 %1291, %1287
  %1293 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1294 = shl nsw i32 %1293, 1
  %1295 = add nsw i32 %1292, %1294
  %1296 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1297 = add nsw i32 %1296, 1
  %1298 = ashr i32 %1295, %1297
  %1299 = add nsw i32 %1298, %1057
  %1300 = tail call signext i32 @clip1a(i32 noundef signext %1299) #16
  %1301 = getelementptr inbounds i8, ptr %1259, i64 4
  %1302 = load i16, ptr %1279, align 2, !tbaa !35
  %1303 = zext i16 %1302 to i32
  %1304 = and i32 %1300, 65535
  %1305 = sub nsw i32 %1303, %1304
  store i32 %1305, ptr %1062, align 4, !tbaa !19
  %1306 = getelementptr inbounds i8, ptr %1261, i64 16
  %1307 = load i16, ptr %1306, align 2, !tbaa !35
  %1308 = zext i16 %1307 to i32
  %1309 = mul nsw i32 %1053, %1308
  %1310 = getelementptr inbounds i8, ptr %1263, i64 16
  %1311 = load i16, ptr %1310, align 2, !tbaa !35
  %1312 = zext i16 %1311 to i32
  %1313 = mul nsw i32 %1055, %1312
  %1314 = add nsw i32 %1313, %1309
  %1315 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1316 = shl nsw i32 %1315, 1
  %1317 = add nsw i32 %1314, %1316
  %1318 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1319 = add nsw i32 %1318, 1
  %1320 = ashr i32 %1317, %1319
  %1321 = add nsw i32 %1320, %1057
  %1322 = tail call signext i32 @clip1a(i32 noundef signext %1321) #16
  %1323 = getelementptr inbounds i8, ptr %1259, i64 6
  %1324 = load i16, ptr %1301, align 2, !tbaa !35
  %1325 = zext i16 %1324 to i32
  %1326 = and i32 %1322, 65535
  %1327 = sub nsw i32 %1325, %1326
  store i32 %1327, ptr %1063, align 4, !tbaa !19
  %1328 = getelementptr inbounds i8, ptr %1261, i64 24
  %1329 = load i16, ptr %1328, align 2, !tbaa !35
  %1330 = zext i16 %1329 to i32
  %1331 = mul nsw i32 %1053, %1330
  %1332 = getelementptr inbounds i8, ptr %1263, i64 24
  %1333 = load i16, ptr %1332, align 2, !tbaa !35
  %1334 = zext i16 %1333 to i32
  %1335 = mul nsw i32 %1055, %1334
  %1336 = add nsw i32 %1335, %1331
  %1337 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1338 = shl nsw i32 %1337, 1
  %1339 = add nsw i32 %1336, %1338
  %1340 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1341 = add nsw i32 %1340, 1
  %1342 = ashr i32 %1339, %1341
  %1343 = add nsw i32 %1342, %1057
  %1344 = tail call signext i32 @clip1a(i32 noundef signext %1343) #16
  %1345 = load i16, ptr %1323, align 2, !tbaa !35
  %1346 = zext i16 %1345 to i32
  %1347 = and i32 %1344, 65535
  %1348 = sub nsw i32 %1346, %1347
  store i32 %1348, ptr %1064, align 4, !tbaa !19
  %1349 = load ptr, ptr %1130, align 8, !tbaa !6
  %1350 = getelementptr inbounds i16, ptr %1349, i64 %1161
  %1351 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %1352 = tail call ptr %1351(ptr noundef %134, i32 noundef signext %1121, i32 noundef signext %1166, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1353 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %1354 = tail call ptr %1353(ptr noundef %143, i32 noundef signext %1117, i32 noundef signext %1165, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1355 = load i16, ptr %1352, align 2, !tbaa !35
  %1356 = zext i16 %1355 to i32
  %1357 = mul nsw i32 %1053, %1356
  %1358 = load i16, ptr %1354, align 2, !tbaa !35
  %1359 = zext i16 %1358 to i32
  %1360 = mul nsw i32 %1055, %1359
  %1361 = add nsw i32 %1360, %1357
  %1362 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1363 = shl nsw i32 %1362, 1
  %1364 = add nsw i32 %1361, %1363
  %1365 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1366 = add nsw i32 %1365, 1
  %1367 = ashr i32 %1364, %1366
  %1368 = add nsw i32 %1367, %1057
  %1369 = tail call signext i32 @clip1a(i32 noundef signext %1368) #16
  %1370 = getelementptr inbounds i8, ptr %1350, i64 2
  %1371 = load i16, ptr %1350, align 2, !tbaa !35
  %1372 = zext i16 %1371 to i32
  %1373 = and i32 %1369, 65535
  %1374 = sub nsw i32 %1372, %1373
  store i32 %1374, ptr %1065, align 4, !tbaa !19
  %1375 = getelementptr inbounds i8, ptr %1352, i64 8
  %1376 = load i16, ptr %1375, align 2, !tbaa !35
  %1377 = zext i16 %1376 to i32
  %1378 = mul nsw i32 %1053, %1377
  %1379 = getelementptr inbounds i8, ptr %1354, i64 8
  %1380 = load i16, ptr %1379, align 2, !tbaa !35
  %1381 = zext i16 %1380 to i32
  %1382 = mul nsw i32 %1055, %1381
  %1383 = add nsw i32 %1382, %1378
  %1384 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1385 = shl nsw i32 %1384, 1
  %1386 = add nsw i32 %1383, %1385
  %1387 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1388 = add nsw i32 %1387, 1
  %1389 = ashr i32 %1386, %1388
  %1390 = add nsw i32 %1389, %1057
  %1391 = tail call signext i32 @clip1a(i32 noundef signext %1390) #16
  %1392 = getelementptr inbounds i8, ptr %1350, i64 4
  %1393 = load i16, ptr %1370, align 2, !tbaa !35
  %1394 = zext i16 %1393 to i32
  %1395 = and i32 %1391, 65535
  %1396 = sub nsw i32 %1394, %1395
  store i32 %1396, ptr %1066, align 4, !tbaa !19
  %1397 = getelementptr inbounds i8, ptr %1352, i64 16
  %1398 = load i16, ptr %1397, align 2, !tbaa !35
  %1399 = zext i16 %1398 to i32
  %1400 = mul nsw i32 %1053, %1399
  %1401 = getelementptr inbounds i8, ptr %1354, i64 16
  %1402 = load i16, ptr %1401, align 2, !tbaa !35
  %1403 = zext i16 %1402 to i32
  %1404 = mul nsw i32 %1055, %1403
  %1405 = add nsw i32 %1404, %1400
  %1406 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1407 = shl nsw i32 %1406, 1
  %1408 = add nsw i32 %1405, %1407
  %1409 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1410 = add nsw i32 %1409, 1
  %1411 = ashr i32 %1408, %1410
  %1412 = add nsw i32 %1411, %1057
  %1413 = tail call signext i32 @clip1a(i32 noundef signext %1412) #16
  %1414 = getelementptr inbounds i8, ptr %1350, i64 6
  %1415 = load i16, ptr %1392, align 2, !tbaa !35
  %1416 = zext i16 %1415 to i32
  %1417 = and i32 %1413, 65535
  %1418 = sub nsw i32 %1416, %1417
  store i32 %1418, ptr %1067, align 4, !tbaa !19
  %1419 = getelementptr inbounds i8, ptr %1352, i64 24
  %1420 = load i16, ptr %1419, align 2, !tbaa !35
  %1421 = zext i16 %1420 to i32
  %1422 = mul nsw i32 %1053, %1421
  %1423 = getelementptr inbounds i8, ptr %1354, i64 24
  %1424 = load i16, ptr %1423, align 2, !tbaa !35
  %1425 = zext i16 %1424 to i32
  %1426 = mul nsw i32 %1055, %1425
  %1427 = add nsw i32 %1426, %1422
  %1428 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1429 = shl nsw i32 %1428, 1
  %1430 = add nsw i32 %1427, %1429
  %1431 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1432 = add nsw i32 %1431, 1
  %1433 = ashr i32 %1430, %1432
  %1434 = add nsw i32 %1433, %1057
  %1435 = tail call signext i32 @clip1a(i32 noundef signext %1434) #16
  %1436 = load i16, ptr %1414, align 2, !tbaa !35
  %1437 = zext i16 %1436 to i32
  %1438 = and i32 %1435, 65535
  %1439 = sub nsw i32 %1437, %1438
  store i32 %1439, ptr %1068, align 4, !tbaa !19
  %1440 = load ptr, ptr %1131, align 8, !tbaa !6
  %1441 = getelementptr inbounds i16, ptr %1440, i64 %1161
  %1442 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %1443 = tail call ptr %1442(ptr noundef %134, i32 noundef signext %1122, i32 noundef signext %1166, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1444 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %1445 = tail call ptr %1444(ptr noundef %143, i32 noundef signext %1118, i32 noundef signext %1165, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1446 = load i16, ptr %1443, align 2, !tbaa !35
  %1447 = zext i16 %1446 to i32
  %1448 = mul nsw i32 %1053, %1447
  %1449 = load i16, ptr %1445, align 2, !tbaa !35
  %1450 = zext i16 %1449 to i32
  %1451 = mul nsw i32 %1055, %1450
  %1452 = add nsw i32 %1451, %1448
  %1453 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1454 = shl nsw i32 %1453, 1
  %1455 = add nsw i32 %1452, %1454
  %1456 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1457 = add nsw i32 %1456, 1
  %1458 = ashr i32 %1455, %1457
  %1459 = add nsw i32 %1458, %1057
  %1460 = tail call signext i32 @clip1a(i32 noundef signext %1459) #16
  %1461 = getelementptr inbounds i8, ptr %1441, i64 2
  %1462 = load i16, ptr %1441, align 2, !tbaa !35
  %1463 = zext i16 %1462 to i32
  %1464 = and i32 %1460, 65535
  %1465 = sub nsw i32 %1463, %1464
  store i32 %1465, ptr %1069, align 4, !tbaa !19
  %1466 = getelementptr inbounds i8, ptr %1443, i64 8
  %1467 = load i16, ptr %1466, align 2, !tbaa !35
  %1468 = zext i16 %1467 to i32
  %1469 = mul nsw i32 %1053, %1468
  %1470 = getelementptr inbounds i8, ptr %1445, i64 8
  %1471 = load i16, ptr %1470, align 2, !tbaa !35
  %1472 = zext i16 %1471 to i32
  %1473 = mul nsw i32 %1055, %1472
  %1474 = add nsw i32 %1473, %1469
  %1475 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1476 = shl nsw i32 %1475, 1
  %1477 = add nsw i32 %1474, %1476
  %1478 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1479 = add nsw i32 %1478, 1
  %1480 = ashr i32 %1477, %1479
  %1481 = add nsw i32 %1480, %1057
  %1482 = tail call signext i32 @clip1a(i32 noundef signext %1481) #16
  %1483 = getelementptr inbounds i8, ptr %1441, i64 4
  %1484 = load i16, ptr %1461, align 2, !tbaa !35
  %1485 = zext i16 %1484 to i32
  %1486 = and i32 %1482, 65535
  %1487 = sub nsw i32 %1485, %1486
  store i32 %1487, ptr %1070, align 4, !tbaa !19
  %1488 = getelementptr inbounds i8, ptr %1443, i64 16
  %1489 = load i16, ptr %1488, align 2, !tbaa !35
  %1490 = zext i16 %1489 to i32
  %1491 = mul nsw i32 %1053, %1490
  %1492 = getelementptr inbounds i8, ptr %1445, i64 16
  %1493 = load i16, ptr %1492, align 2, !tbaa !35
  %1494 = zext i16 %1493 to i32
  %1495 = mul nsw i32 %1055, %1494
  %1496 = add nsw i32 %1495, %1491
  %1497 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1498 = shl nsw i32 %1497, 1
  %1499 = add nsw i32 %1496, %1498
  %1500 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1501 = add nsw i32 %1500, 1
  %1502 = ashr i32 %1499, %1501
  %1503 = add nsw i32 %1502, %1057
  %1504 = tail call signext i32 @clip1a(i32 noundef signext %1503) #16
  %1505 = getelementptr inbounds i8, ptr %1441, i64 6
  %1506 = load i16, ptr %1483, align 2, !tbaa !35
  %1507 = zext i16 %1506 to i32
  %1508 = and i32 %1504, 65535
  %1509 = sub nsw i32 %1507, %1508
  store i32 %1509, ptr %1071, align 4, !tbaa !19
  %1510 = getelementptr inbounds i8, ptr %1443, i64 24
  %1511 = load i16, ptr %1510, align 2, !tbaa !35
  %1512 = zext i16 %1511 to i32
  %1513 = mul nsw i32 %1053, %1512
  %1514 = getelementptr inbounds i8, ptr %1445, i64 24
  %1515 = load i16, ptr %1514, align 2, !tbaa !35
  %1516 = zext i16 %1515 to i32
  %1517 = mul nsw i32 %1055, %1516
  %1518 = add nsw i32 %1517, %1513
  %1519 = load i32, ptr @wp_luma_round, align 4, !tbaa !19
  %1520 = shl nsw i32 %1519, 1
  %1521 = add nsw i32 %1518, %1520
  %1522 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !19
  %1523 = add nsw i32 %1522, 1
  %1524 = ashr i32 %1521, %1523
  %1525 = add nsw i32 %1524, %1057
  %1526 = tail call signext i32 @clip1a(i32 noundef signext %1525) #16
  %1527 = load i16, ptr %1505, align 2, !tbaa !35
  %1528 = zext i16 %1527 to i32
  %1529 = and i32 %1526, 65535
  %1530 = sub nsw i32 %1528, %1529
  store i32 %1530, ptr %1072, align 4, !tbaa !19
  br i1 %1013, label %1538, label %1531

1531:                                             ; preds = %1160
  %1532 = load ptr, ptr @input, align 8, !tbaa !6
  %1533 = getelementptr inbounds i8, ptr %1532, i64 24
  %1534 = load i32, ptr %1533, align 8, !tbaa !54
  %1535 = call signext i32 @SATD(ptr noundef nonnull %18, i32 noundef signext %1534)
  %1536 = add nsw i32 %1535, %1162
  %1537 = icmp sgt i32 %1536, %1076
  br i1 %1537, label %1834, label %1559

1538:                                             ; preds = %1160
  %1539 = and i32 %1163, 4
  %1540 = icmp ugt i64 %1161, 7
  %1541 = select i1 %1540, i32 64, i32 0
  %1542 = or disjoint i32 %1539, %1112
  %1543 = add nuw nsw i32 %1542, %1541
  %1544 = or disjoint i32 %1133, %1543
  %1545 = zext nneg i32 %1544 to i64
  %1546 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %1545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1546, ptr noundef nonnull align 4 dereferenceable(16) %18, i64 16, i1 false)
  %1547 = or disjoint i32 %1136, %1543
  %1548 = or disjoint i32 %1547, 8
  %1549 = zext nneg i32 %1548 to i64
  %1550 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %1549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1550, ptr noundef nonnull align 4 dereferenceable(16) %1061, i64 16, i1 false)
  %1551 = or disjoint i32 %1139, %1543
  %1552 = or disjoint i32 %1551, 16
  %1553 = zext nneg i32 %1552 to i64
  %1554 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %1553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1554, ptr noundef nonnull align 4 dereferenceable(16) %1065, i64 16, i1 false)
  %1555 = or disjoint i32 %1142, %1543
  %1556 = or disjoint i32 %1555, 24
  %1557 = zext nneg i32 %1556 to i64
  %1558 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %1557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1558, ptr noundef nonnull align 4 dereferenceable(16) %1069, i64 16, i1 false)
  br label %1559

1559:                                             ; preds = %1538, %1531
  %1560 = phi i32 [ %1536, %1531 ], [ %1162, %1538 ]
  %1561 = add nuw nsw i64 %1161, 4
  %1562 = trunc nuw i64 %1561 to i32
  %1563 = icmp sgt i32 %25, %1562
  br i1 %1563, label %1160, label %1824

1564:                                             ; preds = %1144, %1819
  %1565 = phi i64 [ 0, %1144 ], [ %1821, %1819 ]
  %1566 = phi i32 [ %1110, %1144 ], [ %1820, %1819 ]
  %1567 = trunc nuw nsw i64 %1565 to i32
  %1568 = shl i32 %1567, 2
  %1569 = add nsw i32 %1568, %1106
  %1570 = add nsw i32 %1568, %123
  %1571 = load ptr, ptr %1145, align 8, !tbaa !6
  %1572 = getelementptr inbounds i16, ptr %1571, i64 %1565
  %1573 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %1574 = tail call ptr %1573(ptr noundef %134, i32 noundef signext %1119, i32 noundef signext %1570, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1575 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %1576 = tail call ptr %1575(ptr noundef %143, i32 noundef signext %1115, i32 noundef signext %1569, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1577 = getelementptr inbounds i8, ptr %1572, i64 2
  %1578 = load i16, ptr %1572, align 2, !tbaa !35
  %1579 = zext i16 %1578 to i32
  %1580 = load i16, ptr %1574, align 2, !tbaa !35
  %1581 = zext i16 %1580 to i32
  %1582 = load i16, ptr %1576, align 2, !tbaa !35
  %1583 = zext i16 %1582 to i32
  %1584 = add nuw nsw i32 %1581, 1
  %1585 = add nuw nsw i32 %1584, %1583
  %1586 = lshr i32 %1585, 1
  %1587 = sub nsw i32 %1579, %1586
  store i32 %1587, ptr %18, align 4, !tbaa !19
  %1588 = getelementptr inbounds i8, ptr %1572, i64 4
  %1589 = load i16, ptr %1577, align 2, !tbaa !35
  %1590 = zext i16 %1589 to i32
  %1591 = getelementptr inbounds i8, ptr %1574, i64 8
  %1592 = load i16, ptr %1591, align 2, !tbaa !35
  %1593 = zext i16 %1592 to i32
  %1594 = getelementptr inbounds i8, ptr %1576, i64 8
  %1595 = load i16, ptr %1594, align 2, !tbaa !35
  %1596 = zext i16 %1595 to i32
  %1597 = add nuw nsw i32 %1593, 1
  %1598 = add nuw nsw i32 %1597, %1596
  %1599 = lshr i32 %1598, 1
  %1600 = sub nsw i32 %1590, %1599
  store i32 %1600, ptr %1058, align 4, !tbaa !19
  %1601 = getelementptr inbounds i8, ptr %1572, i64 6
  %1602 = load i16, ptr %1588, align 2, !tbaa !35
  %1603 = zext i16 %1602 to i32
  %1604 = getelementptr inbounds i8, ptr %1574, i64 16
  %1605 = load i16, ptr %1604, align 2, !tbaa !35
  %1606 = zext i16 %1605 to i32
  %1607 = getelementptr inbounds i8, ptr %1576, i64 16
  %1608 = load i16, ptr %1607, align 2, !tbaa !35
  %1609 = zext i16 %1608 to i32
  %1610 = add nuw nsw i32 %1606, 1
  %1611 = add nuw nsw i32 %1610, %1609
  %1612 = lshr i32 %1611, 1
  %1613 = sub nsw i32 %1603, %1612
  store i32 %1613, ptr %1059, align 4, !tbaa !19
  %1614 = load i16, ptr %1601, align 2, !tbaa !35
  %1615 = zext i16 %1614 to i32
  %1616 = getelementptr inbounds i8, ptr %1574, i64 24
  %1617 = load i16, ptr %1616, align 2, !tbaa !35
  %1618 = zext i16 %1617 to i32
  %1619 = getelementptr inbounds i8, ptr %1576, i64 24
  %1620 = load i16, ptr %1619, align 2, !tbaa !35
  %1621 = zext i16 %1620 to i32
  %1622 = add nuw nsw i32 %1618, 1
  %1623 = add nuw nsw i32 %1622, %1621
  %1624 = lshr i32 %1623, 1
  %1625 = sub nsw i32 %1615, %1624
  store i32 %1625, ptr %1060, align 4, !tbaa !19
  %1626 = load ptr, ptr %1146, align 8, !tbaa !6
  %1627 = getelementptr inbounds i16, ptr %1626, i64 %1565
  %1628 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %1629 = tail call ptr %1628(ptr noundef %134, i32 noundef signext %1120, i32 noundef signext %1570, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1630 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %1631 = tail call ptr %1630(ptr noundef %143, i32 noundef signext %1116, i32 noundef signext %1569, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1632 = getelementptr inbounds i8, ptr %1627, i64 2
  %1633 = load i16, ptr %1627, align 2, !tbaa !35
  %1634 = zext i16 %1633 to i32
  %1635 = load i16, ptr %1629, align 2, !tbaa !35
  %1636 = zext i16 %1635 to i32
  %1637 = load i16, ptr %1631, align 2, !tbaa !35
  %1638 = zext i16 %1637 to i32
  %1639 = add nuw nsw i32 %1636, 1
  %1640 = add nuw nsw i32 %1639, %1638
  %1641 = lshr i32 %1640, 1
  %1642 = sub nsw i32 %1634, %1641
  store i32 %1642, ptr %1061, align 4, !tbaa !19
  %1643 = getelementptr inbounds i8, ptr %1627, i64 4
  %1644 = load i16, ptr %1632, align 2, !tbaa !35
  %1645 = zext i16 %1644 to i32
  %1646 = getelementptr inbounds i8, ptr %1629, i64 8
  %1647 = load i16, ptr %1646, align 2, !tbaa !35
  %1648 = zext i16 %1647 to i32
  %1649 = getelementptr inbounds i8, ptr %1631, i64 8
  %1650 = load i16, ptr %1649, align 2, !tbaa !35
  %1651 = zext i16 %1650 to i32
  %1652 = add nuw nsw i32 %1648, 1
  %1653 = add nuw nsw i32 %1652, %1651
  %1654 = lshr i32 %1653, 1
  %1655 = sub nsw i32 %1645, %1654
  store i32 %1655, ptr %1062, align 4, !tbaa !19
  %1656 = getelementptr inbounds i8, ptr %1627, i64 6
  %1657 = load i16, ptr %1643, align 2, !tbaa !35
  %1658 = zext i16 %1657 to i32
  %1659 = getelementptr inbounds i8, ptr %1629, i64 16
  %1660 = load i16, ptr %1659, align 2, !tbaa !35
  %1661 = zext i16 %1660 to i32
  %1662 = getelementptr inbounds i8, ptr %1631, i64 16
  %1663 = load i16, ptr %1662, align 2, !tbaa !35
  %1664 = zext i16 %1663 to i32
  %1665 = add nuw nsw i32 %1661, 1
  %1666 = add nuw nsw i32 %1665, %1664
  %1667 = lshr i32 %1666, 1
  %1668 = sub nsw i32 %1658, %1667
  store i32 %1668, ptr %1063, align 4, !tbaa !19
  %1669 = load i16, ptr %1656, align 2, !tbaa !35
  %1670 = zext i16 %1669 to i32
  %1671 = getelementptr inbounds i8, ptr %1629, i64 24
  %1672 = load i16, ptr %1671, align 2, !tbaa !35
  %1673 = zext i16 %1672 to i32
  %1674 = getelementptr inbounds i8, ptr %1631, i64 24
  %1675 = load i16, ptr %1674, align 2, !tbaa !35
  %1676 = zext i16 %1675 to i32
  %1677 = add nuw nsw i32 %1673, 1
  %1678 = add nuw nsw i32 %1677, %1676
  %1679 = lshr i32 %1678, 1
  %1680 = sub nsw i32 %1670, %1679
  store i32 %1680, ptr %1064, align 4, !tbaa !19
  %1681 = load ptr, ptr %1147, align 8, !tbaa !6
  %1682 = getelementptr inbounds i16, ptr %1681, i64 %1565
  %1683 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %1684 = tail call ptr %1683(ptr noundef %134, i32 noundef signext %1121, i32 noundef signext %1570, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1685 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %1686 = tail call ptr %1685(ptr noundef %143, i32 noundef signext %1117, i32 noundef signext %1569, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1687 = getelementptr inbounds i8, ptr %1682, i64 2
  %1688 = load i16, ptr %1682, align 2, !tbaa !35
  %1689 = zext i16 %1688 to i32
  %1690 = load i16, ptr %1684, align 2, !tbaa !35
  %1691 = zext i16 %1690 to i32
  %1692 = load i16, ptr %1686, align 2, !tbaa !35
  %1693 = zext i16 %1692 to i32
  %1694 = add nuw nsw i32 %1691, 1
  %1695 = add nuw nsw i32 %1694, %1693
  %1696 = lshr i32 %1695, 1
  %1697 = sub nsw i32 %1689, %1696
  store i32 %1697, ptr %1065, align 4, !tbaa !19
  %1698 = getelementptr inbounds i8, ptr %1682, i64 4
  %1699 = load i16, ptr %1687, align 2, !tbaa !35
  %1700 = zext i16 %1699 to i32
  %1701 = getelementptr inbounds i8, ptr %1684, i64 8
  %1702 = load i16, ptr %1701, align 2, !tbaa !35
  %1703 = zext i16 %1702 to i32
  %1704 = getelementptr inbounds i8, ptr %1686, i64 8
  %1705 = load i16, ptr %1704, align 2, !tbaa !35
  %1706 = zext i16 %1705 to i32
  %1707 = add nuw nsw i32 %1703, 1
  %1708 = add nuw nsw i32 %1707, %1706
  %1709 = lshr i32 %1708, 1
  %1710 = sub nsw i32 %1700, %1709
  store i32 %1710, ptr %1066, align 4, !tbaa !19
  %1711 = getelementptr inbounds i8, ptr %1682, i64 6
  %1712 = load i16, ptr %1698, align 2, !tbaa !35
  %1713 = zext i16 %1712 to i32
  %1714 = getelementptr inbounds i8, ptr %1684, i64 16
  %1715 = load i16, ptr %1714, align 2, !tbaa !35
  %1716 = zext i16 %1715 to i32
  %1717 = getelementptr inbounds i8, ptr %1686, i64 16
  %1718 = load i16, ptr %1717, align 2, !tbaa !35
  %1719 = zext i16 %1718 to i32
  %1720 = add nuw nsw i32 %1716, 1
  %1721 = add nuw nsw i32 %1720, %1719
  %1722 = lshr i32 %1721, 1
  %1723 = sub nsw i32 %1713, %1722
  store i32 %1723, ptr %1067, align 4, !tbaa !19
  %1724 = load i16, ptr %1711, align 2, !tbaa !35
  %1725 = zext i16 %1724 to i32
  %1726 = getelementptr inbounds i8, ptr %1684, i64 24
  %1727 = load i16, ptr %1726, align 2, !tbaa !35
  %1728 = zext i16 %1727 to i32
  %1729 = getelementptr inbounds i8, ptr %1686, i64 24
  %1730 = load i16, ptr %1729, align 2, !tbaa !35
  %1731 = zext i16 %1730 to i32
  %1732 = add nuw nsw i32 %1728, 1
  %1733 = add nuw nsw i32 %1732, %1731
  %1734 = lshr i32 %1733, 1
  %1735 = sub nsw i32 %1725, %1734
  store i32 %1735, ptr %1068, align 4, !tbaa !19
  %1736 = load ptr, ptr %1148, align 8, !tbaa !6
  %1737 = getelementptr inbounds i16, ptr %1736, i64 %1565
  %1738 = load ptr, ptr @get_line_p1, align 8, !tbaa !6
  %1739 = tail call ptr %1738(ptr noundef %134, i32 noundef signext %1122, i32 noundef signext %1570, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1740 = load ptr, ptr @get_line_p2, align 8, !tbaa !6
  %1741 = tail call ptr %1740(ptr noundef %143, i32 noundef signext %1118, i32 noundef signext %1569, i32 noundef signext %151, i32 noundef signext %147) #16, !callees !56
  %1742 = getelementptr inbounds i8, ptr %1737, i64 2
  %1743 = load i16, ptr %1737, align 2, !tbaa !35
  %1744 = zext i16 %1743 to i32
  %1745 = load i16, ptr %1739, align 2, !tbaa !35
  %1746 = zext i16 %1745 to i32
  %1747 = load i16, ptr %1741, align 2, !tbaa !35
  %1748 = zext i16 %1747 to i32
  %1749 = add nuw nsw i32 %1746, 1
  %1750 = add nuw nsw i32 %1749, %1748
  %1751 = lshr i32 %1750, 1
  %1752 = sub nsw i32 %1744, %1751
  store i32 %1752, ptr %1069, align 4, !tbaa !19
  %1753 = getelementptr inbounds i8, ptr %1737, i64 4
  %1754 = load i16, ptr %1742, align 2, !tbaa !35
  %1755 = zext i16 %1754 to i32
  %1756 = getelementptr inbounds i8, ptr %1739, i64 8
  %1757 = load i16, ptr %1756, align 2, !tbaa !35
  %1758 = zext i16 %1757 to i32
  %1759 = getelementptr inbounds i8, ptr %1741, i64 8
  %1760 = load i16, ptr %1759, align 2, !tbaa !35
  %1761 = zext i16 %1760 to i32
  %1762 = add nuw nsw i32 %1758, 1
  %1763 = add nuw nsw i32 %1762, %1761
  %1764 = lshr i32 %1763, 1
  %1765 = sub nsw i32 %1755, %1764
  store i32 %1765, ptr %1070, align 4, !tbaa !19
  %1766 = getelementptr inbounds i8, ptr %1737, i64 6
  %1767 = load i16, ptr %1753, align 2, !tbaa !35
  %1768 = zext i16 %1767 to i32
  %1769 = getelementptr inbounds i8, ptr %1739, i64 16
  %1770 = load i16, ptr %1769, align 2, !tbaa !35
  %1771 = zext i16 %1770 to i32
  %1772 = getelementptr inbounds i8, ptr %1741, i64 16
  %1773 = load i16, ptr %1772, align 2, !tbaa !35
  %1774 = zext i16 %1773 to i32
  %1775 = add nuw nsw i32 %1771, 1
  %1776 = add nuw nsw i32 %1775, %1774
  %1777 = lshr i32 %1776, 1
  %1778 = sub nsw i32 %1768, %1777
  store i32 %1778, ptr %1071, align 4, !tbaa !19
  %1779 = load i16, ptr %1766, align 2, !tbaa !35
  %1780 = zext i16 %1779 to i32
  %1781 = getelementptr inbounds i8, ptr %1739, i64 24
  %1782 = load i16, ptr %1781, align 2, !tbaa !35
  %1783 = zext i16 %1782 to i32
  %1784 = getelementptr inbounds i8, ptr %1741, i64 24
  %1785 = load i16, ptr %1784, align 2, !tbaa !35
  %1786 = zext i16 %1785 to i32
  %1787 = add nuw nsw i32 %1783, 1
  %1788 = add nuw nsw i32 %1787, %1786
  %1789 = lshr i32 %1788, 1
  %1790 = sub nsw i32 %1780, %1789
  store i32 %1790, ptr %1072, align 4, !tbaa !19
  br i1 %1013, label %1798, label %1791

1791:                                             ; preds = %1564
  %1792 = load ptr, ptr @input, align 8, !tbaa !6
  %1793 = getelementptr inbounds i8, ptr %1792, i64 24
  %1794 = load i32, ptr %1793, align 8, !tbaa !54
  %1795 = call signext i32 @SATD(ptr noundef nonnull %18, i32 noundef signext %1794)
  %1796 = add nsw i32 %1795, %1566
  %1797 = icmp sgt i32 %1796, %1076
  br i1 %1797, label %1834, label %1819

1798:                                             ; preds = %1564
  %1799 = and i32 %1567, 4
  %1800 = icmp ugt i64 %1565, 7
  %1801 = select i1 %1800, i32 64, i32 0
  %1802 = or disjoint i32 %1799, %1112
  %1803 = add nuw nsw i32 %1802, %1801
  %1804 = or disjoint i32 %1150, %1803
  %1805 = zext nneg i32 %1804 to i64
  %1806 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %1805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1806, ptr noundef nonnull align 4 dereferenceable(16) %18, i64 16, i1 false)
  %1807 = or disjoint i32 %1153, %1803
  %1808 = or disjoint i32 %1807, 8
  %1809 = zext nneg i32 %1808 to i64
  %1810 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %1809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1810, ptr noundef nonnull align 4 dereferenceable(16) %1061, i64 16, i1 false)
  %1811 = or disjoint i32 %1156, %1803
  %1812 = or disjoint i32 %1811, 16
  %1813 = zext nneg i32 %1812 to i64
  %1814 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %1813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1814, ptr noundef nonnull align 4 dereferenceable(16) %1065, i64 16, i1 false)
  %1815 = or disjoint i32 %1159, %1803
  %1816 = or disjoint i32 %1815, 24
  %1817 = zext nneg i32 %1816 to i64
  %1818 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %1817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1818, ptr noundef nonnull align 4 dereferenceable(16) %1069, i64 16, i1 false)
  br label %1819

1819:                                             ; preds = %1798, %1791
  %1820 = phi i32 [ %1796, %1791 ], [ %1566, %1798 ]
  %1821 = add nuw nsw i64 %1565, 4
  %1822 = trunc nuw i64 %1821 to i32
  %1823 = icmp sgt i32 %25, %1822
  br i1 %1823, label %1564, label %1824

1824:                                             ; preds = %1559, %1819, %1126, %1143
  %1825 = phi i32 [ %1110, %1143 ], [ %1110, %1126 ], [ %1820, %1819 ], [ %1560, %1559 ]
  %1826 = add nuw nsw i64 %1109, 4
  %1827 = trunc nuw i64 %1826 to i32
  %1828 = icmp sgt i32 %27, %1827
  br i1 %1828, label %1108, label %1829

1829:                                             ; preds = %1824, %1105
  %1830 = phi i32 [ %1103, %1105 ], [ %1825, %1824 ]
  br i1 %1013, label %1831, label %1834

1831:                                             ; preds = %1829
  %1832 = call signext i32 @find_SATD(ptr noundef nonnull %17, i32 noundef signext %5)
  %1833 = add nsw i32 %1832, %1830
  br label %1834

1834:                                             ; preds = %1531, %1791, %1831, %1829
  %1835 = phi i32 [ %1833, %1831 ], [ %1830, %1829 ], [ %1796, %1791 ], [ %1536, %1531 ]
  %1836 = icmp slt i32 %1835, %1076
  %1837 = trunc nuw nsw i64 %1075 to i32
  %1838 = select i1 %1836, i32 %1837, i32 %1077
  %1839 = tail call i32 @llvm.smin.i32(i32 %1835, i32 %1076)
  br label %1840

1840:                                             ; preds = %1834, %1074
  %1841 = phi i32 [ %1077, %1074 ], [ %1838, %1834 ]
  %1842 = phi i32 [ %1076, %1074 ], [ %1839, %1834 ]
  %1843 = add nuw nsw i64 %1075, 1
  %1844 = icmp eq i64 %1843, %1073
  br i1 %1844, label %1845, label %1074

1845:                                             ; preds = %1840
  %1846 = icmp eq i32 %1841, 0
  br i1 %1846, label %1859, label %1847

1847:                                             ; preds = %1845
  %1848 = load ptr, ptr @spiral_search_x, align 8, !tbaa !6
  %1849 = sext i32 %1841 to i64
  %1850 = getelementptr inbounds i16, ptr %1848, i64 %1849
  %1851 = load i16, ptr %1850, align 2, !tbaa !35
  %1852 = load i16, ptr %8, align 2, !tbaa !35
  %1853 = add i16 %1852, %1851
  store i16 %1853, ptr %8, align 2, !tbaa !35
  %1854 = load ptr, ptr @spiral_search_y, align 8, !tbaa !6
  %1855 = getelementptr inbounds i16, ptr %1854, i64 %1849
  %1856 = load i16, ptr %1855, align 2, !tbaa !35
  %1857 = load i16, ptr %9, align 2, !tbaa !35
  %1858 = add i16 %1857, %1856
  store i16 %1858, ptr %9, align 2, !tbaa !35
  br label %1859

1859:                                             ; preds = %1044, %1847, %1845
  %1860 = phi i32 [ %1842, %1847 ], [ %1842, %1845 ], [ %1002, %1044 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %17) #16
  ret i32 %1860
}

declare dso_local signext i32 @clip1a(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @BPredPartitionCost(i32 noundef signext %0, i32 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca [64 x i32], align 4
  %8 = alloca [16 x [16 x i32]], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #16
  %9 = load ptr, ptr @input, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 84
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds [8 x [2 x i32]], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = getelementptr inbounds [8 x [2 x i32]], ptr %10, i64 0, i64 %11, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !19
  %16 = tail call i32 @llvm.smin.i32(i32 %0, i32 4)
  %17 = getelementptr inbounds i8, ptr %9, i64 148
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [8 x [2 x i32]], ptr %17, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = getelementptr inbounds i8, ptr %19, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !19
  %23 = icmp eq i32 %5, 0
  %24 = load ptr, ptr @img, align 8
  %25 = select i1 %23, i64 89352, i64 89344
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %24, i64 89328
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds [5 x [4 x i32]], ptr @PartitionMotionSearch.by0, i64 0, i64 %18, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !19
  %33 = add nsw i32 %32, %22
  %34 = icmp sgt i32 %22, 0
  br i1 %34, label %35, label %364

35:                                               ; preds = %6
  %36 = getelementptr inbounds [8 x [2 x i32]], ptr %17, i64 0, i64 %11
  %37 = getelementptr inbounds i8, ptr %36, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa !19
  %39 = load i32, ptr %36, align 4, !tbaa !19
  %40 = getelementptr inbounds [5 x [4 x i32]], ptr @PartitionMotionSearch.bx0, i64 0, i64 %18, i64 %30
  %41 = load i32, ptr %40, align 4, !tbaa !19
  %42 = add nsw i32 %41, %20
  %43 = icmp sgt i32 %20, 0
  %44 = load ptr, ptr @mvbits, align 8
  %45 = sext i16 %2 to i64
  %46 = sext i16 %3 to i64
  %47 = sext i32 %41 to i64
  %48 = sext i32 %39 to i64
  %49 = sext i32 %42 to i64
  %50 = sext i32 %32 to i64
  %51 = sext i32 %38 to i64
  %52 = sext i32 %33 to i64
  br label %53

53:                                               ; preds = %35, %128
  %54 = phi i64 [ %50, %35 ], [ %130, %128 ]
  %55 = phi i32 [ 0, %35 ], [ %129, %128 ]
  br i1 %43, label %56, label %128

56:                                               ; preds = %53
  %57 = getelementptr inbounds ptr, ptr %27, i64 %54
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds ptr, ptr %29, i64 %54
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  br label %61

61:                                               ; preds = %56, %61
  %62 = phi i64 [ %47, %56 ], [ %126, %61 ]
  %63 = phi i32 [ %55, %56 ], [ %125, %61 ]
  %64 = getelementptr inbounds ptr, ptr %58, i64 %62
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = getelementptr inbounds ptr, ptr %66, i64 %45
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds ptr, ptr %68, i64 %11
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load i16, ptr %70, align 2, !tbaa !35
  %72 = sext i16 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %60, i64 %62
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = getelementptr inbounds ptr, ptr %75, i64 %45
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds ptr, ptr %77, i64 %11
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = load i16, ptr %79, align 2, !tbaa !35
  %81 = sext i16 %80 to i64
  %82 = sub nsw i64 %72, %81
  %83 = getelementptr inbounds i32, ptr %44, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !19
  %85 = add nsw i32 %84, %63
  %86 = getelementptr inbounds i8, ptr %70, i64 2
  %87 = load i16, ptr %86, align 2, !tbaa !35
  %88 = sext i16 %87 to i64
  %89 = getelementptr inbounds i8, ptr %79, i64 2
  %90 = load i16, ptr %89, align 2, !tbaa !35
  %91 = sext i16 %90 to i64
  %92 = sub nsw i64 %88, %91
  %93 = getelementptr inbounds i32, ptr %44, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !19
  %95 = add nsw i32 %85, %94
  %96 = getelementptr inbounds i8, ptr %65, i64 8
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = getelementptr inbounds ptr, ptr %97, i64 %46
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = getelementptr inbounds ptr, ptr %99, i64 %11
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = load i16, ptr %101, align 2, !tbaa !35
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds i8, ptr %74, i64 8
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  %106 = getelementptr inbounds ptr, ptr %105, i64 %46
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = getelementptr inbounds ptr, ptr %107, i64 %11
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = load i16, ptr %109, align 2, !tbaa !35
  %111 = sext i16 %110 to i64
  %112 = sub nsw i64 %103, %111
  %113 = getelementptr inbounds i32, ptr %44, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !19
  %115 = add nsw i32 %95, %114
  %116 = getelementptr inbounds i8, ptr %101, i64 2
  %117 = load i16, ptr %116, align 2, !tbaa !35
  %118 = sext i16 %117 to i64
  %119 = getelementptr inbounds i8, ptr %109, i64 2
  %120 = load i16, ptr %119, align 2, !tbaa !35
  %121 = sext i16 %120 to i64
  %122 = sub nsw i64 %118, %121
  %123 = getelementptr inbounds i32, ptr %44, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !19
  %125 = add nsw i32 %115, %124
  %126 = add nsw i64 %62, %48
  %127 = icmp slt i64 %126, %49
  br i1 %127, label %61, label %128

128:                                              ; preds = %61, %53
  %129 = phi i32 [ %55, %53 ], [ %125, %61 ]
  %130 = add nsw i64 %54, %51
  %131 = icmp slt i64 %130, %52
  br i1 %131, label %53, label %132

132:                                              ; preds = %128
  %133 = mul nsw i32 %129, %4
  %134 = ashr i32 %133, 16
  br i1 %34, label %135, label %364

135:                                              ; preds = %132
  %136 = getelementptr inbounds [5 x [4 x i32]], ptr @PartitionMotionSearch.bx0, i64 0, i64 %18, i64 %30
  %137 = load i32, ptr %136, align 4, !tbaa !19
  %138 = add nsw i32 %137, %20
  %139 = icmp sgt i32 %20, 0
  %140 = icmp sgt i32 %0, 4
  %141 = sext i32 %137 to i64
  %142 = sext i32 %138 to i64
  %143 = sext i32 %32 to i64
  %144 = sext i32 %33 to i64
  %145 = getelementptr inbounds i8, ptr %7, i64 4
  %146 = getelementptr inbounds i8, ptr %7, i64 8
  %147 = getelementptr inbounds i8, ptr %7, i64 12
  %148 = getelementptr inbounds i8, ptr %7, i64 16
  %149 = getelementptr inbounds i8, ptr %7, i64 20
  %150 = getelementptr inbounds i8, ptr %7, i64 24
  %151 = getelementptr inbounds i8, ptr %7, i64 28
  %152 = getelementptr inbounds i8, ptr %7, i64 32
  %153 = getelementptr inbounds i8, ptr %7, i64 36
  %154 = getelementptr inbounds i8, ptr %7, i64 40
  %155 = getelementptr inbounds i8, ptr %7, i64 44
  %156 = getelementptr inbounds i8, ptr %7, i64 48
  %157 = getelementptr inbounds i8, ptr %7, i64 52
  %158 = getelementptr inbounds i8, ptr %7, i64 56
  %159 = getelementptr inbounds i8, ptr %7, i64 60
  br label %160

160:                                              ; preds = %135, %358
  %161 = phi ptr [ %9, %135 ], [ %359, %358 ]
  %162 = phi i64 [ 0, %135 ], [ %361, %358 ]
  %163 = phi i64 [ %143, %135 ], [ %362, %358 ]
  %164 = phi i32 [ %134, %135 ], [ %360, %358 ]
  %165 = trunc nsw i64 %163 to i32
  %166 = shl i32 %165, 2
  br i1 %139, label %167, label %358

167:                                              ; preds = %160
  %168 = load ptr, ptr @img, align 8, !tbaa !6
  %169 = getelementptr inbounds i8, ptr %168, i64 172
  %170 = load i32, ptr %169, align 4, !tbaa !39
  %171 = add nsw i32 %170, %166
  %172 = sext i32 %166 to i64
  %173 = sext i32 %171 to i64
  %174 = or disjoint i64 %172, 1
  %175 = or disjoint i64 %162, 1
  %176 = or disjoint i64 %172, 2
  %177 = or disjoint i64 %162, 2
  %178 = or disjoint i64 %172, 3
  %179 = or disjoint i64 %162, 3
  br label %180

180:                                              ; preds = %167, %353
  %181 = phi i64 [ 0, %167 ], [ %355, %353 ]
  %182 = phi i64 [ %141, %167 ], [ %356, %353 ]
  %183 = phi i32 [ %164, %167 ], [ %354, %353 ]
  %184 = load ptr, ptr @img, align 8, !tbaa !6
  %185 = getelementptr inbounds i8, ptr %184, i64 168
  %186 = load i32, ptr %185, align 8, !tbaa !38
  %187 = trunc nsw i64 %182 to i32
  %188 = shl i32 %187, 2
  %189 = add nsw i32 %186, %188
  tail call void @LumaPrediction4x4Bi(i32 noundef signext %188, i32 noundef signext %166, i32 noundef signext 2, i32 noundef signext %0, i32 noundef signext %0, i16 noundef signext %2, i16 noundef signext %3, i32 noundef signext %5) #16
  %190 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %191 = load ptr, ptr @img, align 8, !tbaa !6
  %192 = getelementptr inbounds i8, ptr %191, i64 12600
  %193 = sext i32 %188 to i64
  %194 = sext i32 %189 to i64
  %195 = getelementptr inbounds ptr, ptr %190, i64 %173
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  %197 = getelementptr inbounds i16, ptr %196, i64 %194
  %198 = load i16, ptr %197, align 2, !tbaa !35
  %199 = zext i16 %198 to i32
  %200 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %172, i64 %193
  %201 = load i16, ptr %200, align 2, !tbaa !35
  %202 = zext i16 %201 to i32
  %203 = sub nsw i32 %199, %202
  %204 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %162, i64 %181
  store i32 %203, ptr %204, align 4, !tbaa !19
  store i32 %203, ptr %7, align 4, !tbaa !19
  %205 = add nsw i64 %194, 1
  %206 = getelementptr inbounds i16, ptr %196, i64 %205
  %207 = load i16, ptr %206, align 2, !tbaa !35
  %208 = zext i16 %207 to i32
  %209 = or disjoint i64 %193, 1
  %210 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %172, i64 %209
  %211 = load i16, ptr %210, align 2, !tbaa !35
  %212 = zext i16 %211 to i32
  %213 = sub nsw i32 %208, %212
  %214 = or disjoint i64 %181, 1
  %215 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %162, i64 %214
  store i32 %213, ptr %215, align 4, !tbaa !19
  store i32 %213, ptr %145, align 4, !tbaa !19
  %216 = add nsw i64 %194, 2
  %217 = getelementptr inbounds i16, ptr %196, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !35
  %219 = zext i16 %218 to i32
  %220 = or disjoint i64 %193, 2
  %221 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %172, i64 %220
  %222 = load i16, ptr %221, align 2, !tbaa !35
  %223 = zext i16 %222 to i32
  %224 = sub nsw i32 %219, %223
  %225 = or disjoint i64 %181, 2
  %226 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %162, i64 %225
  store i32 %224, ptr %226, align 4, !tbaa !19
  store i32 %224, ptr %146, align 4, !tbaa !19
  %227 = add nsw i64 %194, 3
  %228 = getelementptr inbounds i16, ptr %196, i64 %227
  %229 = load i16, ptr %228, align 2, !tbaa !35
  %230 = zext i16 %229 to i32
  %231 = or disjoint i64 %193, 3
  %232 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %172, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !35
  %234 = zext i16 %233 to i32
  %235 = sub nsw i32 %230, %234
  %236 = or disjoint i64 %181, 3
  %237 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %162, i64 %236
  store i32 %235, ptr %237, align 4, !tbaa !19
  store i32 %235, ptr %147, align 4, !tbaa !19
  %238 = getelementptr ptr, ptr %190, i64 %173
  %239 = getelementptr i8, ptr %238, i64 8
  %240 = load ptr, ptr %239, align 8, !tbaa !6
  %241 = getelementptr inbounds i16, ptr %240, i64 %194
  %242 = load i16, ptr %241, align 2, !tbaa !35
  %243 = zext i16 %242 to i32
  %244 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %174, i64 %193
  %245 = load i16, ptr %244, align 2, !tbaa !35
  %246 = zext i16 %245 to i32
  %247 = sub nsw i32 %243, %246
  %248 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %175, i64 %181
  store i32 %247, ptr %248, align 4, !tbaa !19
  store i32 %247, ptr %148, align 4, !tbaa !19
  %249 = getelementptr inbounds i16, ptr %240, i64 %205
  %250 = load i16, ptr %249, align 2, !tbaa !35
  %251 = zext i16 %250 to i32
  %252 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %174, i64 %209
  %253 = load i16, ptr %252, align 2, !tbaa !35
  %254 = zext i16 %253 to i32
  %255 = sub nsw i32 %251, %254
  %256 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %175, i64 %214
  store i32 %255, ptr %256, align 4, !tbaa !19
  store i32 %255, ptr %149, align 4, !tbaa !19
  %257 = getelementptr inbounds i16, ptr %240, i64 %216
  %258 = load i16, ptr %257, align 2, !tbaa !35
  %259 = zext i16 %258 to i32
  %260 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %174, i64 %220
  %261 = load i16, ptr %260, align 2, !tbaa !35
  %262 = zext i16 %261 to i32
  %263 = sub nsw i32 %259, %262
  %264 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %175, i64 %225
  store i32 %263, ptr %264, align 4, !tbaa !19
  store i32 %263, ptr %150, align 4, !tbaa !19
  %265 = getelementptr inbounds i16, ptr %240, i64 %227
  %266 = load i16, ptr %265, align 2, !tbaa !35
  %267 = zext i16 %266 to i32
  %268 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %174, i64 %231
  %269 = load i16, ptr %268, align 2, !tbaa !35
  %270 = zext i16 %269 to i32
  %271 = sub nsw i32 %267, %270
  %272 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %175, i64 %236
  store i32 %271, ptr %272, align 4, !tbaa !19
  store i32 %271, ptr %151, align 4, !tbaa !19
  %273 = getelementptr ptr, ptr %190, i64 %173
  %274 = getelementptr i8, ptr %273, i64 16
  %275 = load ptr, ptr %274, align 8, !tbaa !6
  %276 = getelementptr inbounds i16, ptr %275, i64 %194
  %277 = load i16, ptr %276, align 2, !tbaa !35
  %278 = zext i16 %277 to i32
  %279 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %176, i64 %193
  %280 = load i16, ptr %279, align 2, !tbaa !35
  %281 = zext i16 %280 to i32
  %282 = sub nsw i32 %278, %281
  %283 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %177, i64 %181
  store i32 %282, ptr %283, align 4, !tbaa !19
  store i32 %282, ptr %152, align 4, !tbaa !19
  %284 = getelementptr inbounds i16, ptr %275, i64 %205
  %285 = load i16, ptr %284, align 2, !tbaa !35
  %286 = zext i16 %285 to i32
  %287 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %176, i64 %209
  %288 = load i16, ptr %287, align 2, !tbaa !35
  %289 = zext i16 %288 to i32
  %290 = sub nsw i32 %286, %289
  %291 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %177, i64 %214
  store i32 %290, ptr %291, align 4, !tbaa !19
  store i32 %290, ptr %153, align 4, !tbaa !19
  %292 = getelementptr inbounds i16, ptr %275, i64 %216
  %293 = load i16, ptr %292, align 2, !tbaa !35
  %294 = zext i16 %293 to i32
  %295 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %176, i64 %220
  %296 = load i16, ptr %295, align 2, !tbaa !35
  %297 = zext i16 %296 to i32
  %298 = sub nsw i32 %294, %297
  %299 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %177, i64 %225
  store i32 %298, ptr %299, align 4, !tbaa !19
  store i32 %298, ptr %154, align 4, !tbaa !19
  %300 = getelementptr inbounds i16, ptr %275, i64 %227
  %301 = load i16, ptr %300, align 2, !tbaa !35
  %302 = zext i16 %301 to i32
  %303 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %176, i64 %231
  %304 = load i16, ptr %303, align 2, !tbaa !35
  %305 = zext i16 %304 to i32
  %306 = sub nsw i32 %302, %305
  %307 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %177, i64 %236
  store i32 %306, ptr %307, align 4, !tbaa !19
  store i32 %306, ptr %155, align 4, !tbaa !19
  %308 = getelementptr ptr, ptr %190, i64 %173
  %309 = getelementptr i8, ptr %308, i64 24
  %310 = load ptr, ptr %309, align 8, !tbaa !6
  %311 = getelementptr inbounds i16, ptr %310, i64 %194
  %312 = load i16, ptr %311, align 2, !tbaa !35
  %313 = zext i16 %312 to i32
  %314 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %178, i64 %193
  %315 = load i16, ptr %314, align 2, !tbaa !35
  %316 = zext i16 %315 to i32
  %317 = sub nsw i32 %313, %316
  %318 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %179, i64 %181
  store i32 %317, ptr %318, align 4, !tbaa !19
  store i32 %317, ptr %156, align 4, !tbaa !19
  %319 = getelementptr inbounds i16, ptr %310, i64 %205
  %320 = load i16, ptr %319, align 2, !tbaa !35
  %321 = zext i16 %320 to i32
  %322 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %178, i64 %209
  %323 = load i16, ptr %322, align 2, !tbaa !35
  %324 = zext i16 %323 to i32
  %325 = sub nsw i32 %321, %324
  %326 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %179, i64 %214
  store i32 %325, ptr %326, align 4, !tbaa !19
  store i32 %325, ptr %157, align 4, !tbaa !19
  %327 = getelementptr inbounds i16, ptr %310, i64 %216
  %328 = load i16, ptr %327, align 2, !tbaa !35
  %329 = zext i16 %328 to i32
  %330 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %178, i64 %220
  %331 = load i16, ptr %330, align 2, !tbaa !35
  %332 = zext i16 %331 to i32
  %333 = sub nsw i32 %329, %332
  %334 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %179, i64 %225
  store i32 %333, ptr %334, align 4, !tbaa !19
  store i32 %333, ptr %158, align 4, !tbaa !19
  %335 = getelementptr inbounds i16, ptr %310, i64 %227
  %336 = load i16, ptr %335, align 2, !tbaa !35
  %337 = zext i16 %336 to i32
  %338 = getelementptr inbounds [16 x [16 x i16]], ptr %192, i64 0, i64 %178, i64 %231
  %339 = load i16, ptr %338, align 2, !tbaa !35
  %340 = zext i16 %339 to i32
  %341 = sub nsw i32 %337, %340
  %342 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %179, i64 %236
  store i32 %341, ptr %342, align 4, !tbaa !19
  store i32 %341, ptr %159, align 4, !tbaa !19
  %343 = load ptr, ptr @input, align 8, !tbaa !6
  %344 = getelementptr inbounds i8, ptr %343, i64 3892
  %345 = load i32, ptr %344, align 4, !tbaa !55
  %346 = icmp eq i32 %345, 0
  %347 = or i1 %140, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %180
  %349 = getelementptr inbounds i8, ptr %343, i64 24
  %350 = load i32, ptr %349, align 8, !tbaa !54
  %351 = call signext i32 @SATD(ptr noundef nonnull %7, i32 noundef signext %350)
  %352 = add nsw i32 %351, %183
  br label %353

353:                                              ; preds = %348, %180
  %354 = phi i32 [ %352, %348 ], [ %183, %180 ]
  %355 = add nuw nsw i64 %181, 4
  %356 = add nsw i64 %182, 1
  %357 = icmp slt i64 %356, %142
  br i1 %357, label %180, label %358

358:                                              ; preds = %353, %160
  %359 = phi ptr [ %161, %160 ], [ %343, %353 ]
  %360 = phi i32 [ %164, %160 ], [ %354, %353 ]
  %361 = add nuw nsw i64 %162, 4
  %362 = add nsw i64 %163, 1
  %363 = icmp slt i64 %362, %144
  br i1 %363, label %160, label %364

364:                                              ; preds = %358, %6, %132
  %365 = phi ptr [ %9, %132 ], [ %9, %6 ], [ %359, %358 ]
  %366 = phi i32 [ %134, %132 ], [ 0, %6 ], [ %360, %358 ]
  %367 = getelementptr inbounds i8, ptr %365, i64 3892
  %368 = load i32, ptr %367, align 4, !tbaa !55
  %369 = icmp ne i32 %368, 0
  %370 = icmp slt i32 %0, 5
  %371 = and i1 %370, %369
  br i1 %371, label %372, label %426

372:                                              ; preds = %364
  %373 = getelementptr inbounds i8, ptr %365, i64 84
  %374 = getelementptr inbounds [8 x [2 x i32]], ptr %373, i64 0, i64 %18, i64 1
  %375 = load i32, ptr %374, align 4, !tbaa !19
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %426

377:                                              ; preds = %372
  %378 = getelementptr inbounds [8 x [2 x i32]], ptr %373, i64 0, i64 %18
  %379 = load i32, ptr %378, align 4, !tbaa !19
  %380 = icmp sgt i32 %379, 0
  %381 = getelementptr inbounds i8, ptr %365, i64 24
  %382 = tail call i32 @llvm.smin.i32(i32 %15, i32 8)
  %383 = sext i32 %382 to i64
  %384 = tail call i32 @llvm.smin.i32(i32 %13, i32 8)
  %385 = sext i32 %384 to i64
  %386 = sext i32 %379 to i64
  %387 = zext nneg i32 %375 to i64
  %388 = getelementptr inbounds i8, ptr %7, i64 32
  %389 = getelementptr inbounds i8, ptr %7, i64 64
  %390 = getelementptr inbounds i8, ptr %7, i64 96
  %391 = getelementptr inbounds i8, ptr %7, i64 128
  %392 = getelementptr inbounds i8, ptr %7, i64 160
  %393 = getelementptr inbounds i8, ptr %7, i64 192
  %394 = getelementptr inbounds i8, ptr %7, i64 224
  br label %395

395:                                              ; preds = %377, %422
  %396 = phi i64 [ 0, %377 ], [ %424, %422 ]
  %397 = phi i32 [ %366, %377 ], [ %423, %422 ]
  br i1 %380, label %398, label %422

398:                                              ; preds = %395
  %399 = load i32, ptr %381, align 8, !tbaa !54
  %400 = add nsw i64 %396, 7
  %401 = add nsw i64 %396, 1
  %402 = add nsw i64 %396, 2
  %403 = add nsw i64 %396, 3
  %404 = add nsw i64 %396, 4
  %405 = add nsw i64 %396, 5
  %406 = add nsw i64 %396, 6
  br label %407

407:                                              ; preds = %398, %407
  %408 = phi i64 [ 0, %398 ], [ %420, %407 ]
  %409 = phi i32 [ %397, %398 ], [ %419, %407 ]
  %410 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %396, i64 %408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %410, i64 32, i1 false)
  %411 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %401, i64 %408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %388, ptr noundef nonnull align 4 dereferenceable(32) %411, i64 32, i1 false)
  %412 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %402, i64 %408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %389, ptr noundef nonnull align 4 dereferenceable(32) %412, i64 32, i1 false)
  %413 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %403, i64 %408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %390, ptr noundef nonnull align 4 dereferenceable(32) %413, i64 32, i1 false)
  %414 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %404, i64 %408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %391, ptr noundef nonnull align 4 dereferenceable(32) %414, i64 32, i1 false)
  %415 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %405, i64 %408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %392, ptr noundef nonnull align 4 dereferenceable(32) %415, i64 32, i1 false)
  %416 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %406, i64 %408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %393, ptr noundef nonnull align 4 dereferenceable(32) %416, i64 32, i1 false)
  %417 = getelementptr inbounds [16 x [16 x i32]], ptr %8, i64 0, i64 %400, i64 %408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %394, ptr noundef nonnull align 4 dereferenceable(32) %417, i64 32, i1 false)
  %418 = call signext i32 @SATD8X8(ptr noundef nonnull %7, i32 noundef signext %399)
  %419 = add nsw i32 %418, %409
  %420 = add nsw i64 %408, %385
  %421 = icmp slt i64 %420, %386
  br i1 %421, label %407, label %422

422:                                              ; preds = %407, %395
  %423 = phi i32 [ %397, %395 ], [ %419, %407 ]
  %424 = add nsw i64 %396, %383
  %425 = icmp slt i64 %424, %387
  br i1 %425, label %395, label %426

426:                                              ; preds = %422, %372, %364
  %427 = phi i32 [ %366, %364 ], [ %366, %372 ], [ %423, %422 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #16
  ret i32 %427
}

declare dso_local void @LumaPrediction4x4Bi(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @BlockMotionSearch(i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) local_unnamed_addr #0 {
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.timeb, align 8
  %11 = alloca %struct.timeb, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca [2 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #16
  %17 = ashr i32 %2, 2
  %18 = ashr i32 %3, 2
  %19 = load ptr, ptr @input, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 84
  %21 = sext i32 %4 to i64
  %22 = getelementptr inbounds [8 x [2 x i32]], ptr %20, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !19
  %24 = getelementptr inbounds i8, ptr %22, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !19
  %26 = load ptr, ptr @img, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %26, i64 168
  %28 = load i32, ptr %27, align 8, !tbaa !38
  %29 = add nsw i32 %28, %2
  %30 = getelementptr inbounds i8, ptr %26, i64 172
  %31 = load i32, ptr %30, align 4, !tbaa !39
  %32 = add nsw i32 %31, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  %33 = getelementptr inbounds i8, ptr %26, i64 89328
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = sext i32 %18 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = sext i32 %17 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = sext i16 %0 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds ptr, ptr %46, i64 %21
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %26, i64 89336
  %50 = load ptr, ptr %49, align 8, !tbaa !60
  %51 = getelementptr inbounds i8, ptr %26, i64 90220
  %52 = load i32, ptr %51, align 4, !tbaa !45
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %7
  %55 = getelementptr inbounds i8, ptr %26, i64 31576
  %56 = load ptr, ptr %55, align 8, !tbaa !20
  %57 = getelementptr inbounds i8, ptr %26, i64 12
  %58 = load i32, ptr %57, align 4, !tbaa !21
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.macroblock, ptr %56, i64 %59, i32 19
  %61 = load i32, ptr %60, align 8, !tbaa !49
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = and i32 %58, 1
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 2, i32 4
  br label %67

67:                                               ; preds = %7, %54, %63
  %68 = phi i32 [ %66, %63 ], [ 0, %54 ], [ 0, %7 ]
  %69 = getelementptr inbounds i8, ptr %19, i64 3964
  %70 = load i32, ptr %69, align 4, !tbaa !41
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load ptr, ptr @EPZSDistortion, align 8, !tbaa !6
  %74 = add nsw i32 %68, %1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr ptr, ptr %77, i64 %21
  %79 = getelementptr i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  br label %81

81:                                               ; preds = %67, %72
  %82 = phi ptr [ %80, %72 ], [ null, %67 ]
  %83 = call signext i32 @ftime(ptr noundef nonnull %10) #16
  %84 = icmp sgt i32 %25, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = sext i32 %29 to i64
  %87 = sext i32 %23 to i64
  %88 = shl nsw i64 %87, 1
  %89 = sext i32 %32 to i64
  %90 = zext nneg i32 %25 to i64
  br label %91

91:                                               ; preds = %85, %91
  %92 = phi i64 [ 0, %85 ], [ %100, %91 ]
  %93 = getelementptr inbounds [16 x ptr], ptr @BlockMotionSearch.orig_pic, i64 0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %96 = getelementptr ptr, ptr %95, i64 %92
  %97 = getelementptr ptr, ptr %96, i64 %89
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = getelementptr inbounds i16, ptr %98, i64 %86
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %94, ptr align 2 %99, i64 %88, i1 false)
  %100 = add nuw nsw i64 %92, 1
  %101 = icmp eq i64 %100, %90
  br i1 %101, label %102, label %91

102:                                              ; preds = %91, %81
  %103 = load ptr, ptr @input, align 8, !tbaa !6
  %104 = getelementptr inbounds i8, ptr %103, i64 3964
  %105 = load i32, ptr %104, align 4, !tbaa !41
  switch i32 %105, label %108 [
    i32 1, label %106
    i32 2, label %107
  ]

106:                                              ; preds = %102
  call void @setup_FME(i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %18, i32 noundef signext %17, i32 noundef signext %4, ptr noundef %50) #16
  br label %108

107:                                              ; preds = %102
  call void @simplified_setup_FME(i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %18, i32 noundef signext %17, i32 noundef signext %4, ptr noundef %50) #16
  br label %108

108:                                              ; preds = %102, %107, %106
  %109 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %109, i64 6480
  %111 = load ptr, ptr %110, align 8, !tbaa !33
  %112 = getelementptr inbounds ptr, ptr %111, i64 %41
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = getelementptr inbounds i8, ptr %109, i64 6504
  %115 = load ptr, ptr %114, align 8, !tbaa !34
  %116 = getelementptr inbounds ptr, ptr %115, i64 %41
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  call void @SetMotionVectorPredictor(ptr noundef %48, ptr noundef %113, ptr noundef %117, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %17, i32 noundef signext %18, i32 noundef signext %23, i32 noundef signext %25)
  %118 = load i16, ptr %48, align 2, !tbaa !35
  %119 = getelementptr inbounds i8, ptr %48, i64 2
  %120 = load i16, ptr %119, align 2, !tbaa !35
  %121 = load ptr, ptr @input, align 8, !tbaa !6
  %122 = getelementptr inbounds i8, ptr %121, i64 3964
  %123 = load i32, ptr %122, align 4, !tbaa !41
  switch i32 %123, label %359 [
    i32 1, label %124
    i32 2, label %229
    i32 3, label %310
  ]

124:                                              ; preds = %108
  %125 = sdiv i16 %118, 4
  %126 = sdiv i16 %120, 4
  %127 = getelementptr inbounds i8, ptr %121, i64 3136
  %128 = load i32, ptr %127, align 8, !tbaa !36
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = sub nsw i32 0, %5
  %132 = sext i16 %125 to i32
  %133 = call i32 @llvm.smin.i32(i32 %132, i32 %5)
  %134 = call i32 @llvm.smax.i32(i32 %133, i32 %131)
  %135 = trunc i32 %134 to i16
  %136 = sext i16 %126 to i32
  %137 = call i32 @llvm.smin.i32(i32 %136, i32 %5)
  %138 = call i32 @llvm.smax.i32(i32 %137, i32 %131)
  %139 = trunc i32 %138 to i16
  br label %140

140:                                              ; preds = %130, %124
  %141 = phi i16 [ %139, %130 ], [ %126, %124 ]
  %142 = phi i16 [ %135, %130 ], [ %125, %124 ]
  %143 = sext i16 %142 to i32
  %144 = add nsw i32 %5, -2047
  %145 = icmp sgt i32 %144, %143
  %146 = sub nsw i32 2047, %5
  %147 = call i32 @llvm.smin.i32(i32 %146, i32 %143)
  %148 = select i1 %145, i32 %144, i32 %147
  %149 = trunc i32 %148 to i16
  store i16 %149, ptr %8, align 2, !tbaa !35
  %150 = sext i16 %141 to i32
  %151 = load ptr, ptr @img, align 8, !tbaa !6
  %152 = getelementptr inbounds i8, ptr %151, i64 8
  %153 = load i32, ptr %152, align 8, !tbaa !37
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [17 x [6 x i32]], ptr @LEVELMVLIMIT, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !19
  %157 = add nsw i32 %156, %5
  %158 = icmp sgt i32 %157, %150
  br i1 %158, label %164, label %159

159:                                              ; preds = %140
  %160 = getelementptr inbounds i8, ptr %155, i64 4
  %161 = load i32, ptr %160, align 4, !tbaa !19
  %162 = sub nsw i32 %161, %5
  %163 = call i32 @llvm.smin.i32(i32 %162, i32 %150)
  br label %164

164:                                              ; preds = %159, %140
  %165 = phi i32 [ %157, %140 ], [ %163, %159 ]
  %166 = trunc i32 %165 to i16
  store i16 %166, ptr %9, align 2, !tbaa !35
  %167 = call signext i32 @FastIntegerPelBlockMotionSearch(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext %4, i16 noundef signext %118, i16 noundef signext %120, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext %5, i32 noundef signext 2147483647, i32 noundef signext %6) #16
  %168 = ashr i32 %23, 2
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %361

170:                                              ; preds = %164
  %171 = ashr i32 %25, 2
  %172 = icmp sgt i32 %171, 0
  %173 = icmp eq i32 %1, 0
  %174 = icmp eq i16 %0, 0
  %175 = zext nneg i32 %168 to i64
  %176 = zext nneg i32 %171 to i64
  br label %177

177:                                              ; preds = %170, %226
  %178 = phi i64 [ 0, %170 ], [ %227, %226 ]
  br i1 %172, label %179, label %226

179:                                              ; preds = %177
  %180 = load ptr, ptr @fastme_l1_cost, align 8
  %181 = load ptr, ptr @img, align 8
  %182 = getelementptr inbounds i8, ptr %181, i64 156
  %183 = getelementptr inbounds i8, ptr %181, i64 152
  %184 = add nsw i64 %178, %38
  %185 = load ptr, ptr @fastme_ref_cost, align 8
  %186 = getelementptr inbounds ptr, ptr %185, i64 %44
  %187 = load ptr, ptr @fastme_l0_cost, align 8
  %188 = trunc i64 %184 to i32
  br label %189

189:                                              ; preds = %179, %223
  %190 = phi i64 [ 0, %179 ], [ %224, %223 ]
  br i1 %173, label %191, label %204

191:                                              ; preds = %189
  %192 = load ptr, ptr %186, align 8, !tbaa !6
  %193 = getelementptr inbounds ptr, ptr %192, i64 %21
  %194 = load ptr, ptr %193, align 8, !tbaa !6
  %195 = add nsw i64 %190, %35
  %196 = getelementptr inbounds ptr, ptr %194, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  %198 = getelementptr inbounds i32, ptr %197, i64 %184
  store i32 %167, ptr %198, align 4, !tbaa !19
  br i1 %174, label %199, label %223

199:                                              ; preds = %191
  %200 = load i32, ptr %182, align 4, !tbaa !61
  %201 = ashr i32 %200, 2
  %202 = trunc nsw i64 %195 to i32
  %203 = add i32 %201, %202
  br label %210

204:                                              ; preds = %189
  %205 = load i32, ptr %182, align 4, !tbaa !61
  %206 = ashr i32 %205, 2
  %207 = trunc i64 %190 to i32
  %208 = add i32 %18, %207
  %209 = add i32 %208, %206
  br label %210

210:                                              ; preds = %199, %204
  %211 = phi i32 [ %209, %204 ], [ %203, %199 ]
  %212 = phi ptr [ %180, %204 ], [ %187, %199 ]
  %213 = getelementptr inbounds ptr, ptr %212, i64 %21
  %214 = load ptr, ptr %213, align 8, !tbaa !6
  %215 = sext i32 %211 to i64
  %216 = getelementptr inbounds ptr, ptr %214, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  %218 = load i32, ptr %183, align 8, !tbaa !62
  %219 = ashr i32 %218, 2
  %220 = add i32 %219, %188
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, ptr %217, i64 %221
  store i32 %167, ptr %222, align 4, !tbaa !19
  br label %223

223:                                              ; preds = %210, %191
  %224 = add nuw nsw i64 %190, 1
  %225 = icmp eq i64 %224, %176
  br i1 %225, label %226, label %189

226:                                              ; preds = %223, %177
  %227 = add nuw nsw i64 %178, 1
  %228 = icmp eq i64 %227, %175
  br i1 %228, label %361, label %177

229:                                              ; preds = %108
  %230 = sdiv i16 %118, 4
  %231 = sdiv i16 %120, 4
  %232 = getelementptr inbounds i8, ptr %121, i64 3136
  %233 = load i32, ptr %232, align 8, !tbaa !36
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %229
  %236 = sub nsw i32 0, %5
  %237 = sext i16 %230 to i32
  %238 = call i32 @llvm.smin.i32(i32 %237, i32 %5)
  %239 = call i32 @llvm.smax.i32(i32 %238, i32 %236)
  %240 = trunc i32 %239 to i16
  %241 = sext i16 %231 to i32
  %242 = call i32 @llvm.smin.i32(i32 %241, i32 %5)
  %243 = call i32 @llvm.smax.i32(i32 %242, i32 %236)
  %244 = trunc i32 %243 to i16
  br label %245

245:                                              ; preds = %235, %229
  %246 = phi i16 [ %244, %235 ], [ %231, %229 ]
  %247 = phi i16 [ %240, %235 ], [ %230, %229 ]
  %248 = sext i16 %247 to i32
  %249 = add nsw i32 %5, -2047
  %250 = icmp sgt i32 %249, %248
  %251 = sub nsw i32 2047, %5
  %252 = call i32 @llvm.smin.i32(i32 %251, i32 %248)
  %253 = select i1 %250, i32 %249, i32 %252
  %254 = trunc i32 %253 to i16
  store i16 %254, ptr %8, align 2, !tbaa !35
  %255 = sext i16 %246 to i32
  %256 = load ptr, ptr @img, align 8, !tbaa !6
  %257 = getelementptr inbounds i8, ptr %256, i64 8
  %258 = load i32, ptr %257, align 8, !tbaa !37
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [17 x [6 x i32]], ptr @LEVELMVLIMIT, i64 0, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !19
  %262 = add nsw i32 %261, %5
  %263 = icmp sgt i32 %262, %255
  br i1 %263, label %269, label %264

264:                                              ; preds = %245
  %265 = getelementptr inbounds i8, ptr %260, i64 4
  %266 = load i32, ptr %265, align 4, !tbaa !19
  %267 = sub nsw i32 %266, %5
  %268 = call i32 @llvm.smin.i32(i32 %267, i32 %255)
  br label %269

269:                                              ; preds = %264, %245
  %270 = phi i32 [ %262, %245 ], [ %268, %264 ]
  %271 = trunc i32 %270 to i16
  store i16 %271, ptr %9, align 2, !tbaa !35
  %272 = call signext i32 @simplified_FastIntegerPelBlockMotionSearch(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext %4, i16 noundef signext %118, i16 noundef signext %120, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext %5, i32 noundef signext 2147483647, i32 noundef signext %6) #16
  %273 = ashr i32 %23, 2
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %361

275:                                              ; preds = %269
  %276 = ashr i32 %25, 2
  %277 = icmp sgt i32 %276, 0
  %278 = icmp eq i32 %1, 0
  br label %279

279:                                              ; preds = %275, %307
  %280 = phi i32 [ 0, %275 ], [ %308, %307 ]
  br i1 %277, label %281, label %307

281:                                              ; preds = %279
  %282 = load ptr, ptr @simplified_fastme_l1_cost, align 8
  %283 = load ptr, ptr @img, align 8
  %284 = getelementptr inbounds i8, ptr %283, i64 156
  %285 = getelementptr inbounds i8, ptr %283, i64 152
  %286 = add nsw i32 %280, %17
  %287 = load ptr, ptr @simplified_fastme_l0_cost, align 8
  %288 = select i1 %278, ptr %287, ptr %282
  %289 = getelementptr inbounds ptr, ptr %288, i64 %21
  %290 = load ptr, ptr %289, align 8, !tbaa !6
  br label %291

291:                                              ; preds = %281, %291
  %292 = phi i32 [ 0, %281 ], [ %305, %291 ]
  %293 = load i32, ptr %284, align 4, !tbaa !61
  %294 = ashr i32 %293, 2
  %295 = add nsw i32 %292, %18
  %296 = add i32 %295, %294
  %297 = sext i32 %296 to i64
  %298 = load i32, ptr %285, align 8, !tbaa !62
  %299 = ashr i32 %298, 2
  %300 = add i32 %286, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %290, i64 %297
  %303 = load ptr, ptr %302, align 8, !tbaa !6
  %304 = getelementptr inbounds i32, ptr %303, i64 %301
  store i32 %272, ptr %304, align 4, !tbaa !19
  %305 = add nuw nsw i32 %292, 1
  %306 = icmp eq i32 %305, %276
  br i1 %306, label %307, label %291

307:                                              ; preds = %291, %279
  %308 = add nuw nsw i32 %280, 1
  %309 = icmp eq i32 %308, %273
  br i1 %309, label %361, label %279

310:                                              ; preds = %108
  %311 = sdiv i16 %118, 4
  %312 = sdiv i16 %120, 4
  %313 = getelementptr inbounds i8, ptr %121, i64 3136
  %314 = load i32, ptr %313, align 8, !tbaa !36
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %310
  %317 = sub nsw i32 0, %5
  %318 = sext i16 %311 to i32
  %319 = call i32 @llvm.smin.i32(i32 %318, i32 %5)
  %320 = call i32 @llvm.smax.i32(i32 %319, i32 %317)
  %321 = trunc i32 %320 to i16
  %322 = sext i16 %312 to i32
  %323 = call i32 @llvm.smin.i32(i32 %322, i32 %5)
  %324 = call i32 @llvm.smax.i32(i32 %323, i32 %317)
  %325 = trunc i32 %324 to i16
  br label %326

326:                                              ; preds = %316, %310
  %327 = phi i16 [ %325, %316 ], [ %312, %310 ]
  %328 = phi i16 [ %321, %316 ], [ %311, %310 ]
  %329 = sext i16 %328 to i32
  %330 = add nsw i32 %5, -2047
  %331 = icmp sgt i32 %330, %329
  %332 = sub nsw i32 2047, %5
  %333 = call i32 @llvm.smin.i32(i32 %332, i32 %329)
  %334 = select i1 %331, i32 %330, i32 %333
  %335 = trunc i32 %334 to i16
  store i16 %335, ptr %8, align 2, !tbaa !35
  %336 = sext i16 %327 to i32
  %337 = load ptr, ptr @img, align 8, !tbaa !6
  %338 = getelementptr inbounds i8, ptr %337, i64 8
  %339 = load i32, ptr %338, align 8, !tbaa !37
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [17 x [6 x i32]], ptr @LEVELMVLIMIT, i64 0, i64 %340
  %342 = load i32, ptr %341, align 4, !tbaa !19
  %343 = add nsw i32 %342, %5
  %344 = icmp sgt i32 %343, %336
  br i1 %344, label %350, label %345

345:                                              ; preds = %326
  %346 = getelementptr inbounds i8, ptr %341, i64 4
  %347 = load i32, ptr %346, align 4, !tbaa !19
  %348 = sub nsw i32 %347, %5
  %349 = call i32 @llvm.smin.i32(i32 %348, i32 %336)
  br label %350

350:                                              ; preds = %345, %326
  %351 = phi i32 [ %343, %326 ], [ %349, %345 ]
  %352 = trunc i32 %351 to i16
  store i16 %352, ptr %9, align 2, !tbaa !35
  %353 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %354 = getelementptr inbounds i8, ptr %353, i64 6480
  %355 = load ptr, ptr %354, align 8, !tbaa !33
  %356 = getelementptr inbounds i8, ptr %353, i64 6504
  %357 = load ptr, ptr %356, align 8, !tbaa !34
  %358 = call signext i32 @EPZSPelBlockMotionSearch(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %68, ptr noundef %355, ptr noundef %357, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext %4, i16 noundef signext %118, i16 noundef signext %120, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext %5, i32 noundef signext 2147483647, i32 noundef signext %6) #16
  br label %361

359:                                              ; preds = %108
  %360 = call signext i32 @FastFullPelBlockMotionSearch(ptr nonnull poison, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext %4, i16 noundef signext %118, i16 noundef signext %120, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext %5, i32 noundef signext 2147483647, i32 noundef signext %6)
  br label %361

361:                                              ; preds = %307, %226, %269, %164, %359, %350
  %362 = phi i32 [ %358, %350 ], [ %360, %359 ], [ %167, %164 ], [ %272, %269 ], [ %167, %226 ], [ %272, %307 ]
  %363 = load i16, ptr %8, align 2, !tbaa !35
  %364 = shl i16 %363, 2
  store i16 %364, ptr %8, align 2, !tbaa !35
  %365 = load i16, ptr %9, align 2, !tbaa !35
  %366 = shl i16 %365, 2
  store i16 %366, ptr %9, align 2, !tbaa !35
  %367 = load ptr, ptr @input, align 8, !tbaa !6
  %368 = getelementptr inbounds i8, ptr %367, i64 28
  %369 = load i32, ptr %368, align 4, !tbaa !63
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %440

371:                                              ; preds = %361
  %372 = getelementptr inbounds i8, ptr %367, i64 3964
  %373 = load i32, ptr %372, align 4, !tbaa !41
  %374 = icmp ne i32 %373, 3
  %375 = icmp eq i16 %0, 0
  %376 = or i1 %375, %374
  br i1 %376, label %398, label %377

377:                                              ; preds = %371
  %378 = load ptr, ptr @img, align 8, !tbaa !6
  %379 = getelementptr inbounds i8, ptr %378, i64 28
  %380 = load i32, ptr %379, align 4, !tbaa !64
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %393

382:                                              ; preds = %377
  %383 = icmp sgt i16 %0, 0
  br i1 %383, label %384, label %440

384:                                              ; preds = %382
  %385 = sitofp i32 %362 to double
  %386 = ashr i32 %29, 2
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, ptr %82, i64 %387
  %389 = load i32, ptr %388, align 4, !tbaa !19
  %390 = sitofp i32 %389 to double
  %391 = fmul double %390, 3.500000e+00
  %392 = fcmp ogt double %391, %385
  br i1 %392, label %393, label %440

393:                                              ; preds = %384, %377
  %394 = getelementptr inbounds i8, ptr %367, i64 24
  %395 = load i32, ptr %394, align 8, !tbaa !54
  %396 = icmp eq i32 %395, 1
  %397 = select i1 %396, i32 2147483647, i32 %362
  br label %435

398:                                              ; preds = %371
  %399 = getelementptr inbounds i8, ptr %367, i64 24
  %400 = load i32, ptr %399, align 8, !tbaa !54
  %401 = icmp eq i32 %400, 1
  %402 = select i1 %401, i32 2147483647, i32 %362
  switch i32 %373, label %435 [
    i32 1, label %403
    i32 2, label %419
  ]

403:                                              ; preds = %398
  %404 = icmp sgt i32 %4, 3
  br i1 %404, label %405, label %415

405:                                              ; preds = %403
  %406 = getelementptr inbounds i8, ptr %367, i64 3892
  %407 = load i32, ptr %406, align 4, !tbaa !55
  %408 = icmp ne i32 %407, 0
  %409 = icmp eq i32 %4, 4
  %410 = and i1 %409, %408
  %411 = icmp ne i32 %400, 0
  %412 = select i1 %410, i1 %411, i1 false
  %413 = zext i1 %412 to i32
  %414 = call signext i32 @FastSubPelBlockMotionSearch(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext %4, i16 noundef signext %118, i16 noundef signext %120, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext 9, i32 noundef signext 9, i32 noundef signext %402, i32 noundef signext %6, i32 noundef signext %413) #16
  br label %470

415:                                              ; preds = %403
  %416 = sext i16 %118 to i32
  %417 = sext i16 %120 to i32
  %418 = call signext i32 @SubPelBlockMotionSearch(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext %4, i32 noundef signext %416, i32 noundef signext %417, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext 9, i32 noundef signext 9, i32 noundef signext %402, i32 noundef signext %6)
  br label %440

419:                                              ; preds = %398
  %420 = icmp sgt i32 %4, 1
  br i1 %420, label %421, label %431

421:                                              ; preds = %419
  %422 = getelementptr inbounds i8, ptr %367, i64 3892
  %423 = load i32, ptr %422, align 4, !tbaa !55
  %424 = icmp ne i32 %423, 0
  %425 = icmp ult i32 %4, 5
  %426 = and i1 %425, %424
  %427 = icmp ne i32 %400, 0
  %428 = select i1 %426, i1 %427, i1 false
  %429 = zext i1 %428 to i32
  %430 = call signext i32 @simplified_FastSubPelBlockMotionSearch(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext %4, i16 noundef signext %118, i16 noundef signext %120, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext 9, i32 noundef signext 9, i32 noundef signext %402, i32 noundef signext %6, i32 noundef signext %429) #16
  br label %470

431:                                              ; preds = %419
  %432 = sext i16 %118 to i32
  %433 = sext i16 %120 to i32
  %434 = call signext i32 @simplified_FastFullSubPelBlockMotionSearch(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext %4, i32 noundef signext %432, i32 noundef signext %433, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext 9, i32 noundef signext 9, i32 noundef signext %402, i32 noundef signext %6)
  br label %440

435:                                              ; preds = %393, %398
  %436 = phi i32 [ %397, %393 ], [ %402, %398 ]
  %437 = sext i16 %118 to i32
  %438 = sext i16 %120 to i32
  %439 = call signext i32 @SubPelBlockMotionSearch(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext %4, i32 noundef signext %437, i32 noundef signext %438, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext 9, i32 noundef signext 9, i32 noundef signext %436, i32 noundef signext %6)
  br label %440

440:                                              ; preds = %382, %384, %435, %431, %415, %361
  %441 = phi i32 [ %362, %361 ], [ %418, %415 ], [ %434, %431 ], [ %439, %435 ], [ %362, %384 ], [ %362, %382 ]
  %442 = load ptr, ptr @input, align 8, !tbaa !6
  %443 = getelementptr inbounds i8, ptr %442, i64 3136
  %444 = load i32, ptr %443, align 8, !tbaa !36
  %445 = icmp eq i32 %444, 0
  %446 = icmp eq i32 %4, 1
  %447 = and i1 %446, %445
  br i1 %447, label %448, label %470

448:                                              ; preds = %440
  %449 = load ptr, ptr @img, align 8, !tbaa !6
  %450 = getelementptr inbounds i8, ptr %449, i64 24
  %451 = load i32, ptr %450, align 8, !tbaa !27
  switch i32 %451, label %470 [
    i32 0, label %452
    i32 3, label %452
  ]

452:                                              ; preds = %448, %448
  call void @FindSkipModeMotionVector()
  %453 = call signext i32 @GetSkipCostMB(i32 signext poison)
  %454 = add nsw i32 %6, 4096
  %455 = ashr i32 %454, 13
  %456 = sub nsw i32 %453, %455
  %457 = icmp slt i32 %456, %441
  br i1 %457, label %458, label %470

458:                                              ; preds = %452
  %459 = load ptr, ptr @img, align 8, !tbaa !6
  %460 = getelementptr inbounds i8, ptr %459, i64 89336
  %461 = load ptr, ptr %460, align 8, !tbaa !60
  %462 = load ptr, ptr %461, align 8, !tbaa !6
  %463 = load ptr, ptr %462, align 8, !tbaa !6
  %464 = load ptr, ptr %463, align 8, !tbaa !6
  %465 = load ptr, ptr %464, align 8, !tbaa !6
  %466 = load ptr, ptr %465, align 8, !tbaa !6
  %467 = load i16, ptr %466, align 2, !tbaa !35
  store i16 %467, ptr %8, align 2, !tbaa !35
  %468 = getelementptr inbounds i8, ptr %466, i64 2
  %469 = load i16, ptr %468, align 2, !tbaa !35
  store i16 %469, ptr %9, align 2, !tbaa !35
  br label %470

470:                                              ; preds = %405, %421, %452, %458, %448, %440
  %471 = phi i1 [ %446, %440 ], [ true, %448 ], [ true, %458 ], [ true, %452 ], [ false, %421 ], [ false, %405 ]
  %472 = phi i32 [ %441, %440 ], [ %441, %448 ], [ %456, %458 ], [ %441, %452 ], [ %430, %421 ], [ %414, %405 ]
  %473 = ashr i32 %25, 2
  %474 = add nsw i32 %473, %18
  %475 = icmp sgt i32 %473, 0
  br i1 %475, label %476, label %505

476:                                              ; preds = %470
  %477 = ashr i32 %23, 2
  %478 = add nsw i32 %477, %17
  %479 = icmp sgt i32 %477, 0
  %480 = sext i32 %478 to i64
  %481 = sext i32 %474 to i64
  br label %482

482:                                              ; preds = %476, %502
  %483 = phi i64 [ %35, %476 ], [ %503, %502 ]
  br i1 %479, label %484, label %502

484:                                              ; preds = %482
  %485 = getelementptr inbounds ptr, ptr %50, i64 %483
  %486 = load ptr, ptr %485, align 8, !tbaa !6
  %487 = load i16, ptr %8, align 2, !tbaa !35
  br label %488

488:                                              ; preds = %484, %488
  %489 = phi i64 [ %38, %484 ], [ %500, %488 ]
  %490 = getelementptr inbounds ptr, ptr %486, i64 %489
  %491 = load ptr, ptr %490, align 8, !tbaa !6
  %492 = getelementptr inbounds ptr, ptr %491, i64 %41
  %493 = load ptr, ptr %492, align 8, !tbaa !6
  %494 = getelementptr inbounds ptr, ptr %493, i64 %44
  %495 = load ptr, ptr %494, align 8, !tbaa !6
  %496 = getelementptr inbounds ptr, ptr %495, i64 %21
  %497 = load ptr, ptr %496, align 8, !tbaa !6
  store i16 %487, ptr %497, align 2, !tbaa !35
  %498 = load i16, ptr %9, align 2, !tbaa !35
  %499 = getelementptr inbounds i8, ptr %497, i64 2
  store i16 %498, ptr %499, align 2, !tbaa !35
  %500 = add nsw i64 %489, 1
  %501 = icmp slt i64 %500, %480
  br i1 %501, label %488, label %502

502:                                              ; preds = %488, %482
  %503 = add nsw i64 %483, 1
  %504 = icmp slt i64 %503, %481
  br i1 %504, label %482, label %505

505:                                              ; preds = %502, %470
  %506 = load ptr, ptr @img, align 8, !tbaa !6
  %507 = getelementptr inbounds i8, ptr %506, i64 24
  %508 = load i32, ptr %507, align 8, !tbaa !27
  %509 = icmp eq i32 %508, 1
  br i1 %509, label %510, label %715

510:                                              ; preds = %505
  %511 = load ptr, ptr @input, align 8, !tbaa !6
  %512 = getelementptr inbounds i8, ptr %511, i64 1264
  %513 = load i32, ptr %512, align 8, !tbaa !65
  %514 = icmp ne i32 %513, 0
  %515 = icmp eq i16 %0, 0
  %516 = and i1 %515, %514
  %517 = and i1 %471, %516
  br i1 %517, label %518, label %715

518:                                              ; preds = %510
  %519 = icmp eq i32 %1, 0
  %520 = select i1 %519, i64 89352, i64 89344
  %521 = getelementptr inbounds i8, ptr %506, i64 %520
  %522 = load ptr, ptr %521, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #16
  %523 = trunc i32 %1 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  %524 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %525 = getelementptr inbounds i8, ptr %524, i64 6480
  %526 = load ptr, ptr %525, align 8, !tbaa !33
  %527 = xor i32 %1, 1
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds ptr, ptr %526, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !6
  %531 = getelementptr inbounds i8, ptr %524, i64 6504
  %532 = load ptr, ptr %531, align 8, !tbaa !34
  %533 = zext i1 %519 to i32
  %534 = zext i1 %519 to i64
  %535 = getelementptr inbounds ptr, ptr %532, i64 %534
  %536 = load ptr, ptr %535, align 8, !tbaa !6
  call void @SetMotionVectorPredictor(ptr noundef nonnull %16, ptr noundef %530, ptr noundef %536, i16 noundef signext 0, i32 noundef signext %533, i32 noundef signext %17, i32 noundef signext %18, i32 noundef signext %23, i32 noundef signext %25)
  %537 = load i16, ptr %8, align 2, !tbaa !35
  %538 = sext i16 %537 to i32
  %539 = add nsw i32 %538, 2
  %540 = ashr i32 %539, 2
  %541 = trunc nsw i32 %540 to i16
  store i16 %541, ptr %8, align 2, !tbaa !35
  %542 = load i16, ptr %9, align 2, !tbaa !35
  %543 = sext i16 %542 to i32
  %544 = add nsw i32 %543, 2
  %545 = ashr i32 %544, 2
  %546 = trunc nsw i32 %545 to i16
  store i16 %546, ptr %9, align 2, !tbaa !35
  %547 = load ptr, ptr @input, align 8, !tbaa !6
  %548 = getelementptr inbounds i8, ptr %547, i64 1268
  %549 = load i32, ptr %548, align 4, !tbaa !66
  %550 = icmp slt i32 %549, 0
  br i1 %550, label %630, label %551

551:                                              ; preds = %518
  %552 = load i16, ptr %16, align 2
  %553 = getelementptr inbounds i8, ptr %16, i64 2
  %554 = load i16, ptr %553, align 2
  %555 = trunc i32 %527 to i16
  %556 = sext i16 %552 to i32
  %557 = add nsw i32 %556, 2
  %558 = ashr i32 %557, 2
  %559 = trunc nsw i32 %558 to i16
  %560 = sext i16 %554 to i32
  %561 = add nsw i32 %560, 2
  %562 = ashr i32 %561, 2
  %563 = trunc nsw i32 %562 to i16
  br label %564

564:                                              ; preds = %551, %614
  %565 = phi i16 [ %546, %551 ], [ %617, %614 ]
  %566 = phi i16 [ %541, %551 ], [ %616, %614 ]
  %567 = phi ptr [ %547, %551 ], [ %619, %614 ]
  %568 = phi i32 [ 2147483647, %551 ], [ %615, %614 ]
  %569 = phi i32 [ 0, %551 ], [ %618, %614 ]
  %570 = and i32 %569, 1
  %571 = icmp eq i32 %570, 0
  %572 = load i16, ptr %48, align 2, !tbaa !35
  %573 = load i16, ptr %119, align 2, !tbaa !35
  br i1 %571, label %577, label %574

574:                                              ; preds = %564
  %575 = load i16, ptr %12, align 2, !tbaa !35
  store i16 %575, ptr %14, align 2, !tbaa !35
  %576 = load i16, ptr %13, align 2, !tbaa !35
  br label %587

577:                                              ; preds = %564
  %578 = icmp eq i32 %569, 0
  br i1 %578, label %582, label %579

579:                                              ; preds = %577
  %580 = load i16, ptr %12, align 2, !tbaa !35
  %581 = load i16, ptr %13, align 2, !tbaa !35
  br label %582

582:                                              ; preds = %577, %579
  %583 = phi i16 [ %580, %579 ], [ %566, %577 ]
  %584 = phi i16 [ %581, %579 ], [ %565, %577 ]
  %585 = phi i16 [ %566, %579 ], [ %559, %577 ]
  %586 = phi i16 [ %565, %579 ], [ %563, %577 ]
  store i16 %583, ptr %14, align 2
  br label %587

587:                                              ; preds = %582, %574
  %588 = phi i16 [ %576, %574 ], [ %584, %582 ]
  %589 = phi i16 [ %566, %574 ], [ %585, %582 ]
  %590 = phi i16 [ %565, %574 ], [ %586, %582 ]
  %591 = phi i16 [ %552, %574 ], [ %572, %582 ]
  %592 = phi i16 [ %554, %574 ], [ %573, %582 ]
  %593 = phi i16 [ %572, %574 ], [ %552, %582 ]
  %594 = phi i16 [ %573, %574 ], [ %554, %582 ]
  %595 = phi i16 [ %555, %574 ], [ %523, %582 ]
  store i16 %588, ptr %15, align 2
  store i16 %589, ptr %12, align 2
  store i16 %590, ptr %13, align 2, !tbaa !35
  %596 = getelementptr inbounds i8, ptr %567, i64 3964
  %597 = load i32, ptr %596, align 4, !tbaa !41
  %598 = icmp eq i32 %597, 3
  %599 = sext i16 %595 to i32
  br i1 %598, label %600, label %609

600:                                              ; preds = %587
  %601 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %602 = getelementptr inbounds i8, ptr %601, i64 6480
  %603 = load ptr, ptr %602, align 8, !tbaa !33
  %604 = getelementptr inbounds i8, ptr %601, i64 6504
  %605 = load ptr, ptr %604, align 8, !tbaa !34
  %606 = getelementptr inbounds i8, ptr %567, i64 1272
  %607 = load i32, ptr %606, align 8, !tbaa !67
  %608 = call signext i32 @EPZSBiPredBlockMotionSearch(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext 0, i32 noundef signext %599, i32 noundef signext %68, ptr noundef %603, ptr noundef %605, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext 1, i16 noundef signext %591, i16 noundef signext %592, i16 noundef signext %593, i16 noundef signext %594, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef signext %607, i32 noundef signext %568, i32 noundef signext %6) #16
  br label %614

609:                                              ; preds = %587
  %610 = getelementptr inbounds i8, ptr %567, i64 1272
  %611 = load i32, ptr %610, align 8, !tbaa !67
  %612 = ashr i32 %611, %569
  %613 = call signext i32 @FullPelBlockMotionBiPred(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext 0, i32 noundef signext %599, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext 1, i16 noundef signext %591, i16 noundef signext %592, i16 noundef signext %593, i16 noundef signext %594, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef signext %612, i32 noundef signext %568, i32 noundef signext %6)
  br label %614

614:                                              ; preds = %609, %600
  %615 = phi i32 [ %608, %600 ], [ %613, %609 ]
  %616 = load i16, ptr %14, align 2, !tbaa !35
  store i16 %616, ptr %8, align 2, !tbaa !35
  %617 = load i16, ptr %15, align 2, !tbaa !35
  store i16 %617, ptr %9, align 2, !tbaa !35
  %618 = add nuw nsw i32 %569, 1
  %619 = load ptr, ptr @input, align 8, !tbaa !6
  %620 = getelementptr inbounds i8, ptr %619, i64 1268
  %621 = load i32, ptr %620, align 4, !tbaa !66
  %622 = icmp slt i32 %569, %621
  br i1 %622, label %564, label %623

623:                                              ; preds = %614
  %624 = load i16, ptr %12, align 2, !tbaa !35
  %625 = load i16, ptr %13, align 2, !tbaa !35
  %626 = shl i16 %616, 2
  %627 = shl i16 %617, 2
  %628 = shl i16 %624, 2
  %629 = shl i16 %625, 2
  br label %630

630:                                              ; preds = %623, %518
  %631 = phi i16 [ 0, %518 ], [ %629, %623 ]
  %632 = phi i16 [ 0, %518 ], [ %628, %623 ]
  %633 = phi i16 [ 0, %518 ], [ %627, %623 ]
  %634 = phi i16 [ 0, %518 ], [ %626, %623 ]
  %635 = phi i32 [ 2147483647, %518 ], [ %615, %623 ]
  %636 = phi i16 [ 0, %518 ], [ %593, %623 ]
  %637 = phi i16 [ 0, %518 ], [ %594, %623 ]
  %638 = phi i16 [ %523, %518 ], [ %595, %623 ]
  %639 = phi ptr [ %547, %518 ], [ %619, %623 ]
  store i16 %634, ptr %8, align 2, !tbaa !35
  store i16 %633, ptr %9, align 2, !tbaa !35
  store i16 %632, ptr %12, align 2, !tbaa !35
  store i16 %631, ptr %13, align 2, !tbaa !35
  %640 = getelementptr inbounds i8, ptr %639, i64 1276
  %641 = load i32, ptr %640, align 4, !tbaa !68
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %674, label %643

643:                                              ; preds = %630
  %644 = getelementptr inbounds i8, ptr %639, i64 28
  %645 = load i32, ptr %644, align 4, !tbaa !63
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %657

647:                                              ; preds = %643
  %648 = getelementptr inbounds i8, ptr %639, i64 24
  %649 = load i32, ptr %648, align 8, !tbaa !54
  %650 = icmp eq i32 %649, 0
  %651 = select i1 %650, i32 %635, i32 2147483647
  %652 = sext i16 %638 to i32
  %653 = call signext i32 @SubPelBlockSearchBiPred(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext 0, i32 noundef signext %652, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext 1, i16 noundef signext %636, i16 noundef signext %637, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef signext 9, i32 noundef signext 9, i32 noundef signext %651, i32 noundef signext %6)
  %654 = load ptr, ptr @input, align 8, !tbaa !6
  %655 = getelementptr inbounds i8, ptr %654, i64 1276
  %656 = load i32, ptr %655, align 4, !tbaa !68
  br label %657

657:                                              ; preds = %647, %643
  %658 = phi i32 [ %641, %643 ], [ %656, %647 ]
  %659 = phi ptr [ %639, %643 ], [ %654, %647 ]
  %660 = phi i32 [ %635, %643 ], [ %653, %647 ]
  %661 = icmp eq i32 %658, 2
  br i1 %661, label %662, label %674

662:                                              ; preds = %657
  %663 = getelementptr inbounds i8, ptr %659, i64 28
  %664 = load i32, ptr %663, align 4, !tbaa !63
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %674

666:                                              ; preds = %662
  %667 = getelementptr inbounds i8, ptr %659, i64 24
  %668 = load i32, ptr %667, align 8, !tbaa !54
  %669 = icmp eq i32 %668, 0
  %670 = select i1 %669, i32 %660, i32 2147483647
  %671 = icmp eq i16 %638, 0
  %672 = zext i1 %671 to i32
  %673 = call signext i32 @SubPelBlockSearchBiPred(ptr noundef nonnull @BlockMotionSearch.orig_pic, i16 noundef signext 0, i32 noundef signext %672, i32 noundef signext %29, i32 noundef signext %32, i32 noundef signext 1, i16 noundef signext %118, i16 noundef signext %120, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef signext 9, i32 noundef signext 9, i32 noundef signext %670, i32 noundef signext %6)
  br label %674

674:                                              ; preds = %630, %666, %662, %657
  br i1 %475, label %675, label %714

675:                                              ; preds = %674
  %676 = ashr i32 %23, 2
  %677 = add nsw i32 %676, %17
  %678 = icmp sgt i32 %676, 0
  %679 = sext i16 %638 to i64
  %680 = xor i16 %638, 1
  %681 = sext i16 %680 to i64
  %682 = sext i32 %677 to i64
  %683 = sext i32 %474 to i64
  br label %684

684:                                              ; preds = %675, %711
  %685 = phi i64 [ %35, %675 ], [ %712, %711 ]
  br i1 %678, label %686, label %711

686:                                              ; preds = %684
  %687 = getelementptr inbounds ptr, ptr %522, i64 %685
  %688 = load ptr, ptr %687, align 8, !tbaa !6
  br label %689

689:                                              ; preds = %686, %689
  %690 = phi i64 [ %38, %686 ], [ %709, %689 ]
  %691 = load i16, ptr %8, align 2, !tbaa !35
  %692 = getelementptr inbounds ptr, ptr %688, i64 %690
  %693 = load ptr, ptr %692, align 8, !tbaa !6
  %694 = getelementptr inbounds ptr, ptr %693, i64 %679
  %695 = load ptr, ptr %694, align 8, !tbaa !6
  %696 = load ptr, ptr %695, align 8, !tbaa !6
  %697 = getelementptr inbounds ptr, ptr %696, i64 %21
  %698 = load ptr, ptr %697, align 8, !tbaa !6
  store i16 %691, ptr %698, align 2, !tbaa !35
  %699 = load i16, ptr %9, align 2, !tbaa !35
  %700 = getelementptr inbounds i8, ptr %698, i64 2
  store i16 %699, ptr %700, align 2, !tbaa !35
  %701 = load i16, ptr %12, align 2, !tbaa !35
  %702 = getelementptr inbounds ptr, ptr %693, i64 %681
  %703 = load ptr, ptr %702, align 8, !tbaa !6
  %704 = load ptr, ptr %703, align 8, !tbaa !6
  %705 = getelementptr inbounds ptr, ptr %704, i64 %21
  %706 = load ptr, ptr %705, align 8, !tbaa !6
  store i16 %701, ptr %706, align 2, !tbaa !35
  %707 = load i16, ptr %13, align 2, !tbaa !35
  %708 = getelementptr inbounds i8, ptr %706, i64 2
  store i16 %707, ptr %708, align 2, !tbaa !35
  %709 = add nsw i64 %690, 1
  %710 = icmp slt i64 %709, %682
  br i1 %710, label %689, label %711

711:                                              ; preds = %689, %684
  %712 = add nsw i64 %685, 1
  %713 = icmp slt i64 %712, %683
  br i1 %713, label %684, label %714

714:                                              ; preds = %711, %674
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #16
  br label %715

715:                                              ; preds = %714, %510, %505
  %716 = call signext i32 @ftime(ptr noundef nonnull %11) #16
  %717 = load i64, ptr %11, align 8, !tbaa !69
  %718 = getelementptr inbounds i8, ptr %11, i64 8
  %719 = load i16, ptr %718, align 8, !tbaa !72
  %720 = zext i16 %719 to i64
  %721 = load i64, ptr %10, align 8, !tbaa !69
  %722 = getelementptr inbounds i8, ptr %10, i64 8
  %723 = load i16, ptr %722, align 8, !tbaa !72
  %724 = zext i16 %723 to i64
  %725 = sub i64 %717, %721
  %726 = mul i64 %725, 1000
  %727 = sub nsw i64 %720, %724
  %728 = add i64 %727, %726
  %729 = trunc i64 %728 to i32
  %730 = load i32, ptr @me_tot_time, align 4, !tbaa !19
  %731 = add nsw i32 %730, %729
  store i32 %731, ptr @me_tot_time, align 4, !tbaa !19
  %732 = load i32, ptr @me_time, align 4, !tbaa !19
  %733 = add nsw i32 %732, %729
  store i32 %733, ptr @me_time, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #16
  ret i32 %472
}

declare dso_local signext i32 @ftime(ptr noundef) local_unnamed_addr #3

declare dso_local void @setup_FME(i16 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local void @simplified_setup_FME(i16 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @FastIntegerPelBlockMotionSearch(ptr noundef, i16 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @simplified_FastIntegerPelBlockMotionSearch(ptr noundef, i16 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @EPZSPelBlockMotionSearch(ptr noundef, i16 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @FastSubPelBlockMotionSearch(ptr noundef, i16 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @simplified_FastSubPelBlockMotionSearch(ptr noundef, i16 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @FindSkipModeMotionVector() local_unnamed_addr #0 {
  %1 = alloca [2 x i16], align 4
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 89336
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %7 = getelementptr inbounds i8, ptr %4, i64 31576
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds i8, ptr %4, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !21
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %11
  call void @getLuma4x4Neighbour(i32 noundef signext %10, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %2) #16
  %13 = load ptr, ptr @img, align 8, !tbaa !6
  %14 = getelementptr inbounds i8, ptr %13, i64 12
  %15 = load i32, ptr %14, align 4, !tbaa !21
  call void @getLuma4x4Neighbour(i32 noundef signext %15, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %3) #16
  %16 = load i32, ptr %2, align 4, !tbaa !42
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %0
  %19 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 6504
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %2, i64 20
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %2, i64 16
  %29 = load i32, ptr %28, align 4, !tbaa !47
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %32, i64 2
  %34 = load i16, ptr %33, align 2, !tbaa !35
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds i8, ptr %19, i64 6480
  %37 = load ptr, ptr %36, align 8, !tbaa !33
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds ptr, ptr %38, i64 %25
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = getelementptr inbounds i8, ptr %40, i64 %30
  %42 = load i8, ptr %41, align 1, !tbaa !48
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds i8, ptr %12, i64 424
  %45 = load i32, ptr %44, align 8, !tbaa !49
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr @img, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %47, i64 31576
  %49 = load ptr, ptr %48, align 8, !tbaa !20
  %50 = getelementptr inbounds i8, ptr %2, i64 4
  %51 = load i32, ptr %50, align 4, !tbaa !50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.macroblock, ptr %49, i64 %52, i32 19
  %54 = load i32, ptr %53, align 8, !tbaa !49
  %55 = icmp eq i32 %54, 0
  br i1 %46, label %61, label %56

56:                                               ; preds = %18
  br i1 %55, label %57, label %65

57:                                               ; preds = %56
  %58 = sdiv i16 %34, 2
  %59 = sext i16 %58 to i32
  %60 = shl nuw nsw i32 %43, 1
  br label %65

61:                                               ; preds = %18
  br i1 %55, label %65, label %62

62:                                               ; preds = %61
  %63 = shl nsw i32 %35, 1
  %64 = lshr i32 %43, 1
  br label %65

65:                                               ; preds = %56, %57, %61, %62, %0
  %66 = phi i32 [ %63, %62 ], [ %35, %61 ], [ 0, %0 ], [ %59, %57 ], [ %35, %56 ]
  %67 = phi i32 [ %64, %62 ], [ %43, %61 ], [ 0, %0 ], [ %60, %57 ], [ %43, %56 ]
  %68 = load i32, ptr %3, align 4, !tbaa !42
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %117, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %72 = getelementptr inbounds i8, ptr %71, i64 6504
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %3, i64 20
  %76 = load i32, ptr %75, align 4, !tbaa !46
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %74, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %3, i64 16
  %81 = load i32, ptr %80, align 4, !tbaa !47
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %79, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %84, i64 2
  %86 = load i16, ptr %85, align 2, !tbaa !35
  %87 = sext i16 %86 to i32
  %88 = getelementptr inbounds i8, ptr %71, i64 6480
  %89 = load ptr, ptr %88, align 8, !tbaa !33
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = getelementptr inbounds ptr, ptr %90, i64 %77
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %92, i64 %82
  %94 = load i8, ptr %93, align 1, !tbaa !48
  %95 = zext i8 %94 to i32
  %96 = getelementptr inbounds i8, ptr %12, i64 424
  %97 = load i32, ptr %96, align 8, !tbaa !49
  %98 = icmp eq i32 %97, 0
  %99 = load ptr, ptr @img, align 8, !tbaa !6
  %100 = getelementptr inbounds i8, ptr %99, i64 31576
  %101 = load ptr, ptr %100, align 8, !tbaa !20
  %102 = getelementptr inbounds i8, ptr %3, i64 4
  %103 = load i32, ptr %102, align 4, !tbaa !50
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.macroblock, ptr %101, i64 %104, i32 19
  %106 = load i32, ptr %105, align 8, !tbaa !49
  %107 = icmp eq i32 %106, 0
  br i1 %98, label %113, label %108

108:                                              ; preds = %70
  br i1 %107, label %109, label %117

109:                                              ; preds = %108
  %110 = sdiv i16 %86, 2
  %111 = sext i16 %110 to i32
  %112 = shl nuw nsw i32 %95, 1
  br label %117

113:                                              ; preds = %70
  br i1 %107, label %117, label %114

114:                                              ; preds = %113
  %115 = shl nsw i32 %87, 1
  %116 = lshr i32 %95, 1
  br label %117

117:                                              ; preds = %108, %109, %113, %114, %65
  %118 = phi i32 [ %115, %114 ], [ %87, %113 ], [ 0, %65 ], [ %111, %109 ], [ %87, %108 ]
  %119 = phi i32 [ %116, %114 ], [ %95, %113 ], [ 0, %65 ], [ %112, %109 ], [ %95, %108 ]
  br i1 %17, label %141, label %120

120:                                              ; preds = %117
  %121 = icmp eq i32 %67, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %120
  %123 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %123, i64 6504
  %125 = load ptr, ptr %124, align 8, !tbaa !34
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = getelementptr inbounds i8, ptr %2, i64 20
  %128 = load i32, ptr %127, align 4, !tbaa !46
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %126, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = getelementptr inbounds i8, ptr %2, i64 16
  %133 = load i32, ptr %132, align 4, !tbaa !47
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %131, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = load i16, ptr %136, align 2, !tbaa !35
  %138 = icmp eq i16 %137, 0
  %139 = icmp eq i32 %66, 0
  %140 = select i1 %138, i1 %139, i1 false
  br label %141

141:                                              ; preds = %122, %120, %117
  %142 = phi i1 [ true, %117 ], [ false, %120 ], [ %140, %122 ]
  br i1 %69, label %178, label %143

143:                                              ; preds = %141
  %144 = icmp eq i32 %119, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %143
  %146 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %146, i64 6504
  %148 = load ptr, ptr %147, align 8, !tbaa !34
  %149 = load ptr, ptr %148, align 8, !tbaa !6
  %150 = getelementptr inbounds i8, ptr %3, i64 20
  %151 = load i32, ptr %150, align 4, !tbaa !46
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %149, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !6
  %155 = getelementptr inbounds i8, ptr %3, i64 16
  %156 = load i32, ptr %155, align 4, !tbaa !47
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %154, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = load i16, ptr %159, align 2, !tbaa !35
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %145
  %163 = icmp eq i32 %118, 0
  %164 = select i1 %163, i1 true, i1 %142
  br i1 %164, label %178, label %171

165:                                              ; preds = %143, %145
  br i1 %142, label %178, label %166

166:                                              ; preds = %165
  %167 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %168 = getelementptr inbounds i8, ptr %167, i64 6504
  %169 = load ptr, ptr %168, align 8, !tbaa !34
  %170 = load ptr, ptr %169, align 8, !tbaa !6
  br label %171

171:                                              ; preds = %166, %162
  %172 = phi ptr [ %170, %166 ], [ %149, %162 ]
  %173 = phi ptr [ %167, %166 ], [ %146, %162 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 6480
  %175 = load ptr, ptr %174, align 8, !tbaa !33
  %176 = load ptr, ptr %175, align 8, !tbaa !6
  call void @SetMotionVectorPredictor(ptr noundef nonnull %1, ptr noundef %176, ptr noundef %172, i16 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 16, i32 noundef signext 16)
  %177 = load i32, ptr %1, align 4
  br label %178

178:                                              ; preds = %165, %141, %162, %171
  %179 = phi i32 [ %177, %171 ], [ 0, %162 ], [ 0, %141 ], [ 0, %165 ]
  %180 = load ptr, ptr %6, align 8, !tbaa !6
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  store i32 %179, ptr %184, align 2
  %185 = load ptr, ptr %6, align 8, !tbaa !6
  %186 = getelementptr inbounds i8, ptr %185, i64 8
  %187 = load ptr, ptr %186, align 8, !tbaa !6
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = load ptr, ptr %188, align 8, !tbaa !6
  %190 = load ptr, ptr %189, align 8, !tbaa !6
  store i32 %179, ptr %190, align 2
  %191 = load ptr, ptr %6, align 8, !tbaa !6
  %192 = getelementptr inbounds i8, ptr %191, i64 16
  %193 = load ptr, ptr %192, align 8, !tbaa !6
  %194 = load ptr, ptr %193, align 8, !tbaa !6
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  store i32 %179, ptr %196, align 2
  %197 = load ptr, ptr %6, align 8, !tbaa !6
  %198 = getelementptr inbounds i8, ptr %197, i64 24
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  %200 = load ptr, ptr %199, align 8, !tbaa !6
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  store i32 %179, ptr %202, align 2
  %203 = getelementptr inbounds i8, ptr %6, i64 8
  %204 = load ptr, ptr %203, align 8, !tbaa !6
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = load ptr, ptr %207, align 8, !tbaa !6
  store i32 %179, ptr %208, align 2
  %209 = load ptr, ptr %203, align 8, !tbaa !6
  %210 = getelementptr inbounds i8, ptr %209, i64 8
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = load ptr, ptr %211, align 8, !tbaa !6
  %213 = load ptr, ptr %212, align 8, !tbaa !6
  %214 = load ptr, ptr %213, align 8, !tbaa !6
  store i32 %179, ptr %214, align 2
  %215 = load ptr, ptr %203, align 8, !tbaa !6
  %216 = getelementptr inbounds i8, ptr %215, i64 16
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  %218 = load ptr, ptr %217, align 8, !tbaa !6
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  %220 = load ptr, ptr %219, align 8, !tbaa !6
  store i32 %179, ptr %220, align 2
  %221 = load ptr, ptr %203, align 8, !tbaa !6
  %222 = getelementptr inbounds i8, ptr %221, i64 24
  %223 = load ptr, ptr %222, align 8, !tbaa !6
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  %225 = load ptr, ptr %224, align 8, !tbaa !6
  %226 = load ptr, ptr %225, align 8, !tbaa !6
  store i32 %179, ptr %226, align 2
  %227 = getelementptr inbounds i8, ptr %6, i64 16
  %228 = load ptr, ptr %227, align 8, !tbaa !6
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  %231 = load ptr, ptr %230, align 8, !tbaa !6
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  store i32 %179, ptr %232, align 2
  %233 = load ptr, ptr %227, align 8, !tbaa !6
  %234 = getelementptr inbounds i8, ptr %233, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = load ptr, ptr %235, align 8, !tbaa !6
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  %238 = load ptr, ptr %237, align 8, !tbaa !6
  store i32 %179, ptr %238, align 2
  %239 = load ptr, ptr %227, align 8, !tbaa !6
  %240 = getelementptr inbounds i8, ptr %239, i64 16
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = load ptr, ptr %241, align 8, !tbaa !6
  %243 = load ptr, ptr %242, align 8, !tbaa !6
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  store i32 %179, ptr %244, align 2
  %245 = load ptr, ptr %227, align 8, !tbaa !6
  %246 = getelementptr inbounds i8, ptr %245, i64 24
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  store i32 %179, ptr %250, align 2
  %251 = getelementptr inbounds i8, ptr %6, i64 24
  %252 = load ptr, ptr %251, align 8, !tbaa !6
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = load ptr, ptr %253, align 8, !tbaa !6
  %255 = load ptr, ptr %254, align 8, !tbaa !6
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  store i32 %179, ptr %256, align 2
  %257 = load ptr, ptr %251, align 8, !tbaa !6
  %258 = getelementptr inbounds i8, ptr %257, i64 8
  %259 = load ptr, ptr %258, align 8, !tbaa !6
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  %261 = load ptr, ptr %260, align 8, !tbaa !6
  %262 = load ptr, ptr %261, align 8, !tbaa !6
  store i32 %179, ptr %262, align 2
  %263 = load ptr, ptr %251, align 8, !tbaa !6
  %264 = getelementptr inbounds i8, ptr %263, i64 16
  %265 = load ptr, ptr %264, align 8, !tbaa !6
  %266 = load ptr, ptr %265, align 8, !tbaa !6
  %267 = load ptr, ptr %266, align 8, !tbaa !6
  %268 = load ptr, ptr %267, align 8, !tbaa !6
  store i32 %179, ptr %268, align 2
  %269 = load ptr, ptr %251, align 8, !tbaa !6
  %270 = getelementptr inbounds i8, ptr %269, i64 24
  %271 = load ptr, ptr %270, align 8, !tbaa !6
  %272 = load ptr, ptr %271, align 8, !tbaa !6
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  %274 = load ptr, ptr %273, align 8, !tbaa !6
  store i32 %179, ptr %274, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #16
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @GetSkipCostMB(i32 signext %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i32], align 4
  %3 = alloca [8 x [8 x i32]], align 4
  %4 = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %5 = getelementptr inbounds i8, ptr %2, i64 4
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  %7 = getelementptr inbounds i8, ptr %2, i64 12
  %8 = getelementptr inbounds i8, ptr %2, i64 16
  %9 = getelementptr inbounds i8, ptr %2, i64 20
  %10 = getelementptr inbounds i8, ptr %2, i64 24
  %11 = getelementptr inbounds i8, ptr %2, i64 28
  %12 = getelementptr inbounds i8, ptr %2, i64 32
  %13 = getelementptr inbounds i8, ptr %2, i64 36
  %14 = getelementptr inbounds i8, ptr %2, i64 40
  %15 = getelementptr inbounds i8, ptr %2, i64 44
  %16 = getelementptr inbounds i8, ptr %2, i64 48
  %17 = getelementptr inbounds i8, ptr %2, i64 52
  %18 = getelementptr inbounds i8, ptr %2, i64 56
  %19 = getelementptr inbounds i8, ptr %2, i64 60
  br label %20

20:                                               ; preds = %1, %244
  %21 = phi i64 [ 0, %1 ], [ %248, %244 ]
  %22 = phi i1 [ false, %1 ], [ %247, %244 ]
  %23 = phi i32 [ 0, %1 ], [ %246, %244 ]
  %24 = phi i32 [ 0, %1 ], [ %245, %244 ]
  %25 = and i64 %21, 9223372036854775800
  %26 = select i1 %22, i64 8, i64 0
  %27 = shl nuw nsw i32 %23, 2
  %28 = and i32 %27, 8
  %29 = shl nuw nsw i32 %23, 3
  %30 = and i32 %29, 8
  %31 = add nuw nsw i32 %28, 8
  %32 = add nuw nsw i32 %30, 8
  %33 = zext nneg i32 %30 to i64
  %34 = zext nneg i32 %32 to i64
  %35 = zext nneg i32 %28 to i64
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %20, %231
  %38 = phi i64 [ %25, %20 ], [ %232, %231 ]
  %39 = phi i32 [ %24, %20 ], [ %228, %231 ]
  %40 = load ptr, ptr @img, align 8, !tbaa !6
  %41 = getelementptr inbounds i8, ptr %40, i64 172
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %38, %43
  %45 = sub nuw nsw i64 %38, %35
  %46 = trunc nuw nsw i64 %38 to i32
  %47 = or disjoint i64 %38, 1
  %48 = or disjoint i64 %45, 1
  %49 = or disjoint i64 %38, 2
  %50 = or disjoint i64 %45, 2
  %51 = or disjoint i64 %38, 3
  %52 = or disjoint i64 %45, 3
  br label %53

53:                                               ; preds = %37, %227
  %54 = phi i64 [ %26, %37 ], [ %229, %227 ]
  %55 = phi i32 [ %39, %37 ], [ %228, %227 ]
  %56 = load ptr, ptr @img, align 8, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %56, i64 168
  %58 = load i32, ptr %57, align 8, !tbaa !38
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %54, %59
  %61 = trunc nuw nsw i64 %54 to i32
  tail call void @LumaPrediction4x4(i32 noundef signext %61, i32 noundef signext %46, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #16
  %62 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %63 = load ptr, ptr @img, align 8, !tbaa !6
  %64 = getelementptr inbounds i8, ptr %63, i64 12600
  %65 = sub nuw nsw i64 %54, %33
  %66 = getelementptr inbounds ptr, ptr %62, i64 %44
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = getelementptr inbounds i16, ptr %67, i64 %60
  %69 = load i16, ptr %68, align 2, !tbaa !35
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %38, i64 %54
  %72 = load i16, ptr %71, align 2, !tbaa !35
  %73 = zext i16 %72 to i32
  %74 = sub nsw i32 %70, %73
  %75 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %45, i64 %65
  store i32 %74, ptr %75, align 4, !tbaa !19
  store i32 %74, ptr %2, align 4, !tbaa !19
  %76 = add nsw i64 %60, 1
  %77 = getelementptr inbounds i16, ptr %67, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !35
  %79 = zext i16 %78 to i32
  %80 = or disjoint i64 %54, 1
  %81 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %38, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !35
  %83 = zext i16 %82 to i32
  %84 = sub nsw i32 %79, %83
  %85 = or disjoint i64 %65, 1
  %86 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %45, i64 %85
  store i32 %84, ptr %86, align 4, !tbaa !19
  store i32 %84, ptr %5, align 4, !tbaa !19
  %87 = add nsw i64 %60, 2
  %88 = getelementptr inbounds i16, ptr %67, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !35
  %90 = zext i16 %89 to i32
  %91 = or disjoint i64 %54, 2
  %92 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %38, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !35
  %94 = zext i16 %93 to i32
  %95 = sub nsw i32 %90, %94
  %96 = or disjoint i64 %65, 2
  %97 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %45, i64 %96
  store i32 %95, ptr %97, align 4, !tbaa !19
  store i32 %95, ptr %6, align 4, !tbaa !19
  %98 = add nsw i64 %60, 3
  %99 = getelementptr inbounds i16, ptr %67, i64 %98
  %100 = load i16, ptr %99, align 2, !tbaa !35
  %101 = zext i16 %100 to i32
  %102 = or disjoint i64 %54, 3
  %103 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %38, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !35
  %105 = zext i16 %104 to i32
  %106 = sub nsw i32 %101, %105
  %107 = or disjoint i64 %65, 3
  %108 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %45, i64 %107
  store i32 %106, ptr %108, align 4, !tbaa !19
  store i32 %106, ptr %7, align 4, !tbaa !19
  %109 = getelementptr ptr, ptr %62, i64 %44
  %110 = getelementptr i8, ptr %109, i64 8
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = getelementptr inbounds i16, ptr %111, i64 %60
  %113 = load i16, ptr %112, align 2, !tbaa !35
  %114 = zext i16 %113 to i32
  %115 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %47, i64 %54
  %116 = load i16, ptr %115, align 2, !tbaa !35
  %117 = zext i16 %116 to i32
  %118 = sub nsw i32 %114, %117
  %119 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %48, i64 %65
  store i32 %118, ptr %119, align 4, !tbaa !19
  store i32 %118, ptr %8, align 4, !tbaa !19
  %120 = getelementptr inbounds i16, ptr %111, i64 %76
  %121 = load i16, ptr %120, align 2, !tbaa !35
  %122 = zext i16 %121 to i32
  %123 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %47, i64 %80
  %124 = load i16, ptr %123, align 2, !tbaa !35
  %125 = zext i16 %124 to i32
  %126 = sub nsw i32 %122, %125
  %127 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %48, i64 %85
  store i32 %126, ptr %127, align 4, !tbaa !19
  store i32 %126, ptr %9, align 4, !tbaa !19
  %128 = getelementptr inbounds i16, ptr %111, i64 %87
  %129 = load i16, ptr %128, align 2, !tbaa !35
  %130 = zext i16 %129 to i32
  %131 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %47, i64 %91
  %132 = load i16, ptr %131, align 2, !tbaa !35
  %133 = zext i16 %132 to i32
  %134 = sub nsw i32 %130, %133
  %135 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %48, i64 %96
  store i32 %134, ptr %135, align 4, !tbaa !19
  store i32 %134, ptr %10, align 4, !tbaa !19
  %136 = getelementptr inbounds i16, ptr %111, i64 %98
  %137 = load i16, ptr %136, align 2, !tbaa !35
  %138 = zext i16 %137 to i32
  %139 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %47, i64 %102
  %140 = load i16, ptr %139, align 2, !tbaa !35
  %141 = zext i16 %140 to i32
  %142 = sub nsw i32 %138, %141
  %143 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %48, i64 %107
  store i32 %142, ptr %143, align 4, !tbaa !19
  store i32 %142, ptr %11, align 4, !tbaa !19
  %144 = getelementptr ptr, ptr %62, i64 %44
  %145 = getelementptr i8, ptr %144, i64 16
  %146 = load ptr, ptr %145, align 8, !tbaa !6
  %147 = getelementptr inbounds i16, ptr %146, i64 %60
  %148 = load i16, ptr %147, align 2, !tbaa !35
  %149 = zext i16 %148 to i32
  %150 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %49, i64 %54
  %151 = load i16, ptr %150, align 2, !tbaa !35
  %152 = zext i16 %151 to i32
  %153 = sub nsw i32 %149, %152
  %154 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %50, i64 %65
  store i32 %153, ptr %154, align 4, !tbaa !19
  store i32 %153, ptr %12, align 4, !tbaa !19
  %155 = getelementptr inbounds i16, ptr %146, i64 %76
  %156 = load i16, ptr %155, align 2, !tbaa !35
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %49, i64 %80
  %159 = load i16, ptr %158, align 2, !tbaa !35
  %160 = zext i16 %159 to i32
  %161 = sub nsw i32 %157, %160
  %162 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %50, i64 %85
  store i32 %161, ptr %162, align 4, !tbaa !19
  store i32 %161, ptr %13, align 4, !tbaa !19
  %163 = getelementptr inbounds i16, ptr %146, i64 %87
  %164 = load i16, ptr %163, align 2, !tbaa !35
  %165 = zext i16 %164 to i32
  %166 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %49, i64 %91
  %167 = load i16, ptr %166, align 2, !tbaa !35
  %168 = zext i16 %167 to i32
  %169 = sub nsw i32 %165, %168
  %170 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %50, i64 %96
  store i32 %169, ptr %170, align 4, !tbaa !19
  store i32 %169, ptr %14, align 4, !tbaa !19
  %171 = getelementptr inbounds i16, ptr %146, i64 %98
  %172 = load i16, ptr %171, align 2, !tbaa !35
  %173 = zext i16 %172 to i32
  %174 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %49, i64 %102
  %175 = load i16, ptr %174, align 2, !tbaa !35
  %176 = zext i16 %175 to i32
  %177 = sub nsw i32 %173, %176
  %178 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %50, i64 %107
  store i32 %177, ptr %178, align 4, !tbaa !19
  store i32 %177, ptr %15, align 4, !tbaa !19
  %179 = getelementptr ptr, ptr %62, i64 %44
  %180 = getelementptr i8, ptr %179, i64 24
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = getelementptr inbounds i16, ptr %181, i64 %60
  %183 = load i16, ptr %182, align 2, !tbaa !35
  %184 = zext i16 %183 to i32
  %185 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %51, i64 %54
  %186 = load i16, ptr %185, align 2, !tbaa !35
  %187 = zext i16 %186 to i32
  %188 = sub nsw i32 %184, %187
  %189 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %52, i64 %65
  store i32 %188, ptr %189, align 4, !tbaa !19
  store i32 %188, ptr %16, align 4, !tbaa !19
  %190 = getelementptr inbounds i16, ptr %181, i64 %76
  %191 = load i16, ptr %190, align 2, !tbaa !35
  %192 = zext i16 %191 to i32
  %193 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %51, i64 %80
  %194 = load i16, ptr %193, align 2, !tbaa !35
  %195 = zext i16 %194 to i32
  %196 = sub nsw i32 %192, %195
  %197 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %52, i64 %85
  store i32 %196, ptr %197, align 4, !tbaa !19
  store i32 %196, ptr %17, align 4, !tbaa !19
  %198 = getelementptr inbounds i16, ptr %181, i64 %87
  %199 = load i16, ptr %198, align 2, !tbaa !35
  %200 = zext i16 %199 to i32
  %201 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %51, i64 %91
  %202 = load i16, ptr %201, align 2, !tbaa !35
  %203 = zext i16 %202 to i32
  %204 = sub nsw i32 %200, %203
  %205 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %52, i64 %96
  store i32 %204, ptr %205, align 4, !tbaa !19
  store i32 %204, ptr %18, align 4, !tbaa !19
  %206 = getelementptr inbounds i16, ptr %181, i64 %98
  %207 = load i16, ptr %206, align 2, !tbaa !35
  %208 = zext i16 %207 to i32
  %209 = getelementptr inbounds [16 x [16 x i16]], ptr %64, i64 0, i64 %51, i64 %102
  %210 = load i16, ptr %209, align 2, !tbaa !35
  %211 = zext i16 %210 to i32
  %212 = sub nsw i32 %208, %211
  %213 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %52, i64 %107
  store i32 %212, ptr %213, align 4, !tbaa !19
  store i32 %212, ptr %19, align 4, !tbaa !19
  %214 = load ptr, ptr @input, align 8, !tbaa !6
  %215 = getelementptr inbounds i8, ptr %214, i64 3136
  %216 = load i32, ptr %215, align 8, !tbaa !36
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %53
  %219 = getelementptr inbounds i8, ptr %214, i64 3892
  %220 = load i32, ptr %219, align 4, !tbaa !55
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %218, %53
  %223 = getelementptr inbounds i8, ptr %214, i64 24
  %224 = load i32, ptr %223, align 8, !tbaa !54
  %225 = call signext i32 @SATD(ptr noundef nonnull %2, i32 noundef signext %224)
  %226 = add nsw i32 %225, %55
  br label %227

227:                                              ; preds = %218, %222
  %228 = phi i32 [ %55, %218 ], [ %226, %222 ]
  %229 = add nuw nsw i64 %54, 4
  %230 = icmp ult i64 %229, %34
  br i1 %230, label %53, label %231

231:                                              ; preds = %227
  %232 = add nuw nsw i64 %38, 4
  %233 = icmp ult i64 %232, %36
  br i1 %233, label %37, label %234

234:                                              ; preds = %231
  br i1 %217, label %235, label %244

235:                                              ; preds = %234
  %236 = getelementptr inbounds i8, ptr %214, i64 3892
  %237 = load i32, ptr %236, align 4, !tbaa !55
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %4, ptr noundef nonnull align 4 dereferenceable(256) %3, i64 256, i1 false)
  %240 = getelementptr inbounds i8, ptr %214, i64 24
  %241 = load i32, ptr %240, align 8, !tbaa !54
  %242 = call signext i32 @SATD8X8(ptr noundef nonnull %4, i32 noundef signext %241)
  %243 = add nsw i32 %242, %228
  br label %244

244:                                              ; preds = %234, %235, %239
  %245 = phi i32 [ %243, %239 ], [ %228, %235 ], [ %228, %234 ]
  %246 = add nuw nsw i32 %23, 1
  %247 = xor i1 %22, true
  %248 = add nuw nsw i64 %21, 4
  %249 = icmp eq i32 %246, 4
  br i1 %249, label %250, label %20

250:                                              ; preds = %244
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  ret i32 %245
}

declare dso_local signext i32 @EPZSBiPredBlockMotionSearch(ptr noundef, i16 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @BIDPartitionCost(i32 noundef signext %0, i32 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i32], align 4
  %7 = alloca [16 x [16 x i32]], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #16
  %8 = load ptr, ptr @input, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 84
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [8 x [2 x i32]], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !19
  %13 = getelementptr inbounds [8 x [2 x i32]], ptr %9, i64 0, i64 %10, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !19
  %15 = tail call i32 @llvm.smin.i32(i32 %0, i32 4)
  %16 = getelementptr inbounds i8, ptr %8, i64 148
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [8 x [2 x i32]], ptr %16, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !19
  %20 = getelementptr inbounds i8, ptr %18, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !19
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds [5 x [4 x i32]], ptr @PartitionMotionSearch.bx0, i64 0, i64 %17, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = getelementptr inbounds [5 x [4 x i32]], ptr @PartitionMotionSearch.by0, i64 0, i64 %17, i64 %22
  %26 = load i32, ptr %25, align 4, !tbaa !19
  %27 = load ptr, ptr @img, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 89336
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds i8, ptr %27, i64 89328
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = add nsw i32 %26, %21
  %33 = icmp sgt i32 %21, 0
  br i1 %33, label %34, label %359

34:                                               ; preds = %5
  %35 = getelementptr inbounds [8 x [2 x i32]], ptr %16, i64 0, i64 %10
  %36 = getelementptr inbounds i8, ptr %35, i64 4
  %37 = load i32, ptr %36, align 4, !tbaa !19
  %38 = load i32, ptr %35, align 4, !tbaa !19
  %39 = add nsw i32 %24, %19
  %40 = icmp sgt i32 %19, 0
  %41 = load ptr, ptr @mvbits, align 8
  %42 = sext i16 %2 to i64
  %43 = sext i16 %3 to i64
  %44 = sext i32 %24 to i64
  %45 = sext i32 %38 to i64
  %46 = sext i32 %39 to i64
  %47 = sext i32 %26 to i64
  %48 = sext i32 %37 to i64
  %49 = sext i32 %32 to i64
  br label %50

50:                                               ; preds = %34, %125
  %51 = phi i64 [ %47, %34 ], [ %127, %125 ]
  %52 = phi i32 [ 0, %34 ], [ %126, %125 ]
  br i1 %40, label %53, label %125

53:                                               ; preds = %50
  %54 = getelementptr inbounds ptr, ptr %29, i64 %51
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds ptr, ptr %31, i64 %51
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi i64 [ %44, %53 ], [ %123, %58 ]
  %60 = phi i32 [ %52, %53 ], [ %122, %58 ]
  %61 = getelementptr inbounds ptr, ptr %55, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds ptr, ptr %63, i64 %42
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = getelementptr inbounds ptr, ptr %65, i64 %10
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = load i16, ptr %67, align 2, !tbaa !35
  %69 = sext i16 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %57, i64 %59
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds ptr, ptr %72, i64 %42
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds ptr, ptr %74, i64 %10
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = load i16, ptr %76, align 2, !tbaa !35
  %78 = sext i16 %77 to i64
  %79 = sub nsw i64 %69, %78
  %80 = getelementptr inbounds i32, ptr %41, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !19
  %82 = add nsw i32 %81, %60
  %83 = getelementptr inbounds i8, ptr %67, i64 2
  %84 = load i16, ptr %83, align 2, !tbaa !35
  %85 = sext i16 %84 to i64
  %86 = getelementptr inbounds i8, ptr %76, i64 2
  %87 = load i16, ptr %86, align 2, !tbaa !35
  %88 = sext i16 %87 to i64
  %89 = sub nsw i64 %85, %88
  %90 = getelementptr inbounds i32, ptr %41, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !19
  %92 = add nsw i32 %82, %91
  %93 = getelementptr inbounds i8, ptr %62, i64 8
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = getelementptr inbounds ptr, ptr %94, i64 %43
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = getelementptr inbounds ptr, ptr %96, i64 %10
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = load i16, ptr %98, align 2, !tbaa !35
  %100 = sext i16 %99 to i64
  %101 = getelementptr inbounds i8, ptr %71, i64 8
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds ptr, ptr %102, i64 %43
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds ptr, ptr %104, i64 %10
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = load i16, ptr %106, align 2, !tbaa !35
  %108 = sext i16 %107 to i64
  %109 = sub nsw i64 %100, %108
  %110 = getelementptr inbounds i32, ptr %41, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !19
  %112 = add nsw i32 %92, %111
  %113 = getelementptr inbounds i8, ptr %98, i64 2
  %114 = load i16, ptr %113, align 2, !tbaa !35
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds i8, ptr %106, i64 2
  %117 = load i16, ptr %116, align 2, !tbaa !35
  %118 = sext i16 %117 to i64
  %119 = sub nsw i64 %115, %118
  %120 = getelementptr inbounds i32, ptr %41, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !19
  %122 = add nsw i32 %112, %121
  %123 = add nsw i64 %59, %45
  %124 = icmp slt i64 %123, %46
  br i1 %124, label %58, label %125

125:                                              ; preds = %58, %50
  %126 = phi i32 [ %52, %50 ], [ %122, %58 ]
  %127 = add nsw i64 %51, %48
  %128 = icmp slt i64 %127, %49
  br i1 %128, label %50, label %129

129:                                              ; preds = %125
  %130 = mul nsw i32 %126, %4
  %131 = ashr i32 %130, 16
  br i1 %33, label %132, label %359

132:                                              ; preds = %129
  %133 = add nsw i32 %24, %19
  %134 = icmp sgt i32 %19, 0
  %135 = icmp sgt i32 %0, 4
  %136 = sext i32 %24 to i64
  %137 = sext i32 %133 to i64
  %138 = sext i32 %26 to i64
  %139 = sext i32 %32 to i64
  %140 = getelementptr inbounds i8, ptr %6, i64 4
  %141 = getelementptr inbounds i8, ptr %6, i64 8
  %142 = getelementptr inbounds i8, ptr %6, i64 12
  %143 = getelementptr inbounds i8, ptr %6, i64 16
  %144 = getelementptr inbounds i8, ptr %6, i64 20
  %145 = getelementptr inbounds i8, ptr %6, i64 24
  %146 = getelementptr inbounds i8, ptr %6, i64 28
  %147 = getelementptr inbounds i8, ptr %6, i64 32
  %148 = getelementptr inbounds i8, ptr %6, i64 36
  %149 = getelementptr inbounds i8, ptr %6, i64 40
  %150 = getelementptr inbounds i8, ptr %6, i64 44
  %151 = getelementptr inbounds i8, ptr %6, i64 48
  %152 = getelementptr inbounds i8, ptr %6, i64 52
  %153 = getelementptr inbounds i8, ptr %6, i64 56
  %154 = getelementptr inbounds i8, ptr %6, i64 60
  br label %155

155:                                              ; preds = %132, %353
  %156 = phi ptr [ %8, %132 ], [ %354, %353 ]
  %157 = phi i64 [ 0, %132 ], [ %356, %353 ]
  %158 = phi i64 [ %138, %132 ], [ %357, %353 ]
  %159 = phi i32 [ %131, %132 ], [ %355, %353 ]
  %160 = trunc nsw i64 %158 to i32
  %161 = shl i32 %160, 2
  br i1 %134, label %162, label %353

162:                                              ; preds = %155
  %163 = load ptr, ptr @img, align 8, !tbaa !6
  %164 = getelementptr inbounds i8, ptr %163, i64 172
  %165 = load i32, ptr %164, align 4, !tbaa !39
  %166 = add nsw i32 %165, %161
  %167 = sext i32 %161 to i64
  %168 = sext i32 %166 to i64
  %169 = or disjoint i64 %167, 1
  %170 = or disjoint i64 %157, 1
  %171 = or disjoint i64 %167, 2
  %172 = or disjoint i64 %157, 2
  %173 = or disjoint i64 %167, 3
  %174 = or disjoint i64 %157, 3
  br label %175

175:                                              ; preds = %162, %348
  %176 = phi i64 [ 0, %162 ], [ %350, %348 ]
  %177 = phi i64 [ %136, %162 ], [ %351, %348 ]
  %178 = phi i32 [ %159, %162 ], [ %349, %348 ]
  %179 = load ptr, ptr @img, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %179, i64 168
  %181 = load i32, ptr %180, align 8, !tbaa !38
  %182 = trunc nsw i64 %177 to i32
  %183 = shl i32 %182, 2
  %184 = add nsw i32 %181, %183
  tail call void @LumaPrediction4x4(i32 noundef signext %183, i32 noundef signext %161, i32 noundef signext 2, i32 noundef signext %0, i32 noundef signext %0, i16 noundef signext %2, i16 noundef signext %3) #16
  %185 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %186 = load ptr, ptr @img, align 8, !tbaa !6
  %187 = getelementptr inbounds i8, ptr %186, i64 12600
  %188 = sext i32 %183 to i64
  %189 = sext i32 %184 to i64
  %190 = getelementptr inbounds ptr, ptr %185, i64 %168
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  %192 = getelementptr inbounds i16, ptr %191, i64 %189
  %193 = load i16, ptr %192, align 2, !tbaa !35
  %194 = zext i16 %193 to i32
  %195 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %167, i64 %188
  %196 = load i16, ptr %195, align 2, !tbaa !35
  %197 = zext i16 %196 to i32
  %198 = sub nsw i32 %194, %197
  %199 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %157, i64 %176
  store i32 %198, ptr %199, align 4, !tbaa !19
  store i32 %198, ptr %6, align 4, !tbaa !19
  %200 = add nsw i64 %189, 1
  %201 = getelementptr inbounds i16, ptr %191, i64 %200
  %202 = load i16, ptr %201, align 2, !tbaa !35
  %203 = zext i16 %202 to i32
  %204 = or disjoint i64 %188, 1
  %205 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %167, i64 %204
  %206 = load i16, ptr %205, align 2, !tbaa !35
  %207 = zext i16 %206 to i32
  %208 = sub nsw i32 %203, %207
  %209 = or disjoint i64 %176, 1
  %210 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %157, i64 %209
  store i32 %208, ptr %210, align 4, !tbaa !19
  store i32 %208, ptr %140, align 4, !tbaa !19
  %211 = add nsw i64 %189, 2
  %212 = getelementptr inbounds i16, ptr %191, i64 %211
  %213 = load i16, ptr %212, align 2, !tbaa !35
  %214 = zext i16 %213 to i32
  %215 = or disjoint i64 %188, 2
  %216 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %167, i64 %215
  %217 = load i16, ptr %216, align 2, !tbaa !35
  %218 = zext i16 %217 to i32
  %219 = sub nsw i32 %214, %218
  %220 = or disjoint i64 %176, 2
  %221 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %157, i64 %220
  store i32 %219, ptr %221, align 4, !tbaa !19
  store i32 %219, ptr %141, align 4, !tbaa !19
  %222 = add nsw i64 %189, 3
  %223 = getelementptr inbounds i16, ptr %191, i64 %222
  %224 = load i16, ptr %223, align 2, !tbaa !35
  %225 = zext i16 %224 to i32
  %226 = or disjoint i64 %188, 3
  %227 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %167, i64 %226
  %228 = load i16, ptr %227, align 2, !tbaa !35
  %229 = zext i16 %228 to i32
  %230 = sub nsw i32 %225, %229
  %231 = or disjoint i64 %176, 3
  %232 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %157, i64 %231
  store i32 %230, ptr %232, align 4, !tbaa !19
  store i32 %230, ptr %142, align 4, !tbaa !19
  %233 = getelementptr ptr, ptr %185, i64 %168
  %234 = getelementptr i8, ptr %233, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = getelementptr inbounds i16, ptr %235, i64 %189
  %237 = load i16, ptr %236, align 2, !tbaa !35
  %238 = zext i16 %237 to i32
  %239 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %169, i64 %188
  %240 = load i16, ptr %239, align 2, !tbaa !35
  %241 = zext i16 %240 to i32
  %242 = sub nsw i32 %238, %241
  %243 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %170, i64 %176
  store i32 %242, ptr %243, align 4, !tbaa !19
  store i32 %242, ptr %143, align 4, !tbaa !19
  %244 = getelementptr inbounds i16, ptr %235, i64 %200
  %245 = load i16, ptr %244, align 2, !tbaa !35
  %246 = zext i16 %245 to i32
  %247 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %169, i64 %204
  %248 = load i16, ptr %247, align 2, !tbaa !35
  %249 = zext i16 %248 to i32
  %250 = sub nsw i32 %246, %249
  %251 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %170, i64 %209
  store i32 %250, ptr %251, align 4, !tbaa !19
  store i32 %250, ptr %144, align 4, !tbaa !19
  %252 = getelementptr inbounds i16, ptr %235, i64 %211
  %253 = load i16, ptr %252, align 2, !tbaa !35
  %254 = zext i16 %253 to i32
  %255 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %169, i64 %215
  %256 = load i16, ptr %255, align 2, !tbaa !35
  %257 = zext i16 %256 to i32
  %258 = sub nsw i32 %254, %257
  %259 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %170, i64 %220
  store i32 %258, ptr %259, align 4, !tbaa !19
  store i32 %258, ptr %145, align 4, !tbaa !19
  %260 = getelementptr inbounds i16, ptr %235, i64 %222
  %261 = load i16, ptr %260, align 2, !tbaa !35
  %262 = zext i16 %261 to i32
  %263 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %169, i64 %226
  %264 = load i16, ptr %263, align 2, !tbaa !35
  %265 = zext i16 %264 to i32
  %266 = sub nsw i32 %262, %265
  %267 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %170, i64 %231
  store i32 %266, ptr %267, align 4, !tbaa !19
  store i32 %266, ptr %146, align 4, !tbaa !19
  %268 = getelementptr ptr, ptr %185, i64 %168
  %269 = getelementptr i8, ptr %268, i64 16
  %270 = load ptr, ptr %269, align 8, !tbaa !6
  %271 = getelementptr inbounds i16, ptr %270, i64 %189
  %272 = load i16, ptr %271, align 2, !tbaa !35
  %273 = zext i16 %272 to i32
  %274 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %171, i64 %188
  %275 = load i16, ptr %274, align 2, !tbaa !35
  %276 = zext i16 %275 to i32
  %277 = sub nsw i32 %273, %276
  %278 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %172, i64 %176
  store i32 %277, ptr %278, align 4, !tbaa !19
  store i32 %277, ptr %147, align 4, !tbaa !19
  %279 = getelementptr inbounds i16, ptr %270, i64 %200
  %280 = load i16, ptr %279, align 2, !tbaa !35
  %281 = zext i16 %280 to i32
  %282 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %171, i64 %204
  %283 = load i16, ptr %282, align 2, !tbaa !35
  %284 = zext i16 %283 to i32
  %285 = sub nsw i32 %281, %284
  %286 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %172, i64 %209
  store i32 %285, ptr %286, align 4, !tbaa !19
  store i32 %285, ptr %148, align 4, !tbaa !19
  %287 = getelementptr inbounds i16, ptr %270, i64 %211
  %288 = load i16, ptr %287, align 2, !tbaa !35
  %289 = zext i16 %288 to i32
  %290 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %171, i64 %215
  %291 = load i16, ptr %290, align 2, !tbaa !35
  %292 = zext i16 %291 to i32
  %293 = sub nsw i32 %289, %292
  %294 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %172, i64 %220
  store i32 %293, ptr %294, align 4, !tbaa !19
  store i32 %293, ptr %149, align 4, !tbaa !19
  %295 = getelementptr inbounds i16, ptr %270, i64 %222
  %296 = load i16, ptr %295, align 2, !tbaa !35
  %297 = zext i16 %296 to i32
  %298 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %171, i64 %226
  %299 = load i16, ptr %298, align 2, !tbaa !35
  %300 = zext i16 %299 to i32
  %301 = sub nsw i32 %297, %300
  %302 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %172, i64 %231
  store i32 %301, ptr %302, align 4, !tbaa !19
  store i32 %301, ptr %150, align 4, !tbaa !19
  %303 = getelementptr ptr, ptr %185, i64 %168
  %304 = getelementptr i8, ptr %303, i64 24
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  %306 = getelementptr inbounds i16, ptr %305, i64 %189
  %307 = load i16, ptr %306, align 2, !tbaa !35
  %308 = zext i16 %307 to i32
  %309 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %173, i64 %188
  %310 = load i16, ptr %309, align 2, !tbaa !35
  %311 = zext i16 %310 to i32
  %312 = sub nsw i32 %308, %311
  %313 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %174, i64 %176
  store i32 %312, ptr %313, align 4, !tbaa !19
  store i32 %312, ptr %151, align 4, !tbaa !19
  %314 = getelementptr inbounds i16, ptr %305, i64 %200
  %315 = load i16, ptr %314, align 2, !tbaa !35
  %316 = zext i16 %315 to i32
  %317 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %173, i64 %204
  %318 = load i16, ptr %317, align 2, !tbaa !35
  %319 = zext i16 %318 to i32
  %320 = sub nsw i32 %316, %319
  %321 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %174, i64 %209
  store i32 %320, ptr %321, align 4, !tbaa !19
  store i32 %320, ptr %152, align 4, !tbaa !19
  %322 = getelementptr inbounds i16, ptr %305, i64 %211
  %323 = load i16, ptr %322, align 2, !tbaa !35
  %324 = zext i16 %323 to i32
  %325 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %173, i64 %215
  %326 = load i16, ptr %325, align 2, !tbaa !35
  %327 = zext i16 %326 to i32
  %328 = sub nsw i32 %324, %327
  %329 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %174, i64 %220
  store i32 %328, ptr %329, align 4, !tbaa !19
  store i32 %328, ptr %153, align 4, !tbaa !19
  %330 = getelementptr inbounds i16, ptr %305, i64 %222
  %331 = load i16, ptr %330, align 2, !tbaa !35
  %332 = zext i16 %331 to i32
  %333 = getelementptr inbounds [16 x [16 x i16]], ptr %187, i64 0, i64 %173, i64 %226
  %334 = load i16, ptr %333, align 2, !tbaa !35
  %335 = zext i16 %334 to i32
  %336 = sub nsw i32 %332, %335
  %337 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %174, i64 %231
  store i32 %336, ptr %337, align 4, !tbaa !19
  store i32 %336, ptr %154, align 4, !tbaa !19
  %338 = load ptr, ptr @input, align 8, !tbaa !6
  %339 = getelementptr inbounds i8, ptr %338, i64 3892
  %340 = load i32, ptr %339, align 4, !tbaa !55
  %341 = icmp eq i32 %340, 0
  %342 = or i1 %135, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %175
  %344 = getelementptr inbounds i8, ptr %338, i64 24
  %345 = load i32, ptr %344, align 8, !tbaa !54
  %346 = call signext i32 @SATD(ptr noundef nonnull %6, i32 noundef signext %345)
  %347 = add nsw i32 %346, %178
  br label %348

348:                                              ; preds = %343, %175
  %349 = phi i32 [ %347, %343 ], [ %178, %175 ]
  %350 = add nuw nsw i64 %176, 4
  %351 = add nsw i64 %177, 1
  %352 = icmp slt i64 %351, %137
  br i1 %352, label %175, label %353

353:                                              ; preds = %348, %155
  %354 = phi ptr [ %156, %155 ], [ %338, %348 ]
  %355 = phi i32 [ %159, %155 ], [ %349, %348 ]
  %356 = add nuw nsw i64 %157, 4
  %357 = add nsw i64 %158, 1
  %358 = icmp slt i64 %357, %139
  br i1 %358, label %155, label %359

359:                                              ; preds = %353, %5, %129
  %360 = phi ptr [ %8, %129 ], [ %8, %5 ], [ %354, %353 ]
  %361 = phi i32 [ %131, %129 ], [ 0, %5 ], [ %355, %353 ]
  %362 = getelementptr inbounds i8, ptr %360, i64 3892
  %363 = load i32, ptr %362, align 4, !tbaa !55
  %364 = icmp ne i32 %363, 0
  %365 = icmp slt i32 %0, 5
  %366 = and i1 %365, %364
  br i1 %366, label %367, label %421

367:                                              ; preds = %359
  %368 = getelementptr inbounds i8, ptr %360, i64 84
  %369 = getelementptr inbounds [8 x [2 x i32]], ptr %368, i64 0, i64 %17, i64 1
  %370 = load i32, ptr %369, align 4, !tbaa !19
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %421

372:                                              ; preds = %367
  %373 = getelementptr inbounds [8 x [2 x i32]], ptr %368, i64 0, i64 %17
  %374 = load i32, ptr %373, align 4, !tbaa !19
  %375 = icmp sgt i32 %374, 0
  %376 = getelementptr inbounds i8, ptr %360, i64 24
  %377 = tail call i32 @llvm.smin.i32(i32 %14, i32 8)
  %378 = sext i32 %377 to i64
  %379 = tail call i32 @llvm.smin.i32(i32 %12, i32 8)
  %380 = sext i32 %379 to i64
  %381 = sext i32 %374 to i64
  %382 = zext nneg i32 %370 to i64
  %383 = getelementptr inbounds i8, ptr %6, i64 32
  %384 = getelementptr inbounds i8, ptr %6, i64 64
  %385 = getelementptr inbounds i8, ptr %6, i64 96
  %386 = getelementptr inbounds i8, ptr %6, i64 128
  %387 = getelementptr inbounds i8, ptr %6, i64 160
  %388 = getelementptr inbounds i8, ptr %6, i64 192
  %389 = getelementptr inbounds i8, ptr %6, i64 224
  br label %390

390:                                              ; preds = %372, %417
  %391 = phi i64 [ 0, %372 ], [ %419, %417 ]
  %392 = phi i32 [ %361, %372 ], [ %418, %417 ]
  br i1 %375, label %393, label %417

393:                                              ; preds = %390
  %394 = load i32, ptr %376, align 8, !tbaa !54
  %395 = add nsw i64 %391, 7
  %396 = add nsw i64 %391, 1
  %397 = add nsw i64 %391, 2
  %398 = add nsw i64 %391, 3
  %399 = add nsw i64 %391, 4
  %400 = add nsw i64 %391, 5
  %401 = add nsw i64 %391, 6
  br label %402

402:                                              ; preds = %393, %402
  %403 = phi i64 [ 0, %393 ], [ %415, %402 ]
  %404 = phi i32 [ %392, %393 ], [ %414, %402 ]
  %405 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %391, i64 %403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %405, i64 32, i1 false)
  %406 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %396, i64 %403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %383, ptr noundef nonnull align 4 dereferenceable(32) %406, i64 32, i1 false)
  %407 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %397, i64 %403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %384, ptr noundef nonnull align 4 dereferenceable(32) %407, i64 32, i1 false)
  %408 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %398, i64 %403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %385, ptr noundef nonnull align 4 dereferenceable(32) %408, i64 32, i1 false)
  %409 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %399, i64 %403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %386, ptr noundef nonnull align 4 dereferenceable(32) %409, i64 32, i1 false)
  %410 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %400, i64 %403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %387, ptr noundef nonnull align 4 dereferenceable(32) %410, i64 32, i1 false)
  %411 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %401, i64 %403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %388, ptr noundef nonnull align 4 dereferenceable(32) %411, i64 32, i1 false)
  %412 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %395, i64 %403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %389, ptr noundef nonnull align 4 dereferenceable(32) %412, i64 32, i1 false)
  %413 = call signext i32 @SATD8X8(ptr noundef nonnull %6, i32 noundef signext %394)
  %414 = add nsw i32 %413, %404
  %415 = add nsw i64 %403, %380
  %416 = icmp slt i64 %415, %381
  br i1 %416, label %402, label %417

417:                                              ; preds = %402, %390
  %418 = phi i32 [ %392, %390 ], [ %414, %402 ]
  %419 = add nsw i64 %391, %378
  %420 = icmp slt i64 %419, %382
  br i1 %420, label %390, label %421

421:                                              ; preds = %417, %367, %359
  %422 = phi i32 [ %361, %359 ], [ %361, %367 ], [ %418, %417 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #16
  ret i32 %422
}

declare dso_local void @LumaPrediction4x4(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind
define dso_local signext i32 @Get_Direct_Cost8x8(i32 noundef signext %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x [8 x i32]], align 4
  %4 = alloca [64 x i32], align 4
  %5 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %6 = sdiv i32 %0, 2
  %7 = shl i32 %6, 3
  %8 = mul i32 %6, 2
  %9 = sub i32 %0, %8
  %10 = shl nsw i32 %9, 3
  %11 = sext i32 %10 to i64
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds i8, ptr %5, i64 4
  %14 = getelementptr inbounds i8, ptr %5, i64 8
  %15 = getelementptr inbounds i8, ptr %5, i64 12
  %16 = getelementptr inbounds i8, ptr %5, i64 16
  %17 = getelementptr inbounds i8, ptr %5, i64 20
  %18 = getelementptr inbounds i8, ptr %5, i64 24
  %19 = getelementptr inbounds i8, ptr %5, i64 28
  %20 = getelementptr inbounds i8, ptr %5, i64 32
  %21 = getelementptr inbounds i8, ptr %5, i64 36
  %22 = getelementptr inbounds i8, ptr %5, i64 40
  %23 = getelementptr inbounds i8, ptr %5, i64 44
  %24 = getelementptr inbounds i8, ptr %5, i64 48
  %25 = getelementptr inbounds i8, ptr %5, i64 52
  %26 = getelementptr inbounds i8, ptr %5, i64 56
  %27 = getelementptr inbounds i8, ptr %5, i64 60
  %28 = or disjoint i32 %10, 4
  %29 = sext i32 %28 to i64
  %30 = or disjoint i32 %7, 4
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %2, %242
  %33 = phi i64 [ %12, %2 ], [ %243, %242 ]
  %34 = phi i32 [ 0, %2 ], [ %239, %242 ]
  %35 = load ptr, ptr @img, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 172
  %37 = load i32, ptr %36, align 4, !tbaa !39
  %38 = trunc nsw i64 %33 to i32
  %39 = add nsw i32 %37, %38
  %40 = ashr i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = sub nuw nsw i64 %33, %12
  %43 = sext i32 %39 to i64
  %44 = or disjoint i64 %33, 1
  %45 = or disjoint i64 %42, 1
  %46 = or disjoint i64 %33, 2
  %47 = or disjoint i64 %42, 2
  %48 = or disjoint i64 %33, 3
  %49 = or disjoint i64 %42, 3
  br label %50

50:                                               ; preds = %32, %66
  %51 = phi i64 [ %11, %32 ], [ %240, %66 ]
  %52 = phi i32 [ %34, %32 ], [ %239, %66 ]
  %53 = load ptr, ptr @img, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 168
  %55 = load i32, ptr %54, align 8, !tbaa !38
  %56 = trunc nsw i64 %51 to i32
  %57 = add nsw i32 %55, %56
  %58 = load ptr, ptr @direct_pdir, align 8, !tbaa !6
  %59 = getelementptr inbounds ptr, ptr %58, i64 %41
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = ashr i32 %57, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, ptr %60, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !35
  %65 = icmp slt i16 %64, 0
  br i1 %65, label %257, label %66

66:                                               ; preds = %50
  %67 = zext nneg i16 %64 to i32
  %68 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = getelementptr inbounds ptr, ptr %69, i64 %41
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds i8, ptr %71, i64 %62
  %73 = load i8, ptr %72, align 1, !tbaa !48
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds i8, ptr %68, i64 8
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = getelementptr inbounds ptr, ptr %76, i64 %41
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %78, i64 %62
  %80 = load i8, ptr %79, align 1, !tbaa !48
  %81 = zext i8 %80 to i16
  tail call void @LumaPrediction4x4(i32 noundef signext %56, i32 noundef signext %38, i32 noundef signext %67, i32 noundef signext 0, i32 noundef signext 0, i16 noundef signext %74, i16 noundef signext %81) #16
  %82 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %83 = load ptr, ptr @img, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 12600
  %85 = sub nuw nsw i64 %51, %11
  %86 = sext i32 %57 to i64
  %87 = getelementptr inbounds ptr, ptr %82, i64 %43
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = getelementptr inbounds i16, ptr %88, i64 %86
  %90 = load i16, ptr %89, align 2, !tbaa !35
  %91 = zext i16 %90 to i32
  %92 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %33, i64 %51
  %93 = load i16, ptr %92, align 2, !tbaa !35
  %94 = zext i16 %93 to i32
  %95 = sub nsw i32 %91, %94
  %96 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %42, i64 %85
  store i32 %95, ptr %96, align 4, !tbaa !19
  store i32 %95, ptr %5, align 4, !tbaa !19
  %97 = add nsw i64 %86, 1
  %98 = getelementptr inbounds i16, ptr %88, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !35
  %100 = zext i16 %99 to i32
  %101 = or disjoint i64 %51, 1
  %102 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %33, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !35
  %104 = zext i16 %103 to i32
  %105 = sub nsw i32 %100, %104
  %106 = or disjoint i64 %85, 1
  %107 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %42, i64 %106
  store i32 %105, ptr %107, align 4, !tbaa !19
  store i32 %105, ptr %13, align 4, !tbaa !19
  %108 = add nsw i64 %86, 2
  %109 = getelementptr inbounds i16, ptr %88, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !35
  %111 = zext i16 %110 to i32
  %112 = or disjoint i64 %51, 2
  %113 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %33, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !35
  %115 = zext i16 %114 to i32
  %116 = sub nsw i32 %111, %115
  %117 = or disjoint i64 %85, 2
  %118 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %42, i64 %117
  store i32 %116, ptr %118, align 4, !tbaa !19
  store i32 %116, ptr %14, align 4, !tbaa !19
  %119 = add nsw i64 %86, 3
  %120 = getelementptr inbounds i16, ptr %88, i64 %119
  %121 = load i16, ptr %120, align 2, !tbaa !35
  %122 = zext i16 %121 to i32
  %123 = or disjoint i64 %51, 3
  %124 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %33, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !35
  %126 = zext i16 %125 to i32
  %127 = sub nsw i32 %122, %126
  %128 = or disjoint i64 %85, 3
  %129 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %42, i64 %128
  store i32 %127, ptr %129, align 4, !tbaa !19
  store i32 %127, ptr %15, align 4, !tbaa !19
  %130 = getelementptr ptr, ptr %82, i64 %43
  %131 = getelementptr i8, ptr %130, i64 8
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = getelementptr inbounds i16, ptr %132, i64 %86
  %134 = load i16, ptr %133, align 2, !tbaa !35
  %135 = zext i16 %134 to i32
  %136 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %44, i64 %51
  %137 = load i16, ptr %136, align 2, !tbaa !35
  %138 = zext i16 %137 to i32
  %139 = sub nsw i32 %135, %138
  %140 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %45, i64 %85
  store i32 %139, ptr %140, align 4, !tbaa !19
  store i32 %139, ptr %16, align 4, !tbaa !19
  %141 = getelementptr inbounds i16, ptr %132, i64 %97
  %142 = load i16, ptr %141, align 2, !tbaa !35
  %143 = zext i16 %142 to i32
  %144 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %44, i64 %101
  %145 = load i16, ptr %144, align 2, !tbaa !35
  %146 = zext i16 %145 to i32
  %147 = sub nsw i32 %143, %146
  %148 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %45, i64 %106
  store i32 %147, ptr %148, align 4, !tbaa !19
  store i32 %147, ptr %17, align 4, !tbaa !19
  %149 = getelementptr inbounds i16, ptr %132, i64 %108
  %150 = load i16, ptr %149, align 2, !tbaa !35
  %151 = zext i16 %150 to i32
  %152 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %44, i64 %112
  %153 = load i16, ptr %152, align 2, !tbaa !35
  %154 = zext i16 %153 to i32
  %155 = sub nsw i32 %151, %154
  %156 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %45, i64 %117
  store i32 %155, ptr %156, align 4, !tbaa !19
  store i32 %155, ptr %18, align 4, !tbaa !19
  %157 = getelementptr inbounds i16, ptr %132, i64 %119
  %158 = load i16, ptr %157, align 2, !tbaa !35
  %159 = zext i16 %158 to i32
  %160 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %44, i64 %123
  %161 = load i16, ptr %160, align 2, !tbaa !35
  %162 = zext i16 %161 to i32
  %163 = sub nsw i32 %159, %162
  %164 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %45, i64 %128
  store i32 %163, ptr %164, align 4, !tbaa !19
  store i32 %163, ptr %19, align 4, !tbaa !19
  %165 = getelementptr ptr, ptr %82, i64 %43
  %166 = getelementptr i8, ptr %165, i64 16
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = getelementptr inbounds i16, ptr %167, i64 %86
  %169 = load i16, ptr %168, align 2, !tbaa !35
  %170 = zext i16 %169 to i32
  %171 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %46, i64 %51
  %172 = load i16, ptr %171, align 2, !tbaa !35
  %173 = zext i16 %172 to i32
  %174 = sub nsw i32 %170, %173
  %175 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %47, i64 %85
  store i32 %174, ptr %175, align 4, !tbaa !19
  store i32 %174, ptr %20, align 4, !tbaa !19
  %176 = getelementptr inbounds i16, ptr %167, i64 %97
  %177 = load i16, ptr %176, align 2, !tbaa !35
  %178 = zext i16 %177 to i32
  %179 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %46, i64 %101
  %180 = load i16, ptr %179, align 2, !tbaa !35
  %181 = zext i16 %180 to i32
  %182 = sub nsw i32 %178, %181
  %183 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %47, i64 %106
  store i32 %182, ptr %183, align 4, !tbaa !19
  store i32 %182, ptr %21, align 4, !tbaa !19
  %184 = getelementptr inbounds i16, ptr %167, i64 %108
  %185 = load i16, ptr %184, align 2, !tbaa !35
  %186 = zext i16 %185 to i32
  %187 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %46, i64 %112
  %188 = load i16, ptr %187, align 2, !tbaa !35
  %189 = zext i16 %188 to i32
  %190 = sub nsw i32 %186, %189
  %191 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %47, i64 %117
  store i32 %190, ptr %191, align 4, !tbaa !19
  store i32 %190, ptr %22, align 4, !tbaa !19
  %192 = getelementptr inbounds i16, ptr %167, i64 %119
  %193 = load i16, ptr %192, align 2, !tbaa !35
  %194 = zext i16 %193 to i32
  %195 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %46, i64 %123
  %196 = load i16, ptr %195, align 2, !tbaa !35
  %197 = zext i16 %196 to i32
  %198 = sub nsw i32 %194, %197
  %199 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %47, i64 %128
  store i32 %198, ptr %199, align 4, !tbaa !19
  store i32 %198, ptr %23, align 4, !tbaa !19
  %200 = getelementptr ptr, ptr %82, i64 %43
  %201 = getelementptr i8, ptr %200, i64 24
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = getelementptr inbounds i16, ptr %202, i64 %86
  %204 = load i16, ptr %203, align 2, !tbaa !35
  %205 = zext i16 %204 to i32
  %206 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %48, i64 %51
  %207 = load i16, ptr %206, align 2, !tbaa !35
  %208 = zext i16 %207 to i32
  %209 = sub nsw i32 %205, %208
  %210 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %49, i64 %85
  store i32 %209, ptr %210, align 4, !tbaa !19
  store i32 %209, ptr %24, align 4, !tbaa !19
  %211 = getelementptr inbounds i16, ptr %202, i64 %97
  %212 = load i16, ptr %211, align 2, !tbaa !35
  %213 = zext i16 %212 to i32
  %214 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %48, i64 %101
  %215 = load i16, ptr %214, align 2, !tbaa !35
  %216 = zext i16 %215 to i32
  %217 = sub nsw i32 %213, %216
  %218 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %49, i64 %106
  store i32 %217, ptr %218, align 4, !tbaa !19
  store i32 %217, ptr %25, align 4, !tbaa !19
  %219 = getelementptr inbounds i16, ptr %202, i64 %108
  %220 = load i16, ptr %219, align 2, !tbaa !35
  %221 = zext i16 %220 to i32
  %222 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %48, i64 %112
  %223 = load i16, ptr %222, align 2, !tbaa !35
  %224 = zext i16 %223 to i32
  %225 = sub nsw i32 %221, %224
  %226 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %49, i64 %117
  store i32 %225, ptr %226, align 4, !tbaa !19
  store i32 %225, ptr %26, align 4, !tbaa !19
  %227 = getelementptr inbounds i16, ptr %202, i64 %119
  %228 = load i16, ptr %227, align 2, !tbaa !35
  %229 = zext i16 %228 to i32
  %230 = getelementptr inbounds [16 x [16 x i16]], ptr %84, i64 0, i64 %48, i64 %123
  %231 = load i16, ptr %230, align 2, !tbaa !35
  %232 = zext i16 %231 to i32
  %233 = sub nsw i32 %229, %232
  %234 = getelementptr inbounds [8 x [8 x i32]], ptr %3, i64 0, i64 %49, i64 %128
  store i32 %233, ptr %234, align 4, !tbaa !19
  store i32 %233, ptr %27, align 4, !tbaa !19
  %235 = load ptr, ptr @input, align 8, !tbaa !6
  %236 = getelementptr inbounds i8, ptr %235, i64 24
  %237 = load i32, ptr %236, align 8, !tbaa !54
  %238 = call signext i32 @SATD(ptr noundef nonnull %5, i32 noundef signext %237)
  %239 = add nsw i32 %238, %52
  %240 = add nsw i64 %51, 4
  %241 = icmp slt i64 %51, %29
  br i1 %241, label %50, label %242

242:                                              ; preds = %66
  %243 = add nsw i64 %33, 4
  %244 = icmp slt i64 %33, %31
  br i1 %244, label %32, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds i8, ptr %235, i64 3136
  %247 = load i32, ptr %246, align 8, !tbaa !36
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %245
  %250 = getelementptr inbounds i8, ptr %235, i64 3892
  %251 = load i32, ptr %250, align 4, !tbaa !55
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %4, ptr noundef nonnull align 4 dereferenceable(256) %3, i64 256, i1 false)
  %254 = call signext i32 @SATD8X8(ptr noundef nonnull %4, i32 noundef signext %237)
  %255 = load i32, ptr %1, align 4, !tbaa !19
  %256 = add nsw i32 %255, %254
  br label %257

257:                                              ; preds = %50, %253
  %258 = phi i32 [ %256, %253 ], [ 2147483647, %50 ]
  %259 = phi i32 [ %239, %253 ], [ 2147483647, %50 ]
  store i32 %258, ptr %1, align 4, !tbaa !19
  br label %260

260:                                              ; preds = %257, %245, %249
  %261 = phi i32 [ %239, %249 ], [ %239, %245 ], [ %259, %257 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret i32 %261
}

; Function Attrs: nounwind
define dso_local signext i32 @Get_Direct_CostMB(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !19
  %3 = call signext i32 @Get_Direct_Cost8x8(i32 noundef signext 0, ptr noundef nonnull %2)
  %4 = load i32, ptr %2, align 4, !tbaa !19
  %5 = icmp eq i32 %4, 2147483647
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = call signext i32 @Get_Direct_Cost8x8(i32 noundef signext 1, ptr noundef nonnull %2)
  %8 = load i32, ptr %2, align 4, !tbaa !19
  %9 = icmp eq i32 %8, 2147483647
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = call signext i32 @Get_Direct_Cost8x8(i32 noundef signext 2, ptr noundef nonnull %2)
  %12 = load i32, ptr %2, align 4, !tbaa !19
  %13 = icmp eq i32 %12, 2147483647
  br i1 %13, label %41, label %14

14:                                               ; preds = %10
  %15 = call signext i32 @Get_Direct_Cost8x8(i32 noundef signext 3, ptr noundef nonnull %2)
  %16 = load i32, ptr %2, align 4, !tbaa !19
  %17 = icmp eq i32 %16, 2147483647
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = add nsw i32 %7, %3
  %20 = add nsw i32 %11, %19
  %21 = add nsw i32 %15, %20
  %22 = load ptr, ptr @input, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 3892
  %24 = load i32, ptr %23, align 4, !tbaa !55
  switch i32 %24, label %41 [
    i32 1, label %25
    i32 2, label %40
  ]

25:                                               ; preds = %18
  %26 = icmp slt i32 %16, %21
  br i1 %26, label %39, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, ptr %22, i64 3012
  %29 = load i32, ptr %28, align 4, !tbaa !73
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %22, i64 3016
  %33 = load i32, ptr %32, align 8, !tbaa !74
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %22, i64 3020
  %37 = load i32, ptr %36, align 4, !tbaa !75
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31, %27, %25
  br label %41

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %1, %6, %10, %14, %40, %39, %35, %18
  %42 = phi i32 [ %21, %18 ], [ %16, %40 ], [ %16, %39 ], [ %21, %35 ], [ 2147483647, %14 ], [ 2147483647, %10 ], [ 2147483647, %6 ], [ 2147483647, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %42
}

; Function Attrs: nounwind
define dso_local void @PartitionMotionSearch(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %7 = icmp eq i32 %6, 1
  %8 = tail call i32 @llvm.smin.i32(i32 %0, i32 4)
  %9 = load ptr, ptr @input, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 148
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [8 x [2 x i32]], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = getelementptr inbounds i8, ptr %12, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !19
  %16 = sext i32 %0 to i64
  %17 = getelementptr inbounds [8 x [2 x i32]], ptr %10, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !19
  %19 = getelementptr inbounds i8, ptr %17, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = getelementptr inbounds i8, ptr %4, i64 31576
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = getelementptr inbounds i8, ptr %4, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !21
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %25, i32 20
  %27 = load i32, ptr %26, align 4, !tbaa !22
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds [5 x [4 x i32]], ptr @PartitionMotionSearch.by0, i64 0, i64 %11, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !19
  %31 = getelementptr inbounds [5 x [4 x i32]], ptr @PartitionMotionSearch.bx0, i64 0, i64 %11, i64 %28
  %32 = load i32, ptr %31, align 4, !tbaa !19
  %33 = tail call i32 @llvm.smin.i32(i32 %0, i32 2)
  %34 = add nsw i32 %30, %15
  %35 = icmp sgt i32 %15, 0
  %36 = add nsw i32 %32, %13
  %37 = icmp sgt i32 %13, 0
  %38 = icmp sgt i32 %20, 0
  %39 = sext i32 %18 to i64
  %40 = icmp sgt i32 %18, 0
  %41 = sext i32 %32 to i64
  %42 = sext i32 %36 to i64
  %43 = sext i32 %30 to i64
  %44 = sext i32 %20 to i64
  %45 = sext i32 %34 to i64
  %46 = sext i32 %27 to i64
  %47 = zext nneg i32 %20 to i64
  %48 = zext nneg i32 %18 to i64
  br label %49

49:                                               ; preds = %3, %163
  %50 = phi i1 [ true, %3 ], [ false, %163 ]
  %51 = phi i64 [ 0, %3 ], [ 1, %163 ]
  %52 = add nsw i64 %51, %46
  %53 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !19
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %163

56:                                               ; preds = %49
  %57 = trunc nuw nsw i64 %51 to i32
  br label %58

58:                                               ; preds = %56, %158
  %59 = phi i32 [ 0, %56 ], [ %160, %158 ]
  %60 = phi i16 [ 0, %56 ], [ %159, %158 ]
  %61 = load ptr, ptr @motion_cost, align 8, !tbaa !6
  %62 = getelementptr inbounds ptr, ptr %61, i64 %16
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds ptr, ptr %63, i64 %51
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = sext i16 %60 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds i32, ptr %68, i64 %28
  %70 = load ptr, ptr @input, align 8, !tbaa !6
  %71 = getelementptr inbounds i8, ptr %70, i64 3108
  %72 = load i32, ptr %71, align 4, !tbaa !18
  %73 = getelementptr inbounds i8, ptr %70, i64 32
  %74 = load i32, ptr %73, align 8, !tbaa !10
  switch i32 %72, label %78 [
    i32 2, label %85
    i32 1, label %75
  ]

75:                                               ; preds = %58
  %76 = tail call i32 @llvm.smin.i32(i32 %59, i32 1)
  %77 = add nsw i32 %76, 1
  br label %82

78:                                               ; preds = %58
  %79 = tail call i32 @llvm.smin.i32(i32 %59, i32 1)
  %80 = add nsw i32 %79, 1
  %81 = mul nsw i32 %80, %33
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i32 [ %77, %75 ], [ %81, %78 ]
  %84 = sdiv i32 %74, %83
  br label %85

85:                                               ; preds = %82, %58
  %86 = phi i32 [ %74, %58 ], [ %84, %82 ]
  %87 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %87, i64 6480
  %89 = load ptr, ptr %88, align 8, !tbaa !33
  %90 = getelementptr inbounds ptr, ptr %89, i64 %51
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %87, i64 6504
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = getelementptr inbounds ptr, ptr %93, i64 %51
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  store i32 0, ptr %69, align 4, !tbaa !19
  br i1 %35, label %96, label %158

96:                                               ; preds = %85
  %97 = trunc i16 %60 to i8
  br label %98

98:                                               ; preds = %96, %155
  %99 = phi i64 [ %43, %96 ], [ %156, %155 ]
  %100 = load ptr, ptr @img, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %100, i64 148
  %102 = load i32, ptr %101, align 4, !tbaa !76
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %99, %103
  br i1 %37, label %105, label %155

105:                                              ; preds = %98
  %106 = trunc nsw i64 %99 to i32
  %107 = shl i32 %106, 2
  br label %108

108:                                              ; preds = %105, %152
  %109 = phi i64 [ %41, %105 ], [ %153, %152 ]
  %110 = load ptr, ptr @img, align 8, !tbaa !6
  %111 = getelementptr inbounds i8, ptr %110, i64 89336
  %112 = load ptr, ptr %111, align 8, !tbaa !60
  %113 = getelementptr inbounds ptr, ptr %112, i64 %99
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = getelementptr inbounds ptr, ptr %114, i64 %109
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds ptr, ptr %116, i64 %51
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = getelementptr inbounds ptr, ptr %118, i64 %66
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = getelementptr inbounds ptr, ptr %120, i64 %16
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = getelementptr inbounds i8, ptr %110, i64 144
  %124 = load i32, ptr %123, align 8, !tbaa !77
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %109, %125
  %127 = trunc nsw i64 %109 to i32
  %128 = shl i32 %127, 2
  %129 = tail call signext i32 @BlockMotionSearch(i16 noundef signext %60, i32 noundef signext %57, i32 noundef signext %128, i32 noundef signext %107, i32 noundef signext %0, i32 noundef signext %86, i32 noundef signext %2)
  %130 = load i32, ptr %69, align 4, !tbaa !19
  %131 = add nsw i32 %130, %129
  store i32 %131, ptr %69, align 4, !tbaa !19
  br i1 %38, label %132, label %152

132:                                              ; preds = %108, %149
  %133 = phi i64 [ %150, %149 ], [ 0, %108 ]
  %134 = add nsw i64 %104, %133
  %135 = getelementptr inbounds ptr, ptr %91, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = getelementptr inbounds i8, ptr %136, i64 %126
  tail call void @llvm.memset.p0.i64(ptr align 1 %137, i8 %97, i64 %39, i1 false)
  br i1 %40, label %138, label %149

138:                                              ; preds = %132
  %139 = getelementptr inbounds ptr, ptr %95, i64 %134
  br label %140

140:                                              ; preds = %138, %140
  %141 = phi i64 [ 0, %138 ], [ %147, %140 ]
  %142 = load ptr, ptr %139, align 8, !tbaa !6
  %143 = getelementptr ptr, ptr %142, i64 %141
  %144 = getelementptr ptr, ptr %143, i64 %126
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = load i32, ptr %122, align 2
  store i32 %146, ptr %145, align 2
  %147 = add nuw nsw i64 %141, 1
  %148 = icmp eq i64 %147, %48
  br i1 %148, label %149, label %140

149:                                              ; preds = %140, %132
  %150 = add nuw nsw i64 %133, 1
  %151 = icmp eq i64 %150, %47
  br i1 %151, label %152, label %132

152:                                              ; preds = %149, %108
  %153 = add nsw i64 %109, %39
  %154 = icmp slt i64 %153, %42
  br i1 %154, label %108, label %155

155:                                              ; preds = %152, %98
  %156 = add nsw i64 %99, %44
  %157 = icmp slt i64 %156, %45
  br i1 %157, label %98, label %158

158:                                              ; preds = %155, %85
  %159 = add i16 %60, 1
  %160 = sext i16 %159 to i32
  %161 = load i32, ptr %53, align 4, !tbaa !19
  %162 = icmp sgt i32 %161, %160
  br i1 %162, label %58, label %163

163:                                              ; preds = %158, %49
  %164 = and i1 %7, %50
  br i1 %164, label %49, label %165

165:                                              ; preds = %163
  ret void
}

; Function Attrs: nounwind
define dso_local void @Get_Direct_Motion_Vectors() local_unnamed_addr #0 {
  %1 = alloca [2 x i16], align 4
  %2 = alloca [2 x i16], align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 6480
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %9, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = load ptr, ptr @img, align 8, !tbaa !6
  %14 = getelementptr inbounds i8, ptr %13, i64 31576
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = getelementptr inbounds i8, ptr %13, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !21
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %18
  %20 = getelementptr inbounds i8, ptr %19, i64 428
  %21 = load i32, ptr %20, align 4, !tbaa !22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %0
  %24 = and i32 %17, 1
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr @Co_located, align 8, !tbaa !6
  br i1 %25, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %26, i64 4856
  %29 = getelementptr inbounds i8, ptr %26, i64 4848
  %30 = getelementptr inbounds i8, ptr %26, i64 4840
  br label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds i8, ptr %26, i64 3240
  %33 = getelementptr inbounds i8, ptr %26, i64 3232
  %34 = getelementptr inbounds i8, ptr %26, i64 3224
  br label %40

35:                                               ; preds = %0
  %36 = load ptr, ptr @Co_located, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 1624
  %38 = getelementptr inbounds i8, ptr %36, i64 1616
  %39 = getelementptr inbounds i8, ptr %36, i64 1608
  br label %40

40:                                               ; preds = %27, %31, %35
  %41 = phi ptr [ %28, %27 ], [ %32, %31 ], [ %37, %35 ]
  %42 = phi ptr [ %29, %27 ], [ %33, %31 ], [ %38, %35 ]
  %43 = phi ptr [ %30, %27 ], [ %34, %31 ], [ %39, %35 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = load ptr, ptr %42, align 8, !tbaa !6
  %46 = load ptr, ptr %41, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %13, i64 89404
  %48 = load i32, ptr %47, align 4, !tbaa !78
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %876, label %50

50:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #16
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @getLuma4x4Neighbour(i32 noundef signext %17, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %3) #16
  %51 = load ptr, ptr @img, align 8, !tbaa !6
  %52 = getelementptr inbounds i8, ptr %51, i64 12
  %53 = load i32, ptr %52, align 4, !tbaa !21
  call void @getLuma4x4Neighbour(i32 noundef signext %53, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %4) #16
  %54 = load ptr, ptr @img, align 8, !tbaa !6
  %55 = getelementptr inbounds i8, ptr %54, i64 12
  %56 = load i32, ptr %55, align 4, !tbaa !21
  call void @getLuma4x4Neighbour(i32 noundef signext %56, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 16, i32 noundef signext -1, ptr noundef nonnull %6) #16
  %57 = load ptr, ptr @img, align 8, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %57, i64 12
  %59 = load i32, ptr %58, align 4, !tbaa !21
  call void @getLuma4x4Neighbour(i32 noundef signext %59, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext -1, i32 noundef signext -1, ptr noundef nonnull %5) #16
  %60 = load ptr, ptr @img, align 8, !tbaa !6
  %61 = getelementptr inbounds i8, ptr %60, i64 90220
  %62 = load i32, ptr %61, align 4, !tbaa !45
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %183

64:                                               ; preds = %50
  %65 = load i32, ptr %3, align 4, !tbaa !42
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %3, i64 20
  %69 = load i32, ptr %68, align 4, !tbaa !46
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %10, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %3, i64 16
  %74 = load i32, ptr %73, align 4, !tbaa !47
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %72, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !48
  %78 = zext i8 %77 to i16
  br label %79

79:                                               ; preds = %64, %67
  %80 = phi i16 [ %78, %67 ], [ -1, %64 ]
  %81 = load i32, ptr %4, align 4, !tbaa !42
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %4, i64 20
  %85 = load i32, ptr %84, align 4, !tbaa !46
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %10, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = getelementptr inbounds i8, ptr %4, i64 16
  %90 = load i32, ptr %89, align 4, !tbaa !47
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %88, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !48
  %94 = zext i8 %93 to i16
  br label %95

95:                                               ; preds = %79, %83
  %96 = phi i16 [ %94, %83 ], [ -1, %79 ]
  %97 = load i32, ptr %5, align 4, !tbaa !42
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, ptr %5, i64 20
  %101 = load i32, ptr %100, align 4, !tbaa !46
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %10, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %5, i64 16
  %106 = load i32, ptr %105, align 4, !tbaa !47
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %104, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !48
  %110 = zext i8 %109 to i16
  br label %111

111:                                              ; preds = %95, %99
  %112 = phi i16 [ %110, %99 ], [ -1, %95 ]
  %113 = load i32, ptr %6, align 4, !tbaa !42
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, ptr %6, i64 20
  %117 = load i32, ptr %116, align 4, !tbaa !46
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %10, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = getelementptr inbounds i8, ptr %6, i64 16
  %122 = load i32, ptr %121, align 4, !tbaa !47
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %120, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !48
  %126 = zext i8 %125 to i16
  br label %127

127:                                              ; preds = %111, %115
  %128 = phi i16 [ %126, %115 ], [ %112, %111 ]
  br i1 %66, label %141, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds i8, ptr %3, i64 20
  %131 = load i32, ptr %130, align 4, !tbaa !46
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %12, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = getelementptr inbounds i8, ptr %3, i64 16
  %136 = load i32, ptr %135, align 4, !tbaa !47
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %134, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !48
  %140 = zext i8 %139 to i16
  br label %141

141:                                              ; preds = %127, %129
  %142 = phi i16 [ %140, %129 ], [ -1, %127 ]
  br i1 %82, label %155, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds i8, ptr %4, i64 20
  %145 = load i32, ptr %144, align 4, !tbaa !46
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %12, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %4, i64 16
  %150 = load i32, ptr %149, align 4, !tbaa !47
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %148, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !48
  %154 = zext i8 %153 to i16
  br label %155

155:                                              ; preds = %141, %143
  %156 = phi i16 [ %154, %143 ], [ -1, %141 ]
  br i1 %98, label %169, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds i8, ptr %5, i64 20
  %159 = load i32, ptr %158, align 4, !tbaa !46
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %12, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = getelementptr inbounds i8, ptr %5, i64 16
  %164 = load i32, ptr %163, align 4, !tbaa !47
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %162, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !48
  %168 = zext i8 %167 to i16
  br label %169

169:                                              ; preds = %155, %157
  %170 = phi i16 [ %168, %157 ], [ -1, %155 ]
  br i1 %114, label %599, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds i8, ptr %6, i64 20
  %173 = load i32, ptr %172, align 4, !tbaa !46
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds ptr, ptr %12, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !6
  %177 = getelementptr inbounds i8, ptr %6, i64 16
  %178 = load i32, ptr %177, align 4, !tbaa !47
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, ptr %176, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !48
  %182 = zext i8 %181 to i16
  br label %599

183:                                              ; preds = %50
  %184 = getelementptr inbounds i8, ptr %19, i64 424
  %185 = load i32, ptr %184, align 8, !tbaa !49
  %186 = icmp eq i32 %185, 0
  %187 = load i32, ptr %3, align 4, !tbaa !42
  %188 = icmp eq i32 %187, 0
  br i1 %186, label %386, label %189

189:                                              ; preds = %183
  br i1 %188, label %212, label %190

190:                                              ; preds = %189
  %191 = getelementptr inbounds i8, ptr %60, i64 31576
  %192 = load ptr, ptr %191, align 8, !tbaa !20
  %193 = getelementptr inbounds i8, ptr %3, i64 4
  %194 = load i32, ptr %193, align 4, !tbaa !50
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.macroblock, ptr %192, i64 %195, i32 19
  %197 = load i32, ptr %196, align 8, !tbaa !49
  %198 = icmp eq i32 %197, 0
  %199 = getelementptr inbounds i8, ptr %3, i64 20
  %200 = load i32, ptr %199, align 4, !tbaa !46
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds ptr, ptr %10, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !6
  %204 = getelementptr inbounds i8, ptr %3, i64 16
  %205 = load i32, ptr %204, align 4, !tbaa !47
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, ptr %203, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !48
  %209 = zext i8 %208 to i16
  %210 = zext i1 %198 to i16
  %211 = shl nuw nsw i16 %209, %210
  br label %212

212:                                              ; preds = %190, %189
  %213 = phi i16 [ -1, %189 ], [ %211, %190 ]
  %214 = load i32, ptr %4, align 4, !tbaa !42
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %238, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds i8, ptr %60, i64 31576
  %218 = load ptr, ptr %217, align 8, !tbaa !20
  %219 = getelementptr inbounds i8, ptr %4, i64 4
  %220 = load i32, ptr %219, align 4, !tbaa !50
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.macroblock, ptr %218, i64 %221, i32 19
  %223 = load i32, ptr %222, align 8, !tbaa !49
  %224 = icmp eq i32 %223, 0
  %225 = getelementptr inbounds i8, ptr %4, i64 20
  %226 = load i32, ptr %225, align 4, !tbaa !46
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds ptr, ptr %10, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = getelementptr inbounds i8, ptr %4, i64 16
  %231 = load i32, ptr %230, align 4, !tbaa !47
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, ptr %229, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !48
  %235 = zext i8 %234 to i16
  %236 = zext i1 %224 to i16
  %237 = shl nuw nsw i16 %235, %236
  br label %238

238:                                              ; preds = %216, %212
  %239 = phi i16 [ -1, %212 ], [ %237, %216 ]
  %240 = load i32, ptr %5, align 4, !tbaa !42
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %264, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds i8, ptr %60, i64 31576
  %244 = load ptr, ptr %243, align 8, !tbaa !20
  %245 = getelementptr inbounds i8, ptr %5, i64 4
  %246 = load i32, ptr %245, align 4, !tbaa !50
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.macroblock, ptr %244, i64 %247, i32 19
  %249 = load i32, ptr %248, align 8, !tbaa !49
  %250 = icmp eq i32 %249, 0
  %251 = getelementptr inbounds i8, ptr %5, i64 20
  %252 = load i32, ptr %251, align 4, !tbaa !46
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds ptr, ptr %10, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !6
  %256 = getelementptr inbounds i8, ptr %5, i64 16
  %257 = load i32, ptr %256, align 4, !tbaa !47
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, ptr %255, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !48
  %261 = zext i8 %260 to i16
  %262 = zext i1 %250 to i16
  %263 = shl nuw nsw i16 %261, %262
  br label %264

264:                                              ; preds = %242, %238
  %265 = phi i16 [ -1, %238 ], [ %263, %242 ]
  %266 = load i32, ptr %6, align 4, !tbaa !42
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %290, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds i8, ptr %60, i64 31576
  %270 = load ptr, ptr %269, align 8, !tbaa !20
  %271 = getelementptr inbounds i8, ptr %6, i64 4
  %272 = load i32, ptr %271, align 4, !tbaa !50
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.macroblock, ptr %270, i64 %273, i32 19
  %275 = load i32, ptr %274, align 8, !tbaa !49
  %276 = icmp eq i32 %275, 0
  %277 = getelementptr inbounds i8, ptr %6, i64 20
  %278 = load i32, ptr %277, align 4, !tbaa !46
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds ptr, ptr %10, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !6
  %282 = getelementptr inbounds i8, ptr %6, i64 16
  %283 = load i32, ptr %282, align 4, !tbaa !47
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, ptr %281, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !48
  %287 = zext i8 %286 to i16
  %288 = zext i1 %276 to i16
  %289 = shl nuw nsw i16 %287, %288
  br label %290

290:                                              ; preds = %268, %264
  %291 = phi i16 [ %265, %264 ], [ %289, %268 ]
  br i1 %188, label %314, label %292

292:                                              ; preds = %290
  %293 = getelementptr inbounds i8, ptr %60, i64 31576
  %294 = load ptr, ptr %293, align 8, !tbaa !20
  %295 = getelementptr inbounds i8, ptr %3, i64 4
  %296 = load i32, ptr %295, align 4, !tbaa !50
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.macroblock, ptr %294, i64 %297, i32 19
  %299 = load i32, ptr %298, align 8, !tbaa !49
  %300 = icmp eq i32 %299, 0
  %301 = getelementptr inbounds i8, ptr %3, i64 20
  %302 = load i32, ptr %301, align 4, !tbaa !46
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %12, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  %306 = getelementptr inbounds i8, ptr %3, i64 16
  %307 = load i32, ptr %306, align 4, !tbaa !47
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, ptr %305, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !48
  %311 = zext i8 %310 to i16
  %312 = zext i1 %300 to i16
  %313 = shl nuw nsw i16 %311, %312
  br label %314

314:                                              ; preds = %292, %290
  %315 = phi i16 [ -1, %290 ], [ %313, %292 ]
  br i1 %215, label %338, label %316

316:                                              ; preds = %314
  %317 = getelementptr inbounds i8, ptr %60, i64 31576
  %318 = load ptr, ptr %317, align 8, !tbaa !20
  %319 = getelementptr inbounds i8, ptr %4, i64 4
  %320 = load i32, ptr %319, align 4, !tbaa !50
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.macroblock, ptr %318, i64 %321, i32 19
  %323 = load i32, ptr %322, align 8, !tbaa !49
  %324 = icmp eq i32 %323, 0
  %325 = getelementptr inbounds i8, ptr %4, i64 20
  %326 = load i32, ptr %325, align 4, !tbaa !46
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds ptr, ptr %12, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !6
  %330 = getelementptr inbounds i8, ptr %4, i64 16
  %331 = load i32, ptr %330, align 4, !tbaa !47
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, ptr %329, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !48
  %335 = zext i8 %334 to i16
  %336 = zext i1 %324 to i16
  %337 = shl nuw nsw i16 %335, %336
  br label %338

338:                                              ; preds = %316, %314
  %339 = phi i16 [ -1, %314 ], [ %337, %316 ]
  br i1 %241, label %362, label %340

340:                                              ; preds = %338
  %341 = getelementptr inbounds i8, ptr %60, i64 31576
  %342 = load ptr, ptr %341, align 8, !tbaa !20
  %343 = getelementptr inbounds i8, ptr %5, i64 4
  %344 = load i32, ptr %343, align 4, !tbaa !50
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.macroblock, ptr %342, i64 %345, i32 19
  %347 = load i32, ptr %346, align 8, !tbaa !49
  %348 = icmp eq i32 %347, 0
  %349 = getelementptr inbounds i8, ptr %5, i64 20
  %350 = load i32, ptr %349, align 4, !tbaa !46
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds ptr, ptr %12, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !6
  %354 = getelementptr inbounds i8, ptr %5, i64 16
  %355 = load i32, ptr %354, align 4, !tbaa !47
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, ptr %353, i64 %356
  %358 = load i8, ptr %357, align 1, !tbaa !48
  %359 = zext i8 %358 to i16
  %360 = zext i1 %348 to i16
  %361 = shl nuw nsw i16 %359, %360
  br label %362

362:                                              ; preds = %340, %338
  %363 = phi i16 [ -1, %338 ], [ %361, %340 ]
  br i1 %267, label %599, label %364

364:                                              ; preds = %362
  %365 = getelementptr inbounds i8, ptr %60, i64 31576
  %366 = load ptr, ptr %365, align 8, !tbaa !20
  %367 = getelementptr inbounds i8, ptr %6, i64 4
  %368 = load i32, ptr %367, align 4, !tbaa !50
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.macroblock, ptr %366, i64 %369, i32 19
  %371 = load i32, ptr %370, align 8, !tbaa !49
  %372 = icmp eq i32 %371, 0
  %373 = getelementptr inbounds i8, ptr %6, i64 20
  %374 = load i32, ptr %373, align 4, !tbaa !46
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds ptr, ptr %12, i64 %375
  %377 = load ptr, ptr %376, align 8, !tbaa !6
  %378 = getelementptr inbounds i8, ptr %6, i64 16
  %379 = load i32, ptr %378, align 4, !tbaa !47
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, ptr %377, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !48
  %383 = zext i8 %382 to i16
  %384 = zext i1 %372 to i16
  %385 = shl nuw nsw i16 %383, %384
  br label %599

386:                                              ; preds = %183
  br i1 %188, label %411, label %387

387:                                              ; preds = %386
  %388 = getelementptr inbounds i8, ptr %60, i64 31576
  %389 = load ptr, ptr %388, align 8, !tbaa !20
  %390 = getelementptr inbounds i8, ptr %3, i64 4
  %391 = load i32, ptr %390, align 4, !tbaa !50
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.macroblock, ptr %389, i64 %392, i32 19
  %394 = load i32, ptr %393, align 8, !tbaa !49
  %395 = icmp eq i32 %394, 0
  %396 = getelementptr inbounds i8, ptr %3, i64 20
  %397 = load i32, ptr %396, align 4, !tbaa !46
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds ptr, ptr %10, i64 %398
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = getelementptr inbounds i8, ptr %3, i64 16
  %402 = load i32, ptr %401, align 4, !tbaa !47
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8, ptr %400, i64 %403
  %405 = load i8, ptr %404, align 1, !tbaa !48
  br i1 %395, label %409, label %406

406:                                              ; preds = %387
  %407 = lshr i8 %405, 1
  %408 = zext nneg i8 %407 to i16
  br label %411

409:                                              ; preds = %387
  %410 = zext i8 %405 to i16
  br label %411

411:                                              ; preds = %386, %406, %409
  %412 = phi i16 [ %408, %406 ], [ %410, %409 ], [ -1, %386 ]
  %413 = load i32, ptr %4, align 4, !tbaa !42
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %439, label %415

415:                                              ; preds = %411
  %416 = getelementptr inbounds i8, ptr %60, i64 31576
  %417 = load ptr, ptr %416, align 8, !tbaa !20
  %418 = getelementptr inbounds i8, ptr %4, i64 4
  %419 = load i32, ptr %418, align 4, !tbaa !50
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.macroblock, ptr %417, i64 %420, i32 19
  %422 = load i32, ptr %421, align 8, !tbaa !49
  %423 = icmp eq i32 %422, 0
  %424 = getelementptr inbounds i8, ptr %4, i64 20
  %425 = load i32, ptr %424, align 4, !tbaa !46
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds ptr, ptr %10, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !6
  %429 = getelementptr inbounds i8, ptr %4, i64 16
  %430 = load i32, ptr %429, align 4, !tbaa !47
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, ptr %428, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !48
  br i1 %423, label %437, label %434

434:                                              ; preds = %415
  %435 = lshr i8 %433, 1
  %436 = zext nneg i8 %435 to i16
  br label %439

437:                                              ; preds = %415
  %438 = zext i8 %433 to i16
  br label %439

439:                                              ; preds = %411, %434, %437
  %440 = phi i16 [ %436, %434 ], [ %438, %437 ], [ -1, %411 ]
  %441 = load i32, ptr %5, align 4, !tbaa !42
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %467, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds i8, ptr %60, i64 31576
  %445 = load ptr, ptr %444, align 8, !tbaa !20
  %446 = getelementptr inbounds i8, ptr %5, i64 4
  %447 = load i32, ptr %446, align 4, !tbaa !50
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.macroblock, ptr %445, i64 %448, i32 19
  %450 = load i32, ptr %449, align 8, !tbaa !49
  %451 = icmp eq i32 %450, 0
  %452 = getelementptr inbounds i8, ptr %5, i64 20
  %453 = load i32, ptr %452, align 4, !tbaa !46
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds ptr, ptr %10, i64 %454
  %456 = load ptr, ptr %455, align 8, !tbaa !6
  %457 = getelementptr inbounds i8, ptr %5, i64 16
  %458 = load i32, ptr %457, align 4, !tbaa !47
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i8, ptr %456, i64 %459
  %461 = load i8, ptr %460, align 1, !tbaa !48
  br i1 %451, label %465, label %462

462:                                              ; preds = %443
  %463 = lshr i8 %461, 1
  %464 = zext nneg i8 %463 to i16
  br label %467

465:                                              ; preds = %443
  %466 = zext i8 %461 to i16
  br label %467

467:                                              ; preds = %439, %462, %465
  %468 = phi i16 [ %464, %462 ], [ %466, %465 ], [ -1, %439 ]
  %469 = load i32, ptr %6, align 4, !tbaa !42
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %495, label %471

471:                                              ; preds = %467
  %472 = getelementptr inbounds i8, ptr %60, i64 31576
  %473 = load ptr, ptr %472, align 8, !tbaa !20
  %474 = getelementptr inbounds i8, ptr %6, i64 4
  %475 = load i32, ptr %474, align 4, !tbaa !50
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.macroblock, ptr %473, i64 %476, i32 19
  %478 = load i32, ptr %477, align 8, !tbaa !49
  %479 = icmp eq i32 %478, 0
  %480 = getelementptr inbounds i8, ptr %6, i64 20
  %481 = load i32, ptr %480, align 4, !tbaa !46
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds ptr, ptr %10, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !6
  %485 = getelementptr inbounds i8, ptr %6, i64 16
  %486 = load i32, ptr %485, align 4, !tbaa !47
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8, ptr %484, i64 %487
  %489 = load i8, ptr %488, align 1, !tbaa !48
  br i1 %479, label %493, label %490

490:                                              ; preds = %471
  %491 = lshr i8 %489, 1
  %492 = zext nneg i8 %491 to i16
  br label %495

493:                                              ; preds = %471
  %494 = zext i8 %489 to i16
  br label %495

495:                                              ; preds = %467, %490, %493
  %496 = phi i16 [ %492, %490 ], [ %494, %493 ], [ %468, %467 ]
  br i1 %188, label %521, label %497

497:                                              ; preds = %495
  %498 = getelementptr inbounds i8, ptr %60, i64 31576
  %499 = load ptr, ptr %498, align 8, !tbaa !20
  %500 = getelementptr inbounds i8, ptr %3, i64 4
  %501 = load i32, ptr %500, align 4, !tbaa !50
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.macroblock, ptr %499, i64 %502, i32 19
  %504 = load i32, ptr %503, align 8, !tbaa !49
  %505 = icmp eq i32 %504, 0
  %506 = getelementptr inbounds i8, ptr %3, i64 20
  %507 = load i32, ptr %506, align 4, !tbaa !46
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds ptr, ptr %12, i64 %508
  %510 = load ptr, ptr %509, align 8, !tbaa !6
  %511 = getelementptr inbounds i8, ptr %3, i64 16
  %512 = load i32, ptr %511, align 4, !tbaa !47
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i8, ptr %510, i64 %513
  %515 = load i8, ptr %514, align 1, !tbaa !48
  br i1 %505, label %519, label %516

516:                                              ; preds = %497
  %517 = lshr i8 %515, 1
  %518 = zext nneg i8 %517 to i16
  br label %521

519:                                              ; preds = %497
  %520 = zext i8 %515 to i16
  br label %521

521:                                              ; preds = %495, %516, %519
  %522 = phi i16 [ %518, %516 ], [ %520, %519 ], [ -1, %495 ]
  br i1 %414, label %547, label %523

523:                                              ; preds = %521
  %524 = getelementptr inbounds i8, ptr %60, i64 31576
  %525 = load ptr, ptr %524, align 8, !tbaa !20
  %526 = getelementptr inbounds i8, ptr %4, i64 4
  %527 = load i32, ptr %526, align 4, !tbaa !50
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.macroblock, ptr %525, i64 %528, i32 19
  %530 = load i32, ptr %529, align 8, !tbaa !49
  %531 = icmp eq i32 %530, 0
  %532 = getelementptr inbounds i8, ptr %4, i64 20
  %533 = load i32, ptr %532, align 4, !tbaa !46
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds ptr, ptr %12, i64 %534
  %536 = load ptr, ptr %535, align 8, !tbaa !6
  %537 = getelementptr inbounds i8, ptr %4, i64 16
  %538 = load i32, ptr %537, align 4, !tbaa !47
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i8, ptr %536, i64 %539
  %541 = load i8, ptr %540, align 1, !tbaa !48
  br i1 %531, label %545, label %542

542:                                              ; preds = %523
  %543 = lshr i8 %541, 1
  %544 = zext nneg i8 %543 to i16
  br label %547

545:                                              ; preds = %523
  %546 = zext i8 %541 to i16
  br label %547

547:                                              ; preds = %521, %542, %545
  %548 = phi i16 [ %544, %542 ], [ %546, %545 ], [ -1, %521 ]
  br i1 %442, label %573, label %549

549:                                              ; preds = %547
  %550 = getelementptr inbounds i8, ptr %60, i64 31576
  %551 = load ptr, ptr %550, align 8, !tbaa !20
  %552 = getelementptr inbounds i8, ptr %5, i64 4
  %553 = load i32, ptr %552, align 4, !tbaa !50
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.macroblock, ptr %551, i64 %554, i32 19
  %556 = load i32, ptr %555, align 8, !tbaa !49
  %557 = icmp eq i32 %556, 0
  %558 = getelementptr inbounds i8, ptr %5, i64 20
  %559 = load i32, ptr %558, align 4, !tbaa !46
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds ptr, ptr %12, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !6
  %563 = getelementptr inbounds i8, ptr %5, i64 16
  %564 = load i32, ptr %563, align 4, !tbaa !47
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i8, ptr %562, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !48
  br i1 %557, label %571, label %568

568:                                              ; preds = %549
  %569 = lshr i8 %567, 1
  %570 = zext nneg i8 %569 to i16
  br label %573

571:                                              ; preds = %549
  %572 = zext i8 %567 to i16
  br label %573

573:                                              ; preds = %547, %568, %571
  %574 = phi i16 [ %570, %568 ], [ %572, %571 ], [ -1, %547 ]
  br i1 %470, label %599, label %575

575:                                              ; preds = %573
  %576 = getelementptr inbounds i8, ptr %60, i64 31576
  %577 = load ptr, ptr %576, align 8, !tbaa !20
  %578 = getelementptr inbounds i8, ptr %6, i64 4
  %579 = load i32, ptr %578, align 4, !tbaa !50
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.macroblock, ptr %577, i64 %580, i32 19
  %582 = load i32, ptr %581, align 8, !tbaa !49
  %583 = icmp eq i32 %582, 0
  %584 = getelementptr inbounds i8, ptr %6, i64 20
  %585 = load i32, ptr %584, align 4, !tbaa !46
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds ptr, ptr %12, i64 %586
  %588 = load ptr, ptr %587, align 8, !tbaa !6
  %589 = getelementptr inbounds i8, ptr %6, i64 16
  %590 = load i32, ptr %589, align 4, !tbaa !47
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i8, ptr %588, i64 %591
  %593 = load i8, ptr %592, align 1, !tbaa !48
  br i1 %583, label %597, label %594

594:                                              ; preds = %575
  %595 = lshr i8 %593, 1
  %596 = zext nneg i8 %595 to i16
  br label %599

597:                                              ; preds = %575
  %598 = zext i8 %593 to i16
  br label %599

599:                                              ; preds = %364, %597, %594, %573, %362, %171, %169
  %600 = phi i16 [ %80, %169 ], [ %80, %171 ], [ %213, %362 ], [ %412, %573 ], [ %412, %594 ], [ %412, %597 ], [ %213, %364 ]
  %601 = phi i16 [ %96, %169 ], [ %96, %171 ], [ %239, %362 ], [ %440, %573 ], [ %440, %594 ], [ %440, %597 ], [ %239, %364 ]
  %602 = phi i16 [ %128, %169 ], [ %128, %171 ], [ %291, %362 ], [ %496, %573 ], [ %496, %594 ], [ %496, %597 ], [ %291, %364 ]
  %603 = phi i16 [ %142, %169 ], [ %142, %171 ], [ %315, %362 ], [ %522, %573 ], [ %522, %594 ], [ %522, %597 ], [ %315, %364 ]
  %604 = phi i16 [ %156, %169 ], [ %156, %171 ], [ %339, %362 ], [ %548, %573 ], [ %548, %594 ], [ %548, %597 ], [ %339, %364 ]
  %605 = phi i16 [ %170, %169 ], [ %182, %171 ], [ %363, %362 ], [ %574, %573 ], [ %596, %594 ], [ %598, %597 ], [ %385, %364 ]
  %606 = sext i16 %600 to i32
  %607 = icmp sgt i16 %600, -1
  %608 = sext i16 %601 to i32
  %609 = icmp sgt i16 %601, -1
  %610 = select i1 %607, i1 %609, i1 false
  %611 = call i32 @llvm.smin.i32(i32 %606, i32 %608)
  %612 = call i32 @llvm.smax.i32(i32 %606, i32 %608)
  %613 = select i1 %610, i32 %611, i32 %612
  %614 = icmp sgt i32 %613, -1
  %615 = sext i16 %602 to i32
  %616 = icmp sgt i16 %602, -1
  %617 = select i1 %614, i1 %616, i1 false
  %618 = call i32 @llvm.smin.i32(i32 %613, i32 %615)
  %619 = call i32 @llvm.smax.i32(i32 %613, i32 %615)
  %620 = select i1 %617, i32 %618, i32 %619
  %621 = trunc nsw i32 %620 to i16
  %622 = sext i16 %603 to i32
  %623 = icmp sgt i16 %603, -1
  %624 = sext i16 %604 to i32
  %625 = icmp sgt i16 %604, -1
  %626 = select i1 %623, i1 %625, i1 false
  %627 = call i32 @llvm.smin.i32(i32 %622, i32 %624)
  %628 = call i32 @llvm.smax.i32(i32 %622, i32 %624)
  %629 = select i1 %626, i32 %627, i32 %628
  %630 = icmp sgt i32 %629, -1
  %631 = sext i16 %605 to i32
  %632 = icmp sgt i16 %605, -1
  %633 = select i1 %630, i1 %632, i1 false
  %634 = call i32 @llvm.smin.i32(i32 %629, i32 %631)
  %635 = call i32 @llvm.smax.i32(i32 %629, i32 %631)
  %636 = select i1 %633, i32 %634, i32 %635
  %637 = trunc nsw i32 %636 to i16
  %638 = icmp sgt i32 %620, -1
  br i1 %638, label %639, label %647

639:                                              ; preds = %599
  %640 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %641 = getelementptr inbounds i8, ptr %640, i64 6480
  %642 = load ptr, ptr %641, align 8, !tbaa !33
  %643 = load ptr, ptr %642, align 8, !tbaa !6
  %644 = getelementptr inbounds i8, ptr %640, i64 6504
  %645 = load ptr, ptr %644, align 8, !tbaa !34
  %646 = load ptr, ptr %645, align 8, !tbaa !6
  call void @SetMotionVectorPredictor(ptr noundef nonnull %1, ptr noundef %643, ptr noundef %646, i16 noundef signext %621, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 16, i32 noundef signext 16)
  br label %647

647:                                              ; preds = %639, %599
  %648 = icmp sgt i32 %636, -1
  br i1 %648, label %649, label %662

649:                                              ; preds = %647
  %650 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %651 = getelementptr inbounds i8, ptr %650, i64 6480
  %652 = load ptr, ptr %651, align 8, !tbaa !33
  %653 = getelementptr inbounds i8, ptr %652, i64 8
  %654 = load ptr, ptr %653, align 8, !tbaa !6
  %655 = getelementptr inbounds i8, ptr %650, i64 6504
  %656 = load ptr, ptr %655, align 8, !tbaa !34
  %657 = getelementptr inbounds i8, ptr %656, i64 8
  %658 = load ptr, ptr %657, align 8, !tbaa !6
  call void @SetMotionVectorPredictor(ptr noundef nonnull %2, ptr noundef %654, ptr noundef %658, i16 noundef signext %637, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 16, i32 noundef signext 16)
  %659 = load i16, ptr %2, align 4
  %660 = getelementptr inbounds i8, ptr %2, i64 2
  %661 = load i16, ptr %660, align 2
  br label %662

662:                                              ; preds = %649, %647
  %663 = phi i16 [ %661, %649 ], [ 0, %647 ]
  %664 = phi i16 [ %659, %649 ], [ 0, %647 ]
  %665 = icmp eq i32 %620, 0
  %666 = load i16, ptr %1, align 4
  %667 = sext i16 %621 to i64
  %668 = getelementptr inbounds i8, ptr %1, i64 2
  %669 = load i16, ptr %668, align 2
  %670 = trunc i32 %620 to i8
  %671 = icmp eq i32 %636, 0
  %672 = sext i16 %637 to i64
  %673 = trunc i32 %636 to i8
  %674 = call i32 @llvm.smax.i32(i32 %620, i32 0)
  %675 = zext nneg i32 %674 to i64
  %676 = call i32 @llvm.smax.i32(i32 %636, i32 0)
  %677 = zext nneg i32 %676 to i64
  %678 = and i32 %636, %620
  %679 = icmp sgt i32 %678, -1
  br label %680

680:                                              ; preds = %662, %872
  %681 = phi i64 [ 0, %662 ], [ %873, %872 ]
  %682 = load ptr, ptr @img, align 8, !tbaa !6
  %683 = getelementptr inbounds i8, ptr %682, i64 156
  %684 = load i32, ptr %683, align 4, !tbaa !61
  %685 = ashr i32 %684, 2
  %686 = trunc nuw nsw i64 %681 to i32
  %687 = add nsw i32 %685, %686
  %688 = getelementptr inbounds i8, ptr %682, i64 172
  %689 = load i32, ptr %688, align 4, !tbaa !39
  %690 = ashr i32 %689, 2
  %691 = add nsw i32 %690, %686
  %692 = sext i32 %687 to i64
  %693 = sext i32 %691 to i64
  %694 = getelementptr inbounds ptr, ptr %46, i64 %693
  br label %695

695:                                              ; preds = %680, %863
  %696 = phi i64 [ 0, %680 ], [ %870, %863 ]
  %697 = load ptr, ptr @img, align 8, !tbaa !6
  %698 = getelementptr inbounds i8, ptr %697, i64 152
  %699 = load i32, ptr %698, align 8, !tbaa !62
  %700 = ashr i32 %699, 2
  %701 = trunc nuw nsw i64 %696 to i32
  %702 = add nsw i32 %700, %701
  %703 = getelementptr inbounds i8, ptr %697, i64 168
  %704 = load i32, ptr %703, align 8, !tbaa !38
  %705 = ashr i32 %704, 2
  %706 = add nsw i32 %705, %701
  %707 = getelementptr inbounds i8, ptr %697, i64 89336
  %708 = load ptr, ptr %707, align 8, !tbaa !60
  %709 = getelementptr inbounds ptr, ptr %708, i64 %681
  %710 = load ptr, ptr %709, align 8, !tbaa !6
  %711 = getelementptr inbounds ptr, ptr %710, i64 %696
  %712 = load ptr, ptr %711, align 8, !tbaa !6
  br i1 %638, label %713, label %730

713:                                              ; preds = %695
  br i1 %665, label %714, label %724

714:                                              ; preds = %713
  %715 = load ptr, ptr %694, align 8, !tbaa !6
  %716 = sext i32 %706 to i64
  %717 = getelementptr inbounds i8, ptr %715, i64 %716
  %718 = load i8, ptr %717, align 1, !tbaa !48
  %719 = icmp eq i8 %718, 0
  br i1 %719, label %720, label %724

720:                                              ; preds = %714
  %721 = load ptr, ptr %712, align 8, !tbaa !6
  %722 = load ptr, ptr %721, align 8, !tbaa !6
  %723 = load ptr, ptr %722, align 8, !tbaa !6
  store i32 0, ptr %723, align 2
  br label %735

724:                                              ; preds = %714, %713
  %725 = load ptr, ptr %712, align 8, !tbaa !6
  %726 = getelementptr inbounds ptr, ptr %725, i64 %667
  %727 = load ptr, ptr %726, align 8, !tbaa !6
  %728 = load ptr, ptr %727, align 8, !tbaa !6
  store i16 %666, ptr %728, align 2, !tbaa !35
  %729 = getelementptr inbounds i8, ptr %728, i64 2
  store i16 %669, ptr %729, align 2, !tbaa !35
  br label %735

730:                                              ; preds = %695
  %731 = load ptr, ptr %712, align 8, !tbaa !6
  %732 = load ptr, ptr %731, align 8, !tbaa !6
  %733 = load ptr, ptr %732, align 8, !tbaa !6
  store i16 0, ptr %733, align 2, !tbaa !35
  %734 = getelementptr inbounds i8, ptr %733, i64 2
  store i16 0, ptr %734, align 2, !tbaa !35
  br label %735

735:                                              ; preds = %720, %724, %730
  %736 = phi i8 [ 0, %720 ], [ %670, %724 ], [ -1, %730 ]
  %737 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %738 = load ptr, ptr %737, align 8, !tbaa !6
  %739 = getelementptr inbounds ptr, ptr %738, i64 %692
  %740 = load ptr, ptr %739, align 8, !tbaa !6
  %741 = sext i32 %702 to i64
  %742 = getelementptr inbounds i8, ptr %740, i64 %741
  store i8 %736, ptr %742, align 1, !tbaa !48
  br i1 %648, label %743, label %777

743:                                              ; preds = %735
  br i1 %671, label %744, label %763

744:                                              ; preds = %743
  %745 = load ptr, ptr %694, align 8, !tbaa !6
  %746 = sext i32 %706 to i64
  %747 = getelementptr inbounds i8, ptr %745, i64 %746
  %748 = load i8, ptr %747, align 1, !tbaa !48
  %749 = icmp eq i8 %748, 0
  br i1 %749, label %750, label %763

750:                                              ; preds = %744
  %751 = getelementptr inbounds i8, ptr %712, i64 8
  %752 = load ptr, ptr %751, align 8, !tbaa !6
  %753 = load ptr, ptr %752, align 8, !tbaa !6
  %754 = load ptr, ptr %753, align 8, !tbaa !6
  store i16 0, ptr %754, align 2, !tbaa !35
  %755 = getelementptr inbounds i8, ptr %754, i64 2
  store i16 0, ptr %755, align 2, !tbaa !35
  %756 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %757 = getelementptr inbounds i8, ptr %756, i64 8
  %758 = load ptr, ptr %757, align 8, !tbaa !6
  %759 = getelementptr inbounds ptr, ptr %758, i64 %692
  %760 = load ptr, ptr %759, align 8, !tbaa !6
  %761 = sext i32 %702 to i64
  %762 = getelementptr inbounds i8, ptr %760, i64 %761
  store i8 0, ptr %762, align 1, !tbaa !48
  br label %790

763:                                              ; preds = %744, %743
  %764 = getelementptr inbounds i8, ptr %712, i64 8
  %765 = load ptr, ptr %764, align 8, !tbaa !6
  %766 = getelementptr inbounds ptr, ptr %765, i64 %672
  %767 = load ptr, ptr %766, align 8, !tbaa !6
  %768 = load ptr, ptr %767, align 8, !tbaa !6
  store i16 %664, ptr %768, align 2, !tbaa !35
  %769 = getelementptr inbounds i8, ptr %768, i64 2
  store i16 %663, ptr %769, align 2, !tbaa !35
  %770 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %771 = getelementptr inbounds i8, ptr %770, i64 8
  %772 = load ptr, ptr %771, align 8, !tbaa !6
  %773 = getelementptr inbounds ptr, ptr %772, i64 %692
  %774 = load ptr, ptr %773, align 8, !tbaa !6
  %775 = sext i32 %702 to i64
  %776 = getelementptr inbounds i8, ptr %774, i64 %775
  store i8 %673, ptr %776, align 1, !tbaa !48
  br label %790

777:                                              ; preds = %735
  %778 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %779 = getelementptr inbounds i8, ptr %778, i64 8
  %780 = load ptr, ptr %779, align 8, !tbaa !6
  %781 = getelementptr inbounds ptr, ptr %780, i64 %692
  %782 = load ptr, ptr %781, align 8, !tbaa !6
  %783 = sext i32 %702 to i64
  %784 = getelementptr inbounds i8, ptr %782, i64 %783
  store i8 -1, ptr %784, align 1, !tbaa !48
  %785 = getelementptr inbounds i8, ptr %712, i64 8
  %786 = load ptr, ptr %785, align 8, !tbaa !6
  %787 = load ptr, ptr %786, align 8, !tbaa !6
  %788 = load ptr, ptr %787, align 8, !tbaa !6
  store i16 0, ptr %788, align 2, !tbaa !35
  %789 = getelementptr inbounds i8, ptr %788, i64 2
  store i16 0, ptr %789, align 2, !tbaa !35
  br label %790

790:                                              ; preds = %750, %763, %777
  %791 = load ptr, ptr @img, align 8, !tbaa !6
  %792 = getelementptr inbounds i8, ptr %791, i64 90220
  %793 = load i32, ptr %792, align 4, !tbaa !45
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %847, label %795

795:                                              ; preds = %790
  %796 = load ptr, ptr %712, align 8, !tbaa !6
  %797 = getelementptr inbounds ptr, ptr %796, i64 %675
  %798 = load ptr, ptr %797, align 8, !tbaa !6
  %799 = load ptr, ptr %798, align 8, !tbaa !6
  %800 = load i16, ptr %799, align 2, !tbaa !35
  %801 = add i16 %800, -8192
  %802 = icmp ult i16 %801, -16384
  br i1 %802, label %834, label %803

803:                                              ; preds = %795
  %804 = getelementptr inbounds i8, ptr %799, i64 2
  %805 = load i16, ptr %804, align 2, !tbaa !35
  %806 = sext i16 %805 to i32
  %807 = getelementptr inbounds i8, ptr %791, i64 8
  %808 = load i32, ptr %807, align 8, !tbaa !37
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds [17 x [6 x i32]], ptr @LEVELMVLIMIT, i64 0, i64 %809
  %811 = getelementptr inbounds i8, ptr %810, i64 16
  %812 = load i32, ptr %811, align 4, !tbaa !19
  %813 = icmp sgt i32 %812, %806
  br i1 %813, label %834, label %814

814:                                              ; preds = %803
  %815 = getelementptr inbounds i8, ptr %810, i64 20
  %816 = load i32, ptr %815, align 4, !tbaa !19
  %817 = icmp slt i32 %816, %806
  br i1 %817, label %834, label %818

818:                                              ; preds = %814
  %819 = getelementptr inbounds i8, ptr %712, i64 8
  %820 = load ptr, ptr %819, align 8, !tbaa !6
  %821 = getelementptr inbounds ptr, ptr %820, i64 %677
  %822 = load ptr, ptr %821, align 8, !tbaa !6
  %823 = load ptr, ptr %822, align 8, !tbaa !6
  %824 = load i16, ptr %823, align 2, !tbaa !35
  %825 = add i16 %824, -8192
  %826 = icmp ult i16 %825, -16384
  br i1 %826, label %834, label %827

827:                                              ; preds = %818
  %828 = getelementptr inbounds i8, ptr %823, i64 2
  %829 = load i16, ptr %828, align 2, !tbaa !35
  %830 = sext i16 %829 to i32
  %831 = icmp sgt i32 %812, %830
  %832 = icmp slt i32 %816, %830
  %833 = or i1 %831, %832
  br i1 %833, label %834, label %847

834:                                              ; preds = %827, %818, %814, %803, %795
  %835 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %836 = load ptr, ptr %835, align 8, !tbaa !6
  %837 = getelementptr inbounds ptr, ptr %836, i64 %692
  %838 = load ptr, ptr %837, align 8, !tbaa !6
  %839 = sext i32 %702 to i64
  %840 = getelementptr inbounds i8, ptr %838, i64 %839
  store i8 -1, ptr %840, align 1, !tbaa !48
  %841 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %842 = getelementptr inbounds i8, ptr %841, i64 8
  %843 = load ptr, ptr %842, align 8, !tbaa !6
  %844 = getelementptr inbounds ptr, ptr %843, i64 %692
  %845 = load ptr, ptr %844, align 8, !tbaa !6
  %846 = getelementptr inbounds i8, ptr %845, i64 %839
  store i8 -1, ptr %846, align 1, !tbaa !48
  br label %863

847:                                              ; preds = %827, %790
  br i1 %679, label %848, label %850

848:                                              ; preds = %847
  %849 = sext i32 %702 to i64
  br label %863

850:                                              ; preds = %847
  %851 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %852 = getelementptr inbounds i8, ptr %851, i64 8
  %853 = load ptr, ptr %852, align 8, !tbaa !6
  %854 = getelementptr inbounds ptr, ptr %853, i64 %692
  %855 = load ptr, ptr %854, align 8, !tbaa !6
  %856 = sext i32 %702 to i64
  %857 = getelementptr inbounds i8, ptr %855, i64 %856
  store i8 0, ptr %857, align 1, !tbaa !48
  %858 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %859 = load ptr, ptr %858, align 8, !tbaa !6
  %860 = getelementptr inbounds ptr, ptr %859, i64 %692
  %861 = load ptr, ptr %860, align 8, !tbaa !6
  %862 = getelementptr inbounds i8, ptr %861, i64 %856
  store i8 0, ptr %862, align 1, !tbaa !48
  br label %863

863:                                              ; preds = %850, %848, %834
  %864 = phi i64 [ %839, %834 ], [ %849, %848 ], [ %856, %850 ]
  %865 = phi i16 [ -1, %834 ], [ 2, %848 ], [ 2, %850 ]
  %866 = load ptr, ptr @direct_pdir, align 8, !tbaa !6
  %867 = getelementptr inbounds ptr, ptr %866, i64 %692
  %868 = load ptr, ptr %867, align 8, !tbaa !6
  %869 = getelementptr inbounds i16, ptr %868, i64 %864
  store i16 %865, ptr %869, align 2, !tbaa !35
  %870 = add nuw nsw i64 %696, 1
  %871 = icmp eq i64 %870, 4
  br i1 %871, label %872, label %695

872:                                              ; preds = %863
  %873 = add nuw nsw i64 %681, 1
  %874 = icmp eq i64 %873, 4
  br i1 %874, label %875, label %680

875:                                              ; preds = %872
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #16
  br label %1071

876:                                              ; preds = %40
  %877 = getelementptr inbounds i8, ptr %7, i64 24
  %878 = sext i32 %21 to i64
  %879 = getelementptr inbounds [6 x [33 x i64]], ptr %877, i64 0, i64 %878
  br label %880

880:                                              ; preds = %876, %1068
  %881 = phi i64 [ 0, %876 ], [ %1069, %1068 ]
  %882 = load ptr, ptr @img, align 8, !tbaa !6
  %883 = getelementptr inbounds i8, ptr %882, i64 156
  %884 = load i32, ptr %883, align 4, !tbaa !61
  %885 = ashr i32 %884, 2
  %886 = trunc nuw nsw i64 %881 to i32
  %887 = add nsw i32 %885, %886
  %888 = getelementptr inbounds i8, ptr %882, i64 172
  %889 = load i32, ptr %888, align 4, !tbaa !39
  %890 = ashr i32 %889, 2
  %891 = add nsw i32 %890, %886
  %892 = sext i32 %891 to i64
  %893 = sext i32 %887 to i64
  br label %894

894:                                              ; preds = %880, %1052
  %895 = phi i64 [ 0, %880 ], [ %1066, %1052 ]
  %896 = load ptr, ptr @img, align 8, !tbaa !6
  %897 = getelementptr inbounds i8, ptr %896, i64 152
  %898 = load i32, ptr %897, align 8, !tbaa !62
  %899 = ashr i32 %898, 2
  %900 = trunc nuw nsw i64 %895 to i32
  %901 = add nsw i32 %899, %900
  %902 = getelementptr inbounds i8, ptr %896, i64 168
  %903 = load i32, ptr %902, align 8, !tbaa !38
  %904 = ashr i32 %903, 2
  %905 = add nsw i32 %904, %900
  %906 = getelementptr inbounds i8, ptr %896, i64 89336
  %907 = load ptr, ptr %906, align 8, !tbaa !60
  %908 = getelementptr inbounds ptr, ptr %907, i64 %881
  %909 = load ptr, ptr %908, align 8, !tbaa !6
  %910 = getelementptr inbounds ptr, ptr %909, i64 %895
  %911 = load ptr, ptr %910, align 8, !tbaa !6
  %912 = sext i32 %905 to i64
  %913 = getelementptr inbounds i8, ptr %896, i64 89408
  %914 = load i32, ptr %913, align 8, !tbaa !79
  %915 = load i32, ptr %20, align 4, !tbaa !22
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %916
  %918 = load i32, ptr %917, align 4, !tbaa !19
  %919 = tail call i32 @llvm.smin.i32(i32 %914, i32 %918)
  %920 = icmp sgt i32 %919, 0
  br i1 %920, label %921, label %1045

921:                                              ; preds = %894
  %922 = load ptr, ptr %44, align 8, !tbaa !6
  %923 = getelementptr inbounds ptr, ptr %922, i64 %892
  %924 = load ptr, ptr %923, align 8, !tbaa !6
  %925 = getelementptr inbounds i64, ptr %924, i64 %912
  %926 = load i64, ptr %925, align 8, !tbaa !80
  %927 = zext nneg i32 %919 to i64
  br label %928

928:                                              ; preds = %921, %933
  %929 = phi i64 [ 0, %921 ], [ %934, %933 ]
  %930 = getelementptr inbounds i64, ptr %879, i64 %929
  %931 = load i64, ptr %930, align 8, !tbaa !80
  %932 = icmp eq i64 %931, %926
  br i1 %932, label %936, label %933

933:                                              ; preds = %928
  %934 = add nuw nsw i64 %929, 1
  %935 = icmp eq i64 %934, %927
  br i1 %935, label %1045, label %928

936:                                              ; preds = %928
  %937 = getelementptr inbounds i8, ptr %896, i64 89424
  %938 = and i64 %929, 4294967295
  %939 = getelementptr inbounds [6 x [32 x i32]], ptr %937, i64 0, i64 %916, i64 %938
  %940 = load i32, ptr %939, align 4, !tbaa !19
  %941 = icmp eq i32 %940, 9999
  %942 = load ptr, ptr %45, align 8, !tbaa !6
  %943 = getelementptr inbounds ptr, ptr %942, i64 %892
  %944 = load ptr, ptr %943, align 8, !tbaa !6
  %945 = getelementptr inbounds ptr, ptr %944, i64 %912
  %946 = load ptr, ptr %945, align 8, !tbaa !6
  %947 = load i16, ptr %946, align 2, !tbaa !35
  br i1 %941, label %948, label %963

948:                                              ; preds = %936
  %949 = load ptr, ptr %911, align 8, !tbaa !6
  %950 = load ptr, ptr %949, align 8, !tbaa !6
  %951 = load ptr, ptr %950, align 8, !tbaa !6
  store i16 %947, ptr %951, align 2, !tbaa !35
  %952 = getelementptr inbounds i8, ptr %946, i64 2
  %953 = load i16, ptr %952, align 2, !tbaa !35
  %954 = getelementptr inbounds i8, ptr %951, i64 2
  store i16 %953, ptr %954, align 2, !tbaa !35
  %955 = getelementptr inbounds i8, ptr %911, i64 8
  %956 = load ptr, ptr %955, align 8, !tbaa !6
  %957 = load ptr, ptr %956, align 8, !tbaa !6
  %958 = load ptr, ptr %957, align 8, !tbaa !6
  store i16 0, ptr %958, align 2, !tbaa !35
  %959 = getelementptr inbounds i8, ptr %958, i64 2
  store i16 0, ptr %959, align 2, !tbaa !35
  %960 = getelementptr inbounds ptr, ptr %949, i64 %938
  %961 = load ptr, ptr %960, align 8, !tbaa !6
  %962 = load ptr, ptr %961, align 8, !tbaa !6
  br label %999

963:                                              ; preds = %936
  %964 = sext i16 %947 to i32
  %965 = mul nsw i32 %940, %964
  %966 = add nsw i32 %965, 128
  %967 = lshr i32 %966, 8
  %968 = trunc i32 %967 to i16
  %969 = load ptr, ptr %911, align 8, !tbaa !6
  %970 = getelementptr inbounds ptr, ptr %969, i64 %938
  %971 = load ptr, ptr %970, align 8, !tbaa !6
  %972 = load ptr, ptr %971, align 8, !tbaa !6
  store i16 %968, ptr %972, align 2, !tbaa !35
  %973 = getelementptr inbounds i8, ptr %946, i64 2
  %974 = load i16, ptr %973, align 2, !tbaa !35
  %975 = sext i16 %974 to i32
  %976 = mul nsw i32 %940, %975
  %977 = add nsw i32 %976, 128
  %978 = lshr i32 %977, 8
  %979 = trunc i32 %978 to i16
  %980 = getelementptr inbounds i8, ptr %972, i64 2
  store i16 %979, ptr %980, align 2, !tbaa !35
  %981 = add nsw i32 %940, -256
  %982 = load i16, ptr %946, align 2, !tbaa !35
  %983 = sext i16 %982 to i32
  %984 = mul nsw i32 %981, %983
  %985 = add nsw i32 %984, 128
  %986 = lshr i32 %985, 8
  %987 = trunc i32 %986 to i16
  %988 = getelementptr inbounds i8, ptr %911, i64 8
  %989 = load ptr, ptr %988, align 8, !tbaa !6
  %990 = load ptr, ptr %989, align 8, !tbaa !6
  %991 = load ptr, ptr %990, align 8, !tbaa !6
  store i16 %987, ptr %991, align 2, !tbaa !35
  %992 = load i16, ptr %973, align 2, !tbaa !35
  %993 = sext i16 %992 to i32
  %994 = mul nsw i32 %981, %993
  %995 = add nsw i32 %994, 128
  %996 = lshr i32 %995, 8
  %997 = trunc i32 %996 to i16
  %998 = getelementptr inbounds i8, ptr %991, i64 2
  store i16 %997, ptr %998, align 2, !tbaa !35
  br label %999

999:                                              ; preds = %963, %948
  %1000 = phi i32 [ %996, %963 ], [ 0, %948 ]
  %1001 = phi i16 [ %987, %963 ], [ 0, %948 ]
  %1002 = phi ptr [ %972, %963 ], [ %962, %948 ]
  %1003 = load i16, ptr %1002, align 2, !tbaa !35
  %1004 = add i16 %1003, -8192
  %1005 = icmp ult i16 %1004, -16384
  br i1 %1005, label %1030, label %1006

1006:                                             ; preds = %999
  %1007 = getelementptr inbounds i8, ptr %1002, i64 2
  %1008 = load i16, ptr %1007, align 2, !tbaa !35
  %1009 = sext i16 %1008 to i32
  %1010 = getelementptr inbounds i8, ptr %896, i64 8
  %1011 = load i32, ptr %1010, align 8, !tbaa !37
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds [17 x [6 x i32]], ptr @LEVELMVLIMIT, i64 0, i64 %1012
  %1014 = getelementptr inbounds i8, ptr %1013, i64 16
  %1015 = load i32, ptr %1014, align 4, !tbaa !19
  %1016 = icmp sgt i32 %1015, %1009
  br i1 %1016, label %1030, label %1017

1017:                                             ; preds = %1006
  %1018 = getelementptr inbounds i8, ptr %1013, i64 20
  %1019 = load i32, ptr %1018, align 4, !tbaa !19
  %1020 = icmp slt i32 %1019, %1009
  %1021 = add i16 %1001, -8192
  %1022 = icmp ult i16 %1021, -16384
  %1023 = select i1 %1020, i1 true, i1 %1022
  br i1 %1023, label %1030, label %1024

1024:                                             ; preds = %1017
  %1025 = shl i32 %1000, 16
  %1026 = ashr exact i32 %1025, 16
  %1027 = icmp sgt i32 %1015, %1026
  %1028 = icmp slt i32 %1019, %1026
  %1029 = or i1 %1027, %1028
  br i1 %1029, label %1030, label %1037

1030:                                             ; preds = %1024, %1017, %1006, %999
  %1031 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %1032 = load ptr, ptr %1031, align 8, !tbaa !6
  %1033 = getelementptr inbounds ptr, ptr %1032, i64 %893
  %1034 = load ptr, ptr %1033, align 8, !tbaa !6
  %1035 = sext i32 %901 to i64
  %1036 = getelementptr inbounds i8, ptr %1034, i64 %1035
  store i8 -1, ptr %1036, align 1, !tbaa !48
  br label %1052

1037:                                             ; preds = %1024
  %1038 = trunc i64 %929 to i8
  %1039 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %1040 = load ptr, ptr %1039, align 8, !tbaa !6
  %1041 = getelementptr inbounds ptr, ptr %1040, i64 %893
  %1042 = load ptr, ptr %1041, align 8, !tbaa !6
  %1043 = sext i32 %901 to i64
  %1044 = getelementptr inbounds i8, ptr %1042, i64 %1043
  store i8 %1038, ptr %1044, align 1, !tbaa !48
  br label %1052

1045:                                             ; preds = %933, %894
  %1046 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %1047 = load ptr, ptr %1046, align 8, !tbaa !6
  %1048 = getelementptr inbounds ptr, ptr %1047, i64 %893
  %1049 = load ptr, ptr %1048, align 8, !tbaa !6
  %1050 = sext i32 %901 to i64
  %1051 = getelementptr inbounds i8, ptr %1049, i64 %1050
  store i8 -1, ptr %1051, align 1, !tbaa !48
  br label %1052

1052:                                             ; preds = %1045, %1037, %1030
  %1053 = phi i64 [ %1050, %1045 ], [ %1043, %1037 ], [ %1035, %1030 ]
  %1054 = phi i8 [ -1, %1045 ], [ 0, %1037 ], [ -1, %1030 ]
  %1055 = phi i16 [ -1, %1045 ], [ 2, %1037 ], [ -1, %1030 ]
  %1056 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %1057 = getelementptr inbounds i8, ptr %1056, i64 8
  %1058 = load ptr, ptr %1057, align 8, !tbaa !6
  %1059 = getelementptr inbounds ptr, ptr %1058, i64 %893
  %1060 = load ptr, ptr %1059, align 8, !tbaa !6
  %1061 = getelementptr inbounds i8, ptr %1060, i64 %1053
  store i8 %1054, ptr %1061, align 1, !tbaa !48
  %1062 = load ptr, ptr @direct_pdir, align 8, !tbaa !6
  %1063 = getelementptr inbounds ptr, ptr %1062, i64 %893
  %1064 = load ptr, ptr %1063, align 8, !tbaa !6
  %1065 = getelementptr inbounds i16, ptr %1064, i64 %1053
  store i16 %1055, ptr %1065, align 2, !tbaa !35
  %1066 = add nuw nsw i64 %895, 1
  %1067 = icmp eq i64 %1066, 4
  br i1 %1067, label %1068, label %894

1068:                                             ; preds = %1052
  %1069 = add nuw nsw i64 %881, 1
  %1070 = icmp eq i64 %1069, 4
  br i1 %1070, label %1071, label %880

1071:                                             ; preds = %1068, %875
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local signext i32 @sign(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #13 {
  %3 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %4 = sub nsw i32 0, %3
  %5 = icmp slt i32 %1, 0
  %6 = select i1 %5, i32 %4, i32 %3
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0,1) }

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
!10 = !{!11, !12, i64 32}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !13, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!15, !12, i64 36}
!15 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !16, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !13, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !13, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !17, i64 90584, !12, i64 90588, !12, i64 90592}
!16 = !{!"float", !8, i64 0}
!17 = !{!"short", !8, i64 0}
!18 = !{!11, !12, i64 3108}
!19 = !{!12, !12, i64 0}
!20 = !{!15, !7, i64 31576}
!21 = !{!15, !12, i64 12}
!22 = !{!23, !12, i64 428}
!23 = !{!"macroblock", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !12, i64 364, !24, i64 368, !8, i64 376, !8, i64 392, !24, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !17, i64 476, !13, i64 480, !12, i64 488, !12, i64 492, !12, i64 496, !12, i64 500, !12, i64 504, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520}
!24 = !{!"long long", !8, i64 0}
!25 = !{!26, !12, i64 192}
!26 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232}
!27 = !{!15, !12, i64 24}
!28 = !{!26, !12, i64 196}
!29 = !{!11, !12, i64 1912}
!30 = !{!31, !12, i64 6392}
!31 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!32 = !{!31, !12, i64 6396}
!33 = !{!31, !7, i64 6480}
!34 = !{!31, !7, i64 6504}
!35 = !{!17, !17, i64 0}
!36 = !{!11, !12, i64 3136}
!37 = !{!15, !12, i64 8}
!38 = !{!15, !12, i64 168}
!39 = !{!15, !12, i64 172}
!40 = !{ptr @FastLine16Y_11, ptr @UMVLine16Y_11}
!41 = !{!11, !12, i64 3964}
!42 = !{!43, !12, i64 0}
!43 = !{!"pix_pos", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!44 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19}
!45 = !{!15, !12, i64 90220}
!46 = !{!43, !12, i64 20}
!47 = !{!43, !12, i64 16}
!48 = !{!8, !8, i64 0}
!49 = !{!23, !12, i64 424}
!50 = !{!43, !12, i64 4}
!51 = !{!15, !12, i64 90532}
!52 = !{!15, !12, i64 90536}
!53 = !{ptr @FastLineX, ptr @UMVLineX}
!54 = !{!11, !12, i64 24}
!55 = !{!11, !12, i64 3892}
!56 = !{ptr @FastLine4X, ptr @UMVLine4X}
!57 = !{!31, !7, i64 6432}
!58 = !{!31, !7, i64 6448}
!59 = !{!15, !7, i64 89328}
!60 = !{!15, !7, i64 89336}
!61 = !{!15, !12, i64 156}
!62 = !{!15, !12, i64 152}
!63 = !{!11, !12, i64 28}
!64 = !{!15, !12, i64 28}
!65 = !{!11, !12, i64 1264}
!66 = !{!11, !12, i64 1268}
!67 = !{!11, !12, i64 1272}
!68 = !{!11, !12, i64 1276}
!69 = !{!70, !71, i64 0}
!70 = !{!"timeb", !71, i64 0, !17, i64 8, !17, i64 10, !17, i64 12}
!71 = !{!"long", !8, i64 0}
!72 = !{!70, !17, i64 8}
!73 = !{!11, !12, i64 3012}
!74 = !{!11, !12, i64 3016}
!75 = !{!11, !12, i64 3020}
!76 = !{!15, !12, i64 148}
!77 = !{!15, !12, i64 144}
!78 = !{!15, !12, i64 89404}
!79 = !{!15, !12, i64 89408}
!80 = !{!24, !24, i64 0}
