; ModuleID = 'src/q_offsets.c'
source_filename = "src/q_offsets.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@offset4x4_check = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 4
@offset8x8_check = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@OffsetBits = dso_local local_unnamed_addr constant i32 11, align 4
@input = external dso_local local_unnamed_addr global ptr, align 8
@LevelOffset4x4Luma = dso_local global ptr null, align 8
@LevelOffset4x4Chroma = dso_local global ptr null, align 8
@LevelOffset8x8Luma = dso_local global ptr null, align 8
@OffsetType4x4 = internal constant [15 x [24 x i8]] [[24 x i8] c"INTRA4X4_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTRA\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTRA\00\00", [24 x i8] c"INTRA4X4_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTERP\00", [24 x i8] c"INTRA4X4_CHROMAV_INTERP\00", [24 x i8] c"INTRA4X4_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTERB\00", [24 x i8] c"INTRA4X4_CHROMAV_INTERB\00", [24 x i8] c"INTER4X4_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU_INTERP\00", [24 x i8] c"INTER4X4_CHROMAV_INTERP\00", [24 x i8] c"INTER4X4_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU_INTERB\00", [24 x i8] c"INTER4X4_CHROMAV_INTERB\00"], align 1
@OffsetType8x8 = internal constant [5 x [24 x i8]] [[24 x i8] c"INTRA8X8_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTER8X8_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTER8X8_LUMA_INTERB\00\00\00\00"], align 1
@errortext = external dso_local global [300 x i8], align 1
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@OffsetList4x4input = dso_local local_unnamed_addr global [15 x [16 x i16]] zeroinitializer, align 2
@OffsetList8x8input = dso_local local_unnamed_addr global [5 x [64 x i16]] zeroinitializer, align 2
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Parsing Quantization Offset Matrix file %s \00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@OffsetList4x4 = dso_local local_unnamed_addr global [15 x [16 x i16]] zeroinitializer, align 2
@OffsetList8x8 = dso_local local_unnamed_addr global [5 x [64 x i16]] zeroinitializer, align 2
@img = external dso_local local_unnamed_addr global ptr, align 8
@AdaptRndWeight = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind
define dso_local void @allocate_QOffsets() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 3968
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = mul nsw i32 %3, 6
  %5 = add nsw i32 %4, 3
  %6 = sdiv i32 %5, 6
  %7 = add nsw i32 %6, 1
  %8 = getelementptr inbounds i8, ptr %1, i64 3972
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = mul nsw i32 %9, 6
  %11 = add nsw i32 %10, 3
  %12 = sdiv i32 %11, 6
  %13 = add nsw i32 %12, 1
  %14 = tail call i32 @llvm.smax.i32(i32 %7, i32 %13)
  %15 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @LevelOffset4x4Luma, i32 noundef signext 2, i32 noundef signext %14, i32 noundef signext 4, i32 noundef signext 4) #12
  %16 = tail call signext i32 @get_mem5Dint(ptr noundef nonnull @LevelOffset4x4Chroma, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext %14, i32 noundef signext 4, i32 noundef signext 4) #12
  %17 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @LevelOffset8x8Luma, i32 noundef signext 2, i32 noundef signext %14, i32 noundef signext 8, i32 noundef signext 8) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local signext i32 @get_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @get_mem5Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @free_QOffsets() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 3968
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = mul nsw i32 %3, 6
  %5 = add nsw i32 %4, 3
  %6 = sdiv i32 %5, 6
  %7 = add nsw i32 %6, 1
  %8 = getelementptr inbounds i8, ptr %1, i64 3972
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = mul nsw i32 %9, 6
  %11 = add nsw i32 %10, 3
  %12 = sdiv i32 %11, 6
  %13 = add nsw i32 %12, 1
  %14 = tail call i32 @llvm.smax.i32(i32 %7, i32 %13)
  %15 = load ptr, ptr @LevelOffset4x4Luma, align 8, !tbaa !6
  tail call void @free_mem4Dint(ptr noundef %15, i32 noundef signext 2, i32 noundef signext %14) #12
  %16 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !6
  tail call void @free_mem5Dint(ptr noundef %16, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext %14) #12
  %17 = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !6
  tail call void @free_mem4Dint(ptr noundef %17, i32 noundef signext 2, i32 noundef signext %14) #12
  ret void
}

declare dso_local void @free_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @free_mem5Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
define dso_local signext i32 @CheckOffsetParameterName(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  store i32 0, ptr %1, align 4, !tbaa !15
  %3 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(20) @OffsetType4x4, ptr noundef nonnull dereferenceable(1) %0) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(23) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 24), ptr noundef nonnull dereferenceable(1) %0) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %5
  %9 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(23) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 48), ptr noundef nonnull dereferenceable(1) %0) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %63, label %11

11:                                               ; preds = %8
  %12 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(21) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 72), ptr noundef nonnull dereferenceable(1) %0) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %63, label %14

14:                                               ; preds = %11
  %15 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(24) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 96), ptr noundef nonnull dereferenceable(1) %0) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %63, label %17

17:                                               ; preds = %14
  %18 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(24) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 120), ptr noundef nonnull dereferenceable(1) %0) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %63, label %20

20:                                               ; preds = %17
  %21 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(21) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 144), ptr noundef nonnull dereferenceable(1) %0) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %20
  %24 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(24) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 168), ptr noundef nonnull dereferenceable(1) %0) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %23
  %27 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(24) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 192), ptr noundef nonnull dereferenceable(1) %0) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %26
  %30 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(21) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 216), ptr noundef nonnull dereferenceable(1) %0) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %29
  %33 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(24) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 240), ptr noundef nonnull dereferenceable(1) %0) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %32
  %36 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(24) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 264), ptr noundef nonnull dereferenceable(1) %0) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %63, label %38

38:                                               ; preds = %35
  %39 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(21) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 288), ptr noundef nonnull dereferenceable(1) %0) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %63, label %41

