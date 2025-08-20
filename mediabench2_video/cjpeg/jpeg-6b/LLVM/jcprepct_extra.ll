; ModuleID = 'jcprepct.c'
source_filename = "jcprepct.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_c_prep_controller(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 4, ptr %6, align 8, !tbaa !14
  %7 = load ptr, ptr %5, align 8, !tbaa !17
  tail call void %7(ptr noundef nonnull %0) #4
  br label %8

8:                                                ; preds = %4, %2
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef signext 1, i64 noundef 112) #4
  %13 = getelementptr inbounds i8, ptr %0, i64 448
  store ptr %12, ptr %13, align 8, !tbaa !21
  store ptr @start_pass_prep, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds i8, ptr %0, i64 480
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds i8, ptr %15, i64 16
  %17 = load i32, ptr %16, align 8, !tbaa !26
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds i8, ptr %12, i64 8
  br i1 %18, label %121, label %20

20:                                               ; preds = %8
  store ptr @pre_process_context, ptr %19, align 8, !tbaa !28
  %21 = getelementptr inbounds i8, ptr %0, i64 316
  %22 = load i32, ptr %21, align 4, !tbaa !29
  %23 = freeze i32 %22
  %24 = load ptr, ptr %9, align 8, !tbaa !18
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = getelementptr inbounds i8, ptr %0, i64 76
  %27 = load i32, ptr %26, align 4, !tbaa !30
  %28 = mul i32 %23, 5
  %29 = mul i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  %32 = tail call ptr %25(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %31) #4
  %33 = load i32, ptr %26, align 4, !tbaa !30
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %157

35:                                               ; preds = %20
  %36 = getelementptr inbounds i8, ptr %0, i64 88
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  %38 = getelementptr inbounds i8, ptr %0, i64 312
  %39 = mul nsw i32 %23, 3
  %40 = sext i32 %23 to i64
  %41 = sext i32 %39 to i64
  %42 = shl nsw i64 %41, 3
  %43 = icmp sgt i32 %23, 0
  %44 = getelementptr inbounds i8, ptr %12, i64 16
  %45 = sext i32 %28 to i64
  br i1 %43, label %46, label %93

46:                                               ; preds = %35
  %47 = shl nsw i32 %23, 2
  %48 = shl nuw nsw i32 %23, 1
  %49 = zext nneg i32 %48 to i64
  %50 = zext nneg i32 %47 to i64
  %51 = zext nneg i32 %23 to i64
  br label %52

52:                                               ; preds = %85, %46
  %53 = phi i64 [ 0, %46 ], [ %88, %85 ]
  %54 = phi ptr [ %32, %46 ], [ %87, %85 ]
  %55 = phi ptr [ %37, %46 ], [ %89, %85 ]
  %56 = load ptr, ptr %9, align 8, !tbaa !18
  %57 = getelementptr inbounds i8, ptr %56, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !32
  %59 = getelementptr inbounds i8, ptr %55, i64 28
  %60 = load i32, ptr %59, align 4, !tbaa !33
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 3
  %63 = load i32, ptr %38, align 8, !tbaa !35
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %62, %64
  %66 = getelementptr inbounds i8, ptr %55, i64 8
  %67 = load i32, ptr %66, align 8, !tbaa !36
  %68 = sext i32 %67 to i64
  %69 = sdiv i64 %65, %68
  %70 = trunc i64 %69 to i32
  %71 = tail call ptr %58(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %70, i32 noundef signext %39) #4
  %72 = getelementptr inbounds ptr, ptr %54, i64 %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %72, ptr align 1 %71, i64 %42, i1 false)
  %73 = getelementptr inbounds ptr, ptr %71, i64 %49
  br label %74

