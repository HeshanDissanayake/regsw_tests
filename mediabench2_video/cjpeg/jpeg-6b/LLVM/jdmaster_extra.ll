; ModuleID = 'jdmaster.c'
source_filename = "jdmaster.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@switch.table.jpeg_calc_output_dimensions = private unnamed_addr constant [5 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4], align 4

; Function Attrs: nounwind
define dso_local void @jpeg_calc_output_dimensions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 202
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !14
  %7 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 20, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds i8, ptr %6, i64 44
  store i32 %3, ptr %8, align 4, !tbaa !18
  %9 = load ptr, ptr %0, align 8, !tbaa !14
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  tail call void %10(ptr noundef nonnull %0) #4
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds i8, ptr %0, i64 68
  %13 = load i32, ptr %12, align 4, !tbaa !20
  %14 = shl i32 %13, 3
  %15 = getelementptr inbounds i8, ptr %0, i64 72
  %16 = load i32, ptr %15, align 8, !tbaa !21
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = shl i32 %13, 2
  %20 = icmp ugt i32 %19, %16
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = shl i32 %13, 1
  %23 = icmp ugt i32 %22, %16
  %24 = getelementptr inbounds i8, ptr %0, i64 48
  %25 = load i32, ptr %24, align 8, !tbaa !22
  br i1 %23, label %51, label %31

26:                                               ; preds = %18, %11
  %27 = phi i64 [ 8, %11 ], [ 4, %18 ]
  %28 = phi i32 [ 1, %11 ], [ 2, %18 ]
  %29 = getelementptr inbounds i8, ptr %0, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !22
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %25, %21 ], [ %30, %26 ]
  %33 = phi i64 [ 2, %21 ], [ %27, %26 ]
  %34 = phi i32 [ 4, %21 ], [ %28, %26 ]
  %35 = zext i32 %32 to i64
  %36 = tail call i64 @jdiv_round_up(i64 noundef %35, i64 noundef %33) #4
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, ptr %0, i64 136
  store i32 %37, ptr %38, align 8, !tbaa !23
  %39 = getelementptr inbounds i8, ptr %0, i64 52
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = zext i32 %40 to i64
  %42 = tail call i64 @jdiv_round_up(i64 noundef %41, i64 noundef %33) #4
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds i8, ptr %0, i64 140
  store i32 %43, ptr %44, align 4, !tbaa !25
  %45 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 %34, ptr %45, align 8, !tbaa !26
  %46 = getelementptr inbounds i8, ptr %0, i64 304
  %47 = load ptr, ptr %46, align 8, !tbaa !27
  %48 = getelementptr inbounds i8, ptr %0, i64 56
  %49 = load i32, ptr %48, align 8, !tbaa !28
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %62, label %147

51:                                               ; preds = %21
  %52 = getelementptr inbounds i8, ptr %0, i64 136
  store i32 %25, ptr %52, align 8, !tbaa !23
  %53 = getelementptr inbounds i8, ptr %0, i64 52
  %54 = load i32, ptr %53, align 4, !tbaa !24
  %55 = getelementptr inbounds i8, ptr %0, i64 140
  store i32 %54, ptr %55, align 4, !tbaa !25
  %56 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 8, ptr %56, align 8, !tbaa !26
  %57 = getelementptr inbounds i8, ptr %0, i64 304
  %58 = load ptr, ptr %57, align 8, !tbaa !27
  %59 = getelementptr inbounds i8, ptr %0, i64 56
  %60 = load i32, ptr %59, align 8, !tbaa !28
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %104, label %147

62:                                               ; preds = %31
  %63 = getelementptr inbounds i8, ptr %0, i64 412
  %64 = getelementptr inbounds i8, ptr %0, i64 408
  %65 = load i32, ptr %64, align 8, !tbaa !29
  %66 = mul nsw i32 %65, %34
  br label %67

67:                                               ; preds = %87, %62
  %68 = phi ptr [ %47, %62 ], [ %91, %87 ]
  %69 = phi i32 [ 0, %62 ], [ %90, %87 ]
  %70 = getelementptr inbounds i8, ptr %68, i64 8
  %71 = getelementptr inbounds i8, ptr %68, i64 12
  %72 = load i32, ptr %70, align 8, !tbaa !30
  %73 = shl i32 %72, 1
  br label %74

74:                                               ; preds = %67, %85
  %75 = phi i32 [ %34, %67 ], [ %80, %85 ]
  %76 = mul i32 %75, %73
  %77 = icmp sgt i32 %76, %66
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %71, align 4, !tbaa !32
  %80 = shl i32 %75, 1
  %81 = mul i32 %80, %79
  %82 = load i32, ptr %63, align 4, !tbaa !33
  %83 = mul nsw i32 %82, %34
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = icmp slt i32 %75, 4
  br i1 %86, label %74, label %87, !llvm.loop !34

