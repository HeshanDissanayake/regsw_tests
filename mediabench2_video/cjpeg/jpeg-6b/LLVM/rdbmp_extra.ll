; ModuleID = 'rdbmp.c'
source_filename = "rdbmp.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local noundef ptr @jinit_read_bmp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 88) #4
  %6 = getelementptr inbounds i8, ptr %5, i64 48
  store ptr %0, ptr %6, align 8, !tbaa !17
  store ptr @start_input_bmp, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @finish_input_bmp, ptr %7, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @start_input_bmp(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [14 x i8], align 1
  %4 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  %5 = getelementptr inbounds i8, ptr %1, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 14, ptr noundef %6)
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !23
  %11 = getelementptr inbounds i8, ptr %10, i64 40
  store i32 43, ptr %11, align 8, !tbaa !24
  %12 = load ptr, ptr %10, align 8, !tbaa !26
  tail call void %12(ptr noundef nonnull %0) #4
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i8, ptr %3, align 1, !tbaa !27
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds i8, ptr %3, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !27
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or disjoint i32 %19, %15
  %21 = icmp eq i32 %20, 19778
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %0, align 8, !tbaa !23
  %24 = getelementptr inbounds i8, ptr %23, i64 40
  store i32 1007, ptr %24, align 8, !tbaa !24
  %25 = load ptr, ptr %23, align 8, !tbaa !26
  tail call void %25(ptr noundef %0) #4
  br label %26

26:                                               ; preds = %22, %13
  %27 = getelementptr inbounds i8, ptr %3, i64 10
  %28 = load i8, ptr %27, align 1, !tbaa !27
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i8, ptr %3, i64 11
  %31 = load i8, ptr %30, align 1, !tbaa !27
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 8
  %34 = or disjoint i64 %33, %29
  %35 = getelementptr inbounds i8, ptr %3, i64 12
  %36 = load i8, ptr %35, align 1, !tbaa !27
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 16
  %39 = or disjoint i64 %34, %38
  %40 = getelementptr inbounds i8, ptr %3, i64 13
  %41 = load i8, ptr %40, align 1, !tbaa !27
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 24
  %44 = or disjoint i64 %39, %43
  %45 = load ptr, ptr %5, align 8, !tbaa !22
  %46 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %45)
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %52, label %48

48:                                               ; preds = %26
  %49 = load ptr, ptr %0, align 8, !tbaa !23
  %50 = getelementptr inbounds i8, ptr %49, i64 40
  store i32 43, ptr %50, align 8, !tbaa !24
  %51 = load ptr, ptr %49, align 8, !tbaa !26
  tail call void %51(ptr noundef nonnull %0) #4
  br label %52

52:                                               ; preds = %48, %26
  %53 = load i8, ptr %4, align 1, !tbaa !27
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i8, ptr %4, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !27
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 8
  %59 = or disjoint i64 %58, %54
  %60 = getelementptr inbounds i8, ptr %4, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !27
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = or disjoint i64 %59, %63
  %65 = getelementptr inbounds i8, ptr %4, i64 3
  %66 = load i8, ptr %65, align 1, !tbaa !27
  %67 = zext i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 24
  %69 = or disjoint i64 %64, %68
  %70 = add nsw i64 %69, -65
  %71 = icmp ult i64 %70, -53
  br i1 %71, label %72, label %76

72:                                               ; preds = %52
  %73 = load ptr, ptr %0, align 8, !tbaa !23
  %74 = getelementptr inbounds i8, ptr %73, i64 40
  store i32 1003, ptr %74, align 8, !tbaa !24
  %75 = load ptr, ptr %73, align 8, !tbaa !26
  tail call void %75(ptr noundef %0) #4
  br label %76

76:                                               ; preds = %52, %72
  %77 = getelementptr inbounds i8, ptr %4, i64 4
  %78 = add nsw i64 %69, -4
  %79 = load ptr, ptr %5, align 8, !tbaa !22
  %80 = call i64 @fread(ptr noundef nonnull %77, i64 noundef 1, i64 noundef %78, ptr noundef %79)
  %81 = icmp eq i64 %80, %78
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %0, align 8, !tbaa !23
  %84 = getelementptr inbounds i8, ptr %83, i64 40
  store i32 43, ptr %84, align 8, !tbaa !24
  %85 = load ptr, ptr %83, align 8, !tbaa !26
  tail call void %85(ptr noundef nonnull %0) #4
  br label %86

86:                                               ; preds = %82, %76
  %87 = trunc nuw i64 %69 to i32
  switch i32 %87, label %324 [
    i32 12, label %88
    i32 40, label %149
    i32 64, label %149
  ]

88:                                               ; preds = %86
  %89 = load i8, ptr %77, align 1, !tbaa !27
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds i8, ptr %4, i64 5
  %92 = load i8, ptr %91, align 1, !tbaa !27
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 8
  %95 = or disjoint i32 %94, %90
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %4, i64 6
  %98 = load i8, ptr %97, align 1, !tbaa !27
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds i8, ptr %4, i64 7
  %101 = load i8, ptr %100, align 1, !tbaa !27
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or disjoint i32 %103, %99
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %4, i64 8
  %107 = load i8, ptr %106, align 1, !tbaa !27
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds i8, ptr %4, i64 9
  %110 = load i8, ptr %109, align 1, !tbaa !27
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = or disjoint i32 %112, %108
  %114 = getelementptr inbounds i8, ptr %4, i64 10
  %115 = load i8, ptr %114, align 1, !tbaa !27
  %116 = zext i8 %115 to i32
  %117 = getelementptr inbounds i8, ptr %4, i64 11
  %118 = load i8, ptr %117, align 1, !tbaa !27
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 8
  %121 = or disjoint i32 %120, %116
  %122 = getelementptr inbounds i8, ptr %1, i64 80
  store i32 %121, ptr %122, align 8, !tbaa !28
  %123 = trunc nuw i32 %121 to i16
  %124 = load ptr, ptr %0, align 8, !tbaa !23
  %125 = getelementptr inbounds i8, ptr %124, i64 40
  switch i16 %123, label %140 [
    i16 8, label %126
    i16 24, label %133
  ]

