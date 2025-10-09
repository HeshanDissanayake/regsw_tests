; ModuleID = 'wrbmp.c'
source_filename = "wrbmp.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local noundef ptr @jinit_write_bmp(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef signext 1, i64 noundef 80) #7
  store ptr @start_output_bmp, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr @finish_output_bmp, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds i8, ptr %6, i64 48
  store i32 %1, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds i8, ptr %0, i64 64
  %10 = load i32, ptr %9, align 8, !tbaa !22
  switch i32 %10, label %20 [
    i32 1, label %11
    i32 2, label %13
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr @put_gray_rows, ptr %12, align 8, !tbaa !23
  br label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %0, i64 108
  %15 = load i32, ptr %14, align 4, !tbaa !24
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds i8, ptr %6, i64 8
  br i1 %16, label %19, label %18

18:                                               ; preds = %13
  store ptr @put_gray_rows, ptr %17, align 8, !tbaa !23
  br label %24

19:                                               ; preds = %13
  store ptr @put_pixel_rows, ptr %17, align 8, !tbaa !23
  br label %24

20:                                               ; preds = %2
  %21 = load ptr, ptr %0, align 8, !tbaa !25
  %22 = getelementptr inbounds i8, ptr %21, i64 40
  store i32 1005, ptr %22, align 8, !tbaa !26
  %23 = load ptr, ptr %21, align 8, !tbaa !28
  tail call void %23(ptr noundef nonnull %0) #7
  br label %24

24:                                               ; preds = %20, %19, %18, %11
  tail call void @jpeg_calc_output_dimensions(ptr noundef nonnull %0) #7
  %25 = getelementptr inbounds i8, ptr %0, i64 136
  %26 = load i32, ptr %25, align 8, !tbaa !29
  %27 = getelementptr inbounds i8, ptr %0, i64 148
  %28 = load i32, ptr %27, align 4, !tbaa !30
  %29 = mul i32 %28, %26
  %30 = getelementptr inbounds i8, ptr %6, i64 64
  store i32 %29, ptr %30, align 8, !tbaa !31
  %31 = sub i32 0, %29
  %32 = and i32 %31, 3
  %33 = add i32 %29, %32
  %34 = getelementptr inbounds i8, ptr %6, i64 68
  store i32 %33, ptr %34, align 4, !tbaa !32
  %35 = getelementptr inbounds i8, ptr %6, i64 72
  store i32 %32, ptr %35, align 8, !tbaa !33
  %36 = load ptr, ptr %3, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 32
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %0, i64 140
  %40 = load i32, ptr %39, align 4, !tbaa !35
  %41 = tail call ptr %38(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %33, i32 noundef signext %40, i32 noundef signext 1) #7
  %42 = getelementptr inbounds i8, ptr %6, i64 56
  store ptr %41, ptr %42, align 8, !tbaa !36
  %43 = getelementptr inbounds i8, ptr %6, i64 76
  store i32 0, ptr %43, align 4, !tbaa !37
  %44 = getelementptr inbounds i8, ptr %0, i64 16
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %24
  %48 = getelementptr inbounds i8, ptr %45, i64 36
  %49 = load i32, ptr %48, align 4, !tbaa !39
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !39
  br label %51

51:                                               ; preds = %47, %24
  %52 = load ptr, ptr %3, align 8, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %52, i64 16
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = tail call ptr %54(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %33, i32 noundef signext 1) #7
  %56 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !43
  %57 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 1, ptr %57, align 8, !tbaa !44
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal void @start_output_bmp(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: nounwind
define internal void @finish_output_bmp(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [14 x i8], align 1
  %4 = alloca [40 x i8], align 1
  %5 = alloca [14 x i8], align 1
  %6 = alloca [12 x i8], align 1
  %7 = getelementptr inbounds i8, ptr %1, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds i8, ptr %1, i64 48
  %12 = load i32, ptr %11, align 8, !tbaa !21
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds i8, ptr %0, i64 64
  br i1 %13, label %94, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %16 = load i32, ptr %14, align 8, !tbaa !22
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = getelementptr inbounds i8, ptr %0, i64 108
  %20 = load i32, ptr %19, align 4, !tbaa !24
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %21, i8 8, i8 24
  %23 = select i1 %21, i32 256, i32 0
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i8 [ %22, %18 ], [ 8, %15 ]
  %26 = phi i1 [ %21, %18 ], [ true, %15 ]
  %27 = phi i32 [ %23, %18 ], [ 256, %15 ]
  %28 = mul nuw nsw i32 %27, 3
  %29 = or disjoint i32 %28, 26
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %1, i64 68
  %32 = load i32, ptr %31, align 4, !tbaa !32
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %0, i64 140
  %35 = load i32, ptr %34, align 4, !tbaa !35
  %36 = zext i32 %35 to i64
  %37 = mul nuw nsw i64 %36, %33
  %38 = add nuw nsw i64 %37, %30
  %39 = getelementptr inbounds i8, ptr %5, i64 6
  store i32 0, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %6, i64 2
  store i16 0, ptr %40, align 1
  store i8 66, ptr %5, align 1, !tbaa !46
  %41 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 77, ptr %41, align 1, !tbaa !46
  %42 = trunc i64 %38 to i8
  %43 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %42, ptr %43, align 1, !tbaa !46
  %44 = lshr i64 %38, 8
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 %45, ptr %46, align 1, !tbaa !46
  %47 = lshr i64 %38, 16
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds i8, ptr %5, i64 4
  store i8 %48, ptr %49, align 1, !tbaa !46
  %50 = lshr i64 %38, 24
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds i8, ptr %5, i64 5
  store i8 %51, ptr %52, align 1, !tbaa !46
  %53 = getelementptr inbounds i8, ptr %5, i64 10
  store i8 26, ptr %53, align 1, !tbaa !46
  %54 = lshr exact i32 %28, 8
  %55 = trunc nuw nsw i32 %54 to i8
  %56 = getelementptr inbounds i8, ptr %5, i64 11
  store i8 %55, ptr %56, align 1, !tbaa !46
  %57 = getelementptr inbounds i8, ptr %5, i64 12
  store i8 0, ptr %57, align 1, !tbaa !46
  %58 = getelementptr inbounds i8, ptr %5, i64 13
  store i8 0, ptr %58, align 1, !tbaa !46
  store i8 12, ptr %6, align 1, !tbaa !46
  %59 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 0, ptr %59, align 1, !tbaa !46
  %60 = getelementptr inbounds i8, ptr %0, i64 136
  %61 = load i32, ptr %60, align 8, !tbaa !29
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds i8, ptr %6, i64 4
  store i8 %62, ptr %63, align 1, !tbaa !46
  %64 = lshr i32 %61, 8
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %6, i64 5
  store i8 %65, ptr %66, align 1, !tbaa !46
  %67 = trunc i32 %35 to i8
  %68 = getelementptr inbounds i8, ptr %6, i64 6
  store i8 %67, ptr %68, align 1, !tbaa !46
  %69 = lshr i32 %35, 8
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %6, i64 7
  store i8 %70, ptr %71, align 1, !tbaa !46
  %72 = getelementptr inbounds i8, ptr %6, i64 8
  store i8 1, ptr %72, align 1, !tbaa !46
  %73 = getelementptr inbounds i8, ptr %6, i64 9
  store i8 0, ptr %73, align 1, !tbaa !46
  %74 = getelementptr inbounds i8, ptr %6, i64 10
  store i8 %25, ptr %74, align 1, !tbaa !46
  %75 = getelementptr inbounds i8, ptr %6, i64 11
  store i8 0, ptr %75, align 1, !tbaa !46
  %76 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 14, ptr noundef %8)
  %77 = icmp eq i64 %76, 14
  br i1 %77, label %82, label %78

78:                                               ; preds = %24
  %79 = load ptr, ptr %0, align 8, !tbaa !25
  %80 = getelementptr inbounds i8, ptr %79, i64 40
  store i32 37, ptr %80, align 8, !tbaa !26
  %81 = load ptr, ptr %79, align 8, !tbaa !28
  tail call void %81(ptr noundef nonnull %0) #7
  br label %82

82:                                               ; preds = %78, %24
  %83 = load ptr, ptr %7, align 8, !tbaa !45
  %84 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 12, ptr noundef %83)
  %85 = icmp eq i64 %84, 12
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %0, align 8, !tbaa !25
  %88 = getelementptr inbounds i8, ptr %87, i64 40
  store i32 37, ptr %88, align 8, !tbaa !26
  %89 = load ptr, ptr %87, align 8, !tbaa !28
  tail call void %89(ptr noundef nonnull %0) #7
  br label %90

90:                                               ; preds = %86, %82
  br i1 %26, label %91, label %93

91:                                               ; preds = %90
  %92 = load ptr, ptr %7, align 8, !tbaa !45
  tail call fastcc void @write_colormap(ptr noundef nonnull %0, ptr %92, i32 noundef signext %27, i32 noundef signext 3)
  br label %93

93:                                               ; preds = %90, %91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %5) #7
  br label %220

94:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  %95 = load i32, ptr %14, align 8, !tbaa !22
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = getelementptr inbounds i8, ptr %0, i64 108
  %99 = load i32, ptr %98, align 4, !tbaa !24
  %100 = icmp ne i32 %99, 0
  %101 = select i1 %100, i8 8, i8 24
  %102 = select i1 %100, i32 256, i32 0
  br label %103

103:                                              ; preds = %97, %94
  %104 = phi i8 [ %101, %97 ], [ 8, %94 ]
  %105 = phi i1 [ %100, %97 ], [ true, %94 ]
  %106 = phi i32 [ %102, %97 ], [ 256, %94 ]
  %107 = shl nuw nsw i32 %106, 2
  %108 = or disjoint i32 %107, 54
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %1, i64 68
  %111 = load i32, ptr %110, align 4, !tbaa !32
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %0, i64 140
  %114 = load i32, ptr %113, align 4, !tbaa !35
  %115 = zext i32 %114 to i64
  %116 = mul nuw nsw i64 %115, %112
  %117 = add nuw nsw i64 %116, %109
  %118 = getelementptr inbounds i8, ptr %3, i64 6
  store i32 0, ptr %118, align 1
  %119 = getelementptr inbounds i8, ptr %4, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %119, i8 0, i64 38, i1 false)
  store i8 66, ptr %3, align 1, !tbaa !46
  %120 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 77, ptr %120, align 1, !tbaa !46
  %121 = trunc i64 %117 to i8
  %122 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %121, ptr %122, align 1, !tbaa !46
  %123 = lshr i64 %117, 8
  %124 = trunc i64 %123 to i8
  %125 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %124, ptr %125, align 1, !tbaa !46
  %126 = lshr i64 %117, 16
  %127 = trunc i64 %126 to i8
  %128 = getelementptr inbounds i8, ptr %3, i64 4
  store i8 %127, ptr %128, align 1, !tbaa !46
  %129 = lshr i64 %117, 24
  %130 = trunc i64 %129 to i8
  %131 = getelementptr inbounds i8, ptr %3, i64 5
  store i8 %130, ptr %131, align 1, !tbaa !46
  %132 = getelementptr inbounds i8, ptr %3, i64 10
  store i8 54, ptr %132, align 1, !tbaa !46
  %133 = lshr exact i32 %106, 6
  %134 = trunc nuw nsw i32 %133 to i8
  %135 = getelementptr inbounds i8, ptr %3, i64 11
  store i8 %134, ptr %135, align 1, !tbaa !46
  %136 = getelementptr inbounds i8, ptr %3, i64 12
  store i8 0, ptr %136, align 1, !tbaa !46
  %137 = getelementptr inbounds i8, ptr %3, i64 13
  store i8 0, ptr %137, align 1, !tbaa !46
  store i8 40, ptr %4, align 1, !tbaa !46
  %138 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 0, ptr %138, align 1, !tbaa !46
  %139 = getelementptr inbounds i8, ptr %0, i64 136
  %140 = load i32, ptr %139, align 8, !tbaa !29
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds i8, ptr %4, i64 4
  store i8 %141, ptr %142, align 1, !tbaa !46
  %143 = lshr i32 %140, 8
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds i8, ptr %4, i64 5
  store i8 %144, ptr %145, align 1, !tbaa !46
  %146 = lshr i32 %140, 16
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds i8, ptr %4, i64 6
  store i8 %147, ptr %148, align 1, !tbaa !46
  %149 = lshr i32 %140, 24
  %150 = trunc nuw i32 %149 to i8
  %151 = getelementptr inbounds i8, ptr %4, i64 7
  store i8 %150, ptr %151, align 1, !tbaa !46
  %152 = trunc i32 %114 to i8
  %153 = getelementptr inbounds i8, ptr %4, i64 8
  store i8 %152, ptr %153, align 1, !tbaa !46
  %154 = lshr i32 %114, 8
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds i8, ptr %4, i64 9
  store i8 %155, ptr %156, align 1, !tbaa !46
  %157 = lshr i32 %114, 16
  %158 = trunc i32 %157 to i8
  %159 = getelementptr inbounds i8, ptr %4, i64 10
  store i8 %158, ptr %159, align 1, !tbaa !46
  %160 = lshr i32 %114, 24
  %161 = trunc nuw i32 %160 to i8
  %162 = getelementptr inbounds i8, ptr %4, i64 11
  store i8 %161, ptr %162, align 1, !tbaa !46
  %163 = getelementptr inbounds i8, ptr %4, i64 12
  store i8 1, ptr %163, align 1, !tbaa !46
  %164 = getelementptr inbounds i8, ptr %4, i64 14
  store i8 %104, ptr %164, align 1, !tbaa !46
  %165 = getelementptr inbounds i8, ptr %0, i64 378
  %166 = load i8, ptr %165, align 2, !tbaa !47
  %167 = icmp eq i8 %166, 2
  br i1 %167, label %168, label %197

