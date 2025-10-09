; ModuleID = 'src/slice.c'
source_filename = "src/slice.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.decoded_picture_buffer = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, ptr }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }

@img = external dso_local local_unnamed_addr global ptr, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@terminate_slice.MbWidthC = internal unnamed_addr constant [4 x i32] [i32 0, i32 8, i32 8, i32 16], align 4
@terminate_slice.MbHeightC = internal unnamed_addr constant [4 x i32] [i32 0, i32 8, i32 16, i32 16], align 4
@stats = external dso_local local_unnamed_addr global ptr, align 8
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"CABAC stuffing words = %6d\0A\00", align 1
@Bytes_After_Header = external dso_local local_unnamed_addr global i32, align 4
@rddata_top_frame_mb = external dso_local global %struct.RD_DATA, align 8
@rdopt = external dso_local local_unnamed_addr global ptr, align 8
@errortext = external dso_local global [300 x i8], align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Error encoding first MB with specified parameter, bits of current MB may be too big\00", align 1
@rddata_bot_frame_mb = external dso_local global %struct.RD_DATA, align 8
@rddata_top_field_mb = external dso_local global %struct.RD_DATA, align 8
@rddata_bot_field_mb = external dso_local global %struct.RD_DATA, align 8
@MBPairIsField = external dso_local local_unnamed_addr global i32, align 4
@rpc_bits_to_go = external dso_local local_unnamed_addr global i32, align 4
@rpc_bytes_to_go = external dso_local local_unnamed_addr global i32, align 4
@log2_max_frame_num_minus4 = external dso_local local_unnamed_addr global i32, align 4
@dpb = external dso_local local_unnamed_addr global %struct.decoded_picture_buffer, align 8
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@gop_structure = external dso_local local_unnamed_addr global ptr, align 8
@QP2QUANT = external dso_local local_unnamed_addr global [40 x i32], align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"currPic != NULL\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"src/slice.c\00", align 1
@__PRETTY_FUNCTION__.init_slice = private unnamed_addr constant [21 x i8] c"void init_slice(int)\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"Too many slices per picture, increase MAXSLICEPERPICTURE in global.h.\00", align 1
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@listXsize = external dso_local global [6 x i32], align 4
@listX = external dso_local global [6 x ptr], align 8
@enc_frame_picture2 = external dso_local local_unnamed_addr global ptr, align 8
@Co_located = external dso_local local_unnamed_addr global ptr, align 8
@EPZSCo_located = external dso_local local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"malloc_slice: slice structure\00", align 1
@assignSE2partition_NoDP = external dso_local global [20 x i32], align 4
@assignSE2partition = external dso_local local_unnamed_addr global [2 x ptr], align 8
@assignSE2partition_DP = external dso_local global [20 x i32], align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"malloc_slice: partArr\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"malloc_slice: Bitstream\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"malloc_slice: StreamBuffer\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @init_ref_pic_list_reordering() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31568
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 56
  store i32 0, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds i8, ptr %3, i64 88
  store i32 0, ptr %5, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local signext i32 @start_slice() local_unnamed_addr #2 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 31568
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = load ptr, ptr @input, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 2992
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp ne i32 %6, 0
  %8 = getelementptr inbounds i8, ptr %1, i64 31560
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !22
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds i8, ptr %1, i64 89200
  %14 = load i32, ptr %13, align 8, !tbaa !24
  tail call void @RTPUpdateTimestamp(i32 noundef signext %14) #14
  %15 = getelementptr inbounds i8, ptr %3, i64 24
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = getelementptr inbounds i8, ptr %17, i64 40
  store i32 0, ptr %18, align 8, !tbaa !29
  %19 = tail call signext i32 @SliceHeader(i32 noundef signext 0) #14
  %20 = load ptr, ptr @input, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 2984
  %22 = load i32, ptr %21, align 8, !tbaa !31
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %25, label %24

24:                                               ; preds = %0
  tail call void @CAVLC_init() #14
  br label %35

25:                                               ; preds = %0
  %26 = load ptr, ptr %15, align 8, !tbaa !25
  %27 = getelementptr inbounds i8, ptr %26, i64 8
  %28 = getelementptr inbounds i8, ptr %17, i64 4
  %29 = load i32, ptr %28, align 4, !tbaa !32
  %30 = icmp eq i32 %29, 8
  %31 = select i1 %30, i32 0, i32 %29
  %32 = add nsw i32 %31, %19
  tail call void @writeVlcByteAlign(ptr noundef nonnull %17) #14
  %33 = getelementptr inbounds i8, ptr %17, i64 32
  %34 = load ptr, ptr %33, align 8, !tbaa !33
  tail call void @arienco_start_encoding(ptr noundef nonnull %27, ptr noundef %34, ptr noundef nonnull %17) #14
  tail call void @cabac_new_slice() #14
  br label %35

35:                                               ; preds = %25, %24
  %36 = phi i32 [ %32, %25 ], [ %19, %24 ]
  %37 = select i1 %12, i1 %7, i1 false
  br i1 %37, label %38, label %83

38:                                               ; preds = %35
  %39 = load ptr, ptr %15, align 8, !tbaa !25
  %40 = getelementptr inbounds i8, ptr %39, i64 112
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = getelementptr inbounds i8, ptr %41, i64 40
  store i32 0, ptr %42, align 8, !tbaa !29
  %43 = tail call signext i32 @Partition_BC_Header(i32 noundef signext 1) #14
  %44 = load ptr, ptr @input, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %44, i64 2984
  %46 = load i32, ptr %45, align 8, !tbaa !31
  %47 = add nsw i32 %43, %36
  %48 = icmp eq i32 %46, 1
  br i1 %48, label %49, label %59

49:                                               ; preds = %38
  %50 = load ptr, ptr %15, align 8, !tbaa !25
  %51 = getelementptr inbounds i8, ptr %50, i64 120
  %52 = getelementptr inbounds i8, ptr %41, i64 4
  %53 = load i32, ptr %52, align 4, !tbaa !32
  %54 = icmp eq i32 %53, 8
  %55 = select i1 %54, i32 0, i32 %53
  %56 = add nsw i32 %55, %47
  tail call void @writeVlcByteAlign(ptr noundef nonnull %41) #14
  %57 = getelementptr inbounds i8, ptr %41, i64 32
  %58 = load ptr, ptr %57, align 8, !tbaa !33
  tail call void @arienco_start_encoding(ptr noundef nonnull %51, ptr noundef %58, ptr noundef nonnull %41) #14
  tail call void @cabac_new_slice() #14
  br label %60

59:                                               ; preds = %38
  tail call void @CAVLC_init() #14
  br label %60

60:                                               ; preds = %49, %59
  %61 = phi i32 [ %56, %49 ], [ %47, %59 ]
  %62 = load ptr, ptr %15, align 8, !tbaa !25
  %63 = getelementptr inbounds i8, ptr %62, i64 224
  %64 = load ptr, ptr %63, align 8, !tbaa !26
  %65 = getelementptr inbounds i8, ptr %64, i64 40
  store i32 0, ptr %65, align 8, !tbaa !29
  %66 = tail call signext i32 @Partition_BC_Header(i32 noundef signext 2) #14
  %67 = load ptr, ptr @input, align 8, !tbaa !6
  %68 = getelementptr inbounds i8, ptr %67, i64 2984
  %69 = load i32, ptr %68, align 8, !tbaa !31
  %70 = add nsw i32 %66, %61
  %71 = icmp eq i32 %69, 1
  br i1 %71, label %73, label %72

72:                                               ; preds = %60
  tail call void @CAVLC_init() #14
  br label %83

73:                                               ; preds = %60
  %74 = load ptr, ptr %15, align 8, !tbaa !25
  %75 = getelementptr inbounds i8, ptr %74, i64 232
  %76 = getelementptr inbounds i8, ptr %64, i64 4
  %77 = load i32, ptr %76, align 4, !tbaa !32
  %78 = icmp eq i32 %77, 8
  %79 = select i1 %78, i32 0, i32 %77
  %80 = add nsw i32 %79, %70
  tail call void @writeVlcByteAlign(ptr noundef nonnull %64) #14
  %81 = getelementptr inbounds i8, ptr %64, i64 32
  %82 = load ptr, ptr %81, align 8, !tbaa !33
  tail call void @arienco_start_encoding(ptr noundef nonnull %75, ptr noundef %82, ptr noundef nonnull %64) #14
  tail call void @cabac_new_slice() #14
  br label %83

83:                                               ; preds = %72, %73, %35
  %84 = phi i32 [ %36, %35 ], [ %80, %73 ], [ %70, %72 ]
  %85 = load ptr, ptr @input, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %85, i64 2984
  %87 = load i32, ptr %86, align 8, !tbaa !31
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  tail call void @init_contexts() #14
  br label %90

90:                                               ; preds = %89, %83
  ret i32 %84
}

declare dso_local void @RTPUpdateTimestamp(i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @SliceHeader(...) local_unnamed_addr #3

declare dso_local signext i32 @Partition_BC_Header(...) local_unnamed_addr #3

declare dso_local void @writeVlcByteAlign(ptr noundef) local_unnamed_addr #3

declare dso_local void @arienco_start_encoding(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local void @cabac_new_slice() local_unnamed_addr #3

declare dso_local void @CAVLC_init() local_unnamed_addr #3

declare dso_local void @init_contexts() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local noundef signext i32 @terminate_slice(i32 noundef signext %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 31568
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = load ptr, ptr @input, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 2984
  %7 = load i32, ptr %6, align 8, !tbaa !31
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @write_terminating_bit(i16 noundef signext 1) #14
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds i8, ptr %4, i64 16
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %105

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %4, i64 24
  %16 = icmp eq i32 %0, 0
  br label %17

17:                                               ; preds = %14, %92
  %18 = phi i64 [ 0, %14 ], [ %101, %92 ]
  %19 = phi i32 [ 0, %14 ], [ %94, %92 ]
  %20 = load ptr, ptr %15, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.datapartition, ptr %20, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  %23 = load ptr, ptr @input, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 2984
  %25 = load i32, ptr %24, align 8, !tbaa !31
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  tail call void @SODBtoRBSP(ptr noundef %22) #14
  %28 = load i32, ptr %22, align 8, !tbaa !35
  %29 = getelementptr inbounds i8, ptr %22, i64 32
  %30 = load ptr, ptr %29, align 8, !tbaa !33
  %31 = tail call signext i32 @RBSPtoEBSP(ptr noundef %30, i32 noundef signext 0, i32 noundef signext %28, i32 noundef signext 0) #14
  store i32 %31, ptr %22, align 8, !tbaa !35
  %32 = sub nsw i32 %31, %28
  br label %92

33:                                               ; preds = %17
  %34 = getelementptr inbounds i8, ptr %21, i64 8
  tail call void @arienco_done_encoding(ptr noundef nonnull %34) #14
  %35 = getelementptr inbounds i8, ptr %21, i64 20
  %36 = load i32, ptr %35, align 4, !tbaa !36
  %37 = getelementptr inbounds i8, ptr %22, i64 4
  store i32 %36, ptr %37, align 4, !tbaa !32
  %38 = getelementptr inbounds i8, ptr %22, i64 8
  store i8 0, ptr %38, align 8, !tbaa !37
  %39 = load i32, ptr %22, align 8, !tbaa !35
  %40 = load ptr, ptr @img, align 8, !tbaa !6
  %41 = getelementptr inbounds i8, ptr %40, i64 90592
  %42 = load i32, ptr %41, align 8, !tbaa !38
  %43 = add nsw i32 %42, %39
  store i32 %43, ptr %41, align 8, !tbaa !38
  br i1 %16, label %84, label %44

44:                                               ; preds = %33
  %45 = load i32, ptr %11, align 8, !tbaa !34
  %46 = add nsw i32 %45, -1
  %47 = zext i32 %46 to i64
  %48 = icmp eq i64 %18, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %40, i64 90484
  %51 = load i32, ptr %50, align 4, !tbaa !39
  %52 = shl nsw i32 %51, 8
  %53 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 32
  %55 = load i32, ptr %54, align 4, !tbaa !40
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], ptr @terminate_slice.MbWidthC, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !44
  %59 = shl nsw i32 %58, 1
  %60 = getelementptr inbounds [4 x i32], ptr @terminate_slice.MbHeightC, i64 0, i64 %56
  %61 = load i32, ptr %60, align 4, !tbaa !44
  %62 = mul nsw i32 %59, %61
  %63 = getelementptr inbounds i8, ptr %40, i64 90488
  %64 = load i32, ptr %63, align 8, !tbaa !45
  %65 = mul nsw i32 %62, %64
  %66 = add nsw i32 %65, %52
  %67 = tail call signext i32 @get_pic_bin_count() #14
  %68 = mul nsw i32 %67, 96
  %69 = load ptr, ptr @img, align 8, !tbaa !6
  %70 = getelementptr inbounds i8, ptr %69, i64 90304
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = mul i32 %66, -3
  %73 = mul i32 %72, %71
  %74 = add i32 %68, 1023
  %75 = add i32 %74, %73
  %76 = sdiv i32 %75, 1024
  %77 = getelementptr inbounds i8, ptr %69, i64 90592
  %78 = load i32, ptr %77, align 8, !tbaa !38
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %49
  %81 = sub nsw i32 %76, %78
  %82 = sdiv i32 %81, 3
  %83 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef signext %82)
  br label %84

84:                                               ; preds = %49, %80, %44, %33
  %85 = phi i32 [ %81, %80 ], [ %19, %49 ], [ %19, %44 ], [ %19, %33 ]
  %86 = getelementptr inbounds i8, ptr %22, i64 32
  %87 = load ptr, ptr %86, align 8, !tbaa !33
  %88 = load i32, ptr %22, align 8, !tbaa !35
  %89 = add nsw i32 %88, %85
  %90 = tail call signext i32 @RBSPtoEBSP(ptr noundef %87, i32 noundef signext 0, i32 noundef signext %88, i32 noundef signext %89) #14
  store i32 %90, ptr %22, align 8, !tbaa !35
  %91 = sub nsw i32 %90, %39
  br label %92

92:                                               ; preds = %27, %84
  %93 = phi i32 [ %32, %27 ], [ %91, %84 ]
  %94 = phi i32 [ %19, %27 ], [ %85, %84 ]
  %95 = shl nsw i32 %93, 3
  %96 = load ptr, ptr @stats, align 8, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %96, i64 1488
  %98 = load ptr, ptr %97, align 8, !tbaa !47
  %99 = load i32, ptr %98, align 4, !tbaa !44
  %100 = add nsw i32 %99, %95
  store i32 %100, ptr %98, align 4, !tbaa !44
  %101 = add nuw nsw i64 %18, 1
  %102 = load i32, ptr %11, align 8, !tbaa !34
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %17, label %105

105:                                              ; preds = %92, %10
  %106 = load ptr, ptr @input, align 8, !tbaa !6
  %107 = getelementptr inbounds i8, ptr %106, i64 2984
  %108 = load i32, ptr %107, align 8, !tbaa !31
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  tail call void @store_contexts() #14
  br label %111

111:                                              ; preds = %110, %105
  tail call void @free_ref_pic_list_reordering_buffer(ptr noundef nonnull %4) #14
  ret i32 0
}

