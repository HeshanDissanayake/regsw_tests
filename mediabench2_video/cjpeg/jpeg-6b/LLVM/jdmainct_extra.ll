; ModuleID = 'jdmainct.c'
source_filename = "jdmainct.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_d_main_controller(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef signext 1, i64 noundef 136) #2
  %7 = getelementptr inbounds i8, ptr %0, i64 552
  store ptr %6, ptr %7, align 8, !tbaa !17
  store ptr @start_pass_main, ptr %6, align 8, !tbaa !18
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !21
  %11 = getelementptr inbounds i8, ptr %10, i64 40
  store i32 4, ptr %11, align 8, !tbaa !22
  %12 = load ptr, ptr %10, align 8, !tbaa !24
  tail call void %12(ptr noundef nonnull %0) #2
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds i8, ptr %0, i64 608
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds i8, ptr %15, i64 16
  %17 = load i32, ptr %16, align 8, !tbaa !26
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds i8, ptr %0, i64 416
  %20 = load i32, ptr %19, align 8, !tbaa !28
  br i1 %18, label %83, label %21

21:                                               ; preds = %13
  %22 = icmp slt i32 %20, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = load ptr, ptr %0, align 8, !tbaa !21
  %25 = getelementptr inbounds i8, ptr %24, i64 40
  store i32 47, ptr %25, align 8, !tbaa !22
  %26 = load ptr, ptr %24, align 8, !tbaa !24
  tail call void %26(ptr noundef nonnull %0) #2
  %27 = load i32, ptr %19, align 8, !tbaa !28
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %27, %23 ], [ %20, %21 ]
  %30 = load ptr, ptr %7, align 8, !tbaa !17
  %31 = load ptr, ptr %3, align 8, !tbaa !6
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  %33 = getelementptr inbounds i8, ptr %0, i64 56
  %34 = load i32, ptr %33, align 8, !tbaa !29
  %35 = shl nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 3
  %38 = tail call ptr %32(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %37) #2
  %39 = getelementptr inbounds i8, ptr %30, i64 104
  store ptr %38, ptr %39, align 8, !tbaa !30
  %40 = load i32, ptr %33, align 8, !tbaa !29
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = getelementptr inbounds i8, ptr %30, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !30
  %44 = icmp sgt i32 %40, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %28
  %46 = getelementptr inbounds i8, ptr %0, i64 304
  %47 = load ptr, ptr %46, align 8, !tbaa !31
  %48 = add nsw i32 %29, 4
  br label %49

