; ModuleID = 'jdsample.c'
source_filename = "jdsample.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_upsampler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 256) #7
  %6 = getelementptr inbounds i8, ptr %0, i64 608
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @start_pass_upsample, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @sep_upsample, ptr %7, align 8, !tbaa !21
  %8 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 0, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds i8, ptr %0, i64 392
  %10 = load i32, ptr %9, align 8, !tbaa !23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !24
  %14 = getelementptr inbounds i8, ptr %13, i64 40
  store i32 25, ptr %14, align 8, !tbaa !25
  %15 = load ptr, ptr %13, align 8, !tbaa !27
  tail call void %15(ptr noundef nonnull %0) #7
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds i8, ptr %0, i64 100
  %18 = load i32, ptr %17, align 4, !tbaa !28
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %0, i64 416
  %22 = load i32, ptr %21, align 8, !tbaa !29
  %23 = icmp sgt i32 %22, 1
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  %26 = getelementptr inbounds i8, ptr %0, i64 56
  %27 = load i32, ptr %26, align 8, !tbaa !30
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %136

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %0, i64 304
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  %32 = getelementptr inbounds i8, ptr %0, i64 416
  %33 = getelementptr inbounds i8, ptr %0, i64 408
  %34 = getelementptr inbounds i8, ptr %0, i64 412
  %35 = getelementptr inbounds i8, ptr %5, i64 192
  %36 = getelementptr inbounds i8, ptr %5, i64 104
  %37 = getelementptr inbounds i8, ptr %5, i64 232
  %38 = getelementptr inbounds i8, ptr %5, i64 242
  %39 = getelementptr inbounds i8, ptr %0, i64 136
  %40 = getelementptr inbounds i8, ptr %5, i64 24
  br label %41

