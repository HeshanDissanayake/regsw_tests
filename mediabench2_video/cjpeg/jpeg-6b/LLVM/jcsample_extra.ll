; ModuleID = 'jcsample.c'
source_filename = "jcsample.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_downsampler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 104) #5
  %6 = getelementptr inbounds i8, ptr %0, i64 480
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @start_pass_downsample, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @sep_downsample, ptr %7, align 8, !tbaa !21
  %8 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 0, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds i8, ptr %0, i64 268
  %10 = load i32, ptr %9, align 4, !tbaa !23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !24
  %14 = getelementptr inbounds i8, ptr %13, i64 40
  store i32 25, ptr %14, align 8, !tbaa !25
  %15 = load ptr, ptr %13, align 8, !tbaa !27
  tail call void %15(ptr noundef nonnull %0) #5
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds i8, ptr %0, i64 76
  %18 = load i32, ptr %17, align 4, !tbaa !28
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %0, i64 88
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = getelementptr inbounds i8, ptr %0, i64 312
  %24 = getelementptr inbounds i8, ptr %0, i64 316
  %25 = getelementptr inbounds i8, ptr %5, i64 24
  %26 = getelementptr inbounds i8, ptr %0, i64 272
  br label %27

27:                                               ; preds = %20, %82
  %28 = phi i32 [ %18, %20 ], [ %83, %82 ]
  %29 = phi i64 [ 0, %20 ], [ %85, %82 ]
  %30 = phi i32 [ 1, %20 ], [ %84, %82 ]
  %31 = phi ptr [ %22, %20 ], [ %86, %82 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  %33 = load i32, ptr %32, align 8, !tbaa !30
  %34 = load i32, ptr %23, align 8, !tbaa !32
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = getelementptr inbounds i8, ptr %31, i64 12
  %38 = load i32, ptr %37, align 4, !tbaa !33
  %39 = load i32, ptr %24, align 4, !tbaa !34
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, ptr %26, align 8, !tbaa !35
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds [10 x ptr], ptr %25, i64 0, i64 %29
  br i1 %43, label %46, label %45

45:                                               ; preds = %41
  store ptr @fullsize_smooth_downsample, ptr %44, align 8, !tbaa !36
  store i32 1, ptr %8, align 8, !tbaa !22
  br label %82

46:                                               ; preds = %41
  store ptr @fullsize_downsample, ptr %44, align 8, !tbaa !36
  br label %82

47:                                               ; preds = %36, %27
  %48 = shl nsw i32 %33, 1
  %49 = icmp eq i32 %48, %34
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, ptr %31, i64 12
  %52 = load i32, ptr %51, align 4, !tbaa !33
  %53 = load i32, ptr %24, align 4, !tbaa !34
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds [10 x ptr], ptr %25, i64 0, i64 %29
  store ptr @h2v1_downsample, ptr %56, align 8, !tbaa !36
  br label %82

57:                                               ; preds = %50
  %58 = shl nsw i32 %52, 1
  %59 = icmp eq i32 %58, %53
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, ptr %26, align 8, !tbaa !35
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds [10 x ptr], ptr %25, i64 0, i64 %29
  br i1 %62, label %65, label %64

64:                                               ; preds = %60
  store ptr @h2v2_smooth_downsample, ptr %63, align 8, !tbaa !36
  store i32 1, ptr %8, align 8, !tbaa !22
  br label %82

65:                                               ; preds = %60
  store ptr @h2v2_downsample, ptr %63, align 8, !tbaa !36
  br label %82

66:                                               ; preds = %47, %57
  %67 = srem i32 %34, %33
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, ptr %24, align 4, !tbaa !34
  %71 = getelementptr inbounds i8, ptr %31, i64 12
  %72 = load i32, ptr %71, align 4, !tbaa !33
  %73 = srem i32 %70, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = getelementptr inbounds [10 x ptr], ptr %25, i64 0, i64 %29
  store ptr @int_downsample, ptr %76, align 8, !tbaa !36
  br label %82

77:                                               ; preds = %69, %66
  %78 = load ptr, ptr %0, align 8, !tbaa !24
  %79 = getelementptr inbounds i8, ptr %78, i64 40
  store i32 38, ptr %79, align 8, !tbaa !25
  %80 = load ptr, ptr %78, align 8, !tbaa !27
  tail call void %80(ptr noundef nonnull %0) #5
  %81 = load i32, ptr %17, align 4, !tbaa !28
  br label %82

82:                                               ; preds = %46, %45, %65, %64, %77, %75, %55
  %83 = phi i32 [ %28, %45 ], [ %28, %46 ], [ %28, %55 ], [ %28, %64 ], [ %28, %65 ], [ %28, %75 ], [ %81, %77 ]
  %84 = phi i32 [ %30, %45 ], [ %30, %46 ], [ 0, %55 ], [ %30, %64 ], [ %30, %65 ], [ 0, %75 ], [ %30, %77 ]
  %85 = add nuw nsw i64 %29, 1
  %86 = getelementptr inbounds i8, ptr %31, i64 96
  %87 = sext i32 %83 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %27, label %89, !llvm.loop !37

89:                                               ; preds = %82
  %90 = icmp ne i32 %84, 0
  %91 = getelementptr inbounds i8, ptr %0, i64 272
  %92 = load i32, ptr %91, align 8, !tbaa !35
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i1 true, i1 %90
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr %0, align 8, !tbaa !24
  %97 = getelementptr inbounds i8, ptr %96, i64 40
  store i32 99, ptr %97, align 8, !tbaa !25
  %98 = getelementptr inbounds i8, ptr %96, i64 8
  %99 = load ptr, ptr %98, align 8, !tbaa !39
  tail call void %99(ptr noundef nonnull %0, i32 noundef signext 0) #5
  br label %100

100:                                              ; preds = %16, %95, %89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal void @start_pass_downsample(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: nounwind
define internal void @sep_downsample(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) #0 {
  %6 = getelementptr inbounds i8, ptr %0, i64 76
  %7 = load i32, ptr %6, align 4, !tbaa !28
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %0, i64 88
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  %12 = getelementptr inbounds i8, ptr %0, i64 480
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = zext i32 %2 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 24
  br label %16

16:                                               ; preds = %9, %16
  %17 = phi i64 [ 0, %9 ], [ %31, %16 ]
  %18 = phi ptr [ %11, %9 ], [ %32, %16 ]
  %19 = getelementptr inbounds ptr, ptr %1, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = getelementptr inbounds ptr, ptr %20, i64 %14
  %22 = getelementptr inbounds ptr, ptr %3, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = getelementptr inbounds i8, ptr %18, i64 12
  %25 = load i32, ptr %24, align 4, !tbaa !33
  %26 = mul i32 %25, %4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %23, i64 %27
  %29 = getelementptr inbounds [10 x ptr], ptr %15, i64 0, i64 %17
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  tail call void %30(ptr noundef nonnull %0, ptr noundef %18, ptr noundef %21, ptr noundef %28) #5
  %31 = add nuw nsw i64 %17, 1
  %32 = getelementptr inbounds i8, ptr %18, i64 96
  %33 = load i32, ptr %6, align 4, !tbaa !28
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %16, label %36, !llvm.loop !40

36:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @fullsize_smooth_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds i8, ptr %1, i64 28
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds i8, ptr %2, i64 -8
  %9 = getelementptr inbounds i8, ptr %0, i64 316
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds i8, ptr %0, i64 48
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = sub i32 %7, %12
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %10, -2
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = add nsw i32 %10, 2
  %19 = zext i32 %12 to i64
  %20 = xor i32 %12, -1
  %21 = add i32 %7, %20
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1
  %24 = zext nneg i32 %18 to i64
  br label %25

25:                                               ; preds = %25, %17
  %26 = phi i64 [ 0, %17 ], [ %32, %25 ]
  %27 = getelementptr inbounds ptr, ptr %8, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, i8 %31, i64 %23, i1 false), !tbaa !43
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %25, !llvm.loop !44

34:                                               ; preds = %25, %4
  %35 = getelementptr inbounds i8, ptr %0, i64 272
  %36 = load i32, ptr %35, align 8, !tbaa !35
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 9
  %39 = sub nsw i64 65536, %38
  %40 = shl nsw i32 %36, 6
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %1, i64 12
  %43 = load i32, ptr %42, align 4, !tbaa !33
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %142

45:                                               ; preds = %34
  %46 = add i32 %7, -2
  br label %47

47:                                               ; preds = %45, %126
  %48 = phi i64 [ 0, %45 ], [ %55, %126 ]
  %49 = getelementptr inbounds ptr, ptr %3, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !36
  %51 = getelementptr inbounds ptr, ptr %2, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  %53 = getelementptr i8, ptr %51, i64 -8
  %54 = load ptr, ptr %53, align 8, !tbaa !36
  %55 = add nuw nsw i64 %48, 1
  %56 = getelementptr inbounds ptr, ptr %2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !36
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  %59 = load i8, ptr %54, align 1, !tbaa !43
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds i8, ptr %57, i64 1
  %62 = load i8, ptr %57, align 1, !tbaa !43
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %63, %60
  %65 = load i8, ptr %52, align 1, !tbaa !43
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %64, %66
  %68 = getelementptr inbounds i8, ptr %52, i64 1
  %69 = zext i8 %65 to i64
  %70 = load i8, ptr %58, align 1, !tbaa !43
  %71 = zext i8 %70 to i32
  %72 = load i8, ptr %61, align 1, !tbaa !43
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %73, %71
  %75 = load i8, ptr %68, align 1, !tbaa !43
  %76 = zext i8 %75 to i32
  %77 = add nuw nsw i32 %74, %76
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw nsw i32 %67, 1
  %80 = zext nneg i32 %79 to i64
  %81 = sub nsw i64 %80, %69
  %82 = add nsw i64 %81, %78
  %83 = mul nsw i64 %39, %69
  %84 = mul i64 %82, %41
  %85 = add nsw i64 %83, 32768
  %86 = add i64 %85, %84
  %87 = lshr i64 %86, 16
  %88 = trunc i64 %87 to i8
  store i8 %88, ptr %50, align 1, !tbaa !43
  %89 = getelementptr inbounds i8, ptr %50, i64 1
  br label %90

90:                                               ; preds = %47, %90
  %91 = phi ptr [ %89, %47 ], [ %124, %90 ]
  %92 = phi i32 [ %67, %47 ], [ %93, %90 ]
  %93 = phi i32 [ %77, %47 ], [ %110, %90 ]
  %94 = phi i32 [ %46, %47 ], [ %123, %90 ]
  %95 = phi ptr [ %61, %47 ], [ %102, %90 ]
  %96 = phi ptr [ %58, %47 ], [ %101, %90 ]
  %97 = phi ptr [ %68, %47 ], [ %98, %90 ]
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  %99 = load i8, ptr %97, align 1, !tbaa !43
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds i8, ptr %96, i64 1
  %102 = getelementptr inbounds i8, ptr %95, i64 1
  %103 = load i8, ptr %101, align 1, !tbaa !43
  %104 = zext i8 %103 to i32
  %105 = load i8, ptr %102, align 1, !tbaa !43
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %106, %104
  %108 = load i8, ptr %98, align 1, !tbaa !43
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %107, %109
  %111 = zext nneg i32 %92 to i64
  %112 = zext nneg i32 %93 to i64
  %113 = zext nneg i32 %110 to i64
  %114 = add nuw nsw i64 %111, %112
  %115 = sub nsw i64 %114, %100
  %116 = add nsw i64 %115, %113
  %117 = mul nsw i64 %39, %100
  %118 = mul i64 %116, %41
  %119 = add nsw i64 %117, 32768
  %120 = add i64 %119, %118
  %121 = lshr i64 %120, 16
  %122 = trunc i64 %121 to i8
  store i8 %122, ptr %91, align 1, !tbaa !43
  %123 = add i32 %94, -1
  %124 = getelementptr inbounds i8, ptr %91, i64 1
  %125 = icmp eq i32 %123, 0
  br i1 %125, label %126, label %90, !llvm.loop !45

126:                                              ; preds = %90
  %127 = load i8, ptr %98, align 1, !tbaa !43
  %128 = zext i8 %127 to i64
  %129 = shl nuw nsw i32 %110, 1
  %130 = zext nneg i32 %129 to i64
  %131 = add nuw nsw i64 %130, %112
  %132 = sub nsw i64 %131, %128
  %133 = mul nsw i64 %39, %128
  %134 = mul i64 %132, %41
  %135 = add nsw i64 %133, 32768
  %136 = add i64 %135, %134
  %137 = lshr i64 %136, 16
  %138 = trunc i64 %137 to i8
  store i8 %138, ptr %124, align 1, !tbaa !43
  %139 = load i32, ptr %42, align 4, !tbaa !33
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %55, %140
  br i1 %141, label %47, label %142, !llvm.loop !46

142:                                              ; preds = %126, %34
  ret void
}