168:                                              ; preds = %103
  %169 = getelementptr inbounds i8, ptr %0, i64 380
  %170 = load i16, ptr %169, align 4, !tbaa !48
  %171 = trunc i16 %170 to i8
  %172 = mul i8 %171, 100
  %173 = getelementptr inbounds i8, ptr %4, i64 24
  store i8 %172, ptr %173, align 1, !tbaa !46
  %174 = zext i16 %170 to i64
  %175 = mul nuw nsw i64 %174, 100
  %176 = lshr i64 %175, 8
  %177 = trunc i64 %176 to i8
  %178 = getelementptr inbounds i8, ptr %4, i64 25
  store i8 %177, ptr %178, align 1, !tbaa !46
  %179 = lshr i64 %175, 16
  %180 = trunc nuw nsw i64 %179 to i8
  %181 = getelementptr inbounds i8, ptr %4, i64 26
  store i8 %180, ptr %181, align 1, !tbaa !46
  %182 = getelementptr inbounds i8, ptr %4, i64 27
  store i8 0, ptr %182, align 1, !tbaa !46
  %183 = getelementptr inbounds i8, ptr %0, i64 382
  %184 = load i16, ptr %183, align 2, !tbaa !49
  %185 = trunc i16 %184 to i8
  %186 = mul i8 %185, 100
  %187 = getelementptr inbounds i8, ptr %4, i64 28
  store i8 %186, ptr %187, align 1, !tbaa !46
  %188 = zext i16 %184 to i64
  %189 = mul nuw nsw i64 %188, 100
  %190 = lshr i64 %189, 8
  %191 = trunc i64 %190 to i8
  %192 = getelementptr inbounds i8, ptr %4, i64 29
  store i8 %191, ptr %192, align 1, !tbaa !46
  %193 = lshr i64 %189, 16
  %194 = trunc nuw nsw i64 %193 to i8
  %195 = getelementptr inbounds i8, ptr %4, i64 30
  store i8 %194, ptr %195, align 1, !tbaa !46
  %196 = getelementptr inbounds i8, ptr %4, i64 31
  store i8 0, ptr %196, align 1, !tbaa !46
  br label %197

