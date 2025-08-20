; ModuleID = 'wrtarga.c'
source_filename = "wrtarga.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local noundef ptr @jinit_write_targa(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 64) #6
  store ptr @start_output_tga, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @finish_output_tga, ptr %6, align 8, !tbaa !20
  tail call void @jpeg_calc_output_dimensions(ptr noundef %0) #6
  %7 = getelementptr inbounds i8, ptr %0, i64 136
  %8 = load i32, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds i8, ptr %0, i64 148
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = mul i32 %10, %8
  %12 = getelementptr inbounds i8, ptr %5, i64 56
  store i32 %11, ptr %12, align 8, !tbaa !23
  %13 = load ptr, ptr %2, align 8, !tbaa !6
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = zext i32 %11 to i64
  %16 = tail call ptr %14(ptr noundef %0, i32 noundef signext 1, i64 noundef %15) #6
  %17 = getelementptr inbounds i8, ptr %5, i64 48
  store ptr %16, ptr %17, align 8, !tbaa !24
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = load i32, ptr %12, align 8, !tbaa !23
  %22 = tail call ptr %20(ptr noundef %0, i32 noundef signext 1, i32 noundef signext %21, i32 noundef signext 1) #6
  %23 = getelementptr inbounds i8, ptr %5, i64 32
  store ptr %22, ptr %23, align 8, !tbaa !26
  %24 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 1, ptr %24, align 8, !tbaa !27
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @start_output_tga(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [18 x i8], align 1
  %4 = alloca [18 x i8], align 1
  %5 = alloca [18 x i8], align 1
  %6 = getelementptr inbounds i8, ptr %0, i64 64
  %7 = load i32, ptr %6, align 8, !tbaa !28
  switch i32 %7, label %162 [
    i32 1, label %8
    i32 2, label %41
  ]

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %5, i8 0, i64 12, i1 false)
  %9 = getelementptr inbounds i8, ptr %0, i64 136
  %10 = load i32, ptr %9, align 8, !tbaa !21
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %5, i64 12
  store i8 %11, ptr %12, align 1, !tbaa !29
  %13 = lshr i32 %10, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds i8, ptr %5, i64 13
  store i8 %14, ptr %15, align 1, !tbaa !29
  %16 = getelementptr inbounds i8, ptr %0, i64 140
  %17 = load i32, ptr %16, align 4, !tbaa !30
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds i8, ptr %5, i64 14
  store i8 %18, ptr %19, align 1, !tbaa !29
  %20 = lshr i32 %17, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, ptr %5, i64 15
  store i8 %21, ptr %22, align 1, !tbaa !29
  %23 = getelementptr inbounds i8, ptr %5, i64 17
  store i8 32, ptr %23, align 1, !tbaa !29
  %24 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 3, ptr %24, align 1, !tbaa !29
  %25 = getelementptr inbounds i8, ptr %5, i64 16
  store i8 8, ptr %25, align 1, !tbaa !29
  %26 = getelementptr inbounds i8, ptr %1, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 18, ptr noundef %27)
  %29 = icmp eq i64 %28, 18
  br i1 %29, label %34, label %30

30:                                               ; preds = %8
  %31 = load ptr, ptr %0, align 8, !tbaa !32
  %32 = getelementptr inbounds i8, ptr %31, i64 40
  store i32 37, ptr %32, align 8, !tbaa !33
  %33 = load ptr, ptr %31, align 8, !tbaa !35
  tail call void %33(ptr noundef nonnull %0) #6
  br label %34

34:                                               ; preds = %8, %30
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #6
  %35 = getelementptr inbounds i8, ptr %0, i64 108
  %36 = load i32, ptr %35, align 4, !tbaa !36
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds i8, ptr %1, i64 8
  br i1 %37, label %40, label %39

39:                                               ; preds = %34
  store ptr @put_demapped_gray, ptr %38, align 8, !tbaa !37
  br label %166

40:                                               ; preds = %34
  store ptr @put_gray_rows, ptr %38, align 8, !tbaa !37
  br label %166

41:                                               ; preds = %2
  %42 = getelementptr inbounds i8, ptr %0, i64 108
  %43 = load i32, ptr %42, align 4, !tbaa !36
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %134, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %0, i64 156
  %47 = load i32, ptr %46, align 4, !tbaa !38
  %48 = icmp sgt i32 %47, 256
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load ptr, ptr %0, align 8, !tbaa !32
  %51 = getelementptr inbounds i8, ptr %50, i64 40
  store i32 1039, ptr %51, align 8, !tbaa !33
  %52 = getelementptr inbounds i8, ptr %50, i64 44
  store i32 %47, ptr %52, align 4, !tbaa !29
  %53 = load ptr, ptr %0, align 8, !tbaa !32
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  tail call void %54(ptr noundef nonnull %0) #6
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %4, i8 0, i64 17, i1 false)
  %55 = load i32, ptr %6, align 8, !tbaa !28
  %56 = icmp eq i32 %55, 1
  br label %59

57:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %4, i8 0, i64 17, i1 false)
  %58 = icmp sgt i32 %47, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %49, %57
  %60 = phi i1 [ %56, %49 ], [ false, %57 ]
  %61 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 1, ptr %61, align 1, !tbaa !29
  %62 = trunc i32 %47 to i8
  %63 = getelementptr inbounds i8, ptr %4, i64 5
  store i8 %62, ptr %63, align 1, !tbaa !29
  %64 = lshr i32 %47, 8
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %4, i64 6
  store i8 %65, ptr %66, align 1, !tbaa !29
  %67 = getelementptr inbounds i8, ptr %4, i64 7
  store i8 24, ptr %67, align 1, !tbaa !29
  br label %68

68:                                               ; preds = %59, %57
  %69 = phi i1 [ %60, %59 ], [ false, %57 ]
  %70 = phi i1 [ true, %59 ], [ false, %57 ]
  %71 = getelementptr inbounds i8, ptr %0, i64 136
  %72 = load i32, ptr %71, align 8, !tbaa !21
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds i8, ptr %4, i64 12
  store i8 %73, ptr %74, align 1, !tbaa !29
  %75 = lshr i32 %72, 8
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %4, i64 13
  store i8 %76, ptr %77, align 1, !tbaa !29
  %78 = getelementptr inbounds i8, ptr %0, i64 140
  %79 = load i32, ptr %78, align 4, !tbaa !30
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds i8, ptr %4, i64 14
  store i8 %80, ptr %81, align 1, !tbaa !29
  %82 = lshr i32 %79, 8
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, ptr %4, i64 15
  store i8 %83, ptr %84, align 1, !tbaa !29
  %85 = getelementptr inbounds i8, ptr %4, i64 17
  store i8 32, ptr %85, align 1, !tbaa !29
  %86 = getelementptr inbounds i8, ptr %4, i64 2
  br i1 %69, label %87, label %89

87:                                               ; preds = %68
  store i8 3, ptr %86, align 1, !tbaa !29
  %88 = getelementptr inbounds i8, ptr %4, i64 16
  store i8 8, ptr %88, align 1, !tbaa !29
  br label %93

89:                                               ; preds = %68
  %90 = getelementptr inbounds i8, ptr %4, i64 16
  br i1 %70, label %91, label %92

91:                                               ; preds = %89
  store i8 1, ptr %86, align 1, !tbaa !29
  store i8 8, ptr %90, align 1, !tbaa !29
  br label %93

92:                                               ; preds = %89
  store i8 2, ptr %86, align 1, !tbaa !29
  store i8 24, ptr %90, align 1, !tbaa !29
  br label %93

93:                                               ; preds = %92, %91, %87
  %94 = getelementptr inbounds i8, ptr %1, i64 24
  %95 = load ptr, ptr %94, align 8, !tbaa !31
  %96 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 18, ptr noundef %95)
  %97 = icmp eq i64 %96, 18
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr %0, align 8, !tbaa !32
  %100 = getelementptr inbounds i8, ptr %99, i64 40
  store i32 37, ptr %100, align 8, !tbaa !33
  %101 = load ptr, ptr %99, align 8, !tbaa !35
  tail call void %101(ptr noundef nonnull %0) #6
  br label %102

102:                                              ; preds = %93, %98
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #6
  %103 = load ptr, ptr %94, align 8, !tbaa !39
  %104 = icmp sgt i32 %47, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %102
  %106 = getelementptr inbounds i8, ptr %0, i64 160
  %107 = zext nneg i32 %47 to i64
  br label %108

