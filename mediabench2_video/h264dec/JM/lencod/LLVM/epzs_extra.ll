; ModuleID = 'src/epzs.c'
source_filename = "src/epzs.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.SPoint = type { i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@c_EPZSPattern = dso_local constant [4 x [20 x i8]] [[20 x i8] c"Diamond\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Square\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Extended Diamond\00\00\00\00", [20 x i8] c"Large Diamond\00\00\00\00\00\00\00"], align 1
@c_EPZSDualPattern = dso_local constant [5 x [20 x i8]] [[20 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Diamond\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Square\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Extended Diamond\00\00\00\00", [20 x i8] c"Large Diamond\00\00\00\00\00\00\00"], align 1
@c_EPZSFixed = dso_local constant [3 x [20 x i8]] [[20 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"All P\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"All P + B\00\00\00\00\00\00\00\00\00\00\00"], align 1
@c_EPZSOther = dso_local constant [2 x [20 x i8]] [[20 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Enabled\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str = private unnamed_addr constant [23 x i8] c"alloc_EPZScolocated: s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"alloc_EPZSpattern: s\00", align 1
@img = external dso_local local_unnamed_addr global ptr, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@medthres = internal unnamed_addr global [8 x i32] zeroinitializer, align 4
@maxthres = internal unnamed_addr global [8 x i32] zeroinitializer, align 4
@minthres = internal unnamed_addr global [8 x i32] zeroinitializer, align 4
@subthres = internal unnamed_addr global [8 x i32] zeroinitializer, align 4
@sdiamond = dso_local local_unnamed_addr global ptr null, align 8
@square = dso_local local_unnamed_addr global ptr null, align 8
@ediamond = dso_local local_unnamed_addr global ptr null, align 8
@ldiamond = dso_local local_unnamed_addr global ptr null, align 8
@window_predictor = dso_local local_unnamed_addr global ptr null, align 8
@window_predictor_extended = dso_local local_unnamed_addr global ptr null, align 8
@predictor = dso_local local_unnamed_addr global ptr null, align 8
@EPZSDistortion = dso_local global ptr null, align 8
@EPZSMap = internal global ptr null, align 8
@EPZSMotion = dso_local global ptr null, align 8
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@EPZSCo_located = dso_local local_unnamed_addr global ptr null, align 8
@searchPattern = dso_local local_unnamed_addr global ptr null, align 8
@searchPatternD = dso_local local_unnamed_addr global ptr null, align 8
@listXsize = external dso_local local_unnamed_addr global [6 x i32], align 4
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@mv_scale = internal unnamed_addr global [6 x [32 x [32 x i32]]] zeroinitializer, align 4
@listX = external dso_local local_unnamed_addr global [6 x ptr], align 8
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@ref_pic = internal unnamed_addr global ptr null, align 8
@img_width = internal unnamed_addr global i16 0, align 2
@img_height = internal unnamed_addr global i16 0, align 2
@get_ref_line = internal unnamed_addr global ptr null, align 8
@mvbits = external dso_local local_unnamed_addr global ptr, align 8
@wp_offset = external dso_local local_unnamed_addr global ptr, align 8
@ref_pic1 = internal unnamed_addr global ptr null, align 8
@ref_pic2 = internal unnamed_addr global ptr null, align 8
@wbp_weight = external dso_local local_unnamed_addr global ptr, align 8
@luma_log_weight_denom = external dso_local local_unnamed_addr global i32, align 4
@weight1 = internal unnamed_addr global i16 0, align 2
@weight2 = internal unnamed_addr global i16 0, align 2
@offsetBi = internal unnamed_addr global i16 0, align 2
@computeBiPredSad = internal unnamed_addr global ptr null, align 8
@get_ref_line2 = internal unnamed_addr global ptr null, align 8
@get_ref_line1 = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c" EPZS Pattern                 : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" EPZS Dual Pattern            : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c" EPZS Fixed Predictors        : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" EPZS Temporal Predictors     : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c" EPZS Spatial Predictors      : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c" EPZS Thresholds (16x16)      : (%d %d %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c" EPZS Subpel ME               : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c" EPZS Pattern                      : %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c" EPZS Dual Pattern                 : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c" EPZS Fixed Predictors             : %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c" EPZS Temporal Predictors          : %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c" EPZS Spatial Predictors           : %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c" EPZS Thresholds (16x16)           : (%d %d %d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c" EPZS Subpel ME                    : %s\0A\00", align 1
@get_line = internal unnamed_addr global ptr null, align 8
@search_point_hp_x = internal unnamed_addr constant [10 x i32] [i32 0, i32 -2, i32 0, i32 2, i32 0, i32 -2, i32 2, i32 2, i32 -2, i32 -2], align 4
@search_point_hp_y = internal unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 2, i32 0, i32 -2, i32 2, i32 2, i32 -2, i32 -2, i32 2], align 4
@search_point_qp_x = internal unnamed_addr constant [10 x i32] [i32 0, i32 -1, i32 0, i32 1, i32 0, i32 -1, i32 1, i32 1, i32 -1, i32 -1], align 4
@search_point_qp_y = internal unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 1, i32 0, i32 -1, i32 1, i32 1, i32 -1, i32 -1, i32 1], align 4
@pattern_data = internal unnamed_addr constant <{ <{ [4 x i32], [4 x i32], [4 x i32], [4 x i32], [8 x [4 x i32]] }>, [12 x [4 x i32]], [12 x [4 x i32]], [12 x [4 x i32]] }> <{ <{ [4 x i32], [4 x i32], [4 x i32], [4 x i32], [8 x [4 x i32]] }> <{ [4 x i32] [i32 0, i32 1, i32 3, i32 3], [4 x i32] [i32 1, i32 0, i32 0, i32 3], [4 x i32] [i32 0, i32 -1, i32 1, i32 3], [4 x i32] [i32 -1, i32 0, i32 2, i32 3], [8 x [4 x i32]] zeroinitializer }>, [12 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 7, i32 3], [4 x i32] [i32 1, i32 1, i32 7, i32 5], [4 x i32] [i32 1, i32 0, i32 1, i32 3], [4 x i32] [i32 1, i32 -1, i32 1, i32 5], [4 x i32] [i32 0, i32 -1, i32 3, i32 3], [4 x i32] [i32 -1, i32 -1, i32 3, i32 5], [4 x i32] [i32 -1, i32 0, i32 5, i32 3], [4 x i32] [i32 -1, i32 1, i32 5, i32 5], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [12 x [4 x i32]] [[4 x i32] [i32 -1, i32 1, i32 10, i32 5], [4 x i32] [i32 0, i32 2, i32 10, i32 8], [4 x i32] [i32 0, i32 1, i32 10, i32 7], [4 x i32] [i32 1, i32 1, i32 1, i32 5], [4 x i32] [i32 2, i32 0, i32 1, i32 8], [4 x i32] [i32 1, i32 0, i32 1, i32 7], [4 x i32] [i32 1, i32 -1, i32 4, i32 5], [4 x i32] [i32 0, i32 -2, i32 4, i32 8], [4 x i32] [i32 0, i32 -1, i32 4, i32 7], [4 x i32] [i32 -1, i32 -1, i32 7, i32 5], [4 x i32] [i32 -2, i32 0, i32 7, i32 8], [4 x i32] [i32 -1, i32 0, i32 7, i32 7]], [12 x [4 x i32]] [[4 x i32] [i32 0, i32 2, i32 6, i32 5], [4 x i32] [i32 1, i32 1, i32 0, i32 3], [4 x i32] [i32 2, i32 0, i32 0, i32 5], [4 x i32] [i32 1, i32 -1, i32 2, i32 3], [4 x i32] [i32 0, i32 -2, i32 2, i32 5], [4 x i32] [i32 -1, i32 -1, i32 4, i32 3], [4 x i32] [i32 -2, i32 0, i32 4, i32 5], [4 x i32] [i32 -1, i32 1, i32 6, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer] }>, align 4
@byte_abs = external dso_local local_unnamed_addr global ptr, align 8
@blk_parent = internal unnamed_addr constant [8 x i16] [i16 1, i16 1, i16 1, i16 1, i16 2, i16 4, i16 4, i16 5], align 2
@wp_luma_round = external dso_local local_unnamed_addr global i32, align 4
@switch.table.EPZSInit.17 = private unnamed_addr constant [3 x ptr] [ptr @square, ptr @ediamond, ptr @ldiamond], align 8
@switch.table.EPZSSubPelBlockMotionSearch.19 = private unnamed_addr constant [7 x i32] [i32 6, i32 6, i32 5, i32 6, i32 8, i32 6, i32 7], align 4
@switch.table.EPZSSubPelBlockMotionSearch.20 = private unnamed_addr constant [7 x i32] [i32 7, i32 7, i32 6, i32 7, i32 9, i32 7, i32 8], align 4

; Function Attrs: nounwind
define dso_local noundef ptr @allocEPZScolocated(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #15
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %0, ptr %8, align 4, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %1, ptr %9, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, ptr %4, i64 16
  %11 = sdiv i32 %1, 4
  %12 = sdiv i32 %0, 4
  %13 = tail call signext i32 @get_mem4Dshort(ptr noundef nonnull %10, i32 noundef signext 2, i32 noundef signext %11, i32 noundef signext %12, i32 noundef signext 2) #15
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds i8, ptr %4, i64 24
  %17 = sdiv i32 %1, 8
  %18 = tail call signext i32 @get_mem4Dshort(ptr noundef nonnull %16, i32 noundef signext 2, i32 noundef signext %17, i32 noundef signext %12, i32 noundef signext 2) #15
  %19 = getelementptr inbounds i8, ptr %4, i64 32
  %20 = tail call signext i32 @get_mem4Dshort(ptr noundef nonnull %19, i32 noundef signext 2, i32 noundef signext %17, i32 noundef signext %12, i32 noundef signext 2) #15
  br label %21

21:                                               ; preds = %15, %7
  store i32 %2, ptr %4, align 8, !tbaa !13
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @get_mem4Dshort(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @freeEPZScolocated(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !12
  %8 = sdiv i32 %7, 4
  tail call void @free_mem4Dshort(ptr noundef %5, i32 noundef signext 2, i32 noundef signext %8) #15
  %9 = load i32, ptr %0, align 8, !tbaa !13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %0, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load i32, ptr %6, align 8, !tbaa !12
  %15 = sdiv i32 %14, 8
  tail call void @free_mem4Dshort(ptr noundef %13, i32 noundef signext 2, i32 noundef signext %15) #15
  %16 = getelementptr inbounds i8, ptr %0, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = load i32, ptr %6, align 8, !tbaa !12
  %19 = sdiv i32 %18, 8
  tail call void @free_mem4Dshort(ptr noundef %17, i32 noundef signext 2, i32 noundef signext %19) #15
  br label %20

20:                                               ; preds = %11, %3
  tail call void @free(ptr noundef nonnull %0) #15
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

declare dso_local void @free_mem4Dshort(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local noalias noundef ptr @allocEPZSpattern(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #15
  br label %5

5:                                                ; preds = %4, %1
  store i32 %0, ptr %2, align 8, !tbaa !17
  %6 = sext i32 %0 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 16) #14
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %7, ptr %8, align 8, !tbaa !19
  ret ptr %2
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @freeEPZSpattern(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  tail call void @free(ptr noundef %5) #15
  tail call void @free(ptr noundef nonnull %0) #15
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local void @assignEPZSpattern(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !17
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %24, %10 ]
  %12 = getelementptr inbounds [4 x [12 x [4 x i32]]], ptr @pattern_data, i64 0, i64 %6, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !20
  %14 = getelementptr inbounds %struct.SPoint, ptr %8, i64 %11
  store i32 %13, ptr %14, align 4, !tbaa !21
  %15 = getelementptr inbounds i8, ptr %12, i64 4
  %16 = load i32, ptr %15, align 4, !tbaa !20
  %17 = getelementptr inbounds %struct.SPoint, ptr %8, i64 %11, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !23
  %18 = getelementptr inbounds i8, ptr %12, i64 8
  %19 = load i32, ptr %18, align 4, !tbaa !20
  %20 = getelementptr inbounds %struct.SPoint, ptr %8, i64 %11, i32 2
  store i32 %19, ptr %20, align 4, !tbaa !24
  %21 = getelementptr inbounds i8, ptr %12, i64 12
  %22 = load i32, ptr %21, align 4, !tbaa !20
  %23 = getelementptr inbounds %struct.SPoint, ptr %8, i64 %11, i32 3
  store i32 %22, ptr %23, align 4, !tbaa !25
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %26, label %10

26:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local void @EPZSWindowPredictorInit(i16 noundef signext %0, ptr nocapture noundef %1, i16 noundef signext %2) local_unnamed_addr #6 {
  %4 = icmp eq i16 %2, 0
  %5 = sext i16 %0 to i32
  %6 = mul nsw i32 %5, %5
  br i1 %4, label %7, label %53

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %9 = add nuw nsw i32 %8, 1
  %10 = shl nuw i32 2, %8
  %11 = icmp sgt i32 %10, %6
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  %13 = icmp ugt i32 %8, 2
  br i1 %13, label %14, label %145

14:                                               ; preds = %12
  %15 = lshr i32 %9, 1
  %16 = add nsw i32 %15, -2
  %17 = getelementptr inbounds i8, ptr %1, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  br label %19

19:                                               ; preds = %14, %19
  %20 = phi i64 [ 0, %14 ], [ %49, %19 ]
  %21 = phi i32 [ %16, %14 ], [ %51, %19 ]
  %22 = ashr i32 %5, %21
  %23 = shl i64 %20, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %24
  store i32 %22, ptr %25, align 4, !tbaa !21
  %26 = add nsw i64 %24, 1
  %27 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %24, i32 1
  store i32 0, ptr %27, align 4, !tbaa !23
  %28 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %26
  store i32 %22, ptr %28, align 4, !tbaa !21
  %29 = add nsw i64 %24, 2
  %30 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %26, i32 1
  store i32 %22, ptr %30, align 4, !tbaa !23
  %31 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %29
  store i32 0, ptr %31, align 4, !tbaa !21
  %32 = add nsw i64 %24, 3
  %33 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %29, i32 1
  store i32 %22, ptr %33, align 4, !tbaa !23
  %34 = sub nsw i32 0, %22
  %35 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %32
  store i32 %34, ptr %35, align 4, !tbaa !21
  %36 = add nsw i64 %24, 4
  %37 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %32, i32 1
  store i32 %22, ptr %37, align 4, !tbaa !23
  %38 = sub nsw i32 0, %22
  %39 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %36
  store i32 %38, ptr %39, align 4, !tbaa !21
  %40 = add nsw i64 %24, 5
  %41 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %36, i32 1
  store i32 0, ptr %41, align 4, !tbaa !23
  %42 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %40
  store i32 %38, ptr %42, align 4, !tbaa !21
  %43 = add nsw i64 %24, 6
  %44 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %40, i32 1
  store i32 %38, ptr %44, align 4, !tbaa !23
  %45 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %43
  store i32 0, ptr %45, align 4, !tbaa !21
  %46 = add nsw i64 %24, 7
  %47 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %43, i32 1
  store i32 %38, ptr %47, align 4, !tbaa !23
  %48 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %46
  store i32 %22, ptr %48, align 4, !tbaa !21
  %49 = add nsw i64 %24, 8
  %50 = getelementptr inbounds %struct.SPoint, ptr %18, i64 %46, i32 1
  store i32 %38, ptr %50, align 4, !tbaa !23
  %51 = add nsw i32 %21, -1
  %52 = icmp eq i32 %21, 0
  br i1 %52, label %141, label %19

53:                                               ; preds = %3, %53
  %54 = phi i32 [ %55, %53 ], [ 0, %3 ]
  %55 = add nuw nsw i32 %54, 1
  %56 = shl nuw i32 2, %54
  %57 = icmp sgt i32 %56, %6
  br i1 %57, label %58, label %53

58:                                               ; preds = %53
  %59 = icmp ugt i32 %54, 2
  br i1 %59, label %60, label %145

60:                                               ; preds = %58
  %61 = lshr i32 %55, 1
  %62 = add nsw i32 %61, -2
  %63 = getelementptr inbounds i8, ptr %1, i64 8
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  br label %65

65:                                               ; preds = %60, %65
  %66 = phi i64 [ 0, %60 ], [ %137, %65 ]
  %67 = phi i32 [ %62, %60 ], [ %139, %65 ]
  %68 = ashr i32 %5, %67
  %69 = mul nsw i32 %68, 3
  %70 = add nsw i32 %69, 1
  %71 = shl i64 %66, 32
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %72
  store i32 %68, ptr %73, align 4, !tbaa !21
  %74 = add nsw i64 %72, 1
  %75 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %72, i32 1
  store i32 0, ptr %75, align 4, !tbaa !23
  %76 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %74
  store i32 %68, ptr %76, align 4, !tbaa !21
  %77 = add nsw i64 %72, 2
  %78 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %74, i32 1
  store i32 %68, ptr %78, align 4, !tbaa !23
  %79 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %77
  store i32 0, ptr %79, align 4, !tbaa !21
  %80 = add nsw i64 %72, 3
  %81 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %77, i32 1
  store i32 %68, ptr %81, align 4, !tbaa !23
  %82 = sub nsw i32 0, %68
  %83 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %80
  store i32 %82, ptr %83, align 4, !tbaa !21
  %84 = add nsw i64 %72, 4
  %85 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %80, i32 1
  store i32 %68, ptr %85, align 4, !tbaa !23
  %86 = sub nsw i32 0, %68
  %87 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %84
  store i32 %86, ptr %87, align 4, !tbaa !21
  %88 = add nsw i64 %72, 5
  %89 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %84, i32 1
  store i32 0, ptr %89, align 4, !tbaa !23
  %90 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %88
  store i32 %86, ptr %90, align 4, !tbaa !21
  %91 = add nsw i64 %72, 6
  %92 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %88, i32 1
  store i32 %86, ptr %92, align 4, !tbaa !23
  %93 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %91
  store i32 0, ptr %93, align 4, !tbaa !21
  %94 = add nsw i64 %72, 7
  %95 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %91, i32 1
  store i32 %86, ptr %95, align 4, !tbaa !23
  %96 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %94
  store i32 %68, ptr %96, align 4, !tbaa !21
  %97 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %94, i32 1
  store i32 %86, ptr %97, align 4, !tbaa !23
  %98 = ashr i32 %70, 1
  %99 = shl i64 %66, 32
  %100 = add i64 %99, 34359738368
  %101 = ashr exact i64 %100, 32
  %102 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %101
  store i32 %98, ptr %102, align 4, !tbaa !21
  %103 = add nsw i64 %101, 1
  %104 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %101, i32 1
  store i32 %82, ptr %104, align 4, !tbaa !23
  %105 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %103
  store i32 %98, ptr %105, align 4, !tbaa !21
  %106 = add nsw i64 %101, 2
  %107 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %103, i32 1
  store i32 0, ptr %107, align 4, !tbaa !23
  %108 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %106
  store i32 %98, ptr %108, align 4, !tbaa !21
  %109 = add nsw i64 %101, 3
  %110 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %106, i32 1
  store i32 %68, ptr %110, align 4, !tbaa !23
  %111 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %109
  store i32 %68, ptr %111, align 4, !tbaa !21
  %112 = add nsw i64 %101, 4
  %113 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %109, i32 1
  store i32 %98, ptr %113, align 4, !tbaa !23
  %114 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %112
  store i32 0, ptr %114, align 4, !tbaa !21
  %115 = add nsw i64 %101, 5
  %116 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %112, i32 1
  store i32 %98, ptr %116, align 4, !tbaa !23
  %117 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %115
  store i32 %82, ptr %117, align 4, !tbaa !21
  %118 = add nsw i64 %101, 6
  %119 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %115, i32 1
  store i32 %98, ptr %119, align 4, !tbaa !23
  %120 = sub nsw i32 0, %98
  %121 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %118
  store i32 %120, ptr %121, align 4, !tbaa !21
  %122 = add nsw i64 %101, 7
  %123 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %118, i32 1
  store i32 %68, ptr %123, align 4, !tbaa !23
  %124 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %122
  store i32 %120, ptr %124, align 4, !tbaa !21
  %125 = add nsw i64 %101, 8
  %126 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %122, i32 1
  store i32 0, ptr %126, align 4, !tbaa !23
  %127 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %125
  store i32 %120, ptr %127, align 4, !tbaa !21
  %128 = add nsw i64 %101, 9
  %129 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %125, i32 1
  store i32 %86, ptr %129, align 4, !tbaa !23
  %130 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %128
  store i32 %86, ptr %130, align 4, !tbaa !21
  %131 = add nsw i64 %101, 10
  %132 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %128, i32 1
  store i32 %120, ptr %132, align 4, !tbaa !23
  %133 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %131
  store i32 0, ptr %133, align 4, !tbaa !21
  %134 = add nsw i64 %101, 11
  %135 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %131, i32 1
  store i32 %120, ptr %135, align 4, !tbaa !23
  %136 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %134
  store i32 %68, ptr %136, align 4, !tbaa !21
  %137 = add nsw i64 %101, 12
  %138 = getelementptr inbounds %struct.SPoint, ptr %64, i64 %134, i32 1
  store i32 %120, ptr %138, align 4, !tbaa !23
  %139 = add nsw i32 %67, -1
  %140 = icmp eq i32 %67, 0
  br i1 %140, label %143, label %65

141:                                              ; preds = %19
  %142 = trunc nsw i64 %49 to i32
  br label %145

143:                                              ; preds = %65
  %144 = trunc nsw i64 %137 to i32
  br label %145

145:                                              ; preds = %143, %141, %58, %12
  %146 = phi i32 [ 0, %12 ], [ 0, %58 ], [ %142, %141 ], [ %144, %143 ]
  store i32 %146, ptr %1, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @EPZSInit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !26
  %2 = getelementptr inbounds i8, ptr %1, i64 90484
  %3 = load i32, ptr %2, align 4, !tbaa !27
  %4 = add nsw i32 %3, -8
  %5 = load ptr, ptr @input, align 8, !tbaa !26
  %6 = getelementptr inbounds i8, ptr %5, i64 1264
  %7 = load i32, ptr %6, align 8, !tbaa !32
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds i8, ptr %5, i64 32
  %10 = load i32, ptr %9, align 8, !tbaa !34
  br i1 %8, label %15, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds i8, ptr %5, i64 1272
  %13 = load i32, ptr %12, align 8, !tbaa !35
  %14 = tail call i32 @llvm.smax.i32(i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %0, %11
  %16 = phi i32 [ %14, %11 ], [ %10, %0 ]
  %17 = shl nsw i32 %16, 1
  %18 = mul nsw i32 %10, %10
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i32 [ 0, %15 ], [ %21, %19 ]
  %21 = add nuw nsw i32 %20, 1
  %22 = shl nuw i32 2, %20
  %23 = icmp sgt i32 %22, %18
  br i1 %23, label %24, label %19

24:                                               ; preds = %19
  %25 = lshr i32 %21, 1
  %26 = getelementptr inbounds i8, ptr %5, i64 3092
  %27 = load i32, ptr %26, align 4, !tbaa !36
  %28 = getelementptr inbounds i8, ptr %5, i64 3088
  %29 = load i32, ptr %28, align 8, !tbaa !37
  %30 = getelementptr inbounds i8, ptr %5, i64 3084
  %31 = load i32, ptr %30, align 4, !tbaa !38
  %32 = getelementptr inbounds i8, ptr %5, i64 3100
  %33 = load i32, ptr %32, align 4, !tbaa !39
  store i32 0, ptr @medthres, align 4, !tbaa !20
  store i32 0, ptr @maxthres, align 4, !tbaa !20
  store i32 0, ptr @minthres, align 4, !tbaa !20
  store i32 0, ptr @subthres, align 4, !tbaa !20
  %34 = shl nsw i32 %27, 8
  %35 = shl i32 %34, %4
  store i32 %35, ptr getelementptr inbounds (i8, ptr @medthres, i64 4), align 4, !tbaa !20
  %36 = mul nsw i32 %29, 768
  %37 = shl i32 %36, %4
  store i32 %37, ptr getelementptr inbounds (i8, ptr @maxthres, i64 4), align 4, !tbaa !20
  %38 = shl nsw i32 %31, 6
  %39 = shl i32 %38, %4
  store i32 %39, ptr getelementptr inbounds (i8, ptr @minthres, i64 4), align 4, !tbaa !20
  %40 = shl nsw i32 %33, 8
  %41 = shl i32 %40, %4
  store i32 %41, ptr getelementptr inbounds (i8, ptr @subthres, i64 4), align 4, !tbaa !20
  %42 = shl nsw i32 %27, 7
  %43 = shl i32 %42, %4
  store i32 %43, ptr getelementptr inbounds (i8, ptr @medthres, i64 8), align 4, !tbaa !20
  %44 = mul nsw i32 %29, 384
  %45 = shl i32 %44, %4
  store i32 %45, ptr getelementptr inbounds (i8, ptr @maxthres, i64 8), align 4, !tbaa !20
  %46 = shl nsw i32 %31, 5
  %47 = shl i32 %46, %4
  store i32 %47, ptr getelementptr inbounds (i8, ptr @minthres, i64 8), align 4, !tbaa !20
  %48 = shl nsw i32 %33, 7
  %49 = shl i32 %48, %4
  store i32 %49, ptr getelementptr inbounds (i8, ptr @subthres, i64 8), align 4, !tbaa !20
  store i32 %43, ptr getelementptr inbounds (i8, ptr @medthres, i64 12), align 4, !tbaa !20
  store i32 %45, ptr getelementptr inbounds (i8, ptr @maxthres, i64 12), align 4, !tbaa !20
  store i32 %47, ptr getelementptr inbounds (i8, ptr @minthres, i64 12), align 4, !tbaa !20
  store i32 %49, ptr getelementptr inbounds (i8, ptr @subthres, i64 12), align 4, !tbaa !20
  %50 = shl nsw i32 %27, 6
  %51 = shl i32 %50, %4
  store i32 %51, ptr getelementptr inbounds (i8, ptr @medthres, i64 16), align 4, !tbaa !20
  %52 = mul nsw i32 %29, 192
  %53 = shl i32 %52, %4
  store i32 %53, ptr getelementptr inbounds (i8, ptr @maxthres, i64 16), align 4, !tbaa !20
  %54 = shl nsw i32 %31, 4
  %55 = shl i32 %54, %4
  store i32 %55, ptr getelementptr inbounds (i8, ptr @minthres, i64 16), align 4, !tbaa !20
  %56 = shl nsw i32 %33, 6
  %57 = shl i32 %56, %4
  store i32 %57, ptr getelementptr inbounds (i8, ptr @subthres, i64 16), align 4, !tbaa !20
  %58 = shl nsw i32 %27, 5
  %59 = shl i32 %58, %4
  store i32 %59, ptr getelementptr inbounds (i8, ptr @medthres, i64 20), align 4, !tbaa !20
  %60 = mul nsw i32 %29, 96
  %61 = shl i32 %60, %4
  store i32 %61, ptr getelementptr inbounds (i8, ptr @maxthres, i64 20), align 4, !tbaa !20
  %62 = shl nsw i32 %31, 3
  %63 = shl i32 %62, %4
  store i32 %63, ptr getelementptr inbounds (i8, ptr @minthres, i64 20), align 4, !tbaa !20
  %64 = shl nsw i32 %33, 5
  %65 = shl i32 %64, %4
  store i32 %65, ptr getelementptr inbounds (i8, ptr @subthres, i64 20), align 4, !tbaa !20
  store i32 %59, ptr getelementptr inbounds (i8, ptr @medthres, i64 24), align 4, !tbaa !20
  store i32 %61, ptr getelementptr inbounds (i8, ptr @maxthres, i64 24), align 4, !tbaa !20
  store i32 %63, ptr getelementptr inbounds (i8, ptr @minthres, i64 24), align 4, !tbaa !20
  store i32 %65, ptr getelementptr inbounds (i8, ptr @subthres, i64 24), align 4, !tbaa !20
  %66 = shl nsw i32 %27, 4
  %67 = shl i32 %66, %4
  store i32 %67, ptr getelementptr inbounds (i8, ptr @medthres, i64 28), align 4, !tbaa !20
  %68 = mul nsw i32 %29, 48
  %69 = shl i32 %68, %4
  store i32 %69, ptr getelementptr inbounds (i8, ptr @maxthres, i64 28), align 4, !tbaa !20
  %70 = shl nsw i32 %31, 2
  %71 = shl i32 %70, %4
  store i32 %71, ptr getelementptr inbounds (i8, ptr @minthres, i64 28), align 4, !tbaa !20
  %72 = shl nsw i32 %33, 4
  %73 = shl i32 %72, %4
  store i32 %73, ptr getelementptr inbounds (i8, ptr @subthres, i64 28), align 4, !tbaa !20
  %74 = or disjoint i32 %17, 1
  %75 = add nsw i32 %25, -1
  %76 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %24
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #15
  br label %79

79:                                               ; preds = %78, %24
  store i32 4, ptr %76, align 8, !tbaa !17
  %80 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #14
  %81 = getelementptr inbounds i8, ptr %76, i64 8
  store ptr %80, ptr %81, align 8, !tbaa !19
  store ptr %76, ptr @sdiamond, align 8, !tbaa !26
  %82 = getelementptr inbounds i8, ptr %80, i64 4
  store i32 1, ptr %82, align 4, !tbaa !23
  %83 = getelementptr inbounds i8, ptr %80, i64 8
  store i32 3, ptr %83, align 4, !tbaa !24
  %84 = getelementptr inbounds i8, ptr %80, i64 12
  store i32 3, ptr %84, align 4, !tbaa !25
  %85 = getelementptr inbounds i8, ptr %80, i64 16
  store i32 1, ptr %85, align 4, !tbaa !21
  %86 = getelementptr inbounds i8, ptr %80, i64 28
  store i32 3, ptr %86, align 4, !tbaa !25
  %87 = getelementptr inbounds i8, ptr %80, i64 36
  store i32 -1, ptr %87, align 4, !tbaa !23
  %88 = getelementptr inbounds i8, ptr %80, i64 40
  store i32 1, ptr %88, align 4, !tbaa !24
  %89 = getelementptr inbounds i8, ptr %80, i64 44
  store i32 3, ptr %89, align 4, !tbaa !25
  %90 = getelementptr inbounds i8, ptr %80, i64 48
  store i32 -1, ptr %90, align 4, !tbaa !21
  %91 = getelementptr inbounds i8, ptr %80, i64 56
  store i32 2, ptr %91, align 4, !tbaa !24
  %92 = getelementptr inbounds i8, ptr %80, i64 60
  store i32 3, ptr %92, align 4, !tbaa !25
  %93 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %79
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #15
  br label %96

96:                                               ; preds = %95, %79
  store i32 8, ptr %93, align 8, !tbaa !17
  %97 = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 8, i64 noundef 16) #14
  %98 = getelementptr inbounds i8, ptr %93, i64 8
  store ptr %97, ptr %98, align 8, !tbaa !19
  store ptr %93, ptr @square, align 8, !tbaa !26
  store i32 0, ptr %97, align 4, !tbaa !21
  %99 = getelementptr inbounds i8, ptr %97, i64 4
  store i32 1, ptr %99, align 4, !tbaa !23
  %100 = getelementptr inbounds i8, ptr %97, i64 8
  store i32 7, ptr %100, align 4, !tbaa !24
  %101 = getelementptr inbounds i8, ptr %97, i64 12
  store i32 3, ptr %101, align 4, !tbaa !25
  %102 = getelementptr inbounds i8, ptr %97, i64 16
  store i32 1, ptr %102, align 4, !tbaa !21
  %103 = getelementptr inbounds i8, ptr %97, i64 20
  store i32 1, ptr %103, align 4, !tbaa !23
  %104 = getelementptr inbounds i8, ptr %97, i64 24
  store i32 7, ptr %104, align 4, !tbaa !24
  %105 = getelementptr inbounds i8, ptr %97, i64 28
  store i32 5, ptr %105, align 4, !tbaa !25
  %106 = getelementptr inbounds i8, ptr %97, i64 32
  store i32 1, ptr %106, align 4, !tbaa !21
  %107 = getelementptr inbounds i8, ptr %97, i64 36
  store i32 0, ptr %107, align 4, !tbaa !23
  %108 = getelementptr inbounds i8, ptr %97, i64 40
  store i32 1, ptr %108, align 4, !tbaa !24
  %109 = getelementptr inbounds i8, ptr %97, i64 44
  store i32 3, ptr %109, align 4, !tbaa !25
  %110 = getelementptr inbounds i8, ptr %97, i64 48
  store i32 1, ptr %110, align 4, !tbaa !21
  %111 = getelementptr inbounds i8, ptr %97, i64 52
  store i32 -1, ptr %111, align 4, !tbaa !23
  %112 = getelementptr inbounds i8, ptr %97, i64 56
  store i32 1, ptr %112, align 4, !tbaa !24
  %113 = getelementptr inbounds i8, ptr %97, i64 60
  store i32 5, ptr %113, align 4, !tbaa !25
  %114 = getelementptr inbounds i8, ptr %97, i64 64
  store i32 0, ptr %114, align 4, !tbaa !21
  %115 = getelementptr inbounds i8, ptr %97, i64 68
  store i32 -1, ptr %115, align 4, !tbaa !23
  %116 = getelementptr inbounds i8, ptr %97, i64 72
  store i32 3, ptr %116, align 4, !tbaa !24
  %117 = getelementptr inbounds i8, ptr %97, i64 76
  store i32 3, ptr %117, align 4, !tbaa !25
  %118 = getelementptr inbounds i8, ptr %97, i64 80
  store i32 -1, ptr %118, align 4, !tbaa !21
  %119 = getelementptr inbounds i8, ptr %97, i64 84
  store i32 -1, ptr %119, align 4, !tbaa !23
  %120 = getelementptr inbounds i8, ptr %97, i64 88
  store i32 3, ptr %120, align 4, !tbaa !24
  %121 = getelementptr inbounds i8, ptr %97, i64 92
  store i32 5, ptr %121, align 4, !tbaa !25
  %122 = getelementptr inbounds i8, ptr %97, i64 96
  store i32 -1, ptr %122, align 4, !tbaa !21
  %123 = getelementptr inbounds i8, ptr %97, i64 100
  store i32 0, ptr %123, align 4, !tbaa !23
  %124 = getelementptr inbounds i8, ptr %97, i64 104
  store i32 5, ptr %124, align 4, !tbaa !24
  %125 = getelementptr inbounds i8, ptr %97, i64 108
  store i32 3, ptr %125, align 4, !tbaa !25
  %126 = getelementptr inbounds i8, ptr %97, i64 112
  store i32 -1, ptr %126, align 4, !tbaa !21
  %127 = getelementptr inbounds i8, ptr %97, i64 116
  store i32 1, ptr %127, align 4, !tbaa !23
  %128 = getelementptr inbounds i8, ptr %97, i64 120
  store i32 5, ptr %128, align 4, !tbaa !24
  %129 = getelementptr inbounds i8, ptr %97, i64 124
  store i32 5, ptr %129, align 4, !tbaa !25
  %130 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %96
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #15
  br label %133

133:                                              ; preds = %132, %96
  store i32 12, ptr %130, align 8, !tbaa !17
  %134 = tail call noalias dereferenceable_or_null(192) ptr @calloc(i64 noundef 12, i64 noundef 16) #14
  %135 = getelementptr inbounds i8, ptr %130, i64 8
  store ptr %134, ptr %135, align 8, !tbaa !19
  store ptr %130, ptr @ediamond, align 8, !tbaa !26
  br label %136

136:                                              ; preds = %136, %133
  %137 = phi i64 [ 0, %133 ], [ %150, %136 ]
  %138 = getelementptr inbounds [4 x [12 x [4 x i32]]], ptr @pattern_data, i64 0, i64 2, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !20
  %140 = getelementptr inbounds %struct.SPoint, ptr %134, i64 %137
  store i32 %139, ptr %140, align 4, !tbaa !21
  %141 = getelementptr inbounds i8, ptr %138, i64 4
  %142 = load i32, ptr %141, align 4, !tbaa !20
  %143 = getelementptr inbounds %struct.SPoint, ptr %134, i64 %137, i32 1
  store i32 %142, ptr %143, align 4, !tbaa !23
  %144 = getelementptr inbounds i8, ptr %138, i64 8
  %145 = load i32, ptr %144, align 4, !tbaa !20
  %146 = getelementptr inbounds %struct.SPoint, ptr %134, i64 %137, i32 2
  store i32 %145, ptr %146, align 4, !tbaa !24
  %147 = getelementptr inbounds i8, ptr %138, i64 12
  %148 = load i32, ptr %147, align 4, !tbaa !20
  %149 = getelementptr inbounds %struct.SPoint, ptr %134, i64 %137, i32 3
  store i32 %148, ptr %149, align 4, !tbaa !25
  %150 = add nuw nsw i64 %137, 1
  %151 = icmp eq i64 %150, 12
  br i1 %151, label %152, label %136

152:                                              ; preds = %136
  %153 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #15
  br label %156

156:                                              ; preds = %155, %152
  store i32 8, ptr %153, align 8, !tbaa !17
  %157 = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 8, i64 noundef 16) #14
  %158 = getelementptr inbounds i8, ptr %153, i64 8
  store ptr %157, ptr %158, align 8, !tbaa !19
  store ptr %153, ptr @ldiamond, align 8, !tbaa !26
  store i32 0, ptr %157, align 4, !tbaa !21
  %159 = getelementptr inbounds i8, ptr %157, i64 4
  store i32 2, ptr %159, align 4, !tbaa !23
  %160 = getelementptr inbounds i8, ptr %157, i64 8
  store i32 6, ptr %160, align 4, !tbaa !24
  %161 = getelementptr inbounds i8, ptr %157, i64 12
  store i32 5, ptr %161, align 4, !tbaa !25
  %162 = getelementptr inbounds i8, ptr %157, i64 16
  store i32 1, ptr %162, align 4, !tbaa !21
  %163 = getelementptr inbounds i8, ptr %157, i64 20
  store i32 1, ptr %163, align 4, !tbaa !23
  %164 = getelementptr inbounds i8, ptr %157, i64 24
  store i32 0, ptr %164, align 4, !tbaa !24
  %165 = getelementptr inbounds i8, ptr %157, i64 28
  store i32 3, ptr %165, align 4, !tbaa !25
  %166 = getelementptr inbounds i8, ptr %157, i64 32
  store i32 2, ptr %166, align 4, !tbaa !21
  %167 = getelementptr inbounds i8, ptr %157, i64 36
  store i32 0, ptr %167, align 4, !tbaa !23
  %168 = getelementptr inbounds i8, ptr %157, i64 40
  store i32 0, ptr %168, align 4, !tbaa !24
  %169 = getelementptr inbounds i8, ptr %157, i64 44
  store i32 5, ptr %169, align 4, !tbaa !25
  %170 = getelementptr inbounds i8, ptr %157, i64 48
  store i32 1, ptr %170, align 4, !tbaa !21
  %171 = getelementptr inbounds i8, ptr %157, i64 52
  store i32 -1, ptr %171, align 4, !tbaa !23
  %172 = getelementptr inbounds i8, ptr %157, i64 56
  store i32 2, ptr %172, align 4, !tbaa !24
  %173 = getelementptr inbounds i8, ptr %157, i64 60
  store i32 3, ptr %173, align 4, !tbaa !25
  %174 = getelementptr inbounds i8, ptr %157, i64 64
  store i32 0, ptr %174, align 4, !tbaa !21
  %175 = getelementptr inbounds i8, ptr %157, i64 68
  store i32 -2, ptr %175, align 4, !tbaa !23
  %176 = getelementptr inbounds i8, ptr %157, i64 72
  store i32 2, ptr %176, align 4, !tbaa !24
  %177 = getelementptr inbounds i8, ptr %157, i64 76
  store i32 5, ptr %177, align 4, !tbaa !25
  %178 = getelementptr inbounds i8, ptr %157, i64 80
  store i32 -1, ptr %178, align 4, !tbaa !21
  %179 = getelementptr inbounds i8, ptr %157, i64 84
  store i32 -1, ptr %179, align 4, !tbaa !23
  %180 = getelementptr inbounds i8, ptr %157, i64 88
  store i32 4, ptr %180, align 4, !tbaa !24
  %181 = getelementptr inbounds i8, ptr %157, i64 92
  store i32 3, ptr %181, align 4, !tbaa !25
  %182 = getelementptr inbounds i8, ptr %157, i64 96
  store i32 -2, ptr %182, align 4, !tbaa !21
  %183 = getelementptr inbounds i8, ptr %157, i64 100
  store i32 0, ptr %183, align 4, !tbaa !23
  %184 = getelementptr inbounds i8, ptr %157, i64 104
  store i32 4, ptr %184, align 4, !tbaa !24
  %185 = getelementptr inbounds i8, ptr %157, i64 108
  store i32 5, ptr %185, align 4, !tbaa !25
  %186 = getelementptr inbounds i8, ptr %157, i64 112
  store i32 -1, ptr %186, align 4, !tbaa !21
  %187 = getelementptr inbounds i8, ptr %157, i64 116
  store i32 1, ptr %187, align 4, !tbaa !23
  %188 = getelementptr inbounds i8, ptr %157, i64 120
  store i32 6, ptr %188, align 4, !tbaa !24
  %189 = getelementptr inbounds i8, ptr %157, i64 124
  store i32 3, ptr %189, align 4, !tbaa !25
  %190 = shl nsw i32 %75, 3
  %191 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %156
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #15
  br label %194

194:                                              ; preds = %156, %193
  store i32 %190, ptr %191, align 8, !tbaa !17
  %195 = sext i32 %190 to i64
  %196 = tail call noalias ptr @calloc(i64 noundef %195, i64 noundef 16) #14
  %197 = getelementptr inbounds i8, ptr %191, i64 8
  store ptr %196, ptr %197, align 8, !tbaa !19
  store ptr %191, ptr @window_predictor, align 8, !tbaa !26
  %198 = mul nsw i32 %75, 20
  %199 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #15
  %202 = load ptr, ptr @window_predictor, align 8, !tbaa !26
  br label %203

203:                                              ; preds = %194, %201
  %204 = phi ptr [ %191, %194 ], [ %202, %201 ]
  store i32 %198, ptr %199, align 8, !tbaa !17
  %205 = sext i32 %198 to i64
  %206 = tail call noalias ptr @calloc(i64 noundef %205, i64 noundef 16) #14
  %207 = getelementptr inbounds i8, ptr %199, i64 8
  store ptr %206, ptr %207, align 8, !tbaa !19
  store ptr %199, ptr @window_predictor_extended, align 8, !tbaa !26
  %208 = load ptr, ptr @input, align 8, !tbaa !26
  %209 = getelementptr inbounds i8, ptr %208, i64 32
  %210 = load i32, ptr %209, align 8, !tbaa !34
  %211 = trunc i32 %210 to i16
  tail call void @EPZSWindowPredictorInit(i16 noundef signext %211, ptr noundef %204, i16 noundef signext 0)
  %212 = load ptr, ptr @input, align 8, !tbaa !26
  %213 = getelementptr inbounds i8, ptr %212, i64 32
  %214 = load i32, ptr %213, align 8, !tbaa !34
  %215 = trunc i32 %214 to i16
  %216 = load ptr, ptr @window_predictor_extended, align 8, !tbaa !26
  tail call void @EPZSWindowPredictorInit(i16 noundef signext %215, ptr noundef %216, i16 noundef signext 1)
  %217 = add nsw i32 %198, 10
  %218 = load ptr, ptr @input, align 8, !tbaa !26
  %219 = getelementptr inbounds i8, ptr %218, i64 3076
  %220 = load i32, ptr %219, align 4, !tbaa !40
  %221 = mul nsw i32 %220, 9
  %222 = add nsw i32 %217, %221
  %223 = getelementptr inbounds i8, ptr %218, i64 3080
  %224 = load i32, ptr %223, align 8, !tbaa !41
  %225 = mul nsw i32 %224, 3
  %226 = add nsw i32 %222, %225
  %227 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %203
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #15
  br label %230

230:                                              ; preds = %203, %229
  store i32 %226, ptr %227, align 8, !tbaa !17
  %231 = sext i32 %226 to i64
  %232 = tail call noalias ptr @calloc(i64 noundef %231, i64 noundef 16) #14
  %233 = getelementptr inbounds i8, ptr %227, i64 8
  store ptr %232, ptr %233, align 8, !tbaa !19
  store ptr %227, ptr @predictor, align 8, !tbaa !26
  %234 = load ptr, ptr @img, align 8, !tbaa !26
  %235 = getelementptr inbounds i8, ptr %234, i64 52
  %236 = load i32, ptr %235, align 4, !tbaa !42
  %237 = sdiv i32 %236, 4
  %238 = tail call signext i32 @get_mem3Dint(ptr noundef nonnull @EPZSDistortion, i32 noundef signext 6, i32 noundef signext 7, i32 noundef signext %237) #15
  %239 = tail call signext i32 @get_mem2D(ptr noundef nonnull @EPZSMap, i32 noundef signext %74, i32 noundef signext %74) #15
  %240 = add nsw i32 %239, %238
  %241 = load ptr, ptr @input, align 8, !tbaa !26
  %242 = getelementptr inbounds i8, ptr %241, i64 3080
  %243 = load i32, ptr %242, align 8, !tbaa !41
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %255, label %245

245:                                              ; preds = %230
  %246 = load ptr, ptr @img, align 8, !tbaa !26
  %247 = getelementptr inbounds i8, ptr %246, i64 36
  %248 = load i32, ptr %247, align 4, !tbaa !43
  %249 = getelementptr inbounds i8, ptr %246, i64 52
  %250 = load i32, ptr %249, align 4, !tbaa !42
  %251 = sdiv i32 %250, 4
  %252 = tail call signext i32 @get_mem6Dshort(ptr noundef nonnull @EPZSMotion, i32 noundef signext 6, i32 noundef signext %248, i32 noundef signext 7, i32 noundef signext 4, i32 noundef signext %251, i32 noundef signext 2) #15
  %253 = add nsw i32 %252, %240
  %254 = load ptr, ptr @input, align 8, !tbaa !26
  br label %255

255:                                              ; preds = %245, %230
  %256 = phi ptr [ %254, %245 ], [ %241, %230 ]
  %257 = phi i32 [ %253, %245 ], [ %240, %230 ]
  %258 = getelementptr inbounds i8, ptr %256, i64 3076
  %259 = load i32, ptr %258, align 4, !tbaa !40
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %272, label %261

261:                                              ; preds = %255
  %262 = load ptr, ptr @img, align 8, !tbaa !26
  %263 = getelementptr inbounds i8, ptr %262, i64 52
  %264 = load i32, ptr %263, align 4, !tbaa !42
  %265 = getelementptr inbounds i8, ptr %262, i64 60
  %266 = load i32, ptr %265, align 4, !tbaa !44
  %267 = load ptr, ptr @active_sps, align 8, !tbaa !26
  %268 = getelementptr inbounds i8, ptr %267, i64 1152
  %269 = load i32, ptr %268, align 4, !tbaa !45
  %270 = tail call ptr @allocEPZScolocated(i32 noundef signext %264, i32 noundef signext %266, i32 noundef signext %269)
  store ptr %270, ptr @EPZSCo_located, align 8, !tbaa !26
  %271 = load ptr, ptr @input, align 8, !tbaa !26
  br label %272

272:                                              ; preds = %261, %255
  %273 = phi ptr [ %271, %261 ], [ %256, %255 ]
  %274 = getelementptr inbounds i8, ptr %273, i64 3064
  %275 = load i32, ptr %274, align 8, !tbaa !49
  %276 = add i32 %275, -1
  %277 = icmp ult i32 %276, 3
  br i1 %277, label %278, label %282

278:                                              ; preds = %272
  %279 = zext nneg i32 %276 to i64
  %280 = getelementptr inbounds [3 x ptr], ptr @switch.table.EPZSInit.17, i64 0, i64 %279
  %281 = load ptr, ptr %280, align 8
  br label %282

282:                                              ; preds = %272, %278
  %283 = phi ptr [ %281, %278 ], [ @sdiamond, %272 ]
  %284 = load ptr, ptr %283, align 8, !tbaa !26
  store ptr %284, ptr @searchPattern, align 8, !tbaa !26
  %285 = getelementptr inbounds i8, ptr %273, i64 3068
  %286 = load i32, ptr %285, align 4, !tbaa !50
  %287 = add i32 %286, -2
  %288 = icmp ult i32 %287, 3
  br i1 %288, label %289, label %293

289:                                              ; preds = %282
  %290 = zext nneg i32 %287 to i64
  %291 = getelementptr inbounds [3 x ptr], ptr @switch.table.EPZSInit.17, i64 0, i64 %290
  %292 = load ptr, ptr %291, align 8
  br label %293

293:                                              ; preds = %282, %289
  %294 = phi ptr [ %292, %289 ], [ @sdiamond, %282 ]
  %295 = load ptr, ptr %294, align 8, !tbaa !26
  store ptr %295, ptr @searchPatternD, align 8, !tbaa !26
  ret i32 %257
}

declare dso_local signext i32 @get_mem3Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem2D(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @get_mem6Dshort(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @EPZSDelete() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !26
  %2 = getelementptr inbounds i8, ptr %1, i64 3076
  %3 = load i32, ptr %2, align 4, !tbaa !40
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @EPZSCo_located, align 8, !tbaa !26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %6, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds i8, ptr %6, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa !12
  %13 = sdiv i32 %12, 4
  tail call void @free_mem4Dshort(ptr noundef %10, i32 noundef signext 2, i32 noundef signext %13) #15
  %14 = load i32, ptr %6, align 8, !tbaa !13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds i8, ptr %6, i64 24
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = load i32, ptr %11, align 8, !tbaa !12
  %20 = sdiv i32 %19, 8
  tail call void @free_mem4Dshort(ptr noundef %18, i32 noundef signext 2, i32 noundef signext %20) #15
  %21 = getelementptr inbounds i8, ptr %6, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  %23 = load i32, ptr %11, align 8, !tbaa !12
  %24 = sdiv i32 %23, 8
  tail call void @free_mem4Dshort(ptr noundef %22, i32 noundef signext 2, i32 noundef signext %24) #15
  br label %25

25:                                               ; preds = %16, %8
  tail call void @free(ptr noundef nonnull %6) #15
  br label %26

26:                                               ; preds = %25, %5, %0
  %27 = load ptr, ptr @EPZSMap, align 8, !tbaa !26
  tail call void @free_mem2D(ptr noundef %27) #15
  %28 = load ptr, ptr @EPZSDistortion, align 8, !tbaa !26
  tail call void @free_mem3Dint(ptr noundef %28, i32 noundef signext 6) #15
  %29 = load ptr, ptr @window_predictor_extended, align 8, !tbaa !26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %29, i64 8
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  tail call void @free(ptr noundef %33) #15
  tail call void @free(ptr noundef nonnull %29) #15
  br label %34

34:                                               ; preds = %26, %31
  %35 = load ptr, ptr @window_predictor, align 8, !tbaa !26
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %35, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  tail call void @free(ptr noundef %39) #15
  tail call void @free(ptr noundef nonnull %35) #15
  br label %40

40:                                               ; preds = %34, %37
  %41 = load ptr, ptr @predictor, align 8, !tbaa !26
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %41, i64 8
  %45 = load ptr, ptr %44, align 8, !tbaa !19
  tail call void @free(ptr noundef %45) #15
  tail call void @free(ptr noundef nonnull %41) #15
  br label %46

46:                                               ; preds = %40, %43
  %47 = load ptr, ptr @ldiamond, align 8, !tbaa !26
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %47, i64 8
  %51 = load ptr, ptr %50, align 8, !tbaa !19
  tail call void @free(ptr noundef %51) #15
  tail call void @free(ptr noundef nonnull %47) #15
  br label %52

52:                                               ; preds = %46, %49
  %53 = load ptr, ptr @ediamond, align 8, !tbaa !26
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %53, i64 8
  %57 = load ptr, ptr %56, align 8, !tbaa !19
  tail call void @free(ptr noundef %57) #15
  tail call void @free(ptr noundef nonnull %53) #15
  br label %58

58:                                               ; preds = %52, %55
  %59 = load ptr, ptr @sdiamond, align 8, !tbaa !26
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %59, i64 8
  %63 = load ptr, ptr %62, align 8, !tbaa !19
  tail call void @free(ptr noundef %63) #15
  tail call void @free(ptr noundef nonnull %59) #15
  br label %64

64:                                               ; preds = %58, %61
  %65 = load ptr, ptr @square, align 8, !tbaa !26
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %65, i64 8
  %69 = load ptr, ptr %68, align 8, !tbaa !19
  tail call void @free(ptr noundef %69) #15
  tail call void @free(ptr noundef nonnull %65) #15
  br label %70

70:                                               ; preds = %64, %67
  %71 = load ptr, ptr @input, align 8, !tbaa !26
  %72 = getelementptr inbounds i8, ptr %71, i64 3080
  %73 = load i32, ptr %72, align 8, !tbaa !41
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr @EPZSMotion, align 8, !tbaa !26
  %77 = load ptr, ptr @img, align 8, !tbaa !26
  %78 = getelementptr inbounds i8, ptr %77, i64 36
  %79 = load i32, ptr %78, align 4, !tbaa !43
  tail call void @free_mem6Dshort(ptr noundef %76, i32 noundef signext 6, i32 noundef signext %79, i32 noundef signext 7, i32 noundef signext 4) #15
  br label %80

80:                                               ; preds = %75, %70
  ret void
}

declare dso_local void @free_mem2D(ptr noundef) local_unnamed_addr #3

declare dso_local void @free_mem3Dint(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @free_mem6Dshort(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @EPZSSliceInit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = alloca [2 x [6 x [33 x i32]]], align 4
  %4 = load ptr, ptr @img, align 8, !tbaa !26
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = icmp eq i32 %6, 1
  call void @llvm.lifetime.start.p0(i64 1584, ptr nonnull %3) #15
  %8 = getelementptr inbounds i8, ptr %4, i64 90220
  %9 = load i32, ptr %8, align 4, !tbaa !52
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %113

11:                                               ; preds = %2
  %12 = shl i32 %9, 2
  %13 = load ptr, ptr @enc_picture, align 8
  %14 = getelementptr inbounds i8, ptr %13, i64 12
  %15 = getelementptr inbounds i8, ptr %13, i64 8
  %16 = getelementptr inbounds i8, ptr %13, i64 4
  %17 = or disjoint i32 %12, 1
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = add nuw nsw i32 %18, 1
  %20 = zext nneg i32 %19 to i64
  br label %21

21:                                               ; preds = %11, %110
  %22 = phi i64 [ 0, %11 ], [ %111, %110 ]
  %23 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !20
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %110

26:                                               ; preds = %21
  %27 = icmp ult i64 %22, 2
  %28 = and i64 %22, 2147483646
  %29 = icmp eq i64 %28, 2
  %30 = getelementptr inbounds ptr, ptr %1, i64 %22
  %31 = zext nneg i32 %24 to i64
  br label %32

32:                                               ; preds = %26, %107
  %33 = phi i64 [ 0, %26 ], [ %108, %107 ]
  br label %34

34:                                               ; preds = %32, %102
  %35 = phi i64 [ 0, %32 ], [ %105, %102 ]
  br i1 %27, label %36, label %54

36:                                               ; preds = %34
  %37 = load i32, ptr %16, align 4, !tbaa !53
  %38 = load ptr, ptr %30, align 8, !tbaa !26
  %39 = getelementptr inbounds ptr, ptr %38, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !26
  %41 = getelementptr inbounds i8, ptr %40, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !53
  %43 = sub nsw i32 %37, %42
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 127)
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 -128)
  %46 = getelementptr inbounds ptr, ptr %38, i64 %33
  %47 = load ptr, ptr %46, align 8, !tbaa !26
  %48 = getelementptr inbounds i8, ptr %47, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = sub nsw i32 %37, %49
  %51 = icmp slt i32 %50, -128
  br i1 %51, label %86, label %52

52:                                               ; preds = %36
  %53 = icmp sgt i32 %50, 127
  br i1 %53, label %86, label %82

54:                                               ; preds = %34
  %55 = load ptr, ptr %30, align 8, !tbaa !26
  %56 = getelementptr inbounds ptr, ptr %55, i64 %35
  %57 = load ptr, ptr %56, align 8, !tbaa !26
  %58 = getelementptr inbounds i8, ptr %57, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !53
  %60 = getelementptr inbounds ptr, ptr %55, i64 %33
  %61 = load ptr, ptr %60, align 8, !tbaa !26
  %62 = getelementptr inbounds i8, ptr %61, i64 4
  %63 = load i32, ptr %62, align 4, !tbaa !53
  br i1 %29, label %64, label %73

64:                                               ; preds = %54
  %65 = load i32, ptr %15, align 8, !tbaa !55
  %66 = sub nsw i32 %65, %59
  %67 = tail call i32 @llvm.smin.i32(i32 %66, i32 127)
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 -128)
  %69 = sub nsw i32 %65, %63
  %70 = icmp slt i32 %69, -128
  br i1 %70, label %86, label %71

71:                                               ; preds = %64
  %72 = icmp sgt i32 %69, 127
  br i1 %72, label %86, label %82

73:                                               ; preds = %54
  %74 = load i32, ptr %14, align 4, !tbaa !56
  %75 = sub nsw i32 %74, %59
  %76 = tail call i32 @llvm.smin.i32(i32 %75, i32 127)
  %77 = tail call i32 @llvm.smax.i32(i32 %76, i32 -128)
  %78 = sub nsw i32 %74, %63
  %79 = icmp slt i32 %78, -128
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = icmp sgt i32 %78, 127
  br i1 %81, label %86, label %82

82:                                               ; preds = %80, %71, %52
  %83 = phi i32 [ %45, %52 ], [ %68, %71 ], [ %77, %80 ]
  %84 = phi i32 [ %50, %52 ], [ %69, %71 ], [ %78, %80 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %80, %71, %52, %73, %64, %36, %82
  %87 = phi i32 [ %84, %82 ], [ -128, %73 ], [ -128, %64 ], [ -128, %36 ], [ 127, %52 ], [ 127, %71 ], [ 127, %80 ]
  %88 = phi i32 [ %83, %82 ], [ %77, %73 ], [ %68, %64 ], [ %45, %36 ], [ %45, %52 ], [ %68, %71 ], [ %77, %80 ]
  %89 = trunc i32 %87 to i8
  %90 = sdiv i8 %89, 2
  %91 = tail call i8 @llvm.abs.i8(i8 %90, i1 true)
  %92 = zext nneg i8 %91 to i16
  %93 = or disjoint i16 %92, 16384
  %94 = trunc i32 %87 to i16
  %95 = sdiv i16 %93, %94
  %96 = sext i16 %95 to i32
  %97 = mul nsw i32 %88, %96
  %98 = add nsw i32 %97, 32
  %99 = ashr i32 %98, 6
  %100 = tail call i32 @llvm.smin.i32(i32 %99, i32 2047)
  %101 = tail call i32 @llvm.smax.i32(i32 %100, i32 -2048)
  br label %102

102:                                              ; preds = %82, %86
  %103 = phi i32 [ %101, %86 ], [ 256, %82 ]
  %104 = getelementptr inbounds [6 x [32 x [32 x i32]]], ptr @mv_scale, i64 0, i64 %22, i64 %35, i64 %33
  store i32 %103, ptr %104, align 4, !tbaa !20
  %105 = add nuw nsw i64 %35, 1
  %106 = icmp eq i64 %105, %31
  br i1 %106, label %107, label %34

107:                                              ; preds = %102
  %108 = add nuw nsw i64 %33, 1
  %109 = icmp eq i64 %108, %31
  br i1 %109, label %110, label %32

110:                                              ; preds = %107, %21
  %111 = add nuw nsw i64 %22, 1
  %112 = icmp eq i64 %111, %20
  br i1 %112, label %113, label %21

113:                                              ; preds = %110, %2
  %114 = load ptr, ptr @input, align 8, !tbaa !26
  %115 = getelementptr inbounds i8, ptr %114, i64 3076
  %116 = load i32, ptr %115, align 4, !tbaa !40
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %1556, label %118

118:                                              ; preds = %113
  %119 = zext i1 %7 to i64
  %120 = getelementptr inbounds ptr, ptr %1, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !26
  %122 = load ptr, ptr %121, align 8, !tbaa !26
  %123 = load i32, ptr @listXsize, align 4, !tbaa !20
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = getelementptr inbounds i8, ptr %121, i64 8
  %127 = load ptr, ptr %126, align 8, !tbaa !26
  br label %128

128:                                              ; preds = %118, %125
  %129 = phi ptr [ %127, %125 ], [ %122, %118 ]
  %130 = getelementptr inbounds i8, ptr %3, i64 792
  store i32 256, ptr %3, align 4, !tbaa !20
  store i32 256, ptr %130, align 4, !tbaa !20
  %131 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 256, ptr %131, align 4, !tbaa !20
  %132 = getelementptr inbounds i8, ptr %3, i64 796
  store i32 256, ptr %132, align 4, !tbaa !20
  %133 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 256, ptr %133, align 4, !tbaa !20
  %134 = getelementptr inbounds i8, ptr %3, i64 800
  store i32 256, ptr %134, align 4, !tbaa !20
  %135 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 256, ptr %135, align 4, !tbaa !20
  %136 = getelementptr inbounds i8, ptr %3, i64 804
  store i32 256, ptr %136, align 4, !tbaa !20
  %137 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 256, ptr %137, align 4, !tbaa !20
  %138 = getelementptr inbounds i8, ptr %3, i64 808
  store i32 256, ptr %138, align 4, !tbaa !20
  %139 = getelementptr inbounds i8, ptr %3, i64 20
  store i32 256, ptr %139, align 4, !tbaa !20
  %140 = getelementptr inbounds i8, ptr %3, i64 812
  store i32 256, ptr %140, align 4, !tbaa !20
  %141 = getelementptr inbounds i8, ptr %3, i64 132
  store i32 256, ptr %141, align 4, !tbaa !20
  %142 = getelementptr inbounds i8, ptr %3, i64 924
  store i32 256, ptr %142, align 4, !tbaa !20
  %143 = getelementptr inbounds i8, ptr %3, i64 136
  store i32 256, ptr %143, align 4, !tbaa !20
  %144 = getelementptr inbounds i8, ptr %3, i64 928
  store i32 256, ptr %144, align 4, !tbaa !20
  %145 = getelementptr inbounds i8, ptr %3, i64 140
  store i32 256, ptr %145, align 4, !tbaa !20
  %146 = getelementptr inbounds i8, ptr %3, i64 932
  store i32 256, ptr %146, align 4, !tbaa !20
  %147 = getelementptr inbounds i8, ptr %3, i64 144
  store i32 256, ptr %147, align 4, !tbaa !20
  %148 = getelementptr inbounds i8, ptr %3, i64 936
  store i32 256, ptr %148, align 4, !tbaa !20
  %149 = getelementptr inbounds i8, ptr %3, i64 148
  store i32 256, ptr %149, align 4, !tbaa !20
  %150 = getelementptr inbounds i8, ptr %3, i64 940
  store i32 256, ptr %150, align 4, !tbaa !20
  %151 = getelementptr inbounds i8, ptr %3, i64 152
  store i32 256, ptr %151, align 4, !tbaa !20
  %152 = getelementptr inbounds i8, ptr %3, i64 944
  store i32 256, ptr %152, align 4, !tbaa !20
  %153 = getelementptr inbounds i8, ptr %3, i64 264
  store i32 256, ptr %153, align 4, !tbaa !20
  %154 = getelementptr inbounds i8, ptr %3, i64 1056
  store i32 256, ptr %154, align 4, !tbaa !20
  %155 = getelementptr inbounds i8, ptr %3, i64 268
  store i32 256, ptr %155, align 4, !tbaa !20
  %156 = getelementptr inbounds i8, ptr %3, i64 1060
  store i32 256, ptr %156, align 4, !tbaa !20
  %157 = getelementptr inbounds i8, ptr %3, i64 272
  store i32 256, ptr %157, align 4, !tbaa !20
  %158 = getelementptr inbounds i8, ptr %3, i64 1064
  store i32 256, ptr %158, align 4, !tbaa !20
  %159 = getelementptr inbounds i8, ptr %3, i64 276
  store i32 256, ptr %159, align 4, !tbaa !20
  %160 = getelementptr inbounds i8, ptr %3, i64 1068
  store i32 256, ptr %160, align 4, !tbaa !20
  %161 = getelementptr inbounds i8, ptr %3, i64 280
  store i32 256, ptr %161, align 4, !tbaa !20
  %162 = getelementptr inbounds i8, ptr %3, i64 1072
  store i32 256, ptr %162, align 4, !tbaa !20
  %163 = getelementptr inbounds i8, ptr %3, i64 284
  store i32 256, ptr %163, align 4, !tbaa !20
  %164 = getelementptr inbounds i8, ptr %3, i64 1076
  store i32 256, ptr %164, align 4, !tbaa !20
  %165 = getelementptr inbounds i8, ptr %3, i64 396
  store i32 256, ptr %165, align 4, !tbaa !20
  %166 = getelementptr inbounds i8, ptr %3, i64 1188
  store i32 256, ptr %166, align 4, !tbaa !20
  %167 = getelementptr inbounds i8, ptr %3, i64 400
  store i32 256, ptr %167, align 4, !tbaa !20
  %168 = getelementptr inbounds i8, ptr %3, i64 1192
  store i32 256, ptr %168, align 4, !tbaa !20
  %169 = getelementptr inbounds i8, ptr %3, i64 404
  store i32 256, ptr %169, align 4, !tbaa !20
  %170 = getelementptr inbounds i8, ptr %3, i64 1196
  store i32 256, ptr %170, align 4, !tbaa !20
  %171 = getelementptr inbounds i8, ptr %3, i64 408
  store i32 256, ptr %171, align 4, !tbaa !20
  %172 = getelementptr inbounds i8, ptr %3, i64 1200
  store i32 256, ptr %172, align 4, !tbaa !20
  %173 = getelementptr inbounds i8, ptr %3, i64 412
  store i32 256, ptr %173, align 4, !tbaa !20
  %174 = getelementptr inbounds i8, ptr %3, i64 1204
  store i32 256, ptr %174, align 4, !tbaa !20
  %175 = getelementptr inbounds i8, ptr %3, i64 416
  store i32 256, ptr %175, align 4, !tbaa !20
  %176 = getelementptr inbounds i8, ptr %3, i64 1208
  store i32 256, ptr %176, align 4, !tbaa !20
  %177 = getelementptr inbounds i8, ptr %3, i64 528
  store i32 256, ptr %177, align 4, !tbaa !20
  %178 = getelementptr inbounds i8, ptr %3, i64 1320
  store i32 256, ptr %178, align 4, !tbaa !20
  %179 = getelementptr inbounds i8, ptr %3, i64 532
  store i32 256, ptr %179, align 4, !tbaa !20
  %180 = getelementptr inbounds i8, ptr %3, i64 1324
  store i32 256, ptr %180, align 4, !tbaa !20
  %181 = getelementptr inbounds i8, ptr %3, i64 536
  store i32 256, ptr %181, align 4, !tbaa !20
  %182 = getelementptr inbounds i8, ptr %3, i64 1328
  store i32 256, ptr %182, align 4, !tbaa !20
  %183 = getelementptr inbounds i8, ptr %3, i64 540
  store i32 256, ptr %183, align 4, !tbaa !20
  %184 = getelementptr inbounds i8, ptr %3, i64 1332
  store i32 256, ptr %184, align 4, !tbaa !20
  %185 = getelementptr inbounds i8, ptr %3, i64 544
  store i32 256, ptr %185, align 4, !tbaa !20
  %186 = getelementptr inbounds i8, ptr %3, i64 1336
  store i32 256, ptr %186, align 4, !tbaa !20
  %187 = getelementptr inbounds i8, ptr %3, i64 548
  store i32 256, ptr %187, align 4, !tbaa !20
  %188 = getelementptr inbounds i8, ptr %3, i64 1340
  store i32 256, ptr %188, align 4, !tbaa !20
  %189 = getelementptr inbounds i8, ptr %3, i64 660
  store i32 256, ptr %189, align 4, !tbaa !20
  %190 = getelementptr inbounds i8, ptr %3, i64 1452
  store i32 256, ptr %190, align 4, !tbaa !20
  %191 = getelementptr inbounds i8, ptr %3, i64 664
  store i32 256, ptr %191, align 4, !tbaa !20
  %192 = getelementptr inbounds i8, ptr %3, i64 1456
  store i32 256, ptr %192, align 4, !tbaa !20
  %193 = getelementptr inbounds i8, ptr %3, i64 668
  store i32 256, ptr %193, align 4, !tbaa !20
  %194 = getelementptr inbounds i8, ptr %3, i64 1460
  store i32 256, ptr %194, align 4, !tbaa !20
  %195 = getelementptr inbounds i8, ptr %3, i64 672
  store i32 256, ptr %195, align 4, !tbaa !20
  %196 = getelementptr inbounds i8, ptr %3, i64 1464
  store i32 256, ptr %196, align 4, !tbaa !20
  %197 = getelementptr inbounds i8, ptr %3, i64 676
  store i32 256, ptr %197, align 4, !tbaa !20
  %198 = getelementptr inbounds i8, ptr %3, i64 1468
  store i32 256, ptr %198, align 4, !tbaa !20
  %199 = getelementptr inbounds i8, ptr %3, i64 680
  store i32 256, ptr %199, align 4, !tbaa !20
  %200 = getelementptr inbounds i8, ptr %3, i64 1472
  store i32 256, ptr %200, align 4, !tbaa !20
  %201 = load i32, ptr %8, align 4, !tbaa !52
  %202 = icmp sgt i32 %201, -1
  br i1 %202, label %203, label %326

203:                                              ; preds = %128
  %204 = load ptr, ptr @enc_picture, align 8
  %205 = getelementptr inbounds i8, ptr %204, i64 8
  %206 = getelementptr inbounds i8, ptr %204, i64 4
  %207 = getelementptr inbounds i8, ptr %204, i64 12
  %208 = zext i1 %7 to i64
  br label %209

209:                                              ; preds = %203, %318
  %210 = phi i32 [ %201, %203 ], [ %319, %318 ]
  %211 = phi i64 [ 0, %203 ], [ %320, %318 ]
  %212 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !20
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %318

215:                                              ; preds = %209
  %216 = getelementptr inbounds ptr, ptr %1, i64 %211
  %217 = or disjoint i64 %211, %208
  %218 = getelementptr inbounds ptr, ptr %1, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !26
  %220 = load ptr, ptr %219, align 8, !tbaa !26
  %221 = getelementptr inbounds i8, ptr %220, i64 4
  %222 = load i32, ptr %221, align 4, !tbaa !53
  %223 = load ptr, ptr %216, align 8, !tbaa !26
  %224 = getelementptr inbounds [6 x [32 x [32 x i32]]], ptr @mv_scale, i64 0, i64 %211
  %225 = or disjoint i64 %211, 1
  %226 = icmp eq i32 %213, 1
  %227 = getelementptr inbounds i8, ptr %219, i64 8
  %228 = getelementptr inbounds i8, ptr %224, i64 128
  %229 = zext nneg i32 %213 to i64
  %230 = trunc nuw nsw i64 %211 to i32
  br label %231

231:                                              ; preds = %215, %311
  %232 = phi i64 [ 0, %215 ], [ %314, %311 ]
  %233 = getelementptr inbounds ptr, ptr %223, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !26
  %235 = getelementptr inbounds i8, ptr %234, i64 4
  %236 = load i32, ptr %235, align 4, !tbaa !53
  switch i32 %230, label %238 [
    i32 0, label %239
    i32 2, label %237
  ]

237:                                              ; preds = %231
  br label %239

238:                                              ; preds = %231
  br label %239

239:                                              ; preds = %231, %238, %237
  %240 = phi ptr [ %207, %238 ], [ %205, %237 ], [ %206, %231 ]
  %241 = load i32, ptr %240, align 4, !tbaa !20
  %242 = sub nsw i32 %241, %236
  %243 = tail call i32 @llvm.smin.i32(i32 %242, i32 127)
  %244 = tail call i32 @llvm.smax.i32(i32 %243, i32 -128)
  %245 = getelementptr inbounds ptr, ptr %223, i64 %232
  %246 = load ptr, ptr %245, align 8, !tbaa !26
  %247 = getelementptr inbounds i8, ptr %246, i64 4
  %248 = load i32, ptr %247, align 4, !tbaa !53
  %249 = icmp eq i32 %222, %248
  br i1 %249, label %267, label %250

250:                                              ; preds = %239
  %251 = sub nsw i32 %222, %248
  %252 = tail call i32 @llvm.smin.i32(i32 %251, i32 127)
  %253 = tail call i32 @llvm.smax.i32(i32 %252, i32 -128)
  %254 = trunc nsw i32 %253 to i8
  %255 = sdiv i8 %254, 2
  %256 = tail call i8 @llvm.abs.i8(i8 %255, i1 true)
  %257 = zext nneg i8 %256 to i16
  %258 = or disjoint i16 %257, 16384
  %259 = trunc nsw i32 %253 to i16
  %260 = sdiv i16 %258, %259
  %261 = sext i16 %260 to i32
  %262 = mul nsw i32 %244, %261
  %263 = add nsw i32 %262, 32
  %264 = ashr i32 %263, 6
  %265 = tail call i32 @llvm.smin.i32(i32 %264, i32 2047)
  %266 = tail call i32 @llvm.smax.i32(i32 %265, i32 -2048)
  br label %267

267:                                              ; preds = %250, %239
  %268 = phi i32 [ 256, %239 ], [ %266, %250 ]
  %269 = getelementptr inbounds [32 x i32], ptr %224, i64 0, i64 %232
  %270 = load i32, ptr %269, align 4, !tbaa !20
  %271 = mul nsw i32 %270, %268
  %272 = add nsw i32 %271, 128
  %273 = ashr i32 %272, 8
  %274 = getelementptr inbounds [6 x [33 x i32]], ptr %3, i64 0, i64 %211, i64 %232
  store i32 %273, ptr %274, align 4, !tbaa !20
  %275 = add nsw i32 %268, -256
  %276 = getelementptr inbounds [6 x [33 x i32]], ptr %3, i64 0, i64 %225, i64 %232
  store i32 %275, ptr %276, align 4, !tbaa !20
  br i1 %226, label %309, label %277

277:                                              ; preds = %267
  %278 = load ptr, ptr %227, align 8, !tbaa !26
  %279 = getelementptr inbounds i8, ptr %278, i64 4
  %280 = load i32, ptr %279, align 4, !tbaa !53
  %281 = load i32, ptr %247, align 4, !tbaa !53
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %300, label %283

283:                                              ; preds = %277
  %284 = sub nsw i32 %280, %281
  %285 = tail call i32 @llvm.smin.i32(i32 %284, i32 127)
  %286 = tail call i32 @llvm.smax.i32(i32 %285, i32 -128)
  %287 = trunc nsw i32 %286 to i8
  %288 = sdiv i8 %287, 2
  %289 = tail call i8 @llvm.abs.i8(i8 %288, i1 true)
  %290 = zext nneg i8 %289 to i16
  %291 = or disjoint i16 %290, 16384
  %292 = trunc nsw i32 %286 to i16
  %293 = sdiv i16 %291, %292
  %294 = sext i16 %293 to i32
  %295 = mul nsw i32 %244, %294
  %296 = add nsw i32 %295, 32
  %297 = ashr i32 %296, 6
  %298 = tail call i32 @llvm.smin.i32(i32 %297, i32 2047)
  %299 = tail call i32 @llvm.smax.i32(i32 %298, i32 -2048)
  br label %300

300:                                              ; preds = %283, %277
  %301 = phi i32 [ 256, %277 ], [ %299, %283 ]
  %302 = getelementptr inbounds [32 x i32], ptr %228, i64 0, i64 %232
  %303 = load i32, ptr %302, align 4, !tbaa !20
  %304 = mul nsw i32 %303, %301
  %305 = add nsw i32 %304, 128
  %306 = ashr i32 %305, 8
  %307 = getelementptr inbounds [6 x [33 x i32]], ptr %130, i64 0, i64 %211, i64 %232
  store i32 %306, ptr %307, align 4, !tbaa !20
  %308 = add nsw i32 %301, -256
  br label %311

309:                                              ; preds = %267
  %310 = getelementptr inbounds [6 x [33 x i32]], ptr %130, i64 0, i64 %211, i64 %232
  store i32 %273, ptr %310, align 4, !tbaa !20
  br label %311

311:                                              ; preds = %300, %309
  %312 = phi i32 [ %308, %300 ], [ %275, %309 ]
  %313 = getelementptr inbounds [6 x [33 x i32]], ptr %130, i64 0, i64 %225, i64 %232
  store i32 %312, ptr %313, align 4, !tbaa !20
  %314 = add nuw nsw i64 %232, 1
  %315 = icmp eq i64 %314, %229
  br i1 %315, label %316, label %231

316:                                              ; preds = %311
  %317 = load i32, ptr %8, align 4, !tbaa !52
  br label %318

318:                                              ; preds = %316, %209
  %319 = phi i32 [ %317, %316 ], [ %210, %209 ]
  %320 = add nuw nsw i64 %211, 2
  %321 = shl nsw i32 %319, 2
  %322 = sext i32 %321 to i64
  %323 = icmp slt i64 %211, %322
  br i1 %323, label %209, label %324

324:                                              ; preds = %318
  %325 = icmp eq i32 %319, 0
  br i1 %325, label %340, label %326

326:                                              ; preds = %128, %324
  %327 = select i1 %7, i64 3, i64 2
  %328 = getelementptr inbounds ptr, ptr %1, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !26
  %330 = load ptr, ptr %329, align 8, !tbaa !26
  %331 = select i1 %7, i64 5, i64 4
  %332 = getelementptr inbounds ptr, ptr %1, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !26
  %334 = load ptr, ptr %333, align 8, !tbaa !26
  br i1 %124, label %335, label %363

335:                                              ; preds = %326
  %336 = getelementptr inbounds i8, ptr %329, i64 8
  %337 = load ptr, ptr %336, align 8, !tbaa !26
  %338 = getelementptr inbounds i8, ptr %333, i64 8
  %339 = load ptr, ptr %338, align 8, !tbaa !26
  br label %363

340:                                              ; preds = %324
  %341 = getelementptr inbounds i8, ptr %4, i64 28
  %342 = load i32, ptr %341, align 4, !tbaa !57
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %363, label %344

344:                                              ; preds = %340
  %345 = load i32, ptr %122, align 8, !tbaa !58
  %346 = icmp eq i32 %342, %345
  br i1 %346, label %363, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds i8, ptr %122, i64 6412
  %349 = load i32, ptr %348, align 4, !tbaa !59
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %363, label %351

351:                                              ; preds = %347
  %352 = icmp eq i32 %342, 1
  br i1 %352, label %353, label %358

353:                                              ; preds = %351
  %354 = getelementptr inbounds i8, ptr %122, i64 6528
  %355 = load ptr, ptr %354, align 8, !tbaa !60
  %356 = getelementptr inbounds i8, ptr %122, i64 6536
  %357 = load ptr, ptr %356, align 8, !tbaa !61
  br label %363

358:                                              ; preds = %351
  %359 = getelementptr inbounds i8, ptr %122, i64 6536
  %360 = load ptr, ptr %359, align 8, !tbaa !61
  %361 = getelementptr inbounds i8, ptr %122, i64 6528
  %362 = load ptr, ptr %361, align 8, !tbaa !60
  br label %363

363:                                              ; preds = %340, %353, %358, %347, %344, %326, %335
  %364 = phi i1 [ false, %335 ], [ false, %326 ], [ true, %353 ], [ true, %358 ], [ true, %347 ], [ true, %344 ], [ true, %340 ]
  %365 = phi i32 [ 1, %335 ], [ 1, %326 ], [ 0, %353 ], [ 0, %358 ], [ 0, %347 ], [ 0, %344 ], [ 0, %340 ]
  %366 = phi ptr [ %330, %335 ], [ %330, %326 ], [ %355, %353 ], [ %360, %358 ], [ %122, %347 ], [ %122, %344 ], [ %122, %340 ]
  %367 = phi ptr [ %339, %335 ], [ %334, %326 ], [ %355, %353 ], [ %360, %358 ], [ %122, %347 ], [ %122, %344 ], [ %122, %340 ]
  %368 = phi ptr [ %337, %335 ], [ %129, %326 ], [ %357, %353 ], [ %362, %358 ], [ %129, %347 ], [ %129, %344 ], [ %129, %340 ]
  %369 = phi ptr [ %129, %335 ], [ %129, %326 ], [ %357, %353 ], [ %362, %358 ], [ %129, %347 ], [ %129, %344 ], [ %129, %340 ]
  %370 = phi ptr [ %122, %335 ], [ %122, %326 ], [ %355, %353 ], [ %360, %358 ], [ %122, %347 ], [ %122, %344 ], [ %122, %340 ]
  %371 = load ptr, ptr @active_sps, align 8, !tbaa !26
  %372 = getelementptr inbounds i8, ptr %371, i64 1148
  %373 = load i32, ptr %372, align 4, !tbaa !62
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %728

375:                                              ; preds = %363
  %376 = getelementptr inbounds i8, ptr %370, i64 6396
  %377 = load i32, ptr %376, align 4, !tbaa !63
  %378 = ashr i32 %377, 2
  %379 = icmp sgt i32 %378, 0
  br i1 %379, label %380, label %728

380:                                              ; preds = %375
  %381 = getelementptr inbounds i8, ptr %370, i64 6392
  %382 = load i32, ptr %381, align 8, !tbaa !64
  %383 = ashr i32 %382, 2
  %384 = icmp sgt i32 %383, 0
  %385 = getelementptr inbounds i8, ptr %370, i64 6520
  %386 = getelementptr inbounds i8, ptr %367, i64 4
  %387 = getelementptr inbounds i8, ptr %366, i64 4
  %388 = getelementptr inbounds i8, ptr %370, i64 6496
  %389 = getelementptr inbounds i8, ptr %4, i64 89408
  %390 = getelementptr inbounds i8, ptr %0, i64 16
  %391 = zext nneg i32 %378 to i64
  %392 = zext nneg i32 %383 to i64
  %393 = getelementptr inbounds i8, ptr %3, i64 924
  %394 = getelementptr inbounds i8, ptr %3, i64 924
  %395 = getelementptr inbounds i8, ptr %3, i64 924
  br label %396

396:                                              ; preds = %380, %725
  %397 = phi i64 [ 0, %380 ], [ %726, %725 ]
  br i1 %384, label %398, label %725

398:                                              ; preds = %396
  %399 = trunc nuw nsw i64 %397 to i32
  %400 = lshr i32 %399, 1
  %401 = and i32 %400, 1073741820
  %402 = add nuw nsw i32 %401, %400
  %403 = load ptr, ptr @enc_picture, align 8
  %404 = getelementptr inbounds i8, ptr %403, i64 4
  %405 = zext nneg i32 %402 to i64
  %406 = getelementptr inbounds i8, ptr %403, i64 24
  %407 = zext nneg i32 %400 to i64
  br label %408

408:                                              ; preds = %398, %719
  %409 = phi i64 [ 0, %398 ], [ %723, %719 ]
  br i1 %364, label %616, label %410

410:                                              ; preds = %408
  %411 = load ptr, ptr %385, align 8, !tbaa !65
  %412 = getelementptr inbounds ptr, ptr %411, i64 %397
  %413 = load ptr, ptr %412, align 8, !tbaa !26
  %414 = getelementptr inbounds i8, ptr %413, i64 %409
  %415 = load i8, ptr %414, align 1, !tbaa !66
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %616, label %417

417:                                              ; preds = %410
  %418 = load i32, ptr %404, align 4, !tbaa !53
  %419 = load i32, ptr %386, align 4, !tbaa !53
  %420 = sub nsw i32 %418, %419
  %421 = tail call i32 @llvm.abs.i32(i32 %420, i1 true)
  %422 = load i32, ptr %387, align 4, !tbaa !53
  %423 = sub nsw i32 %418, %422
  %424 = tail call i32 @llvm.abs.i32(i32 %423, i1 true)
  %425 = icmp ugt i32 %421, %424
  %426 = load ptr, ptr %388, align 8, !tbaa !67
  %427 = load ptr, ptr %426, align 8, !tbaa !26
  %428 = getelementptr inbounds ptr, ptr %427, i64 %405
  br i1 %425, label %429, label %522

429:                                              ; preds = %417
  %430 = load ptr, ptr %428, align 8, !tbaa !26
  %431 = getelementptr inbounds i64, ptr %430, i64 %409
  %432 = load i64, ptr %431, align 8, !tbaa !68
  %433 = icmp slt i64 %432, 0
  %434 = load i32, ptr @listXsize, align 4
  %435 = icmp sgt i32 %434, 1
  %436 = select i1 %433, i1 %435, i1 false
  %437 = select i1 %436, ptr %368, ptr %366
  %438 = icmp eq i64 %432, -1
  br i1 %438, label %508, label %439

439:                                              ; preds = %429
  %440 = load i32, ptr %389, align 8, !tbaa !70
  %441 = tail call i32 @llvm.smin.i32(i32 %440, i32 %434)
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %460

443:                                              ; preds = %439
  %444 = zext nneg i32 %441 to i64
  br label %448

445:                                              ; preds = %448
  %446 = add nuw nsw i64 %449, 1
  %447 = icmp eq i64 %446, %444
  br i1 %447, label %460, label %448

448:                                              ; preds = %443, %445
  %449 = phi i64 [ 0, %443 ], [ %446, %445 ]
  %450 = getelementptr inbounds [33 x i64], ptr %406, i64 0, i64 %449
  %451 = load i64, ptr %450, align 8, !tbaa !68
  %452 = icmp eq i64 %451, %432
  br i1 %452, label %453, label %445

453:                                              ; preds = %448
  %454 = select i1 %436, ptr %130, ptr %3
  %455 = getelementptr inbounds [33 x i32], ptr %454, i64 0, i64 %449
  %456 = load i32, ptr %455, align 4, !tbaa !20
  %457 = select i1 %436, ptr %394, ptr %141
  %458 = getelementptr inbounds [33 x i32], ptr %457, i64 0, i64 %449
  %459 = load i32, ptr %458, align 4, !tbaa !20
  br label %460

460:                                              ; preds = %445, %439, %453
  %461 = phi i32 [ %459, %453 ], [ 0, %439 ], [ 0, %445 ]
  %462 = phi i32 [ %456, %453 ], [ 256, %439 ], [ 256, %445 ]
  %463 = getelementptr inbounds i8, ptr %437, i64 6504
  %464 = load ptr, ptr %463, align 8, !tbaa !71
  %465 = load ptr, ptr %464, align 8, !tbaa !26
  %466 = getelementptr inbounds ptr, ptr %465, i64 %407
  %467 = load ptr, ptr %466, align 8, !tbaa !26
  %468 = getelementptr inbounds ptr, ptr %467, i64 %409
  %469 = load ptr, ptr %468, align 8, !tbaa !26
  %470 = load i16, ptr %469, align 2, !tbaa !72
  %471 = sext i16 %470 to i32
  %472 = mul nsw i32 %462, %471
  %473 = add nsw i32 %472, 32
  %474 = lshr i32 %473, 6
  %475 = trunc i32 %474 to i16
  %476 = load ptr, ptr %390, align 8, !tbaa !14
  %477 = load ptr, ptr %476, align 8, !tbaa !26
  %478 = getelementptr inbounds ptr, ptr %477, i64 %397
  %479 = load ptr, ptr %478, align 8, !tbaa !26
  %480 = getelementptr inbounds ptr, ptr %479, i64 %409
  %481 = load ptr, ptr %480, align 8, !tbaa !26
  store i16 %475, ptr %481, align 2, !tbaa !72
  %482 = getelementptr inbounds i8, ptr %469, i64 2
  %483 = load i16, ptr %482, align 2, !tbaa !72
  %484 = sext i16 %483 to i32
  %485 = mul nsw i32 %462, %484
  %486 = add nsw i32 %485, 32
  %487 = lshr i32 %486, 6
  %488 = trunc i32 %487 to i16
  %489 = getelementptr inbounds i8, ptr %481, i64 2
  store i16 %488, ptr %489, align 2, !tbaa !72
  %490 = load i16, ptr %469, align 2, !tbaa !72
  %491 = sext i16 %490 to i32
  %492 = mul nsw i32 %461, %491
  %493 = add nsw i32 %492, 32
  %494 = lshr i32 %493, 6
  %495 = trunc i32 %494 to i16
  %496 = getelementptr inbounds i8, ptr %476, i64 8
  %497 = load ptr, ptr %496, align 8, !tbaa !26
  %498 = getelementptr inbounds ptr, ptr %497, i64 %397
  %499 = load ptr, ptr %498, align 8, !tbaa !26
  %500 = getelementptr inbounds ptr, ptr %499, i64 %409
  %501 = load ptr, ptr %500, align 8, !tbaa !26
  store i16 %495, ptr %501, align 2, !tbaa !72
  %502 = load i16, ptr %482, align 2, !tbaa !72
  %503 = sext i16 %502 to i32
  %504 = mul nsw i32 %461, %503
  %505 = add nsw i32 %504, 32
  %506 = lshr i32 %505, 6
  %507 = trunc i32 %506 to i16
  br label %719

508:                                              ; preds = %429
  %509 = load ptr, ptr %390, align 8, !tbaa !14
  %510 = load ptr, ptr %509, align 8, !tbaa !26
  %511 = getelementptr inbounds ptr, ptr %510, i64 %397
  %512 = load ptr, ptr %511, align 8, !tbaa !26
  %513 = getelementptr inbounds ptr, ptr %512, i64 %409
  %514 = load ptr, ptr %513, align 8, !tbaa !26
  store i16 0, ptr %514, align 2, !tbaa !72
  %515 = getelementptr inbounds i8, ptr %514, i64 2
  store i16 0, ptr %515, align 2, !tbaa !72
  %516 = getelementptr inbounds i8, ptr %509, i64 8
  %517 = load ptr, ptr %516, align 8, !tbaa !26
  %518 = getelementptr inbounds ptr, ptr %517, i64 %397
  %519 = load ptr, ptr %518, align 8, !tbaa !26
  %520 = getelementptr inbounds ptr, ptr %519, i64 %409
  %521 = load ptr, ptr %520, align 8, !tbaa !26
  store i16 0, ptr %521, align 2, !tbaa !72
  br label %719

522:                                              ; preds = %417
  %523 = getelementptr inbounds i8, ptr %428, i64 32
  %524 = load ptr, ptr %523, align 8, !tbaa !26
  %525 = getelementptr inbounds i64, ptr %524, i64 %409
  %526 = load i64, ptr %525, align 8, !tbaa !68
  %527 = icmp slt i64 %526, 0
  %528 = load i32, ptr @listXsize, align 4
  %529 = icmp sgt i32 %528, 1
  %530 = select i1 %527, i1 %529, i1 false
  %531 = select i1 %530, ptr %369, ptr %367
  %532 = icmp eq i64 %526, -1
  br i1 %532, label %602, label %533

533:                                              ; preds = %522
  %534 = load i32, ptr %389, align 8, !tbaa !70
  %535 = tail call i32 @llvm.smin.i32(i32 %534, i32 %528)
  %536 = icmp sgt i32 %535, 0
  br i1 %536, label %537, label %554

537:                                              ; preds = %533
  %538 = zext nneg i32 %535 to i64
  br label %542

539:                                              ; preds = %542
  %540 = add nuw nsw i64 %543, 1
  %541 = icmp eq i64 %540, %538
  br i1 %541, label %554, label %542

542:                                              ; preds = %537, %539
  %543 = phi i64 [ 0, %537 ], [ %540, %539 ]
  %544 = getelementptr inbounds [33 x i64], ptr %406, i64 0, i64 %543
  %545 = load i64, ptr %544, align 8, !tbaa !68
  %546 = icmp eq i64 %545, %526
  br i1 %546, label %547, label %539

547:                                              ; preds = %542
  %548 = select i1 %530, ptr %130, ptr %3
  %549 = getelementptr inbounds [33 x i32], ptr %548, i64 0, i64 %543
  %550 = load i32, ptr %549, align 4, !tbaa !20
  %551 = select i1 %530, ptr %393, ptr %141
  %552 = getelementptr inbounds [33 x i32], ptr %551, i64 0, i64 %543
  %553 = load i32, ptr %552, align 4, !tbaa !20
  br label %554

554:                                              ; preds = %539, %533, %547
  %555 = phi i32 [ %553, %547 ], [ 0, %533 ], [ 0, %539 ]
  %556 = phi i32 [ %550, %547 ], [ 256, %533 ], [ 256, %539 ]
  %557 = getelementptr inbounds i8, ptr %531, i64 6504
  %558 = load ptr, ptr %557, align 8, !tbaa !71
  %559 = load ptr, ptr %558, align 8, !tbaa !26
  %560 = getelementptr inbounds ptr, ptr %559, i64 %407
  %561 = load ptr, ptr %560, align 8, !tbaa !26
  %562 = getelementptr inbounds ptr, ptr %561, i64 %409
  %563 = load ptr, ptr %562, align 8, !tbaa !26
  %564 = load i16, ptr %563, align 2, !tbaa !72
  %565 = sext i16 %564 to i32
  %566 = mul nsw i32 %556, %565
  %567 = add nsw i32 %566, 32
  %568 = lshr i32 %567, 6
  %569 = trunc i32 %568 to i16
  %570 = load ptr, ptr %390, align 8, !tbaa !14
  %571 = load ptr, ptr %570, align 8, !tbaa !26
  %572 = getelementptr inbounds ptr, ptr %571, i64 %397
  %573 = load ptr, ptr %572, align 8, !tbaa !26
  %574 = getelementptr inbounds ptr, ptr %573, i64 %409
  %575 = load ptr, ptr %574, align 8, !tbaa !26
  store i16 %569, ptr %575, align 2, !tbaa !72
  %576 = getelementptr inbounds i8, ptr %563, i64 2
  %577 = load i16, ptr %576, align 2, !tbaa !72
  %578 = sext i16 %577 to i32
  %579 = mul nsw i32 %556, %578
  %580 = add nsw i32 %579, 32
  %581 = lshr i32 %580, 6
  %582 = trunc i32 %581 to i16
  %583 = getelementptr inbounds i8, ptr %575, i64 2
  store i16 %582, ptr %583, align 2, !tbaa !72
  %584 = load i16, ptr %563, align 2, !tbaa !72
  %585 = sext i16 %584 to i32
  %586 = mul nsw i32 %555, %585
  %587 = add nsw i32 %586, 32
  %588 = lshr i32 %587, 6
  %589 = trunc i32 %588 to i16
  %590 = getelementptr inbounds i8, ptr %570, i64 8
  %591 = load ptr, ptr %590, align 8, !tbaa !26
  %592 = getelementptr inbounds ptr, ptr %591, i64 %397
  %593 = load ptr, ptr %592, align 8, !tbaa !26
  %594 = getelementptr inbounds ptr, ptr %593, i64 %409
  %595 = load ptr, ptr %594, align 8, !tbaa !26
  store i16 %589, ptr %595, align 2, !tbaa !72
  %596 = load i16, ptr %576, align 2, !tbaa !72
  %597 = sext i16 %596 to i32
  %598 = mul nsw i32 %555, %597
  %599 = add nsw i32 %598, 32
  %600 = lshr i32 %599, 6
  %601 = trunc i32 %600 to i16
  br label %719

602:                                              ; preds = %522
  %603 = load ptr, ptr %390, align 8, !tbaa !14
  %604 = load ptr, ptr %603, align 8, !tbaa !26
  %605 = getelementptr inbounds ptr, ptr %604, i64 %397
  %606 = load ptr, ptr %605, align 8, !tbaa !26
  %607 = getelementptr inbounds ptr, ptr %606, i64 %409
  %608 = load ptr, ptr %607, align 8, !tbaa !26
  store i16 0, ptr %608, align 2, !tbaa !72
  %609 = getelementptr inbounds i8, ptr %608, i64 2
  store i16 0, ptr %609, align 2, !tbaa !72
  %610 = getelementptr inbounds i8, ptr %603, i64 8
  %611 = load ptr, ptr %610, align 8, !tbaa !26
  %612 = getelementptr inbounds ptr, ptr %611, i64 %397
  %613 = load ptr, ptr %612, align 8, !tbaa !26
  %614 = getelementptr inbounds ptr, ptr %613, i64 %409
  %615 = load ptr, ptr %614, align 8, !tbaa !26
  store i16 0, ptr %615, align 2, !tbaa !72
  br label %719

616:                                              ; preds = %410, %408
  %617 = load ptr, ptr %388, align 8, !tbaa !67
  %618 = load ptr, ptr %617, align 8, !tbaa !26
  %619 = getelementptr inbounds ptr, ptr %618, i64 %397
  %620 = load ptr, ptr %619, align 8, !tbaa !26
  %621 = getelementptr inbounds i64, ptr %620, i64 %409
  %622 = load i64, ptr %621, align 8, !tbaa !68
  %623 = icmp slt i64 %622, 0
  %624 = load i32, ptr @listXsize, align 4
  %625 = icmp sgt i32 %624, 1
  %626 = select i1 %623, i1 %625, i1 false
  %627 = select i1 %626, ptr %369, ptr %370
  %628 = getelementptr inbounds i8, ptr %627, i64 6496
  %629 = load ptr, ptr %628, align 8, !tbaa !67
  %630 = load ptr, ptr %629, align 8, !tbaa !26
  %631 = getelementptr inbounds ptr, ptr %630, i64 %397
  %632 = load ptr, ptr %631, align 8, !tbaa !26
  %633 = getelementptr inbounds i64, ptr %632, i64 %409
  %634 = load i64, ptr %633, align 8, !tbaa !68
  %635 = icmp eq i64 %634, -1
  br i1 %635, label %705, label %636

636:                                              ; preds = %616
  %637 = load i32, ptr %389, align 8, !tbaa !70
  %638 = tail call i32 @llvm.smin.i32(i32 %637, i32 %624)
  %639 = icmp sgt i32 %638, 0
  br i1 %639, label %640, label %657

640:                                              ; preds = %636
  %641 = zext nneg i32 %638 to i64
  br label %645

642:                                              ; preds = %645
  %643 = add nuw nsw i64 %646, 1
  %644 = icmp eq i64 %643, %641
  br i1 %644, label %657, label %645

645:                                              ; preds = %640, %642
  %646 = phi i64 [ 0, %640 ], [ %643, %642 ]
  %647 = getelementptr inbounds [33 x i64], ptr %406, i64 0, i64 %646
  %648 = load i64, ptr %647, align 8, !tbaa !68
  %649 = icmp eq i64 %648, %634
  br i1 %649, label %650, label %642

650:                                              ; preds = %645
  %651 = select i1 %626, ptr %130, ptr %3
  %652 = getelementptr inbounds [33 x i32], ptr %651, i64 0, i64 %646
  %653 = load i32, ptr %652, align 4, !tbaa !20
  %654 = select i1 %626, ptr %395, ptr %141
  %655 = getelementptr inbounds [33 x i32], ptr %654, i64 0, i64 %646
  %656 = load i32, ptr %655, align 4, !tbaa !20
  br label %657

657:                                              ; preds = %642, %636, %650
  %658 = phi i32 [ %656, %650 ], [ 0, %636 ], [ 0, %642 ]
  %659 = phi i32 [ %653, %650 ], [ 256, %636 ], [ 256, %642 ]
  %660 = getelementptr inbounds i8, ptr %627, i64 6504
  %661 = load ptr, ptr %660, align 8, !tbaa !71
  %662 = load ptr, ptr %661, align 8, !tbaa !26
  %663 = getelementptr inbounds ptr, ptr %662, i64 %397
  %664 = load ptr, ptr %663, align 8, !tbaa !26
  %665 = getelementptr inbounds ptr, ptr %664, i64 %409
  %666 = load ptr, ptr %665, align 8, !tbaa !26
  %667 = load i16, ptr %666, align 2, !tbaa !72
  %668 = sext i16 %667 to i32
  %669 = mul nsw i32 %659, %668
  %670 = add nsw i32 %669, 32
  %671 = lshr i32 %670, 6
  %672 = trunc i32 %671 to i16
  %673 = load ptr, ptr %390, align 8, !tbaa !14
  %674 = load ptr, ptr %673, align 8, !tbaa !26
  %675 = getelementptr inbounds ptr, ptr %674, i64 %397
  %676 = load ptr, ptr %675, align 8, !tbaa !26
  %677 = getelementptr inbounds ptr, ptr %676, i64 %409
  %678 = load ptr, ptr %677, align 8, !tbaa !26
  store i16 %672, ptr %678, align 2, !tbaa !72
  %679 = getelementptr inbounds i8, ptr %666, i64 2
  %680 = load i16, ptr %679, align 2, !tbaa !72
  %681 = sext i16 %680 to i32
  %682 = mul nsw i32 %659, %681
  %683 = add nsw i32 %682, 32
  %684 = lshr i32 %683, 6
  %685 = trunc i32 %684 to i16
  %686 = getelementptr inbounds i8, ptr %678, i64 2
  store i16 %685, ptr %686, align 2, !tbaa !72
  %687 = load i16, ptr %666, align 2, !tbaa !72
  %688 = sext i16 %687 to i32
  %689 = mul nsw i32 %658, %688
  %690 = add nsw i32 %689, 32
  %691 = lshr i32 %690, 6
  %692 = trunc i32 %691 to i16
  %693 = getelementptr inbounds i8, ptr %673, i64 8
  %694 = load ptr, ptr %693, align 8, !tbaa !26
  %695 = getelementptr inbounds ptr, ptr %694, i64 %397
  %696 = load ptr, ptr %695, align 8, !tbaa !26
  %697 = getelementptr inbounds ptr, ptr %696, i64 %409
  %698 = load ptr, ptr %697, align 8, !tbaa !26
  store i16 %692, ptr %698, align 2, !tbaa !72
  %699 = load i16, ptr %679, align 2, !tbaa !72
  %700 = sext i16 %699 to i32
  %701 = mul nsw i32 %658, %700
  %702 = add nsw i32 %701, 32
  %703 = lshr i32 %702, 6
  %704 = trunc i32 %703 to i16
  br label %719

705:                                              ; preds = %616
  %706 = load ptr, ptr %390, align 8, !tbaa !14
  %707 = load ptr, ptr %706, align 8, !tbaa !26
  %708 = getelementptr inbounds ptr, ptr %707, i64 %397
  %709 = load ptr, ptr %708, align 8, !tbaa !26
  %710 = getelementptr inbounds ptr, ptr %709, i64 %409
  %711 = load ptr, ptr %710, align 8, !tbaa !26
  store i16 0, ptr %711, align 2, !tbaa !72
  %712 = getelementptr inbounds i8, ptr %711, i64 2
  store i16 0, ptr %712, align 2, !tbaa !72
  %713 = getelementptr inbounds i8, ptr %706, i64 8
  %714 = load ptr, ptr %713, align 8, !tbaa !26
  %715 = getelementptr inbounds ptr, ptr %714, i64 %397
  %716 = load ptr, ptr %715, align 8, !tbaa !26
  %717 = getelementptr inbounds ptr, ptr %716, i64 %409
  %718 = load ptr, ptr %717, align 8, !tbaa !26
  store i16 0, ptr %718, align 2, !tbaa !72
  br label %719

719:                                              ; preds = %554, %602, %460, %508, %705, %657
  %720 = phi ptr [ %595, %554 ], [ %615, %602 ], [ %501, %460 ], [ %521, %508 ], [ %718, %705 ], [ %698, %657 ]
  %721 = phi i16 [ %601, %554 ], [ 0, %602 ], [ %507, %460 ], [ 0, %508 ], [ 0, %705 ], [ %704, %657 ]
  %722 = getelementptr inbounds i8, ptr %720, i64 2
  store i16 %721, ptr %722, align 2, !tbaa !72
  %723 = add nuw nsw i64 %409, 1
  %724 = icmp eq i64 %723, %392
  br i1 %724, label %725, label %408

725:                                              ; preds = %719, %396
  %726 = add nuw nsw i64 %397, 1
  %727 = icmp eq i64 %726, %391
  br i1 %727, label %728, label %396

728:                                              ; preds = %725, %375, %363
  %729 = getelementptr inbounds i8, ptr %4, i64 28
  %730 = load i32, ptr %729, align 4, !tbaa !57
  %731 = icmp eq i32 %730, 0
  %732 = or i32 %730, %365
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %1132, label %734

734:                                              ; preds = %728
  %735 = getelementptr inbounds i8, ptr %370, i64 6396
  %736 = load i32, ptr %735, align 4, !tbaa !63
  %737 = icmp sgt i32 %736, 7
  br i1 %737, label %738, label %1132

738:                                              ; preds = %734
  %739 = lshr i32 %736, 3
  %740 = getelementptr inbounds i8, ptr %370, i64 6392
  %741 = load i32, ptr %740, align 8, !tbaa !64
  %742 = sdiv i32 %741, 4
  %743 = icmp sgt i32 %741, 3
  %744 = getelementptr inbounds i8, ptr %367, i64 6496
  %745 = getelementptr inbounds i8, ptr %4, i64 89408
  %746 = getelementptr inbounds i8, ptr %0, i64 32
  %747 = getelementptr inbounds i8, ptr %370, i64 6520
  %748 = getelementptr inbounds i8, ptr %366, i64 6496
  %749 = getelementptr inbounds i8, ptr %0, i64 24
  %750 = getelementptr inbounds i8, ptr %370, i64 6496
  %751 = getelementptr inbounds i8, ptr %0, i64 16
  %752 = zext nneg i32 %739 to i64
  %753 = zext nneg i32 %742 to i64
  %754 = getelementptr inbounds i8, ptr %3, i64 1320
  %755 = getelementptr inbounds i8, ptr %3, i64 1452
  %756 = getelementptr inbounds i8, ptr %3, i64 1056
  %757 = getelementptr inbounds i8, ptr %3, i64 1188
  %758 = getelementptr inbounds i8, ptr %3, i64 924
  br label %759

759:                                              ; preds = %738, %1129
  %760 = phi i64 [ 0, %738 ], [ %1130, %1129 ]
  br i1 %743, label %761, label %1129

761:                                              ; preds = %759
  %762 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 16), align 4
  %763 = load ptr, ptr @enc_picture, align 8
  %764 = getelementptr inbounds i8, ptr %763, i64 1080
  %765 = shl nuw nsw i64 %760, 1
  %766 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 8), align 4
  %767 = getelementptr inbounds i8, ptr %763, i64 552
  %768 = getelementptr inbounds i8, ptr %763, i64 24
  br label %769

769:                                              ; preds = %761, %1126
  %770 = phi i64 [ 0, %761 ], [ %1127, %1126 ]
  %771 = load i32, ptr @listXsize, align 4
  %772 = icmp sgt i32 %771, 1
  br i1 %364, label %773, label %876

773:                                              ; preds = %769
  %774 = load ptr, ptr %750, align 8, !tbaa !67
  %775 = load ptr, ptr %774, align 8, !tbaa !26
  %776 = getelementptr inbounds ptr, ptr %775, i64 %760
  %777 = load ptr, ptr %776, align 8, !tbaa !26
  %778 = getelementptr inbounds i64, ptr %777, i64 %770
  %779 = load i64, ptr %778, align 8, !tbaa !68
  %780 = icmp slt i64 %779, 0
  %781 = select i1 %780, i1 %772, i1 false
  %782 = select i1 %781, ptr %369, ptr %370
  %783 = getelementptr inbounds i8, ptr %782, i64 6496
  %784 = load ptr, ptr %783, align 8, !tbaa !67
  %785 = load ptr, ptr %784, align 8, !tbaa !26
  %786 = getelementptr inbounds ptr, ptr %785, i64 %760
  %787 = load ptr, ptr %786, align 8, !tbaa !26
  %788 = getelementptr inbounds i64, ptr %787, i64 %770
  %789 = load i64, ptr %788, align 8, !tbaa !68
  %790 = icmp eq i64 %789, -1
  br i1 %790, label %861, label %791

791:                                              ; preds = %773
  %792 = load i32, ptr %745, align 8, !tbaa !70
  %793 = tail call i32 @llvm.smin.i32(i32 %792, i32 %771)
  %794 = icmp sgt i32 %793, 0
  br i1 %794, label %795, label %812

795:                                              ; preds = %791
  %796 = zext nneg i32 %793 to i64
  br label %800

797:                                              ; preds = %800
  %798 = add nuw nsw i64 %801, 1
  %799 = icmp eq i64 %798, %796
  br i1 %799, label %812, label %800

800:                                              ; preds = %795, %797
  %801 = phi i64 [ 0, %795 ], [ %798, %797 ]
  %802 = getelementptr inbounds [33 x i64], ptr %768, i64 0, i64 %801
  %803 = load i64, ptr %802, align 8, !tbaa !68
  %804 = icmp eq i64 %803, %789
  br i1 %804, label %805, label %797

805:                                              ; preds = %800
  %806 = select i1 %781, ptr %130, ptr %3
  %807 = getelementptr inbounds [33 x i32], ptr %806, i64 0, i64 %801
  %808 = load i32, ptr %807, align 4, !tbaa !20
  %809 = select i1 %781, ptr %758, ptr %141
  %810 = getelementptr inbounds [33 x i32], ptr %809, i64 0, i64 %801
  %811 = load i32, ptr %810, align 4, !tbaa !20
  br label %812

812:                                              ; preds = %797, %791, %805
  %813 = phi i32 [ %811, %805 ], [ 0, %791 ], [ 0, %797 ]
  %814 = phi i32 [ %808, %805 ], [ 256, %791 ], [ 256, %797 ]
  %815 = getelementptr inbounds i8, ptr %782, i64 6504
  %816 = load ptr, ptr %815, align 8, !tbaa !71
  %817 = load ptr, ptr %816, align 8, !tbaa !26
  %818 = getelementptr inbounds ptr, ptr %817, i64 %760
  %819 = load ptr, ptr %818, align 8, !tbaa !26
  %820 = getelementptr inbounds ptr, ptr %819, i64 %770
  %821 = load ptr, ptr %820, align 8, !tbaa !26
  %822 = load i16, ptr %821, align 2, !tbaa !72
  %823 = sext i16 %822 to i32
  %824 = mul nsw i32 %814, %823
  %825 = add nsw i32 %824, 32
  %826 = lshr i32 %825, 6
  %827 = trunc i32 %826 to i16
  %828 = load ptr, ptr %751, align 8, !tbaa !14
  %829 = load ptr, ptr %828, align 8, !tbaa !26
  %830 = getelementptr inbounds ptr, ptr %829, i64 %760
  %831 = load ptr, ptr %830, align 8, !tbaa !26
  %832 = getelementptr inbounds ptr, ptr %831, i64 %770
  %833 = load ptr, ptr %832, align 8, !tbaa !26
  store i16 %827, ptr %833, align 2, !tbaa !72
  %834 = getelementptr inbounds i8, ptr %821, i64 2
  %835 = load i16, ptr %834, align 2, !tbaa !72
  %836 = sext i16 %835 to i32
  %837 = mul nsw i32 %814, %836
  %838 = add nsw i32 %837, 32
  %839 = lshr i32 %838, 6
  %840 = trunc i32 %839 to i16
  %841 = getelementptr inbounds i8, ptr %833, i64 2
  store i16 %840, ptr %841, align 2, !tbaa !72
  %842 = load i16, ptr %821, align 2, !tbaa !72
  %843 = sext i16 %842 to i32
  %844 = mul nsw i32 %813, %843
  %845 = add nsw i32 %844, 32
  %846 = lshr i32 %845, 6
  %847 = trunc i32 %846 to i16
  %848 = getelementptr inbounds i8, ptr %828, i64 8
  %849 = load ptr, ptr %848, align 8, !tbaa !26
  %850 = getelementptr inbounds ptr, ptr %849, i64 %760
  %851 = load ptr, ptr %850, align 8, !tbaa !26
  %852 = getelementptr inbounds ptr, ptr %851, i64 %770
  %853 = load ptr, ptr %852, align 8, !tbaa !26
  store i16 %847, ptr %853, align 2, !tbaa !72
  %854 = load i16, ptr %834, align 2, !tbaa !72
  %855 = sext i16 %854 to i32
  %856 = mul nsw i32 %813, %855
  %857 = add nsw i32 %856, 32
  %858 = lshr i32 %857, 6
  %859 = trunc i32 %858 to i16
  %860 = getelementptr inbounds i8, ptr %853, i64 2
  store i16 %859, ptr %860, align 2, !tbaa !72
  br label %1126

861:                                              ; preds = %773
  %862 = load ptr, ptr %751, align 8, !tbaa !14
  %863 = load ptr, ptr %862, align 8, !tbaa !26
  %864 = getelementptr inbounds ptr, ptr %863, i64 %760
  %865 = load ptr, ptr %864, align 8, !tbaa !26
  %866 = getelementptr inbounds ptr, ptr %865, i64 %770
  %867 = load ptr, ptr %866, align 8, !tbaa !26
  store i16 0, ptr %867, align 2, !tbaa !72
  %868 = getelementptr inbounds i8, ptr %867, i64 2
  store i16 0, ptr %868, align 2, !tbaa !72
  %869 = getelementptr inbounds i8, ptr %862, i64 8
  %870 = load ptr, ptr %869, align 8, !tbaa !26
  %871 = getelementptr inbounds ptr, ptr %870, i64 %760
  %872 = load ptr, ptr %871, align 8, !tbaa !26
  %873 = getelementptr inbounds ptr, ptr %872, i64 %770
  %874 = load ptr, ptr %873, align 8, !tbaa !26
  store i16 0, ptr %874, align 2, !tbaa !72
  %875 = getelementptr inbounds i8, ptr %874, i64 2
  store i16 0, ptr %875, align 2, !tbaa !72
  br label %1126

876:                                              ; preds = %769
  %877 = load ptr, ptr %744, align 8, !tbaa !67
  %878 = load ptr, ptr %877, align 8, !tbaa !26
  %879 = getelementptr inbounds ptr, ptr %878, i64 %760
  %880 = load ptr, ptr %879, align 8, !tbaa !26
  %881 = getelementptr inbounds i64, ptr %880, i64 %770
  %882 = load i64, ptr %881, align 8, !tbaa !68
  %883 = icmp slt i64 %882, 0
  %884 = select i1 %883, i1 %772, i1 false
  %885 = select i1 %884, ptr %369, ptr %367
  %886 = getelementptr inbounds i8, ptr %885, i64 6496
  %887 = load ptr, ptr %886, align 8, !tbaa !67
  %888 = load ptr, ptr %887, align 8, !tbaa !26
  %889 = getelementptr inbounds ptr, ptr %888, i64 %760
  %890 = load ptr, ptr %889, align 8, !tbaa !26
  %891 = getelementptr inbounds i64, ptr %890, i64 %770
  %892 = load i64, ptr %891, align 8, !tbaa !68
  %893 = icmp eq i64 %892, -1
  br i1 %893, label %964, label %894

894:                                              ; preds = %876
  %895 = load i32, ptr %745, align 8, !tbaa !70
  %896 = shl nsw i32 %895, 1
  %897 = tail call i32 @llvm.smin.i32(i32 %896, i32 %762)
  %898 = icmp sgt i32 %897, 0
  br i1 %898, label %899, label %916

899:                                              ; preds = %894
  %900 = zext nneg i32 %897 to i64
  br label %904

901:                                              ; preds = %904
  %902 = add nuw nsw i64 %905, 1
  %903 = icmp eq i64 %902, %900
  br i1 %903, label %916, label %904

904:                                              ; preds = %899, %901
  %905 = phi i64 [ 0, %899 ], [ %902, %901 ]
  %906 = getelementptr inbounds [33 x i64], ptr %764, i64 0, i64 %905
  %907 = load i64, ptr %906, align 8, !tbaa !68
  %908 = icmp eq i64 %907, %892
  br i1 %908, label %909, label %901

909:                                              ; preds = %904
  %910 = select i1 %884, ptr %754, ptr %177
  %911 = getelementptr inbounds [33 x i32], ptr %910, i64 0, i64 %905
  %912 = load i32, ptr %911, align 4, !tbaa !20
  %913 = select i1 %884, ptr %755, ptr %189
  %914 = getelementptr inbounds [33 x i32], ptr %913, i64 0, i64 %905
  %915 = load i32, ptr %914, align 4, !tbaa !20
  br label %916

916:                                              ; preds = %901, %894, %909
  %917 = phi i32 [ %915, %909 ], [ 0, %894 ], [ 0, %901 ]
  %918 = phi i32 [ %912, %909 ], [ 256, %894 ], [ 256, %901 ]
  %919 = getelementptr inbounds i8, ptr %885, i64 6504
  %920 = load ptr, ptr %919, align 8, !tbaa !71
  %921 = load ptr, ptr %920, align 8, !tbaa !26
  %922 = getelementptr inbounds ptr, ptr %921, i64 %760
  %923 = load ptr, ptr %922, align 8, !tbaa !26
  %924 = getelementptr inbounds ptr, ptr %923, i64 %770
  %925 = load ptr, ptr %924, align 8, !tbaa !26
  %926 = load i16, ptr %925, align 2, !tbaa !72
  %927 = sext i16 %926 to i32
  %928 = mul nsw i32 %918, %927
  %929 = add nsw i32 %928, 32
  %930 = lshr i32 %929, 6
  %931 = trunc i32 %930 to i16
  %932 = load ptr, ptr %746, align 8, !tbaa !16
  %933 = load ptr, ptr %932, align 8, !tbaa !26
  %934 = getelementptr inbounds ptr, ptr %933, i64 %760
  %935 = load ptr, ptr %934, align 8, !tbaa !26
  %936 = getelementptr inbounds ptr, ptr %935, i64 %770
  %937 = load ptr, ptr %936, align 8, !tbaa !26
  store i16 %931, ptr %937, align 2, !tbaa !72
  %938 = getelementptr inbounds i8, ptr %925, i64 2
  %939 = load i16, ptr %938, align 2, !tbaa !72
  %940 = sext i16 %939 to i32
  %941 = mul nsw i32 %918, %940
  %942 = add nsw i32 %941, 32
  %943 = lshr i32 %942, 6
  %944 = trunc i32 %943 to i16
  %945 = getelementptr inbounds i8, ptr %937, i64 2
  store i16 %944, ptr %945, align 2, !tbaa !72
  %946 = load i16, ptr %925, align 2, !tbaa !72
  %947 = sext i16 %946 to i32
  %948 = mul nsw i32 %917, %947
  %949 = add nsw i32 %948, 32
  %950 = lshr i32 %949, 6
  %951 = trunc i32 %950 to i16
  %952 = getelementptr inbounds i8, ptr %932, i64 8
  %953 = load ptr, ptr %952, align 8, !tbaa !26
  %954 = getelementptr inbounds ptr, ptr %953, i64 %760
  %955 = load ptr, ptr %954, align 8, !tbaa !26
  %956 = getelementptr inbounds ptr, ptr %955, i64 %770
  %957 = load ptr, ptr %956, align 8, !tbaa !26
  store i16 %951, ptr %957, align 2, !tbaa !72
  %958 = load i16, ptr %938, align 2, !tbaa !72
  %959 = sext i16 %958 to i32
  %960 = mul nsw i32 %917, %959
  %961 = add nsw i32 %960, 32
  %962 = lshr i32 %961, 6
  %963 = trunc i32 %962 to i16
  br label %978

964:                                              ; preds = %876
  %965 = load ptr, ptr %746, align 8, !tbaa !16
  %966 = load ptr, ptr %965, align 8, !tbaa !26
  %967 = getelementptr inbounds ptr, ptr %966, i64 %760
  %968 = load ptr, ptr %967, align 8, !tbaa !26
  %969 = getelementptr inbounds ptr, ptr %968, i64 %770
  %970 = load ptr, ptr %969, align 8, !tbaa !26
  store i16 0, ptr %970, align 2, !tbaa !72
  %971 = getelementptr inbounds i8, ptr %970, i64 2
  store i16 0, ptr %971, align 2, !tbaa !72
  %972 = getelementptr inbounds i8, ptr %965, i64 8
  %973 = load ptr, ptr %972, align 8, !tbaa !26
  %974 = getelementptr inbounds ptr, ptr %973, i64 %760
  %975 = load ptr, ptr %974, align 8, !tbaa !26
  %976 = getelementptr inbounds ptr, ptr %975, i64 %770
  %977 = load ptr, ptr %976, align 8, !tbaa !26
  store i16 0, ptr %977, align 2, !tbaa !72
  br label %978

978:                                              ; preds = %964, %916
  %979 = phi ptr [ %977, %964 ], [ %957, %916 ]
  %980 = phi i16 [ 0, %964 ], [ %963, %916 ]
  %981 = phi ptr [ %970, %964 ], [ %937, %916 ]
  %982 = getelementptr inbounds i8, ptr %979, i64 2
  store i16 %980, ptr %982, align 2, !tbaa !72
  %983 = load ptr, ptr %747, align 8, !tbaa !65
  %984 = getelementptr inbounds ptr, ptr %983, i64 %765
  %985 = load ptr, ptr %984, align 8, !tbaa !26
  %986 = getelementptr inbounds i8, ptr %985, i64 %770
  %987 = load i8, ptr %986, align 1, !tbaa !66
  %988 = icmp eq i8 %987, 0
  br i1 %988, label %989, label %1002

989:                                              ; preds = %978
  %990 = getelementptr inbounds i8, ptr %981, i64 2
  %991 = load i16, ptr %990, align 2, !tbaa !72
  %992 = sext i16 %991 to i32
  %993 = add nsw i32 %992, 1
  %994 = lshr i32 %993, 1
  %995 = trunc i32 %994 to i16
  store i16 %995, ptr %990, align 2, !tbaa !72
  %996 = getelementptr inbounds i8, ptr %979, i64 2
  %997 = load i16, ptr %996, align 2, !tbaa !72
  %998 = sext i16 %997 to i32
  %999 = add nsw i32 %998, 1
  %1000 = lshr i32 %999, 1
  %1001 = trunc i32 %1000 to i16
  store i16 %1001, ptr %996, align 2, !tbaa !72
  br label %1002

1002:                                             ; preds = %989, %978
  %1003 = load ptr, ptr %748, align 8, !tbaa !67
  %1004 = load ptr, ptr %1003, align 8, !tbaa !26
  %1005 = getelementptr inbounds ptr, ptr %1004, i64 %760
  %1006 = load ptr, ptr %1005, align 8, !tbaa !26
  %1007 = getelementptr inbounds i64, ptr %1006, i64 %770
  %1008 = load i64, ptr %1007, align 8, !tbaa !68
  %1009 = icmp slt i64 %1008, 0
  %1010 = load i32, ptr @listXsize, align 4
  %1011 = icmp sgt i32 %1010, 1
  %1012 = select i1 %1009, i1 %1011, i1 false
  %1013 = select i1 %1012, ptr %368, ptr %366
  %1014 = getelementptr inbounds i8, ptr %1013, i64 6496
  %1015 = load ptr, ptr %1014, align 8, !tbaa !67
  %1016 = load ptr, ptr %1015, align 8, !tbaa !26
  %1017 = getelementptr inbounds ptr, ptr %1016, i64 %760
  %1018 = load ptr, ptr %1017, align 8, !tbaa !26
  %1019 = getelementptr inbounds i64, ptr %1018, i64 %770
  %1020 = load i64, ptr %1019, align 8, !tbaa !68
  %1021 = icmp eq i64 %1020, -1
  br i1 %1021, label %1092, label %1022

1022:                                             ; preds = %1002
  %1023 = load i32, ptr %745, align 8, !tbaa !70
  %1024 = shl nsw i32 %1023, 1
  %1025 = tail call i32 @llvm.smin.i32(i32 %1024, i32 %766)
  %1026 = icmp sgt i32 %1025, 0
  br i1 %1026, label %1027, label %1044

1027:                                             ; preds = %1022
  %1028 = zext nneg i32 %1025 to i64
  br label %1032

1029:                                             ; preds = %1032
  %1030 = add nuw nsw i64 %1033, 1
  %1031 = icmp eq i64 %1030, %1028
  br i1 %1031, label %1044, label %1032

1032:                                             ; preds = %1027, %1029
  %1033 = phi i64 [ 0, %1027 ], [ %1030, %1029 ]
  %1034 = getelementptr inbounds [33 x i64], ptr %767, i64 0, i64 %1033
  %1035 = load i64, ptr %1034, align 8, !tbaa !68
  %1036 = icmp eq i64 %1035, %1020
  br i1 %1036, label %1037, label %1029

1037:                                             ; preds = %1032
  %1038 = select i1 %1012, ptr %756, ptr %153
  %1039 = getelementptr inbounds [33 x i32], ptr %1038, i64 0, i64 %1033
  %1040 = load i32, ptr %1039, align 4, !tbaa !20
  %1041 = select i1 %1012, ptr %757, ptr %165
  %1042 = getelementptr inbounds [33 x i32], ptr %1041, i64 0, i64 %1033
  %1043 = load i32, ptr %1042, align 4, !tbaa !20
  br label %1044

1044:                                             ; preds = %1029, %1022, %1037
  %1045 = phi i32 [ %1043, %1037 ], [ 0, %1022 ], [ 0, %1029 ]
  %1046 = phi i32 [ %1040, %1037 ], [ 256, %1022 ], [ 256, %1029 ]
  %1047 = getelementptr inbounds i8, ptr %1013, i64 6504
  %1048 = load ptr, ptr %1047, align 8, !tbaa !71
  %1049 = load ptr, ptr %1048, align 8, !tbaa !26
  %1050 = getelementptr inbounds ptr, ptr %1049, i64 %760
  %1051 = load ptr, ptr %1050, align 8, !tbaa !26
  %1052 = getelementptr inbounds ptr, ptr %1051, i64 %770
  %1053 = load ptr, ptr %1052, align 8, !tbaa !26
  %1054 = load i16, ptr %1053, align 2, !tbaa !72
  %1055 = sext i16 %1054 to i32
  %1056 = mul nsw i32 %1046, %1055
  %1057 = add nsw i32 %1056, 32
  %1058 = lshr i32 %1057, 6
  %1059 = trunc i32 %1058 to i16
  %1060 = load ptr, ptr %749, align 8, !tbaa !15
  %1061 = load ptr, ptr %1060, align 8, !tbaa !26
  %1062 = getelementptr inbounds ptr, ptr %1061, i64 %760
  %1063 = load ptr, ptr %1062, align 8, !tbaa !26
  %1064 = getelementptr inbounds ptr, ptr %1063, i64 %770
  %1065 = load ptr, ptr %1064, align 8, !tbaa !26
  store i16 %1059, ptr %1065, align 2, !tbaa !72
  %1066 = getelementptr inbounds i8, ptr %1053, i64 2
  %1067 = load i16, ptr %1066, align 2, !tbaa !72
  %1068 = sext i16 %1067 to i32
  %1069 = mul nsw i32 %1046, %1068
  %1070 = add nsw i32 %1069, 32
  %1071 = lshr i32 %1070, 6
  %1072 = trunc i32 %1071 to i16
  %1073 = getelementptr inbounds i8, ptr %1065, i64 2
  store i16 %1072, ptr %1073, align 2, !tbaa !72
  %1074 = load i16, ptr %1053, align 2, !tbaa !72
  %1075 = sext i16 %1074 to i32
  %1076 = mul nsw i32 %1045, %1075
  %1077 = add nsw i32 %1076, 32
  %1078 = lshr i32 %1077, 6
  %1079 = trunc i32 %1078 to i16
  %1080 = getelementptr inbounds i8, ptr %1060, i64 8
  %1081 = load ptr, ptr %1080, align 8, !tbaa !26
  %1082 = getelementptr inbounds ptr, ptr %1081, i64 %760
  %1083 = load ptr, ptr %1082, align 8, !tbaa !26
  %1084 = getelementptr inbounds ptr, ptr %1083, i64 %770
  %1085 = load ptr, ptr %1084, align 8, !tbaa !26
  store i16 %1079, ptr %1085, align 2, !tbaa !72
  %1086 = load i16, ptr %1066, align 2, !tbaa !72
  %1087 = sext i16 %1086 to i32
  %1088 = mul nsw i32 %1045, %1087
  %1089 = add nsw i32 %1088, 32
  %1090 = lshr i32 %1089, 6
  %1091 = trunc i32 %1090 to i16
  br label %1106

1092:                                             ; preds = %1002
  %1093 = load ptr, ptr %749, align 8, !tbaa !15
  %1094 = load ptr, ptr %1093, align 8, !tbaa !26
  %1095 = getelementptr inbounds ptr, ptr %1094, i64 %760
  %1096 = load ptr, ptr %1095, align 8, !tbaa !26
  %1097 = getelementptr inbounds ptr, ptr %1096, i64 %770
  %1098 = load ptr, ptr %1097, align 8, !tbaa !26
  store i16 0, ptr %1098, align 2, !tbaa !72
  %1099 = getelementptr inbounds i8, ptr %1098, i64 2
  store i16 0, ptr %1099, align 2, !tbaa !72
  %1100 = getelementptr inbounds i8, ptr %1093, i64 8
  %1101 = load ptr, ptr %1100, align 8, !tbaa !26
  %1102 = getelementptr inbounds ptr, ptr %1101, i64 %760
  %1103 = load ptr, ptr %1102, align 8, !tbaa !26
  %1104 = getelementptr inbounds ptr, ptr %1103, i64 %770
  %1105 = load ptr, ptr %1104, align 8, !tbaa !26
  store i16 0, ptr %1105, align 2, !tbaa !72
  br label %1106

1106:                                             ; preds = %1092, %1044
  %1107 = phi ptr [ %1105, %1092 ], [ %1085, %1044 ]
  %1108 = phi i16 [ 0, %1092 ], [ %1091, %1044 ]
  %1109 = phi ptr [ %1098, %1092 ], [ %1065, %1044 ]
  %1110 = getelementptr inbounds i8, ptr %1107, i64 2
  store i16 %1108, ptr %1110, align 2, !tbaa !72
  %1111 = load i8, ptr %986, align 1, !tbaa !66
  %1112 = icmp eq i8 %1111, 0
  br i1 %1112, label %1113, label %1126

1113:                                             ; preds = %1106
  %1114 = getelementptr inbounds i8, ptr %1109, i64 2
  %1115 = load i16, ptr %1114, align 2, !tbaa !72
  %1116 = sext i16 %1115 to i32
  %1117 = add nsw i32 %1116, 1
  %1118 = lshr i32 %1117, 1
  %1119 = trunc i32 %1118 to i16
  store i16 %1119, ptr %1114, align 2, !tbaa !72
  %1120 = getelementptr inbounds i8, ptr %1107, i64 2
  %1121 = load i16, ptr %1120, align 2, !tbaa !72
  %1122 = sext i16 %1121 to i32
  %1123 = add nsw i32 %1122, 1
  %1124 = lshr i32 %1123, 1
  %1125 = trunc i32 %1124 to i16
  store i16 %1125, ptr %1120, align 2, !tbaa !72
  br label %1126

1126:                                             ; preds = %861, %812, %1113, %1106
  %1127 = add nuw nsw i64 %770, 1
  %1128 = icmp eq i64 %1127, %753
  br i1 %1128, label %1129, label %769

1129:                                             ; preds = %1126, %759
  %1130 = add nuw nsw i64 %760, 1
  %1131 = icmp eq i64 %1130, %752
  br i1 %1131, label %1132, label %759

1132:                                             ; preds = %1129, %734, %728
  br i1 %374, label %1133, label %1339

1133:                                             ; preds = %1132
  br i1 %731, label %1134, label %1474

1134:                                             ; preds = %1133
  %1135 = getelementptr inbounds i8, ptr %370, i64 6396
  %1136 = load i32, ptr %1135, align 4, !tbaa !63
  %1137 = ashr i32 %1136, 2
  %1138 = icmp sgt i32 %1137, 0
  br i1 %1138, label %1139, label %1556

1139:                                             ; preds = %1134
  %1140 = getelementptr inbounds i8, ptr %370, i64 6392
  %1141 = load i32, ptr %1140, align 8, !tbaa !64
  %1142 = ashr i32 %1141, 2
  %1143 = icmp sgt i32 %1142, 0
  %1144 = getelementptr inbounds i8, ptr %370, i64 6520
  %1145 = getelementptr inbounds i8, ptr %370, i64 6496
  %1146 = getelementptr inbounds i8, ptr %4, i64 89408
  %1147 = getelementptr inbounds i8, ptr %0, i64 16
  %1148 = zext nneg i32 %1137 to i64
  %1149 = zext nneg i32 %1142 to i64
  %1150 = getelementptr inbounds i8, ptr %3, i64 924
  br label %1151

1151:                                             ; preds = %1139, %1336
  %1152 = phi i64 [ 0, %1139 ], [ %1337, %1336 ]
  br i1 %1143, label %1153, label %1336

1153:                                             ; preds = %1151
  %1154 = trunc nuw nsw i64 %1152 to i32
  %1155 = lshr i32 %1154, 1
  %1156 = and i32 %1155, 1073741820
  %1157 = add nuw nsw i32 %1156, %1155
  %1158 = load ptr, ptr %1144, align 8, !tbaa !65
  %1159 = getelementptr inbounds ptr, ptr %1158, i64 %1152
  %1160 = load ptr, ptr %1159, align 8, !tbaa !26
  %1161 = zext nneg i32 %1157 to i64
  %1162 = load ptr, ptr @enc_picture, align 8
  %1163 = getelementptr inbounds i8, ptr %1162, i64 24
  %1164 = getelementptr inbounds i8, ptr %1162, i64 4
  %1165 = zext nneg i32 %1155 to i64
  br label %1166

1166:                                             ; preds = %1153, %1333
  %1167 = phi i64 [ 0, %1153 ], [ %1334, %1333 ]
  %1168 = getelementptr inbounds i8, ptr %1160, i64 %1167
  %1169 = load i8, ptr %1168, align 1, !tbaa !66
  %1170 = icmp eq i8 %1169, 0
  br i1 %1170, label %1333, label %1171

1171:                                             ; preds = %1166
  %1172 = load ptr, ptr %1145, align 8, !tbaa !67
  %1173 = load ptr, ptr %1172, align 8, !tbaa !26
  %1174 = getelementptr inbounds ptr, ptr %1173, i64 %1161
  %1175 = load ptr, ptr %1174, align 8, !tbaa !26
  %1176 = getelementptr inbounds i64, ptr %1175, i64 %1167
  %1177 = load i64, ptr %1176, align 8, !tbaa !68
  %1178 = icmp slt i64 %1177, 0
  %1179 = load i32, ptr @listXsize, align 4
  %1180 = icmp sgt i32 %1179, 1
  %1181 = select i1 %1178, i1 %1180, i1 false
  %1182 = select i1 %1181, ptr %369, ptr %370
  %1183 = getelementptr inbounds i8, ptr %1182, i64 6496
  %1184 = load ptr, ptr %1183, align 8, !tbaa !67
  %1185 = load ptr, ptr %1184, align 8, !tbaa !26
  %1186 = getelementptr inbounds ptr, ptr %1185, i64 %1161
  %1187 = load ptr, ptr %1186, align 8, !tbaa !26
  %1188 = getelementptr inbounds i64, ptr %1187, i64 %1167
  %1189 = load i64, ptr %1188, align 8, !tbaa !68
  %1190 = icmp eq i64 %1189, -1
  br i1 %1190, label %1315, label %1191

1191:                                             ; preds = %1171
  %1192 = load i32, ptr %1146, align 8, !tbaa !70
  %1193 = tail call i32 @llvm.smin.i32(i32 %1192, i32 %1179)
  %1194 = icmp sgt i32 %1193, 0
  br i1 %1194, label %1195, label %1212

1195:                                             ; preds = %1191
  %1196 = zext nneg i32 %1193 to i64
  br label %1200

1197:                                             ; preds = %1200
  %1198 = add nuw nsw i64 %1201, 1
  %1199 = icmp eq i64 %1198, %1196
  br i1 %1199, label %1212, label %1200

1200:                                             ; preds = %1195, %1197
  %1201 = phi i64 [ 0, %1195 ], [ %1198, %1197 ]
  %1202 = getelementptr inbounds [33 x i64], ptr %1163, i64 0, i64 %1201
  %1203 = load i64, ptr %1202, align 8, !tbaa !68
  %1204 = icmp eq i64 %1203, %1189
  br i1 %1204, label %1205, label %1197

1205:                                             ; preds = %1200
  %1206 = select i1 %1181, ptr %130, ptr %3
  %1207 = getelementptr inbounds [33 x i32], ptr %1206, i64 0, i64 %1201
  %1208 = load i32, ptr %1207, align 4, !tbaa !20
  %1209 = select i1 %1181, ptr %1150, ptr %141
  %1210 = getelementptr inbounds [33 x i32], ptr %1209, i64 0, i64 %1201
  %1211 = load i32, ptr %1210, align 4, !tbaa !20
  br label %1212

1212:                                             ; preds = %1197, %1191, %1205
  %1213 = phi i32 [ %1211, %1205 ], [ 0, %1191 ], [ 0, %1197 ]
  %1214 = phi i32 [ %1208, %1205 ], [ 256, %1191 ], [ 256, %1197 ]
  %1215 = load i32, ptr %1164, align 4, !tbaa !53
  %1216 = getelementptr inbounds i8, ptr %1182, i64 6536
  %1217 = load ptr, ptr %1216, align 8, !tbaa !61
  %1218 = getelementptr inbounds i8, ptr %1217, i64 4
  %1219 = load i32, ptr %1218, align 4, !tbaa !53
  %1220 = sub nsw i32 %1215, %1219
  %1221 = tail call i32 @llvm.abs.i32(i32 %1220, i1 true)
  %1222 = getelementptr inbounds i8, ptr %1182, i64 6528
  %1223 = load ptr, ptr %1222, align 8, !tbaa !60
  %1224 = getelementptr inbounds i8, ptr %1223, i64 4
  %1225 = load i32, ptr %1224, align 4, !tbaa !53
  %1226 = sub nsw i32 %1215, %1225
  %1227 = tail call i32 @llvm.abs.i32(i32 %1226, i1 true)
  %1228 = icmp ugt i32 %1221, %1227
  %1229 = load ptr, ptr %1147, align 8, !tbaa !14
  %1230 = load ptr, ptr %1229, align 8, !tbaa !26
  %1231 = getelementptr inbounds ptr, ptr %1230, i64 %1152
  %1232 = load ptr, ptr %1231, align 8, !tbaa !26
  %1233 = getelementptr inbounds ptr, ptr %1232, i64 %1167
  %1234 = load ptr, ptr %1233, align 8, !tbaa !26
  br i1 %1228, label %1235, label %1275

1235:                                             ; preds = %1212
  %1236 = getelementptr inbounds i8, ptr %1223, i64 6504
  %1237 = load ptr, ptr %1236, align 8, !tbaa !71
  %1238 = load ptr, ptr %1237, align 8, !tbaa !26
  %1239 = getelementptr inbounds ptr, ptr %1238, i64 %1165
  %1240 = load ptr, ptr %1239, align 8, !tbaa !26
  %1241 = getelementptr inbounds ptr, ptr %1240, i64 %1167
  %1242 = load ptr, ptr %1241, align 8, !tbaa !26
  %1243 = load i16, ptr %1242, align 2, !tbaa !72
  %1244 = sext i16 %1243 to i32
  %1245 = mul nsw i32 %1214, %1244
  %1246 = add nsw i32 %1245, 32
  %1247 = lshr i32 %1246, 6
  %1248 = trunc i32 %1247 to i16
  store i16 %1248, ptr %1234, align 2, !tbaa !72
  %1249 = getelementptr inbounds i8, ptr %1242, i64 2
  %1250 = load i16, ptr %1249, align 2, !tbaa !72
  %1251 = sext i16 %1250 to i32
  %1252 = mul nsw i32 %1214, %1251
  %1253 = add nsw i32 %1252, 32
  %1254 = lshr i32 %1253, 6
  %1255 = trunc i32 %1254 to i16
  %1256 = getelementptr inbounds i8, ptr %1234, i64 2
  store i16 %1255, ptr %1256, align 2, !tbaa !72
  %1257 = load i16, ptr %1242, align 2, !tbaa !72
  %1258 = sext i16 %1257 to i32
  %1259 = mul nsw i32 %1213, %1258
  %1260 = add nsw i32 %1259, 32
  %1261 = lshr i32 %1260, 6
  %1262 = trunc i32 %1261 to i16
  %1263 = getelementptr inbounds i8, ptr %1229, i64 8
  %1264 = load ptr, ptr %1263, align 8, !tbaa !26
  %1265 = getelementptr inbounds ptr, ptr %1264, i64 %1152
  %1266 = load ptr, ptr %1265, align 8, !tbaa !26
  %1267 = getelementptr inbounds ptr, ptr %1266, i64 %1167
  %1268 = load ptr, ptr %1267, align 8, !tbaa !26
  store i16 %1262, ptr %1268, align 2, !tbaa !72
  %1269 = load i16, ptr %1249, align 2, !tbaa !72
  %1270 = sext i16 %1269 to i32
  %1271 = mul nsw i32 %1213, %1270
  %1272 = add nsw i32 %1271, 32
  %1273 = lshr i32 %1272, 6
  %1274 = trunc i32 %1273 to i16
  br label %1329

1275:                                             ; preds = %1212
  %1276 = getelementptr inbounds i8, ptr %1217, i64 6504
  %1277 = load ptr, ptr %1276, align 8, !tbaa !71
  %1278 = load ptr, ptr %1277, align 8, !tbaa !26
  %1279 = getelementptr inbounds ptr, ptr %1278, i64 %1165
  %1280 = load ptr, ptr %1279, align 8, !tbaa !26
  %1281 = getelementptr inbounds ptr, ptr %1280, i64 %1167
  %1282 = load ptr, ptr %1281, align 8, !tbaa !26
  %1283 = load i16, ptr %1282, align 2, !tbaa !72
  %1284 = sext i16 %1283 to i32
  %1285 = mul nsw i32 %1214, %1284
  %1286 = add nsw i32 %1285, 32
  %1287 = lshr i32 %1286, 6
  %1288 = trunc i32 %1287 to i16
  store i16 %1288, ptr %1234, align 2, !tbaa !72
  %1289 = getelementptr inbounds i8, ptr %1282, i64 2
  %1290 = load i16, ptr %1289, align 2, !tbaa !72
  %1291 = sext i16 %1290 to i32
  %1292 = mul nsw i32 %1214, %1291
  %1293 = add nsw i32 %1292, 32
  %1294 = lshr i32 %1293, 6
  %1295 = trunc i32 %1294 to i16
  %1296 = getelementptr inbounds i8, ptr %1234, i64 2
  store i16 %1295, ptr %1296, align 2, !tbaa !72
  %1297 = load i16, ptr %1282, align 2, !tbaa !72
  %1298 = sext i16 %1297 to i32
  %1299 = mul nsw i32 %1213, %1298
  %1300 = add nsw i32 %1299, 32
  %1301 = lshr i32 %1300, 6
  %1302 = trunc i32 %1301 to i16
  %1303 = getelementptr inbounds i8, ptr %1229, i64 8
  %1304 = load ptr, ptr %1303, align 8, !tbaa !26
  %1305 = getelementptr inbounds ptr, ptr %1304, i64 %1152
  %1306 = load ptr, ptr %1305, align 8, !tbaa !26
  %1307 = getelementptr inbounds ptr, ptr %1306, i64 %1167
  %1308 = load ptr, ptr %1307, align 8, !tbaa !26
  store i16 %1302, ptr %1308, align 2, !tbaa !72
  %1309 = load i16, ptr %1289, align 2, !tbaa !72
  %1310 = sext i16 %1309 to i32
  %1311 = mul nsw i32 %1213, %1310
  %1312 = add nsw i32 %1311, 32
  %1313 = lshr i32 %1312, 6
  %1314 = trunc i32 %1313 to i16
  br label %1329

1315:                                             ; preds = %1171
  %1316 = load ptr, ptr %1147, align 8, !tbaa !14
  %1317 = load ptr, ptr %1316, align 8, !tbaa !26
  %1318 = getelementptr inbounds ptr, ptr %1317, i64 %1152
  %1319 = load ptr, ptr %1318, align 8, !tbaa !26
  %1320 = getelementptr inbounds ptr, ptr %1319, i64 %1167
  %1321 = load ptr, ptr %1320, align 8, !tbaa !26
  store i16 0, ptr %1321, align 2, !tbaa !72
  %1322 = getelementptr inbounds i8, ptr %1321, i64 2
  store i16 0, ptr %1322, align 2, !tbaa !72
  %1323 = getelementptr inbounds i8, ptr %1316, i64 8
  %1324 = load ptr, ptr %1323, align 8, !tbaa !26
  %1325 = getelementptr inbounds ptr, ptr %1324, i64 %1152
  %1326 = load ptr, ptr %1325, align 8, !tbaa !26
  %1327 = getelementptr inbounds ptr, ptr %1326, i64 %1167
  %1328 = load ptr, ptr %1327, align 8, !tbaa !26
  store i16 0, ptr %1328, align 2, !tbaa !72
  br label %1329

1329:                                             ; preds = %1315, %1275, %1235
  %1330 = phi ptr [ %1268, %1235 ], [ %1308, %1275 ], [ %1328, %1315 ]
  %1331 = phi i16 [ %1274, %1235 ], [ %1314, %1275 ], [ 0, %1315 ]
  %1332 = getelementptr inbounds i8, ptr %1330, i64 2
  store i16 %1331, ptr %1332, align 2, !tbaa !72
  br label %1333

1333:                                             ; preds = %1329, %1166
  %1334 = add nuw nsw i64 %1167, 1
  %1335 = icmp eq i64 %1334, %1149
  br i1 %1335, label %1336, label %1166

1336:                                             ; preds = %1333, %1151
  %1337 = add nuw nsw i64 %1152, 1
  %1338 = icmp eq i64 %1337, %1148
  br i1 %1338, label %1478, label %1151

1339:                                             ; preds = %1132
  %1340 = getelementptr inbounds i8, ptr %370, i64 6396
  %1341 = load i32, ptr %1340, align 4, !tbaa !63
  %1342 = ashr i32 %1341, 2
  %1343 = icmp sgt i32 %1342, 0
  br i1 %1343, label %1344, label %1556

1344:                                             ; preds = %1339
  %1345 = getelementptr inbounds i8, ptr %370, i64 6392
  %1346 = load i32, ptr %1345, align 8, !tbaa !64
  %1347 = ashr i32 %1346, 2
  %1348 = icmp sgt i32 %1347, 0
  %1349 = getelementptr inbounds i8, ptr %370, i64 6496
  %1350 = getelementptr inbounds i8, ptr %4, i64 89408
  %1351 = getelementptr inbounds i8, ptr %0, i64 16
  %1352 = zext nneg i32 %1342 to i64
  %1353 = zext nneg i32 %1347 to i64
  %1354 = getelementptr inbounds i8, ptr %3, i64 924
  br label %1355

1355:                                             ; preds = %1344, %1470
  %1356 = phi i64 [ 0, %1344 ], [ %1471, %1470 ]
  br i1 %1348, label %1357, label %1470

1357:                                             ; preds = %1355
  %1358 = load ptr, ptr %1349, align 8, !tbaa !67
  %1359 = load ptr, ptr %1358, align 8, !tbaa !26
  %1360 = getelementptr inbounds ptr, ptr %1359, i64 %1356
  %1361 = load ptr, ptr %1360, align 8, !tbaa !26
  %1362 = load ptr, ptr @enc_picture, align 8
  %1363 = getelementptr inbounds i8, ptr %1362, i64 24
  br label %1364

1364:                                             ; preds = %1357, %1464
  %1365 = phi i64 [ 0, %1357 ], [ %1468, %1464 ]
  %1366 = getelementptr inbounds i64, ptr %1361, i64 %1365
  %1367 = load i64, ptr %1366, align 8, !tbaa !68
  %1368 = icmp slt i64 %1367, 0
  %1369 = load i32, ptr @listXsize, align 4
  %1370 = icmp sgt i32 %1369, 1
  %1371 = select i1 %1368, i1 %1370, i1 false
  %1372 = select i1 %1371, ptr %369, ptr %370
  %1373 = getelementptr inbounds i8, ptr %1372, i64 6496
  %1374 = load ptr, ptr %1373, align 8, !tbaa !67
  %1375 = load ptr, ptr %1374, align 8, !tbaa !26
  %1376 = getelementptr inbounds ptr, ptr %1375, i64 %1356
  %1377 = load ptr, ptr %1376, align 8, !tbaa !26
  %1378 = getelementptr inbounds i64, ptr %1377, i64 %1365
  %1379 = load i64, ptr %1378, align 8, !tbaa !68
  %1380 = icmp eq i64 %1379, -1
  br i1 %1380, label %1450, label %1381

1381:                                             ; preds = %1364
  %1382 = load i32, ptr %1350, align 8, !tbaa !70
  %1383 = tail call i32 @llvm.smin.i32(i32 %1382, i32 %1369)
  %1384 = icmp sgt i32 %1383, 0
  br i1 %1384, label %1385, label %1402

1385:                                             ; preds = %1381
  %1386 = zext nneg i32 %1383 to i64
  br label %1390

1387:                                             ; preds = %1390
  %1388 = add nuw nsw i64 %1391, 1
  %1389 = icmp eq i64 %1388, %1386
  br i1 %1389, label %1402, label %1390

1390:                                             ; preds = %1385, %1387
  %1391 = phi i64 [ 0, %1385 ], [ %1388, %1387 ]
  %1392 = getelementptr inbounds [33 x i64], ptr %1363, i64 0, i64 %1391
  %1393 = load i64, ptr %1392, align 8, !tbaa !68
  %1394 = icmp eq i64 %1393, %1379
  br i1 %1394, label %1395, label %1387

1395:                                             ; preds = %1390
  %1396 = select i1 %1371, ptr %130, ptr %3
  %1397 = getelementptr inbounds [33 x i32], ptr %1396, i64 0, i64 %1391
  %1398 = load i32, ptr %1397, align 4, !tbaa !20
  %1399 = select i1 %1371, ptr %1354, ptr %141
  %1400 = getelementptr inbounds [33 x i32], ptr %1399, i64 0, i64 %1391
  %1401 = load i32, ptr %1400, align 4, !tbaa !20
  br label %1402

1402:                                             ; preds = %1387, %1381, %1395
  %1403 = phi i32 [ %1401, %1395 ], [ 0, %1381 ], [ 0, %1387 ]
  %1404 = phi i32 [ %1398, %1395 ], [ 256, %1381 ], [ 256, %1387 ]
  %1405 = getelementptr inbounds i8, ptr %1372, i64 6504
  %1406 = load ptr, ptr %1405, align 8, !tbaa !71
  %1407 = load ptr, ptr %1406, align 8, !tbaa !26
  %1408 = getelementptr inbounds ptr, ptr %1407, i64 %1356
  %1409 = load ptr, ptr %1408, align 8, !tbaa !26
  %1410 = getelementptr inbounds ptr, ptr %1409, i64 %1365
  %1411 = load ptr, ptr %1410, align 8, !tbaa !26
  %1412 = load i16, ptr %1411, align 2, !tbaa !72
  %1413 = sext i16 %1412 to i32
  %1414 = mul nsw i32 %1404, %1413
  %1415 = add nsw i32 %1414, 32
  %1416 = lshr i32 %1415, 6
  %1417 = trunc i32 %1416 to i16
  %1418 = load ptr, ptr %1351, align 8, !tbaa !14
  %1419 = load ptr, ptr %1418, align 8, !tbaa !26
  %1420 = getelementptr inbounds ptr, ptr %1419, i64 %1356
  %1421 = load ptr, ptr %1420, align 8, !tbaa !26
  %1422 = getelementptr inbounds ptr, ptr %1421, i64 %1365
  %1423 = load ptr, ptr %1422, align 8, !tbaa !26
  store i16 %1417, ptr %1423, align 2, !tbaa !72
  %1424 = getelementptr inbounds i8, ptr %1411, i64 2
  %1425 = load i16, ptr %1424, align 2, !tbaa !72
  %1426 = sext i16 %1425 to i32
  %1427 = mul nsw i32 %1404, %1426
  %1428 = add nsw i32 %1427, 32
  %1429 = lshr i32 %1428, 6
  %1430 = trunc i32 %1429 to i16
  %1431 = getelementptr inbounds i8, ptr %1423, i64 2
  store i16 %1430, ptr %1431, align 2, !tbaa !72
  %1432 = load i16, ptr %1411, align 2, !tbaa !72
  %1433 = sext i16 %1432 to i32
  %1434 = mul nsw i32 %1403, %1433
  %1435 = add nsw i32 %1434, 32
  %1436 = lshr i32 %1435, 6
  %1437 = trunc i32 %1436 to i16
  %1438 = getelementptr inbounds i8, ptr %1418, i64 8
  %1439 = load ptr, ptr %1438, align 8, !tbaa !26
  %1440 = getelementptr inbounds ptr, ptr %1439, i64 %1356
  %1441 = load ptr, ptr %1440, align 8, !tbaa !26
  %1442 = getelementptr inbounds ptr, ptr %1441, i64 %1365
  %1443 = load ptr, ptr %1442, align 8, !tbaa !26
  store i16 %1437, ptr %1443, align 2, !tbaa !72
  %1444 = load i16, ptr %1424, align 2, !tbaa !72
  %1445 = sext i16 %1444 to i32
  %1446 = mul nsw i32 %1403, %1445
  %1447 = add nsw i32 %1446, 32
  %1448 = lshr i32 %1447, 6
  %1449 = trunc i32 %1448 to i16
  br label %1464

1450:                                             ; preds = %1364
  %1451 = load ptr, ptr %1351, align 8, !tbaa !14
  %1452 = load ptr, ptr %1451, align 8, !tbaa !26
  %1453 = getelementptr inbounds ptr, ptr %1452, i64 %1356
  %1454 = load ptr, ptr %1453, align 8, !tbaa !26
  %1455 = getelementptr inbounds ptr, ptr %1454, i64 %1365
  %1456 = load ptr, ptr %1455, align 8, !tbaa !26
  store i16 0, ptr %1456, align 2, !tbaa !72
  %1457 = getelementptr inbounds i8, ptr %1456, i64 2
  store i16 0, ptr %1457, align 2, !tbaa !72
  %1458 = getelementptr inbounds i8, ptr %1451, i64 8
  %1459 = load ptr, ptr %1458, align 8, !tbaa !26
  %1460 = getelementptr inbounds ptr, ptr %1459, i64 %1356
  %1461 = load ptr, ptr %1460, align 8, !tbaa !26
  %1462 = getelementptr inbounds ptr, ptr %1461, i64 %1365
  %1463 = load ptr, ptr %1462, align 8, !tbaa !26
  store i16 0, ptr %1463, align 2, !tbaa !72
  br label %1464

1464:                                             ; preds = %1402, %1450
  %1465 = phi ptr [ %1443, %1402 ], [ %1463, %1450 ]
  %1466 = phi i16 [ %1449, %1402 ], [ 0, %1450 ]
  %1467 = getelementptr inbounds i8, ptr %1465, i64 2
  store i16 %1466, ptr %1467, align 2, !tbaa !72
  %1468 = add nuw nsw i64 %1365, 1
  %1469 = icmp eq i64 %1468, %1353
  br i1 %1469, label %1470, label %1364

1470:                                             ; preds = %1464, %1355
  %1471 = add nuw nsw i64 %1356, 1
  %1472 = icmp eq i64 %1471, %1352
  br i1 %1472, label %1473, label %1355

1473:                                             ; preds = %1470
  br i1 %374, label %1474, label %1556

1474:                                             ; preds = %1133, %1473
  %1475 = getelementptr inbounds i8, ptr %370, i64 6396
  %1476 = load i32, ptr %1475, align 4, !tbaa !63
  %1477 = ashr i32 %1476, 2
  br label %1478

1478:                                             ; preds = %1336, %1474
  %1479 = phi i32 [ %1477, %1474 ], [ %1137, %1336 ]
  %1480 = icmp sgt i32 %1479, 0
  br i1 %1480, label %1481, label %1556

1481:                                             ; preds = %1478
  %1482 = getelementptr inbounds i8, ptr %370, i64 6392
  %1483 = load i32, ptr %1482, align 8, !tbaa !64
  %1484 = ashr i32 %1483, 2
  %1485 = icmp sgt i32 %1484, 0
  %1486 = getelementptr inbounds i8, ptr %370, i64 6520
  %1487 = getelementptr inbounds i8, ptr %0, i64 16
  %1488 = zext nneg i32 %1479 to i64
  %1489 = zext nneg i32 %1484 to i64
  br label %1490

1490:                                             ; preds = %1481, %1553
  %1491 = phi i64 [ 0, %1481 ], [ %1554, %1553 ]
  br i1 %1485, label %1492, label %1553

1492:                                             ; preds = %1490
  %1493 = load ptr, ptr %1486, align 8, !tbaa !65
  %1494 = getelementptr inbounds ptr, ptr %1493, i64 %1491
  %1495 = load ptr, ptr %1494, align 8, !tbaa !26
  br label %1496

1496:                                             ; preds = %1492, %1550
  %1497 = phi i64 [ %1551, %1550 ], [ 0, %1492 ]
  %1498 = getelementptr inbounds i8, ptr %1495, i64 %1497
  %1499 = load i8, ptr %1498, align 1, !tbaa !66
  %1500 = icmp eq i8 %1499, 0
  br i1 %364, label %1501, label %1503

1501:                                             ; preds = %1496
  br i1 %731, label %1502, label %1524

1502:                                             ; preds = %1501
  br i1 %1500, label %1550, label %1504

1503:                                             ; preds = %1496
  br i1 %1500, label %1523, label %1504

1504:                                             ; preds = %1503, %1502
  %1505 = load ptr, ptr %1487, align 8, !tbaa !14
  %1506 = load ptr, ptr %1505, align 8, !tbaa !26
  %1507 = getelementptr inbounds ptr, ptr %1506, i64 %1491
  %1508 = load ptr, ptr %1507, align 8, !tbaa !26
  %1509 = getelementptr inbounds ptr, ptr %1508, i64 %1497
  %1510 = load ptr, ptr %1509, align 8, !tbaa !26
  %1511 = getelementptr inbounds i8, ptr %1510, i64 2
  %1512 = load i16, ptr %1511, align 2, !tbaa !72
  %1513 = shl i16 %1512, 1
  store i16 %1513, ptr %1511, align 2, !tbaa !72
  %1514 = getelementptr inbounds i8, ptr %1505, i64 8
  %1515 = load ptr, ptr %1514, align 8, !tbaa !26
  %1516 = getelementptr inbounds ptr, ptr %1515, i64 %1491
  %1517 = load ptr, ptr %1516, align 8, !tbaa !26
  %1518 = getelementptr inbounds ptr, ptr %1517, i64 %1497
  %1519 = load ptr, ptr %1518, align 8, !tbaa !26
  %1520 = getelementptr inbounds i8, ptr %1519, i64 2
  %1521 = load i16, ptr %1520, align 2, !tbaa !72
  %1522 = shl i16 %1521, 1
  store i16 %1522, ptr %1520, align 2, !tbaa !72
  br label %1550

1523:                                             ; preds = %1503
  br i1 %731, label %1550, label %1525

1524:                                             ; preds = %1501
  br i1 %1500, label %1525, label %1550

1525:                                             ; preds = %1523, %1524
  %1526 = load ptr, ptr %1487, align 8, !tbaa !14
  %1527 = load ptr, ptr %1526, align 8, !tbaa !26
  %1528 = getelementptr inbounds ptr, ptr %1527, i64 %1491
  %1529 = load ptr, ptr %1528, align 8, !tbaa !26
  %1530 = getelementptr inbounds ptr, ptr %1529, i64 %1497
  %1531 = load ptr, ptr %1530, align 8, !tbaa !26
  %1532 = getelementptr inbounds i8, ptr %1531, i64 2
  %1533 = load i16, ptr %1532, align 2, !tbaa !72
  %1534 = sext i16 %1533 to i32
  %1535 = add nsw i32 %1534, 1
  %1536 = lshr i32 %1535, 1
  %1537 = trunc i32 %1536 to i16
  store i16 %1537, ptr %1532, align 2, !tbaa !72
  %1538 = getelementptr inbounds i8, ptr %1526, i64 8
  %1539 = load ptr, ptr %1538, align 8, !tbaa !26
  %1540 = getelementptr inbounds ptr, ptr %1539, i64 %1491
  %1541 = load ptr, ptr %1540, align 8, !tbaa !26
  %1542 = getelementptr inbounds ptr, ptr %1541, i64 %1497
  %1543 = load ptr, ptr %1542, align 8, !tbaa !26
  %1544 = getelementptr inbounds i8, ptr %1543, i64 2
  %1545 = load i16, ptr %1544, align 2, !tbaa !72
  %1546 = sext i16 %1545 to i32
  %1547 = add nsw i32 %1546, 1
  %1548 = lshr i32 %1547, 1
  %1549 = trunc i32 %1548 to i16
  store i16 %1549, ptr %1544, align 2, !tbaa !72
  br label %1550

1550:                                             ; preds = %1502, %1504, %1525, %1524, %1523
  %1551 = add nuw nsw i64 %1497, 1
  %1552 = icmp eq i64 %1551, %1489
  br i1 %1552, label %1553, label %1496

1553:                                             ; preds = %1550, %1490
  %1554 = add nuw nsw i64 %1491, 1
  %1555 = icmp eq i64 %1554, %1488
  br i1 %1555, label %1556, label %1490

1556:                                             ; preds = %1553, %1339, %1134, %1478, %1473, %113
  call void @llvm.lifetime.end.p0(i64 1584, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
define dso_local signext i32 @EPZSPelBlockMotionSearch(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i16 noundef signext %9, i16 noundef signext %10, ptr nocapture noundef %11, ptr nocapture noundef %12, i32 noundef signext %13, i32 noundef signext %14, i32 noundef signext %15) local_unnamed_addr #0 {
  %17 = alloca %struct.pix_pos, align 4
  %18 = alloca %struct.pix_pos, align 4
  %19 = alloca %struct.pix_pos, align 4
  %20 = alloca %struct.pix_pos, align 4
  %21 = alloca %struct.pix_pos, align 4
  %22 = alloca %struct.pix_pos, align 4
  %23 = alloca %struct.pix_pos, align 4
  %24 = alloca %struct.pix_pos, align 4
  %25 = add nsw i32 %3, %2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  %29 = sext i16 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !26
  %32 = load ptr, ptr @input, align 8, !tbaa !26
  %33 = getelementptr inbounds i8, ptr %32, i64 84
  %34 = sext i32 %8 to i64
  %35 = getelementptr inbounds [8 x [2 x i32]], ptr %33, i64 0, i64 %34
  %36 = getelementptr inbounds i8, ptr %35, i64 4
  %37 = load i32, ptr %36, align 4, !tbaa !20
  %38 = load i32, ptr %35, align 4, !tbaa !20
  %39 = shl i32 %38, 16
  %40 = ashr exact i32 %39, 16
  %41 = ashr i32 %39, 18
  %42 = shl i32 %37, 16
  %43 = ashr exact i32 %42, 16
  %44 = ashr i32 %42, 18
  %45 = load ptr, ptr @img, align 8, !tbaa !26
  %46 = getelementptr inbounds i8, ptr %45, i64 168
  %47 = load i32, ptr %46, align 8, !tbaa !73
  %48 = sub nsw i32 %6, %47
  %49 = getelementptr inbounds i8, ptr %45, i64 172
  %50 = load i32, ptr %49, align 4, !tbaa !74
  %51 = sub nsw i32 %7, %50
  %52 = lshr i32 %6, 2
  %53 = trunc i32 %52 to i16
  %54 = shl i32 %48, 16
  %55 = ashr exact i32 %54, 16
  %56 = ashr i32 %54, 18
  %57 = shl i32 %51, 16
  %58 = ashr exact i32 %57, 16
  %59 = ashr i32 %57, 18
  %60 = shl i32 %6, 2
  %61 = sext i16 %9 to i32
  %62 = add nsw i32 %60, %61
  %63 = shl i32 %7, 2
  %64 = sext i16 %10 to i32
  %65 = add nsw i32 %63, %64
  %66 = load i16, ptr %11, align 2, !tbaa !72
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %67, %6
  %69 = load i16, ptr %12, align 2, !tbaa !72
  %70 = sext i16 %69 to i32
  %71 = add nsw i32 %70, %7
  %72 = getelementptr inbounds [8 x i32], ptr @medthres, i64 0, i64 %34
  %73 = load i32, ptr %72, align 4, !tbaa !20
  %74 = sub nsw i32 %13, %67
  %75 = sub nsw i32 %13, %70
  %76 = load ptr, ptr @active_pps, align 8, !tbaa !26
  %77 = getelementptr inbounds i8, ptr %76, i64 192
  %78 = load i32, ptr %77, align 8, !tbaa !75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %16
  %81 = getelementptr inbounds i8, ptr %76, i64 196
  %82 = load i32, ptr %81, align 4, !tbaa !77
  %83 = icmp eq i32 %82, 1
  br label %84

84:                                               ; preds = %80, %16
  %85 = phi i1 [ true, %16 ], [ %83, %80 ]
  %86 = load ptr, ptr @EPZSDistortion, align 8, !tbaa !26
  %87 = getelementptr inbounds ptr, ptr %86, i64 %26
  %88 = load ptr, ptr %87, align 8, !tbaa !26
  %89 = add nsw i32 %8, -1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !26
  %93 = load ptr, ptr @searchPattern, align 8, !tbaa !26
  br i1 %85, label %94, label %98

94:                                               ; preds = %84
  %95 = getelementptr inbounds i8, ptr %32, i64 1912
  %96 = load i32, ptr %95, align 8, !tbaa !78
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %84
  br label %99

99:                                               ; preds = %94, %98
  %100 = phi i64 [ 6432, %98 ], [ 6440, %94 ]
  %101 = getelementptr inbounds i8, ptr %31, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !26
  store ptr %102, ptr @ref_pic, align 8, !tbaa !26
  %103 = getelementptr inbounds i8, ptr %32, i64 3080
  %104 = load i32, ptr %103, align 8, !tbaa !41
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %99
  %107 = load ptr, ptr @EPZSMotion, align 8, !tbaa !26
  %108 = getelementptr inbounds ptr, ptr %107, i64 %26
  %109 = load ptr, ptr %108, align 8, !tbaa !26
  %110 = getelementptr inbounds ptr, ptr %109, i64 %29
  %111 = load ptr, ptr %110, align 8, !tbaa !26
  %112 = getelementptr inbounds ptr, ptr %111, i64 %90
  %113 = load ptr, ptr %112, align 8, !tbaa !26
  %114 = sext i32 %59 to i64
  %115 = getelementptr inbounds ptr, ptr %113, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !26
  %117 = sext i16 %53 to i64
  %118 = getelementptr inbounds ptr, ptr %116, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !26
  br label %120

120:                                              ; preds = %106, %99
  %121 = phi ptr [ %119, %106 ], [ null, %99 ]
  %122 = getelementptr inbounds i8, ptr %31, i64 6392
  %123 = load i32, ptr %122, align 8, !tbaa !64
  %124 = trunc i32 %123 to i16
  store i16 %124, ptr @img_width, align 2, !tbaa !72
  %125 = getelementptr inbounds i8, ptr %31, i64 6396
  %126 = load i32, ptr %125, align 4, !tbaa !63
  %127 = trunc i32 %126 to i16
  store i16 %127, ptr @img_height, align 2, !tbaa !72
  %128 = icmp sgt i32 %68, -1
  br i1 %128, label %129, label %143

129:                                              ; preds = %120
  %130 = shl i32 %123, 16
  %131 = ashr exact i32 %130, 16
  %132 = sub nsw i32 %131, %40
  %133 = icmp slt i32 %68, %132
  %134 = icmp sgt i32 %71, -1
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = shl i32 %126, 16
  %138 = ashr exact i32 %137, 16
  %139 = sub nsw i32 %138, %43
  %140 = icmp slt i32 %71, %139
  %141 = freeze i1 %140
  %142 = select i1 %141, ptr @FastLineX, ptr @UMVLineX
  br label %143

143:                                              ; preds = %136, %120, %129
  %144 = phi ptr [ @UMVLineX, %129 ], [ @UMVLineX, %120 ], [ %142, %136 ]
  store ptr %144, ptr @get_ref_line, align 8, !tbaa !26
  %145 = load ptr, ptr @EPZSMap, align 8, !tbaa !26
  %146 = load ptr, ptr %145, align 8, !tbaa !26
  %147 = shl nsw i32 %13, 1
  %148 = or disjoint i32 %147, 1
  %149 = mul nsw i32 %148, %148
  %150 = zext nneg i32 %149 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %146, i8 0, i64 %150, i1 false)
  %151 = load ptr, ptr @EPZSMap, align 8, !tbaa !26
  %152 = sext i32 %13 to i64
  %153 = getelementptr inbounds ptr, ptr %151, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !26
  %155 = getelementptr inbounds i8, ptr %154, i64 %152
  store i8 1, ptr %155, align 1, !tbaa !66
  %156 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %157 = shl i32 %68, 2
  %158 = sub nsw i32 %157, %62
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %156, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !20
  %162 = shl i32 %71, 2
  %163 = sub nsw i32 %162, %65
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, ptr %156, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !20
  %167 = add nsw i32 %166, %161
  %168 = mul nsw i32 %167, %15
  %169 = ashr i32 %168, 16
  %170 = icmp sgt i32 %43, 0
  br i1 %170, label %171, label %243

171:                                              ; preds = %143
  %172 = icmp sgt i32 %41, 0
  %173 = zext nneg i32 %43 to i64
  br label %174

174:                                              ; preds = %237, %171
  %175 = phi i64 [ 0, %171 ], [ %240, %237 ]
  %176 = phi i32 [ %169, %171 ], [ %238, %237 ]
  %177 = load ptr, ptr @get_ref_line, align 8, !tbaa !26
  %178 = load ptr, ptr @ref_pic, align 8, !tbaa !26
  %179 = load i16, ptr @img_height, align 2, !tbaa !72
  %180 = sext i16 %179 to i32
  %181 = load i16, ptr @img_width, align 2, !tbaa !72
  %182 = sext i16 %181 to i32
  %183 = trunc i64 %175 to i32
  %184 = add i32 %71, %183
  %185 = tail call ptr %177(i32 noundef signext %40, ptr noundef %178, i32 noundef signext %184, i32 noundef signext %68, i32 noundef signext %180, i32 noundef signext %182) #15, !callees !79
  br i1 %172, label %186, label %237

186:                                              ; preds = %174
  %187 = getelementptr inbounds ptr, ptr %0, i64 %175
  %188 = load ptr, ptr %187, align 8, !tbaa !26
  %189 = load ptr, ptr @byte_abs, align 8, !tbaa !26
  br label %190

190:                                              ; preds = %190, %186
  %191 = phi ptr [ %185, %186 ], [ %228, %190 ]
  %192 = phi ptr [ %188, %186 ], [ %225, %190 ]
  %193 = phi i32 [ 0, %186 ], [ %235, %190 ]
  %194 = phi i32 [ %176, %186 ], [ %234, %190 ]
  %195 = getelementptr inbounds i8, ptr %192, i64 2
  %196 = load i16, ptr %192, align 2, !tbaa !72
  %197 = zext i16 %196 to i64
  %198 = getelementptr inbounds i8, ptr %191, i64 2
  %199 = load i16, ptr %191, align 2, !tbaa !72
  %200 = zext i16 %199 to i64
  %201 = sub nsw i64 %197, %200
  %202 = getelementptr inbounds i32, ptr %189, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !20
  %204 = add i32 %203, %194
  %205 = getelementptr inbounds i8, ptr %192, i64 4
  %206 = load i16, ptr %195, align 2, !tbaa !72
  %207 = zext i16 %206 to i64
  %208 = getelementptr inbounds i8, ptr %191, i64 4
  %209 = load i16, ptr %198, align 2, !tbaa !72
  %210 = zext i16 %209 to i64
  %211 = sub nsw i64 %207, %210
  %212 = getelementptr inbounds i32, ptr %189, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !20
  %214 = add i32 %204, %213
  %215 = getelementptr inbounds i8, ptr %192, i64 6
  %216 = load i16, ptr %205, align 2, !tbaa !72
  %217 = zext i16 %216 to i64
  %218 = getelementptr inbounds i8, ptr %191, i64 6
  %219 = load i16, ptr %208, align 2, !tbaa !72
  %220 = zext i16 %219 to i64
  %221 = sub nsw i64 %217, %220
  %222 = getelementptr inbounds i32, ptr %189, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !20
  %224 = add i32 %214, %223
  %225 = getelementptr inbounds i8, ptr %192, i64 8
  %226 = load i16, ptr %215, align 2, !tbaa !72
  %227 = zext i16 %226 to i64
  %228 = getelementptr inbounds i8, ptr %191, i64 8
  %229 = load i16, ptr %218, align 2, !tbaa !72
  %230 = zext i16 %229 to i64
  %231 = sub nsw i64 %227, %230
  %232 = getelementptr inbounds i32, ptr %189, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !20
  %234 = add i32 %224, %233
  %235 = add nuw nsw i32 %193, 1
  %236 = icmp eq i32 %235, %41
  br i1 %236, label %237, label %190

237:                                              ; preds = %190, %174
  %238 = phi i32 [ %176, %174 ], [ %234, %190 ]
  %239 = icmp eq i32 %238, 2147483647
  %240 = add nuw nsw i64 %175, 1
  %241 = icmp eq i64 %240, %173
  %242 = select i1 %239, i1 true, i1 %241
  br i1 %242, label %243, label %174

243:                                              ; preds = %237, %143
  %244 = phi i32 [ %169, %143 ], [ %238, %237 ]
  %245 = sext i16 %1 to i32
  %246 = icmp sgt i16 %1, 0
  br i1 %246, label %247, label %260

247:                                              ; preds = %243
  %248 = load ptr, ptr @img, align 8, !tbaa !26
  %249 = getelementptr inbounds i8, ptr %248, i64 28
  %250 = load i32, ptr %249, align 4, !tbaa !57
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %247
  %253 = sext i16 %53 to i64
  %254 = getelementptr inbounds i32, ptr %92, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !20
  %256 = load i32, ptr %72, align 4, !tbaa !20
  %257 = icmp slt i32 %255, %256
  %258 = icmp slt i32 %255, %244
  %259 = select i1 %257, i1 %258, i1 false
  br i1 %259, label %1494, label %260

260:                                              ; preds = %252, %247, %243
  %261 = icmp sgt i32 %68, %13
  br i1 %261, label %262, label %276

262:                                              ; preds = %260
  %263 = load i16, ptr @img_width, align 2, !tbaa !72
  %264 = sext i16 %263 to i32
  %265 = add i32 %40, %13
  %266 = sub i32 %264, %265
  %267 = icmp slt i32 %68, %266
  %268 = icmp sgt i32 %71, %13
  %269 = select i1 %267, i1 %268, i1 false
  br i1 %269, label %270, label %276

270:                                              ; preds = %262
  %271 = load i16, ptr @img_height, align 2, !tbaa !72
  %272 = sext i16 %271 to i32
  %273 = add i32 %43, %13
  %274 = sub i32 %272, %273
  %275 = icmp slt i32 %71, %274
  br i1 %275, label %277, label %276

276:                                              ; preds = %270, %262, %260
  br label %277

277:                                              ; preds = %270, %276
  %278 = phi ptr [ @UMVLineX, %276 ], [ @FastLineX, %270 ]
  store ptr %278, ptr @get_ref_line, align 8, !tbaa !26
  %279 = icmp sgt i32 %244, %73
  br i1 %279, label %280, label %1474

280:                                              ; preds = %277
  %281 = load ptr, ptr @img, align 8, !tbaa !26
  %282 = getelementptr inbounds i8, ptr %281, i64 136
  %283 = load i32, ptr %282, align 8, !tbaa !80
  %284 = load i16, ptr @img_width, align 2, !tbaa !72
  %285 = ashr i16 %284, 4
  %286 = add nsw i16 %285, -1
  %287 = sext i16 %286 to i32
  %288 = icmp slt i32 %283, %287
  %289 = getelementptr inbounds i8, ptr %281, i64 140
  %290 = load i32, ptr %289, align 4, !tbaa !81
  %291 = load i16, ptr @img_height, align 2, !tbaa !72
  %292 = ashr i16 %291, 4
  %293 = add nsw i16 %292, -1
  %294 = sext i16 %293 to i32
  %295 = icmp sge i32 %290, %294
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #15
  %296 = getelementptr inbounds i8, ptr %281, i64 12
  %297 = load i32, ptr %296, align 4, !tbaa !82
  call void @getLuma4x4Neighbour(i32 noundef signext %297, i32 noundef signext %56, i32 noundef signext %59, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %17) #15
  %298 = load ptr, ptr @img, align 8, !tbaa !26
  %299 = getelementptr inbounds i8, ptr %298, i64 12
  %300 = load i32, ptr %299, align 4, !tbaa !82
  call void @getLuma4x4Neighbour(i32 noundef signext %300, i32 noundef signext %56, i32 noundef signext %59, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %18) #15
  %301 = load ptr, ptr @img, align 8, !tbaa !26
  %302 = getelementptr inbounds i8, ptr %301, i64 12
  %303 = load i32, ptr %302, align 4, !tbaa !82
  call void @getLuma4x4Neighbour(i32 noundef signext %303, i32 noundef signext %56, i32 noundef signext %59, i32 noundef signext %40, i32 noundef signext -1, ptr noundef nonnull %19) #15
  %304 = load ptr, ptr @img, align 8, !tbaa !26
  %305 = getelementptr inbounds i8, ptr %304, i64 12
  %306 = load i32, ptr %305, align 4, !tbaa !82
  call void @getLuma4x4Neighbour(i32 noundef signext %306, i32 noundef signext %56, i32 noundef signext %59, i32 noundef signext -1, i32 noundef signext -1, ptr noundef nonnull %20) #15
  %307 = icmp sgt i32 %58, 0
  br i1 %307, label %308, label %329

308:                                              ; preds = %280
  %309 = icmp slt i32 %55, 8
  br i1 %309, label %310, label %323

310:                                              ; preds = %308
  %311 = icmp eq i32 %57, 524288
  br i1 %311, label %312, label %317

312:                                              ; preds = %310
  %313 = icmp ne i32 %39, 1048576
  %314 = select i1 %313, i1 true, i1 %288
  %315 = icmp eq i32 %39, 1048576
  br i1 %315, label %316, label %333

316:                                              ; preds = %312
  store i32 0, ptr %19, align 4, !tbaa !83
  br label %333

317:                                              ; preds = %310
  %318 = add nsw i32 %55, %40
  %319 = icmp ne i32 %318, 8
  %320 = select i1 %319, i1 true, i1 %288
  %321 = icmp eq i32 %318, 8
  br i1 %321, label %322, label %333

322:                                              ; preds = %317
  store i32 0, ptr %19, align 4, !tbaa !83
  br label %333

323:                                              ; preds = %308
  %324 = add nsw i32 %55, %40
  %325 = icmp ne i32 %324, 16
  %326 = select i1 %325, i1 true, i1 %288
  %327 = icmp eq i32 %324, 16
  br i1 %327, label %328, label %333

328:                                              ; preds = %323
  store i32 0, ptr %19, align 4, !tbaa !83
  br label %333

329:                                              ; preds = %280
  %330 = add nsw i32 %55, %40
  %331 = icmp ne i32 %330, 16
  %332 = select i1 %331, i1 true, i1 %288
  br label %333

333:                                              ; preds = %317, %322, %312, %316, %328, %323, %329
  %334 = phi i1 [ %314, %316 ], [ %314, %312 ], [ %320, %322 ], [ %320, %317 ], [ %326, %328 ], [ %326, %323 ], [ %332, %329 ]
  %335 = add nsw i32 %58, %43
  %336 = icmp eq i32 %335, 16
  %337 = select i1 %336, i1 %295, i1 false
  %338 = load i32, ptr %17, align 4, !tbaa !83
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %333
  %341 = shl i32 %52, 16
  %342 = ashr exact i32 %341, 16
  %343 = sub nsw i32 %342, %41
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, ptr %92, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !20
  br label %347

347:                                              ; preds = %333, %340
  %348 = phi i32 [ %346, %340 ], [ 2147483647, %333 ]
  %349 = load i32, ptr %18, align 4, !tbaa !83
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %347
  %352 = sext i16 %53 to i64
  %353 = getelementptr inbounds i32, ptr %92, i64 %352
  %354 = load i32, ptr %353, align 4, !tbaa !20
  br label %355

355:                                              ; preds = %347, %351
  %356 = phi i32 [ %354, %351 ], [ 2147483647, %347 ]
  %357 = load i32, ptr %19, align 4, !tbaa !83
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %366, label %359

359:                                              ; preds = %355
  %360 = shl i32 %52, 16
  %361 = ashr exact i32 %360, 16
  %362 = add nsw i32 %41, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, ptr %92, i64 %363
  %365 = load i32, ptr %364, align 4, !tbaa !20
  br label %366

366:                                              ; preds = %355, %359
  %367 = phi i32 [ %365, %359 ], [ 2147483647, %355 ]
  %368 = call i32 @llvm.smin.i32(i32 %356, i32 %367)
  %369 = call i32 @llvm.smin.i32(i32 %348, i32 %368)
  %370 = getelementptr inbounds [8 x i32], ptr @minthres, i64 0, i64 %34
  %371 = load i32, ptr %370, align 4, !tbaa !20
  %372 = call i32 @llvm.smax.i32(i32 %369, i32 %371)
  %373 = getelementptr inbounds [8 x i32], ptr @maxthres, i64 0, i64 %34
  %374 = load i32, ptr %373, align 4, !tbaa !20
  %375 = call i32 @llvm.smin.i32(i32 %372, i32 %374)
  %376 = load i32, ptr %72, align 4, !tbaa !20
  %377 = call i32 @llvm.smax.i32(i32 %376, i32 %375)
  %378 = mul nsw i32 %377, 9
  %379 = shl nsw i32 %376, 1
  %380 = add nsw i32 %378, %379
  %381 = ashr i32 %380, 3
  %382 = sext i32 %2 to i64
  %383 = getelementptr inbounds ptr, ptr %4, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !26
  %385 = getelementptr inbounds ptr, ptr %5, i64 %382
  %386 = load ptr, ptr %385, align 8, !tbaa !26
  %387 = load ptr, ptr @predictor, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %21, ptr noundef nonnull align 4 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !85
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %22, ptr noundef nonnull align 4 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !85
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %23, ptr noundef nonnull align 4 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !85
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %24, ptr noundef nonnull align 4 dereferenceable(24) %20, i64 24, i1 false), !tbaa.struct !85
  %388 = call fastcc signext i16 @EPZSSpatialPredictors(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24, i32 noundef signext %2, i32 noundef signext %3, i16 noundef signext %1, ptr noundef %384, ptr noundef %386, ptr noundef %387)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #15
  %389 = load ptr, ptr @input, align 8, !tbaa !26
  %390 = getelementptr inbounds i8, ptr %389, i64 3080
  %391 = load i32, ptr %390, align 8, !tbaa !41
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %493, label %393

393:                                              ; preds = %366
  %394 = shl i32 %52, 16
  %395 = ashr exact i32 %394, 16
  %396 = load i16, ptr @img_width, align 2, !tbaa !72
  %397 = ashr i16 %396, 2
  %398 = sext i16 %397 to i32
  %399 = load ptr, ptr @predictor, align 8, !tbaa !26
  %400 = load ptr, ptr @EPZSMotion, align 8, !tbaa !26
  %401 = getelementptr inbounds ptr, ptr %400, i64 %26
  %402 = load ptr, ptr %401, align 8, !tbaa !26
  %403 = getelementptr inbounds ptr, ptr %402, i64 %29
  %404 = load ptr, ptr %403, align 8, !tbaa !26
  %405 = getelementptr inbounds ptr, ptr %404, i64 %90
  %406 = load ptr, ptr %405, align 8, !tbaa !26
  %407 = icmp sgt i32 %395, 0
  br i1 %407, label %413, label %408

408:                                              ; preds = %393
  %409 = getelementptr inbounds i8, ptr %399, i64 8
  %410 = load ptr, ptr %409, align 8, !tbaa !19
  %411 = getelementptr inbounds i8, ptr %410, i64 80
  store i32 0, ptr %411, align 4, !tbaa !21
  %412 = getelementptr inbounds i8, ptr %410, i64 84
  store i32 0, ptr %412, align 4, !tbaa !23
  br label %431

413:                                              ; preds = %393
  %414 = sext i32 %59 to i64
  %415 = getelementptr inbounds ptr, ptr %406, i64 %414
  %416 = load ptr, ptr %415, align 8, !tbaa !26
  %417 = sub nsw i32 %395, %41
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds ptr, ptr %416, i64 %418
  %420 = load ptr, ptr %419, align 8, !tbaa !26
  %421 = load i16, ptr %420, align 2, !tbaa !72
  %422 = sext i16 %421 to i32
  %423 = getelementptr inbounds i8, ptr %399, i64 8
  %424 = load ptr, ptr %423, align 8, !tbaa !19
  %425 = getelementptr inbounds i8, ptr %424, i64 80
  store i32 %422, ptr %425, align 4, !tbaa !21
  %426 = getelementptr inbounds i8, ptr %420, i64 2
  %427 = load i16, ptr %426, align 2, !tbaa !72
  %428 = sext i16 %427 to i32
  %429 = getelementptr inbounds i8, ptr %424, i64 84
  store i32 %428, ptr %429, align 4, !tbaa !23
  %430 = icmp eq i16 %421, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %408, %413
  %432 = phi i32 [ 0, %408 ], [ %428, %413 ]
  %433 = phi ptr [ %410, %408 ], [ %424, %413 ]
  %434 = icmp ne i32 %432, 0
  %435 = zext i1 %434 to i32
  br label %436

436:                                              ; preds = %431, %413
  %437 = phi ptr [ %424, %413 ], [ %433, %431 ]
  %438 = phi i32 [ 1, %413 ], [ %435, %431 ]
  %439 = add nuw nsw i32 %438, 5
  %440 = icmp sgt i32 %59, 0
  %441 = sext i32 %395 to i64
  %442 = zext nneg i32 %439 to i64
  %443 = getelementptr inbounds %struct.SPoint, ptr %437, i64 %442
  %444 = select i1 %440, i32 %59, i32 4
  %445 = sub nsw i32 %444, %44
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds ptr, ptr %406, i64 %446
  %448 = load ptr, ptr %447, align 8, !tbaa !26
  %449 = getelementptr inbounds ptr, ptr %448, i64 %441
  %450 = load ptr, ptr %449, align 8, !tbaa !26
  %451 = load i16, ptr %450, align 2, !tbaa !72
  %452 = sext i16 %451 to i32
  store i32 %452, ptr %443, align 4, !tbaa !21
  %453 = getelementptr inbounds i8, ptr %450, i64 2
  %454 = load i16, ptr %453, align 2, !tbaa !72
  %455 = sext i16 %454 to i32
  %456 = getelementptr inbounds %struct.SPoint, ptr %437, i64 %442, i32 1
  store i32 %455, ptr %456, align 4, !tbaa !23
  %457 = icmp ne i16 %451, 0
  %458 = icmp ne i16 %454, 0
  %459 = select i1 %457, i1 true, i1 %458
  %460 = zext i1 %459 to i32
  %461 = add nuw nsw i32 %439, %460
  %462 = add nsw i32 %41, %395
  %463 = icmp slt i32 %462, %398
  br i1 %463, label %464, label %482

464:                                              ; preds = %436
  %465 = sext i32 %462 to i64
  %466 = zext nneg i32 %461 to i64
  %467 = getelementptr inbounds %struct.SPoint, ptr %437, i64 %466
  %468 = select i1 %440, i32 %59, i32 4
  %469 = sub nsw i32 %468, %44
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds ptr, ptr %406, i64 %470
  %472 = load ptr, ptr %471, align 8, !tbaa !26
  %473 = getelementptr inbounds ptr, ptr %472, i64 %465
  %474 = load ptr, ptr %473, align 8, !tbaa !26
  %475 = load i16, ptr %474, align 2, !tbaa !72
  %476 = sext i16 %475 to i32
  store i32 %476, ptr %467, align 4, !tbaa !21
  %477 = getelementptr inbounds i8, ptr %474, i64 2
  %478 = load i16, ptr %477, align 2, !tbaa !72
  %479 = sext i16 %478 to i32
  %480 = getelementptr inbounds %struct.SPoint, ptr %437, i64 %466, i32 1
  store i32 %479, ptr %480, align 4, !tbaa !23
  %481 = icmp eq i16 %475, 0
  br i1 %481, label %486, label %490

482:                                              ; preds = %436
  %483 = zext nneg i32 %461 to i64
  %484 = getelementptr inbounds %struct.SPoint, ptr %437, i64 %483
  store i32 0, ptr %484, align 4, !tbaa !21
  %485 = getelementptr inbounds %struct.SPoint, ptr %437, i64 %483, i32 1
  store i32 0, ptr %485, align 4, !tbaa !23
  br label %486

486:                                              ; preds = %482, %464
  %487 = phi i32 [ 0, %482 ], [ %479, %464 ]
  %488 = icmp ne i32 %487, 0
  %489 = zext i1 %488 to i32
  br label %490

490:                                              ; preds = %464, %486
  %491 = phi i32 [ 1, %464 ], [ %489, %486 ]
  %492 = add nuw nsw i32 %491, %461
  br label %493

493:                                              ; preds = %490, %366
  %494 = phi i32 [ 5, %366 ], [ %492, %490 ]
  %495 = getelementptr inbounds i8, ptr %389, i64 3076
  %496 = load i32, ptr %495, align 4, !tbaa !40
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %761, label %498

498:                                              ; preds = %493
  %499 = shl i32 %52, 16
  %500 = ashr exact i32 %499, 16
  %501 = shl i32 %7, 14
  %502 = ashr i32 %501, 16
  %503 = load ptr, ptr @predictor, align 8, !tbaa !26
  %504 = load i32, ptr %17, align 4, !tbaa !83
  %505 = load i32, ptr %18, align 4, !tbaa !83
  %506 = getelementptr inbounds [6 x [32 x [32 x i32]]], ptr @mv_scale, i64 0, i64 %26, i64 %29
  %507 = load i32, ptr %506, align 4, !tbaa !20
  %508 = load ptr, ptr @EPZSCo_located, align 8, !tbaa !26
  %509 = icmp eq i32 %3, 2
  %510 = select i1 %509, i64 24, i64 32
  %511 = icmp eq i32 %3, 0
  %512 = select i1 %511, i64 16, i64 %510
  %513 = getelementptr inbounds i8, ptr %508, i64 %512
  %514 = load ptr, ptr %513, align 8, !tbaa !26
  %515 = getelementptr inbounds ptr, ptr %514, i64 %382
  %516 = load ptr, ptr %515, align 8, !tbaa !26
  %517 = sext i32 %502 to i64
  %518 = getelementptr inbounds ptr, ptr %516, i64 %517
  %519 = load ptr, ptr %518, align 8, !tbaa !26
  %520 = sext i32 %500 to i64
  %521 = getelementptr inbounds ptr, ptr %519, i64 %520
  %522 = load ptr, ptr %521, align 8, !tbaa !26
  %523 = load i16, ptr %522, align 2, !tbaa !72
  %524 = sext i16 %523 to i32
  %525 = mul nsw i32 %507, %524
  %526 = add nsw i32 %525, 2048
  %527 = ashr i32 %526, 12
  %528 = getelementptr inbounds i8, ptr %503, i64 8
  %529 = load ptr, ptr %528, align 8, !tbaa !19
  %530 = zext nneg i32 %494 to i64
  %531 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %530
  store i32 %527, ptr %531, align 4, !tbaa !21
  %532 = getelementptr inbounds i8, ptr %522, i64 2
  %533 = load i16, ptr %532, align 2, !tbaa !72
  %534 = sext i16 %533 to i32
  %535 = mul nsw i32 %507, %534
  %536 = add nsw i32 %535, 2048
  %537 = ashr i32 %536, 12
  %538 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %530, i32 1
  store i32 %537, ptr %538, align 4, !tbaa !23
  %539 = icmp ugt i32 %526, 4095
  %540 = icmp ugt i32 %536, 4095
  %541 = select i1 %539, i1 true, i1 %540
  %542 = zext i1 %541 to i32
  %543 = add nuw nsw i32 %494, %542
  %544 = icmp sgt i32 %244, %381
  %545 = icmp slt i16 %1, 2
  %546 = and i1 %545, %544
  br i1 %546, label %547, label %761

547:                                              ; preds = %498
  %548 = icmp eq i32 %504, 0
  br i1 %548, label %626, label %549

549:                                              ; preds = %547
  %550 = add nsw i32 %500, -1
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds ptr, ptr %519, i64 %551
  %553 = load ptr, ptr %552, align 8, !tbaa !26
  %554 = load i16, ptr %553, align 2, !tbaa !72
  %555 = sext i16 %554 to i32
  %556 = mul nsw i32 %507, %555
  %557 = add nsw i32 %556, 2048
  %558 = ashr i32 %557, 12
  %559 = zext nneg i32 %543 to i64
  %560 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %559
  store i32 %558, ptr %560, align 4, !tbaa !21
  %561 = getelementptr inbounds i8, ptr %553, i64 2
  %562 = load i16, ptr %561, align 2, !tbaa !72
  %563 = sext i16 %562 to i32
  %564 = mul nsw i32 %507, %563
  %565 = add nsw i32 %564, 2048
  %566 = ashr i32 %565, 12
  %567 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %559, i32 1
  store i32 %566, ptr %567, align 4, !tbaa !23
  %568 = icmp ugt i32 %557, 4095
  %569 = icmp ugt i32 %565, 4095
  %570 = select i1 %568, i1 true, i1 %569
  %571 = zext i1 %570 to i32
  %572 = add nuw nsw i32 %543, %571
  %573 = icmp eq i32 %505, 0
  br i1 %573, label %598, label %574

574:                                              ; preds = %549
  %575 = getelementptr i8, ptr %518, i64 -8
  %576 = load ptr, ptr %575, align 8, !tbaa !26
  %577 = getelementptr inbounds ptr, ptr %576, i64 %551
  %578 = load ptr, ptr %577, align 8, !tbaa !26
  %579 = load i16, ptr %578, align 2, !tbaa !72
  %580 = sext i16 %579 to i32
  %581 = mul nsw i32 %507, %580
  %582 = add nsw i32 %581, 2048
  %583 = ashr i32 %582, 12
  %584 = zext nneg i32 %572 to i64
  %585 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %584
  store i32 %583, ptr %585, align 4, !tbaa !21
  %586 = getelementptr inbounds i8, ptr %578, i64 2
  %587 = load i16, ptr %586, align 2, !tbaa !72
  %588 = sext i16 %587 to i32
  %589 = mul nsw i32 %507, %588
  %590 = add nsw i32 %589, 2048
  %591 = ashr i32 %590, 12
  %592 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %584, i32 1
  store i32 %591, ptr %592, align 4, !tbaa !23
  %593 = icmp ugt i32 %582, 4095
  %594 = icmp ugt i32 %590, 4095
  %595 = select i1 %593, i1 true, i1 %594
  %596 = zext i1 %595 to i32
  %597 = add nuw nsw i32 %572, %596
  br label %598

598:                                              ; preds = %574, %549
  %599 = phi i32 [ %572, %549 ], [ %597, %574 ]
  br i1 %337, label %626, label %600

600:                                              ; preds = %598
  %601 = add nsw i32 %44, %502
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds ptr, ptr %516, i64 %602
  %604 = load ptr, ptr %603, align 8, !tbaa !26
  %605 = getelementptr inbounds ptr, ptr %604, i64 %551
  %606 = load ptr, ptr %605, align 8, !tbaa !26
  %607 = load i16, ptr %606, align 2, !tbaa !72
  %608 = sext i16 %607 to i32
  %609 = mul nsw i32 %507, %608
  %610 = add nsw i32 %609, 2048
  %611 = ashr i32 %610, 12
  %612 = zext nneg i32 %599 to i64
  %613 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %612
  store i32 %611, ptr %613, align 4, !tbaa !21
  %614 = getelementptr inbounds i8, ptr %606, i64 2
  %615 = load i16, ptr %614, align 2, !tbaa !72
  %616 = sext i16 %615 to i32
  %617 = mul nsw i32 %507, %616
  %618 = add nsw i32 %617, 2048
  %619 = ashr i32 %618, 12
  %620 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %612, i32 1
  store i32 %619, ptr %620, align 4, !tbaa !23
  %621 = icmp ugt i32 %610, 4095
  %622 = icmp ugt i32 %618, 4095
  %623 = select i1 %621, i1 true, i1 %622
  %624 = zext i1 %623 to i32
  %625 = add nuw nsw i32 %599, %624
  br label %626

626:                                              ; preds = %600, %598, %547
  %627 = phi i32 [ %543, %547 ], [ %599, %598 ], [ %625, %600 ]
  %628 = icmp eq i32 %505, 0
  br i1 %628, label %653, label %629

629:                                              ; preds = %626
  %630 = getelementptr i8, ptr %518, i64 -8
  %631 = load ptr, ptr %630, align 8, !tbaa !26
  %632 = getelementptr inbounds ptr, ptr %631, i64 %520
  %633 = load ptr, ptr %632, align 8, !tbaa !26
  %634 = load i16, ptr %633, align 2, !tbaa !72
  %635 = sext i16 %634 to i32
  %636 = mul nsw i32 %507, %635
  %637 = add nsw i32 %636, 2048
  %638 = ashr i32 %637, 12
  %639 = zext nneg i32 %627 to i64
  %640 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %639
  store i32 %638, ptr %640, align 4, !tbaa !21
  %641 = getelementptr inbounds i8, ptr %633, i64 2
  %642 = load i16, ptr %641, align 2, !tbaa !72
  %643 = sext i16 %642 to i32
  %644 = mul nsw i32 %507, %643
  %645 = add nsw i32 %644, 2048
  %646 = ashr i32 %645, 12
  %647 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %639, i32 1
  store i32 %646, ptr %647, align 4, !tbaa !23
  %648 = icmp ugt i32 %637, 4095
  %649 = icmp ugt i32 %645, 4095
  %650 = select i1 %648, i1 true, i1 %649
  %651 = zext i1 %650 to i32
  %652 = add nuw nsw i32 %627, %651
  br label %653

653:                                              ; preds = %629, %626
  %654 = phi i32 [ %627, %626 ], [ %652, %629 ]
  br i1 %334, label %655, label %731

655:                                              ; preds = %653
  %656 = add nsw i32 %41, %500
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds ptr, ptr %519, i64 %657
  %659 = load ptr, ptr %658, align 8, !tbaa !26
  %660 = load i16, ptr %659, align 2, !tbaa !72
  %661 = sext i16 %660 to i32
  %662 = mul nsw i32 %507, %661
  %663 = add nsw i32 %662, 2048
  %664 = ashr i32 %663, 12
  %665 = zext nneg i32 %654 to i64
  %666 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %665
  store i32 %664, ptr %666, align 4, !tbaa !21
  %667 = getelementptr inbounds i8, ptr %659, i64 2
  %668 = load i16, ptr %667, align 2, !tbaa !72
  %669 = sext i16 %668 to i32
  %670 = mul nsw i32 %507, %669
  %671 = add nsw i32 %670, 2048
  %672 = ashr i32 %671, 12
  %673 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %665, i32 1
  store i32 %672, ptr %673, align 4, !tbaa !23
  %674 = icmp ugt i32 %663, 4095
  %675 = icmp ugt i32 %671, 4095
  %676 = select i1 %674, i1 true, i1 %675
  %677 = zext i1 %676 to i32
  %678 = add nuw nsw i32 %654, %677
  br i1 %628, label %703, label %679

679:                                              ; preds = %655
  %680 = getelementptr i8, ptr %518, i64 -8
  %681 = load ptr, ptr %680, align 8, !tbaa !26
  %682 = getelementptr inbounds ptr, ptr %681, i64 %657
  %683 = load ptr, ptr %682, align 8, !tbaa !26
  %684 = load i16, ptr %683, align 2, !tbaa !72
  %685 = sext i16 %684 to i32
  %686 = mul nsw i32 %507, %685
  %687 = add nsw i32 %686, 2048
  %688 = ashr i32 %687, 12
  %689 = zext nneg i32 %678 to i64
  %690 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %689
  store i32 %688, ptr %690, align 4, !tbaa !21
  %691 = getelementptr inbounds i8, ptr %683, i64 2
  %692 = load i16, ptr %691, align 2, !tbaa !72
  %693 = sext i16 %692 to i32
  %694 = mul nsw i32 %507, %693
  %695 = add nsw i32 %694, 2048
  %696 = ashr i32 %695, 12
  %697 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %689, i32 1
  store i32 %696, ptr %697, align 4, !tbaa !23
  %698 = icmp ugt i32 %687, 4095
  %699 = icmp ugt i32 %695, 4095
  %700 = select i1 %698, i1 true, i1 %699
  %701 = zext i1 %700 to i32
  %702 = add nuw nsw i32 %678, %701
  br label %703

703:                                              ; preds = %679, %655
  %704 = phi i32 [ %678, %655 ], [ %702, %679 ]
  br i1 %337, label %761, label %705

705:                                              ; preds = %703
  %706 = add nsw i32 %44, %502
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds ptr, ptr %516, i64 %707
  %709 = load ptr, ptr %708, align 8, !tbaa !26
  %710 = getelementptr inbounds ptr, ptr %709, i64 %657
  %711 = load ptr, ptr %710, align 8, !tbaa !26
  %712 = load i16, ptr %711, align 2, !tbaa !72
  %713 = sext i16 %712 to i32
  %714 = mul nsw i32 %507, %713
  %715 = add nsw i32 %714, 2048
  %716 = ashr i32 %715, 12
  %717 = zext nneg i32 %704 to i64
  %718 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %717
  store i32 %716, ptr %718, align 4, !tbaa !21
  %719 = getelementptr inbounds i8, ptr %711, i64 2
  %720 = load i16, ptr %719, align 2, !tbaa !72
  %721 = sext i16 %720 to i32
  %722 = mul nsw i32 %507, %721
  %723 = add nsw i32 %722, 2048
  %724 = ashr i32 %723, 12
  %725 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %717, i32 1
  store i32 %724, ptr %725, align 4, !tbaa !23
  %726 = icmp ugt i32 %715, 4095
  %727 = icmp ugt i32 %723, 4095
  %728 = select i1 %726, i1 true, i1 %727
  %729 = zext i1 %728 to i32
  %730 = add nuw nsw i32 %704, %729
  br label %737

731:                                              ; preds = %653
  br i1 %337, label %761, label %732

732:                                              ; preds = %731
  %733 = add nsw i32 %44, %502
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds ptr, ptr %516, i64 %734
  %736 = load ptr, ptr %735, align 8, !tbaa !26
  br label %737

737:                                              ; preds = %732, %705
  %738 = phi ptr [ %736, %732 ], [ %709, %705 ]
  %739 = phi i32 [ %654, %732 ], [ %730, %705 ]
  %740 = getelementptr inbounds ptr, ptr %738, i64 %520
  %741 = load ptr, ptr %740, align 8, !tbaa !26
  %742 = load i16, ptr %741, align 2, !tbaa !72
  %743 = sext i16 %742 to i32
  %744 = mul nsw i32 %507, %743
  %745 = add nsw i32 %744, 2048
  %746 = ashr i32 %745, 12
  %747 = zext nneg i32 %739 to i64
  %748 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %747
  store i32 %746, ptr %748, align 4, !tbaa !21
  %749 = getelementptr inbounds i8, ptr %741, i64 2
  %750 = load i16, ptr %749, align 2, !tbaa !72
  %751 = sext i16 %750 to i32
  %752 = mul nsw i32 %507, %751
  %753 = add nsw i32 %752, 2048
  %754 = ashr i32 %753, 12
  %755 = getelementptr inbounds %struct.SPoint, ptr %529, i64 %747, i32 1
  store i32 %754, ptr %755, align 4, !tbaa !23
  %756 = icmp ugt i32 %745, 4095
  %757 = icmp ugt i32 %753, 4095
  %758 = select i1 %756, i1 true, i1 %757
  %759 = zext i1 %758 to i32
  %760 = add nuw nsw i32 %739, %759
  br label %761

761:                                              ; preds = %737, %731, %703, %498, %493
  %762 = phi i32 [ %494, %493 ], [ %654, %731 ], [ %760, %737 ], [ %704, %703 ], [ %543, %498 ]
  %763 = icmp sgt i32 %244, %381
  br i1 %763, label %764, label %836

764:                                              ; preds = %761
  %765 = icmp slt i16 %1, 2
  %766 = icmp slt i32 %8, 5
  %767 = and i1 %765, %766
  br i1 %767, label %776, label %768

768:                                              ; preds = %764
  %769 = load ptr, ptr @img, align 8, !tbaa !26
  %770 = getelementptr inbounds i8, ptr %769, i64 28
  %771 = load i32, ptr %770, align 4, !tbaa !57
  %772 = or i32 %771, %3
  %773 = icmp ne i32 %772, 0
  %774 = icmp slt i16 %1, 3
  %775 = and i1 %774, %773
  br i1 %775, label %776, label %836

776:                                              ; preds = %768, %764
  %777 = getelementptr inbounds i8, ptr %389, i64 3072
  %778 = load i32, ptr %777, align 8, !tbaa !86
  %779 = icmp sgt i32 %778, 1
  br i1 %779, label %787, label %780

780:                                              ; preds = %776
  %781 = icmp eq i32 %778, 0
  br i1 %781, label %836, label %782

782:                                              ; preds = %780
  %783 = load ptr, ptr @img, align 8, !tbaa !26
  %784 = getelementptr inbounds i8, ptr %783, i64 24
  %785 = load i32, ptr %784, align 8, !tbaa !51
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %787, label %836

787:                                              ; preds = %776, %782
  %788 = load i16, ptr %11, align 2, !tbaa !72
  %789 = sext i16 %788 to i32
  %790 = load i16, ptr %12, align 2, !tbaa !72
  %791 = sext i16 %790 to i32
  %792 = load ptr, ptr @predictor, align 8, !tbaa !26
  %793 = icmp eq i16 %388, 3
  %794 = select i1 %766, i1 %793, i1 false
  br i1 %794, label %797, label %795

795:                                              ; preds = %787
  %796 = load ptr, ptr @window_predictor, align 8
  br label %809

797:                                              ; preds = %787
  %798 = load ptr, ptr @img, align 8, !tbaa !26
  %799 = getelementptr inbounds i8, ptr %798, i64 28
  %800 = load i32, ptr %799, align 4, !tbaa !57
  %801 = freeze i32 %800
  %802 = or i32 %801, %3
  %803 = icmp eq i32 %802, 0
  %804 = select i1 %803, i32 1, i32 2
  %805 = icmp sgt i32 %804, %245
  %806 = load ptr, ptr @window_predictor_extended, align 8
  %807 = load ptr, ptr @window_predictor, align 8
  %808 = select i1 %805, ptr %806, ptr %807
  br label %809

809:                                              ; preds = %797, %795
  %810 = phi ptr [ %796, %795 ], [ %808, %797 ]
  %811 = load i32, ptr %810, align 8, !tbaa !17
  %812 = icmp sgt i32 %811, 0
  br i1 %812, label %813, label %836

813:                                              ; preds = %809
  %814 = getelementptr inbounds i8, ptr %810, i64 8
  %815 = load ptr, ptr %814, align 8, !tbaa !19
  %816 = getelementptr inbounds i8, ptr %792, i64 8
  %817 = load ptr, ptr %816, align 8, !tbaa !19
  %818 = zext nneg i32 %811 to i64
  %819 = zext nneg i32 %762 to i64
  br label %820

820:                                              ; preds = %820, %813
  %821 = phi i64 [ %830, %820 ], [ %819, %813 ]
  %822 = phi i64 [ %832, %820 ], [ 0, %813 ]
  %823 = getelementptr inbounds %struct.SPoint, ptr %815, i64 %822
  %824 = load i32, ptr %823, align 4, !tbaa !21
  %825 = add nsw i32 %824, %789
  %826 = getelementptr inbounds %struct.SPoint, ptr %817, i64 %821
  store i32 %825, ptr %826, align 4, !tbaa !21
  %827 = getelementptr inbounds %struct.SPoint, ptr %815, i64 %822, i32 1
  %828 = load i32, ptr %827, align 4, !tbaa !23
  %829 = add nsw i32 %828, %791
  %830 = add nuw nsw i64 %821, 1
  %831 = getelementptr inbounds %struct.SPoint, ptr %817, i64 %821, i32 1
  store i32 %829, ptr %831, align 4, !tbaa !23
  %832 = add nuw nsw i64 %822, 1
  %833 = icmp eq i64 %832, %818
  br i1 %833, label %834, label %820

834:                                              ; preds = %820
  %835 = trunc nsw i64 %830 to i32
  br label %836

836:                                              ; preds = %834, %809, %761, %768, %780, %782
  %837 = phi i32 [ %762, %780 ], [ %762, %782 ], [ %762, %768 ], [ %762, %761 ], [ %762, %809 ], [ %835, %834 ]
  %838 = icmp eq i16 %1, 0
  %839 = and i1 %246, %763
  %840 = or i1 %838, %839
  br i1 %840, label %841, label %987

841:                                              ; preds = %836
  %842 = load ptr, ptr @predictor, align 8, !tbaa !26
  %843 = load ptr, ptr @img, align 8, !tbaa !26
  %844 = getelementptr inbounds i8, ptr %843, i64 89336
  %845 = load ptr, ptr %844, align 8, !tbaa !87
  %846 = sext i32 %59 to i64
  %847 = getelementptr inbounds ptr, ptr %845, i64 %846
  %848 = load ptr, ptr %847, align 8, !tbaa !26
  %849 = sext i32 %56 to i64
  %850 = getelementptr inbounds ptr, ptr %848, i64 %849
  %851 = load ptr, ptr %850, align 8, !tbaa !26
  %852 = getelementptr inbounds ptr, ptr %851, i64 %382
  %853 = load ptr, ptr %852, align 8, !tbaa !26
  br i1 %246, label %854, label %915

854:                                              ; preds = %841
  %855 = icmp slt i32 %8, 5
  br i1 %855, label %860, label %856

856:                                              ; preds = %854
  %857 = getelementptr inbounds i8, ptr %843, i64 28
  %858 = load i32, ptr %857, align 4, !tbaa !57
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %915, label %860

860:                                              ; preds = %856, %854
  %861 = zext nneg i32 %245 to i64
  %862 = getelementptr inbounds [6 x [32 x [32 x i32]]], ptr @mv_scale, i64 0, i64 %382, i64 %861
  %863 = add nsw i32 %245, -1
  %864 = zext nneg i32 %863 to i64
  %865 = getelementptr inbounds [6 x [32 x [32 x i32]]], ptr @mv_scale, i64 0, i64 %382, i64 %861, i64 %864
  %866 = load i32, ptr %865, align 4, !tbaa !20
  %867 = getelementptr inbounds ptr, ptr %853, i64 %864
  %868 = load ptr, ptr %867, align 8, !tbaa !26
  %869 = getelementptr inbounds ptr, ptr %868, i64 %34
  %870 = load ptr, ptr %869, align 8, !tbaa !26
  %871 = load i16, ptr %870, align 2, !tbaa !72
  %872 = sext i16 %871 to i32
  %873 = mul nsw i32 %866, %872
  %874 = add nsw i32 %873, 512
  %875 = ashr i32 %874, 10
  %876 = getelementptr inbounds i8, ptr %842, i64 8
  %877 = load ptr, ptr %876, align 8, !tbaa !19
  %878 = sext i32 %837 to i64
  %879 = getelementptr inbounds %struct.SPoint, ptr %877, i64 %878
  store i32 %875, ptr %879, align 4, !tbaa !21
  %880 = getelementptr inbounds i8, ptr %870, i64 2
  %881 = load i16, ptr %880, align 2, !tbaa !72
  %882 = sext i16 %881 to i32
  %883 = mul nsw i32 %866, %882
  %884 = add nsw i32 %883, 512
  %885 = ashr i32 %884, 10
  %886 = getelementptr inbounds %struct.SPoint, ptr %877, i64 %878, i32 1
  store i32 %885, ptr %886, align 4, !tbaa !23
  %887 = icmp ugt i32 %874, 1023
  %888 = icmp ugt i32 %884, 1023
  %889 = select i1 %887, i1 true, i1 %888
  %890 = zext i1 %889 to i32
  %891 = add nsw i32 %837, %890
  %892 = load i32, ptr %862, align 4, !tbaa !20
  %893 = load ptr, ptr %853, align 8, !tbaa !26
  %894 = getelementptr inbounds ptr, ptr %893, i64 %34
  %895 = load ptr, ptr %894, align 8, !tbaa !26
  %896 = load i16, ptr %895, align 2, !tbaa !72
  %897 = sext i16 %896 to i32
  %898 = mul nsw i32 %892, %897
  %899 = add nsw i32 %898, 512
  %900 = ashr i32 %899, 10
  %901 = sext i32 %891 to i64
  %902 = getelementptr inbounds %struct.SPoint, ptr %877, i64 %901
  store i32 %900, ptr %902, align 4, !tbaa !21
  %903 = getelementptr inbounds i8, ptr %895, i64 2
  %904 = load i16, ptr %903, align 2, !tbaa !72
  %905 = sext i16 %904 to i32
  %906 = mul nsw i32 %892, %905
  %907 = add nsw i32 %906, 512
  %908 = ashr i32 %907, 10
  %909 = getelementptr inbounds %struct.SPoint, ptr %877, i64 %901, i32 1
  store i32 %908, ptr %909, align 4, !tbaa !23
  %910 = icmp ugt i32 %899, 1023
  %911 = icmp ugt i32 %907, 1023
  %912 = select i1 %910, i1 true, i1 %911
  %913 = zext i1 %912 to i32
  %914 = add nsw i32 %891, %913
  br label %915

915:                                              ; preds = %860, %856, %841
  %916 = phi i32 [ %914, %860 ], [ %837, %856 ], [ %837, %841 ]
  %917 = zext nneg i16 %1 to i64
  %918 = getelementptr inbounds ptr, ptr %853, i64 %917
  %919 = load ptr, ptr %918, align 8, !tbaa !26
  %920 = getelementptr inbounds [8 x i16], ptr @blk_parent, i64 0, i64 %34
  %921 = load i16, ptr %920, align 2, !tbaa !72
  %922 = sext i16 %921 to i64
  %923 = getelementptr inbounds ptr, ptr %919, i64 %922
  %924 = load ptr, ptr %923, align 8, !tbaa !26
  %925 = load i16, ptr %924, align 2, !tbaa !72
  %926 = sext i16 %925 to i32
  %927 = add nsw i32 %926, 2
  %928 = ashr i32 %927, 2
  %929 = getelementptr inbounds i8, ptr %842, i64 8
  %930 = load ptr, ptr %929, align 8, !tbaa !19
  %931 = sext i32 %916 to i64
  %932 = getelementptr inbounds %struct.SPoint, ptr %930, i64 %931
  store i32 %928, ptr %932, align 4, !tbaa !21
  %933 = getelementptr inbounds i8, ptr %924, i64 2
  %934 = load i16, ptr %933, align 2, !tbaa !72
  %935 = sext i16 %934 to i32
  %936 = add nsw i32 %935, 2
  %937 = ashr i32 %936, 2
  %938 = getelementptr inbounds %struct.SPoint, ptr %930, i64 %931, i32 1
  store i32 %937, ptr %938, align 4, !tbaa !23
  %939 = icmp ugt i32 %927, 3
  %940 = icmp ugt i32 %936, 3
  %941 = select i1 %939, i1 true, i1 %940
  %942 = zext i1 %941 to i32
  %943 = add nsw i32 %916, %942
  %944 = icmp eq i32 %8, 1
  br i1 %944, label %966, label %945

945:                                              ; preds = %915
  %946 = getelementptr inbounds i8, ptr %919, i64 8
  %947 = load ptr, ptr %946, align 8, !tbaa !26
  %948 = load i16, ptr %947, align 2, !tbaa !72
  %949 = sext i16 %948 to i32
  %950 = add nsw i32 %949, 2
  %951 = ashr i32 %950, 2
  %952 = sext i32 %943 to i64
  %953 = getelementptr inbounds %struct.SPoint, ptr %930, i64 %952
  store i32 %951, ptr %953, align 4, !tbaa !21
  %954 = getelementptr inbounds i8, ptr %947, i64 2
  %955 = load i16, ptr %954, align 2, !tbaa !72
  %956 = sext i16 %955 to i32
  %957 = add nsw i32 %956, 2
  %958 = ashr i32 %957, 2
  %959 = getelementptr inbounds %struct.SPoint, ptr %930, i64 %952, i32 1
  store i32 %958, ptr %959, align 4, !tbaa !23
  %960 = icmp ugt i32 %950, 3
  %961 = icmp ugt i32 %957, 3
  %962 = select i1 %960, i1 true, i1 %961
  %963 = zext i1 %962 to i32
  %964 = add nsw i32 %943, %963
  %965 = icmp eq i32 %8, 4
  br i1 %965, label %987, label %966

966:                                              ; preds = %945, %915
  %967 = phi i32 [ %943, %915 ], [ %964, %945 ]
  %968 = getelementptr inbounds i8, ptr %919, i64 32
  %969 = load ptr, ptr %968, align 8, !tbaa !26
  %970 = load i16, ptr %969, align 2, !tbaa !72
  %971 = sext i16 %970 to i32
  %972 = add nsw i32 %971, 2
  %973 = ashr i32 %972, 2
  %974 = sext i32 %967 to i64
  %975 = getelementptr inbounds %struct.SPoint, ptr %930, i64 %974
  store i32 %973, ptr %975, align 4, !tbaa !21
  %976 = getelementptr inbounds i8, ptr %969, i64 2
  %977 = load i16, ptr %976, align 2, !tbaa !72
  %978 = sext i16 %977 to i32
  %979 = add nsw i32 %978, 2
  %980 = ashr i32 %979, 2
  %981 = getelementptr inbounds %struct.SPoint, ptr %930, i64 %974, i32 1
  store i32 %980, ptr %981, align 4, !tbaa !23
  %982 = icmp ugt i32 %972, 3
  %983 = icmp ugt i32 %979, 3
  %984 = select i1 %982, i1 true, i1 %983
  %985 = zext i1 %984 to i32
  %986 = add nsw i32 %967, %985
  br label %987

987:                                              ; preds = %966, %945, %836
  %988 = phi i32 [ %837, %836 ], [ %986, %966 ], [ %964, %945 ]
  %989 = icmp sgt i32 %988, 0
  br i1 %989, label %990, label %1155

990:                                              ; preds = %987
  %991 = icmp sgt i32 %41, 0
  %992 = zext nneg i32 %43 to i64
  %993 = zext nneg i32 %988 to i64
  br label %994

994:                                              ; preds = %990, %1143
  %995 = phi i64 [ 0, %990 ], [ %1151, %1143 ]
  %996 = phi i32 [ %244, %990 ], [ %1150, %1143 ]
  %997 = phi i8 [ 0, %990 ], [ %1149, %1143 ]
  %998 = phi i32 [ %67, %990 ], [ %1148, %1143 ]
  %999 = phi i32 [ %70, %990 ], [ %1147, %1143 ]
  %1000 = phi i32 [ 2147483647, %990 ], [ %1146, %1143 ]
  %1001 = phi i32 [ 0, %990 ], [ %1145, %1143 ]
  %1002 = phi i32 [ 0, %990 ], [ %1144, %1143 ]
  %1003 = load ptr, ptr @predictor, align 8, !tbaa !26
  %1004 = getelementptr inbounds i8, ptr %1003, i64 8
  %1005 = load ptr, ptr %1004, align 8, !tbaa !19
  %1006 = getelementptr inbounds %struct.SPoint, ptr %1005, i64 %995
  %1007 = load i32, ptr %1006, align 4, !tbaa !21
  %1008 = getelementptr inbounds i8, ptr %1006, i64 4
  %1009 = load i32, ptr %1008, align 4, !tbaa !23
  %1010 = load i16, ptr %11, align 2, !tbaa !72
  %1011 = sext i16 %1010 to i32
  %1012 = sub nsw i32 %1007, %1011
  %1013 = call i32 @llvm.abs.i32(i32 %1012, i1 true)
  %1014 = icmp sgt i32 %1013, %13
  br i1 %1014, label %1143, label %1015

1015:                                             ; preds = %994
  %1016 = load i16, ptr %12, align 2, !tbaa !72
  %1017 = sext i16 %1016 to i32
  %1018 = sub nsw i32 %1009, %1017
  %1019 = call i32 @llvm.abs.i32(i32 %1018, i1 true)
  %1020 = icmp ugt i32 %1019, %13
  br i1 %1020, label %1143, label %1021

1021:                                             ; preds = %1015
  %1022 = load ptr, ptr @EPZSMap, align 8, !tbaa !26
  %1023 = add nsw i32 %1009, %75
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds ptr, ptr %1022, i64 %1024
  %1026 = load ptr, ptr %1025, align 8, !tbaa !26
  %1027 = add nsw i32 %1007, %74
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds i8, ptr %1026, i64 %1028
  %1030 = load i8, ptr %1029, align 1, !tbaa !66
  %1031 = icmp eq i8 %1030, 1
  br i1 %1031, label %1143, label %1032

1032:                                             ; preds = %1021
  store i8 1, ptr %1029, align 1, !tbaa !66
  %1033 = add nsw i32 %1007, %6
  %1034 = add nsw i32 %1009, %7
  %1035 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %1036 = shl i32 %1033, 2
  %1037 = sub nsw i32 %1036, %62
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds i32, ptr %1035, i64 %1038
  %1040 = load i32, ptr %1039, align 4, !tbaa !20
  %1041 = shl i32 %1034, 2
  %1042 = sub nsw i32 %1041, %65
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds i32, ptr %1035, i64 %1043
  %1045 = load i32, ptr %1044, align 4, !tbaa !20
  %1046 = add nsw i32 %1045, %1040
  %1047 = mul nsw i32 %1046, %15
  %1048 = ashr i32 %1047, 16
  %1049 = icmp slt i32 %1048, %1000
  br i1 %1049, label %1050, label %1143

1050:                                             ; preds = %1032
  %1051 = icmp sgt i32 %1033, -1
  br i1 %1051, label %1052, label %1066

1052:                                             ; preds = %1050
  %1053 = load i16, ptr @img_width, align 2, !tbaa !72
  %1054 = sext i16 %1053 to i32
  %1055 = sub nsw i32 %1054, %40
  %1056 = icmp slt i32 %1033, %1055
  %1057 = icmp sgt i32 %1034, -1
  %1058 = and i1 %1057, %1056
  br i1 %1058, label %1059, label %1066

1059:                                             ; preds = %1052
  %1060 = load i16, ptr @img_height, align 2, !tbaa !72
  %1061 = sext i16 %1060 to i32
  %1062 = sub nsw i32 %1061, %43
  %1063 = icmp slt i32 %1034, %1062
  %1064 = freeze i1 %1063
  %1065 = select i1 %1064, ptr @FastLineX, ptr @UMVLineX
  br label %1066

1066:                                             ; preds = %1059, %1050, %1052
  %1067 = phi ptr [ @UMVLineX, %1052 ], [ @UMVLineX, %1050 ], [ %1065, %1059 ]
  store ptr %1067, ptr @get_ref_line, align 8, !tbaa !26
  br i1 %170, label %1068, label %1137

1068:                                             ; preds = %1066, %1131
  %1069 = phi i64 [ %1134, %1131 ], [ 0, %1066 ]
  %1070 = phi i32 [ %1132, %1131 ], [ %1048, %1066 ]
  %1071 = load ptr, ptr @get_ref_line, align 8, !tbaa !26
  %1072 = load ptr, ptr @ref_pic, align 8, !tbaa !26
  %1073 = load i16, ptr @img_height, align 2, !tbaa !72
  %1074 = sext i16 %1073 to i32
  %1075 = load i16, ptr @img_width, align 2, !tbaa !72
  %1076 = sext i16 %1075 to i32
  %1077 = trunc i64 %1069 to i32
  %1078 = add i32 %1034, %1077
  %1079 = call ptr %1071(i32 noundef signext %40, ptr noundef %1072, i32 noundef signext %1078, i32 noundef signext %1033, i32 noundef signext %1074, i32 noundef signext %1076) #15, !callees !79
  br i1 %991, label %1080, label %1131

1080:                                             ; preds = %1068
  %1081 = getelementptr inbounds ptr, ptr %0, i64 %1069
  %1082 = load ptr, ptr %1081, align 8, !tbaa !26
  %1083 = load ptr, ptr @byte_abs, align 8, !tbaa !26
  br label %1084

1084:                                             ; preds = %1084, %1080
  %1085 = phi ptr [ %1079, %1080 ], [ %1122, %1084 ]
  %1086 = phi ptr [ %1082, %1080 ], [ %1119, %1084 ]
  %1087 = phi i32 [ 0, %1080 ], [ %1129, %1084 ]
  %1088 = phi i32 [ %1070, %1080 ], [ %1128, %1084 ]
  %1089 = getelementptr inbounds i8, ptr %1086, i64 2
  %1090 = load i16, ptr %1086, align 2, !tbaa !72
  %1091 = zext i16 %1090 to i64
  %1092 = getelementptr inbounds i8, ptr %1085, i64 2
  %1093 = load i16, ptr %1085, align 2, !tbaa !72
  %1094 = zext i16 %1093 to i64
  %1095 = sub nsw i64 %1091, %1094
  %1096 = getelementptr inbounds i32, ptr %1083, i64 %1095
  %1097 = load i32, ptr %1096, align 4, !tbaa !20
  %1098 = add i32 %1097, %1088
  %1099 = getelementptr inbounds i8, ptr %1086, i64 4
  %1100 = load i16, ptr %1089, align 2, !tbaa !72
  %1101 = zext i16 %1100 to i64
  %1102 = getelementptr inbounds i8, ptr %1085, i64 4
  %1103 = load i16, ptr %1092, align 2, !tbaa !72
  %1104 = zext i16 %1103 to i64
  %1105 = sub nsw i64 %1101, %1104
  %1106 = getelementptr inbounds i32, ptr %1083, i64 %1105
  %1107 = load i32, ptr %1106, align 4, !tbaa !20
  %1108 = add i32 %1098, %1107
  %1109 = getelementptr inbounds i8, ptr %1086, i64 6
  %1110 = load i16, ptr %1099, align 2, !tbaa !72
  %1111 = zext i16 %1110 to i64
  %1112 = getelementptr inbounds i8, ptr %1085, i64 6
  %1113 = load i16, ptr %1102, align 2, !tbaa !72
  %1114 = zext i16 %1113 to i64
  %1115 = sub nsw i64 %1111, %1114
  %1116 = getelementptr inbounds i32, ptr %1083, i64 %1115
  %1117 = load i32, ptr %1116, align 4, !tbaa !20
  %1118 = add i32 %1108, %1117
  %1119 = getelementptr inbounds i8, ptr %1086, i64 8
  %1120 = load i16, ptr %1109, align 2, !tbaa !72
  %1121 = zext i16 %1120 to i64
  %1122 = getelementptr inbounds i8, ptr %1085, i64 8
  %1123 = load i16, ptr %1112, align 2, !tbaa !72
  %1124 = zext i16 %1123 to i64
  %1125 = sub nsw i64 %1121, %1124
  %1126 = getelementptr inbounds i32, ptr %1083, i64 %1125
  %1127 = load i32, ptr %1126, align 4, !tbaa !20
  %1128 = add i32 %1118, %1127
  %1129 = add nuw nsw i32 %1087, 1
  %1130 = icmp eq i32 %1129, %41
  br i1 %1130, label %1131, label %1084

1131:                                             ; preds = %1084, %1068
  %1132 = phi i32 [ %1070, %1068 ], [ %1128, %1084 ]
  %1133 = icmp sge i32 %1132, %1000
  %1134 = add nuw nsw i64 %1069, 1
  %1135 = icmp eq i64 %1134, %992
  %1136 = select i1 %1133, i1 true, i1 %1135
  br i1 %1136, label %1137, label %1068

1137:                                             ; preds = %1131, %1066
  %1138 = phi i32 [ %1048, %1066 ], [ %1132, %1131 ]
  %1139 = icmp slt i32 %1138, %996
  br i1 %1139, label %1143, label %1140

1140:                                             ; preds = %1137
  %1141 = icmp slt i32 %1138, %1000
  br i1 %1141, label %1142, label %1143

1142:                                             ; preds = %1140
  br label %1143

1143:                                             ; preds = %1137, %1142, %1140, %1032, %1021, %994, %1015
  %1144 = phi i32 [ %1002, %994 ], [ %1002, %1015 ], [ %1002, %1021 ], [ %1002, %1032 ], [ %1009, %1142 ], [ %1002, %1140 ], [ %999, %1137 ]
  %1145 = phi i32 [ %1001, %994 ], [ %1001, %1015 ], [ %1001, %1021 ], [ %1001, %1032 ], [ %1007, %1142 ], [ %1001, %1140 ], [ %998, %1137 ]
  %1146 = phi i32 [ %1000, %994 ], [ %1000, %1015 ], [ %1000, %1021 ], [ %1000, %1032 ], [ %1138, %1142 ], [ %1000, %1140 ], [ %996, %1137 ]
  %1147 = phi i32 [ %999, %994 ], [ %999, %1015 ], [ %999, %1021 ], [ %999, %1032 ], [ %999, %1142 ], [ %999, %1140 ], [ %1009, %1137 ]
  %1148 = phi i32 [ %998, %994 ], [ %998, %1015 ], [ %998, %1021 ], [ %998, %1032 ], [ %998, %1142 ], [ %998, %1140 ], [ %1007, %1137 ]
  %1149 = phi i8 [ %997, %994 ], [ %997, %1015 ], [ %997, %1021 ], [ %997, %1032 ], [ 1, %1142 ], [ %997, %1140 ], [ 1, %1137 ]
  %1150 = phi i32 [ %996, %994 ], [ %996, %1015 ], [ %996, %1021 ], [ %996, %1032 ], [ %996, %1142 ], [ %996, %1140 ], [ %1138, %1137 ]
  %1151 = add nuw nsw i64 %995, 1
  %1152 = icmp eq i64 %1151, %993
  br i1 %1152, label %1153, label %994

1153:                                             ; preds = %1143
  %1154 = icmp eq i8 %1149, 1
  br label %1155

1155:                                             ; preds = %1153, %987
  %1156 = phi i32 [ 0, %987 ], [ %1144, %1153 ]
  %1157 = phi i32 [ 0, %987 ], [ %1145, %1153 ]
  %1158 = phi i32 [ %70, %987 ], [ %1147, %1153 ]
  %1159 = phi i32 [ %67, %987 ], [ %1148, %1153 ]
  %1160 = phi i1 [ false, %987 ], [ %1154, %1153 ]
  %1161 = phi i32 [ %244, %987 ], [ %1150, %1153 ]
  %1162 = icmp sgt i32 %1161, %381
  br i1 %1162, label %1163, label %1465

1163:                                             ; preds = %1155
  %1164 = load ptr, ptr @input, align 8, !tbaa !26
  %1165 = getelementptr inbounds i8, ptr %1164, i64 3064
  %1166 = load i32, ptr %1165, align 8, !tbaa !49
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1203, label %1168

1168:                                             ; preds = %1163
  %1169 = load i32, ptr %72, align 4, !tbaa !20
  %1170 = ashr i32 %1169, 1
  %1171 = add i32 %1169, %381
  %1172 = add i32 %1171, %1170
  %1173 = icmp slt i32 %1161, %1172
  br i1 %1173, label %1174, label %1194

1174:                                             ; preds = %1168
  %1175 = icmp eq i32 %1159, 0
  %1176 = icmp eq i32 %1158, 0
  %1177 = select i1 %1175, i1 %1176, i1 false
  br i1 %1177, label %1190, label %1178

1178:                                             ; preds = %1174
  %1179 = load i16, ptr %11, align 2, !tbaa !72
  %1180 = sext i16 %1179 to i32
  %1181 = sub nsw i32 %1159, %1180
  %1182 = call i32 @llvm.abs.i32(i32 %1181, i1 true)
  %1183 = icmp ult i32 %1182, 2
  br i1 %1183, label %1184, label %1192

1184:                                             ; preds = %1178
  %1185 = load i16, ptr %12, align 2, !tbaa !72
  %1186 = sext i16 %1185 to i32
  %1187 = sub nsw i32 %1158, %1186
  %1188 = call i32 @llvm.abs.i32(i32 %1187, i1 true)
  %1189 = icmp ult i32 %1188, 2
  br i1 %1189, label %1190, label %1192

1190:                                             ; preds = %1174, %1184
  %1191 = load ptr, ptr @sdiamond, align 8, !tbaa !26
  br label %1203

1192:                                             ; preds = %1184, %1178
  %1193 = load ptr, ptr @square, align 8, !tbaa !26
  br label %1203

1194:                                             ; preds = %1168
  %1195 = icmp sgt i32 %8, 5
  %1196 = icmp ne i32 %8, 1
  %1197 = and i1 %246, %1196
  %1198 = or i1 %1195, %1197
  br i1 %1198, label %1199, label %1201

1199:                                             ; preds = %1194
  %1200 = load ptr, ptr @square, align 8, !tbaa !26
  br label %1203

1201:                                             ; preds = %1194
  %1202 = load ptr, ptr @searchPattern, align 8, !tbaa !26
  br label %1203

1203:                                             ; preds = %1192, %1190, %1201, %1199, %1163
  %1204 = phi ptr [ %1191, %1190 ], [ %1193, %1192 ], [ %1200, %1199 ], [ %1202, %1201 ], [ %93, %1163 ]
  %1205 = icmp sgt i32 %41, 0
  %1206 = zext nneg i32 %43 to i64
  %1207 = sext i16 %53 to i64
  %1208 = getelementptr inbounds i32, ptr %92, i64 %1207
  %1209 = icmp slt i32 %8, 5
  br label %1210

1210:                                             ; preds = %1462, %1203
  %1211 = phi i32 [ %1158, %1203 ], [ %1222, %1462 ]
  %1212 = phi i32 [ %1159, %1203 ], [ %1223, %1462 ]
  %1213 = phi i1 [ %1160, %1203 ], [ false, %1462 ]
  %1214 = phi ptr [ %1204, %1203 ], [ %1464, %1462 ]
  %1215 = phi i32 [ %1158, %1203 ], [ %1156, %1462 ]
  %1216 = phi i32 [ %1159, %1203 ], [ %1157, %1462 ]
  %1217 = phi i32 [ %1161, %1203 ], [ %1394, %1462 ]
  %1218 = getelementptr inbounds i8, ptr %1214, i64 8
  br label %1219

1219:                                             ; preds = %1403, %1210
  %1220 = phi i32 [ %1211, %1210 ], [ %1392, %1403 ]
  %1221 = phi i32 [ %1212, %1210 ], [ %1393, %1403 ]
  %1222 = phi i32 [ %1215, %1210 ], [ %1392, %1403 ]
  %1223 = phi i32 [ %1216, %1210 ], [ %1393, %1403 ]
  %1224 = phi i32 [ %1217, %1210 ], [ %1394, %1403 ]
  %1225 = phi i32 [ 0, %1210 ], [ %1409, %1403 ]
  %1226 = phi ptr [ %1214, %1210 ], [ %1407, %1403 ]
  %1227 = phi i32 [ 0, %1210 ], [ %1396, %1403 ]
  %1228 = load i32, ptr %1226, align 4, !tbaa !20
  br label %1229

1229:                                             ; preds = %1391, %1219
  %1230 = phi i32 [ %1220, %1219 ], [ %1392, %1391 ]
  %1231 = phi i32 [ %1221, %1219 ], [ %1393, %1391 ]
  %1232 = phi i32 [ %1224, %1219 ], [ %1394, %1391 ]
  %1233 = phi i32 [ %1225, %1219 ], [ %1395, %1391 ]
  %1234 = phi i32 [ %1228, %1219 ], [ %1397, %1391 ]
  %1235 = phi i32 [ %1227, %1219 ], [ %1396, %1391 ]
  %1236 = load ptr, ptr %1218, align 8, !tbaa !19
  %1237 = sext i32 %1233 to i64
  %1238 = getelementptr inbounds %struct.SPoint, ptr %1236, i64 %1237
  %1239 = load i32, ptr %1238, align 4, !tbaa !21
  %1240 = add nsw i32 %1239, %1223
  %1241 = getelementptr inbounds i8, ptr %1238, i64 4
  %1242 = load i32, ptr %1241, align 4, !tbaa !23
  %1243 = add nsw i32 %1242, %1222
  %1244 = add nsw i32 %1240, %6
  %1245 = add nsw i32 %1243, %7
  %1246 = load i16, ptr %11, align 2, !tbaa !72
  %1247 = sext i16 %1246 to i32
  %1248 = sub nsw i32 %1240, %1247
  %1249 = call i32 @llvm.abs.i32(i32 %1248, i1 true)
  %1250 = icmp sgt i32 %1249, %13
  br i1 %1250, label %1381, label %1251

1251:                                             ; preds = %1229
  %1252 = load i16, ptr %12, align 2, !tbaa !72
  %1253 = sext i16 %1252 to i32
  %1254 = sub nsw i32 %1243, %1253
  %1255 = call i32 @llvm.abs.i32(i32 %1254, i1 true)
  %1256 = icmp ugt i32 %1255, %13
  br i1 %1256, label %1381, label %1257

1257:                                             ; preds = %1251
  %1258 = load ptr, ptr @EPZSMap, align 8, !tbaa !26
  %1259 = add nsw i32 %1243, %75
  %1260 = sext i32 %1259 to i64
  %1261 = getelementptr inbounds ptr, ptr %1258, i64 %1260
  %1262 = load ptr, ptr %1261, align 8, !tbaa !26
  %1263 = add nsw i32 %1240, %74
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds i8, ptr %1262, i64 %1264
  %1266 = load i8, ptr %1265, align 1, !tbaa !66
  %1267 = icmp eq i8 %1266, 1
  br i1 %1267, label %1284, label %1268

1268:                                             ; preds = %1257
  store i8 1, ptr %1265, align 1, !tbaa !66
  %1269 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %1270 = shl i32 %1244, 2
  %1271 = sub nsw i32 %1270, %62
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds i32, ptr %1269, i64 %1272
  %1274 = load i32, ptr %1273, align 4, !tbaa !20
  %1275 = shl i32 %1245, 2
  %1276 = sub nsw i32 %1275, %65
  %1277 = sext i32 %1276 to i64
  %1278 = getelementptr inbounds i32, ptr %1269, i64 %1277
  %1279 = load i32, ptr %1278, align 4, !tbaa !20
  %1280 = add nsw i32 %1279, %1274
  %1281 = mul nsw i32 %1280, %15
  %1282 = ashr i32 %1281, 16
  %1283 = icmp slt i32 %1282, %1232
  br i1 %1283, label %1290, label %1381

1284:                                             ; preds = %1257
  %1285 = add nsw i32 %1233, 1
  %1286 = load i32, ptr %1214, align 8, !tbaa !17
  %1287 = icmp slt i32 %1285, %1286
  %1288 = select i1 %1287, i32 0, i32 %1286
  %1289 = sub nsw i32 %1285, %1288
  br label %1391

1290:                                             ; preds = %1268
  %1291 = icmp sgt i32 %1244, -1
  br i1 %1291, label %1292, label %1306

1292:                                             ; preds = %1290
  %1293 = load i16, ptr @img_width, align 2, !tbaa !72
  %1294 = sext i16 %1293 to i32
  %1295 = sub nsw i32 %1294, %40
  %1296 = icmp slt i32 %1244, %1295
  %1297 = icmp sgt i32 %1245, -1
  %1298 = select i1 %1296, i1 %1297, i1 false
  br i1 %1298, label %1299, label %1306

1299:                                             ; preds = %1292
  %1300 = load i16, ptr @img_height, align 2, !tbaa !72
  %1301 = sext i16 %1300 to i32
  %1302 = sub nsw i32 %1301, %43
  %1303 = icmp slt i32 %1245, %1302
  %1304 = freeze i1 %1303
  %1305 = select i1 %1304, ptr @FastLineX, ptr @UMVLineX
  br label %1306

1306:                                             ; preds = %1299, %1290, %1292
  %1307 = phi ptr [ @UMVLineX, %1292 ], [ @UMVLineX, %1290 ], [ %1305, %1299 ]
  store ptr %1307, ptr @get_ref_line, align 8, !tbaa !26
  br i1 %170, label %1308, label %1377

1308:                                             ; preds = %1306, %1371
  %1309 = phi i64 [ %1374, %1371 ], [ 0, %1306 ]
  %1310 = phi i32 [ %1372, %1371 ], [ %1282, %1306 ]
  %1311 = load ptr, ptr @get_ref_line, align 8, !tbaa !26
  %1312 = load ptr, ptr @ref_pic, align 8, !tbaa !26
  %1313 = load i16, ptr @img_height, align 2, !tbaa !72
  %1314 = sext i16 %1313 to i32
  %1315 = load i16, ptr @img_width, align 2, !tbaa !72
  %1316 = sext i16 %1315 to i32
  %1317 = trunc i64 %1309 to i32
  %1318 = add i32 %1245, %1317
  %1319 = call ptr %1311(i32 noundef signext %40, ptr noundef %1312, i32 noundef signext %1318, i32 noundef signext %1244, i32 noundef signext %1314, i32 noundef signext %1316) #15, !callees !79
  br i1 %1205, label %1320, label %1371

1320:                                             ; preds = %1308
  %1321 = getelementptr inbounds ptr, ptr %0, i64 %1309
  %1322 = load ptr, ptr %1321, align 8, !tbaa !26
  %1323 = load ptr, ptr @byte_abs, align 8, !tbaa !26
  br label %1324

1324:                                             ; preds = %1324, %1320
  %1325 = phi ptr [ %1319, %1320 ], [ %1362, %1324 ]
  %1326 = phi ptr [ %1322, %1320 ], [ %1359, %1324 ]
  %1327 = phi i32 [ 0, %1320 ], [ %1369, %1324 ]
  %1328 = phi i32 [ %1310, %1320 ], [ %1368, %1324 ]
  %1329 = getelementptr inbounds i8, ptr %1326, i64 2
  %1330 = load i16, ptr %1326, align 2, !tbaa !72
  %1331 = zext i16 %1330 to i64
  %1332 = getelementptr inbounds i8, ptr %1325, i64 2
  %1333 = load i16, ptr %1325, align 2, !tbaa !72
  %1334 = zext i16 %1333 to i64
  %1335 = sub nsw i64 %1331, %1334
  %1336 = getelementptr inbounds i32, ptr %1323, i64 %1335
  %1337 = load i32, ptr %1336, align 4, !tbaa !20
  %1338 = add i32 %1337, %1328
  %1339 = getelementptr inbounds i8, ptr %1326, i64 4
  %1340 = load i16, ptr %1329, align 2, !tbaa !72
  %1341 = zext i16 %1340 to i64
  %1342 = getelementptr inbounds i8, ptr %1325, i64 4
  %1343 = load i16, ptr %1332, align 2, !tbaa !72
  %1344 = zext i16 %1343 to i64
  %1345 = sub nsw i64 %1341, %1344
  %1346 = getelementptr inbounds i32, ptr %1323, i64 %1345
  %1347 = load i32, ptr %1346, align 4, !tbaa !20
  %1348 = add i32 %1338, %1347
  %1349 = getelementptr inbounds i8, ptr %1326, i64 6
  %1350 = load i16, ptr %1339, align 2, !tbaa !72
  %1351 = zext i16 %1350 to i64
  %1352 = getelementptr inbounds i8, ptr %1325, i64 6
  %1353 = load i16, ptr %1342, align 2, !tbaa !72
  %1354 = zext i16 %1353 to i64
  %1355 = sub nsw i64 %1351, %1354
  %1356 = getelementptr inbounds i32, ptr %1323, i64 %1355
  %1357 = load i32, ptr %1356, align 4, !tbaa !20
  %1358 = add i32 %1348, %1357
  %1359 = getelementptr inbounds i8, ptr %1326, i64 8
  %1360 = load i16, ptr %1349, align 2, !tbaa !72
  %1361 = zext i16 %1360 to i64
  %1362 = getelementptr inbounds i8, ptr %1325, i64 8
  %1363 = load i16, ptr %1352, align 2, !tbaa !72
  %1364 = zext i16 %1363 to i64
  %1365 = sub nsw i64 %1361, %1364
  %1366 = getelementptr inbounds i32, ptr %1323, i64 %1365
  %1367 = load i32, ptr %1366, align 4, !tbaa !20
  %1368 = add i32 %1358, %1367
  %1369 = add nuw nsw i32 %1327, 1
  %1370 = icmp eq i32 %1369, %41
  br i1 %1370, label %1371, label %1324

1371:                                             ; preds = %1324, %1308
  %1372 = phi i32 [ %1310, %1308 ], [ %1368, %1324 ]
  %1373 = icmp sge i32 %1372, %1232
  %1374 = add nuw nsw i64 %1309, 1
  %1375 = icmp eq i64 %1374, %1206
  %1376 = select i1 %1373, i1 true, i1 %1375
  br i1 %1376, label %1377, label %1308

1377:                                             ; preds = %1371, %1306
  %1378 = phi i32 [ %1282, %1306 ], [ %1372, %1371 ]
  %1379 = icmp slt i32 %1378, %1232
  br i1 %1379, label %1380, label %1381

1380:                                             ; preds = %1377
  br label %1381

1381:                                             ; preds = %1268, %1380, %1377, %1251, %1229
  %1382 = phi i32 [ %1243, %1380 ], [ %1230, %1377 ], [ %1230, %1268 ], [ %1230, %1251 ], [ %1230, %1229 ]
  %1383 = phi i32 [ %1240, %1380 ], [ %1231, %1377 ], [ %1231, %1268 ], [ %1231, %1251 ], [ %1231, %1229 ]
  %1384 = phi i32 [ %1378, %1380 ], [ %1232, %1377 ], [ %1232, %1268 ], [ %1232, %1251 ], [ %1232, %1229 ]
  %1385 = phi i32 [ %1233, %1380 ], [ %1235, %1377 ], [ %1235, %1268 ], [ %1235, %1251 ], [ %1235, %1229 ]
  %1386 = add nsw i32 %1233, 1
  %1387 = load i32, ptr %1214, align 8, !tbaa !17
  %1388 = icmp slt i32 %1386, %1387
  %1389 = select i1 %1388, i32 0, i32 %1387
  %1390 = sub nsw i32 %1386, %1389
  br label %1391

1391:                                             ; preds = %1381, %1284
  %1392 = phi i32 [ %1382, %1381 ], [ %1230, %1284 ]
  %1393 = phi i32 [ %1383, %1381 ], [ %1231, %1284 ]
  %1394 = phi i32 [ %1384, %1381 ], [ %1232, %1284 ]
  %1395 = phi i32 [ %1390, %1381 ], [ %1289, %1284 ]
  %1396 = phi i32 [ %1385, %1381 ], [ %1235, %1284 ]
  %1397 = add nsw i32 %1234, -1
  %1398 = icmp sgt i32 %1234, 1
  br i1 %1398, label %1229, label %1399

1399:                                             ; preds = %1391
  %1400 = icmp eq i32 %1393, %1223
  %1401 = icmp eq i32 %1392, %1222
  %1402 = select i1 %1400, i1 %1401, i1 false
  br i1 %1402, label %1410, label %1403

1403:                                             ; preds = %1399
  %1404 = load ptr, ptr %1218, align 8, !tbaa !19
  %1405 = sext i32 %1396 to i64
  %1406 = getelementptr inbounds %struct.SPoint, ptr %1404, i64 %1405
  %1407 = getelementptr inbounds i8, ptr %1406, i64 12
  %1408 = getelementptr inbounds i8, ptr %1406, i64 8
  %1409 = load i32, ptr %1408, align 4, !tbaa !24
  br label %1219

1410:                                             ; preds = %1399
  br i1 %246, label %1411, label %1425

1411:                                             ; preds = %1410
  %1412 = load ptr, ptr @img, align 8, !tbaa !26
  %1413 = getelementptr inbounds i8, ptr %1412, i64 28
  %1414 = load i32, ptr %1413, align 4, !tbaa !57
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1416, label %1425

1416:                                             ; preds = %1411
  %1417 = load i32, ptr %1208, align 4, !tbaa !20
  %1418 = shl nsw i32 %1417, 2
  %1419 = icmp slt i32 %1418, %1394
  br i1 %1419, label %1471, label %1420

1420:                                             ; preds = %1416
  %1421 = mul nsw i32 %1417, 3
  %1422 = icmp sge i32 %1421, %1394
  %1423 = icmp sgt i32 %1417, %381
  %1424 = select i1 %1422, i1 true, i1 %1423
  br i1 %1424, label %1425, label %1471

1425:                                             ; preds = %1420, %1411, %1410
  br i1 %1213, label %1426, label %1465

1426:                                             ; preds = %1425
  %1427 = load ptr, ptr @img, align 8, !tbaa !26
  %1428 = getelementptr inbounds i8, ptr %1427, i64 24
  %1429 = load i32, ptr %1428, align 8, !tbaa !51
  %1430 = icmp eq i32 %1429, 0
  %1431 = or i1 %1209, %1430
  %1432 = icmp sgt i32 %1394, %381
  %1433 = select i1 %1431, i1 %1432, i1 false
  br i1 %1433, label %1434, label %1465

1434:                                             ; preds = %1426
  %1435 = load ptr, ptr @input, align 8, !tbaa !26
  %1436 = getelementptr inbounds i8, ptr %1435, i64 3068
  %1437 = load i32, ptr %1436, align 4, !tbaa !50
  %1438 = icmp sgt i32 %1437, 0
  br i1 %1438, label %1439, label %1465

1439:                                             ; preds = %1434
  %1440 = icmp eq i32 %1223, 0
  %1441 = icmp eq i32 %1222, 0
  %1442 = select i1 %1440, i1 %1441, i1 false
  %1443 = load i16, ptr %11, align 2, !tbaa !72
  %1444 = sext i16 %1443 to i32
  br i1 %1442, label %1451, label %1445

1445:                                             ; preds = %1439
  %1446 = icmp eq i32 %1223, %1444
  br i1 %1446, label %1447, label %1462

1447:                                             ; preds = %1445
  %1448 = load i16, ptr %12, align 2, !tbaa !72
  %1449 = sext i16 %1448 to i32
  %1450 = icmp eq i32 %1222, %1449
  br i1 %1450, label %1451, label %1462

1451:                                             ; preds = %1439, %1447
  %1452 = sub nsw i32 %1223, %1444
  %1453 = call i32 @llvm.abs.i32(i32 %1452, i1 true)
  %1454 = icmp ult i32 %1453, 2
  br i1 %1454, label %1455, label %1461

1455:                                             ; preds = %1451
  %1456 = load i16, ptr %12, align 2, !tbaa !72
  %1457 = sext i16 %1456 to i32
  %1458 = sub nsw i32 %1222, %1457
  %1459 = call i32 @llvm.abs.i32(i32 %1458, i1 true)
  %1460 = icmp ult i32 %1459, 2
  br i1 %1460, label %1462, label %1461

1461:                                             ; preds = %1455, %1451
  br label %1462

1462:                                             ; preds = %1445, %1447, %1455, %1461
  %1463 = phi ptr [ @square, %1461 ], [ @sdiamond, %1455 ], [ @searchPatternD, %1447 ], [ @searchPatternD, %1445 ]
  %1464 = load ptr, ptr %1463, align 8, !tbaa !26
  br label %1210

1465:                                             ; preds = %1425, %1426, %1434, %1155
  %1466 = phi i32 [ %1158, %1155 ], [ %1222, %1434 ], [ %1222, %1426 ], [ %1222, %1425 ]
  %1467 = phi i32 [ %1159, %1155 ], [ %1223, %1434 ], [ %1223, %1426 ], [ %1223, %1425 ]
  %1468 = phi i32 [ %1161, %1155 ], [ %1394, %1434 ], [ %1394, %1426 ], [ %1394, %1425 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #15
  %1469 = trunc i32 %1467 to i16
  %1470 = trunc i32 %1466 to i16
  br label %1474

1471:                                             ; preds = %1416, %1420
  %1472 = trunc i32 %1223 to i16
  store i16 %1472, ptr %11, align 2, !tbaa !72
  %1473 = trunc i32 %1222 to i16
  store i16 %1473, ptr %12, align 2, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #15
  br label %1494

1474:                                             ; preds = %1465, %277
  %1475 = phi i16 [ %69, %277 ], [ %1470, %1465 ]
  %1476 = phi i16 [ %66, %277 ], [ %1469, %1465 ]
  %1477 = phi i32 [ %244, %277 ], [ %1468, %1465 ]
  %1478 = icmp eq i16 %1, 0
  %1479 = sext i16 %53 to i64
  br i1 %1478, label %1484, label %1480

1480:                                             ; preds = %1474
  %1481 = getelementptr inbounds i32, ptr %92, i64 %1479
  %1482 = load i32, ptr %1481, align 4, !tbaa !20
  %1483 = icmp sgt i32 %1482, %1477
  br i1 %1483, label %1484, label %1486

1484:                                             ; preds = %1474, %1480
  %1485 = getelementptr inbounds i32, ptr %92, i64 %1479
  store i32 %1477, ptr %1485, align 4, !tbaa !20
  br label %1486

1486:                                             ; preds = %1484, %1480
  %1487 = load ptr, ptr @input, align 8, !tbaa !26
  %1488 = getelementptr inbounds i8, ptr %1487, i64 3080
  %1489 = load i32, ptr %1488, align 8, !tbaa !41
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1493, label %1491

1491:                                             ; preds = %1486
  store i16 %1476, ptr %121, align 2, !tbaa !72
  %1492 = getelementptr inbounds i8, ptr %121, i64 2
  store i16 %1475, ptr %1492, align 2, !tbaa !72
  br label %1493

1493:                                             ; preds = %1491, %1486
  store i16 %1476, ptr %11, align 2, !tbaa !72
  store i16 %1475, ptr %12, align 2, !tbaa !72
  br label %1494

1494:                                             ; preds = %1471, %252, %1493
  %1495 = phi i32 [ %1477, %1493 ], [ %1394, %1471 ], [ %244, %252 ]
  ret i32 %1495
}

declare dso_local ptr @FastLineX(i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare dso_local ptr @UMVLineX(i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare dso_local void @getLuma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal fastcc signext range(i16 0, 4) i16 @EPZSSpatialPredictors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9) unnamed_addr #10 {
  %11 = add nsw i32 %5, %4
  %12 = sext i32 %11 to i64
  %13 = sext i16 %6 to i64
  %14 = getelementptr inbounds [6 x [32 x [32 x i32]]], ptr @mv_scale, i64 0, i64 %12, i64 %13
  %15 = getelementptr inbounds i8, ptr %9, i64 8
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  store i32 0, ptr %16, align 4, !tbaa !21
  %17 = getelementptr inbounds i8, ptr %16, i64 4
  store i32 0, ptr %17, align 4, !tbaa !23
  %18 = load ptr, ptr @img, align 8, !tbaa !26
  %19 = getelementptr inbounds i8, ptr %18, i64 90220
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %206

22:                                               ; preds = %10
  %23 = load i32, ptr %0, align 4, !tbaa !83
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %0, i64 20
  %27 = load i32, ptr %26, align 4, !tbaa !88
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %7, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !26
  %31 = getelementptr inbounds i8, ptr %0, i64 16
  %32 = load i32, ptr %31, align 4, !tbaa !89
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %30, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !66
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %22, %25
  %38 = phi i32 [ %36, %25 ], [ -1, %22 ]
  %39 = load i32, ptr %1, align 4, !tbaa !83
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %1, i64 20
  %43 = load i32, ptr %42, align 4, !tbaa !88
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %7, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !26
  %47 = getelementptr inbounds i8, ptr %1, i64 16
  %48 = load i32, ptr %47, align 4, !tbaa !89
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !66
  %52 = zext i8 %51 to i32
  br label %53

53:                                               ; preds = %37, %41
  %54 = phi i32 [ %52, %41 ], [ -1, %37 ]
  %55 = load i32, ptr %2, align 4, !tbaa !83
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %2, i64 20
  %59 = load i32, ptr %58, align 4, !tbaa !88
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %7, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !26
  %63 = getelementptr inbounds i8, ptr %2, i64 16
  %64 = load i32, ptr %63, align 4, !tbaa !89
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !66
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %53, %57
  %70 = phi i32 [ %68, %57 ], [ -1, %53 ]
  %71 = load i32, ptr %3, align 4, !tbaa !83
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %3, i64 20
  %75 = load i32, ptr %74, align 4, !tbaa !88
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %7, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !26
  %79 = getelementptr inbounds i8, ptr %3, i64 16
  %80 = load i32, ptr %79, align 4, !tbaa !89
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %78, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !66
  %84 = zext i8 %83 to i32
  br label %85

85:                                               ; preds = %69, %73
  %86 = phi i32 [ %84, %73 ], [ -1, %69 ]
  br i1 %24, label %112, label %87

87:                                               ; preds = %85
  %88 = sext i32 %38 to i64
  %89 = getelementptr inbounds i32, ptr %14, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !20
  %91 = getelementptr inbounds i8, ptr %0, i64 20
  %92 = load i32, ptr %91, align 4, !tbaa !88
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %8, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !26
  %96 = getelementptr inbounds i8, ptr %0, i64 16
  %97 = load i32, ptr %96, align 4, !tbaa !89
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %95, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !26
  %101 = load i16, ptr %100, align 2, !tbaa !72
  %102 = sext i16 %101 to i32
  %103 = mul nsw i32 %90, %102
  %104 = add nsw i32 %103, 512
  %105 = ashr i32 %104, 10
  %106 = getelementptr inbounds i8, ptr %100, i64 2
  %107 = load i16, ptr %106, align 2, !tbaa !72
  %108 = sext i16 %107 to i32
  %109 = mul nsw i32 %90, %108
  %110 = add nsw i32 %109, 512
  %111 = ashr i32 %110, 10
  br label %112

112:                                              ; preds = %85, %87
  %113 = phi i32 [ %105, %87 ], [ 3, %85 ]
  %114 = phi i32 [ %111, %87 ], [ 0, %85 ]
  %115 = getelementptr inbounds i8, ptr %16, i64 16
  store i32 %113, ptr %115, align 4
  %116 = getelementptr inbounds i8, ptr %16, i64 20
  store i32 %114, ptr %116, align 4, !tbaa !23
  br i1 %40, label %142, label %117

117:                                              ; preds = %112
  %118 = sext i32 %54 to i64
  %119 = getelementptr inbounds i32, ptr %14, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !20
  %121 = getelementptr inbounds i8, ptr %1, i64 20
  %122 = load i32, ptr %121, align 4, !tbaa !88
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %8, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !26
  %126 = getelementptr inbounds i8, ptr %1, i64 16
  %127 = load i32, ptr %126, align 4, !tbaa !89
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %125, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !26
  %131 = load i16, ptr %130, align 2, !tbaa !72
  %132 = sext i16 %131 to i32
  %133 = mul nsw i32 %120, %132
  %134 = add nsw i32 %133, 512
  %135 = ashr i32 %134, 10
  %136 = getelementptr inbounds i8, ptr %130, i64 2
  %137 = load i16, ptr %136, align 2, !tbaa !72
  %138 = sext i16 %137 to i32
  %139 = mul nsw i32 %120, %138
  %140 = add nsw i32 %139, 512
  %141 = ashr i32 %140, 10
  br label %142

142:                                              ; preds = %112, %117
  %143 = phi i32 [ %135, %117 ], [ 0, %112 ]
  %144 = phi i32 [ %141, %117 ], [ 3, %112 ]
  %145 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 %143, ptr %145, align 4
  %146 = getelementptr inbounds i8, ptr %16, i64 36
  store i32 %144, ptr %146, align 4, !tbaa !23
  br i1 %56, label %172, label %147

147:                                              ; preds = %142
  %148 = sext i32 %70 to i64
  %149 = getelementptr inbounds i32, ptr %14, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !20
  %151 = getelementptr inbounds i8, ptr %2, i64 20
  %152 = load i32, ptr %151, align 4, !tbaa !88
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds ptr, ptr %8, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !26
  %156 = getelementptr inbounds i8, ptr %2, i64 16
  %157 = load i32, ptr %156, align 4, !tbaa !89
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %155, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !26
  %161 = load i16, ptr %160, align 2, !tbaa !72
  %162 = sext i16 %161 to i32
  %163 = mul nsw i32 %150, %162
  %164 = add nsw i32 %163, 512
  %165 = ashr i32 %164, 10
  %166 = getelementptr inbounds i8, ptr %160, i64 2
  %167 = load i16, ptr %166, align 2, !tbaa !72
  %168 = sext i16 %167 to i32
  %169 = mul nsw i32 %150, %168
  %170 = add nsw i32 %169, 512
  %171 = ashr i32 %170, 10
  br label %172

172:                                              ; preds = %142, %147
  %173 = phi i32 [ %165, %147 ], [ -3, %142 ]
  %174 = phi i32 [ %171, %147 ], [ 0, %142 ]
  %175 = getelementptr inbounds i8, ptr %16, i64 48
  store i32 %173, ptr %175, align 4
  %176 = getelementptr inbounds i8, ptr %16, i64 52
  store i32 %174, ptr %176, align 4, !tbaa !23
  br i1 %72, label %202, label %177

177:                                              ; preds = %172
  %178 = sext i32 %86 to i64
  %179 = getelementptr inbounds i32, ptr %14, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !20
  %181 = getelementptr inbounds i8, ptr %3, i64 20
  %182 = load i32, ptr %181, align 4, !tbaa !88
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %8, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !26
  %186 = getelementptr inbounds i8, ptr %3, i64 16
  %187 = load i32, ptr %186, align 4, !tbaa !89
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds ptr, ptr %185, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !26
  %191 = load i16, ptr %190, align 2, !tbaa !72
  %192 = sext i16 %191 to i32
  %193 = mul nsw i32 %180, %192
  %194 = add nsw i32 %193, 512
  %195 = ashr i32 %194, 10
  %196 = getelementptr inbounds i8, ptr %190, i64 2
  %197 = load i16, ptr %196, align 2, !tbaa !72
  %198 = sext i16 %197 to i32
  %199 = mul nsw i32 %180, %198
  %200 = add nsw i32 %199, 512
  %201 = ashr i32 %200, 10
  br label %202

202:                                              ; preds = %172, %177
  %203 = phi i32 [ %195, %177 ], [ 0, %172 ]
  %204 = phi i32 [ %201, %177 ], [ -3, %172 ]
  %205 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 %203, ptr %205, align 4
  br label %762

206:                                              ; preds = %10
  %207 = icmp eq i32 %5, 0
  %208 = load i32, ptr %0, align 4, !tbaa !83
  %209 = icmp eq i32 %208, 0
  br i1 %207, label %482, label %210

210:                                              ; preds = %206
  br i1 %209, label %233, label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds i8, ptr %18, i64 31576
  %213 = load ptr, ptr %212, align 8, !tbaa !90
  %214 = getelementptr inbounds i8, ptr %0, i64 4
  %215 = load i32, ptr %214, align 4, !tbaa !91
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.macroblock, ptr %213, i64 %216, i32 19
  %218 = load i32, ptr %217, align 8, !tbaa !92
  %219 = icmp eq i32 %218, 0
  %220 = getelementptr inbounds i8, ptr %0, i64 20
  %221 = load i32, ptr %220, align 4, !tbaa !88
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds ptr, ptr %7, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !26
  %225 = getelementptr inbounds i8, ptr %0, i64 16
  %226 = load i32, ptr %225, align 4, !tbaa !89
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %224, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !66
  %230 = zext i8 %229 to i32
  %231 = zext i1 %219 to i32
  %232 = shl nuw nsw i32 %230, %231
  br label %233

233:                                              ; preds = %211, %210
  %234 = phi i32 [ -1, %210 ], [ %232, %211 ]
  %235 = load i32, ptr %1, align 4, !tbaa !83
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %259, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds i8, ptr %18, i64 31576
  %239 = load ptr, ptr %238, align 8, !tbaa !90
  %240 = getelementptr inbounds i8, ptr %1, i64 4
  %241 = load i32, ptr %240, align 4, !tbaa !91
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.macroblock, ptr %239, i64 %242, i32 19
  %244 = load i32, ptr %243, align 8, !tbaa !92
  %245 = icmp eq i32 %244, 0
  %246 = getelementptr inbounds i8, ptr %1, i64 20
  %247 = load i32, ptr %246, align 4, !tbaa !88
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds ptr, ptr %7, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !26
  %251 = getelementptr inbounds i8, ptr %1, i64 16
  %252 = load i32, ptr %251, align 4, !tbaa !89
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, ptr %250, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !66
  %256 = zext i8 %255 to i32
  %257 = zext i1 %245 to i32
  %258 = shl nuw nsw i32 %256, %257
  br label %259

259:                                              ; preds = %237, %233
  %260 = phi i32 [ -1, %233 ], [ %258, %237 ]
  %261 = load i32, ptr %2, align 4, !tbaa !83
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %285, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds i8, ptr %18, i64 31576
  %265 = load ptr, ptr %264, align 8, !tbaa !90
  %266 = getelementptr inbounds i8, ptr %2, i64 4
  %267 = load i32, ptr %266, align 4, !tbaa !91
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.macroblock, ptr %265, i64 %268, i32 19
  %270 = load i32, ptr %269, align 8, !tbaa !92
  %271 = icmp eq i32 %270, 0
  %272 = getelementptr inbounds i8, ptr %2, i64 20
  %273 = load i32, ptr %272, align 4, !tbaa !88
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds ptr, ptr %7, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !26
  %277 = getelementptr inbounds i8, ptr %2, i64 16
  %278 = load i32, ptr %277, align 4, !tbaa !89
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, ptr %276, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !66
  %282 = zext i8 %281 to i32
  %283 = zext i1 %271 to i32
  %284 = shl nuw nsw i32 %282, %283
  br label %285

285:                                              ; preds = %263, %259
  %286 = phi i32 [ -1, %259 ], [ %284, %263 ]
  %287 = load i32, ptr %3, align 4, !tbaa !83
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %311, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds i8, ptr %18, i64 31576
  %291 = load ptr, ptr %290, align 8, !tbaa !90
  %292 = getelementptr inbounds i8, ptr %3, i64 4
  %293 = load i32, ptr %292, align 4, !tbaa !91
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.macroblock, ptr %291, i64 %294, i32 19
  %296 = load i32, ptr %295, align 8, !tbaa !92
  %297 = icmp eq i32 %296, 0
  %298 = getelementptr inbounds i8, ptr %3, i64 20
  %299 = load i32, ptr %298, align 4, !tbaa !88
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds ptr, ptr %7, i64 %300
  %302 = load ptr, ptr %301, align 8, !tbaa !26
  %303 = getelementptr inbounds i8, ptr %3, i64 16
  %304 = load i32, ptr %303, align 4, !tbaa !89
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, ptr %302, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !66
  %308 = zext i8 %307 to i32
  %309 = zext i1 %297 to i32
  %310 = shl nuw nsw i32 %308, %309
  br label %311

311:                                              ; preds = %289, %285
  %312 = phi i32 [ -1, %285 ], [ %310, %289 ]
  br i1 %209, label %313, label %315

313:                                              ; preds = %311
  %314 = getelementptr inbounds i8, ptr %16, i64 16
  store i32 3, ptr %314, align 4, !tbaa !21
  br label %353

315:                                              ; preds = %311
  %316 = sext i32 %234 to i64
  %317 = getelementptr inbounds i32, ptr %14, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !20
  %319 = getelementptr inbounds i8, ptr %0, i64 20
  %320 = load i32, ptr %319, align 4, !tbaa !88
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds ptr, ptr %8, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !26
  %324 = getelementptr inbounds i8, ptr %0, i64 16
  %325 = load i32, ptr %324, align 4, !tbaa !89
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds ptr, ptr %323, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !26
  %329 = load i16, ptr %328, align 2, !tbaa !72
  %330 = sext i16 %329 to i32
  %331 = mul nsw i32 %318, %330
  %332 = add nsw i32 %331, 512
  %333 = ashr i32 %332, 10
  %334 = getelementptr inbounds i8, ptr %16, i64 16
  store i32 %333, ptr %334, align 4, !tbaa !21
  %335 = getelementptr inbounds i8, ptr %18, i64 31576
  %336 = load ptr, ptr %335, align 8, !tbaa !90
  %337 = getelementptr inbounds i8, ptr %0, i64 4
  %338 = load i32, ptr %337, align 4, !tbaa !91
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.macroblock, ptr %336, i64 %339, i32 19
  %341 = load i32, ptr %340, align 8, !tbaa !92
  %342 = icmp eq i32 %341, 0
  %343 = getelementptr inbounds i8, ptr %328, i64 2
  %344 = load i16, ptr %343, align 2, !tbaa !72
  %345 = sext i16 %344 to i32
  %346 = mul nsw i32 %318, %345
  br i1 %342, label %350, label %347

347:                                              ; preds = %315
  %348 = add nsw i32 %346, 512
  %349 = ashr i32 %348, 10
  br label %353

350:                                              ; preds = %315
  %351 = add nsw i32 %346, 1024
  %352 = ashr i32 %351, 11
  br label %353

353:                                              ; preds = %313, %347, %350
  %354 = phi i32 [ %349, %347 ], [ %352, %350 ], [ 0, %313 ]
  %355 = getelementptr inbounds i8, ptr %16, i64 20
  store i32 %354, ptr %355, align 4, !tbaa !23
  br i1 %236, label %356, label %358

356:                                              ; preds = %353
  %357 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 0, ptr %357, align 4, !tbaa !21
  br label %396

358:                                              ; preds = %353
  %359 = sext i32 %260 to i64
  %360 = getelementptr inbounds i32, ptr %14, i64 %359
  %361 = load i32, ptr %360, align 4, !tbaa !20
  %362 = getelementptr inbounds i8, ptr %1, i64 20
  %363 = load i32, ptr %362, align 4, !tbaa !88
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds ptr, ptr %8, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !26
  %367 = getelementptr inbounds i8, ptr %1, i64 16
  %368 = load i32, ptr %367, align 4, !tbaa !89
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds ptr, ptr %366, i64 %369
  %371 = load ptr, ptr %370, align 8, !tbaa !26
  %372 = load i16, ptr %371, align 2, !tbaa !72
  %373 = sext i16 %372 to i32
  %374 = mul nsw i32 %361, %373
  %375 = add nsw i32 %374, 512
  %376 = ashr i32 %375, 10
  %377 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 %376, ptr %377, align 4, !tbaa !21
  %378 = getelementptr inbounds i8, ptr %18, i64 31576
  %379 = load ptr, ptr %378, align 8, !tbaa !90
  %380 = getelementptr inbounds i8, ptr %1, i64 4
  %381 = load i32, ptr %380, align 4, !tbaa !91
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.macroblock, ptr %379, i64 %382, i32 19
  %384 = load i32, ptr %383, align 8, !tbaa !92
  %385 = icmp eq i32 %384, 0
  %386 = getelementptr inbounds i8, ptr %371, i64 2
  %387 = load i16, ptr %386, align 2, !tbaa !72
  %388 = sext i16 %387 to i32
  %389 = mul nsw i32 %361, %388
  br i1 %385, label %393, label %390

390:                                              ; preds = %358
  %391 = add nsw i32 %389, 512
  %392 = ashr i32 %391, 10
  br label %396

393:                                              ; preds = %358
  %394 = add nsw i32 %389, 1024
  %395 = ashr i32 %394, 11
  br label %396

396:                                              ; preds = %356, %390, %393
  %397 = phi i32 [ %392, %390 ], [ %395, %393 ], [ 3, %356 ]
  %398 = getelementptr inbounds i8, ptr %16, i64 36
  store i32 %397, ptr %398, align 4, !tbaa !23
  br i1 %262, label %399, label %401

399:                                              ; preds = %396
  %400 = getelementptr inbounds i8, ptr %16, i64 48
  store i32 -3, ptr %400, align 4, !tbaa !21
  br label %439

401:                                              ; preds = %396
  %402 = sext i32 %286 to i64
  %403 = getelementptr inbounds i32, ptr %14, i64 %402
  %404 = load i32, ptr %403, align 4, !tbaa !20
  %405 = getelementptr inbounds i8, ptr %2, i64 20
  %406 = load i32, ptr %405, align 4, !tbaa !88
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds ptr, ptr %8, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !26
  %410 = getelementptr inbounds i8, ptr %2, i64 16
  %411 = load i32, ptr %410, align 4, !tbaa !89
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds ptr, ptr %409, i64 %412
  %414 = load ptr, ptr %413, align 8, !tbaa !26
  %415 = load i16, ptr %414, align 2, !tbaa !72
  %416 = sext i16 %415 to i32
  %417 = mul nsw i32 %404, %416
  %418 = add nsw i32 %417, 512
  %419 = ashr i32 %418, 10
  %420 = getelementptr inbounds i8, ptr %16, i64 48
  store i32 %419, ptr %420, align 4, !tbaa !21
  %421 = getelementptr inbounds i8, ptr %18, i64 31576
  %422 = load ptr, ptr %421, align 8, !tbaa !90
  %423 = getelementptr inbounds i8, ptr %2, i64 4
  %424 = load i32, ptr %423, align 4, !tbaa !91
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.macroblock, ptr %422, i64 %425, i32 19
  %427 = load i32, ptr %426, align 8, !tbaa !92
  %428 = icmp eq i32 %427, 0
  %429 = getelementptr inbounds i8, ptr %414, i64 2
  %430 = load i16, ptr %429, align 2, !tbaa !72
  %431 = sext i16 %430 to i32
  %432 = mul nsw i32 %404, %431
  br i1 %428, label %436, label %433

433:                                              ; preds = %401
  %434 = add nsw i32 %432, 512
  %435 = ashr i32 %434, 10
  br label %439

436:                                              ; preds = %401
  %437 = add nsw i32 %432, 1024
  %438 = ashr i32 %437, 11
  br label %439

439:                                              ; preds = %399, %433, %436
  %440 = phi i32 [ %435, %433 ], [ %438, %436 ], [ 0, %399 ]
  %441 = getelementptr inbounds i8, ptr %16, i64 52
  store i32 %440, ptr %441, align 4, !tbaa !23
  br i1 %288, label %442, label %444

442:                                              ; preds = %439
  %443 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 0, ptr %443, align 4, !tbaa !21
  br label %762

444:                                              ; preds = %439
  %445 = sext i32 %312 to i64
  %446 = getelementptr inbounds i32, ptr %14, i64 %445
  %447 = load i32, ptr %446, align 4, !tbaa !20
  %448 = getelementptr inbounds i8, ptr %3, i64 20
  %449 = load i32, ptr %448, align 4, !tbaa !88
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds ptr, ptr %8, i64 %450
  %452 = load ptr, ptr %451, align 8, !tbaa !26
  %453 = getelementptr inbounds i8, ptr %3, i64 16
  %454 = load i32, ptr %453, align 4, !tbaa !89
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds ptr, ptr %452, i64 %455
  %457 = load ptr, ptr %456, align 8, !tbaa !26
  %458 = load i16, ptr %457, align 2, !tbaa !72
  %459 = sext i16 %458 to i32
  %460 = mul nsw i32 %447, %459
  %461 = add nsw i32 %460, 512
  %462 = ashr i32 %461, 10
  %463 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 %462, ptr %463, align 4, !tbaa !21
  %464 = getelementptr inbounds i8, ptr %18, i64 31576
  %465 = load ptr, ptr %464, align 8, !tbaa !90
  %466 = getelementptr inbounds i8, ptr %3, i64 4
  %467 = load i32, ptr %466, align 4, !tbaa !91
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.macroblock, ptr %465, i64 %468, i32 19
  %470 = load i32, ptr %469, align 8, !tbaa !92
  %471 = icmp eq i32 %470, 0
  %472 = getelementptr inbounds i8, ptr %457, i64 2
  %473 = load i16, ptr %472, align 2, !tbaa !72
  %474 = sext i16 %473 to i32
  %475 = mul nsw i32 %447, %474
  br i1 %471, label %479, label %476

476:                                              ; preds = %444
  %477 = add nsw i32 %475, 512
  %478 = ashr i32 %477, 10
  br label %762

479:                                              ; preds = %444
  %480 = add nsw i32 %475, 1024
  %481 = ashr i32 %480, 11
  br label %762

482:                                              ; preds = %206
  br i1 %209, label %507, label %483

483:                                              ; preds = %482
  %484 = getelementptr inbounds i8, ptr %18, i64 31576
  %485 = load ptr, ptr %484, align 8, !tbaa !90
  %486 = getelementptr inbounds i8, ptr %0, i64 4
  %487 = load i32, ptr %486, align 4, !tbaa !91
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.macroblock, ptr %485, i64 %488, i32 19
  %490 = load i32, ptr %489, align 8, !tbaa !92
  %491 = icmp eq i32 %490, 0
  %492 = getelementptr inbounds i8, ptr %0, i64 20
  %493 = load i32, ptr %492, align 4, !tbaa !88
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds ptr, ptr %7, i64 %494
  %496 = load ptr, ptr %495, align 8, !tbaa !26
  %497 = getelementptr inbounds i8, ptr %0, i64 16
  %498 = load i32, ptr %497, align 4, !tbaa !89
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8, ptr %496, i64 %499
  %501 = load i8, ptr %500, align 1, !tbaa !66
  br i1 %491, label %505, label %502

502:                                              ; preds = %483
  %503 = lshr i8 %501, 1
  %504 = zext nneg i8 %503 to i32
  br label %507

505:                                              ; preds = %483
  %506 = zext i8 %501 to i32
  br label %507

507:                                              ; preds = %482, %502, %505
  %508 = phi i32 [ %504, %502 ], [ %506, %505 ], [ -1, %482 ]
  %509 = load i32, ptr %1, align 4, !tbaa !83
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %535, label %511

511:                                              ; preds = %507
  %512 = getelementptr inbounds i8, ptr %18, i64 31576
  %513 = load ptr, ptr %512, align 8, !tbaa !90
  %514 = getelementptr inbounds i8, ptr %1, i64 4
  %515 = load i32, ptr %514, align 4, !tbaa !91
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.macroblock, ptr %513, i64 %516, i32 19
  %518 = load i32, ptr %517, align 8, !tbaa !92
  %519 = icmp eq i32 %518, 0
  %520 = getelementptr inbounds i8, ptr %1, i64 20
  %521 = load i32, ptr %520, align 4, !tbaa !88
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds ptr, ptr %7, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !26
  %525 = getelementptr inbounds i8, ptr %1, i64 16
  %526 = load i32, ptr %525, align 4, !tbaa !89
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i8, ptr %524, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !66
  br i1 %519, label %533, label %530

530:                                              ; preds = %511
  %531 = lshr i8 %529, 1
  %532 = zext nneg i8 %531 to i32
  br label %535

533:                                              ; preds = %511
  %534 = zext i8 %529 to i32
  br label %535

535:                                              ; preds = %507, %530, %533
  %536 = phi i32 [ %532, %530 ], [ %534, %533 ], [ -1, %507 ]
  %537 = load i32, ptr %2, align 4, !tbaa !83
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %563, label %539

539:                                              ; preds = %535
  %540 = getelementptr inbounds i8, ptr %18, i64 31576
  %541 = load ptr, ptr %540, align 8, !tbaa !90
  %542 = getelementptr inbounds i8, ptr %2, i64 4
  %543 = load i32, ptr %542, align 4, !tbaa !91
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.macroblock, ptr %541, i64 %544, i32 19
  %546 = load i32, ptr %545, align 8, !tbaa !92
  %547 = icmp eq i32 %546, 0
  %548 = getelementptr inbounds i8, ptr %2, i64 20
  %549 = load i32, ptr %548, align 4, !tbaa !88
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds ptr, ptr %7, i64 %550
  %552 = load ptr, ptr %551, align 8, !tbaa !26
  %553 = getelementptr inbounds i8, ptr %2, i64 16
  %554 = load i32, ptr %553, align 4, !tbaa !89
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8, ptr %552, i64 %555
  %557 = load i8, ptr %556, align 1, !tbaa !66
  br i1 %547, label %561, label %558

558:                                              ; preds = %539
  %559 = lshr i8 %557, 1
  %560 = zext nneg i8 %559 to i32
  br label %563

561:                                              ; preds = %539
  %562 = zext i8 %557 to i32
  br label %563

563:                                              ; preds = %535, %558, %561
  %564 = phi i32 [ %560, %558 ], [ %562, %561 ], [ -1, %535 ]
  %565 = load i32, ptr %3, align 4, !tbaa !83
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %591, label %567

567:                                              ; preds = %563
  %568 = getelementptr inbounds i8, ptr %18, i64 31576
  %569 = load ptr, ptr %568, align 8, !tbaa !90
  %570 = getelementptr inbounds i8, ptr %3, i64 4
  %571 = load i32, ptr %570, align 4, !tbaa !91
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.macroblock, ptr %569, i64 %572, i32 19
  %574 = load i32, ptr %573, align 8, !tbaa !92
  %575 = icmp eq i32 %574, 0
  %576 = getelementptr inbounds i8, ptr %3, i64 20
  %577 = load i32, ptr %576, align 4, !tbaa !88
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds ptr, ptr %7, i64 %578
  %580 = load ptr, ptr %579, align 8, !tbaa !26
  %581 = getelementptr inbounds i8, ptr %3, i64 16
  %582 = load i32, ptr %581, align 4, !tbaa !89
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8, ptr %580, i64 %583
  %585 = load i8, ptr %584, align 1, !tbaa !66
  br i1 %575, label %589, label %586

586:                                              ; preds = %567
  %587 = lshr i8 %585, 1
  %588 = zext nneg i8 %587 to i32
  br label %591

589:                                              ; preds = %567
  %590 = zext i8 %585 to i32
  br label %591

591:                                              ; preds = %563, %586, %589
  %592 = phi i32 [ %588, %586 ], [ %590, %589 ], [ -1, %563 ]
  br i1 %209, label %593, label %595

593:                                              ; preds = %591
  %594 = getelementptr inbounds i8, ptr %16, i64 16
  store i32 3, ptr %594, align 4, !tbaa !21
  br label %633

595:                                              ; preds = %591
  %596 = sext i32 %508 to i64
  %597 = getelementptr inbounds i32, ptr %14, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !20
  %599 = getelementptr inbounds i8, ptr %0, i64 20
  %600 = load i32, ptr %599, align 4, !tbaa !88
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds ptr, ptr %8, i64 %601
  %603 = load ptr, ptr %602, align 8, !tbaa !26
  %604 = getelementptr inbounds i8, ptr %0, i64 16
  %605 = load i32, ptr %604, align 4, !tbaa !89
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds ptr, ptr %603, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !26
  %609 = load i16, ptr %608, align 2, !tbaa !72
  %610 = sext i16 %609 to i32
  %611 = mul nsw i32 %598, %610
  %612 = add nsw i32 %611, 512
  %613 = ashr i32 %612, 10
  %614 = getelementptr inbounds i8, ptr %16, i64 16
  store i32 %613, ptr %614, align 4, !tbaa !21
  %615 = getelementptr inbounds i8, ptr %18, i64 31576
  %616 = load ptr, ptr %615, align 8, !tbaa !90
  %617 = getelementptr inbounds i8, ptr %0, i64 4
  %618 = load i32, ptr %617, align 4, !tbaa !91
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds %struct.macroblock, ptr %616, i64 %619, i32 19
  %621 = load i32, ptr %620, align 8, !tbaa !92
  %622 = icmp eq i32 %621, 0
  %623 = getelementptr inbounds i8, ptr %608, i64 2
  %624 = load i16, ptr %623, align 2, !tbaa !72
  %625 = sext i16 %624 to i32
  %626 = mul nsw i32 %598, %625
  br i1 %622, label %630, label %627

627:                                              ; preds = %595
  %628 = add nsw i32 %626, 256
  %629 = ashr i32 %628, 9
  br label %633

630:                                              ; preds = %595
  %631 = add nsw i32 %626, 512
  %632 = ashr i32 %631, 10
  br label %633

633:                                              ; preds = %593, %627, %630
  %634 = phi i32 [ %629, %627 ], [ %632, %630 ], [ 0, %593 ]
  %635 = getelementptr inbounds i8, ptr %16, i64 20
  store i32 %634, ptr %635, align 4, !tbaa !23
  br i1 %510, label %636, label %638

636:                                              ; preds = %633
  %637 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 0, ptr %637, align 4, !tbaa !21
  br label %676

638:                                              ; preds = %633
  %639 = sext i32 %536 to i64
  %640 = getelementptr inbounds i32, ptr %14, i64 %639
  %641 = load i32, ptr %640, align 4, !tbaa !20
  %642 = getelementptr inbounds i8, ptr %1, i64 20
  %643 = load i32, ptr %642, align 4, !tbaa !88
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds ptr, ptr %8, i64 %644
  %646 = load ptr, ptr %645, align 8, !tbaa !26
  %647 = getelementptr inbounds i8, ptr %1, i64 16
  %648 = load i32, ptr %647, align 4, !tbaa !89
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds ptr, ptr %646, i64 %649
  %651 = load ptr, ptr %650, align 8, !tbaa !26
  %652 = load i16, ptr %651, align 2, !tbaa !72
  %653 = sext i16 %652 to i32
  %654 = mul nsw i32 %641, %653
  %655 = add nsw i32 %654, 512
  %656 = ashr i32 %655, 10
  %657 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 %656, ptr %657, align 4, !tbaa !21
  %658 = getelementptr inbounds i8, ptr %18, i64 31576
  %659 = load ptr, ptr %658, align 8, !tbaa !90
  %660 = getelementptr inbounds i8, ptr %1, i64 4
  %661 = load i32, ptr %660, align 4, !tbaa !91
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.macroblock, ptr %659, i64 %662, i32 19
  %664 = load i32, ptr %663, align 8, !tbaa !92
  %665 = icmp eq i32 %664, 0
  %666 = getelementptr inbounds i8, ptr %651, i64 2
  %667 = load i16, ptr %666, align 2, !tbaa !72
  %668 = sext i16 %667 to i32
  %669 = mul nsw i32 %641, %668
  br i1 %665, label %673, label %670

670:                                              ; preds = %638
  %671 = add nsw i32 %669, 256
  %672 = ashr i32 %671, 9
  br label %676

673:                                              ; preds = %638
  %674 = add nsw i32 %669, 512
  %675 = ashr i32 %674, 10
  br label %676

676:                                              ; preds = %636, %670, %673
  %677 = phi i32 [ %672, %670 ], [ %675, %673 ], [ 3, %636 ]
  %678 = getelementptr inbounds i8, ptr %16, i64 36
  store i32 %677, ptr %678, align 4, !tbaa !23
  br i1 %538, label %679, label %681

679:                                              ; preds = %676
  %680 = getelementptr inbounds i8, ptr %16, i64 48
  store i32 -3, ptr %680, align 4, !tbaa !21
  br label %719

681:                                              ; preds = %676
  %682 = sext i32 %564 to i64
  %683 = getelementptr inbounds i32, ptr %14, i64 %682
  %684 = load i32, ptr %683, align 4, !tbaa !20
  %685 = getelementptr inbounds i8, ptr %2, i64 20
  %686 = load i32, ptr %685, align 4, !tbaa !88
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds ptr, ptr %8, i64 %687
  %689 = load ptr, ptr %688, align 8, !tbaa !26
  %690 = getelementptr inbounds i8, ptr %2, i64 16
  %691 = load i32, ptr %690, align 4, !tbaa !89
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds ptr, ptr %689, i64 %692
  %694 = load ptr, ptr %693, align 8, !tbaa !26
  %695 = load i16, ptr %694, align 2, !tbaa !72
  %696 = sext i16 %695 to i32
  %697 = mul nsw i32 %684, %696
  %698 = add nsw i32 %697, 512
  %699 = ashr i32 %698, 10
  %700 = getelementptr inbounds i8, ptr %16, i64 48
  store i32 %699, ptr %700, align 4, !tbaa !21
  %701 = getelementptr inbounds i8, ptr %18, i64 31576
  %702 = load ptr, ptr %701, align 8, !tbaa !90
  %703 = getelementptr inbounds i8, ptr %2, i64 4
  %704 = load i32, ptr %703, align 4, !tbaa !91
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.macroblock, ptr %702, i64 %705, i32 19
  %707 = load i32, ptr %706, align 8, !tbaa !92
  %708 = icmp eq i32 %707, 0
  %709 = getelementptr inbounds i8, ptr %694, i64 2
  %710 = load i16, ptr %709, align 2, !tbaa !72
  %711 = sext i16 %710 to i32
  %712 = mul nsw i32 %684, %711
  br i1 %708, label %716, label %713

713:                                              ; preds = %681
  %714 = add nsw i32 %712, 256
  %715 = ashr i32 %714, 9
  br label %719

716:                                              ; preds = %681
  %717 = add nsw i32 %712, 512
  %718 = ashr i32 %717, 10
  br label %719

719:                                              ; preds = %679, %713, %716
  %720 = phi i32 [ %715, %713 ], [ %718, %716 ], [ 3, %679 ]
  %721 = getelementptr inbounds i8, ptr %16, i64 52
  store i32 %720, ptr %721, align 4, !tbaa !23
  br i1 %566, label %722, label %724

722:                                              ; preds = %719
  %723 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 0, ptr %723, align 4, !tbaa !21
  br label %762

724:                                              ; preds = %719
  %725 = sext i32 %592 to i64
  %726 = getelementptr inbounds i32, ptr %14, i64 %725
  %727 = load i32, ptr %726, align 4, !tbaa !20
  %728 = getelementptr inbounds i8, ptr %3, i64 20
  %729 = load i32, ptr %728, align 4, !tbaa !88
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds ptr, ptr %8, i64 %730
  %732 = load ptr, ptr %731, align 8, !tbaa !26
  %733 = getelementptr inbounds i8, ptr %3, i64 16
  %734 = load i32, ptr %733, align 4, !tbaa !89
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds ptr, ptr %732, i64 %735
  %737 = load ptr, ptr %736, align 8, !tbaa !26
  %738 = load i16, ptr %737, align 2, !tbaa !72
  %739 = sext i16 %738 to i32
  %740 = mul nsw i32 %727, %739
  %741 = add nsw i32 %740, 512
  %742 = ashr i32 %741, 10
  %743 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 %742, ptr %743, align 4, !tbaa !21
  %744 = getelementptr inbounds i8, ptr %18, i64 31576
  %745 = load ptr, ptr %744, align 8, !tbaa !90
  %746 = getelementptr inbounds i8, ptr %3, i64 4
  %747 = load i32, ptr %746, align 4, !tbaa !91
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.macroblock, ptr %745, i64 %748, i32 19
  %750 = load i32, ptr %749, align 8, !tbaa !92
  %751 = icmp eq i32 %750, 0
  %752 = getelementptr inbounds i8, ptr %737, i64 2
  %753 = load i16, ptr %752, align 2, !tbaa !72
  %754 = sext i16 %753 to i32
  %755 = mul nsw i32 %727, %754
  br i1 %751, label %759, label %756

756:                                              ; preds = %724
  %757 = add nsw i32 %755, 256
  %758 = ashr i32 %757, 9
  br label %762

759:                                              ; preds = %724
  %760 = add nsw i32 %755, 512
  %761 = ashr i32 %760, 10
  br label %762

762:                                              ; preds = %759, %756, %722, %479, %476, %442, %202
  %763 = phi i32 [ %204, %202 ], [ %478, %476 ], [ %481, %479 ], [ -3, %442 ], [ %758, %756 ], [ %761, %759 ], [ -3, %722 ]
  %764 = phi i32 [ %54, %202 ], [ %260, %476 ], [ %260, %479 ], [ %260, %442 ], [ %536, %756 ], [ %536, %759 ], [ %536, %722 ]
  %765 = phi i32 [ %70, %202 ], [ %286, %476 ], [ %286, %479 ], [ %286, %442 ], [ %564, %756 ], [ %564, %759 ], [ %564, %722 ]
  %766 = phi i32 [ %86, %202 ], [ %312, %476 ], [ %312, %479 ], [ %312, %442 ], [ %592, %756 ], [ %592, %759 ], [ %592, %722 ]
  %767 = phi i32 [ %38, %202 ], [ %234, %476 ], [ %234, %479 ], [ %234, %442 ], [ %508, %756 ], [ %508, %759 ], [ %508, %722 ]
  %768 = getelementptr inbounds i8, ptr %16, i64 68
  store i32 %763, ptr %768, align 4, !tbaa !23
  %769 = icmp eq i32 %767, -1
  %770 = zext i1 %769 to i16
  %771 = icmp eq i32 %764, -1
  %772 = zext i1 %771 to i16
  %773 = add nuw nsw i16 %770, %772
  %774 = icmp eq i32 %765, -1
  %775 = icmp eq i32 %766, -1
  %776 = select i1 %774, i1 %775, i1 false
  %777 = zext i1 %776 to i16
  %778 = add nuw nsw i16 %773, %777
  ret i16 %778
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind
define dso_local signext i32 @EPZSBiPredBlockMotionSearch(ptr noundef %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i16 noundef signext %9, i16 noundef signext %10, i16 noundef signext %11, i16 noundef signext %12, ptr nocapture noundef %13, ptr nocapture noundef %14, ptr nocapture noundef readonly %15, ptr nocapture noundef readonly %16, i32 noundef signext %17, i32 noundef signext %18, i32 noundef signext %19) local_unnamed_addr #0 {
  %21 = alloca %struct.pix_pos, align 4
  %22 = alloca %struct.pix_pos, align 4
  %23 = alloca %struct.pix_pos, align 4
  %24 = alloca %struct.pix_pos, align 4
  %25 = alloca %struct.pix_pos, align 4
  %26 = alloca %struct.pix_pos, align 4
  %27 = alloca %struct.pix_pos, align 4
  %28 = alloca %struct.pix_pos, align 4
  %29 = load ptr, ptr @input, align 8, !tbaa !26
  %30 = getelementptr inbounds i8, ptr %29, i64 84
  %31 = sext i32 %8 to i64
  %32 = getelementptr inbounds [8 x [2 x i32]], ptr %30, i64 0, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !20
  %35 = load i32, ptr %32, align 4, !tbaa !20
  %36 = shl i32 %35, 16
  %37 = ashr exact i32 %36, 16
  %38 = ashr i32 %36, 18
  %39 = load ptr, ptr @img, align 8, !tbaa !26
  %40 = getelementptr inbounds i8, ptr %39, i64 168
  %41 = load i32, ptr %40, align 8, !tbaa !73
  %42 = sub nsw i32 %6, %41
  %43 = getelementptr inbounds i8, ptr %39, i64 172
  %44 = load i32, ptr %43, align 4, !tbaa !74
  %45 = sub nsw i32 %7, %44
  %46 = shl i32 %42, 16
  %47 = ashr exact i32 %46, 16
  %48 = ashr i32 %46, 18
  %49 = shl i32 %45, 16
  %50 = ashr i32 %49, 18
  %51 = shl i32 %6, 2
  %52 = sext i16 %9 to i32
  %53 = shl i32 %7, 2
  %54 = sext i16 %10 to i32
  %55 = sext i16 %11 to i32
  %56 = add nsw i32 %51, %55
  %57 = sext i16 %12 to i32
  %58 = add nsw i32 %53, %57
  %59 = load i16, ptr %13, align 2, !tbaa !72
  %60 = sext i16 %59 to i32
  %61 = add nsw i32 %60, %6
  %62 = load i16, ptr %14, align 2, !tbaa !72
  %63 = sext i16 %62 to i32
  %64 = add nsw i32 %63, %7
  %65 = load i16, ptr %15, align 2, !tbaa !72
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %66, %6
  %68 = load i16, ptr %16, align 2, !tbaa !72
  %69 = sext i16 %68 to i32
  %70 = add nsw i32 %69, %7
  %71 = getelementptr inbounds [8 x i32], ptr @medthres, i64 0, i64 %31
  %72 = load i32, ptr %71, align 4, !tbaa !20
  %73 = sub nsw i32 %17, %60
  %74 = sub nsw i32 %17, %63
  %75 = load ptr, ptr @active_pps, align 8, !tbaa !26
  %76 = getelementptr inbounds i8, ptr %75, i64 196
  %77 = load i32, ptr %76, align 4, !tbaa !77
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %20
  %80 = icmp eq i32 %2, 0
  %81 = load ptr, ptr @wp_offset, align 8, !tbaa !26
  %82 = sext i32 %3 to i64
  %83 = getelementptr ptr, ptr %81, i64 %82
  br i1 %80, label %84, label %91

84:                                               ; preds = %79
  %85 = load ptr, ptr %83, align 8, !tbaa !26
  %86 = sext i16 %1 to i64
  %87 = getelementptr inbounds ptr, ptr %85, i64 %86
  %88 = getelementptr i8, ptr %83, i64 8
  %89 = load ptr, ptr %88, align 8, !tbaa !26
  %90 = getelementptr inbounds ptr, ptr %89, i64 %86
  br label %95

91:                                               ; preds = %79
  %92 = getelementptr i8, ptr %83, i64 8
  %93 = load ptr, ptr %92, align 8, !tbaa !26
  %94 = load ptr, ptr %83, align 8, !tbaa !26
  br label %95

95:                                               ; preds = %91, %84
  %96 = phi ptr [ %90, %84 ], [ %94, %91 ]
  %97 = phi ptr [ %87, %84 ], [ %93, %91 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !26
  %99 = load i32, ptr %98, align 4, !tbaa !20
  %100 = load ptr, ptr %96, align 8, !tbaa !26
  %101 = load i32, ptr %100, align 4, !tbaa !20
  br label %102

102:                                              ; preds = %95, %20
  %103 = phi i32 [ 0, %20 ], [ %99, %95 ]
  %104 = phi i32 [ 0, %20 ], [ %101, %95 ]
  %105 = load ptr, ptr @searchPattern, align 8, !tbaa !26
  %106 = add nsw i32 %3, %2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !26
  %110 = sext i16 %1 to i64
  %111 = getelementptr inbounds ptr, ptr %109, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !26
  %113 = getelementptr inbounds i8, ptr %112, i64 6432
  %114 = load ptr, ptr %113, align 8, !tbaa !94
  store ptr %114, ptr @ref_pic1, align 8, !tbaa !26
  %115 = xor i32 %2, 1
  %116 = add nsw i32 %115, %3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !26
  %120 = load ptr, ptr %119, align 8, !tbaa !26
  %121 = getelementptr inbounds i8, ptr %120, i64 6432
  %122 = load ptr, ptr %121, align 8, !tbaa !94
  store ptr %122, ptr @ref_pic2, align 8, !tbaa !26
  %123 = getelementptr inbounds i8, ptr %112, i64 6392
  %124 = load i32, ptr %123, align 8, !tbaa !64
  %125 = trunc i32 %124 to i16
  store i16 %125, ptr @img_width, align 2, !tbaa !72
  %126 = getelementptr inbounds i8, ptr %112, i64 6396
  %127 = load i32, ptr %126, align 4, !tbaa !63
  %128 = trunc i32 %127 to i16
  store i16 %128, ptr @img_height, align 2, !tbaa !72
  br i1 %78, label %160, label %129

129:                                              ; preds = %102
  %130 = icmp eq i32 %2, 0
  %131 = load ptr, ptr @wbp_weight, align 8, !tbaa !26
  %132 = sext i32 %3 to i64
  %133 = getelementptr ptr, ptr %131, i64 %132
  br i1 %130, label %134, label %147

134:                                              ; preds = %129
  %135 = load ptr, ptr %133, align 8, !tbaa !26
  %136 = getelementptr inbounds ptr, ptr %135, i64 %110
  %137 = load ptr, ptr %136, align 8, !tbaa !26
  %138 = load ptr, ptr %137, align 8, !tbaa !26
  %139 = load i32, ptr %138, align 4, !tbaa !20
  %140 = trunc i32 %139 to i16
  store i16 %140, ptr @weight1, align 2, !tbaa !72
  %141 = getelementptr i8, ptr %133, i64 8
  %142 = load ptr, ptr %141, align 8, !tbaa !26
  %143 = getelementptr inbounds ptr, ptr %142, i64 %110
  %144 = load ptr, ptr %143, align 8, !tbaa !26
  %145 = load ptr, ptr %144, align 8, !tbaa !26
  %146 = load i32, ptr %145, align 4, !tbaa !20
  br label %164

147:                                              ; preds = %129
  %148 = getelementptr i8, ptr %133, i64 8
  %149 = load ptr, ptr %148, align 8, !tbaa !26
  %150 = load ptr, ptr %149, align 8, !tbaa !26
  %151 = getelementptr inbounds ptr, ptr %150, i64 %110
  %152 = load ptr, ptr %151, align 8, !tbaa !26
  %153 = load i32, ptr %152, align 4, !tbaa !20
  %154 = trunc i32 %153 to i16
  store i16 %154, ptr @weight1, align 2, !tbaa !72
  %155 = load ptr, ptr %133, align 8, !tbaa !26
  %156 = load ptr, ptr %155, align 8, !tbaa !26
  %157 = getelementptr inbounds ptr, ptr %156, i64 %110
  %158 = load ptr, ptr %157, align 8, !tbaa !26
  %159 = load i32, ptr %158, align 4, !tbaa !20
  br label %164

160:                                              ; preds = %102
  %161 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !20
  %162 = shl nuw i32 1, %161
  %163 = trunc i32 %162 to i16
  store i16 %163, ptr @weight1, align 2, !tbaa !72
  br label %164

164:                                              ; preds = %134, %147, %160
  %165 = phi ptr [ @computeBiPredSad1, %160 ], [ @computeBiPredSad2, %134 ], [ @computeBiPredSad2, %147 ]
  %166 = phi i32 [ %162, %160 ], [ %146, %134 ], [ %159, %147 ]
  %167 = trunc i32 %166 to i16
  store i16 %167, ptr @weight2, align 2, !tbaa !72
  %168 = shl i32 %103, 16
  %169 = ashr exact i32 %168, 16
  %170 = shl i32 %104, 16
  %171 = ashr exact i32 %170, 16
  %172 = add nsw i32 %169, 1
  %173 = add nsw i32 %172, %171
  %174 = lshr i32 %173, 1
  %175 = trunc i32 %174 to i16
  store i16 %175, ptr @offsetBi, align 2, !tbaa !72
  store ptr %165, ptr @computeBiPredSad, align 8, !tbaa !26
  %176 = icmp sgt i32 %61, %17
  br i1 %176, label %177, label %193

177:                                              ; preds = %164
  %178 = shl i32 %124, 16
  %179 = ashr exact i32 %178, 16
  %180 = add i32 %37, %17
  %181 = sub i32 %179, %180
  %182 = icmp slt i32 %61, %181
  %183 = icmp sgt i32 %64, %17
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %185, label %193

185:                                              ; preds = %177
  %186 = shl i32 %127, 16
  %187 = ashr exact i32 %186, 16
  %188 = shl i32 %34, 16
  %189 = ashr exact i32 %188, 16
  %190 = add i32 %189, %17
  %191 = sub i32 %187, %190
  %192 = icmp slt i32 %64, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %185, %177, %164
  br label %194

194:                                              ; preds = %185, %193
  %195 = phi ptr [ @UMVLineX, %193 ], [ @FastLineX, %185 ]
  store ptr %195, ptr @get_ref_line2, align 8, !tbaa !26
  %196 = icmp sgt i32 %67, %17
  br i1 %196, label %197, label %213

197:                                              ; preds = %194
  %198 = shl i32 %124, 16
  %199 = ashr exact i32 %198, 16
  %200 = add i32 %37, %17
  %201 = sub i32 %199, %200
  %202 = icmp slt i32 %67, %201
  %203 = icmp sgt i32 %70, %17
  %204 = select i1 %202, i1 %203, i1 false
  br i1 %204, label %205, label %213

205:                                              ; preds = %197
  %206 = shl i32 %127, 16
  %207 = ashr exact i32 %206, 16
  %208 = shl i32 %34, 16
  %209 = ashr exact i32 %208, 16
  %210 = add i32 %209, %17
  %211 = sub i32 %207, %210
  %212 = icmp slt i32 %70, %211
  br i1 %212, label %216, label %213

213:                                              ; preds = %205, %197, %194
  %214 = shl i32 %34, 16
  %215 = ashr exact i32 %214, 16
  br label %216

216:                                              ; preds = %205, %213
  %217 = phi i32 [ %209, %205 ], [ %215, %213 ]
  %218 = phi ptr [ @FastLineX, %205 ], [ @UMVLineX, %213 ]
  store ptr %218, ptr @get_ref_line1, align 8, !tbaa !26
  %219 = load ptr, ptr @EPZSMap, align 8, !tbaa !26
  %220 = load ptr, ptr %219, align 8, !tbaa !26
  %221 = shl nsw i32 %17, 1
  %222 = or disjoint i32 %221, 1
  %223 = mul nsw i32 %222, %222
  %224 = zext nneg i32 %223 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %220, i8 0, i64 %224, i1 false)
  %225 = load ptr, ptr @EPZSMap, align 8, !tbaa !26
  %226 = sext i32 %17 to i64
  %227 = getelementptr inbounds ptr, ptr %225, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !26
  %229 = getelementptr inbounds i8, ptr %228, i64 %226
  store i8 1, ptr %229, align 1, !tbaa !66
  %230 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %231 = shl i32 %67, 2
  %232 = add i32 %51, %52
  %233 = sub i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, ptr %230, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !20
  %237 = shl i32 %70, 2
  %238 = add i32 %53, %54
  %239 = sub i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, ptr %230, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !20
  %243 = add nsw i32 %242, %236
  %244 = mul nsw i32 %243, %19
  %245 = ashr i32 %244, 16
  %246 = shl i32 %61, 2
  %247 = sub nsw i32 %246, %56
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, ptr %230, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !20
  %251 = shl i32 %64, 2
  %252 = sub nsw i32 %251, %58
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, ptr %230, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !20
  %256 = add nsw i32 %255, %250
  %257 = mul nsw i32 %256, %19
  %258 = ashr i32 %257, 16
  %259 = add nsw i32 %258, %245
  %260 = tail call signext i32 %165(ptr noundef %0, i32 noundef signext %217, i32 noundef signext %37, i32 noundef signext %38, i32 noundef signext %259, i32 noundef signext 2147483647, i32 noundef signext %67, i32 noundef signext %70, i32 noundef signext %61, i32 noundef signext %64) #15, !callees !95
  %261 = icmp sgt i32 %260, %72
  br i1 %261, label %262, label %602

262:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #15
  %263 = load ptr, ptr @img, align 8, !tbaa !26
  %264 = getelementptr inbounds i8, ptr %263, i64 12
  %265 = load i32, ptr %264, align 4, !tbaa !82
  call void @getLuma4x4Neighbour(i32 noundef signext %265, i32 noundef signext %48, i32 noundef signext %50, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %21) #15
  %266 = load ptr, ptr @img, align 8, !tbaa !26
  %267 = getelementptr inbounds i8, ptr %266, i64 12
  %268 = load i32, ptr %267, align 4, !tbaa !82
  call void @getLuma4x4Neighbour(i32 noundef signext %268, i32 noundef signext %48, i32 noundef signext %50, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %22) #15
  %269 = load ptr, ptr @img, align 8, !tbaa !26
  %270 = getelementptr inbounds i8, ptr %269, i64 12
  %271 = load i32, ptr %270, align 4, !tbaa !82
  call void @getLuma4x4Neighbour(i32 noundef signext %271, i32 noundef signext %48, i32 noundef signext %50, i32 noundef signext %37, i32 noundef signext -1, ptr noundef nonnull %23) #15
  %272 = load ptr, ptr @img, align 8, !tbaa !26
  %273 = getelementptr inbounds i8, ptr %272, i64 12
  %274 = load i32, ptr %273, align 4, !tbaa !82
  call void @getLuma4x4Neighbour(i32 noundef signext %274, i32 noundef signext %48, i32 noundef signext %50, i32 noundef signext -1, i32 noundef signext -1, ptr noundef nonnull %24) #15
  %275 = icmp sgt i32 %49, 0
  br i1 %275, label %276, label %291

276:                                              ; preds = %262
  %277 = icmp slt i32 %47, 8
  br i1 %277, label %278, label %287

278:                                              ; preds = %276
  %279 = icmp eq i32 %49, 524288
  br i1 %279, label %280, label %283

280:                                              ; preds = %278
  %281 = icmp eq i32 %36, 1048576
  br i1 %281, label %282, label %291

282:                                              ; preds = %280
  store i32 0, ptr %23, align 4, !tbaa !83
  br label %291

283:                                              ; preds = %278
  %284 = add nsw i32 %47, %37
  %285 = icmp eq i32 %284, 8
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  store i32 0, ptr %23, align 4, !tbaa !83
  br label %291

287:                                              ; preds = %276
  %288 = add nsw i32 %47, %37
  %289 = icmp eq i32 %288, 16
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  store i32 0, ptr %23, align 4, !tbaa !83
  br label %291

291:                                              ; preds = %283, %286, %280, %282, %290, %287, %262
  %292 = load i32, ptr %71, align 4, !tbaa !20
  %293 = mul nsw i32 %292, 11
  %294 = sext i32 %2 to i64
  %295 = getelementptr inbounds ptr, ptr %4, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !26
  %297 = getelementptr inbounds ptr, ptr %5, i64 %294
  %298 = load ptr, ptr %297, align 8, !tbaa !26
  %299 = load ptr, ptr @predictor, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %25, ptr noundef nonnull align 4 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !85
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %26, ptr noundef nonnull align 4 dereferenceable(24) %22, i64 24, i1 false), !tbaa.struct !85
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %27, ptr noundef nonnull align 4 dereferenceable(24) %23, i64 24, i1 false), !tbaa.struct !85
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %28, ptr noundef nonnull align 4 dereferenceable(24) %24, i64 24, i1 false), !tbaa.struct !85
  %300 = call fastcc signext i16 @EPZSSpatialPredictors(ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28, i32 noundef signext %2, i32 noundef signext %3, i16 noundef signext %1, ptr noundef %296, ptr noundef %298, ptr noundef %299)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #15
  br label %301

301:                                              ; preds = %291, %381
  %302 = phi i64 [ 0, %291 ], [ %389, %381 ]
  %303 = phi i32 [ %260, %291 ], [ %388, %381 ]
  %304 = phi i8 [ 0, %291 ], [ %387, %381 ]
  %305 = phi i32 [ %60, %291 ], [ %386, %381 ]
  %306 = phi i32 [ %63, %291 ], [ %385, %381 ]
  %307 = phi i32 [ 2147483647, %291 ], [ %384, %381 ]
  %308 = phi i32 [ 0, %291 ], [ %383, %381 ]
  %309 = phi i32 [ 0, %291 ], [ %382, %381 ]
  %310 = load ptr, ptr @predictor, align 8, !tbaa !26
  %311 = getelementptr inbounds i8, ptr %310, i64 8
  %312 = load ptr, ptr %311, align 8, !tbaa !19
  %313 = getelementptr inbounds %struct.SPoint, ptr %312, i64 %302
  %314 = load i32, ptr %313, align 4, !tbaa !21
  %315 = getelementptr inbounds i8, ptr %313, i64 4
  %316 = load i32, ptr %315, align 4, !tbaa !23
  %317 = load i16, ptr %13, align 2, !tbaa !72
  %318 = sext i16 %317 to i32
  %319 = sub nsw i32 %314, %318
  %320 = call i32 @llvm.abs.i32(i32 %319, i1 true)
  %321 = icmp sgt i32 %320, %17
  br i1 %321, label %328, label %322

322:                                              ; preds = %301
  %323 = load i16, ptr %14, align 2, !tbaa !72
  %324 = sext i16 %323 to i32
  %325 = sub nsw i32 %316, %324
  %326 = call i32 @llvm.abs.i32(i32 %325, i1 true)
  %327 = icmp ugt i32 %326, %17
  br i1 %327, label %332, label %336

328:                                              ; preds = %301
  %329 = icmp ne i32 %314, 0
  %330 = icmp ne i32 %316, 0
  %331 = select i1 %329, i1 true, i1 %330
  br i1 %331, label %381, label %348

332:                                              ; preds = %322
  %333 = icmp ne i32 %314, 0
  %334 = icmp ne i32 %316, 0
  %335 = select i1 %333, i1 true, i1 %334
  br i1 %335, label %381, label %348

336:                                              ; preds = %322
  %337 = load ptr, ptr @EPZSMap, align 8, !tbaa !26
  %338 = add nsw i32 %316, %74
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds ptr, ptr %337, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !26
  %342 = add nsw i32 %314, %73
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, ptr %341, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !66
  %346 = icmp eq i8 %345, 1
  br i1 %346, label %381, label %347

347:                                              ; preds = %336
  store i8 1, ptr %344, align 1, !tbaa !66
  br label %348

348:                                              ; preds = %332, %328, %347
  %349 = add nsw i32 %314, %6
  %350 = add nsw i32 %316, %7
  %351 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %352 = getelementptr inbounds i32, ptr %351, i64 %234
  %353 = load i32, ptr %352, align 4, !tbaa !20
  %354 = getelementptr inbounds i32, ptr %351, i64 %240
  %355 = load i32, ptr %354, align 4, !tbaa !20
  %356 = add nsw i32 %355, %353
  %357 = mul nsw i32 %356, %19
  %358 = ashr i32 %357, 16
  %359 = shl i32 %349, 2
  %360 = sub nsw i32 %359, %56
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, ptr %351, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !20
  %364 = shl i32 %350, 2
  %365 = sub nsw i32 %364, %58
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, ptr %351, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !20
  %369 = add nsw i32 %368, %363
  %370 = mul nsw i32 %369, %19
  %371 = ashr i32 %370, 16
  %372 = add nsw i32 %371, %358
  %373 = icmp slt i32 %372, %307
  br i1 %373, label %374, label %381

374:                                              ; preds = %348
  %375 = load ptr, ptr @computeBiPredSad, align 8, !tbaa !26
  %376 = call signext i32 %375(ptr noundef %0, i32 noundef signext %217, i32 noundef signext %37, i32 noundef signext %38, i32 noundef signext %372, i32 noundef signext %307, i32 noundef signext %67, i32 noundef signext %70, i32 noundef signext %349, i32 noundef signext %350) #15, !callees !95
  %377 = icmp slt i32 %376, %303
  br i1 %377, label %381, label %378

378:                                              ; preds = %374
  %379 = icmp slt i32 %376, %307
  br i1 %379, label %380, label %381

380:                                              ; preds = %378
  br label %381

381:                                              ; preds = %332, %374, %380, %378, %348, %336, %328
  %382 = phi i32 [ %309, %328 ], [ %309, %336 ], [ %309, %348 ], [ %316, %380 ], [ %309, %378 ], [ %306, %374 ], [ %309, %332 ]
  %383 = phi i32 [ %308, %328 ], [ %308, %336 ], [ %308, %348 ], [ %314, %380 ], [ %308, %378 ], [ %305, %374 ], [ %308, %332 ]
  %384 = phi i32 [ %307, %328 ], [ %307, %336 ], [ %307, %348 ], [ %376, %380 ], [ %307, %378 ], [ %303, %374 ], [ %307, %332 ]
  %385 = phi i32 [ %306, %328 ], [ %306, %336 ], [ %306, %348 ], [ %306, %380 ], [ %306, %378 ], [ %316, %374 ], [ %306, %332 ]
  %386 = phi i32 [ %305, %328 ], [ %305, %336 ], [ %305, %348 ], [ %305, %380 ], [ %305, %378 ], [ %314, %374 ], [ %305, %332 ]
  %387 = phi i8 [ %304, %328 ], [ %304, %336 ], [ %304, %348 ], [ 1, %380 ], [ %304, %378 ], [ 1, %374 ], [ %304, %332 ]
  %388 = phi i32 [ %303, %328 ], [ %303, %336 ], [ %303, %348 ], [ %303, %380 ], [ %303, %378 ], [ %376, %374 ], [ %303, %332 ]
  %389 = add nuw nsw i64 %302, 1
  %390 = icmp eq i64 %389, 5
  br i1 %390, label %391, label %301

391:                                              ; preds = %381
  %392 = ashr i32 %293, 3
  %393 = icmp sgt i32 %388, %392
  br i1 %393, label %394, label %596

394:                                              ; preds = %391
  %395 = load ptr, ptr @input, align 8, !tbaa !26
  %396 = getelementptr inbounds i8, ptr %395, i64 3064
  %397 = load i32, ptr %396, align 8, !tbaa !49
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %435, label %399

399:                                              ; preds = %394
  %400 = load i32, ptr %71, align 4, !tbaa !20
  %401 = ashr i32 %400, 1
  %402 = add i32 %400, %392
  %403 = add i32 %402, %401
  %404 = icmp slt i32 %388, %403
  br i1 %404, label %405, label %425

405:                                              ; preds = %399
  %406 = icmp eq i32 %386, 0
  %407 = icmp eq i32 %385, 0
  %408 = select i1 %406, i1 %407, i1 false
  br i1 %408, label %421, label %409

409:                                              ; preds = %405
  %410 = load i16, ptr %13, align 2, !tbaa !72
  %411 = sext i16 %410 to i32
  %412 = sub nsw i32 %386, %411
  %413 = call i32 @llvm.abs.i32(i32 %412, i1 true)
  %414 = icmp ult i32 %413, 2
  br i1 %414, label %415, label %423

415:                                              ; preds = %409
  %416 = load i16, ptr %14, align 2, !tbaa !72
  %417 = sext i16 %416 to i32
  %418 = sub nsw i32 %385, %417
  %419 = call i32 @llvm.abs.i32(i32 %418, i1 true)
  %420 = icmp ult i32 %419, 2
  br i1 %420, label %421, label %423

421:                                              ; preds = %405, %415
  %422 = load ptr, ptr @sdiamond, align 8, !tbaa !26
  br label %435

423:                                              ; preds = %415, %409
  %424 = load ptr, ptr @square, align 8, !tbaa !26
  br label %435

425:                                              ; preds = %399
  %426 = icmp sgt i32 %8, 5
  br i1 %426, label %431, label %427

427:                                              ; preds = %425
  %428 = icmp sgt i16 %1, 0
  %429 = icmp ne i32 %8, 1
  %430 = and i1 %428, %429
  br i1 %430, label %431, label %433

431:                                              ; preds = %427, %425
  %432 = load ptr, ptr @square, align 8, !tbaa !26
  br label %435

433:                                              ; preds = %427
  %434 = load ptr, ptr @searchPattern, align 8, !tbaa !26
  br label %435

435:                                              ; preds = %423, %421, %433, %431, %394
  %436 = phi ptr [ %422, %421 ], [ %424, %423 ], [ %432, %431 ], [ %434, %433 ], [ %105, %394 ]
  %437 = icmp eq i8 %387, 1
  %438 = icmp slt i32 %8, 5
  br label %439

439:                                              ; preds = %593, %435
  %440 = phi i32 [ %385, %435 ], [ %451, %593 ]
  %441 = phi i32 [ %386, %435 ], [ %452, %593 ]
  %442 = phi i32 [ %385, %435 ], [ %382, %593 ]
  %443 = phi i1 [ %437, %435 ], [ false, %593 ]
  %444 = phi ptr [ %436, %435 ], [ %595, %593 ]
  %445 = phi i32 [ %386, %435 ], [ %383, %593 ]
  %446 = phi i32 [ %388, %435 ], [ %547, %593 ]
  %447 = getelementptr inbounds i8, ptr %444, i64 8
  br label %448

448:                                              ; preds = %554, %439
  %449 = phi i32 [ %440, %439 ], [ %543, %554 ]
  %450 = phi i32 [ %441, %439 ], [ %544, %554 ]
  %451 = phi i32 [ %442, %439 ], [ %543, %554 ]
  %452 = phi i32 [ %445, %439 ], [ %544, %554 ]
  %453 = phi i32 [ 0, %439 ], [ %560, %554 ]
  %454 = phi ptr [ %444, %439 ], [ %558, %554 ]
  %455 = phi i32 [ 0, %439 ], [ %546, %554 ]
  %456 = phi i32 [ %446, %439 ], [ %547, %554 ]
  %457 = load i32, ptr %454, align 4, !tbaa !20
  br label %458

458:                                              ; preds = %542, %448
  %459 = phi i32 [ %449, %448 ], [ %543, %542 ]
  %460 = phi i32 [ %450, %448 ], [ %544, %542 ]
  %461 = phi i32 [ %453, %448 ], [ %545, %542 ]
  %462 = phi i32 [ %457, %448 ], [ %548, %542 ]
  %463 = phi i32 [ %455, %448 ], [ %546, %542 ]
  %464 = phi i32 [ %456, %448 ], [ %547, %542 ]
  %465 = load ptr, ptr %447, align 8, !tbaa !19
  %466 = sext i32 %461 to i64
  %467 = getelementptr inbounds %struct.SPoint, ptr %465, i64 %466
  %468 = load i32, ptr %467, align 4, !tbaa !21
  %469 = add nsw i32 %468, %452
  %470 = getelementptr inbounds i8, ptr %467, i64 4
  %471 = load i32, ptr %470, align 4, !tbaa !23
  %472 = add nsw i32 %471, %451
  %473 = add nsw i32 %469, %6
  %474 = add nsw i32 %472, %7
  %475 = load i16, ptr %13, align 2, !tbaa !72
  %476 = sext i16 %475 to i32
  %477 = sub nsw i32 %469, %476
  %478 = call i32 @llvm.abs.i32(i32 %477, i1 true)
  %479 = icmp sgt i32 %478, %17
  br i1 %479, label %532, label %480

480:                                              ; preds = %458
  %481 = load i16, ptr %14, align 2, !tbaa !72
  %482 = sext i16 %481 to i32
  %483 = sub nsw i32 %472, %482
  %484 = call i32 @llvm.abs.i32(i32 %483, i1 true)
  %485 = icmp ugt i32 %484, %17
  br i1 %485, label %532, label %486

486:                                              ; preds = %480
  %487 = load ptr, ptr @EPZSMap, align 8, !tbaa !26
  %488 = add nsw i32 %472, %74
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds ptr, ptr %487, i64 %489
  %491 = load ptr, ptr %490, align 8, !tbaa !26
  %492 = add nsw i32 %469, %73
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8, ptr %491, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !66
  %496 = icmp eq i8 %495, 1
  br i1 %496, label %521, label %497

497:                                              ; preds = %486
  store i8 1, ptr %494, align 1, !tbaa !66
  %498 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %499 = getelementptr inbounds i32, ptr %498, i64 %234
  %500 = load i32, ptr %499, align 4, !tbaa !20
  %501 = getelementptr inbounds i32, ptr %498, i64 %240
  %502 = load i32, ptr %501, align 4, !tbaa !20
  %503 = add nsw i32 %502, %500
  %504 = mul nsw i32 %503, %19
  %505 = ashr i32 %504, 16
  %506 = shl i32 %473, 2
  %507 = sub nsw i32 %506, %56
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, ptr %498, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !20
  %511 = shl i32 %474, 2
  %512 = sub nsw i32 %511, %58
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, ptr %498, i64 %513
  %515 = load i32, ptr %514, align 4, !tbaa !20
  %516 = add nsw i32 %515, %510
  %517 = mul nsw i32 %516, %19
  %518 = ashr i32 %517, 16
  %519 = add nsw i32 %518, %505
  %520 = icmp slt i32 %519, %464
  br i1 %520, label %527, label %532

521:                                              ; preds = %486
  %522 = add nsw i32 %461, 1
  %523 = load i32, ptr %444, align 8, !tbaa !17
  %524 = icmp slt i32 %522, %523
  %525 = select i1 %524, i32 0, i32 %523
  %526 = sub nsw i32 %522, %525
  br label %542

527:                                              ; preds = %497
  %528 = load ptr, ptr @computeBiPredSad, align 8, !tbaa !26
  %529 = call signext i32 %528(ptr noundef %0, i32 noundef signext %217, i32 noundef signext %37, i32 noundef signext %38, i32 noundef signext %519, i32 noundef signext %464, i32 noundef signext %67, i32 noundef signext %70, i32 noundef signext %473, i32 noundef signext %474) #15, !callees !95
  %530 = icmp slt i32 %529, %464
  br i1 %530, label %531, label %532

531:                                              ; preds = %527
  br label %532

532:                                              ; preds = %497, %531, %527, %480, %458
  %533 = phi i32 [ %472, %531 ], [ %459, %527 ], [ %459, %497 ], [ %459, %480 ], [ %459, %458 ]
  %534 = phi i32 [ %469, %531 ], [ %460, %527 ], [ %460, %497 ], [ %460, %480 ], [ %460, %458 ]
  %535 = phi i32 [ %461, %531 ], [ %463, %527 ], [ %463, %497 ], [ %463, %480 ], [ %463, %458 ]
  %536 = phi i32 [ %529, %531 ], [ %464, %527 ], [ %464, %497 ], [ %464, %480 ], [ %464, %458 ]
  %537 = add nsw i32 %461, 1
  %538 = load i32, ptr %444, align 8, !tbaa !17
  %539 = icmp slt i32 %537, %538
  %540 = select i1 %539, i32 0, i32 %538
  %541 = sub nsw i32 %537, %540
  br label %542

542:                                              ; preds = %532, %521
  %543 = phi i32 [ %533, %532 ], [ %459, %521 ]
  %544 = phi i32 [ %534, %532 ], [ %460, %521 ]
  %545 = phi i32 [ %541, %532 ], [ %526, %521 ]
  %546 = phi i32 [ %535, %532 ], [ %463, %521 ]
  %547 = phi i32 [ %536, %532 ], [ %464, %521 ]
  %548 = add nsw i32 %462, -1
  %549 = icmp sgt i32 %462, 1
  br i1 %549, label %458, label %550

550:                                              ; preds = %542
  %551 = icmp eq i32 %544, %452
  %552 = icmp eq i32 %543, %451
  %553 = select i1 %551, i1 %552, i1 false
  br i1 %553, label %561, label %554

554:                                              ; preds = %550
  %555 = load ptr, ptr %447, align 8, !tbaa !19
  %556 = sext i32 %546 to i64
  %557 = getelementptr inbounds %struct.SPoint, ptr %555, i64 %556
  %558 = getelementptr inbounds i8, ptr %557, i64 12
  %559 = getelementptr inbounds i8, ptr %557, i64 8
  %560 = load i32, ptr %559, align 4, !tbaa !24
  br label %448

561:                                              ; preds = %550
  %562 = and i1 %438, %443
  %563 = icmp sgt i32 %547, %392
  %564 = select i1 %562, i1 %563, i1 false
  br i1 %564, label %565, label %596

565:                                              ; preds = %561
  %566 = load ptr, ptr @input, align 8, !tbaa !26
  %567 = getelementptr inbounds i8, ptr %566, i64 3068
  %568 = load i32, ptr %567, align 4, !tbaa !50
  %569 = icmp sgt i32 %568, 0
  br i1 %569, label %570, label %596

570:                                              ; preds = %565
  %571 = icmp eq i32 %452, 0
  %572 = icmp eq i32 %451, 0
  %573 = select i1 %571, i1 %572, i1 false
  %574 = load i16, ptr %13, align 2, !tbaa !72
  %575 = sext i16 %574 to i32
  br i1 %573, label %582, label %576

576:                                              ; preds = %570
  %577 = icmp eq i32 %452, %575
  br i1 %577, label %578, label %593

578:                                              ; preds = %576
  %579 = load i16, ptr %14, align 2, !tbaa !72
  %580 = sext i16 %579 to i32
  %581 = icmp eq i32 %451, %580
  br i1 %581, label %582, label %593

582:                                              ; preds = %570, %578
  %583 = sub nsw i32 %452, %575
  %584 = call i32 @llvm.abs.i32(i32 %583, i1 true)
  %585 = icmp ult i32 %584, 2
  br i1 %585, label %586, label %592

586:                                              ; preds = %582
  %587 = load i16, ptr %14, align 2, !tbaa !72
  %588 = sext i16 %587 to i32
  %589 = sub nsw i32 %451, %588
  %590 = call i32 @llvm.abs.i32(i32 %589, i1 true)
  %591 = icmp ult i32 %590, 2
  br i1 %591, label %593, label %592

592:                                              ; preds = %586, %582
  br label %593

593:                                              ; preds = %576, %578, %586, %592
  %594 = phi ptr [ @square, %592 ], [ @sdiamond, %586 ], [ @searchPatternD, %578 ], [ @searchPatternD, %576 ]
  %595 = load ptr, ptr %594, align 8, !tbaa !26
  br label %439

596:                                              ; preds = %561, %565, %391
  %597 = phi i32 [ %385, %391 ], [ %451, %565 ], [ %451, %561 ]
  %598 = phi i32 [ %386, %391 ], [ %452, %565 ], [ %452, %561 ]
  %599 = phi i32 [ %388, %391 ], [ %547, %565 ], [ %547, %561 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #15
  %600 = trunc i32 %598 to i16
  %601 = trunc i32 %597 to i16
  br label %602

602:                                              ; preds = %596, %216
  %603 = phi i16 [ %601, %596 ], [ %62, %216 ]
  %604 = phi i16 [ %600, %596 ], [ %59, %216 ]
  %605 = phi i32 [ %599, %596 ], [ %260, %216 ]
  store i16 %604, ptr %13, align 2, !tbaa !72
  store i16 %603, ptr %14, align 2, !tbaa !72
  ret i32 %605
}

; Function Attrs: nounwind
define internal signext i32 @computeBiPredSad2(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9) #0 {
  %11 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !20
  %12 = add nsw i32 %11, 1
  %13 = load i32, ptr @wp_luma_round, align 4, !tbaa !20
  %14 = shl nsw i32 %13, 1
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %172

16:                                               ; preds = %10
  %17 = icmp sgt i32 %3, 0
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %166, %16
  %20 = phi i64 [ 0, %16 ], [ %169, %166 ]
  %21 = phi i32 [ %4, %16 ], [ %167, %166 ]
  %22 = load ptr, ptr @get_ref_line2, align 8, !tbaa !26
  %23 = load ptr, ptr @ref_pic2, align 8, !tbaa !26
  %24 = load i16, ptr @img_height, align 2, !tbaa !72
  %25 = sext i16 %24 to i32
  %26 = load i16, ptr @img_width, align 2, !tbaa !72
  %27 = sext i16 %26 to i32
  %28 = trunc i64 %20 to i32
  %29 = add i32 %28, %9
  %30 = tail call ptr %22(i32 noundef signext %2, ptr noundef %23, i32 noundef signext %29, i32 noundef signext %8, i32 noundef signext %25, i32 noundef signext %27) #15, !callees !79
  %31 = load ptr, ptr @get_ref_line1, align 8, !tbaa !26
  %32 = load ptr, ptr @ref_pic1, align 8, !tbaa !26
  %33 = load i16, ptr @img_height, align 2, !tbaa !72
  %34 = sext i16 %33 to i32
  %35 = load i16, ptr @img_width, align 2, !tbaa !72
  %36 = sext i16 %35 to i32
  %37 = trunc i64 %20 to i32
  %38 = add i32 %37, %7
  %39 = tail call ptr %31(i32 noundef signext %2, ptr noundef %32, i32 noundef signext %38, i32 noundef signext %6, i32 noundef signext %34, i32 noundef signext %36) #15, !callees !79
  br i1 %17, label %40, label %166

40:                                               ; preds = %19
  %41 = getelementptr inbounds ptr, ptr %0, i64 %20
  %42 = load ptr, ptr %41, align 8, !tbaa !26
  %43 = load i16, ptr @weight1, align 2, !tbaa !72
  %44 = sext i16 %43 to i32
  %45 = load i16, ptr @weight2, align 2, !tbaa !72
  %46 = sext i16 %45 to i32
  %47 = load i16, ptr @offsetBi, align 2, !tbaa !72
  %48 = sext i16 %47 to i32
  %49 = load ptr, ptr @img, align 8
  %50 = getelementptr inbounds i8, ptr %49, i64 90532
  %51 = load ptr, ptr @byte_abs, align 8, !tbaa !26
  br label %52

52:                                               ; preds = %152, %40
  %53 = phi i32 [ 0, %40 ], [ %163, %152 ]
  %54 = phi i32 [ %21, %40 ], [ %160, %152 ]
  %55 = phi ptr [ %42, %40 ], [ %162, %152 ]
  %56 = phi ptr [ %30, %40 ], [ %140, %152 ]
  %57 = phi ptr [ %39, %40 ], [ %136, %152 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 2
  %59 = load i16, ptr %57, align 2, !tbaa !72
  %60 = zext i16 %59 to i32
  %61 = mul nsw i32 %60, %44
  %62 = getelementptr inbounds i8, ptr %56, i64 2
  %63 = load i16, ptr %56, align 2, !tbaa !72
  %64 = zext i16 %63 to i32
  %65 = mul nsw i32 %64, %46
  %66 = add i32 %61, %14
  %67 = add i32 %66, %65
  %68 = ashr i32 %67, %12
  %69 = add nsw i32 %68, %48
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %52
  %72 = load i32, ptr %50, align 4, !tbaa !96
  %73 = tail call i32 @llvm.smin.i32(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %71, %52
  %75 = phi i32 [ 0, %52 ], [ %73, %71 ]
  %76 = getelementptr inbounds i8, ptr %55, i64 2
  %77 = load i16, ptr %55, align 2, !tbaa !72
  %78 = zext i16 %77 to i32
  %79 = sub nsw i32 %78, %75
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %51, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !20
  %83 = add i32 %82, %54
  %84 = getelementptr inbounds i8, ptr %57, i64 4
  %85 = load i16, ptr %58, align 2, !tbaa !72
  %86 = zext i16 %85 to i32
  %87 = mul nsw i32 %86, %44
  %88 = getelementptr inbounds i8, ptr %56, i64 4
  %89 = load i16, ptr %62, align 2, !tbaa !72
  %90 = zext i16 %89 to i32
  %91 = mul nsw i32 %90, %46
  %92 = add i32 %87, %14
  %93 = add i32 %92, %91
  %94 = ashr i32 %93, %12
  %95 = add nsw i32 %94, %48
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %74
  %98 = load i32, ptr %50, align 4, !tbaa !96
  %99 = tail call i32 @llvm.smin.i32(i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %97, %74
  %101 = phi i32 [ 0, %74 ], [ %99, %97 ]
  %102 = getelementptr inbounds i8, ptr %55, i64 4
  %103 = load i16, ptr %76, align 2, !tbaa !72
  %104 = zext i16 %103 to i32
  %105 = sub nsw i32 %104, %101
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %51, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !20
  %109 = add i32 %83, %108
  %110 = getelementptr inbounds i8, ptr %57, i64 6
  %111 = load i16, ptr %84, align 2, !tbaa !72
  %112 = zext i16 %111 to i32
  %113 = mul nsw i32 %112, %44
  %114 = getelementptr inbounds i8, ptr %56, i64 6
  %115 = load i16, ptr %88, align 2, !tbaa !72
  %116 = zext i16 %115 to i32
  %117 = mul nsw i32 %116, %46
  %118 = add i32 %113, %14
  %119 = add i32 %118, %117
  %120 = ashr i32 %119, %12
  %121 = add nsw i32 %120, %48
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %100
  %124 = load i32, ptr %50, align 4, !tbaa !96
  %125 = tail call i32 @llvm.smin.i32(i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %123, %100
  %127 = phi i32 [ 0, %100 ], [ %125, %123 ]
  %128 = getelementptr inbounds i8, ptr %55, i64 6
  %129 = load i16, ptr %102, align 2, !tbaa !72
  %130 = zext i16 %129 to i32
  %131 = sub nsw i32 %130, %127
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %51, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !20
  %135 = add i32 %109, %134
  %136 = getelementptr inbounds i8, ptr %57, i64 8
  %137 = load i16, ptr %110, align 2, !tbaa !72
  %138 = zext i16 %137 to i32
  %139 = mul nsw i32 %138, %44
  %140 = getelementptr inbounds i8, ptr %56, i64 8
  %141 = load i16, ptr %114, align 2, !tbaa !72
  %142 = zext i16 %141 to i32
  %143 = mul nsw i32 %142, %46
  %144 = add i32 %139, %14
  %145 = add i32 %144, %143
  %146 = ashr i32 %145, %12
  %147 = add nsw i32 %146, %48
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %126
  %150 = load i32, ptr %50, align 4, !tbaa !96
  %151 = tail call i32 @llvm.smin.i32(i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %149, %126
  %153 = phi i32 [ 0, %126 ], [ %151, %149 ]
  %154 = load i16, ptr %128, align 2, !tbaa !72
  %155 = zext i16 %154 to i32
  %156 = sub nsw i32 %155, %153
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, ptr %51, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !20
  %160 = add i32 %135, %159
  %161 = icmp slt i32 %160, %5
  %162 = getelementptr inbounds i8, ptr %55, i64 8
  %163 = add nuw nsw i32 %53, 1
  %164 = icmp slt i32 %163, %3
  %165 = select i1 %161, i1 %164, i1 false
  br i1 %165, label %52, label %166

166:                                              ; preds = %152, %19
  %167 = phi i32 [ %21, %19 ], [ %160, %152 ]
  %168 = icmp sge i32 %167, %5
  %169 = add nuw nsw i64 %20, 1
  %170 = icmp eq i64 %169, %18
  %171 = select i1 %168, i1 true, i1 %170
  br i1 %171, label %172, label %19

172:                                              ; preds = %166, %10
  %173 = phi i32 [ %4, %10 ], [ %167, %166 ]
  ret i32 %173
}

; Function Attrs: nounwind
define internal signext i32 @computeBiPredSad1(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9) #0 {
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %118

12:                                               ; preds = %10
  %13 = icmp sgt i32 %3, 0
  %14 = zext nneg i32 %1 to i64
  br label %15

15:                                               ; preds = %112, %12
  %16 = phi i64 [ 0, %12 ], [ %115, %112 ]
  %17 = phi i32 [ %4, %12 ], [ %113, %112 ]
  %18 = load ptr, ptr @get_ref_line2, align 8, !tbaa !26
  %19 = load ptr, ptr @ref_pic2, align 8, !tbaa !26
  %20 = load i16, ptr @img_height, align 2, !tbaa !72
  %21 = sext i16 %20 to i32
  %22 = load i16, ptr @img_width, align 2, !tbaa !72
  %23 = sext i16 %22 to i32
  %24 = trunc i64 %16 to i32
  %25 = add i32 %24, %9
  %26 = tail call ptr %18(i32 noundef signext %2, ptr noundef %19, i32 noundef signext %25, i32 noundef signext %8, i32 noundef signext %21, i32 noundef signext %23) #15, !callees !79
  %27 = load ptr, ptr @get_ref_line1, align 8, !tbaa !26
  %28 = load ptr, ptr @ref_pic1, align 8, !tbaa !26
  %29 = load i16, ptr @img_height, align 2, !tbaa !72
  %30 = sext i16 %29 to i32
  %31 = load i16, ptr @img_width, align 2, !tbaa !72
  %32 = sext i16 %31 to i32
  %33 = trunc i64 %16 to i32
  %34 = add i32 %33, %7
  %35 = tail call ptr %27(i32 noundef signext %2, ptr noundef %28, i32 noundef signext %34, i32 noundef signext %6, i32 noundef signext %30, i32 noundef signext %32) #15, !callees !79
  br i1 %13, label %36, label %112

36:                                               ; preds = %15
  %37 = getelementptr inbounds ptr, ptr %0, i64 %16
  %38 = load ptr, ptr %37, align 8, !tbaa !26
  %39 = load ptr, ptr @byte_abs, align 8, !tbaa !26
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi i32 [ 0, %36 ], [ %110, %40 ]
  %42 = phi i32 [ %17, %36 ], [ %109, %40 ]
  %43 = phi ptr [ %26, %36 ], [ %100, %40 ]
  %44 = phi ptr [ %35, %36 ], [ %97, %40 ]
  %45 = phi ptr [ %38, %36 ], [ %94, %40 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 2
  %47 = load i16, ptr %45, align 2, !tbaa !72
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds i8, ptr %44, i64 2
  %50 = load i16, ptr %44, align 2, !tbaa !72
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds i8, ptr %43, i64 2
  %53 = load i16, ptr %43, align 2, !tbaa !72
  %54 = zext i16 %53 to i32
  %55 = add nuw nsw i32 %54, %51
  %56 = lshr i32 %55, 1
  %57 = sub nsw i32 %48, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %39, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !20
  %61 = add i32 %60, %42
  %62 = getelementptr inbounds i8, ptr %45, i64 4
  %63 = load i16, ptr %46, align 2, !tbaa !72
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds i8, ptr %44, i64 4
  %66 = load i16, ptr %49, align 2, !tbaa !72
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds i8, ptr %43, i64 4
  %69 = load i16, ptr %52, align 2, !tbaa !72
  %70 = zext i16 %69 to i32
  %71 = add nuw nsw i32 %70, %67
  %72 = lshr i32 %71, 1
  %73 = sub nsw i32 %64, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %39, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !20
  %77 = add i32 %61, %76
  %78 = getelementptr inbounds i8, ptr %45, i64 6
  %79 = load i16, ptr %62, align 2, !tbaa !72
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds i8, ptr %44, i64 6
  %82 = load i16, ptr %65, align 2, !tbaa !72
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds i8, ptr %43, i64 6
  %85 = load i16, ptr %68, align 2, !tbaa !72
  %86 = zext i16 %85 to i32
  %87 = add nuw nsw i32 %86, %83
  %88 = lshr i32 %87, 1
  %89 = sub nsw i32 %80, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %39, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !20
  %93 = add i32 %77, %92
  %94 = getelementptr inbounds i8, ptr %45, i64 8
  %95 = load i16, ptr %78, align 2, !tbaa !72
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds i8, ptr %44, i64 8
  %98 = load i16, ptr %81, align 2, !tbaa !72
  %99 = zext i16 %98 to i32
  %100 = getelementptr inbounds i8, ptr %43, i64 8
  %101 = load i16, ptr %84, align 2, !tbaa !72
  %102 = zext i16 %101 to i32
  %103 = add nuw nsw i32 %102, %99
  %104 = lshr i32 %103, 1
  %105 = sub nsw i32 %96, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %39, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !20
  %109 = add i32 %93, %108
  %110 = add nuw nsw i32 %41, 1
  %111 = icmp eq i32 %110, %3
  br i1 %111, label %112, label %40

112:                                              ; preds = %40, %15
  %113 = phi i32 [ %17, %15 ], [ %109, %40 ]
  %114 = icmp sge i32 %113, %5
  %115 = add nuw nsw i64 %16, 1
  %116 = icmp eq i64 %115, %14
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %118, label %15

118:                                              ; preds = %112, %10
  %119 = phi i32 [ %4, %10 ], [ %113, %112 ]
  ret i32 %119
}

; Function Attrs: nofree nounwind
define dso_local void @EPZSOutputStats(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #12 {
  %3 = icmp eq i16 %1, 1
  %4 = load ptr, ptr @input, align 8, !tbaa !26
  %5 = getelementptr inbounds i8, ptr %4, i64 3064
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x [20 x i8]], ptr @c_EPZSPattern, i64 0, i64 %7
  %9 = select i1 %3, ptr @.str.2, ptr @.str.9
  %10 = select i1 %3, ptr @.str.3, ptr @.str.10
  %11 = select i1 %3, ptr @.str.4, ptr @.str.11
  %12 = select i1 %3, ptr @.str.5, ptr @.str.12
  %13 = select i1 %3, ptr @.str.6, ptr @.str.13
  %14 = select i1 %3, ptr @.str.7, ptr @.str.14
  %15 = select i1 %3, ptr @.str.8, ptr @.str.15
  %16 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %8) #15
  %17 = load ptr, ptr @input, align 8, !tbaa !26
  %18 = getelementptr inbounds i8, ptr %17, i64 3068
  %19 = load i32, ptr %18, align 4, !tbaa !50
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x [20 x i8]], ptr @c_EPZSDualPattern, i64 0, i64 %20
  %22 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %21) #15
  %23 = load ptr, ptr @input, align 8, !tbaa !26
  %24 = getelementptr inbounds i8, ptr %23, i64 3072
  %25 = load i32, ptr %24, align 8, !tbaa !86
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x [20 x i8]], ptr @c_EPZSFixed, i64 0, i64 %26
  %28 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %27) #15
  %29 = load ptr, ptr @input, align 8, !tbaa !26
  %30 = getelementptr inbounds i8, ptr %29, i64 3076
  %31 = load i32, ptr %30, align 4, !tbaa !40
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x [20 x i8]], ptr @c_EPZSOther, i64 0, i64 %32
  %34 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %33) #15
  %35 = load ptr, ptr @input, align 8, !tbaa !26
  %36 = getelementptr inbounds i8, ptr %35, i64 3080
  %37 = load i32, ptr %36, align 8, !tbaa !41
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x [20 x i8]], ptr @c_EPZSOther, i64 0, i64 %38
  %40 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %39) #15
  %41 = load i32, ptr getelementptr inbounds (i8, ptr @medthres, i64 4), align 4, !tbaa !20
  %42 = load i32, ptr getelementptr inbounds (i8, ptr @minthres, i64 4), align 4, !tbaa !20
  %43 = load i32, ptr getelementptr inbounds (i8, ptr @maxthres, i64 4), align 4, !tbaa !20
  %44 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %14, i32 noundef signext %41, i32 noundef signext %42, i32 noundef signext %43) #15
  %45 = load ptr, ptr @input, align 8, !tbaa !26
  %46 = getelementptr inbounds i8, ptr %45, i64 3096
  %47 = load i32, ptr %46, align 8, !tbaa !97
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x [20 x i8]], ptr @c_EPZSOther, i64 0, i64 %48
  %50 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %49) #15
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind
define dso_local signext i32 @EPZSSubPelBlockMotionSearch(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, ptr nocapture noundef %8, ptr nocapture noundef %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12, i32 noundef signext %13) local_unnamed_addr #0 {
  %15 = alloca [256 x i32], align 4
  %16 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #15
  %17 = icmp eq i32 %5, 3
  %18 = select i1 %17, i32 64, i32 128
  %19 = load ptr, ptr @input, align 8, !tbaa !26
  %20 = getelementptr inbounds i8, ptr %19, i64 3136
  %21 = load i32, ptr %20, align 8, !tbaa !98
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr @img, align 8, !tbaa !26
  br i1 %22, label %24, label %42

24:                                               ; preds = %14
  %25 = getelementptr inbounds i8, ptr %23, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp ne i32 %26, 1
  %28 = icmp eq i16 %1, 0
  %29 = and i1 %28, %27
  %30 = icmp eq i32 %5, 1
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load i16, ptr %8, align 2, !tbaa !72
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i16, ptr %9, align 2, !tbaa !72
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %19, i64 24
  %40 = load i32, ptr %39, align 8, !tbaa !99
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %38, %35, %32, %24, %14
  %43 = phi i1 [ false, %35 ], [ false, %32 ], [ false, %24 ], [ false, %14 ], [ %41, %38 ]
  %44 = getelementptr inbounds i8, ptr %19, i64 84
  %45 = sext i32 %5 to i64
  %46 = getelementptr inbounds [8 x [2 x i32]], ptr %44, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !20
  %48 = getelementptr inbounds i8, ptr %46, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !20
  %50 = shl i32 %3, 2
  %51 = add i32 %50, 16
  %52 = shl i32 %4, 2
  %53 = add i32 %52, 16
  %54 = getelementptr inbounds i8, ptr %19, i64 24
  %55 = load i32, ptr %54, align 8, !tbaa !99
  %56 = icmp ne i32 %55, 1
  %57 = icmp eq i32 %55, 0
  %58 = tail call i32 @llvm.smax.i32(i32 %10, i32 1)
  %59 = select i1 %57, i32 %10, i32 %58
  %60 = getelementptr inbounds i8, ptr %23, i64 31576
  %61 = load ptr, ptr %60, align 8, !tbaa !90
  %62 = getelementptr inbounds i8, ptr %23, i64 12
  %63 = load i32, ptr %62, align 4, !tbaa !82
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.macroblock, ptr %61, i64 %64, i32 20
  %66 = load i32, ptr %65, align 4, !tbaa !100
  %67 = load ptr, ptr @active_pps, align 8, !tbaa !26
  %68 = getelementptr inbounds i8, ptr %67, i64 192
  %69 = load i32, ptr %68, align 8, !tbaa !75
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %42
  %72 = getelementptr inbounds i8, ptr %23, i64 24
  %73 = load i32, ptr %72, align 8, !tbaa !51
  switch i32 %73, label %74 [
    i32 0, label %82
    i32 3, label %82
  ]

74:                                               ; preds = %71, %42
  %75 = getelementptr inbounds i8, ptr %67, i64 196
  %76 = load i32, ptr %75, align 4, !tbaa !77
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds i8, ptr %23, i64 24
  %80 = load i32, ptr %79, align 8, !tbaa !51
  %81 = icmp eq i32 %80, 1
  br label %82

82:                                               ; preds = %71, %71, %74, %78
  %83 = phi i1 [ true, %71 ], [ false, %74 ], [ %81, %78 ], [ true, %71 ]
  %84 = icmp eq i32 %55, 2
  %85 = select i1 %84, i32 0, i32 %55
  %86 = icmp ne i32 %55, 2
  %87 = getelementptr inbounds i8, ptr %19, i64 3892
  %88 = load i32, ptr %87, align 4, !tbaa !101
  %89 = icmp ne i32 %88, 0
  %90 = icmp slt i32 %5, 5
  %91 = and i1 %90, %89
  %92 = icmp ne i32 %85, 0
  %93 = select i1 %91, i1 %92, i1 false
  %94 = add nsw i32 %66, %2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !26
  %98 = sext i16 %1 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !26
  br i1 %83, label %101, label %105

101:                                              ; preds = %82
  %102 = getelementptr inbounds i8, ptr %19, i64 1912
  %103 = load i32, ptr %102, align 8, !tbaa !78
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %82
  br label %106

106:                                              ; preds = %101, %105
  %107 = phi i64 [ 6448, %105 ], [ 6456, %101 ]
  %108 = getelementptr inbounds i8, ptr %100, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !26
  %110 = getelementptr inbounds i8, ptr %100, i64 6392
  %111 = load i32, ptr %110, align 8, !tbaa !64
  %112 = shl i32 %111, 2
  %113 = add i32 %112, 28
  %114 = getelementptr inbounds i8, ptr %100, i64 6396
  %115 = load i32, ptr %114, align 4, !tbaa !63
  %116 = shl i32 %115, 2
  %117 = add i32 %116, 28
  %118 = sub nsw i32 %111, %47
  %119 = shl i32 %118, 2
  %120 = add i32 %119, 32
  %121 = sub nsw i32 %115, %49
  %122 = shl i32 %121, 2
  %123 = add i32 %122, 32
  %124 = load i16, ptr %8, align 2, !tbaa !72
  %125 = sext i16 %124 to i32
  %126 = add nsw i32 %51, %125
  %127 = icmp sgt i32 %126, 1
  %128 = add i32 %119, 31
  %129 = icmp slt i32 %126, %128
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %139

131:                                              ; preds = %106
  %132 = load i16, ptr %9, align 2, !tbaa !72
  %133 = sext i16 %132 to i32
  %134 = add nsw i32 %53, %133
  %135 = icmp sgt i32 %134, 1
  %136 = add i32 %122, 31
  %137 = icmp slt i32 %134, %136
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %140, label %139

139:                                              ; preds = %131, %106
  br label %140

140:                                              ; preds = %131, %139
  %141 = phi ptr [ @UMVLine4X, %139 ], [ @FastLine4X, %131 ]
  store ptr %141, ptr @get_line, align 8, !tbaa !26
  %142 = ashr i32 %13, 12
  %143 = icmp sgt i32 %49, 0
  %144 = icmp sgt i32 %47, 0
  %145 = getelementptr inbounds i8, ptr %16, i64 4
  %146 = getelementptr inbounds i8, ptr %16, i64 8
  %147 = getelementptr inbounds i8, ptr %16, i64 12
  %148 = getelementptr inbounds i8, ptr %16, i64 16
  %149 = getelementptr inbounds i8, ptr %16, i64 20
  %150 = getelementptr inbounds i8, ptr %16, i64 24
  %151 = getelementptr inbounds i8, ptr %16, i64 28
  %152 = getelementptr inbounds i8, ptr %16, i64 32
  %153 = getelementptr inbounds i8, ptr %16, i64 36
  %154 = getelementptr inbounds i8, ptr %16, i64 40
  %155 = getelementptr inbounds i8, ptr %16, i64 44
  %156 = getelementptr inbounds i8, ptr %16, i64 48
  %157 = getelementptr inbounds i8, ptr %16, i64 52
  %158 = getelementptr inbounds i8, ptr %16, i64 56
  %159 = getelementptr inbounds i8, ptr %16, i64 60
  %160 = zext i1 %56 to i64
  br label %161

161:                                              ; preds = %140, %401
  %162 = phi i64 [ %160, %140 ], [ %406, %401 ]
  %163 = phi i32 [ %12, %140 ], [ %405, %401 ]
  %164 = phi i32 [ 0, %140 ], [ %404, %401 ]
  %165 = phi i32 [ 0, %140 ], [ %403, %401 ]
  %166 = phi i32 [ 2147483647, %140 ], [ %402, %401 ]
  %167 = load i16, ptr %8, align 2, !tbaa !72
  %168 = sext i16 %167 to i32
  %169 = getelementptr inbounds [10 x i32], ptr @search_point_hp_x, i64 0, i64 %162
  %170 = load i32, ptr %169, align 4, !tbaa !20
  %171 = add nsw i32 %170, %168
  %172 = load i16, ptr %9, align 2, !tbaa !72
  %173 = sext i16 %172 to i32
  %174 = getelementptr inbounds [10 x i32], ptr @search_point_hp_y, i64 0, i64 %162
  %175 = load i32, ptr %174, align 4, !tbaa !20
  %176 = add nsw i32 %175, %173
  %177 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %178 = sub nsw i32 %171, %6
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, ptr %177, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !20
  %182 = sub nsw i32 %176, %7
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, ptr %177, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !20
  %186 = add nsw i32 %185, %181
  %187 = mul nsw i32 %186, %13
  %188 = ashr i32 %187, 16
  %189 = icmp eq i64 %162, 0
  %190 = and i1 %43, %189
  %191 = select i1 %190, i32 %142, i32 0
  %192 = sub nsw i32 %188, %191
  %193 = icmp slt i32 %192, %163
  br i1 %193, label %194, label %401

194:                                              ; preds = %161
  %195 = add nsw i32 %171, %51
  %196 = add nsw i32 %176, %53
  br i1 %143, label %197, label %388

197:                                              ; preds = %194, %383
  %198 = phi i64 [ %385, %383 ], [ 0, %194 ]
  %199 = phi i32 [ %384, %383 ], [ %192, %194 ]
  %200 = icmp ugt i64 %198, 7
  %201 = select i1 %200, i32 %18, i32 0
  %202 = trunc nuw nsw i64 %198 to i32
  %203 = shl i32 %202, 2
  %204 = add nsw i32 %196, %203
  %205 = add nsw i32 %204, 4
  %206 = add nsw i32 %204, 8
  %207 = add nsw i32 %204, 12
  br i1 %144, label %208, label %383

208:                                              ; preds = %197
  %209 = or disjoint i64 %198, 3
  %210 = or disjoint i64 %198, 2
  %211 = or disjoint i64 %198, 1
  %212 = getelementptr inbounds ptr, ptr %0, i64 %198
  %213 = getelementptr inbounds ptr, ptr %0, i64 %211
  %214 = getelementptr inbounds ptr, ptr %0, i64 %210
  %215 = getelementptr inbounds ptr, ptr %0, i64 %209
  %216 = shl i32 %202, 3
  %217 = and i32 %216, 32
  %218 = trunc i64 %198 to i32
  %219 = shl i32 %218, 3
  %220 = and i32 %219, 32
  %221 = trunc i64 %198 to i32
  %222 = shl i32 %221, 3
  %223 = and i32 %222, 32
  %224 = trunc i64 %198 to i32
  %225 = shl i32 %224, 3
  %226 = and i32 %225, 32
  br label %227

227:                                              ; preds = %208, %378
  %228 = phi i64 [ 0, %208 ], [ %380, %378 ]
  %229 = phi i32 [ %199, %208 ], [ %379, %378 ]
  %230 = trunc nuw nsw i64 %228 to i32
  %231 = shl i32 %230, 2
  %232 = add nsw i32 %195, %231
  %233 = load ptr, ptr %212, align 8, !tbaa !26
  %234 = getelementptr inbounds i16, ptr %233, i64 %228
  %235 = load ptr, ptr @get_line, align 8, !tbaa !26
  %236 = call ptr %235(ptr noundef %109, i32 noundef signext %204, i32 noundef signext %232, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %237 = getelementptr inbounds i8, ptr %234, i64 2
  %238 = load i16, ptr %234, align 2, !tbaa !72
  %239 = zext i16 %238 to i32
  %240 = load i16, ptr %236, align 2, !tbaa !72
  %241 = zext i16 %240 to i32
  %242 = sub nsw i32 %239, %241
  store i32 %242, ptr %16, align 4, !tbaa !20
  %243 = getelementptr inbounds i8, ptr %234, i64 4
  %244 = load i16, ptr %237, align 2, !tbaa !72
  %245 = zext i16 %244 to i32
  %246 = getelementptr inbounds i8, ptr %236, i64 8
  %247 = load i16, ptr %246, align 2, !tbaa !72
  %248 = zext i16 %247 to i32
  %249 = sub nsw i32 %245, %248
  store i32 %249, ptr %145, align 4, !tbaa !20
  %250 = getelementptr inbounds i8, ptr %234, i64 6
  %251 = load i16, ptr %243, align 2, !tbaa !72
  %252 = zext i16 %251 to i32
  %253 = getelementptr inbounds i8, ptr %236, i64 16
  %254 = load i16, ptr %253, align 2, !tbaa !72
  %255 = zext i16 %254 to i32
  %256 = sub nsw i32 %252, %255
  store i32 %256, ptr %146, align 4, !tbaa !20
  %257 = load i16, ptr %250, align 2, !tbaa !72
  %258 = zext i16 %257 to i32
  %259 = getelementptr inbounds i8, ptr %236, i64 24
  %260 = load i16, ptr %259, align 2, !tbaa !72
  %261 = zext i16 %260 to i32
  %262 = sub nsw i32 %258, %261
  store i32 %262, ptr %147, align 4, !tbaa !20
  %263 = load ptr, ptr %213, align 8, !tbaa !26
  %264 = getelementptr inbounds i16, ptr %263, i64 %228
  %265 = load ptr, ptr @get_line, align 8, !tbaa !26
  %266 = call ptr %265(ptr noundef %109, i32 noundef signext %205, i32 noundef signext %232, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %267 = getelementptr inbounds i8, ptr %264, i64 2
  %268 = load i16, ptr %264, align 2, !tbaa !72
  %269 = zext i16 %268 to i32
  %270 = load i16, ptr %266, align 2, !tbaa !72
  %271 = zext i16 %270 to i32
  %272 = sub nsw i32 %269, %271
  store i32 %272, ptr %148, align 4, !tbaa !20
  %273 = getelementptr inbounds i8, ptr %264, i64 4
  %274 = load i16, ptr %267, align 2, !tbaa !72
  %275 = zext i16 %274 to i32
  %276 = getelementptr inbounds i8, ptr %266, i64 8
  %277 = load i16, ptr %276, align 2, !tbaa !72
  %278 = zext i16 %277 to i32
  %279 = sub nsw i32 %275, %278
  store i32 %279, ptr %149, align 4, !tbaa !20
  %280 = getelementptr inbounds i8, ptr %264, i64 6
  %281 = load i16, ptr %273, align 2, !tbaa !72
  %282 = zext i16 %281 to i32
  %283 = getelementptr inbounds i8, ptr %266, i64 16
  %284 = load i16, ptr %283, align 2, !tbaa !72
  %285 = zext i16 %284 to i32
  %286 = sub nsw i32 %282, %285
  store i32 %286, ptr %150, align 4, !tbaa !20
  %287 = load i16, ptr %280, align 2, !tbaa !72
  %288 = zext i16 %287 to i32
  %289 = getelementptr inbounds i8, ptr %266, i64 24
  %290 = load i16, ptr %289, align 2, !tbaa !72
  %291 = zext i16 %290 to i32
  %292 = sub nsw i32 %288, %291
  store i32 %292, ptr %151, align 4, !tbaa !20
  %293 = load ptr, ptr %214, align 8, !tbaa !26
  %294 = getelementptr inbounds i16, ptr %293, i64 %228
  %295 = load ptr, ptr @get_line, align 8, !tbaa !26
  %296 = call ptr %295(ptr noundef %109, i32 noundef signext %206, i32 noundef signext %232, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %297 = getelementptr inbounds i8, ptr %294, i64 2
  %298 = load i16, ptr %294, align 2, !tbaa !72
  %299 = zext i16 %298 to i32
  %300 = load i16, ptr %296, align 2, !tbaa !72
  %301 = zext i16 %300 to i32
  %302 = sub nsw i32 %299, %301
  store i32 %302, ptr %152, align 4, !tbaa !20
  %303 = getelementptr inbounds i8, ptr %294, i64 4
  %304 = load i16, ptr %297, align 2, !tbaa !72
  %305 = zext i16 %304 to i32
  %306 = getelementptr inbounds i8, ptr %296, i64 8
  %307 = load i16, ptr %306, align 2, !tbaa !72
  %308 = zext i16 %307 to i32
  %309 = sub nsw i32 %305, %308
  store i32 %309, ptr %153, align 4, !tbaa !20
  %310 = getelementptr inbounds i8, ptr %294, i64 6
  %311 = load i16, ptr %303, align 2, !tbaa !72
  %312 = zext i16 %311 to i32
  %313 = getelementptr inbounds i8, ptr %296, i64 16
  %314 = load i16, ptr %313, align 2, !tbaa !72
  %315 = zext i16 %314 to i32
  %316 = sub nsw i32 %312, %315
  store i32 %316, ptr %154, align 4, !tbaa !20
  %317 = load i16, ptr %310, align 2, !tbaa !72
  %318 = zext i16 %317 to i32
  %319 = getelementptr inbounds i8, ptr %296, i64 24
  %320 = load i16, ptr %319, align 2, !tbaa !72
  %321 = zext i16 %320 to i32
  %322 = sub nsw i32 %318, %321
  store i32 %322, ptr %155, align 4, !tbaa !20
  %323 = load ptr, ptr %215, align 8, !tbaa !26
  %324 = getelementptr inbounds i16, ptr %323, i64 %228
  %325 = load ptr, ptr @get_line, align 8, !tbaa !26
  %326 = call ptr %325(ptr noundef %109, i32 noundef signext %207, i32 noundef signext %232, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %327 = getelementptr inbounds i8, ptr %324, i64 2
  %328 = load i16, ptr %324, align 2, !tbaa !72
  %329 = zext i16 %328 to i32
  %330 = load i16, ptr %326, align 2, !tbaa !72
  %331 = zext i16 %330 to i32
  %332 = sub nsw i32 %329, %331
  store i32 %332, ptr %156, align 4, !tbaa !20
  %333 = getelementptr inbounds i8, ptr %324, i64 4
  %334 = load i16, ptr %327, align 2, !tbaa !72
  %335 = zext i16 %334 to i32
  %336 = getelementptr inbounds i8, ptr %326, i64 8
  %337 = load i16, ptr %336, align 2, !tbaa !72
  %338 = zext i16 %337 to i32
  %339 = sub nsw i32 %335, %338
  store i32 %339, ptr %157, align 4, !tbaa !20
  %340 = getelementptr inbounds i8, ptr %324, i64 6
  %341 = load i16, ptr %333, align 2, !tbaa !72
  %342 = zext i16 %341 to i32
  %343 = getelementptr inbounds i8, ptr %326, i64 16
  %344 = load i16, ptr %343, align 2, !tbaa !72
  %345 = zext i16 %344 to i32
  %346 = sub nsw i32 %342, %345
  store i32 %346, ptr %158, align 4, !tbaa !20
  %347 = load i16, ptr %340, align 2, !tbaa !72
  %348 = zext i16 %347 to i32
  %349 = getelementptr inbounds i8, ptr %326, i64 24
  %350 = load i16, ptr %349, align 2, !tbaa !72
  %351 = zext i16 %350 to i32
  %352 = sub nsw i32 %348, %351
  store i32 %352, ptr %159, align 4, !tbaa !20
  br i1 %93, label %357, label %353

353:                                              ; preds = %227
  %354 = call signext i32 @SATD(ptr noundef nonnull %16, i32 noundef signext %85) #15
  %355 = add nsw i32 %354, %229
  %356 = icmp sgt i32 %355, %163
  br i1 %356, label %393, label %378

357:                                              ; preds = %227
  %358 = and i32 %230, 4
  %359 = icmp ugt i64 %228, 7
  %360 = select i1 %359, i32 64, i32 0
  %361 = or disjoint i32 %358, %201
  %362 = add nuw nsw i32 %361, %360
  %363 = or disjoint i32 %217, %362
  %364 = zext nneg i32 %363 to i64
  %365 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %365, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false)
  %366 = or disjoint i32 %220, %362
  %367 = or disjoint i32 %366, 8
  %368 = zext nneg i32 %367 to i64
  %369 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %369, ptr noundef nonnull align 4 dereferenceable(16) %148, i64 16, i1 false)
  %370 = or disjoint i32 %223, %362
  %371 = or disjoint i32 %370, 16
  %372 = zext nneg i32 %371 to i64
  %373 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %373, ptr noundef nonnull align 4 dereferenceable(16) %152, i64 16, i1 false)
  %374 = or disjoint i32 %226, %362
  %375 = or disjoint i32 %374, 24
  %376 = zext nneg i32 %375 to i64
  %377 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %377, ptr noundef nonnull align 4 dereferenceable(16) %156, i64 16, i1 false)
  br label %378

378:                                              ; preds = %357, %353
  %379 = phi i32 [ %355, %353 ], [ %229, %357 ]
  %380 = add nuw nsw i64 %228, 4
  %381 = trunc nuw i64 %380 to i32
  %382 = icmp sgt i32 %47, %381
  br i1 %382, label %227, label %383

383:                                              ; preds = %378, %197
  %384 = phi i32 [ %199, %197 ], [ %379, %378 ]
  %385 = add nuw nsw i64 %198, 4
  %386 = trunc nuw i64 %385 to i32
  %387 = icmp sgt i32 %49, %386
  br i1 %387, label %197, label %388

388:                                              ; preds = %383, %194
  %389 = phi i32 [ %192, %194 ], [ %384, %383 ]
  br i1 %93, label %390, label %393

390:                                              ; preds = %388
  %391 = call signext i32 @find_SATD(ptr noundef nonnull %15, i32 noundef signext %5) #15
  %392 = add nsw i32 %391, %389
  br label %393

393:                                              ; preds = %353, %390, %388
  %394 = phi i32 [ %392, %390 ], [ %389, %388 ], [ %355, %353 ]
  %395 = icmp slt i32 %394, %163
  %396 = trunc nuw nsw i64 %162 to i32
  br i1 %395, label %401, label %397

397:                                              ; preds = %393
  %398 = icmp slt i32 %394, %166
  %399 = call i32 @llvm.smin.i32(i32 %394, i32 %166)
  %400 = select i1 %398, i32 %396, i32 %165
  br label %401

401:                                              ; preds = %397, %393, %161
  %402 = phi i32 [ %166, %161 ], [ %163, %393 ], [ %399, %397 ]
  %403 = phi i32 [ %165, %161 ], [ %164, %393 ], [ %400, %397 ]
  %404 = phi i32 [ %164, %161 ], [ %396, %393 ], [ %164, %397 ]
  %405 = phi i32 [ %163, %161 ], [ %394, %393 ], [ %163, %397 ]
  %406 = add nuw nsw i64 %162, 1
  %407 = icmp eq i64 %406, 5
  br i1 %407, label %408, label %161

408:                                              ; preds = %401
  %409 = icmp eq i32 %404, 0
  br i1 %409, label %410, label %422

410:                                              ; preds = %408
  %411 = load i16, ptr %8, align 2, !tbaa !72
  %412 = sext i16 %411 to i32
  %413 = icmp eq i32 %412, %6
  br i1 %413, label %414, label %428

414:                                              ; preds = %410
  %415 = load i16, ptr %9, align 2, !tbaa !72
  %416 = sext i16 %415 to i32
  %417 = icmp eq i32 %416, %7
  br i1 %417, label %418, label %428

418:                                              ; preds = %414
  %419 = getelementptr inbounds [8 x i32], ptr @subthres, i64 0, i64 %45
  %420 = load i32, ptr %419, align 4, !tbaa !20
  %421 = icmp slt i32 %405, %420
  br i1 %421, label %1321, label %428

422:                                              ; preds = %408
  %423 = icmp eq i32 %403, 0
  br i1 %423, label %428, label %424

424:                                              ; preds = %422
  %425 = xor i32 %404, %403
  %426 = add i32 %425, -1
  %427 = icmp ult i32 %426, 7
  br i1 %427, label %455, label %451

428:                                              ; preds = %410, %414, %418, %422
  %429 = add nsw i32 %404, %403
  switch i32 %429, label %437 [
    i32 0, label %430
    i32 1, label %433
    i32 2, label %434
    i32 5, label %435
    i32 7, label %436
  ]

430:                                              ; preds = %428
  br i1 %409, label %438, label %431

431:                                              ; preds = %430
  %432 = load i16, ptr %8, align 2, !tbaa !72
  br label %713

433:                                              ; preds = %428
  br i1 %409, label %438, label %466

434:                                              ; preds = %428
  br i1 %409, label %438, label %466

435:                                              ; preds = %428
  br i1 %409, label %438, label %466

436:                                              ; preds = %428
  br i1 %409, label %438, label %466

437:                                              ; preds = %428
  br i1 %409, label %438, label %451

438:                                              ; preds = %430, %433, %434, %435, %436, %437
  %439 = phi i32 [ %59, %437 ], [ 9, %436 ], [ 8, %435 ], [ 7, %434 ], [ 10, %433 ], [ 5, %430 ]
  %440 = phi i32 [ 5, %437 ], [ 7, %436 ], [ 6, %435 ], [ 5, %434 ], [ 8, %433 ], [ 5, %430 ]
  %441 = load i16, ptr %8, align 2, !tbaa !72
  %442 = sext i16 %441 to i32
  %443 = sub nsw i32 %6, %442
  %444 = call i32 @llvm.abs.i32(i32 %443, i1 true)
  %445 = load i16, ptr %9, align 2, !tbaa !72
  %446 = sext i16 %445 to i32
  %447 = sub nsw i32 %7, %446
  %448 = call i32 @llvm.abs.i32(i32 %447, i1 true)
  %449 = or i32 %448, %444
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %728, label %451

451:                                              ; preds = %455, %424, %438, %437
  %452 = phi i32 [ %439, %438 ], [ %59, %437 ], [ %59, %424 ], [ %59, %455 ]
  %453 = phi i32 [ %440, %438 ], [ 5, %437 ], [ 5, %424 ], [ 5, %455 ]
  %454 = icmp slt i32 %453, %452
  br i1 %454, label %466, label %708

455:                                              ; preds = %424
  %456 = trunc nuw i32 %426 to i8
  %457 = lshr i8 85, %456
  %458 = trunc i8 %457 to i1
  br i1 %458, label %459, label %451

459:                                              ; preds = %455
  %460 = zext nneg i32 %426 to i64
  %461 = getelementptr inbounds [7 x i32], ptr @switch.table.EPZSSubPelBlockMotionSearch.19, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4
  %463 = zext nneg i32 %426 to i64
  %464 = getelementptr inbounds [7 x i32], ptr @switch.table.EPZSSubPelBlockMotionSearch.20, i64 0, i64 %463
  %465 = load i32, ptr %464, align 4
  br label %466

466:                                              ; preds = %459, %433, %434, %435, %436, %451
  %467 = phi i32 [ %453, %451 ], [ 8, %433 ], [ 5, %434 ], [ 6, %435 ], [ 7, %436 ], [ %462, %459 ]
  %468 = phi i32 [ %452, %451 ], [ 10, %433 ], [ 7, %434 ], [ 8, %435 ], [ 9, %436 ], [ %465, %459 ]
  %469 = zext nneg i32 %467 to i64
  %470 = zext nneg i32 %468 to i64
  br label %471

471:                                              ; preds = %466, %703
  %472 = phi i64 [ %469, %466 ], [ %706, %703 ]
  %473 = phi i32 [ %405, %466 ], [ %705, %703 ]
  %474 = phi i32 [ %404, %466 ], [ %704, %703 ]
  %475 = load i16, ptr %8, align 2, !tbaa !72
  %476 = sext i16 %475 to i32
  %477 = getelementptr inbounds [10 x i32], ptr @search_point_hp_x, i64 0, i64 %472
  %478 = load i32, ptr %477, align 4, !tbaa !20
  %479 = add nsw i32 %478, %476
  %480 = load i16, ptr %9, align 2, !tbaa !72
  %481 = sext i16 %480 to i32
  %482 = getelementptr inbounds [10 x i32], ptr @search_point_hp_y, i64 0, i64 %472
  %483 = load i32, ptr %482, align 4, !tbaa !20
  %484 = add nsw i32 %483, %481
  %485 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %486 = sub nsw i32 %479, %6
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, ptr %485, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !20
  %490 = sub nsw i32 %484, %7
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, ptr %485, i64 %491
  %493 = load i32, ptr %492, align 4, !tbaa !20
  %494 = add nsw i32 %493, %489
  %495 = mul nsw i32 %494, %13
  %496 = ashr i32 %495, 16
  %497 = icmp slt i32 %496, %473
  br i1 %497, label %498, label %703

498:                                              ; preds = %471
  %499 = add nsw i32 %479, %51
  %500 = add nsw i32 %484, %53
  br i1 %143, label %501, label %692

501:                                              ; preds = %498, %687
  %502 = phi i64 [ %689, %687 ], [ 0, %498 ]
  %503 = phi i32 [ %688, %687 ], [ %496, %498 ]
  %504 = icmp ugt i64 %502, 7
  %505 = select i1 %504, i32 %18, i32 0
  %506 = trunc nuw nsw i64 %502 to i32
  %507 = shl i32 %506, 2
  %508 = add nsw i32 %500, %507
  %509 = add nsw i32 %508, 4
  %510 = add nsw i32 %508, 8
  %511 = add nsw i32 %508, 12
  br i1 %144, label %512, label %687

512:                                              ; preds = %501
  %513 = or disjoint i64 %502, 3
  %514 = or disjoint i64 %502, 2
  %515 = or disjoint i64 %502, 1
  %516 = getelementptr inbounds ptr, ptr %0, i64 %502
  %517 = getelementptr inbounds ptr, ptr %0, i64 %515
  %518 = getelementptr inbounds ptr, ptr %0, i64 %514
  %519 = getelementptr inbounds ptr, ptr %0, i64 %513
  %520 = shl i32 %506, 3
  %521 = and i32 %520, 32
  %522 = trunc i64 %502 to i32
  %523 = shl i32 %522, 3
  %524 = and i32 %523, 32
  %525 = trunc i64 %502 to i32
  %526 = shl i32 %525, 3
  %527 = and i32 %526, 32
  %528 = trunc i64 %502 to i32
  %529 = shl i32 %528, 3
  %530 = and i32 %529, 32
  br label %531

531:                                              ; preds = %512, %682
  %532 = phi i64 [ 0, %512 ], [ %684, %682 ]
  %533 = phi i32 [ %503, %512 ], [ %683, %682 ]
  %534 = trunc nuw nsw i64 %532 to i32
  %535 = shl i32 %534, 2
  %536 = add nsw i32 %499, %535
  %537 = load ptr, ptr %516, align 8, !tbaa !26
  %538 = getelementptr inbounds i16, ptr %537, i64 %532
  %539 = load ptr, ptr @get_line, align 8, !tbaa !26
  %540 = call ptr %539(ptr noundef %109, i32 noundef signext %508, i32 noundef signext %536, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %541 = getelementptr inbounds i8, ptr %538, i64 2
  %542 = load i16, ptr %538, align 2, !tbaa !72
  %543 = zext i16 %542 to i32
  %544 = load i16, ptr %540, align 2, !tbaa !72
  %545 = zext i16 %544 to i32
  %546 = sub nsw i32 %543, %545
  store i32 %546, ptr %16, align 4, !tbaa !20
  %547 = getelementptr inbounds i8, ptr %538, i64 4
  %548 = load i16, ptr %541, align 2, !tbaa !72
  %549 = zext i16 %548 to i32
  %550 = getelementptr inbounds i8, ptr %540, i64 8
  %551 = load i16, ptr %550, align 2, !tbaa !72
  %552 = zext i16 %551 to i32
  %553 = sub nsw i32 %549, %552
  store i32 %553, ptr %145, align 4, !tbaa !20
  %554 = getelementptr inbounds i8, ptr %538, i64 6
  %555 = load i16, ptr %547, align 2, !tbaa !72
  %556 = zext i16 %555 to i32
  %557 = getelementptr inbounds i8, ptr %540, i64 16
  %558 = load i16, ptr %557, align 2, !tbaa !72
  %559 = zext i16 %558 to i32
  %560 = sub nsw i32 %556, %559
  store i32 %560, ptr %146, align 4, !tbaa !20
  %561 = load i16, ptr %554, align 2, !tbaa !72
  %562 = zext i16 %561 to i32
  %563 = getelementptr inbounds i8, ptr %540, i64 24
  %564 = load i16, ptr %563, align 2, !tbaa !72
  %565 = zext i16 %564 to i32
  %566 = sub nsw i32 %562, %565
  store i32 %566, ptr %147, align 4, !tbaa !20
  %567 = load ptr, ptr %517, align 8, !tbaa !26
  %568 = getelementptr inbounds i16, ptr %567, i64 %532
  %569 = load ptr, ptr @get_line, align 8, !tbaa !26
  %570 = call ptr %569(ptr noundef %109, i32 noundef signext %509, i32 noundef signext %536, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %571 = getelementptr inbounds i8, ptr %568, i64 2
  %572 = load i16, ptr %568, align 2, !tbaa !72
  %573 = zext i16 %572 to i32
  %574 = load i16, ptr %570, align 2, !tbaa !72
  %575 = zext i16 %574 to i32
  %576 = sub nsw i32 %573, %575
  store i32 %576, ptr %148, align 4, !tbaa !20
  %577 = getelementptr inbounds i8, ptr %568, i64 4
  %578 = load i16, ptr %571, align 2, !tbaa !72
  %579 = zext i16 %578 to i32
  %580 = getelementptr inbounds i8, ptr %570, i64 8
  %581 = load i16, ptr %580, align 2, !tbaa !72
  %582 = zext i16 %581 to i32
  %583 = sub nsw i32 %579, %582
  store i32 %583, ptr %149, align 4, !tbaa !20
  %584 = getelementptr inbounds i8, ptr %568, i64 6
  %585 = load i16, ptr %577, align 2, !tbaa !72
  %586 = zext i16 %585 to i32
  %587 = getelementptr inbounds i8, ptr %570, i64 16
  %588 = load i16, ptr %587, align 2, !tbaa !72
  %589 = zext i16 %588 to i32
  %590 = sub nsw i32 %586, %589
  store i32 %590, ptr %150, align 4, !tbaa !20
  %591 = load i16, ptr %584, align 2, !tbaa !72
  %592 = zext i16 %591 to i32
  %593 = getelementptr inbounds i8, ptr %570, i64 24
  %594 = load i16, ptr %593, align 2, !tbaa !72
  %595 = zext i16 %594 to i32
  %596 = sub nsw i32 %592, %595
  store i32 %596, ptr %151, align 4, !tbaa !20
  %597 = load ptr, ptr %518, align 8, !tbaa !26
  %598 = getelementptr inbounds i16, ptr %597, i64 %532
  %599 = load ptr, ptr @get_line, align 8, !tbaa !26
  %600 = call ptr %599(ptr noundef %109, i32 noundef signext %510, i32 noundef signext %536, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %601 = getelementptr inbounds i8, ptr %598, i64 2
  %602 = load i16, ptr %598, align 2, !tbaa !72
  %603 = zext i16 %602 to i32
  %604 = load i16, ptr %600, align 2, !tbaa !72
  %605 = zext i16 %604 to i32
  %606 = sub nsw i32 %603, %605
  store i32 %606, ptr %152, align 4, !tbaa !20
  %607 = getelementptr inbounds i8, ptr %598, i64 4
  %608 = load i16, ptr %601, align 2, !tbaa !72
  %609 = zext i16 %608 to i32
  %610 = getelementptr inbounds i8, ptr %600, i64 8
  %611 = load i16, ptr %610, align 2, !tbaa !72
  %612 = zext i16 %611 to i32
  %613 = sub nsw i32 %609, %612
  store i32 %613, ptr %153, align 4, !tbaa !20
  %614 = getelementptr inbounds i8, ptr %598, i64 6
  %615 = load i16, ptr %607, align 2, !tbaa !72
  %616 = zext i16 %615 to i32
  %617 = getelementptr inbounds i8, ptr %600, i64 16
  %618 = load i16, ptr %617, align 2, !tbaa !72
  %619 = zext i16 %618 to i32
  %620 = sub nsw i32 %616, %619
  store i32 %620, ptr %154, align 4, !tbaa !20
  %621 = load i16, ptr %614, align 2, !tbaa !72
  %622 = zext i16 %621 to i32
  %623 = getelementptr inbounds i8, ptr %600, i64 24
  %624 = load i16, ptr %623, align 2, !tbaa !72
  %625 = zext i16 %624 to i32
  %626 = sub nsw i32 %622, %625
  store i32 %626, ptr %155, align 4, !tbaa !20
  %627 = load ptr, ptr %519, align 8, !tbaa !26
  %628 = getelementptr inbounds i16, ptr %627, i64 %532
  %629 = load ptr, ptr @get_line, align 8, !tbaa !26
  %630 = call ptr %629(ptr noundef %109, i32 noundef signext %511, i32 noundef signext %536, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %631 = getelementptr inbounds i8, ptr %628, i64 2
  %632 = load i16, ptr %628, align 2, !tbaa !72
  %633 = zext i16 %632 to i32
  %634 = load i16, ptr %630, align 2, !tbaa !72
  %635 = zext i16 %634 to i32
  %636 = sub nsw i32 %633, %635
  store i32 %636, ptr %156, align 4, !tbaa !20
  %637 = getelementptr inbounds i8, ptr %628, i64 4
  %638 = load i16, ptr %631, align 2, !tbaa !72
  %639 = zext i16 %638 to i32
  %640 = getelementptr inbounds i8, ptr %630, i64 8
  %641 = load i16, ptr %640, align 2, !tbaa !72
  %642 = zext i16 %641 to i32
  %643 = sub nsw i32 %639, %642
  store i32 %643, ptr %157, align 4, !tbaa !20
  %644 = getelementptr inbounds i8, ptr %628, i64 6
  %645 = load i16, ptr %637, align 2, !tbaa !72
  %646 = zext i16 %645 to i32
  %647 = getelementptr inbounds i8, ptr %630, i64 16
  %648 = load i16, ptr %647, align 2, !tbaa !72
  %649 = zext i16 %648 to i32
  %650 = sub nsw i32 %646, %649
  store i32 %650, ptr %158, align 4, !tbaa !20
  %651 = load i16, ptr %644, align 2, !tbaa !72
  %652 = zext i16 %651 to i32
  %653 = getelementptr inbounds i8, ptr %630, i64 24
  %654 = load i16, ptr %653, align 2, !tbaa !72
  %655 = zext i16 %654 to i32
  %656 = sub nsw i32 %652, %655
  store i32 %656, ptr %159, align 4, !tbaa !20
  br i1 %93, label %661, label %657

657:                                              ; preds = %531
  %658 = call signext i32 @SATD(ptr noundef nonnull %16, i32 noundef signext %85) #15
  %659 = add nsw i32 %658, %533
  %660 = icmp sgt i32 %659, %473
  br i1 %660, label %697, label %682

661:                                              ; preds = %531
  %662 = and i32 %534, 4
  %663 = icmp ugt i64 %532, 7
  %664 = select i1 %663, i32 64, i32 0
  %665 = or disjoint i32 %662, %505
  %666 = add nuw nsw i32 %665, %664
  %667 = or disjoint i32 %521, %666
  %668 = zext nneg i32 %667 to i64
  %669 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %669, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false)
  %670 = or disjoint i32 %524, %666
  %671 = or disjoint i32 %670, 8
  %672 = zext nneg i32 %671 to i64
  %673 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %673, ptr noundef nonnull align 4 dereferenceable(16) %148, i64 16, i1 false)
  %674 = or disjoint i32 %527, %666
  %675 = or disjoint i32 %674, 16
  %676 = zext nneg i32 %675 to i64
  %677 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %677, ptr noundef nonnull align 4 dereferenceable(16) %152, i64 16, i1 false)
  %678 = or disjoint i32 %530, %666
  %679 = or disjoint i32 %678, 24
  %680 = zext nneg i32 %679 to i64
  %681 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %681, ptr noundef nonnull align 4 dereferenceable(16) %156, i64 16, i1 false)
  br label %682

682:                                              ; preds = %661, %657
  %683 = phi i32 [ %659, %657 ], [ %533, %661 ]
  %684 = add nuw nsw i64 %532, 4
  %685 = trunc nuw i64 %684 to i32
  %686 = icmp sgt i32 %47, %685
  br i1 %686, label %531, label %687

687:                                              ; preds = %682, %501
  %688 = phi i32 [ %503, %501 ], [ %683, %682 ]
  %689 = add nuw nsw i64 %502, 4
  %690 = trunc nuw i64 %689 to i32
  %691 = icmp sgt i32 %49, %690
  br i1 %691, label %501, label %692

692:                                              ; preds = %687, %498
  %693 = phi i32 [ %496, %498 ], [ %688, %687 ]
  br i1 %93, label %694, label %697

694:                                              ; preds = %692
  %695 = call signext i32 @find_SATD(ptr noundef nonnull %15, i32 noundef signext %5) #15
  %696 = add nsw i32 %695, %693
  br label %697

697:                                              ; preds = %657, %694, %692
  %698 = phi i32 [ %696, %694 ], [ %693, %692 ], [ %659, %657 ]
  %699 = icmp slt i32 %698, %473
  %700 = trunc nuw nsw i64 %472 to i32
  %701 = select i1 %699, i32 %700, i32 %474
  %702 = call i32 @llvm.smin.i32(i32 %698, i32 %473)
  br label %703

703:                                              ; preds = %697, %471
  %704 = phi i32 [ %474, %471 ], [ %701, %697 ]
  %705 = phi i32 [ %473, %471 ], [ %702, %697 ]
  %706 = add nuw nsw i64 %472, 1
  %707 = icmp eq i64 %706, %470
  br i1 %707, label %708, label %471

708:                                              ; preds = %703, %451
  %709 = phi i32 [ %404, %451 ], [ %704, %703 ]
  %710 = phi i32 [ %405, %451 ], [ %705, %703 ]
  %711 = icmp eq i32 %709, 0
  %712 = load i16, ptr %8, align 2, !tbaa !72
  br i1 %711, label %728, label %713

713:                                              ; preds = %431, %708
  %714 = phi i16 [ %432, %431 ], [ %712, %708 ]
  %715 = phi i32 [ %405, %431 ], [ %710, %708 ]
  %716 = phi i32 [ %404, %431 ], [ %709, %708 ]
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [10 x i32], ptr @search_point_hp_x, i64 0, i64 %717
  %719 = load i32, ptr %718, align 4, !tbaa !20
  %720 = trunc i32 %719 to i16
  %721 = add i16 %714, %720
  store i16 %721, ptr %8, align 2, !tbaa !72
  %722 = getelementptr inbounds [10 x i32], ptr @search_point_hp_y, i64 0, i64 %717
  %723 = load i32, ptr %722, align 4, !tbaa !20
  %724 = load i16, ptr %9, align 2, !tbaa !72
  %725 = trunc i32 %723 to i16
  %726 = add i16 %724, %725
  store i16 %726, ptr %9, align 2, !tbaa !72
  %727 = load i16, ptr %8, align 2, !tbaa !72
  br label %728

728:                                              ; preds = %438, %713, %708
  %729 = phi i16 [ %727, %713 ], [ %712, %708 ], [ %441, %438 ]
  %730 = phi i32 [ %715, %713 ], [ %710, %708 ], [ %405, %438 ]
  %731 = load ptr, ptr @input, align 8, !tbaa !26
  %732 = getelementptr inbounds i8, ptr %731, i64 24
  %733 = load i32, ptr %732, align 8, !tbaa !99
  %734 = icmp eq i32 %733, 2
  %735 = select i1 %734, i32 2147483647, i32 %730
  %736 = getelementptr inbounds i8, ptr %731, i64 3892
  %737 = load i32, ptr %736, align 4, !tbaa !101
  %738 = icmp ne i32 %737, 0
  %739 = and i1 %90, %738
  %740 = icmp ne i32 %733, 0
  %741 = select i1 %739, i1 %740, i1 false
  %742 = sext i16 %729 to i32
  %743 = add nsw i32 %51, %742
  %744 = icmp sgt i32 %743, 0
  %745 = icmp slt i32 %743, %120
  %746 = select i1 %744, i1 %745, i1 false
  br i1 %746, label %747, label %754

747:                                              ; preds = %728
  %748 = load i16, ptr %9, align 2, !tbaa !72
  %749 = sext i16 %748 to i32
  %750 = add nsw i32 %53, %749
  %751 = icmp sgt i32 %750, 0
  %752 = icmp slt i32 %750, %123
  %753 = select i1 %751, i1 %752, i1 false
  br i1 %753, label %755, label %754

754:                                              ; preds = %747, %728
  br label %755

755:                                              ; preds = %747, %754
  %756 = phi ptr [ @UMVLine4X, %754 ], [ @FastLine4X, %747 ]
  store ptr %756, ptr @get_line, align 8, !tbaa !26
  %757 = zext i1 %86 to i64
  br label %758

758:                                              ; preds = %755, %998
  %759 = phi i64 [ %757, %755 ], [ %1003, %998 ]
  %760 = phi i32 [ %735, %755 ], [ %1002, %998 ]
  %761 = phi i32 [ 0, %755 ], [ %1001, %998 ]
  %762 = phi i32 [ 0, %755 ], [ %1000, %998 ]
  %763 = phi i32 [ 2147483647, %755 ], [ %999, %998 ]
  %764 = load i16, ptr %8, align 2, !tbaa !72
  %765 = sext i16 %764 to i32
  %766 = getelementptr inbounds [10 x i32], ptr @search_point_qp_x, i64 0, i64 %759
  %767 = load i32, ptr %766, align 4, !tbaa !20
  %768 = add nsw i32 %767, %765
  %769 = load i16, ptr %9, align 2, !tbaa !72
  %770 = sext i16 %769 to i32
  %771 = getelementptr inbounds [10 x i32], ptr @search_point_qp_y, i64 0, i64 %759
  %772 = load i32, ptr %771, align 4, !tbaa !20
  %773 = add nsw i32 %772, %770
  %774 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %775 = sub nsw i32 %768, %6
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i32, ptr %774, i64 %776
  %778 = load i32, ptr %777, align 4, !tbaa !20
  %779 = sub nsw i32 %773, %7
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds i32, ptr %774, i64 %780
  %782 = load i32, ptr %781, align 4, !tbaa !20
  %783 = add nsw i32 %782, %778
  %784 = mul nsw i32 %783, %13
  %785 = ashr i32 %784, 16
  %786 = icmp slt i32 %785, %760
  br i1 %786, label %787, label %998

787:                                              ; preds = %758
  %788 = add nsw i32 %768, %51
  %789 = add nsw i32 %773, %53
  br i1 %143, label %790, label %984

790:                                              ; preds = %787, %979
  %791 = phi i64 [ %981, %979 ], [ 0, %787 ]
  %792 = phi i32 [ %980, %979 ], [ %785, %787 ]
  %793 = icmp ugt i64 %791, 7
  %794 = select i1 %793, i32 %18, i32 0
  %795 = trunc nuw nsw i64 %791 to i32
  %796 = shl i32 %795, 2
  %797 = add nsw i32 %789, %796
  %798 = add nsw i32 %797, 4
  %799 = add nsw i32 %797, 8
  %800 = add nsw i32 %797, 12
  br i1 %144, label %801, label %979

801:                                              ; preds = %790
  %802 = or disjoint i64 %791, 3
  %803 = or disjoint i64 %791, 2
  %804 = or disjoint i64 %791, 1
  %805 = getelementptr inbounds ptr, ptr %0, i64 %791
  %806 = getelementptr inbounds ptr, ptr %0, i64 %804
  %807 = getelementptr inbounds ptr, ptr %0, i64 %803
  %808 = getelementptr inbounds ptr, ptr %0, i64 %802
  %809 = shl i32 %795, 3
  %810 = and i32 %809, 32
  %811 = trunc i64 %791 to i32
  %812 = shl i32 %811, 3
  %813 = and i32 %812, 32
  %814 = trunc i64 %791 to i32
  %815 = shl i32 %814, 3
  %816 = and i32 %815, 32
  %817 = trunc i64 %791 to i32
  %818 = shl i32 %817, 3
  %819 = and i32 %818, 32
  br label %820

820:                                              ; preds = %801, %974
  %821 = phi i64 [ 0, %801 ], [ %976, %974 ]
  %822 = phi i32 [ %792, %801 ], [ %975, %974 ]
  %823 = trunc nuw nsw i64 %821 to i32
  %824 = shl i32 %823, 2
  %825 = add nsw i32 %788, %824
  %826 = load ptr, ptr %805, align 8, !tbaa !26
  %827 = getelementptr inbounds i16, ptr %826, i64 %821
  %828 = load ptr, ptr @get_line, align 8, !tbaa !26
  %829 = call ptr %828(ptr noundef %109, i32 noundef signext %797, i32 noundef signext %825, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %830 = getelementptr inbounds i8, ptr %827, i64 2
  %831 = load i16, ptr %827, align 2, !tbaa !72
  %832 = zext i16 %831 to i32
  %833 = load i16, ptr %829, align 2, !tbaa !72
  %834 = zext i16 %833 to i32
  %835 = sub nsw i32 %832, %834
  store i32 %835, ptr %16, align 4, !tbaa !20
  %836 = getelementptr inbounds i8, ptr %827, i64 4
  %837 = load i16, ptr %830, align 2, !tbaa !72
  %838 = zext i16 %837 to i32
  %839 = getelementptr inbounds i8, ptr %829, i64 8
  %840 = load i16, ptr %839, align 2, !tbaa !72
  %841 = zext i16 %840 to i32
  %842 = sub nsw i32 %838, %841
  store i32 %842, ptr %145, align 4, !tbaa !20
  %843 = getelementptr inbounds i8, ptr %827, i64 6
  %844 = load i16, ptr %836, align 2, !tbaa !72
  %845 = zext i16 %844 to i32
  %846 = getelementptr inbounds i8, ptr %829, i64 16
  %847 = load i16, ptr %846, align 2, !tbaa !72
  %848 = zext i16 %847 to i32
  %849 = sub nsw i32 %845, %848
  store i32 %849, ptr %146, align 4, !tbaa !20
  %850 = load i16, ptr %843, align 2, !tbaa !72
  %851 = zext i16 %850 to i32
  %852 = getelementptr inbounds i8, ptr %829, i64 24
  %853 = load i16, ptr %852, align 2, !tbaa !72
  %854 = zext i16 %853 to i32
  %855 = sub nsw i32 %851, %854
  store i32 %855, ptr %147, align 4, !tbaa !20
  %856 = load ptr, ptr %806, align 8, !tbaa !26
  %857 = getelementptr inbounds i16, ptr %856, i64 %821
  %858 = load ptr, ptr @get_line, align 8, !tbaa !26
  %859 = call ptr %858(ptr noundef %109, i32 noundef signext %798, i32 noundef signext %825, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %860 = getelementptr inbounds i8, ptr %857, i64 2
  %861 = load i16, ptr %857, align 2, !tbaa !72
  %862 = zext i16 %861 to i32
  %863 = load i16, ptr %859, align 2, !tbaa !72
  %864 = zext i16 %863 to i32
  %865 = sub nsw i32 %862, %864
  store i32 %865, ptr %148, align 4, !tbaa !20
  %866 = getelementptr inbounds i8, ptr %857, i64 4
  %867 = load i16, ptr %860, align 2, !tbaa !72
  %868 = zext i16 %867 to i32
  %869 = getelementptr inbounds i8, ptr %859, i64 8
  %870 = load i16, ptr %869, align 2, !tbaa !72
  %871 = zext i16 %870 to i32
  %872 = sub nsw i32 %868, %871
  store i32 %872, ptr %149, align 4, !tbaa !20
  %873 = getelementptr inbounds i8, ptr %857, i64 6
  %874 = load i16, ptr %866, align 2, !tbaa !72
  %875 = zext i16 %874 to i32
  %876 = getelementptr inbounds i8, ptr %859, i64 16
  %877 = load i16, ptr %876, align 2, !tbaa !72
  %878 = zext i16 %877 to i32
  %879 = sub nsw i32 %875, %878
  store i32 %879, ptr %150, align 4, !tbaa !20
  %880 = load i16, ptr %873, align 2, !tbaa !72
  %881 = zext i16 %880 to i32
  %882 = getelementptr inbounds i8, ptr %859, i64 24
  %883 = load i16, ptr %882, align 2, !tbaa !72
  %884 = zext i16 %883 to i32
  %885 = sub nsw i32 %881, %884
  store i32 %885, ptr %151, align 4, !tbaa !20
  %886 = load ptr, ptr %807, align 8, !tbaa !26
  %887 = getelementptr inbounds i16, ptr %886, i64 %821
  %888 = load ptr, ptr @get_line, align 8, !tbaa !26
  %889 = call ptr %888(ptr noundef %109, i32 noundef signext %799, i32 noundef signext %825, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %890 = getelementptr inbounds i8, ptr %887, i64 2
  %891 = load i16, ptr %887, align 2, !tbaa !72
  %892 = zext i16 %891 to i32
  %893 = load i16, ptr %889, align 2, !tbaa !72
  %894 = zext i16 %893 to i32
  %895 = sub nsw i32 %892, %894
  store i32 %895, ptr %152, align 4, !tbaa !20
  %896 = getelementptr inbounds i8, ptr %887, i64 4
  %897 = load i16, ptr %890, align 2, !tbaa !72
  %898 = zext i16 %897 to i32
  %899 = getelementptr inbounds i8, ptr %889, i64 8
  %900 = load i16, ptr %899, align 2, !tbaa !72
  %901 = zext i16 %900 to i32
  %902 = sub nsw i32 %898, %901
  store i32 %902, ptr %153, align 4, !tbaa !20
  %903 = getelementptr inbounds i8, ptr %887, i64 6
  %904 = load i16, ptr %896, align 2, !tbaa !72
  %905 = zext i16 %904 to i32
  %906 = getelementptr inbounds i8, ptr %889, i64 16
  %907 = load i16, ptr %906, align 2, !tbaa !72
  %908 = zext i16 %907 to i32
  %909 = sub nsw i32 %905, %908
  store i32 %909, ptr %154, align 4, !tbaa !20
  %910 = load i16, ptr %903, align 2, !tbaa !72
  %911 = zext i16 %910 to i32
  %912 = getelementptr inbounds i8, ptr %889, i64 24
  %913 = load i16, ptr %912, align 2, !tbaa !72
  %914 = zext i16 %913 to i32
  %915 = sub nsw i32 %911, %914
  store i32 %915, ptr %155, align 4, !tbaa !20
  %916 = load ptr, ptr %808, align 8, !tbaa !26
  %917 = getelementptr inbounds i16, ptr %916, i64 %821
  %918 = load ptr, ptr @get_line, align 8, !tbaa !26
  %919 = call ptr %918(ptr noundef %109, i32 noundef signext %800, i32 noundef signext %825, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %920 = getelementptr inbounds i8, ptr %917, i64 2
  %921 = load i16, ptr %917, align 2, !tbaa !72
  %922 = zext i16 %921 to i32
  %923 = load i16, ptr %919, align 2, !tbaa !72
  %924 = zext i16 %923 to i32
  %925 = sub nsw i32 %922, %924
  store i32 %925, ptr %156, align 4, !tbaa !20
  %926 = getelementptr inbounds i8, ptr %917, i64 4
  %927 = load i16, ptr %920, align 2, !tbaa !72
  %928 = zext i16 %927 to i32
  %929 = getelementptr inbounds i8, ptr %919, i64 8
  %930 = load i16, ptr %929, align 2, !tbaa !72
  %931 = zext i16 %930 to i32
  %932 = sub nsw i32 %928, %931
  store i32 %932, ptr %157, align 4, !tbaa !20
  %933 = getelementptr inbounds i8, ptr %917, i64 6
  %934 = load i16, ptr %926, align 2, !tbaa !72
  %935 = zext i16 %934 to i32
  %936 = getelementptr inbounds i8, ptr %919, i64 16
  %937 = load i16, ptr %936, align 2, !tbaa !72
  %938 = zext i16 %937 to i32
  %939 = sub nsw i32 %935, %938
  store i32 %939, ptr %158, align 4, !tbaa !20
  %940 = load i16, ptr %933, align 2, !tbaa !72
  %941 = zext i16 %940 to i32
  %942 = getelementptr inbounds i8, ptr %919, i64 24
  %943 = load i16, ptr %942, align 2, !tbaa !72
  %944 = zext i16 %943 to i32
  %945 = sub nsw i32 %941, %944
  store i32 %945, ptr %159, align 4, !tbaa !20
  br i1 %741, label %953, label %946

946:                                              ; preds = %820
  %947 = load ptr, ptr @input, align 8, !tbaa !26
  %948 = getelementptr inbounds i8, ptr %947, i64 24
  %949 = load i32, ptr %948, align 8, !tbaa !99
  %950 = call signext i32 @SATD(ptr noundef nonnull %16, i32 noundef signext %949) #15
  %951 = add nsw i32 %950, %822
  %952 = icmp sgt i32 %951, %760
  br i1 %952, label %989, label %974

953:                                              ; preds = %820
  %954 = and i32 %823, 4
  %955 = icmp ugt i64 %821, 7
  %956 = select i1 %955, i32 64, i32 0
  %957 = or disjoint i32 %954, %794
  %958 = add nuw nsw i32 %957, %956
  %959 = or disjoint i32 %810, %958
  %960 = zext nneg i32 %959 to i64
  %961 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %961, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false)
  %962 = or disjoint i32 %813, %958
  %963 = or disjoint i32 %962, 8
  %964 = zext nneg i32 %963 to i64
  %965 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %965, ptr noundef nonnull align 4 dereferenceable(16) %148, i64 16, i1 false)
  %966 = or disjoint i32 %816, %958
  %967 = or disjoint i32 %966, 16
  %968 = zext nneg i32 %967 to i64
  %969 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %969, ptr noundef nonnull align 4 dereferenceable(16) %152, i64 16, i1 false)
  %970 = or disjoint i32 %819, %958
  %971 = or disjoint i32 %970, 24
  %972 = zext nneg i32 %971 to i64
  %973 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %973, ptr noundef nonnull align 4 dereferenceable(16) %156, i64 16, i1 false)
  br label %974

974:                                              ; preds = %953, %946
  %975 = phi i32 [ %951, %946 ], [ %822, %953 ]
  %976 = add nuw nsw i64 %821, 4
  %977 = trunc nuw i64 %976 to i32
  %978 = icmp sgt i32 %47, %977
  br i1 %978, label %820, label %979

979:                                              ; preds = %974, %790
  %980 = phi i32 [ %792, %790 ], [ %975, %974 ]
  %981 = add nuw nsw i64 %791, 4
  %982 = trunc nuw i64 %981 to i32
  %983 = icmp sgt i32 %49, %982
  br i1 %983, label %790, label %984

984:                                              ; preds = %979, %787
  %985 = phi i32 [ %785, %787 ], [ %980, %979 ]
  br i1 %741, label %986, label %989

986:                                              ; preds = %984
  %987 = call signext i32 @find_SATD(ptr noundef nonnull %15, i32 noundef signext %5) #15
  %988 = add nsw i32 %987, %985
  br label %989

989:                                              ; preds = %946, %984, %986
  %990 = phi i32 [ %988, %986 ], [ %985, %984 ], [ %951, %946 ]
  %991 = icmp slt i32 %990, %760
  %992 = trunc nuw nsw i64 %759 to i32
  %993 = select i1 %991, i32 %992, i32 %761
  %994 = call i32 @llvm.smin.i32(i32 %990, i32 %760)
  %995 = icmp slt i32 %990, %763
  %996 = call i32 @llvm.smin.i32(i32 %990, i32 %763)
  %997 = select i1 %995, i32 %992, i32 %762
  br label %998

998:                                              ; preds = %989, %758
  %999 = phi i32 [ %763, %758 ], [ %996, %989 ]
  %1000 = phi i32 [ %762, %758 ], [ %997, %989 ]
  %1001 = phi i32 [ %761, %758 ], [ %993, %989 ]
  %1002 = phi i32 [ %760, %758 ], [ %994, %989 ]
  %1003 = add nuw nsw i64 %759, 1
  %1004 = icmp eq i64 %1003, 5
  br i1 %1004, label %1005, label %758

1005:                                             ; preds = %998
  %1006 = icmp eq i32 %1001, 0
  br i1 %1006, label %1007, label %1019

1007:                                             ; preds = %1005
  %1008 = load i16, ptr %8, align 2, !tbaa !72
  %1009 = sext i16 %1008 to i32
  %1010 = icmp eq i32 %1009, %6
  br i1 %1010, label %1011, label %1025

1011:                                             ; preds = %1007
  %1012 = load i16, ptr %9, align 2, !tbaa !72
  %1013 = sext i16 %1012 to i32
  %1014 = icmp eq i32 %1013, %7
  br i1 %1014, label %1015, label %1025

1015:                                             ; preds = %1011
  %1016 = getelementptr inbounds [8 x i32], ptr @subthres, i64 0, i64 %45
  %1017 = load i32, ptr %1016, align 4, !tbaa !20
  %1018 = icmp slt i32 %1002, %1017
  br i1 %1018, label %1321, label %1025

1019:                                             ; preds = %1005
  %1020 = icmp eq i32 %1000, 0
  br i1 %1020, label %1025, label %1021

1021:                                             ; preds = %1019
  %1022 = xor i32 %1001, %1000
  %1023 = add i32 %1022, -1
  %1024 = icmp ult i32 %1023, 7
  br i1 %1024, label %1049, label %1045

1025:                                             ; preds = %1007, %1011, %1015, %1019
  %1026 = add nsw i32 %1001, %1000
  switch i32 %1026, label %1031 [
    i32 1, label %1027
    i32 2, label %1028
    i32 5, label %1029
    i32 7, label %1030
  ]

1027:                                             ; preds = %1025
  br i1 %1006, label %1032, label %1060

1028:                                             ; preds = %1025
  br i1 %1006, label %1032, label %1060

1029:                                             ; preds = %1025
  br i1 %1006, label %1032, label %1060

1030:                                             ; preds = %1025
  br i1 %1006, label %1032, label %1060

1031:                                             ; preds = %1025
  br i1 %1006, label %1032, label %1045

1032:                                             ; preds = %1027, %1028, %1029, %1030, %1031
  %1033 = phi i32 [ %11, %1031 ], [ 9, %1030 ], [ 8, %1029 ], [ 7, %1028 ], [ 10, %1027 ]
  %1034 = phi i32 [ 5, %1031 ], [ 7, %1030 ], [ 6, %1029 ], [ 5, %1028 ], [ 8, %1027 ]
  %1035 = load i16, ptr %8, align 2, !tbaa !72
  %1036 = sext i16 %1035 to i32
  %1037 = sub nsw i32 %6, %1036
  %1038 = call i32 @llvm.abs.i32(i32 %1037, i1 true)
  %1039 = load i16, ptr %9, align 2, !tbaa !72
  %1040 = sext i16 %1039 to i32
  %1041 = sub nsw i32 %7, %1040
  %1042 = call i32 @llvm.abs.i32(i32 %1041, i1 true)
  %1043 = or i32 %1042, %1038
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1321, label %1045

1045:                                             ; preds = %1049, %1021, %1032, %1031
  %1046 = phi i32 [ %1033, %1032 ], [ %11, %1031 ], [ %11, %1021 ], [ %11, %1049 ]
  %1047 = phi i32 [ %1034, %1032 ], [ 5, %1031 ], [ 5, %1021 ], [ 5, %1049 ]
  %1048 = icmp slt i32 %1047, %1046
  br i1 %1048, label %1060, label %1305

1049:                                             ; preds = %1021
  %1050 = trunc nuw i32 %1023 to i8
  %1051 = lshr i8 85, %1050
  %1052 = trunc i8 %1051 to i1
  br i1 %1052, label %1053, label %1045

1053:                                             ; preds = %1049
  %1054 = zext nneg i32 %1023 to i64
  %1055 = getelementptr inbounds [7 x i32], ptr @switch.table.EPZSSubPelBlockMotionSearch.19, i64 0, i64 %1054
  %1056 = load i32, ptr %1055, align 4
  %1057 = zext nneg i32 %1023 to i64
  %1058 = getelementptr inbounds [7 x i32], ptr @switch.table.EPZSSubPelBlockMotionSearch.20, i64 0, i64 %1057
  %1059 = load i32, ptr %1058, align 4
  br label %1060

1060:                                             ; preds = %1053, %1027, %1028, %1029, %1030, %1045
  %1061 = phi i32 [ %1047, %1045 ], [ 8, %1027 ], [ 5, %1028 ], [ 6, %1029 ], [ 7, %1030 ], [ %1056, %1053 ]
  %1062 = phi i32 [ %1046, %1045 ], [ 10, %1027 ], [ 7, %1028 ], [ 8, %1029 ], [ 9, %1030 ], [ %1059, %1053 ]
  %1063 = zext nneg i32 %1061 to i64
  %1064 = zext nneg i32 %1062 to i64
  br label %1065

1065:                                             ; preds = %1060, %1300
  %1066 = phi i64 [ %1063, %1060 ], [ %1303, %1300 ]
  %1067 = phi i32 [ %1002, %1060 ], [ %1302, %1300 ]
  %1068 = phi i32 [ %1001, %1060 ], [ %1301, %1300 ]
  %1069 = load i16, ptr %8, align 2, !tbaa !72
  %1070 = sext i16 %1069 to i32
  %1071 = getelementptr inbounds [10 x i32], ptr @search_point_qp_x, i64 0, i64 %1066
  %1072 = load i32, ptr %1071, align 4, !tbaa !20
  %1073 = add nsw i32 %1072, %1070
  %1074 = load i16, ptr %9, align 2, !tbaa !72
  %1075 = sext i16 %1074 to i32
  %1076 = getelementptr inbounds [10 x i32], ptr @search_point_qp_y, i64 0, i64 %1066
  %1077 = load i32, ptr %1076, align 4, !tbaa !20
  %1078 = add nsw i32 %1077, %1075
  %1079 = load ptr, ptr @mvbits, align 8, !tbaa !26
  %1080 = sub nsw i32 %1073, %6
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds i32, ptr %1079, i64 %1081
  %1083 = load i32, ptr %1082, align 4, !tbaa !20
  %1084 = sub nsw i32 %1078, %7
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds i32, ptr %1079, i64 %1085
  %1087 = load i32, ptr %1086, align 4, !tbaa !20
  %1088 = add nsw i32 %1087, %1083
  %1089 = mul nsw i32 %1088, %13
  %1090 = ashr i32 %1089, 16
  %1091 = icmp slt i32 %1090, %1067
  br i1 %1091, label %1092, label %1300

1092:                                             ; preds = %1065
  %1093 = add nsw i32 %1073, %51
  %1094 = add nsw i32 %1078, %53
  br i1 %143, label %1095, label %1289

1095:                                             ; preds = %1092, %1284
  %1096 = phi i64 [ %1286, %1284 ], [ 0, %1092 ]
  %1097 = phi i32 [ %1285, %1284 ], [ %1090, %1092 ]
  %1098 = icmp ugt i64 %1096, 7
  %1099 = select i1 %1098, i32 %18, i32 0
  %1100 = trunc nuw nsw i64 %1096 to i32
  %1101 = shl i32 %1100, 2
  %1102 = add nsw i32 %1094, %1101
  %1103 = add nsw i32 %1102, 4
  %1104 = add nsw i32 %1102, 8
  %1105 = add nsw i32 %1102, 12
  br i1 %144, label %1106, label %1284

1106:                                             ; preds = %1095
  %1107 = or disjoint i64 %1096, 3
  %1108 = or disjoint i64 %1096, 2
  %1109 = or disjoint i64 %1096, 1
  %1110 = getelementptr inbounds ptr, ptr %0, i64 %1096
  %1111 = getelementptr inbounds ptr, ptr %0, i64 %1109
  %1112 = getelementptr inbounds ptr, ptr %0, i64 %1108
  %1113 = getelementptr inbounds ptr, ptr %0, i64 %1107
  %1114 = shl i32 %1100, 3
  %1115 = and i32 %1114, 32
  %1116 = trunc i64 %1096 to i32
  %1117 = shl i32 %1116, 3
  %1118 = and i32 %1117, 32
  %1119 = trunc i64 %1096 to i32
  %1120 = shl i32 %1119, 3
  %1121 = and i32 %1120, 32
  %1122 = trunc i64 %1096 to i32
  %1123 = shl i32 %1122, 3
  %1124 = and i32 %1123, 32
  br label %1125

1125:                                             ; preds = %1106, %1279
  %1126 = phi i64 [ 0, %1106 ], [ %1281, %1279 ]
  %1127 = phi i32 [ %1097, %1106 ], [ %1280, %1279 ]
  %1128 = trunc nuw nsw i64 %1126 to i32
  %1129 = shl i32 %1128, 2
  %1130 = add nsw i32 %1093, %1129
  %1131 = load ptr, ptr %1110, align 8, !tbaa !26
  %1132 = getelementptr inbounds i16, ptr %1131, i64 %1126
  %1133 = load ptr, ptr @get_line, align 8, !tbaa !26
  %1134 = call ptr %1133(ptr noundef %109, i32 noundef signext %1102, i32 noundef signext %1130, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %1135 = getelementptr inbounds i8, ptr %1132, i64 2
  %1136 = load i16, ptr %1132, align 2, !tbaa !72
  %1137 = zext i16 %1136 to i32
  %1138 = load i16, ptr %1134, align 2, !tbaa !72
  %1139 = zext i16 %1138 to i32
  %1140 = sub nsw i32 %1137, %1139
  store i32 %1140, ptr %16, align 4, !tbaa !20
  %1141 = getelementptr inbounds i8, ptr %1132, i64 4
  %1142 = load i16, ptr %1135, align 2, !tbaa !72
  %1143 = zext i16 %1142 to i32
  %1144 = getelementptr inbounds i8, ptr %1134, i64 8
  %1145 = load i16, ptr %1144, align 2, !tbaa !72
  %1146 = zext i16 %1145 to i32
  %1147 = sub nsw i32 %1143, %1146
  store i32 %1147, ptr %145, align 4, !tbaa !20
  %1148 = getelementptr inbounds i8, ptr %1132, i64 6
  %1149 = load i16, ptr %1141, align 2, !tbaa !72
  %1150 = zext i16 %1149 to i32
  %1151 = getelementptr inbounds i8, ptr %1134, i64 16
  %1152 = load i16, ptr %1151, align 2, !tbaa !72
  %1153 = zext i16 %1152 to i32
  %1154 = sub nsw i32 %1150, %1153
  store i32 %1154, ptr %146, align 4, !tbaa !20
  %1155 = load i16, ptr %1148, align 2, !tbaa !72
  %1156 = zext i16 %1155 to i32
  %1157 = getelementptr inbounds i8, ptr %1134, i64 24
  %1158 = load i16, ptr %1157, align 2, !tbaa !72
  %1159 = zext i16 %1158 to i32
  %1160 = sub nsw i32 %1156, %1159
  store i32 %1160, ptr %147, align 4, !tbaa !20
  %1161 = load ptr, ptr %1111, align 8, !tbaa !26
  %1162 = getelementptr inbounds i16, ptr %1161, i64 %1126
  %1163 = load ptr, ptr @get_line, align 8, !tbaa !26
  %1164 = call ptr %1163(ptr noundef %109, i32 noundef signext %1103, i32 noundef signext %1130, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %1165 = getelementptr inbounds i8, ptr %1162, i64 2
  %1166 = load i16, ptr %1162, align 2, !tbaa !72
  %1167 = zext i16 %1166 to i32
  %1168 = load i16, ptr %1164, align 2, !tbaa !72
  %1169 = zext i16 %1168 to i32
  %1170 = sub nsw i32 %1167, %1169
  store i32 %1170, ptr %148, align 4, !tbaa !20
  %1171 = getelementptr inbounds i8, ptr %1162, i64 4
  %1172 = load i16, ptr %1165, align 2, !tbaa !72
  %1173 = zext i16 %1172 to i32
  %1174 = getelementptr inbounds i8, ptr %1164, i64 8
  %1175 = load i16, ptr %1174, align 2, !tbaa !72
  %1176 = zext i16 %1175 to i32
  %1177 = sub nsw i32 %1173, %1176
  store i32 %1177, ptr %149, align 4, !tbaa !20
  %1178 = getelementptr inbounds i8, ptr %1162, i64 6
  %1179 = load i16, ptr %1171, align 2, !tbaa !72
  %1180 = zext i16 %1179 to i32
  %1181 = getelementptr inbounds i8, ptr %1164, i64 16
  %1182 = load i16, ptr %1181, align 2, !tbaa !72
  %1183 = zext i16 %1182 to i32
  %1184 = sub nsw i32 %1180, %1183
  store i32 %1184, ptr %150, align 4, !tbaa !20
  %1185 = load i16, ptr %1178, align 2, !tbaa !72
  %1186 = zext i16 %1185 to i32
  %1187 = getelementptr inbounds i8, ptr %1164, i64 24
  %1188 = load i16, ptr %1187, align 2, !tbaa !72
  %1189 = zext i16 %1188 to i32
  %1190 = sub nsw i32 %1186, %1189
  store i32 %1190, ptr %151, align 4, !tbaa !20
  %1191 = load ptr, ptr %1112, align 8, !tbaa !26
  %1192 = getelementptr inbounds i16, ptr %1191, i64 %1126
  %1193 = load ptr, ptr @get_line, align 8, !tbaa !26
  %1194 = call ptr %1193(ptr noundef %109, i32 noundef signext %1104, i32 noundef signext %1130, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %1195 = getelementptr inbounds i8, ptr %1192, i64 2
  %1196 = load i16, ptr %1192, align 2, !tbaa !72
  %1197 = zext i16 %1196 to i32
  %1198 = load i16, ptr %1194, align 2, !tbaa !72
  %1199 = zext i16 %1198 to i32
  %1200 = sub nsw i32 %1197, %1199
  store i32 %1200, ptr %152, align 4, !tbaa !20
  %1201 = getelementptr inbounds i8, ptr %1192, i64 4
  %1202 = load i16, ptr %1195, align 2, !tbaa !72
  %1203 = zext i16 %1202 to i32
  %1204 = getelementptr inbounds i8, ptr %1194, i64 8
  %1205 = load i16, ptr %1204, align 2, !tbaa !72
  %1206 = zext i16 %1205 to i32
  %1207 = sub nsw i32 %1203, %1206
  store i32 %1207, ptr %153, align 4, !tbaa !20
  %1208 = getelementptr inbounds i8, ptr %1192, i64 6
  %1209 = load i16, ptr %1201, align 2, !tbaa !72
  %1210 = zext i16 %1209 to i32
  %1211 = getelementptr inbounds i8, ptr %1194, i64 16
  %1212 = load i16, ptr %1211, align 2, !tbaa !72
  %1213 = zext i16 %1212 to i32
  %1214 = sub nsw i32 %1210, %1213
  store i32 %1214, ptr %154, align 4, !tbaa !20
  %1215 = load i16, ptr %1208, align 2, !tbaa !72
  %1216 = zext i16 %1215 to i32
  %1217 = getelementptr inbounds i8, ptr %1194, i64 24
  %1218 = load i16, ptr %1217, align 2, !tbaa !72
  %1219 = zext i16 %1218 to i32
  %1220 = sub nsw i32 %1216, %1219
  store i32 %1220, ptr %155, align 4, !tbaa !20
  %1221 = load ptr, ptr %1113, align 8, !tbaa !26
  %1222 = getelementptr inbounds i16, ptr %1221, i64 %1126
  %1223 = load ptr, ptr @get_line, align 8, !tbaa !26
  %1224 = call ptr %1223(ptr noundef %109, i32 noundef signext %1105, i32 noundef signext %1130, i32 noundef signext %117, i32 noundef signext %113) #15, !callees !102
  %1225 = getelementptr inbounds i8, ptr %1222, i64 2
  %1226 = load i16, ptr %1222, align 2, !tbaa !72
  %1227 = zext i16 %1226 to i32
  %1228 = load i16, ptr %1224, align 2, !tbaa !72
  %1229 = zext i16 %1228 to i32
  %1230 = sub nsw i32 %1227, %1229
  store i32 %1230, ptr %156, align 4, !tbaa !20
  %1231 = getelementptr inbounds i8, ptr %1222, i64 4
  %1232 = load i16, ptr %1225, align 2, !tbaa !72
  %1233 = zext i16 %1232 to i32
  %1234 = getelementptr inbounds i8, ptr %1224, i64 8
  %1235 = load i16, ptr %1234, align 2, !tbaa !72
  %1236 = zext i16 %1235 to i32
  %1237 = sub nsw i32 %1233, %1236
  store i32 %1237, ptr %157, align 4, !tbaa !20
  %1238 = getelementptr inbounds i8, ptr %1222, i64 6
  %1239 = load i16, ptr %1231, align 2, !tbaa !72
  %1240 = zext i16 %1239 to i32
  %1241 = getelementptr inbounds i8, ptr %1224, i64 16
  %1242 = load i16, ptr %1241, align 2, !tbaa !72
  %1243 = zext i16 %1242 to i32
  %1244 = sub nsw i32 %1240, %1243
  store i32 %1244, ptr %158, align 4, !tbaa !20
  %1245 = load i16, ptr %1238, align 2, !tbaa !72
  %1246 = zext i16 %1245 to i32
  %1247 = getelementptr inbounds i8, ptr %1224, i64 24
  %1248 = load i16, ptr %1247, align 2, !tbaa !72
  %1249 = zext i16 %1248 to i32
  %1250 = sub nsw i32 %1246, %1249
  store i32 %1250, ptr %159, align 4, !tbaa !20
  br i1 %741, label %1258, label %1251

1251:                                             ; preds = %1125
  %1252 = load ptr, ptr @input, align 8, !tbaa !26
  %1253 = getelementptr inbounds i8, ptr %1252, i64 24
  %1254 = load i32, ptr %1253, align 8, !tbaa !99
  %1255 = call signext i32 @SATD(ptr noundef nonnull %16, i32 noundef signext %1254) #15
  %1256 = add nsw i32 %1255, %1127
  %1257 = icmp sgt i32 %1256, %1067
  br i1 %1257, label %1294, label %1279

1258:                                             ; preds = %1125
  %1259 = and i32 %1128, 4
  %1260 = icmp ugt i64 %1126, 7
  %1261 = select i1 %1260, i32 64, i32 0
  %1262 = or disjoint i32 %1259, %1099
  %1263 = add nuw nsw i32 %1262, %1261
  %1264 = or disjoint i32 %1115, %1263
  %1265 = zext nneg i32 %1264 to i64
  %1266 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %1265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1266, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false)
  %1267 = or disjoint i32 %1118, %1263
  %1268 = or disjoint i32 %1267, 8
  %1269 = zext nneg i32 %1268 to i64
  %1270 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %1269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1270, ptr noundef nonnull align 4 dereferenceable(16) %148, i64 16, i1 false)
  %1271 = or disjoint i32 %1121, %1263
  %1272 = or disjoint i32 %1271, 16
  %1273 = zext nneg i32 %1272 to i64
  %1274 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %1273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1274, ptr noundef nonnull align 4 dereferenceable(16) %152, i64 16, i1 false)
  %1275 = or disjoint i32 %1124, %1263
  %1276 = or disjoint i32 %1275, 24
  %1277 = zext nneg i32 %1276 to i64
  %1278 = getelementptr inbounds [256 x i32], ptr %15, i64 0, i64 %1277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1278, ptr noundef nonnull align 4 dereferenceable(16) %156, i64 16, i1 false)
  br label %1279

1279:                                             ; preds = %1258, %1251
  %1280 = phi i32 [ %1256, %1251 ], [ %1127, %1258 ]
  %1281 = add nuw nsw i64 %1126, 4
  %1282 = trunc nuw i64 %1281 to i32
  %1283 = icmp sgt i32 %47, %1282
  br i1 %1283, label %1125, label %1284

1284:                                             ; preds = %1279, %1095
  %1285 = phi i32 [ %1097, %1095 ], [ %1280, %1279 ]
  %1286 = add nuw nsw i64 %1096, 4
  %1287 = trunc nuw i64 %1286 to i32
  %1288 = icmp sgt i32 %49, %1287
  br i1 %1288, label %1095, label %1289

1289:                                             ; preds = %1284, %1092
  %1290 = phi i32 [ %1090, %1092 ], [ %1285, %1284 ]
  br i1 %741, label %1291, label %1294

1291:                                             ; preds = %1289
  %1292 = call signext i32 @find_SATD(ptr noundef nonnull %15, i32 noundef signext %5) #15
  %1293 = add nsw i32 %1292, %1290
  br label %1294

1294:                                             ; preds = %1251, %1291, %1289
  %1295 = phi i32 [ %1293, %1291 ], [ %1290, %1289 ], [ %1256, %1251 ]
  %1296 = icmp slt i32 %1295, %1067
  %1297 = trunc nuw nsw i64 %1066 to i32
  %1298 = select i1 %1296, i32 %1297, i32 %1068
  %1299 = call i32 @llvm.smin.i32(i32 %1295, i32 %1067)
  br label %1300

1300:                                             ; preds = %1294, %1065
  %1301 = phi i32 [ %1068, %1065 ], [ %1298, %1294 ]
  %1302 = phi i32 [ %1067, %1065 ], [ %1299, %1294 ]
  %1303 = add nuw nsw i64 %1066, 1
  %1304 = icmp eq i64 %1303, %1064
  br i1 %1304, label %1305, label %1065

1305:                                             ; preds = %1300, %1045
  %1306 = phi i32 [ %1001, %1045 ], [ %1301, %1300 ]
  %1307 = phi i32 [ %1002, %1045 ], [ %1302, %1300 ]
  %1308 = icmp eq i32 %1306, 0
  br i1 %1308, label %1321, label %1309

1309:                                             ; preds = %1305
  %1310 = sext i32 %1306 to i64
  %1311 = getelementptr inbounds [10 x i32], ptr @search_point_qp_x, i64 0, i64 %1310
  %1312 = load i32, ptr %1311, align 4, !tbaa !20
  %1313 = load i16, ptr %8, align 2, !tbaa !72
  %1314 = trunc i32 %1312 to i16
  %1315 = add i16 %1313, %1314
  store i16 %1315, ptr %8, align 2, !tbaa !72
  %1316 = getelementptr inbounds [10 x i32], ptr @search_point_qp_y, i64 0, i64 %1310
  %1317 = load i32, ptr %1316, align 4, !tbaa !20
  %1318 = load i16, ptr %9, align 2, !tbaa !72
  %1319 = trunc i32 %1317 to i16
  %1320 = add i16 %1318, %1319
  store i16 %1320, ptr %9, align 2, !tbaa !72
  br label %1321

1321:                                             ; preds = %1032, %1305, %1309, %1015, %418
  %1322 = phi i32 [ %405, %418 ], [ %1002, %1015 ], [ %1307, %1309 ], [ %1307, %1305 ], [ %1002, %1032 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %15) #15
  ret i32 %1322
}

declare dso_local ptr @FastLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare dso_local ptr @UMVLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare dso_local signext i32 @SATD(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @find_SATD(ptr noundef, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #13

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 4}
!7 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !8, i64 8}
!13 = !{!7, !8, i64 0}
!14 = !{!7, !11, i64 16}
!15 = !{!7, !11, i64 24}
!16 = !{!7, !11, i64 32}
!17 = !{!18, !8, i64 0}
!18 = !{!"", !8, i64 0, !11, i64 8}
!19 = !{!18, !11, i64 8}
!20 = !{!8, !8, i64 0}
!21 = !{!22, !8, i64 0}
!22 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!23 = !{!22, !8, i64 4}
!24 = !{!22, !8, i64 8}
!25 = !{!22, !8, i64 12}
!26 = !{!11, !11, i64 0}
!27 = !{!28, !8, i64 90484}
!28 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !29, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !11, i64 104, !11, i64 112, !8, i64 120, !11, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !9, i64 184, !9, i64 4792, !9, i64 7352, !9, i64 8504, !9, i64 12600, !9, i64 13112, !11, i64 14136, !11, i64 14144, !9, i64 14152, !9, i64 18248, !9, i64 21320, !9, i64 29512, !11, i64 31560, !11, i64 31568, !11, i64 31576, !9, i64 31584, !11, i64 89184, !11, i64 89192, !8, i64 89200, !8, i64 89204, !8, i64 89208, !8, i64 89212, !9, i64 89216, !8, i64 89280, !8, i64 89284, !8, i64 89288, !8, i64 89292, !8, i64 89296, !30, i64 89304, !8, i64 89312, !8, i64 89316, !8, i64 89320, !8, i64 89324, !11, i64 89328, !11, i64 89336, !11, i64 89344, !11, i64 89352, !9, i64 89360, !8, i64 89392, !8, i64 89396, !8, i64 89400, !8, i64 89404, !8, i64 89408, !8, i64 89412, !8, i64 89416, !8, i64 89420, !9, i64 89424, !8, i64 90192, !8, i64 90196, !8, i64 90200, !8, i64 90204, !8, i64 90208, !8, i64 90212, !8, i64 90216, !8, i64 90220, !8, i64 90224, !8, i64 90228, !8, i64 90232, !8, i64 90236, !8, i64 90240, !9, i64 90244, !8, i64 90248, !8, i64 90252, !9, i64 90256, !8, i64 90264, !8, i64 90268, !8, i64 90272, !8, i64 90276, !8, i64 90280, !8, i64 90284, !8, i64 90288, !8, i64 90292, !8, i64 90296, !8, i64 90300, !8, i64 90304, !8, i64 90308, !8, i64 90312, !8, i64 90316, !8, i64 90320, !8, i64 90324, !8, i64 90328, !11, i64 90336, !8, i64 90344, !8, i64 90348, !8, i64 90352, !8, i64 90356, !8, i64 90360, !30, i64 90368, !8, i64 90376, !8, i64 90380, !8, i64 90384, !8, i64 90388, !8, i64 90392, !8, i64 90396, !8, i64 90400, !11, i64 90408, !8, i64 90416, !8, i64 90420, !8, i64 90424, !8, i64 90428, !8, i64 90432, !8, i64 90436, !8, i64 90440, !8, i64 90444, !8, i64 90448, !8, i64 90452, !8, i64 90456, !8, i64 90460, !8, i64 90464, !8, i64 90468, !8, i64 90472, !8, i64 90476, !8, i64 90480, !8, i64 90484, !8, i64 90488, !8, i64 90492, !8, i64 90496, !8, i64 90500, !11, i64 90504, !11, i64 90512, !11, i64 90520, !8, i64 90528, !8, i64 90532, !8, i64 90536, !8, i64 90540, !8, i64 90544, !8, i64 90548, !8, i64 90552, !8, i64 90556, !8, i64 90560, !9, i64 90564, !8, i64 90572, !8, i64 90576, !8, i64 90580, !31, i64 90584, !8, i64 90588, !8, i64 90592}
!29 = !{!"float", !9, i64 0}
!30 = !{!"double", !9, i64 0}
!31 = !{!"short", !9, i64 0}
!32 = !{!33, !8, i64 1264}
!33 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !9, i64 84, !9, i64 148, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !9, i64 228, !9, i64 428, !9, i64 628, !9, i64 828, !9, i64 1028, !8, i64 1228, !8, i64 1232, !8, i64 1236, !8, i64 1240, !8, i64 1244, !8, i64 1248, !8, i64 1252, !8, i64 1256, !8, i64 1260, !8, i64 1264, !8, i64 1268, !8, i64 1272, !8, i64 1276, !8, i64 1280, !8, i64 1284, !8, i64 1288, !8, i64 1292, !8, i64 1296, !8, i64 1300, !9, i64 1304, !9, i64 1504, !9, i64 1704, !8, i64 1904, !8, i64 1908, !8, i64 1912, !8, i64 1916, !8, i64 1920, !8, i64 1924, !8, i64 1928, !8, i64 1932, !8, i64 1936, !8, i64 1940, !8, i64 1944, !8, i64 1948, !9, i64 1952, !8, i64 2976, !8, i64 2980, !8, i64 2984, !8, i64 2988, !8, i64 2992, !8, i64 2996, !8, i64 3000, !8, i64 3004, !8, i64 3008, !8, i64 3012, !8, i64 3016, !8, i64 3020, !8, i64 3024, !8, i64 3028, !8, i64 3032, !8, i64 3036, !8, i64 3040, !8, i64 3044, !8, i64 3048, !8, i64 3052, !30, i64 3056, !8, i64 3064, !8, i64 3068, !8, i64 3072, !8, i64 3076, !8, i64 3080, !8, i64 3084, !8, i64 3088, !8, i64 3092, !8, i64 3096, !8, i64 3100, !8, i64 3104, !8, i64 3108, !8, i64 3112, !8, i64 3116, !8, i64 3120, !8, i64 3124, !8, i64 3128, !8, i64 3132, !8, i64 3136, !8, i64 3140, !8, i64 3144, !8, i64 3148, !9, i64 3152, !9, i64 3352, !8, i64 3552, !8, i64 3556, !8, i64 3560, !8, i64 3564, !8, i64 3568, !8, i64 3572, !8, i64 3576, !8, i64 3580, !8, i64 3584, !8, i64 3588, !8, i64 3592, !8, i64 3596, !8, i64 3600, !8, i64 3604, !8, i64 3608, !8, i64 3612, !8, i64 3616, !8, i64 3620, !9, i64 3624, !8, i64 3824, !8, i64 3828, !11, i64 3832, !11, i64 3840, !11, i64 3848, !11, i64 3856, !8, i64 3864, !8, i64 3868, !8, i64 3872, !8, i64 3876, !8, i64 3880, !8, i64 3884, !8, i64 3888, !8, i64 3892, !8, i64 3896, !8, i64 3900, !8, i64 3904, !8, i64 3908, !8, i64 3912, !8, i64 3916, !8, i64 3920, !8, i64 3924, !8, i64 3928, !9, i64 3932, !8, i64 3964, !8, i64 3968, !8, i64 3972, !8, i64 3976, !8, i64 3980, !8, i64 3984, !8, i64 3988, !8, i64 3992, !8, i64 3996, !8, i64 4000, !8, i64 4004, !9, i64 4008, !9, i64 4056, !8, i64 4256, !8, i64 4260, !8, i64 4264, !8, i64 4268, !9, i64 4272, !8, i64 4312, !8, i64 4316, !8, i64 4320, !8, i64 4324}
!34 = !{!33, !8, i64 32}
!35 = !{!33, !8, i64 1272}
!36 = !{!33, !8, i64 3092}
!37 = !{!33, !8, i64 3088}
!38 = !{!33, !8, i64 3084}
!39 = !{!33, !8, i64 3100}
!40 = !{!33, !8, i64 3076}
!41 = !{!33, !8, i64 3080}
!42 = !{!28, !8, i64 52}
!43 = !{!28, !8, i64 36}
!44 = !{!28, !8, i64 60}
!45 = !{!46, !8, i64 1152}
!46 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !9, i64 40, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 108, !8, i64 1132, !8, i64 1136, !8, i64 1140, !8, i64 1144, !8, i64 1148, !8, i64 1152, !8, i64 1156, !8, i64 1160, !8, i64 1164, !8, i64 1168, !8, i64 1172, !8, i64 1176, !8, i64 1180, !47, i64 1184}
!47 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !48, i64 84, !8, i64 496, !48, i64 500, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !8, i64 932, !8, i64 936, !8, i64 940, !8, i64 944}
!48 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !9, i64 140, !9, i64 268, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408}
!49 = !{!33, !8, i64 3064}
!50 = !{!33, !8, i64 3068}
!51 = !{!28, !8, i64 24}
!52 = !{!28, !8, i64 90220}
!53 = !{!54, !8, i64 4}
!54 = !{!"storable_picture", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !9, i64 1608, !9, i64 3192, !9, i64 4776, !8, i64 6360, !8, i64 6364, !8, i64 6368, !8, i64 6372, !8, i64 6376, !8, i64 6380, !8, i64 6384, !8, i64 6388, !8, i64 6392, !8, i64 6396, !8, i64 6400, !8, i64 6404, !8, i64 6408, !8, i64 6412, !8, i64 6416, !11, i64 6424, !11, i64 6432, !11, i64 6440, !11, i64 6448, !11, i64 6456, !11, i64 6464, !11, i64 6472, !11, i64 6480, !11, i64 6488, !11, i64 6496, !11, i64 6504, !11, i64 6512, !11, i64 6520, !11, i64 6528, !11, i64 6536, !11, i64 6544, !8, i64 6552, !8, i64 6556, !8, i64 6560, !8, i64 6564, !8, i64 6568, !8, i64 6572, !8, i64 6576}
!55 = !{!54, !8, i64 8}
!56 = !{!54, !8, i64 12}
!57 = !{!28, !8, i64 28}
!58 = !{!54, !8, i64 0}
!59 = !{!54, !8, i64 6412}
!60 = !{!54, !11, i64 6528}
!61 = !{!54, !11, i64 6536}
!62 = !{!46, !8, i64 1148}
!63 = !{!54, !8, i64 6396}
!64 = !{!54, !8, i64 6392}
!65 = !{!54, !11, i64 6520}
!66 = !{!9, !9, i64 0}
!67 = !{!54, !11, i64 6496}
!68 = !{!69, !69, i64 0}
!69 = !{!"long long", !9, i64 0}
!70 = !{!28, !8, i64 89408}
!71 = !{!54, !11, i64 6504}
!72 = !{!31, !31, i64 0}
!73 = !{!28, !8, i64 168}
!74 = !{!28, !8, i64 172}
!75 = !{!76, !8, i64 192}
!76 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 56, !8, i64 60, !8, i64 64, !9, i64 68, !9, i64 100, !9, i64 132, !8, i64 164, !8, i64 168, !8, i64 172, !11, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232}
!77 = !{!76, !8, i64 196}
!78 = !{!33, !8, i64 1912}
!79 = !{ptr @FastLineX, ptr @UMVLineX}
!80 = !{!28, !8, i64 136}
!81 = !{!28, !8, i64 140}
!82 = !{!28, !8, i64 12}
!83 = !{!84, !8, i64 0}
!84 = !{!"pix_pos", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!85 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !20, i64 12, i64 4, !20, i64 16, i64 4, !20, i64 20, i64 4, !20}
!86 = !{!33, !8, i64 3072}
!87 = !{!28, !11, i64 89336}
!88 = !{!84, !8, i64 20}
!89 = !{!84, !8, i64 16}
!90 = !{!28, !11, i64 31576}
!91 = !{!84, !8, i64 4}
!92 = !{!93, !8, i64 424}
!93 = !{!"macroblock", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !11, i64 56, !11, i64 64, !8, i64 72, !9, i64 76, !9, i64 332, !9, i64 348, !8, i64 364, !69, i64 368, !9, i64 376, !9, i64 392, !69, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !8, i64 428, !8, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !8, i64 456, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !31, i64 476, !30, i64 480, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520}
!94 = !{!54, !11, i64 6432}
!95 = !{ptr @computeBiPredSad1, ptr @computeBiPredSad2}
!96 = !{!28, !8, i64 90532}
!97 = !{!33, !8, i64 3096}
!98 = !{!33, !8, i64 3136}
!99 = !{!33, !8, i64 24}
!100 = !{!93, !8, i64 428}
!101 = !{!33, !8, i64 3892}
!102 = !{ptr @FastLine4X, ptr @UMVLine4X}