87:                                               ; preds = %78, %85, %74
  %88 = phi i32 [ %75, %74 ], [ %80, %85 ], [ %75, %78 ]
  %89 = getelementptr inbounds i8, ptr %68, i64 36
  store i32 %88, ptr %89, align 4, !tbaa !36
  %90 = add nuw nsw i32 %69, 1
  %91 = getelementptr inbounds i8, ptr %68, i64 96
  %92 = icmp eq i32 %90, %49
  br i1 %92, label %93, label %67, !llvm.loop !37

93:                                               ; preds = %87, %104
  %94 = phi i1 [ %61, %104 ], [ true, %87 ]
  %95 = phi i32 [ %60, %104 ], [ %49, %87 ]
  %96 = phi ptr [ %59, %104 ], [ %48, %87 ]
  %97 = phi ptr [ %58, %104 ], [ %47, %87 ]
  %98 = phi ptr [ %57, %104 ], [ %46, %87 ]
  br i1 %94, label %99, label %147

99:                                               ; preds = %93
  %100 = getelementptr inbounds i8, ptr %0, i64 48
  %101 = getelementptr inbounds i8, ptr %0, i64 408
  %102 = getelementptr inbounds i8, ptr %0, i64 52
  %103 = getelementptr inbounds i8, ptr %0, i64 412
  br label %111

104:                                              ; preds = %51, %104
  %105 = phi ptr [ %109, %104 ], [ %58, %51 ]
  %106 = phi i32 [ %108, %104 ], [ 0, %51 ]
  %107 = getelementptr inbounds i8, ptr %105, i64 36
  store i32 8, ptr %107, align 4, !tbaa !36
  %108 = add nuw nsw i32 %106, 1
  %109 = getelementptr inbounds i8, ptr %105, i64 96
  %110 = icmp eq i32 %108, %60
  br i1 %110, label %93, label %104, !llvm.loop !37

111:                                              ; preds = %99, %111
  %112 = phi ptr [ %97, %99 ], [ %144, %111 ]
  %113 = phi i32 [ 0, %99 ], [ %143, %111 ]
  %114 = load i32, ptr %100, align 8, !tbaa !22
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %112, i64 8
  %117 = load i32, ptr %116, align 8, !tbaa !30
  %118 = getelementptr inbounds i8, ptr %112, i64 36
  %119 = load i32, ptr %118, align 4, !tbaa !36
  %120 = mul nsw i32 %119, %117
  %121 = sext i32 %120 to i64
  %122 = mul nsw i64 %121, %115
  %123 = load i32, ptr %101, align 8, !tbaa !29
  %124 = shl nsw i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = tail call i64 @jdiv_round_up(i64 noundef %122, i64 noundef %125) #4
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds i8, ptr %112, i64 40
  store i32 %127, ptr %128, align 8, !tbaa !38
  %129 = load i32, ptr %102, align 4, !tbaa !24
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %112, i64 12
  %132 = load i32, ptr %131, align 4, !tbaa !32
  %133 = load i32, ptr %118, align 4, !tbaa !36
  %134 = mul nsw i32 %133, %132
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, %130
  %137 = load i32, ptr %103, align 4, !tbaa !33
  %138 = shl nsw i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = tail call i64 @jdiv_round_up(i64 noundef %136, i64 noundef %139) #4
  %141 = trunc i64 %140 to i32
  %142 = getelementptr inbounds i8, ptr %112, i64 44
  store i32 %141, ptr %142, align 4, !tbaa !39
  %143 = add nuw nsw i32 %113, 1
  %144 = getelementptr inbounds i8, ptr %112, i64 96
  %145 = load i32, ptr %96, align 8, !tbaa !28
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %111, label %147, !llvm.loop !40

147:                                              ; preds = %111, %31, %51, %93
  %148 = phi ptr [ %98, %93 ], [ %46, %31 ], [ %57, %51 ], [ %98, %111 ]
  %149 = phi i32 [ %95, %93 ], [ %49, %31 ], [ %60, %51 ], [ %145, %111 ]
  %150 = getelementptr inbounds i8, ptr %0, i64 64
  %151 = load i32, ptr %150, align 8, !tbaa !41
  %152 = add i32 %151, -1
  %153 = icmp ult i32 %152, 5
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = zext nneg i32 %152 to i64
  %156 = getelementptr inbounds [5 x i32], ptr @switch.table.jpeg_calc_output_dimensions, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4
  br label %158

158:                                              ; preds = %147, %154
  %159 = phi i32 [ %157, %154 ], [ %149, %147 ]
  %160 = getelementptr inbounds i8, ptr %0, i64 144
  store i32 %159, ptr %160, align 8, !tbaa !42
  %161 = getelementptr inbounds i8, ptr %0, i64 108
  %162 = load i32, ptr %161, align 4, !tbaa !43
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 %159, i32 1
  %165 = getelementptr inbounds i8, ptr %0, i64 148
  store i32 %164, ptr %165, align 4, !tbaa !44
  %166 = getelementptr inbounds i8, ptr %0, i64 100
  %167 = load i32, ptr %166, align 4, !tbaa !45
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %225

169:                                              ; preds = %158
  %170 = getelementptr inbounds i8, ptr %0, i64 392
  %171 = load i32, ptr %170, align 8, !tbaa !46
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %225

