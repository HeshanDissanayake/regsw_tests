; ModuleID = 'jccoefct.c'
source_filename = "jccoefct.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_c_coef_controller(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef signext 1, i64 noundef 192) #3
  %7 = getelementptr inbounds i8, ptr %0, i64 456
  store ptr %6, ptr %7, align 8, !tbaa !17
  store ptr @start_pass_coef, ptr %6, align 8, !tbaa !18
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 76
  %11 = load i32, ptr %10, align 4, !tbaa !21
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %72

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %0, i64 88
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = getelementptr inbounds i8, ptr %6, i64 112
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %42, %17 ]
  %19 = phi ptr [ %15, %13 ], [ %43, %17 ]
  %20 = load ptr, ptr %3, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 40
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = getelementptr inbounds i8, ptr %19, i64 28
  %24 = load i32, ptr %23, align 4, !tbaa !24
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %19, i64 8
  %27 = load i32, ptr %26, align 8, !tbaa !26
  %28 = sext i32 %27 to i64
  %29 = tail call i64 @jround_up(i64 noundef %25, i64 noundef %28) #3
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds i8, ptr %19, i64 32
  %32 = load i32, ptr %31, align 8, !tbaa !27
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %19, i64 12
  %35 = load i32, ptr %34, align 4, !tbaa !28
  %36 = sext i32 %35 to i64
  %37 = tail call i64 @jround_up(i64 noundef %33, i64 noundef %36) #3
  %38 = trunc i64 %37 to i32
  %39 = load i32, ptr %34, align 4, !tbaa !28
  %40 = tail call ptr %22(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %30, i32 noundef signext %38, i32 noundef signext %39) #3
  %41 = getelementptr inbounds [10 x ptr], ptr %16, i64 0, i64 %18
  store ptr %40, ptr %41, align 8, !tbaa !29
  %42 = add nuw nsw i64 %18, 1
  %43 = getelementptr inbounds i8, ptr %19, i64 96
  %44 = load i32, ptr %10, align 4, !tbaa !21
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %17, label %72

47:                                               ; preds = %2
  %48 = load ptr, ptr %3, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8, !tbaa !30
  %51 = tail call ptr %50(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 1280) #3
  %52 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %51, ptr %52, align 8, !tbaa !29
  %53 = getelementptr inbounds i8, ptr %51, i64 128
  %54 = getelementptr inbounds i8, ptr %6, i64 40
  store ptr %53, ptr %54, align 8, !tbaa !29
  %55 = getelementptr inbounds i8, ptr %51, i64 256
  %56 = getelementptr inbounds i8, ptr %6, i64 48
  store ptr %55, ptr %56, align 8, !tbaa !29
  %57 = getelementptr inbounds i8, ptr %51, i64 384
  %58 = getelementptr inbounds i8, ptr %6, i64 56
  store ptr %57, ptr %58, align 8, !tbaa !29
  %59 = getelementptr inbounds i8, ptr %51, i64 512
  %60 = getelementptr inbounds i8, ptr %6, i64 64
  store ptr %59, ptr %60, align 8, !tbaa !29
  %61 = getelementptr inbounds i8, ptr %51, i64 640
  %62 = getelementptr inbounds i8, ptr %6, i64 72
  store ptr %61, ptr %62, align 8, !tbaa !29
  %63 = getelementptr inbounds i8, ptr %51, i64 768
  %64 = getelementptr inbounds i8, ptr %6, i64 80
  store ptr %63, ptr %64, align 8, !tbaa !29
  %65 = getelementptr inbounds i8, ptr %51, i64 896
  %66 = getelementptr inbounds i8, ptr %6, i64 88
  store ptr %65, ptr %66, align 8, !tbaa !29
  %67 = getelementptr inbounds i8, ptr %51, i64 1024
  %68 = getelementptr inbounds i8, ptr %6, i64 96
  store ptr %67, ptr %68, align 8, !tbaa !29
  %69 = getelementptr inbounds i8, ptr %51, i64 1152
  %70 = getelementptr inbounds i8, ptr %6, i64 104
  store ptr %69, ptr %70, align 8, !tbaa !29
  %71 = getelementptr inbounds i8, ptr %6, i64 112
  store ptr null, ptr %71, align 8, !tbaa !29
  br label %72

