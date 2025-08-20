; ModuleID = 'jdinput.c'
source_filename = "jdinput.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_input_controller(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 0, i64 noundef 48) #5
  %6 = getelementptr inbounds i8, ptr %0, i64 576
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @consume_markers, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @reset_input_controller, ptr %7, align 8, !tbaa !21
  %8 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @start_input_pass, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  store ptr @finish_input_pass, ptr %9, align 8, !tbaa !23
  %10 = getelementptr inbounds i8, ptr %5, i64 32
  store i32 0, ptr %10, align 8, !tbaa !24
  %11 = getelementptr inbounds i8, ptr %5, i64 36
  store i32 0, ptr %11, align 4, !tbaa !25
  %12 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 1, ptr %12, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind
define internal noundef signext i32 @consume_markers(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 576
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %3, i64 36
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %213

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 584
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = tail call signext i32 %11(ptr noundef nonnull %0) #5
  switch i32 %12, label %213 [
    i32 1, label %13
    i32 2, label %193
  ]

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %3, i64 40
  %15 = load i32, ptr %14, align 8, !tbaa !26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %184, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %0, i64 52
  %19 = load i32, ptr %18, align 4, !tbaa !30
  %20 = icmp ugt i32 %19, 65500
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %0, i64 48
  %23 = load i32, ptr %22, align 8, !tbaa !31
  %24 = icmp ugt i32 %23, 65500
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %17
  %26 = load ptr, ptr %0, align 8, !tbaa !32
  %27 = getelementptr inbounds i8, ptr %26, i64 40
  store i32 41, ptr %27, align 8, !tbaa !33
  %28 = getelementptr inbounds i8, ptr %26, i64 44
  store i32 65500, ptr %28, align 4, !tbaa !35
  %29 = load ptr, ptr %0, align 8, !tbaa !32
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  tail call void %30(ptr noundef nonnull %0) #5
  br label %31

31:                                               ; preds = %25, %21
  %32 = getelementptr inbounds i8, ptr %0, i64 296
  %33 = load i32, ptr %32, align 8, !tbaa !37
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 8, !tbaa !32
  %37 = getelementptr inbounds i8, ptr %36, i64 40
  store i32 15, ptr %37, align 8, !tbaa !33
  %38 = getelementptr inbounds i8, ptr %36, i64 44
  store i32 %33, ptr %38, align 4, !tbaa !35
  %39 = load ptr, ptr %0, align 8, !tbaa !32
  %40 = load ptr, ptr %39, align 8, !tbaa !36
  tail call void %40(ptr noundef nonnull %0) #5
  br label %41

41:                                               ; preds = %35, %31
  %42 = getelementptr inbounds i8, ptr %0, i64 56
  %43 = load i32, ptr %42, align 8, !tbaa !38
  %44 = icmp sgt i32 %43, 10
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load ptr, ptr %0, align 8, !tbaa !32
  %47 = getelementptr inbounds i8, ptr %46, i64 40
  store i32 26, ptr %47, align 8, !tbaa !33
  %48 = getelementptr inbounds i8, ptr %46, i64 44
  store i32 %43, ptr %48, align 4, !tbaa !35
  %49 = load ptr, ptr %0, align 8, !tbaa !32
  %50 = getelementptr inbounds i8, ptr %49, i64 48
  store i32 10, ptr %50, align 4, !tbaa !35
  %51 = load ptr, ptr %0, align 8, !tbaa !32
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  tail call void %52(ptr noundef nonnull %0) #5
  %53 = load i32, ptr %42, align 8, !tbaa !38
  br label %54

54:                                               ; preds = %45, %41
  %55 = phi i32 [ %53, %45 ], [ %43, %41 ]
  %56 = getelementptr inbounds i8, ptr %0, i64 408
  store i32 1, ptr %56, align 8, !tbaa !39
  %57 = getelementptr inbounds i8, ptr %0, i64 412
  store i32 1, ptr %57, align 4, !tbaa !40
  %58 = getelementptr inbounds i8, ptr %0, i64 304
  %59 = icmp sgt i32 %55, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 8, ptr %61, align 8, !tbaa !41
  br label %162

62:                                               ; preds = %54
  %63 = load ptr, ptr %58, align 8, !tbaa !42
  br label %64

64:                                               ; preds = %89, %62
  %65 = phi i32 [ %90, %89 ], [ %55, %62 ]
  %66 = phi i32 [ %96, %89 ], [ 1, %62 ]
  %67 = phi i32 [ %95, %89 ], [ 1, %62 ]
  %68 = phi ptr [ %98, %89 ], [ %63, %62 ]
  %69 = phi i32 [ %97, %89 ], [ 0, %62 ]
  %70 = getelementptr inbounds i8, ptr %68, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !43
  %72 = add i32 %71, -5
  %73 = icmp ult i32 %72, -4
  br i1 %73, label %79, label %74

74:                                               ; preds = %64
  %75 = getelementptr inbounds i8, ptr %68, i64 12
  %76 = load i32, ptr %75, align 4, !tbaa !45
  %77 = add i32 %76, -5
  %78 = icmp ult i32 %77, -4
  br i1 %78, label %79, label %89

79:                                               ; preds = %74, %64
  %80 = load ptr, ptr %0, align 8, !tbaa !32
  %81 = getelementptr inbounds i8, ptr %80, i64 40
  store i32 18, ptr %81, align 8, !tbaa !33
  %82 = load ptr, ptr %80, align 8, !tbaa !36
  tail call void %82(ptr noundef nonnull %0) #5
  %83 = load i32, ptr %56, align 8, !tbaa !39
  %84 = load i32, ptr %70, align 8, !tbaa !43
  %85 = load i32, ptr %57, align 4, !tbaa !40
  %86 = getelementptr inbounds i8, ptr %68, i64 12
  %87 = load i32, ptr %86, align 4, !tbaa !45
  %88 = load i32, ptr %42, align 8, !tbaa !38
  br label %89

89:                                               ; preds = %79, %74
  %90 = phi i32 [ %65, %74 ], [ %88, %79 ]
  %91 = phi i32 [ %76, %74 ], [ %87, %79 ]
  %92 = phi i32 [ %66, %74 ], [ %85, %79 ]
  %93 = phi i32 [ %71, %74 ], [ %84, %79 ]
  %94 = phi i32 [ %67, %74 ], [ %83, %79 ]
  %95 = tail call i32 @llvm.smax.i32(i32 %94, i32 %93)
  store i32 %95, ptr %56, align 8, !tbaa !39
  %96 = tail call i32 @llvm.smax.i32(i32 %92, i32 %91)
  store i32 %96, ptr %57, align 4, !tbaa !40
  %97 = add nuw nsw i32 %69, 1
  %98 = getelementptr inbounds i8, ptr %68, i64 96
  %99 = icmp slt i32 %97, %90
  br i1 %99, label %64, label %100, !llvm.loop !46

100:                                              ; preds = %89
  %101 = icmp sgt i32 %90, 0
  %102 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 8, ptr %102, align 8, !tbaa !41
  br i1 %101, label %103, label %162

103:                                              ; preds = %100
  %104 = load ptr, ptr %58, align 8, !tbaa !42
  %105 = getelementptr inbounds i8, ptr %0, i64 48
  br label %106

106:                                              ; preds = %106, %103
  %107 = phi ptr [ %104, %103 ], [ %157, %106 ]
  %108 = phi i32 [ 0, %103 ], [ %156, %106 ]
  %109 = getelementptr inbounds i8, ptr %107, i64 36
  store i32 8, ptr %109, align 4, !tbaa !48
  %110 = load i32, ptr %105, align 8, !tbaa !31
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %107, i64 8
  %113 = load i32, ptr %112, align 8, !tbaa !43
  %114 = sext i32 %113 to i64
  %115 = mul nsw i64 %114, %111
  %116 = load i32, ptr %56, align 8, !tbaa !39
  %117 = shl nsw i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = tail call i64 @jdiv_round_up(i64 noundef %115, i64 noundef %118) #5
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds i8, ptr %107, i64 28
  store i32 %120, ptr %121, align 4, !tbaa !49
  %122 = load i32, ptr %18, align 4, !tbaa !30
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %107, i64 12
  %125 = load i32, ptr %124, align 4, !tbaa !45
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, %123
  %128 = load i32, ptr %57, align 4, !tbaa !40
  %129 = shl nsw i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = tail call i64 @jdiv_round_up(i64 noundef %127, i64 noundef %130) #5
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds i8, ptr %107, i64 32
  store i32 %132, ptr %133, align 8, !tbaa !50
  %134 = load i32, ptr %105, align 8, !tbaa !31
  %135 = zext i32 %134 to i64
  %136 = load i32, ptr %112, align 8, !tbaa !43
  %137 = sext i32 %136 to i64
  %138 = mul nsw i64 %137, %135
  %139 = load i32, ptr %56, align 8, !tbaa !39
  %140 = sext i32 %139 to i64
  %141 = tail call i64 @jdiv_round_up(i64 noundef %138, i64 noundef %140) #5
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds i8, ptr %107, i64 40
  store i32 %142, ptr %143, align 8, !tbaa !51
  %144 = load i32, ptr %18, align 4, !tbaa !30
  %145 = zext i32 %144 to i64
  %146 = load i32, ptr %124, align 4, !tbaa !45
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %147, %145
  %149 = load i32, ptr %57, align 4, !tbaa !40
  %150 = sext i32 %149 to i64
  %151 = tail call i64 @jdiv_round_up(i64 noundef %148, i64 noundef %150) #5
  %152 = trunc i64 %151 to i32
  %153 = getelementptr inbounds i8, ptr %107, i64 44
  store i32 %152, ptr %153, align 4, !tbaa !52
  %154 = getelementptr inbounds i8, ptr %107, i64 48
  store i32 1, ptr %154, align 8, !tbaa !53
  %155 = getelementptr inbounds i8, ptr %107, i64 80
  store ptr null, ptr %155, align 8, !tbaa !54
  %156 = add nuw nsw i32 %108, 1
  %157 = getelementptr inbounds i8, ptr %107, i64 96
  %158 = load i32, ptr %42, align 8, !tbaa !38
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %106, label %160, !llvm.loop !55

160:                                              ; preds = %106
  %161 = load i32, ptr %57, align 4, !tbaa !40
  br label %162

162:                                              ; preds = %160, %100, %60
  %163 = phi i32 [ %161, %160 ], [ %96, %100 ], [ 1, %60 ]
  %164 = load i32, ptr %18, align 4, !tbaa !30
  %165 = zext i32 %164 to i64
  %166 = shl nsw i32 %163, 3
  %167 = sext i32 %166 to i64
  %168 = tail call i64 @jdiv_round_up(i64 noundef %165, i64 noundef %167) #5
  %169 = trunc i64 %168 to i32
  %170 = getelementptr inbounds i8, ptr %0, i64 420
  store i32 %169, ptr %170, align 4, !tbaa !56
  %171 = getelementptr inbounds i8, ptr %0, i64 432
  %172 = load i32, ptr %171, align 8, !tbaa !57
  %173 = load i32, ptr %42, align 8, !tbaa !38
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %180, label %175

175:                                              ; preds = %162
  %176 = getelementptr inbounds i8, ptr %0, i64 312
  %177 = load i32, ptr %176, align 8, !tbaa !58
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i32
  br label %180

180:                                              ; preds = %162, %175
  %181 = phi i32 [ 1, %162 ], [ %179, %175 ]
  %182 = load ptr, ptr %2, align 8, !tbaa !17
  %183 = getelementptr inbounds i8, ptr %182, i64 32
  store i32 %181, ptr %183, align 8, !tbaa !59
  store i32 0, ptr %14, align 8, !tbaa !26
  br label %213

184:                                              ; preds = %13
  %185 = getelementptr inbounds i8, ptr %3, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !24
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load ptr, ptr %0, align 8, !tbaa !32
  %190 = getelementptr inbounds i8, ptr %189, i64 40
  store i32 35, ptr %190, align 8, !tbaa !33
  %191 = load ptr, ptr %189, align 8, !tbaa !36
  tail call void %191(ptr noundef nonnull %0) #5
  br label %192

192:                                              ; preds = %188, %184
  tail call void @start_input_pass(ptr noundef nonnull %0)
  br label %213

193:                                              ; preds = %7
  store i32 1, ptr %4, align 4, !tbaa !25
  %194 = getelementptr inbounds i8, ptr %3, i64 40
  %195 = load i32, ptr %194, align 8, !tbaa !26
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr %8, align 8, !tbaa !27
  %199 = getelementptr inbounds i8, ptr %198, i64 28
  %200 = load i32, ptr %199, align 4, !tbaa !60
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %197
  %203 = load ptr, ptr %0, align 8, !tbaa !32
  %204 = getelementptr inbounds i8, ptr %203, i64 40
  store i32 59, ptr %204, align 8, !tbaa !33
  %205 = load ptr, ptr %203, align 8, !tbaa !36
  tail call void %205(ptr noundef nonnull %0) #5
  br label %213

206:                                              ; preds = %193
  %207 = getelementptr inbounds i8, ptr %0, i64 180
  %208 = load i32, ptr %207, align 4, !tbaa !61
  %209 = getelementptr inbounds i8, ptr %0, i64 172
  %210 = load i32, ptr %209, align 4, !tbaa !62
  %211 = icmp sgt i32 %208, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  store i32 %210, ptr %207, align 4, !tbaa !61
  br label %213

213:                                              ; preds = %7, %192, %180, %206, %212, %197, %202, %1
  %214 = phi i32 [ 2, %1 ], [ 2, %202 ], [ 2, %197 ], [ 2, %212 ], [ 2, %206 ], [ 1, %180 ], [ 1, %192 ], [ %12, %7 ]
  ret i32 %214
}