197:                                              ; preds = %168, %103
  %198 = getelementptr inbounds i8, ptr %4, i64 32
  store i8 0, ptr %198, align 1, !tbaa !46
  %199 = lshr exact i32 %106, 8
  %200 = trunc nuw nsw i32 %199 to i8
  %201 = getelementptr inbounds i8, ptr %4, i64 33
  store i8 %200, ptr %201, align 1, !tbaa !46
  %202 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 14, ptr noundef %8)
  %203 = icmp eq i64 %202, 14
  br i1 %203, label %208, label %204

204:                                              ; preds = %197
  %205 = load ptr, ptr %0, align 8, !tbaa !25
  %206 = getelementptr inbounds i8, ptr %205, i64 40
  store i32 37, ptr %206, align 8, !tbaa !26
  %207 = load ptr, ptr %205, align 8, !tbaa !28
  tail call void %207(ptr noundef nonnull %0) #7
  br label %208

208:                                              ; preds = %204, %197
  %209 = load ptr, ptr %7, align 8, !tbaa !45
  %210 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 40, ptr noundef %209)
  %211 = icmp eq i64 %210, 40
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %0, align 8, !tbaa !25
  %214 = getelementptr inbounds i8, ptr %213, i64 40
  store i32 37, ptr %214, align 8, !tbaa !26
  %215 = load ptr, ptr %213, align 8, !tbaa !28
  tail call void %215(ptr noundef nonnull %0) #7
  br label %216

216:                                              ; preds = %212, %208
  br i1 %105, label %217, label %219

217:                                              ; preds = %216
  %218 = load ptr, ptr %7, align 8, !tbaa !45
  tail call fastcc void @write_colormap(ptr noundef nonnull %0, ptr %218, i32 noundef signext %106, i32 noundef signext 4)
  br label %219

219:                                              ; preds = %216, %217
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #7
  br label %220

220:                                              ; preds = %219, %93
  %221 = getelementptr inbounds i8, ptr %0, i64 140
  %222 = load i32, ptr %221, align 4, !tbaa !35
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %282, label %224

224:                                              ; preds = %220
  %225 = icmp eq ptr %10, null
  %226 = getelementptr inbounds i8, ptr %10, i64 8
  %227 = getelementptr inbounds i8, ptr %10, i64 16
  %228 = getelementptr inbounds i8, ptr %0, i64 8
  %229 = getelementptr inbounds i8, ptr %1, i64 56
  %230 = getelementptr inbounds i8, ptr %1, i64 68
  br i1 %225, label %231, label %256

