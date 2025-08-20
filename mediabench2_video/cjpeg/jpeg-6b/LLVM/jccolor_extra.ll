; ModuleID = 'jccolor.c'
source_filename = "jccolor.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_color_converter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 24) #3
  %6 = getelementptr inbounds i8, ptr %0, i64 472
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @null_method, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %0, i64 60
  %8 = load i32, ptr %7, align 4, !tbaa !21
  switch i32 %8, label %21 [
    i32 1, label %9
    i32 2, label %13
    i32 3, label %13
    i32 4, label %17
    i32 5, label %17
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %0, i64 56
  %11 = load i32, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %29, label %25

13:                                               ; preds = %1, %1
  %14 = getelementptr inbounds i8, ptr %0, i64 56
  %15 = load i32, ptr %14, align 8, !tbaa !22
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %29, label %25

17:                                               ; preds = %1, %1
  %18 = getelementptr inbounds i8, ptr %0, i64 56
  %19 = load i32, ptr %18, align 8, !tbaa !22
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %29, label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds i8, ptr %0, i64 56
  %23 = load i32, ptr %22, align 8, !tbaa !22
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %17, %13, %9
  %26 = load ptr, ptr %0, align 8, !tbaa !23
  %27 = getelementptr inbounds i8, ptr %26, i64 40
  store i32 9, ptr %27, align 8, !tbaa !24
  %28 = load ptr, ptr %26, align 8, !tbaa !26
  tail call void %28(ptr noundef nonnull %0) #3
  br label %29

29:                                               ; preds = %25, %21, %17, %13, %9
  %30 = getelementptr inbounds i8, ptr %0, i64 80
  %31 = load i32, ptr %30, align 8, !tbaa !27
  switch i32 %31, label %122 [
    i32 1, label %32
    i32 2, label %52
    i32 3, label %69
    i32 4, label %87
    i32 5, label %104
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %0, i64 76
  %34 = load i32, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !23
  %38 = getelementptr inbounds i8, ptr %37, i64 40
  store i32 10, ptr %38, align 8, !tbaa !24
  %39 = load ptr, ptr %37, align 8, !tbaa !26
  tail call void %39(ptr noundef nonnull %0) #3
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, ptr %7, align 4, !tbaa !21
  switch i32 %41, label %48 [
    i32 1, label %42
    i32 2, label %44
    i32 3, label %46
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @grayscale_convert, ptr %43, align 8, !tbaa !29
  br label %137

44:                                               ; preds = %40
  store ptr @rgb_ycc_start, ptr %5, align 8, !tbaa !18
  %45 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @rgb_gray_convert, ptr %45, align 8, !tbaa !29
  br label %137

46:                                               ; preds = %40
  %47 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @grayscale_convert, ptr %47, align 8, !tbaa !29
  br label %137

48:                                               ; preds = %40
  %49 = load ptr, ptr %0, align 8, !tbaa !23
  %50 = getelementptr inbounds i8, ptr %49, i64 40
  store i32 27, ptr %50, align 8, !tbaa !24
  %51 = load ptr, ptr %49, align 8, !tbaa !26
  tail call void %51(ptr noundef nonnull %0) #3
  br label %137

52:                                               ; preds = %29
  %53 = getelementptr inbounds i8, ptr %0, i64 76
  %54 = load i32, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8, !tbaa !23
  %58 = getelementptr inbounds i8, ptr %57, i64 40
  store i32 10, ptr %58, align 8, !tbaa !24
  %59 = load ptr, ptr %57, align 8, !tbaa !26
  tail call void %59(ptr noundef nonnull %0) #3
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, ptr %7, align 4, !tbaa !21
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @null_convert, ptr %64, align 8, !tbaa !29
  br label %137

65:                                               ; preds = %60
  %66 = load ptr, ptr %0, align 8, !tbaa !23
  %67 = getelementptr inbounds i8, ptr %66, i64 40
  store i32 27, ptr %67, align 8, !tbaa !24
  %68 = load ptr, ptr %66, align 8, !tbaa !26
  tail call void %68(ptr noundef nonnull %0) #3
  br label %137

69:                                               ; preds = %29
  %70 = getelementptr inbounds i8, ptr %0, i64 76
  %71 = load i32, ptr %70, align 4, !tbaa !28
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %0, align 8, !tbaa !23
  %75 = getelementptr inbounds i8, ptr %74, i64 40
  store i32 10, ptr %75, align 8, !tbaa !24
  %76 = load ptr, ptr %74, align 8, !tbaa !26
  tail call void %76(ptr noundef nonnull %0) #3
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, ptr %7, align 4, !tbaa !21
  switch i32 %78, label %83 [
    i32 2, label %79
    i32 3, label %81
  ]

79:                                               ; preds = %77
  store ptr @rgb_ycc_start, ptr %5, align 8, !tbaa !18
  %80 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @rgb_ycc_convert, ptr %80, align 8, !tbaa !29
  br label %137

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @null_convert, ptr %82, align 8, !tbaa !29
  br label %137

83:                                               ; preds = %77
  %84 = load ptr, ptr %0, align 8, !tbaa !23
  %85 = getelementptr inbounds i8, ptr %84, i64 40
  store i32 27, ptr %85, align 8, !tbaa !24
  %86 = load ptr, ptr %84, align 8, !tbaa !26
  tail call void %86(ptr noundef nonnull %0) #3
  br label %137

87:                                               ; preds = %29
  %88 = getelementptr inbounds i8, ptr %0, i64 76
  %89 = load i32, ptr %88, align 4, !tbaa !28
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 8, !tbaa !23
  %93 = getelementptr inbounds i8, ptr %92, i64 40
  store i32 10, ptr %93, align 8, !tbaa !24
  %94 = load ptr, ptr %92, align 8, !tbaa !26
  tail call void %94(ptr noundef nonnull %0) #3
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, ptr %7, align 4, !tbaa !21
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @null_convert, ptr %99, align 8, !tbaa !29
  br label %137

100:                                              ; preds = %95
  %101 = load ptr, ptr %0, align 8, !tbaa !23
  %102 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 27, ptr %102, align 8, !tbaa !24
  %103 = load ptr, ptr %101, align 8, !tbaa !26
  tail call void %103(ptr noundef nonnull %0) #3
  br label %137

104:                                              ; preds = %29
  %105 = getelementptr inbounds i8, ptr %0, i64 76
  %106 = load i32, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %0, align 8, !tbaa !23
  %110 = getelementptr inbounds i8, ptr %109, i64 40
  store i32 10, ptr %110, align 8, !tbaa !24
  %111 = load ptr, ptr %109, align 8, !tbaa !26
  tail call void %111(ptr noundef nonnull %0) #3
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, ptr %7, align 4, !tbaa !21
  switch i32 %113, label %118 [
    i32 4, label %114
    i32 5, label %116
  ]

114:                                              ; preds = %112
  store ptr @rgb_ycc_start, ptr %5, align 8, !tbaa !18
  %115 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @cmyk_ycck_convert, ptr %115, align 8, !tbaa !29
  br label %137

116:                                              ; preds = %112
  %117 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @null_convert, ptr %117, align 8, !tbaa !29
  br label %137

118:                                              ; preds = %112
  %119 = load ptr, ptr %0, align 8, !tbaa !23
  %120 = getelementptr inbounds i8, ptr %119, i64 40
  store i32 27, ptr %120, align 8, !tbaa !24
  %121 = load ptr, ptr %119, align 8, !tbaa !26
  tail call void %121(ptr noundef nonnull %0) #3
  br label %137

122:                                              ; preds = %29
  %123 = load i32, ptr %7, align 4, !tbaa !21
  %124 = icmp eq i32 %31, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = getelementptr inbounds i8, ptr %0, i64 76
  %127 = load i32, ptr %126, align 4, !tbaa !28
  %128 = getelementptr inbounds i8, ptr %0, i64 56
  %129 = load i32, ptr %128, align 8, !tbaa !22
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %125, %122
  %132 = load ptr, ptr %0, align 8, !tbaa !23
  %133 = getelementptr inbounds i8, ptr %132, i64 40
  store i32 27, ptr %133, align 8, !tbaa !24
  %134 = load ptr, ptr %132, align 8, !tbaa !26
  tail call void %134(ptr noundef nonnull %0) #3
  br label %135

135:                                              ; preds = %131, %125
  %136 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @null_convert, ptr %136, align 8, !tbaa !29
  br label %137

137:                                              ; preds = %114, %118, %116, %98, %100, %79, %83, %81, %63, %65, %42, %46, %48, %44, %135
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal void @null_method(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @grayscale_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4) #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 48
  %7 = load i32, ptr %6, align 8, !tbaa !30
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %0, i64 56
  %11 = load i32, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i32 %7, 0
  %13 = sext i32 %11 to i64
  br i1 %12, label %38, label %14

14:                                               ; preds = %9
  %15 = zext i32 %7 to i64
  br label %16

16:                                               ; preds = %14, %34
  %17 = phi i32 [ %20, %34 ], [ %4, %14 ]
  %18 = phi ptr [ %35, %34 ], [ %1, %14 ]
  %19 = phi i32 [ %36, %34 ], [ %3, %14 ]
  %20 = add nsw i32 %17, -1
  %21 = load ptr, ptr %18, align 8, !tbaa !31
  %22 = load ptr, ptr %2, align 8, !tbaa !31
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !31
  br label %26

26:                                               ; preds = %16, %26
  %27 = phi i64 [ 0, %16 ], [ %32, %26 ]
  %28 = phi ptr [ %21, %16 ], [ %31, %26 ]
  %29 = load i8, ptr %28, align 1, !tbaa !32
  %30 = getelementptr inbounds i8, ptr %25, i64 %27
  store i8 %29, ptr %30, align 1, !tbaa !32
  %31 = getelementptr inbounds i8, ptr %28, i64 %13
  %32 = add nuw nsw i64 %27, 1
  %33 = icmp eq i64 %32, %15
  br i1 %33, label %34, label %26, !llvm.loop !33

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, ptr %18, i64 8
  %36 = add i32 %19, 1
  %37 = icmp sgt i32 %17, 1
  br i1 %37, label %16, label %38, !llvm.loop !35

38:                                               ; preds = %34, %9, %5
  ret void
}

; Function Attrs: nounwind
define internal void @rgb_ycc_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 472
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef signext 1, i64 noundef 16384) #3
  %8 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %7, ptr %8, align 8, !tbaa !36
  br label %9

9:                                                ; preds = %1, %9
  %10 = phi i64 [ 0, %1 ], [ %36, %9 ]
  %11 = mul nuw nsw i64 %10, 19595
  %12 = getelementptr inbounds i64, ptr %7, i64 %10
  store i64 %11, ptr %12, align 8, !tbaa !37
  %13 = mul nuw nsw i64 %10, 38470
  %14 = or disjoint i64 %10, 256
  %15 = getelementptr inbounds i64, ptr %7, i64 %14
  store i64 %13, ptr %15, align 8, !tbaa !37
  %16 = mul nuw nsw i64 %10, 7471
  %17 = add nuw nsw i64 %16, 32768
  %18 = or disjoint i64 %10, 512
  %19 = getelementptr inbounds i64, ptr %7, i64 %18
  store i64 %17, ptr %19, align 8, !tbaa !37
  %20 = mul nsw i64 %10, -11059
  %21 = or disjoint i64 %10, 768
  %22 = getelementptr inbounds i64, ptr %7, i64 %21
  store i64 %20, ptr %22, align 8, !tbaa !37
  %23 = mul nsw i64 %10, -21709
  %24 = or disjoint i64 %10, 1024
  %25 = getelementptr inbounds i64, ptr %7, i64 %24
  store i64 %23, ptr %25, align 8, !tbaa !37
  %26 = shl nuw nsw i64 %10, 15
  %27 = add nuw nsw i64 %26, 8421375
  %28 = or disjoint i64 %10, 1280
  %29 = getelementptr inbounds i64, ptr %7, i64 %28
  store i64 %27, ptr %29, align 8, !tbaa !37
  %30 = mul nsw i64 %10, -27439
  %31 = or disjoint i64 %10, 1536
  %32 = getelementptr inbounds i64, ptr %7, i64 %31
  store i64 %30, ptr %32, align 8, !tbaa !37
  %33 = mul nsw i64 %10, -5329
  %34 = or disjoint i64 %10, 1792
  %35 = getelementptr inbounds i64, ptr %7, i64 %34
  store i64 %33, ptr %35, align 8, !tbaa !37
  %36 = add nuw nsw i64 %10, 1
  %37 = icmp eq i64 %36, 256
  br i1 %37, label %38, label %9, !llvm.loop !38

38:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @rgb_gray_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4) #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 472
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds i8, ptr %7, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds i8, ptr %0, i64 48
  %11 = load i32, ptr %10, align 8, !tbaa !30
  %12 = icmp slt i32 %4, 1
  %13 = icmp eq i32 %11, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %58, label %15