41:                                               ; preds = %38
  %42 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(24) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 312), ptr noundef nonnull dereferenceable(1) %0) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(24) getelementptr inbounds (i8, ptr @OffsetType4x4, i64 336), ptr noundef nonnull dereferenceable(1) %0) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %44
  store i32 1, ptr %1, align 4, !tbaa !15
  %48 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(20) @OffsetType8x8, ptr noundef nonnull dereferenceable(1) %0) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(21) getelementptr inbounds (i8, ptr @OffsetType8x8, i64 24), ptr noundef nonnull dereferenceable(1) %0) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(21) getelementptr inbounds (i8, ptr @OffsetType8x8, i64 48), ptr noundef nonnull dereferenceable(1) %0) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(21) getelementptr inbounds (i8, ptr @OffsetType8x8, i64 72), ptr noundef nonnull dereferenceable(1) %0) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = tail call signext i32 @strcmp(ptr noundef nonnull dereferenceable(21) getelementptr inbounds (i8, ptr @OffsetType8x8, i64 96), ptr noundef nonnull dereferenceable(1) %0) #13
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 4, i32 -1
  br label %63

63:                                               ; preds = %59, %2, %5, %8, %11, %14, %17, %20, %23, %26, %29, %32, %35, %38, %41, %44, %47, %50, %53, %56
  %64 = phi i32 [ 0, %47 ], [ 1, %50 ], [ 2, %53 ], [ 3, %56 ], [ 0, %2 ], [ 1, %5 ], [ 2, %8 ], [ 3, %11 ], [ 4, %14 ], [ 5, %17 ], [ 6, %20 ], [ 7, %23 ], [ 8, %26 ], [ 9, %29 ], [ 10, %32 ], [ 11, %35 ], [ 12, %38 ], [ 13, %41 ], [ 14, %44 ], [ %62, %59 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local signext i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @ParseQOffsetMatrix(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [1000 x ptr], align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #12
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %123

9:                                                ; preds = %2, %54
  %10 = phi i32 [ %58, %54 ], [ 0, %2 ]
  %11 = phi ptr [ %57, %54 ], [ %0, %2 ]
  %12 = phi i32 [ %56, %54 ], [ 0, %2 ]
  %13 = phi i32 [ %55, %54 ], [ 0, %2 ]
  %14 = load i8, ptr %11, align 1, !tbaa !16
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
  store i8 0, ptr %11, align 1, !tbaa !16
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi ptr [ %11, %17 ], [ %24, %18 ]
  %20 = load i8, ptr %19, align 1, !tbaa !16
  %21 = icmp ne i8 %20, 10
  %22 = icmp ult ptr %19, %7
  %23 = and i1 %22, %21
  %24 = getelementptr inbounds i8, ptr %19, i64 1
  br i1 %23, label %18, label %54

25:                                               ; preds = %9
  %26 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 0, ptr %11, align 1, !tbaa !16
  br label %54

27:                                               ; preds = %9, %9
  %28 = icmp eq i32 %13, 0
  %29 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %28, label %30, label %54

30:                                               ; preds = %27
  store i8 0, ptr %11, align 1, !tbaa !16
  br label %54

31:                                               ; preds = %9
  %32 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 0, ptr %11, align 1, !tbaa !16
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = add nsw i32 %10, 1
  %36 = sext i32 %10 to i64
  %37 = getelementptr inbounds [1000 x ptr], ptr %3, i64 0, i64 %36
  store ptr %32, ptr %37, align 8, !tbaa !6
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
  store ptr %11, ptr %50, align 8, !tbaa !6
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
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = call signext i32 @CheckOffsetParameterName(ptr noundef %67, ptr noundef nonnull %5)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str, ptr noundef %67) #12
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #12
  br label %72

72:                                               ; preds = %70, %63
  %73 = add nuw nsw i32 %64, 1
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [1000 x ptr], ptr %3, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !6
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
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #12
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, ptr %5, align 4, !tbaa !15
  %92 = icmp eq i32 %91, 0
  %93 = sext i32 %68 to i64
  %94 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 %93
  %95 = getelementptr inbounds [2 x i32], ptr @offset8x8_check, i64 0, i64 %93
  %96 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 %93
  %97 = getelementptr inbounds [6 x i32], ptr @offset4x4_check, i64 0, i64 %93
  %98 = select i1 %92, ptr %97, ptr %95
  %99 = select i1 %92, i32 16, i32 64
  %100 = select i1 %92, ptr %96, ptr %94
  store i32 1, ptr %98, align 4, !tbaa !15
  %101 = add nuw nsw i32 %64, 2
  %102 = zext i32 %101 to i64
  %103 = zext nneg i32 %99 to i64
  br label %104

104:                                              ; preds = %90, %113
  %105 = phi i64 [ 0, %90 ], [ %117, %113 ]
  %106 = add nuw nsw i64 %105, %102
  %107 = getelementptr inbounds [1000 x ptr], ptr %3, i64 0, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  %109 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %108, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #12
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %113, label %111

111:                                              ; preds = %104
  %112 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef %67, ptr noundef %108) #12
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 300) #12
  br label %113

113:                                              ; preds = %111, %104
  %114 = load i32, ptr %4, align 4, !tbaa !15
  %115 = trunc i32 %114 to i16
  %116 = getelementptr inbounds i16, ptr %100, i64 %105
  store i16 %115, ptr %116, align 2, !tbaa !17
  %117 = add nuw nsw i64 %105, 1
  %118 = icmp eq i64 %117, %103
  br i1 %118, label %119, label %104

119:                                              ; preds = %113
  %120 = call i32 @putchar(i32 46)
  %121 = add nuw nsw i32 %101, %99
  %122 = icmp slt i32 %121, %61
  br i1 %122, label %63, label %123