126:                                              ; preds = %88
  store i32 1011, ptr %125, align 8, !tbaa !24
  %127 = getelementptr inbounds i8, ptr %124, i64 44
  store i32 %95, ptr %127, align 4, !tbaa !27
  %128 = load ptr, ptr %0, align 8, !tbaa !23
  %129 = getelementptr inbounds i8, ptr %128, i64 48
  store i32 %104, ptr %129, align 4, !tbaa !27
  %130 = load ptr, ptr %0, align 8, !tbaa !23
  %131 = getelementptr inbounds i8, ptr %130, i64 8
  %132 = load ptr, ptr %131, align 8, !tbaa !29
  tail call void %132(ptr noundef nonnull %0, i32 noundef signext 1) #4
  br label %142

133:                                              ; preds = %88
  store i32 1010, ptr %125, align 8, !tbaa !24
  %134 = getelementptr inbounds i8, ptr %124, i64 44
  store i32 %95, ptr %134, align 4, !tbaa !27
  %135 = load ptr, ptr %0, align 8, !tbaa !23
  %136 = getelementptr inbounds i8, ptr %135, i64 48
  store i32 %104, ptr %136, align 4, !tbaa !27
  %137 = load ptr, ptr %0, align 8, !tbaa !23
  %138 = getelementptr inbounds i8, ptr %137, i64 8
  %139 = load ptr, ptr %138, align 8, !tbaa !29
  tail call void %139(ptr noundef nonnull %0, i32 noundef signext 1) #4
  br label %142

140:                                              ; preds = %88
  store i32 1002, ptr %125, align 8, !tbaa !24
  %141 = load ptr, ptr %124, align 8, !tbaa !26
  tail call void %141(ptr noundef %0) #4
  br label %142

142:                                              ; preds = %140, %133, %126
  %143 = phi i32 [ 0, %140 ], [ 0, %133 ], [ 3, %126 ]
  %144 = icmp eq i32 %113, 1
  br i1 %144, label %330, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %0, align 8, !tbaa !23
  %147 = getelementptr inbounds i8, ptr %146, i64 40
  store i32 1004, ptr %147, align 8, !tbaa !24
  %148 = load ptr, ptr %146, align 8, !tbaa !26
  tail call void %148(ptr noundef nonnull %0) #4
  br label %330

