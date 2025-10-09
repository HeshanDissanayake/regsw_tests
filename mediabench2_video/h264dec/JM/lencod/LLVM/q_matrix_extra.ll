; ModuleID = 'src/q_matrix.c'
source_filename = "src/q_matrix.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@matrix4x4_check = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 4
@matrix8x8_check = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@MatrixType4x4 = internal constant [6 x [20 x i8]] [[20 x i8] c"INTRA4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAV\00\00\00\00", [20 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAV\00\00\00\00"], align 1
@MatrixType8x8 = internal constant [2 x [20 x i8]] [[20 x i8] c"INTRA8X8_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00"], align 1
@errortext = external dso_local global [300 x i8], align 1
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@ScalingList4x4input = dso_local local_unnamed_addr global [6 x [16 x i16]] zeroinitializer, align 2
@ScalingList8x8input = dso_local local_unnamed_addr global [2 x [64 x i16]] zeroinitializer, align 2
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@input = external dso_local local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"\0A%s value exceed range. (Value must be 1 to 255)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Setting default values for this matrix.\00", align 1
@Quant_inter_default = internal unnamed_addr constant [16 x i16] [i16 10, i16 14, i16 20, i16 24, i16 14, i16 20, i16 24, i16 27, i16 20, i16 24, i16 27, i16 30, i16 24, i16 27, i16 30, i16 34], align 2
@Quant_intra_default = internal unnamed_addr constant [16 x i16] [i16 6, i16 13, i16 20, i16 28, i16 13, i16 20, i16 28, i16 32, i16 20, i16 28, i16 32, i16 37, i16 28, i16 32, i16 37, i16 42], align 2
@.str.8 = private unnamed_addr constant [57 x i8] c"\0A%s matrix definition not found. Setting default values.\00", align 1
@Quant8_inter_default = internal unnamed_addr constant [64 x i16] [i16 9, i16 13, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 13, i16 13, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 35], align 2
@Quant8_intra_default = internal unnamed_addr constant [64 x i16] [i16 6, i16 10, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 10, i16 11, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 42], align 2
@qp_per_matrix = dso_local local_unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"init_global_buffers: qp_per_matrix\00", align 1
@qp_rem_matrix = dso_local local_unnamed_addr global ptr null, align 8
@LevelScale4x4Luma = dso_local global ptr null, align 8
@LevelScale4x4Chroma = dso_local global ptr null, align 8
@LevelScale8x8Luma = dso_local global ptr null, align 8
@InvLevelScale4x4Luma = dso_local global ptr null, align 8
@InvLevelScale4x4Chroma = dso_local global ptr null, align 8
@InvLevelScale8x8Luma = dso_local global ptr null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"Parsing QMatrix file %s \00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@UseDefaultScalingMatrix4x4Flag = dso_local local_unnamed_addr global [6 x i16] zeroinitializer, align 2
@UseDefaultScalingMatrix8x8Flag = dso_local local_unnamed_addr global [2 x i16] zeroinitializer, align 2
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@quant_coef = external dso_local local_unnamed_addr constant [6 x [4 x [4 x i32]]], align 4
@dequant_coef = external dso_local local_unnamed_addr constant [6 x [4 x [4 x i32]]], align 4
@ScalingList4x4 = dso_local local_unnamed_addr global [6 x [16 x i16]] zeroinitializer, align 2
@quant_coef8 = external dso_local local_unnamed_addr constant [6 x [8 x [8 x i32]]], align 4
@dequant_coef8 = external dso_local local_unnamed_addr constant [6 x [8 x [8 x i32]]], align 4
@ScalingList8x8 = dso_local local_unnamed_addr global [2 x [64 x i16]] zeroinitializer, align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
define dso_local signext i32 @CheckParameterName(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store i32 0, ptr %1, align 4, !tbaa !6
  %3 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(14) @MatrixType4x4, ptr noundef nonnull dereferenceable(1) %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(17) getelementptr inbounds (i8, ptr @MatrixType4x4, i64 20), ptr noundef nonnull dereferenceable(1) %0) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %5
  %9 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(17) getelementptr inbounds (i8, ptr @MatrixType4x4, i64 40), ptr noundef nonnull dereferenceable(1) %0) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(14) getelementptr inbounds (i8, ptr @MatrixType4x4, i64 60), ptr noundef nonnull dereferenceable(1) %0) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(17) getelementptr inbounds (i8, ptr @MatrixType4x4, i64 80), ptr noundef nonnull dereferenceable(1) %0) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(17) getelementptr inbounds (i8, ptr @MatrixType4x4, i64 100), ptr noundef nonnull dereferenceable(1) %0) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  store i32 1, ptr %1, align 4, !tbaa !6
  %21 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(14) @MatrixType8x8, ptr noundef nonnull dereferenceable(1) %0) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(14) getelementptr inbounds (i8, ptr @MatrixType8x8, i64 20), ptr noundef nonnull dereferenceable(1) %0) #12
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 1, i32 -1
  br label %27

27:                                               ; preds = %23, %2, %5, %8, %11, %14, %17, %20
  %28 = phi i32 [ 0, %20 ], [ 0, %2 ], [ 1, %5 ], [ 2, %8 ], [ 3, %11 ], [ 4, %14 ], [ 5, %17 ], [ %26, %23 ]
  ret i32 %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local signext i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @ParseMatrix(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #3 {
  %3 = alloca [1000 x ptr], align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #13
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %123

9:                                                ; preds = %2, %54
  %10 = phi i32 [ %58, %54 ], [ 0, %2 ]
  %11 = phi ptr [ %57, %54 ], [ %0, %2 ]
  %12 = phi i32 [ %56, %54 ], [ 0, %2 ]
  %13 = phi i32 [ %55, %54 ], [ 0, %2 ]
  %14 = load i8, ptr %11, align 1, !tbaa !10
  switch i8 %14, label %45 [
    i8 13, label %15
    i8 35, label %17
    i8 10, label %25
    i8 32, label %27
    i8 9, label %27
    i8 34, label %31
    i8 44, label %43
  ]

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %11, i64 1
  br label %54

17:                                               ; preds = %9
  store i8 0, ptr %11, align 1, !tbaa !10
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi ptr [ %11, %17 ], [ %24, %18 ]
  %20 = load i8, ptr %19, align 1, !tbaa !10
  %21 = icmp ne i8 %20, 10
  %22 = icmp ult ptr %19, %7
  %23 = and i1 %22, %21
  %24 = getelementptr inbounds i8, ptr %19, i64 1
  br i1 %23, label %18, label %54

25:                                               ; preds = %9
  %26 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 0, ptr %11, align 1, !tbaa !10
  br label %54

27:                                               ; preds = %9, %9
  %28 = icmp eq i32 %13, 0
  %29 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %28, label %30, label %54

30:                                               ; preds = %27
  store i8 0, ptr %11, align 1, !tbaa !10
  br label %54

31:                                               ; preds = %9
  %32 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 0, ptr %11, align 1, !tbaa !10
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = add nsw i32 %10, 1
  %36 = sext i32 %10 to i64
  %37 = getelementptr inbounds [1000 x ptr], ptr %3, i64 0, i64 %36
  store ptr %32, ptr %37, align 8, !tbaa !11
  %38 = xor i32 %12, -1
  br label %39

39:                                               ; preds = %31, %34
  %40 = phi i32 [ %38, %34 ], [ 0, %31 ]
  %41 = phi i32 [ %35, %34 ], [ %10, %31 ]
  %42 = xor i32 %13, -1
  br label %54

43:                                               ; preds = %9
  %44 = getelementptr inbounds i8, ptr %11, i64 1
  br label %54

45:                                               ; preds = %9
  %46 = icmp eq i32 %12, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = add nsw i32 %10, 1
  %49 = sext i32 %10 to i64
  %50 = getelementptr inbounds [1000 x ptr], ptr %3, i64 0, i64 %49
  store ptr %11, ptr %50, align 8, !tbaa !11
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i32 [ %10, %45 ], [ %48, %47 ]
  %53 = getelementptr inbounds i8, ptr %11, i64 1
  br label %54

54:                                               ; preds = %18, %27, %30, %51, %43, %39, %25, %15
  %55 = phi i32 [ %13, %51 ], [ %13, %43 ], [ %42, %39 ], [ 0, %30 ], [ 0, %25 ], [ %13, %15 ], [ -1, %27 ], [ 0, %18 ]
  %56 = phi i32 [ -1, %51 ], [ 0, %43 ], [ %40, %39 ], [ 0, %30 ], [ 0, %25 ], [ %12, %15 ], [ %12, %27 ], [ 0, %18 ]
  %57 = phi ptr [ %53, %51 ], [ %44, %43 ], [ %32, %39 ], [ %29, %30 ], [ %26, %25 ], [ %16, %15 ], [ %29, %27 ], [ %19, %18 ]
  %58 = phi i32 [ %52, %51 ], [ %10, %43 ], [ %41, %39 ], [ %10, %30 ], [ %10, %25 ], [ %10, %15 ], [ %10, %27 ], [ %10, %18 ]
  %59 = icmp ult ptr %57, %7
  br i1 %59, label %9, label %60

60:                                               ; preds = %54
  %61 = add nsw i32 %58, -1
  %62 = icmp sgt i32 %58, 1
  br i1 %62, label %63, label %123

63:                                               ; preds = %60, %119
  %64 = phi i32 [ %121, %119 ], [ 0, %60 ]
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [1000 x ptr], ptr %3, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = call signext i32 @CheckParameterName(ptr noundef %67, ptr noundef nonnull %5)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str, ptr noundef %67) #13
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #13
  br label %72