173:                                              ; preds = %169
  %174 = getelementptr inbounds i8, ptr %0, i64 60
  %175 = load i32, ptr %174, align 4, !tbaa !47
  %176 = icmp eq i32 %175, 3
  %177 = icmp eq i32 %149, 3
  %178 = and i1 %177, %176
  %179 = icmp eq i32 %151, 2
  %180 = and i1 %179, %178
  %181 = icmp eq i32 %159, 3
  %182 = and i1 %180, %181
  br i1 %182, label %183, label %225

183:                                              ; preds = %173
  %184 = load ptr, ptr %148, align 8, !tbaa !27
  %185 = getelementptr inbounds i8, ptr %184, i64 8
  %186 = load i32, ptr %185, align 8, !tbaa !30
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %225

188:                                              ; preds = %183
  %189 = getelementptr inbounds i8, ptr %184, i64 104
  %190 = load i32, ptr %189, align 8, !tbaa !30
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %225

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, ptr %184, i64 200
  %194 = load i32, ptr %193, align 8, !tbaa !30
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %225

196:                                              ; preds = %192
  %197 = getelementptr inbounds i8, ptr %184, i64 12
  %198 = load i32, ptr %197, align 4, !tbaa !32
  %199 = icmp sgt i32 %198, 2
  br i1 %199, label %225, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds i8, ptr %184, i64 108
  %202 = load i32, ptr %201, align 4, !tbaa !32
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %225

204:                                              ; preds = %200
  %205 = getelementptr inbounds i8, ptr %184, i64 204
  %206 = load i32, ptr %205, align 4, !tbaa !32
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %225

208:                                              ; preds = %204
  %209 = getelementptr inbounds i8, ptr %184, i64 36
  %210 = load i32, ptr %209, align 4, !tbaa !36
  %211 = getelementptr inbounds i8, ptr %0, i64 416
  %212 = load i32, ptr %211, align 8, !tbaa !26
  %213 = icmp eq i32 %210, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %208
  %215 = getelementptr inbounds i8, ptr %184, i64 132
  %216 = load i32, ptr %215, align 4, !tbaa !36
  %217 = icmp eq i32 %216, %210
  br i1 %217, label %218, label %225

218:                                              ; preds = %214
  %219 = getelementptr inbounds i8, ptr %184, i64 228
  %220 = load i32, ptr %219, align 4, !tbaa !36
  %221 = icmp eq i32 %220, %210
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = getelementptr inbounds i8, ptr %0, i64 412
  %224 = load i32, ptr %223, align 4, !tbaa !33
  br label %225

225:                                              ; preds = %218, %169, %158, %173, %204, %200, %196, %192, %188, %183, %214, %208, %222
  %226 = phi i32 [ %224, %222 ], [ 1, %208 ], [ 1, %214 ], [ 1, %183 ], [ 1, %188 ], [ 1, %192 ], [ 1, %196 ], [ 1, %200 ], [ 1, %204 ], [ 1, %173 ], [ 1, %158 ], [ 1, %169 ], [ 1, %218 ]
  %227 = getelementptr inbounds i8, ptr %0, i64 152
  store i32 %226, ptr %227, align 8, !tbaa !48
  ret void
}

declare dso_local i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @jpeg_new_colormap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 544
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds i8, ptr %0, i64 36
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 207
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 20, ptr %9, align 8, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 %5, ptr %10, align 4, !tbaa !18
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %12(ptr noundef nonnull %0) #4
  br label %13

13:                                               ; preds = %7, %1
  %14 = getelementptr inbounds i8, ptr %0, i64 108
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %0, i64 128
  %19 = load i32, ptr %18, align 8, !tbaa !50
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %0, i64 160
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %3, i64 40
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = getelementptr inbounds i8, ptr %0, i64 624
  store ptr %27, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds i8, ptr %27, i64 24
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  tail call void %30(ptr noundef nonnull %0) #4
  %31 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 0, ptr %31, align 8, !tbaa !58
  br label %36

32:                                               ; preds = %21, %17, %13
  %33 = load ptr, ptr %0, align 8, !tbaa !14
  %34 = getelementptr inbounds i8, ptr %33, i64 40
  store i32 46, ptr %34, align 8, !tbaa !15
  %35 = load ptr, ptr %33, align 8, !tbaa !19
  tail call void %35(ptr noundef nonnull %0) #4
  br label %36

36:                                               ; preds = %32, %25
  ret void
}

; Function Attrs: nounwind
define dso_local void @jinit_master_decompress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 48) #4
  %6 = getelementptr inbounds i8, ptr %0, i64 544
  store ptr %5, ptr %6, align 8, !tbaa !49
  store ptr @prepare_for_output_pass, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @finish_output_pass, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 0, ptr %8, align 8, !tbaa !58
  tail call void @jpeg_calc_output_dimensions(ptr noundef %0)
  %9 = load ptr, ptr %2, align 8, !tbaa !59
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef signext 1, i64 noundef 1408) #4
  %12 = getelementptr inbounds i8, ptr %11, i64 256
  %13 = getelementptr inbounds i8, ptr %0, i64 424
  store ptr %12, ptr %13, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %11, i8 0, i64 256, i1 false)
  br label %14