149:                                              ; preds = %86, %86
  %150 = load i8, ptr %77, align 1, !tbaa !27
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds i8, ptr %4, i64 5
  %153 = load i8, ptr %152, align 1, !tbaa !27
  %154 = zext i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 8
  %156 = or disjoint i64 %155, %151
  %157 = getelementptr inbounds i8, ptr %4, i64 6
  %158 = load i8, ptr %157, align 1, !tbaa !27
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 16
  %161 = or disjoint i64 %156, %160
  %162 = getelementptr inbounds i8, ptr %4, i64 7
  %163 = load i8, ptr %162, align 1, !tbaa !27
  %164 = zext i8 %163 to i64
  %165 = shl nuw nsw i64 %164, 24
  %166 = or disjoint i64 %161, %165
  %167 = getelementptr inbounds i8, ptr %4, i64 8
  %168 = load i8, ptr %167, align 1, !tbaa !27
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds i8, ptr %4, i64 9
  %171 = load i8, ptr %170, align 1, !tbaa !27
  %172 = zext i8 %171 to i64
  %173 = shl nuw nsw i64 %172, 8
  %174 = or disjoint i64 %173, %169
  %175 = getelementptr inbounds i8, ptr %4, i64 10
  %176 = load i8, ptr %175, align 1, !tbaa !27
  %177 = zext i8 %176 to i64
  %178 = shl nuw nsw i64 %177, 16
  %179 = or disjoint i64 %174, %178
  %180 = getelementptr inbounds i8, ptr %4, i64 11
  %181 = load i8, ptr %180, align 1, !tbaa !27
  %182 = zext i8 %181 to i64
  %183 = shl nuw nsw i64 %182, 24
  %184 = or disjoint i64 %179, %183
  %185 = getelementptr inbounds i8, ptr %4, i64 12
  %186 = load i8, ptr %185, align 1, !tbaa !27
  %187 = zext i8 %186 to i32
  %188 = getelementptr inbounds i8, ptr %4, i64 13
  %189 = load i8, ptr %188, align 1, !tbaa !27
  %190 = zext i8 %189 to i32
  %191 = shl nuw nsw i32 %190, 8
  %192 = or disjoint i32 %191, %187
  %193 = getelementptr inbounds i8, ptr %4, i64 14
  %194 = load i8, ptr %193, align 1, !tbaa !27
  %195 = zext i8 %194 to i32
  %196 = getelementptr inbounds i8, ptr %4, i64 15
  %197 = load i8, ptr %196, align 1, !tbaa !27
  %198 = zext i8 %197 to i32
  %199 = shl nuw nsw i32 %198, 8
  %200 = or disjoint i32 %199, %195
  %201 = getelementptr inbounds i8, ptr %1, i64 80
  store i32 %200, ptr %201, align 8, !tbaa !28
  %202 = getelementptr inbounds i8, ptr %4, i64 16
  %203 = load i8, ptr %202, align 1, !tbaa !27
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds i8, ptr %4, i64 17
  %206 = load i8, ptr %205, align 1, !tbaa !27
  %207 = zext i8 %206 to i64
  %208 = shl nuw nsw i64 %207, 8
  %209 = or disjoint i64 %208, %204
  %210 = getelementptr inbounds i8, ptr %4, i64 18
  %211 = load i8, ptr %210, align 1, !tbaa !27
  %212 = zext i8 %211 to i64
  %213 = shl nuw nsw i64 %212, 16
  %214 = or disjoint i64 %209, %213
  %215 = getelementptr inbounds i8, ptr %4, i64 19
  %216 = load i8, ptr %215, align 1, !tbaa !27
  %217 = zext i8 %216 to i64
  %218 = shl nuw nsw i64 %217, 24
  %219 = or disjoint i64 %214, %218
  %220 = getelementptr inbounds i8, ptr %4, i64 24
  %221 = load i8, ptr %220, align 1, !tbaa !27
  %222 = zext i8 %221 to i64
  %223 = getelementptr inbounds i8, ptr %4, i64 25
  %224 = load i8, ptr %223, align 1, !tbaa !27
  %225 = zext i8 %224 to i64
  %226 = shl nuw nsw i64 %225, 8
  %227 = or disjoint i64 %226, %222
  %228 = getelementptr inbounds i8, ptr %4, i64 26
  %229 = load i8, ptr %228, align 1, !tbaa !27
  %230 = zext i8 %229 to i64
  %231 = shl nuw nsw i64 %230, 16
  %232 = or disjoint i64 %227, %231
  %233 = getelementptr inbounds i8, ptr %4, i64 27
  %234 = load i8, ptr %233, align 1, !tbaa !27
  %235 = zext i8 %234 to i64
  %236 = shl nuw nsw i64 %235, 24
  %237 = or disjoint i64 %232, %236
  %238 = getelementptr inbounds i8, ptr %4, i64 28
  %239 = load i8, ptr %238, align 1, !tbaa !27
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds i8, ptr %4, i64 29
  %242 = load i8, ptr %241, align 1, !tbaa !27
  %243 = zext i8 %242 to i64
  %244 = shl nuw nsw i64 %243, 8
  %245 = or disjoint i64 %244, %240
  %246 = getelementptr inbounds i8, ptr %4, i64 30
  %247 = load i8, ptr %246, align 1, !tbaa !27
  %248 = zext i8 %247 to i64
  %249 = shl nuw nsw i64 %248, 16
  %250 = or disjoint i64 %245, %249
  %251 = getelementptr inbounds i8, ptr %4, i64 31
  %252 = load i8, ptr %251, align 1, !tbaa !27
  %253 = zext i8 %252 to i64
  %254 = shl nuw nsw i64 %253, 24
  %255 = or disjoint i64 %250, %254
  %256 = getelementptr inbounds i8, ptr %4, i64 32
  %257 = load i8, ptr %256, align 1, !tbaa !27
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds i8, ptr %4, i64 33
  %260 = load i8, ptr %259, align 1, !tbaa !27
  %261 = zext i8 %260 to i64
  %262 = shl nuw nsw i64 %261, 8
  %263 = or disjoint i64 %262, %258
  %264 = getelementptr inbounds i8, ptr %4, i64 34
  %265 = load i8, ptr %264, align 1, !tbaa !27
  %266 = zext i8 %265 to i64
  %267 = shl nuw nsw i64 %266, 16
  %268 = or disjoint i64 %263, %267
  %269 = getelementptr inbounds i8, ptr %4, i64 35
  %270 = load i8, ptr %269, align 1, !tbaa !27
  %271 = zext i8 %270 to i64
  %272 = shl nuw nsw i64 %271, 24
  %273 = or disjoint i64 %268, %272
  %274 = trunc nuw i32 %200 to i16
  %275 = load ptr, ptr %0, align 8, !tbaa !23
  %276 = getelementptr inbounds i8, ptr %275, i64 40
  switch i16 %274, label %295 [
    i16 8, label %277
    i16 24, label %286
  ]

277:                                              ; preds = %149
  store i32 1009, ptr %276, align 8, !tbaa !24
  %278 = trunc nuw i64 %166 to i32
  %279 = getelementptr inbounds i8, ptr %275, i64 44
  store i32 %278, ptr %279, align 4, !tbaa !27
  %280 = trunc nuw i64 %184 to i32
  %281 = load ptr, ptr %0, align 8, !tbaa !23
  %282 = getelementptr inbounds i8, ptr %281, i64 48
  store i32 %280, ptr %282, align 4, !tbaa !27
  %283 = load ptr, ptr %0, align 8, !tbaa !23
  %284 = getelementptr inbounds i8, ptr %283, i64 8
  %285 = load ptr, ptr %284, align 8, !tbaa !29
  tail call void %285(ptr noundef nonnull %0, i32 noundef signext 1) #4
  br label %297

286:                                              ; preds = %149
  store i32 1008, ptr %276, align 8, !tbaa !24
  %287 = trunc nuw i64 %166 to i32
  %288 = getelementptr inbounds i8, ptr %275, i64 44
  store i32 %287, ptr %288, align 4, !tbaa !27
  %289 = trunc nuw i64 %184 to i32
  %290 = load ptr, ptr %0, align 8, !tbaa !23
  %291 = getelementptr inbounds i8, ptr %290, i64 48
  store i32 %289, ptr %291, align 4, !tbaa !27
  %292 = load ptr, ptr %0, align 8, !tbaa !23
  %293 = getelementptr inbounds i8, ptr %292, i64 8
  %294 = load ptr, ptr %293, align 8, !tbaa !29
  tail call void %294(ptr noundef nonnull %0, i32 noundef signext 1) #4
  br label %297

295:                                              ; preds = %149
  store i32 1002, ptr %276, align 8, !tbaa !24
  %296 = load ptr, ptr %275, align 8, !tbaa !26
  tail call void %296(ptr noundef nonnull %0) #4
  br label %297