123:                                              ; preds = %119, %2, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
define dso_local void @Init_QOffsetMatrix() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 3968
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = mul nsw i32 %3, 6
  %5 = add nsw i32 %4, 3
  %6 = sdiv i32 %5, 6
  %7 = add nsw i32 %6, 1
  %8 = getelementptr inbounds i8, ptr %1, i64 3972
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = mul nsw i32 %9, 6
  %11 = add nsw i32 %10, 3
  %12 = sdiv i32 %11, 6
  %13 = add nsw i32 %12, 1
  %14 = tail call i32 @llvm.smax.i32(i32 %7, i32 %13)
  %15 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @LevelOffset4x4Luma, i32 noundef signext 2, i32 noundef signext %14, i32 noundef signext 4, i32 noundef signext 4) #12
  %16 = tail call signext i32 @get_mem5Dint(ptr noundef nonnull @LevelOffset4x4Chroma, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext %14, i32 noundef signext 4, i32 noundef signext 4) #12
  %17 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @LevelOffset8x8Luma, i32 noundef signext 2, i32 noundef signext %14, i32 noundef signext 8, i32 noundef signext 8) #12
  %18 = load ptr, ptr @input, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 4256
  %20 = load i32, ptr %19, align 8, !tbaa !19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %0
  %23 = getelementptr inbounds i8, ptr %18, i64 4056
  %24 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %23)
  %25 = load ptr, ptr @input, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 4056
  %27 = tail call ptr @GetConfigFileContent(ptr noundef nonnull %26, i32 noundef signext 0) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #13
  %31 = trunc i64 %30 to i32
  tail call void @ParseQOffsetMatrix(ptr noundef nonnull %27, i32 noundef signext %31)
  br label %36

32:                                               ; preds = %22
  %33 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @errortext)
  %34 = load ptr, ptr @input, align 8, !tbaa !6
  %35 = getelementptr inbounds i8, ptr %34, i64 4256
  store i32 0, ptr %35, align 8, !tbaa !19
  br label %36

36:                                               ; preds = %32, %29
  %37 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %27) #12
  br label %38

38:                                               ; preds = %36, %0
  tail call void @InitOffsetParam()
  ret void
}

declare dso_local ptr @GetConfigFileContent(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @InitOffsetParam() local_unnamed_addr #7 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 4256
  %3 = load i32, ptr %2, align 8, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %192, label %5

5:                                                ; preds = %0, %58
  %6 = phi i64 [ %59, %58 ], [ 0, %0 ]
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %56, %7 ]
  %9 = shl nuw nsw i64 %8, 2
  %10 = add nuw nsw i64 %9, %6
  %11 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 0, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !17
  %13 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 0, i64 %10
  store i16 %12, ptr %13, align 2, !tbaa !17
  %14 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 1, i64 %10
  %15 = load i16, ptr %14, align 2, !tbaa !17
  %16 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 1, i64 %10
  store i16 %15, ptr %16, align 2, !tbaa !17
  %17 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 2, i64 %10
  %18 = load i16, ptr %17, align 2, !tbaa !17
  %19 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 2, i64 %10
  store i16 %18, ptr %19, align 2, !tbaa !17
  %20 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 3, i64 %10
  %21 = load i16, ptr %20, align 2, !tbaa !17
  %22 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 3, i64 %10
  store i16 %21, ptr %22, align 2, !tbaa !17
  %23 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 4, i64 %10
  %24 = load i16, ptr %23, align 2, !tbaa !17
  %25 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 4, i64 %10
  store i16 %24, ptr %25, align 2, !tbaa !17
  %26 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 5, i64 %10
  %27 = load i16, ptr %26, align 2, !tbaa !17
  %28 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 5, i64 %10
  store i16 %27, ptr %28, align 2, !tbaa !17
  %29 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 6, i64 %10
  %30 = load i16, ptr %29, align 2, !tbaa !17
  %31 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 6, i64 %10
  store i16 %30, ptr %31, align 2, !tbaa !17
  %32 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 7, i64 %10
  %33 = load i16, ptr %32, align 2, !tbaa !17
  %34 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 7, i64 %10
  store i16 %33, ptr %34, align 2, !tbaa !17
  %35 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 8, i64 %10
  %36 = load i16, ptr %35, align 2, !tbaa !17
  %37 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 8, i64 %10
  store i16 %36, ptr %37, align 2, !tbaa !17
  %38 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 9, i64 %10
  %39 = load i16, ptr %38, align 2, !tbaa !17
  %40 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 9, i64 %10
  store i16 %39, ptr %40, align 2, !tbaa !17
  %41 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 10, i64 %10
  %42 = load i16, ptr %41, align 2, !tbaa !17
  %43 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 10, i64 %10
  store i16 %42, ptr %43, align 2, !tbaa !17
  %44 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 11, i64 %10
  %45 = load i16, ptr %44, align 2, !tbaa !17
  %46 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 11, i64 %10
  store i16 %45, ptr %46, align 2, !tbaa !17
  %47 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 12, i64 %10
  %48 = load i16, ptr %47, align 2, !tbaa !17
  %49 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 12, i64 %10
  store i16 %48, ptr %49, align 2, !tbaa !17
  %50 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 13, i64 %10
  %51 = load i16, ptr %50, align 2, !tbaa !17
  %52 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 13, i64 %10
  store i16 %51, ptr %52, align 2, !tbaa !17
  %53 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4input, i64 0, i64 14, i64 %10
  %54 = load i16, ptr %53, align 2, !tbaa !17
  %55 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 14, i64 %10
  store i16 %54, ptr %55, align 2, !tbaa !17
  %56 = add nuw nsw i64 %8, 1
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %7

58:                                               ; preds = %7
  %59 = add nuw nsw i64 %6, 1
  %60 = icmp eq i64 %59, 4
  br i1 %60, label %61, label %5