14:                                               ; preds = %14, %1
  %15 = phi i64 [ 0, %1 ], [ %18, %14 ]
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds i8, ptr %12, i64 %15
  store i8 %16, ptr %17, align 1, !tbaa !18
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, 256
  br i1 %19, label %20, label %14, !llvm.loop !65

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %11, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(384) %21, i8 -1, i64 384, i1 false), !tbaa !18
  %22 = getelementptr inbounds i8, ptr %11, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(384) %22, i8 0, i64 384, i1 false)
  %23 = getelementptr inbounds i8, ptr %11, i64 1280
  %24 = load ptr, ptr %13, align 8, !tbaa !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %23, ptr noundef nonnull align 1 dereferenceable(128) %24, i64 128, i1 false)
  %25 = getelementptr inbounds i8, ptr %0, i64 136
  %26 = load i32, ptr %25, align 8, !tbaa !23
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %0, i64 144
  %29 = load i32, ptr %28, align 8, !tbaa !42
  %30 = sext i32 %29 to i64
  %31 = mul nsw i64 %30, %27
  %32 = icmp ult i64 %31, 4294967296
  br i1 %32, label %37, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %0, align 8, !tbaa !14
  %35 = getelementptr inbounds i8, ptr %34, i64 40
  store i32 70, ptr %35, align 8, !tbaa !15
  %36 = load ptr, ptr %34, align 8, !tbaa !19
  tail call void %36(ptr noundef nonnull %0) #4
  br label %37

37:                                               ; preds = %33, %20
  %38 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 0, ptr %38, align 8, !tbaa !66
  %39 = getelementptr inbounds i8, ptr %0, i64 100
  %40 = load i32, ptr %39, align 4, !tbaa !45
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %102

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %0, i64 392
  %44 = load i32, ptr %43, align 8, !tbaa !46
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %102

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %0, i64 60
  %48 = load i32, ptr %47, align 4, !tbaa !47
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %102

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %0, i64 56
  %52 = load i32, ptr %51, align 8, !tbaa !28
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %102

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %0, i64 64
  %56 = load i32, ptr %55, align 8, !tbaa !41
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %102

58:                                               ; preds = %54
  %59 = load i32, ptr %28, align 8, !tbaa !42
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %0, i64 304
  %63 = load ptr, ptr %62, align 8, !tbaa !27
  %64 = getelementptr inbounds i8, ptr %63, i64 8
  %65 = load i32, ptr %64, align 8, !tbaa !30
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = getelementptr inbounds i8, ptr %63, i64 104
  %69 = load i32, ptr %68, align 8, !tbaa !30
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %63, i64 200
  %73 = load i32, ptr %72, align 8, !tbaa !30
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = getelementptr inbounds i8, ptr %63, i64 12
  %77 = load i32, ptr %76, align 4, !tbaa !32
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %102, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds i8, ptr %63, i64 108
  %81 = load i32, ptr %80, align 4, !tbaa !32
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %63, i64 204
  %85 = load i32, ptr %84, align 4, !tbaa !32
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %63, i64 36
  %89 = load i32, ptr %88, align 4, !tbaa !36
  %90 = getelementptr inbounds i8, ptr %0, i64 416
  %91 = load i32, ptr %90, align 8, !tbaa !26
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = getelementptr inbounds i8, ptr %63, i64 132
  %95 = load i32, ptr %94, align 4, !tbaa !36
  %96 = icmp eq i32 %95, %89
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = getelementptr inbounds i8, ptr %63, i64 228
  %99 = load i32, ptr %98, align 4, !tbaa !36
  %100 = icmp eq i32 %99, %89
  %101 = zext i1 %100 to i32
  br label %102

102:                                              ; preds = %97, %93, %87, %83, %79, %75, %71, %67, %61, %58, %54, %50, %46, %42, %37
  %103 = phi i32 [ 0, %42 ], [ 0, %37 ], [ 0, %58 ], [ 0, %54 ], [ 0, %50 ], [ 0, %46 ], [ 0, %83 ], [ 0, %79 ], [ 0, %75 ], [ 0, %71 ], [ 0, %67 ], [ 0, %61 ], [ 0, %93 ], [ 0, %87 ], [ %101, %97 ]
  %104 = getelementptr inbounds i8, ptr %5, i64 28
  store i32 %103, ptr %104, align 4, !tbaa !67
  %105 = getelementptr inbounds i8, ptr %5, i64 32
  %106 = getelementptr inbounds i8, ptr %5, i64 40
  %107 = getelementptr inbounds i8, ptr %0, i64 108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  %108 = load i32, ptr %107, align 4, !tbaa !43
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds i8, ptr %0, i64 124
  store i32 0, ptr %111, align 4, !tbaa !68
  %112 = getelementptr inbounds i8, ptr %0, i64 128
  store i32 0, ptr %112, align 8, !tbaa !50
  %113 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 0, ptr %113, align 4, !tbaa !69
  br label %170