297:                                              ; preds = %295, %286, %277
  %298 = phi i32 [ 0, %295 ], [ 0, %286 ], [ 4, %277 ]
  %299 = icmp eq i32 %192, 1
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = load ptr, ptr %0, align 8, !tbaa !23
  %302 = getelementptr inbounds i8, ptr %301, i64 40
  store i32 1004, ptr %302, align 8, !tbaa !24
  %303 = load ptr, ptr %301, align 8, !tbaa !26
  tail call void %303(ptr noundef nonnull %0) #4
  br label %304

304:                                              ; preds = %300, %297
  %305 = icmp eq i64 %219, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %304
  %307 = load ptr, ptr %0, align 8, !tbaa !23
  %308 = getelementptr inbounds i8, ptr %307, i64 40
  store i32 1006, ptr %308, align 8, !tbaa !24
  %309 = load ptr, ptr %307, align 8, !tbaa !26
  tail call void %309(ptr noundef nonnull %0) #4
  br label %310

310:                                              ; preds = %306, %304
  %311 = icmp ne i64 %237, 0
  %312 = icmp ne i64 %255, 0
  %313 = select i1 %311, i1 %312, i1 false
  br i1 %313, label %314, label %330

314:                                              ; preds = %310
  %315 = trunc nuw i64 %237 to i32
  %316 = udiv i32 %315, 100
  %317 = trunc i32 %316 to i16
  %318 = getelementptr inbounds i8, ptr %0, i64 296
  store i16 %317, ptr %318, align 8, !tbaa !30
  %319 = trunc nuw i64 %255 to i32
  %320 = udiv i32 %319, 100
  %321 = trunc i32 %320 to i16
  %322 = getelementptr inbounds i8, ptr %0, i64 298
  store i16 %321, ptr %322, align 2, !tbaa !31
  %323 = getelementptr inbounds i8, ptr %0, i64 294
  store i8 2, ptr %323, align 2, !tbaa !32
  br label %330

324:                                              ; preds = %86
  %325 = load ptr, ptr %0, align 8, !tbaa !23
  %326 = getelementptr inbounds i8, ptr %325, i64 40
  store i32 1003, ptr %326, align 8, !tbaa !24
  %327 = load ptr, ptr %325, align 8, !tbaa !26
  tail call void %327(ptr noundef %0) #4
  %328 = add nsw i64 %44, -14
  %329 = sub nsw i64 %328, %69
  br label %474

330:                                              ; preds = %310, %314, %142, %145
  %331 = phi i64 [ %184, %314 ], [ %184, %310 ], [ %105, %145 ], [ %105, %142 ]
  %332 = phi i64 [ %273, %314 ], [ %273, %310 ], [ 0, %145 ], [ 0, %142 ]
  %333 = phi i32 [ %298, %314 ], [ %298, %310 ], [ %143, %145 ], [ %143, %142 ]
  %334 = phi i64 [ %166, %314 ], [ %166, %310 ], [ %96, %145 ], [ %96, %142 ]
  %335 = add nsw i64 %44, -14
  %336 = sub nsw i64 %335, %69
  %337 = icmp eq i32 %333, 0
  br i1 %337, label %474, label %338

338:                                              ; preds = %330
  %339 = icmp eq i64 %332, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %338
  %341 = icmp ugt i64 %332, 256
  br i1 %341, label %342, label %346

342:                                              ; preds = %340
  %343 = load ptr, ptr %0, align 8, !tbaa !23
  %344 = getelementptr inbounds i8, ptr %343, i64 40
  store i32 1001, ptr %344, align 8, !tbaa !24
  %345 = load ptr, ptr %343, align 8, !tbaa !26
  tail call void %345(ptr noundef nonnull %0) #4
  br label %346

346:                                              ; preds = %338, %340, %342
  %347 = phi i64 [ %332, %342 ], [ %332, %340 ], [ 256, %338 ]
  %348 = getelementptr inbounds i8, ptr %0, i64 8
  %349 = load ptr, ptr %348, align 8, !tbaa !6
  %350 = getelementptr inbounds i8, ptr %349, i64 16
  %351 = load ptr, ptr %350, align 8, !tbaa !33
  %352 = trunc nuw i64 %347 to i32
  %353 = tail call ptr %351(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %352, i32 noundef signext 3) #4
  %354 = getelementptr inbounds i8, ptr %1, i64 56
  store ptr %353, ptr %354, align 8, !tbaa !34
  switch i32 %333, label %464 [
    i32 3, label %360
    i32 4, label %355
  ]

355:                                              ; preds = %346
  %356 = icmp sgt i32 %352, 0
  br i1 %356, label %357, label %470

357:                                              ; preds = %355
  %358 = getelementptr inbounds i8, ptr %1, i64 48
  %359 = and i64 %347, 2147483647
  br label %410

360:                                              ; preds = %346
  %361 = icmp sgt i32 %352, 0
  br i1 %361, label %362, label %470

362:                                              ; preds = %360
  %363 = getelementptr inbounds i8, ptr %1, i64 48
  %364 = and i64 %347, 2147483647
  br label %365

365:                                              ; preds = %403, %362
  %366 = phi i64 [ 0, %362 ], [ %408, %403 ]
  %367 = load ptr, ptr %5, align 8, !tbaa !22
  %368 = tail call signext i32 @getc(ptr noundef %367)
  %369 = icmp eq i32 %368, -1
  br i1 %369, label %370, label %375

370:                                              ; preds = %365
  %371 = load ptr, ptr %363, align 8, !tbaa !17
  %372 = load ptr, ptr %371, align 8, !tbaa !23
  %373 = getelementptr inbounds i8, ptr %372, i64 40
  store i32 43, ptr %373, align 8, !tbaa !24
  %374 = load ptr, ptr %372, align 8, !tbaa !26
  tail call void %374(ptr noundef nonnull %371) #4
  br label %375