231:                                              ; preds = %224, %252
  %232 = phi i32 [ %237, %252 ], [ %222, %224 ]
  %233 = load ptr, ptr %228, align 8, !tbaa !6
  %234 = getelementptr inbounds i8, ptr %233, i64 56
  %235 = load ptr, ptr %234, align 8, !tbaa !50
  %236 = load ptr, ptr %229, align 8, !tbaa !36
  %237 = add i32 %232, -1
  %238 = tail call ptr %235(ptr noundef %0, ptr noundef %236, i32 noundef signext %237, i32 noundef signext 1, i32 noundef signext 0) #7
  %239 = load i32, ptr %230, align 4, !tbaa !32
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %252, label %241

241:                                              ; preds = %231
  %242 = load ptr, ptr %238, align 8, !tbaa !51
  br label %243

243:                                              ; preds = %241, %243
  %244 = phi ptr [ %249, %243 ], [ %242, %241 ]
  %245 = phi i32 [ %250, %243 ], [ %239, %241 ]
  %246 = load i8, ptr %244, align 1, !tbaa !46
  %247 = zext i8 %246 to i32
  %248 = tail call signext i32 @putc(i32 noundef signext %247, ptr noundef %8)
  %249 = getelementptr inbounds i8, ptr %244, i64 1
  %250 = add i32 %245, -1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %243

252:                                              ; preds = %243, %231
  %253 = icmp eq i32 %237, 0
  br i1 %253, label %282, label %231

254:                                              ; preds = %273, %256
  %255 = icmp eq i32 %267, 0
  br i1 %255, label %282, label %256

256:                                              ; preds = %224, %254
  %257 = phi i32 [ %267, %254 ], [ %222, %224 ]
  %258 = load i32, ptr %221, align 4, !tbaa !35
  %259 = sub i32 %258, %257
  %260 = zext i32 %259 to i64
  store i64 %260, ptr %226, align 8, !tbaa !52
  %261 = zext i32 %258 to i64
  store i64 %261, ptr %227, align 8, !tbaa !53
  %262 = load ptr, ptr %10, align 8, !tbaa !54
  tail call void %262(ptr noundef %0) #7
  %263 = load ptr, ptr %228, align 8, !tbaa !6
  %264 = getelementptr inbounds i8, ptr %263, i64 56
  %265 = load ptr, ptr %264, align 8, !tbaa !50
  %266 = load ptr, ptr %229, align 8, !tbaa !36
  %267 = add i32 %257, -1
  %268 = tail call ptr %265(ptr noundef %0, ptr noundef %266, i32 noundef signext %267, i32 noundef signext 1, i32 noundef signext 0) #7
  %269 = load i32, ptr %230, align 4, !tbaa !32
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %254, label %271

271:                                              ; preds = %256
  %272 = load ptr, ptr %268, align 8, !tbaa !51
  br label %273

273:                                              ; preds = %271, %273
  %274 = phi ptr [ %279, %273 ], [ %272, %271 ]
  %275 = phi i32 [ %280, %273 ], [ %269, %271 ]
  %276 = load i8, ptr %274, align 1, !tbaa !46
  %277 = zext i8 %276 to i32
  %278 = tail call signext i32 @putc(i32 noundef signext %277, ptr noundef %8)
  %279 = getelementptr inbounds i8, ptr %274, i64 1
  %280 = add i32 %275, -1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %254, label %273

282:                                              ; preds = %254, %252, %220
  %283 = icmp eq ptr %10, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %282
  %285 = getelementptr inbounds i8, ptr %10, i64 32
  %286 = load i32, ptr %285, align 8, !tbaa !55
  %287 = add nsw i32 %286, 1
  store i32 %287, ptr %285, align 8, !tbaa !55
  br label %288

288:                                              ; preds = %284, %282
  %289 = tail call signext i32 @fflush(ptr noundef %8)
  %290 = tail call signext i32 @ferror(ptr noundef %8) #7
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %288
  %293 = load ptr, ptr %0, align 8, !tbaa !25
  %294 = getelementptr inbounds i8, ptr %293, i64 40
  store i32 37, ptr %294, align 8, !tbaa !26
  %295 = load ptr, ptr %293, align 8, !tbaa !28
  tail call void %295(ptr noundef nonnull %0) #7
  br label %296

296:                                              ; preds = %292, %288
  ret void
}