72:                                               ; preds = %70, %63
  %73 = add nuw nsw i32 %64, 1
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [1000 x ptr], ptr %3, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !11
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = sub nsw i32 61, %78
  %80 = icmp eq i8 %77, 61
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = getelementptr inbounds i8, ptr %76, i64 1
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 0, %84
  br label %86

86:                                               ; preds = %72, %81
  %87 = phi i32 [ %79, %72 ], [ %85, %81 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(78) @errortext, ptr noundef nonnull align 1 dereferenceable(78) @.str.2, i64 78, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #13
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, ptr %5, align 4, !tbaa !6
  %92 = icmp eq i32 %91, 0
  %93 = sext i32 %68 to i64
  %94 = getelementptr inbounds [2 x [64 x i16]], ptr @ScalingList8x8input, i64 0, i64 %93
  %95 = getelementptr inbounds [2 x i32], ptr @matrix8x8_check, i64 0, i64 %93
  %96 = getelementptr inbounds [6 x [16 x i16]], ptr @ScalingList4x4input, i64 0, i64 %93
  %97 = getelementptr inbounds [6 x i32], ptr @matrix4x4_check, i64 0, i64 %93
  %98 = select i1 %92, ptr %97, ptr %95
  %99 = select i1 %92, i32 16, i32 64
  %100 = select i1 %92, ptr %96, ptr %94
  store i32 1, ptr %98, align 4, !tbaa !6
  %101 = add nuw nsw i32 %64, 2
  %102 = zext i32 %101 to i64
  %103 = zext nneg i32 %99 to i64
  br label %104

104:                                              ; preds = %90, %113
  %105 = phi i64 [ 0, %90 ], [ %117, %113 ]
  %106 = add nuw nsw i64 %105, %102
  %107 = getelementptr inbounds [1000 x ptr], ptr %3, i64 0, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !11
  %109 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %108, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #13
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %113, label %111

111:                                              ; preds = %104
  %112 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef %67, ptr noundef %108) #13
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #13
  br label %113

113:                                              ; preds = %111, %104
  %114 = load i32, ptr %4, align 4, !tbaa !6
  %115 = trunc i32 %114 to i16
  %116 = getelementptr inbounds i16, ptr %100, i64 %105
  store i16 %115, ptr %116, align 2, !tbaa !13
  %117 = add nuw nsw i64 %105, 1
  %118 = icmp eq i64 %117, %103
  br i1 %118, label %119, label %104

119:                                              ; preds = %113
  %120 = call i32 @putchar(i32 46)
  %121 = add nuw nsw i32 %101, %99
  %122 = icmp slt i32 %121, %61
  br i1 %122, label %63, label %123

123:                                              ; preds = %119, %2, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
define dso_local void @PatchMatrix() local_unnamed_addr #4 {
  br label %1

1:                                                ; preds = %0, %117
  %2 = phi i64 [ 0, %0 ], [ %118, %117 ]
  %3 = load ptr, ptr @input, align 8, !tbaa !11
  %4 = getelementptr inbounds i8, ptr %3, i64 3932
  %5 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %2
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %88, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds [6 x [16 x i16]], ptr @ScalingList4x4input, i64 0, i64 %2
  %10 = getelementptr inbounds [6 x i32], ptr @matrix4x4_check, i64 0, i64 %2
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %82, label %13

13:                                               ; preds = %8
  %14 = load i16, ptr %9, align 2, !tbaa !13
  %15 = icmp ugt i16 %14, 255
  br i1 %15, label %76, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %9, i64 2
  %18 = load i16, ptr %17, align 2, !tbaa !13
  %19 = icmp ugt i16 %18, 255
  br i1 %19, label %76, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %9, i64 4
  %22 = load i16, ptr %21, align 2, !tbaa !13
  %23 = icmp ugt i16 %22, 255
  br i1 %23, label %76, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %9, i64 6
  %26 = load i16, ptr %25, align 2, !tbaa !13
  %27 = icmp ugt i16 %26, 255
  br i1 %27, label %76, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %9, i64 8
  %30 = load i16, ptr %29, align 2, !tbaa !13
  %31 = icmp ugt i16 %30, 255
  br i1 %31, label %76, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %9, i64 10
  %34 = load i16, ptr %33, align 2, !tbaa !13
  %35 = icmp ugt i16 %34, 255
  br i1 %35, label %76, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %9, i64 12
  %38 = load i16, ptr %37, align 2, !tbaa !13
  %39 = icmp ugt i16 %38, 255
  br i1 %39, label %76, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %9, i64 14
  %42 = load i16, ptr %41, align 2, !tbaa !13
  %43 = icmp ugt i16 %42, 255
  br i1 %43, label %76, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %9, i64 16
  %46 = load i16, ptr %45, align 2, !tbaa !13
  %47 = icmp ugt i16 %46, 255
  br i1 %47, label %76, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %9, i64 18
  %50 = load i16, ptr %49, align 2, !tbaa !13
  %51 = icmp ugt i16 %50, 255
  br i1 %51, label %76, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %9, i64 20
  %54 = load i16, ptr %53, align 2, !tbaa !13
  %55 = icmp ugt i16 %54, 255
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %9, i64 22
  %58 = load i16, ptr %57, align 2, !tbaa !13
  %59 = icmp ugt i16 %58, 255
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %9, i64 24
  %62 = load i16, ptr %61, align 2, !tbaa !13
  %63 = icmp ugt i16 %62, 255
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %9, i64 26
  %66 = load i16, ptr %65, align 2, !tbaa !13
  %67 = icmp ugt i16 %66, 255
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %9, i64 28
  %70 = load i16, ptr %69, align 2, !tbaa !13
  %71 = icmp ugt i16 %70, 255
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %9, i64 30
  %74 = load i16, ptr %73, align 2, !tbaa !13
  %75 = icmp ugt i16 %74, 255
  br i1 %75, label %76, label %88

76:                                               ; preds = %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %13
  %77 = getelementptr inbounds [6 x [20 x i8]], ptr @MatrixType4x4, i64 0, i64 %2
  %78 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %77)
  %79 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  %80 = icmp ugt i64 %2, 2
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %9, ptr noundef nonnull align 2 dereferenceable(32) @Quant_inter_default, i64 32, i1 false)
  br label %117

82:                                               ; preds = %8
  %83 = getelementptr inbounds [6 x [20 x i8]], ptr @MatrixType4x4, i64 0, i64 %2
  %84 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %83)
  %85 = icmp ugt i64 %2, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %9, ptr noundef nonnull align 2 dereferenceable(32) @Quant_inter_default, i64 32, i1 false)
  br label %117

87:                                               ; preds = %82, %76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %9, ptr noundef nonnull align 2 dereferenceable(32) @Quant_intra_default, i64 32, i1 false)
  br label %88

88:                                               ; preds = %87, %72, %1
  %89 = icmp ult i64 %2, 2
  br i1 %89, label %90, label %117

90:                                               ; preds = %88
  %91 = load ptr, ptr @input, align 8, !tbaa !11
  %92 = getelementptr inbounds i8, ptr %91, i64 3932
  %93 = or disjoint i64 %2, 6
  %94 = getelementptr inbounds [8 x i32], ptr %92, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !6
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %117, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds [2 x [64 x i16]], ptr @ScalingList8x8input, i64 0, i64 %2
  %99 = getelementptr inbounds [2 x i32], ptr @matrix8x8_check, i64 0, i64 %2
  %100 = load i32, ptr %99, align 4, !tbaa !6
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %105

102:                                              ; preds = %105
  %103 = add nuw nsw i64 %106, 1
  %104 = icmp eq i64 %103, 64
  br i1 %104, label %117, label %105

105:                                              ; preds = %97, %102
  %106 = phi i64 [ %103, %102 ], [ 0, %97 ]
  %107 = getelementptr inbounds i16, ptr %98, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !13
  %109 = icmp ugt i16 %108, 255
  br i1 %109, label %110, label %102

110:                                              ; preds = %105
  %111 = getelementptr inbounds [2 x [20 x i8]], ptr @MatrixType8x8, i64 0, i64 %2
  %112 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %111)
  %113 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %98, ptr noundef nonnull align 2 dereferenceable(128) @Quant8_intra_default, i64 128, i1 false)
  br label %117

114:                                              ; preds = %97
  %115 = getelementptr inbounds [2 x [20 x i8]], ptr @MatrixType8x8, i64 0, i64 %2
  %116 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %115)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %98, ptr noundef nonnull align 2 dereferenceable(128) @Quant8_intra_default, i64 128, i1 false)
  br label %117