61:                                               ; preds = %58, %61
  %62 = phi i64 [ %190, %61 ], [ 0, %58 ]
  %63 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 0, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !17
  %65 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 0, i64 %62
  store i16 %64, ptr %65, align 2, !tbaa !17
  %66 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 1, i64 %62
  %67 = load i16, ptr %66, align 2, !tbaa !17
  %68 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 1, i64 %62
  store i16 %67, ptr %68, align 2, !tbaa !17
  %69 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 2, i64 %62
  %70 = load i16, ptr %69, align 2, !tbaa !17
  %71 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 2, i64 %62
  store i16 %70, ptr %71, align 2, !tbaa !17
  %72 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 3, i64 %62
  %73 = load i16, ptr %72, align 2, !tbaa !17
  %74 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 3, i64 %62
  store i16 %73, ptr %74, align 2, !tbaa !17
  %75 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 4, i64 %62
  %76 = load i16, ptr %75, align 2, !tbaa !17
  %77 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 4, i64 %62
  store i16 %76, ptr %77, align 2, !tbaa !17
  %78 = add nuw nsw i64 %62, 8
  %79 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 0, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !17
  %81 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 0, i64 %78
  store i16 %80, ptr %81, align 2, !tbaa !17
  %82 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 1, i64 %78
  %83 = load i16, ptr %82, align 2, !tbaa !17
  %84 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 1, i64 %78
  store i16 %83, ptr %84, align 2, !tbaa !17
  %85 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 2, i64 %78
  %86 = load i16, ptr %85, align 2, !tbaa !17
  %87 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 2, i64 %78
  store i16 %86, ptr %87, align 2, !tbaa !17
  %88 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 3, i64 %78
  %89 = load i16, ptr %88, align 2, !tbaa !17
  %90 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 3, i64 %78
  store i16 %89, ptr %90, align 2, !tbaa !17
  %91 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 4, i64 %78
  %92 = load i16, ptr %91, align 2, !tbaa !17
  %93 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 4, i64 %78
  store i16 %92, ptr %93, align 2, !tbaa !17
  %94 = add nuw nsw i64 %62, 16
  %95 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 0, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !17
  %97 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 0, i64 %94
  store i16 %96, ptr %97, align 2, !tbaa !17
  %98 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 1, i64 %94
  %99 = load i16, ptr %98, align 2, !tbaa !17
  %100 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 1, i64 %94
  store i16 %99, ptr %100, align 2, !tbaa !17
  %101 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 2, i64 %94
  %102 = load i16, ptr %101, align 2, !tbaa !17
  %103 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 2, i64 %94
  store i16 %102, ptr %103, align 2, !tbaa !17
  %104 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 3, i64 %94
  %105 = load i16, ptr %104, align 2, !tbaa !17
  %106 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 3, i64 %94
  store i16 %105, ptr %106, align 2, !tbaa !17
  %107 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 4, i64 %94
  %108 = load i16, ptr %107, align 2, !tbaa !17
  %109 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 4, i64 %94
  store i16 %108, ptr %109, align 2, !tbaa !17
  %110 = add nuw nsw i64 %62, 24
  %111 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 0, i64 %110
  %112 = load i16, ptr %111, align 2, !tbaa !17
  %113 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 0, i64 %110
  store i16 %112, ptr %113, align 2, !tbaa !17
  %114 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 1, i64 %110
  %115 = load i16, ptr %114, align 2, !tbaa !17
  %116 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 1, i64 %110
  store i16 %115, ptr %116, align 2, !tbaa !17
  %117 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 2, i64 %110
  %118 = load i16, ptr %117, align 2, !tbaa !17
  %119 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 2, i64 %110
  store i16 %118, ptr %119, align 2, !tbaa !17
  %120 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 3, i64 %110
  %121 = load i16, ptr %120, align 2, !tbaa !17
  %122 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 3, i64 %110
  store i16 %121, ptr %122, align 2, !tbaa !17
  %123 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 4, i64 %110
  %124 = load i16, ptr %123, align 2, !tbaa !17
  %125 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 4, i64 %110
  store i16 %124, ptr %125, align 2, !tbaa !17
  %126 = add nuw nsw i64 %62, 32
  %127 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 0, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !17
  %129 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 0, i64 %126
  store i16 %128, ptr %129, align 2, !tbaa !17
  %130 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 1, i64 %126
  %131 = load i16, ptr %130, align 2, !tbaa !17
  %132 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 1, i64 %126
  store i16 %131, ptr %132, align 2, !tbaa !17
  %133 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 2, i64 %126
  %134 = load i16, ptr %133, align 2, !tbaa !17
  %135 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 2, i64 %126
  store i16 %134, ptr %135, align 2, !tbaa !17
  %136 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 3, i64 %126
  %137 = load i16, ptr %136, align 2, !tbaa !17
  %138 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 3, i64 %126
  store i16 %137, ptr %138, align 2, !tbaa !17
  %139 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 4, i64 %126
  %140 = load i16, ptr %139, align 2, !tbaa !17
  %141 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 4, i64 %126
  store i16 %140, ptr %141, align 2, !tbaa !17
  %142 = add nuw nsw i64 %62, 40
  %143 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 0, i64 %142
  %144 = load i16, ptr %143, align 2, !tbaa !17
  %145 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 0, i64 %142
  store i16 %144, ptr %145, align 2, !tbaa !17
  %146 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 1, i64 %142
  %147 = load i16, ptr %146, align 2, !tbaa !17
  %148 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 1, i64 %142
  store i16 %147, ptr %148, align 2, !tbaa !17
  %149 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 2, i64 %142
  %150 = load i16, ptr %149, align 2, !tbaa !17
  %151 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 2, i64 %142
  store i16 %150, ptr %151, align 2, !tbaa !17
  %152 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 3, i64 %142
  %153 = load i16, ptr %152, align 2, !tbaa !17
  %154 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 3, i64 %142
  store i16 %153, ptr %154, align 2, !tbaa !17
  %155 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 4, i64 %142
  %156 = load i16, ptr %155, align 2, !tbaa !17
  %157 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 4, i64 %142
  store i16 %156, ptr %157, align 2, !tbaa !17
  %158 = add nuw nsw i64 %62, 48
  %159 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 0, i64 %158
  %160 = load i16, ptr %159, align 2, !tbaa !17
  %161 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 0, i64 %158
  store i16 %160, ptr %161, align 2, !tbaa !17
  %162 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 1, i64 %158
  %163 = load i16, ptr %162, align 2, !tbaa !17
  %164 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 1, i64 %158
  store i16 %163, ptr %164, align 2, !tbaa !17
  %165 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 2, i64 %158
  %166 = load i16, ptr %165, align 2, !tbaa !17
  %167 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 2, i64 %158
  store i16 %166, ptr %167, align 2, !tbaa !17
  %168 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 3, i64 %158
  %169 = load i16, ptr %168, align 2, !tbaa !17
  %170 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 3, i64 %158
  store i16 %169, ptr %170, align 2, !tbaa !17
  %171 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 4, i64 %158
  %172 = load i16, ptr %171, align 2, !tbaa !17
  %173 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 4, i64 %158
  store i16 %172, ptr %173, align 2, !tbaa !17
  %174 = add nuw nsw i64 %62, 56
  %175 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 0, i64 %174
  %176 = load i16, ptr %175, align 2, !tbaa !17
  %177 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 0, i64 %174
  store i16 %176, ptr %177, align 2, !tbaa !17
  %178 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 1, i64 %174
  %179 = load i16, ptr %178, align 2, !tbaa !17
  %180 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 1, i64 %174
  store i16 %179, ptr %180, align 2, !tbaa !17
  %181 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 2, i64 %174
  %182 = load i16, ptr %181, align 2, !tbaa !17
  %183 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 2, i64 %174
  store i16 %182, ptr %183, align 2, !tbaa !17
  %184 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 3, i64 %174
  %185 = load i16, ptr %184, align 2, !tbaa !17
  %186 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 3, i64 %174
  store i16 %185, ptr %186, align 2, !tbaa !17
  %187 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8input, i64 0, i64 4, i64 %174
  %188 = load i16, ptr %187, align 2, !tbaa !17
  %189 = getelementptr inbounds [5 x [64 x i16]], ptr @OffsetList8x8, i64 0, i64 4, i64 %174
  store i16 %188, ptr %189, align 2, !tbaa !17
  %190 = add nuw nsw i64 %62, 1
  %191 = icmp eq i64 %190, 8
  br i1 %191, label %310, label %61