; Function Attrs: nounwind
define internal void @put_gray_rows(ptr noundef %0, ptr nocapture noundef %1, i32 signext %2) #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 56
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds i8, ptr %1, i64 56
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds i8, ptr %1, i64 76
  %11 = load i32, ptr %10, align 4, !tbaa !37
  %12 = tail call ptr %7(ptr noundef %0, ptr noundef %9, i32 noundef signext %11, i32 noundef signext 1, i32 noundef signext 1) #7
  %13 = load i32, ptr %10, align 4, !tbaa !37
  %14 = add i32 %13, 1
  store i32 %14, ptr %10, align 4, !tbaa !37
  %15 = load ptr, ptr %12, align 8, !tbaa !51
  %16 = getelementptr inbounds i8, ptr %0, i64 136
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds i8, ptr %1, i64 32
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i32 [ %30, %23 ], [ %17, %19 ]
  %25 = phi ptr [ %29, %23 ], [ %15, %19 ]
  %26 = phi ptr [ %27, %23 ], [ %22, %19 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !46
  %29 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %28, ptr %25, align 1, !tbaa !46
  %30 = add i32 %24, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %23

32:                                               ; preds = %23, %3
  %33 = phi ptr [ %15, %3 ], [ %29, %23 ]
  %34 = getelementptr inbounds i8, ptr %1, i64 72
  %35 = load i32, ptr %34, align 8, !tbaa !33
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %38, i1 false), !tbaa !46
  br label %39

39:                                               ; preds = %37, %32
  ret void
}

; Function Attrs: nounwind
define internal void @put_pixel_rows(ptr noundef %0, ptr nocapture noundef %1, i32 signext %2) #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 56
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds i8, ptr %1, i64 56
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds i8, ptr %1, i64 76
  %11 = load i32, ptr %10, align 4, !tbaa !37
  %12 = tail call ptr %7(ptr noundef %0, ptr noundef %9, i32 noundef signext %11, i32 noundef signext 1, i32 noundef signext 1) #7
  %13 = load i32, ptr %10, align 4, !tbaa !37
  %14 = add i32 %13, 1
  store i32 %14, ptr %10, align 4, !tbaa !37
  %15 = load ptr, ptr %12, align 8, !tbaa !51
  %16 = getelementptr inbounds i8, ptr %0, i64 136
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds i8, ptr %1, i64 32
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i32 [ %36, %23 ], [ %17, %19 ]
  %25 = phi ptr [ %35, %23 ], [ %15, %19 ]
  %26 = phi ptr [ %33, %23 ], [ %22, %19 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !46
  %29 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 %28, ptr %29, align 1, !tbaa !46
  %30 = getelementptr inbounds i8, ptr %26, i64 2
  %31 = load i8, ptr %27, align 1, !tbaa !46
  %32 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !46
  %33 = getelementptr inbounds i8, ptr %26, i64 3
  %34 = load i8, ptr %30, align 1, !tbaa !46
  store i8 %34, ptr %25, align 1, !tbaa !46
  %35 = getelementptr inbounds i8, ptr %25, i64 3
  %36 = add i32 %24, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %23

38:                                               ; preds = %23, %3
  %39 = phi ptr [ %15, %3 ], [ %35, %23 ]
  %40 = getelementptr inbounds i8, ptr %1, i64 72
  %41 = load i32, ptr %40, align 8, !tbaa !33
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = zext nneg i32 %41 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %39, i8 0, i64 %44, i1 false), !tbaa !46
  br label %45

45:                                               ; preds = %43, %38
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare dso_local noundef signext i32 @ferror(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @write_colormap(ptr noundef %0, ptr nocapture %1, i32 noundef signext %2, i32 noundef signext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 160
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds i8, ptr %0, i64 156
  %8 = load i32, ptr %7, align 4, !tbaa !57
  %9 = icmp eq ptr %6, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 4
  br i1 %11, label %12, label %113

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %18, %12 ], [ 0, %10 ]
  %14 = tail call signext i32 @putc(i32 noundef signext %13, ptr noundef %1)
  %15 = tail call signext i32 @putc(i32 noundef signext %13, ptr noundef %1)
  %16 = tail call signext i32 @putc(i32 noundef signext %13, ptr noundef %1)
  %17 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %18 = add nuw nsw i32 %13, 1
  %19 = icmp eq i32 %18, 256
  br i1 %19, label %120, label %12

20:                                               ; preds = %4
  %21 = getelementptr inbounds i8, ptr %0, i64 144
  %22 = load i32, ptr %21, align 8, !tbaa !58
  %23 = icmp eq i32 %22, 3
  %24 = icmp sgt i32 %8, 0
  br i1 %23, label %49, label %25

25:                                               ; preds = %20
  br i1 %24, label %26, label %120

26:                                               ; preds = %25
  %27 = icmp eq i32 %3, 4
  %28 = zext nneg i32 %8 to i64
  br i1 %27, label %29, label %94

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %47, %29 ], [ 0, %26 ]
  %31 = load ptr, ptr %6, align 8, !tbaa !51
  %32 = getelementptr inbounds i8, ptr %31, i64 %30
  %33 = load i8, ptr %32, align 1, !tbaa !46
  %34 = zext i8 %33 to i32
  %35 = tail call signext i32 @putc(i32 noundef signext %34, ptr noundef %1)
  %36 = load ptr, ptr %6, align 8, !tbaa !51
  %37 = getelementptr inbounds i8, ptr %36, i64 %30
  %38 = load i8, ptr %37, align 1, !tbaa !46
  %39 = zext i8 %38 to i32
  %40 = tail call signext i32 @putc(i32 noundef signext %39, ptr noundef %1)
  %41 = load ptr, ptr %6, align 8, !tbaa !51
  %42 = getelementptr inbounds i8, ptr %41, i64 %30
  %43 = load i8, ptr %42, align 1, !tbaa !46
  %44 = zext i8 %43 to i32
  %45 = tail call signext i32 @putc(i32 noundef signext %44, ptr noundef %1)
  %46 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %47 = add nuw nsw i64 %30, 1
  %48 = icmp eq i64 %47, %28
  br i1 %48, label %120, label %29