108:                                              ; preds = %105, %108
  %109 = phi i64 [ 0, %105 ], [ %130, %108 ]
  %110 = load ptr, ptr %106, align 8, !tbaa !40
  %111 = getelementptr inbounds i8, ptr %110, i64 16
  %112 = load ptr, ptr %111, align 8, !tbaa !41
  %113 = getelementptr inbounds i8, ptr %112, i64 %109
  %114 = load i8, ptr %113, align 1, !tbaa !29
  %115 = zext i8 %114 to i32
  %116 = tail call signext i32 @putc(i32 noundef signext %115, ptr noundef %103)
  %117 = load ptr, ptr %106, align 8, !tbaa !40
  %118 = getelementptr inbounds i8, ptr %117, i64 8
  %119 = load ptr, ptr %118, align 8, !tbaa !41
  %120 = getelementptr inbounds i8, ptr %119, i64 %109
  %121 = load i8, ptr %120, align 1, !tbaa !29
  %122 = zext i8 %121 to i32
  %123 = tail call signext i32 @putc(i32 noundef signext %122, ptr noundef %103)
  %124 = load ptr, ptr %106, align 8, !tbaa !40
  %125 = load ptr, ptr %124, align 8, !tbaa !41
  %126 = getelementptr inbounds i8, ptr %125, i64 %109
  %127 = load i8, ptr %126, align 1, !tbaa !29
  %128 = zext i8 %127 to i32
  %129 = tail call signext i32 @putc(i32 noundef signext %128, ptr noundef %103)
  %130 = add nuw nsw i64 %109, 1
  %131 = icmp eq i64 %130, %107
  br i1 %131, label %132, label %108, !llvm.loop !42

132:                                              ; preds = %108, %102
  %133 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr @put_gray_rows, ptr %133, align 8, !tbaa !37
  br label %166

134:                                              ; preds = %41
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %3, i8 0, i64 12, i1 false)
  %135 = getelementptr inbounds i8, ptr %0, i64 136
  %136 = load i32, ptr %135, align 8, !tbaa !21
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds i8, ptr %3, i64 12
  store i8 %137, ptr %138, align 1, !tbaa !29
  %139 = lshr i32 %136, 8
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds i8, ptr %3, i64 13
  store i8 %140, ptr %141, align 1, !tbaa !29
  %142 = getelementptr inbounds i8, ptr %0, i64 140
  %143 = load i32, ptr %142, align 4, !tbaa !30
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds i8, ptr %3, i64 14
  store i8 %144, ptr %145, align 1, !tbaa !29
  %146 = lshr i32 %143, 8
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds i8, ptr %3, i64 15
  store i8 %147, ptr %148, align 1, !tbaa !29
  %149 = getelementptr inbounds i8, ptr %3, i64 17
  store i8 32, ptr %149, align 1, !tbaa !29
  %150 = getelementptr inbounds i8, ptr %3, i64 2
  %151 = getelementptr inbounds i8, ptr %3, i64 16
  store i8 2, ptr %150, align 1, !tbaa !29
  store i8 24, ptr %151, align 1, !tbaa !29
  %152 = getelementptr inbounds i8, ptr %1, i64 24
  %153 = load ptr, ptr %152, align 8, !tbaa !31
  %154 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 18, ptr noundef %153)
  %155 = icmp eq i64 %154, 18
  br i1 %155, label %160, label %156

156:                                              ; preds = %134
  %157 = load ptr, ptr %0, align 8, !tbaa !32
  %158 = getelementptr inbounds i8, ptr %157, i64 40
  store i32 37, ptr %158, align 8, !tbaa !33
  %159 = load ptr, ptr %157, align 8, !tbaa !35
  tail call void %159(ptr noundef nonnull %0) #6
  br label %160

160:                                              ; preds = %134, %156
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #6
  %161 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr @put_pixel_rows, ptr %161, align 8, !tbaa !37
  br label %166

162:                                              ; preds = %2
  %163 = load ptr, ptr %0, align 8, !tbaa !32
  %164 = getelementptr inbounds i8, ptr %163, i64 40
  store i32 1034, ptr %164, align 8, !tbaa !33
  %165 = load ptr, ptr %163, align 8, !tbaa !35
  tail call void %165(ptr noundef nonnull %0) #6
  br label %166

166:                                              ; preds = %162, %160, %132, %39, %40
  ret void
}