192:                                              ; preds = %0, %192
  %193 = phi i64 [ %257, %192 ], [ 0, %0 ]
  %194 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 0, i64 %193
  store i16 682, ptr %194, align 2, !tbaa !17
  %195 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 1, i64 %193
  store i16 682, ptr %195, align 2, !tbaa !17
  %196 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 2, i64 %193
  store i16 682, ptr %196, align 2, !tbaa !17
  %197 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 3, i64 %193
  store i16 342, ptr %197, align 2, !tbaa !17
  %198 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 4, i64 %193
  store i16 342, ptr %198, align 2, !tbaa !17
  %199 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 5, i64 %193
  store i16 342, ptr %199, align 2, !tbaa !17
  %200 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 6, i64 %193
  store i16 342, ptr %200, align 2, !tbaa !17
  %201 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 7, i64 %193
  store i16 342, ptr %201, align 2, !tbaa !17
  %202 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 8, i64 %193
  store i16 342, ptr %202, align 2, !tbaa !17
  %203 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 9, i64 %193
  store i16 342, ptr %203, align 2, !tbaa !17
  %204 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 10, i64 %193
  store i16 342, ptr %204, align 2, !tbaa !17
  %205 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 11, i64 %193
  store i16 342, ptr %205, align 2, !tbaa !17
  %206 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 12, i64 %193
  store i16 342, ptr %206, align 2, !tbaa !17
  %207 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 13, i64 %193
  store i16 342, ptr %207, align 2, !tbaa !17
  %208 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 14, i64 %193
  store i16 342, ptr %208, align 2, !tbaa !17
  %209 = add nuw nsw i64 %193, 4
  %210 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 0, i64 %209
  store i16 682, ptr %210, align 2, !tbaa !17
  %211 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 1, i64 %209
  store i16 682, ptr %211, align 2, !tbaa !17
  %212 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 2, i64 %209
  store i16 682, ptr %212, align 2, !tbaa !17
  %213 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 3, i64 %209
  store i16 342, ptr %213, align 2, !tbaa !17
  %214 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 4, i64 %209
  store i16 342, ptr %214, align 2, !tbaa !17
  %215 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 5, i64 %209
  store i16 342, ptr %215, align 2, !tbaa !17
  %216 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 6, i64 %209
  store i16 342, ptr %216, align 2, !tbaa !17
  %217 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 7, i64 %209
  store i16 342, ptr %217, align 2, !tbaa !17
  %218 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 8, i64 %209
  store i16 342, ptr %218, align 2, !tbaa !17
  %219 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 9, i64 %209
  store i16 342, ptr %219, align 2, !tbaa !17
  %220 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 10, i64 %209
  store i16 342, ptr %220, align 2, !tbaa !17
  %221 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 11, i64 %209
  store i16 342, ptr %221, align 2, !tbaa !17
  %222 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 12, i64 %209
  store i16 342, ptr %222, align 2, !tbaa !17
  %223 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 13, i64 %209
  store i16 342, ptr %223, align 2, !tbaa !17
  %224 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 14, i64 %209
  store i16 342, ptr %224, align 2, !tbaa !17
  %225 = add nuw nsw i64 %193, 8
  %226 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 0, i64 %225
  store i16 682, ptr %226, align 2, !tbaa !17
  %227 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 1, i64 %225
  store i16 682, ptr %227, align 2, !tbaa !17
  %228 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 2, i64 %225
  store i16 682, ptr %228, align 2, !tbaa !17
  %229 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 3, i64 %225
  store i16 342, ptr %229, align 2, !tbaa !17
  %230 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 4, i64 %225
  store i16 342, ptr %230, align 2, !tbaa !17
  %231 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 5, i64 %225
  store i16 342, ptr %231, align 2, !tbaa !17
  %232 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 6, i64 %225
  store i16 342, ptr %232, align 2, !tbaa !17
  %233 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 7, i64 %225
  store i16 342, ptr %233, align 2, !tbaa !17
  %234 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 8, i64 %225
  store i16 342, ptr %234, align 2, !tbaa !17
  %235 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 9, i64 %225
  store i16 342, ptr %235, align 2, !tbaa !17
  %236 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 10, i64 %225
  store i16 342, ptr %236, align 2, !tbaa !17
  %237 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 11, i64 %225
  store i16 342, ptr %237, align 2, !tbaa !17
  %238 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 12, i64 %225
  store i16 342, ptr %238, align 2, !tbaa !17
  %239 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 13, i64 %225
  store i16 342, ptr %239, align 2, !tbaa !17
  %240 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 14, i64 %225
  store i16 342, ptr %240, align 2, !tbaa !17
  %241 = add nuw nsw i64 %193, 12
  %242 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 0, i64 %241
  store i16 682, ptr %242, align 2, !tbaa !17
  %243 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 1, i64 %241
  store i16 682, ptr %243, align 2, !tbaa !17
  %244 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 2, i64 %241
  store i16 682, ptr %244, align 2, !tbaa !17
  %245 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 3, i64 %241
  store i16 342, ptr %245, align 2, !tbaa !17
  %246 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 4, i64 %241
  store i16 342, ptr %246, align 2, !tbaa !17
  %247 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 5, i64 %241
  store i16 342, ptr %247, align 2, !tbaa !17
  %248 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 6, i64 %241
  store i16 342, ptr %248, align 2, !tbaa !17
  %249 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 7, i64 %241
  store i16 342, ptr %249, align 2, !tbaa !17
  %250 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 8, i64 %241
  store i16 342, ptr %250, align 2, !tbaa !17
  %251 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 9, i64 %241
  store i16 342, ptr %251, align 2, !tbaa !17
  %252 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 10, i64 %241
  store i16 342, ptr %252, align 2, !tbaa !17
  %253 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 11, i64 %241
  store i16 342, ptr %253, align 2, !tbaa !17
  %254 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 12, i64 %241
  store i16 342, ptr %254, align 2, !tbaa !17
  %255 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 13, i64 %241
  store i16 342, ptr %255, align 2, !tbaa !17
  %256 = getelementptr inbounds [15 x [16 x i16]], ptr @OffsetList4x4, i64 0, i64 14, i64 %241
  store i16 342, ptr %256, align 2, !tbaa !17
  %257 = add nuw nsw i64 %193, 1
  %258 = icmp eq i64 %257, 4
  br i1 %258, label %259, label %192