375:                                              ; preds = %370, %365
  %376 = trunc i32 %368 to i8
  %377 = load ptr, ptr %354, align 8, !tbaa !34
  %378 = getelementptr inbounds i8, ptr %377, i64 16
  %379 = load ptr, ptr %378, align 8, !tbaa !35
  %380 = getelementptr inbounds i8, ptr %379, i64 %366
  store i8 %376, ptr %380, align 1, !tbaa !27
  %381 = load ptr, ptr %5, align 8, !tbaa !22
  %382 = tail call signext i32 @getc(ptr noundef %381)
  %383 = icmp eq i32 %382, -1
  br i1 %383, label %384, label %389

384:                                              ; preds = %375
  %385 = load ptr, ptr %363, align 8, !tbaa !17
  %386 = load ptr, ptr %385, align 8, !tbaa !23
  %387 = getelementptr inbounds i8, ptr %386, i64 40
  store i32 43, ptr %387, align 8, !tbaa !24
  %388 = load ptr, ptr %386, align 8, !tbaa !26
  tail call void %388(ptr noundef nonnull %385) #4
  br label %389

389:                                              ; preds = %384, %375
  %390 = trunc i32 %382 to i8
  %391 = load ptr, ptr %354, align 8, !tbaa !34
  %392 = getelementptr inbounds i8, ptr %391, i64 8
  %393 = load ptr, ptr %392, align 8, !tbaa !35
  %394 = getelementptr inbounds i8, ptr %393, i64 %366
  store i8 %390, ptr %394, align 1, !tbaa !27
  %395 = load ptr, ptr %5, align 8, !tbaa !22
  %396 = tail call signext i32 @getc(ptr noundef %395)
  %397 = icmp eq i32 %396, -1
  br i1 %397, label %398, label %403

398:                                              ; preds = %389
  %399 = load ptr, ptr %363, align 8, !tbaa !17
  %400 = load ptr, ptr %399, align 8, !tbaa !23
  %401 = getelementptr inbounds i8, ptr %400, i64 40
  store i32 43, ptr %401, align 8, !tbaa !24
  %402 = load ptr, ptr %400, align 8, !tbaa !26
  tail call void %402(ptr noundef nonnull %399) #4
  br label %403

403:                                              ; preds = %398, %389
  %404 = trunc i32 %396 to i8
  %405 = load ptr, ptr %354, align 8, !tbaa !34
  %406 = load ptr, ptr %405, align 8, !tbaa !35
  %407 = getelementptr inbounds i8, ptr %406, i64 %366
  store i8 %404, ptr %407, align 1, !tbaa !27
  %408 = add nuw nsw i64 %366, 1
  %409 = icmp eq i64 %408, %364
  br i1 %409, label %470, label %365

410:                                              ; preds = %461, %357
  %411 = phi i64 [ 0, %357 ], [ %462, %461 ]
  %412 = load ptr, ptr %5, align 8, !tbaa !22
  %413 = tail call signext i32 @getc(ptr noundef %412)
  %414 = icmp eq i32 %413, -1
  br i1 %414, label %415, label %420

415:                                              ; preds = %410
  %416 = load ptr, ptr %358, align 8, !tbaa !17
  %417 = load ptr, ptr %416, align 8, !tbaa !23
  %418 = getelementptr inbounds i8, ptr %417, i64 40
  store i32 43, ptr %418, align 8, !tbaa !24
  %419 = load ptr, ptr %417, align 8, !tbaa !26
  tail call void %419(ptr noundef nonnull %416) #4
  br label %420

420:                                              ; preds = %415, %410
  %421 = trunc i32 %413 to i8
  %422 = load ptr, ptr %354, align 8, !tbaa !34
  %423 = getelementptr inbounds i8, ptr %422, i64 16
  %424 = load ptr, ptr %423, align 8, !tbaa !35
  %425 = getelementptr inbounds i8, ptr %424, i64 %411
  store i8 %421, ptr %425, align 1, !tbaa !27
  %426 = load ptr, ptr %5, align 8, !tbaa !22
  %427 = tail call signext i32 @getc(ptr noundef %426)
  %428 = icmp eq i32 %427, -1
  br i1 %428, label %429, label %434

429:                                              ; preds = %420
  %430 = load ptr, ptr %358, align 8, !tbaa !17
  %431 = load ptr, ptr %430, align 8, !tbaa !23
  %432 = getelementptr inbounds i8, ptr %431, i64 40
  store i32 43, ptr %432, align 8, !tbaa !24
  %433 = load ptr, ptr %431, align 8, !tbaa !26
  tail call void %433(ptr noundef nonnull %430) #4
  br label %434

434:                                              ; preds = %429, %420
  %435 = trunc i32 %427 to i8
  %436 = load ptr, ptr %354, align 8, !tbaa !34
  %437 = getelementptr inbounds i8, ptr %436, i64 8
  %438 = load ptr, ptr %437, align 8, !tbaa !35
  %439 = getelementptr inbounds i8, ptr %438, i64 %411
  store i8 %435, ptr %439, align 1, !tbaa !27
  %440 = load ptr, ptr %5, align 8, !tbaa !22
  %441 = tail call signext i32 @getc(ptr noundef %440)
  %442 = icmp eq i32 %441, -1
  br i1 %442, label %443, label %448

443:                                              ; preds = %434
  %444 = load ptr, ptr %358, align 8, !tbaa !17
  %445 = load ptr, ptr %444, align 8, !tbaa !23
  %446 = getelementptr inbounds i8, ptr %445, i64 40
  store i32 43, ptr %446, align 8, !tbaa !24
  %447 = load ptr, ptr %445, align 8, !tbaa !26
  tail call void %447(ptr noundef nonnull %444) #4
  br label %448

448:                                              ; preds = %443, %434
  %449 = trunc i32 %441 to i8
  %450 = load ptr, ptr %354, align 8, !tbaa !34
  %451 = load ptr, ptr %450, align 8, !tbaa !35
  %452 = getelementptr inbounds i8, ptr %451, i64 %411
  store i8 %449, ptr %452, align 1, !tbaa !27
  %453 = load ptr, ptr %5, align 8, !tbaa !22
  %454 = tail call signext i32 @getc(ptr noundef %453)
  %455 = icmp eq i32 %454, -1
  br i1 %455, label %456, label %461