; Function Attrs: nounwind
define internal void @reset_input_controller(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 576
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  store ptr @consume_markers, ptr %3, align 8, !tbaa !18
  %4 = getelementptr inbounds i8, ptr %3, i64 32
  store i32 0, ptr %4, align 8, !tbaa !24
  %5 = getelementptr inbounds i8, ptr %3, i64 36
  store i32 0, ptr %5, align 4, !tbaa !25
  %6 = getelementptr inbounds i8, ptr %3, i64 40
  store i32 1, ptr %6, align 8, !tbaa !26
  %7 = load ptr, ptr %0, align 8, !tbaa !32
  %8 = getelementptr inbounds i8, ptr %7, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  tail call void %9(ptr noundef nonnull %0) #5
  %10 = getelementptr inbounds i8, ptr %0, i64 584
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  tail call void %12(ptr noundef nonnull %0) #5
  %13 = getelementptr inbounds i8, ptr %0, i64 192
  store ptr null, ptr %13, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind
define internal void @start_input_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 432
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 440
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds i8, ptr %7, i64 28
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = getelementptr inbounds i8, ptr %0, i64 472
  store i32 %9, ptr %10, align 8, !tbaa !67
  %11 = getelementptr inbounds i8, ptr %7, i64 32
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds i8, ptr %0, i64 476
  store i32 %12, ptr %13, align 4, !tbaa !68
  %14 = getelementptr inbounds i8, ptr %7, i64 52
  store i32 1, ptr %14, align 4, !tbaa !69
  %15 = getelementptr inbounds i8, ptr %7, i64 56
  store i32 1, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds i8, ptr %7, i64 60
  store i32 1, ptr %16, align 4, !tbaa !71
  %17 = getelementptr inbounds i8, ptr %7, i64 36
  %18 = load i32, ptr %17, align 4, !tbaa !48
  %19 = getelementptr inbounds i8, ptr %7, i64 64
  store i32 %18, ptr %19, align 8, !tbaa !72
  %20 = getelementptr inbounds i8, ptr %7, i64 68
  store i32 1, ptr %20, align 4, !tbaa !73
  %21 = getelementptr inbounds i8, ptr %7, i64 12
  %22 = load i32, ptr %21, align 4, !tbaa !45
  %23 = urem i32 %12, %22
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %22, i32 %23
  %26 = getelementptr inbounds i8, ptr %7, i64 72
  store i32 %25, ptr %26, align 8, !tbaa !74
  %27 = getelementptr inbounds i8, ptr %0, i64 480
  store i32 1, ptr %27, align 8, !tbaa !75
  %28 = getelementptr inbounds i8, ptr %0, i64 484
  store i32 0, ptr %28, align 4, !tbaa !76
  br label %121

29:                                               ; preds = %1
  %30 = add i32 %3, -5
  %31 = icmp ult i32 %30, -4
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !32
  %34 = getelementptr inbounds i8, ptr %33, i64 40
  store i32 26, ptr %34, align 8, !tbaa !33
  %35 = getelementptr inbounds i8, ptr %33, i64 44
  store i32 %3, ptr %35, align 4, !tbaa !35
  %36 = load ptr, ptr %0, align 8, !tbaa !32
  %37 = getelementptr inbounds i8, ptr %36, i64 48
  store i32 4, ptr %37, align 4, !tbaa !35
  %38 = load ptr, ptr %0, align 8, !tbaa !32
  %39 = load ptr, ptr %38, align 8, !tbaa !36
  tail call void %39(ptr noundef nonnull %0) #5
  br label %40

40:                                               ; preds = %32, %29
  %41 = getelementptr inbounds i8, ptr %0, i64 48
  %42 = load i32, ptr %41, align 8, !tbaa !31
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %0, i64 408
  %45 = load i32, ptr %44, align 8, !tbaa !39
  %46 = shl nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = tail call i64 @jdiv_round_up(i64 noundef %43, i64 noundef %47) #5
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds i8, ptr %0, i64 472
  store i32 %49, ptr %50, align 8, !tbaa !67
  %51 = getelementptr inbounds i8, ptr %0, i64 52
  %52 = load i32, ptr %51, align 4, !tbaa !30
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %0, i64 412
  %55 = load i32, ptr %54, align 4, !tbaa !40
  %56 = shl nsw i32 %55, 3
  %57 = sext i32 %56 to i64
  %58 = tail call i64 @jdiv_round_up(i64 noundef %53, i64 noundef %57) #5
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds i8, ptr %0, i64 476
  store i32 %59, ptr %60, align 4, !tbaa !68
  %61 = getelementptr inbounds i8, ptr %0, i64 480
  store i32 0, ptr %61, align 8, !tbaa !75
  %62 = load i32, ptr %2, align 8, !tbaa !57
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %162

64:                                               ; preds = %40
  %65 = getelementptr inbounds i8, ptr %0, i64 440
  %66 = getelementptr inbounds i8, ptr %0, i64 484
  br label %67

67:                                               ; preds = %114, %64
  %68 = phi i64 [ 0, %64 ], [ %115, %114 ]
  %69 = getelementptr inbounds [4 x ptr], ptr %65, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !66
  %71 = getelementptr inbounds i8, ptr %70, i64 8
  %72 = load i32, ptr %71, align 8, !tbaa !43
  %73 = getelementptr inbounds i8, ptr %70, i64 52
  store i32 %72, ptr %73, align 4, !tbaa !69
  %74 = getelementptr inbounds i8, ptr %70, i64 12
  %75 = load i32, ptr %74, align 4, !tbaa !45
  %76 = getelementptr inbounds i8, ptr %70, i64 56
  store i32 %75, ptr %76, align 8, !tbaa !70
  %77 = mul nsw i32 %75, %72
  %78 = getelementptr inbounds i8, ptr %70, i64 60
  store i32 %77, ptr %78, align 4, !tbaa !71
  %79 = getelementptr inbounds i8, ptr %70, i64 36
  %80 = load i32, ptr %79, align 4, !tbaa !48
  %81 = mul nsw i32 %80, %72
  %82 = getelementptr inbounds i8, ptr %70, i64 64
  store i32 %81, ptr %82, align 8, !tbaa !72
  %83 = getelementptr inbounds i8, ptr %70, i64 28
  %84 = load i32, ptr %83, align 4, !tbaa !49
  %85 = urem i32 %84, %72
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 %72, i32 %85
  %88 = getelementptr inbounds i8, ptr %70, i64 68
  store i32 %87, ptr %88, align 4, !tbaa !73
  %89 = getelementptr inbounds i8, ptr %70, i64 32
  %90 = load i32, ptr %89, align 8, !tbaa !50
  %91 = urem i32 %90, %75
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 %75, i32 %91
  %94 = getelementptr inbounds i8, ptr %70, i64 72
  store i32 %93, ptr %94, align 8, !tbaa !74
  %95 = load i32, ptr %61, align 8, !tbaa !75
  %96 = add nsw i32 %95, %77
  %97 = icmp sgt i32 %96, 10
  br i1 %97, label %98, label %102

98:                                               ; preds = %67
  %99 = load ptr, ptr %0, align 8, !tbaa !32
  %100 = getelementptr inbounds i8, ptr %99, i64 40
  store i32 13, ptr %100, align 8, !tbaa !33
  %101 = load ptr, ptr %99, align 8, !tbaa !36
  tail call void %101(ptr noundef nonnull %0) #5
  br label %102

102:                                              ; preds = %98, %67
  %103 = icmp sgt i32 %77, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %102
  %105 = trunc nuw nsw i64 %68 to i32
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i32 [ %108, %106 ], [ %77, %104 ]
  %108 = add nsw i32 %107, -1
  %109 = load i32, ptr %61, align 8, !tbaa !75
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %61, align 8, !tbaa !75
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds [10 x i32], ptr %66, i64 0, i64 %111
  store i32 %105, ptr %112, align 4, !tbaa !76
  %113 = icmp ugt i32 %107, 1
  br i1 %113, label %106, label %114, !llvm.loop !77

114:                                              ; preds = %106, %102
  %115 = add nuw nsw i64 %68, 1
  %116 = load i32, ptr %2, align 8, !tbaa !57
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %67, label %119, !llvm.loop !78

119:                                              ; preds = %114
  %120 = icmp sgt i32 %116, 0
  br i1 %120, label %121, label %162

121:                                              ; preds = %5, %119
  %122 = phi i32 [ 1, %5 ], [ %116, %119 ]
  %123 = getelementptr inbounds i8, ptr %0, i64 440
  %124 = getelementptr inbounds i8, ptr %0, i64 200
  %125 = getelementptr inbounds i8, ptr %0, i64 8
  br label %126

126:                                              ; preds = %157, %121
  %127 = phi i32 [ %122, %121 ], [ %158, %157 ]
  %128 = phi i64 [ 0, %121 ], [ %159, %157 ]
  %129 = getelementptr inbounds [4 x ptr], ptr %123, i64 0, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !66
  %131 = getelementptr inbounds i8, ptr %130, i64 80
  %132 = load ptr, ptr %131, align 8, !tbaa !54
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %157

134:                                              ; preds = %126
  %135 = getelementptr inbounds i8, ptr %130, i64 16
  %136 = load i32, ptr %135, align 8, !tbaa !79
  %137 = icmp ugt i32 %136, 3
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = zext nneg i32 %136 to i64
  %140 = getelementptr inbounds [4 x ptr], ptr %124, i64 0, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !66
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %138, %134
  %144 = load ptr, ptr %0, align 8, !tbaa !32
  %145 = getelementptr inbounds i8, ptr %144, i64 40
  store i32 52, ptr %145, align 8, !tbaa !33
  %146 = getelementptr inbounds i8, ptr %144, i64 44
  store i32 %136, ptr %146, align 4, !tbaa !35
  %147 = load ptr, ptr %0, align 8, !tbaa !32
  %148 = load ptr, ptr %147, align 8, !tbaa !36
  tail call void %148(ptr noundef nonnull %0) #5
  br label %149

149:                                              ; preds = %143, %138
  %150 = load ptr, ptr %125, align 8, !tbaa !6
  %151 = load ptr, ptr %150, align 8, !tbaa !14
  %152 = tail call ptr %151(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 132) #5
  %153 = sext i32 %136 to i64
  %154 = getelementptr inbounds [4 x ptr], ptr %124, i64 0, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(132) %152, ptr noundef nonnull align 1 dereferenceable(132) %155, i64 132, i1 false)
  store ptr %152, ptr %131, align 8, !tbaa !54
  %156 = load i32, ptr %2, align 8, !tbaa !57
  br label %157