15:                                               ; preds = %5
  %16 = zext i32 %11 to i64
  br label %17

17:                                               ; preds = %15, %54
  %18 = phi i32 [ %21, %54 ], [ %4, %15 ]
  %19 = phi ptr [ %55, %54 ], [ %1, %15 ]
  %20 = phi i32 [ %56, %54 ], [ %3, %15 ]
  %21 = add nsw i32 %18, -1
  %22 = load ptr, ptr %19, align 8, !tbaa !31
  %23 = load ptr, ptr %2, align 8, !tbaa !31
  %24 = zext i32 %20 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  br label %27

27:                                               ; preds = %17, %27
  %28 = phi i64 [ 0, %17 ], [ %52, %27 ]
  %29 = phi ptr [ %22, %17 ], [ %37, %27 ]
  %30 = load i8, ptr %29, align 1, !tbaa !32
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !32
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %29, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !32
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i8, ptr %29, i64 3
  %38 = zext i8 %30 to i64
  %39 = getelementptr inbounds i64, ptr %9, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !37
  %41 = or disjoint i64 %33, 256
  %42 = getelementptr inbounds i64, ptr %9, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !37
  %44 = add nsw i64 %43, %40
  %45 = or disjoint i64 %36, 512
  %46 = getelementptr inbounds i64, ptr %9, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !37
  %48 = add nsw i64 %44, %47
  %49 = lshr i64 %48, 16
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 %50, ptr %51, align 1, !tbaa !32
  %52 = add nuw nsw i64 %28, 1
  %53 = icmp eq i64 %52, %16
  br i1 %53, label %54, label %27, !llvm.loop !39