114:                                              ; preds = %102
  %115 = getelementptr inbounds i8, ptr %0, i64 88
  %116 = load i32, ptr %115, align 8, !tbaa !70
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds i8, ptr %0, i64 124
  store i32 0, ptr %119, align 4, !tbaa !68
  %120 = getelementptr inbounds i8, ptr %0, i64 128
  store i32 0, ptr %120, align 8, !tbaa !50
  %121 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 0, ptr %121, align 4, !tbaa !69
  br label %122

122:                                              ; preds = %118, %114
  %123 = getelementptr inbounds i8, ptr %0, i64 92
  %124 = load i32, ptr %123, align 4, !tbaa !71
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %0, align 8, !tbaa !14
  %128 = getelementptr inbounds i8, ptr %127, i64 40
  store i32 47, ptr %128, align 8, !tbaa !15
  %129 = load ptr, ptr %127, align 8, !tbaa !19
  tail call void %129(ptr noundef nonnull %0) #4
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i32, ptr %28, align 8, !tbaa !42
  %132 = icmp eq i32 %131, 3
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds i8, ptr %0, i64 124
  store i32 1, ptr %134, align 4, !tbaa !68
  %135 = getelementptr inbounds i8, ptr %0, i64 128
  store i32 0, ptr %135, align 8, !tbaa !50
  %136 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 0, ptr %136, align 4, !tbaa !69
  %137 = getelementptr inbounds i8, ptr %0, i64 160
  store ptr null, ptr %137, align 8, !tbaa !51
  br label %152

138:                                              ; preds = %130
  %139 = getelementptr inbounds i8, ptr %0, i64 160
  %140 = load ptr, ptr %139, align 8, !tbaa !51
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds i8, ptr %0, i64 128
  store i32 1, ptr %143, align 8, !tbaa !50
  br label %152

144:                                              ; preds = %138
  %145 = getelementptr inbounds i8, ptr %0, i64 116
  %146 = load i32, ptr %145, align 4, !tbaa !72
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 1, ptr %149, align 4, !tbaa !69
  br label %152

150:                                              ; preds = %144
  %151 = getelementptr inbounds i8, ptr %0, i64 124
  store i32 1, ptr %151, align 4, !tbaa !68
  br label %152

152:                                              ; preds = %150, %148, %142, %133
  %153 = getelementptr inbounds i8, ptr %0, i64 124
  %154 = load i32, ptr %153, align 4, !tbaa !68
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  tail call void @jinit_1pass_quantizer(ptr noundef nonnull %0) #4
  %157 = getelementptr inbounds i8, ptr %0, i64 624
  %158 = load ptr, ptr %157, align 8, !tbaa !55
  store ptr %158, ptr %105, align 8, !tbaa !73
  br label %159

159:                                              ; preds = %156, %152
  %160 = getelementptr inbounds i8, ptr %0, i64 132
  %161 = load i32, ptr %160, align 4, !tbaa !69
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %0, i64 128
  %165 = load i32, ptr %164, align 8, !tbaa !50
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163, %159
  tail call void @jinit_2pass_quantizer(ptr noundef nonnull %0) #4
  %168 = getelementptr inbounds i8, ptr %0, i64 624
  %169 = load ptr, ptr %168, align 8, !tbaa !55
  store ptr %169, ptr %106, align 8, !tbaa !52
  br label %170

170:                                              ; preds = %167, %163, %110
  %171 = getelementptr inbounds i8, ptr %0, i64 92
  %172 = load i32, ptr %171, align 4, !tbaa !71
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i32, ptr %104, align 4, !tbaa !67
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  tail call void @jinit_merged_upsampler(ptr noundef nonnull %0) #4
  br label %179

178:                                              ; preds = %174
  tail call void @jinit_color_deconverter(ptr noundef nonnull %0) #4
  tail call void @jinit_upsampler(ptr noundef nonnull %0) #4
  br label %179

179:                                              ; preds = %178, %177
  %180 = getelementptr inbounds i8, ptr %0, i64 132
  %181 = load i32, ptr %180, align 4, !tbaa !69
  tail call void @jinit_d_post_controller(ptr noundef nonnull %0, i32 noundef signext %181) #4
  br label %182

182:                                              ; preds = %179, %170
  tail call void @jinit_inverse_dct(ptr noundef nonnull %0) #4
  %183 = getelementptr inbounds i8, ptr %0, i64 316
  %184 = load i32, ptr %183, align 4, !tbaa !74
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load ptr, ptr %0, align 8, !tbaa !14
  %188 = getelementptr inbounds i8, ptr %187, i64 40
  store i32 1, ptr %188, align 8, !tbaa !15
  %189 = load ptr, ptr %187, align 8, !tbaa !19
  tail call void %189(ptr noundef nonnull %0) #4
  br label %196

190:                                              ; preds = %182
  %191 = getelementptr inbounds i8, ptr %0, i64 312
  %192 = load i32, ptr %191, align 8, !tbaa !75
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  tail call void @jinit_phuff_decoder(ptr noundef nonnull %0) #4
  br label %196

195:                                              ; preds = %190
  tail call void @jinit_huff_decoder(ptr noundef nonnull %0) #4
  br label %196