41:                                               ; preds = %29, %127
  %42 = phi i64 [ 0, %29 ], [ %131, %127 ]
  %43 = phi ptr [ %31, %29 ], [ %132, %127 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 8
  %45 = load i32, ptr %44, align 8, !tbaa !32
  %46 = getelementptr inbounds i8, ptr %43, i64 36
  %47 = load i32, ptr %46, align 4, !tbaa !34
  %48 = mul nsw i32 %47, %45
  %49 = load i32, ptr %32, align 8, !tbaa !29
  %50 = sdiv i32 %48, %49
  %51 = getelementptr inbounds i8, ptr %43, i64 12
  %52 = load i32, ptr %51, align 4, !tbaa !35
  %53 = mul nsw i32 %52, %47
  %54 = sdiv i32 %53, %49
  %55 = load i32, ptr %33, align 8, !tbaa !36
  %56 = load i32, ptr %34, align 4, !tbaa !37
  %57 = getelementptr inbounds [10 x i32], ptr %35, i64 0, i64 %42
  store i32 %54, ptr %57, align 4, !tbaa !38
  %58 = getelementptr inbounds i8, ptr %43, i64 48
  %59 = load i32, ptr %58, align 8, !tbaa !39
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %127, label %61

61:                                               ; preds = %41
  %62 = icmp eq i32 %50, %55
  %63 = icmp eq i32 %54, %56
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %127, label %65

65:                                               ; preds = %61
  %66 = shl nsw i32 %50, 1
  %67 = icmp eq i32 %66, %55
  %68 = select i1 %67, i1 %63, i1 false
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  br i1 %25, label %70, label %76

70:                                               ; preds = %69
  %71 = getelementptr inbounds i8, ptr %43, i64 40
  %72 = load i32, ptr %71, align 8, !tbaa !40
  %73 = icmp ugt i32 %72, 2
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = getelementptr inbounds [10 x ptr], ptr %36, i64 0, i64 %42
  store ptr @h2v1_fancy_upsample, ptr %75, align 8, !tbaa !41
  br label %115

76:                                               ; preds = %70, %69
  %77 = getelementptr inbounds [10 x ptr], ptr %36, i64 0, i64 %42
  store ptr @h2v1_upsample, ptr %77, align 8, !tbaa !41
  br label %115

78:                                               ; preds = %65
  %79 = shl nsw i32 %54, 1
  %80 = icmp eq i32 %79, %56
  %81 = select i1 %67, i1 %80, i1 false
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  br i1 %25, label %83, label %89

83:                                               ; preds = %82
  %84 = getelementptr inbounds i8, ptr %43, i64 40
  %85 = load i32, ptr %84, align 8, !tbaa !40
  %86 = icmp ugt i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = getelementptr inbounds [10 x ptr], ptr %36, i64 0, i64 %42
  store ptr @h2v2_fancy_upsample, ptr %88, align 8, !tbaa !41
  store i32 1, ptr %8, align 8, !tbaa !22
  br label %115

89:                                               ; preds = %83, %82
  %90 = getelementptr inbounds [10 x ptr], ptr %36, i64 0, i64 %42
  store ptr @h2v2_upsample, ptr %90, align 8, !tbaa !41
  br label %115

91:                                               ; preds = %78
  %92 = freeze i32 %55
  %93 = freeze i32 %50
  %94 = sdiv i32 %92, %93
  %95 = mul i32 %94, %93
  %96 = sub i32 %92, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = freeze i32 %56
  %100 = freeze i32 %54
  %101 = sdiv i32 %99, %100
  %102 = mul i32 %101, %100
  %103 = sub i32 %99, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = getelementptr inbounds [10 x ptr], ptr %36, i64 0, i64 %42
  store ptr @int_upsample, ptr %106, align 8, !tbaa !41
  %107 = trunc i32 %94 to i8
  %108 = getelementptr inbounds [10 x i8], ptr %37, i64 0, i64 %42
  store i8 %107, ptr %108, align 1, !tbaa !42
  %109 = trunc i32 %101 to i8
  %110 = getelementptr inbounds [10 x i8], ptr %38, i64 0, i64 %42
  store i8 %109, ptr %110, align 1, !tbaa !42
  br label %115

111:                                              ; preds = %98, %91
  %112 = load ptr, ptr %0, align 8, !tbaa !24
  %113 = getelementptr inbounds i8, ptr %112, i64 40
  store i32 38, ptr %113, align 8, !tbaa !25
  %114 = load ptr, ptr %112, align 8, !tbaa !27
  tail call void %114(ptr noundef nonnull %0) #7
  br label %115

115:                                              ; preds = %76, %74, %105, %111, %87, %89
  %116 = load ptr, ptr %2, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %116, i64 16
  %118 = load ptr, ptr %117, align 8, !tbaa !43
  %119 = load i32, ptr %39, align 8, !tbaa !44
  %120 = zext i32 %119 to i64
  %121 = load i32, ptr %33, align 8, !tbaa !36
  %122 = sext i32 %121 to i64
  %123 = tail call i64 @jround_up(i64 noundef %120, i64 noundef %122) #7
  %124 = trunc i64 %123 to i32
  %125 = load i32, ptr %34, align 4, !tbaa !37
  %126 = tail call ptr %118(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %124, i32 noundef signext %125) #7
  br label %127

127:                                              ; preds = %61, %41, %115
  %128 = phi ptr [ %40, %115 ], [ %36, %41 ], [ %36, %61 ]
  %129 = phi ptr [ %126, %115 ], [ @noop_upsample, %41 ], [ @fullsize_upsample, %61 ]
  %130 = getelementptr inbounds [10 x ptr], ptr %128, i64 0, i64 %42
  store ptr %129, ptr %130, align 8, !tbaa !41
  %131 = add nuw nsw i64 %42, 1
  %132 = getelementptr inbounds i8, ptr %43, i64 96
  %133 = load i32, ptr %26, align 8, !tbaa !30
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %131, %134
  br i1 %135, label %41, label %136, !llvm.loop !45

136:                                              ; preds = %127, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define internal void @start_pass_upsample(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 608
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %0, i64 412
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = getelementptr inbounds i8, ptr %3, i64 184
  store i32 %5, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds i8, ptr %0, i64 140
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds i8, ptr %3, i64 188
  store i32 %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: nounwind
define internal void @sep_upsample(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 signext %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef signext %6) #0 {
  %8 = getelementptr inbounds i8, ptr %0, i64 608
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds i8, ptr %9, i64 184
  %11 = load i32, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds i8, ptr %0, i64 412
  %13 = load i32, ptr %12, align 4, !tbaa !37
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %48, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds i8, ptr %0, i64 56
  %17 = load i32, ptr %16, align 8, !tbaa !30
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %0, i64 304
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = getelementptr inbounds i8, ptr %9, i64 104
  %23 = getelementptr inbounds i8, ptr %9, i64 192
  %24 = getelementptr inbounds i8, ptr %9, i64 24
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi i64 [ 0, %19 ], [ %39, %25 ]
  %27 = phi ptr [ %21, %19 ], [ %40, %25 ]
  %28 = getelementptr inbounds [10 x ptr], ptr %22, i64 0, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = getelementptr inbounds ptr, ptr %1, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  %32 = load i32, ptr %2, align 4, !tbaa !38
  %33 = getelementptr inbounds [10 x i32], ptr %23, i64 0, i64 %26
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = mul i32 %34, %32
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %31, i64 %36
  %38 = getelementptr inbounds ptr, ptr %24, i64 %26
  tail call void %29(ptr noundef nonnull %0, ptr noundef %27, ptr noundef %37, ptr noundef nonnull %38) #7
  %39 = add nuw nsw i64 %26, 1
  %40 = getelementptr inbounds i8, ptr %27, i64 96
  %41 = load i32, ptr %16, align 8, !tbaa !30
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %25, label %44, !llvm.loop !50

44:                                               ; preds = %25
  %45 = load i32, ptr %12, align 4, !tbaa !37
  br label %46

46:                                               ; preds = %44, %15
  %47 = phi i32 [ %45, %44 ], [ %13, %15 ]
  store i32 0, ptr %10, align 8, !tbaa !47
  br label %48

48:                                               ; preds = %46, %7
  %49 = phi i32 [ 0, %46 ], [ %11, %7 ]
  %50 = phi i32 [ %47, %46 ], [ %13, %7 ]
  %51 = sub nsw i32 %50, %49
  %52 = getelementptr inbounds i8, ptr %9, i64 188
  %53 = load i32, ptr %52, align 4, !tbaa !49
  %54 = tail call i32 @llvm.umin.i32(i32 %51, i32 %53)
  %55 = load i32, ptr %5, align 4, !tbaa !38
  %56 = sub i32 %6, %55
  %57 = tail call i32 @llvm.umin.i32(i32 %54, i32 %56)
  %58 = getelementptr inbounds i8, ptr %0, i64 616
  %59 = load ptr, ptr %58, align 8, !tbaa !51
  %60 = getelementptr inbounds i8, ptr %59, i64 8
  %61 = load ptr, ptr %60, align 8, !tbaa !52
  %62 = getelementptr inbounds i8, ptr %9, i64 24
  %63 = zext i32 %55 to i64
  %64 = getelementptr inbounds ptr, ptr %4, i64 %63
  tail call void %61(ptr noundef nonnull %0, ptr noundef nonnull %62, i32 noundef signext %49, ptr noundef %64, i32 noundef signext %57) #7
  %65 = load i32, ptr %5, align 4, !tbaa !38
  %66 = add i32 %65, %57
  store i32 %66, ptr %5, align 4, !tbaa !38
  %67 = load i32, ptr %52, align 4, !tbaa !49
  %68 = sub i32 %67, %57
  store i32 %68, ptr %52, align 4, !tbaa !49
  %69 = load i32, ptr %10, align 8, !tbaa !47
  %70 = add i32 %69, %57
  store i32 %70, ptr %10, align 8, !tbaa !47
  %71 = load i32, ptr %12, align 4, !tbaa !37
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %48
  %74 = load i32, ptr %2, align 4, !tbaa !38
  %75 = add i32 %74, 1
  store i32 %75, ptr %2, align 4, !tbaa !38
  br label %76

76:                                               ; preds = %73, %48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define internal void @noop_upsample(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #2 {
  store ptr null, ptr %3, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define internal void @fullsize_upsample(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #2 {
  store ptr %2, ptr %3, align 8, !tbaa !41
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @h2v1_fancy_upsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #3 {
  %5 = load ptr, ptr %3, align 8, !tbaa !41
  %6 = getelementptr inbounds i8, ptr %0, i64 412
  %7 = load i32, ptr %6, align 4, !tbaa !37
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %77

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %1, i64 40
  br label %11

11:                                               ; preds = %9, %58
  %12 = phi i64 [ 0, %9 ], [ %73, %58 ]
  %13 = getelementptr inbounds ptr, ptr %2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = getelementptr inbounds ptr, ptr %5, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  %18 = load i8, ptr %14, align 1, !tbaa !42
  %19 = zext i8 %18 to i16
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %18, ptr %16, align 1, !tbaa !42
  %21 = mul nuw nsw i16 %19, 3
  %22 = load i8, ptr %17, align 1, !tbaa !42
  %23 = zext i8 %22 to i16
  %24 = add nuw nsw i16 %21, 2
  %25 = add nuw nsw i16 %24, %23
  %26 = lshr i16 %25, 2
  %27 = trunc nuw i16 %26 to i8
  store i8 %27, ptr %20, align 1, !tbaa !42
  %28 = load i32, ptr %10, align 8, !tbaa !40
  %29 = add i32 %28, -2
  %30 = getelementptr inbounds i8, ptr %16, i64 2
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %11, %32
  %33 = phi ptr [ %56, %32 ], [ %30, %11 ]
  %34 = phi i32 [ %55, %32 ], [ %29, %11 ]
  %35 = phi ptr [ %33, %32 ], [ %16, %11 ]
  %36 = phi ptr [ %37, %32 ], [ %17, %11 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %36, align 1, !tbaa !42
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %39, 3
  %41 = getelementptr inbounds i8, ptr %36, i64 -1
  %42 = load i8, ptr %41, align 1, !tbaa !42
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, 1
  %45 = add nuw nsw i32 %44, %40
  %46 = lshr i32 %45, 2
  %47 = trunc nuw i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %35, i64 3
  store i8 %47, ptr %33, align 1, !tbaa !42
  %49 = load i8, ptr %37, align 1, !tbaa !42
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %40, 2
  %52 = add nuw nsw i32 %51, %50
  %53 = lshr i32 %52, 2
  %54 = trunc nuw i32 %53 to i8
  store i8 %54, ptr %48, align 1, !tbaa !42
  %55 = add i32 %34, -1
  %56 = getelementptr inbounds i8, ptr %33, i64 2
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %58, label %32, !llvm.loop !54

58:                                               ; preds = %32, %11
  %59 = phi ptr [ %17, %11 ], [ %37, %32 ]
  %60 = phi ptr [ %16, %11 ], [ %33, %32 ]
  %61 = phi ptr [ %30, %11 ], [ %56, %32 ]
  %62 = load i8, ptr %59, align 1, !tbaa !42
  %63 = zext i8 %62 to i16
  %64 = mul nuw nsw i16 %63, 3
  %65 = getelementptr inbounds i8, ptr %59, i64 -1
  %66 = load i8, ptr %65, align 1, !tbaa !42
  %67 = zext i8 %66 to i16
  %68 = add nuw nsw i16 %67, 1
  %69 = add nuw nsw i16 %68, %64
  %70 = lshr i16 %69, 2
  %71 = trunc nuw i16 %70 to i8
  %72 = getelementptr inbounds i8, ptr %60, i64 3
  store i8 %71, ptr %61, align 1, !tbaa !42
  store i8 %62, ptr %72, align 1, !tbaa !42
  %73 = add nuw nsw i64 %12, 1
  %74 = load i32, ptr %6, align 4, !tbaa !37
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %11, label %77, !llvm.loop !55

77:                                               ; preds = %58, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @h2v1_upsample(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #3 {
  %5 = load ptr, ptr %3, align 8, !tbaa !41
  %6 = getelementptr inbounds i8, ptr %0, i64 412
  %7 = load i32, ptr %6, align 4, !tbaa !37
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %0, i64 136
  br label %11

11:                                               ; preds = %9, %33
  %12 = phi i32 [ %7, %9 ], [ %34, %33 ]
  %13 = phi i64 [ 0, %9 ], [ %35, %33 ]
  %14 = getelementptr inbounds ptr, ptr %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = load i32, ptr %10, align 8, !tbaa !44
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %15, i64 %17
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds ptr, ptr %2, i64 %13
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %26, %23 ], [ %22, %20 ]
  %25 = phi ptr [ %29, %23 ], [ %15, %20 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = load i8, ptr %24, align 1, !tbaa !42
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %27, ptr %25, align 1, !tbaa !42
  %29 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 %27, ptr %28, align 1, !tbaa !42
  %30 = icmp ult ptr %29, %18
  br i1 %30, label %23, label %31, !llvm.loop !56

31:                                               ; preds = %23
  %32 = load i32, ptr %6, align 4, !tbaa !37
  br label %33

33:                                               ; preds = %31, %11
  %34 = phi i32 [ %32, %31 ], [ %12, %11 ]
  %35 = add nuw nsw i64 %13, 1
  %36 = sext i32 %34 to i64
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %11, label %38, !llvm.loop !57

38:                                               ; preds = %33, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @h2v2_fancy_upsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #3 {
  %5 = load ptr, ptr %3, align 8, !tbaa !41
  %6 = getelementptr inbounds i8, ptr %0, i64 412
  %7 = load i32, ptr %6, align 4, !tbaa !37
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %183

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %1, i64 40
  %11 = getelementptr i8, ptr %5, i64 8
  br label %12

12:                                               ; preds = %9, %164
  %13 = phi i64 [ 0, %9 ], [ %180, %164 ]
  %14 = phi i64 [ 0, %9 ], [ %101, %164 ]
  %15 = getelementptr inbounds ptr, ptr %2, i64 %13
  %16 = shl i64 %14, 32
  %17 = ashr exact i64 %16, 32
  %18 = load ptr, ptr %15, align 8, !tbaa !41
  %19 = getelementptr i8, ptr %15, i64 -8
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = getelementptr inbounds ptr, ptr %5, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = getelementptr inbounds i8, ptr %18, i64 1
  %24 = load i8, ptr %18, align 1, !tbaa !42
  %25 = zext i8 %24 to i32
  %26 = mul nuw nsw i32 %25, 3
  %27 = getelementptr inbounds i8, ptr %20, i64 1
  %28 = load i8, ptr %20, align 1, !tbaa !42
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %26, %29
  %31 = load i8, ptr %23, align 1, !tbaa !42
  %32 = zext i8 %31 to i32
  %33 = mul nuw nsw i32 %32, 3
  %34 = load i8, ptr %27, align 1, !tbaa !42
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %33, %35
  %37 = shl nuw nsw i32 %30, 2
  %38 = add nuw nsw i32 %37, 8
  %39 = lshr i32 %38, 4
  %40 = trunc nuw i32 %39 to i8
  %41 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %40, ptr %22, align 1, !tbaa !42
  %42 = mul nuw nsw i32 %30, 3
  %43 = add nuw nsw i32 %42, 7
  %44 = add nuw nsw i32 %43, %36
  %45 = lshr i32 %44, 4
  %46 = trunc nuw i32 %45 to i8
  store i8 %46, ptr %41, align 1, !tbaa !42
  %47 = load i32, ptr %10, align 8, !tbaa !40
  %48 = add i32 %47, -2
  %49 = getelementptr inbounds i8, ptr %22, i64 2
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %12
  %52 = getelementptr inbounds i8, ptr %20, i64 2
  %53 = getelementptr inbounds i8, ptr %18, i64 2
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %81, %54 ], [ %49, %51 ]
  %56 = phi i32 [ %80, %54 ], [ %48, %51 ]
  %57 = phi i32 [ %58, %54 ], [ %30, %51 ]
  %58 = phi i32 [ %69, %54 ], [ %36, %51 ]
  %59 = phi ptr [ %55, %54 ], [ %22, %51 ]
  %60 = phi ptr [ %66, %54 ], [ %52, %51 ]
  %61 = phi ptr [ %62, %54 ], [ %53, %51 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !42
  %64 = zext i8 %63 to i32
  %65 = mul nuw nsw i32 %64, 3
  %66 = getelementptr inbounds i8, ptr %60, i64 1
  %67 = load i8, ptr %60, align 1, !tbaa !42
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %65, %68
  %70 = mul nuw nsw i32 %58, 3
  %71 = add nuw nsw i32 %57, 8
  %72 = add nuw nsw i32 %71, %70
  %73 = lshr i32 %72, 4
  %74 = trunc nuw i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %59, i64 3
  store i8 %74, ptr %55, align 1, !tbaa !42
  %76 = add nuw nsw i32 %70, 7
  %77 = add nuw nsw i32 %76, %69
  %78 = lshr i32 %77, 4
  %79 = trunc nuw i32 %78 to i8
  store i8 %79, ptr %75, align 1, !tbaa !42
  %80 = add i32 %56, -1
  %81 = getelementptr inbounds i8, ptr %55, i64 2
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %83, label %54, !llvm.loop !58

83:                                               ; preds = %54, %12
  %84 = phi ptr [ %22, %12 ], [ %55, %54 ]
  %85 = phi i32 [ %36, %12 ], [ %69, %54 ]
  %86 = phi i32 [ %30, %12 ], [ %58, %54 ]
  %87 = phi ptr [ %49, %12 ], [ %81, %54 ]
  %88 = mul nuw nsw i32 %85, 3
  %89 = add nuw nsw i32 %86, 8
  %90 = add nuw nsw i32 %89, %88
  %91 = lshr i32 %90, 4
  %92 = trunc nuw i32 %91 to i8
  %93 = getelementptr inbounds i8, ptr %84, i64 3
  store i8 %92, ptr %87, align 1, !tbaa !42
  %94 = shl nuw nsw i32 %85, 2
  %95 = add nuw nsw i32 %94, 7
  %96 = lshr i32 %95, 4
  %97 = trunc nuw i32 %96 to i8
  store i8 %97, ptr %93, align 1, !tbaa !42
  %98 = load ptr, ptr %15, align 8, !tbaa !41
  %99 = getelementptr i8, ptr %15, i64 8
  %100 = load ptr, ptr %99, align 8, !tbaa !41
  %101 = add nsw i64 %17, 2
  %102 = getelementptr ptr, ptr %11, i64 %17
  %103 = load ptr, ptr %102, align 8, !tbaa !41
  %104 = getelementptr inbounds i8, ptr %98, i64 1
  %105 = load i8, ptr %98, align 1, !tbaa !42
  %106 = zext i8 %105 to i32
  %107 = mul nuw nsw i32 %106, 3
  %108 = getelementptr inbounds i8, ptr %100, i64 1
  %109 = load i8, ptr %100, align 1, !tbaa !42
  %110 = zext i8 %109 to i32
  %111 = add nuw nsw i32 %107, %110
  %112 = load i8, ptr %104, align 1, !tbaa !42
  %113 = zext i8 %112 to i32
  %114 = mul nuw nsw i32 %113, 3
  %115 = load i8, ptr %108, align 1, !tbaa !42
  %116 = zext i8 %115 to i32
  %117 = add nuw nsw i32 %114, %116
  %118 = shl nuw nsw i32 %111, 2
  %119 = add nuw nsw i32 %118, 8
  %120 = lshr i32 %119, 4
  %121 = trunc nuw i32 %120 to i8
  %122 = getelementptr inbounds i8, ptr %103, i64 1
  store i8 %121, ptr %103, align 1, !tbaa !42
  %123 = mul nuw nsw i32 %111, 3
  %124 = add nuw nsw i32 %123, 7
  %125 = add nuw nsw i32 %124, %117
  %126 = lshr i32 %125, 4
  %127 = trunc nuw i32 %126 to i8
  store i8 %127, ptr %122, align 1, !tbaa !42
  %128 = load i32, ptr %10, align 8, !tbaa !40
  %129 = add i32 %128, -2
  %130 = getelementptr inbounds i8, ptr %103, i64 2
  %131 = icmp eq i32 %129, 0
  br i1 %131, label %164, label %132

132:                                              ; preds = %83
  %133 = getelementptr inbounds i8, ptr %100, i64 2
  %134 = getelementptr inbounds i8, ptr %98, i64 2
  br label %135

135:                                              ; preds = %135, %132
  %136 = phi ptr [ %162, %135 ], [ %130, %132 ]
  %137 = phi i32 [ %161, %135 ], [ %129, %132 ]
  %138 = phi i32 [ %139, %135 ], [ %111, %132 ]
  %139 = phi i32 [ %150, %135 ], [ %117, %132 ]
  %140 = phi ptr [ %136, %135 ], [ %103, %132 ]
  %141 = phi ptr [ %147, %135 ], [ %133, %132 ]
  %142 = phi ptr [ %143, %135 ], [ %134, %132 ]
  %143 = getelementptr inbounds i8, ptr %142, i64 1
  %144 = load i8, ptr %142, align 1, !tbaa !42
  %145 = zext i8 %144 to i32
  %146 = mul nuw nsw i32 %145, 3
  %147 = getelementptr inbounds i8, ptr %141, i64 1
  %148 = load i8, ptr %141, align 1, !tbaa !42
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %146, %149
  %151 = mul nuw nsw i32 %139, 3
  %152 = add nuw nsw i32 %138, 8
  %153 = add nuw nsw i32 %152, %151
  %154 = lshr i32 %153, 4
  %155 = trunc nuw i32 %154 to i8
  %156 = getelementptr inbounds i8, ptr %140, i64 3
  store i8 %155, ptr %136, align 1, !tbaa !42
  %157 = add nuw nsw i32 %151, 7
  %158 = add nuw nsw i32 %157, %150
  %159 = lshr i32 %158, 4
  %160 = trunc nuw i32 %159 to i8
  store i8 %160, ptr %156, align 1, !tbaa !42
  %161 = add i32 %137, -1
  %162 = getelementptr inbounds i8, ptr %136, i64 2
  %163 = icmp eq i32 %161, 0
  br i1 %163, label %164, label %135, !llvm.loop !58

164:                                              ; preds = %135, %83
  %165 = phi ptr [ %103, %83 ], [ %136, %135 ]
  %166 = phi i32 [ %117, %83 ], [ %150, %135 ]
  %167 = phi i32 [ %111, %83 ], [ %139, %135 ]
  %168 = phi ptr [ %130, %83 ], [ %162, %135 ]
  %169 = mul nuw nsw i32 %166, 3
  %170 = add nuw nsw i32 %167, 8
  %171 = add nuw nsw i32 %170, %169
  %172 = lshr i32 %171, 4
  %173 = trunc nuw i32 %172 to i8
  %174 = getelementptr inbounds i8, ptr %165, i64 3
  store i8 %173, ptr %168, align 1, !tbaa !42
  %175 = shl nuw nsw i32 %166, 2
  %176 = add nuw nsw i32 %175, 7
  %177 = lshr i32 %176, 4
  %178 = trunc nuw i32 %177 to i8
  store i8 %178, ptr %174, align 1, !tbaa !42
  %179 = trunc nsw i64 %101 to i32
  %180 = add nuw nsw i64 %13, 1
  %181 = load i32, ptr %6, align 4, !tbaa !37
  %182 = icmp sgt i32 %181, %179
  br i1 %182, label %12, label %183, !llvm.loop !59

183:                                              ; preds = %164, %4
  ret void
}

; Function Attrs: nounwind
define internal void @h2v2_upsample(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !41
  %6 = getelementptr inbounds i8, ptr %0, i64 412
  %7 = load i32, ptr %6, align 4, !tbaa !37
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %0, i64 136
  br label %11

11:                                               ; preds = %9, %34
  %12 = phi i64 [ 0, %9 ], [ %38, %34 ]
  %13 = phi i64 [ 0, %9 ], [ %39, %34 ]
  %14 = phi i32 [ 0, %9 ], [ %40, %34 ]
  %15 = getelementptr inbounds ptr, ptr %5, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = load i32, ptr %10, align 8, !tbaa !44
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds ptr, ptr %2, i64 %12
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi ptr [ %27, %24 ], [ %23, %21 ]
  %26 = phi ptr [ %30, %24 ], [ %16, %21 ]
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  %28 = load i8, ptr %25, align 1, !tbaa !42
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  store i8 %28, ptr %26, align 1, !tbaa !42
  %30 = getelementptr inbounds i8, ptr %26, i64 2
  store i8 %28, ptr %29, align 1, !tbaa !42
  %31 = icmp ult ptr %30, %19
  br i1 %31, label %24, label %32, !llvm.loop !60

32:                                               ; preds = %24
  %33 = load i32, ptr %10, align 8, !tbaa !44
  br label %34

34:                                               ; preds = %32, %11
  %35 = phi i32 [ %33, %32 ], [ 0, %11 ]
  %36 = or disjoint i32 %14, 1
  %37 = trunc nuw nsw i64 %13 to i32
  tail call void @jcopy_sample_rows(ptr noundef %5, i32 noundef signext %37, ptr noundef %5, i32 noundef signext %36, i32 noundef signext 1, i32 noundef signext %35) #7
  %38 = add nuw nsw i64 %12, 1
  %39 = add nuw nsw i64 %13, 2
  %40 = add nuw nsw i32 %14, 2
  %41 = load i32, ptr %6, align 4, !tbaa !37
  %42 = trunc nuw i64 %39 to i32
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %11, label %44, !llvm.loop !61

44:                                               ; preds = %34, %4
  ret void
}

; Function Attrs: nounwind
define internal void @int_upsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 608
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = load ptr, ptr %3, align 8, !tbaa !41
  %8 = getelementptr inbounds i8, ptr %6, i64 232
  %9 = getelementptr inbounds i8, ptr %1, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !62
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10 x i8], ptr %8, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !42
  %14 = freeze i8 %13
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i8, ptr %6, i64 242
  %17 = getelementptr inbounds [10 x i8], ptr %16, i64 0, i64 %11
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = freeze i8 %18
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %0, i64 412
  %22 = load i32, ptr %21, align 4, !tbaa !37
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %4
  %25 = getelementptr inbounds i8, ptr %0, i64 136
  %26 = icmp eq i8 %14, 0
  %27 = icmp ugt i8 %19, 1
  %28 = add nsw i32 %20, -1
  br i1 %26, label %67, label %29

29:                                               ; preds = %24
  %30 = zext i8 %14 to i64
  %31 = add nuw nsw i64 %15, 4294967295
  %32 = and i64 %31, 4294967295
  %33 = add nuw nsw i64 %32, 1
  %34 = zext i8 %19 to i64
  br label %35

35:                                               ; preds = %29, %53
  %36 = phi i64 [ 0, %29 ], [ %54, %53 ]
  %37 = phi i64 [ 0, %29 ], [ %55, %53 ]
  %38 = phi i32 [ 0, %29 ], [ %56, %53 ]
  %39 = getelementptr inbounds ptr, ptr %7, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = load i32, ptr %25, align 8, !tbaa !44
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds ptr, ptr %2, i64 %36
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  br label %60

48:                                               ; preds = %60, %35
  br i1 %27, label %49, label %53

49:                                               ; preds = %48
  %50 = add nuw nsw i32 %38, 1
  %51 = load i32, ptr %25, align 8, !tbaa !44
  %52 = trunc nuw nsw i64 %37 to i32
  tail call void @jcopy_sample_rows(ptr noundef %7, i32 noundef signext %52, ptr noundef %7, i32 noundef signext %50, i32 noundef signext %28, i32 noundef signext %51) #7
  br label %53

53:                                               ; preds = %49, %48
  %54 = add nuw nsw i64 %36, 1
  %55 = add nuw nsw i64 %37, %34
  %56 = add nuw nsw i32 %38, %20
  %57 = load i32, ptr %21, align 4, !tbaa !37
  %58 = trunc nuw i64 %55 to i32
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %35, label %87, !llvm.loop !63

60:                                               ; preds = %45, %60
  %61 = phi ptr [ %64, %60 ], [ %47, %45 ]
  %62 = phi ptr [ %65, %60 ], [ %40, %45 ]
  %63 = load i8, ptr %61, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr align 1 %62, i8 %63, i64 %30, i1 false), !tbaa !42
  %64 = getelementptr inbounds i8, ptr %61, i64 1
  %65 = getelementptr i8, ptr %62, i64 %33
  %66 = icmp ult ptr %65, %43
  br i1 %66, label %60, label %48, !llvm.loop !64

67:                                               ; preds = %24
  br i1 %27, label %68, label %77

68:                                               ; preds = %67, %72
  %69 = phi i32 [ %74, %72 ], [ 0, %67 ]
  %70 = load i32, ptr %25, align 8, !tbaa !44
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = add nuw nsw i32 %69, 1
  tail call void @jcopy_sample_rows(ptr noundef %7, i32 noundef signext %69, ptr noundef %7, i32 noundef signext %73, i32 noundef signext %28, i32 noundef signext 0) #7
  %74 = add nuw nsw i32 %69, %20
  %75 = load i32, ptr %21, align 4, !tbaa !37
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %68, label %87, !llvm.loop !63

77:                                               ; preds = %67
  %78 = load i32, ptr %25, align 8, !tbaa !44
  %79 = icmp eq i32 %78, 0
  br label %80

80:                                               ; preds = %77, %84
  %81 = phi i32 [ 0, %77 ], [ %85, %84 ]
  br i1 %79, label %84, label %82

82:                                               ; preds = %80, %68
  br label %83

83:                                               ; preds = %82, %83
  br label %83

84:                                               ; preds = %80
  %85 = add nuw nsw i32 %81, %20
  %86 = icmp slt i32 %85, %22
  br i1 %86, label %80, label %87, !llvm.loop !63

87:                                               ; preds = %53, %84, %72, %4
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #4

declare dso_local void @jcopy_sample_rows(ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 608}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !9, i64 24, !9, i64 104, !11, i64 184, !11, i64 188, !9, i64 192, !9, i64 232, !9, i64 242}
!20 = !{!"jpeg_upsampler", !8, i64 0, !8, i64 8, !11, i64 16}
!21 = !{!19, !8, i64 8}
!22 = !{!19, !11, i64 16}
!23 = !{!7, !11, i64 392}
!24 = !{!7, !8, i64 0}
!25 = !{!26, !11, i64 40}
!26 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!27 = !{!26, !8, i64 0}
!28 = !{!7, !11, i64 100}
!29 = !{!7, !11, i64 416}
!30 = !{!7, !11, i64 56}
!31 = !{!7, !8, i64 304}
!32 = !{!33, !11, i64 8}
!33 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!34 = !{!33, !11, i64 36}
!35 = !{!33, !11, i64 12}
!36 = !{!7, !11, i64 408}
!37 = !{!7, !11, i64 412}
!38 = !{!11, !11, i64 0}
!39 = !{!33, !11, i64 48}
!40 = !{!33, !11, i64 40}
!41 = !{!8, !8, i64 0}
!42 = !{!9, !9, i64 0}
!43 = !{!15, !8, i64 16}
!44 = !{!7, !11, i64 136}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!19, !11, i64 184}
!48 = !{!7, !11, i64 140}
!49 = !{!19, !11, i64 188}
!50 = distinct !{!50, !46}
!51 = !{!7, !8, i64 616}
!52 = !{!53, !8, i64 8}
!53 = !{!"jpeg_color_deconverter", !8, i64 0, !8, i64 8}
!54 = distinct !{!54, !46}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = distinct !{!57, !46}
!58 = distinct !{!58, !46}
!59 = distinct !{!59, !46}
!60 = distinct !{!60, !46}
!61 = distinct !{!61, !46}
!62 = !{!33, !11, i64 4}
!63 = distinct !{!63, !46}
!64 = distinct !{!64, !46}