74:                                               ; preds = %74, %52
  %75 = phi i64 [ 0, %52 ], [ %83, %74 ]
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !37
  %78 = getelementptr inbounds ptr, ptr %54, i64 %75
  store ptr %77, ptr %78, align 8, !tbaa !37
  %79 = getelementptr inbounds ptr, ptr %71, i64 %75
  %80 = load ptr, ptr %79, align 8, !tbaa !37
  %81 = add nuw nsw i64 %75, %50
  %82 = getelementptr inbounds ptr, ptr %54, i64 %81
  store ptr %80, ptr %82, align 8, !tbaa !37
  %83 = add nuw nsw i64 %75, 1
  %84 = icmp eq i64 %83, %51
  br i1 %84, label %85, label %74, !llvm.loop !38

85:                                               ; preds = %74
  %86 = getelementptr inbounds [10 x ptr], ptr %44, i64 0, i64 %53
  store ptr %72, ptr %86, align 8, !tbaa !37
  %87 = getelementptr ptr, ptr %54, i64 %45
  %88 = add nuw nsw i64 %53, 1
  %89 = getelementptr inbounds i8, ptr %55, i64 96
  %90 = load i32, ptr %26, align 4, !tbaa !30
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %52, label %157, !llvm.loop !40

93:                                               ; preds = %35, %93
  %94 = phi i64 [ %116, %93 ], [ 0, %35 ]
  %95 = phi ptr [ %115, %93 ], [ %32, %35 ]
  %96 = phi ptr [ %117, %93 ], [ %37, %35 ]
  %97 = load ptr, ptr %9, align 8, !tbaa !18
  %98 = getelementptr inbounds i8, ptr %97, i64 16
  %99 = load ptr, ptr %98, align 8, !tbaa !32
  %100 = getelementptr inbounds i8, ptr %96, i64 28
  %101 = load i32, ptr %100, align 4, !tbaa !33
  %102 = zext i32 %101 to i64
  %103 = shl nuw nsw i64 %102, 3
  %104 = load i32, ptr %38, align 8, !tbaa !35
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %103, %105
  %107 = getelementptr inbounds i8, ptr %96, i64 8
  %108 = load i32, ptr %107, align 8, !tbaa !36
  %109 = sext i32 %108 to i64
  %110 = sdiv i64 %106, %109
  %111 = trunc i64 %110 to i32
  %112 = tail call ptr %99(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %111, i32 noundef signext %39) #4
  %113 = getelementptr inbounds ptr, ptr %95, i64 %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %113, ptr align 1 %112, i64 %42, i1 false)
  %114 = getelementptr inbounds [10 x ptr], ptr %44, i64 0, i64 %94
  store ptr %113, ptr %114, align 8, !tbaa !37
  %115 = getelementptr inbounds ptr, ptr %95, i64 %45
  %116 = add nuw nsw i64 %94, 1
  %117 = getelementptr inbounds i8, ptr %96, i64 96
  %118 = load i32, ptr %26, align 4, !tbaa !30
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %93, label %157, !llvm.loop !40

121:                                              ; preds = %8
  store ptr @pre_process_data, ptr %19, align 8, !tbaa !28
  %122 = getelementptr inbounds i8, ptr %0, i64 76
  %123 = load i32, ptr %122, align 4, !tbaa !30
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %121
  %126 = getelementptr inbounds i8, ptr %0, i64 88
  %127 = load ptr, ptr %126, align 8, !tbaa !31
  %128 = getelementptr inbounds i8, ptr %0, i64 312
  %129 = getelementptr inbounds i8, ptr %0, i64 316
  %130 = getelementptr inbounds i8, ptr %12, i64 16
  br label %131