196:                                              ; preds = %195, %194, %186
  %197 = getelementptr inbounds i8, ptr %0, i64 576
  %198 = load ptr, ptr %197, align 8, !tbaa !76
  %199 = getelementptr inbounds i8, ptr %198, i64 32
  %200 = load i32, ptr %199, align 8, !tbaa !77
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = getelementptr inbounds i8, ptr %0, i64 88
  %204 = load i32, ptr %203, align 8, !tbaa !70
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i32
  br label %207

207:                                              ; preds = %202, %196
  %208 = phi i32 [ 1, %196 ], [ %206, %202 ]
  tail call void @jinit_d_coef_controller(ptr noundef nonnull %0, i32 noundef signext %208) #4
  %209 = load i32, ptr %171, align 4, !tbaa !71
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  tail call void @jinit_d_main_controller(ptr noundef nonnull %0, i32 noundef signext 0) #4
  br label %212

212:                                              ; preds = %211, %207
  %213 = load ptr, ptr %2, align 8, !tbaa !59
  %214 = getelementptr inbounds i8, ptr %213, i64 48
  %215 = load ptr, ptr %214, align 8, !tbaa !79
  tail call void %215(ptr noundef nonnull %0) #4
  %216 = load ptr, ptr %197, align 8, !tbaa !76
  %217 = getelementptr inbounds i8, ptr %216, i64 16
  %218 = load ptr, ptr %217, align 8, !tbaa !80
  tail call void %218(ptr noundef nonnull %0) #4
  %219 = getelementptr inbounds i8, ptr %0, i64 16
  %220 = load ptr, ptr %219, align 8, !tbaa !81
  %221 = icmp eq ptr %220, null
  br i1 %221, label %255, label %222

222:                                              ; preds = %212
  %223 = getelementptr inbounds i8, ptr %0, i64 88
  %224 = load i32, ptr %223, align 8, !tbaa !70
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %255

226:                                              ; preds = %222
  %227 = load ptr, ptr %197, align 8, !tbaa !76
  %228 = getelementptr inbounds i8, ptr %227, i64 32
  %229 = load i32, ptr %228, align 8, !tbaa !77
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %255, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds i8, ptr %0, i64 312
  %233 = load i32, ptr %232, align 8, !tbaa !75
  %234 = icmp eq i32 %233, 0
  %235 = getelementptr inbounds i8, ptr %0, i64 56
  %236 = load i32, ptr %235, align 8, !tbaa !28
  %237 = mul nsw i32 %236, 3
  %238 = add nsw i32 %237, 2
  %239 = select i1 %234, i32 %236, i32 %238
  %240 = getelementptr inbounds i8, ptr %220, i64 8
  store i64 0, ptr %240, align 8, !tbaa !82
  %241 = getelementptr inbounds i8, ptr %0, i64 420
  %242 = load i32, ptr %241, align 4, !tbaa !84
  %243 = zext i32 %242 to i64
  %244 = sext i32 %239 to i64
  %245 = mul nsw i64 %244, %243
  %246 = getelementptr inbounds i8, ptr %220, i64 16
  store i64 %245, ptr %246, align 8, !tbaa !85
  %247 = getelementptr inbounds i8, ptr %220, i64 24
  store i32 0, ptr %247, align 8, !tbaa !86
  %248 = getelementptr inbounds i8, ptr %0, i64 132
  %249 = load i32, ptr %248, align 4, !tbaa !69
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %250, i32 2, i32 3
  %252 = getelementptr inbounds i8, ptr %220, i64 28
  store i32 %251, ptr %252, align 4, !tbaa !87
  %253 = load i32, ptr %38, align 8, !tbaa !66
  %254 = add nsw i32 %253, 1
  store i32 %254, ptr %38, align 8, !tbaa !66
  br label %255

255:                                              ; preds = %212, %222, %226, %231
  ret void
}

; Function Attrs: nounwind
define internal void @prepare_for_output_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 544
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  store i32 0, ptr %4, align 8, !tbaa !58
  %8 = getelementptr inbounds i8, ptr %0, i64 624
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  tail call void %10(ptr noundef nonnull %0, i32 noundef signext 0) #4
  %11 = getelementptr inbounds i8, ptr %0, i64 568
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  tail call void %13(ptr noundef nonnull %0, i32 noundef signext 2) #4
  br label %83

14:                                               ; preds = %1
  %15 = getelementptr inbounds i8, ptr %0, i64 108
  %16 = load i32, ptr %15, align 4, !tbaa !43
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %0, i64 160
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %0, i64 116
  %24 = load i32, ptr %23, align 4, !tbaa !72
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %0, i64 132
  %28 = load i32, ptr %27, align 4, !tbaa !69
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %3, i64 40
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = getelementptr inbounds i8, ptr %0, i64 624
  store ptr %32, ptr %33, align 8, !tbaa !55
  store i32 1, ptr %4, align 8, !tbaa !58
  br label %46