49:                                               ; preds = %49, %45
  %50 = phi i64 [ 0, %45 ], [ %74, %49 ]
  %51 = phi ptr [ %47, %45 ], [ %75, %49 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 12
  %53 = load i32, ptr %52, align 4, !tbaa !32
  %54 = getelementptr inbounds i8, ptr %51, i64 36
  %55 = load i32, ptr %54, align 4, !tbaa !34
  %56 = mul nsw i32 %55, %53
  %57 = load i32, ptr %19, align 8, !tbaa !28
  %58 = sdiv i32 %56, %57
  %59 = load ptr, ptr %3, align 8, !tbaa !6
  %60 = load ptr, ptr %59, align 8, !tbaa !14
  %61 = mul nsw i32 %58, %48
  %62 = shl nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 3
  %65 = tail call ptr %60(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %64) #2
  %66 = sext i32 %58 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %39, align 8, !tbaa !30
  %69 = getelementptr inbounds ptr, ptr %68, i64 %50
  store ptr %67, ptr %69, align 8, !tbaa !30
  %70 = sext i32 %61 to i64
  %71 = getelementptr inbounds ptr, ptr %67, i64 %70
  %72 = load ptr, ptr %43, align 8, !tbaa !30
  %73 = getelementptr inbounds ptr, ptr %72, i64 %50
  store ptr %71, ptr %73, align 8, !tbaa !30
  %74 = add nuw nsw i64 %50, 1
  %75 = getelementptr inbounds i8, ptr %51, i64 96
  %76 = load i32, ptr %33, align 8, !tbaa !29
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %49, label %79

79:                                               ; preds = %49, %28
  %80 = phi i32 [ %40, %28 ], [ %76, %49 ]
  %81 = load i32, ptr %19, align 8, !tbaa !28
  %82 = add nsw i32 %81, 2
  br label %86

83:                                               ; preds = %13
  %84 = getelementptr inbounds i8, ptr %0, i64 56
  %85 = load i32, ptr %84, align 8, !tbaa !29
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i32 [ %80, %79 ], [ %85, %83 ]
  %88 = phi i32 [ %82, %79 ], [ %20, %83 ]
  %89 = getelementptr inbounds i8, ptr %0, i64 56
  %90 = icmp sgt i32 %87, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %86
  %92 = getelementptr inbounds i8, ptr %0, i64 304
  %93 = load ptr, ptr %92, align 8, !tbaa !31
  %94 = getelementptr inbounds i8, ptr %0, i64 416
  %95 = getelementptr inbounds i8, ptr %6, i64 16
  br label %96

96:                                               ; preds = %91, %96
  %97 = phi i64 [ 0, %91 ], [ %115, %96 ]
  %98 = phi ptr [ %93, %91 ], [ %116, %96 ]
  %99 = getelementptr inbounds i8, ptr %98, i64 12
  %100 = load i32, ptr %99, align 4, !tbaa !32
  %101 = getelementptr inbounds i8, ptr %98, i64 36
  %102 = load i32, ptr %101, align 4, !tbaa !34
  %103 = mul nsw i32 %102, %100
  %104 = load i32, ptr %94, align 8, !tbaa !28
  %105 = sdiv i32 %103, %104
  %106 = load ptr, ptr %3, align 8, !tbaa !6
  %107 = getelementptr inbounds i8, ptr %106, i64 16
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = getelementptr inbounds i8, ptr %98, i64 28
  %110 = load i32, ptr %109, align 4, !tbaa !36
  %111 = mul i32 %110, %102
  %112 = mul nsw i32 %105, %88
  %113 = tail call ptr %108(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %111, i32 noundef signext %112) #2
  %114 = getelementptr inbounds [10 x ptr], ptr %95, i64 0, i64 %97
  store ptr %113, ptr %114, align 8, !tbaa !30
  %115 = add nuw nsw i64 %97, 1
  %116 = getelementptr inbounds i8, ptr %98, i64 96
  %117 = load i32, ptr %89, align 8, !tbaa !29
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %96, label %120

120:                                              ; preds = %96, %86
  ret void
}