; Function Attrs: nounwind
define internal void @finish_output_tga(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = tail call signext i32 @fflush(ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !31
  %7 = tail call signext i32 @ferror(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !32
  %11 = getelementptr inbounds i8, ptr %10, i64 40
  store i32 37, ptr %11, align 8, !tbaa !33
  %12 = load ptr, ptr %10, align 8, !tbaa !35
  tail call void %12(ptr noundef nonnull %0) #6
  br label %13

13:                                               ; preds = %9, %2
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
define internal void @put_demapped_gray(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 signext %2) #3 {
  %4 = getelementptr inbounds i8, ptr %0, i64 160
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds i8, ptr %1, i64 48
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds i8, ptr %0, i64 136
  %10 = load i32, ptr %9, align 8, !tbaa !21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %1, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %26, %16 ], [ %10, %12 ]
  %18 = phi ptr [ %20, %16 ], [ %15, %12 ]
  %19 = phi ptr [ %25, %16 ], [ %8, %12 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 1
  %21 = load i8, ptr %18, align 1, !tbaa !29
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i8, ptr %6, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !29
  %25 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %24, ptr %19, align 1, !tbaa !29
  %26 = add i32 %17, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %16, !llvm.loop !44

28:                                               ; preds = %16
  %29 = load ptr, ptr %7, align 8, !tbaa !24
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi ptr [ %29, %28 ], [ %8, %3 ]
  %32 = getelementptr inbounds i8, ptr %1, i64 56
  %33 = load i32, ptr %32, align 8, !tbaa !23
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %1, i64 24
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = tail call i64 @fwrite(ptr noundef %31, i64 noundef 1, i64 noundef %34, ptr noundef %36)
  ret void
}

; Function Attrs: nofree nounwind
define internal void @put_gray_rows(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 signext %2) #3 {
  %4 = getelementptr inbounds i8, ptr %1, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds i8, ptr %0, i64 136
  %7 = load i32, ptr %6, align 8, !tbaa !21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %1, i64 32
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i32 [ %20, %13 ], [ %7, %9 ]
  %15 = phi ptr [ %19, %13 ], [ %5, %9 ]
  %16 = phi ptr [ %17, %13 ], [ %12, %9 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  %18 = load i8, ptr %16, align 1, !tbaa !29
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %18, ptr %15, align 1, !tbaa !29
  %20 = add i32 %14, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !45

22:                                               ; preds = %13
  %23 = load ptr, ptr %4, align 8, !tbaa !24
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi ptr [ %23, %22 ], [ %5, %3 ]
  %26 = getelementptr inbounds i8, ptr %1, i64 56
  %27 = load i32, ptr %26, align 8, !tbaa !23
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %1, i64 24
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  %31 = tail call i64 @fwrite(ptr noundef %25, i64 noundef 1, i64 noundef %28, ptr noundef %30)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
define internal void @put_pixel_rows(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 signext %2) #3 {
  %4 = getelementptr inbounds i8, ptr %1, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds i8, ptr %0, i64 136
  %7 = load i32, ptr %6, align 8, !tbaa !21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %1, i64 32
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i32 [ %26, %13 ], [ %7, %9 ]
  %15 = phi ptr [ %25, %13 ], [ %5, %9 ]
  %16 = phi ptr [ %24, %13 ], [ %12, %9 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !29
  store i8 %18, ptr %15, align 1, !tbaa !29
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !29
  %21 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %20, ptr %21, align 1, !tbaa !29
  %22 = load i8, ptr %16, align 1, !tbaa !29
  %23 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %22, ptr %23, align 1, !tbaa !29
  %24 = getelementptr inbounds i8, ptr %16, i64 3
  %25 = getelementptr inbounds i8, ptr %15, i64 3
  %26 = add i32 %14, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %13, !llvm.loop !46

28:                                               ; preds = %13
  %29 = load ptr, ptr %4, align 8, !tbaa !24
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi ptr [ %29, %28 ], [ %5, %3 ]
  %32 = getelementptr inbounds i8, ptr %1, i64 56
  %33 = load i32, ptr %32, align 8, !tbaa !23
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %1, i64 24
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = tail call i64 @fwrite(ptr noundef %31, i64 noundef 1, i64 noundef %34, ptr noundef %36)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare dso_local noundef signext i32 @ferror(ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nounwind }

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
!17 = !{!18, !8, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 48, !11, i64 56}
!19 = !{!"djpeg_dest_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40}
!20 = !{!18, !8, i64 16}
!21 = !{!7, !11, i64 136}
!22 = !{!7, !11, i64 148}
!23 = !{!18, !11, i64 56}
!24 = !{!18, !8, i64 48}
!25 = !{!15, !8, i64 16}
!26 = !{!18, !8, i64 32}
!27 = !{!18, !11, i64 40}
!28 = !{!7, !11, i64 64}
!29 = !{!9, !9, i64 0}
!30 = !{!7, !11, i64 140}
!31 = !{!19, !8, i64 24}
!32 = !{!7, !8, i64 0}
!33 = !{!34, !11, i64 40}
!34 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!35 = !{!34, !8, i64 0}
!36 = !{!7, !11, i64 108}
!37 = !{!18, !8, i64 8}
!38 = !{!7, !11, i64 156}
!39 = !{!18, !8, i64 24}
!40 = !{!7, !8, i64 160}
!41 = !{!8, !8, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