; Function Attrs: nounwind
define internal void @fullsize_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 316
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %0, i64 48
  %8 = load i32, ptr %7, align 8, !tbaa !42
  tail call void @jcopy_sample_rows(ptr noundef %2, i32 noundef signext 0, ptr noundef %3, i32 noundef signext 0, i32 noundef signext %6, i32 noundef signext %8) #5
  %9 = load i32, ptr %5, align 4, !tbaa !34
  %10 = load i32, ptr %7, align 8, !tbaa !42
  %11 = getelementptr inbounds i8, ptr %1, i64 28
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = shl i32 %12, 3
  %14 = sub i32 %13, %10
  %15 = icmp sgt i32 %14, 0
  %16 = icmp sgt i32 %9, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = zext i32 %10 to i64
  %20 = xor i32 %10, -1
  %21 = add i32 %13, %20
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1
  %24 = zext nneg i32 %9 to i64
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi i64 [ 0, %18 ], [ %32, %25 ]
  %27 = getelementptr inbounds ptr, ptr %3, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, i8 %31, i64 %23, i1 false), !tbaa !43
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %25, !llvm.loop !44

34:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @h2v1_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds i8, ptr %1, i64 28
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds i8, ptr %0, i64 316
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %0, i64 48
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = shl i32 %6, 4
  %13 = sub i32 %12, %11
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %9, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = zext i32 %11 to i64
  %19 = xor i32 %11, -1
  %20 = add i32 %12, %19
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = zext nneg i32 %9 to i64
  br label %24