54:                                               ; preds = %27
  %55 = getelementptr inbounds i8, ptr %19, i64 8
  %56 = add i32 %20, 1
  %57 = icmp sgt i32 %18, 1
  br i1 %57, label %17, label %58, !llvm.loop !40

58:                                               ; preds = %54, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @null_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4) #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 76
  %7 = load i32, ptr %6, align 4, !tbaa !28
  %8 = getelementptr inbounds i8, ptr %0, i64 48
  %9 = load i32, ptr %8, align 8, !tbaa !30
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %5
  %12 = icmp slt i32 %7, 1
  %13 = sext i32 %7 to i64
  %14 = icmp eq i32 %9, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %48, label %16

16:                                               ; preds = %11
  %17 = zext nneg i32 %7 to i64
  %18 = zext i32 %9 to i64
  br label %19

19:                                               ; preds = %16, %44
  %20 = phi i32 [ %23, %44 ], [ %4, %16 ]
  %21 = phi ptr [ %45, %44 ], [ %1, %16 ]
  %22 = phi i32 [ %46, %44 ], [ %3, %16 ]
  %23 = add nsw i32 %20, -1
  %24 = zext i32 %22 to i64
  br label %25

25:                                               ; preds = %41, %19
  %26 = phi i64 [ %42, %41 ], [ 0, %19 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !31
  %28 = getelementptr inbounds ptr, ptr %2, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  %30 = getelementptr inbounds ptr, ptr %29, i64 %24
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  br label %32

32:                                               ; preds = %32, %25
  %33 = phi i64 [ %39, %32 ], [ 0, %25 ]
  %34 = phi ptr [ %38, %32 ], [ %27, %25 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 %26
  %36 = load i8, ptr %35, align 1, !tbaa !32
  %37 = getelementptr inbounds i8, ptr %31, i64 %33
  store i8 %36, ptr %37, align 1, !tbaa !32
  %38 = getelementptr inbounds i8, ptr %34, i64 %13
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %18
  br i1 %40, label %41, label %32, !llvm.loop !41

41:                                               ; preds = %32
  %42 = add nuw nsw i64 %26, 1
  %43 = icmp eq i64 %42, %17
  br i1 %43, label %44, label %25, !llvm.loop !42

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %21, i64 8
  %46 = add i32 %22, 1
  %47 = icmp sgt i32 %20, 1
  br i1 %47, label %19, label %48, !llvm.loop !43

48:                                               ; preds = %44, %11, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @rgb_ycc_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4) #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 472
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds i8, ptr %7, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds i8, ptr %0, i64 48
  %11 = load i32, ptr %10, align 8, !tbaa !30
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %103

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  %15 = getelementptr inbounds i8, ptr %2, i64 16
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %103, label %17

17:                                               ; preds = %13
  %18 = zext i32 %11 to i64
  br label %19

19:                                               ; preds = %17, %99
  %20 = phi i32 [ %23, %99 ], [ %4, %17 ]
  %21 = phi ptr [ %100, %99 ], [ %1, %17 ]
  %22 = phi i32 [ %101, %99 ], [ %3, %17 ]
  %23 = add nsw i32 %20, -1
  %24 = load ptr, ptr %21, align 8, !tbaa !31
  %25 = load ptr, ptr %2, align 8, !tbaa !31
  %26 = zext i32 %22 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !31
  %29 = load ptr, ptr %14, align 8, !tbaa !31
  %30 = getelementptr inbounds ptr, ptr %29, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  %32 = load ptr, ptr %15, align 8, !tbaa !31
  %33 = getelementptr inbounds ptr, ptr %32, i64 %26
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  br label %35

35:                                               ; preds = %19, %35
  %36 = phi i64 [ 0, %19 ], [ %97, %35 ]
  %37 = phi ptr [ %24, %19 ], [ %46, %35 ]
  %38 = load i8, ptr %37, align 1, !tbaa !32
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, ptr %37, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !32
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds i8, ptr %37, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !32
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds i8, ptr %37, i64 3
  %47 = zext i8 %38 to i64
  %48 = getelementptr inbounds i64, ptr %9, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !37
  %50 = or disjoint i32 %42, 256
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds i64, ptr %9, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !37
  %54 = add nsw i64 %53, %49
  %55 = or disjoint i32 %45, 512
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds i64, ptr %9, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !37
  %59 = add nsw i64 %54, %58
  %60 = lshr i64 %59, 16
  %61 = trunc i64 %60 to i8
  %62 = getelementptr inbounds i8, ptr %28, i64 %36
  store i8 %61, ptr %62, align 1, !tbaa !32
  %63 = or disjoint i32 %39, 768
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds i64, ptr %9, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !37
  %67 = or disjoint i32 %42, 1024
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds i64, ptr %9, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !37
  %71 = add nsw i64 %70, %66
  %72 = or disjoint i32 %45, 1280
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds i64, ptr %9, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !37
  %76 = add nsw i64 %71, %75
  %77 = lshr i64 %76, 16
  %78 = trunc i64 %77 to i8
  %79 = getelementptr inbounds i8, ptr %31, i64 %36
  store i8 %78, ptr %79, align 1, !tbaa !32
  %80 = or disjoint i32 %39, 1280
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds i64, ptr %9, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !37
  %84 = or disjoint i32 %42, 1536
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds i64, ptr %9, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !37
  %88 = add nsw i64 %87, %83
  %89 = or disjoint i32 %45, 1792
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds i64, ptr %9, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !37
  %93 = add nsw i64 %88, %92
  %94 = lshr i64 %93, 16
  %95 = trunc i64 %94 to i8
  %96 = getelementptr inbounds i8, ptr %34, i64 %36
  store i8 %95, ptr %96, align 1, !tbaa !32
  %97 = add nuw nsw i64 %36, 1
  %98 = icmp eq i64 %97, %18
  br i1 %98, label %99, label %35, !llvm.loop !44

99:                                               ; preds = %35
  %100 = getelementptr inbounds i8, ptr %21, i64 8
  %101 = add i32 %22, 1
  %102 = icmp sgt i32 %20, 1
  br i1 %102, label %19, label %103, !llvm.loop !45

103:                                              ; preds = %99, %13, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @cmyk_ycck_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4) #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 472
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds i8, ptr %7, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds i8, ptr %0, i64 48
  %11 = load i32, ptr %10, align 8, !tbaa !30
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %113

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  %15 = getelementptr inbounds i8, ptr %2, i64 16
  %16 = getelementptr inbounds i8, ptr %2, i64 24
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %113, label %18