34:                                               ; preds = %26, %22
  %35 = getelementptr inbounds i8, ptr %0, i64 124
  %36 = load i32, ptr %35, align 4, !tbaa !68
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %3, i64 32
  %40 = load ptr, ptr %39, align 8, !tbaa !73
  %41 = getelementptr inbounds i8, ptr %0, i64 624
  store ptr %40, ptr %41, align 8, !tbaa !55
  br label %46

42:                                               ; preds = %34
  %43 = load ptr, ptr %0, align 8, !tbaa !14
  %44 = getelementptr inbounds i8, ptr %43, i64 40
  store i32 46, ptr %44, align 8, !tbaa !15
  %45 = load ptr, ptr %43, align 8, !tbaa !19
  tail call void %45(ptr noundef nonnull %0) #4
  br label %46

46:                                               ; preds = %30, %42, %38, %18, %14
  %47 = getelementptr inbounds i8, ptr %0, i64 600
  %48 = load ptr, ptr %47, align 8, !tbaa !92
  %49 = load ptr, ptr %48, align 8, !tbaa !93
  tail call void %49(ptr noundef nonnull %0) #4
  %50 = getelementptr inbounds i8, ptr %0, i64 560
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = getelementptr inbounds i8, ptr %51, i64 16
  %53 = load ptr, ptr %52, align 8, !tbaa !96
  tail call void %53(ptr noundef nonnull %0) #4
  %54 = getelementptr inbounds i8, ptr %0, i64 92
  %55 = load i32, ptr %54, align 4, !tbaa !71
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %46
  %58 = getelementptr inbounds i8, ptr %3, i64 28
  %59 = load i32, ptr %58, align 4, !tbaa !67
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %0, i64 616
  %63 = load ptr, ptr %62, align 8, !tbaa !98
  %64 = load ptr, ptr %63, align 8, !tbaa !99
  tail call void %64(ptr noundef nonnull %0) #4
  br label %65

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds i8, ptr %0, i64 608
  %67 = load ptr, ptr %66, align 8, !tbaa !101
  %68 = load ptr, ptr %67, align 8, !tbaa !102
  tail call void %68(ptr noundef nonnull %0) #4
  %69 = load i32, ptr %15, align 4, !tbaa !43
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds i8, ptr %0, i64 624
  %73 = load ptr, ptr %72, align 8, !tbaa !55
  %74 = load ptr, ptr %73, align 8, !tbaa !88
  %75 = load i32, ptr %4, align 8, !tbaa !58
  tail call void %74(ptr noundef nonnull %0, i32 noundef signext %75) #4
  br label %76

76:                                               ; preds = %71, %65
  %77 = getelementptr inbounds i8, ptr %0, i64 568
  %78 = load ptr, ptr %77, align 8, !tbaa !89
  %79 = load ptr, ptr %78, align 8, !tbaa !90
  %80 = load i32, ptr %4, align 8, !tbaa !58
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 0, i32 3
  tail call void %79(ptr noundef nonnull %0, i32 noundef signext %82) #4
  br label %83

83:                                               ; preds = %7, %76
  %84 = phi i32 [ 0, %76 ], [ 2, %7 ]
  %85 = getelementptr inbounds i8, ptr %0, i64 552
  %86 = load ptr, ptr %85, align 8, !tbaa !104
  %87 = load ptr, ptr %86, align 8, !tbaa !105
  tail call void %87(ptr noundef nonnull %0, i32 noundef signext %84) #4
  br label %88

88:                                               ; preds = %83, %46
  %89 = getelementptr inbounds i8, ptr %0, i64 16
  %90 = load ptr, ptr %89, align 8, !tbaa !81
  %91 = icmp eq ptr %90, null
  br i1 %91, label %116, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %3, i64 24
  %94 = load i32, ptr %93, align 8, !tbaa !66
  %95 = getelementptr inbounds i8, ptr %90, i64 24
  store i32 %94, ptr %95, align 8, !tbaa !86
  %96 = load i32, ptr %4, align 8, !tbaa !58
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 1, i32 2
  %99 = add nsw i32 %98, %94
  %100 = getelementptr inbounds i8, ptr %90, i64 28
  store i32 %99, ptr %100, align 4, !tbaa !87
  %101 = getelementptr inbounds i8, ptr %0, i64 88
  %102 = load i32, ptr %101, align 8, !tbaa !70
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %92
  %105 = getelementptr inbounds i8, ptr %0, i64 576
  %106 = load ptr, ptr %105, align 8, !tbaa !76
  %107 = getelementptr inbounds i8, ptr %106, i64 36
  %108 = load i32, ptr %107, align 4, !tbaa !107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = getelementptr inbounds i8, ptr %0, i64 132
  %112 = load i32, ptr %111, align 4, !tbaa !69
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 1, i32 2
  %115 = add nsw i32 %114, %99
  store i32 %115, ptr %100, align 4, !tbaa !87
  br label %116

116:                                              ; preds = %92, %104, %110, %88
  ret void
}

; Function Attrs: nounwind
define internal void @finish_output_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 544
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds i8, ptr %0, i64 108
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 624
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %9, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  tail call void %11(ptr noundef nonnull %0) #4
  br label %12

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds i8, ptr %3, i64 24
  %14 = load i32, ptr %13, align 8, !tbaa !66
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !66
  ret void
}