24:                                               ; preds = %24, %17
  %25 = phi i64 [ 0, %17 ], [ %31, %24 ]
  %26 = getelementptr inbounds ptr, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !43
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !44

33:                                               ; preds = %24, %4
  %34 = getelementptr inbounds i8, ptr %1, i64 12
  %35 = load i32, ptr %34, align 4, !tbaa !33
  %36 = icmp slt i32 %35, 1
  %37 = icmp eq i32 %7, 0
  %38 = or i1 %36, %37
  br i1 %38, label %69, label %39

39:                                               ; preds = %33, %64
  %40 = phi i64 [ %65, %64 ], [ 0, %33 ]
  %41 = getelementptr inbounds ptr, ptr %3, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !36
  %43 = getelementptr inbounds ptr, ptr %2, i64 %40
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  br label %45

45:                                               ; preds = %39, %45
  %46 = phi i32 [ 0, %39 ], [ %60, %45 ]
  %47 = phi ptr [ %42, %39 ], [ %59, %45 ]
  %48 = phi ptr [ %44, %39 ], [ %61, %45 ]
  %49 = phi i32 [ 0, %39 ], [ %62, %45 ]
  %50 = load i8, ptr %48, align 1, !tbaa !43
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !43
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %46, %51
  %56 = add nuw nsw i32 %55, %54
  %57 = lshr i32 %56, 1
  %58 = trunc nuw i32 %57 to i8
  %59 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %58, ptr %47, align 1, !tbaa !43
  %60 = xor i32 %46, 1
  %61 = getelementptr inbounds i8, ptr %48, i64 2
  %62 = add nuw i32 %49, 1
  %63 = icmp eq i32 %62, %7
  br i1 %63, label %64, label %45, !llvm.loop !47