259:                                              ; preds = %192, %259
  %260 = phi i64 [ %308, %259 ], [ 0, %192 ]
  %261 = getelementptr inbounds [64 x i16], ptr @OffsetList8x8, i64 0, i64 %260
  store i16 682, ptr %261, align 2, !tbaa !17
  %262 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128), i64 0, i64 %260
  store i16 342, ptr %262, align 2, !tbaa !17
  %263 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), i64 0, i64 %260
  store i16 342, ptr %263, align 2, !tbaa !17
  %264 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384), i64 0, i64 %260
  store i16 342, ptr %264, align 2, !tbaa !17
  %265 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), i64 0, i64 %260
  store i16 342, ptr %265, align 2, !tbaa !17
  %266 = add nuw nsw i64 %260, 8
  %267 = getelementptr inbounds [64 x i16], ptr @OffsetList8x8, i64 0, i64 %266
  store i16 682, ptr %267, align 2, !tbaa !17
  %268 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128), i64 0, i64 %266
  store i16 342, ptr %268, align 2, !tbaa !17
  %269 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), i64 0, i64 %266
  store i16 342, ptr %269, align 2, !tbaa !17
  %270 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384), i64 0, i64 %266
  store i16 342, ptr %270, align 2, !tbaa !17
  %271 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), i64 0, i64 %266
  store i16 342, ptr %271, align 2, !tbaa !17
  %272 = add nuw nsw i64 %260, 16
  %273 = getelementptr inbounds [64 x i16], ptr @OffsetList8x8, i64 0, i64 %272
  store i16 682, ptr %273, align 2, !tbaa !17
  %274 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128), i64 0, i64 %272
  store i16 342, ptr %274, align 2, !tbaa !17
  %275 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), i64 0, i64 %272
  store i16 342, ptr %275, align 2, !tbaa !17
  %276 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384), i64 0, i64 %272
  store i16 342, ptr %276, align 2, !tbaa !17
  %277 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), i64 0, i64 %272
  store i16 342, ptr %277, align 2, !tbaa !17
  %278 = add nuw nsw i64 %260, 24
  %279 = getelementptr inbounds [64 x i16], ptr @OffsetList8x8, i64 0, i64 %278
  store i16 682, ptr %279, align 2, !tbaa !17
  %280 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128), i64 0, i64 %278
  store i16 342, ptr %280, align 2, !tbaa !17
  %281 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), i64 0, i64 %278
  store i16 342, ptr %281, align 2, !tbaa !17
  %282 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384), i64 0, i64 %278
  store i16 342, ptr %282, align 2, !tbaa !17
  %283 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), i64 0, i64 %278
  store i16 342, ptr %283, align 2, !tbaa !17
  %284 = add nuw nsw i64 %260, 32
  %285 = getelementptr inbounds [64 x i16], ptr @OffsetList8x8, i64 0, i64 %284
  store i16 682, ptr %285, align 2, !tbaa !17
  %286 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128), i64 0, i64 %284
  store i16 342, ptr %286, align 2, !tbaa !17
  %287 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), i64 0, i64 %284
  store i16 342, ptr %287, align 2, !tbaa !17
  %288 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384), i64 0, i64 %284
  store i16 342, ptr %288, align 2, !tbaa !17
  %289 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), i64 0, i64 %284
  store i16 342, ptr %289, align 2, !tbaa !17
  %290 = add nuw nsw i64 %260, 40
  %291 = getelementptr inbounds [64 x i16], ptr @OffsetList8x8, i64 0, i64 %290
  store i16 682, ptr %291, align 2, !tbaa !17
  %292 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128), i64 0, i64 %290
  store i16 342, ptr %292, align 2, !tbaa !17
  %293 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), i64 0, i64 %290
  store i16 342, ptr %293, align 2, !tbaa !17
  %294 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384), i64 0, i64 %290
  store i16 342, ptr %294, align 2, !tbaa !17
  %295 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), i64 0, i64 %290
  store i16 342, ptr %295, align 2, !tbaa !17
  %296 = add nuw nsw i64 %260, 48
  %297 = getelementptr inbounds [64 x i16], ptr @OffsetList8x8, i64 0, i64 %296
  store i16 682, ptr %297, align 2, !tbaa !17
  %298 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128), i64 0, i64 %296
  store i16 342, ptr %298, align 2, !tbaa !17
  %299 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), i64 0, i64 %296
  store i16 342, ptr %299, align 2, !tbaa !17
  %300 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384), i64 0, i64 %296
  store i16 342, ptr %300, align 2, !tbaa !17
  %301 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), i64 0, i64 %296
  store i16 342, ptr %301, align 2, !tbaa !17
  %302 = add nuw nsw i64 %260, 56
  %303 = getelementptr inbounds [64 x i16], ptr @OffsetList8x8, i64 0, i64 %302
  store i16 682, ptr %303, align 2, !tbaa !17
  %304 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128), i64 0, i64 %302
  store i16 342, ptr %304, align 2, !tbaa !17
  %305 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), i64 0, i64 %302
  store i16 342, ptr %305, align 2, !tbaa !17
  %306 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384), i64 0, i64 %302
  store i16 342, ptr %306, align 2, !tbaa !17
  %307 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), i64 0, i64 %302
  store i16 342, ptr %307, align 2, !tbaa !17
  %308 = add nuw nsw i64 %260, 1
  %309 = icmp eq i64 %308, 8
  br i1 %309, label %310, label %259