117:                                              ; preds = %102, %86, %81, %88, %90, %114, %110
  %118 = add nuw nsw i64 %2, 1
  %119 = icmp eq i64 %118, 6
  br i1 %119, label %120, label %1

120:                                              ; preds = %117
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
define dso_local void @allocate_QMatrix() local_unnamed_addr #3 {
  %1 = load ptr, ptr @input, align 8, !tbaa !11
  %2 = getelementptr inbounds i8, ptr %1, i64 3968
  %3 = load i32, ptr %2, align 8, !tbaa !15
  %4 = mul i32 %3, 6
  %5 = add i32 %4, 4
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #14
  store ptr %8, ptr @qp_per_matrix, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #13
  br label %11

11:                                               ; preds = %10, %0
  %12 = tail call noalias ptr @malloc(i64 noundef %7) #14
  store ptr %12, ptr @qp_rem_matrix, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #13
  br label %15

15:                                               ; preds = %14, %11
  %16 = icmp sgt i32 %5, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %15
  %18 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !11
  %19 = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !11
  %20 = zext nneg i32 %5 to i64
  br label %21

21:                                               ; preds = %17, %21
  %22 = phi i64 [ 0, %17 ], [ %30, %21 ]
  %23 = trunc nuw nsw i64 %22 to i32
  %24 = freeze i32 %23
  %25 = udiv i32 %24, 6
  %26 = getelementptr inbounds i32, ptr %18, i64 %22
  store i32 %25, ptr %26, align 4, !tbaa !6
  %27 = mul i32 %25, 6
  %28 = sub i32 %24, %27
  %29 = getelementptr inbounds i32, ptr %19, i64 %22
  store i32 %28, ptr %29, align 4, !tbaa !6
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %20
  br i1 %31, label %32, label %21

32:                                               ; preds = %21, %15
  %33 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @LevelScale4x4Luma, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 4, i32 noundef signext 4) #13
  %34 = tail call signext i32 @get_mem5Dint(ptr noundef nonnull @LevelScale4x4Chroma, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 4, i32 noundef signext 4) #13
  %35 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @LevelScale8x8Luma, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 8, i32 noundef signext 8) #13
  %36 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @InvLevelScale4x4Luma, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 4, i32 noundef signext 4) #13
  %37 = tail call signext i32 @get_mem5Dint(ptr noundef nonnull @InvLevelScale4x4Chroma, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 4, i32 noundef signext 4) #13
  %38 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @InvLevelScale8x8Luma, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 8, i32 noundef signext 8) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #5

declare dso_local signext i32 @get_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #5

declare dso_local signext i32 @get_mem5Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind
define dso_local void @free_QMatrix() local_unnamed_addr #3 {
  %1 = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !11
  tail call void @free(ptr noundef %1) #13
  %2 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !11
  tail call void @free(ptr noundef %2) #13
  %3 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !11
  tail call void @free_mem4Dint(ptr noundef %3, i32 noundef signext 2, i32 noundef signext 6) #13
  %4 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !11
  tail call void @free_mem5Dint(ptr noundef %4, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext 6) #13
  %5 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !11
  tail call void @free_mem4Dint(ptr noundef %5, i32 noundef signext 2, i32 noundef signext 6) #13
  %6 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !11
  tail call void @free_mem4Dint(ptr noundef %6, i32 noundef signext 2, i32 noundef signext 6) #13
  %7 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !11
  tail call void @free_mem5Dint(ptr noundef %7, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext 6) #13
  %8 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !11
  tail call void @free_mem4Dint(ptr noundef %8, i32 noundef signext 2, i32 noundef signext 6) #13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

declare dso_local void @free_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #5

declare dso_local void @free_mem5Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind
define dso_local void @Init_QMatrix() local_unnamed_addr #3 {
  tail call void @allocate_QMatrix()
  %1 = load ptr, ptr @input, align 8, !tbaa !11
  %2 = getelementptr inbounds i8, ptr %1, i64 3928
  %3 = load i32, ptr %2, align 8, !tbaa !18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds i8, ptr %1, i64 1028
  %7 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %6)
  %8 = load ptr, ptr @input, align 8, !tbaa !11
  %9 = getelementptr inbounds i8, ptr %8, i64 1028
  %10 = tail call ptr @GetConfigFileContent(ptr noundef nonnull %9, i32 noundef signext 0) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #12
  %14 = trunc i64 %13 to i32
  tail call void @ParseMatrix(ptr noundef nonnull %10, i32 noundef signext %14)
  br label %17

15:                                               ; preds = %5
  %16 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull @errortext)
  br label %17

17:                                               ; preds = %15, %12
  tail call void @PatchMatrix()
  %18 = tail call i32 @putchar(i32 10)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) @UseDefaultScalingMatrix4x4Flag, i8 0, i64 12, i1 false)
  store i16 0, ptr getelementptr inbounds (i8, ptr @UseDefaultScalingMatrix8x8Flag, i64 2), align 2, !tbaa !13
  store i16 0, ptr @UseDefaultScalingMatrix8x8Flag, align 2, !tbaa !13
  tail call void @free(ptr noundef %10) #13
  br label %19

19:                                               ; preds = %17, %0
  ret void
}