64:                                               ; preds = %45
  %65 = add nuw nsw i64 %40, 1
  %66 = load i32, ptr %34, align 4, !tbaa !33
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %39, label %69, !llvm.loop !48

69:                                               ; preds = %64, %33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @h2v2_smooth_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds i8, ptr %1, i64 28
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds i8, ptr %2, i64 -8
  %9 = getelementptr inbounds i8, ptr %0, i64 316
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds i8, ptr %0, i64 48
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = shl i32 %6, 4
  %14 = sub i32 %13, %12
  %15 = icmp sgt i32 %14, 0
  %16 = icmp sgt i32 %10, -2
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = add nsw i32 %10, 2
  %20 = zext i32 %12 to i64
  %21 = xor i32 %12, -1
  %22 = add i32 %13, %21
  %23 = zext i32 %22 to i64
  %24 = add nuw nsw i64 %23, 1
  %25 = zext nneg i32 %19 to i64
  br label %26

26:                                               ; preds = %26, %18
  %27 = phi i64 [ 0, %18 ], [ %33, %26 ]
  %28 = getelementptr inbounds ptr, ptr %8, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = getelementptr inbounds i8, ptr %29, i64 %20
  %31 = getelementptr inbounds i8, ptr %30, i64 -1
  %32 = load i8, ptr %31, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %30, i8 %32, i64 %24, i1 false), !tbaa !43
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %25
  br i1 %34, label %35, label %26, !llvm.loop !44

35:                                               ; preds = %26, %4
  %36 = getelementptr inbounds i8, ptr %0, i64 272
  %37 = load i32, ptr %36, align 8, !tbaa !35
  %38 = mul i32 %37, -80
  %39 = add i32 %38, 16384
  %40 = zext i32 %39 to i64
  %41 = shl nsw i32 %37, 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %1, i64 12
  %44 = load i32, ptr %43, align 4, !tbaa !33
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %255

46:                                               ; preds = %35
  %47 = add i32 %7, -2
  br label %48