131:                                              ; preds = %125, %131
  %132 = phi i64 [ 0, %125 ], [ %152, %131 ]
  %133 = phi ptr [ %127, %125 ], [ %153, %131 ]
  %134 = load ptr, ptr %9, align 8, !tbaa !18
  %135 = getelementptr inbounds i8, ptr %134, i64 16
  %136 = load ptr, ptr %135, align 8, !tbaa !32
  %137 = getelementptr inbounds i8, ptr %133, i64 28
  %138 = load i32, ptr %137, align 4, !tbaa !33
  %139 = zext i32 %138 to i64
  %140 = shl nuw nsw i64 %139, 3
  %141 = load i32, ptr %128, align 8, !tbaa !35
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 %140, %142
  %144 = getelementptr inbounds i8, ptr %133, i64 8
  %145 = load i32, ptr %144, align 8, !tbaa !36
  %146 = sext i32 %145 to i64
  %147 = sdiv i64 %143, %146
  %148 = trunc i64 %147 to i32
  %149 = load i32, ptr %129, align 4, !tbaa !29
  %150 = tail call ptr %136(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %148, i32 noundef signext %149) #4
  %151 = getelementptr inbounds [10 x ptr], ptr %130, i64 0, i64 %132
  store ptr %150, ptr %151, align 8, !tbaa !37
  %152 = add nuw nsw i64 %132, 1
  %153 = getelementptr inbounds i8, ptr %133, i64 96
  %154 = load i32, ptr %122, align 4, !tbaa !30
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %131, label %157, !llvm.loop !41

157:                                              ; preds = %93, %85, %131, %121, %20
  ret void
}

; Function Attrs: nounwind
define internal void @start_pass_prep(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 448
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 4, ptr %8, align 8, !tbaa !14
  %9 = load ptr, ptr %7, align 8, !tbaa !17
  tail call void %9(ptr noundef nonnull %0) #4
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds i8, ptr %0, i64 52
  %12 = load i32, ptr %11, align 4, !tbaa !42
  %13 = getelementptr inbounds i8, ptr %4, i64 96
  store i32 %12, ptr %13, align 8, !tbaa !43
  %14 = getelementptr inbounds i8, ptr %4, i64 100
  store i32 0, ptr %14, align 4, !tbaa !44
  %15 = getelementptr inbounds i8, ptr %4, i64 104
  store i32 0, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds i8, ptr %0, i64 316
  %17 = load i32, ptr %16, align 4, !tbaa !29
  %18 = shl nsw i32 %17, 1
  %19 = getelementptr inbounds i8, ptr %4, i64 108
  store i32 %18, ptr %19, align 4, !tbaa !46
  ret void
}

; Function Attrs: nounwind
define internal void @pre_process_context(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef signext %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef signext %6) #0 {
  %8 = getelementptr inbounds i8, ptr %0, i64 448
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds i8, ptr %0, i64 316
  %11 = load i32, ptr %10, align 4, !tbaa !29
  %12 = mul nsw i32 %11, 3
  %13 = getelementptr inbounds i8, ptr %9, i64 96
  %14 = load i32, ptr %5, align 4, !tbaa !47
  %15 = icmp ult i32 %14, %6
  br i1 %15, label %16, label %145

16:                                               ; preds = %7
  %17 = getelementptr inbounds i8, ptr %9, i64 100
  %18 = getelementptr inbounds i8, ptr %9, i64 108
  %19 = getelementptr inbounds i8, ptr %0, i64 76
  %20 = getelementptr inbounds i8, ptr %9, i64 16
  %21 = getelementptr inbounds i8, ptr %0, i64 48
  %22 = getelementptr inbounds i8, ptr %0, i64 472
  %23 = getelementptr inbounds i8, ptr %0, i64 52
  %24 = getelementptr inbounds i8, ptr %0, i64 480
  %25 = getelementptr inbounds i8, ptr %9, i64 104
  br label %26

26:                                               ; preds = %16, %142
  %27 = load i32, ptr %2, align 4, !tbaa !47
  %28 = icmp ult i32 %27, %3
  br i1 %28, label %29, label %80

29:                                               ; preds = %26
  %30 = sub i32 %3, %27
  %31 = load i32, ptr %18, align 4, !tbaa !46
  %32 = load i32, ptr %17, align 4, !tbaa !44
  %33 = sub nsw i32 %31, %32
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %30)
  %35 = load ptr, ptr %22, align 8, !tbaa !48
  %36 = getelementptr inbounds i8, ptr %35, i64 8
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %38 = zext i32 %27 to i64
  %39 = getelementptr inbounds ptr, ptr %1, i64 %38
  tail call void %37(ptr noundef %0, ptr noundef %39, ptr noundef nonnull %20, i32 noundef signext %32, i32 noundef signext %34) #4
  %40 = load i32, ptr %13, align 8, !tbaa !43
  %41 = load i32, ptr %23, align 4, !tbaa !42
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %29
  %44 = load i32, ptr %19, align 4, !tbaa !30
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load i32, ptr %10, align 4, !tbaa !29
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %72, label %49