456:                                              ; preds = %448
  %457 = load ptr, ptr %358, align 8, !tbaa !17
  %458 = load ptr, ptr %457, align 8, !tbaa !23
  %459 = getelementptr inbounds i8, ptr %458, i64 40
  store i32 43, ptr %459, align 8, !tbaa !24
  %460 = load ptr, ptr %458, align 8, !tbaa !26
  tail call void %460(ptr noundef nonnull %457) #4
  br label %461

461:                                              ; preds = %456, %448
  %462 = add nuw nsw i64 %411, 1
  %463 = icmp eq i64 %462, %359
  br i1 %463, label %470, label %410

464:                                              ; preds = %346
  %465 = getelementptr inbounds i8, ptr %1, i64 48
  %466 = load ptr, ptr %465, align 8, !tbaa !17
  %467 = load ptr, ptr %466, align 8, !tbaa !23
  %468 = getelementptr inbounds i8, ptr %467, i64 40
  store i32 1001, ptr %468, align 8, !tbaa !24
  %469 = load ptr, ptr %467, align 8, !tbaa !26
  tail call void %469(ptr noundef nonnull %466) #4
  br label %470

470:                                              ; preds = %461, %403, %355, %360, %464
  %471 = zext nneg i32 %333 to i64
  %472 = mul nuw nsw i64 %347, %471
  %473 = sub nsw i64 %336, %472
  br label %474

474:                                              ; preds = %324, %470, %330
  %475 = phi i64 [ %334, %470 ], [ %334, %330 ], [ 0, %324 ]
  %476 = phi i64 [ %331, %470 ], [ %331, %330 ], [ 0, %324 ]
  %477 = phi i64 [ %473, %470 ], [ %336, %330 ], [ %329, %324 ]
  %478 = icmp slt i64 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %474
  %480 = load ptr, ptr %0, align 8, !tbaa !23
  %481 = getelementptr inbounds i8, ptr %480, i64 40
  store i32 1003, ptr %481, align 8, !tbaa !24
  %482 = load ptr, ptr %480, align 8, !tbaa !26
  tail call void %482(ptr noundef %0) #4
  br label %500

483:                                              ; preds = %474
  %484 = icmp eq i64 %477, 0
  br i1 %484, label %500, label %485

485:                                              ; preds = %483
  %486 = getelementptr inbounds i8, ptr %1, i64 48
  br label %487

487:                                              ; preds = %485, %498
  %488 = phi i64 [ %477, %485 ], [ %489, %498 ]
  %489 = add nsw i64 %488, -1
  %490 = load ptr, ptr %5, align 8, !tbaa !22
  %491 = tail call signext i32 @getc(ptr noundef %490)
  %492 = icmp eq i32 %491, -1
  br i1 %492, label %493, label %498

493:                                              ; preds = %487
  %494 = load ptr, ptr %486, align 8, !tbaa !17
  %495 = load ptr, ptr %494, align 8, !tbaa !23
  %496 = getelementptr inbounds i8, ptr %495, i64 40
  store i32 43, ptr %496, align 8, !tbaa !24
  %497 = load ptr, ptr %495, align 8, !tbaa !26
  tail call void %497(ptr noundef nonnull %494) #4
  br label %498

498:                                              ; preds = %487, %493
  %499 = icmp ugt i64 %488, 1
  br i1 %499, label %487, label %500

500:                                              ; preds = %498, %479, %483
  %501 = getelementptr inbounds i8, ptr %1, i64 80
  %502 = load i32, ptr %501, align 8, !tbaa !28
  %503 = icmp eq i32 %502, 24
  %504 = trunc nuw i64 %475 to i32
  %505 = mul i32 %504, 3
  %506 = select i1 %503, i32 %505, i32 %504
  %507 = sub i32 0, %506
  %508 = and i32 %507, 3
  %509 = add i32 %506, %508
  %510 = getelementptr inbounds i8, ptr %1, i64 76
  store i32 %509, ptr %510, align 4, !tbaa !36
  %511 = getelementptr inbounds i8, ptr %0, i64 8
  %512 = load ptr, ptr %511, align 8, !tbaa !6
  %513 = getelementptr inbounds i8, ptr %512, i64 32
  %514 = load ptr, ptr %513, align 8, !tbaa !37
  %515 = trunc nuw i64 %476 to i32
  %516 = tail call ptr %514(ptr noundef %0, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %509, i32 noundef signext %515, i32 noundef signext 1) #4
  %517 = getelementptr inbounds i8, ptr %1, i64 64
  store ptr %516, ptr %517, align 8, !tbaa !38
  %518 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr @preload_image, ptr %518, align 8, !tbaa !39
  %519 = getelementptr inbounds i8, ptr %0, i64 16
  %520 = load ptr, ptr %519, align 8, !tbaa !40
  %521 = icmp eq ptr %520, null
  br i1 %521, label %526, label %522

522:                                              ; preds = %500
  %523 = getelementptr inbounds i8, ptr %520, i64 36
  %524 = load i32, ptr %523, align 4, !tbaa !41
  %525 = add nsw i32 %524, 1
  store i32 %525, ptr %523, align 4, !tbaa !41
  br label %526