48:                                               ; preds = %46, %195
  %49 = phi i64 [ 0, %46 ], [ %251, %195 ]
  %50 = phi i64 [ 0, %46 ], [ %60, %195 ]
  %51 = getelementptr inbounds ptr, ptr %3, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  %53 = getelementptr inbounds ptr, ptr %2, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !36
  %55 = or disjoint i64 %50, 1
  %56 = getelementptr inbounds ptr, ptr %2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !36
  %58 = getelementptr i8, ptr %53, i64 -8
  %59 = load ptr, ptr %58, align 8, !tbaa !36
  %60 = add nuw nsw i64 %50, 2
  %61 = getelementptr inbounds ptr, ptr %2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !36
  %63 = load i8, ptr %54, align 1, !tbaa !43
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds i8, ptr %54, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = zext i8 %66 to i32
  %68 = load i8, ptr %57, align 1, !tbaa !43
  %69 = zext i8 %68 to i32
  %70 = getelementptr inbounds i8, ptr %57, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !43
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %69, %64
  %74 = add nuw nsw i32 %73, %67
  %75 = add nuw nsw i32 %74, %72
  %76 = zext nneg i32 %75 to i64
  %77 = load i8, ptr %59, align 1, !tbaa !43
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds i8, ptr %59, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !43
  %81 = zext i8 %80 to i32
  %82 = load i8, ptr %62, align 1, !tbaa !43
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds i8, ptr %62, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !43
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds i8, ptr %54, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !43
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds i8, ptr %57, i64 2
  %91 = load i8, ptr %90, align 1, !tbaa !43
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %73, %78
  %94 = add nuw nsw i32 %93, %81
  %95 = add nuw nsw i32 %94, %83
  %96 = add nuw nsw i32 %95, %86
  %97 = add nuw nsw i32 %96, %89
  %98 = add nuw nsw i32 %97, %92
  %99 = zext nneg i32 %98 to i64
  %100 = shl nuw nsw i64 %99, 1
  %101 = getelementptr inbounds i8, ptr %59, i64 2
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = zext i8 %102 to i32
  %104 = getelementptr inbounds i8, ptr %62, i64 2
  %105 = load i8, ptr %104, align 1, !tbaa !43
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %83, %78
  %108 = add nuw nsw i32 %107, %103
  %109 = add nuw nsw i32 %108, %106
  %110 = zext nneg i32 %109 to i64
  %111 = add nuw nsw i64 %100, %110
  %112 = mul nuw nsw i64 %76, %40
  %113 = mul i64 %111, %42
  %114 = add nuw nsw i64 %112, 32768
  %115 = add i64 %114, %113
  %116 = lshr i64 %115, 16
  %117 = trunc i64 %116 to i8
  store i8 %117, ptr %52, align 1, !tbaa !43
  %118 = getelementptr inbounds i8, ptr %52, i64 1
  br label %119

119:                                              ; preds = %48, %119
  %120 = phi ptr [ %118, %48 ], [ %193, %119 ]
  %121 = phi ptr [ %104, %48 ], [ %181, %119 ]
  %122 = phi ptr [ %101, %48 ], [ %173, %119 ]
  %123 = phi ptr [ %90, %48 ], [ %164, %119 ]
  %124 = phi ptr [ %87, %48 ], [ %156, %119 ]
  %125 = phi i32 [ %47, %48 ], [ %192, %119 ]
  %126 = load i8, ptr %124, align 1, !tbaa !43
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds i8, ptr %124, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !43
  %130 = zext i8 %129 to i64
  %131 = add nuw nsw i64 %130, %127
  %132 = load i8, ptr %123, align 1, !tbaa !43
  %133 = zext i8 %132 to i64
  %134 = add nuw nsw i64 %131, %133
  %135 = getelementptr inbounds i8, ptr %123, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !43
  %137 = zext i8 %136 to i64
  %138 = add nuw nsw i64 %134, %137
  %139 = load i8, ptr %122, align 1, !tbaa !43
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds i8, ptr %122, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !43
  %143 = zext i8 %142 to i64
  %144 = add nuw nsw i64 %143, %140
  %145 = load i8, ptr %121, align 1, !tbaa !43
  %146 = zext i8 %145 to i64
  %147 = add nuw nsw i64 %144, %146
  %148 = getelementptr inbounds i8, ptr %121, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !43
  %150 = zext i8 %149 to i64
  %151 = add nuw nsw i64 %147, %150
  %152 = getelementptr inbounds i8, ptr %124, i64 -1
  %153 = load i8, ptr %152, align 1, !tbaa !43
  %154 = zext i8 %153 to i64
  %155 = add nuw nsw i64 %151, %154
  %156 = getelementptr inbounds i8, ptr %124, i64 2
  %157 = load i8, ptr %156, align 1, !tbaa !43
  %158 = zext i8 %157 to i64
  %159 = add nuw nsw i64 %155, %158
  %160 = getelementptr inbounds i8, ptr %123, i64 -1
  %161 = load i8, ptr %160, align 1, !tbaa !43
  %162 = zext i8 %161 to i64
  %163 = add nuw nsw i64 %159, %162
  %164 = getelementptr inbounds i8, ptr %123, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !43
  %166 = zext i8 %165 to i64
  %167 = add nuw nsw i64 %163, %166
  %168 = shl nuw nsw i64 %167, 1
  %169 = and i64 %168, 8589934590
  %170 = getelementptr inbounds i8, ptr %122, i64 -1
  %171 = load i8, ptr %170, align 1, !tbaa !43
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds i8, ptr %122, i64 2
  %174 = load i8, ptr %173, align 1, !tbaa !43
  %175 = zext i8 %174 to i64
  %176 = add nuw nsw i64 %175, %172
  %177 = getelementptr inbounds i8, ptr %121, i64 -1
  %178 = load i8, ptr %177, align 1, !tbaa !43
  %179 = zext i8 %178 to i64
  %180 = add nuw nsw i64 %176, %179
  %181 = getelementptr inbounds i8, ptr %121, i64 2
  %182 = load i8, ptr %181, align 1, !tbaa !43
  %183 = zext i8 %182 to i64
  %184 = add nuw nsw i64 %180, %169
  %185 = add nuw nsw i64 %184, %183
  %186 = mul nuw nsw i64 %138, %40
  %187 = mul i64 %185, %42
  %188 = add nuw nsw i64 %186, 32768
  %189 = add i64 %188, %187
  %190 = lshr i64 %189, 16
  %191 = trunc i64 %190 to i8
  store i8 %191, ptr %120, align 1, !tbaa !43
  %192 = add i32 %125, -1
  %193 = getelementptr inbounds i8, ptr %120, i64 1
  %194 = icmp eq i32 %192, 0
  br i1 %194, label %195, label %119, !llvm.loop !49