49:                                               ; preds = %20
  br i1 %24, label %50, label %120

50:                                               ; preds = %49
  %51 = getelementptr inbounds i8, ptr %6, i64 16
  %52 = getelementptr inbounds i8, ptr %6, i64 8
  %53 = icmp eq i32 %3, 4
  %54 = zext nneg i32 %8 to i64
  br i1 %53, label %55, label %75

55:                                               ; preds = %50, %55
  %56 = phi i64 [ %73, %55 ], [ 0, %50 ]
  %57 = load ptr, ptr %51, align 8, !tbaa !51
  %58 = getelementptr inbounds i8, ptr %57, i64 %56
  %59 = load i8, ptr %58, align 1, !tbaa !46
  %60 = zext i8 %59 to i32
  %61 = tail call signext i32 @putc(i32 noundef signext %60, ptr noundef %1)
  %62 = load ptr, ptr %52, align 8, !tbaa !51
  %63 = getelementptr inbounds i8, ptr %62, i64 %56
  %64 = load i8, ptr %63, align 1, !tbaa !46
  %65 = zext i8 %64 to i32
  %66 = tail call signext i32 @putc(i32 noundef signext %65, ptr noundef %1)
  %67 = load ptr, ptr %6, align 8, !tbaa !51
  %68 = getelementptr inbounds i8, ptr %67, i64 %56
  %69 = load i8, ptr %68, align 1, !tbaa !46
  %70 = zext i8 %69 to i32
  %71 = tail call signext i32 @putc(i32 noundef signext %70, ptr noundef %1)
  %72 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %73 = add nuw nsw i64 %56, 1
  %74 = icmp eq i64 %73, %54
  br i1 %74, label %120, label %55

75:                                               ; preds = %50, %75
  %76 = phi i64 [ %92, %75 ], [ 0, %50 ]
  %77 = load ptr, ptr %51, align 8, !tbaa !51
  %78 = getelementptr inbounds i8, ptr %77, i64 %76
  %79 = load i8, ptr %78, align 1, !tbaa !46
  %80 = zext i8 %79 to i32
  %81 = tail call signext i32 @putc(i32 noundef signext %80, ptr noundef %1)
  %82 = load ptr, ptr %52, align 8, !tbaa !51
  %83 = getelementptr inbounds i8, ptr %82, i64 %76
  %84 = load i8, ptr %83, align 1, !tbaa !46
  %85 = zext i8 %84 to i32
  %86 = tail call signext i32 @putc(i32 noundef signext %85, ptr noundef %1)
  %87 = load ptr, ptr %6, align 8, !tbaa !51
  %88 = getelementptr inbounds i8, ptr %87, i64 %76
  %89 = load i8, ptr %88, align 1, !tbaa !46
  %90 = zext i8 %89 to i32
  %91 = tail call signext i32 @putc(i32 noundef signext %90, ptr noundef %1)
  %92 = add nuw nsw i64 %76, 1
  %93 = icmp eq i64 %92, %54
  br i1 %93, label %120, label %75

94:                                               ; preds = %26, %94
  %95 = phi i64 [ %111, %94 ], [ 0, %26 ]
  %96 = load ptr, ptr %6, align 8, !tbaa !51
  %97 = getelementptr inbounds i8, ptr %96, i64 %95
  %98 = load i8, ptr %97, align 1, !tbaa !46
  %99 = zext i8 %98 to i32
  %100 = tail call signext i32 @putc(i32 noundef signext %99, ptr noundef %1)
  %101 = load ptr, ptr %6, align 8, !tbaa !51
  %102 = getelementptr inbounds i8, ptr %101, i64 %95
  %103 = load i8, ptr %102, align 1, !tbaa !46
  %104 = zext i8 %103 to i32
  %105 = tail call signext i32 @putc(i32 noundef signext %104, ptr noundef %1)
  %106 = load ptr, ptr %6, align 8, !tbaa !51
  %107 = getelementptr inbounds i8, ptr %106, i64 %95
  %108 = load i8, ptr %107, align 1, !tbaa !46
  %109 = zext i8 %108 to i32
  %110 = tail call signext i32 @putc(i32 noundef signext %109, ptr noundef %1)
  %111 = add nuw nsw i64 %95, 1
  %112 = icmp eq i64 %111, %28
  br i1 %112, label %120, label %94