declare dso_local ptr @GetConfigFileContent(ptr noundef, i32 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @CalculateQuantParam() local_unnamed_addr #10 {
  %1 = load ptr, ptr @active_sps, align 8, !tbaa !11
  %2 = getelementptr inbounds i8, ptr %1, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %0
  %6 = load ptr, ptr @active_pps, align 8, !tbaa !11
  %7 = getelementptr inbounds i8, ptr %6, i64 20
  %8 = load i32, ptr %7, align 4, !tbaa !23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %5
  %11 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !11
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !11
  %15 = getelementptr inbounds i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !11
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !11
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = getelementptr inbounds i8, ptr %22, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds i8, ptr %17, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = getelementptr inbounds i8, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds i8, ptr %21, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = getelementptr inbounds i8, ptr %30, i64 8
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = load ptr, ptr %11, align 8, !tbaa !11
  %34 = load ptr, ptr %14, align 8, !tbaa !11
  %35 = load ptr, ptr %18, align 8, !tbaa !11
  %36 = load ptr, ptr %22, align 8, !tbaa !11
  %37 = load ptr, ptr %26, align 8, !tbaa !11
  %38 = load ptr, ptr %30, align 8, !tbaa !11
  br label %66

39:                                               ; preds = %0
  %40 = getelementptr inbounds i8, ptr %1, i64 40
  %41 = load i32, ptr %40, align 4, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %1, i64 44
  %43 = getelementptr inbounds i8, ptr %1, i64 48
  %44 = getelementptr inbounds i8, ptr %1, i64 52
  %45 = load i32, ptr %44, align 4, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %1, i64 56
  %47 = getelementptr inbounds i8, ptr %1, i64 60
  %48 = load ptr, ptr @active_pps, align 8, !tbaa !11
  %49 = getelementptr inbounds i8, ptr %48, i64 20
  %50 = load i32, ptr %49, align 4, !tbaa !23
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %179, label %52

52:                                               ; preds = %5, %39
  %53 = phi i32 [ %45, %39 ], [ 0, %5 ]
  %54 = phi i32 [ %41, %39 ], [ 0, %5 ]
  %55 = phi ptr [ %48, %39 ], [ %6, %5 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 24
  %57 = load i32, ptr %56, align 4, !tbaa !6
  %58 = or i32 %54, %57
  %59 = getelementptr inbounds i8, ptr %55, i64 28
  %60 = getelementptr inbounds i8, ptr %55, i64 32
  %61 = getelementptr inbounds i8, ptr %55, i64 36
  %62 = load i32, ptr %61, align 4, !tbaa !6
  %63 = or i32 %53, %62
  %64 = getelementptr inbounds i8, ptr %55, i64 40
  %65 = getelementptr inbounds i8, ptr %55, i64 44
  br label %179

66:                                               ; preds = %10, %176
  %67 = phi i64 [ 0, %10 ], [ %177, %176 ]
  %68 = getelementptr inbounds ptr, ptr %13, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !11
  %70 = getelementptr inbounds ptr, ptr %16, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !11
  %72 = getelementptr inbounds ptr, ptr %20, i64 %67
  %73 = load ptr, ptr %72, align 8, !tbaa !11
  %74 = getelementptr inbounds ptr, ptr %24, i64 %67
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = getelementptr inbounds ptr, ptr %28, i64 %67
  %77 = load ptr, ptr %76, align 8, !tbaa !11
  %78 = getelementptr inbounds ptr, ptr %32, i64 %67
  %79 = load ptr, ptr %78, align 8, !tbaa !11
  %80 = getelementptr inbounds ptr, ptr %33, i64 %67
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = getelementptr inbounds ptr, ptr %34, i64 %67
  %83 = load ptr, ptr %82, align 8, !tbaa !11
  %84 = getelementptr inbounds ptr, ptr %35, i64 %67
  %85 = load ptr, ptr %84, align 8, !tbaa !11
  %86 = getelementptr inbounds ptr, ptr %36, i64 %67
  %87 = load ptr, ptr %86, align 8, !tbaa !11
  %88 = getelementptr inbounds ptr, ptr %37, i64 %67
  %89 = load ptr, ptr %88, align 8, !tbaa !11
  %90 = getelementptr inbounds ptr, ptr %38, i64 %67
  %91 = load ptr, ptr %90, align 8, !tbaa !11
  br label %92

92:                                               ; preds = %66, %92
  %93 = phi i64 [ 0, %66 ], [ %174, %92 ]
  %94 = getelementptr inbounds ptr, ptr %69, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !11
  %96 = getelementptr inbounds ptr, ptr %71, i64 %93
  %97 = load ptr, ptr %96, align 8, !tbaa !11
  %98 = getelementptr inbounds ptr, ptr %73, i64 %93
  %99 = load ptr, ptr %98, align 8, !tbaa !11
  %100 = getelementptr inbounds ptr, ptr %75, i64 %93
  %101 = load ptr, ptr %100, align 8, !tbaa !11
  %102 = getelementptr inbounds ptr, ptr %77, i64 %93
  %103 = load ptr, ptr %102, align 8, !tbaa !11
  %104 = getelementptr inbounds ptr, ptr %79, i64 %93
  %105 = load ptr, ptr %104, align 8, !tbaa !11
  %106 = getelementptr inbounds ptr, ptr %81, i64 %93
  %107 = load ptr, ptr %106, align 8, !tbaa !11
  %108 = getelementptr inbounds ptr, ptr %83, i64 %93
  %109 = load ptr, ptr %108, align 8, !tbaa !11
  %110 = getelementptr inbounds ptr, ptr %85, i64 %93
  %111 = load ptr, ptr %110, align 8, !tbaa !11
  %112 = getelementptr inbounds ptr, ptr %87, i64 %93
  %113 = load ptr, ptr %112, align 8, !tbaa !11
  %114 = getelementptr inbounds ptr, ptr %89, i64 %93
  %115 = load ptr, ptr %114, align 8, !tbaa !11
  %116 = getelementptr inbounds ptr, ptr %91, i64 %93
  %117 = load ptr, ptr %116, align 8, !tbaa !11
  %118 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %67, i64 %93, i64 0
  %119 = load i32, ptr %118, align 4, !tbaa !6
  store i32 %119, ptr %95, align 4, !tbaa !6
  %120 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %67, i64 %93, i64 0
  %121 = load i32, ptr %120, align 4, !tbaa !6
  %122 = shl i32 %121, 4
  store i32 %122, ptr %97, align 4, !tbaa !6
  store i32 %119, ptr %99, align 4, !tbaa !6
  store i32 %122, ptr %101, align 4, !tbaa !6
  store i32 %119, ptr %103, align 4, !tbaa !6
  store i32 %122, ptr %105, align 4, !tbaa !6
  store i32 %119, ptr %107, align 4, !tbaa !6
  store i32 %122, ptr %109, align 4, !tbaa !6
  store i32 %119, ptr %111, align 4, !tbaa !6
  store i32 %122, ptr %113, align 4, !tbaa !6
  store i32 %119, ptr %115, align 4, !tbaa !6
  store i32 %122, ptr %117, align 4, !tbaa !6
  %123 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %67, i64 %93, i64 1
  %124 = load i32, ptr %123, align 4, !tbaa !6
  %125 = getelementptr inbounds i8, ptr %95, i64 4
  store i32 %124, ptr %125, align 4, !tbaa !6
  %126 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %67, i64 %93, i64 1
  %127 = load i32, ptr %126, align 4, !tbaa !6
  %128 = shl i32 %127, 4
  %129 = getelementptr inbounds i8, ptr %97, i64 4
  store i32 %128, ptr %129, align 4, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %99, i64 4
  store i32 %124, ptr %130, align 4, !tbaa !6
  %131 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 %128, ptr %131, align 4, !tbaa !6
  %132 = getelementptr inbounds i8, ptr %103, i64 4
  store i32 %124, ptr %132, align 4, !tbaa !6
  %133 = getelementptr inbounds i8, ptr %105, i64 4
  store i32 %128, ptr %133, align 4, !tbaa !6
  %134 = getelementptr inbounds i8, ptr %107, i64 4
  store i32 %124, ptr %134, align 4, !tbaa !6
  %135 = getelementptr inbounds i8, ptr %109, i64 4
  store i32 %128, ptr %135, align 4, !tbaa !6
  %136 = getelementptr inbounds i8, ptr %111, i64 4
  store i32 %124, ptr %136, align 4, !tbaa !6
  %137 = getelementptr inbounds i8, ptr %113, i64 4
  store i32 %128, ptr %137, align 4, !tbaa !6
  %138 = getelementptr inbounds i8, ptr %115, i64 4
  store i32 %124, ptr %138, align 4, !tbaa !6
  %139 = getelementptr inbounds i8, ptr %117, i64 4
  store i32 %128, ptr %139, align 4, !tbaa !6
  %140 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %67, i64 %93, i64 2
  %141 = load i32, ptr %140, align 4, !tbaa !6
  %142 = getelementptr inbounds i8, ptr %95, i64 8
  store i32 %141, ptr %142, align 4, !tbaa !6
  %143 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %67, i64 %93, i64 2
  %144 = load i32, ptr %143, align 4, !tbaa !6
  %145 = shl i32 %144, 4
  %146 = getelementptr inbounds i8, ptr %97, i64 8
  store i32 %145, ptr %146, align 4, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %99, i64 8
  store i32 %141, ptr %147, align 4, !tbaa !6
  %148 = getelementptr inbounds i8, ptr %101, i64 8
  store i32 %145, ptr %148, align 4, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %103, i64 8
  store i32 %141, ptr %149, align 4, !tbaa !6
  %150 = getelementptr inbounds i8, ptr %105, i64 8
  store i32 %145, ptr %150, align 4, !tbaa !6
  %151 = getelementptr inbounds i8, ptr %107, i64 8
  store i32 %141, ptr %151, align 4, !tbaa !6
  %152 = getelementptr inbounds i8, ptr %109, i64 8
  store i32 %145, ptr %152, align 4, !tbaa !6
  %153 = getelementptr inbounds i8, ptr %111, i64 8
  store i32 %141, ptr %153, align 4, !tbaa !6
  %154 = getelementptr inbounds i8, ptr %113, i64 8
  store i32 %145, ptr %154, align 4, !tbaa !6
  %155 = getelementptr inbounds i8, ptr %115, i64 8
  store i32 %141, ptr %155, align 4, !tbaa !6
  %156 = getelementptr inbounds i8, ptr %117, i64 8
  store i32 %145, ptr %156, align 4, !tbaa !6
  %157 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %67, i64 %93, i64 3
  %158 = load i32, ptr %157, align 4, !tbaa !6
  %159 = getelementptr inbounds i8, ptr %95, i64 12
  store i32 %158, ptr %159, align 4, !tbaa !6
  %160 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %67, i64 %93, i64 3
  %161 = load i32, ptr %160, align 4, !tbaa !6
  %162 = shl i32 %161, 4
  %163 = getelementptr inbounds i8, ptr %97, i64 12
  store i32 %162, ptr %163, align 4, !tbaa !6
  %164 = getelementptr inbounds i8, ptr %99, i64 12
  store i32 %158, ptr %164, align 4, !tbaa !6
  %165 = getelementptr inbounds i8, ptr %101, i64 12
  store i32 %162, ptr %165, align 4, !tbaa !6
  %166 = getelementptr inbounds i8, ptr %103, i64 12
  store i32 %158, ptr %166, align 4, !tbaa !6
  %167 = getelementptr inbounds i8, ptr %105, i64 12
  store i32 %162, ptr %167, align 4, !tbaa !6
  %168 = getelementptr inbounds i8, ptr %107, i64 12
  store i32 %158, ptr %168, align 4, !tbaa !6
  %169 = getelementptr inbounds i8, ptr %109, i64 12
  store i32 %162, ptr %169, align 4, !tbaa !6
  %170 = getelementptr inbounds i8, ptr %111, i64 12
  store i32 %158, ptr %170, align 4, !tbaa !6
  %171 = getelementptr inbounds i8, ptr %113, i64 12
  store i32 %162, ptr %171, align 4, !tbaa !6
  %172 = getelementptr inbounds i8, ptr %115, i64 12
  store i32 %158, ptr %172, align 4, !tbaa !6
  %173 = getelementptr inbounds i8, ptr %117, i64 12
  store i32 %162, ptr %173, align 4, !tbaa !6
  %174 = add nuw nsw i64 %93, 1
  %175 = icmp eq i64 %174, 4
  br i1 %175, label %176, label %92

176:                                              ; preds = %92
  %177 = add nuw nsw i64 %67, 1
  %178 = icmp eq i64 %177, 6
  br i1 %178, label %438, label %66

179:                                              ; preds = %52, %39
  %180 = phi i32 [ %41, %39 ], [ %58, %52 ]
  %181 = phi ptr [ %42, %39 ], [ %59, %52 ]
  %182 = phi ptr [ %43, %39 ], [ %60, %52 ]
  %183 = phi i32 [ %45, %39 ], [ %63, %52 ]
  %184 = phi ptr [ %46, %39 ], [ %64, %52 ]
  %185 = phi ptr [ %47, %39 ], [ %65, %52 ]
  %186 = load i32, ptr %185, align 4, !tbaa !6
  %187 = load i32, ptr %184, align 4, !tbaa !6
  %188 = load i32, ptr %182, align 4, !tbaa !6
  %189 = load i32, ptr %181, align 4, !tbaa !6
  %190 = icmp eq i32 %180, 0
  %191 = icmp eq i32 %189, 0
  %192 = icmp eq i32 %188, 0
  %193 = icmp eq i32 %183, 0
  %194 = icmp eq i32 %187, 0
  %195 = icmp eq i32 %186, 0
  br label %196

196:                                              ; preds = %179, %435
  %197 = phi i64 [ 0, %179 ], [ %436, %435 ]
  br label %198

198:                                              ; preds = %196, %432
  %199 = phi i64 [ 0, %196 ], [ %433, %432 ]
  %200 = load ptr, ptr @LevelScale4x4Luma, align 8
  %201 = getelementptr inbounds i8, ptr %200, i64 8
  %202 = load ptr, ptr @InvLevelScale4x4Luma, align 8
  %203 = getelementptr inbounds i8, ptr %202, i64 8
  %204 = load i16, ptr getelementptr inbounds (i8, ptr @UseDefaultScalingMatrix4x4Flag, i64 2), align 2
  %205 = icmp eq i16 %204, 0
  %206 = load ptr, ptr @LevelScale4x4Chroma, align 8
  %207 = load ptr, ptr @InvLevelScale4x4Chroma, align 8
  %208 = load i16, ptr getelementptr inbounds (i8, ptr @UseDefaultScalingMatrix4x4Flag, i64 4), align 2
  %209 = icmp eq i16 %208, 0
  %210 = getelementptr inbounds i8, ptr %206, i64 8
  %211 = getelementptr inbounds i8, ptr %207, i64 8
  %212 = load i16, ptr getelementptr inbounds (i8, ptr @UseDefaultScalingMatrix4x4Flag, i64 8), align 2
  %213 = icmp eq i16 %212, 0
  %214 = load i16, ptr getelementptr inbounds (i8, ptr @UseDefaultScalingMatrix4x4Flag, i64 10), align 2
  %215 = icmp eq i16 %214, 0
  %216 = load ptr, ptr %201, align 8, !tbaa !11
  %217 = getelementptr inbounds ptr, ptr %216, i64 %197
  %218 = load ptr, ptr %217, align 8, !tbaa !11
  %219 = getelementptr inbounds ptr, ptr %218, i64 %199
  %220 = load ptr, ptr %219, align 8, !tbaa !11
  %221 = load ptr, ptr %203, align 8, !tbaa !11
  %222 = getelementptr inbounds ptr, ptr %221, i64 %197
  %223 = load ptr, ptr %222, align 8, !tbaa !11
  %224 = getelementptr inbounds ptr, ptr %223, i64 %199
  %225 = load ptr, ptr %224, align 8, !tbaa !11
  %226 = load ptr, ptr %207, align 8, !tbaa !11
  %227 = getelementptr inbounds i8, ptr %226, i64 8
  %228 = load ptr, ptr %227, align 8, !tbaa !11
  %229 = getelementptr inbounds ptr, ptr %228, i64 %197
  %230 = load ptr, ptr %229, align 8, !tbaa !11
  %231 = getelementptr inbounds ptr, ptr %230, i64 %199
  %232 = load ptr, ptr %231, align 8, !tbaa !11
  %233 = load ptr, ptr %211, align 8, !tbaa !11
  %234 = getelementptr inbounds i8, ptr %233, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !11
  %236 = getelementptr inbounds ptr, ptr %235, i64 %197
  %237 = load ptr, ptr %236, align 8, !tbaa !11
  %238 = getelementptr inbounds ptr, ptr %237, i64 %199
  %239 = load ptr, ptr %238, align 8, !tbaa !11
  %240 = load ptr, ptr %200, align 8, !tbaa !11
  %241 = getelementptr inbounds ptr, ptr %240, i64 %197
  %242 = load ptr, ptr %241, align 8, !tbaa !11
  %243 = getelementptr inbounds ptr, ptr %242, i64 %199
  %244 = load ptr, ptr %243, align 8, !tbaa !11
  %245 = load ptr, ptr %202, align 8, !tbaa !11
  %246 = getelementptr inbounds ptr, ptr %245, i64 %197
  %247 = load ptr, ptr %246, align 8, !tbaa !11
  %248 = getelementptr inbounds ptr, ptr %247, i64 %199
  %249 = load ptr, ptr %248, align 8, !tbaa !11
  %250 = load ptr, ptr %226, align 8, !tbaa !11
  %251 = getelementptr inbounds ptr, ptr %250, i64 %197
  %252 = load ptr, ptr %251, align 8, !tbaa !11
  %253 = getelementptr inbounds ptr, ptr %252, i64 %199
  %254 = load ptr, ptr %253, align 8, !tbaa !11
  %255 = load ptr, ptr %233, align 8, !tbaa !11
  %256 = getelementptr inbounds ptr, ptr %255, i64 %197
  %257 = load ptr, ptr %256, align 8, !tbaa !11
  %258 = getelementptr inbounds ptr, ptr %257, i64 %199
  %259 = load ptr, ptr %258, align 8, !tbaa !11
  br label %260

260:                                              ; preds = %198, %427
  %261 = phi i64 [ 0, %198 ], [ %430, %427 ]
  %262 = shl nuw nsw i64 %261, 2
  %263 = add nuw nsw i64 %262, %199
  %264 = load i16, ptr @UseDefaultScalingMatrix4x4Flag, align 2
  %265 = icmp ne i16 %264, 0
  %266 = select i1 %190, i1 true, i1 %265
  %267 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %197, i64 %199, i64 %261
  %268 = load i32, ptr %267, align 4, !tbaa !6
  %269 = shl i32 %268, 4
  %270 = getelementptr inbounds i32, ptr %220, i64 %261
  %271 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %197, i64 %199, i64 %261
  br i1 %266, label %272, label %279

272:                                              ; preds = %260
  %273 = getelementptr inbounds [16 x i16], ptr @Quant_intra_default, i64 0, i64 %263
  %274 = load i16, ptr %273, align 2, !tbaa !13
  %275 = sext i16 %274 to i32
  %276 = sdiv i32 %269, %275
  store i32 %276, ptr %270, align 4, !tbaa !6
  %277 = load i32, ptr %271, align 4, !tbaa !6
  %278 = mul nsw i32 %277, %275
  br label %286

279:                                              ; preds = %260
  %280 = getelementptr inbounds [16 x i16], ptr @ScalingList4x4, i64 0, i64 %263
  %281 = load i16, ptr %280, align 2, !tbaa !13
  %282 = sext i16 %281 to i32
  %283 = sdiv i32 %269, %282
  store i32 %283, ptr %270, align 4, !tbaa !6
  %284 = load i32, ptr %271, align 4, !tbaa !6
  %285 = mul nsw i32 %284, %282
  br label %286

286:                                              ; preds = %279, %272
  %287 = phi i32 [ %285, %279 ], [ %278, %272 ]
  %288 = phi i32 [ %284, %279 ], [ %277, %272 ]
  %289 = getelementptr inbounds i32, ptr %225, i64 %261
  store i32 %287, ptr %289, align 4, !tbaa !6
  br i1 %191, label %290, label %303

290:                                              ; preds = %286
  %291 = getelementptr inbounds i32, ptr %220, i64 %261
  %292 = load i32, ptr %291, align 4, !tbaa !6
  %293 = load ptr, ptr %206, align 8, !tbaa !11
  %294 = getelementptr inbounds i8, ptr %293, i64 8
  %295 = load ptr, ptr %294, align 8, !tbaa !11
  %296 = getelementptr inbounds ptr, ptr %295, i64 %197
  %297 = load ptr, ptr %296, align 8, !tbaa !11
  %298 = getelementptr inbounds ptr, ptr %297, i64 %199
  %299 = load ptr, ptr %298, align 8, !tbaa !11
  %300 = getelementptr inbounds i32, ptr %299, i64 %261
  store i32 %292, ptr %300, align 4, !tbaa !6
  %301 = getelementptr inbounds i32, ptr %225, i64 %261
  %302 = load i32, ptr %301, align 4, !tbaa !6
  br label %320

303:                                              ; preds = %286
  %304 = shl i32 %268, 4
  %305 = getelementptr inbounds [16 x i16], ptr @Quant_intra_default, i64 0, i64 %263
  %306 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @ScalingList4x4, i64 32), i64 0, i64 %263
  %307 = select i1 %205, ptr %306, ptr %305
  %308 = load i16, ptr %307, align 2, !tbaa !13
  %309 = sext i16 %308 to i32
  %310 = sdiv i32 %304, %309
  %311 = load ptr, ptr %206, align 8, !tbaa !11
  %312 = getelementptr inbounds i8, ptr %311, i64 8
  %313 = load ptr, ptr %312, align 8, !tbaa !11
  %314 = getelementptr inbounds ptr, ptr %313, i64 %197
  %315 = load ptr, ptr %314, align 8, !tbaa !11
  %316 = getelementptr inbounds ptr, ptr %315, i64 %199
  %317 = load ptr, ptr %316, align 8, !tbaa !11
  %318 = getelementptr inbounds i32, ptr %317, i64 %261
  store i32 %310, ptr %318, align 4, !tbaa !6
  %319 = mul nsw i32 %288, %309
  br label %320

320:                                              ; preds = %303, %290
  %321 = phi i32 [ %319, %303 ], [ %302, %290 ]
  %322 = phi ptr [ %317, %303 ], [ %299, %290 ]
  %323 = phi ptr [ %311, %303 ], [ %293, %290 ]
  %324 = getelementptr inbounds i32, ptr %232, i64 %261
  store i32 %321, ptr %324, align 4, !tbaa !6
  br i1 %192, label %325, label %338

325:                                              ; preds = %320
  %326 = getelementptr inbounds i32, ptr %322, i64 %261
  %327 = load i32, ptr %326, align 4, !tbaa !6
  %328 = load ptr, ptr %210, align 8, !tbaa !11
  %329 = getelementptr inbounds i8, ptr %328, i64 8
  %330 = load ptr, ptr %329, align 8, !tbaa !11
  %331 = getelementptr inbounds ptr, ptr %330, i64 %197
  %332 = load ptr, ptr %331, align 8, !tbaa !11
  %333 = getelementptr inbounds ptr, ptr %332, i64 %199
  %334 = load ptr, ptr %333, align 8, !tbaa !11
  %335 = getelementptr inbounds i32, ptr %334, i64 %261
  store i32 %327, ptr %335, align 4, !tbaa !6
  %336 = getelementptr inbounds i32, ptr %232, i64 %261
  %337 = load i32, ptr %336, align 4, !tbaa !6
  br label %355

338:                                              ; preds = %320
  %339 = shl i32 %268, 4
  %340 = getelementptr inbounds [16 x i16], ptr @Quant_intra_default, i64 0, i64 %263
  %341 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @ScalingList4x4, i64 64), i64 0, i64 %263
  %342 = select i1 %209, ptr %341, ptr %340
  %343 = load i16, ptr %342, align 2, !tbaa !13
  %344 = sext i16 %343 to i32
  %345 = sdiv i32 %339, %344
  %346 = load ptr, ptr %210, align 8, !tbaa !11
  %347 = getelementptr inbounds i8, ptr %346, i64 8
  %348 = load ptr, ptr %347, align 8, !tbaa !11
  %349 = getelementptr inbounds ptr, ptr %348, i64 %197
  %350 = load ptr, ptr %349, align 8, !tbaa !11
  %351 = getelementptr inbounds ptr, ptr %350, i64 %199
  %352 = load ptr, ptr %351, align 8, !tbaa !11
  %353 = getelementptr inbounds i32, ptr %352, i64 %261
  store i32 %345, ptr %353, align 4, !tbaa !6
  %354 = mul nsw i32 %288, %344
  br label %355