195:                                              ; preds = %119
  %196 = getelementptr inbounds i8, ptr %124, i64 1
  %197 = getelementptr inbounds i8, ptr %123, i64 1
  %198 = getelementptr inbounds i8, ptr %122, i64 1
  %199 = getelementptr inbounds i8, ptr %121, i64 1
  %200 = load i8, ptr %156, align 1, !tbaa !43
  %201 = zext i8 %200 to i32
  %202 = getelementptr inbounds i8, ptr %124, i64 3
  %203 = load i8, ptr %202, align 1, !tbaa !43
  %204 = zext i8 %203 to i32
  %205 = load i8, ptr %164, align 1, !tbaa !43
  %206 = zext i8 %205 to i32
  %207 = getelementptr inbounds i8, ptr %123, i64 3
  %208 = load i8, ptr %207, align 1, !tbaa !43
  %209 = zext i8 %208 to i32
  %210 = add nuw nsw i32 %209, %204
  %211 = add nuw nsw i32 %210, %201
  %212 = add nuw nsw i32 %211, %206
  %213 = zext nneg i32 %212 to i64
  %214 = load i8, ptr %173, align 1, !tbaa !43
  %215 = zext i8 %214 to i32
  %216 = getelementptr inbounds i8, ptr %122, i64 3
  %217 = load i8, ptr %216, align 1, !tbaa !43
  %218 = zext i8 %217 to i32
  %219 = load i8, ptr %181, align 1, !tbaa !43
  %220 = zext i8 %219 to i32
  %221 = getelementptr inbounds i8, ptr %121, i64 3
  %222 = load i8, ptr %221, align 1, !tbaa !43
  %223 = zext i8 %222 to i32
  %224 = load i8, ptr %196, align 1, !tbaa !43
  %225 = zext i8 %224 to i32
  %226 = load i8, ptr %197, align 1, !tbaa !43
  %227 = zext i8 %226 to i32
  %228 = add nuw nsw i32 %210, %215
  %229 = add nuw nsw i32 %228, %218
  %230 = add nuw nsw i32 %229, %220
  %231 = add nuw nsw i32 %230, %223
  %232 = add nuw nsw i32 %231, %225
  %233 = add nuw nsw i32 %232, %227
  %234 = zext nneg i32 %233 to i64
  %235 = shl nuw nsw i64 %234, 1
  %236 = load i8, ptr %198, align 1, !tbaa !43
  %237 = zext i8 %236 to i32
  %238 = load i8, ptr %199, align 1, !tbaa !43
  %239 = zext i8 %238 to i32
  %240 = add nuw nsw i32 %223, %218
  %241 = add nuw nsw i32 %240, %237
  %242 = add nuw nsw i32 %241, %239
  %243 = zext nneg i32 %242 to i64
  %244 = add nuw nsw i64 %235, %243
  %245 = mul nuw nsw i64 %213, %40
  %246 = mul i64 %244, %42
  %247 = add nuw nsw i64 %245, 32768
  %248 = add i64 %247, %246
  %249 = lshr i64 %248, 16
  %250 = trunc i64 %249 to i8
  store i8 %250, ptr %193, align 1, !tbaa !43
  %251 = add nuw nsw i64 %49, 1
  %252 = load i32, ptr %43, align 4, !tbaa !33
  %253 = sext i32 %252 to i64
  %254 = icmp slt i64 %251, %253
  br i1 %254, label %48, label %255, !llvm.loop !50

255:                                              ; preds = %195, %35
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @h2v2_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds i8, ptr %1, i64 28
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds i8, ptr %0, i64 316
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %0, i64 48
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = shl i32 %6, 4
  %13 = sub i32 %12, %11
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %9, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = zext i32 %11 to i64
  %19 = xor i32 %11, -1
  %20 = add i32 %12, %19
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = zext nneg i32 %9 to i64
  br label %24

24:                                               ; preds = %24, %17
  %25 = phi i64 [ 0, %17 ], [ %31, %24 ]
  %26 = getelementptr inbounds ptr, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !43
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !44

33:                                               ; preds = %24, %4
  %34 = getelementptr inbounds i8, ptr %1, i64 12
  %35 = load i32, ptr %34, align 4, !tbaa !33
  %36 = icmp slt i32 %35, 1
  %37 = icmp eq i32 %7, 0
  %38 = or i1 %36, %37
  br i1 %38, label %83, label %39