49:                                               ; preds = %46, %66
  %50 = phi i32 [ %67, %66 ], [ %44, %46 ]
  %51 = phi i32 [ %68, %66 ], [ %47, %46 ]
  %52 = phi i64 [ %69, %66 ], [ 0, %46 ]
  %53 = icmp slt i32 %51, 1
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds [10 x ptr], ptr %20, i64 0, i64 %52
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i32 [ 1, %54 ], [ %61, %56 ]
  %58 = load ptr, ptr %55, align 8, !tbaa !37
  %59 = sub nsw i32 0, %57
  %60 = load i32, ptr %21, align 8, !tbaa !51
  tail call void @jcopy_sample_rows(ptr noundef %58, i32 noundef signext 0, ptr noundef %58, i32 noundef signext %59, i32 noundef signext 1, i32 noundef signext %60) #4
  %61 = add nuw nsw i32 %57, 1
  %62 = load i32, ptr %10, align 4, !tbaa !29
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %56, label %64, !llvm.loop !52

64:                                               ; preds = %56
  %65 = load i32, ptr %19, align 4, !tbaa !30
  br label %66

66:                                               ; preds = %64, %49
  %67 = phi i32 [ %65, %64 ], [ %50, %49 ]
  %68 = phi i32 [ %62, %64 ], [ %51, %49 ]
  %69 = add nuw nsw i64 %52, 1
  %70 = sext i32 %67 to i64
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %49, label %72, !llvm.loop !53

72:                                               ; preds = %66, %46, %43, %29
  %73 = load i32, ptr %2, align 4, !tbaa !47
  %74 = add i32 %73, %34
  store i32 %74, ptr %2, align 4, !tbaa !47
  %75 = load i32, ptr %17, align 4, !tbaa !44
  %76 = add nsw i32 %75, %34
  store i32 %76, ptr %17, align 4, !tbaa !44
  %77 = load i32, ptr %13, align 8, !tbaa !43
  %78 = sub i32 %77, %34
  store i32 %78, ptr %13, align 8, !tbaa !43
  %79 = load i32, ptr %18, align 4, !tbaa !46
  br label %117

80:                                               ; preds = %26
  %81 = load i32, ptr %13, align 8, !tbaa !43
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %145

83:                                               ; preds = %80
  %84 = load i32, ptr %17, align 4, !tbaa !44
  %85 = load i32, ptr %18, align 4, !tbaa !46
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %117

87:                                               ; preds = %83
  %88 = load i32, ptr %19, align 4, !tbaa !30
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %87, %107
  %91 = phi i32 [ %108, %107 ], [ %88, %87 ]
  %92 = phi i64 [ %109, %107 ], [ 0, %87 ]
  %93 = getelementptr inbounds [10 x ptr], ptr %20, i64 0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !37
  %95 = load i32, ptr %21, align 8, !tbaa !51
  %96 = load i32, ptr %17, align 4, !tbaa !44
  %97 = load i32, ptr %18, align 4, !tbaa !46
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = add nsw i32 %96, -1
  br label %101

101:                                              ; preds = %101, %99
  %102 = phi i32 [ %96, %99 ], [ %103, %101 ]
  tail call void @jcopy_sample_rows(ptr noundef %94, i32 noundef signext %100, ptr noundef %94, i32 noundef signext %102, i32 noundef signext 1, i32 noundef signext %95) #4
  %103 = add i32 %102, 1
  %104 = icmp eq i32 %103, %97
  br i1 %104, label %105, label %101, !llvm.loop !55

105:                                              ; preds = %101
  %106 = load i32, ptr %19, align 4, !tbaa !30
  br label %107

107:                                              ; preds = %105, %90
  %108 = phi i32 [ %106, %105 ], [ %91, %90 ]
  %109 = add nuw nsw i64 %92, 1
  %110 = sext i32 %108 to i64
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %90, label %112, !llvm.loop !56