113:                                              ; preds = %10, %113
  %114 = phi i32 [ %118, %113 ], [ 0, %10 ]
  %115 = tail call signext i32 @putc(i32 noundef signext %114, ptr noundef %1)
  %116 = tail call signext i32 @putc(i32 noundef signext %114, ptr noundef %1)
  %117 = tail call signext i32 @putc(i32 noundef signext %114, ptr noundef %1)
  %118 = add nuw nsw i32 %114, 1
  %119 = icmp eq i32 %118, 256
  br i1 %119, label %120, label %113

120:                                              ; preds = %94, %29, %75, %55, %113, %12, %25, %49
  %121 = phi i32 [ 0, %49 ], [ 0, %25 ], [ 256, %12 ], [ 256, %113 ], [ %8, %55 ], [ %8, %75 ], [ %8, %29 ], [ %8, %94 ]
  %122 = icmp sgt i32 %121, %2
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load ptr, ptr %0, align 8, !tbaa !25
  %125 = getelementptr inbounds i8, ptr %124, i64 40
  store i32 1039, ptr %125, align 8, !tbaa !26
  %126 = getelementptr inbounds i8, ptr %124, i64 44
  store i32 %121, ptr %126, align 4, !tbaa !46
  %127 = load ptr, ptr %0, align 8, !tbaa !25
  %128 = load ptr, ptr %127, align 8, !tbaa !28
  tail call void %128(ptr noundef nonnull %0) #7
  br label %129

129:                                              ; preds = %123, %120
  %130 = icmp slt i32 %121, %2
  br i1 %130, label %131, label %148

131:                                              ; preds = %129
  %132 = icmp eq i32 %3, 4
  br i1 %132, label %133, label %141

133:                                              ; preds = %131, %133
  %134 = phi i32 [ %139, %133 ], [ %121, %131 ]
  %135 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %136 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %137 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %138 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %139 = add nuw i32 %134, 1
  %140 = icmp eq i32 %139, %2
  br i1 %140, label %148, label %133

141:                                              ; preds = %131, %141
  %142 = phi i32 [ %146, %141 ], [ %121, %131 ]
  %143 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %144 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %145 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %1)
  %146 = add nuw i32 %142, 1
  %147 = icmp eq i32 %146, %2
  br i1 %147, label %148, label %141

148:                                              ; preds = %141, %133, %129
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!17 = !{!18, !8, i64 0}
!18 = !{!"", !19, i64 0, !11, i64 48, !8, i64 56, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76}
!19 = !{!"djpeg_dest_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40}
!20 = !{!18, !8, i64 16}
!21 = !{!18, !11, i64 48}
!22 = !{!7, !11, i64 64}
!23 = !{!18, !8, i64 8}
!24 = !{!7, !11, i64 108}
!25 = !{!7, !8, i64 0}
!26 = !{!27, !11, i64 40}
!27 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!28 = !{!27, !8, i64 0}
!29 = !{!7, !11, i64 136}
!30 = !{!7, !11, i64 148}
!31 = !{!18, !11, i64 64}
!32 = !{!18, !11, i64 68}
!33 = !{!18, !11, i64 72}
!34 = !{!15, !8, i64 32}
!35 = !{!7, !11, i64 140}
!36 = !{!18, !8, i64 56}
!37 = !{!18, !11, i64 76}
!38 = !{!7, !8, i64 16}
!39 = !{!40, !11, i64 36}
!40 = !{!"cdjpeg_progress_mgr", !41, i64 0, !11, i64 32, !11, i64 36, !11, i64 40}
!41 = !{!"jpeg_progress_mgr", !8, i64 0, !16, i64 8, !16, i64 16, !11, i64 24, !11, i64 28}
!42 = !{!15, !8, i64 16}
!43 = !{!18, !8, i64 32}
!44 = !{!18, !11, i64 40}
!45 = !{!18, !8, i64 24}
!46 = !{!9, !9, i64 0}
!47 = !{!7, !9, i64 378}
!48 = !{!7, !13, i64 380}
!49 = !{!7, !13, i64 382}
!50 = !{!15, !8, i64 56}
!51 = !{!8, !8, i64 0}
!52 = !{!40, !16, i64 8}
!53 = !{!40, !16, i64 16}
!54 = !{!40, !8, i64 0}
!55 = !{!40, !11, i64 32}
!56 = !{!7, !8, i64 160}
!57 = !{!7, !11, i64 156}
!58 = !{!7, !11, i64 144}