declare dso_local void @jinit_1pass_quantizer(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_2pass_quantizer(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_merged_upsampler(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_color_deconverter(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_upsampler(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_d_post_controller(ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @jinit_inverse_dct(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_phuff_decoder(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_huff_decoder(ptr noundef) local_unnamed_addr #1

declare dso_local void @jinit_d_coef_controller(ptr noundef, i32 noundef signext) local_unnamed_addr #1

declare dso_local void @jinit_d_main_controller(ptr noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !11, i64 36}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!7, !8, i64 0}
!15 = !{!16, !11, i64 40}
!16 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !17, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!17 = !{!"long", !9, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!16, !8, i64 0}
!20 = !{!7, !11, i64 68}
!21 = !{!7, !11, i64 72}
!22 = !{!7, !11, i64 48}
!23 = !{!7, !11, i64 136}
!24 = !{!7, !11, i64 52}
!25 = !{!7, !11, i64 140}
!26 = !{!7, !11, i64 416}
!27 = !{!7, !8, i64 304}
!28 = !{!7, !11, i64 56}
!29 = !{!7, !11, i64 408}
!30 = !{!31, !11, i64 8}
!31 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!32 = !{!31, !11, i64 12}
!33 = !{!7, !11, i64 412}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!31, !11, i64 36}
!37 = distinct !{!37, !35}
!38 = !{!31, !11, i64 40}
!39 = !{!31, !11, i64 44}
!40 = distinct !{!40, !35}
!41 = !{!7, !11, i64 64}
!42 = !{!7, !11, i64 144}
!43 = !{!7, !11, i64 108}
!44 = !{!7, !11, i64 148}
!45 = !{!7, !11, i64 100}
!46 = !{!7, !11, i64 392}
!47 = !{!7, !11, i64 60}
!48 = !{!7, !11, i64 152}
!49 = !{!7, !8, i64 544}
!50 = !{!7, !11, i64 128}
!51 = !{!7, !8, i64 160}
!52 = !{!53, !8, i64 40}
!53 = !{!"", !54, i64 0, !11, i64 24, !11, i64 28, !8, i64 32, !8, i64 40}
!54 = !{!"jpeg_decomp_master", !8, i64 0, !8, i64 8, !11, i64 16}
!55 = !{!7, !8, i64 624}
!56 = !{!57, !8, i64 24}
!57 = !{!"jpeg_color_quantizer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!58 = !{!53, !11, i64 16}
!59 = !{!7, !8, i64 8}
!60 = !{!61, !8, i64 0}
!61 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !17, i64 88, !17, i64 96}
!62 = !{!53, !8, i64 0}
!63 = !{!53, !8, i64 8}
!64 = !{!7, !8, i64 424}
!65 = distinct !{!65, !35}
!66 = !{!53, !11, i64 24}
!67 = !{!53, !11, i64 28}
!68 = !{!7, !11, i64 124}
!69 = !{!7, !11, i64 132}
!70 = !{!7, !11, i64 88}
!71 = !{!7, !11, i64 92}
!72 = !{!7, !11, i64 116}
!73 = !{!53, !8, i64 32}
!74 = !{!7, !11, i64 316}
!75 = !{!7, !11, i64 312}
!76 = !{!7, !8, i64 576}
!77 = !{!78, !11, i64 32}
!78 = !{!"jpeg_input_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36}
!79 = !{!61, !8, i64 48}
!80 = !{!78, !8, i64 16}
!81 = !{!7, !8, i64 16}
!82 = !{!83, !17, i64 8}
!83 = !{!"jpeg_progress_mgr", !8, i64 0, !17, i64 8, !17, i64 16, !11, i64 24, !11, i64 28}
!84 = !{!7, !11, i64 420}
!85 = !{!83, !17, i64 16}
!86 = !{!83, !11, i64 24}
!87 = !{!83, !11, i64 28}
!88 = !{!57, !8, i64 0}
!89 = !{!7, !8, i64 568}
!90 = !{!91, !8, i64 0}
!91 = !{!"jpeg_d_post_controller", !8, i64 0, !8, i64 8}
!92 = !{!7, !8, i64 600}
!93 = !{!94, !8, i64 0}
!94 = !{!"jpeg_inverse_dct", !8, i64 0, !9, i64 8}
!95 = !{!7, !8, i64 560}
!96 = !{!97, !8, i64 16}
!97 = !{!"jpeg_d_coef_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!98 = !{!7, !8, i64 616}
!99 = !{!100, !8, i64 0}
!100 = !{!"jpeg_color_deconverter", !8, i64 0, !8, i64 8}
!101 = !{!7, !8, i64 608}
!102 = !{!103, !8, i64 0}
!103 = !{!"jpeg_upsampler", !8, i64 0, !8, i64 8, !11, i64 16}
!104 = !{!7, !8, i64 552}
!105 = !{!106, !8, i64 0}
!106 = !{!"jpeg_d_main_controller", !8, i64 0, !8, i64 8}
!107 = !{!78, !11, i64 36}
!108 = !{!57, !8, i64 16}