18:                                               ; preds = %13
  %19 = zext i32 %11 to i64
  br label %20

20:                                               ; preds = %18, %109
  %21 = phi i32 [ %24, %109 ], [ %4, %18 ]
  %22 = phi ptr [ %110, %109 ], [ %1, %18 ]
  %23 = phi i32 [ %111, %109 ], [ %3, %18 ]
  %24 = add nsw i32 %21, -1
  %25 = load ptr, ptr %22, align 8, !tbaa !31
  %26 = load ptr, ptr %2, align 8, !tbaa !31
  %27 = zext i32 %23 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  %30 = load ptr, ptr %14, align 8, !tbaa !31
  %31 = getelementptr inbounds ptr, ptr %30, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = load ptr, ptr %15, align 8, !tbaa !31
  %34 = getelementptr inbounds ptr, ptr %33, i64 %27
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = load ptr, ptr %16, align 8, !tbaa !31
  %37 = getelementptr inbounds ptr, ptr %36, i64 %27
  %38 = load ptr, ptr %37, align 8, !tbaa !31
  br label %39

39:                                               ; preds = %20, %39
  %40 = phi i64 [ 0, %20 ], [ %107, %39 ]
  %41 = phi ptr [ %25, %20 ], [ %56, %39 ]
  %42 = load i8, ptr %41, align 1, !tbaa !32
  %43 = xor i8 %42, -1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %41, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !32
  %47 = xor i8 %46, -1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %41, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !32
  %51 = xor i8 %50, -1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %41, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !32
  %55 = getelementptr inbounds i8, ptr %38, i64 %40
  store i8 %54, ptr %55, align 1, !tbaa !32
  %56 = getelementptr inbounds i8, ptr %41, i64 4
  %57 = zext i8 %43 to i64
  %58 = getelementptr inbounds i64, ptr %9, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !37
  %60 = or disjoint i32 %48, 256
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds i64, ptr %9, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !37
  %64 = add nsw i64 %63, %59
  %65 = or disjoint i32 %52, 512
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds i64, ptr %9, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !37
  %69 = add nsw i64 %64, %68
  %70 = lshr i64 %69, 16
  %71 = trunc i64 %70 to i8
  %72 = getelementptr inbounds i8, ptr %29, i64 %40
  store i8 %71, ptr %72, align 1, !tbaa !32
  %73 = or disjoint i32 %44, 768
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds i64, ptr %9, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !37
  %77 = or disjoint i32 %48, 1024
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds i64, ptr %9, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !37
  %81 = add nsw i64 %80, %76
  %82 = or disjoint i32 %52, 1280
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds i64, ptr %9, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !37
  %86 = add nsw i64 %81, %85
  %87 = lshr i64 %86, 16
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds i8, ptr %32, i64 %40
  store i8 %88, ptr %89, align 1, !tbaa !32
  %90 = or disjoint i32 %44, 1280
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds i64, ptr %9, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !37
  %94 = or disjoint i32 %48, 1536
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds i64, ptr %9, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !37
  %98 = add nsw i64 %97, %93
  %99 = or disjoint i32 %52, 1792
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds i64, ptr %9, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !37
  %103 = add nsw i64 %98, %102
  %104 = lshr i64 %103, 16
  %105 = trunc i64 %104 to i8
  %106 = getelementptr inbounds i8, ptr %35, i64 %40
  store i8 %105, ptr %106, align 1, !tbaa !32
  %107 = add nuw nsw i64 %40, 1
  %108 = icmp eq i64 %107, %19
  br i1 %108, label %109, label %39, !llvm.loop !46