112:                                              ; preds = %107
  %113 = load i32, ptr %18, align 4, !tbaa !46
  br label %114

114:                                              ; preds = %87, %112
  %115 = phi i32 [ %113, %112 ], [ %85, %87 ]
  store i32 %115, ptr %17, align 4, !tbaa !44
  %116 = load i32, ptr %5, align 4, !tbaa !47
  br label %122

117:                                              ; preds = %83, %72
  %118 = phi i32 [ %85, %83 ], [ %79, %72 ]
  %119 = phi i32 [ %84, %83 ], [ %76, %72 ]
  %120 = icmp eq i32 %119, %118
  %121 = load i32, ptr %5, align 4, !tbaa !47
  br i1 %120, label %122, label %142

122:                                              ; preds = %114, %117
  %123 = phi i32 [ %116, %114 ], [ %121, %117 ]
  %124 = load ptr, ptr %24, align 8, !tbaa !25
  %125 = getelementptr inbounds i8, ptr %124, i64 8
  %126 = load ptr, ptr %125, align 8, !tbaa !57
  %127 = load i32, ptr %25, align 8, !tbaa !45
  tail call void %126(ptr noundef %0, ptr noundef nonnull %20, i32 noundef signext %127, ptr noundef %4, i32 noundef signext %123) #4
  %128 = load i32, ptr %5, align 4, !tbaa !47
  %129 = add i32 %128, 1
  store i32 %129, ptr %5, align 4, !tbaa !47
  %130 = load i32, ptr %10, align 4, !tbaa !29
  %131 = load i32, ptr %25, align 8, !tbaa !45
  %132 = add nsw i32 %131, %130
  %133 = icmp slt i32 %132, %12
  %134 = select i1 %133, i32 %132, i32 0
  store i32 %134, ptr %25, align 8, !tbaa !45
  %135 = load i32, ptr %17, align 4, !tbaa !44
  %136 = icmp slt i32 %135, %12
  br i1 %136, label %138, label %137

137:                                              ; preds = %122
  store i32 0, ptr %17, align 4, !tbaa !44
  br label %138

138:                                              ; preds = %137, %122
  %139 = phi i32 [ 0, %137 ], [ %135, %122 ]
  %140 = add nsw i32 %139, %130
  store i32 %140, ptr %18, align 4, !tbaa !46
  %141 = load i32, ptr %5, align 4, !tbaa !47
  br label %142

142:                                              ; preds = %138, %117
  %143 = phi i32 [ %141, %138 ], [ %121, %117 ]
  %144 = icmp ult i32 %143, %6
  br i1 %144, label %26, label %145, !llvm.loop !58

145:                                              ; preds = %142, %80, %7
  ret void
}

; Function Attrs: nounwind
define internal void @pre_process_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef signext %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef signext %6) #0 {
  %8 = load i32, ptr %2, align 4, !tbaa !47
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %10, label %129

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %0, i64 448
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = getelementptr inbounds i8, ptr %0, i64 316
  %14 = getelementptr inbounds i8, ptr %12, i64 100
  %15 = getelementptr inbounds i8, ptr %0, i64 472
  %16 = getelementptr inbounds i8, ptr %12, i64 16
  %17 = getelementptr inbounds i8, ptr %12, i64 96
  %18 = getelementptr inbounds i8, ptr %0, i64 76
  %19 = getelementptr inbounds i8, ptr %0, i64 48
  %20 = getelementptr inbounds i8, ptr %0, i64 480
  br label %21

21:                                               ; preds = %10, %126
  %22 = phi i32 [ %8, %10 ], [ %127, %126 ]
  %23 = load i32, ptr %5, align 4, !tbaa !47
  %24 = icmp ult i32 %23, %6
  br i1 %24, label %25, label %129