310:                                              ; preds = %61, %259
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @CalculateOffsetParam() local_unnamed_addr #8 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 24
  %3 = load i32, ptr %2, align 8, !tbaa !20
  switch i32 %3, label %4 [
    i32 4, label %6
    i32 3, label %5
  ]

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %0, %5, %4
  %7 = phi i32 [ 2, %0 ], [ %3, %4 ], [ 0, %5 ]
  %8 = getelementptr inbounds i8, ptr %1, i64 90492
  %9 = load i32, ptr %8, align 4, !tbaa !23
  %10 = add nsw i32 %9, 51
  %11 = sdiv i32 %10, 6
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds i8, ptr %1, i64 90496
  %14 = load i32, ptr %13, align 8, !tbaa !24
  %15 = add nsw i32 %14, 51
  %16 = sdiv i32 %15, 6
  %17 = add nsw i32 %16, 1
  %18 = load ptr, ptr @input, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 4272
  %20 = getelementptr inbounds i8, ptr %1, i64 90316
  %21 = load i32, ptr %20, align 4, !tbaa !25
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = sext i32 %7 to i64
  %25 = getelementptr inbounds [2 x [5 x i32]], ptr %19, i64 0, i64 %23, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !15
  store i32 %26, ptr @AdaptRndWeight, align 4, !tbaa !15
  %27 = tail call i32 @llvm.smax.i32(i32 %12, i32 %17)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %126

29:                                               ; preds = %6
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %123
  %32 = phi i64 [ 0, %29 ], [ %124, %123 ]
  %33 = trunc i64 %32 to i32
  %34 = add i32 %33, 4
  br label %35

35:                                               ; preds = %31, %120
  %36 = phi i64 [ 0, %31 ], [ %121, %120 ]
  %37 = load ptr, ptr @LevelOffset4x4Luma, align 8
  %38 = getelementptr inbounds i8, ptr %37, i64 8
  %39 = load ptr, ptr @LevelOffset4x4Chroma, align 8
  %40 = getelementptr inbounds i8, ptr %39, i64 8
  %41 = load ptr, ptr %38, align 8, !tbaa !6
  %42 = getelementptr inbounds ptr, ptr %41, i64 %32
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %43, i64 %36
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = load ptr, ptr %39, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 8
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds ptr, ptr %48, i64 %32
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds ptr, ptr %50, i64 %36
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = load ptr, ptr %40, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 8
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds ptr, ptr %55, i64 %32
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = getelementptr inbounds ptr, ptr %57, i64 %36
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = load ptr, ptr %37, align 8, !tbaa !6
  %61 = getelementptr inbounds ptr, ptr %60, i64 %32
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds ptr, ptr %62, i64 %36
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = load ptr, ptr %46, align 8, !tbaa !6
  %66 = getelementptr inbounds ptr, ptr %65, i64 %32
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = getelementptr inbounds ptr, ptr %67, i64 %36
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = load ptr, ptr %53, align 8, !tbaa !6
  %71 = getelementptr inbounds ptr, ptr %70, i64 %32
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds ptr, ptr %72, i64 %36
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  br label %75

75:                                               ; preds = %35, %82
  %76 = phi i64 [ 0, %35 ], [ %118, %82 ]
  %77 = shl nuw nsw i64 %76, 2
  %78 = add nuw nsw i64 %77, %36
  %79 = getelementptr inbounds i32, ptr %45, i64 %76
  switch i32 %7, label %80 [
    i32 2, label %81
    i32 1, label %82
  ]