declare dso_local void @write_terminating_bit(i16 noundef signext) local_unnamed_addr #3

declare dso_local void @SODBtoRBSP(ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @RBSPtoEBSP(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @arienco_done_encoding(ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @get_pic_bin_count() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare dso_local void @store_contexts() local_unnamed_addr #3

declare dso_local void @free_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @encode_one_slice(i32 noundef signext %0, ptr nocapture noundef readnone %1, i32 noundef signext %2) local_unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 120
  store i32 0, ptr %7, align 8, !tbaa !49
  %8 = tail call signext i32 @FmoGetFirstMacroblockInSlice(i32 noundef signext %0) #14
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 31560
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = getelementptr inbounds i8, ptr %9, i64 12
  store i32 %8, ptr %12, align 4, !tbaa !50
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef signext 574, ptr noundef nonnull @__PRETTY_FUNCTION__.init_slice) #15
  unreachable

15:                                               ; preds = %3
  %16 = load i32, ptr %11, align 8, !tbaa !51
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %11, align 8, !tbaa !51
  %18 = icmp sgt i32 %16, 98
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef signext -1) #14
  %20 = load ptr, ptr @img, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %9, %15 ]
  %23 = getelementptr inbounds i8, ptr %22, i64 90308
  %24 = load i32, ptr %23, align 4, !tbaa !52
  %25 = getelementptr inbounds i8, ptr %22, i64 90484
  %26 = load i32, ptr %25, align 4, !tbaa !39
  %27 = shl nsw i32 %26, 8
  %28 = or disjoint i32 %27, 128
  %29 = getelementptr inbounds i8, ptr %22, i64 90488
  %30 = load i32, ptr %29, align 8, !tbaa !45
  %31 = shl nsw i32 %30, 9
  %32 = add nsw i32 %28, %31
  %33 = mul i32 %32, %24
  %34 = add i32 %33, 500
  %35 = tail call noalias dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #14
  br label %38

38:                                               ; preds = %37, %21
  %39 = load ptr, ptr @input, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %39, i64 2984
  %41 = load i32, ptr %40, align 8, !tbaa !31
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = tail call ptr @create_contexts_MotionInfo() #14
  %45 = getelementptr inbounds i8, ptr %35, i64 32
  store ptr %44, ptr %45, align 8, !tbaa !53
  %46 = tail call ptr @create_contexts_TextureInfo() #14
  %47 = getelementptr inbounds i8, ptr %35, i64 40
  store ptr %46, ptr %47, align 8, !tbaa !54
  %48 = load ptr, ptr @input, align 8, !tbaa !6
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 2992
  %52 = load i32, ptr %51, align 8, !tbaa !19
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 1, i32 3
  %55 = getelementptr inbounds i8, ptr %35, i64 16
  %56 = load ptr, ptr @img, align 8, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %56, i64 31560
  %58 = load ptr, ptr %57, align 8, !tbaa !21
  %59 = getelementptr inbounds i8, ptr %58, i64 4
  %60 = load i32, ptr %59, align 4, !tbaa !22
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 %54, i32 1
  store i32 %62, ptr %55, align 8
  store ptr @assignSE2partition_NoDP, ptr @assignSE2partition, align 8, !tbaa !6
  %63 = icmp eq i32 %52, 1
  %64 = select i1 %61, i1 %63, i1 false
  %65 = select i1 %64, ptr @assignSE2partition_DP, ptr @assignSE2partition_NoDP
  store ptr %65, ptr getelementptr inbounds (i8, ptr @assignSE2partition, i64 8), align 8, !tbaa !6
  %66 = zext nneg i32 %62 to i64
  %67 = tail call noalias ptr @calloc(i64 noundef %66, i64 noundef 112) #16
  %68 = getelementptr inbounds i8, ptr %35, i64 24
  store ptr %67, ptr %68, align 8, !tbaa !25
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #14
  br label %71

71:                                               ; preds = %70, %49
  %72 = sext i32 %34 to i64
  br label %73

73:                                               ; preds = %86, %71
  %74 = phi i64 [ 0, %71 ], [ %87, %86 ]
  %75 = getelementptr inbounds %struct.datapartition, ptr %67, i64 %74
  %76 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #16
  store ptr %76, ptr %75, align 8, !tbaa !26
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #14
  %79 = load ptr, ptr %75, align 8, !tbaa !26
  br label %80

80:                                               ; preds = %78, %73
  %81 = phi ptr [ %79, %78 ], [ %76, %73 ]
  %82 = tail call noalias ptr @calloc(i64 noundef %72, i64 noundef 1) #16
  %83 = getelementptr inbounds i8, ptr %81, i64 32
  store ptr %82, ptr %83, align 8, !tbaa !33
  %84 = icmp eq ptr %82, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #14
  br label %86

86:                                               ; preds = %85, %80
  %87 = add nuw nsw i64 %74, 1
  %88 = icmp eq i64 %87, %66
  br i1 %88, label %89, label %73

89:                                               ; preds = %86
  %90 = getelementptr inbounds i8, ptr %11, i64 8
  %91 = load i32, ptr %11, align 8, !tbaa !51
  %92 = add nsw i32 %91, -1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [100 x ptr], ptr %90, i64 0, i64 %93
  store ptr %35, ptr %94, align 8, !tbaa !6
  %95 = load ptr, ptr @img, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %95, i64 31568
  store ptr %35, ptr %96, align 8, !tbaa !10
  %97 = getelementptr inbounds i8, ptr %95, i64 89200
  %98 = load i32, ptr %97, align 8, !tbaa !24
  %99 = srem i32 %98, 256
  store i32 %99, ptr %35, align 8, !tbaa !55
  %100 = getelementptr inbounds i8, ptr %95, i64 40
  %101 = load i32, ptr %100, align 8, !tbaa !56
  %102 = getelementptr inbounds i8, ptr %35, i64 4
  store i32 %101, ptr %102, align 4, !tbaa !57
  %103 = getelementptr inbounds i8, ptr %35, i64 12
  store i32 %8, ptr %103, align 4, !tbaa !58
  %104 = getelementptr inbounds i8, ptr %35, i64 120
  store ptr @dummy_slice_too_big, ptr %104, align 8, !tbaa !59
  %105 = load i32, ptr %55, align 8, !tbaa !34
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %89
  %108 = load ptr, ptr %68, align 8, !tbaa !25
  %109 = zext nneg i32 %105 to i64
  br label %110

110:                                              ; preds = %110, %107
  %111 = phi i64 [ 0, %107 ], [ %122, %110 ]
  %112 = getelementptr inbounds %struct.datapartition, ptr %108, i64 %111
  %113 = load ptr, ptr @input, align 8, !tbaa !6
  %114 = getelementptr inbounds i8, ptr %113, i64 2984
  %115 = load i32, ptr %114, align 8, !tbaa !31
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, ptr @writeSyntaxElement_UVLC, ptr @writeSyntaxElement_CABAC
  %118 = getelementptr inbounds i8, ptr %112, i64 104
  store ptr %117, ptr %118, align 8
  %119 = load ptr, ptr %112, align 8, !tbaa !26
  %120 = getelementptr inbounds i8, ptr %119, i64 4
  store i32 8, ptr %120, align 4, !tbaa !32
  store i32 0, ptr %119, align 8, !tbaa !35
  %121 = getelementptr inbounds i8, ptr %119, i64 8
  store i8 0, ptr %121, align 8, !tbaa !37
  %122 = add nuw nsw i64 %111, 1
  %123 = icmp eq i64 %122, %109
  br i1 %123, label %124, label %110

124:                                              ; preds = %110
  %125 = load ptr, ptr @img, align 8, !tbaa !6
  br label %126

126:                                              ; preds = %124, %89
  %127 = phi ptr [ %125, %124 ], [ %95, %89 ]
  %128 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %128, i64 184
  %130 = load i32, ptr %129, align 8, !tbaa !60
  %131 = add nsw i32 %130, 1
  %132 = getelementptr inbounds i8, ptr %127, i64 89408
  store i32 %131, ptr %132, align 8, !tbaa !62
  %133 = getelementptr inbounds i8, ptr %128, i64 188
  %134 = load i32, ptr %133, align 4, !tbaa !63
  %135 = add nsw i32 %134, 1
  %136 = getelementptr inbounds i8, ptr %127, i64 89412
  store i32 %135, ptr %136, align 4, !tbaa !64
  %137 = getelementptr inbounds i8, ptr %127, i64 24
  %138 = load i32, ptr %137, align 8, !tbaa !65
  %139 = getelementptr inbounds i8, ptr %127, i64 28
  %140 = load i32, ptr %139, align 4, !tbaa !66
  tail call void @init_lists(i32 noundef signext %138, i32 noundef signext %140) #14
  %141 = load i32, ptr @listXsize, align 4, !tbaa !44
  %142 = load ptr, ptr @img, align 8, !tbaa !6
  %143 = getelementptr inbounds i8, ptr %142, i64 89408
  store i32 %141, ptr %143, align 8, !tbaa !62
  %144 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !44
  %145 = getelementptr inbounds i8, ptr %142, i64 89412
  store i32 %144, ptr %145, align 4, !tbaa !64
  %146 = getelementptr inbounds i8, ptr %142, i64 24
  %147 = load i32, ptr %146, align 8, !tbaa !65
  switch i32 %147, label %148 [
    i32 0, label %150
    i32 3, label %150
  ]

148:                                              ; preds = %126
  %149 = load ptr, ptr @input, align 8, !tbaa !6
  br label %162

150:                                              ; preds = %126, %126
  %151 = load ptr, ptr @input, align 8, !tbaa !6
  %152 = getelementptr inbounds i8, ptr %151, i64 40
  %153 = load i32, ptr %152, align 8, !tbaa !67
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds i8, ptr %142, i64 28
  %157 = load i32, ptr %156, align 4, !tbaa !66
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = shl i32 %153, %159
  %161 = tail call i32 @llvm.smin.i32(i32 %141, i32 %160)
  store i32 %161, ptr %143, align 8, !tbaa !62
  store i32 %161, ptr @listXsize, align 4, !tbaa !44
  br label %162

162:                                              ; preds = %155, %150, %148
  %163 = phi ptr [ %149, %148 ], [ %151, %150 ], [ %151, %155 ]
  %164 = phi i32 [ %141, %148 ], [ %141, %150 ], [ %161, %155 ]
  %165 = icmp eq i32 %147, 1
  br i1 %165, label %166, label %188

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %163, i64 44
  %168 = load i32, ptr %167, align 4, !tbaa !68
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds i8, ptr %142, i64 28
  %172 = load i32, ptr %171, align 4, !tbaa !66
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = shl i32 %168, %174
  %176 = tail call i32 @llvm.smin.i32(i32 %164, i32 %175)
  store i32 %176, ptr %143, align 8, !tbaa !62
  store i32 %176, ptr @listXsize, align 4, !tbaa !44
  br label %177

177:                                              ; preds = %170, %166
  %178 = getelementptr inbounds i8, ptr %163, i64 48
  %179 = load i32, ptr %178, align 8, !tbaa !69
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %142, i64 28
  %183 = load i32, ptr %182, align 4, !tbaa !66
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = shl i32 %179, %185
  %187 = tail call i32 @llvm.smin.i32(i32 %144, i32 %186)
  store i32 %187, ptr %145, align 4, !tbaa !64
  store i32 %187, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !44
  br label %188

188:                                              ; preds = %181, %177, %162
  %189 = getelementptr inbounds i8, ptr %142, i64 90316
  %190 = load i32, ptr %189, align 4, !tbaa !70
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %210, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, ptr %163, i64 1944
  %194 = load i32, ptr %193, align 8, !tbaa !71
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds i8, ptr %163, i64 2980
  %198 = load i32, ptr %197, align 4, !tbaa !72
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %196
  %201 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !73
  %202 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %203 = getelementptr inbounds i8, ptr %202, i64 1132
  %204 = load i32, ptr %203, align 4, !tbaa !75
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = getelementptr inbounds i8, ptr %142, i64 90284
  %208 = load i32, ptr %207, align 4, !tbaa !76
  tail call void @poc_based_ref_management(i32 noundef signext %208) #14
  %209 = load ptr, ptr @input, align 8, !tbaa !6
  br label %210

210:                                              ; preds = %206, %200, %196, %192, %188
  %211 = phi ptr [ %209, %206 ], [ %163, %200 ], [ %163, %196 ], [ %163, %192 ], [ %163, %188 ]
  %212 = getelementptr inbounds i8, ptr %211, i64 1232
  %213 = load i32, ptr %212, align 8, !tbaa !77
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load ptr, ptr @img, align 8, !tbaa !6
  br label %270

217:                                              ; preds = %210
  %218 = load i32, ptr @listXsize, align 4, !tbaa !44
  %219 = icmp sgt i32 %218, 0
  %220 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %219, label %221, label %244

221:                                              ; preds = %217
  %222 = load ptr, ptr @listX, align 8, !tbaa !6
  %223 = getelementptr inbounds i8, ptr %220, i64 90588
  %224 = load i32, ptr %223, align 4, !tbaa !78
  %225 = getelementptr inbounds i8, ptr %220, i64 90280
  %226 = zext nneg i32 %218 to i64
  br label %227

227:                                              ; preds = %241, %221
  %228 = phi i64 [ 0, %221 ], [ %242, %241 ]
  %229 = getelementptr inbounds ptr, ptr %222, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  %231 = getelementptr inbounds i8, ptr %230, i64 4
  %232 = load i32, ptr %231, align 4, !tbaa !79
  %233 = icmp slt i32 %232, %224
  br i1 %233, label %234, label %241