355:                                              ; preds = %338, %325
  %356 = phi i32 [ %354, %338 ], [ %337, %325 ]
  %357 = phi ptr [ %346, %338 ], [ %328, %325 ]
  %358 = getelementptr inbounds i32, ptr %239, i64 %261
  store i32 %356, ptr %358, align 4, !tbaa !6
  %359 = load i16, ptr getelementptr inbounds (i8, ptr @UseDefaultScalingMatrix4x4Flag, i64 6), align 2
  %360 = icmp ne i16 %359, 0
  %361 = select i1 %193, i1 true, i1 %360
  %362 = shl i32 %268, 4
  %363 = select i1 %361, ptr @Quant_inter_default, ptr getelementptr inbounds (i8, ptr @ScalingList4x4, i64 96)
  %364 = getelementptr inbounds [16 x i16], ptr %363, i64 0, i64 %263
  %365 = load i16, ptr %364, align 2, !tbaa !13
  %366 = sext i16 %365 to i32
  %367 = sdiv i32 %362, %366
  %368 = getelementptr inbounds i32, ptr %244, i64 %261
  store i32 %367, ptr %368, align 4, !tbaa !6
  %369 = mul nsw i32 %288, %366
  %370 = getelementptr inbounds i32, ptr %249, i64 %261
  store i32 %369, ptr %370, align 4, !tbaa !6
  br i1 %194, label %371, label %382