39:                                               ; preds = %33, %77
  %40 = phi i64 [ %79, %77 ], [ 0, %33 ]
  %41 = phi i64 [ %78, %77 ], [ 0, %33 ]
  %42 = getelementptr inbounds ptr, ptr %3, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !36
  %44 = getelementptr inbounds ptr, ptr %2, i64 %41
  %45 = load ptr, ptr %44, align 8, !tbaa !36
  %46 = or disjoint i64 %41, 1
  %47 = getelementptr inbounds ptr, ptr %2, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !36
  br label %49

49:                                               ; preds = %39, %49
  %50 = phi i32 [ 1, %39 ], [ %72, %49 ]
  %51 = phi ptr [ %43, %39 ], [ %71, %49 ]
  %52 = phi ptr [ %48, %39 ], [ %74, %49 ]
  %53 = phi ptr [ %45, %39 ], [ %73, %49 ]
  %54 = phi i32 [ 0, %39 ], [ %75, %49 ]
  %55 = load i8, ptr %53, align 1, !tbaa !43
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds i8, ptr %53, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !43
  %59 = zext i8 %58 to i32
  %60 = load i8, ptr %52, align 1, !tbaa !43
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds i8, ptr %52, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !43
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %50, %56
  %66 = add nuw nsw i32 %65, %59
  %67 = add nuw nsw i32 %66, %61
  %68 = add nuw nsw i32 %67, %64
  %69 = lshr i32 %68, 2
  %70 = trunc nuw i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %70, ptr %51, align 1, !tbaa !43
  %72 = xor i32 %50, 3
  %73 = getelementptr inbounds i8, ptr %53, i64 2
  %74 = getelementptr inbounds i8, ptr %52, i64 2
  %75 = add nuw i32 %54, 1
  %76 = icmp eq i32 %75, %7
  br i1 %76, label %77, label %49, !llvm.loop !51

77:                                               ; preds = %49
  %78 = add nuw nsw i64 %41, 2
  %79 = add nuw nsw i64 %40, 1
  %80 = load i32, ptr %34, align 4, !tbaa !33
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %79, %81
  br i1 %82, label %39, label %83, !llvm.loop !52

83:                                               ; preds = %77, %33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @int_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds i8, ptr %1, i64 28
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds i8, ptr %0, i64 312
  %9 = load i32, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  %11 = load i32, ptr %10, align 8, !tbaa !30
  %12 = sdiv i32 %9, %11
  %13 = getelementptr inbounds i8, ptr %0, i64 316
  %14 = load i32, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds i8, ptr %1, i64 12
  %16 = load i32, ptr %15, align 4, !tbaa !33
  %17 = sdiv i32 %14, %16
  %18 = mul nsw i32 %17, %12
  %19 = sdiv i32 %18, 2
  %20 = getelementptr inbounds i8, ptr %0, i64 48
  %21 = load i32, ptr %20, align 8, !tbaa !42
  %22 = mul i32 %12, %7
  %23 = sub i32 %22, %21
  %24 = icmp sgt i32 %23, 0
  %25 = icmp sgt i32 %14, 0
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %45

27:                                               ; preds = %4
  %28 = zext i32 %21 to i64
  %29 = xor i32 %21, -1
  %30 = add i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = add nuw nsw i64 %31, 1
  %33 = zext nneg i32 %14 to i64
  br label %34

34:                                               ; preds = %34, %27
  %35 = phi i64 [ 0, %27 ], [ %41, %34 ]
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  %38 = getelementptr inbounds i8, ptr %37, i64 %28
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  %40 = load i8, ptr %39, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %38, i8 %40, i64 %32, i1 false), !tbaa !43
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, %33
  br i1 %42, label %43, label %34, !llvm.loop !44

43:                                               ; preds = %34
  %44 = load i32, ptr %15, align 4, !tbaa !33
  br label %45

45:                                               ; preds = %43, %4
  %46 = phi i32 [ %44, %43 ], [ %16, %4 ]
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %126

48:                                               ; preds = %45
  %49 = icmp eq i32 %7, 0
  %50 = icmp sgt i32 %12, 0
  %51 = sext i32 %19 to i64
  %52 = sext i32 %18 to i64
  br i1 %49, label %126, label %53

53:                                               ; preds = %48
  %54 = icmp sgt i32 %17, 0
  br i1 %54, label %55, label %114

55:                                               ; preds = %53
  br i1 %50, label %56, label %102

56:                                               ; preds = %55
  %57 = zext nneg i32 %17 to i64
  br label %58

58:                                               ; preds = %56, %96
  %59 = phi i64 [ 0, %56 ], [ %98, %96 ]
  %60 = phi i64 [ 0, %56 ], [ %97, %96 ]
  %61 = getelementptr inbounds ptr, ptr %3, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !36
  %63 = getelementptr inbounds ptr, ptr %2, i64 %60
  br label %64