234:                                              ; preds = %227
  %235 = load i32, ptr %225, align 8, !tbaa !81
  %236 = icmp sgt i32 %235, %224
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = trunc nuw nsw i64 %228 to i32
  %239 = tail call i32 @llvm.umax.i32(i32 %238, i32 1)
  %240 = getelementptr inbounds i8, ptr %220, i64 89408
  store i32 %239, ptr %240, align 8, !tbaa !62
  store i32 %239, ptr @listXsize, align 4, !tbaa !44
  br label %244

241:                                              ; preds = %234, %227
  %242 = add nuw nsw i64 %228, 1
  %243 = icmp eq i64 %242, %226
  br i1 %243, label %244, label %227

244:                                              ; preds = %241, %237, %217
  %245 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !44
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %244
  %248 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %249 = getelementptr inbounds i8, ptr %220, i64 90588
  %250 = load i32, ptr %249, align 4, !tbaa !78
  %251 = getelementptr inbounds i8, ptr %220, i64 90280
  %252 = zext nneg i32 %245 to i64
  br label %253

253:                                              ; preds = %267, %247
  %254 = phi i64 [ 0, %247 ], [ %268, %267 ]
  %255 = getelementptr inbounds ptr, ptr %248, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  %257 = getelementptr inbounds i8, ptr %256, i64 4
  %258 = load i32, ptr %257, align 4, !tbaa !79
  %259 = icmp slt i32 %258, %250
  br i1 %259, label %260, label %267

260:                                              ; preds = %253
  %261 = load i32, ptr %251, align 8, !tbaa !81
  %262 = icmp sgt i32 %261, %250
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = trunc nuw nsw i64 %254 to i32
  %265 = tail call i32 @llvm.umax.i32(i32 %264, i32 1)
  %266 = getelementptr inbounds i8, ptr %220, i64 89412
  store i32 %265, ptr %266, align 4, !tbaa !64
  store i32 %265, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !44
  br label %270

267:                                              ; preds = %260, %253
  %268 = add nuw nsw i64 %254, 1
  %269 = icmp eq i64 %268, %252
  br i1 %269, label %270, label %253

270:                                              ; preds = %267, %263, %244, %215
  %271 = phi ptr [ %216, %215 ], [ %220, %244 ], [ %220, %263 ], [ %220, %267 ]
  %272 = getelementptr inbounds i8, ptr %271, i64 31568
  %273 = load ptr, ptr %272, align 8, !tbaa !10
  %274 = getelementptr inbounds i8, ptr %273, i64 56
  store i32 0, ptr %274, align 8, !tbaa !16
  %275 = getelementptr inbounds i8, ptr %273, i64 88
  store i32 0, ptr %275, align 8, !tbaa !18
  %276 = getelementptr inbounds i8, ptr %271, i64 24
  %277 = load i32, ptr %276, align 8, !tbaa !65
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %378

279:                                              ; preds = %270
  %280 = getelementptr inbounds i8, ptr %211, i64 2976
  %281 = load i32, ptr %280, align 8, !tbaa !82
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %378, label %283

283:                                              ; preds = %279
  tail call void @alloc_ref_pic_list_reordering_buffer(ptr noundef nonnull %35) #14
  %284 = load ptr, ptr @img, align 8, !tbaa !6
  %285 = getelementptr inbounds i8, ptr %284, i64 24
  %286 = load i32, ptr %285, align 8, !tbaa !65
  switch i32 %286, label %287 [
    i32 2, label %335
    i32 4, label %335
  ]

287:                                              ; preds = %283
  %288 = getelementptr inbounds i8, ptr %284, i64 89408
  %289 = load i32, ptr %288, align 8, !tbaa !62
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %309, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds i8, ptr %35, i64 64
  %293 = load ptr, ptr %292, align 8, !tbaa !83
  %294 = getelementptr inbounds i8, ptr %35, i64 72
  %295 = load ptr, ptr %294, align 8, !tbaa !84
  %296 = getelementptr inbounds i8, ptr %35, i64 80
  %297 = load ptr, ptr %296, align 8, !tbaa !85
  br label %298

298:                                              ; preds = %298, %291
  %299 = phi i64 [ 0, %291 ], [ %303, %298 ]
  %300 = getelementptr inbounds i32, ptr %293, i64 %299
  store i32 3, ptr %300, align 4, !tbaa !44
  %301 = getelementptr inbounds i32, ptr %295, i64 %299
  store i32 0, ptr %301, align 4, !tbaa !44
  %302 = getelementptr inbounds i32, ptr %297, i64 %299
  store i32 0, ptr %302, align 4, !tbaa !44
  %303 = add nuw nsw i64 %299, 1
  %304 = load i32, ptr %288, align 8, !tbaa !62
  %305 = sext i32 %304 to i64
  %306 = icmp slt i64 %299, %305
  br i1 %306, label %298, label %307

307:                                              ; preds = %298
  %308 = load i32, ptr %285, align 8, !tbaa !65
  br label %309

309:                                              ; preds = %307, %287
  %310 = phi i32 [ %304, %307 ], [ %289, %287 ]
  %311 = phi i32 [ %308, %307 ], [ %286, %287 ]
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %335

313:                                              ; preds = %309
  %314 = getelementptr inbounds i8, ptr %284, i64 89412
  %315 = load i32, ptr %314, align 4, !tbaa !64
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %340, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds i8, ptr %35, i64 96
  %319 = load ptr, ptr %318, align 8, !tbaa !86
  %320 = getelementptr inbounds i8, ptr %35, i64 104
  %321 = load ptr, ptr %320, align 8, !tbaa !87
  %322 = getelementptr inbounds i8, ptr %35, i64 112
  %323 = load ptr, ptr %322, align 8, !tbaa !88
  br label %324

324:                                              ; preds = %324, %317
  %325 = phi i64 [ 0, %317 ], [ %329, %324 ]
  %326 = getelementptr inbounds i32, ptr %319, i64 %325
  store i32 3, ptr %326, align 4, !tbaa !44
  %327 = getelementptr inbounds i32, ptr %321, i64 %325
  store i32 0, ptr %327, align 4, !tbaa !44
  %328 = getelementptr inbounds i32, ptr %323, i64 %325
  store i32 0, ptr %328, align 4, !tbaa !44
  %329 = add nuw nsw i64 %325, 1
  %330 = load i32, ptr %314, align 4, !tbaa !64
  %331 = sext i32 %330 to i64
  %332 = icmp slt i64 %325, %331
  br i1 %332, label %324, label %333

333:                                              ; preds = %324
  %334 = load i32, ptr %285, align 8, !tbaa !65
  br label %335

335:                                              ; preds = %333, %309, %283, %283
  %336 = phi i32 [ %286, %283 ], [ %286, %283 ], [ %311, %309 ], [ %334, %333 ]
  switch i32 %336, label %337 [
    i32 2, label %378
    i32 4, label %378
  ]

337:                                              ; preds = %335
  %338 = getelementptr inbounds i8, ptr %284, i64 89408
  %339 = load i32, ptr %338, align 8, !tbaa !62
  br label %340

340:                                              ; preds = %337, %313
  %341 = phi i32 [ %339, %337 ], [ %310, %313 ]
  %342 = load ptr, ptr @listX, align 8, !tbaa !6
  %343 = getelementptr inbounds i8, ptr %35, i64 64
  %344 = load ptr, ptr %343, align 8, !tbaa !83
  %345 = getelementptr inbounds i8, ptr %35, i64 72
  %346 = load ptr, ptr %345, align 8, !tbaa !84
  %347 = getelementptr inbounds i8, ptr %35, i64 80
  tail call void @poc_ref_pic_reorder(ptr noundef %342, i32 noundef signext %341, ptr noundef %344, ptr noundef %346, ptr poison, i32 signext poison, i32 noundef signext 0)
  %348 = load ptr, ptr @listX, align 8, !tbaa !6
  %349 = load ptr, ptr @img, align 8, !tbaa !6
  %350 = getelementptr inbounds i8, ptr %349, i64 89408
  %351 = load i32, ptr %350, align 8, !tbaa !62
  %352 = add nsw i32 %351, -1
  %353 = load ptr, ptr %343, align 8, !tbaa !83
  %354 = load ptr, ptr %345, align 8, !tbaa !84
  %355 = load ptr, ptr %347, align 8, !tbaa !85
  tail call void @reorder_ref_pic_list(ptr noundef %348, ptr noundef nonnull @listXsize, i32 noundef signext %352, ptr noundef %353, ptr noundef %354, ptr noundef %355) #14
  %356 = load ptr, ptr @img, align 8, !tbaa !6
  %357 = getelementptr inbounds i8, ptr %356, i64 24
  %358 = load i32, ptr %357, align 8, !tbaa !65
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %360, label %378

360:                                              ; preds = %340
  %361 = getelementptr inbounds i8, ptr %356, i64 89412
  %362 = load i32, ptr %361, align 4, !tbaa !64
  %363 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %364 = getelementptr inbounds i8, ptr %35, i64 96
  %365 = load ptr, ptr %364, align 8, !tbaa !86
  %366 = getelementptr inbounds i8, ptr %35, i64 104
  %367 = load ptr, ptr %366, align 8, !tbaa !87
  %368 = getelementptr inbounds i8, ptr %35, i64 112
  tail call void @poc_ref_pic_reorder(ptr noundef %363, i32 noundef signext %362, ptr noundef %365, ptr noundef %367, ptr poison, i32 signext poison, i32 noundef signext 1)
  %369 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %370 = load ptr, ptr @img, align 8, !tbaa !6
  %371 = getelementptr inbounds i8, ptr %370, i64 89412
  %372 = load i32, ptr %371, align 4, !tbaa !64
  %373 = add nsw i32 %372, -1
  %374 = load ptr, ptr %364, align 8, !tbaa !86
  %375 = load ptr, ptr %366, align 8, !tbaa !87
  %376 = load ptr, ptr %368, align 8, !tbaa !88
  tail call void @reorder_ref_pic_list(ptr noundef %369, ptr noundef nonnull getelementptr inbounds (i8, ptr @listXsize, i64 4), i32 noundef signext %373, ptr noundef %374, ptr noundef %375, ptr noundef %376) #14
  %377 = load ptr, ptr @img, align 8, !tbaa !6
  br label %378

378:                                              ; preds = %360, %340, %335, %335, %279, %270
  %379 = phi ptr [ %377, %360 ], [ %356, %340 ], [ %284, %335 ], [ %284, %335 ], [ %271, %279 ], [ %271, %270 ]
  %380 = getelementptr inbounds i8, ptr %379, i64 28
  %381 = load i32, ptr %380, align 4, !tbaa !66
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %378
  tail call void @init_mbaff_lists() #14
  %384 = load ptr, ptr @img, align 8, !tbaa !6
  br label %385

385:                                              ; preds = %383, %378
  %386 = phi ptr [ %384, %383 ], [ %379, %378 ]
  %387 = getelementptr inbounds i8, ptr %386, i64 24
  %388 = load i32, ptr %387, align 8, !tbaa !65
  %389 = icmp eq i32 %388, 2
  br i1 %389, label %419, label %390

390:                                              ; preds = %385
  %391 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %392 = getelementptr inbounds i8, ptr %391, i64 192
  %393 = load i32, ptr %392, align 8, !tbaa !89
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %401, label %395

395:                                              ; preds = %390
  %396 = getelementptr inbounds i8, ptr %391, i64 196
  %397 = load i32, ptr %396, align 4, !tbaa !90
  %398 = icmp ne i32 %397, 0
  %399 = icmp eq i32 %388, 1
  %400 = and i1 %399, %398
  br i1 %400, label %418, label %419

401:                                              ; preds = %390
  switch i32 %388, label %418 [
    i32 0, label %402
    i32 3, label %402
  ]

402:                                              ; preds = %401, %401
  %403 = load ptr, ptr @input, align 8, !tbaa !6
  %404 = getelementptr inbounds i8, ptr %403, i64 64
  %405 = load i32, ptr %404, align 8, !tbaa !91
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %417, label %407

407:                                              ; preds = %402
  %408 = getelementptr inbounds i8, ptr %403, i64 1916
  %409 = load i32, ptr %408, align 4, !tbaa !92
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %407
  %412 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %413 = load ptr, ptr @enc_frame_picture2, align 8, !tbaa !6
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  tail call void @estimate_weighting_factor_P_slice(i32 noundef signext 0) #14
  br label %419

416:                                              ; preds = %411
  tail call void @estimate_weighting_factor_P_slice(i32 noundef signext 1) #14
  br label %419

417:                                              ; preds = %407, %402
  tail call void @estimate_weighting_factor_P_slice(i32 noundef signext 0) #14
  br label %419

418:                                              ; preds = %401, %395
  tail call void @estimate_weighting_factor_B_slice() #14
  br label %419

419:                                              ; preds = %418, %417, %416, %415, %395, %385
  %420 = load i32, ptr @listXsize, align 4, !tbaa !44
  %421 = icmp sgt i32 %420, 0
  br i1 %421, label %422, label %430

422:                                              ; preds = %419
  %423 = load ptr, ptr @listX, align 8, !tbaa !6
  %424 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %425 = getelementptr inbounds i8, ptr %424, i64 24
  %426 = getelementptr inbounds i8, ptr %424, i64 1608
  %427 = getelementptr inbounds i8, ptr %424, i64 3192
  %428 = getelementptr inbounds i8, ptr %424, i64 4776
  %429 = zext nneg i32 %420 to i64
  br label %441

430:                                              ; preds = %441, %419
  %431 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !44
  %432 = icmp sgt i32 %431, 0
  br i1 %432, label %433, label %503

433:                                              ; preds = %430
  %434 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %435 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %436 = getelementptr inbounds i8, ptr %435, i64 288
  %437 = getelementptr inbounds i8, ptr %435, i64 1872
  %438 = getelementptr inbounds i8, ptr %435, i64 3456
  %439 = getelementptr inbounds i8, ptr %435, i64 5040
  %440 = zext nneg i32 %431 to i64
  br label %472