371:                                              ; preds = %355
  %372 = getelementptr inbounds i32, ptr %244, i64 %261
  %373 = load i32, ptr %372, align 4, !tbaa !6
  %374 = load ptr, ptr %323, align 8, !tbaa !11
  %375 = getelementptr inbounds ptr, ptr %374, i64 %197
  %376 = load ptr, ptr %375, align 8, !tbaa !11
  %377 = getelementptr inbounds ptr, ptr %376, i64 %199
  %378 = load ptr, ptr %377, align 8, !tbaa !11
  %379 = getelementptr inbounds i32, ptr %378, i64 %261
  store i32 %373, ptr %379, align 4, !tbaa !6
  %380 = getelementptr inbounds i32, ptr %249, i64 %261
  %381 = load i32, ptr %380, align 4, !tbaa !6
  br label %397

382:                                              ; preds = %355
  %383 = shl i32 %268, 4
  %384 = getelementptr inbounds [16 x i16], ptr @Quant_inter_default, i64 0, i64 %263
  %385 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @ScalingList4x4, i64 128), i64 0, i64 %263
  %386 = select i1 %213, ptr %385, ptr %384
  %387 = load i16, ptr %386, align 2, !tbaa !13
  %388 = sext i16 %387 to i32
  %389 = sdiv i32 %383, %388
  %390 = load ptr, ptr %323, align 8, !tbaa !11
  %391 = getelementptr inbounds ptr, ptr %390, i64 %197
  %392 = load ptr, ptr %391, align 8, !tbaa !11
  %393 = getelementptr inbounds ptr, ptr %392, i64 %199
  %394 = load ptr, ptr %393, align 8, !tbaa !11
  %395 = getelementptr inbounds i32, ptr %394, i64 %261
  store i32 %389, ptr %395, align 4, !tbaa !6
  %396 = mul nsw i32 %288, %388
  br label %397

397:                                              ; preds = %382, %371
  %398 = phi i32 [ %396, %382 ], [ %381, %371 ]
  %399 = phi ptr [ %394, %382 ], [ %378, %371 ]
  %400 = getelementptr inbounds i32, ptr %254, i64 %261
  store i32 %398, ptr %400, align 4, !tbaa !6
  br i1 %195, label %401, label %412

401:                                              ; preds = %397
  %402 = getelementptr inbounds i32, ptr %399, i64 %261
  %403 = load i32, ptr %402, align 4, !tbaa !6
  %404 = load ptr, ptr %357, align 8, !tbaa !11
  %405 = getelementptr inbounds ptr, ptr %404, i64 %197
  %406 = load ptr, ptr %405, align 8, !tbaa !11
  %407 = getelementptr inbounds ptr, ptr %406, i64 %199
  %408 = load ptr, ptr %407, align 8, !tbaa !11
  %409 = getelementptr inbounds i32, ptr %408, i64 %261
  store i32 %403, ptr %409, align 4, !tbaa !6
  %410 = getelementptr inbounds i32, ptr %254, i64 %261
  %411 = load i32, ptr %410, align 4, !tbaa !6
  br label %427

412:                                              ; preds = %397
  %413 = shl i32 %268, 4
  %414 = getelementptr inbounds [16 x i16], ptr @Quant_inter_default, i64 0, i64 %263
  %415 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds (i8, ptr @ScalingList4x4, i64 160), i64 0, i64 %263
  %416 = select i1 %215, ptr %415, ptr %414
  %417 = load i16, ptr %416, align 2, !tbaa !13
  %418 = sext i16 %417 to i32
  %419 = sdiv i32 %413, %418
  %420 = load ptr, ptr %357, align 8, !tbaa !11
  %421 = getelementptr inbounds ptr, ptr %420, i64 %197
  %422 = load ptr, ptr %421, align 8, !tbaa !11
  %423 = getelementptr inbounds ptr, ptr %422, i64 %199
  %424 = load ptr, ptr %423, align 8, !tbaa !11
  %425 = getelementptr inbounds i32, ptr %424, i64 %261
  store i32 %419, ptr %425, align 4, !tbaa !6
  %426 = mul nsw i32 %288, %418
  br label %427

427:                                              ; preds = %401, %412
  %428 = phi i32 [ %411, %401 ], [ %426, %412 ]
  %429 = getelementptr inbounds i32, ptr %259, i64 %261
  store i32 %428, ptr %429, align 4, !tbaa !6
  %430 = add nuw nsw i64 %261, 1
  %431 = icmp eq i64 %430, 4
  br i1 %431, label %432, label %260

432:                                              ; preds = %427
  %433 = add nuw nsw i64 %199, 1
  %434 = icmp eq i64 %433, 4
  br i1 %434, label %435, label %198

435:                                              ; preds = %432
  %436 = add nuw nsw i64 %197, 1
  %437 = icmp eq i64 %436, 6
  br i1 %437, label %438, label %196