109:                                              ; preds = %39
  %110 = getelementptr inbounds i8, ptr %22, i64 8
  %111 = add i32 %23, 1
  %112 = icmp sgt i32 %21, 1
  br i1 %112, label %20, label %113, !llvm.loop !47

113:                                              ; preds = %109, %13, %5
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }

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
!17 = !{!7, !8, i64 472}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !8, i64 16}
!20 = !{!"jpeg_color_converter", !8, i64 0, !8, i64 8}
!21 = !{!7, !11, i64 60}
!22 = !{!7, !11, i64 56}
!23 = !{!7, !8, i64 0}
!24 = !{!25, !11, i64 40}
!25 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!26 = !{!25, !8, i64 0}
!27 = !{!7, !11, i64 80}
!28 = !{!7, !11, i64 76}
!29 = !{!19, !8, i64 8}
!30 = !{!7, !11, i64 48}
!31 = !{!8, !8, i64 0}
!32 = !{!9, !9, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = distinct !{!35, !34}
!36 = !{!19, !8, i64 16}
!37 = !{!16, !16, i64 0}
!38 = distinct !{!38, !34}
!39 = distinct !{!39, !34}
!40 = distinct !{!40, !34}
!41 = distinct !{!41, !34}
!42 = distinct !{!42, !34}
!43 = distinct !{!43, !34}
!44 = distinct !{!44, !34}
!45 = distinct !{!45, !34}
!46 = distinct !{!46, !34}
!47 = distinct !{!47, !34}