441:                                              ; preds = %441, %422
  %442 = phi i64 [ 0, %422 ], [ %470, %441 ]
  %443 = getelementptr inbounds ptr, ptr %423, i64 %442
  %444 = load ptr, ptr %443, align 8, !tbaa !6
  %445 = getelementptr inbounds i8, ptr %444, i64 4
  %446 = load i32, ptr %445, align 4, !tbaa !79
  %447 = shl nsw i32 %446, 1
  %448 = load i32, ptr %444, align 8, !tbaa !93
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i32
  %451 = or disjoint i32 %447, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [33 x i64], ptr %425, i64 0, i64 %442
  store i64 %452, ptr %453, align 8, !tbaa !94
  %454 = getelementptr inbounds i8, ptr %444, i64 16
  %455 = load i32, ptr %454, align 8, !tbaa !96
  %456 = shl nsw i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [33 x i64], ptr %426, i64 0, i64 %442
  store i64 %457, ptr %458, align 8, !tbaa !94
  %459 = getelementptr inbounds i8, ptr %444, i64 8
  %460 = load i32, ptr %459, align 8, !tbaa !97
  %461 = shl nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [33 x i64], ptr %427, i64 0, i64 %442
  store i64 %462, ptr %463, align 8, !tbaa !94
  %464 = getelementptr inbounds i8, ptr %444, i64 12
  %465 = load i32, ptr %464, align 4, !tbaa !98
  %466 = shl nsw i32 %465, 1
  %467 = or disjoint i32 %466, 1
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [33 x i64], ptr %428, i64 0, i64 %442
  store i64 %468, ptr %469, align 8, !tbaa !94
  %470 = add nuw nsw i64 %442, 1
  %471 = icmp eq i64 %470, %429
  br i1 %471, label %430, label %441

472:                                              ; preds = %472, %433
  %473 = phi i64 [ 0, %433 ], [ %501, %472 ]
  %474 = getelementptr inbounds ptr, ptr %434, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !6
  %476 = getelementptr inbounds i8, ptr %475, i64 4
  %477 = load i32, ptr %476, align 4, !tbaa !79
  %478 = shl nsw i32 %477, 1
  %479 = load i32, ptr %475, align 8, !tbaa !93
  %480 = icmp eq i32 %479, 2
  %481 = zext i1 %480 to i32
  %482 = or disjoint i32 %478, %481
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [33 x i64], ptr %436, i64 0, i64 %473
  store i64 %483, ptr %484, align 8, !tbaa !94
  %485 = getelementptr inbounds i8, ptr %475, i64 16
  %486 = load i32, ptr %485, align 8, !tbaa !96
  %487 = shl nsw i32 %486, 1
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [33 x i64], ptr %437, i64 0, i64 %473
  store i64 %488, ptr %489, align 8, !tbaa !94
  %490 = getelementptr inbounds i8, ptr %475, i64 8
  %491 = load i32, ptr %490, align 8, !tbaa !97
  %492 = shl nsw i32 %491, 1
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [33 x i64], ptr %438, i64 0, i64 %473
  store i64 %493, ptr %494, align 8, !tbaa !94
  %495 = getelementptr inbounds i8, ptr %475, i64 12
  %496 = load i32, ptr %495, align 4, !tbaa !98
  %497 = shl nsw i32 %496, 1
  %498 = or disjoint i32 %497, 1
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [33 x i64], ptr %439, i64 0, i64 %473
  store i64 %499, ptr %500, align 8, !tbaa !94
  %501 = add nuw nsw i64 %473, 1
  %502 = icmp eq i64 %501, %440
  br i1 %502, label %503, label %472

503:                                              ; preds = %472, %430
  %504 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %505 = getelementptr inbounds i8, ptr %504, i64 1148
  %506 = load i32, ptr %505, align 4, !tbaa !99
  %507 = icmp eq i32 %506, 0
  %508 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %507, label %509, label %562

509:                                              ; preds = %503
  %510 = getelementptr inbounds i8, ptr %508, i64 28
  %511 = load i32, ptr %510, align 4, !tbaa !66
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %562

513:                                              ; preds = %509
  %514 = load ptr, ptr @enc_picture, align 8
  %515 = getelementptr inbounds i8, ptr %514, i64 24
  %516 = getelementptr inbounds i8, ptr %514, i64 1608
  %517 = getelementptr inbounds i8, ptr %514, i64 3192
  %518 = getelementptr inbounds i8, ptr %514, i64 4776
  br label %519

519:                                              ; preds = %559, %513
  %520 = phi i64 [ 2, %513 ], [ %560, %559 ]
  %521 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %520
  %522 = load i32, ptr %521, align 4, !tbaa !44
  %523 = icmp sgt i32 %522, 0
  br i1 %523, label %524, label %559

524:                                              ; preds = %519
  %525 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %520
  %526 = load ptr, ptr %525, align 8, !tbaa !6
  %527 = zext nneg i32 %522 to i64
  br label %528

528:                                              ; preds = %528, %524
  %529 = phi i64 [ 0, %524 ], [ %557, %528 ]
  %530 = getelementptr inbounds ptr, ptr %526, i64 %529
  %531 = load ptr, ptr %530, align 8, !tbaa !6
  %532 = getelementptr inbounds i8, ptr %531, i64 4
  %533 = load i32, ptr %532, align 4, !tbaa !79
  %534 = shl nsw i32 %533, 1
  %535 = load i32, ptr %531, align 8, !tbaa !93
  %536 = icmp eq i32 %535, 2
  %537 = zext i1 %536 to i32
  %538 = or disjoint i32 %534, %537
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds [6 x [33 x i64]], ptr %515, i64 0, i64 %520, i64 %529
  store i64 %539, ptr %540, align 8, !tbaa !94
  %541 = getelementptr inbounds i8, ptr %531, i64 16
  %542 = load i32, ptr %541, align 8, !tbaa !96
  %543 = shl nsw i32 %542, 1
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [6 x [33 x i64]], ptr %516, i64 0, i64 %520, i64 %529
  store i64 %544, ptr %545, align 8, !tbaa !94
  %546 = getelementptr inbounds i8, ptr %531, i64 8
  %547 = load i32, ptr %546, align 8, !tbaa !97
  %548 = shl nsw i32 %547, 1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [6 x [33 x i64]], ptr %517, i64 0, i64 %520, i64 %529
  store i64 %549, ptr %550, align 8, !tbaa !94
  %551 = getelementptr inbounds i8, ptr %531, i64 12
  %552 = load i32, ptr %551, align 4, !tbaa !98
  %553 = shl nsw i32 %552, 1
  %554 = or disjoint i32 %553, 1
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [6 x [33 x i64]], ptr %518, i64 0, i64 %520, i64 %529
  store i64 %555, ptr %556, align 8, !tbaa !94
  %557 = add nuw nsw i64 %529, 1
  %558 = icmp eq i64 %557, %527
  br i1 %558, label %559, label %528

559:                                              ; preds = %528, %519
  %560 = add nuw nsw i64 %520, 1
  %561 = icmp eq i64 %560, 6
  br i1 %561, label %562, label %519

562:                                              ; preds = %559, %509, %503
  %563 = getelementptr inbounds i8, ptr %508, i64 24
  %564 = load i32, ptr %563, align 8, !tbaa !65
  %565 = icmp eq i32 %564, 1
  br i1 %565, label %566, label %571

566:                                              ; preds = %562
  %567 = load ptr, ptr @Co_located, align 8, !tbaa !6
  tail call void @compute_colocated(ptr noundef %567, ptr noundef nonnull @listX) #14
  %568 = load ptr, ptr @img, align 8, !tbaa !6
  %569 = getelementptr inbounds i8, ptr %568, i64 24
  %570 = load i32, ptr %569, align 8, !tbaa !65
  br label %571

571:                                              ; preds = %566, %562
  %572 = phi ptr [ %568, %566 ], [ %508, %562 ]
  %573 = phi i32 [ %570, %566 ], [ %564, %562 ]
  %574 = icmp eq i32 %573, 2
  br i1 %574, label %583, label %575

575:                                              ; preds = %571
  %576 = load ptr, ptr @input, align 8, !tbaa !6
  %577 = getelementptr inbounds i8, ptr %576, i64 3964
  %578 = load i32, ptr %577, align 4, !tbaa !100
  %579 = icmp eq i32 %578, 3
  br i1 %579, label %580, label %583

580:                                              ; preds = %575
  %581 = load ptr, ptr @EPZSCo_located, align 8, !tbaa !6
  tail call void @EPZSSliceInit(ptr noundef %581, ptr noundef nonnull @listX) #14
  %582 = load ptr, ptr @img, align 8, !tbaa !6
  br label %583

583:                                              ; preds = %571, %575, %580
  %584 = phi ptr [ %572, %571 ], [ %572, %575 ], [ %582, %580 ]
  %585 = getelementptr inbounds i8, ptr %584, i64 31568
  %586 = load ptr, ptr %585, align 8, !tbaa !10
  %587 = getelementptr inbounds i8, ptr %586, i64 24
  %588 = load ptr, ptr %587, align 8, !tbaa !25
  %589 = load ptr, ptr %588, align 8, !tbaa !26
  %590 = load i32, ptr %589, align 8, !tbaa !35
  store i32 %590, ptr @Bytes_After_Header, align 4, !tbaa !44
  tail call void @SetLagrangianMultipliers()
  %591 = load ptr, ptr @input, align 8, !tbaa !6
  %592 = getelementptr inbounds i8, ptr %591, i64 2984
  %593 = load i32, ptr %592, align 8, !tbaa !31
  %594 = icmp eq i32 %593, 1
  br i1 %594, label %595, label %597

595:                                              ; preds = %583
  tail call void @SetCtxModelNumber() #14
  %596 = load ptr, ptr @input, align 8, !tbaa !6
  br label %597

597:                                              ; preds = %595, %583
  %598 = phi ptr [ %596, %595 ], [ %591, %583 ]
  %599 = getelementptr inbounds i8, ptr %598, i64 3136
  %600 = load i32, ptr %599, align 8, !tbaa !101
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %604

602:                                              ; preds = %597
  %603 = load ptr, ptr @img, align 8, !tbaa !6
  br label %615

604:                                              ; preds = %597
  %605 = getelementptr inbounds i8, ptr %598, i64 3580
  %606 = load i32, ptr %605, align 4, !tbaa !102
  %607 = icmp eq i32 %606, 0
  %608 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %607, label %615, label %609

609:                                              ; preds = %604
  %610 = getelementptr inbounds i8, ptr %608, i64 24
  %611 = load i32, ptr %610, align 8, !tbaa !65
  %612 = icmp eq i32 %611, 0
  %613 = icmp eq i32 %611, 3
  %614 = or i1 %612, %613
  br label %615

615:                                              ; preds = %602, %609, %604
  %616 = phi ptr [ %608, %604 ], [ %603, %602 ], [ %608, %609 ]
  %617 = phi i1 [ false, %604 ], [ false, %602 ], [ %614, %609 ]
  %618 = zext i1 %617 to i16
  %619 = getelementptr inbounds i8, ptr %616, i64 90584
  store i16 %618, ptr %619, align 8, !tbaa !103
  %620 = tail call signext i32 @start_slice()
  %621 = load ptr, ptr @img, align 8, !tbaa !6
  %622 = getelementptr inbounds i8, ptr %621, i64 90348
  %623 = load i32, ptr %622, align 4, !tbaa !104
  %624 = add nsw i32 %623, %620
  store i32 %624, ptr %622, align 4, !tbaa !104
  %625 = getelementptr inbounds i8, ptr %621, i64 90444
  %626 = load i32, ptr %625, align 4, !tbaa !105
  %627 = getelementptr inbounds i8, ptr %621, i64 90432
  %628 = load i32, ptr %627, align 8, !tbaa !106
  %629 = icmp slt i32 %626, %628
  br i1 %629, label %630, label %634

630:                                              ; preds = %615
  %631 = getelementptr inbounds i8, ptr %621, i64 90356
  %632 = load i32, ptr %631, align 4, !tbaa !107
  %633 = add nsw i32 %632, %620
  store i32 %633, ptr %631, align 4, !tbaa !107
  br label %634

634:                                              ; preds = %630, %615
  %635 = load ptr, ptr @stats, align 8, !tbaa !6
  %636 = getelementptr inbounds i8, ptr %635, i64 24
  %637 = load i32, ptr %636, align 8, !tbaa !108
  %638 = add nsw i32 %637, %620
  store i32 %638, ptr %636, align 8, !tbaa !108
  %639 = getelementptr inbounds i8, ptr %635, i64 1376
  %640 = getelementptr inbounds i8, ptr %621, i64 24
  %641 = load i32, ptr %640, align 8, !tbaa !65
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [5 x i32], ptr %639, i64 0, i64 %642
  %644 = load i32, ptr %643, align 4, !tbaa !44
  %645 = add nsw i32 %644, %620
  store i32 %645, ptr %643, align 4, !tbaa !44
  %646 = load i32, ptr %4, align 4, !tbaa !44
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %865

648:                                              ; preds = %634, %856
  %649 = phi double [ %859, %856 ], [ 0x7FEFFFFFFFFFFFFF, %634 ]
  %650 = phi i32 [ %858, %856 ], [ %8, %634 ]
  %651 = phi i32 [ %857, %856 ], [ 0, %634 ]
  %652 = load ptr, ptr @img, align 8, !tbaa !6
  %653 = getelementptr inbounds i8, ptr %652, i64 90212
  %654 = load i32, ptr %653, align 4, !tbaa !109
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %672, label %656

656:                                              ; preds = %648
  %657 = load ptr, ptr @input, align 8, !tbaa !6
  %658 = getelementptr inbounds i8, ptr %657, i64 4264
  %659 = load i32, ptr %658, align 8, !tbaa !110
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %672, label %661

661:                                              ; preds = %656
  %662 = getelementptr inbounds i8, ptr %652, i64 12
  %663 = load i32, ptr %662, align 4, !tbaa !50
  %664 = srem i32 %663, %659
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %672

666:                                              ; preds = %661
  call void @CalculateOffsetParam() #14
  %667 = load ptr, ptr @input, align 8, !tbaa !6
  %668 = getelementptr inbounds i8, ptr %667, i64 3892
  %669 = load i32, ptr %668, align 4, !tbaa !111
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %672, label %671

671:                                              ; preds = %666
  call void @CalculateOffset8Param() #14
  br label %672

672:                                              ; preds = %666, %671, %661, %656, %648
  %673 = load ptr, ptr @img, align 8, !tbaa !6
  %674 = getelementptr inbounds i8, ptr %673, i64 90220
  %675 = load i32, ptr %674, align 4, !tbaa !112
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %695