80:                                               ; preds = %75
  br label %82

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %80, %75, %81
  %83 = phi ptr [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 192), %75 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 96), %80 ], [ @OffsetList4x4, %81 ]
  %84 = phi ptr [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 224), %75 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 128), %80 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 32), %81 ]
  %85 = phi ptr [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 256), %75 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 160), %80 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 64), %81 ]
  %86 = phi ptr [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 384), %75 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 288), %80 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 288), %81 ]
  %87 = phi ptr [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 416), %75 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 320), %80 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 320), %81 ]
  %88 = phi ptr [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 448), %75 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 352), %80 ], [ getelementptr inbounds (i8, ptr @OffsetList4x4, i64 352), %81 ]
  %89 = getelementptr inbounds [16 x i16], ptr %83, i64 0, i64 %78
  %90 = load i16, ptr %89, align 2, !tbaa !17
  %91 = sext i16 %90 to i32
  %92 = shl i32 %91, %34
  store i32 %92, ptr %79, align 4, !tbaa !15
  %93 = getelementptr inbounds [16 x i16], ptr %84, i64 0, i64 %78
  %94 = load i16, ptr %93, align 2, !tbaa !17
  %95 = sext i16 %94 to i32
  %96 = shl i32 %95, %34
  %97 = getelementptr inbounds i32, ptr %52, i64 %76
  store i32 %96, ptr %97, align 4, !tbaa !15
  %98 = getelementptr inbounds [16 x i16], ptr %85, i64 0, i64 %78
  %99 = load i16, ptr %98, align 2, !tbaa !17
  %100 = sext i16 %99 to i32
  %101 = shl i32 %100, %34
  %102 = getelementptr inbounds i32, ptr %59, i64 %76
  store i32 %101, ptr %102, align 4, !tbaa !15
  %103 = getelementptr inbounds [16 x i16], ptr %86, i64 0, i64 %78
  %104 = load i16, ptr %103, align 2, !tbaa !17
  %105 = sext i16 %104 to i32
  %106 = shl i32 %105, %34
  %107 = getelementptr inbounds i32, ptr %64, i64 %76
  store i32 %106, ptr %107, align 4, !tbaa !15
  %108 = getelementptr inbounds [16 x i16], ptr %87, i64 0, i64 %78
  %109 = load i16, ptr %108, align 2, !tbaa !17
  %110 = sext i16 %109 to i32
  %111 = shl i32 %110, %34
  %112 = getelementptr inbounds i32, ptr %69, i64 %76
  store i32 %111, ptr %112, align 4, !tbaa !15
  %113 = getelementptr inbounds [16 x i16], ptr %88, i64 0, i64 %78
  %114 = load i16, ptr %113, align 2, !tbaa !17
  %115 = sext i16 %114 to i32
  %116 = shl i32 %115, %34
  %117 = getelementptr inbounds i32, ptr %74, i64 %76
  store i32 %116, ptr %117, align 4, !tbaa !15
  %118 = add nuw nsw i64 %76, 1
  %119 = icmp eq i64 %118, 4
  br i1 %119, label %120, label %75

120:                                              ; preds = %82
  %121 = add nuw nsw i64 %36, 1
  %122 = icmp eq i64 %121, 4
  br i1 %122, label %123, label %35

123:                                              ; preds = %120
  %124 = add nuw nsw i64 %32, 1
  %125 = icmp eq i64 %124, %30
  br i1 %125, label %126, label %31

126:                                              ; preds = %123, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @CalculateOffset8Param() local_unnamed_addr #8 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 90492
  %3 = load i32, ptr %2, align 4, !tbaa !23
  %4 = add nsw i32 %3, 51
  %5 = sdiv i32 %4, 6
  %6 = add nsw i32 %5, 1
  %7 = getelementptr inbounds i8, ptr %1, i64 90496
  %8 = load i32, ptr %7, align 8, !tbaa !24
  %9 = add nsw i32 %8, 51
  %10 = sdiv i32 %9, 6
  %11 = add nsw i32 %10, 1
  %12 = tail call i32 @llvm.smax.i32(i32 %6, i32 %11)
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %0
  %15 = getelementptr inbounds i8, ptr %1, i64 24
  %16 = zext nneg i32 %12 to i64
  br label %17

17:                                               ; preds = %14, %63
  %18 = phi i64 [ 0, %14 ], [ %64, %63 ]
  %19 = add nuw nsw i64 %18, 5
  %20 = trunc i64 %19 to i32
  %21 = trunc i64 %19 to i32
  br label %22

22:                                               ; preds = %17, %60
  %23 = phi i64 [ 0, %17 ], [ %61, %60 ]
  %24 = load ptr, ptr @LevelOffset8x8Luma, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds ptr, ptr %26, i64 %18
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds ptr, ptr %28, i64 %23
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load ptr, ptr %24, align 8, !tbaa !6
  %32 = getelementptr inbounds ptr, ptr %31, i64 %18
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %33, i64 %23
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  br label %36

36:                                               ; preds = %22, %36
  %37 = phi i64 [ 0, %22 ], [ %58, %36 ]
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, %23
  %40 = load i32, ptr %15, align 8, !tbaa !20
  %41 = getelementptr inbounds i32, ptr %30, i64 %37
  %42 = icmp eq i32 %40, 1
  %43 = select i1 %42, ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 256), ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 128)
  %44 = icmp eq i32 %40, 2
  %45 = select i1 %44, ptr @OffsetList8x8, ptr %43
  %46 = getelementptr inbounds [64 x i16], ptr %45, i64 0, i64 %39
  %47 = load i16, ptr %46, align 2, !tbaa !17
  %48 = sext i16 %47 to i32
  %49 = shl i32 %48, %20
  store i32 %49, ptr %41, align 4, !tbaa !15
  %50 = load i32, ptr %15, align 8, !tbaa !20
  %51 = icmp eq i32 %50, 1
  %52 = select i1 %51, ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 512), ptr getelementptr inbounds (i8, ptr @OffsetList8x8, i64 384)
  %53 = getelementptr inbounds [64 x i16], ptr %52, i64 0, i64 %39
  %54 = load i16, ptr %53, align 2, !tbaa !17
  %55 = sext i16 %54 to i32
  %56 = shl i32 %55, %21
  %57 = getelementptr inbounds i32, ptr %35, i64 %37
  store i32 %56, ptr %57, align 4, !tbaa !15
  %58 = add nuw nsw i64 %37, 1
  %59 = icmp eq i64 %58, 8
  br i1 %59, label %60, label %36

60:                                               ; preds = %36
  %61 = add nuw nsw i64 %23, 1
  %62 = icmp eq i64 %61, 8
  br i1 %62, label %63, label %22

63:                                               ; preds = %60
  %64 = add nuw nsw i64 %18, 1
  %65 = icmp eq i64 %64, %16
  br i1 %65, label %66, label %17

66:                                               ; preds = %63, %0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef signext) local_unnamed_addr #11

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !12, i64 3968}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !13, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!11, !12, i64 3972}
!15 = !{!12, !12, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !8, i64 0}
!19 = !{!11, !12, i64 4256}
!20 = !{!21, !12, i64 24}
!21 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !22, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !13, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !13, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !18, i64 90584, !12, i64 90588, !12, i64 90592}
!22 = !{!"float", !8, i64 0}
!23 = !{!21, !12, i64 90492}
!24 = !{!21, !12, i64 90496}
!25 = !{!21, !12, i64 90316}