72:                                               ; preds = %17, %9, %47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @start_pass_coef(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 456
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 0, ptr %5, align 8, !tbaa !31
  %6 = getelementptr inbounds i8, ptr %0, i64 324
  %7 = load i32, ptr %6, align 4, !tbaa !32
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %4, i64 28
  store i32 1, ptr %10, align 4, !tbaa !33
  br label %24

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %0, i64 320
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 1
  %15 = getelementptr inbounds i8, ptr %0, i64 328
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  %17 = getelementptr inbounds i8, ptr %4, i64 28
  br i1 %14, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, ptr %16, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !28
  store i32 %20, ptr %17, align 4, !tbaa !33
  br label %24

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %16, i64 72
  %23 = load i32, ptr %22, align 8, !tbaa !35
  store i32 %23, ptr %17, align 4, !tbaa !33
  br label %24

24:                                               ; preds = %9, %18, %21
  %25 = getelementptr inbounds i8, ptr %4, i64 20
  store i32 0, ptr %25, align 4, !tbaa !36
  %26 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 0, ptr %26, align 8, !tbaa !37
  switch i32 %1, label %57 [
    i32 0, label %27
    i32 3, label %37
    i32 2, label %47
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %4, i64 112
  %29 = load ptr, ptr %28, align 8, !tbaa !29
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !38
  %33 = getelementptr inbounds i8, ptr %32, i64 40
  store i32 4, ptr %33, align 8, !tbaa !39
  %34 = load ptr, ptr %32, align 8, !tbaa !41
  tail call void %34(ptr noundef nonnull %0) #3
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @compress_data, ptr %36, align 8, !tbaa !42
  br label %61

37:                                               ; preds = %24
  %38 = getelementptr inbounds i8, ptr %4, i64 112
  %39 = load ptr, ptr %38, align 8, !tbaa !29
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 8, !tbaa !38
  %43 = getelementptr inbounds i8, ptr %42, i64 40
  store i32 4, ptr %43, align 8, !tbaa !39
  %44 = load ptr, ptr %42, align 8, !tbaa !41
  tail call void %44(ptr noundef nonnull %0) #3
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @compress_first_pass, ptr %46, align 8, !tbaa !42
  br label %61

47:                                               ; preds = %24
  %48 = getelementptr inbounds i8, ptr %4, i64 112
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !38
  %53 = getelementptr inbounds i8, ptr %52, i64 40
  store i32 4, ptr %53, align 8, !tbaa !39
  %54 = load ptr, ptr %52, align 8, !tbaa !41
  tail call void %54(ptr noundef nonnull %0) #3
  br label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @compress_output, ptr %56, align 8, !tbaa !42
  br label %61

57:                                               ; preds = %24
  %58 = load ptr, ptr %0, align 8, !tbaa !38
  %59 = getelementptr inbounds i8, ptr %58, i64 40
  store i32 4, ptr %59, align 8, !tbaa !39
  %60 = load ptr, ptr %58, align 8, !tbaa !41
  tail call void %60(ptr noundef nonnull %0) #3
  br label %61

61:                                               ; preds = %57, %55, %45, %35
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @compress_data(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 456
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %0, i64 360
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds i8, ptr %0, i64 320
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds i8, ptr %4, i64 24
  %12 = load i32, ptr %11, align 8, !tbaa !37
  %13 = getelementptr inbounds i8, ptr %4, i64 28
  %14 = load i32, ptr %13, align 4, !tbaa !33
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %160

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %4, i64 20
  %18 = getelementptr inbounds i8, ptr %0, i64 324
  %19 = getelementptr inbounds i8, ptr %0, i64 328
  %20 = getelementptr inbounds i8, ptr %4, i64 16
  %21 = getelementptr inbounds i8, ptr %4, i64 32
  %22 = getelementptr inbounds i8, ptr %0, i64 488
  %23 = getelementptr inbounds i8, ptr %0, i64 496
  %24 = load i32, ptr %17, align 4, !tbaa !36
  br label %25

25:                                               ; preds = %16, %154
  %26 = phi i32 [ %14, %16 ], [ %155, %154 ]
  %27 = phi i32 [ %24, %16 ], [ 0, %154 ]
  %28 = phi i32 [ %12, %16 ], [ %156, %154 ]
  %29 = icmp ugt i32 %27, %7
  br i1 %29, label %154, label %30

30:                                               ; preds = %25
  %31 = shl nsw i32 %28, 3
  br label %32

32:                                               ; preds = %30, %149
  %33 = phi i32 [ %27, %30 ], [ %150, %149 ]
  %34 = load i32, ptr %18, align 4, !tbaa !32
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %142

36:                                               ; preds = %32
  %37 = icmp ult i32 %33, %7
  br label %38

38:                                               ; preds = %36, %136
  %39 = phi i32 [ %34, %36 ], [ %137, %136 ]
  %40 = phi i64 [ 0, %36 ], [ %139, %136 ]
  %41 = phi i32 [ 0, %36 ], [ %138, %136 ]
  %42 = getelementptr inbounds [4 x ptr], ptr %19, i64 0, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  %44 = getelementptr inbounds i8, ptr %43, i64 52
  %45 = getelementptr inbounds i8, ptr %43, i64 68
  %46 = select i1 %37, ptr %44, ptr %45
  %47 = load i32, ptr %46, align 4, !tbaa !44
  %48 = getelementptr inbounds i8, ptr %43, i64 64
  %49 = load i32, ptr %48, align 8, !tbaa !45
  %50 = mul i32 %49, %33
  %51 = getelementptr inbounds i8, ptr %43, i64 56
  %52 = load i32, ptr %51, align 8, !tbaa !46
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %136

54:                                               ; preds = %38
  %55 = getelementptr inbounds i8, ptr %43, i64 72
  %56 = getelementptr inbounds i8, ptr %43, i64 4
  %57 = sext i32 %47 to i64
  br label %58

58:                                               ; preds = %54, %127
  %59 = phi i32 [ %31, %54 ], [ %130, %127 ]
  %60 = phi i32 [ %41, %54 ], [ %129, %127 ]
  %61 = phi i32 [ 0, %54 ], [ %131, %127 ]
  %62 = load i32, ptr %20, align 8, !tbaa !31
  %63 = icmp ult i32 %62, %10
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = add nsw i32 %61, %28
  %66 = load i32, ptr %55, align 8, !tbaa !35
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %104

68:                                               ; preds = %64, %58
  %69 = load ptr, ptr %22, align 8, !tbaa !47
  %70 = getelementptr inbounds i8, ptr %69, i64 8
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = load i32, ptr %56, align 4, !tbaa !50
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %1, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !29
  %76 = sext i32 %60 to i64
  %77 = getelementptr inbounds [10 x ptr], ptr %21, i64 0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !29
  tail call void %71(ptr noundef %0, ptr noundef nonnull %43, ptr noundef %75, ptr noundef %78, i32 noundef signext %59, i32 noundef signext %50, i32 noundef signext %47) #3
  %79 = load i32, ptr %44, align 4, !tbaa !51
  %80 = icmp slt i32 %47, %79
  br i1 %80, label %81, label %127

81:                                               ; preds = %68
  %82 = add nsw i32 %60, %47
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [10 x ptr], ptr %21, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !29
  %86 = sub nsw i32 %79, %47
  %87 = sext i32 %86 to i64
  %88 = shl nsw i64 %87, 7
  tail call void @jzero_far(ptr noundef %85, i64 noundef %88) #3
  %89 = load i32, ptr %44, align 4, !tbaa !51
  %90 = icmp slt i32 %47, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %81
  %92 = sext i32 %89 to i64
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi i64 [ %57, %91 ], [ %102, %93 ]
  %95 = add nsw i64 %94, %76
  %96 = add nsw i64 %95, -1
  %97 = getelementptr inbounds [10 x ptr], ptr %21, i64 0, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !29
  %99 = load i16, ptr %98, align 2, !tbaa !52
  %100 = getelementptr inbounds [10 x ptr], ptr %21, i64 0, i64 %95
  %101 = load ptr, ptr %100, align 8, !tbaa !29
  store i16 %99, ptr %101, align 2, !tbaa !52
  %102 = add nsw i64 %94, 1
  %103 = icmp eq i64 %102, %92
  br i1 %103, label %127, label %93

104:                                              ; preds = %64
  %105 = sext i32 %60 to i64
  %106 = getelementptr inbounds [10 x ptr], ptr %21, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !29
  %108 = load i32, ptr %44, align 4, !tbaa !51
  %109 = sext i32 %108 to i64
  %110 = shl nsw i64 %109, 7
  tail call void @jzero_far(ptr noundef %107, i64 noundef %110) #3
  %111 = load i32, ptr %44, align 4, !tbaa !51
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %104
  %114 = add nsw i32 %60, -1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [10 x ptr], ptr %21, i64 0, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !29
  %118 = zext nneg i32 %111 to i64
  %119 = load i16, ptr %117, align 2, !tbaa !52
  br label %120

120:                                              ; preds = %113, %120
  %121 = phi i64 [ 0, %113 ], [ %125, %120 ]
  %122 = add nsw i64 %121, %105
  %123 = getelementptr inbounds [10 x ptr], ptr %21, i64 0, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !29
  store i16 %119, ptr %124, align 2, !tbaa !52
  %125 = add nuw nsw i64 %121, 1
  %126 = icmp eq i64 %125, %118
  br i1 %126, label %127, label %120

127:                                              ; preds = %120, %93, %104, %81, %68
  %128 = phi i32 [ %111, %104 ], [ %89, %81 ], [ %79, %68 ], [ %89, %93 ], [ %111, %120 ]
  %129 = add nsw i32 %128, %60
  %130 = add i32 %59, 8
  %131 = add nuw nsw i32 %61, 1
  %132 = load i32, ptr %51, align 8, !tbaa !46
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %58, label %134

134:                                              ; preds = %127
  %135 = load i32, ptr %18, align 4, !tbaa !32
  br label %136

136:                                              ; preds = %134, %38
  %137 = phi i32 [ %39, %38 ], [ %135, %134 ]
  %138 = phi i32 [ %41, %38 ], [ %129, %134 ]
  %139 = add nuw nsw i64 %40, 1
  %140 = sext i32 %137 to i64
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %38, label %142

142:                                              ; preds = %136, %32
  %143 = load ptr, ptr %23, align 8, !tbaa !53
  %144 = getelementptr inbounds i8, ptr %143, i64 8
  %145 = load ptr, ptr %144, align 8, !tbaa !54
  %146 = tail call signext i32 %145(ptr noundef nonnull %0, ptr noundef nonnull %21) #3
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 %28, ptr %11, align 8, !tbaa !37
  store i32 %33, ptr %17, align 4, !tbaa !36
  br label %188

149:                                              ; preds = %142
  %150 = add i32 %33, 1
  %151 = icmp ugt i32 %150, %7
  br i1 %151, label %152, label %32

152:                                              ; preds = %149
  %153 = load i32, ptr %13, align 4, !tbaa !33
  br label %154

154:                                              ; preds = %152, %25
  %155 = phi i32 [ %153, %152 ], [ %26, %25 ]
  store i32 0, ptr %17, align 4, !tbaa !36
  %156 = add nsw i32 %28, 1
  %157 = icmp slt i32 %156, %155
  br i1 %157, label %25, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %3, align 8, !tbaa !17
  br label %160

160:                                              ; preds = %158, %2
  %161 = phi ptr [ %159, %158 ], [ %4, %2 ]
  %162 = getelementptr inbounds i8, ptr %4, i64 16
  %163 = load i32, ptr %162, align 8, !tbaa !31
  %164 = add i32 %163, 1
  store i32 %164, ptr %162, align 8, !tbaa !31
  %165 = getelementptr inbounds i8, ptr %0, i64 324
  %166 = load i32, ptr %165, align 4, !tbaa !32
  %167 = icmp sgt i32 %166, 1
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, ptr %161, i64 28
  store i32 1, ptr %169, align 4, !tbaa !33
  br label %185

170:                                              ; preds = %160
  %171 = getelementptr inbounds i8, ptr %161, i64 16
  %172 = load i32, ptr %171, align 8, !tbaa !31
  %173 = load i32, ptr %8, align 8, !tbaa !34
  %174 = add i32 %173, -1
  %175 = icmp ult i32 %172, %174
  %176 = getelementptr inbounds i8, ptr %0, i64 328
  %177 = load ptr, ptr %176, align 8, !tbaa !29
  %178 = getelementptr inbounds i8, ptr %161, i64 28
  br i1 %175, label %179, label %182

179:                                              ; preds = %170
  %180 = getelementptr inbounds i8, ptr %177, i64 12
  %181 = load i32, ptr %180, align 4, !tbaa !28
  store i32 %181, ptr %178, align 4, !tbaa !33
  br label %185

182:                                              ; preds = %170
  %183 = getelementptr inbounds i8, ptr %177, i64 72
  %184 = load i32, ptr %183, align 8, !tbaa !35
  store i32 %184, ptr %178, align 4, !tbaa !33
  br label %185

185:                                              ; preds = %168, %179, %182
  %186 = getelementptr inbounds i8, ptr %161, i64 20
  store i32 0, ptr %186, align 4, !tbaa !36
  %187 = getelementptr inbounds i8, ptr %161, i64 24
  store i32 0, ptr %187, align 8, !tbaa !37
  br label %188

188:                                              ; preds = %185, %148
  %189 = phi i32 [ 0, %148 ], [ 1, %185 ]
  ret i32 %189
}

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @compress_first_pass(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 320
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = add i32 %4, -1
  %6 = getelementptr inbounds i8, ptr %0, i64 76
  %7 = load i32, ptr %6, align 4, !tbaa !21
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %166

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 88
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = getelementptr inbounds i8, ptr %0, i64 456
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  %15 = getelementptr inbounds i8, ptr %13, i64 112
  %16 = getelementptr inbounds i8, ptr %13, i64 16
  %17 = getelementptr inbounds i8, ptr %0, i64 488
  br label %18

18:                                               ; preds = %9, %160
  %19 = phi i64 [ 0, %9 ], [ %161, %160 ]
  %20 = phi ptr [ %11, %9 ], [ %162, %160 ]
  %21 = load ptr, ptr %14, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 64
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = getelementptr inbounds [10 x ptr], ptr %15, i64 0, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = load i32, ptr %16, align 8, !tbaa !31
  %27 = getelementptr inbounds i8, ptr %20, i64 12
  %28 = load i32, ptr %27, align 4, !tbaa !28
  %29 = mul i32 %28, %26
  %30 = tail call ptr %23(ptr noundef nonnull %0, ptr noundef %25, i32 noundef signext %29, i32 noundef signext %28, i32 noundef signext 1) #3
  %31 = load i32, ptr %16, align 8, !tbaa !31
  %32 = icmp ult i32 %31, %5
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, ptr %27, align 4, !tbaa !28
  br label %42

35:                                               ; preds = %18
  %36 = getelementptr inbounds i8, ptr %20, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !27
  %38 = load i32, ptr %27, align 4, !tbaa !28
  %39 = urem i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 %38, i32 %39
  br label %42

42:                                               ; preds = %35, %33
  %43 = phi i32 [ %34, %33 ], [ %41, %35 ]
  %44 = getelementptr inbounds i8, ptr %20, i64 28
  %45 = load i32, ptr %44, align 4, !tbaa !24
  %46 = freeze i32 %45
  %47 = getelementptr inbounds i8, ptr %20, i64 8
  %48 = load i32, ptr %47, align 8, !tbaa !26
  %49 = freeze i32 %48
  %50 = urem i32 %46, %49
  %51 = icmp sgt i32 %50, 0
  %52 = sub i32 %49, %50
  %53 = select i1 %51, i32 %52, i32 %50
  %54 = icmp sgt i32 %43, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %42
  %56 = getelementptr inbounds ptr, ptr %1, i64 %19
  %57 = icmp sgt i32 %53, 0
  %58 = zext i32 %46 to i64
  %59 = zext i32 %53 to i64
  %60 = shl nuw nsw i64 %59, 7
  %61 = zext nneg i32 %43 to i64
  br i1 %57, label %62, label %83

62:                                               ; preds = %55, %80
  %63 = phi i64 [ %81, %80 ], [ 0, %55 ]
  %64 = getelementptr inbounds ptr, ptr %30, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !29
  %66 = load ptr, ptr %17, align 8, !tbaa !47
  %67 = getelementptr inbounds i8, ptr %66, i64 8
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  %69 = load ptr, ptr %56, align 8, !tbaa !29
  %70 = trunc i64 %63 to i32
  %71 = shl i32 %70, 3
  tail call void %68(ptr noundef %0, ptr noundef %20, ptr noundef %69, ptr noundef %65, i32 noundef signext %71, i32 noundef signext 0, i32 noundef signext %46) #3
  %72 = getelementptr inbounds [64 x i16], ptr %65, i64 %58
  tail call void @jzero_far(ptr noundef %72, i64 noundef %60) #3
  %73 = getelementptr inbounds i8, ptr %72, i64 -128
  %74 = load i16, ptr %73, align 2, !tbaa !52
  br label %75

75:                                               ; preds = %75, %62
  %76 = phi i64 [ %78, %75 ], [ 0, %62 ]
  %77 = getelementptr inbounds [64 x i16], ptr %72, i64 %76
  store i16 %74, ptr %77, align 2, !tbaa !52
  %78 = add nuw nsw i64 %76, 1
  %79 = icmp eq i64 %78, %59
  br i1 %79, label %80, label %75

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %63, 1
  %82 = icmp eq i64 %81, %61
  br i1 %82, label %95, label %62

83:                                               ; preds = %55, %83
  %84 = phi i64 [ %93, %83 ], [ 0, %55 ]
  %85 = getelementptr inbounds ptr, ptr %30, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !29
  %87 = load ptr, ptr %17, align 8, !tbaa !47
  %88 = getelementptr inbounds i8, ptr %87, i64 8
  %89 = load ptr, ptr %88, align 8, !tbaa !48
  %90 = load ptr, ptr %56, align 8, !tbaa !29
  %91 = trunc i64 %84 to i32
  %92 = shl i32 %91, 3
  tail call void %89(ptr noundef %0, ptr noundef %20, ptr noundef %90, ptr noundef %86, i32 noundef signext %92, i32 noundef signext 0, i32 noundef signext %46) #3
  %93 = add nuw nsw i64 %84, 1
  %94 = icmp eq i64 %93, %61
  br i1 %94, label %95, label %83

95:                                               ; preds = %83, %80, %42
  %96 = load i32, ptr %16, align 8, !tbaa !31
  %97 = icmp eq i32 %96, %5
  br i1 %97, label %98, label %160

98:                                               ; preds = %95
  %99 = add i32 %53, %46
  %100 = udiv i32 %99, %49
  %101 = load i32, ptr %27, align 4, !tbaa !28
  %102 = icmp slt i32 %43, %101
  br i1 %102, label %103, label %160

103:                                              ; preds = %98
  %104 = zext i32 %99 to i64
  %105 = shl nuw nsw i64 %104, 7
  %106 = icmp ugt i32 %49, %99
  %107 = add nsw i32 %49, -1
  %108 = sext i32 %107 to i64
  %109 = sext i32 %49 to i64
  br i1 %106, label %110, label %112

110:                                              ; preds = %103
  %111 = sext i32 %43 to i64
  br label %152

112:                                              ; preds = %103
  %113 = icmp sgt i32 %49, 0
  %114 = sext i32 %43 to i64
  br i1 %113, label %115, label %144

115:                                              ; preds = %112
  %116 = zext nneg i32 %49 to i64
  br label %117

117:                                              ; preds = %115, %139
  %118 = phi i64 [ %114, %115 ], [ %140, %139 ]
  %119 = getelementptr inbounds ptr, ptr %30, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !29
  %121 = getelementptr i8, ptr %119, i64 -8
  %122 = load ptr, ptr %121, align 8, !tbaa !29
  tail call void @jzero_far(ptr noundef %120, i64 noundef %105) #3
  br label %123

123:                                              ; preds = %134, %117
  %124 = phi ptr [ %122, %117 ], [ %136, %134 ]
  %125 = phi ptr [ %120, %117 ], [ %135, %134 ]
  %126 = phi i32 [ 0, %117 ], [ %137, %134 ]
  %127 = getelementptr inbounds [64 x i16], ptr %124, i64 %108
  %128 = load i16, ptr %127, align 2, !tbaa !52
  br label %129

129:                                              ; preds = %129, %123
  %130 = phi i64 [ %132, %129 ], [ 0, %123 ]
  %131 = getelementptr inbounds [64 x i16], ptr %125, i64 %130
  store i16 %128, ptr %131, align 2, !tbaa !52
  %132 = add nuw nsw i64 %130, 1
  %133 = icmp eq i64 %132, %116
  br i1 %133, label %134, label %129

134:                                              ; preds = %129
  %135 = getelementptr inbounds [64 x i16], ptr %125, i64 %109
  %136 = getelementptr inbounds [64 x i16], ptr %124, i64 %109
  %137 = add nuw i32 %126, 1
  %138 = icmp ult i32 %137, %100
  br i1 %138, label %123, label %139

139:                                              ; preds = %134
  %140 = add nsw i64 %118, 1
  %141 = load i32, ptr %27, align 4, !tbaa !28
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %117, label %160

144:                                              ; preds = %112, %144
  %145 = phi i64 [ %148, %144 ], [ %114, %112 ]
  %146 = getelementptr inbounds ptr, ptr %30, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !29
  tail call void @jzero_far(ptr noundef %147, i64 noundef %105) #3
  %148 = add nsw i64 %145, 1
  %149 = load i32, ptr %27, align 4, !tbaa !28
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %144, label %160

152:                                              ; preds = %110, %152
  %153 = phi i64 [ %111, %110 ], [ %156, %152 ]
  %154 = getelementptr inbounds ptr, ptr %30, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !29
  tail call void @jzero_far(ptr noundef %155, i64 noundef %105) #3
  %156 = add nsw i64 %153, 1
  %157 = load i32, ptr %27, align 4, !tbaa !28
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %152, label %160

160:                                              ; preds = %144, %139, %152, %98, %95
  %161 = add nuw nsw i64 %19, 1
  %162 = getelementptr inbounds i8, ptr %20, i64 96
  %163 = load i32, ptr %6, align 4, !tbaa !21
  %164 = sext i32 %163 to i64
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %18, label %166

166:                                              ; preds = %160, %2
  %167 = tail call signext i32 @compress_output(ptr noundef nonnull %0, ptr poison)
  ret i32 %167
}

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @compress_output(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [4 x ptr], align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 456
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #3
  %6 = getelementptr inbounds i8, ptr %0, i64 324
  %7 = load i32, ptr %6, align 4, !tbaa !32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 328
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  %12 = getelementptr inbounds i8, ptr %5, i64 112
  %13 = getelementptr inbounds i8, ptr %5, i64 16
  br label %14

14:                                               ; preds = %9, %14
  %15 = phi i64 [ 0, %9 ], [ %32, %14 ]
  %16 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = load ptr, ptr %11, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 64
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds i8, ptr %17, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x ptr], ptr %12, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = load i32, ptr %13, align 8, !tbaa !31
  %27 = getelementptr inbounds i8, ptr %17, i64 12
  %28 = load i32, ptr %27, align 4, !tbaa !28
  %29 = mul i32 %28, %26
  %30 = tail call ptr %20(ptr noundef nonnull %0, ptr noundef %25, i32 noundef signext %29, i32 noundef signext %28, i32 noundef signext 0) #3
  %31 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %15
  store ptr %30, ptr %31, align 8, !tbaa !29
  %32 = add nuw nsw i64 %15, 1
  %33 = load i32, ptr %6, align 4, !tbaa !32
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %14, label %36

36:                                               ; preds = %14, %2
  %37 = phi i32 [ %7, %2 ], [ %33, %14 ]
  %38 = getelementptr inbounds i8, ptr %5, i64 24
  %39 = load i32, ptr %38, align 8, !tbaa !37
  %40 = getelementptr inbounds i8, ptr %5, i64 28
  %41 = load i32, ptr %40, align 4, !tbaa !33
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %128

43:                                               ; preds = %36
  %44 = getelementptr inbounds i8, ptr %5, i64 20
  %45 = getelementptr inbounds i8, ptr %0, i64 360
  %46 = getelementptr inbounds i8, ptr %0, i64 328
  %47 = getelementptr inbounds i8, ptr %5, i64 32
  %48 = getelementptr inbounds i8, ptr %0, i64 496
  %49 = sext i32 %39 to i64
  %50 = load i32, ptr %44, align 4, !tbaa !36
  %51 = load i32, ptr %45, align 8, !tbaa !43
  br label %52

52:                                               ; preds = %43, %120
  %53 = phi i32 [ %41, %43 ], [ %121, %120 ]
  %54 = phi i32 [ %51, %43 ], [ %122, %120 ]
  %55 = phi i32 [ %50, %43 ], [ 0, %120 ]
  %56 = phi i64 [ %49, %43 ], [ %123, %120 ]
  %57 = icmp ult i32 %55, %54
  br i1 %57, label %58, label %120

58:                                               ; preds = %52, %114
  %59 = phi i32 [ %115, %114 ], [ %55, %52 ]
  %60 = load i32, ptr %6, align 4, !tbaa !32
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %58
  %63 = zext nneg i32 %60 to i64
  br label %64

64:                                               ; preds = %62, %102
  %65 = phi i64 [ 0, %62 ], [ %104, %102 ]
  %66 = phi i32 [ 0, %62 ], [ %103, %102 ]
  %67 = getelementptr inbounds [4 x ptr], ptr %46, i64 0, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !29
  %69 = getelementptr inbounds i8, ptr %68, i64 52
  %70 = load i32, ptr %69, align 4, !tbaa !51
  %71 = getelementptr inbounds i8, ptr %68, i64 56
  %72 = load i32, ptr %71, align 8, !tbaa !46
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %64
  %75 = mul i32 %70, %59
  %76 = zext i32 %75 to i64
  %77 = icmp sgt i32 %70, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %65
  %80 = load ptr, ptr %79, align 8, !tbaa !29
  %81 = zext nneg i32 %72 to i64
  %82 = getelementptr ptr, ptr %80, i64 %56
  br label %83

83:                                               ; preds = %78, %99
  %84 = phi i64 [ 0, %78 ], [ %100, %99 ]
  %85 = phi i32 [ %66, %78 ], [ %90, %99 ]
  %86 = getelementptr ptr, ptr %82, i64 %84
  %87 = load ptr, ptr %86, align 8, !tbaa !29
  %88 = getelementptr inbounds [64 x i16], ptr %87, i64 %76
  %89 = sext i32 %85 to i64
  %90 = add i32 %70, %85
  br label %91

91:                                               ; preds = %83, %91
  %92 = phi i64 [ %89, %83 ], [ %95, %91 ]
  %93 = phi ptr [ %88, %83 ], [ %94, %91 ]
  %94 = getelementptr inbounds i8, ptr %93, i64 128
  %95 = add nsw i64 %92, 1
  %96 = getelementptr inbounds [10 x ptr], ptr %47, i64 0, i64 %92
  store ptr %93, ptr %96, align 8, !tbaa !29
  %97 = trunc i64 %95 to i32
  %98 = icmp eq i32 %90, %97
  br i1 %98, label %99, label %91

99:                                               ; preds = %91
  %100 = add nuw nsw i64 %84, 1
  %101 = icmp eq i64 %100, %81
  br i1 %101, label %102, label %83

102:                                              ; preds = %99, %74, %64
  %103 = phi i32 [ %66, %64 ], [ %66, %74 ], [ %90, %99 ]
  %104 = add nuw nsw i64 %65, 1
  %105 = icmp eq i64 %104, %63
  br i1 %105, label %106, label %64

106:                                              ; preds = %102, %58
  %107 = load ptr, ptr %48, align 8, !tbaa !53
  %108 = getelementptr inbounds i8, ptr %107, i64 8
  %109 = load ptr, ptr %108, align 8, !tbaa !54
  %110 = tail call signext i32 %109(ptr noundef nonnull %0, ptr noundef nonnull %47) #3
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = trunc nsw i64 %56 to i32
  store i32 %113, ptr %38, align 8, !tbaa !37
  store i32 %59, ptr %44, align 4, !tbaa !36
  br label %156

114:                                              ; preds = %106
  %115 = add nuw i32 %59, 1
  %116 = load i32, ptr %45, align 8, !tbaa !43
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %58, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %40, align 4, !tbaa !33
  br label %120

120:                                              ; preds = %118, %52
  %121 = phi i32 [ %119, %118 ], [ %53, %52 ]
  %122 = phi i32 [ %116, %118 ], [ %54, %52 ]
  store i32 0, ptr %44, align 4, !tbaa !36
  %123 = add nsw i64 %56, 1
  %124 = sext i32 %121 to i64
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %52, label %126

126:                                              ; preds = %120
  %127 = load i32, ptr %6, align 4, !tbaa !32
  br label %128

128:                                              ; preds = %126, %36
  %129 = phi i32 [ %127, %126 ], [ %37, %36 ]
  %130 = getelementptr inbounds i8, ptr %5, i64 16
  %131 = load i32, ptr %130, align 8, !tbaa !31
  %132 = add i32 %131, 1
  store i32 %132, ptr %130, align 8, !tbaa !31
  %133 = load ptr, ptr %4, align 8, !tbaa !17
  %134 = icmp sgt i32 %129, 1
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = getelementptr inbounds i8, ptr %133, i64 28
  store i32 1, ptr %136, align 4, !tbaa !33
  br label %153

137:                                              ; preds = %128
  %138 = getelementptr inbounds i8, ptr %133, i64 16
  %139 = load i32, ptr %138, align 8, !tbaa !31
  %140 = getelementptr inbounds i8, ptr %0, i64 320
  %141 = load i32, ptr %140, align 8, !tbaa !34
  %142 = add i32 %141, -1
  %143 = icmp ult i32 %139, %142
  %144 = getelementptr inbounds i8, ptr %0, i64 328
  %145 = load ptr, ptr %144, align 8, !tbaa !29
  %146 = getelementptr inbounds i8, ptr %133, i64 28
  br i1 %143, label %147, label %150

147:                                              ; preds = %137
  %148 = getelementptr inbounds i8, ptr %145, i64 12
  %149 = load i32, ptr %148, align 4, !tbaa !28
  store i32 %149, ptr %146, align 4, !tbaa !33
  br label %153

150:                                              ; preds = %137
  %151 = getelementptr inbounds i8, ptr %145, i64 72
  %152 = load i32, ptr %151, align 8, !tbaa !35
  store i32 %152, ptr %146, align 4, !tbaa !33
  br label %153

153:                                              ; preds = %135, %147, %150
  %154 = getelementptr inbounds i8, ptr %133, i64 20
  store i32 0, ptr %154, align 4, !tbaa !36
  %155 = getelementptr inbounds i8, ptr %133, i64 24
  store i32 0, ptr %155, align 8, !tbaa !37
  br label %156

156:                                              ; preds = %153, %112
  %157 = phi i32 [ 0, %112 ], [ 1, %153 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #3
  ret i32 %157
}

declare dso_local void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!17 = !{!7, !8, i64 456}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !9, i64 32, !9, i64 112}
!20 = !{!"jpeg_c_coef_controller", !8, i64 0, !8, i64 8}
!21 = !{!7, !11, i64 76}
!22 = !{!7, !8, i64 88}
!23 = !{!15, !8, i64 40}
!24 = !{!25, !11, i64 28}
!25 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!26 = !{!25, !11, i64 8}
!27 = !{!25, !11, i64 32}
!28 = !{!25, !11, i64 12}
!29 = !{!8, !8, i64 0}
!30 = !{!15, !8, i64 8}
!31 = !{!19, !11, i64 16}
!32 = !{!7, !11, i64 324}
!33 = !{!19, !11, i64 28}
!34 = !{!7, !11, i64 320}
!35 = !{!25, !11, i64 72}
!36 = !{!19, !11, i64 20}
!37 = !{!19, !11, i64 24}
!38 = !{!7, !8, i64 0}
!39 = !{!40, !11, i64 40}
!40 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!41 = !{!40, !8, i64 0}
!42 = !{!19, !8, i64 8}
!43 = !{!7, !11, i64 360}
!44 = !{!11, !11, i64 0}
!45 = !{!25, !11, i64 64}
!46 = !{!25, !11, i64 56}
!47 = !{!7, !8, i64 488}
!48 = !{!49, !8, i64 8}
!49 = !{!"jpeg_forward_dct", !8, i64 0, !8, i64 8}
!50 = !{!25, !11, i64 4}
!51 = !{!25, !11, i64 52}
!52 = !{!13, !13, i64 0}
!53 = !{!7, !8, i64 496}
!54 = !{!55, !8, i64 8}
!55 = !{!"jpeg_entropy_encoder", !8, i64 0, !8, i64 8, !8, i64 16}
!56 = !{!15, !8, i64 64}