677:                                              ; preds = %672
  store i32 0, ptr %5, align 4, !tbaa !44
  store ptr @rddata_top_frame_mb, ptr @rdopt, align 8, !tbaa !6
  call void @start_macroblock(i32 noundef signext %650, i32 noundef signext 0) #14
  call void @encode_one_macroblock() #14
  call void @write_one_macroblock(i32 noundef signext 1) #14
  call void @terminate_macroblock(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %678 = load i32, ptr %5, align 4, !tbaa !44
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %686

680:                                              ; preds = %677
  %681 = call signext i32 @FmoGetNextMBNr(i32 noundef signext %650) #14
  %682 = icmp eq i32 %681, -1
  br i1 %682, label %683, label %684

683:                                              ; preds = %680
  store i32 1, ptr %4, align 4, !tbaa !44
  br label %684

684:                                              ; preds = %683, %680
  %685 = add nsw i32 %651, 1
  call void @proceed2nextMacroblock() #14
  br label %856

686:                                              ; preds = %677
  %687 = load ptr, ptr @img, align 8, !tbaa !6
  %688 = getelementptr inbounds i8, ptr %687, i64 12
  %689 = load i32, ptr %688, align 4, !tbaa !50
  %690 = call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %689) #14
  %691 = load ptr, ptr @img, align 8, !tbaa !6
  %692 = getelementptr inbounds i8, ptr %691, i64 12
  store i32 %690, ptr %692, align 4, !tbaa !50
  %693 = icmp eq i32 %690, -1
  br i1 %693, label %694, label %856

694:                                              ; preds = %686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) @errortext, ptr noundef nonnull align 1 dereferenceable(84) @.str.1, i64 84, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #14
  br label %856

695:                                              ; preds = %672
  %696 = load ptr, ptr @input, align 8, !tbaa !6
  %697 = getelementptr inbounds i8, ptr %696, i64 3556
  %698 = load i32, ptr %697, align 4, !tbaa !113
  %699 = icmp eq i32 %698, 2
  br i1 %699, label %700, label %718

700:                                              ; preds = %695
  store i32 0, ptr %5, align 4, !tbaa !44
  %701 = getelementptr inbounds i8, ptr %673, i64 89416
  store i32 0, ptr %701, align 8, !tbaa !114
  %702 = getelementptr inbounds i8, ptr %673, i64 89420
  store i32 0, ptr %702, align 4, !tbaa !115
  %703 = getelementptr inbounds i8, ptr %673, i64 90448
  store i32 0, ptr %703, align 8, !tbaa !116
  %704 = getelementptr inbounds i8, ptr %673, i64 90452
  store i32 0, ptr %704, align 4, !tbaa !117
  call void @start_macroblock(i32 noundef signext %650, i32 noundef signext 0) #14
  store ptr @rddata_top_frame_mb, ptr @rdopt, align 8, !tbaa !6
  call void @encode_one_macroblock() #14
  %705 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %706 = load double, ptr %705, align 8, !tbaa !118
  %707 = load ptr, ptr @img, align 8, !tbaa !6
  %708 = getelementptr inbounds i8, ptr %707, i64 90452
  store i32 1, ptr %708, align 4, !tbaa !117
  %709 = getelementptr inbounds i8, ptr %707, i64 89416
  store i32 0, ptr %709, align 8, !tbaa !114
  %710 = add nsw i32 %650, 1
  call void @start_macroblock(i32 noundef signext %710, i32 noundef signext 0) #14
  store ptr @rddata_bot_frame_mb, ptr @rdopt, align 8, !tbaa !6
  call void @encode_one_macroblock() #14
  %711 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %712 = load double, ptr %711, align 8, !tbaa !118
  %713 = fadd double %706, %712
  %714 = load ptr, ptr @input, align 8, !tbaa !6
  %715 = getelementptr inbounds i8, ptr %714, i64 3556
  %716 = load i32, ptr %715, align 4, !tbaa !113
  %717 = load ptr, ptr @img, align 8, !tbaa !6
  br label %718

718:                                              ; preds = %700, %695
  %719 = phi ptr [ %717, %700 ], [ %673, %695 ]
  %720 = phi i32 [ %716, %700 ], [ %698, %695 ]
  %721 = phi ptr [ %714, %700 ], [ %696, %695 ]
  %722 = phi double [ %713, %700 ], [ %649, %695 ]
  %723 = add i32 %720, -1
  %724 = icmp ult i32 %723, 2
  br i1 %724, label %727, label %725

725:                                              ; preds = %718
  %726 = getelementptr inbounds i8, ptr %719, i64 90456
  store i32 0, ptr %726, align 8, !tbaa !120
  br label %758

727:                                              ; preds = %718
  %728 = getelementptr inbounds i8, ptr %719, i64 90452
  store i32 0, ptr %728, align 4, !tbaa !117
  %729 = getelementptr inbounds i8, ptr %719, i64 89416
  store i32 1, ptr %729, align 8, !tbaa !114
  %730 = getelementptr inbounds i8, ptr %719, i64 89420
  store i32 1, ptr %730, align 4, !tbaa !115
  %731 = getelementptr inbounds i8, ptr %719, i64 90192
  %732 = load i32, ptr %731, align 8, !tbaa !121
  %733 = shl i32 %732, 1
  store i32 %733, ptr %731, align 8, !tbaa !121
  %734 = getelementptr inbounds i8, ptr %721, i64 36
  %735 = load i32, ptr %734, align 4, !tbaa !122
  %736 = shl i32 %735, 1
  store i32 %736, ptr %734, align 4, !tbaa !122
  %737 = getelementptr inbounds i8, ptr %719, i64 89408
  %738 = load i32, ptr %737, align 8, !tbaa !62
  %739 = shl i32 %738, 1
  %740 = or disjoint i32 %739, 1
  store i32 %740, ptr %737, align 8, !tbaa !62
  call void @start_macroblock(i32 noundef signext %650, i32 noundef signext 1) #14
  store ptr @rddata_top_field_mb, ptr @rdopt, align 8, !tbaa !6
  call void @encode_one_macroblock() #14
  %741 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %742 = load double, ptr %741, align 8, !tbaa !118
  %743 = load ptr, ptr @img, align 8, !tbaa !6
  %744 = getelementptr inbounds i8, ptr %743, i64 90452
  store i32 1, ptr %744, align 4, !tbaa !117
  %745 = getelementptr inbounds i8, ptr %743, i64 89420
  store i32 0, ptr %745, align 4, !tbaa !115
  %746 = add nsw i32 %650, 1
  call void @start_macroblock(i32 noundef signext %746, i32 noundef signext 1) #14
  store ptr @rddata_bot_field_mb, ptr @rdopt, align 8, !tbaa !6
  call void @encode_one_macroblock() #14
  %747 = load ptr, ptr @rdopt, align 8, !tbaa !6
  %748 = load double, ptr %747, align 8, !tbaa !118
  %749 = fadd double %742, %748
  %750 = load ptr, ptr @img, align 8, !tbaa !6
  %751 = load ptr, ptr @input, align 8, !tbaa !6
  %752 = getelementptr inbounds i8, ptr %751, i64 3556
  %753 = load i32, ptr %752, align 4, !tbaa !113
  %754 = getelementptr inbounds i8, ptr %750, i64 90456
  store i32 0, ptr %754, align 8, !tbaa !120
  %755 = icmp eq i32 %753, 2
  %756 = fcmp olt double %722, %749
  %757 = select i1 %755, i1 %756, i1 false
  br i1 %757, label %761, label %758

758:                                              ; preds = %727, %725
  %759 = phi ptr [ %719, %725 ], [ %750, %727 ]
  %760 = getelementptr inbounds i8, ptr %759, i64 89416
  store i32 1, ptr %760, align 8, !tbaa !114
  store i32 1, ptr @MBPairIsField, align 4, !tbaa !44
  br label %773

761:                                              ; preds = %727
  %762 = getelementptr inbounds i8, ptr %750, i64 89416
  store i32 0, ptr %762, align 8, !tbaa !114
  %763 = getelementptr inbounds i8, ptr %750, i64 90192
  %764 = load i32, ptr %763, align 8, !tbaa !121
  %765 = ashr i32 %764, 1
  store i32 %765, ptr %763, align 8, !tbaa !121
  %766 = getelementptr inbounds i8, ptr %751, i64 36
  %767 = load i32, ptr %766, align 4, !tbaa !122
  %768 = ashr i32 %767, 1
  store i32 %768, ptr %766, align 4, !tbaa !122
  store i32 0, ptr @MBPairIsField, align 4, !tbaa !44
  %769 = getelementptr inbounds i8, ptr %750, i64 89408
  %770 = load i32, ptr %769, align 8, !tbaa !62
  %771 = add nsw i32 %770, -1
  %772 = ashr i32 %771, 1
  store i32 %772, ptr %769, align 8, !tbaa !62
  store i32 1, ptr %754, align 8, !tbaa !120
  br label %773

773:                                              ; preds = %761, %758
  %774 = phi ptr [ %750, %761 ], [ %759, %758 ]
  %775 = phi i32 [ 0, %761 ], [ 1, %758 ]
  %776 = getelementptr inbounds i8, ptr %774, i64 90448
  store i32 1, ptr %776, align 8, !tbaa !116
  %777 = getelementptr inbounds i8, ptr %774, i64 89420
  store i32 %775, ptr %777, align 4, !tbaa !115
  %778 = getelementptr inbounds i8, ptr %774, i64 90452
  store i32 0, ptr %778, align 4, !tbaa !117
  call void @start_macroblock(i32 noundef signext %650, i32 noundef signext %775) #14
  %779 = load ptr, ptr @img, align 8, !tbaa !6
  %780 = getelementptr inbounds i8, ptr %779, i64 89416
  %781 = load i32, ptr %780, align 8, !tbaa !114
  %782 = icmp eq i32 %781, 0
  %783 = select i1 %782, ptr @rddata_top_frame_mb, ptr @rddata_top_field_mb
  store ptr %783, ptr @rdopt, align 8, !tbaa !6
  call void @copy_rdopt_data(i32 noundef signext 0) #14
  call void @write_one_macroblock(i32 noundef signext 1) #14
  call void @terminate_macroblock(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %784 = load i32, ptr %5, align 4, !tbaa !44
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %822

786:                                              ; preds = %773
  %787 = call signext i32 @FmoGetNextMBNr(i32 noundef signext %650) #14
  %788 = icmp eq i32 %787, -1
  br i1 %788, label %789, label %790

789:                                              ; preds = %786
  store i32 1, ptr %4, align 4, !tbaa !44
  br label %790

790:                                              ; preds = %789, %786
  %791 = add nsw i32 %651, 1
  call void @proceed2nextMacroblock() #14
  %792 = load ptr, ptr @img, align 8, !tbaa !6
  %793 = getelementptr inbounds i8, ptr %792, i64 90452
  store i32 1, ptr %793, align 4, !tbaa !117
  %794 = getelementptr inbounds i8, ptr %792, i64 89420
  store i32 0, ptr %794, align 4, !tbaa !115
  %795 = getelementptr inbounds i8, ptr %792, i64 89416
  %796 = load i32, ptr %795, align 8, !tbaa !114
  call void @start_macroblock(i32 noundef signext %787, i32 noundef signext %796) #14
  %797 = load ptr, ptr @img, align 8, !tbaa !6
  %798 = getelementptr inbounds i8, ptr %797, i64 89416
  %799 = load i32, ptr %798, align 8, !tbaa !114
  %800 = icmp eq i32 %799, 0
  %801 = select i1 %800, ptr @rddata_bot_frame_mb, ptr @rddata_bot_field_mb
  store ptr %801, ptr @rdopt, align 8, !tbaa !6
  call void @copy_rdopt_data(i32 noundef signext 1) #14
  call void @write_one_macroblock(i32 noundef signext 0) #14
  call void @terminate_macroblock(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %802 = load i32, ptr %5, align 4, !tbaa !44
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %810

804:                                              ; preds = %790
  %805 = call signext i32 @FmoGetNextMBNr(i32 noundef signext %787) #14
  %806 = icmp eq i32 %805, -1
  br i1 %806, label %807, label %808

807:                                              ; preds = %804
  store i32 1, ptr %4, align 4, !tbaa !44
  br label %808

808:                                              ; preds = %807, %804
  %809 = add nsw i32 %651, 2
  call void @proceed2nextMacroblock() #14
  br label %831

810:                                              ; preds = %790
  %811 = load ptr, ptr @img, align 8, !tbaa !6
  %812 = getelementptr inbounds i8, ptr %811, i64 12
  %813 = load i32, ptr %812, align 4, !tbaa !50
  %814 = call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %813) #14
  %815 = load ptr, ptr @img, align 8, !tbaa !6
  %816 = getelementptr inbounds i8, ptr %815, i64 12
  store i32 %814, ptr %816, align 4, !tbaa !50
  %817 = call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %814) #14
  %818 = load ptr, ptr @img, align 8, !tbaa !6
  %819 = getelementptr inbounds i8, ptr %818, i64 12
  store i32 %817, ptr %819, align 4, !tbaa !50
  %820 = icmp eq i32 %817, -1
  br i1 %820, label %821, label %831

821:                                              ; preds = %810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) @errortext, ptr noundef nonnull align 1 dereferenceable(84) @.str.1, i64 84, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #14
  br label %831

822:                                              ; preds = %773
  %823 = load ptr, ptr @img, align 8, !tbaa !6
  %824 = getelementptr inbounds i8, ptr %823, i64 12
  %825 = load i32, ptr %824, align 4, !tbaa !50
  %826 = call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %825) #14
  %827 = load ptr, ptr @img, align 8, !tbaa !6
  %828 = getelementptr inbounds i8, ptr %827, i64 12
  store i32 %826, ptr %828, align 4, !tbaa !50
  %829 = icmp eq i32 %826, -1
  br i1 %829, label %830, label %831

830:                                              ; preds = %822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) @errortext, ptr noundef nonnull align 1 dereferenceable(84) @.str.1, i64 84, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #14
  br label %831

831:                                              ; preds = %822, %830, %808, %821, %810
  %832 = phi i32 [ %809, %808 ], [ %791, %821 ], [ %791, %810 ], [ %651, %830 ], [ %651, %822 ]
  %833 = phi i32 [ %805, %808 ], [ %787, %821 ], [ %787, %810 ], [ %650, %830 ], [ %650, %822 ]
  %834 = load i32, ptr @MBPairIsField, align 4, !tbaa !44
  %835 = icmp eq i32 %834, 0
  %836 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %835, label %849, label %837