526:                                              ; preds = %522, %500
  %527 = load ptr, ptr %511, align 8, !tbaa !6
  %528 = getelementptr inbounds i8, ptr %527, i64 16
  %529 = load ptr, ptr %528, align 8, !tbaa !33
  %530 = tail call ptr %529(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %505, i32 noundef signext 1) #4
  %531 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr %530, ptr %531, align 8, !tbaa !44
  %532 = getelementptr inbounds i8, ptr %1, i64 40
  store i32 1, ptr %532, align 8, !tbaa !45
  %533 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 2, ptr %533, align 4, !tbaa !46
  %534 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 3, ptr %534, align 8, !tbaa !47
  %535 = getelementptr inbounds i8, ptr %0, i64 72
  store i32 8, ptr %535, align 8, !tbaa !48
  %536 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %504, ptr %536, align 8, !tbaa !49
  %537 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %515, ptr %537, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal void @finish_input_bmp(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define internal signext i32 @preload_image(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds i8, ptr %0, i64 52
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %80, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %6, null
  %12 = getelementptr inbounds i8, ptr %6, i64 8
  %13 = getelementptr inbounds i8, ptr %6, i64 16
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  %15 = getelementptr inbounds i8, ptr %1, i64 64
  %16 = getelementptr inbounds i8, ptr %1, i64 76
  br i1 %11, label %17, label %46

17:                                               ; preds = %10, %42
  %18 = phi i32 [ %43, %42 ], [ 0, %10 ]
  %19 = load ptr, ptr %14, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 56
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = load ptr, ptr %15, align 8, !tbaa !38
  %23 = tail call ptr %21(ptr noundef nonnull %0, ptr noundef %22, i32 noundef signext %18, i32 noundef signext 1, i32 noundef signext 1) #4
  %24 = load i32, ptr %16, align 4, !tbaa !36
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr %23, align 8, !tbaa !35
  br label %28

28:                                               ; preds = %26, %37
  %29 = phi ptr [ %39, %37 ], [ %27, %26 ]
  %30 = phi i32 [ %40, %37 ], [ %24, %26 ]
  %31 = tail call signext i32 @getc(ptr noundef %4)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load ptr, ptr %0, align 8, !tbaa !23
  %35 = getelementptr inbounds i8, ptr %34, i64 40
  store i32 43, ptr %35, align 8, !tbaa !24
  %36 = load ptr, ptr %34, align 8, !tbaa !26
  tail call void %36(ptr noundef nonnull %0) #4
  br label %37

37:                                               ; preds = %33, %28
  %38 = trunc i32 %31 to i8
  %39 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %38, ptr %29, align 1, !tbaa !27
  %40 = add i32 %30, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %28

42:                                               ; preds = %37, %17
  %43 = add nuw i32 %18, 1
  %44 = load i32, ptr %7, align 4, !tbaa !50
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %17, label %80

46:                                               ; preds = %10, %75
  %47 = phi i64 [ %76, %75 ], [ 0, %10 ]
  %48 = phi i32 [ %77, %75 ], [ %8, %10 ]
  store i64 %47, ptr %12, align 8, !tbaa !52
  %49 = zext i32 %48 to i64
  store i64 %49, ptr %13, align 8, !tbaa !53
  %50 = load ptr, ptr %6, align 8, !tbaa !54
  tail call void %50(ptr noundef nonnull %0) #4
  %51 = load ptr, ptr %14, align 8, !tbaa !6
  %52 = getelementptr inbounds i8, ptr %51, i64 56
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = load ptr, ptr %15, align 8, !tbaa !38
  %55 = trunc nuw i64 %47 to i32
  %56 = tail call ptr %53(ptr noundef nonnull %0, ptr noundef %54, i32 noundef signext %55, i32 noundef signext 1, i32 noundef signext 1) #4
  %57 = load i32, ptr %16, align 4, !tbaa !36
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %46
  %60 = load ptr, ptr %56, align 8, !tbaa !35
  br label %61

61:                                               ; preds = %59, %70
  %62 = phi ptr [ %72, %70 ], [ %60, %59 ]
  %63 = phi i32 [ %73, %70 ], [ %57, %59 ]
  %64 = tail call signext i32 @getc(ptr noundef %4)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load ptr, ptr %0, align 8, !tbaa !23
  %68 = getelementptr inbounds i8, ptr %67, i64 40
  store i32 43, ptr %68, align 8, !tbaa !24
  %69 = load ptr, ptr %67, align 8, !tbaa !26
  tail call void %69(ptr noundef nonnull %0) #4
  br label %70

70:                                               ; preds = %66, %61
  %71 = trunc i32 %64 to i8
  %72 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %71, ptr %62, align 1, !tbaa !27
  %73 = add i32 %63, -1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %61

75:                                               ; preds = %70, %46
  %76 = add nuw nsw i64 %47, 1
  %77 = load i32, ptr %7, align 4, !tbaa !50
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %46, label %80

80:                                               ; preds = %75, %42, %2
  %81 = phi i32 [ 0, %2 ], [ %44, %42 ], [ %77, %75 ]
  %82 = icmp eq ptr %6, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds i8, ptr %6, i64 32
  %85 = load i32, ptr %84, align 8, !tbaa !55
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %84, align 8, !tbaa !55
  br label %87

87:                                               ; preds = %83, %80
  %88 = getelementptr inbounds i8, ptr %1, i64 80
  %89 = load i32, ptr %88, align 8, !tbaa !28
  switch i32 %89, label %94 [
    i32 8, label %90
    i32 24, label %92
  ]

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr @get_8bit_row, ptr %91, align 8, !tbaa !39
  br label %101

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr @get_24bit_row, ptr %93, align 8, !tbaa !39
  br label %101

94:                                               ; preds = %87
  %95 = load ptr, ptr %0, align 8, !tbaa !23
  %96 = getelementptr inbounds i8, ptr %95, i64 40
  store i32 1002, ptr %96, align 8, !tbaa !24
  %97 = load ptr, ptr %95, align 8, !tbaa !26
  tail call void %97(ptr noundef nonnull %0) #4
  %98 = load i32, ptr %7, align 4, !tbaa !50
  %99 = getelementptr inbounds i8, ptr %1, i64 8
  %100 = load ptr, ptr %99, align 8, !tbaa !39
  br label %101

101:                                              ; preds = %94, %92, %90
  %102 = phi ptr [ %100, %94 ], [ @get_24bit_row, %92 ], [ @get_8bit_row, %90 ]
  %103 = phi i32 [ %98, %94 ], [ %81, %92 ], [ %81, %90 ]
  %104 = getelementptr inbounds i8, ptr %1, i64 72
  store i32 %103, ptr %104, align 8, !tbaa !56
  %105 = tail call signext i32 %102(ptr noundef nonnull %0, ptr noundef nonnull %1) #4
  ret i32 %105
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define internal noundef signext i32 @get_8bit_row(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 56
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds i8, ptr %1, i64 72
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !56
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 56
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds i8, ptr %1, i64 64
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = tail call ptr %11(ptr noundef %0, ptr noundef %13, i32 noundef signext %7, i32 noundef signext 1, i32 noundef signext 0) #4
  %15 = getelementptr inbounds i8, ptr %0, i64 48
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds i8, ptr %1, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = load ptr, ptr %14, align 8, !tbaa !35
  %23 = getelementptr inbounds i8, ptr %4, i64 8
  %24 = getelementptr inbounds i8, ptr %4, i64 16
  br label %25

25:                                               ; preds = %18, %25
  %26 = phi i32 [ %16, %18 ], [ %44, %25 ]
  %27 = phi ptr [ %21, %18 ], [ %43, %25 ]
  %28 = phi ptr [ %22, %18 ], [ %29, %25 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %28, align 1, !tbaa !27
  %31 = load ptr, ptr %4, align 8, !tbaa !35
  %32 = zext i8 %30 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !27
  %35 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %34, ptr %27, align 1, !tbaa !27
  %36 = load ptr, ptr %23, align 8, !tbaa !35
  %37 = getelementptr inbounds i8, ptr %36, i64 %32
  %38 = load i8, ptr %37, align 1, !tbaa !27
  %39 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %38, ptr %35, align 1, !tbaa !27
  %40 = load ptr, ptr %24, align 8, !tbaa !35
  %41 = getelementptr inbounds i8, ptr %40, i64 %32
  %42 = load i8, ptr %41, align 1, !tbaa !27
  %43 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %42, ptr %39, align 1, !tbaa !27
  %44 = add i32 %26, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %25

46:                                               ; preds = %25, %2
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_24bit_row(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 72
  %4 = load i32, ptr %3, align 8, !tbaa !56
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !56
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 56
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds i8, ptr %1, i64 64
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = tail call ptr %9(ptr noundef %0, ptr noundef %11, i32 noundef signext %5, i32 noundef signext 1, i32 noundef signext 0) #4
  %13 = getelementptr inbounds i8, ptr %0, i64 48
  %14 = load i32, ptr %13, align 8, !tbaa !49
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %1, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = load ptr, ptr %12, align 8, !tbaa !35
  br label %21

21:                                               ; preds = %16, %21
  %22 = phi i32 [ %34, %21 ], [ %14, %16 ]
  %23 = phi ptr [ %33, %21 ], [ %19, %16 ]
  %24 = phi ptr [ %31, %21 ], [ %20, %16 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !27
  %27 = getelementptr inbounds i8, ptr %23, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !27
  %28 = getelementptr inbounds i8, ptr %24, i64 2
  %29 = load i8, ptr %25, align 1, !tbaa !27
  %30 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 %29, ptr %30, align 1, !tbaa !27
  %31 = getelementptr inbounds i8, ptr %24, i64 3
  %32 = load i8, ptr %28, align 1, !tbaa !27
  store i8 %32, ptr %23, align 1, !tbaa !27
  %33 = getelementptr inbounds i8, ptr %23, i64 3
  %34 = add i32 %22, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %21

36:                                               ; preds = %21, %2
  ret i32 1
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nounwind }

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
!17 = !{!18, !8, i64 48}
!18 = !{!"_bmp_source_struct", !19, i64 0, !8, i64 48, !8, i64 56, !8, i64 64, !11, i64 72, !11, i64 76, !11, i64 80}
!19 = !{!"cjpeg_source_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40}
!20 = !{!18, !8, i64 0}
!21 = !{!18, !8, i64 16}
!22 = !{!18, !8, i64 24}
!23 = !{!7, !8, i64 0}
!24 = !{!25, !11, i64 40}
!25 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!26 = !{!25, !8, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!18, !11, i64 80}
!29 = !{!25, !8, i64 8}
!30 = !{!7, !13, i64 296}
!31 = !{!7, !13, i64 298}
!32 = !{!7, !9, i64 294}
!33 = !{!15, !8, i64 16}
!34 = !{!18, !8, i64 56}
!35 = !{!8, !8, i64 0}
!36 = !{!18, !11, i64 76}
!37 = !{!15, !8, i64 32}
!38 = !{!18, !8, i64 64}
!39 = !{!18, !8, i64 8}
!40 = !{!7, !8, i64 16}
!41 = !{!42, !11, i64 36}
!42 = !{!"cdjpeg_progress_mgr", !43, i64 0, !11, i64 32, !11, i64 36, !11, i64 40}
!43 = !{!"jpeg_progress_mgr", !8, i64 0, !16, i64 8, !16, i64 16, !11, i64 24, !11, i64 28}
!44 = !{!18, !8, i64 32}
!45 = !{!18, !11, i64 40}
!46 = !{!7, !11, i64 60}
!47 = !{!7, !11, i64 56}
!48 = !{!7, !11, i64 72}
!49 = !{!7, !11, i64 48}
!50 = !{!7, !11, i64 52}
!51 = !{!15, !8, i64 56}
!52 = !{!42, !16, i64 8}
!53 = !{!42, !16, i64 16}
!54 = !{!42, !8, i64 0}
!55 = !{!42, !11, i64 32}
!56 = !{!18, !11, i64 72}