438:                                              ; preds = %435, %176
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @CalculateQuant8Param() local_unnamed_addr #10 {
  %1 = load ptr, ptr @active_sps, align 8, !tbaa !11
  %2 = getelementptr inbounds i8, ptr %1, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = load ptr, ptr @active_pps, align 8, !tbaa !11
  %7 = getelementptr inbounds i8, ptr %6, i64 20
  %8 = load i32, ptr %7, align 4, !tbaa !23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !11
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !11
  %15 = getelementptr inbounds i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = load ptr, ptr %11, align 8, !tbaa !11
  %18 = load ptr, ptr %14, align 8, !tbaa !11
  br label %38

19:                                               ; preds = %0
  %20 = getelementptr i8, ptr %1, i64 64
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = getelementptr i8, ptr %1, i64 68
  %23 = load i32, ptr %22, align 4, !tbaa !6
  %24 = load ptr, ptr @active_pps, align 8, !tbaa !11
  %25 = getelementptr inbounds i8, ptr %24, i64 20
  %26 = load i32, ptr %25, align 4, !tbaa !23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %131, label %28

28:                                               ; preds = %5, %19
  %29 = phi i32 [ %21, %19 ], [ 0, %5 ]
  %30 = phi i32 [ %23, %19 ], [ 0, %5 ]
  %31 = phi ptr [ %24, %19 ], [ %6, %5 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 48
  %33 = load i32, ptr %32, align 4, !tbaa !6
  %34 = or i32 %29, %33
  %35 = getelementptr inbounds i8, ptr %31, i64 52
  %36 = load i32, ptr %35, align 4, !tbaa !6
  %37 = or i32 %30, %36
  br label %131

38:                                               ; preds = %10, %128
  %39 = phi i64 [ 0, %10 ], [ %129, %128 ]
  %40 = getelementptr inbounds ptr, ptr %13, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  %42 = getelementptr inbounds ptr, ptr %16, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = getelementptr inbounds ptr, ptr %17, i64 %39
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  %46 = getelementptr inbounds ptr, ptr %18, i64 %39
  %47 = load ptr, ptr %46, align 8, !tbaa !11
  br label %48

48:                                               ; preds = %38, %48
  %49 = phi i64 [ 0, %38 ], [ %126, %48 ]
  %50 = getelementptr inbounds ptr, ptr %41, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = getelementptr inbounds ptr, ptr %43, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = getelementptr inbounds ptr, ptr %45, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  %56 = getelementptr inbounds ptr, ptr %47, i64 %49
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %39, i64 %49, i64 0
  %59 = load i32, ptr %58, align 4, !tbaa !6
  store i32 %59, ptr %51, align 4, !tbaa !6
  %60 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %39, i64 %49, i64 0
  %61 = load i32, ptr %60, align 4, !tbaa !6
  %62 = shl i32 %61, 4
  store i32 %62, ptr %53, align 4, !tbaa !6
  store i32 %59, ptr %55, align 4, !tbaa !6
  store i32 %62, ptr %57, align 4, !tbaa !6
  %63 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %39, i64 %49, i64 1
  %64 = load i32, ptr %63, align 4, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %51, i64 4
  store i32 %64, ptr %65, align 4, !tbaa !6
  %66 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %39, i64 %49, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !6
  %68 = shl i32 %67, 4
  %69 = getelementptr inbounds i8, ptr %53, i64 4
  store i32 %68, ptr %69, align 4, !tbaa !6
  %70 = getelementptr inbounds i8, ptr %55, i64 4
  store i32 %64, ptr %70, align 4, !tbaa !6
  %71 = getelementptr inbounds i8, ptr %57, i64 4
  store i32 %68, ptr %71, align 4, !tbaa !6
  %72 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %39, i64 %49, i64 2
  %73 = load i32, ptr %72, align 4, !tbaa !6
  %74 = getelementptr inbounds i8, ptr %51, i64 8
  store i32 %73, ptr %74, align 4, !tbaa !6
  %75 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %39, i64 %49, i64 2
  %76 = load i32, ptr %75, align 4, !tbaa !6
  %77 = shl i32 %76, 4
  %78 = getelementptr inbounds i8, ptr %53, i64 8
  store i32 %77, ptr %78, align 4, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %55, i64 8
  store i32 %73, ptr %79, align 4, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %57, i64 8
  store i32 %77, ptr %80, align 4, !tbaa !6
  %81 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %39, i64 %49, i64 3
  %82 = load i32, ptr %81, align 4, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %51, i64 12
  store i32 %82, ptr %83, align 4, !tbaa !6
  %84 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %39, i64 %49, i64 3
  %85 = load i32, ptr %84, align 4, !tbaa !6
  %86 = shl i32 %85, 4
  %87 = getelementptr inbounds i8, ptr %53, i64 12
  store i32 %86, ptr %87, align 4, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %55, i64 12
  store i32 %82, ptr %88, align 4, !tbaa !6
  %89 = getelementptr inbounds i8, ptr %57, i64 12
  store i32 %86, ptr %89, align 4, !tbaa !6
  %90 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %39, i64 %49, i64 4
  %91 = load i32, ptr %90, align 4, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %51, i64 16
  store i32 %91, ptr %92, align 4, !tbaa !6
  %93 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %39, i64 %49, i64 4
  %94 = load i32, ptr %93, align 4, !tbaa !6
  %95 = shl i32 %94, 4
  %96 = getelementptr inbounds i8, ptr %53, i64 16
  store i32 %95, ptr %96, align 4, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %55, i64 16
  store i32 %91, ptr %97, align 4, !tbaa !6
  %98 = getelementptr inbounds i8, ptr %57, i64 16
  store i32 %95, ptr %98, align 4, !tbaa !6
  %99 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %39, i64 %49, i64 5
  %100 = load i32, ptr %99, align 4, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %51, i64 20
  store i32 %100, ptr %101, align 4, !tbaa !6
  %102 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %39, i64 %49, i64 5
  %103 = load i32, ptr %102, align 4, !tbaa !6
  %104 = shl i32 %103, 4
  %105 = getelementptr inbounds i8, ptr %53, i64 20
  store i32 %104, ptr %105, align 4, !tbaa !6
  %106 = getelementptr inbounds i8, ptr %55, i64 20
  store i32 %100, ptr %106, align 4, !tbaa !6
  %107 = getelementptr inbounds i8, ptr %57, i64 20
  store i32 %104, ptr %107, align 4, !tbaa !6
  %108 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %39, i64 %49, i64 6
  %109 = load i32, ptr %108, align 4, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %51, i64 24
  store i32 %109, ptr %110, align 4, !tbaa !6
  %111 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %39, i64 %49, i64 6
  %112 = load i32, ptr %111, align 4, !tbaa !6
  %113 = shl i32 %112, 4
  %114 = getelementptr inbounds i8, ptr %53, i64 24
  store i32 %113, ptr %114, align 4, !tbaa !6
  %115 = getelementptr inbounds i8, ptr %55, i64 24
  store i32 %109, ptr %115, align 4, !tbaa !6
  %116 = getelementptr inbounds i8, ptr %57, i64 24
  store i32 %113, ptr %116, align 4, !tbaa !6
  %117 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %39, i64 %49, i64 7
  %118 = load i32, ptr %117, align 4, !tbaa !6
  %119 = getelementptr inbounds i8, ptr %51, i64 28
  store i32 %118, ptr %119, align 4, !tbaa !6
  %120 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %39, i64 %49, i64 7
  %121 = load i32, ptr %120, align 4, !tbaa !6
  %122 = shl i32 %121, 4
  %123 = getelementptr inbounds i8, ptr %53, i64 28
  store i32 %122, ptr %123, align 4, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %55, i64 28
  store i32 %118, ptr %124, align 4, !tbaa !6
  %125 = getelementptr inbounds i8, ptr %57, i64 28
  store i32 %122, ptr %125, align 4, !tbaa !6
  %126 = add nuw nsw i64 %49, 1
  %127 = icmp eq i64 %126, 8
  br i1 %127, label %128, label %48

128:                                              ; preds = %48
  %129 = add nuw nsw i64 %39, 1
  %130 = icmp eq i64 %129, 6
  br i1 %130, label %214, label %38

131:                                              ; preds = %28, %19
  %132 = phi i32 [ %23, %19 ], [ %37, %28 ]
  %133 = phi i32 [ %21, %19 ], [ %34, %28 ]
  %134 = icmp eq i32 %133, 0
  %135 = icmp eq i32 %132, 0
  br label %136

136:                                              ; preds = %131, %211
  %137 = phi i64 [ 0, %131 ], [ %212, %211 ]
  br label %138

138:                                              ; preds = %136, %208
  %139 = phi i64 [ 0, %136 ], [ %209, %208 ]
  %140 = load ptr, ptr @LevelScale8x8Luma, align 8
  %141 = getelementptr inbounds i8, ptr %140, i64 8
  %142 = load ptr, ptr @InvLevelScale8x8Luma, align 8
  %143 = getelementptr inbounds i8, ptr %142, i64 8
  %144 = load ptr, ptr %141, align 8, !tbaa !11
  %145 = getelementptr inbounds ptr, ptr %144, i64 %137
  %146 = load ptr, ptr %145, align 8, !tbaa !11
  %147 = getelementptr inbounds ptr, ptr %146, i64 %139
  %148 = load ptr, ptr %147, align 8, !tbaa !11
  %149 = load ptr, ptr %143, align 8, !tbaa !11
  %150 = getelementptr inbounds ptr, ptr %149, i64 %137
  %151 = load ptr, ptr %150, align 8, !tbaa !11
  %152 = getelementptr inbounds ptr, ptr %151, i64 %139
  %153 = load ptr, ptr %152, align 8, !tbaa !11
  %154 = load ptr, ptr %140, align 8, !tbaa !11
  %155 = getelementptr inbounds ptr, ptr %154, i64 %137
  %156 = load ptr, ptr %155, align 8, !tbaa !11
  %157 = getelementptr inbounds ptr, ptr %156, i64 %139
  %158 = load ptr, ptr %157, align 8, !tbaa !11
  %159 = load ptr, ptr %142, align 8, !tbaa !11
  %160 = getelementptr inbounds ptr, ptr %159, i64 %137
  %161 = load ptr, ptr %160, align 8, !tbaa !11
  %162 = getelementptr inbounds ptr, ptr %161, i64 %139
  %163 = load ptr, ptr %162, align 8, !tbaa !11
  br label %164

164:                                              ; preds = %138, %190
  %165 = phi i64 [ 0, %138 ], [ %206, %190 ]
  %166 = shl nuw nsw i64 %165, 3
  %167 = add nuw nsw i64 %166, %139
  %168 = load i16, ptr @UseDefaultScalingMatrix8x8Flag, align 2
  %169 = icmp ne i16 %168, 0
  %170 = select i1 %134, i1 true, i1 %169
  %171 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %137, i64 %139, i64 %165
  %172 = load i32, ptr %171, align 4, !tbaa !6
  %173 = shl i32 %172, 4
  %174 = getelementptr inbounds i32, ptr %148, i64 %165
  %175 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %137, i64 %139, i64 %165
  br i1 %170, label %176, label %183

176:                                              ; preds = %164
  %177 = getelementptr inbounds [64 x i16], ptr @Quant8_intra_default, i64 0, i64 %167
  %178 = load i16, ptr %177, align 2, !tbaa !13
  %179 = sext i16 %178 to i32
  %180 = sdiv i32 %173, %179
  store i32 %180, ptr %174, align 4, !tbaa !6
  %181 = load i32, ptr %175, align 4, !tbaa !6
  %182 = mul nsw i32 %181, %179
  br label %190

183:                                              ; preds = %164
  %184 = getelementptr inbounds [64 x i16], ptr @ScalingList8x8, i64 0, i64 %167
  %185 = load i16, ptr %184, align 2, !tbaa !13
  %186 = sext i16 %185 to i32
  %187 = sdiv i32 %173, %186
  store i32 %187, ptr %174, align 4, !tbaa !6
  %188 = load i32, ptr %175, align 4, !tbaa !6
  %189 = mul nsw i32 %188, %186
  br label %190

190:                                              ; preds = %183, %176
  %191 = phi i32 [ %189, %183 ], [ %182, %176 ]
  %192 = phi i32 [ %188, %183 ], [ %181, %176 ]
  %193 = getelementptr inbounds i32, ptr %153, i64 %165
  store i32 %191, ptr %193, align 4, !tbaa !6
  %194 = load i16, ptr getelementptr inbounds (i8, ptr @UseDefaultScalingMatrix8x8Flag, i64 2), align 2
  %195 = icmp ne i16 %194, 0
  %196 = select i1 %135, i1 true, i1 %195
  %197 = shl i32 %172, 4
  %198 = select i1 %196, ptr @Quant8_inter_default, ptr getelementptr inbounds (i8, ptr @ScalingList8x8, i64 128)
  %199 = getelementptr inbounds [64 x i16], ptr %198, i64 0, i64 %167
  %200 = load i16, ptr %199, align 2, !tbaa !13
  %201 = sext i16 %200 to i32
  %202 = sdiv i32 %197, %201
  %203 = getelementptr inbounds i32, ptr %158, i64 %165
  store i32 %202, ptr %203, align 4, !tbaa !6
  %204 = mul nsw i32 %192, %201
  %205 = getelementptr inbounds i32, ptr %163, i64 %165
  store i32 %204, ptr %205, align 4, !tbaa !6
  %206 = add nuw nsw i64 %165, 1
  %207 = icmp eq i64 %206, 8
  br i1 %207, label %208, label %164

208:                                              ; preds = %190
  %209 = add nuw nsw i64 %139, 1
  %210 = icmp eq i64 %209, 8
  br i1 %210, label %211, label %138

211:                                              ; preds = %208
  %212 = add nuw nsw i64 %137, 1
  %213 = icmp eq i64 %212, 6
  br i1 %213, label %214, label %136

214:                                              ; preds = %211, %128
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef signext) local_unnamed_addr #11