837:                                              ; preds = %831
  %838 = getelementptr inbounds i8, ptr %836, i64 90192
  %839 = load i32, ptr %838, align 8, !tbaa !121
  %840 = ashr i32 %839, 1
  store i32 %840, ptr %838, align 8, !tbaa !121
  %841 = load ptr, ptr @input, align 8, !tbaa !6
  %842 = getelementptr inbounds i8, ptr %841, i64 36
  %843 = load i32, ptr %842, align 4, !tbaa !122
  %844 = ashr i32 %843, 1
  store i32 %844, ptr %842, align 4, !tbaa !122
  %845 = getelementptr inbounds i8, ptr %836, i64 89408
  %846 = load i32, ptr %845, align 8, !tbaa !62
  %847 = add nsw i32 %846, -1
  %848 = ashr i32 %847, 1
  store i32 %848, ptr %845, align 8, !tbaa !62
  br label %849

849:                                              ; preds = %837, %831
  %850 = getelementptr inbounds i8, ptr %836, i64 89420
  store i32 0, ptr %850, align 4, !tbaa !115
  %851 = getelementptr inbounds i8, ptr %836, i64 89416
  store i32 0, ptr %851, align 8, !tbaa !114
  %852 = call signext i32 @FmoMB2SliceGroup(i32 noundef signext %833) #14
  %853 = call signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext %852) #14
  %854 = icmp eq i32 %833, %853
  br i1 %854, label %855, label %856

855:                                              ; preds = %849
  store i32 1, ptr %4, align 4, !tbaa !44
  br label %862

856:                                              ; preds = %849, %684, %694, %686
  %857 = phi i32 [ %651, %686 ], [ %651, %694 ], [ %685, %684 ], [ %832, %849 ]
  %858 = phi i32 [ %650, %686 ], [ %650, %694 ], [ %681, %684 ], [ %833, %849 ]
  %859 = phi double [ %649, %686 ], [ %649, %694 ], [ %649, %684 ], [ %722, %849 ]
  %860 = load i32, ptr %4, align 4, !tbaa !44
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %648, label %862

862:                                              ; preds = %856, %855
  %863 = phi i32 [ %832, %855 ], [ %857, %856 ]
  %864 = load ptr, ptr @img, align 8, !tbaa !6
  br label %865

865:                                              ; preds = %862, %634
  %866 = phi ptr [ %621, %634 ], [ %864, %862 ]
  %867 = phi i32 [ 0, %634 ], [ %863, %862 ]
  %868 = add nsw i32 %867, %2
  %869 = getelementptr inbounds i8, ptr %866, i64 90304
  %870 = load i32, ptr %869, align 8, !tbaa !46
  %871 = icmp sge i32 %868, %870
  %872 = zext i1 %871 to i32
  %873 = call signext i32 @terminate_slice(i32 noundef signext %872)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %867
}