157:                                              ; preds = %149, %126
  %158 = phi i32 [ %127, %126 ], [ %156, %149 ]
  %159 = add nuw nsw i64 %128, 1
  %160 = sext i32 %158 to i64
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %126, label %162, !llvm.loop !80

162:                                              ; preds = %157, %40, %119
  %163 = getelementptr inbounds i8, ptr %0, i64 592
  %164 = load ptr, ptr %163, align 8, !tbaa !81
  %165 = load ptr, ptr %164, align 8, !tbaa !82
  tail call void %165(ptr noundef nonnull %0) #5
  %166 = getelementptr inbounds i8, ptr %0, i64 560
  %167 = load ptr, ptr %166, align 8, !tbaa !84
  %168 = load ptr, ptr %167, align 8, !tbaa !85
  tail call void %168(ptr noundef nonnull %0) #5
  %169 = load ptr, ptr %166, align 8, !tbaa !84
  %170 = getelementptr inbounds i8, ptr %169, i64 8
  %171 = load ptr, ptr %170, align 8, !tbaa !87
  %172 = getelementptr inbounds i8, ptr %0, i64 576
  %173 = load ptr, ptr %172, align 8, !tbaa !17
  store ptr %171, ptr %173, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define internal void @finish_input_pass(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 576
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  store ptr @consume_markers, ptr %3, align 8, !tbaa !88
  ret void
}