; Function Attrs: nounwind
define internal void @start_pass_main(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 552
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  switch i32 %1, label %101 [
    i32 0, label %5
    i32 2, label %99
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 608
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds i8, ptr %7, i64 16
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  br i1 %10, label %95, label %12

12:                                               ; preds = %5
  store ptr @process_data_context_main, ptr %11, align 8, !tbaa !37
  %13 = getelementptr inbounds i8, ptr %0, i64 416
  %14 = load i32, ptr %13, align 8, !tbaa !28
  %15 = getelementptr inbounds i8, ptr %0, i64 56
  %16 = load i32, ptr %15, align 8, !tbaa !29
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %12
  %19 = getelementptr inbounds i8, ptr %0, i64 304
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = getelementptr inbounds i8, ptr %4, i64 104
  %22 = getelementptr inbounds i8, ptr %4, i64 112
  %23 = getelementptr inbounds i8, ptr %4, i64 16
  %24 = add nsw i32 %14, 2
  %25 = add nsw i32 %14, -2
  %26 = zext nneg i32 %16 to i64
  br label %27

27:                                               ; preds = %87, %18
  %28 = phi i64 [ 0, %18 ], [ %88, %87 ]
  %29 = phi ptr [ %20, %18 ], [ %89, %87 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 12
  %31 = load i32, ptr %30, align 4, !tbaa !32
  %32 = getelementptr inbounds i8, ptr %29, i64 36
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = mul nsw i32 %33, %31
  %35 = sdiv i32 %34, %14
  %36 = load ptr, ptr %21, align 8, !tbaa !30
  %37 = getelementptr inbounds ptr, ptr %36, i64 %28
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = load ptr, ptr %22, align 8, !tbaa !30
  %40 = getelementptr inbounds ptr, ptr %39, i64 %28
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = getelementptr inbounds [10 x ptr], ptr %23, i64 0, i64 %28
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  %44 = mul nsw i32 %35, %24
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = zext nneg i32 %44 to i64
  br label %58

48:                                               ; preds = %58, %27
  %49 = icmp sgt i32 %35, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %48
  %51 = shl nuw i32 %35, 1
  %52 = mul nsw i32 %35, %14
  %53 = mul nsw i32 %35, %25
  %54 = sext i32 %52 to i64
  %55 = sext i32 %53 to i64
  %56 = tail call i32 @llvm.smax.i32(i32 %51, i32 1)
  %57 = zext nneg i32 %56 to i64
  br label %69

58:                                               ; preds = %58, %46
  %59 = phi i64 [ 0, %46 ], [ %64, %58 ]
  %60 = getelementptr inbounds ptr, ptr %43, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !30
  %62 = getelementptr inbounds ptr, ptr %41, i64 %59
  store ptr %61, ptr %62, align 8, !tbaa !30
  %63 = getelementptr inbounds ptr, ptr %38, i64 %59
  store ptr %61, ptr %63, align 8, !tbaa !30
  %64 = add nuw nsw i64 %59, 1
  %65 = icmp eq i64 %64, %47
  br i1 %65, label %48, label %58

66:                                               ; preds = %69
  %67 = zext nneg i32 %35 to i64
  %68 = load ptr, ptr %38, align 8, !tbaa !30
  br label %81

69:                                               ; preds = %69, %50
  %70 = phi i64 [ 0, %50 ], [ %79, %69 ]
  %71 = add nsw i64 %70, %54
  %72 = getelementptr inbounds ptr, ptr %43, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !30
  %74 = add nsw i64 %70, %55
  %75 = getelementptr inbounds ptr, ptr %41, i64 %74
  store ptr %73, ptr %75, align 8, !tbaa !30
  %76 = getelementptr inbounds ptr, ptr %43, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !30
  %78 = getelementptr inbounds ptr, ptr %41, i64 %71
  store ptr %77, ptr %78, align 8, !tbaa !30
  %79 = add nuw nsw i64 %70, 1
  %80 = icmp eq i64 %79, %57
  br i1 %80, label %66, label %69

81:                                               ; preds = %81, %66
  %82 = phi i64 [ 0, %66 ], [ %85, %81 ]
  %83 = sub nsw i64 %82, %67
  %84 = getelementptr inbounds ptr, ptr %38, i64 %83
  store ptr %68, ptr %84, align 8, !tbaa !30
  %85 = add nuw nsw i64 %82, 1
  %86 = icmp eq i64 %85, %67
  br i1 %86, label %87, label %81

87:                                               ; preds = %81, %48
  %88 = add nuw nsw i64 %28, 1
  %89 = getelementptr inbounds i8, ptr %29, i64 96
  %90 = icmp eq i64 %88, %26
  br i1 %90, label %91, label %27

91:                                               ; preds = %87, %12
  %92 = getelementptr inbounds i8, ptr %4, i64 120
  store i32 0, ptr %92, align 8, !tbaa !38
  %93 = getelementptr inbounds i8, ptr %4, i64 124
  store i32 0, ptr %93, align 4, !tbaa !39
  %94 = getelementptr inbounds i8, ptr %4, i64 132
  store i32 0, ptr %94, align 4, !tbaa !40
  br label %96

95:                                               ; preds = %5
  store ptr @process_data_simple_main, ptr %11, align 8, !tbaa !37
  br label %96

96:                                               ; preds = %95, %91
  %97 = getelementptr inbounds i8, ptr %4, i64 96
  store i32 0, ptr %97, align 8, !tbaa !41
  %98 = getelementptr inbounds i8, ptr %4, i64 100
  store i32 0, ptr %98, align 4, !tbaa !42
  br label %105

99:                                               ; preds = %2
  %100 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @process_data_crank_post, ptr %100, align 8, !tbaa !37
  br label %105

101:                                              ; preds = %2
  %102 = load ptr, ptr %0, align 8, !tbaa !21
  %103 = getelementptr inbounds i8, ptr %102, i64 40
  store i32 4, ptr %103, align 8, !tbaa !22
  %104 = load ptr, ptr %102, align 8, !tbaa !24
  tail call void %104(ptr noundef nonnull %0) #2
  br label %105

105:                                              ; preds = %101, %99, %96
  ret void
}

; Function Attrs: nounwind
define internal void @process_data_context_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 552
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 96
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, ptr %0, i64 560
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds i8, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds i8, ptr %6, i64 104
  %16 = getelementptr inbounds i8, ptr %6, i64 120
  %17 = load i32, ptr %16, align 8, !tbaa !38
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !30
  %21 = tail call signext i32 %14(ptr noundef nonnull %0, ptr noundef %20) #2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %205, label %23

23:                                               ; preds = %10
  store i32 1, ptr %7, align 8, !tbaa !41
  %24 = getelementptr inbounds i8, ptr %6, i64 132
  %25 = load i32, ptr %24, align 4, !tbaa !40
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !40
  br label %27

27:                                               ; preds = %23, %4
  %28 = getelementptr inbounds i8, ptr %6, i64 124
  %29 = load i32, ptr %28, align 4, !tbaa !39
  switch i32 %29, label %205 [
    i32 2, label %30
    i32 0, label %50
    i32 1, label %119
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %0, i64 568
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds i8, ptr %32, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds i8, ptr %6, i64 104
  %36 = getelementptr inbounds i8, ptr %6, i64 120
  %37 = load i32, ptr %36, align 8, !tbaa !38
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x ptr], ptr %35, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !30
  %41 = getelementptr inbounds i8, ptr %6, i64 100
  %42 = getelementptr inbounds i8, ptr %6, i64 128
  %43 = load i32, ptr %42, align 8, !tbaa !49
  tail call void %34(ptr noundef nonnull %0, ptr noundef %40, ptr noundef nonnull %41, i32 noundef signext %43, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #2
  %44 = load i32, ptr %41, align 4, !tbaa !42
  %45 = load i32, ptr %42, align 8, !tbaa !49
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %205, label %47

47:                                               ; preds = %30
  store i32 0, ptr %28, align 4, !tbaa !39
  %48 = load i32, ptr %2, align 4, !tbaa !50
  %49 = icmp ult i32 %48, %3
  br i1 %49, label %50, label %205

50:                                               ; preds = %47, %27
  %51 = getelementptr inbounds i8, ptr %6, i64 100
  store i32 0, ptr %51, align 4, !tbaa !42
  %52 = getelementptr inbounds i8, ptr %0, i64 416
  %53 = load i32, ptr %52, align 8, !tbaa !28
  %54 = add nsw i32 %53, -1
  %55 = getelementptr inbounds i8, ptr %6, i64 128
  store i32 %54, ptr %55, align 8, !tbaa !49
  %56 = getelementptr inbounds i8, ptr %6, i64 132
  %57 = load i32, ptr %56, align 4, !tbaa !40
  %58 = getelementptr inbounds i8, ptr %0, i64 420
  %59 = load i32, ptr %58, align 4, !tbaa !51
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %118

61:                                               ; preds = %50
  %62 = getelementptr inbounds i8, ptr %0, i64 56
  %63 = load i32, ptr %62, align 8, !tbaa !29
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %118

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %0, i64 304
  %67 = load ptr, ptr %66, align 8, !tbaa !31
  %68 = load ptr, ptr %5, align 8, !tbaa !17
  %69 = getelementptr inbounds i8, ptr %68, i64 128
  %70 = getelementptr inbounds i8, ptr %68, i64 104
  %71 = getelementptr inbounds i8, ptr %68, i64 120
  %72 = load i32, ptr %71, align 8, !tbaa !38
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x ptr], ptr %70, i64 0, i64 %73
  %75 = zext nneg i32 %63 to i64
  br label %76

76:                                               ; preds = %114, %65
  %77 = phi i64 [ 0, %65 ], [ %115, %114 ]
  %78 = phi ptr [ %67, %65 ], [ %116, %114 ]
  %79 = getelementptr inbounds i8, ptr %78, i64 12
  %80 = load i32, ptr %79, align 4, !tbaa !32
  %81 = getelementptr inbounds i8, ptr %78, i64 36
  %82 = load i32, ptr %81, align 4, !tbaa !34
  %83 = mul nsw i32 %82, %80
  %84 = sdiv i32 %83, %53
  %85 = getelementptr inbounds i8, ptr %78, i64 44
  %86 = load i32, ptr %85, align 4, !tbaa !52
  %87 = urem i32 %86, %83
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 %83, i32 %87
  %90 = icmp eq i64 %77, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %76
  %92 = add nsw i32 %89, -1
  %93 = sdiv i32 %92, %84
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %69, align 8, !tbaa !49
  br label %95

95:                                               ; preds = %91, %76
  %96 = icmp sgt i32 %84, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %95
  %98 = load ptr, ptr %74, align 8, !tbaa !30
  %99 = getelementptr inbounds ptr, ptr %98, i64 %77
  %100 = load ptr, ptr %99, align 8, !tbaa !30
  %101 = shl nuw i32 %84, 1
  %102 = getelementptr i8, ptr %100, i64 -8
  %103 = sext i32 %89 to i64
  %104 = getelementptr ptr, ptr %102, i64 %103
  %105 = tail call i32 @llvm.smax.i32(i32 %101, i32 1)
  %106 = zext nneg i32 %105 to i64
  %107 = load ptr, ptr %104, align 8, !tbaa !30
  %108 = getelementptr ptr, ptr %100, i64 %103
  br label %109

109:                                              ; preds = %109, %97
  %110 = phi i64 [ 0, %97 ], [ %112, %109 ]
  %111 = getelementptr ptr, ptr %108, i64 %110
  store ptr %107, ptr %111, align 8, !tbaa !30
  %112 = add nuw nsw i64 %110, 1
  %113 = icmp eq i64 %112, %106
  br i1 %113, label %114, label %109

114:                                              ; preds = %109, %95
  %115 = add nuw nsw i64 %77, 1
  %116 = getelementptr inbounds i8, ptr %78, i64 96
  %117 = icmp eq i64 %115, %75
  br i1 %117, label %118, label %76

118:                                              ; preds = %114, %61, %50
  store i32 1, ptr %28, align 4, !tbaa !39
  br label %119

119:                                              ; preds = %27, %118
  %120 = getelementptr inbounds i8, ptr %0, i64 568
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = getelementptr inbounds i8, ptr %121, i64 8
  %123 = load ptr, ptr %122, align 8, !tbaa !47
  %124 = getelementptr inbounds i8, ptr %6, i64 104
  %125 = getelementptr inbounds i8, ptr %6, i64 120
  %126 = load i32, ptr %125, align 8, !tbaa !38
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [2 x ptr], ptr %124, i64 0, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !30
  %130 = getelementptr inbounds i8, ptr %6, i64 100
  %131 = getelementptr inbounds i8, ptr %6, i64 128
  %132 = load i32, ptr %131, align 8, !tbaa !49
  tail call void %123(ptr noundef %0, ptr noundef %129, ptr noundef nonnull %130, i32 noundef signext %132, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #2
  %133 = load i32, ptr %130, align 4, !tbaa !42
  %134 = load i32, ptr %131, align 8, !tbaa !49
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %205, label %136

136:                                              ; preds = %119
  %137 = getelementptr inbounds i8, ptr %6, i64 132
  %138 = load i32, ptr %137, align 4, !tbaa !40
  %139 = icmp eq i32 %138, 1
  %140 = getelementptr inbounds i8, ptr %0, i64 416
  %141 = load i32, ptr %140, align 8, !tbaa !28
  br i1 %139, label %142, label %200

142:                                              ; preds = %136
  %143 = getelementptr inbounds i8, ptr %0, i64 56
  %144 = load i32, ptr %143, align 8, !tbaa !29
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %200

146:                                              ; preds = %142
  %147 = getelementptr inbounds i8, ptr %0, i64 304
  %148 = load ptr, ptr %147, align 8, !tbaa !31
  %149 = load ptr, ptr %5, align 8, !tbaa !17
  %150 = getelementptr inbounds i8, ptr %149, i64 104
  %151 = getelementptr inbounds i8, ptr %149, i64 112
  %152 = add nsw i32 %141, 1
  %153 = add nsw i32 %141, 2
  %154 = zext nneg i32 %144 to i64
  br label %155

155:                                              ; preds = %196, %146
  %156 = phi i64 [ 0, %146 ], [ %197, %196 ]
  %157 = phi ptr [ %148, %146 ], [ %198, %196 ]
  %158 = getelementptr inbounds i8, ptr %157, i64 12
  %159 = load i32, ptr %158, align 4, !tbaa !32
  %160 = getelementptr inbounds i8, ptr %157, i64 36
  %161 = load i32, ptr %160, align 4, !tbaa !34
  %162 = mul nsw i32 %161, %159
  %163 = sdiv i32 %162, %141
  %164 = load ptr, ptr %150, align 8, !tbaa !30
  %165 = getelementptr inbounds ptr, ptr %164, i64 %156
  %166 = load ptr, ptr %165, align 8, !tbaa !30
  %167 = load ptr, ptr %151, align 8, !tbaa !30
  %168 = getelementptr inbounds ptr, ptr %167, i64 %156
  %169 = load ptr, ptr %168, align 8, !tbaa !30
  %170 = icmp sgt i32 %163, 0
  br i1 %170, label %171, label %196

171:                                              ; preds = %155
  %172 = mul nsw i32 %163, %152
  %173 = mul nsw i32 %163, %153
  %174 = sext i32 %172 to i64
  %175 = zext nneg i32 %163 to i64
  %176 = sext i32 %173 to i64
  br label %177

177:                                              ; preds = %177, %171
  %178 = phi i64 [ 0, %171 ], [ %194, %177 ]
  %179 = add nsw i64 %178, %174
  %180 = getelementptr inbounds ptr, ptr %166, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !30
  %182 = sub nsw i64 %178, %175
  %183 = getelementptr inbounds ptr, ptr %166, i64 %182
  store ptr %181, ptr %183, align 8, !tbaa !30
  %184 = getelementptr inbounds ptr, ptr %169, i64 %179
  %185 = load ptr, ptr %184, align 8, !tbaa !30
  %186 = getelementptr inbounds ptr, ptr %169, i64 %182
  store ptr %185, ptr %186, align 8, !tbaa !30
  %187 = getelementptr inbounds ptr, ptr %166, i64 %178
  %188 = load ptr, ptr %187, align 8, !tbaa !30
  %189 = add nsw i64 %178, %176
  %190 = getelementptr inbounds ptr, ptr %166, i64 %189
  store ptr %188, ptr %190, align 8, !tbaa !30
  %191 = getelementptr inbounds ptr, ptr %169, i64 %178
  %192 = load ptr, ptr %191, align 8, !tbaa !30
  %193 = getelementptr inbounds ptr, ptr %169, i64 %189
  store ptr %192, ptr %193, align 8, !tbaa !30
  %194 = add nuw nsw i64 %178, 1
  %195 = icmp eq i64 %194, %175
  br i1 %195, label %196, label %177

196:                                              ; preds = %177, %155
  %197 = add nuw nsw i64 %156, 1
  %198 = getelementptr inbounds i8, ptr %157, i64 96
  %199 = icmp eq i64 %197, %154
  br i1 %199, label %200, label %155

200:                                              ; preds = %196, %136, %142
  %201 = load i32, ptr %125, align 8, !tbaa !38
  %202 = xor i32 %201, 1
  store i32 %202, ptr %125, align 8, !tbaa !38
  store i32 0, ptr %7, align 8, !tbaa !41
  %203 = add nsw i32 %141, 1
  store i32 %203, ptr %130, align 4, !tbaa !42
  %204 = add nsw i32 %141, 2
  store i32 %204, ptr %131, align 8, !tbaa !49
  store i32 2, ptr %28, align 4, !tbaa !39
  br label %205

205:                                              ; preds = %27, %200, %119, %47, %30, %10
  ret void
}

; Function Attrs: nounwind
define internal void @process_data_simple_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 552
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 96
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, ptr %0, i64 560
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds i8, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds i8, ptr %6, i64 16
  %16 = tail call signext i32 %14(ptr noundef nonnull %0, ptr noundef nonnull %15) #2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %10
  store i32 1, ptr %7, align 8, !tbaa !41
  br label %19

19:                                               ; preds = %18, %4
  %20 = getelementptr inbounds i8, ptr %0, i64 416
  %21 = load i32, ptr %20, align 8, !tbaa !28
  %22 = getelementptr inbounds i8, ptr %0, i64 568
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds i8, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = getelementptr inbounds i8, ptr %6, i64 16
  %27 = getelementptr inbounds i8, ptr %6, i64 100
  tail call void %25(ptr noundef nonnull %0, ptr noundef nonnull %26, ptr noundef nonnull %27, i32 noundef signext %21, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #2
  %28 = load i32, ptr %27, align 4, !tbaa !42
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store i32 0, ptr %7, align 8, !tbaa !41
  store i32 0, ptr %27, align 4, !tbaa !42
  br label %31

31:                                               ; preds = %19, %30, %10
  ret void
}

; Function Attrs: nounwind
define internal void @process_data_crank_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 568
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call void %8(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef signext 0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }

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
!17 = !{!7, !8, i64 552}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !9, i64 16, !11, i64 96, !11, i64 100, !9, i64 104, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132}
!20 = !{!"jpeg_d_main_controller", !8, i64 0, !8, i64 8}
!21 = !{!7, !8, i64 0}
!22 = !{!23, !11, i64 40}
!23 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!24 = !{!23, !8, i64 0}
!25 = !{!7, !8, i64 608}
!26 = !{!27, !11, i64 16}
!27 = !{!"jpeg_upsampler", !8, i64 0, !8, i64 8, !11, i64 16}
!28 = !{!7, !11, i64 416}
!29 = !{!7, !11, i64 56}
!30 = !{!8, !8, i64 0}
!31 = !{!7, !8, i64 304}
!32 = !{!33, !11, i64 12}
!33 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!34 = !{!33, !11, i64 36}
!35 = !{!15, !8, i64 16}
!36 = !{!33, !11, i64 28}
!37 = !{!19, !8, i64 8}
!38 = !{!19, !11, i64 120}
!39 = !{!19, !11, i64 124}
!40 = !{!19, !11, i64 132}
!41 = !{!19, !11, i64 96}
!42 = !{!19, !11, i64 100}
!43 = !{!7, !8, i64 560}
!44 = !{!45, !8, i64 24}
!45 = !{!"jpeg_d_coef_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!46 = !{!7, !8, i64 568}
!47 = !{!48, !8, i64 8}
!48 = !{!"jpeg_d_post_controller", !8, i64 0, !8, i64 8}
!49 = !{!19, !11, i64 128}
!50 = !{!11, !11, i64 0}
!51 = !{!7, !11, i64 420}
!52 = !{!33, !11, i64 44}