64:                                               ; preds = %88, %58
  %65 = phi ptr [ %62, %58 ], [ %92, %88 ]
  %66 = phi i32 [ 0, %58 ], [ %94, %88 ]
  %67 = phi i32 [ 0, %58 ], [ %93, %88 ]
  %68 = zext i32 %66 to i64
  br label %69

69:                                               ; preds = %85, %64
  %70 = phi i64 [ %86, %85 ], [ 0, %64 ]
  %71 = phi i64 [ %82, %85 ], [ 0, %64 ]
  %72 = getelementptr inbounds ptr, ptr %63, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !36
  %74 = getelementptr inbounds i8, ptr %73, i64 %68
  br label %75

75:                                               ; preds = %75, %69
  %76 = phi i64 [ %71, %69 ], [ %82, %75 ]
  %77 = phi ptr [ %74, %69 ], [ %79, %75 ]
  %78 = phi i32 [ 0, %69 ], [ %83, %75 ]
  %79 = getelementptr inbounds i8, ptr %77, i64 1
  %80 = load i8, ptr %77, align 1, !tbaa !43
  %81 = zext i8 %80 to i64
  %82 = add nsw i64 %76, %81
  %83 = add nuw nsw i32 %78, 1
  %84 = icmp eq i32 %83, %12
  br i1 %84, label %85, label %75, !llvm.loop !53

85:                                               ; preds = %75
  %86 = add nuw nsw i64 %70, 1
  %87 = icmp eq i64 %86, %57
  br i1 %87, label %88, label %69, !llvm.loop !54

88:                                               ; preds = %85
  %89 = add nsw i64 %82, %51
  %90 = sdiv i64 %89, %52
  %91 = trunc i64 %90 to i8
  %92 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %91, ptr %65, align 1, !tbaa !43
  %93 = add nuw i32 %67, 1
  %94 = add i32 %66, %12
  %95 = icmp eq i32 %93, %7
  br i1 %95, label %96, label %64, !llvm.loop !55

96:                                               ; preds = %88
  %97 = add nuw nsw i64 %60, %57
  %98 = add nuw nsw i64 %59, 1
  %99 = load i32, ptr %15, align 4, !tbaa !33
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %58, label %126, !llvm.loop !56

102:                                              ; preds = %55
  %103 = sdiv i64 %51, %52
  %104 = trunc i64 %103 to i8
  %105 = zext i32 %7 to i64
  br label %106

106:                                              ; preds = %106, %102
  %107 = phi i64 [ %110, %106 ], [ 0, %102 ]
  %108 = getelementptr inbounds ptr, ptr %3, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr align 1 %109, i8 %104, i64 %105, i1 false), !tbaa !43
  %110 = add nuw nsw i64 %107, 1
  %111 = load i32, ptr %15, align 4, !tbaa !33
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %106, label %126, !llvm.loop !56

114:                                              ; preds = %53
  %115 = sdiv i64 %51, %52
  %116 = trunc i64 %115 to i8
  %117 = zext i32 %7 to i64
  br label %118

118:                                              ; preds = %118, %114
  %119 = phi i64 [ %122, %118 ], [ 0, %114 ]
  %120 = getelementptr inbounds ptr, ptr %3, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr align 1 %121, i8 %116, i64 %117, i1 false), !tbaa !43
  %122 = add nuw nsw i64 %119, 1
  %123 = load i32, ptr %15, align 4, !tbaa !33
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %122, %124
  br i1 %125, label %118, label %126, !llvm.loop !56

126:                                              ; preds = %118, %106, %96, %48, %45
  ret void
}

declare dso_local void @jcopy_sample_rows(ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 480}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !9, i64 24}
!20 = !{!"jpeg_downsampler", !8, i64 0, !8, i64 8, !11, i64 16}
!21 = !{!19, !8, i64 8}
!22 = !{!19, !11, i64 16}
!23 = !{!7, !11, i64 268}
!24 = !{!7, !8, i64 0}
!25 = !{!26, !11, i64 40}
!26 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!27 = !{!26, !8, i64 0}
!28 = !{!7, !11, i64 76}
!29 = !{!7, !8, i64 88}
!30 = !{!31, !11, i64 8}
!31 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!32 = !{!7, !11, i64 312}
!33 = !{!31, !11, i64 12}
!34 = !{!7, !11, i64 316}
!35 = !{!7, !11, i64 272}
!36 = !{!8, !8, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!26, !8, i64 8}
!40 = distinct !{!40, !38}
!41 = !{!31, !11, i64 28}
!42 = !{!7, !11, i64 48}
!43 = !{!9, !9, i64 0}
!44 = distinct !{!44, !38}
!45 = distinct !{!45, !38}
!46 = distinct !{!46, !38}
!47 = distinct !{!47, !38}
!48 = distinct !{!48, !38}
!49 = distinct !{!49, !38}
!50 = distinct !{!50, !38}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38}
!55 = distinct !{!55, !38}
!56 = distinct !{!56, !38}