attributes #0 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!16, !7, i64 3968}
!16 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !8, i64 84, !8, i64 148, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !7, i64 1228, !7, i64 1232, !7, i64 1236, !7, i64 1240, !7, i64 1244, !7, i64 1248, !7, i64 1252, !7, i64 1256, !7, i64 1260, !7, i64 1264, !7, i64 1268, !7, i64 1272, !7, i64 1276, !7, i64 1280, !7, i64 1284, !7, i64 1288, !7, i64 1292, !7, i64 1296, !7, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !7, i64 1904, !7, i64 1908, !7, i64 1912, !7, i64 1916, !7, i64 1920, !7, i64 1924, !7, i64 1928, !7, i64 1932, !7, i64 1936, !7, i64 1940, !7, i64 1944, !7, i64 1948, !8, i64 1952, !7, i64 2976, !7, i64 2980, !7, i64 2984, !7, i64 2988, !7, i64 2992, !7, i64 2996, !7, i64 3000, !7, i64 3004, !7, i64 3008, !7, i64 3012, !7, i64 3016, !7, i64 3020, !7, i64 3024, !7, i64 3028, !7, i64 3032, !7, i64 3036, !7, i64 3040, !7, i64 3044, !7, i64 3048, !7, i64 3052, !17, i64 3056, !7, i64 3064, !7, i64 3068, !7, i64 3072, !7, i64 3076, !7, i64 3080, !7, i64 3084, !7, i64 3088, !7, i64 3092, !7, i64 3096, !7, i64 3100, !7, i64 3104, !7, i64 3108, !7, i64 3112, !7, i64 3116, !7, i64 3120, !7, i64 3124, !7, i64 3128, !7, i64 3132, !7, i64 3136, !7, i64 3140, !7, i64 3144, !7, i64 3148, !8, i64 3152, !8, i64 3352, !7, i64 3552, !7, i64 3556, !7, i64 3560, !7, i64 3564, !7, i64 3568, !7, i64 3572, !7, i64 3576, !7, i64 3580, !7, i64 3584, !7, i64 3588, !7, i64 3592, !7, i64 3596, !7, i64 3600, !7, i64 3604, !7, i64 3608, !7, i64 3612, !7, i64 3616, !7, i64 3620, !8, i64 3624, !7, i64 3824, !7, i64 3828, !12, i64 3832, !12, i64 3840, !12, i64 3848, !12, i64 3856, !7, i64 3864, !7, i64 3868, !7, i64 3872, !7, i64 3876, !7, i64 3880, !7, i64 3884, !7, i64 3888, !7, i64 3892, !7, i64 3896, !7, i64 3900, !7, i64 3904, !7, i64 3908, !7, i64 3912, !7, i64 3916, !7, i64 3920, !7, i64 3924, !7, i64 3928, !8, i64 3932, !7, i64 3964, !7, i64 3968, !7, i64 3972, !7, i64 3976, !7, i64 3980, !7, i64 3984, !7, i64 3988, !7, i64 3992, !7, i64 3996, !7, i64 4000, !7, i64 4004, !8, i64 4008, !8, i64 4056, !7, i64 4256, !7, i64 4260, !7, i64 4264, !7, i64 4268, !8, i64 4272, !7, i64 4312, !7, i64 4316, !7, i64 4320, !7, i64 4324}
!17 = !{!"double", !8, i64 0}
!18 = !{!16, !7, i64 3928}
!19 = !{!20, !7, i64 36}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !8, i64 40, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !8, i64 108, !7, i64 1132, !7, i64 1136, !7, i64 1140, !7, i64 1144, !7, i64 1148, !7, i64 1152, !7, i64 1156, !7, i64 1160, !7, i64 1164, !7, i64 1168, !7, i64 1172, !7, i64 1176, !7, i64 1180, !21, i64 1184}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !22, i64 84, !7, i64 496, !22, i64 500, !7, i64 912, !7, i64 916, !7, i64 920, !7, i64 924, !7, i64 928, !7, i64 932, !7, i64 936, !7, i64 940, !7, i64 944}
!22 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408}
!23 = !{!24, !7, i64 20}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !7, i64 56, !7, i64 60, !7, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !7, i64 164, !7, i64 168, !7, i64 172, !12, i64 176, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232}