25:                                               ; preds = %21
  %26 = sub i32 %3, %22
  %27 = load i32, ptr %13, align 4, !tbaa !29
  %28 = load i32, ptr %14, align 4, !tbaa !44
  %29 = sub nsw i32 %27, %28
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %26)
  %31 = load ptr, ptr %15, align 8, !tbaa !48
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = zext i32 %22 to i64
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34
  tail call void %33(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %16, i32 noundef signext %28, i32 noundef signext %30) #4
  %36 = load i32, ptr %2, align 4, !tbaa !47
  %37 = add i32 %36, %30
  store i32 %37, ptr %2, align 4, !tbaa !47
  %38 = load i32, ptr %14, align 4, !tbaa !44
  %39 = add nsw i32 %38, %30
  store i32 %39, ptr %14, align 4, !tbaa !44
  %40 = load i32, ptr %17, align 8, !tbaa !43
  %41 = sub i32 %40, %30
  store i32 %41, ptr %17, align 8, !tbaa !43
  %42 = icmp eq i32 %40, %30
  %43 = load i32, ptr %13, align 4, !tbaa !29
  %44 = icmp slt i32 %39, %43
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %75

46:                                               ; preds = %25
  %47 = load i32, ptr %18, align 4, !tbaa !30
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %46, %66
  %50 = phi i32 [ %67, %66 ], [ %47, %46 ]
  %51 = phi i64 [ %68, %66 ], [ 0, %46 ]
  %52 = getelementptr inbounds [10 x ptr], ptr %16, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  %54 = load i32, ptr %19, align 8, !tbaa !51
  %55 = load i32, ptr %14, align 4, !tbaa !44
  %56 = load i32, ptr %13, align 4, !tbaa !29
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = add nsw i32 %55, -1
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i32 [ %55, %58 ], [ %62, %60 ]
  tail call void @jcopy_sample_rows(ptr noundef %53, i32 noundef signext %59, ptr noundef %53, i32 noundef signext %61, i32 noundef signext 1, i32 noundef signext %54) #4
  %62 = add i32 %61, 1
  %63 = icmp eq i32 %62, %56
  br i1 %63, label %64, label %60, !llvm.loop !55

64:                                               ; preds = %60
  %65 = load i32, ptr %18, align 4, !tbaa !30
  br label %66

66:                                               ; preds = %64, %49
  %67 = phi i32 [ %65, %64 ], [ %50, %49 ]
  %68 = add nuw nsw i64 %51, 1
  %69 = sext i32 %67 to i64
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %49, label %71, !llvm.loop !59

71:                                               ; preds = %66
  %72 = load i32, ptr %13, align 4, !tbaa !29
  br label %73

73:                                               ; preds = %46, %71
  %74 = phi i32 [ %72, %71 ], [ %43, %46 ]
  store i32 %74, ptr %14, align 4, !tbaa !44
  br label %77

75:                                               ; preds = %25
  %76 = icmp eq i32 %39, %43
  br i1 %76, label %77, label %84

77:                                               ; preds = %73, %75
  %78 = load ptr, ptr %20, align 8, !tbaa !25
  %79 = getelementptr inbounds i8, ptr %78, i64 8
  %80 = load ptr, ptr %79, align 8, !tbaa !57
  %81 = load i32, ptr %5, align 4, !tbaa !47
  tail call void %80(ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef signext 0, ptr noundef %4, i32 noundef signext %81) #4
  store i32 0, ptr %14, align 4, !tbaa !44
  %82 = load i32, ptr %5, align 4, !tbaa !47
  %83 = add i32 %82, 1
  store i32 %83, ptr %5, align 4, !tbaa !47
  br label %84

84:                                               ; preds = %77, %75
  %85 = load i32, ptr %17, align 8, !tbaa !43
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %126

87:                                               ; preds = %84
  %88 = load i32, ptr %5, align 4, !tbaa !47
  %89 = icmp ult i32 %88, %6
  br i1 %89, label %90, label %126

90:                                               ; preds = %87
  %91 = load i32, ptr %18, align 4, !tbaa !30
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, ptr %0, i64 88
  %95 = load ptr, ptr %94, align 8, !tbaa !31
  br label %96