declare dso_local i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!17 = !{!7, !8, i64 576}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !11, i64 40}
!20 = !{!"jpeg_input_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36}
!21 = !{!19, !8, i64 8}
!22 = !{!19, !8, i64 16}
!23 = !{!19, !8, i64 24}
!24 = !{!19, !11, i64 32}
!25 = !{!19, !11, i64 36}
!26 = !{!19, !11, i64 40}
!27 = !{!7, !8, i64 584}
!28 = !{!29, !8, i64 8}
!29 = !{!"jpeg_marker_reader", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!30 = !{!7, !11, i64 52}
!31 = !{!7, !11, i64 48}
!32 = !{!7, !8, i64 0}
!33 = !{!34, !11, i64 40}
!34 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!35 = !{!9, !9, i64 0}
!36 = !{!34, !8, i64 0}
!37 = !{!7, !11, i64 296}
!38 = !{!7, !11, i64 56}
!39 = !{!7, !11, i64 408}
!40 = !{!7, !11, i64 412}
!41 = !{!7, !11, i64 416}
!42 = !{!7, !8, i64 304}
!43 = !{!44, !11, i64 8}
!44 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!45 = !{!44, !11, i64 12}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!44, !11, i64 36}
!49 = !{!44, !11, i64 28}
!50 = !{!44, !11, i64 32}
!51 = !{!44, !11, i64 40}
!52 = !{!44, !11, i64 44}
!53 = !{!44, !11, i64 48}
!54 = !{!44, !8, i64 80}
!55 = distinct !{!55, !47}
!56 = !{!7, !11, i64 420}
!57 = !{!7, !11, i64 432}
!58 = !{!7, !11, i64 312}
!59 = !{!20, !11, i64 32}
!60 = !{!29, !11, i64 28}
!61 = !{!7, !11, i64 180}
!62 = !{!7, !11, i64 172}
!63 = !{!34, !8, i64 32}
!64 = !{!29, !8, i64 0}
!65 = !{!7, !8, i64 192}
!66 = !{!8, !8, i64 0}
!67 = !{!7, !11, i64 472}
!68 = !{!7, !11, i64 476}
!69 = !{!44, !11, i64 52}
!70 = !{!44, !11, i64 56}
!71 = !{!44, !11, i64 60}
!72 = !{!44, !11, i64 64}
!73 = !{!44, !11, i64 68}
!74 = !{!44, !11, i64 72}
!75 = !{!7, !11, i64 480}
!76 = !{!11, !11, i64 0}
!77 = distinct !{!77, !47}
!78 = distinct !{!78, !47}
!79 = !{!44, !11, i64 16}
!80 = distinct !{!80, !47}
!81 = !{!7, !8, i64 592}
!82 = !{!83, !8, i64 0}
!83 = !{!"jpeg_entropy_decoder", !8, i64 0, !8, i64 8, !11, i64 16}
!84 = !{!7, !8, i64 560}
!85 = !{!86, !8, i64 0}
!86 = !{!"jpeg_d_coef_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!87 = !{!86, !8, i64 8}
!88 = !{!20, !8, i64 0}