declare dso_local signext i32 @FmoGetFirstMacroblockInSlice(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @SetCtxModelNumber() local_unnamed_addr #3

declare dso_local void @CalculateOffsetParam() local_unnamed_addr #3

declare dso_local void @CalculateOffset8Param() local_unnamed_addr #3

declare dso_local void @start_macroblock(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @encode_one_macroblock() local_unnamed_addr #3

declare dso_local void @write_one_macroblock(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @terminate_macroblock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @FmoGetNextMBNr(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @proceed2nextMacroblock() local_unnamed_addr #3

declare dso_local signext i32 @FmoGetPreviousMBNr(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @copy_rdopt_data(i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @FmoMB2SliceGroup(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @free_slice_list(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8, !tbaa !51
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %60

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  br label %6

6:                                                ; preds = %4, %55
  %7 = phi i32 [ %2, %4 ], [ %56, %55 ]
  %8 = phi i64 [ 0, %4 ], [ %57, %55 ]
  %9 = getelementptr inbounds [100 x ptr], ptr %5, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %10, i64 16
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %10, i64 24
  br label %18

18:                                               ; preds = %33, %16
  %19 = phi i64 [ 0, %16 ], [ %34, %33 ]
  %20 = load ptr, ptr %17, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.datapartition, ptr %20, i64 %19
  %22 = icmp eq ptr %20, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %21, align 8, !tbaa !26
  %25 = getelementptr inbounds i8, ptr %24, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %26) #14
  %29 = load ptr, ptr %21, align 8, !tbaa !26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28, %23
  %32 = phi ptr [ %29, %28 ], [ %24, %23 ]
  tail call void @free(ptr noundef nonnull %32) #14
  br label %33

33:                                               ; preds = %31, %28, %18
  %34 = add nuw nsw i64 %19, 1
  %35 = load i32, ptr %13, align 8, !tbaa !34
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %18, label %38

38:                                               ; preds = %33, %12
  %39 = getelementptr inbounds i8, ptr %10, i64 24
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @free(ptr noundef nonnull %40) #14
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr @input, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %44, i64 2984
  %46 = load i32, ptr %45, align 8, !tbaa !31
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %10, i64 32
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  tail call void @delete_contexts_MotionInfo(ptr noundef %50) #14
  %51 = getelementptr inbounds i8, ptr %10, i64 40
  %52 = load ptr, ptr %51, align 8, !tbaa !54
  tail call void @delete_contexts_TextureInfo(ptr noundef %52) #14
  br label %53

53:                                               ; preds = %48, %43
  tail call void @free(ptr noundef nonnull %10) #14
  %54 = load i32, ptr %0, align 8, !tbaa !51
  br label %55

55:                                               ; preds = %6, %53
  %56 = phi i32 [ %7, %6 ], [ %54, %53 ]
  store ptr null, ptr %9, align 8, !tbaa !6
  %57 = add nuw nsw i64 %8, 1
  %58 = sext i32 %56 to i64
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %6, label %60

60:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @modify_redundant_pic_cnt(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = load i32, ptr @rpc_bits_to_go, align 4, !tbaa !44
  %3 = add nsw i32 %2, -1
  %4 = shl nuw i32 1, %3
  %5 = load i32, ptr @rpc_bytes_to_go, align 4, !tbaa !44
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !123
  %9 = trunc i32 %4 to i8
  %10 = or i8 %8, %9
  store i8 %10, ptr %7, align 1, !tbaa !123
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @poc_ref_pic_reorder(ptr nocapture noundef readonly %0, i32 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture readnone %4, i32 signext %5, i32 noundef signext %6) local_unnamed_addr #6 {
  %8 = alloca [32 x i32], align 4
  %9 = alloca [32 x i32], align 4
  %10 = alloca [32 x i32], align 4
  %11 = alloca [32 x i32], align 4
  %12 = alloca [32 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #14
  %13 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !44
  %14 = add i32 %13, 4
  %15 = load ptr, ptr @img, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 28
  %17 = load i32, ptr %16, align 4, !tbaa !66
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds i8, ptr %15, i64 90284
  %20 = load i32, ptr %19, align 4, !tbaa !76
  %21 = shl i32 %20, 1
  %22 = or disjoint i32 %21, 1
  %23 = select i1 %18, i32 %20, i32 %22
  %24 = select i1 %18, i32 1, i32 2
  %25 = shl i32 %24, %14
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %7
  %28 = zext i32 %1 to i64
  br label %38

29:                                               ; preds = %38, %7
  %30 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !73
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !124
  %34 = load ptr, ptr @enc_picture, align 8
  %35 = getelementptr inbounds i8, ptr %34, i64 4
  %36 = icmp eq i32 %6, 0
  %37 = zext i32 %30 to i64
  br label %54

38:                                               ; preds = %27, %38
  %39 = phi i64 [ 0, %27 ], [ %45, %38 ]
  %40 = getelementptr inbounds ptr, ptr %0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %41, i64 6364
  %43 = load i32, ptr %42, align 4, !tbaa !125
  %44 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %39
  store i32 %43, ptr %44, align 4, !tbaa !44
  %45 = add nuw nsw i64 %39, 1
  %46 = icmp eq i64 %45, %28
  br i1 %46, label %29, label %38

47:                                               ; preds = %85
  %48 = add i32 %30, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %91, label %50

50:                                               ; preds = %29, %47
  %51 = phi i32 [ %48, %47 ], [ -1, %29 ]
  %52 = zext i32 %30 to i64
  %53 = zext i32 %51 to i64
  br label %94

54:                                               ; preds = %32, %85
  %55 = phi i64 [ 0, %32 ], [ %86, %85 ]
  %56 = getelementptr inbounds ptr, ptr %33, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %57, i64 40
  %59 = load ptr, ptr %58, align 8, !tbaa !126
  %60 = getelementptr inbounds i8, ptr %59, i64 6364
  %61 = load i32, ptr %60, align 4, !tbaa !125
  %62 = getelementptr inbounds [32 x i32], ptr %9, i64 0, i64 %55
  store i32 %61, ptr %62, align 4, !tbaa !44
  %63 = load i32, ptr %57, align 8, !tbaa !128
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %85

65:                                               ; preds = %54
  %66 = getelementptr inbounds i8, ptr %59, i64 6380
  %67 = load i32, ptr %66, align 4, !tbaa !129
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds i8, ptr %59, i64 6376
  %71 = load i32, ptr %70, align 8, !tbaa !130
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %59, i64 4
  %75 = load i32, ptr %74, align 4, !tbaa !79
  %76 = load i32, ptr %35, align 4, !tbaa !79
  %77 = sub nsw i32 %75, %76
  %78 = tail call i32 @llvm.abs.i32(i32 %77, i1 true)
  %79 = getelementptr inbounds [32 x i32], ptr %12, i64 0, i64 %55
  store i32 %78, ptr %79, align 4, !tbaa !44
  %80 = getelementptr inbounds [32 x i32], ptr %11, i64 0, i64 %55
  %81 = icmp sgt i32 %76, %75
  %82 = icmp slt i32 %76, %75
  %83 = select i1 %36, i1 %82, i1 %81
  %84 = select i1 %83, i32 1, i32 -1
  store i32 %84, ptr %80, align 4, !tbaa !44
  br label %85

85:                                               ; preds = %73, %54, %65, %69
  %86 = add nuw nsw i64 %55, 1
  %87 = icmp eq i64 %86, %37
  br i1 %87, label %47, label %54

88:                                               ; preds = %127, %94
  %89 = add nuw nsw i64 %96, 1
  %90 = icmp eq i64 %97, %53
  br i1 %90, label %91, label %94

91:                                               ; preds = %88, %47
  br i1 %26, label %212, label %92

92:                                               ; preds = %91
  %93 = zext i32 %1 to i64
  br label %131

94:                                               ; preds = %50, %88
  %95 = phi i64 [ 0, %50 ], [ %97, %88 ]
  %96 = phi i64 [ 1, %50 ], [ %89, %88 ]
  %97 = add nuw nsw i64 %95, 1
  %98 = icmp ult i64 %97, %52
  br i1 %98, label %99, label %88

99:                                               ; preds = %94
  %100 = getelementptr inbounds [32 x i32], ptr %12, i64 0, i64 %95
  %101 = getelementptr inbounds [32 x i32], ptr %11, i64 0, i64 %95
  %102 = getelementptr inbounds [32 x i32], ptr %9, i64 0, i64 %95
  br label %103

103:                                              ; preds = %99, %127
  %104 = phi i64 [ %96, %99 ], [ %128, %127 ]
  %105 = load i32, ptr %100, align 4, !tbaa !44
  %106 = getelementptr inbounds [32 x i32], ptr %12, i64 0, i64 %104
  %107 = load i32, ptr %106, align 4, !tbaa !44
  %108 = icmp sgt i32 %105, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, ptr %101, align 4, !tbaa !44
  %111 = getelementptr inbounds [32 x i32], ptr %11, i64 0, i64 %104
  %112 = load i32, ptr %111, align 4, !tbaa !44
  br label %120

113:                                              ; preds = %103
  %114 = icmp eq i32 %105, %107
  br i1 %114, label %115, label %127

115:                                              ; preds = %113
  %116 = getelementptr inbounds [32 x i32], ptr %11, i64 0, i64 %104
  %117 = load i32, ptr %116, align 4, !tbaa !44
  %118 = load i32, ptr %101, align 4, !tbaa !44
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %109, %115
  %121 = phi i32 [ %112, %109 ], [ %117, %115 ]
  %122 = phi i32 [ %110, %109 ], [ %118, %115 ]
  store i32 %107, ptr %100, align 4, !tbaa !44
  store i32 %105, ptr %106, align 4, !tbaa !44
  %123 = load i32, ptr %102, align 4, !tbaa !44
  %124 = getelementptr inbounds [32 x i32], ptr %9, i64 0, i64 %104
  %125 = load i32, ptr %124, align 4, !tbaa !44
  store i32 %125, ptr %102, align 4, !tbaa !44
  store i32 %123, ptr %124, align 4, !tbaa !44
  %126 = getelementptr inbounds [32 x i32], ptr %11, i64 0, i64 %104
  store i32 %121, ptr %101, align 4, !tbaa !44
  store i32 %122, ptr %126, align 4, !tbaa !44
  br label %127

127:                                              ; preds = %113, %115, %120
  %128 = add nuw nsw i64 %104, 1
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %30, %129
  br i1 %130, label %88, label %103

131:                                              ; preds = %92, %131
  %132 = phi i64 [ 0, %92 ], [ %140, %131 ]
  %133 = phi i32 [ 1, %92 ], [ %139, %131 ]
  %134 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %132
  %135 = load i32, ptr %134, align 4, !tbaa !44
  %136 = getelementptr inbounds [32 x i32], ptr %9, i64 0, i64 %132
  %137 = load i32, ptr %136, align 4, !tbaa !44
  %138 = icmp eq i32 %135, %137
  %139 = select i1 %138, i32 %133, i32 0
  %140 = add nuw nsw i64 %132, 1
  %141 = icmp eq i64 %140, %93
  br i1 %141, label %142, label %131

142:                                              ; preds = %131
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %144, label %212

144:                                              ; preds = %142
  br i1 %26, label %205, label %145

145:                                              ; preds = %144
  %146 = add nsw i32 %25, -1
  %147 = zext i32 %1 to i64
  %148 = shl nuw nsw i64 %147, 2
  %149 = add i32 %1, -1
  %150 = zext i32 %149 to i64
  br label %151

151:                                              ; preds = %197, %145
  %152 = phi i64 [ 1, %145 ], [ %198, %197 ]
  %153 = phi i64 [ 0, %145 ], [ %184, %197 ]
  %154 = phi i32 [ %23, %145 ], [ %156, %197 ]
  %155 = getelementptr inbounds [32 x i32], ptr %9, i64 0, i64 %153
  %156 = load i32, ptr %155, align 4, !tbaa !44
  %157 = sub nsw i32 %156, %154
  %158 = icmp sgt i32 %157, 0
  %159 = xor i32 %157, -1
  %160 = icmp eq i32 %156, %154
  %161 = select i1 %160, i32 %146, i32 %159
  %162 = add nsw i32 %157, -1
  %163 = zext i1 %158 to i32
  %164 = select i1 %158, i32 %162, i32 %161
  %165 = getelementptr inbounds i32, ptr %2, i64 %153
  store i32 %163, ptr %165, align 4
  %166 = getelementptr inbounds i32, ptr %3, i64 %153
  store i32 %164, ptr %166, align 4
  %167 = getelementptr inbounds [32 x i32], ptr %10, i64 0, i64 %153
  store i32 %156, ptr %167, align 4, !tbaa !44
  %168 = trunc nuw i64 %153 to i32
  br label %169

169:                                              ; preds = %151, %179
  %170 = phi i64 [ %153, %151 ], [ %181, %179 ]
  %171 = phi i32 [ %168, %151 ], [ %180, %179 ]
  %172 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %170
  %173 = load i32, ptr %172, align 4, !tbaa !44
  %174 = icmp eq i32 %173, %156
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = add i32 %171, 1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [32 x i32], ptr %10, i64 0, i64 %177
  store i32 %173, ptr %178, align 4, !tbaa !44
  br label %179

179:                                              ; preds = %169, %175
  %180 = phi i32 [ %176, %175 ], [ %171, %169 ]
  %181 = add nuw nsw i64 %170, 1
  %182 = icmp eq i64 %181, %147
  br i1 %182, label %183, label %169

183:                                              ; preds = %179
  %184 = add nuw nsw i64 %153, 1
  %185 = icmp eq i64 %153, %150
  br i1 %185, label %201, label %190

186:                                              ; preds = %190
  %187 = add nuw nsw i64 %191, 1
  %188 = trunc i64 %187 to i32
  %189 = icmp eq i32 %188, %1
  br i1 %189, label %199, label %190

190:                                              ; preds = %183, %186
  %191 = phi i64 [ %187, %186 ], [ %152, %183 ]
  %192 = getelementptr inbounds [32 x i32], ptr %10, i64 0, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !44
  %194 = getelementptr inbounds [32 x i32], ptr %9, i64 0, i64 %191
  %195 = load i32, ptr %194, align 4, !tbaa !44
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %186, label %197

197:                                              ; preds = %190
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %8, ptr nonnull align 4 %10, i64 %148, i1 false), !tbaa !44
  %198 = add nuw nsw i64 %152, 1
  br label %151

199:                                              ; preds = %186
  %200 = trunc nuw i64 %184 to i32
  br label %201

201:                                              ; preds = %183, %199
  %202 = phi i32 [ %200, %199 ], [ %1, %183 ]
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %2, i64 %203
  br label %205

205:                                              ; preds = %144, %201
  %206 = phi ptr [ %204, %201 ], [ %2, %144 ]
  store i32 3, ptr %206, align 4, !tbaa !44
  %207 = icmp eq i32 %6, 0
  %208 = getelementptr inbounds i8, ptr %15, i64 31568
  %209 = load ptr, ptr %208, align 8, !tbaa !10
  %210 = select i1 %207, i64 56, i64 88
  %211 = getelementptr inbounds i8, ptr %209, i64 %210
  store i32 1, ptr %211, align 8, !tbaa !44
  br label %212

212:                                              ; preds = %205, %91, %142
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
define dso_local void @SetLagrangianMultipliers() local_unnamed_addr #2 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 20
  %3 = load i32, ptr %2, align 4, !tbaa !131
  %4 = sitofp i32 %3 to double
  %5 = fmul double %4, 5.000000e-02
  %6 = fcmp olt double %5, 0.000000e+00
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = fcmp ogt double %5, 5.000000e-01
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %7, %0
  %11 = phi double [ 0.000000e+00, %0 ], [ %5, %9 ], [ 5.000000e-01, %7 ]
  %12 = fsub double 1.000000e+00, %11
  %13 = getelementptr inbounds i8, ptr %1, i64 3136
  %14 = load i32, ptr %13, align 8, !tbaa !101
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %15, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds i8, ptr %16, i64 90492
  %19 = getelementptr inbounds i8, ptr %16, i64 90512
  %20 = getelementptr inbounds i8, ptr %16, i64 90504
  %21 = getelementptr inbounds i8, ptr %16, i64 90520
  br label %246

22:                                               ; preds = %10, %242
  %23 = phi ptr [ %243, %242 ], [ %16, %10 ]
  %24 = phi i64 [ %244, %242 ], [ 0, %10 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 90492
  %26 = load i32, ptr %25, align 4, !tbaa !132
  %27 = icmp sgt i32 %26, -52
  br i1 %27, label %28, label %242

28:                                               ; preds = %22
  %29 = sub nsw i32 0, %26
  %30 = icmp eq i64 %24, 1
  %31 = sext i32 %29 to i64
  %32 = trunc nuw nsw i64 %24 to i32
  %33 = trunc nuw nsw i64 %24 to i32
  br label %34

34:                                               ; preds = %28, %237
  %35 = phi ptr [ %23, %28 ], [ %238, %237 ]
  %36 = phi i64 [ %31, %28 ], [ %239, %237 ]
  %37 = trunc nsw i64 %36 to i32
  %38 = sitofp i32 %37 to double
  %39 = getelementptr inbounds i8, ptr %35, i64 90492
  %40 = load i32, ptr %39, align 4, !tbaa !132
  %41 = sitofp i32 %40 to double
  %42 = fadd double %38, %41
  %43 = fadd double %42, -1.200000e+01
  %44 = load ptr, ptr @input, align 8, !tbaa !6
  %45 = getelementptr inbounds i8, ptr %44, i64 4004
  %46 = load i32, ptr %45, align 4, !tbaa !133
  %47 = icmp eq i32 %46, 0
  %48 = fdiv double %43, 3.000000e+00
  br i1 %47, label %110, label %49

49:                                               ; preds = %34
  %50 = getelementptr inbounds i8, ptr %44, i64 4008
  %51 = getelementptr inbounds [6 x double], ptr %50, i64 0, i64 %24
  %52 = load double, ptr %51, align 8, !tbaa !134
  %53 = tail call double @exp2(double %48) #14
  %54 = fmul double %52, %53
  %55 = load ptr, ptr @img, align 8, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %55, i64 90504
  %57 = load ptr, ptr %56, align 8, !tbaa !135
  %58 = getelementptr inbounds ptr, ptr %57, i64 %24
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds double, ptr %59, i64 %36
  %61 = load ptr, ptr @input, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 24
  %63 = load i32, ptr %62, align 8, !tbaa !136
  %64 = icmp eq i32 %63, 2
  %65 = select i1 %64, double 0x3FEE666666666666, double 1.000000e+00
  %66 = fmul double %54, %65
  store double %66, ptr %60, align 8, !tbaa !134
  %67 = tail call double @sqrt(double noundef %66) #14
  %68 = load ptr, ptr @img, align 8, !tbaa !6
  %69 = getelementptr inbounds i8, ptr %68, i64 90512
  %70 = load ptr, ptr %69, align 8, !tbaa !137
  %71 = getelementptr inbounds ptr, ptr %70, i64 %24
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds double, ptr %72, i64 %36
  store double %67, ptr %73, align 8, !tbaa !134
  %74 = tail call double @llvm.fmuladd.f64(double %67, double 6.553600e+04, double 5.000000e-01)
  %75 = fptosi double %74 to i32
  %76 = getelementptr inbounds i8, ptr %68, i64 90520
  %77 = load ptr, ptr %76, align 8, !tbaa !138
  %78 = getelementptr inbounds ptr, ptr %77, i64 %24
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds i32, ptr %79, i64 %36
  store i32 %75, ptr %80, align 4, !tbaa !44
  br i1 %30, label %81, label %237

81:                                               ; preds = %49
  %82 = load ptr, ptr @input, align 8, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %82, i64 4048
  %84 = load double, ptr %83, align 8, !tbaa !134
  %85 = tail call double @exp2(double %48) #14
  %86 = fmul double %84, %85
  %87 = load ptr, ptr @img, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %87, i64 90504
  %89 = load ptr, ptr %88, align 8, !tbaa !135
  %90 = getelementptr inbounds i8, ptr %89, i64 40
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = getelementptr inbounds double, ptr %91, i64 %36
  %93 = load ptr, ptr @input, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 24
  %95 = load i32, ptr %94, align 8, !tbaa !136
  %96 = icmp eq i32 %95, 2
  %97 = select i1 %96, double 0x3FEE666666666666, double 1.000000e+00
  %98 = fmul double %86, %97
  store double %98, ptr %92, align 8, !tbaa !134
  %99 = tail call double @sqrt(double noundef %98) #14
  %100 = load ptr, ptr @img, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %100, i64 90512
  %102 = load ptr, ptr %101, align 8, !tbaa !137
  %103 = getelementptr inbounds i8, ptr %102, i64 40
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds double, ptr %104, i64 %36
  store double %99, ptr %105, align 8, !tbaa !134
  %106 = tail call double @llvm.fmuladd.f64(double %99, double 6.553600e+04, double 5.000000e-01)
  %107 = getelementptr inbounds i8, ptr %100, i64 90520
  %108 = load ptr, ptr %107, align 8, !tbaa !138
  %109 = getelementptr inbounds i8, ptr %108, i64 40
  br label %230

110:                                              ; preds = %34
  %111 = getelementptr inbounds i8, ptr %44, i64 1244
  %112 = load i32, ptr %111, align 4, !tbaa !139
  %113 = icmp sgt i32 %112, 0
  %114 = tail call double @exp2(double %48) #14
  br i1 %113, label %115, label %132

115:                                              ; preds = %110
  %116 = fmul double %114, 6.800000e-01
  switch i32 %33, label %129 [
    i32 1, label %117
    i32 3, label %123
  ]

117:                                              ; preds = %115
  %118 = fdiv double %43, 6.000000e+00
  %119 = fcmp olt double %118, 2.000000e+00
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = fcmp ogt double %118, 4.000000e+00
  br i1 %121, label %129, label %122

122:                                              ; preds = %120
  br label %129

123:                                              ; preds = %115
  %124 = fdiv double %43, 1.200000e+01
  %125 = fcmp olt double %124, 1.400000e+00
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = fcmp ogt double %124, 3.000000e+00
  br i1 %127, label %129, label %128

128:                                              ; preds = %126
  br label %129

129:                                              ; preds = %115, %128, %126, %123, %117, %120, %122
  %130 = phi double [ 2.000000e+00, %117 ], [ %118, %122 ], [ 4.000000e+00, %120 ], [ 1.400000e+00, %123 ], [ %124, %128 ], [ 3.000000e+00, %126 ], [ 1.000000e+00, %115 ]
  %131 = fmul double %116, %130
  br label %144

132:                                              ; preds = %110
  %133 = fmul double %114, 8.500000e-01
  switch i32 %32, label %140 [
    i32 1, label %141
    i32 3, label %134
  ]

134:                                              ; preds = %132
  %135 = fdiv double %43, 1.200000e+01
  %136 = fcmp olt double %135, 1.400000e+00
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = fcmp ogt double %135, 3.000000e+00
  br i1 %138, label %141, label %139

139:                                              ; preds = %137
  br label %141

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %132, %140, %139, %137, %134
  %142 = phi double [ 4.000000e+00, %132 ], [ 1.400000e+00, %134 ], [ %135, %139 ], [ 3.000000e+00, %137 ], [ 1.000000e+00, %140 ]
  %143 = fmul double %133, %142
  br label %144

144:                                              ; preds = %141, %129
  %145 = phi double [ %143, %141 ], [ %131, %129 ]
  %146 = load ptr, ptr @img, align 8, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %146, i64 90504
  %148 = load ptr, ptr %147, align 8, !tbaa !135
  %149 = getelementptr inbounds ptr, ptr %148, i64 %24
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = getelementptr inbounds double, ptr %150, i64 %36
  store double %145, ptr %151, align 8, !tbaa !134
  %152 = load ptr, ptr @input, align 8, !tbaa !6
  %153 = getelementptr inbounds i8, ptr %152, i64 24
  %154 = load i32, ptr %153, align 8, !tbaa !136
  %155 = icmp eq i32 %154, 2
  %156 = select i1 %155, double 0x3FEE666666666666, double 1.000000e+00
  %157 = getelementptr inbounds double, ptr %150, i64 %36
  %158 = fmul double %156, %145
  br i1 %30, label %159, label %215

159:                                              ; preds = %144
  %160 = getelementptr inbounds i8, ptr %152, i64 1940
  %161 = load i32, ptr %160, align 4, !tbaa !140
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %146, i64 89316
  %165 = load i32, ptr %164, align 4, !tbaa !141
  %166 = freeze i32 %165
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %167, double 5.000000e-01, double 1.000000e+00
  br label %169

169:                                              ; preds = %163, %159
  %170 = phi double [ 1.000000e+00, %159 ], [ %168, %163 ]
  %171 = fmul double %158, %170
  store double %171, ptr %157, align 8, !tbaa !134
  %172 = getelementptr inbounds i8, ptr %148, i64 40
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = getelementptr inbounds double, ptr %173, i64 %36
  %175 = getelementptr inbounds i8, ptr %152, i64 1944
  %176 = load i32, ptr %175, align 8, !tbaa !71
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %191

178:                                              ; preds = %169
  %179 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %146, i64 89316
  %181 = load i32, ptr %180, align 4, !tbaa !141
  %182 = sext i32 %181 to i64
  %183 = getelementptr %struct.GOP_DATA, ptr %179, i64 %182
  %184 = getelementptr i8, ptr %183, i64 -8
  %185 = load i32, ptr %184, align 4, !tbaa !142
  %186 = sitofp i32 %185 to double
  %187 = fmul double %186, 2.000000e-01
  %188 = fcmp ogt double %187, 4.000000e-01
  %189 = select i1 %188, double 4.000000e-01, double %187
  %190 = fsub double 1.000000e+00, %189
  br label %191

191:                                              ; preds = %169, %178
  %192 = phi double [ %190, %178 ], [ 8.000000e-01, %169 ]
  %193 = fmul double %171, %192
  %194 = fmul double %12, %193
  store double %194, ptr %174, align 8, !tbaa !134
  %195 = tail call double @sqrt(double noundef %194) #14
  %196 = load ptr, ptr @img, align 8, !tbaa !6
  %197 = getelementptr inbounds i8, ptr %196, i64 90512
  %198 = load ptr, ptr %197, align 8, !tbaa !137
  %199 = getelementptr inbounds i8, ptr %198, i64 40
  %200 = load ptr, ptr %199, align 8, !tbaa !6
  %201 = getelementptr inbounds double, ptr %200, i64 %36
  store double %195, ptr %201, align 8, !tbaa !134
  %202 = tail call double @llvm.fmuladd.f64(double %195, double 6.553600e+04, double 5.000000e-01)
  %203 = fptosi double %202 to i32
  %204 = getelementptr inbounds i8, ptr %196, i64 90520
  %205 = load ptr, ptr %204, align 8, !tbaa !138
  %206 = getelementptr inbounds i8, ptr %205, i64 40
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = getelementptr inbounds i32, ptr %207, i64 %36
  store i32 %203, ptr %208, align 4, !tbaa !44
  %209 = getelementptr inbounds i8, ptr %196, i64 90504
  %210 = load ptr, ptr %209, align 8, !tbaa !135
  %211 = getelementptr inbounds i8, ptr %210, i64 8
  %212 = load ptr, ptr %211, align 8, !tbaa !6
  %213 = getelementptr inbounds double, ptr %212, i64 %36
  %214 = load double, ptr %213, align 8, !tbaa !134
  br label %217

215:                                              ; preds = %144
  %216 = fmul double %12, %158
  store double %216, ptr %157, align 8, !tbaa !134
  br label %217

217:                                              ; preds = %215, %191
  %218 = phi double [ %216, %215 ], [ %214, %191 ]
  %219 = tail call double @sqrt(double noundef %218) #14
  %220 = load ptr, ptr @img, align 8, !tbaa !6
  %221 = getelementptr inbounds i8, ptr %220, i64 90512
  %222 = load ptr, ptr %221, align 8, !tbaa !137
  %223 = getelementptr inbounds ptr, ptr %222, i64 %24
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  %225 = getelementptr inbounds double, ptr %224, i64 %36
  store double %219, ptr %225, align 8, !tbaa !134
  %226 = tail call double @llvm.fmuladd.f64(double %219, double 6.553600e+04, double 5.000000e-01)
  %227 = getelementptr inbounds i8, ptr %220, i64 90520
  %228 = load ptr, ptr %227, align 8, !tbaa !138
  %229 = getelementptr inbounds ptr, ptr %228, i64 %24
  br label %230

230:                                              ; preds = %81, %217
  %231 = phi ptr [ %229, %217 ], [ %109, %81 ]
  %232 = phi double [ %226, %217 ], [ %106, %81 ]
  %233 = phi ptr [ %220, %217 ], [ %100, %81 ]
  %234 = fptosi double %232 to i32
  %235 = load ptr, ptr %231, align 8, !tbaa !6
  %236 = getelementptr inbounds i32, ptr %235, i64 %36
  store i32 %234, ptr %236, align 4, !tbaa !44
  br label %237

237:                                              ; preds = %230, %49
  %238 = phi ptr [ %68, %49 ], [ %233, %230 ]
  %239 = add nsw i64 %36, 1
  %240 = and i64 %239, 4294967295
  %241 = icmp eq i64 %240, 52
  br i1 %241, label %242, label %34

242:                                              ; preds = %237, %22
  %243 = phi ptr [ %23, %22 ], [ %238, %237 ]
  %244 = add nuw nsw i64 %24, 1
  %245 = icmp eq i64 %244, 5
  br i1 %245, label %283, label %22

246:                                              ; preds = %17, %280
  %247 = phi i64 [ 0, %17 ], [ %281, %280 ]
  %248 = load i32, ptr %18, align 4, !tbaa !132
  %249 = icmp sgt i32 %248, -52
  br i1 %249, label %250, label %280

250:                                              ; preds = %246
  %251 = sub nsw i32 0, %248
  %252 = load ptr, ptr %19, align 8, !tbaa !137
  %253 = getelementptr inbounds ptr, ptr %252, i64 %247
  %254 = load ptr, ptr %253, align 8, !tbaa !6
  %255 = load ptr, ptr %20, align 8, !tbaa !135
  %256 = getelementptr inbounds ptr, ptr %255, i64 %247
  %257 = load ptr, ptr %256, align 8, !tbaa !6
  %258 = load ptr, ptr %21, align 8, !tbaa !138
  %259 = getelementptr inbounds ptr, ptr %258, i64 %247
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  %261 = sext i32 %251 to i64
  br label %262

262:                                              ; preds = %250, %262
  %263 = phi i64 [ %261, %250 ], [ %277, %262 ]
  %264 = trunc nsw i64 %263 to i32
  %265 = tail call i32 @llvm.smax.i32(i32 %264, i32 12)
  %266 = add nsw i32 %265, -12
  %267 = zext nneg i32 %266 to i64
  %268 = getelementptr inbounds [40 x i32], ptr @QP2QUANT, i64 0, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !44
  %270 = sitofp i32 %269 to double
  %271 = getelementptr inbounds double, ptr %254, i64 %263
  store double %270, ptr %271, align 8, !tbaa !134
  %272 = getelementptr inbounds double, ptr %257, i64 %263
  store double %270, ptr %272, align 8, !tbaa !134
  %273 = load double, ptr %271, align 8, !tbaa !134
  %274 = tail call double @llvm.fmuladd.f64(double %273, double 6.553600e+04, double 5.000000e-01)
  %275 = fptosi double %274 to i32
  %276 = getelementptr inbounds i32, ptr %260, i64 %263
  store i32 %275, ptr %276, align 4, !tbaa !44
  %277 = add nsw i64 %263, 1
  %278 = and i64 %277, 4294967295
  %279 = icmp eq i64 %278, 52
  br i1 %279, label %280, label %262

280:                                              ; preds = %262, %246
  %281 = add nuw nsw i64 %247, 1
  %282 = icmp eq i64 %281, 6
  br i1 %282, label %283, label %246

283:                                              ; preds = %242, %280
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare dso_local double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #9

declare dso_local signext i32 @dummy_slice_too_big(i32 noundef signext) #3

declare dso_local signext i32 @writeSyntaxElement_UVLC(ptr noundef, ptr noundef) #3

declare dso_local signext i32 @writeSyntaxElement_CABAC(ptr noundef, ptr noundef) #3

declare dso_local void @init_lists(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @poc_based_ref_management(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @alloc_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #3

declare dso_local void @reorder_ref_pic_list(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local void @init_mbaff_lists() local_unnamed_addr #3

declare dso_local void @estimate_weighting_factor_P_slice(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @estimate_weighting_factor_B_slice() local_unnamed_addr #3

declare dso_local void @compute_colocated(ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local void @EPZSSliceInit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #3

declare dso_local ptr @create_contexts_MotionInfo() local_unnamed_addr #3

declare dso_local ptr @create_contexts_TextureInfo() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare dso_local void @delete_contexts_MotionInfo(ptr noundef) local_unnamed_addr #3

declare dso_local void @delete_contexts_TextureInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0,1) }

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
!10 = !{!11, !7, i64 31568}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !13, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !14, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !14, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !15, i64 90584, !12, i64 90588, !12, i64 90592}
!12 = !{!"int", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!17, !12, i64 56}
!17 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128}
!18 = !{!17, !12, i64 88}
!19 = !{!20, !12, i64 2992}
!20 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !14, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!21 = !{!11, !7, i64 31560}
!22 = !{!23, !12, i64 4}
!23 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 808, !13, i64 812, !13, i64 816, !13, i64 820}
!24 = !{!11, !12, i64 89200}
!25 = !{!17, !7, i64 24}
!26 = !{!27, !7, i64 0}
!27 = !{!"datapartition", !7, i64 0, !28, i64 8, !7, i64 104}
!28 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !12, i64 92}
!29 = !{!30, !12, i64 40}
!30 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 21, !12, i64 24, !12, i64 28, !7, i64 32, !12, i64 40}
!31 = !{!20, !12, i64 2984}
!32 = !{!30, !12, i64 4}
!33 = !{!30, !7, i64 32}
!34 = !{!17, !12, i64 16}
!35 = !{!30, !12, i64 0}
!36 = !{!28, !12, i64 12}
!37 = !{!30, !8, i64 8}
!38 = !{!11, !12, i64 90592}
!39 = !{!11, !12, i64 90484}
!40 = !{!41, !12, i64 32}
!41 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !8, i64 108, !12, i64 1132, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !12, i64 1164, !12, i64 1168, !12, i64 1172, !12, i64 1176, !12, i64 1180, !42, i64 1184}
!42 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !43, i64 84, !12, i64 496, !43, i64 500, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!43 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!44 = !{!12, !12, i64 0}
!45 = !{!11, !12, i64 90488}
!46 = !{!11, !12, i64 90304}
!47 = !{!48, !7, i64 1488}
!48 = !{!"", !12, i64 0, !12, i64 4, !13, i64 8, !13, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32, !8, i64 72, !8, i64 372, !8, i64 672, !12, i64 688, !7, i64 696, !7, i64 704, !12, i64 712, !12, i64 716, !12, i64 720, !13, i64 724, !13, i64 728, !13, i64 732, !8, i64 736, !8, i64 1036, !8, i64 1336, !8, i64 1356, !8, i64 1376, !8, i64 1396, !8, i64 1416, !8, i64 1436, !8, i64 1456, !12, i64 1476, !12, i64 1480, !7, i64 1488, !12, i64 1496, !12, i64 1500}
!49 = !{!11, !12, i64 120}
!50 = !{!11, !12, i64 12}
!51 = !{!23, !12, i64 0}
!52 = !{!11, !12, i64 90308}
!53 = !{!17, !7, i64 32}
!54 = !{!17, !7, i64 40}
!55 = !{!17, !12, i64 0}
!56 = !{!11, !12, i64 40}
!57 = !{!17, !12, i64 4}
!58 = !{!17, !12, i64 12}
!59 = !{!17, !7, i64 120}
!60 = !{!61, !12, i64 184}
!61 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232}
!62 = !{!11, !12, i64 89408}
!63 = !{!61, !12, i64 188}
!64 = !{!11, !12, i64 89412}
!65 = !{!11, !12, i64 24}
!66 = !{!11, !12, i64 28}
!67 = !{!20, !12, i64 40}
!68 = !{!20, !12, i64 44}
!69 = !{!20, !12, i64 48}
!70 = !{!11, !12, i64 90316}
!71 = !{!20, !12, i64 1944}
!72 = !{!20, !12, i64 2980}
!73 = !{!74, !12, i64 32}
!74 = !{!"decoded_picture_buffer", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !7, i64 56}
!75 = !{!41, !12, i64 1132}
!76 = !{!11, !12, i64 90284}
!77 = !{!20, !12, i64 1232}
!78 = !{!11, !12, i64 90588}
!79 = !{!80, !12, i64 4}
!80 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!81 = !{!11, !12, i64 90280}
!82 = !{!20, !12, i64 2976}
!83 = !{!17, !7, i64 64}
!84 = !{!17, !7, i64 72}
!85 = !{!17, !7, i64 80}
!86 = !{!17, !7, i64 96}
!87 = !{!17, !7, i64 104}
!88 = !{!17, !7, i64 112}
!89 = !{!61, !12, i64 192}
!90 = !{!61, !12, i64 196}
!91 = !{!20, !12, i64 64}
!92 = !{!20, !12, i64 1916}
!93 = !{!80, !12, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"long long", !8, i64 0}
!96 = !{!80, !12, i64 16}
!97 = !{!80, !12, i64 8}
!98 = !{!80, !12, i64 12}
!99 = !{!41, !12, i64 1148}
!100 = !{!20, !12, i64 3964}
!101 = !{!20, !12, i64 3136}
!102 = !{!20, !12, i64 3580}
!103 = !{!11, !15, i64 90584}
!104 = !{!11, !12, i64 90348}
!105 = !{!11, !12, i64 90444}
!106 = !{!11, !12, i64 90432}
!107 = !{!11, !12, i64 90356}
!108 = !{!48, !12, i64 24}
!109 = !{!11, !12, i64 90212}
!110 = !{!20, !12, i64 4264}
!111 = !{!20, !12, i64 3892}
!112 = !{!11, !12, i64 90220}
!113 = !{!20, !12, i64 3556}
!114 = !{!11, !12, i64 89416}
!115 = !{!11, !12, i64 89420}
!116 = !{!11, !12, i64 90448}
!117 = !{!11, !12, i64 90452}
!118 = !{!119, !14, i64 0}
!119 = !{!"", !14, i64 0, !8, i64 8, !8, i64 520, !8, i64 1032, !7, i64 1544, !7, i64 1552, !12, i64 1560, !15, i64 1564, !8, i64 1568, !8, i64 1584, !7, i64 1600, !8, i64 1608, !12, i64 1624, !95, i64 1632, !12, i64 1640, !7, i64 1648, !7, i64 1656, !8, i64 1664, !12, i64 1696, !12, i64 1700, !12, i64 1704, !12, i64 1708, !12, i64 1712, !12, i64 1716, !12, i64 1720, !12, i64 1724, !12, i64 1728}
!120 = !{!11, !12, i64 90456}
!121 = !{!11, !12, i64 90192}
!122 = !{!20, !12, i64 36}
!123 = !{!8, !8, i64 0}
!124 = !{!74, !7, i64 8}
!125 = !{!80, !12, i64 6364}
!126 = !{!127, !7, i64 40}
!127 = !{!"frame_store", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !7, i64 40, !7, i64 48, !7, i64 56}
!128 = !{!127, !12, i64 0}
!129 = !{!80, !12, i64 6380}
!130 = !{!80, !12, i64 6376}
!131 = !{!20, !12, i64 20}
!132 = !{!11, !12, i64 90492}
!133 = !{!20, !12, i64 4004}
!134 = !{!14, !14, i64 0}
!135 = !{!11, !7, i64 90504}
!136 = !{!20, !12, i64 24}
!137 = !{!11, !7, i64 90512}
!138 = !{!11, !7, i64 90520}
!139 = !{!20, !12, i64 1244}
!140 = !{!20, !12, i64 1940}
!141 = !{!11, !12, i64 89316}
!142 = !{!143, !12, i64 16}
!143 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