96:                                               ; preds = %93, %119
  %97 = phi i32 [ %91, %93 ], [ %120, %119 ]
  %98 = phi i64 [ 0, %93 ], [ %121, %119 ]
  %99 = phi ptr [ %95, %93 ], [ %122, %119 ]
  %100 = getelementptr inbounds ptr, ptr %4, i64 %98
  %101 = load ptr, ptr %100, align 8, !tbaa !37
  %102 = getelementptr inbounds i8, ptr %99, i64 28
  %103 = load i32, ptr %102, align 4, !tbaa !33
  %104 = shl i32 %103, 3
  %105 = load i32, ptr %5, align 4, !tbaa !47
  %106 = getelementptr inbounds i8, ptr %99, i64 12
  %107 = load i32, ptr %106, align 4, !tbaa !60
  %108 = mul i32 %107, %105
  %109 = mul i32 %107, %6
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %96
  %112 = add nsw i32 %108, -1
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i32 [ %108, %111 ], [ %115, %113 ]
  tail call void @jcopy_sample_rows(ptr noundef %101, i32 noundef signext %112, ptr noundef %101, i32 noundef signext %114, i32 noundef signext 1, i32 noundef signext %104) #4
  %115 = add i32 %114, 1
  %116 = icmp eq i32 %115, %109
  br i1 %116, label %117, label %113, !llvm.loop !55

117:                                              ; preds = %113
  %118 = load i32, ptr %18, align 4, !tbaa !30
  br label %119

119:                                              ; preds = %117, %96
  %120 = phi i32 [ %118, %117 ], [ %97, %96 ]
  %121 = add nuw nsw i64 %98, 1
  %122 = getelementptr inbounds i8, ptr %99, i64 96
  %123 = sext i32 %120 to i64
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %96, label %125, !llvm.loop !61

125:                                              ; preds = %119, %90
  store i32 %6, ptr %5, align 4, !tbaa !47
  br label %129

126:                                              ; preds = %87, %84
  %127 = load i32, ptr %2, align 4, !tbaa !47
  %128 = icmp ult i32 %127, %3
  br i1 %128, label %21, label %129, !llvm.loop !62

129:                                              ; preds = %21, %126, %7, %125
  ret void
}

declare dso_local void @jcopy_sample_rows(ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !11, i64 40}
!15 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!16 = !{!"long", !9, i64 0}
!17 = !{!15, !8, i64 0}
!18 = !{!7, !8, i64 8}
!19 = !{!20, !8, i64 0}
!20 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!21 = !{!7, !8, i64 448}
!22 = !{!23, !8, i64 0}
!23 = !{!"", !24, i64 0, !9, i64 16, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108}
!24 = !{!"jpeg_c_prep_controller", !8, i64 0, !8, i64 8}
!25 = !{!7, !8, i64 480}
!26 = !{!27, !11, i64 16}
!27 = !{!"jpeg_downsampler", !8, i64 0, !8, i64 8, !11, i64 16}
!28 = !{!23, !8, i64 8}
!29 = !{!7, !11, i64 316}
!30 = !{!7, !11, i64 76}
!31 = !{!7, !8, i64 88}
!32 = !{!20, !8, i64 16}
!33 = !{!34, !11, i64 28}
!34 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!35 = !{!7, !11, i64 312}
!36 = !{!34, !11, i64 8}
!37 = !{!8, !8, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = !{!7, !11, i64 52}
!43 = !{!23, !11, i64 96}
!44 = !{!23, !11, i64 100}
!45 = !{!23, !11, i64 104}
!46 = !{!23, !11, i64 108}
!47 = !{!11, !11, i64 0}
!48 = !{!7, !8, i64 472}
!49 = !{!50, !8, i64 8}
!50 = !{!"jpeg_color_converter", !8, i64 0, !8, i64 8}
!51 = !{!7, !11, i64 48}
!52 = distinct !{!52, !39}
!53 = distinct !{!53, !39, !54}
!54 = !{!"llvm.loop.unswitch.partial.disable"}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39, !54}
!57 = !{!27, !8, i64 8}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !39, !54}
!60 = !{!34, !11, i64 12}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
