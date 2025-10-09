; ModuleID = 'motion.c'
source_filename = "motion.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@height2 = external dso_local local_unnamed_addr global i32, align 4
@width = external dso_local local_unnamed_addr global i32, align 4
@pict_struct = external dso_local local_unnamed_addr global i32, align 4
@quiet = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@pict_type = external dso_local local_unnamed_addr global i32, align 4
@frame_pred_dct = external dso_local local_unnamed_addr global i32, align 4
@height = external dso_local local_unnamed_addr global i32, align 4
@M = external dso_local local_unnamed_addr global i32, align 4
@topfirst = external dso_local local_unnamed_addr global i32, align 4
@width2 = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nofree nounwind
define dso_local void @motion_estimation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, ptr noundef writeonly %10, i32 noundef signext %11, i32 noundef signext %12) local_unnamed_addr #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca [2 x [2 x i32]], align 4
  %81 = alloca [2 x [2 x i32]], align 4
  %82 = load i32, ptr @height2, align 4, !tbaa !6
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %3908

84:                                               ; preds = %13
  %85 = icmp eq i32 %11, 0
  %86 = icmp ne i32 %12, 0
  %87 = load i32, ptr @width, align 4
  br label %88

88:                                               ; preds = %84, %3903
  %89 = phi i32 [ %87, %84 ], [ %3904, %3903 ]
  %90 = phi i32 [ 0, %84 ], [ %3905, %3903 ]
  %91 = phi ptr [ %10, %84 ], [ %3894, %3903 ]
  %92 = icmp sgt i32 %89, 0
  br i1 %92, label %93, label %3892

93:                                               ; preds = %88
  %94 = shl nuw i32 %90, 1
  %95 = or disjoint i32 %94, 16
  %96 = add nsw i32 %90, -1
  %97 = or disjoint i32 %90, 1
  br label %98

98:                                               ; preds = %93, %3886
  %99 = phi i64 [ 0, %93 ], [ %3888, %3886 ]
  %100 = phi i32 [ %89, %93 ], [ %3889, %3886 ]
  %101 = phi ptr [ %91, %93 ], [ %3887, %3886 ]
  %102 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %2241

104:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %50) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %51) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %52) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %53) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %54) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %55) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %56) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %57) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %58) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %59) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %60) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %61) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %62) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %63) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %64) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %65) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %66) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %67) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %68) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %69) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %70) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %71) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %72) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %73) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %74) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %75) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %76) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %77) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %78) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %79) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %80) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %81) #5
  %105 = getelementptr inbounds i8, ptr %4, i64 %99
  %106 = mul nsw i32 %100, %90
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %105, i64 %107
  %109 = sext i32 %100 to i64
  br label %110

110:                                              ; preds = %110, %104
  %111 = phi i32 [ 0, %104 ], [ %209, %110 ]
  %112 = phi i32 [ 0, %104 ], [ %207, %110 ]
  %113 = phi ptr [ %108, %104 ], [ %212, %110 ]
  %114 = phi i32 [ 0, %104 ], [ %213, %110 ]
  %115 = getelementptr inbounds i8, ptr %113, i64 1
  %116 = load i8, ptr %113, align 1, !tbaa !10
  %117 = zext i8 %116 to i32
  %118 = add i32 %112, %117
  %119 = mul nuw nsw i32 %117, %117
  %120 = add i32 %119, %111
  %121 = getelementptr inbounds i8, ptr %113, i64 2
  %122 = load i8, ptr %115, align 1, !tbaa !10
  %123 = zext i8 %122 to i32
  %124 = add i32 %118, %123
  %125 = mul nuw nsw i32 %123, %123
  %126 = add i32 %120, %125
  %127 = getelementptr inbounds i8, ptr %113, i64 3
  %128 = load i8, ptr %121, align 1, !tbaa !10
  %129 = zext i8 %128 to i32
  %130 = add i32 %124, %129
  %131 = mul nuw nsw i32 %129, %129
  %132 = add i32 %126, %131
  %133 = getelementptr inbounds i8, ptr %113, i64 4
  %134 = load i8, ptr %127, align 1, !tbaa !10
  %135 = zext i8 %134 to i32
  %136 = add i32 %130, %135
  %137 = mul nuw nsw i32 %135, %135
  %138 = add i32 %132, %137
  %139 = getelementptr inbounds i8, ptr %113, i64 5
  %140 = load i8, ptr %133, align 1, !tbaa !10
  %141 = zext i8 %140 to i32
  %142 = add i32 %136, %141
  %143 = mul nuw nsw i32 %141, %141
  %144 = add i32 %138, %143
  %145 = getelementptr inbounds i8, ptr %113, i64 6
  %146 = load i8, ptr %139, align 1, !tbaa !10
  %147 = zext i8 %146 to i32
  %148 = add i32 %142, %147
  %149 = mul nuw nsw i32 %147, %147
  %150 = add i32 %144, %149
  %151 = getelementptr inbounds i8, ptr %113, i64 7
  %152 = load i8, ptr %145, align 1, !tbaa !10
  %153 = zext i8 %152 to i32
  %154 = add i32 %148, %153
  %155 = mul nuw nsw i32 %153, %153
  %156 = add i32 %150, %155
  %157 = getelementptr inbounds i8, ptr %113, i64 8
  %158 = load i8, ptr %151, align 1, !tbaa !10
  %159 = zext i8 %158 to i32
  %160 = add i32 %154, %159
  %161 = mul nuw nsw i32 %159, %159
  %162 = add i32 %156, %161
  %163 = getelementptr inbounds i8, ptr %113, i64 9
  %164 = load i8, ptr %157, align 1, !tbaa !10
  %165 = zext i8 %164 to i32
  %166 = add i32 %160, %165
  %167 = mul nuw nsw i32 %165, %165
  %168 = add i32 %162, %167
  %169 = getelementptr inbounds i8, ptr %113, i64 10
  %170 = load i8, ptr %163, align 1, !tbaa !10
  %171 = zext i8 %170 to i32
  %172 = add i32 %166, %171
  %173 = mul nuw nsw i32 %171, %171
  %174 = add i32 %168, %173
  %175 = getelementptr inbounds i8, ptr %113, i64 11
  %176 = load i8, ptr %169, align 1, !tbaa !10
  %177 = zext i8 %176 to i32
  %178 = add i32 %172, %177
  %179 = mul nuw nsw i32 %177, %177
  %180 = add i32 %174, %179
  %181 = getelementptr inbounds i8, ptr %113, i64 12
  %182 = load i8, ptr %175, align 1, !tbaa !10
  %183 = zext i8 %182 to i32
  %184 = add i32 %178, %183
  %185 = mul nuw nsw i32 %183, %183
  %186 = add i32 %180, %185
  %187 = getelementptr inbounds i8, ptr %113, i64 13
  %188 = load i8, ptr %181, align 1, !tbaa !10
  %189 = zext i8 %188 to i32
  %190 = add i32 %184, %189
  %191 = mul nuw nsw i32 %189, %189
  %192 = add i32 %186, %191
  %193 = getelementptr inbounds i8, ptr %113, i64 14
  %194 = load i8, ptr %187, align 1, !tbaa !10
  %195 = zext i8 %194 to i32
  %196 = add i32 %190, %195
  %197 = mul nuw nsw i32 %195, %195
  %198 = add i32 %192, %197
  %199 = getelementptr inbounds i8, ptr %113, i64 15
  %200 = load i8, ptr %193, align 1, !tbaa !10
  %201 = zext i8 %200 to i32
  %202 = add i32 %196, %201
  %203 = mul nuw nsw i32 %201, %201
  %204 = add i32 %198, %203
  %205 = load i8, ptr %199, align 1, !tbaa !10
  %206 = zext i8 %205 to i32
  %207 = add i32 %202, %206
  %208 = mul nuw nsw i32 %206, %206
  %209 = add i32 %204, %208
  %210 = getelementptr i8, ptr %113, i64 16
  %211 = getelementptr i8, ptr %210, i64 %109
  %212 = getelementptr i8, ptr %211, i64 -16
  %213 = add nuw nsw i32 %114, 1
  %214 = icmp eq i32 %213, 16
  br i1 %214, label %215, label %110

215:                                              ; preds = %110
  %216 = mul i32 %207, %207
  %217 = lshr i32 %216, 8
  %218 = sub i32 %209, %217
  %219 = load i32, ptr @pict_type, align 4, !tbaa !6
  switch i32 %219, label %1192 [
    i32 1, label %220
    i32 2, label %221
  ]

220:                                              ; preds = %215
  store i32 1, ptr %101, align 8, !tbaa !11
  br label %2238

221:                                              ; preds = %215
  %222 = load i32, ptr @frame_pred_dct, align 4, !tbaa !6
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %241, label %224

224:                                              ; preds = %221
  %225 = load i32, ptr @height, align 4, !tbaa !6
  %226 = trunc nuw nsw i64 %99 to i32
  %227 = call fastcc signext i32 @fullsearch(ptr noundef readonly %0, ptr noundef readonly %2, ptr noundef readonly %108, i32 noundef signext %100, i32 noundef signext %226, i32 noundef signext %90, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext 16, i32 noundef signext %100, i32 noundef signext %225, ptr noundef nonnull %50, ptr noundef nonnull %51)
  %228 = load i32, ptr %50, align 4, !tbaa !6
  %229 = ashr i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, ptr %2, i64 %230
  %232 = load i32, ptr %51, align 4, !tbaa !6
  %233 = ashr i32 %232, 1
  %234 = mul nsw i32 %233, %100
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, ptr %231, i64 %235
  %237 = and i32 %228, 1
  %238 = and i32 %232, 1
  %239 = tail call fastcc signext i32 @dist2(ptr noundef readonly %236, ptr noundef readonly %108, i32 noundef signext %100, i32 noundef signext %237, i32 noundef signext %238, i32 noundef signext 16)
  %240 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 2, ptr %240, align 4, !tbaa !14
  br label %976

241:                                              ; preds = %221
  %242 = trunc nuw nsw i64 %99 to i32
  call fastcc void @frame_estimate(ptr noundef readonly %0, ptr noundef readonly %2, ptr noundef readonly %108, i32 noundef signext %242, i32 noundef signext %90, i32 noundef signext %6, i32 noundef signext %7, ptr noundef nonnull %50, ptr noundef nonnull %51, ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef nonnull %58, ptr noundef nonnull %59, ptr noundef nonnull %68, ptr noundef nonnull %71, ptr noundef nonnull %74, ptr noundef nonnull %75, ptr noundef nonnull %80, ptr noundef nonnull %81)
  %243 = load i32, ptr @M, align 4, !tbaa !6
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = load i32, ptr %68, align 4, !tbaa !6
  %247 = load i32, ptr %71, align 4, !tbaa !6
  br label %916

248:                                              ; preds = %241
  %249 = load i32, ptr @topfirst, align 4
  %250 = icmp eq i32 %249, 0
  %251 = shl i32 %100, 1
  %252 = add i32 %251, -32
  %253 = load i32, ptr @height, align 4
  %254 = freeze i32 %253
  %255 = add i32 %254, -16
  %256 = getelementptr inbounds i8, ptr %2, i64 %109
  %257 = sext i32 %251 to i64
  %258 = add nsw i32 %251, -16
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, ptr %108, i64 %109
  %261 = zext i32 %249 to i64
  %262 = trunc i64 %99 to i32
  %263 = shl i32 %262, 1
  br label %264

264:                                              ; preds = %677, %248
  %265 = phi i1 [ true, %248 ], [ false, %677 ]
  %266 = phi i64 [ 0, %248 ], [ 1, %677 ]
  %267 = phi i32 [ 1073741824, %248 ], [ %676, %677 ]
  %268 = phi i32 [ undef, %248 ], [ %675, %677 ]
  %269 = phi i32 [ undef, %248 ], [ %674, %677 ]
  %270 = phi i32 [ undef, %248 ], [ %673, %677 ]
  %271 = phi i32 [ undef, %248 ], [ %672, %677 ]
  %272 = phi i32 [ undef, %248 ], [ %671, %677 ]
  %273 = phi i32 [ undef, %248 ], [ %670, %677 ]
  %274 = phi i32 [ undef, %248 ], [ %669, %677 ]
  %275 = phi i32 [ undef, %248 ], [ %668, %677 ]
  br label %276

276:                                              ; preds = %667, %264
  %277 = phi i32 [ 1, %264 ], [ 2147483647, %667 ]
  %278 = phi i1 [ true, %264 ], [ false, %667 ]
  %279 = phi i64 [ 0, %264 ], [ 1, %667 ]
  %280 = phi i32 [ %267, %264 ], [ %676, %667 ]
  %281 = phi i32 [ %268, %264 ], [ %675, %667 ]
  %282 = phi i32 [ %269, %264 ], [ %674, %667 ]
  %283 = phi i32 [ %270, %264 ], [ %673, %667 ]
  %284 = phi i32 [ %271, %264 ], [ %672, %667 ]
  %285 = phi i32 [ %272, %264 ], [ %671, %667 ]
  %286 = phi i32 [ %273, %264 ], [ %670, %667 ]
  %287 = phi i32 [ %274, %264 ], [ %669, %667 ]
  %288 = phi i32 [ %275, %264 ], [ %668, %667 ]
  %289 = getelementptr inbounds [2 x i32], ptr %80, i64 %266, i64 %279
  %290 = load i32, ptr %289, align 4, !tbaa !6
  %291 = sub nsw i32 %290, %263
  %292 = getelementptr inbounds [2 x i32], ptr %81, i64 %266, i64 %279
  %293 = load i32, ptr %292, align 4, !tbaa !6
  %294 = sub nsw i32 %293, %90
  %295 = icmp eq i64 %266, %279
  br i1 %295, label %320, label %296

296:                                              ; preds = %276
  %297 = add i32 %294, %277
  %298 = shl i32 %291, 1
  %299 = shl i32 %297, 1
  %300 = icmp eq i64 %279, %261
  br i1 %300, label %301, label %667

301:                                              ; preds = %296
  %302 = icmp sgt i32 %298, -1
  br i1 %302, label %303, label %306

303:                                              ; preds = %301
  %304 = or disjoint i32 %298, 1
  %305 = udiv i32 %304, 3
  br label %310

306:                                              ; preds = %301
  %307 = sub i32 1, %298
  %308 = udiv i32 %307, 3
  %309 = sub nsw i32 0, %308
  br label %310

310:                                              ; preds = %306, %303
  %311 = phi i32 [ %305, %303 ], [ %309, %306 ]
  %312 = icmp sgt i32 %299, -1
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = or disjoint i32 %299, 1
  %315 = udiv i32 %314, 3
  br label %320

316:                                              ; preds = %310
  %317 = sub i32 1, %299
  %318 = udiv i32 %317, 3
  %319 = sub nsw i32 0, %318
  br label %320

320:                                              ; preds = %316, %313, %276
  %321 = phi i32 [ %291, %276 ], [ %311, %316 ], [ %311, %313 ]
  %322 = phi i32 [ %294, %276 ], [ %319, %316 ], [ %315, %313 ]
  br i1 %250, label %334, label %323

323:                                              ; preds = %320
  %324 = icmp sgt i32 %321, 0
  %325 = zext i1 %324 to i32
  %326 = add nsw i32 %321, %325
  %327 = icmp sgt i32 %322, 0
  %328 = zext i1 %327 to i32
  %329 = add nsw i32 %322, %328
  %330 = mul nsw i32 %321, 3
  %331 = add nsw i32 %330, %325
  %332 = mul nsw i32 %322, 3
  %333 = add nsw i32 %332, %328
  br label %345

334:                                              ; preds = %320
  %335 = mul nsw i32 %321, 3
  %336 = icmp sgt i32 %321, 0
  %337 = zext i1 %336 to i32
  %338 = add nsw i32 %335, %337
  %339 = mul nsw i32 %322, 3
  %340 = icmp sgt i32 %322, 0
  %341 = zext i1 %340 to i32
  %342 = add nsw i32 %339, %341
  %343 = add nsw i32 %321, %337
  %344 = add nsw i32 %322, %341
  br label %345

345:                                              ; preds = %334, %323
  %346 = phi i32 [ %326, %323 ], [ %338, %334 ]
  %347 = phi i32 [ %329, %323 ], [ %342, %334 ]
  %348 = phi i32 [ %331, %323 ], [ %343, %334 ]
  %349 = phi i32 [ %333, %323 ], [ %344, %334 ]
  %350 = ashr i32 %349, 1
  %351 = ashr i32 %348, 1
  %352 = ashr i32 %347, 1
  %353 = ashr i32 %346, 1
  %354 = add nsw i32 %321, %263
  %355 = add nsw i32 %322, %90
  %356 = add nsw i32 %353, %263
  %357 = add nsw i32 %351, %263
  %358 = icmp sgt i32 %354, -1
  br i1 %358, label %359, label %667

359:                                              ; preds = %345
  %360 = icmp sgt i32 %354, %252
  %361 = icmp slt i32 %355, 0
  %362 = icmp sgt i32 %355, %255
  %363 = or i1 %361, %362
  %364 = select i1 %360, i1 true, i1 %363
  br i1 %364, label %667, label %365

365:                                              ; preds = %359
  %366 = add i32 %96, %352
  %367 = add i32 %97, %350
  %368 = lshr i32 %354, 1
  %369 = zext nneg i32 %368 to i64
  %370 = getelementptr inbounds i8, ptr %2, i64 %369
  %371 = lshr i32 %355, 1
  %372 = mul nsw i32 %371, %251
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, ptr %370, i64 %373
  %375 = and i32 %321, 1
  %376 = trunc i32 %322 to i1
  %377 = select i1 %376, i64 %257, i64 0
  %378 = getelementptr inbounds i8, ptr %374, i64 %377
  %379 = zext nneg i32 %375 to i64
  %380 = getelementptr inbounds i8, ptr %378, i64 %379
  %381 = getelementptr inbounds i8, ptr %374, i64 %379
  %382 = getelementptr inbounds i8, ptr %256, i64 %369
  %383 = getelementptr inbounds i8, ptr %382, i64 %373
  %384 = getelementptr inbounds i8, ptr %383, i64 %377
  %385 = getelementptr inbounds i8, ptr %384, i64 %379
  %386 = getelementptr inbounds i8, ptr %383, i64 %379
  br label %387

387:                                              ; preds = %655, %365
  %388 = phi i32 [ %280, %365 ], [ %664, %655 ]
  %389 = phi i32 [ %281, %365 ], [ %663, %655 ]
  %390 = phi i32 [ %282, %365 ], [ %662, %655 ]
  %391 = phi i32 [ %283, %365 ], [ %661, %655 ]
  %392 = phi i32 [ %284, %365 ], [ %660, %655 ]
  %393 = phi i32 [ %285, %365 ], [ %659, %655 ]
  %394 = phi i32 [ %286, %365 ], [ %658, %655 ]
  %395 = phi i32 [ %287, %365 ], [ %657, %655 ]
  %396 = phi i32 [ %288, %365 ], [ %656, %655 ]
  %397 = phi i32 [ -1, %365 ], [ %665, %655 ]
  %398 = add nsw i32 %366, %397
  %399 = freeze i32 %398
  %400 = add nsw i32 %367, %397
  %401 = icmp slt i32 %399, 0
  %402 = lshr i32 %399, 1
  %403 = mul nsw i32 %402, %251
  %404 = sext i32 %403 to i64
  %405 = getelementptr i8, ptr %256, i64 %404
  %406 = trunc i32 %399 to i1
  %407 = select i1 %406, i64 %257, i64 0
  %408 = lshr i32 %400, 1
  %409 = mul nsw i32 %408, %251
  %410 = sext i32 %409 to i64
  %411 = getelementptr i8, ptr %2, i64 %410
  %412 = trunc i32 %400 to i1
  %413 = select i1 %412, i64 %257, i64 0
  %414 = icmp sgt i32 %399, %255
  %415 = or i1 %401, %414
  br i1 %415, label %655, label %416

416:                                              ; preds = %387
  %417 = icmp slt i32 %400, 0
  %418 = icmp sgt i32 %400, %255
  %419 = or i1 %417, %418
  %420 = freeze i1 %419
  br i1 %420, label %655, label %421

421:                                              ; preds = %416, %643
  %422 = phi i32 [ %652, %643 ], [ %388, %416 ]
  %423 = phi i32 [ %651, %643 ], [ %389, %416 ]
  %424 = phi i32 [ %650, %643 ], [ %390, %416 ]
  %425 = phi i32 [ %649, %643 ], [ %391, %416 ]
  %426 = phi i32 [ %648, %643 ], [ %392, %416 ]
  %427 = phi i32 [ %647, %643 ], [ %393, %416 ]
  %428 = phi i32 [ %646, %643 ], [ %394, %416 ]
  %429 = phi i32 [ %645, %643 ], [ %395, %416 ]
  %430 = phi i32 [ %644, %643 ], [ %396, %416 ]
  %431 = phi i32 [ %653, %643 ], [ -1, %416 ]
  %432 = add nsw i32 %356, %431
  %433 = add nsw i32 %357, %431
  %434 = icmp slt i32 %432, 0
  %435 = icmp sgt i32 %432, %252
  %436 = or i1 %434, %435
  %437 = icmp slt i32 %433, 0
  %438 = icmp ugt i32 %433, %252
  %439 = or i1 %437, %438
  %440 = select i1 %436, i1 true, i1 %439
  br i1 %440, label %643, label %441

441:                                              ; preds = %421
  %442 = lshr i32 %432, 1
  %443 = zext nneg i32 %442 to i64
  %444 = getelementptr i8, ptr %405, i64 %443
  %445 = and i32 %432, 1
  %446 = getelementptr inbounds i8, ptr %444, i64 %407
  %447 = zext nneg i32 %445 to i64
  %448 = getelementptr inbounds i8, ptr %446, i64 %447
  %449 = getelementptr inbounds i8, ptr %444, i64 %447
  br label %450

450:                                              ; preds = %519, %441
  %451 = phi ptr [ %374, %441 ], [ %530, %519 ]
  %452 = phi i32 [ 0, %441 ], [ %516, %519 ]
  %453 = phi i32 [ 0, %441 ], [ %538, %519 ]
  %454 = phi ptr [ %448, %441 ], [ %537, %519 ]
  %455 = phi ptr [ %446, %441 ], [ %536, %519 ]
  %456 = phi ptr [ %449, %441 ], [ %535, %519 ]
  %457 = phi ptr [ %380, %441 ], [ %533, %519 ]
  %458 = phi ptr [ %378, %441 ], [ %532, %519 ]
  %459 = phi ptr [ %381, %441 ], [ %531, %519 ]
  %460 = phi ptr [ %444, %441 ], [ %534, %519 ]
  %461 = phi ptr [ %108, %441 ], [ %529, %519 ]
  br label %462

462:                                              ; preds = %462, %450
  %463 = phi ptr [ %451, %450 ], [ %474, %462 ]
  %464 = phi i32 [ %452, %450 ], [ %516, %462 ]
  %465 = phi i32 [ 0, %450 ], [ %517, %462 ]
  %466 = phi ptr [ %454, %450 ], [ %500, %462 ]
  %467 = phi ptr [ %455, %450 ], [ %497, %462 ]
  %468 = phi ptr [ %456, %450 ], [ %494, %462 ]
  %469 = phi ptr [ %457, %450 ], [ %483, %462 ]
  %470 = phi ptr [ %458, %450 ], [ %480, %462 ]
  %471 = phi ptr [ %459, %450 ], [ %477, %462 ]
  %472 = phi ptr [ %460, %450 ], [ %491, %462 ]
  %473 = phi ptr [ %461, %450 ], [ %511, %462 ]
  %474 = getelementptr inbounds i8, ptr %463, i64 1
  %475 = load i8, ptr %463, align 1, !tbaa !10
  %476 = zext i8 %475 to i32
  %477 = getelementptr inbounds i8, ptr %471, i64 1
  %478 = load i8, ptr %471, align 1, !tbaa !10
  %479 = zext i8 %478 to i32
  %480 = getelementptr inbounds i8, ptr %470, i64 1
  %481 = load i8, ptr %470, align 1, !tbaa !10
  %482 = zext i8 %481 to i32
  %483 = getelementptr inbounds i8, ptr %469, i64 1
  %484 = load i8, ptr %469, align 1, !tbaa !10
  %485 = zext i8 %484 to i32
  %486 = add nuw nsw i32 %476, 2
  %487 = add nuw nsw i32 %486, %479
  %488 = add nuw nsw i32 %487, %482
  %489 = add nuw nsw i32 %488, %485
  %490 = lshr i32 %489, 2
  %491 = getelementptr inbounds i8, ptr %472, i64 1
  %492 = load i8, ptr %472, align 1, !tbaa !10
  %493 = zext i8 %492 to i32
  %494 = getelementptr inbounds i8, ptr %468, i64 1
  %495 = load i8, ptr %468, align 1, !tbaa !10
  %496 = zext i8 %495 to i32
  %497 = getelementptr inbounds i8, ptr %467, i64 1
  %498 = load i8, ptr %467, align 1, !tbaa !10
  %499 = zext i8 %498 to i32
  %500 = getelementptr inbounds i8, ptr %466, i64 1
  %501 = load i8, ptr %466, align 1, !tbaa !10
  %502 = zext i8 %501 to i32
  %503 = add nuw nsw i32 %493, 2
  %504 = add nuw nsw i32 %503, %496
  %505 = add nuw nsw i32 %504, %499
  %506 = add nuw nsw i32 %505, %502
  %507 = lshr i32 %506, 2
  %508 = add nuw nsw i32 %490, 1
  %509 = add nuw nsw i32 %508, %507
  %510 = lshr i32 %509, 1
  %511 = getelementptr inbounds i8, ptr %473, i64 1
  %512 = load i8, ptr %473, align 1, !tbaa !10
  %513 = zext i8 %512 to i32
  %514 = sub nsw i32 %510, %513
  %515 = mul nsw i32 %514, %514
  %516 = add nsw i32 %515, %464
  %517 = add nuw nsw i32 %465, 1
  %518 = icmp eq i32 %517, 16
  br i1 %518, label %519, label %462

519:                                              ; preds = %462
  %520 = getelementptr i8, ptr %459, i64 16
  %521 = getelementptr i8, ptr %456, i64 16
  %522 = getelementptr i8, ptr %457, i64 16
  %523 = getelementptr i8, ptr %454, i64 16
  %524 = getelementptr i8, ptr %451, i64 16
  %525 = getelementptr i8, ptr %458, i64 16
  %526 = getelementptr i8, ptr %460, i64 16
  %527 = getelementptr i8, ptr %455, i64 16
  %528 = getelementptr i8, ptr %461, i64 16
  %529 = getelementptr inbounds i8, ptr %528, i64 %259
  %530 = getelementptr inbounds i8, ptr %524, i64 %259
  %531 = getelementptr inbounds i8, ptr %520, i64 %259
  %532 = getelementptr inbounds i8, ptr %525, i64 %259
  %533 = getelementptr inbounds i8, ptr %522, i64 %259
  %534 = getelementptr inbounds i8, ptr %526, i64 %259
  %535 = getelementptr inbounds i8, ptr %521, i64 %259
  %536 = getelementptr inbounds i8, ptr %527, i64 %259
  %537 = getelementptr inbounds i8, ptr %523, i64 %259
  %538 = add nuw nsw i32 %453, 1
  %539 = icmp eq i32 %538, 8
  br i1 %539, label %540, label %450

540:                                              ; preds = %519
  %541 = lshr i32 %433, 1
  %542 = zext nneg i32 %541 to i64
  %543 = getelementptr i8, ptr %411, i64 %542
  %544 = and i32 %433, 1
  %545 = getelementptr inbounds i8, ptr %543, i64 %413
  %546 = zext nneg i32 %544 to i64
  %547 = getelementptr inbounds i8, ptr %545, i64 %546
  %548 = getelementptr inbounds i8, ptr %543, i64 %546
  br label %549

549:                                              ; preds = %618, %540
  %550 = phi ptr [ %383, %540 ], [ %629, %618 ]
  %551 = phi i32 [ 0, %540 ], [ %615, %618 ]
  %552 = phi i32 [ 0, %540 ], [ %637, %618 ]
  %553 = phi ptr [ %547, %540 ], [ %636, %618 ]
  %554 = phi ptr [ %545, %540 ], [ %635, %618 ]
  %555 = phi ptr [ %548, %540 ], [ %634, %618 ]
  %556 = phi ptr [ %385, %540 ], [ %632, %618 ]
  %557 = phi ptr [ %384, %540 ], [ %631, %618 ]
  %558 = phi ptr [ %386, %540 ], [ %630, %618 ]
  %559 = phi ptr [ %543, %540 ], [ %633, %618 ]
  %560 = phi ptr [ %260, %540 ], [ %628, %618 ]
  br label %561

561:                                              ; preds = %561, %549
  %562 = phi ptr [ %550, %549 ], [ %573, %561 ]
  %563 = phi i32 [ %551, %549 ], [ %615, %561 ]
  %564 = phi i32 [ 0, %549 ], [ %616, %561 ]
  %565 = phi ptr [ %553, %549 ], [ %599, %561 ]
  %566 = phi ptr [ %554, %549 ], [ %596, %561 ]
  %567 = phi ptr [ %555, %549 ], [ %593, %561 ]
  %568 = phi ptr [ %556, %549 ], [ %582, %561 ]
  %569 = phi ptr [ %557, %549 ], [ %579, %561 ]
  %570 = phi ptr [ %558, %549 ], [ %576, %561 ]
  %571 = phi ptr [ %559, %549 ], [ %590, %561 ]
  %572 = phi ptr [ %560, %549 ], [ %610, %561 ]
  %573 = getelementptr inbounds i8, ptr %562, i64 1
  %574 = load i8, ptr %562, align 1, !tbaa !10
  %575 = zext i8 %574 to i32
  %576 = getelementptr inbounds i8, ptr %570, i64 1
  %577 = load i8, ptr %570, align 1, !tbaa !10
  %578 = zext i8 %577 to i32
  %579 = getelementptr inbounds i8, ptr %569, i64 1
  %580 = load i8, ptr %569, align 1, !tbaa !10
  %581 = zext i8 %580 to i32
  %582 = getelementptr inbounds i8, ptr %568, i64 1
  %583 = load i8, ptr %568, align 1, !tbaa !10
  %584 = zext i8 %583 to i32
  %585 = add nuw nsw i32 %575, 2
  %586 = add nuw nsw i32 %585, %578
  %587 = add nuw nsw i32 %586, %581
  %588 = add nuw nsw i32 %587, %584
  %589 = lshr i32 %588, 2
  %590 = getelementptr inbounds i8, ptr %571, i64 1
  %591 = load i8, ptr %571, align 1, !tbaa !10
  %592 = zext i8 %591 to i32
  %593 = getelementptr inbounds i8, ptr %567, i64 1
  %594 = load i8, ptr %567, align 1, !tbaa !10
  %595 = zext i8 %594 to i32
  %596 = getelementptr inbounds i8, ptr %566, i64 1
  %597 = load i8, ptr %566, align 1, !tbaa !10
  %598 = zext i8 %597 to i32
  %599 = getelementptr inbounds i8, ptr %565, i64 1
  %600 = load i8, ptr %565, align 1, !tbaa !10
  %601 = zext i8 %600 to i32
  %602 = add nuw nsw i32 %592, 2
  %603 = add nuw nsw i32 %602, %595
  %604 = add nuw nsw i32 %603, %598
  %605 = add nuw nsw i32 %604, %601
  %606 = lshr i32 %605, 2
  %607 = add nuw nsw i32 %589, 1
  %608 = add nuw nsw i32 %607, %606
  %609 = lshr i32 %608, 1
  %610 = getelementptr inbounds i8, ptr %572, i64 1
  %611 = load i8, ptr %572, align 1, !tbaa !10
  %612 = zext i8 %611 to i32
  %613 = sub nsw i32 %609, %612
  %614 = mul nsw i32 %613, %613
  %615 = add nsw i32 %614, %563
  %616 = add nuw nsw i32 %564, 1
  %617 = icmp eq i32 %616, 16
  br i1 %617, label %618, label %561

618:                                              ; preds = %561
  %619 = getelementptr i8, ptr %558, i64 16
  %620 = getelementptr i8, ptr %555, i64 16
  %621 = getelementptr i8, ptr %556, i64 16
  %622 = getelementptr i8, ptr %553, i64 16
  %623 = getelementptr i8, ptr %550, i64 16
  %624 = getelementptr i8, ptr %557, i64 16
  %625 = getelementptr i8, ptr %559, i64 16
  %626 = getelementptr i8, ptr %554, i64 16
  %627 = getelementptr i8, ptr %560, i64 16
  %628 = getelementptr inbounds i8, ptr %627, i64 %259
  %629 = getelementptr inbounds i8, ptr %623, i64 %259
  %630 = getelementptr inbounds i8, ptr %619, i64 %259
  %631 = getelementptr inbounds i8, ptr %624, i64 %259
  %632 = getelementptr inbounds i8, ptr %621, i64 %259
  %633 = getelementptr inbounds i8, ptr %625, i64 %259
  %634 = getelementptr inbounds i8, ptr %620, i64 %259
  %635 = getelementptr inbounds i8, ptr %626, i64 %259
  %636 = getelementptr inbounds i8, ptr %622, i64 %259
  %637 = add nuw nsw i32 %552, 1
  %638 = icmp eq i32 %637, 8
  br i1 %638, label %639, label %549

639:                                              ; preds = %618
  %640 = add nsw i32 %615, %516
  %641 = icmp slt i32 %640, %422
  br i1 %641, label %642, label %643

642:                                              ; preds = %639
  br label %643

643:                                              ; preds = %642, %639, %421
  %644 = phi i32 [ %354, %642 ], [ %430, %639 ], [ %430, %421 ]
  %645 = phi i32 [ %355, %642 ], [ %429, %639 ], [ %429, %421 ]
  %646 = phi i32 [ %432, %642 ], [ %428, %639 ], [ %428, %421 ]
  %647 = phi i32 [ %399, %642 ], [ %427, %639 ], [ %427, %421 ]
  %648 = phi i32 [ %433, %642 ], [ %426, %639 ], [ %426, %421 ]
  %649 = phi i32 [ %400, %642 ], [ %425, %639 ], [ %425, %421 ]
  %650 = phi i32 [ %431, %642 ], [ %424, %639 ], [ %424, %421 ]
  %651 = phi i32 [ %397, %642 ], [ %423, %639 ], [ %423, %421 ]
  %652 = phi i32 [ %640, %642 ], [ %422, %639 ], [ %422, %421 ]
  %653 = add nsw i32 %431, 1
  %654 = icmp eq i32 %653, 2
  br i1 %654, label %655, label %421

655:                                              ; preds = %643, %416, %387
  %656 = phi i32 [ %396, %387 ], [ %396, %416 ], [ %644, %643 ]
  %657 = phi i32 [ %395, %387 ], [ %395, %416 ], [ %645, %643 ]
  %658 = phi i32 [ %394, %387 ], [ %394, %416 ], [ %646, %643 ]
  %659 = phi i32 [ %393, %387 ], [ %393, %416 ], [ %647, %643 ]
  %660 = phi i32 [ %392, %387 ], [ %392, %416 ], [ %648, %643 ]
  %661 = phi i32 [ %391, %387 ], [ %391, %416 ], [ %649, %643 ]
  %662 = phi i32 [ %390, %387 ], [ %390, %416 ], [ %650, %643 ]
  %663 = phi i32 [ %389, %387 ], [ %389, %416 ], [ %651, %643 ]
  %664 = phi i32 [ %388, %387 ], [ %388, %416 ], [ %652, %643 ]
  %665 = add nsw i32 %397, 1
  %666 = icmp eq i32 %665, 2
  br i1 %666, label %667, label %387

667:                                              ; preds = %655, %359, %345, %296
  %668 = phi i32 [ %288, %359 ], [ %288, %345 ], [ %288, %296 ], [ %656, %655 ]
  %669 = phi i32 [ %287, %359 ], [ %287, %345 ], [ %287, %296 ], [ %657, %655 ]
  %670 = phi i32 [ %286, %359 ], [ %286, %345 ], [ %286, %296 ], [ %658, %655 ]
  %671 = phi i32 [ %285, %359 ], [ %285, %345 ], [ %285, %296 ], [ %659, %655 ]
  %672 = phi i32 [ %284, %359 ], [ %284, %345 ], [ %284, %296 ], [ %660, %655 ]
  %673 = phi i32 [ %283, %359 ], [ %283, %345 ], [ %283, %296 ], [ %661, %655 ]
  %674 = phi i32 [ %282, %359 ], [ %282, %345 ], [ %282, %296 ], [ %662, %655 ]
  %675 = phi i32 [ %281, %359 ], [ %281, %345 ], [ %281, %296 ], [ %663, %655 ]
  %676 = phi i32 [ %280, %359 ], [ %280, %345 ], [ %280, %296 ], [ %664, %655 ]
  br i1 %278, label %276, label %677

677:                                              ; preds = %667
  br i1 %265, label %264, label %678

678:                                              ; preds = %677
  %679 = ashr i32 %668, 1
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i8, ptr %2, i64 %680
  %682 = ashr i32 %669, 1
  %683 = mul nsw i32 %682, %251
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i8, ptr %681, i64 %684
  %686 = ashr i32 %670, 1
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i8, ptr %256, i64 %687
  %689 = ashr i32 %671, 1
  %690 = mul nsw i32 %689, %251
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i8, ptr %688, i64 %691
  %693 = and i32 %668, 1
  %694 = and i32 %670, 1
  %695 = trunc i32 %671 to i1
  %696 = select i1 %695, i64 %257, i64 0
  %697 = getelementptr inbounds i8, ptr %692, i64 %696
  %698 = zext nneg i32 %694 to i64
  %699 = getelementptr inbounds i8, ptr %697, i64 %698
  %700 = getelementptr inbounds i8, ptr %692, i64 %698
  %701 = trunc i32 %669 to i1
  %702 = select i1 %701, i64 %257, i64 0
  %703 = getelementptr inbounds i8, ptr %685, i64 %702
  %704 = zext nneg i32 %693 to i64
  %705 = getelementptr inbounds i8, ptr %703, i64 %704
  %706 = getelementptr inbounds i8, ptr %685, i64 %704
  br label %707

707:                                              ; preds = %776, %678
  %708 = phi ptr [ %685, %678 ], [ %787, %776 ]
  %709 = phi i32 [ 0, %678 ], [ %773, %776 ]
  %710 = phi i32 [ 0, %678 ], [ %795, %776 ]
  %711 = phi ptr [ %699, %678 ], [ %794, %776 ]
  %712 = phi ptr [ %697, %678 ], [ %793, %776 ]
  %713 = phi ptr [ %700, %678 ], [ %792, %776 ]
  %714 = phi ptr [ %705, %678 ], [ %790, %776 ]
  %715 = phi ptr [ %703, %678 ], [ %789, %776 ]
  %716 = phi ptr [ %706, %678 ], [ %788, %776 ]
  %717 = phi ptr [ %692, %678 ], [ %791, %776 ]
  %718 = phi ptr [ %108, %678 ], [ %786, %776 ]
  br label %719

719:                                              ; preds = %719, %707
  %720 = phi ptr [ %708, %707 ], [ %731, %719 ]
  %721 = phi i32 [ %709, %707 ], [ %773, %719 ]
  %722 = phi i32 [ 0, %707 ], [ %774, %719 ]
  %723 = phi ptr [ %711, %707 ], [ %757, %719 ]
  %724 = phi ptr [ %712, %707 ], [ %754, %719 ]
  %725 = phi ptr [ %713, %707 ], [ %751, %719 ]
  %726 = phi ptr [ %714, %707 ], [ %740, %719 ]
  %727 = phi ptr [ %715, %707 ], [ %737, %719 ]
  %728 = phi ptr [ %716, %707 ], [ %734, %719 ]
  %729 = phi ptr [ %717, %707 ], [ %748, %719 ]
  %730 = phi ptr [ %718, %707 ], [ %768, %719 ]
  %731 = getelementptr inbounds i8, ptr %720, i64 1
  %732 = load i8, ptr %720, align 1, !tbaa !10
  %733 = zext i8 %732 to i32
  %734 = getelementptr inbounds i8, ptr %728, i64 1
  %735 = load i8, ptr %728, align 1, !tbaa !10
  %736 = zext i8 %735 to i32
  %737 = getelementptr inbounds i8, ptr %727, i64 1
  %738 = load i8, ptr %727, align 1, !tbaa !10
  %739 = zext i8 %738 to i32
  %740 = getelementptr inbounds i8, ptr %726, i64 1
  %741 = load i8, ptr %726, align 1, !tbaa !10
  %742 = zext i8 %741 to i32
  %743 = add nuw nsw i32 %733, 2
  %744 = add nuw nsw i32 %743, %736
  %745 = add nuw nsw i32 %744, %739
  %746 = add nuw nsw i32 %745, %742
  %747 = lshr i32 %746, 2
  %748 = getelementptr inbounds i8, ptr %729, i64 1
  %749 = load i8, ptr %729, align 1, !tbaa !10
  %750 = zext i8 %749 to i32
  %751 = getelementptr inbounds i8, ptr %725, i64 1
  %752 = load i8, ptr %725, align 1, !tbaa !10
  %753 = zext i8 %752 to i32
  %754 = getelementptr inbounds i8, ptr %724, i64 1
  %755 = load i8, ptr %724, align 1, !tbaa !10
  %756 = zext i8 %755 to i32
  %757 = getelementptr inbounds i8, ptr %723, i64 1
  %758 = load i8, ptr %723, align 1, !tbaa !10
  %759 = zext i8 %758 to i32
  %760 = add nuw nsw i32 %750, 2
  %761 = add nuw nsw i32 %760, %753
  %762 = add nuw nsw i32 %761, %756
  %763 = add nuw nsw i32 %762, %759
  %764 = lshr i32 %763, 2
  %765 = add nuw nsw i32 %747, 1
  %766 = add nuw nsw i32 %765, %764
  %767 = lshr i32 %766, 1
  %768 = getelementptr inbounds i8, ptr %730, i64 1
  %769 = load i8, ptr %730, align 1, !tbaa !10
  %770 = zext i8 %769 to i32
  %771 = sub nsw i32 %767, %770
  %772 = tail call i32 @llvm.abs.i32(i32 %771, i1 true)
  %773 = add i32 %772, %721
  %774 = add nuw nsw i32 %722, 1
  %775 = icmp eq i32 %774, 16
  br i1 %775, label %776, label %719

776:                                              ; preds = %719
  %777 = getelementptr i8, ptr %716, i64 16
  %778 = getelementptr i8, ptr %713, i64 16
  %779 = getelementptr i8, ptr %714, i64 16
  %780 = getelementptr i8, ptr %711, i64 16
  %781 = getelementptr i8, ptr %708, i64 16
  %782 = getelementptr i8, ptr %715, i64 16
  %783 = getelementptr i8, ptr %717, i64 16
  %784 = getelementptr i8, ptr %712, i64 16
  %785 = getelementptr i8, ptr %718, i64 16
  %786 = getelementptr inbounds i8, ptr %785, i64 %259
  %787 = getelementptr inbounds i8, ptr %781, i64 %259
  %788 = getelementptr inbounds i8, ptr %777, i64 %259
  %789 = getelementptr inbounds i8, ptr %782, i64 %259
  %790 = getelementptr inbounds i8, ptr %779, i64 %259
  %791 = getelementptr inbounds i8, ptr %783, i64 %259
  %792 = getelementptr inbounds i8, ptr %778, i64 %259
  %793 = getelementptr inbounds i8, ptr %784, i64 %259
  %794 = getelementptr inbounds i8, ptr %780, i64 %259
  %795 = add nuw nsw i32 %710, 1
  %796 = icmp eq i32 %795, 8
  br i1 %796, label %797, label %707

797:                                              ; preds = %776
  %798 = getelementptr inbounds i8, ptr %256, i64 %680
  %799 = getelementptr inbounds i8, ptr %798, i64 %684
  %800 = ashr i32 %672, 1
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds i8, ptr %2, i64 %801
  %803 = ashr i32 %673, 1
  %804 = mul nsw i32 %803, %251
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i8, ptr %802, i64 %805
  %807 = and i32 %672, 1
  %808 = trunc i32 %673 to i1
  %809 = select i1 %808, i64 %257, i64 0
  %810 = getelementptr inbounds i8, ptr %806, i64 %809
  %811 = zext nneg i32 %807 to i64
  %812 = getelementptr inbounds i8, ptr %810, i64 %811
  %813 = getelementptr inbounds i8, ptr %806, i64 %811
  %814 = getelementptr inbounds i8, ptr %799, i64 %702
  %815 = getelementptr inbounds i8, ptr %814, i64 %704
  %816 = getelementptr inbounds i8, ptr %799, i64 %704
  br label %817

817:                                              ; preds = %886, %797
  %818 = phi ptr [ %799, %797 ], [ %897, %886 ]
  %819 = phi i32 [ 0, %797 ], [ %883, %886 ]
  %820 = phi i32 [ 0, %797 ], [ %905, %886 ]
  %821 = phi ptr [ %812, %797 ], [ %904, %886 ]
  %822 = phi ptr [ %810, %797 ], [ %903, %886 ]
  %823 = phi ptr [ %813, %797 ], [ %902, %886 ]
  %824 = phi ptr [ %815, %797 ], [ %900, %886 ]
  %825 = phi ptr [ %814, %797 ], [ %899, %886 ]
  %826 = phi ptr [ %816, %797 ], [ %898, %886 ]
  %827 = phi ptr [ %806, %797 ], [ %901, %886 ]
  %828 = phi ptr [ %260, %797 ], [ %896, %886 ]
  br label %829

829:                                              ; preds = %829, %817
  %830 = phi ptr [ %818, %817 ], [ %841, %829 ]
  %831 = phi i32 [ %819, %817 ], [ %883, %829 ]
  %832 = phi i32 [ 0, %817 ], [ %884, %829 ]
  %833 = phi ptr [ %821, %817 ], [ %867, %829 ]
  %834 = phi ptr [ %822, %817 ], [ %864, %829 ]
  %835 = phi ptr [ %823, %817 ], [ %861, %829 ]
  %836 = phi ptr [ %824, %817 ], [ %850, %829 ]
  %837 = phi ptr [ %825, %817 ], [ %847, %829 ]
  %838 = phi ptr [ %826, %817 ], [ %844, %829 ]
  %839 = phi ptr [ %827, %817 ], [ %858, %829 ]
  %840 = phi ptr [ %828, %817 ], [ %878, %829 ]
  %841 = getelementptr inbounds i8, ptr %830, i64 1
  %842 = load i8, ptr %830, align 1, !tbaa !10
  %843 = zext i8 %842 to i32
  %844 = getelementptr inbounds i8, ptr %838, i64 1
  %845 = load i8, ptr %838, align 1, !tbaa !10
  %846 = zext i8 %845 to i32
  %847 = getelementptr inbounds i8, ptr %837, i64 1
  %848 = load i8, ptr %837, align 1, !tbaa !10
  %849 = zext i8 %848 to i32
  %850 = getelementptr inbounds i8, ptr %836, i64 1
  %851 = load i8, ptr %836, align 1, !tbaa !10
  %852 = zext i8 %851 to i32
  %853 = add nuw nsw i32 %843, 2
  %854 = add nuw nsw i32 %853, %846
  %855 = add nuw nsw i32 %854, %849
  %856 = add nuw nsw i32 %855, %852
  %857 = lshr i32 %856, 2
  %858 = getelementptr inbounds i8, ptr %839, i64 1
  %859 = load i8, ptr %839, align 1, !tbaa !10
  %860 = zext i8 %859 to i32
  %861 = getelementptr inbounds i8, ptr %835, i64 1
  %862 = load i8, ptr %835, align 1, !tbaa !10
  %863 = zext i8 %862 to i32
  %864 = getelementptr inbounds i8, ptr %834, i64 1
  %865 = load i8, ptr %834, align 1, !tbaa !10
  %866 = zext i8 %865 to i32
  %867 = getelementptr inbounds i8, ptr %833, i64 1
  %868 = load i8, ptr %833, align 1, !tbaa !10
  %869 = zext i8 %868 to i32
  %870 = add nuw nsw i32 %860, 2
  %871 = add nuw nsw i32 %870, %863
  %872 = add nuw nsw i32 %871, %866
  %873 = add nuw nsw i32 %872, %869
  %874 = lshr i32 %873, 2
  %875 = add nuw nsw i32 %857, 1
  %876 = add nuw nsw i32 %875, %874
  %877 = lshr i32 %876, 1
  %878 = getelementptr inbounds i8, ptr %840, i64 1
  %879 = load i8, ptr %840, align 1, !tbaa !10
  %880 = zext i8 %879 to i32
  %881 = sub nsw i32 %877, %880
  %882 = tail call i32 @llvm.abs.i32(i32 %881, i1 true)
  %883 = add i32 %882, %831
  %884 = add nuw nsw i32 %832, 1
  %885 = icmp eq i32 %884, 16
  br i1 %885, label %886, label %829

886:                                              ; preds = %829
  %887 = getelementptr i8, ptr %826, i64 16
  %888 = getelementptr i8, ptr %823, i64 16
  %889 = getelementptr i8, ptr %824, i64 16
  %890 = getelementptr i8, ptr %821, i64 16
  %891 = getelementptr i8, ptr %818, i64 16
  %892 = getelementptr i8, ptr %825, i64 16
  %893 = getelementptr i8, ptr %827, i64 16
  %894 = getelementptr i8, ptr %822, i64 16
  %895 = getelementptr i8, ptr %828, i64 16
  %896 = getelementptr inbounds i8, ptr %895, i64 %259
  %897 = getelementptr inbounds i8, ptr %891, i64 %259
  %898 = getelementptr inbounds i8, ptr %887, i64 %259
  %899 = getelementptr inbounds i8, ptr %892, i64 %259
  %900 = getelementptr inbounds i8, ptr %889, i64 %259
  %901 = getelementptr inbounds i8, ptr %893, i64 %259
  %902 = getelementptr inbounds i8, ptr %888, i64 %259
  %903 = getelementptr inbounds i8, ptr %894, i64 %259
  %904 = getelementptr inbounds i8, ptr %890, i64 %259
  %905 = add nuw nsw i32 %820, 1
  %906 = icmp eq i32 %905, 8
  br i1 %906, label %907, label %817

907:                                              ; preds = %886
  %908 = add nsw i32 %883, %773
  %909 = load i32, ptr %68, align 4, !tbaa !6
  %910 = icmp slt i32 %908, %909
  %911 = load i32, ptr %71, align 4
  %912 = icmp slt i32 %908, %911
  %913 = select i1 %910, i1 %912, i1 false
  br i1 %913, label %914, label %916

914:                                              ; preds = %907
  %915 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 3, ptr %915, align 4, !tbaa !14
  br label %976

916:                                              ; preds = %907, %245
  %917 = phi i32 [ %911, %907 ], [ %247, %245 ]
  %918 = phi i32 [ %909, %907 ], [ %246, %245 ]
  %919 = phi i32 [ %675, %907 ], [ undef, %245 ]
  %920 = phi i32 [ %674, %907 ], [ undef, %245 ]
  %921 = phi i32 [ %669, %907 ], [ undef, %245 ]
  %922 = phi i32 [ %668, %907 ], [ undef, %245 ]
  %923 = icmp sgt i32 %918, %917
  %924 = getelementptr inbounds i8, ptr %101, i64 4
  br i1 %923, label %938, label %925

925:                                              ; preds = %916
  store i32 2, ptr %924, align 4, !tbaa !14
  %926 = load i32, ptr %50, align 4, !tbaa !6
  %927 = ashr i32 %926, 1
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds i8, ptr %2, i64 %928
  %930 = load i32, ptr %51, align 4, !tbaa !6
  %931 = ashr i32 %930, 1
  %932 = mul nsw i32 %931, %100
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i8, ptr %929, i64 %933
  %935 = and i32 %926, 1
  %936 = and i32 %930, 1
  %937 = tail call fastcc signext i32 @dist2(ptr noundef readonly %934, ptr noundef readonly %108, i32 noundef signext %100, i32 noundef signext %935, i32 noundef signext %936, i32 noundef signext 16)
  br label %976

938:                                              ; preds = %916
  store i32 1, ptr %924, align 4, !tbaa !14
  %939 = load i32, ptr %74, align 4, !tbaa !6
  %940 = icmp eq i32 %939, 0
  %941 = select i1 %940, i32 0, i32 %100
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds i8, ptr %2, i64 %942
  %944 = load i32, ptr %56, align 4, !tbaa !6
  %945 = ashr i32 %944, 1
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds i8, ptr %943, i64 %946
  %948 = shl i32 %100, 1
  %949 = load i32, ptr %57, align 4, !tbaa !6
  %950 = ashr i32 %949, 1
  %951 = mul nsw i32 %950, %948
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds i8, ptr %947, i64 %952
  %954 = and i32 %944, 1
  %955 = and i32 %949, 1
  %956 = tail call fastcc signext i32 @dist2(ptr noundef readonly %953, ptr noundef readonly %108, i32 noundef signext %948, i32 noundef signext %954, i32 noundef signext %955, i32 noundef signext 8)
  %957 = load i32, ptr %75, align 4, !tbaa !6
  %958 = icmp eq i32 %957, 0
  %959 = select i1 %958, i32 0, i32 %100
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds i8, ptr %2, i64 %960
  %962 = load i32, ptr %58, align 4, !tbaa !6
  %963 = ashr i32 %962, 1
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds i8, ptr %961, i64 %964
  %966 = load i32, ptr %59, align 4, !tbaa !6
  %967 = ashr i32 %966, 1
  %968 = mul nsw i32 %967, %948
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds i8, ptr %965, i64 %969
  %971 = getelementptr inbounds i8, ptr %108, i64 %109
  %972 = and i32 %962, 1
  %973 = and i32 %966, 1
  %974 = tail call fastcc signext i32 @dist2(ptr noundef readonly %970, ptr noundef readonly %971, i32 noundef signext %948, i32 noundef signext %972, i32 noundef signext %973, i32 noundef signext 8)
  %975 = add nsw i32 %974, %956
  br label %976

976:                                              ; preds = %938, %925, %914, %224
  %977 = phi i32 [ 3, %914 ], [ 1, %938 ], [ 2, %925 ], [ 2, %224 ]
  %978 = phi i32 [ %668, %914 ], [ %922, %938 ], [ %922, %925 ], [ undef, %224 ]
  %979 = phi i32 [ %669, %914 ], [ %921, %938 ], [ %921, %925 ], [ undef, %224 ]
  %980 = phi i32 [ %674, %914 ], [ %920, %938 ], [ %920, %925 ], [ undef, %224 ]
  %981 = phi i32 [ %675, %914 ], [ %919, %938 ], [ %919, %925 ], [ undef, %224 ]
  %982 = phi i32 [ %676, %914 ], [ %975, %938 ], [ %937, %925 ], [ %239, %224 ]
  %983 = icmp sgt i32 %982, %218
  %984 = icmp sgt i32 %982, 2303
  %985 = and i1 %983, %984
  br i1 %985, label %986, label %987

986:                                              ; preds = %976
  store i32 1, ptr %101, align 8, !tbaa !11
  br label %2238

987:                                              ; preds = %976
  %988 = getelementptr inbounds i8, ptr %2, i64 %99
  %989 = getelementptr inbounds i8, ptr %988, i64 %107
  br label %990

990:                                              ; preds = %990, %987
  %991 = phi i32 [ 0, %987 ], [ %1136, %990 ]
  %992 = phi i32 [ 0, %987 ], [ %1139, %990 ]
  %993 = phi ptr [ %108, %987 ], [ %1138, %990 ]
  %994 = phi ptr [ %989, %987 ], [ %1137, %990 ]
  %995 = load i8, ptr %994, align 1, !tbaa !10
  %996 = zext i8 %995 to i32
  %997 = load i8, ptr %993, align 1, !tbaa !10
  %998 = zext i8 %997 to i32
  %999 = sub nsw i32 %996, %998
  %1000 = mul nsw i32 %999, %999
  %1001 = add nsw i32 %1000, %991
  %1002 = getelementptr inbounds i8, ptr %994, i64 1
  %1003 = load i8, ptr %1002, align 1, !tbaa !10
  %1004 = zext i8 %1003 to i32
  %1005 = getelementptr inbounds i8, ptr %993, i64 1
  %1006 = load i8, ptr %1005, align 1, !tbaa !10
  %1007 = zext i8 %1006 to i32
  %1008 = sub nsw i32 %1004, %1007
  %1009 = mul nsw i32 %1008, %1008
  %1010 = add nsw i32 %1001, %1009
  %1011 = getelementptr inbounds i8, ptr %994, i64 2
  %1012 = load i8, ptr %1011, align 1, !tbaa !10
  %1013 = zext i8 %1012 to i32
  %1014 = getelementptr inbounds i8, ptr %993, i64 2
  %1015 = load i8, ptr %1014, align 1, !tbaa !10
  %1016 = zext i8 %1015 to i32
  %1017 = sub nsw i32 %1013, %1016
  %1018 = mul nsw i32 %1017, %1017
  %1019 = add nsw i32 %1010, %1018
  %1020 = getelementptr inbounds i8, ptr %994, i64 3
  %1021 = load i8, ptr %1020, align 1, !tbaa !10
  %1022 = zext i8 %1021 to i32
  %1023 = getelementptr inbounds i8, ptr %993, i64 3
  %1024 = load i8, ptr %1023, align 1, !tbaa !10
  %1025 = zext i8 %1024 to i32
  %1026 = sub nsw i32 %1022, %1025
  %1027 = mul nsw i32 %1026, %1026
  %1028 = add nsw i32 %1019, %1027
  %1029 = getelementptr inbounds i8, ptr %994, i64 4
  %1030 = load i8, ptr %1029, align 1, !tbaa !10
  %1031 = zext i8 %1030 to i32
  %1032 = getelementptr inbounds i8, ptr %993, i64 4
  %1033 = load i8, ptr %1032, align 1, !tbaa !10
  %1034 = zext i8 %1033 to i32
  %1035 = sub nsw i32 %1031, %1034
  %1036 = mul nsw i32 %1035, %1035
  %1037 = add nsw i32 %1028, %1036
  %1038 = getelementptr inbounds i8, ptr %994, i64 5
  %1039 = load i8, ptr %1038, align 1, !tbaa !10
  %1040 = zext i8 %1039 to i32
  %1041 = getelementptr inbounds i8, ptr %993, i64 5
  %1042 = load i8, ptr %1041, align 1, !tbaa !10
  %1043 = zext i8 %1042 to i32
  %1044 = sub nsw i32 %1040, %1043
  %1045 = mul nsw i32 %1044, %1044
  %1046 = add nsw i32 %1037, %1045
  %1047 = getelementptr inbounds i8, ptr %994, i64 6
  %1048 = load i8, ptr %1047, align 1, !tbaa !10
  %1049 = zext i8 %1048 to i32
  %1050 = getelementptr inbounds i8, ptr %993, i64 6
  %1051 = load i8, ptr %1050, align 1, !tbaa !10
  %1052 = zext i8 %1051 to i32
  %1053 = sub nsw i32 %1049, %1052
  %1054 = mul nsw i32 %1053, %1053
  %1055 = add nsw i32 %1046, %1054
  %1056 = getelementptr inbounds i8, ptr %994, i64 7
  %1057 = load i8, ptr %1056, align 1, !tbaa !10
  %1058 = zext i8 %1057 to i32
  %1059 = getelementptr inbounds i8, ptr %993, i64 7
  %1060 = load i8, ptr %1059, align 1, !tbaa !10
  %1061 = zext i8 %1060 to i32
  %1062 = sub nsw i32 %1058, %1061
  %1063 = mul nsw i32 %1062, %1062
  %1064 = add nsw i32 %1055, %1063
  %1065 = getelementptr inbounds i8, ptr %994, i64 8
  %1066 = load i8, ptr %1065, align 1, !tbaa !10
  %1067 = zext i8 %1066 to i32
  %1068 = getelementptr inbounds i8, ptr %993, i64 8
  %1069 = load i8, ptr %1068, align 1, !tbaa !10
  %1070 = zext i8 %1069 to i32
  %1071 = sub nsw i32 %1067, %1070
  %1072 = mul nsw i32 %1071, %1071
  %1073 = add nsw i32 %1064, %1072
  %1074 = getelementptr inbounds i8, ptr %994, i64 9
  %1075 = load i8, ptr %1074, align 1, !tbaa !10
  %1076 = zext i8 %1075 to i32
  %1077 = getelementptr inbounds i8, ptr %993, i64 9
  %1078 = load i8, ptr %1077, align 1, !tbaa !10
  %1079 = zext i8 %1078 to i32
  %1080 = sub nsw i32 %1076, %1079
  %1081 = mul nsw i32 %1080, %1080
  %1082 = add nsw i32 %1073, %1081
  %1083 = getelementptr inbounds i8, ptr %994, i64 10
  %1084 = load i8, ptr %1083, align 1, !tbaa !10
  %1085 = zext i8 %1084 to i32
  %1086 = getelementptr inbounds i8, ptr %993, i64 10
  %1087 = load i8, ptr %1086, align 1, !tbaa !10
  %1088 = zext i8 %1087 to i32
  %1089 = sub nsw i32 %1085, %1088
  %1090 = mul nsw i32 %1089, %1089
  %1091 = add nsw i32 %1082, %1090
  %1092 = getelementptr inbounds i8, ptr %994, i64 11
  %1093 = load i8, ptr %1092, align 1, !tbaa !10
  %1094 = zext i8 %1093 to i32
  %1095 = getelementptr inbounds i8, ptr %993, i64 11
  %1096 = load i8, ptr %1095, align 1, !tbaa !10
  %1097 = zext i8 %1096 to i32
  %1098 = sub nsw i32 %1094, %1097
  %1099 = mul nsw i32 %1098, %1098
  %1100 = add nsw i32 %1091, %1099
  %1101 = getelementptr inbounds i8, ptr %994, i64 12
  %1102 = load i8, ptr %1101, align 1, !tbaa !10
  %1103 = zext i8 %1102 to i32
  %1104 = getelementptr inbounds i8, ptr %993, i64 12
  %1105 = load i8, ptr %1104, align 1, !tbaa !10
  %1106 = zext i8 %1105 to i32
  %1107 = sub nsw i32 %1103, %1106
  %1108 = mul nsw i32 %1107, %1107
  %1109 = add nsw i32 %1100, %1108
  %1110 = getelementptr inbounds i8, ptr %994, i64 13
  %1111 = load i8, ptr %1110, align 1, !tbaa !10
  %1112 = zext i8 %1111 to i32
  %1113 = getelementptr inbounds i8, ptr %993, i64 13
  %1114 = load i8, ptr %1113, align 1, !tbaa !10
  %1115 = zext i8 %1114 to i32
  %1116 = sub nsw i32 %1112, %1115
  %1117 = mul nsw i32 %1116, %1116
  %1118 = add nsw i32 %1109, %1117
  %1119 = getelementptr inbounds i8, ptr %994, i64 14
  %1120 = load i8, ptr %1119, align 1, !tbaa !10
  %1121 = zext i8 %1120 to i32
  %1122 = getelementptr inbounds i8, ptr %993, i64 14
  %1123 = load i8, ptr %1122, align 1, !tbaa !10
  %1124 = zext i8 %1123 to i32
  %1125 = sub nsw i32 %1121, %1124
  %1126 = mul nsw i32 %1125, %1125
  %1127 = add nsw i32 %1118, %1126
  %1128 = getelementptr inbounds i8, ptr %994, i64 15
  %1129 = load i8, ptr %1128, align 1, !tbaa !10
  %1130 = zext i8 %1129 to i32
  %1131 = getelementptr inbounds i8, ptr %993, i64 15
  %1132 = load i8, ptr %1131, align 1, !tbaa !10
  %1133 = zext i8 %1132 to i32
  %1134 = sub nsw i32 %1130, %1133
  %1135 = mul nsw i32 %1134, %1134
  %1136 = add nsw i32 %1127, %1135
  %1137 = getelementptr inbounds i8, ptr %994, i64 %109
  %1138 = getelementptr inbounds i8, ptr %993, i64 %109
  %1139 = add nuw nsw i32 %992, 1
  %1140 = icmp eq i32 %1139, 16
  br i1 %1140, label %1141, label %990

1141:                                             ; preds = %990
  %1142 = shl nsw i32 %1136, 2
  %1143 = mul nsw i32 %982, 5
  %1144 = icmp sgt i32 %1142, %1143
  %1145 = icmp sgt i32 %1136, 2303
  %1146 = and i1 %1145, %1144
  br i1 %1146, label %1147, label %1188

1147:                                             ; preds = %1141
  store i32 8, ptr %101, align 8, !tbaa !11
  switch i32 %977, label %1167 [
    i32 2, label %1148
    i32 3, label %1157
  ]

1148:                                             ; preds = %1147
  %1149 = load i32, ptr %50, align 4, !tbaa !6
  %1150 = trunc i64 %99 to i32
  %1151 = shl i32 %1150, 1
  %1152 = sub nsw i32 %1149, %1151
  %1153 = getelementptr inbounds i8, ptr %101, i64 24
  store i32 %1152, ptr %1153, align 8, !tbaa !6
  %1154 = load i32, ptr %51, align 4, !tbaa !6
  %1155 = sub nsw i32 %1154, %94
  %1156 = getelementptr inbounds i8, ptr %101, i64 28
  store i32 %1155, ptr %1156, align 4, !tbaa !6
  br label %2238

1157:                                             ; preds = %1147
  %1158 = trunc i64 %99 to i32
  %1159 = shl i32 %1158, 1
  %1160 = sub nsw i32 %978, %1159
  %1161 = getelementptr inbounds i8, ptr %101, i64 24
  store i32 %1160, ptr %1161, align 8, !tbaa !6
  %1162 = sub i32 %979, %90
  %1163 = shl i32 %1162, 1
  %1164 = getelementptr inbounds i8, ptr %101, i64 28
  store i32 %1163, ptr %1164, align 4, !tbaa !6
  %1165 = getelementptr inbounds i8, ptr %101, i64 72
  store i32 %980, ptr %1165, align 8, !tbaa !6
  %1166 = getelementptr inbounds i8, ptr %101, i64 76
  store i32 %981, ptr %1166, align 4, !tbaa !6
  br label %2238

1167:                                             ; preds = %1147
  %1168 = load i32, ptr %56, align 4, !tbaa !6
  %1169 = trunc i64 %99 to i32
  %1170 = shl i32 %1169, 1
  %1171 = sub nsw i32 %1168, %1170
  %1172 = getelementptr inbounds i8, ptr %101, i64 24
  store i32 %1171, ptr %1172, align 8, !tbaa !6
  %1173 = load i32, ptr %57, align 4, !tbaa !6
  %1174 = sub i32 %1173, %90
  %1175 = shl i32 %1174, 1
  %1176 = getelementptr inbounds i8, ptr %101, i64 28
  store i32 %1175, ptr %1176, align 4, !tbaa !6
  %1177 = load i32, ptr %58, align 4, !tbaa !6
  %1178 = sub nsw i32 %1177, %1170
  %1179 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 %1178, ptr %1179, align 8, !tbaa !6
  %1180 = load i32, ptr %59, align 4, !tbaa !6
  %1181 = sub i32 %1180, %90
  %1182 = shl i32 %1181, 1
  %1183 = getelementptr inbounds i8, ptr %101, i64 44
  store i32 %1182, ptr %1183, align 4, !tbaa !6
  %1184 = load i32, ptr %74, align 4, !tbaa !6
  %1185 = getelementptr inbounds i8, ptr %101, i64 56
  store i32 %1184, ptr %1185, align 8, !tbaa !6
  %1186 = load i32, ptr %75, align 4, !tbaa !6
  %1187 = getelementptr inbounds i8, ptr %101, i64 64
  store i32 %1186, ptr %1187, align 8, !tbaa !6
  br label %2238

1188:                                             ; preds = %1141
  store i32 0, ptr %101, align 8, !tbaa !11
  %1189 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 2, ptr %1189, align 4, !tbaa !14
  %1190 = getelementptr inbounds i8, ptr %101, i64 24
  store i32 0, ptr %1190, align 8, !tbaa !6
  %1191 = getelementptr inbounds i8, ptr %101, i64 28
  store i32 0, ptr %1191, align 4, !tbaa !6
  br label %2238

1192:                                             ; preds = %215
  %1193 = load i32, ptr @frame_pred_dct, align 4, !tbaa !6
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1338, label %1195

1195:                                             ; preds = %1192
  %1196 = load i32, ptr @height, align 4, !tbaa !6
  %1197 = trunc nuw nsw i64 %99 to i32
  %1198 = call fastcc signext i32 @fullsearch(ptr noundef readonly %0, ptr noundef readonly %2, ptr noundef readonly %108, i32 noundef signext %100, i32 noundef signext %1197, i32 noundef signext %90, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext 16, i32 noundef signext %100, i32 noundef signext %1196, ptr noundef nonnull %52, ptr noundef nonnull %53)
  %1199 = load i32, ptr %52, align 4, !tbaa !6
  %1200 = ashr i32 %1199, 1
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds i8, ptr %2, i64 %1201
  %1203 = load i32, ptr %53, align 4, !tbaa !6
  %1204 = ashr i32 %1203, 1
  %1205 = mul nsw i32 %1204, %100
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds i8, ptr %1202, i64 %1206
  %1208 = and i32 %1199, 1
  %1209 = and i32 %1203, 1
  %1210 = tail call fastcc signext i32 @dist2(ptr noundef readonly %1207, ptr noundef readonly %108, i32 noundef signext %100, i32 noundef signext %1208, i32 noundef signext %1209, i32 noundef signext 16)
  %1211 = call fastcc signext i32 @fullsearch(ptr noundef readonly %1, ptr noundef readonly %3, ptr noundef readonly %108, i32 noundef signext %100, i32 noundef signext %1197, i32 noundef signext %90, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext 16, i32 noundef signext %100, i32 noundef signext %1196, ptr noundef nonnull %54, ptr noundef nonnull %55)
  %1212 = load i32, ptr %54, align 4, !tbaa !6
  %1213 = ashr i32 %1212, 1
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds i8, ptr %3, i64 %1214
  %1216 = load i32, ptr %55, align 4, !tbaa !6
  %1217 = ashr i32 %1216, 1
  %1218 = mul nsw i32 %1217, %100
  %1219 = sext i32 %1218 to i64
  %1220 = getelementptr inbounds i8, ptr %1215, i64 %1219
  %1221 = and i32 %1212, 1
  %1222 = and i32 %1216, 1
  %1223 = tail call fastcc signext i32 @dist2(ptr noundef readonly %1220, ptr noundef readonly %108, i32 noundef signext %100, i32 noundef signext %1221, i32 noundef signext %1222, i32 noundef signext 16)
  %1224 = mul nuw nsw i32 %1222, %100
  %1225 = sext i32 %1224 to i64
  %1226 = getelementptr inbounds i8, ptr %1220, i64 %1225
  %1227 = zext nneg i32 %1221 to i64
  %1228 = getelementptr inbounds i8, ptr %1226, i64 %1227
  %1229 = getelementptr inbounds i8, ptr %1220, i64 %1227
  %1230 = mul nuw nsw i32 %1209, %100
  %1231 = sext i32 %1230 to i64
  %1232 = getelementptr inbounds i8, ptr %1207, i64 %1231
  %1233 = zext nneg i32 %1208 to i64
  %1234 = getelementptr inbounds i8, ptr %1232, i64 %1233
  %1235 = getelementptr inbounds i8, ptr %1207, i64 %1233
  %1236 = add nsw i32 %100, -16
  %1237 = sext i32 %1236 to i64
  br label %1238

1238:                                             ; preds = %1308, %1195
  %1239 = phi ptr [ %1207, %1195 ], [ %1318, %1308 ]
  %1240 = phi i32 [ 0, %1195 ], [ %1305, %1308 ]
  %1241 = phi i32 [ 0, %1195 ], [ %1326, %1308 ]
  %1242 = phi ptr [ %1228, %1195 ], [ %1325, %1308 ]
  %1243 = phi ptr [ %1226, %1195 ], [ %1324, %1308 ]
  %1244 = phi ptr [ %1229, %1195 ], [ %1323, %1308 ]
  %1245 = phi ptr [ %1234, %1195 ], [ %1321, %1308 ]
  %1246 = phi ptr [ %1232, %1195 ], [ %1320, %1308 ]
  %1247 = phi ptr [ %1235, %1195 ], [ %1319, %1308 ]
  %1248 = phi ptr [ %1220, %1195 ], [ %1322, %1308 ]
  %1249 = phi ptr [ %108, %1195 ], [ %1317, %1308 ]
  %1250 = getelementptr i8, ptr %1247, i64 16
  br label %1251

1251:                                             ; preds = %1251, %1238
  %1252 = phi ptr [ %1239, %1238 ], [ %1263, %1251 ]
  %1253 = phi i32 [ %1240, %1238 ], [ %1305, %1251 ]
  %1254 = phi i32 [ 0, %1238 ], [ %1306, %1251 ]
  %1255 = phi ptr [ %1242, %1238 ], [ %1289, %1251 ]
  %1256 = phi ptr [ %1243, %1238 ], [ %1286, %1251 ]
  %1257 = phi ptr [ %1244, %1238 ], [ %1283, %1251 ]
  %1258 = phi ptr [ %1245, %1238 ], [ %1272, %1251 ]
  %1259 = phi ptr [ %1246, %1238 ], [ %1269, %1251 ]
  %1260 = phi ptr [ %1247, %1238 ], [ %1266, %1251 ]
  %1261 = phi ptr [ %1248, %1238 ], [ %1280, %1251 ]
  %1262 = phi ptr [ %1249, %1238 ], [ %1300, %1251 ]
  %1263 = getelementptr inbounds i8, ptr %1252, i64 1
  %1264 = load i8, ptr %1252, align 1, !tbaa !10
  %1265 = zext i8 %1264 to i32
  %1266 = getelementptr inbounds i8, ptr %1260, i64 1
  %1267 = load i8, ptr %1260, align 1, !tbaa !10
  %1268 = zext i8 %1267 to i32
  %1269 = getelementptr inbounds i8, ptr %1259, i64 1
  %1270 = load i8, ptr %1259, align 1, !tbaa !10
  %1271 = zext i8 %1270 to i32
  %1272 = getelementptr inbounds i8, ptr %1258, i64 1
  %1273 = load i8, ptr %1258, align 1, !tbaa !10
  %1274 = zext i8 %1273 to i32
  %1275 = add nuw nsw i32 %1265, 2
  %1276 = add nuw nsw i32 %1275, %1268
  %1277 = add nuw nsw i32 %1276, %1271
  %1278 = add nuw nsw i32 %1277, %1274
  %1279 = lshr i32 %1278, 2
  %1280 = getelementptr inbounds i8, ptr %1261, i64 1
  %1281 = load i8, ptr %1261, align 1, !tbaa !10
  %1282 = zext i8 %1281 to i32
  %1283 = getelementptr inbounds i8, ptr %1257, i64 1
  %1284 = load i8, ptr %1257, align 1, !tbaa !10
  %1285 = zext i8 %1284 to i32
  %1286 = getelementptr inbounds i8, ptr %1256, i64 1
  %1287 = load i8, ptr %1256, align 1, !tbaa !10
  %1288 = zext i8 %1287 to i32
  %1289 = getelementptr inbounds i8, ptr %1255, i64 1
  %1290 = load i8, ptr %1255, align 1, !tbaa !10
  %1291 = zext i8 %1290 to i32
  %1292 = add nuw nsw i32 %1282, 2
  %1293 = add nuw nsw i32 %1292, %1285
  %1294 = add nuw nsw i32 %1293, %1288
  %1295 = add nuw nsw i32 %1294, %1291
  %1296 = lshr i32 %1295, 2
  %1297 = add nuw nsw i32 %1279, 1
  %1298 = add nuw nsw i32 %1297, %1296
  %1299 = lshr i32 %1298, 1
  %1300 = getelementptr inbounds i8, ptr %1262, i64 1
  %1301 = load i8, ptr %1262, align 1, !tbaa !10
  %1302 = zext i8 %1301 to i32
  %1303 = sub nsw i32 %1299, %1302
  %1304 = mul nsw i32 %1303, %1303
  %1305 = add nsw i32 %1304, %1253
  %1306 = add nuw nsw i32 %1254, 1
  %1307 = icmp eq i32 %1306, 16
  br i1 %1307, label %1308, label %1251

1308:                                             ; preds = %1251
  %1309 = getelementptr i8, ptr %1244, i64 16
  %1310 = getelementptr i8, ptr %1245, i64 16
  %1311 = getelementptr i8, ptr %1242, i64 16
  %1312 = getelementptr i8, ptr %1239, i64 16
  %1313 = getelementptr i8, ptr %1246, i64 16
  %1314 = getelementptr i8, ptr %1248, i64 16
  %1315 = getelementptr i8, ptr %1243, i64 16
  %1316 = getelementptr i8, ptr %1249, i64 16
  %1317 = getelementptr inbounds i8, ptr %1316, i64 %1237
  %1318 = getelementptr inbounds i8, ptr %1312, i64 %1237
  %1319 = getelementptr inbounds i8, ptr %1250, i64 %1237
  %1320 = getelementptr inbounds i8, ptr %1313, i64 %1237
  %1321 = getelementptr inbounds i8, ptr %1310, i64 %1237
  %1322 = getelementptr inbounds i8, ptr %1314, i64 %1237
  %1323 = getelementptr inbounds i8, ptr %1309, i64 %1237
  %1324 = getelementptr inbounds i8, ptr %1315, i64 %1237
  %1325 = getelementptr inbounds i8, ptr %1311, i64 %1237
  %1326 = add nuw nsw i32 %1241, 1
  %1327 = icmp eq i32 %1326, 16
  br i1 %1327, label %1328, label %1238

1328:                                             ; preds = %1308
  %1329 = icmp sgt i32 %1210, %1223
  %1330 = icmp sgt i32 %1210, %1305
  %1331 = select i1 %1329, i1 true, i1 %1330
  %1332 = icmp sgt i32 %1223, %1305
  %1333 = select i1 %1332, i32 12, i32 4
  %1334 = tail call i32 @llvm.smin.i32(i32 %1223, i32 %1305)
  %1335 = select i1 %1331, i32 %1333, i32 8
  %1336 = select i1 %1331, i32 %1334, i32 %1210
  store i32 %1335, ptr %101, align 8, !tbaa !11
  %1337 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 2, ptr %1337, align 4, !tbaa !14
  br label %2180

1338:                                             ; preds = %1192
  %1339 = trunc nuw nsw i64 %99 to i32
  call fastcc void @frame_estimate(ptr noundef readonly %0, ptr noundef readonly %2, ptr noundef readonly %108, i32 noundef signext %1339, i32 noundef signext %90, i32 noundef signext %6, i32 noundef signext %7, ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %60, ptr noundef nonnull %61, ptr noundef nonnull %62, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %72, ptr noundef nonnull %76, ptr noundef nonnull %77, ptr noundef nonnull %80, ptr noundef nonnull %81)
  call fastcc void @frame_estimate(ptr noundef readonly %1, ptr noundef readonly %3, ptr noundef readonly %108, i32 noundef signext %1339, i32 noundef signext %90, i32 noundef signext %8, i32 noundef signext %9, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %64, ptr noundef nonnull %65, ptr noundef nonnull %66, ptr noundef nonnull %67, ptr noundef nonnull %70, ptr noundef nonnull %73, ptr noundef nonnull %78, ptr noundef nonnull %79, ptr noundef nonnull %80, ptr noundef nonnull %81)
  %1340 = load i32, ptr %52, align 4, !tbaa !6
  %1341 = ashr i32 %1340, 1
  %1342 = sext i32 %1341 to i64
  %1343 = getelementptr inbounds i8, ptr %2, i64 %1342
  %1344 = load i32, ptr %53, align 4, !tbaa !6
  %1345 = ashr i32 %1344, 1
  %1346 = mul nsw i32 %1345, %100
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds i8, ptr %1343, i64 %1347
  %1349 = load i32, ptr %54, align 4, !tbaa !6
  %1350 = ashr i32 %1349, 1
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds i8, ptr %3, i64 %1351
  %1353 = load i32, ptr %55, align 4, !tbaa !6
  %1354 = ashr i32 %1353, 1
  %1355 = mul nsw i32 %1354, %100
  %1356 = sext i32 %1355 to i64
  %1357 = getelementptr inbounds i8, ptr %1352, i64 %1356
  %1358 = and i32 %1340, 1
  %1359 = and i32 %1344, 1
  %1360 = and i32 %1349, 1
  %1361 = and i32 %1353, 1
  %1362 = mul nuw nsw i32 %1361, %100
  %1363 = sext i32 %1362 to i64
  %1364 = getelementptr inbounds i8, ptr %1357, i64 %1363
  %1365 = zext nneg i32 %1360 to i64
  %1366 = getelementptr inbounds i8, ptr %1364, i64 %1365
  %1367 = getelementptr inbounds i8, ptr %1357, i64 %1365
  %1368 = mul nuw nsw i32 %1359, %100
  %1369 = sext i32 %1368 to i64
  %1370 = getelementptr inbounds i8, ptr %1348, i64 %1369
  %1371 = zext nneg i32 %1358 to i64
  %1372 = getelementptr inbounds i8, ptr %1370, i64 %1371
  %1373 = getelementptr inbounds i8, ptr %1348, i64 %1371
  %1374 = add nsw i32 %100, -16
  %1375 = sext i32 %1374 to i64
  br label %1376

1376:                                             ; preds = %1446, %1338
  %1377 = phi ptr [ %1348, %1338 ], [ %1456, %1446 ]
  %1378 = phi i32 [ 0, %1338 ], [ %1443, %1446 ]
  %1379 = phi i32 [ 0, %1338 ], [ %1464, %1446 ]
  %1380 = phi ptr [ %1366, %1338 ], [ %1463, %1446 ]
  %1381 = phi ptr [ %1364, %1338 ], [ %1462, %1446 ]
  %1382 = phi ptr [ %1367, %1338 ], [ %1461, %1446 ]
  %1383 = phi ptr [ %1372, %1338 ], [ %1459, %1446 ]
  %1384 = phi ptr [ %1370, %1338 ], [ %1458, %1446 ]
  %1385 = phi ptr [ %1373, %1338 ], [ %1457, %1446 ]
  %1386 = phi ptr [ %1357, %1338 ], [ %1460, %1446 ]
  %1387 = phi ptr [ %108, %1338 ], [ %1455, %1446 ]
  %1388 = getelementptr i8, ptr %1385, i64 16
  br label %1389

1389:                                             ; preds = %1389, %1376
  %1390 = phi ptr [ %1377, %1376 ], [ %1401, %1389 ]
  %1391 = phi i32 [ %1378, %1376 ], [ %1443, %1389 ]
  %1392 = phi i32 [ 0, %1376 ], [ %1444, %1389 ]
  %1393 = phi ptr [ %1380, %1376 ], [ %1427, %1389 ]
  %1394 = phi ptr [ %1381, %1376 ], [ %1424, %1389 ]
  %1395 = phi ptr [ %1382, %1376 ], [ %1421, %1389 ]
  %1396 = phi ptr [ %1383, %1376 ], [ %1410, %1389 ]
  %1397 = phi ptr [ %1384, %1376 ], [ %1407, %1389 ]
  %1398 = phi ptr [ %1385, %1376 ], [ %1404, %1389 ]
  %1399 = phi ptr [ %1386, %1376 ], [ %1418, %1389 ]
  %1400 = phi ptr [ %1387, %1376 ], [ %1438, %1389 ]
  %1401 = getelementptr inbounds i8, ptr %1390, i64 1
  %1402 = load i8, ptr %1390, align 1, !tbaa !10
  %1403 = zext i8 %1402 to i32
  %1404 = getelementptr inbounds i8, ptr %1398, i64 1
  %1405 = load i8, ptr %1398, align 1, !tbaa !10
  %1406 = zext i8 %1405 to i32
  %1407 = getelementptr inbounds i8, ptr %1397, i64 1
  %1408 = load i8, ptr %1397, align 1, !tbaa !10
  %1409 = zext i8 %1408 to i32
  %1410 = getelementptr inbounds i8, ptr %1396, i64 1
  %1411 = load i8, ptr %1396, align 1, !tbaa !10
  %1412 = zext i8 %1411 to i32
  %1413 = add nuw nsw i32 %1403, 2
  %1414 = add nuw nsw i32 %1413, %1406
  %1415 = add nuw nsw i32 %1414, %1409
  %1416 = add nuw nsw i32 %1415, %1412
  %1417 = lshr i32 %1416, 2
  %1418 = getelementptr inbounds i8, ptr %1399, i64 1
  %1419 = load i8, ptr %1399, align 1, !tbaa !10
  %1420 = zext i8 %1419 to i32
  %1421 = getelementptr inbounds i8, ptr %1395, i64 1
  %1422 = load i8, ptr %1395, align 1, !tbaa !10
  %1423 = zext i8 %1422 to i32
  %1424 = getelementptr inbounds i8, ptr %1394, i64 1
  %1425 = load i8, ptr %1394, align 1, !tbaa !10
  %1426 = zext i8 %1425 to i32
  %1427 = getelementptr inbounds i8, ptr %1393, i64 1
  %1428 = load i8, ptr %1393, align 1, !tbaa !10
  %1429 = zext i8 %1428 to i32
  %1430 = add nuw nsw i32 %1420, 2
  %1431 = add nuw nsw i32 %1430, %1423
  %1432 = add nuw nsw i32 %1431, %1426
  %1433 = add nuw nsw i32 %1432, %1429
  %1434 = lshr i32 %1433, 2
  %1435 = add nuw nsw i32 %1417, 1
  %1436 = add nuw nsw i32 %1435, %1434
  %1437 = lshr i32 %1436, 1
  %1438 = getelementptr inbounds i8, ptr %1400, i64 1
  %1439 = load i8, ptr %1400, align 1, !tbaa !10
  %1440 = zext i8 %1439 to i32
  %1441 = sub nsw i32 %1437, %1440
  %1442 = tail call i32 @llvm.abs.i32(i32 %1441, i1 true)
  %1443 = add i32 %1442, %1391
  %1444 = add nuw nsw i32 %1392, 1
  %1445 = icmp eq i32 %1444, 16
  br i1 %1445, label %1446, label %1389

1446:                                             ; preds = %1389
  %1447 = getelementptr i8, ptr %1382, i64 16
  %1448 = getelementptr i8, ptr %1383, i64 16
  %1449 = getelementptr i8, ptr %1380, i64 16
  %1450 = getelementptr i8, ptr %1377, i64 16
  %1451 = getelementptr i8, ptr %1384, i64 16
  %1452 = getelementptr i8, ptr %1386, i64 16
  %1453 = getelementptr i8, ptr %1381, i64 16
  %1454 = getelementptr i8, ptr %1387, i64 16
  %1455 = getelementptr inbounds i8, ptr %1454, i64 %1375
  %1456 = getelementptr inbounds i8, ptr %1450, i64 %1375
  %1457 = getelementptr inbounds i8, ptr %1388, i64 %1375
  %1458 = getelementptr inbounds i8, ptr %1451, i64 %1375
  %1459 = getelementptr inbounds i8, ptr %1448, i64 %1375
  %1460 = getelementptr inbounds i8, ptr %1452, i64 %1375
  %1461 = getelementptr inbounds i8, ptr %1447, i64 %1375
  %1462 = getelementptr inbounds i8, ptr %1453, i64 %1375
  %1463 = getelementptr inbounds i8, ptr %1449, i64 %1375
  %1464 = add nuw nsw i32 %1379, 1
  %1465 = icmp eq i32 %1464, 16
  br i1 %1465, label %1466, label %1376

1466:                                             ; preds = %1446
  %1467 = load i32, ptr %60, align 4, !tbaa !6
  %1468 = ashr i32 %1467, 1
  %1469 = sext i32 %1468 to i64
  %1470 = getelementptr inbounds i8, ptr %2, i64 %1469
  %1471 = load i32, ptr %76, align 4, !tbaa !6
  %1472 = icmp eq i32 %1471, 0
  %1473 = select i1 %1472, i32 0, i32 %100
  %1474 = sext i32 %1473 to i64
  %1475 = getelementptr inbounds i8, ptr %1470, i64 %1474
  %1476 = shl i32 %100, 1
  %1477 = load i32, ptr %61, align 4, !tbaa !6
  %1478 = ashr i32 %1477, 1
  %1479 = mul nsw i32 %1478, %1476
  %1480 = sext i32 %1479 to i64
  %1481 = getelementptr inbounds i8, ptr %1475, i64 %1480
  %1482 = load i32, ptr %64, align 4, !tbaa !6
  %1483 = ashr i32 %1482, 1
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds i8, ptr %3, i64 %1484
  %1486 = load i32, ptr %78, align 4, !tbaa !6
  %1487 = icmp eq i32 %1486, 0
  %1488 = select i1 %1487, i32 0, i32 %100
  %1489 = sext i32 %1488 to i64
  %1490 = getelementptr inbounds i8, ptr %1485, i64 %1489
  %1491 = load i32, ptr %65, align 4, !tbaa !6
  %1492 = ashr i32 %1491, 1
  %1493 = mul nsw i32 %1492, %1476
  %1494 = sext i32 %1493 to i64
  %1495 = getelementptr inbounds i8, ptr %1490, i64 %1494
  %1496 = and i32 %1467, 1
  %1497 = and i32 %1477, 1
  %1498 = and i32 %1482, 1
  %1499 = and i32 %1491, 1
  %1500 = mul nuw nsw i32 %1499, %1476
  %1501 = sext i32 %1500 to i64
  %1502 = getelementptr inbounds i8, ptr %1495, i64 %1501
  %1503 = zext nneg i32 %1498 to i64
  %1504 = getelementptr inbounds i8, ptr %1502, i64 %1503
  %1505 = getelementptr inbounds i8, ptr %1495, i64 %1503
  %1506 = mul nuw nsw i32 %1497, %1476
  %1507 = sext i32 %1506 to i64
  %1508 = getelementptr inbounds i8, ptr %1481, i64 %1507
  %1509 = zext nneg i32 %1496 to i64
  %1510 = getelementptr inbounds i8, ptr %1508, i64 %1509
  %1511 = getelementptr inbounds i8, ptr %1481, i64 %1509
  %1512 = add nsw i32 %1476, -16
  %1513 = sext i32 %1512 to i64
  br label %1514

1514:                                             ; preds = %1584, %1466
  %1515 = phi ptr [ %1481, %1466 ], [ %1594, %1584 ]
  %1516 = phi i32 [ 0, %1466 ], [ %1581, %1584 ]
  %1517 = phi i32 [ 0, %1466 ], [ %1602, %1584 ]
  %1518 = phi ptr [ %1504, %1466 ], [ %1601, %1584 ]
  %1519 = phi ptr [ %1502, %1466 ], [ %1600, %1584 ]
  %1520 = phi ptr [ %1505, %1466 ], [ %1599, %1584 ]
  %1521 = phi ptr [ %1510, %1466 ], [ %1597, %1584 ]
  %1522 = phi ptr [ %1508, %1466 ], [ %1596, %1584 ]
  %1523 = phi ptr [ %1511, %1466 ], [ %1595, %1584 ]
  %1524 = phi ptr [ %1495, %1466 ], [ %1598, %1584 ]
  %1525 = phi ptr [ %108, %1466 ], [ %1593, %1584 ]
  %1526 = getelementptr i8, ptr %1523, i64 16
  br label %1527

1527:                                             ; preds = %1527, %1514
  %1528 = phi ptr [ %1515, %1514 ], [ %1539, %1527 ]
  %1529 = phi i32 [ %1516, %1514 ], [ %1581, %1527 ]
  %1530 = phi i32 [ 0, %1514 ], [ %1582, %1527 ]
  %1531 = phi ptr [ %1518, %1514 ], [ %1565, %1527 ]
  %1532 = phi ptr [ %1519, %1514 ], [ %1562, %1527 ]
  %1533 = phi ptr [ %1520, %1514 ], [ %1559, %1527 ]
  %1534 = phi ptr [ %1521, %1514 ], [ %1548, %1527 ]
  %1535 = phi ptr [ %1522, %1514 ], [ %1545, %1527 ]
  %1536 = phi ptr [ %1523, %1514 ], [ %1542, %1527 ]
  %1537 = phi ptr [ %1524, %1514 ], [ %1556, %1527 ]
  %1538 = phi ptr [ %1525, %1514 ], [ %1576, %1527 ]
  %1539 = getelementptr inbounds i8, ptr %1528, i64 1
  %1540 = load i8, ptr %1528, align 1, !tbaa !10
  %1541 = zext i8 %1540 to i32
  %1542 = getelementptr inbounds i8, ptr %1536, i64 1
  %1543 = load i8, ptr %1536, align 1, !tbaa !10
  %1544 = zext i8 %1543 to i32
  %1545 = getelementptr inbounds i8, ptr %1535, i64 1
  %1546 = load i8, ptr %1535, align 1, !tbaa !10
  %1547 = zext i8 %1546 to i32
  %1548 = getelementptr inbounds i8, ptr %1534, i64 1
  %1549 = load i8, ptr %1534, align 1, !tbaa !10
  %1550 = zext i8 %1549 to i32
  %1551 = add nuw nsw i32 %1541, 2
  %1552 = add nuw nsw i32 %1551, %1544
  %1553 = add nuw nsw i32 %1552, %1547
  %1554 = add nuw nsw i32 %1553, %1550
  %1555 = lshr i32 %1554, 2
  %1556 = getelementptr inbounds i8, ptr %1537, i64 1
  %1557 = load i8, ptr %1537, align 1, !tbaa !10
  %1558 = zext i8 %1557 to i32
  %1559 = getelementptr inbounds i8, ptr %1533, i64 1
  %1560 = load i8, ptr %1533, align 1, !tbaa !10
  %1561 = zext i8 %1560 to i32
  %1562 = getelementptr inbounds i8, ptr %1532, i64 1
  %1563 = load i8, ptr %1532, align 1, !tbaa !10
  %1564 = zext i8 %1563 to i32
  %1565 = getelementptr inbounds i8, ptr %1531, i64 1
  %1566 = load i8, ptr %1531, align 1, !tbaa !10
  %1567 = zext i8 %1566 to i32
  %1568 = add nuw nsw i32 %1558, 2
  %1569 = add nuw nsw i32 %1568, %1561
  %1570 = add nuw nsw i32 %1569, %1564
  %1571 = add nuw nsw i32 %1570, %1567
  %1572 = lshr i32 %1571, 2
  %1573 = add nuw nsw i32 %1555, 1
  %1574 = add nuw nsw i32 %1573, %1572
  %1575 = lshr i32 %1574, 1
  %1576 = getelementptr inbounds i8, ptr %1538, i64 1
  %1577 = load i8, ptr %1538, align 1, !tbaa !10
  %1578 = zext i8 %1577 to i32
  %1579 = sub nsw i32 %1575, %1578
  %1580 = tail call i32 @llvm.abs.i32(i32 %1579, i1 true)
  %1581 = add i32 %1580, %1529
  %1582 = add nuw nsw i32 %1530, 1
  %1583 = icmp eq i32 %1582, 16
  br i1 %1583, label %1584, label %1527

1584:                                             ; preds = %1527
  %1585 = getelementptr i8, ptr %1520, i64 16
  %1586 = getelementptr i8, ptr %1521, i64 16
  %1587 = getelementptr i8, ptr %1518, i64 16
  %1588 = getelementptr i8, ptr %1515, i64 16
  %1589 = getelementptr i8, ptr %1522, i64 16
  %1590 = getelementptr i8, ptr %1524, i64 16
  %1591 = getelementptr i8, ptr %1519, i64 16
  %1592 = getelementptr i8, ptr %1525, i64 16
  %1593 = getelementptr inbounds i8, ptr %1592, i64 %1513
  %1594 = getelementptr inbounds i8, ptr %1588, i64 %1513
  %1595 = getelementptr inbounds i8, ptr %1526, i64 %1513
  %1596 = getelementptr inbounds i8, ptr %1589, i64 %1513
  %1597 = getelementptr inbounds i8, ptr %1586, i64 %1513
  %1598 = getelementptr inbounds i8, ptr %1590, i64 %1513
  %1599 = getelementptr inbounds i8, ptr %1585, i64 %1513
  %1600 = getelementptr inbounds i8, ptr %1591, i64 %1513
  %1601 = getelementptr inbounds i8, ptr %1587, i64 %1513
  %1602 = add nuw nsw i32 %1517, 1
  %1603 = icmp eq i32 %1602, 8
  br i1 %1603, label %1604, label %1514

1604:                                             ; preds = %1584
  %1605 = load i32, ptr %62, align 4, !tbaa !6
  %1606 = ashr i32 %1605, 1
  %1607 = sext i32 %1606 to i64
  %1608 = getelementptr inbounds i8, ptr %2, i64 %1607
  %1609 = load i32, ptr %77, align 4, !tbaa !6
  %1610 = icmp eq i32 %1609, 0
  %1611 = select i1 %1610, i32 0, i32 %100
  %1612 = sext i32 %1611 to i64
  %1613 = getelementptr inbounds i8, ptr %1608, i64 %1612
  %1614 = load i32, ptr %63, align 4, !tbaa !6
  %1615 = ashr i32 %1614, 1
  %1616 = mul nsw i32 %1615, %1476
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds i8, ptr %1613, i64 %1617
  %1619 = load i32, ptr %66, align 4, !tbaa !6
  %1620 = ashr i32 %1619, 1
  %1621 = sext i32 %1620 to i64
  %1622 = getelementptr inbounds i8, ptr %3, i64 %1621
  %1623 = load i32, ptr %79, align 4, !tbaa !6
  %1624 = icmp eq i32 %1623, 0
  %1625 = select i1 %1624, i32 0, i32 %100
  %1626 = sext i32 %1625 to i64
  %1627 = getelementptr inbounds i8, ptr %1622, i64 %1626
  %1628 = load i32, ptr %67, align 4, !tbaa !6
  %1629 = ashr i32 %1628, 1
  %1630 = mul nsw i32 %1629, %1476
  %1631 = sext i32 %1630 to i64
  %1632 = getelementptr inbounds i8, ptr %1627, i64 %1631
  %1633 = getelementptr inbounds i8, ptr %108, i64 %109
  %1634 = and i32 %1605, 1
  %1635 = and i32 %1614, 1
  %1636 = and i32 %1619, 1
  %1637 = and i32 %1628, 1
  %1638 = mul nuw nsw i32 %1637, %1476
  %1639 = sext i32 %1638 to i64
  %1640 = getelementptr inbounds i8, ptr %1632, i64 %1639
  %1641 = zext nneg i32 %1636 to i64
  %1642 = getelementptr inbounds i8, ptr %1640, i64 %1641
  %1643 = getelementptr inbounds i8, ptr %1632, i64 %1641
  %1644 = mul nuw nsw i32 %1635, %1476
  %1645 = sext i32 %1644 to i64
  %1646 = getelementptr inbounds i8, ptr %1618, i64 %1645
  %1647 = zext nneg i32 %1634 to i64
  %1648 = getelementptr inbounds i8, ptr %1646, i64 %1647
  %1649 = getelementptr inbounds i8, ptr %1618, i64 %1647
  br label %1650

1650:                                             ; preds = %1720, %1604
  %1651 = phi ptr [ %1618, %1604 ], [ %1730, %1720 ]
  %1652 = phi i32 [ 0, %1604 ], [ %1717, %1720 ]
  %1653 = phi i32 [ 0, %1604 ], [ %1738, %1720 ]
  %1654 = phi ptr [ %1642, %1604 ], [ %1737, %1720 ]
  %1655 = phi ptr [ %1640, %1604 ], [ %1736, %1720 ]
  %1656 = phi ptr [ %1643, %1604 ], [ %1735, %1720 ]
  %1657 = phi ptr [ %1648, %1604 ], [ %1733, %1720 ]
  %1658 = phi ptr [ %1646, %1604 ], [ %1732, %1720 ]
  %1659 = phi ptr [ %1649, %1604 ], [ %1731, %1720 ]
  %1660 = phi ptr [ %1632, %1604 ], [ %1734, %1720 ]
  %1661 = phi ptr [ %1633, %1604 ], [ %1729, %1720 ]
  %1662 = getelementptr i8, ptr %1659, i64 16
  br label %1663

1663:                                             ; preds = %1663, %1650
  %1664 = phi ptr [ %1651, %1650 ], [ %1675, %1663 ]
  %1665 = phi i32 [ %1652, %1650 ], [ %1717, %1663 ]
  %1666 = phi i32 [ 0, %1650 ], [ %1718, %1663 ]
  %1667 = phi ptr [ %1654, %1650 ], [ %1701, %1663 ]
  %1668 = phi ptr [ %1655, %1650 ], [ %1698, %1663 ]
  %1669 = phi ptr [ %1656, %1650 ], [ %1695, %1663 ]
  %1670 = phi ptr [ %1657, %1650 ], [ %1684, %1663 ]
  %1671 = phi ptr [ %1658, %1650 ], [ %1681, %1663 ]
  %1672 = phi ptr [ %1659, %1650 ], [ %1678, %1663 ]
  %1673 = phi ptr [ %1660, %1650 ], [ %1692, %1663 ]
  %1674 = phi ptr [ %1661, %1650 ], [ %1712, %1663 ]
  %1675 = getelementptr inbounds i8, ptr %1664, i64 1
  %1676 = load i8, ptr %1664, align 1, !tbaa !10
  %1677 = zext i8 %1676 to i32
  %1678 = getelementptr inbounds i8, ptr %1672, i64 1
  %1679 = load i8, ptr %1672, align 1, !tbaa !10
  %1680 = zext i8 %1679 to i32
  %1681 = getelementptr inbounds i8, ptr %1671, i64 1
  %1682 = load i8, ptr %1671, align 1, !tbaa !10
  %1683 = zext i8 %1682 to i32
  %1684 = getelementptr inbounds i8, ptr %1670, i64 1
  %1685 = load i8, ptr %1670, align 1, !tbaa !10
  %1686 = zext i8 %1685 to i32
  %1687 = add nuw nsw i32 %1677, 2
  %1688 = add nuw nsw i32 %1687, %1680
  %1689 = add nuw nsw i32 %1688, %1683
  %1690 = add nuw nsw i32 %1689, %1686
  %1691 = lshr i32 %1690, 2
  %1692 = getelementptr inbounds i8, ptr %1673, i64 1
  %1693 = load i8, ptr %1673, align 1, !tbaa !10
  %1694 = zext i8 %1693 to i32
  %1695 = getelementptr inbounds i8, ptr %1669, i64 1
  %1696 = load i8, ptr %1669, align 1, !tbaa !10
  %1697 = zext i8 %1696 to i32
  %1698 = getelementptr inbounds i8, ptr %1668, i64 1
  %1699 = load i8, ptr %1668, align 1, !tbaa !10
  %1700 = zext i8 %1699 to i32
  %1701 = getelementptr inbounds i8, ptr %1667, i64 1
  %1702 = load i8, ptr %1667, align 1, !tbaa !10
  %1703 = zext i8 %1702 to i32
  %1704 = add nuw nsw i32 %1694, 2
  %1705 = add nuw nsw i32 %1704, %1697
  %1706 = add nuw nsw i32 %1705, %1700
  %1707 = add nuw nsw i32 %1706, %1703
  %1708 = lshr i32 %1707, 2
  %1709 = add nuw nsw i32 %1691, 1
  %1710 = add nuw nsw i32 %1709, %1708
  %1711 = lshr i32 %1710, 1
  %1712 = getelementptr inbounds i8, ptr %1674, i64 1
  %1713 = load i8, ptr %1674, align 1, !tbaa !10
  %1714 = zext i8 %1713 to i32
  %1715 = sub nsw i32 %1711, %1714
  %1716 = tail call i32 @llvm.abs.i32(i32 %1715, i1 true)
  %1717 = add i32 %1716, %1665
  %1718 = add nuw nsw i32 %1666, 1
  %1719 = icmp eq i32 %1718, 16
  br i1 %1719, label %1720, label %1663

1720:                                             ; preds = %1663
  %1721 = getelementptr i8, ptr %1656, i64 16
  %1722 = getelementptr i8, ptr %1657, i64 16
  %1723 = getelementptr i8, ptr %1654, i64 16
  %1724 = getelementptr i8, ptr %1651, i64 16
  %1725 = getelementptr i8, ptr %1658, i64 16
  %1726 = getelementptr i8, ptr %1660, i64 16
  %1727 = getelementptr i8, ptr %1655, i64 16
  %1728 = getelementptr i8, ptr %1661, i64 16
  %1729 = getelementptr inbounds i8, ptr %1728, i64 %1513
  %1730 = getelementptr inbounds i8, ptr %1724, i64 %1513
  %1731 = getelementptr inbounds i8, ptr %1662, i64 %1513
  %1732 = getelementptr inbounds i8, ptr %1725, i64 %1513
  %1733 = getelementptr inbounds i8, ptr %1722, i64 %1513
  %1734 = getelementptr inbounds i8, ptr %1726, i64 %1513
  %1735 = getelementptr inbounds i8, ptr %1721, i64 %1513
  %1736 = getelementptr inbounds i8, ptr %1727, i64 %1513
  %1737 = getelementptr inbounds i8, ptr %1723, i64 %1513
  %1738 = add nuw nsw i32 %1653, 1
  %1739 = icmp eq i32 %1738, 8
  br i1 %1739, label %1740, label %1650

1740:                                             ; preds = %1720
  %1741 = add nsw i32 %1717, %1581
  %1742 = icmp slt i32 %1443, %1741
  %1743 = load i32, ptr %69, align 4
  %1744 = icmp slt i32 %1443, %1743
  %1745 = select i1 %1742, i1 %1744, i1 false
  %1746 = load i32, ptr %72, align 4
  %1747 = icmp slt i32 %1443, %1746
  %1748 = select i1 %1745, i1 %1747, i1 false
  %1749 = load i32, ptr %70, align 4
  %1750 = icmp slt i32 %1443, %1749
  %1751 = select i1 %1748, i1 %1750, i1 false
  %1752 = load i32, ptr %73, align 4
  %1753 = icmp slt i32 %1443, %1752
  %1754 = select i1 %1751, i1 %1753, i1 false
  br i1 %1754, label %1755, label %1866

1755:                                             ; preds = %1740
  store i32 12, ptr %101, align 8, !tbaa !11
  %1756 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 2, ptr %1756, align 4, !tbaa !14
  %1757 = load i32, ptr @width, align 4, !tbaa !6
  %1758 = mul nsw i32 %1757, %1345
  %1759 = sext i32 %1758 to i64
  %1760 = getelementptr inbounds i8, ptr %1343, i64 %1759
  %1761 = mul nsw i32 %1757, %1354
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds i8, ptr %1352, i64 %1762
  %1764 = mul nuw nsw i32 %1757, %1361
  %1765 = sext i32 %1764 to i64
  %1766 = getelementptr inbounds i8, ptr %1763, i64 %1765
  %1767 = getelementptr inbounds i8, ptr %1766, i64 %1365
  %1768 = getelementptr inbounds i8, ptr %1763, i64 %1365
  %1769 = mul nuw nsw i32 %1757, %1359
  %1770 = sext i32 %1769 to i64
  %1771 = getelementptr inbounds i8, ptr %1760, i64 %1770
  %1772 = getelementptr inbounds i8, ptr %1771, i64 %1371
  %1773 = getelementptr inbounds i8, ptr %1760, i64 %1371
  %1774 = add nsw i32 %1757, -16
  %1775 = sext i32 %1774 to i64
  br label %1776

1776:                                             ; preds = %1846, %1755
  %1777 = phi ptr [ %1760, %1755 ], [ %1856, %1846 ]
  %1778 = phi i32 [ 0, %1755 ], [ %1843, %1846 ]
  %1779 = phi i32 [ 0, %1755 ], [ %1864, %1846 ]
  %1780 = phi ptr [ %1767, %1755 ], [ %1863, %1846 ]
  %1781 = phi ptr [ %1766, %1755 ], [ %1862, %1846 ]
  %1782 = phi ptr [ %1768, %1755 ], [ %1861, %1846 ]
  %1783 = phi ptr [ %1772, %1755 ], [ %1859, %1846 ]
  %1784 = phi ptr [ %1771, %1755 ], [ %1858, %1846 ]
  %1785 = phi ptr [ %1773, %1755 ], [ %1857, %1846 ]
  %1786 = phi ptr [ %1763, %1755 ], [ %1860, %1846 ]
  %1787 = phi ptr [ %108, %1755 ], [ %1855, %1846 ]
  %1788 = getelementptr i8, ptr %1785, i64 16
  br label %1789

1789:                                             ; preds = %1789, %1776
  %1790 = phi ptr [ %1777, %1776 ], [ %1801, %1789 ]
  %1791 = phi i32 [ %1778, %1776 ], [ %1843, %1789 ]
  %1792 = phi i32 [ 0, %1776 ], [ %1844, %1789 ]
  %1793 = phi ptr [ %1780, %1776 ], [ %1827, %1789 ]
  %1794 = phi ptr [ %1781, %1776 ], [ %1824, %1789 ]
  %1795 = phi ptr [ %1782, %1776 ], [ %1821, %1789 ]
  %1796 = phi ptr [ %1783, %1776 ], [ %1810, %1789 ]
  %1797 = phi ptr [ %1784, %1776 ], [ %1807, %1789 ]
  %1798 = phi ptr [ %1785, %1776 ], [ %1804, %1789 ]
  %1799 = phi ptr [ %1786, %1776 ], [ %1818, %1789 ]
  %1800 = phi ptr [ %1787, %1776 ], [ %1838, %1789 ]
  %1801 = getelementptr inbounds i8, ptr %1790, i64 1
  %1802 = load i8, ptr %1790, align 1, !tbaa !10
  %1803 = zext i8 %1802 to i32
  %1804 = getelementptr inbounds i8, ptr %1798, i64 1
  %1805 = load i8, ptr %1798, align 1, !tbaa !10
  %1806 = zext i8 %1805 to i32
  %1807 = getelementptr inbounds i8, ptr %1797, i64 1
  %1808 = load i8, ptr %1797, align 1, !tbaa !10
  %1809 = zext i8 %1808 to i32
  %1810 = getelementptr inbounds i8, ptr %1796, i64 1
  %1811 = load i8, ptr %1796, align 1, !tbaa !10
  %1812 = zext i8 %1811 to i32
  %1813 = add nuw nsw i32 %1803, 2
  %1814 = add nuw nsw i32 %1813, %1806
  %1815 = add nuw nsw i32 %1814, %1809
  %1816 = add nuw nsw i32 %1815, %1812
  %1817 = lshr i32 %1816, 2
  %1818 = getelementptr inbounds i8, ptr %1799, i64 1
  %1819 = load i8, ptr %1799, align 1, !tbaa !10
  %1820 = zext i8 %1819 to i32
  %1821 = getelementptr inbounds i8, ptr %1795, i64 1
  %1822 = load i8, ptr %1795, align 1, !tbaa !10
  %1823 = zext i8 %1822 to i32
  %1824 = getelementptr inbounds i8, ptr %1794, i64 1
  %1825 = load i8, ptr %1794, align 1, !tbaa !10
  %1826 = zext i8 %1825 to i32
  %1827 = getelementptr inbounds i8, ptr %1793, i64 1
  %1828 = load i8, ptr %1793, align 1, !tbaa !10
  %1829 = zext i8 %1828 to i32
  %1830 = add nuw nsw i32 %1820, 2
  %1831 = add nuw nsw i32 %1830, %1823
  %1832 = add nuw nsw i32 %1831, %1826
  %1833 = add nuw nsw i32 %1832, %1829
  %1834 = lshr i32 %1833, 2
  %1835 = add nuw nsw i32 %1817, 1
  %1836 = add nuw nsw i32 %1835, %1834
  %1837 = lshr i32 %1836, 1
  %1838 = getelementptr inbounds i8, ptr %1800, i64 1
  %1839 = load i8, ptr %1800, align 1, !tbaa !10
  %1840 = zext i8 %1839 to i32
  %1841 = sub nsw i32 %1837, %1840
  %1842 = mul nsw i32 %1841, %1841
  %1843 = add nsw i32 %1842, %1791
  %1844 = add nuw nsw i32 %1792, 1
  %1845 = icmp eq i32 %1844, 16
  br i1 %1845, label %1846, label %1789

1846:                                             ; preds = %1789
  %1847 = getelementptr i8, ptr %1782, i64 16
  %1848 = getelementptr i8, ptr %1783, i64 16
  %1849 = getelementptr i8, ptr %1780, i64 16
  %1850 = getelementptr i8, ptr %1777, i64 16
  %1851 = getelementptr i8, ptr %1784, i64 16
  %1852 = getelementptr i8, ptr %1786, i64 16
  %1853 = getelementptr i8, ptr %1781, i64 16
  %1854 = getelementptr i8, ptr %1787, i64 16
  %1855 = getelementptr inbounds i8, ptr %1854, i64 %1775
  %1856 = getelementptr inbounds i8, ptr %1850, i64 %1775
  %1857 = getelementptr inbounds i8, ptr %1788, i64 %1775
  %1858 = getelementptr inbounds i8, ptr %1851, i64 %1775
  %1859 = getelementptr inbounds i8, ptr %1848, i64 %1775
  %1860 = getelementptr inbounds i8, ptr %1852, i64 %1775
  %1861 = getelementptr inbounds i8, ptr %1847, i64 %1775
  %1862 = getelementptr inbounds i8, ptr %1853, i64 %1775
  %1863 = getelementptr inbounds i8, ptr %1849, i64 %1775
  %1864 = add nuw nsw i32 %1779, 1
  %1865 = icmp eq i32 %1864, 16
  br i1 %1865, label %2180, label %1776

1866:                                             ; preds = %1740
  %1867 = icmp slt i32 %1741, %1743
  %1868 = icmp slt i32 %1741, %1746
  %1869 = select i1 %1867, i1 %1868, i1 false
  %1870 = icmp slt i32 %1741, %1749
  %1871 = select i1 %1869, i1 %1870, i1 false
  %1872 = icmp slt i32 %1741, %1752
  %1873 = select i1 %1871, i1 %1872, i1 false
  br i1 %1873, label %1874, label %2109

1874:                                             ; preds = %1866
  store i32 12, ptr %101, align 8, !tbaa !11
  %1875 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 1, ptr %1875, align 4, !tbaa !14
  %1876 = load i32, ptr @width, align 4
  %1877 = select i1 %1472, i32 0, i32 %1876
  %1878 = sext i32 %1877 to i64
  %1879 = getelementptr inbounds i8, ptr %1470, i64 %1878
  %1880 = shl i32 %1876, 1
  %1881 = mul nsw i32 %1880, %1478
  %1882 = sext i32 %1881 to i64
  %1883 = getelementptr inbounds i8, ptr %1879, i64 %1882
  %1884 = select i1 %1487, i32 0, i32 %1876
  %1885 = sext i32 %1884 to i64
  %1886 = getelementptr inbounds i8, ptr %1485, i64 %1885
  %1887 = mul nsw i32 %1880, %1492
  %1888 = sext i32 %1887 to i64
  %1889 = getelementptr inbounds i8, ptr %1886, i64 %1888
  %1890 = mul nuw nsw i32 %1880, %1499
  %1891 = sext i32 %1890 to i64
  %1892 = getelementptr inbounds i8, ptr %1889, i64 %1891
  %1893 = getelementptr inbounds i8, ptr %1892, i64 %1503
  %1894 = getelementptr inbounds i8, ptr %1889, i64 %1503
  %1895 = mul nuw nsw i32 %1880, %1497
  %1896 = sext i32 %1895 to i64
  %1897 = getelementptr inbounds i8, ptr %1883, i64 %1896
  %1898 = getelementptr inbounds i8, ptr %1897, i64 %1509
  %1899 = getelementptr inbounds i8, ptr %1883, i64 %1509
  %1900 = add nsw i32 %1880, -16
  %1901 = sext i32 %1900 to i64
  br label %1902

1902:                                             ; preds = %1972, %1874
  %1903 = phi ptr [ %1883, %1874 ], [ %1982, %1972 ]
  %1904 = phi i32 [ 0, %1874 ], [ %1969, %1972 ]
  %1905 = phi i32 [ 0, %1874 ], [ %1990, %1972 ]
  %1906 = phi ptr [ %1893, %1874 ], [ %1989, %1972 ]
  %1907 = phi ptr [ %1892, %1874 ], [ %1988, %1972 ]
  %1908 = phi ptr [ %1894, %1874 ], [ %1987, %1972 ]
  %1909 = phi ptr [ %1898, %1874 ], [ %1985, %1972 ]
  %1910 = phi ptr [ %1897, %1874 ], [ %1984, %1972 ]
  %1911 = phi ptr [ %1899, %1874 ], [ %1983, %1972 ]
  %1912 = phi ptr [ %1889, %1874 ], [ %1986, %1972 ]
  %1913 = phi ptr [ %108, %1874 ], [ %1981, %1972 ]
  %1914 = getelementptr i8, ptr %1911, i64 16
  br label %1915

1915:                                             ; preds = %1915, %1902
  %1916 = phi ptr [ %1903, %1902 ], [ %1927, %1915 ]
  %1917 = phi i32 [ %1904, %1902 ], [ %1969, %1915 ]
  %1918 = phi i32 [ 0, %1902 ], [ %1970, %1915 ]
  %1919 = phi ptr [ %1906, %1902 ], [ %1953, %1915 ]
  %1920 = phi ptr [ %1907, %1902 ], [ %1950, %1915 ]
  %1921 = phi ptr [ %1908, %1902 ], [ %1947, %1915 ]
  %1922 = phi ptr [ %1909, %1902 ], [ %1936, %1915 ]
  %1923 = phi ptr [ %1910, %1902 ], [ %1933, %1915 ]
  %1924 = phi ptr [ %1911, %1902 ], [ %1930, %1915 ]
  %1925 = phi ptr [ %1912, %1902 ], [ %1944, %1915 ]
  %1926 = phi ptr [ %1913, %1902 ], [ %1964, %1915 ]
  %1927 = getelementptr inbounds i8, ptr %1916, i64 1
  %1928 = load i8, ptr %1916, align 1, !tbaa !10
  %1929 = zext i8 %1928 to i32
  %1930 = getelementptr inbounds i8, ptr %1924, i64 1
  %1931 = load i8, ptr %1924, align 1, !tbaa !10
  %1932 = zext i8 %1931 to i32
  %1933 = getelementptr inbounds i8, ptr %1923, i64 1
  %1934 = load i8, ptr %1923, align 1, !tbaa !10
  %1935 = zext i8 %1934 to i32
  %1936 = getelementptr inbounds i8, ptr %1922, i64 1
  %1937 = load i8, ptr %1922, align 1, !tbaa !10
  %1938 = zext i8 %1937 to i32
  %1939 = add nuw nsw i32 %1929, 2
  %1940 = add nuw nsw i32 %1939, %1932
  %1941 = add nuw nsw i32 %1940, %1935
  %1942 = add nuw nsw i32 %1941, %1938
  %1943 = lshr i32 %1942, 2
  %1944 = getelementptr inbounds i8, ptr %1925, i64 1
  %1945 = load i8, ptr %1925, align 1, !tbaa !10
  %1946 = zext i8 %1945 to i32
  %1947 = getelementptr inbounds i8, ptr %1921, i64 1
  %1948 = load i8, ptr %1921, align 1, !tbaa !10
  %1949 = zext i8 %1948 to i32
  %1950 = getelementptr inbounds i8, ptr %1920, i64 1
  %1951 = load i8, ptr %1920, align 1, !tbaa !10
  %1952 = zext i8 %1951 to i32
  %1953 = getelementptr inbounds i8, ptr %1919, i64 1
  %1954 = load i8, ptr %1919, align 1, !tbaa !10
  %1955 = zext i8 %1954 to i32
  %1956 = add nuw nsw i32 %1946, 2
  %1957 = add nuw nsw i32 %1956, %1949
  %1958 = add nuw nsw i32 %1957, %1952
  %1959 = add nuw nsw i32 %1958, %1955
  %1960 = lshr i32 %1959, 2
  %1961 = add nuw nsw i32 %1943, 1
  %1962 = add nuw nsw i32 %1961, %1960
  %1963 = lshr i32 %1962, 1
  %1964 = getelementptr inbounds i8, ptr %1926, i64 1
  %1965 = load i8, ptr %1926, align 1, !tbaa !10
  %1966 = zext i8 %1965 to i32
  %1967 = sub nsw i32 %1963, %1966
  %1968 = mul nsw i32 %1967, %1967
  %1969 = add nsw i32 %1968, %1917
  %1970 = add nuw nsw i32 %1918, 1
  %1971 = icmp eq i32 %1970, 16
  br i1 %1971, label %1972, label %1915

1972:                                             ; preds = %1915
  %1973 = getelementptr i8, ptr %1908, i64 16
  %1974 = getelementptr i8, ptr %1909, i64 16
  %1975 = getelementptr i8, ptr %1906, i64 16
  %1976 = getelementptr i8, ptr %1903, i64 16
  %1977 = getelementptr i8, ptr %1910, i64 16
  %1978 = getelementptr i8, ptr %1912, i64 16
  %1979 = getelementptr i8, ptr %1907, i64 16
  %1980 = getelementptr i8, ptr %1913, i64 16
  %1981 = getelementptr inbounds i8, ptr %1980, i64 %1901
  %1982 = getelementptr inbounds i8, ptr %1976, i64 %1901
  %1983 = getelementptr inbounds i8, ptr %1914, i64 %1901
  %1984 = getelementptr inbounds i8, ptr %1977, i64 %1901
  %1985 = getelementptr inbounds i8, ptr %1974, i64 %1901
  %1986 = getelementptr inbounds i8, ptr %1978, i64 %1901
  %1987 = getelementptr inbounds i8, ptr %1973, i64 %1901
  %1988 = getelementptr inbounds i8, ptr %1979, i64 %1901
  %1989 = getelementptr inbounds i8, ptr %1975, i64 %1901
  %1990 = add nuw nsw i32 %1905, 1
  %1991 = icmp eq i32 %1990, 8
  br i1 %1991, label %1992, label %1902

1992:                                             ; preds = %1972
  %1993 = select i1 %1610, i32 0, i32 %1876
  %1994 = sext i32 %1993 to i64
  %1995 = getelementptr inbounds i8, ptr %1608, i64 %1994
  %1996 = mul nsw i32 %1880, %1615
  %1997 = sext i32 %1996 to i64
  %1998 = getelementptr inbounds i8, ptr %1995, i64 %1997
  %1999 = select i1 %1624, i32 0, i32 %1876
  %2000 = sext i32 %1999 to i64
  %2001 = getelementptr inbounds i8, ptr %1622, i64 %2000
  %2002 = mul nsw i32 %1880, %1629
  %2003 = sext i32 %2002 to i64
  %2004 = getelementptr inbounds i8, ptr %2001, i64 %2003
  %2005 = sext i32 %1876 to i64
  %2006 = getelementptr inbounds i8, ptr %108, i64 %2005
  %2007 = mul nuw nsw i32 %1880, %1637
  %2008 = sext i32 %2007 to i64
  %2009 = getelementptr inbounds i8, ptr %2004, i64 %2008
  %2010 = getelementptr inbounds i8, ptr %2009, i64 %1641
  %2011 = getelementptr inbounds i8, ptr %2004, i64 %1641
  %2012 = mul nuw nsw i32 %1880, %1635
  %2013 = sext i32 %2012 to i64
  %2014 = getelementptr inbounds i8, ptr %1998, i64 %2013
  %2015 = getelementptr inbounds i8, ptr %2014, i64 %1647
  %2016 = getelementptr inbounds i8, ptr %1998, i64 %1647
  br label %2017

2017:                                             ; preds = %2087, %1992
  %2018 = phi ptr [ %1998, %1992 ], [ %2097, %2087 ]
  %2019 = phi i32 [ 0, %1992 ], [ %2084, %2087 ]
  %2020 = phi i32 [ 0, %1992 ], [ %2105, %2087 ]
  %2021 = phi ptr [ %2010, %1992 ], [ %2104, %2087 ]
  %2022 = phi ptr [ %2009, %1992 ], [ %2103, %2087 ]
  %2023 = phi ptr [ %2011, %1992 ], [ %2102, %2087 ]
  %2024 = phi ptr [ %2015, %1992 ], [ %2100, %2087 ]
  %2025 = phi ptr [ %2014, %1992 ], [ %2099, %2087 ]
  %2026 = phi ptr [ %2016, %1992 ], [ %2098, %2087 ]
  %2027 = phi ptr [ %2004, %1992 ], [ %2101, %2087 ]
  %2028 = phi ptr [ %2006, %1992 ], [ %2096, %2087 ]
  %2029 = getelementptr i8, ptr %2026, i64 16
  br label %2030

2030:                                             ; preds = %2030, %2017
  %2031 = phi ptr [ %2018, %2017 ], [ %2042, %2030 ]
  %2032 = phi i32 [ %2019, %2017 ], [ %2084, %2030 ]
  %2033 = phi i32 [ 0, %2017 ], [ %2085, %2030 ]
  %2034 = phi ptr [ %2021, %2017 ], [ %2068, %2030 ]
  %2035 = phi ptr [ %2022, %2017 ], [ %2065, %2030 ]
  %2036 = phi ptr [ %2023, %2017 ], [ %2062, %2030 ]
  %2037 = phi ptr [ %2024, %2017 ], [ %2051, %2030 ]
  %2038 = phi ptr [ %2025, %2017 ], [ %2048, %2030 ]
  %2039 = phi ptr [ %2026, %2017 ], [ %2045, %2030 ]
  %2040 = phi ptr [ %2027, %2017 ], [ %2059, %2030 ]
  %2041 = phi ptr [ %2028, %2017 ], [ %2079, %2030 ]
  %2042 = getelementptr inbounds i8, ptr %2031, i64 1
  %2043 = load i8, ptr %2031, align 1, !tbaa !10
  %2044 = zext i8 %2043 to i32
  %2045 = getelementptr inbounds i8, ptr %2039, i64 1
  %2046 = load i8, ptr %2039, align 1, !tbaa !10
  %2047 = zext i8 %2046 to i32
  %2048 = getelementptr inbounds i8, ptr %2038, i64 1
  %2049 = load i8, ptr %2038, align 1, !tbaa !10
  %2050 = zext i8 %2049 to i32
  %2051 = getelementptr inbounds i8, ptr %2037, i64 1
  %2052 = load i8, ptr %2037, align 1, !tbaa !10
  %2053 = zext i8 %2052 to i32
  %2054 = add nuw nsw i32 %2044, 2
  %2055 = add nuw nsw i32 %2054, %2047
  %2056 = add nuw nsw i32 %2055, %2050
  %2057 = add nuw nsw i32 %2056, %2053
  %2058 = lshr i32 %2057, 2
  %2059 = getelementptr inbounds i8, ptr %2040, i64 1
  %2060 = load i8, ptr %2040, align 1, !tbaa !10
  %2061 = zext i8 %2060 to i32
  %2062 = getelementptr inbounds i8, ptr %2036, i64 1
  %2063 = load i8, ptr %2036, align 1, !tbaa !10
  %2064 = zext i8 %2063 to i32
  %2065 = getelementptr inbounds i8, ptr %2035, i64 1
  %2066 = load i8, ptr %2035, align 1, !tbaa !10
  %2067 = zext i8 %2066 to i32
  %2068 = getelementptr inbounds i8, ptr %2034, i64 1
  %2069 = load i8, ptr %2034, align 1, !tbaa !10
  %2070 = zext i8 %2069 to i32
  %2071 = add nuw nsw i32 %2061, 2
  %2072 = add nuw nsw i32 %2071, %2064
  %2073 = add nuw nsw i32 %2072, %2067
  %2074 = add nuw nsw i32 %2073, %2070
  %2075 = lshr i32 %2074, 2
  %2076 = add nuw nsw i32 %2058, 1
  %2077 = add nuw nsw i32 %2076, %2075
  %2078 = lshr i32 %2077, 1
  %2079 = getelementptr inbounds i8, ptr %2041, i64 1
  %2080 = load i8, ptr %2041, align 1, !tbaa !10
  %2081 = zext i8 %2080 to i32
  %2082 = sub nsw i32 %2078, %2081
  %2083 = mul nsw i32 %2082, %2082
  %2084 = add nsw i32 %2083, %2032
  %2085 = add nuw nsw i32 %2033, 1
  %2086 = icmp eq i32 %2085, 16
  br i1 %2086, label %2087, label %2030

2087:                                             ; preds = %2030
  %2088 = getelementptr i8, ptr %2023, i64 16
  %2089 = getelementptr i8, ptr %2024, i64 16
  %2090 = getelementptr i8, ptr %2021, i64 16
  %2091 = getelementptr i8, ptr %2018, i64 16
  %2092 = getelementptr i8, ptr %2025, i64 16
  %2093 = getelementptr i8, ptr %2027, i64 16
  %2094 = getelementptr i8, ptr %2022, i64 16
  %2095 = getelementptr i8, ptr %2028, i64 16
  %2096 = getelementptr inbounds i8, ptr %2095, i64 %1901
  %2097 = getelementptr inbounds i8, ptr %2091, i64 %1901
  %2098 = getelementptr inbounds i8, ptr %2029, i64 %1901
  %2099 = getelementptr inbounds i8, ptr %2092, i64 %1901
  %2100 = getelementptr inbounds i8, ptr %2089, i64 %1901
  %2101 = getelementptr inbounds i8, ptr %2093, i64 %1901
  %2102 = getelementptr inbounds i8, ptr %2088, i64 %1901
  %2103 = getelementptr inbounds i8, ptr %2094, i64 %1901
  %2104 = getelementptr inbounds i8, ptr %2090, i64 %1901
  %2105 = add nuw nsw i32 %2020, 1
  %2106 = icmp eq i32 %2105, 8
  br i1 %2106, label %2107, label %2017

2107:                                             ; preds = %2087
  %2108 = add nsw i32 %2084, %1969
  br label %2180

2109:                                             ; preds = %1866
  %2110 = icmp slt i32 %1743, %1746
  %2111 = icmp slt i32 %1743, %1749
  %2112 = select i1 %2110, i1 %2111, i1 false
  %2113 = icmp slt i32 %1743, %1752
  %2114 = select i1 %2112, i1 %2113, i1 false
  br i1 %2114, label %2115, label %2122

2115:                                             ; preds = %2109
  store i32 8, ptr %101, align 8, !tbaa !11
  %2116 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 2, ptr %2116, align 4, !tbaa !14
  %2117 = load i32, ptr @width, align 4, !tbaa !6
  %2118 = mul nsw i32 %2117, %1345
  %2119 = sext i32 %2118 to i64
  %2120 = getelementptr inbounds i8, ptr %1343, i64 %2119
  %2121 = tail call fastcc signext i32 @dist2(ptr noundef readonly %2120, ptr noundef readonly %108, i32 noundef signext %2117, i32 noundef signext %1358, i32 noundef signext %1359, i32 noundef signext 16)
  br label %2180

2122:                                             ; preds = %2109
  %2123 = icmp slt i32 %1746, %1749
  %2124 = icmp slt i32 %1746, %1752
  %2125 = select i1 %2123, i1 %2124, i1 false
  br i1 %2125, label %2126, label %2149

2126:                                             ; preds = %2122
  store i32 8, ptr %101, align 8, !tbaa !11
  %2127 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 1, ptr %2127, align 4, !tbaa !14
  %2128 = load i32, ptr @width, align 4
  %2129 = select i1 %1472, i32 0, i32 %2128
  %2130 = sext i32 %2129 to i64
  %2131 = getelementptr inbounds i8, ptr %2, i64 %2130
  %2132 = getelementptr inbounds i8, ptr %2131, i64 %1469
  %2133 = shl i32 %2128, 1
  %2134 = mul nsw i32 %2133, %1478
  %2135 = sext i32 %2134 to i64
  %2136 = getelementptr inbounds i8, ptr %2132, i64 %2135
  %2137 = tail call fastcc signext i32 @dist2(ptr noundef readonly %2136, ptr noundef readonly %108, i32 noundef signext %2133, i32 noundef signext %1496, i32 noundef signext %1497, i32 noundef signext 8)
  %2138 = select i1 %1610, i32 0, i32 %2128
  %2139 = sext i32 %2138 to i64
  %2140 = getelementptr inbounds i8, ptr %2, i64 %2139
  %2141 = getelementptr inbounds i8, ptr %2140, i64 %1607
  %2142 = mul nsw i32 %2133, %1615
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds i8, ptr %2141, i64 %2143
  %2145 = sext i32 %2128 to i64
  %2146 = getelementptr inbounds i8, ptr %108, i64 %2145
  %2147 = tail call fastcc signext i32 @dist2(ptr noundef readonly %2144, ptr noundef readonly %2146, i32 noundef signext %2133, i32 noundef signext %1634, i32 noundef signext %1635, i32 noundef signext 8)
  %2148 = add nsw i32 %2147, %2137
  br label %2180

2149:                                             ; preds = %2122
  %2150 = icmp slt i32 %1749, %1752
  store i32 4, ptr %101, align 8, !tbaa !11
  %2151 = getelementptr inbounds i8, ptr %101, i64 4
  br i1 %2150, label %2152, label %2158

2152:                                             ; preds = %2149
  store i32 2, ptr %2151, align 4, !tbaa !14
  %2153 = load i32, ptr @width, align 4, !tbaa !6
  %2154 = mul nsw i32 %2153, %1354
  %2155 = sext i32 %2154 to i64
  %2156 = getelementptr inbounds i8, ptr %1352, i64 %2155
  %2157 = tail call fastcc signext i32 @dist2(ptr noundef readonly %2156, ptr noundef readonly %108, i32 noundef signext %2153, i32 noundef signext %1360, i32 noundef signext %1361, i32 noundef signext 16)
  br label %2180

2158:                                             ; preds = %2149
  store i32 1, ptr %2151, align 4, !tbaa !14
  %2159 = load i32, ptr @width, align 4
  %2160 = select i1 %1487, i32 0, i32 %2159
  %2161 = sext i32 %2160 to i64
  %2162 = getelementptr inbounds i8, ptr %3, i64 %2161
  %2163 = getelementptr inbounds i8, ptr %2162, i64 %1484
  %2164 = shl i32 %2159, 1
  %2165 = mul nsw i32 %2164, %1492
  %2166 = sext i32 %2165 to i64
  %2167 = getelementptr inbounds i8, ptr %2163, i64 %2166
  %2168 = tail call fastcc signext i32 @dist2(ptr noundef readonly %2167, ptr noundef readonly %108, i32 noundef signext %2164, i32 noundef signext %1498, i32 noundef signext %1499, i32 noundef signext 8)
  %2169 = select i1 %1624, i32 0, i32 %2159
  %2170 = sext i32 %2169 to i64
  %2171 = getelementptr inbounds i8, ptr %3, i64 %2170
  %2172 = getelementptr inbounds i8, ptr %2171, i64 %1621
  %2173 = mul nsw i32 %2164, %1629
  %2174 = sext i32 %2173 to i64
  %2175 = getelementptr inbounds i8, ptr %2172, i64 %2174
  %2176 = sext i32 %2159 to i64
  %2177 = getelementptr inbounds i8, ptr %108, i64 %2176
  %2178 = tail call fastcc signext i32 @dist2(ptr noundef readonly %2175, ptr noundef readonly %2177, i32 noundef signext %2164, i32 noundef signext %1636, i32 noundef signext %1637, i32 noundef signext 8)
  %2179 = add nsw i32 %2178, %2168
  br label %2180

2180:                                             ; preds = %1846, %2158, %2152, %2126, %2115, %2107, %1328
  %2181 = phi i32 [ %1216, %1328 ], [ %1353, %2107 ], [ %1353, %2115 ], [ %1353, %2126 ], [ %1353, %2152 ], [ %1353, %2158 ], [ %1353, %1846 ]
  %2182 = phi i32 [ %1212, %1328 ], [ %1349, %2107 ], [ %1349, %2115 ], [ %1349, %2126 ], [ %1349, %2152 ], [ %1349, %2158 ], [ %1349, %1846 ]
  %2183 = phi i32 [ %1203, %1328 ], [ %1344, %2107 ], [ %1344, %2115 ], [ %1344, %2126 ], [ %1344, %2152 ], [ %1344, %2158 ], [ %1344, %1846 ]
  %2184 = phi i32 [ %1199, %1328 ], [ %1340, %2107 ], [ %1340, %2115 ], [ %1340, %2126 ], [ %1340, %2152 ], [ %1340, %2158 ], [ %1340, %1846 ]
  %2185 = phi i32 [ undef, %1328 ], [ %1623, %2107 ], [ %1623, %2115 ], [ %1623, %2126 ], [ %1623, %2152 ], [ %1623, %2158 ], [ %1623, %1846 ]
  %2186 = phi i32 [ undef, %1328 ], [ %1486, %2107 ], [ %1486, %2115 ], [ %1486, %2126 ], [ %1486, %2152 ], [ %1486, %2158 ], [ %1486, %1846 ]
  %2187 = phi i32 [ undef, %1328 ], [ %1628, %2107 ], [ %1628, %2115 ], [ %1628, %2126 ], [ %1628, %2152 ], [ %1628, %2158 ], [ %1628, %1846 ]
  %2188 = phi i32 [ undef, %1328 ], [ %1619, %2107 ], [ %1619, %2115 ], [ %1619, %2126 ], [ %1619, %2152 ], [ %1619, %2158 ], [ %1619, %1846 ]
  %2189 = phi i32 [ undef, %1328 ], [ %1491, %2107 ], [ %1491, %2115 ], [ %1491, %2126 ], [ %1491, %2152 ], [ %1491, %2158 ], [ %1491, %1846 ]
  %2190 = phi i32 [ undef, %1328 ], [ %1482, %2107 ], [ %1482, %2115 ], [ %1482, %2126 ], [ %1482, %2152 ], [ %1482, %2158 ], [ %1482, %1846 ]
  %2191 = phi i32 [ undef, %1328 ], [ %1609, %2107 ], [ %1609, %2115 ], [ %1609, %2126 ], [ %1609, %2152 ], [ %1609, %2158 ], [ %1609, %1846 ]
  %2192 = phi i32 [ undef, %1328 ], [ %1471, %2107 ], [ %1471, %2115 ], [ %1471, %2126 ], [ %1471, %2152 ], [ %1471, %2158 ], [ %1471, %1846 ]
  %2193 = phi i32 [ undef, %1328 ], [ %1614, %2107 ], [ %1614, %2115 ], [ %1614, %2126 ], [ %1614, %2152 ], [ %1614, %2158 ], [ %1614, %1846 ]
  %2194 = phi i32 [ undef, %1328 ], [ %1605, %2107 ], [ %1605, %2115 ], [ %1605, %2126 ], [ %1605, %2152 ], [ %1605, %2158 ], [ %1605, %1846 ]
  %2195 = phi i32 [ undef, %1328 ], [ %1477, %2107 ], [ %1477, %2115 ], [ %1477, %2126 ], [ %1477, %2152 ], [ %1477, %2158 ], [ %1477, %1846 ]
  %2196 = phi i32 [ undef, %1328 ], [ %1467, %2107 ], [ %1467, %2115 ], [ %1467, %2126 ], [ %1467, %2152 ], [ %1467, %2158 ], [ %1467, %1846 ]
  %2197 = phi i1 [ true, %1328 ], [ false, %2107 ], [ true, %2115 ], [ false, %2126 ], [ true, %2152 ], [ false, %2158 ], [ true, %1846 ]
  %2198 = phi i32 [ %1336, %1328 ], [ %2108, %2107 ], [ %2121, %2115 ], [ %2148, %2126 ], [ %2157, %2152 ], [ %2179, %2158 ], [ %1843, %1846 ]
  %2199 = icmp sgt i32 %2198, %218
  %2200 = icmp sgt i32 %2198, 2303
  %2201 = and i1 %2199, %2200
  br i1 %2201, label %2202, label %2203

2202:                                             ; preds = %2180
  store i32 1, ptr %101, align 8, !tbaa !11
  br label %2238

2203:                                             ; preds = %2180
  %2204 = getelementptr inbounds i8, ptr %101, i64 24
  %2205 = getelementptr inbounds i8, ptr %101, i64 28
  %2206 = trunc i64 %99 to i32
  %2207 = shl i32 %2206, 1
  br i1 %2197, label %2208, label %2215

2208:                                             ; preds = %2203
  %2209 = sub nsw i32 %2184, %2207
  store i32 %2209, ptr %2204, align 8, !tbaa !6
  %2210 = sub nsw i32 %2183, %94
  store i32 %2210, ptr %2205, align 4, !tbaa !6
  %2211 = sub nsw i32 %2182, %2207
  %2212 = getelementptr inbounds i8, ptr %101, i64 32
  store i32 %2211, ptr %2212, align 8, !tbaa !6
  %2213 = sub nsw i32 %2181, %94
  %2214 = getelementptr inbounds i8, ptr %101, i64 36
  store i32 %2213, ptr %2214, align 4, !tbaa !6
  br label %2238

2215:                                             ; preds = %2203
  %2216 = sub nsw i32 %2196, %2207
  store i32 %2216, ptr %2204, align 8, !tbaa !6
  %2217 = sub i32 %2195, %90
  %2218 = shl i32 %2217, 1
  store i32 %2218, ptr %2205, align 4, !tbaa !6
  %2219 = sub nsw i32 %2194, %2207
  %2220 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 %2219, ptr %2220, align 8, !tbaa !6
  %2221 = sub i32 %2193, %90
  %2222 = shl i32 %2221, 1
  %2223 = getelementptr inbounds i8, ptr %101, i64 44
  store i32 %2222, ptr %2223, align 4, !tbaa !6
  %2224 = getelementptr inbounds i8, ptr %101, i64 56
  store i32 %2192, ptr %2224, align 8, !tbaa !6
  %2225 = getelementptr inbounds i8, ptr %101, i64 64
  store i32 %2191, ptr %2225, align 8, !tbaa !6
  %2226 = sub nsw i32 %2190, %2207
  %2227 = getelementptr inbounds i8, ptr %101, i64 32
  store i32 %2226, ptr %2227, align 8, !tbaa !6
  %2228 = sub i32 %2189, %90
  %2229 = shl i32 %2228, 1
  %2230 = getelementptr inbounds i8, ptr %101, i64 36
  store i32 %2229, ptr %2230, align 4, !tbaa !6
  %2231 = sub nsw i32 %2188, %2207
  %2232 = getelementptr inbounds i8, ptr %101, i64 48
  store i32 %2231, ptr %2232, align 8, !tbaa !6
  %2233 = sub i32 %2187, %90
  %2234 = shl i32 %2233, 1
  %2235 = getelementptr inbounds i8, ptr %101, i64 52
  store i32 %2234, ptr %2235, align 4, !tbaa !6
  %2236 = getelementptr inbounds i8, ptr %101, i64 60
  store i32 %2186, ptr %2236, align 4, !tbaa !6
  %2237 = getelementptr inbounds i8, ptr %101, i64 68
  store i32 %2185, ptr %2237, align 4, !tbaa !6
  br label %2238

2238:                                             ; preds = %220, %986, %1148, %1157, %1167, %1188, %2202, %2208, %2215
  %2239 = phi i32 [ %218, %220 ], [ %218, %986 ], [ %982, %1148 ], [ %982, %1157 ], [ %982, %1167 ], [ %1136, %1188 ], [ %218, %2202 ], [ %2198, %2208 ], [ %2198, %2215 ]
  %2240 = getelementptr inbounds i8, ptr %101, i64 88
  store i32 %2239, ptr %2240, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %81) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %80) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %79) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %78) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %77) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %76) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %75) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %74) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %73) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %72) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %71) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %70) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %69) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %68) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %67) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %66) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %65) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %64) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %63) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %62) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %61) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %60) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %59) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %58) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %57) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %56) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %55) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %54) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %53) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %52) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %50) #5
  br label %3886

2241:                                             ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %46) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %47) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %48) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %49) #5
  %2242 = shl i32 %100, 1
  %2243 = getelementptr inbounds i8, ptr %4, i64 %99
  %2244 = mul nsw i32 %2242, %90
  %2245 = sext i32 %2244 to i64
  %2246 = getelementptr inbounds i8, ptr %2243, i64 %2245
  %2247 = icmp eq i32 %102, 2
  %2248 = sext i32 %100 to i64
  %2249 = select i1 %2247, i64 %2248, i64 0
  %2250 = getelementptr inbounds i8, ptr %2246, i64 %2249
  %2251 = sext i32 %2242 to i64
  br label %2252

2252:                                             ; preds = %2252, %2241
  %2253 = phi i32 [ 0, %2241 ], [ %2351, %2252 ]
  %2254 = phi i32 [ 0, %2241 ], [ %2349, %2252 ]
  %2255 = phi ptr [ %2250, %2241 ], [ %2354, %2252 ]
  %2256 = phi i32 [ 0, %2241 ], [ %2355, %2252 ]
  %2257 = getelementptr inbounds i8, ptr %2255, i64 1
  %2258 = load i8, ptr %2255, align 1, !tbaa !10
  %2259 = zext i8 %2258 to i32
  %2260 = add i32 %2254, %2259
  %2261 = mul nuw nsw i32 %2259, %2259
  %2262 = add i32 %2261, %2253
  %2263 = getelementptr inbounds i8, ptr %2255, i64 2
  %2264 = load i8, ptr %2257, align 1, !tbaa !10
  %2265 = zext i8 %2264 to i32
  %2266 = add i32 %2260, %2265
  %2267 = mul nuw nsw i32 %2265, %2265
  %2268 = add i32 %2262, %2267
  %2269 = getelementptr inbounds i8, ptr %2255, i64 3
  %2270 = load i8, ptr %2263, align 1, !tbaa !10
  %2271 = zext i8 %2270 to i32
  %2272 = add i32 %2266, %2271
  %2273 = mul nuw nsw i32 %2271, %2271
  %2274 = add i32 %2268, %2273
  %2275 = getelementptr inbounds i8, ptr %2255, i64 4
  %2276 = load i8, ptr %2269, align 1, !tbaa !10
  %2277 = zext i8 %2276 to i32
  %2278 = add i32 %2272, %2277
  %2279 = mul nuw nsw i32 %2277, %2277
  %2280 = add i32 %2274, %2279
  %2281 = getelementptr inbounds i8, ptr %2255, i64 5
  %2282 = load i8, ptr %2275, align 1, !tbaa !10
  %2283 = zext i8 %2282 to i32
  %2284 = add i32 %2278, %2283
  %2285 = mul nuw nsw i32 %2283, %2283
  %2286 = add i32 %2280, %2285
  %2287 = getelementptr inbounds i8, ptr %2255, i64 6
  %2288 = load i8, ptr %2281, align 1, !tbaa !10
  %2289 = zext i8 %2288 to i32
  %2290 = add i32 %2284, %2289
  %2291 = mul nuw nsw i32 %2289, %2289
  %2292 = add i32 %2286, %2291
  %2293 = getelementptr inbounds i8, ptr %2255, i64 7
  %2294 = load i8, ptr %2287, align 1, !tbaa !10
  %2295 = zext i8 %2294 to i32
  %2296 = add i32 %2290, %2295
  %2297 = mul nuw nsw i32 %2295, %2295
  %2298 = add i32 %2292, %2297
  %2299 = getelementptr inbounds i8, ptr %2255, i64 8
  %2300 = load i8, ptr %2293, align 1, !tbaa !10
  %2301 = zext i8 %2300 to i32
  %2302 = add i32 %2296, %2301
  %2303 = mul nuw nsw i32 %2301, %2301
  %2304 = add i32 %2298, %2303
  %2305 = getelementptr inbounds i8, ptr %2255, i64 9
  %2306 = load i8, ptr %2299, align 1, !tbaa !10
  %2307 = zext i8 %2306 to i32
  %2308 = add i32 %2302, %2307
  %2309 = mul nuw nsw i32 %2307, %2307
  %2310 = add i32 %2304, %2309
  %2311 = getelementptr inbounds i8, ptr %2255, i64 10
  %2312 = load i8, ptr %2305, align 1, !tbaa !10
  %2313 = zext i8 %2312 to i32
  %2314 = add i32 %2308, %2313
  %2315 = mul nuw nsw i32 %2313, %2313
  %2316 = add i32 %2310, %2315
  %2317 = getelementptr inbounds i8, ptr %2255, i64 11
  %2318 = load i8, ptr %2311, align 1, !tbaa !10
  %2319 = zext i8 %2318 to i32
  %2320 = add i32 %2314, %2319
  %2321 = mul nuw nsw i32 %2319, %2319
  %2322 = add i32 %2316, %2321
  %2323 = getelementptr inbounds i8, ptr %2255, i64 12
  %2324 = load i8, ptr %2317, align 1, !tbaa !10
  %2325 = zext i8 %2324 to i32
  %2326 = add i32 %2320, %2325
  %2327 = mul nuw nsw i32 %2325, %2325
  %2328 = add i32 %2322, %2327
  %2329 = getelementptr inbounds i8, ptr %2255, i64 13
  %2330 = load i8, ptr %2323, align 1, !tbaa !10
  %2331 = zext i8 %2330 to i32
  %2332 = add i32 %2326, %2331
  %2333 = mul nuw nsw i32 %2331, %2331
  %2334 = add i32 %2328, %2333
  %2335 = getelementptr inbounds i8, ptr %2255, i64 14
  %2336 = load i8, ptr %2329, align 1, !tbaa !10
  %2337 = zext i8 %2336 to i32
  %2338 = add i32 %2332, %2337
  %2339 = mul nuw nsw i32 %2337, %2337
  %2340 = add i32 %2334, %2339
  %2341 = getelementptr inbounds i8, ptr %2255, i64 15
  %2342 = load i8, ptr %2335, align 1, !tbaa !10
  %2343 = zext i8 %2342 to i32
  %2344 = add i32 %2338, %2343
  %2345 = mul nuw nsw i32 %2343, %2343
  %2346 = add i32 %2340, %2345
  %2347 = load i8, ptr %2341, align 1, !tbaa !10
  %2348 = zext i8 %2347 to i32
  %2349 = add i32 %2344, %2348
  %2350 = mul nuw nsw i32 %2348, %2348
  %2351 = add i32 %2346, %2350
  %2352 = getelementptr i8, ptr %2255, i64 16
  %2353 = getelementptr i8, ptr %2352, i64 %2251
  %2354 = getelementptr i8, ptr %2353, i64 -16
  %2355 = add nuw nsw i32 %2256, 1
  %2356 = icmp eq i32 %2355, 16
  br i1 %2356, label %2357, label %2252

2357:                                             ; preds = %2252
  %2358 = mul i32 %2349, %2349
  %2359 = lshr i32 %2358, 8
  %2360 = sub i32 %2351, %2359
  %2361 = load i32, ptr @pict_type, align 4, !tbaa !6
  switch i32 %2361, label %3018 [
    i32 1, label %2362
    i32 2, label %2363
  ]

2362:                                             ; preds = %2357
  store i32 1, ptr %101, align 8, !tbaa !11
  br label %3883

2363:                                             ; preds = %2357
  %2364 = getelementptr inbounds i8, ptr %0, i64 %2248
  %2365 = getelementptr inbounds i8, ptr %2, i64 %2248
  br i1 %85, label %2371, label %2366

2366:                                             ; preds = %2363
  %2367 = icmp eq i32 %102, 1
  br i1 %2367, label %2368, label %2371

2368:                                             ; preds = %2366
  %2369 = getelementptr inbounds i8, ptr %4, i64 %2248
  %2370 = getelementptr inbounds i8, ptr %5, i64 %2248
  br label %2371

2371:                                             ; preds = %2368, %2366, %2363
  %2372 = phi ptr [ %2, %2368 ], [ %2, %2363 ], [ %5, %2366 ]
  %2373 = phi ptr [ %2369, %2368 ], [ %2364, %2363 ], [ %2364, %2366 ]
  %2374 = phi ptr [ %2370, %2368 ], [ %2365, %2363 ], [ %2365, %2366 ]
  %2375 = phi ptr [ %0, %2368 ], [ %0, %2363 ], [ %4, %2366 ]
  %2376 = trunc nuw nsw i64 %99 to i32
  call fastcc void @field_estimate(ptr noundef %2375, ptr noundef %2372, ptr noundef %2373, ptr noundef %2374, ptr noundef readonly %2250, i32 noundef signext %2376, i32 noundef signext %90, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %12, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef nonnull %49)
  %2377 = load i32, ptr @M, align 4, !tbaa !6
  %2378 = icmp ne i32 %2377, 1
  %2379 = or i1 %86, %2378
  br i1 %2379, label %2380, label %2383

2380:                                             ; preds = %2371
  %2381 = load i32, ptr %21, align 4, !tbaa !6
  %2382 = load i32, ptr %20, align 4, !tbaa !6
  br label %2897

2383:                                             ; preds = %2371
  %2384 = load i32, ptr %47, align 4, !tbaa !6
  %2385 = load i32, ptr %48, align 4, !tbaa !6
  %2386 = icmp eq i32 %102, 1
  %2387 = select i1 %2386, ptr %2374, ptr %2372
  %2388 = select i1 %2386, ptr %2372, ptr %2374
  %2389 = trunc i64 %99 to i32
  %2390 = shl i32 %2389, 1
  %2391 = sub nsw i32 %2384, %2390
  %2392 = sub nsw i32 %2385, %94
  %2393 = icmp sgt i32 %2391, 0
  %2394 = zext i1 %2393 to i32
  %2395 = add nsw i32 %2391, %2394
  %2396 = ashr i32 %2395, 1
  %2397 = icmp sgt i32 %2392, 0
  %2398 = zext i1 %2397 to i32
  %2399 = add nsw i32 %2392, %2398
  %2400 = ashr i32 %2399, 1
  %2401 = select i1 %2386, i32 -1, i32 1
  %2402 = add nsw i32 %2396, %2390
  %2403 = add i32 %2242, -32
  %2404 = load i32, ptr @height2, align 4
  %2405 = freeze i32 %2404
  %2406 = shl i32 %2405, 1
  %2407 = add i32 %2406, -32
  %2408 = ashr i32 %2384, 1
  %2409 = sext i32 %2408 to i64
  %2410 = getelementptr inbounds i8, ptr %2388, i64 %2409
  %2411 = load i32, ptr @width2, align 4
  %2412 = ashr i32 %2385, 1
  %2413 = mul nsw i32 %2411, %2412
  %2414 = sext i32 %2413 to i64
  %2415 = getelementptr inbounds i8, ptr %2410, i64 %2414
  %2416 = and i32 %2384, 1
  %2417 = sext i32 %2411 to i64
  %2418 = trunc i32 %2385 to i1
  %2419 = select i1 %2418, i64 %2417, i64 0
  %2420 = getelementptr inbounds i8, ptr %2415, i64 %2419
  %2421 = zext nneg i32 %2416 to i64
  %2422 = getelementptr inbounds i8, ptr %2420, i64 %2421
  %2423 = getelementptr inbounds i8, ptr %2415, i64 %2421
  %2424 = add nsw i32 %2411, -16
  %2425 = sext i32 %2424 to i64
  %2426 = add nsw i32 %2402, -1
  %2427 = icmp sgt i32 %2402, 0
  %2428 = icmp sle i32 %2426, %2403
  %2429 = select i1 %2427, i1 %2428, i1 false
  %2430 = lshr i32 %2426, 1
  %2431 = zext nneg i32 %2430 to i64
  %2432 = and i32 %2426, 1
  %2433 = zext nneg i32 %2432 to i64
  %2434 = icmp sgt i32 %2402, -1
  %2435 = icmp sle i32 %2402, %2403
  %2436 = and i1 %2434, %2435
  %2437 = lshr i32 %2402, 1
  %2438 = zext nneg i32 %2437 to i64
  %2439 = and i32 %2396, 1
  %2440 = zext nneg i32 %2439 to i64
  %2441 = add nsw i32 %2402, 1
  %2442 = icmp sgt i32 %2402, -2
  %2443 = icmp slt i32 %2402, %2403
  %2444 = and i1 %2442, %2443
  %2445 = lshr i32 %2441, 1
  %2446 = zext nneg i32 %2445 to i64
  %2447 = and i32 %2441, 1
  %2448 = zext nneg i32 %2447 to i64
  %2449 = add i32 %2401, %94
  %2450 = add i32 %2449, %2400
  br label %2451

2451:                                             ; preds = %2776, %2383
  %2452 = phi i32 [ 1073741824, %2383 ], [ %2781, %2776 ]
  %2453 = phi i32 [ undef, %2383 ], [ %2780, %2776 ]
  %2454 = phi i32 [ undef, %2383 ], [ %2779, %2776 ]
  %2455 = phi i32 [ undef, %2383 ], [ %2778, %2776 ]
  %2456 = phi i32 [ undef, %2383 ], [ %2777, %2776 ]
  %2457 = phi i32 [ -1, %2383 ], [ %2782, %2776 ]
  %2458 = add nsw i32 %2450, %2457
  %2459 = freeze i32 %2458
  %2460 = icmp slt i32 %2459, 0
  %2461 = lshr i32 %2459, 1
  %2462 = mul nsw i32 %2461, %2411
  %2463 = sext i32 %2462 to i64
  %2464 = getelementptr i8, ptr %2387, i64 %2463
  %2465 = trunc i32 %2459 to i1
  %2466 = select i1 %2465, i64 %2417, i64 0
  %2467 = icmp sgt i32 %2459, %2407
  %2468 = or i1 %2460, %2467
  br i1 %2468, label %2776, label %2469

2469:                                             ; preds = %2451
  br i1 %2429, label %2470, label %2568

2470:                                             ; preds = %2469
  %2471 = getelementptr i8, ptr %2464, i64 %2431
  %2472 = getelementptr inbounds i8, ptr %2471, i64 %2466
  %2473 = getelementptr inbounds i8, ptr %2472, i64 %2433
  %2474 = getelementptr inbounds i8, ptr %2471, i64 %2433
  br label %2475

2475:                                             ; preds = %2544, %2470
  %2476 = phi ptr [ %2415, %2470 ], [ %2555, %2544 ]
  %2477 = phi i32 [ 0, %2470 ], [ %2541, %2544 ]
  %2478 = phi i32 [ 0, %2470 ], [ %2563, %2544 ]
  %2479 = phi ptr [ %2473, %2470 ], [ %2562, %2544 ]
  %2480 = phi ptr [ %2472, %2470 ], [ %2561, %2544 ]
  %2481 = phi ptr [ %2474, %2470 ], [ %2560, %2544 ]
  %2482 = phi ptr [ %2422, %2470 ], [ %2558, %2544 ]
  %2483 = phi ptr [ %2420, %2470 ], [ %2557, %2544 ]
  %2484 = phi ptr [ %2423, %2470 ], [ %2556, %2544 ]
  %2485 = phi ptr [ %2471, %2470 ], [ %2559, %2544 ]
  %2486 = phi ptr [ %2250, %2470 ], [ %2554, %2544 ]
  br label %2487

2487:                                             ; preds = %2487, %2475
  %2488 = phi ptr [ %2476, %2475 ], [ %2499, %2487 ]
  %2489 = phi i32 [ %2477, %2475 ], [ %2541, %2487 ]
  %2490 = phi i32 [ 0, %2475 ], [ %2542, %2487 ]
  %2491 = phi ptr [ %2479, %2475 ], [ %2525, %2487 ]
  %2492 = phi ptr [ %2480, %2475 ], [ %2522, %2487 ]
  %2493 = phi ptr [ %2481, %2475 ], [ %2519, %2487 ]
  %2494 = phi ptr [ %2482, %2475 ], [ %2508, %2487 ]
  %2495 = phi ptr [ %2483, %2475 ], [ %2505, %2487 ]
  %2496 = phi ptr [ %2484, %2475 ], [ %2502, %2487 ]
  %2497 = phi ptr [ %2485, %2475 ], [ %2516, %2487 ]
  %2498 = phi ptr [ %2486, %2475 ], [ %2536, %2487 ]
  %2499 = getelementptr inbounds i8, ptr %2488, i64 1
  %2500 = load i8, ptr %2488, align 1, !tbaa !10
  %2501 = zext i8 %2500 to i32
  %2502 = getelementptr inbounds i8, ptr %2496, i64 1
  %2503 = load i8, ptr %2496, align 1, !tbaa !10
  %2504 = zext i8 %2503 to i32
  %2505 = getelementptr inbounds i8, ptr %2495, i64 1
  %2506 = load i8, ptr %2495, align 1, !tbaa !10
  %2507 = zext i8 %2506 to i32
  %2508 = getelementptr inbounds i8, ptr %2494, i64 1
  %2509 = load i8, ptr %2494, align 1, !tbaa !10
  %2510 = zext i8 %2509 to i32
  %2511 = add nuw nsw i32 %2501, 2
  %2512 = add nuw nsw i32 %2511, %2504
  %2513 = add nuw nsw i32 %2512, %2507
  %2514 = add nuw nsw i32 %2513, %2510
  %2515 = lshr i32 %2514, 2
  %2516 = getelementptr inbounds i8, ptr %2497, i64 1
  %2517 = load i8, ptr %2497, align 1, !tbaa !10
  %2518 = zext i8 %2517 to i32
  %2519 = getelementptr inbounds i8, ptr %2493, i64 1
  %2520 = load i8, ptr %2493, align 1, !tbaa !10
  %2521 = zext i8 %2520 to i32
  %2522 = getelementptr inbounds i8, ptr %2492, i64 1
  %2523 = load i8, ptr %2492, align 1, !tbaa !10
  %2524 = zext i8 %2523 to i32
  %2525 = getelementptr inbounds i8, ptr %2491, i64 1
  %2526 = load i8, ptr %2491, align 1, !tbaa !10
  %2527 = zext i8 %2526 to i32
  %2528 = add nuw nsw i32 %2518, 2
  %2529 = add nuw nsw i32 %2528, %2521
  %2530 = add nuw nsw i32 %2529, %2524
  %2531 = add nuw nsw i32 %2530, %2527
  %2532 = lshr i32 %2531, 2
  %2533 = add nuw nsw i32 %2515, 1
  %2534 = add nuw nsw i32 %2533, %2532
  %2535 = lshr i32 %2534, 1
  %2536 = getelementptr inbounds i8, ptr %2498, i64 1
  %2537 = load i8, ptr %2498, align 1, !tbaa !10
  %2538 = zext i8 %2537 to i32
  %2539 = sub nsw i32 %2535, %2538
  %2540 = mul nsw i32 %2539, %2539
  %2541 = add nsw i32 %2540, %2489
  %2542 = add nuw nsw i32 %2490, 1
  %2543 = icmp eq i32 %2542, 16
  br i1 %2543, label %2544, label %2487

2544:                                             ; preds = %2487
  %2545 = getelementptr i8, ptr %2484, i64 16
  %2546 = getelementptr i8, ptr %2481, i64 16
  %2547 = getelementptr i8, ptr %2482, i64 16
  %2548 = getelementptr i8, ptr %2479, i64 16
  %2549 = getelementptr i8, ptr %2476, i64 16
  %2550 = getelementptr i8, ptr %2483, i64 16
  %2551 = getelementptr i8, ptr %2485, i64 16
  %2552 = getelementptr i8, ptr %2480, i64 16
  %2553 = getelementptr i8, ptr %2486, i64 16
  %2554 = getelementptr inbounds i8, ptr %2553, i64 %2425
  %2555 = getelementptr inbounds i8, ptr %2549, i64 %2425
  %2556 = getelementptr inbounds i8, ptr %2545, i64 %2425
  %2557 = getelementptr inbounds i8, ptr %2550, i64 %2425
  %2558 = getelementptr inbounds i8, ptr %2547, i64 %2425
  %2559 = getelementptr inbounds i8, ptr %2551, i64 %2425
  %2560 = getelementptr inbounds i8, ptr %2546, i64 %2425
  %2561 = getelementptr inbounds i8, ptr %2552, i64 %2425
  %2562 = getelementptr inbounds i8, ptr %2548, i64 %2425
  %2563 = add nuw nsw i32 %2478, 1
  %2564 = icmp eq i32 %2563, 16
  br i1 %2564, label %2565, label %2475

2565:                                             ; preds = %2544
  %2566 = icmp slt i32 %2541, %2452
  br i1 %2566, label %2567, label %2568

2567:                                             ; preds = %2565
  br label %2568

2568:                                             ; preds = %2567, %2565, %2469
  %2569 = phi i32 [ %2426, %2567 ], [ %2456, %2565 ], [ %2456, %2469 ]
  %2570 = phi i32 [ %2459, %2567 ], [ %2455, %2565 ], [ %2455, %2469 ]
  %2571 = phi i32 [ -1, %2567 ], [ %2454, %2565 ], [ %2454, %2469 ]
  %2572 = phi i32 [ %2457, %2567 ], [ %2453, %2565 ], [ %2453, %2469 ]
  %2573 = phi i32 [ %2541, %2567 ], [ %2452, %2565 ], [ %2452, %2469 ]
  br i1 %2436, label %2574, label %2672

2574:                                             ; preds = %2568
  %2575 = getelementptr i8, ptr %2464, i64 %2438
  %2576 = getelementptr inbounds i8, ptr %2575, i64 %2466
  %2577 = getelementptr inbounds i8, ptr %2576, i64 %2440
  %2578 = getelementptr inbounds i8, ptr %2575, i64 %2440
  br label %2579

2579:                                             ; preds = %2648, %2574
  %2580 = phi ptr [ %2415, %2574 ], [ %2659, %2648 ]
  %2581 = phi i32 [ 0, %2574 ], [ %2645, %2648 ]
  %2582 = phi i32 [ 0, %2574 ], [ %2667, %2648 ]
  %2583 = phi ptr [ %2577, %2574 ], [ %2666, %2648 ]
  %2584 = phi ptr [ %2576, %2574 ], [ %2665, %2648 ]
  %2585 = phi ptr [ %2578, %2574 ], [ %2664, %2648 ]
  %2586 = phi ptr [ %2422, %2574 ], [ %2662, %2648 ]
  %2587 = phi ptr [ %2420, %2574 ], [ %2661, %2648 ]
  %2588 = phi ptr [ %2423, %2574 ], [ %2660, %2648 ]
  %2589 = phi ptr [ %2575, %2574 ], [ %2663, %2648 ]
  %2590 = phi ptr [ %2250, %2574 ], [ %2658, %2648 ]
  br label %2591

2591:                                             ; preds = %2591, %2579
  %2592 = phi ptr [ %2580, %2579 ], [ %2603, %2591 ]
  %2593 = phi i32 [ %2581, %2579 ], [ %2645, %2591 ]
  %2594 = phi i32 [ 0, %2579 ], [ %2646, %2591 ]
  %2595 = phi ptr [ %2583, %2579 ], [ %2629, %2591 ]
  %2596 = phi ptr [ %2584, %2579 ], [ %2626, %2591 ]
  %2597 = phi ptr [ %2585, %2579 ], [ %2623, %2591 ]
  %2598 = phi ptr [ %2586, %2579 ], [ %2612, %2591 ]
  %2599 = phi ptr [ %2587, %2579 ], [ %2609, %2591 ]
  %2600 = phi ptr [ %2588, %2579 ], [ %2606, %2591 ]
  %2601 = phi ptr [ %2589, %2579 ], [ %2620, %2591 ]
  %2602 = phi ptr [ %2590, %2579 ], [ %2640, %2591 ]
  %2603 = getelementptr inbounds i8, ptr %2592, i64 1
  %2604 = load i8, ptr %2592, align 1, !tbaa !10
  %2605 = zext i8 %2604 to i32
  %2606 = getelementptr inbounds i8, ptr %2600, i64 1
  %2607 = load i8, ptr %2600, align 1, !tbaa !10
  %2608 = zext i8 %2607 to i32
  %2609 = getelementptr inbounds i8, ptr %2599, i64 1
  %2610 = load i8, ptr %2599, align 1, !tbaa !10
  %2611 = zext i8 %2610 to i32
  %2612 = getelementptr inbounds i8, ptr %2598, i64 1
  %2613 = load i8, ptr %2598, align 1, !tbaa !10
  %2614 = zext i8 %2613 to i32
  %2615 = add nuw nsw i32 %2605, 2
  %2616 = add nuw nsw i32 %2615, %2608
  %2617 = add nuw nsw i32 %2616, %2611
  %2618 = add nuw nsw i32 %2617, %2614
  %2619 = lshr i32 %2618, 2
  %2620 = getelementptr inbounds i8, ptr %2601, i64 1
  %2621 = load i8, ptr %2601, align 1, !tbaa !10
  %2622 = zext i8 %2621 to i32
  %2623 = getelementptr inbounds i8, ptr %2597, i64 1
  %2624 = load i8, ptr %2597, align 1, !tbaa !10
  %2625 = zext i8 %2624 to i32
  %2626 = getelementptr inbounds i8, ptr %2596, i64 1
  %2627 = load i8, ptr %2596, align 1, !tbaa !10
  %2628 = zext i8 %2627 to i32
  %2629 = getelementptr inbounds i8, ptr %2595, i64 1
  %2630 = load i8, ptr %2595, align 1, !tbaa !10
  %2631 = zext i8 %2630 to i32
  %2632 = add nuw nsw i32 %2622, 2
  %2633 = add nuw nsw i32 %2632, %2625
  %2634 = add nuw nsw i32 %2633, %2628
  %2635 = add nuw nsw i32 %2634, %2631
  %2636 = lshr i32 %2635, 2
  %2637 = add nuw nsw i32 %2619, 1
  %2638 = add nuw nsw i32 %2637, %2636
  %2639 = lshr i32 %2638, 1
  %2640 = getelementptr inbounds i8, ptr %2602, i64 1
  %2641 = load i8, ptr %2602, align 1, !tbaa !10
  %2642 = zext i8 %2641 to i32
  %2643 = sub nsw i32 %2639, %2642
  %2644 = mul nsw i32 %2643, %2643
  %2645 = add nsw i32 %2644, %2593
  %2646 = add nuw nsw i32 %2594, 1
  %2647 = icmp eq i32 %2646, 16
  br i1 %2647, label %2648, label %2591

2648:                                             ; preds = %2591
  %2649 = getelementptr i8, ptr %2588, i64 16
  %2650 = getelementptr i8, ptr %2585, i64 16
  %2651 = getelementptr i8, ptr %2586, i64 16
  %2652 = getelementptr i8, ptr %2583, i64 16
  %2653 = getelementptr i8, ptr %2580, i64 16
  %2654 = getelementptr i8, ptr %2587, i64 16
  %2655 = getelementptr i8, ptr %2589, i64 16
  %2656 = getelementptr i8, ptr %2584, i64 16
  %2657 = getelementptr i8, ptr %2590, i64 16
  %2658 = getelementptr inbounds i8, ptr %2657, i64 %2425
  %2659 = getelementptr inbounds i8, ptr %2653, i64 %2425
  %2660 = getelementptr inbounds i8, ptr %2649, i64 %2425
  %2661 = getelementptr inbounds i8, ptr %2654, i64 %2425
  %2662 = getelementptr inbounds i8, ptr %2651, i64 %2425
  %2663 = getelementptr inbounds i8, ptr %2655, i64 %2425
  %2664 = getelementptr inbounds i8, ptr %2650, i64 %2425
  %2665 = getelementptr inbounds i8, ptr %2656, i64 %2425
  %2666 = getelementptr inbounds i8, ptr %2652, i64 %2425
  %2667 = add nuw nsw i32 %2582, 1
  %2668 = icmp eq i32 %2667, 16
  br i1 %2668, label %2669, label %2579

2669:                                             ; preds = %2648
  %2670 = icmp slt i32 %2645, %2573
  br i1 %2670, label %2671, label %2672

2671:                                             ; preds = %2669
  br label %2672

2672:                                             ; preds = %2671, %2669, %2568
  %2673 = phi i32 [ %2402, %2671 ], [ %2569, %2669 ], [ %2569, %2568 ]
  %2674 = phi i32 [ %2459, %2671 ], [ %2570, %2669 ], [ %2570, %2568 ]
  %2675 = phi i32 [ 0, %2671 ], [ %2571, %2669 ], [ %2571, %2568 ]
  %2676 = phi i32 [ %2457, %2671 ], [ %2572, %2669 ], [ %2572, %2568 ]
  %2677 = phi i32 [ %2645, %2671 ], [ %2573, %2669 ], [ %2573, %2568 ]
  br i1 %2444, label %2678, label %2776

2678:                                             ; preds = %2672
  %2679 = getelementptr i8, ptr %2464, i64 %2446
  %2680 = getelementptr inbounds i8, ptr %2679, i64 %2466
  %2681 = getelementptr inbounds i8, ptr %2680, i64 %2448
  %2682 = getelementptr inbounds i8, ptr %2679, i64 %2448
  br label %2683

2683:                                             ; preds = %2752, %2678
  %2684 = phi ptr [ %2415, %2678 ], [ %2763, %2752 ]
  %2685 = phi i32 [ 0, %2678 ], [ %2749, %2752 ]
  %2686 = phi i32 [ 0, %2678 ], [ %2771, %2752 ]
  %2687 = phi ptr [ %2681, %2678 ], [ %2770, %2752 ]
  %2688 = phi ptr [ %2680, %2678 ], [ %2769, %2752 ]
  %2689 = phi ptr [ %2682, %2678 ], [ %2768, %2752 ]
  %2690 = phi ptr [ %2422, %2678 ], [ %2766, %2752 ]
  %2691 = phi ptr [ %2420, %2678 ], [ %2765, %2752 ]
  %2692 = phi ptr [ %2423, %2678 ], [ %2764, %2752 ]
  %2693 = phi ptr [ %2679, %2678 ], [ %2767, %2752 ]
  %2694 = phi ptr [ %2250, %2678 ], [ %2762, %2752 ]
  br label %2695

2695:                                             ; preds = %2695, %2683
  %2696 = phi ptr [ %2684, %2683 ], [ %2707, %2695 ]
  %2697 = phi i32 [ %2685, %2683 ], [ %2749, %2695 ]
  %2698 = phi i32 [ 0, %2683 ], [ %2750, %2695 ]
  %2699 = phi ptr [ %2687, %2683 ], [ %2733, %2695 ]
  %2700 = phi ptr [ %2688, %2683 ], [ %2730, %2695 ]
  %2701 = phi ptr [ %2689, %2683 ], [ %2727, %2695 ]
  %2702 = phi ptr [ %2690, %2683 ], [ %2716, %2695 ]
  %2703 = phi ptr [ %2691, %2683 ], [ %2713, %2695 ]
  %2704 = phi ptr [ %2692, %2683 ], [ %2710, %2695 ]
  %2705 = phi ptr [ %2693, %2683 ], [ %2724, %2695 ]
  %2706 = phi ptr [ %2694, %2683 ], [ %2744, %2695 ]
  %2707 = getelementptr inbounds i8, ptr %2696, i64 1
  %2708 = load i8, ptr %2696, align 1, !tbaa !10
  %2709 = zext i8 %2708 to i32
  %2710 = getelementptr inbounds i8, ptr %2704, i64 1
  %2711 = load i8, ptr %2704, align 1, !tbaa !10
  %2712 = zext i8 %2711 to i32
  %2713 = getelementptr inbounds i8, ptr %2703, i64 1
  %2714 = load i8, ptr %2703, align 1, !tbaa !10
  %2715 = zext i8 %2714 to i32
  %2716 = getelementptr inbounds i8, ptr %2702, i64 1
  %2717 = load i8, ptr %2702, align 1, !tbaa !10
  %2718 = zext i8 %2717 to i32
  %2719 = add nuw nsw i32 %2709, 2
  %2720 = add nuw nsw i32 %2719, %2712
  %2721 = add nuw nsw i32 %2720, %2715
  %2722 = add nuw nsw i32 %2721, %2718
  %2723 = lshr i32 %2722, 2
  %2724 = getelementptr inbounds i8, ptr %2705, i64 1
  %2725 = load i8, ptr %2705, align 1, !tbaa !10
  %2726 = zext i8 %2725 to i32
  %2727 = getelementptr inbounds i8, ptr %2701, i64 1
  %2728 = load i8, ptr %2701, align 1, !tbaa !10
  %2729 = zext i8 %2728 to i32
  %2730 = getelementptr inbounds i8, ptr %2700, i64 1
  %2731 = load i8, ptr %2700, align 1, !tbaa !10
  %2732 = zext i8 %2731 to i32
  %2733 = getelementptr inbounds i8, ptr %2699, i64 1
  %2734 = load i8, ptr %2699, align 1, !tbaa !10
  %2735 = zext i8 %2734 to i32
  %2736 = add nuw nsw i32 %2726, 2
  %2737 = add nuw nsw i32 %2736, %2729
  %2738 = add nuw nsw i32 %2737, %2732
  %2739 = add nuw nsw i32 %2738, %2735
  %2740 = lshr i32 %2739, 2
  %2741 = add nuw nsw i32 %2723, 1
  %2742 = add nuw nsw i32 %2741, %2740
  %2743 = lshr i32 %2742, 1
  %2744 = getelementptr inbounds i8, ptr %2706, i64 1
  %2745 = load i8, ptr %2706, align 1, !tbaa !10
  %2746 = zext i8 %2745 to i32
  %2747 = sub nsw i32 %2743, %2746
  %2748 = mul nsw i32 %2747, %2747
  %2749 = add nsw i32 %2748, %2697
  %2750 = add nuw nsw i32 %2698, 1
  %2751 = icmp eq i32 %2750, 16
  br i1 %2751, label %2752, label %2695

2752:                                             ; preds = %2695
  %2753 = getelementptr i8, ptr %2692, i64 16
  %2754 = getelementptr i8, ptr %2689, i64 16
  %2755 = getelementptr i8, ptr %2690, i64 16
  %2756 = getelementptr i8, ptr %2687, i64 16
  %2757 = getelementptr i8, ptr %2684, i64 16
  %2758 = getelementptr i8, ptr %2691, i64 16
  %2759 = getelementptr i8, ptr %2693, i64 16
  %2760 = getelementptr i8, ptr %2688, i64 16
  %2761 = getelementptr i8, ptr %2694, i64 16
  %2762 = getelementptr inbounds i8, ptr %2761, i64 %2425
  %2763 = getelementptr inbounds i8, ptr %2757, i64 %2425
  %2764 = getelementptr inbounds i8, ptr %2753, i64 %2425
  %2765 = getelementptr inbounds i8, ptr %2758, i64 %2425
  %2766 = getelementptr inbounds i8, ptr %2755, i64 %2425
  %2767 = getelementptr inbounds i8, ptr %2759, i64 %2425
  %2768 = getelementptr inbounds i8, ptr %2754, i64 %2425
  %2769 = getelementptr inbounds i8, ptr %2760, i64 %2425
  %2770 = getelementptr inbounds i8, ptr %2756, i64 %2425
  %2771 = add nuw nsw i32 %2686, 1
  %2772 = icmp eq i32 %2771, 16
  br i1 %2772, label %2773, label %2683

2773:                                             ; preds = %2752
  %2774 = icmp slt i32 %2749, %2677
  br i1 %2774, label %2775, label %2776

2775:                                             ; preds = %2773
  br label %2776

2776:                                             ; preds = %2775, %2773, %2672, %2451
  %2777 = phi i32 [ %2456, %2451 ], [ %2441, %2775 ], [ %2673, %2773 ], [ %2673, %2672 ]
  %2778 = phi i32 [ %2455, %2451 ], [ %2459, %2775 ], [ %2674, %2773 ], [ %2674, %2672 ]
  %2779 = phi i32 [ %2454, %2451 ], [ 1, %2775 ], [ %2675, %2773 ], [ %2675, %2672 ]
  %2780 = phi i32 [ %2453, %2451 ], [ %2457, %2775 ], [ %2676, %2773 ], [ %2676, %2672 ]
  %2781 = phi i32 [ %2452, %2451 ], [ %2749, %2775 ], [ %2677, %2773 ], [ %2677, %2672 ]
  %2782 = add nsw i32 %2457, 1
  %2783 = icmp eq i32 %2782, 2
  br i1 %2783, label %2784, label %2451

2784:                                             ; preds = %2776
  %2785 = ashr i32 %2777, 1
  %2786 = sext i32 %2785 to i64
  %2787 = getelementptr inbounds i8, ptr %2387, i64 %2786
  %2788 = ashr i32 %2778, 1
  %2789 = mul nsw i32 %2788, %2411
  %2790 = sext i32 %2789 to i64
  %2791 = getelementptr inbounds i8, ptr %2787, i64 %2790
  %2792 = and i32 %2777, 1
  %2793 = trunc i32 %2778 to i1
  %2794 = select i1 %2793, i64 %2417, i64 0
  %2795 = getelementptr inbounds i8, ptr %2791, i64 %2794
  %2796 = zext nneg i32 %2792 to i64
  %2797 = getelementptr inbounds i8, ptr %2795, i64 %2796
  %2798 = getelementptr inbounds i8, ptr %2791, i64 %2796
  br label %2799

2799:                                             ; preds = %2868, %2784
  %2800 = phi ptr [ %2415, %2784 ], [ %2879, %2868 ]
  %2801 = phi i32 [ 0, %2784 ], [ %2865, %2868 ]
  %2802 = phi i32 [ 0, %2784 ], [ %2887, %2868 ]
  %2803 = phi ptr [ %2797, %2784 ], [ %2886, %2868 ]
  %2804 = phi ptr [ %2795, %2784 ], [ %2885, %2868 ]
  %2805 = phi ptr [ %2798, %2784 ], [ %2884, %2868 ]
  %2806 = phi ptr [ %2422, %2784 ], [ %2882, %2868 ]
  %2807 = phi ptr [ %2420, %2784 ], [ %2881, %2868 ]
  %2808 = phi ptr [ %2423, %2784 ], [ %2880, %2868 ]
  %2809 = phi ptr [ %2791, %2784 ], [ %2883, %2868 ]
  %2810 = phi ptr [ %2250, %2784 ], [ %2878, %2868 ]
  br label %2811

2811:                                             ; preds = %2811, %2799
  %2812 = phi ptr [ %2800, %2799 ], [ %2823, %2811 ]
  %2813 = phi i32 [ %2801, %2799 ], [ %2865, %2811 ]
  %2814 = phi i32 [ 0, %2799 ], [ %2866, %2811 ]
  %2815 = phi ptr [ %2803, %2799 ], [ %2849, %2811 ]
  %2816 = phi ptr [ %2804, %2799 ], [ %2846, %2811 ]
  %2817 = phi ptr [ %2805, %2799 ], [ %2843, %2811 ]
  %2818 = phi ptr [ %2806, %2799 ], [ %2832, %2811 ]
  %2819 = phi ptr [ %2807, %2799 ], [ %2829, %2811 ]
  %2820 = phi ptr [ %2808, %2799 ], [ %2826, %2811 ]
  %2821 = phi ptr [ %2809, %2799 ], [ %2840, %2811 ]
  %2822 = phi ptr [ %2810, %2799 ], [ %2860, %2811 ]
  %2823 = getelementptr inbounds i8, ptr %2812, i64 1
  %2824 = load i8, ptr %2812, align 1, !tbaa !10
  %2825 = zext i8 %2824 to i32
  %2826 = getelementptr inbounds i8, ptr %2820, i64 1
  %2827 = load i8, ptr %2820, align 1, !tbaa !10
  %2828 = zext i8 %2827 to i32
  %2829 = getelementptr inbounds i8, ptr %2819, i64 1
  %2830 = load i8, ptr %2819, align 1, !tbaa !10
  %2831 = zext i8 %2830 to i32
  %2832 = getelementptr inbounds i8, ptr %2818, i64 1
  %2833 = load i8, ptr %2818, align 1, !tbaa !10
  %2834 = zext i8 %2833 to i32
  %2835 = add nuw nsw i32 %2825, 2
  %2836 = add nuw nsw i32 %2835, %2828
  %2837 = add nuw nsw i32 %2836, %2831
  %2838 = add nuw nsw i32 %2837, %2834
  %2839 = lshr i32 %2838, 2
  %2840 = getelementptr inbounds i8, ptr %2821, i64 1
  %2841 = load i8, ptr %2821, align 1, !tbaa !10
  %2842 = zext i8 %2841 to i32
  %2843 = getelementptr inbounds i8, ptr %2817, i64 1
  %2844 = load i8, ptr %2817, align 1, !tbaa !10
  %2845 = zext i8 %2844 to i32
  %2846 = getelementptr inbounds i8, ptr %2816, i64 1
  %2847 = load i8, ptr %2816, align 1, !tbaa !10
  %2848 = zext i8 %2847 to i32
  %2849 = getelementptr inbounds i8, ptr %2815, i64 1
  %2850 = load i8, ptr %2815, align 1, !tbaa !10
  %2851 = zext i8 %2850 to i32
  %2852 = add nuw nsw i32 %2842, 2
  %2853 = add nuw nsw i32 %2852, %2845
  %2854 = add nuw nsw i32 %2853, %2848
  %2855 = add nuw nsw i32 %2854, %2851
  %2856 = lshr i32 %2855, 2
  %2857 = add nuw nsw i32 %2839, 1
  %2858 = add nuw nsw i32 %2857, %2856
  %2859 = lshr i32 %2858, 1
  %2860 = getelementptr inbounds i8, ptr %2822, i64 1
  %2861 = load i8, ptr %2822, align 1, !tbaa !10
  %2862 = zext i8 %2861 to i32
  %2863 = sub nsw i32 %2859, %2862
  %2864 = tail call i32 @llvm.abs.i32(i32 %2863, i1 true)
  %2865 = add i32 %2864, %2813
  %2866 = add nuw nsw i32 %2814, 1
  %2867 = icmp eq i32 %2866, 16
  br i1 %2867, label %2868, label %2811

2868:                                             ; preds = %2811
  %2869 = getelementptr i8, ptr %2808, i64 16
  %2870 = getelementptr i8, ptr %2805, i64 16
  %2871 = getelementptr i8, ptr %2806, i64 16
  %2872 = getelementptr i8, ptr %2803, i64 16
  %2873 = getelementptr i8, ptr %2800, i64 16
  %2874 = getelementptr i8, ptr %2807, i64 16
  %2875 = getelementptr i8, ptr %2809, i64 16
  %2876 = getelementptr i8, ptr %2804, i64 16
  %2877 = getelementptr i8, ptr %2810, i64 16
  %2878 = getelementptr inbounds i8, ptr %2877, i64 %2425
  %2879 = getelementptr inbounds i8, ptr %2873, i64 %2425
  %2880 = getelementptr inbounds i8, ptr %2869, i64 %2425
  %2881 = getelementptr inbounds i8, ptr %2874, i64 %2425
  %2882 = getelementptr inbounds i8, ptr %2871, i64 %2425
  %2883 = getelementptr inbounds i8, ptr %2875, i64 %2425
  %2884 = getelementptr inbounds i8, ptr %2870, i64 %2425
  %2885 = getelementptr inbounds i8, ptr %2876, i64 %2425
  %2886 = getelementptr inbounds i8, ptr %2872, i64 %2425
  %2887 = add nuw nsw i32 %2802, 1
  %2888 = icmp eq i32 %2887, 16
  br i1 %2888, label %2889, label %2799

2889:                                             ; preds = %2868
  %2890 = load i32, ptr %21, align 4, !tbaa !6
  %2891 = icmp slt i32 %2865, %2890
  %2892 = load i32, ptr %20, align 4
  %2893 = icmp slt i32 %2865, %2892
  %2894 = select i1 %2891, i1 %2893, i1 false
  br i1 %2894, label %2895, label %2897

2895:                                             ; preds = %2889
  %2896 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 3, ptr %2896, align 4, !tbaa !14
  br label %2955

2897:                                             ; preds = %2380, %2889
  %2898 = phi i32 [ %2892, %2889 ], [ %2382, %2380 ]
  %2899 = phi i32 [ %2890, %2889 ], [ %2381, %2380 ]
  %2900 = phi i32 [ %2780, %2889 ], [ undef, %2380 ]
  %2901 = phi i32 [ %2779, %2889 ], [ undef, %2380 ]
  %2902 = icmp slt i32 %2899, %2898
  %2903 = getelementptr inbounds i8, ptr %101, i64 4
  br i1 %2902, label %2904, label %2939

2904:                                             ; preds = %2897
  store i32 2, ptr %2903, align 4, !tbaa !14
  %2905 = load i32, ptr %23, align 4, !tbaa !6
  %2906 = icmp eq i32 %2905, 0
  %2907 = select i1 %2906, ptr %2372, ptr %2374
  %2908 = load i32, ptr %16, align 4, !tbaa !6
  %2909 = ashr i32 %2908, 1
  %2910 = sext i32 %2909 to i64
  %2911 = getelementptr inbounds i8, ptr %2907, i64 %2910
  %2912 = load i32, ptr %17, align 4, !tbaa !6
  %2913 = ashr i32 %2912, 1
  %2914 = mul nsw i32 %2913, %2242
  %2915 = sext i32 %2914 to i64
  %2916 = getelementptr inbounds i8, ptr %2911, i64 %2915
  %2917 = and i32 %2908, 1
  %2918 = and i32 %2912, 1
  %2919 = tail call fastcc signext i32 @dist2(ptr noundef %2916, ptr noundef readonly %2250, i32 noundef signext %2242, i32 noundef signext %2917, i32 noundef signext %2918, i32 noundef signext 8)
  %2920 = load i32, ptr %24, align 4, !tbaa !6
  %2921 = icmp eq i32 %2920, 0
  %2922 = select i1 %2921, ptr %2372, ptr %2374
  %2923 = load i32, ptr %18, align 4, !tbaa !6
  %2924 = ashr i32 %2923, 1
  %2925 = sext i32 %2924 to i64
  %2926 = getelementptr inbounds i8, ptr %2922, i64 %2925
  %2927 = load i32, ptr %19, align 4, !tbaa !6
  %2928 = ashr i32 %2927, 1
  %2929 = mul nsw i32 %2928, %2242
  %2930 = sext i32 %2929 to i64
  %2931 = getelementptr inbounds i8, ptr %2926, i64 %2930
  %2932 = shl i32 %100, 4
  %2933 = sext i32 %2932 to i64
  %2934 = getelementptr inbounds i8, ptr %2250, i64 %2933
  %2935 = and i32 %2923, 1
  %2936 = and i32 %2927, 1
  %2937 = tail call fastcc signext i32 @dist2(ptr noundef %2931, ptr noundef readonly %2934, i32 noundef signext %2242, i32 noundef signext %2935, i32 noundef signext %2936, i32 noundef signext 8)
  %2938 = add nsw i32 %2937, %2919
  br label %2955

2939:                                             ; preds = %2897
  store i32 1, ptr %2903, align 4, !tbaa !14
  %2940 = load i32, ptr %22, align 4, !tbaa !6
  %2941 = icmp eq i32 %2940, 0
  %2942 = select i1 %2941, ptr %2372, ptr %2374
  %2943 = load i32, ptr %14, align 4, !tbaa !6
  %2944 = ashr i32 %2943, 1
  %2945 = sext i32 %2944 to i64
  %2946 = getelementptr inbounds i8, ptr %2942, i64 %2945
  %2947 = load i32, ptr %15, align 4, !tbaa !6
  %2948 = ashr i32 %2947, 1
  %2949 = mul nsw i32 %2948, %2242
  %2950 = sext i32 %2949 to i64
  %2951 = getelementptr inbounds i8, ptr %2946, i64 %2950
  %2952 = and i32 %2943, 1
  %2953 = and i32 %2947, 1
  %2954 = tail call fastcc signext i32 @dist2(ptr noundef %2951, ptr noundef readonly %2250, i32 noundef signext %2242, i32 noundef signext %2952, i32 noundef signext %2953, i32 noundef signext 16)
  br label %2955

2955:                                             ; preds = %2939, %2904, %2895
  %2956 = phi i32 [ 2, %2904 ], [ 1, %2939 ], [ 3, %2895 ]
  %2957 = phi i32 [ %2900, %2904 ], [ %2900, %2939 ], [ %2780, %2895 ]
  %2958 = phi i32 [ %2901, %2904 ], [ %2901, %2939 ], [ %2779, %2895 ]
  %2959 = phi i32 [ %2938, %2904 ], [ %2954, %2939 ], [ %2781, %2895 ]
  %2960 = icmp sgt i32 %2959, %2360
  %2961 = icmp sgt i32 %2959, 2303
  %2962 = and i1 %2960, %2961
  br i1 %2962, label %2963, label %2964

2963:                                             ; preds = %2955
  store i32 1, ptr %101, align 8, !tbaa !11
  br label %3883

2964:                                             ; preds = %2955
  br i1 %86, label %2975, label %2965

2965:                                             ; preds = %2964
  %2966 = select i1 %2247, ptr %2374, ptr %2372
  %2967 = getelementptr inbounds i8, ptr %2966, i64 %99
  %2968 = getelementptr inbounds i8, ptr %2967, i64 %2245
  %2969 = tail call fastcc signext i32 @dist2(ptr noundef %2968, ptr noundef readonly %2250, i32 noundef signext %2242, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 16)
  %2970 = shl nsw i32 %2969, 2
  %2971 = mul nsw i32 %2959, 5
  %2972 = icmp sgt i32 %2970, %2971
  %2973 = icmp sgt i32 %2969, 2303
  %2974 = and i1 %2973, %2972
  br i1 %2974, label %2975, label %3010

2975:                                             ; preds = %2965, %2964
  store i32 8, ptr %101, align 8, !tbaa !11
  %2976 = getelementptr inbounds i8, ptr %101, i64 24
  %2977 = getelementptr inbounds i8, ptr %101, i64 28
  %2978 = trunc i64 %99 to i32
  %2979 = shl i32 %2978, 1
  switch i32 %2956, label %2994 [
    i32 1, label %2980
    i32 3, label %2987
  ]

2980:                                             ; preds = %2975
  %2981 = load i32, ptr %14, align 4, !tbaa !6
  %2982 = sub nsw i32 %2981, %2979
  store i32 %2982, ptr %2976, align 8, !tbaa !6
  %2983 = load i32, ptr %15, align 4, !tbaa !6
  %2984 = sub nsw i32 %2983, %94
  store i32 %2984, ptr %2977, align 4, !tbaa !6
  %2985 = load i32, ptr %22, align 4, !tbaa !6
  %2986 = getelementptr inbounds i8, ptr %101, i64 56
  store i32 %2985, ptr %2986, align 8, !tbaa !6
  br label %3883

2987:                                             ; preds = %2975
  %2988 = load i32, ptr %47, align 4, !tbaa !6
  %2989 = sub nsw i32 %2988, %2979
  store i32 %2989, ptr %2976, align 8, !tbaa !6
  %2990 = load i32, ptr %48, align 4, !tbaa !6
  %2991 = sub nsw i32 %2990, %94
  store i32 %2991, ptr %2977, align 4, !tbaa !6
  %2992 = getelementptr inbounds i8, ptr %101, i64 72
  store i32 %2958, ptr %2992, align 8, !tbaa !6
  %2993 = getelementptr inbounds i8, ptr %101, i64 76
  store i32 %2957, ptr %2993, align 4, !tbaa !6
  br label %3883

2994:                                             ; preds = %2975
  %2995 = load i32, ptr %16, align 4, !tbaa !6
  %2996 = sub nsw i32 %2995, %2979
  store i32 %2996, ptr %2976, align 8, !tbaa !6
  %2997 = load i32, ptr %17, align 4, !tbaa !6
  %2998 = sub nsw i32 %2997, %94
  store i32 %2998, ptr %2977, align 4, !tbaa !6
  %2999 = load i32, ptr %18, align 4, !tbaa !6
  %3000 = sub nsw i32 %2999, %2979
  %3001 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 %3000, ptr %3001, align 8, !tbaa !6
  %3002 = load i32, ptr %19, align 4, !tbaa !6
  %3003 = sub i32 %3002, %94
  %3004 = add i32 %3003, -16
  %3005 = getelementptr inbounds i8, ptr %101, i64 44
  store i32 %3004, ptr %3005, align 4, !tbaa !6
  %3006 = load i32, ptr %23, align 4, !tbaa !6
  %3007 = getelementptr inbounds i8, ptr %101, i64 56
  store i32 %3006, ptr %3007, align 8, !tbaa !6
  %3008 = load i32, ptr %24, align 4, !tbaa !6
  %3009 = getelementptr inbounds i8, ptr %101, i64 64
  store i32 %3008, ptr %3009, align 8, !tbaa !6
  br label %3883

3010:                                             ; preds = %2965
  store i32 0, ptr %101, align 8, !tbaa !11
  %3011 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 1, ptr %3011, align 4, !tbaa !14
  %3012 = getelementptr inbounds i8, ptr %101, i64 24
  store i32 0, ptr %3012, align 8, !tbaa !6
  %3013 = getelementptr inbounds i8, ptr %101, i64 28
  store i32 0, ptr %3013, align 4, !tbaa !6
  %3014 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %3015 = icmp eq i32 %3014, 2
  %3016 = zext i1 %3015 to i32
  %3017 = getelementptr inbounds i8, ptr %101, i64 56
  store i32 %3016, ptr %3017, align 8, !tbaa !6
  br label %3883

3018:                                             ; preds = %2357
  %3019 = getelementptr inbounds i8, ptr %0, i64 %2248
  %3020 = getelementptr inbounds i8, ptr %2, i64 %2248
  %3021 = trunc nuw nsw i64 %99 to i32
  call fastcc void @field_estimate(ptr noundef readonly %0, ptr noundef readonly %2, ptr noundef readonly %3019, ptr noundef readonly %3020, ptr noundef readonly %2250, i32 noundef signext %3021, i32 noundef signext %90, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext 0, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef nonnull %49)
  %3022 = getelementptr inbounds i8, ptr %1, i64 %2248
  %3023 = getelementptr inbounds i8, ptr %3, i64 %2248
  call fastcc void @field_estimate(ptr noundef readonly %1, ptr noundef readonly %3, ptr noundef readonly %3022, ptr noundef readonly %3023, ptr noundef readonly %2250, i32 noundef signext %3021, i32 noundef signext %90, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext 0, ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef nonnull %49)
  %3024 = load i32, ptr %33, align 4, !tbaa !6
  %3025 = icmp eq i32 %3024, 0
  %3026 = select i1 %3025, i32 0, i32 %100
  %3027 = sext i32 %3026 to i64
  %3028 = getelementptr inbounds i8, ptr %2, i64 %3027
  %3029 = load i32, ptr %25, align 4, !tbaa !6
  %3030 = ashr i32 %3029, 1
  %3031 = sext i32 %3030 to i64
  %3032 = getelementptr inbounds i8, ptr %3028, i64 %3031
  %3033 = load i32, ptr %26, align 4, !tbaa !6
  %3034 = ashr i32 %3033, 1
  %3035 = mul nsw i32 %3034, %2242
  %3036 = sext i32 %3035 to i64
  %3037 = getelementptr inbounds i8, ptr %3032, i64 %3036
  %3038 = load i32, ptr %44, align 4, !tbaa !6
  %3039 = icmp eq i32 %3038, 0
  %3040 = select i1 %3039, i32 0, i32 %100
  %3041 = sext i32 %3040 to i64
  %3042 = getelementptr inbounds i8, ptr %3, i64 %3041
  %3043 = load i32, ptr %36, align 4, !tbaa !6
  %3044 = ashr i32 %3043, 1
  %3045 = sext i32 %3044 to i64
  %3046 = getelementptr inbounds i8, ptr %3042, i64 %3045
  %3047 = load i32, ptr %37, align 4, !tbaa !6
  %3048 = ashr i32 %3047, 1
  %3049 = mul nsw i32 %3048, %2242
  %3050 = sext i32 %3049 to i64
  %3051 = getelementptr inbounds i8, ptr %3046, i64 %3050
  %3052 = and i32 %3029, 1
  %3053 = and i32 %3033, 1
  %3054 = and i32 %3043, 1
  %3055 = and i32 %3047, 1
  %3056 = mul nuw nsw i32 %3055, %2242
  %3057 = sext i32 %3056 to i64
  %3058 = getelementptr inbounds i8, ptr %3051, i64 %3057
  %3059 = zext nneg i32 %3054 to i64
  %3060 = getelementptr inbounds i8, ptr %3058, i64 %3059
  %3061 = getelementptr inbounds i8, ptr %3051, i64 %3059
  %3062 = mul nuw nsw i32 %3053, %2242
  %3063 = sext i32 %3062 to i64
  %3064 = getelementptr inbounds i8, ptr %3037, i64 %3063
  %3065 = zext nneg i32 %3052 to i64
  %3066 = getelementptr inbounds i8, ptr %3064, i64 %3065
  %3067 = getelementptr inbounds i8, ptr %3037, i64 %3065
  %3068 = add nsw i32 %2242, -16
  %3069 = sext i32 %3068 to i64
  br label %3070

3070:                                             ; preds = %3140, %3018
  %3071 = phi ptr [ %3037, %3018 ], [ %3150, %3140 ]
  %3072 = phi i32 [ 0, %3018 ], [ %3137, %3140 ]
  %3073 = phi i32 [ 0, %3018 ], [ %3158, %3140 ]
  %3074 = phi ptr [ %3060, %3018 ], [ %3157, %3140 ]
  %3075 = phi ptr [ %3058, %3018 ], [ %3156, %3140 ]
  %3076 = phi ptr [ %3061, %3018 ], [ %3155, %3140 ]
  %3077 = phi ptr [ %3066, %3018 ], [ %3153, %3140 ]
  %3078 = phi ptr [ %3064, %3018 ], [ %3152, %3140 ]
  %3079 = phi ptr [ %3067, %3018 ], [ %3151, %3140 ]
  %3080 = phi ptr [ %3051, %3018 ], [ %3154, %3140 ]
  %3081 = phi ptr [ %2250, %3018 ], [ %3149, %3140 ]
  %3082 = getelementptr i8, ptr %3079, i64 16
  br label %3083

3083:                                             ; preds = %3083, %3070
  %3084 = phi ptr [ %3071, %3070 ], [ %3095, %3083 ]
  %3085 = phi i32 [ %3072, %3070 ], [ %3137, %3083 ]
  %3086 = phi i32 [ 0, %3070 ], [ %3138, %3083 ]
  %3087 = phi ptr [ %3074, %3070 ], [ %3121, %3083 ]
  %3088 = phi ptr [ %3075, %3070 ], [ %3118, %3083 ]
  %3089 = phi ptr [ %3076, %3070 ], [ %3115, %3083 ]
  %3090 = phi ptr [ %3077, %3070 ], [ %3104, %3083 ]
  %3091 = phi ptr [ %3078, %3070 ], [ %3101, %3083 ]
  %3092 = phi ptr [ %3079, %3070 ], [ %3098, %3083 ]
  %3093 = phi ptr [ %3080, %3070 ], [ %3112, %3083 ]
  %3094 = phi ptr [ %3081, %3070 ], [ %3132, %3083 ]
  %3095 = getelementptr inbounds i8, ptr %3084, i64 1
  %3096 = load i8, ptr %3084, align 1, !tbaa !10
  %3097 = zext i8 %3096 to i32
  %3098 = getelementptr inbounds i8, ptr %3092, i64 1
  %3099 = load i8, ptr %3092, align 1, !tbaa !10
  %3100 = zext i8 %3099 to i32
  %3101 = getelementptr inbounds i8, ptr %3091, i64 1
  %3102 = load i8, ptr %3091, align 1, !tbaa !10
  %3103 = zext i8 %3102 to i32
  %3104 = getelementptr inbounds i8, ptr %3090, i64 1
  %3105 = load i8, ptr %3090, align 1, !tbaa !10
  %3106 = zext i8 %3105 to i32
  %3107 = add nuw nsw i32 %3097, 2
  %3108 = add nuw nsw i32 %3107, %3100
  %3109 = add nuw nsw i32 %3108, %3103
  %3110 = add nuw nsw i32 %3109, %3106
  %3111 = lshr i32 %3110, 2
  %3112 = getelementptr inbounds i8, ptr %3093, i64 1
  %3113 = load i8, ptr %3093, align 1, !tbaa !10
  %3114 = zext i8 %3113 to i32
  %3115 = getelementptr inbounds i8, ptr %3089, i64 1
  %3116 = load i8, ptr %3089, align 1, !tbaa !10
  %3117 = zext i8 %3116 to i32
  %3118 = getelementptr inbounds i8, ptr %3088, i64 1
  %3119 = load i8, ptr %3088, align 1, !tbaa !10
  %3120 = zext i8 %3119 to i32
  %3121 = getelementptr inbounds i8, ptr %3087, i64 1
  %3122 = load i8, ptr %3087, align 1, !tbaa !10
  %3123 = zext i8 %3122 to i32
  %3124 = add nuw nsw i32 %3114, 2
  %3125 = add nuw nsw i32 %3124, %3117
  %3126 = add nuw nsw i32 %3125, %3120
  %3127 = add nuw nsw i32 %3126, %3123
  %3128 = lshr i32 %3127, 2
  %3129 = add nuw nsw i32 %3111, 1
  %3130 = add nuw nsw i32 %3129, %3128
  %3131 = lshr i32 %3130, 1
  %3132 = getelementptr inbounds i8, ptr %3094, i64 1
  %3133 = load i8, ptr %3094, align 1, !tbaa !10
  %3134 = zext i8 %3133 to i32
  %3135 = sub nsw i32 %3131, %3134
  %3136 = tail call i32 @llvm.abs.i32(i32 %3135, i1 true)
  %3137 = add i32 %3136, %3085
  %3138 = add nuw nsw i32 %3086, 1
  %3139 = icmp eq i32 %3138, 16
  br i1 %3139, label %3140, label %3083

3140:                                             ; preds = %3083
  %3141 = getelementptr i8, ptr %3076, i64 16
  %3142 = getelementptr i8, ptr %3077, i64 16
  %3143 = getelementptr i8, ptr %3074, i64 16
  %3144 = getelementptr i8, ptr %3071, i64 16
  %3145 = getelementptr i8, ptr %3078, i64 16
  %3146 = getelementptr i8, ptr %3080, i64 16
  %3147 = getelementptr i8, ptr %3075, i64 16
  %3148 = getelementptr i8, ptr %3081, i64 16
  %3149 = getelementptr inbounds i8, ptr %3148, i64 %3069
  %3150 = getelementptr inbounds i8, ptr %3144, i64 %3069
  %3151 = getelementptr inbounds i8, ptr %3082, i64 %3069
  %3152 = getelementptr inbounds i8, ptr %3145, i64 %3069
  %3153 = getelementptr inbounds i8, ptr %3142, i64 %3069
  %3154 = getelementptr inbounds i8, ptr %3146, i64 %3069
  %3155 = getelementptr inbounds i8, ptr %3141, i64 %3069
  %3156 = getelementptr inbounds i8, ptr %3147, i64 %3069
  %3157 = getelementptr inbounds i8, ptr %3143, i64 %3069
  %3158 = add nuw nsw i32 %3073, 1
  %3159 = icmp eq i32 %3158, 16
  br i1 %3159, label %3160, label %3070

3160:                                             ; preds = %3140
  %3161 = load i32, ptr %34, align 4, !tbaa !6
  %3162 = icmp eq i32 %3161, 0
  %3163 = select i1 %3162, i32 0, i32 %100
  %3164 = sext i32 %3163 to i64
  %3165 = getelementptr inbounds i8, ptr %2, i64 %3164
  %3166 = load i32, ptr %27, align 4, !tbaa !6
  %3167 = ashr i32 %3166, 1
  %3168 = sext i32 %3167 to i64
  %3169 = getelementptr inbounds i8, ptr %3165, i64 %3168
  %3170 = load i32, ptr %28, align 4, !tbaa !6
  %3171 = ashr i32 %3170, 1
  %3172 = mul nsw i32 %3171, %2242
  %3173 = sext i32 %3172 to i64
  %3174 = getelementptr inbounds i8, ptr %3169, i64 %3173
  %3175 = load i32, ptr %45, align 4, !tbaa !6
  %3176 = icmp eq i32 %3175, 0
  %3177 = select i1 %3176, i32 0, i32 %100
  %3178 = sext i32 %3177 to i64
  %3179 = getelementptr inbounds i8, ptr %3, i64 %3178
  %3180 = load i32, ptr %38, align 4, !tbaa !6
  %3181 = ashr i32 %3180, 1
  %3182 = sext i32 %3181 to i64
  %3183 = getelementptr inbounds i8, ptr %3179, i64 %3182
  %3184 = load i32, ptr %39, align 4, !tbaa !6
  %3185 = ashr i32 %3184, 1
  %3186 = mul nsw i32 %3185, %2242
  %3187 = sext i32 %3186 to i64
  %3188 = getelementptr inbounds i8, ptr %3183, i64 %3187
  %3189 = and i32 %3166, 1
  %3190 = and i32 %3170, 1
  %3191 = and i32 %3180, 1
  %3192 = and i32 %3184, 1
  %3193 = mul nuw nsw i32 %3192, %2242
  %3194 = sext i32 %3193 to i64
  %3195 = getelementptr inbounds i8, ptr %3188, i64 %3194
  %3196 = zext nneg i32 %3191 to i64
  %3197 = getelementptr inbounds i8, ptr %3195, i64 %3196
  %3198 = getelementptr inbounds i8, ptr %3188, i64 %3196
  %3199 = mul nuw nsw i32 %3190, %2242
  %3200 = sext i32 %3199 to i64
  %3201 = getelementptr inbounds i8, ptr %3174, i64 %3200
  %3202 = zext nneg i32 %3189 to i64
  %3203 = getelementptr inbounds i8, ptr %3201, i64 %3202
  %3204 = getelementptr inbounds i8, ptr %3174, i64 %3202
  br label %3205

3205:                                             ; preds = %3275, %3160
  %3206 = phi ptr [ %3174, %3160 ], [ %3285, %3275 ]
  %3207 = phi i32 [ 0, %3160 ], [ %3272, %3275 ]
  %3208 = phi i32 [ 0, %3160 ], [ %3293, %3275 ]
  %3209 = phi ptr [ %3197, %3160 ], [ %3292, %3275 ]
  %3210 = phi ptr [ %3195, %3160 ], [ %3291, %3275 ]
  %3211 = phi ptr [ %3198, %3160 ], [ %3290, %3275 ]
  %3212 = phi ptr [ %3203, %3160 ], [ %3288, %3275 ]
  %3213 = phi ptr [ %3201, %3160 ], [ %3287, %3275 ]
  %3214 = phi ptr [ %3204, %3160 ], [ %3286, %3275 ]
  %3215 = phi ptr [ %3188, %3160 ], [ %3289, %3275 ]
  %3216 = phi ptr [ %2250, %3160 ], [ %3284, %3275 ]
  %3217 = getelementptr i8, ptr %3214, i64 16
  br label %3218

3218:                                             ; preds = %3218, %3205
  %3219 = phi ptr [ %3206, %3205 ], [ %3230, %3218 ]
  %3220 = phi i32 [ %3207, %3205 ], [ %3272, %3218 ]
  %3221 = phi i32 [ 0, %3205 ], [ %3273, %3218 ]
  %3222 = phi ptr [ %3209, %3205 ], [ %3256, %3218 ]
  %3223 = phi ptr [ %3210, %3205 ], [ %3253, %3218 ]
  %3224 = phi ptr [ %3211, %3205 ], [ %3250, %3218 ]
  %3225 = phi ptr [ %3212, %3205 ], [ %3239, %3218 ]
  %3226 = phi ptr [ %3213, %3205 ], [ %3236, %3218 ]
  %3227 = phi ptr [ %3214, %3205 ], [ %3233, %3218 ]
  %3228 = phi ptr [ %3215, %3205 ], [ %3247, %3218 ]
  %3229 = phi ptr [ %3216, %3205 ], [ %3267, %3218 ]
  %3230 = getelementptr inbounds i8, ptr %3219, i64 1
  %3231 = load i8, ptr %3219, align 1, !tbaa !10
  %3232 = zext i8 %3231 to i32
  %3233 = getelementptr inbounds i8, ptr %3227, i64 1
  %3234 = load i8, ptr %3227, align 1, !tbaa !10
  %3235 = zext i8 %3234 to i32
  %3236 = getelementptr inbounds i8, ptr %3226, i64 1
  %3237 = load i8, ptr %3226, align 1, !tbaa !10
  %3238 = zext i8 %3237 to i32
  %3239 = getelementptr inbounds i8, ptr %3225, i64 1
  %3240 = load i8, ptr %3225, align 1, !tbaa !10
  %3241 = zext i8 %3240 to i32
  %3242 = add nuw nsw i32 %3232, 2
  %3243 = add nuw nsw i32 %3242, %3235
  %3244 = add nuw nsw i32 %3243, %3238
  %3245 = add nuw nsw i32 %3244, %3241
  %3246 = lshr i32 %3245, 2
  %3247 = getelementptr inbounds i8, ptr %3228, i64 1
  %3248 = load i8, ptr %3228, align 1, !tbaa !10
  %3249 = zext i8 %3248 to i32
  %3250 = getelementptr inbounds i8, ptr %3224, i64 1
  %3251 = load i8, ptr %3224, align 1, !tbaa !10
  %3252 = zext i8 %3251 to i32
  %3253 = getelementptr inbounds i8, ptr %3223, i64 1
  %3254 = load i8, ptr %3223, align 1, !tbaa !10
  %3255 = zext i8 %3254 to i32
  %3256 = getelementptr inbounds i8, ptr %3222, i64 1
  %3257 = load i8, ptr %3222, align 1, !tbaa !10
  %3258 = zext i8 %3257 to i32
  %3259 = add nuw nsw i32 %3249, 2
  %3260 = add nuw nsw i32 %3259, %3252
  %3261 = add nuw nsw i32 %3260, %3255
  %3262 = add nuw nsw i32 %3261, %3258
  %3263 = lshr i32 %3262, 2
  %3264 = add nuw nsw i32 %3246, 1
  %3265 = add nuw nsw i32 %3264, %3263
  %3266 = lshr i32 %3265, 1
  %3267 = getelementptr inbounds i8, ptr %3229, i64 1
  %3268 = load i8, ptr %3229, align 1, !tbaa !10
  %3269 = zext i8 %3268 to i32
  %3270 = sub nsw i32 %3266, %3269
  %3271 = tail call i32 @llvm.abs.i32(i32 %3270, i1 true)
  %3272 = add i32 %3271, %3220
  %3273 = add nuw nsw i32 %3221, 1
  %3274 = icmp eq i32 %3273, 16
  br i1 %3274, label %3275, label %3218

3275:                                             ; preds = %3218
  %3276 = getelementptr i8, ptr %3211, i64 16
  %3277 = getelementptr i8, ptr %3212, i64 16
  %3278 = getelementptr i8, ptr %3209, i64 16
  %3279 = getelementptr i8, ptr %3206, i64 16
  %3280 = getelementptr i8, ptr %3213, i64 16
  %3281 = getelementptr i8, ptr %3215, i64 16
  %3282 = getelementptr i8, ptr %3210, i64 16
  %3283 = getelementptr i8, ptr %3216, i64 16
  %3284 = getelementptr inbounds i8, ptr %3283, i64 %3069
  %3285 = getelementptr inbounds i8, ptr %3279, i64 %3069
  %3286 = getelementptr inbounds i8, ptr %3217, i64 %3069
  %3287 = getelementptr inbounds i8, ptr %3280, i64 %3069
  %3288 = getelementptr inbounds i8, ptr %3277, i64 %3069
  %3289 = getelementptr inbounds i8, ptr %3281, i64 %3069
  %3290 = getelementptr inbounds i8, ptr %3276, i64 %3069
  %3291 = getelementptr inbounds i8, ptr %3282, i64 %3069
  %3292 = getelementptr inbounds i8, ptr %3278, i64 %3069
  %3293 = add nuw nsw i32 %3208, 1
  %3294 = icmp eq i32 %3293, 8
  br i1 %3294, label %3295, label %3205

3295:                                             ; preds = %3275
  %3296 = load i32, ptr %35, align 4, !tbaa !6
  %3297 = icmp eq i32 %3296, 0
  %3298 = select i1 %3297, i32 0, i32 %100
  %3299 = sext i32 %3298 to i64
  %3300 = getelementptr inbounds i8, ptr %2, i64 %3299
  %3301 = load i32, ptr %29, align 4, !tbaa !6
  %3302 = ashr i32 %3301, 1
  %3303 = sext i32 %3302 to i64
  %3304 = getelementptr inbounds i8, ptr %3300, i64 %3303
  %3305 = load i32, ptr %30, align 4, !tbaa !6
  %3306 = ashr i32 %3305, 1
  %3307 = mul nsw i32 %3306, %2242
  %3308 = sext i32 %3307 to i64
  %3309 = getelementptr inbounds i8, ptr %3304, i64 %3308
  %3310 = load i32, ptr %46, align 4, !tbaa !6
  %3311 = icmp eq i32 %3310, 0
  %3312 = select i1 %3311, i32 0, i32 %100
  %3313 = sext i32 %3312 to i64
  %3314 = getelementptr inbounds i8, ptr %3, i64 %3313
  %3315 = load i32, ptr %40, align 4, !tbaa !6
  %3316 = ashr i32 %3315, 1
  %3317 = sext i32 %3316 to i64
  %3318 = getelementptr inbounds i8, ptr %3314, i64 %3317
  %3319 = load i32, ptr %41, align 4, !tbaa !6
  %3320 = ashr i32 %3319, 1
  %3321 = mul nsw i32 %3320, %2242
  %3322 = sext i32 %3321 to i64
  %3323 = getelementptr inbounds i8, ptr %3318, i64 %3322
  %3324 = shl i32 %100, 4
  %3325 = sext i32 %3324 to i64
  %3326 = getelementptr inbounds i8, ptr %2250, i64 %3325
  %3327 = and i32 %3301, 1
  %3328 = and i32 %3305, 1
  %3329 = and i32 %3315, 1
  %3330 = and i32 %3319, 1
  %3331 = mul nuw nsw i32 %3330, %2242
  %3332 = sext i32 %3331 to i64
  %3333 = getelementptr inbounds i8, ptr %3323, i64 %3332
  %3334 = zext nneg i32 %3329 to i64
  %3335 = getelementptr inbounds i8, ptr %3333, i64 %3334
  %3336 = getelementptr inbounds i8, ptr %3323, i64 %3334
  %3337 = mul nuw nsw i32 %3328, %2242
  %3338 = sext i32 %3337 to i64
  %3339 = getelementptr inbounds i8, ptr %3309, i64 %3338
  %3340 = zext nneg i32 %3327 to i64
  %3341 = getelementptr inbounds i8, ptr %3339, i64 %3340
  %3342 = getelementptr inbounds i8, ptr %3309, i64 %3340
  br label %3343

3343:                                             ; preds = %3413, %3295
  %3344 = phi ptr [ %3309, %3295 ], [ %3423, %3413 ]
  %3345 = phi i32 [ 0, %3295 ], [ %3410, %3413 ]
  %3346 = phi i32 [ 0, %3295 ], [ %3431, %3413 ]
  %3347 = phi ptr [ %3335, %3295 ], [ %3430, %3413 ]
  %3348 = phi ptr [ %3333, %3295 ], [ %3429, %3413 ]
  %3349 = phi ptr [ %3336, %3295 ], [ %3428, %3413 ]
  %3350 = phi ptr [ %3341, %3295 ], [ %3426, %3413 ]
  %3351 = phi ptr [ %3339, %3295 ], [ %3425, %3413 ]
  %3352 = phi ptr [ %3342, %3295 ], [ %3424, %3413 ]
  %3353 = phi ptr [ %3323, %3295 ], [ %3427, %3413 ]
  %3354 = phi ptr [ %3326, %3295 ], [ %3422, %3413 ]
  %3355 = getelementptr i8, ptr %3352, i64 16
  br label %3356

3356:                                             ; preds = %3356, %3343
  %3357 = phi ptr [ %3344, %3343 ], [ %3368, %3356 ]
  %3358 = phi i32 [ %3345, %3343 ], [ %3410, %3356 ]
  %3359 = phi i32 [ 0, %3343 ], [ %3411, %3356 ]
  %3360 = phi ptr [ %3347, %3343 ], [ %3394, %3356 ]
  %3361 = phi ptr [ %3348, %3343 ], [ %3391, %3356 ]
  %3362 = phi ptr [ %3349, %3343 ], [ %3388, %3356 ]
  %3363 = phi ptr [ %3350, %3343 ], [ %3377, %3356 ]
  %3364 = phi ptr [ %3351, %3343 ], [ %3374, %3356 ]
  %3365 = phi ptr [ %3352, %3343 ], [ %3371, %3356 ]
  %3366 = phi ptr [ %3353, %3343 ], [ %3385, %3356 ]
  %3367 = phi ptr [ %3354, %3343 ], [ %3405, %3356 ]
  %3368 = getelementptr inbounds i8, ptr %3357, i64 1
  %3369 = load i8, ptr %3357, align 1, !tbaa !10
  %3370 = zext i8 %3369 to i32
  %3371 = getelementptr inbounds i8, ptr %3365, i64 1
  %3372 = load i8, ptr %3365, align 1, !tbaa !10
  %3373 = zext i8 %3372 to i32
  %3374 = getelementptr inbounds i8, ptr %3364, i64 1
  %3375 = load i8, ptr %3364, align 1, !tbaa !10
  %3376 = zext i8 %3375 to i32
  %3377 = getelementptr inbounds i8, ptr %3363, i64 1
  %3378 = load i8, ptr %3363, align 1, !tbaa !10
  %3379 = zext i8 %3378 to i32
  %3380 = add nuw nsw i32 %3370, 2
  %3381 = add nuw nsw i32 %3380, %3373
  %3382 = add nuw nsw i32 %3381, %3376
  %3383 = add nuw nsw i32 %3382, %3379
  %3384 = lshr i32 %3383, 2
  %3385 = getelementptr inbounds i8, ptr %3366, i64 1
  %3386 = load i8, ptr %3366, align 1, !tbaa !10
  %3387 = zext i8 %3386 to i32
  %3388 = getelementptr inbounds i8, ptr %3362, i64 1
  %3389 = load i8, ptr %3362, align 1, !tbaa !10
  %3390 = zext i8 %3389 to i32
  %3391 = getelementptr inbounds i8, ptr %3361, i64 1
  %3392 = load i8, ptr %3361, align 1, !tbaa !10
  %3393 = zext i8 %3392 to i32
  %3394 = getelementptr inbounds i8, ptr %3360, i64 1
  %3395 = load i8, ptr %3360, align 1, !tbaa !10
  %3396 = zext i8 %3395 to i32
  %3397 = add nuw nsw i32 %3387, 2
  %3398 = add nuw nsw i32 %3397, %3390
  %3399 = add nuw nsw i32 %3398, %3393
  %3400 = add nuw nsw i32 %3399, %3396
  %3401 = lshr i32 %3400, 2
  %3402 = add nuw nsw i32 %3384, 1
  %3403 = add nuw nsw i32 %3402, %3401
  %3404 = lshr i32 %3403, 1
  %3405 = getelementptr inbounds i8, ptr %3367, i64 1
  %3406 = load i8, ptr %3367, align 1, !tbaa !10
  %3407 = zext i8 %3406 to i32
  %3408 = sub nsw i32 %3404, %3407
  %3409 = tail call i32 @llvm.abs.i32(i32 %3408, i1 true)
  %3410 = add i32 %3409, %3358
  %3411 = add nuw nsw i32 %3359, 1
  %3412 = icmp eq i32 %3411, 16
  br i1 %3412, label %3413, label %3356

3413:                                             ; preds = %3356
  %3414 = getelementptr i8, ptr %3349, i64 16
  %3415 = getelementptr i8, ptr %3350, i64 16
  %3416 = getelementptr i8, ptr %3347, i64 16
  %3417 = getelementptr i8, ptr %3344, i64 16
  %3418 = getelementptr i8, ptr %3351, i64 16
  %3419 = getelementptr i8, ptr %3353, i64 16
  %3420 = getelementptr i8, ptr %3348, i64 16
  %3421 = getelementptr i8, ptr %3354, i64 16
  %3422 = getelementptr inbounds i8, ptr %3421, i64 %3069
  %3423 = getelementptr inbounds i8, ptr %3417, i64 %3069
  %3424 = getelementptr inbounds i8, ptr %3355, i64 %3069
  %3425 = getelementptr inbounds i8, ptr %3418, i64 %3069
  %3426 = getelementptr inbounds i8, ptr %3415, i64 %3069
  %3427 = getelementptr inbounds i8, ptr %3419, i64 %3069
  %3428 = getelementptr inbounds i8, ptr %3414, i64 %3069
  %3429 = getelementptr inbounds i8, ptr %3420, i64 %3069
  %3430 = getelementptr inbounds i8, ptr %3416, i64 %3069
  %3431 = add nuw nsw i32 %3346, 1
  %3432 = icmp eq i32 %3431, 8
  br i1 %3432, label %3433, label %3343

3433:                                             ; preds = %3413
  %3434 = add nsw i32 %3410, %3272
  %3435 = icmp slt i32 %3137, %3434
  %3436 = load i32, ptr %31, align 4
  %3437 = icmp slt i32 %3137, %3436
  %3438 = select i1 %3435, i1 %3437, i1 false
  %3439 = load i32, ptr %32, align 4
  %3440 = icmp slt i32 %3137, %3439
  %3441 = select i1 %3438, i1 %3440, i1 false
  %3442 = load i32, ptr %42, align 4
  %3443 = icmp slt i32 %3137, %3442
  %3444 = select i1 %3441, i1 %3443, i1 false
  %3445 = load i32, ptr %43, align 4
  %3446 = icmp slt i32 %3137, %3445
  %3447 = select i1 %3444, i1 %3446, i1 false
  br i1 %3447, label %3448, label %3557

3448:                                             ; preds = %3433
  store i32 12, ptr %101, align 8, !tbaa !11
  %3449 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 1, ptr %3449, align 4, !tbaa !14
  %3450 = load i32, ptr @width, align 4
  %3451 = select i1 %3025, i32 0, i32 %3450
  %3452 = sext i32 %3451 to i64
  %3453 = getelementptr inbounds i8, ptr %2, i64 %3452
  %3454 = getelementptr inbounds i8, ptr %3453, i64 %3031
  %3455 = getelementptr inbounds i8, ptr %3454, i64 %3036
  %3456 = select i1 %3039, i32 0, i32 %3450
  %3457 = sext i32 %3456 to i64
  %3458 = getelementptr inbounds i8, ptr %3, i64 %3457
  %3459 = getelementptr inbounds i8, ptr %3458, i64 %3045
  %3460 = getelementptr inbounds i8, ptr %3459, i64 %3050
  %3461 = getelementptr inbounds i8, ptr %3460, i64 %3057
  %3462 = getelementptr inbounds i8, ptr %3461, i64 %3059
  %3463 = getelementptr inbounds i8, ptr %3460, i64 %3059
  %3464 = getelementptr inbounds i8, ptr %3455, i64 %3063
  %3465 = getelementptr inbounds i8, ptr %3464, i64 %3065
  %3466 = getelementptr inbounds i8, ptr %3455, i64 %3065
  br label %3467

3467:                                             ; preds = %3537, %3448
  %3468 = phi ptr [ %3455, %3448 ], [ %3547, %3537 ]
  %3469 = phi i32 [ 0, %3448 ], [ %3534, %3537 ]
  %3470 = phi i32 [ 0, %3448 ], [ %3555, %3537 ]
  %3471 = phi ptr [ %3462, %3448 ], [ %3554, %3537 ]
  %3472 = phi ptr [ %3461, %3448 ], [ %3553, %3537 ]
  %3473 = phi ptr [ %3463, %3448 ], [ %3552, %3537 ]
  %3474 = phi ptr [ %3465, %3448 ], [ %3550, %3537 ]
  %3475 = phi ptr [ %3464, %3448 ], [ %3549, %3537 ]
  %3476 = phi ptr [ %3466, %3448 ], [ %3548, %3537 ]
  %3477 = phi ptr [ %3460, %3448 ], [ %3551, %3537 ]
  %3478 = phi ptr [ %2250, %3448 ], [ %3546, %3537 ]
  %3479 = getelementptr i8, ptr %3476, i64 16
  br label %3480

3480:                                             ; preds = %3480, %3467
  %3481 = phi ptr [ %3468, %3467 ], [ %3492, %3480 ]
  %3482 = phi i32 [ %3469, %3467 ], [ %3534, %3480 ]
  %3483 = phi i32 [ 0, %3467 ], [ %3535, %3480 ]
  %3484 = phi ptr [ %3471, %3467 ], [ %3518, %3480 ]
  %3485 = phi ptr [ %3472, %3467 ], [ %3515, %3480 ]
  %3486 = phi ptr [ %3473, %3467 ], [ %3512, %3480 ]
  %3487 = phi ptr [ %3474, %3467 ], [ %3501, %3480 ]
  %3488 = phi ptr [ %3475, %3467 ], [ %3498, %3480 ]
  %3489 = phi ptr [ %3476, %3467 ], [ %3495, %3480 ]
  %3490 = phi ptr [ %3477, %3467 ], [ %3509, %3480 ]
  %3491 = phi ptr [ %3478, %3467 ], [ %3529, %3480 ]
  %3492 = getelementptr inbounds i8, ptr %3481, i64 1
  %3493 = load i8, ptr %3481, align 1, !tbaa !10
  %3494 = zext i8 %3493 to i32
  %3495 = getelementptr inbounds i8, ptr %3489, i64 1
  %3496 = load i8, ptr %3489, align 1, !tbaa !10
  %3497 = zext i8 %3496 to i32
  %3498 = getelementptr inbounds i8, ptr %3488, i64 1
  %3499 = load i8, ptr %3488, align 1, !tbaa !10
  %3500 = zext i8 %3499 to i32
  %3501 = getelementptr inbounds i8, ptr %3487, i64 1
  %3502 = load i8, ptr %3487, align 1, !tbaa !10
  %3503 = zext i8 %3502 to i32
  %3504 = add nuw nsw i32 %3494, 2
  %3505 = add nuw nsw i32 %3504, %3497
  %3506 = add nuw nsw i32 %3505, %3500
  %3507 = add nuw nsw i32 %3506, %3503
  %3508 = lshr i32 %3507, 2
  %3509 = getelementptr inbounds i8, ptr %3490, i64 1
  %3510 = load i8, ptr %3490, align 1, !tbaa !10
  %3511 = zext i8 %3510 to i32
  %3512 = getelementptr inbounds i8, ptr %3486, i64 1
  %3513 = load i8, ptr %3486, align 1, !tbaa !10
  %3514 = zext i8 %3513 to i32
  %3515 = getelementptr inbounds i8, ptr %3485, i64 1
  %3516 = load i8, ptr %3485, align 1, !tbaa !10
  %3517 = zext i8 %3516 to i32
  %3518 = getelementptr inbounds i8, ptr %3484, i64 1
  %3519 = load i8, ptr %3484, align 1, !tbaa !10
  %3520 = zext i8 %3519 to i32
  %3521 = add nuw nsw i32 %3511, 2
  %3522 = add nuw nsw i32 %3521, %3514
  %3523 = add nuw nsw i32 %3522, %3517
  %3524 = add nuw nsw i32 %3523, %3520
  %3525 = lshr i32 %3524, 2
  %3526 = add nuw nsw i32 %3508, 1
  %3527 = add nuw nsw i32 %3526, %3525
  %3528 = lshr i32 %3527, 1
  %3529 = getelementptr inbounds i8, ptr %3491, i64 1
  %3530 = load i8, ptr %3491, align 1, !tbaa !10
  %3531 = zext i8 %3530 to i32
  %3532 = sub nsw i32 %3528, %3531
  %3533 = mul nsw i32 %3532, %3532
  %3534 = add nsw i32 %3533, %3482
  %3535 = add nuw nsw i32 %3483, 1
  %3536 = icmp eq i32 %3535, 16
  br i1 %3536, label %3537, label %3480

3537:                                             ; preds = %3480
  %3538 = getelementptr i8, ptr %3473, i64 16
  %3539 = getelementptr i8, ptr %3474, i64 16
  %3540 = getelementptr i8, ptr %3471, i64 16
  %3541 = getelementptr i8, ptr %3468, i64 16
  %3542 = getelementptr i8, ptr %3475, i64 16
  %3543 = getelementptr i8, ptr %3477, i64 16
  %3544 = getelementptr i8, ptr %3472, i64 16
  %3545 = getelementptr i8, ptr %3478, i64 16
  %3546 = getelementptr inbounds i8, ptr %3545, i64 %3069
  %3547 = getelementptr inbounds i8, ptr %3541, i64 %3069
  %3548 = getelementptr inbounds i8, ptr %3479, i64 %3069
  %3549 = getelementptr inbounds i8, ptr %3542, i64 %3069
  %3550 = getelementptr inbounds i8, ptr %3539, i64 %3069
  %3551 = getelementptr inbounds i8, ptr %3543, i64 %3069
  %3552 = getelementptr inbounds i8, ptr %3538, i64 %3069
  %3553 = getelementptr inbounds i8, ptr %3544, i64 %3069
  %3554 = getelementptr inbounds i8, ptr %3540, i64 %3069
  %3555 = add nuw nsw i32 %3470, 1
  %3556 = icmp eq i32 %3555, 16
  br i1 %3556, label %3844, label %3467

3557:                                             ; preds = %3433
  %3558 = icmp slt i32 %3434, %3436
  %3559 = icmp slt i32 %3434, %3439
  %3560 = select i1 %3558, i1 %3559, i1 false
  %3561 = icmp slt i32 %3434, %3442
  %3562 = select i1 %3560, i1 %3561, i1 false
  %3563 = icmp slt i32 %3434, %3445
  %3564 = select i1 %3562, i1 %3563, i1 false
  br i1 %3564, label %3565, label %3783

3565:                                             ; preds = %3557
  store i32 12, ptr %101, align 8, !tbaa !11
  %3566 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 2, ptr %3566, align 4, !tbaa !14
  %3567 = load i32, ptr @width, align 4
  %3568 = select i1 %3162, i32 0, i32 %3567
  %3569 = sext i32 %3568 to i64
  %3570 = getelementptr inbounds i8, ptr %2, i64 %3569
  %3571 = getelementptr inbounds i8, ptr %3570, i64 %3168
  %3572 = getelementptr inbounds i8, ptr %3571, i64 %3173
  %3573 = select i1 %3176, i32 0, i32 %3567
  %3574 = sext i32 %3573 to i64
  %3575 = getelementptr inbounds i8, ptr %3, i64 %3574
  %3576 = getelementptr inbounds i8, ptr %3575, i64 %3182
  %3577 = getelementptr inbounds i8, ptr %3576, i64 %3187
  %3578 = getelementptr inbounds i8, ptr %3577, i64 %3194
  %3579 = getelementptr inbounds i8, ptr %3578, i64 %3196
  %3580 = getelementptr inbounds i8, ptr %3577, i64 %3196
  %3581 = getelementptr inbounds i8, ptr %3572, i64 %3200
  %3582 = getelementptr inbounds i8, ptr %3581, i64 %3202
  %3583 = getelementptr inbounds i8, ptr %3572, i64 %3202
  br label %3584

3584:                                             ; preds = %3654, %3565
  %3585 = phi ptr [ %3572, %3565 ], [ %3664, %3654 ]
  %3586 = phi i32 [ 0, %3565 ], [ %3651, %3654 ]
  %3587 = phi i32 [ 0, %3565 ], [ %3672, %3654 ]
  %3588 = phi ptr [ %3579, %3565 ], [ %3671, %3654 ]
  %3589 = phi ptr [ %3578, %3565 ], [ %3670, %3654 ]
  %3590 = phi ptr [ %3580, %3565 ], [ %3669, %3654 ]
  %3591 = phi ptr [ %3582, %3565 ], [ %3667, %3654 ]
  %3592 = phi ptr [ %3581, %3565 ], [ %3666, %3654 ]
  %3593 = phi ptr [ %3583, %3565 ], [ %3665, %3654 ]
  %3594 = phi ptr [ %3577, %3565 ], [ %3668, %3654 ]
  %3595 = phi ptr [ %2250, %3565 ], [ %3663, %3654 ]
  %3596 = getelementptr i8, ptr %3593, i64 16
  br label %3597

3597:                                             ; preds = %3597, %3584
  %3598 = phi ptr [ %3585, %3584 ], [ %3609, %3597 ]
  %3599 = phi i32 [ %3586, %3584 ], [ %3651, %3597 ]
  %3600 = phi i32 [ 0, %3584 ], [ %3652, %3597 ]
  %3601 = phi ptr [ %3588, %3584 ], [ %3635, %3597 ]
  %3602 = phi ptr [ %3589, %3584 ], [ %3632, %3597 ]
  %3603 = phi ptr [ %3590, %3584 ], [ %3629, %3597 ]
  %3604 = phi ptr [ %3591, %3584 ], [ %3618, %3597 ]
  %3605 = phi ptr [ %3592, %3584 ], [ %3615, %3597 ]
  %3606 = phi ptr [ %3593, %3584 ], [ %3612, %3597 ]
  %3607 = phi ptr [ %3594, %3584 ], [ %3626, %3597 ]
  %3608 = phi ptr [ %3595, %3584 ], [ %3646, %3597 ]
  %3609 = getelementptr inbounds i8, ptr %3598, i64 1
  %3610 = load i8, ptr %3598, align 1, !tbaa !10
  %3611 = zext i8 %3610 to i32
  %3612 = getelementptr inbounds i8, ptr %3606, i64 1
  %3613 = load i8, ptr %3606, align 1, !tbaa !10
  %3614 = zext i8 %3613 to i32
  %3615 = getelementptr inbounds i8, ptr %3605, i64 1
  %3616 = load i8, ptr %3605, align 1, !tbaa !10
  %3617 = zext i8 %3616 to i32
  %3618 = getelementptr inbounds i8, ptr %3604, i64 1
  %3619 = load i8, ptr %3604, align 1, !tbaa !10
  %3620 = zext i8 %3619 to i32
  %3621 = add nuw nsw i32 %3611, 2
  %3622 = add nuw nsw i32 %3621, %3614
  %3623 = add nuw nsw i32 %3622, %3617
  %3624 = add nuw nsw i32 %3623, %3620
  %3625 = lshr i32 %3624, 2
  %3626 = getelementptr inbounds i8, ptr %3607, i64 1
  %3627 = load i8, ptr %3607, align 1, !tbaa !10
  %3628 = zext i8 %3627 to i32
  %3629 = getelementptr inbounds i8, ptr %3603, i64 1
  %3630 = load i8, ptr %3603, align 1, !tbaa !10
  %3631 = zext i8 %3630 to i32
  %3632 = getelementptr inbounds i8, ptr %3602, i64 1
  %3633 = load i8, ptr %3602, align 1, !tbaa !10
  %3634 = zext i8 %3633 to i32
  %3635 = getelementptr inbounds i8, ptr %3601, i64 1
  %3636 = load i8, ptr %3601, align 1, !tbaa !10
  %3637 = zext i8 %3636 to i32
  %3638 = add nuw nsw i32 %3628, 2
  %3639 = add nuw nsw i32 %3638, %3631
  %3640 = add nuw nsw i32 %3639, %3634
  %3641 = add nuw nsw i32 %3640, %3637
  %3642 = lshr i32 %3641, 2
  %3643 = add nuw nsw i32 %3625, 1
  %3644 = add nuw nsw i32 %3643, %3642
  %3645 = lshr i32 %3644, 1
  %3646 = getelementptr inbounds i8, ptr %3608, i64 1
  %3647 = load i8, ptr %3608, align 1, !tbaa !10
  %3648 = zext i8 %3647 to i32
  %3649 = sub nsw i32 %3645, %3648
  %3650 = mul nsw i32 %3649, %3649
  %3651 = add nsw i32 %3650, %3599
  %3652 = add nuw nsw i32 %3600, 1
  %3653 = icmp eq i32 %3652, 16
  br i1 %3653, label %3654, label %3597

3654:                                             ; preds = %3597
  %3655 = getelementptr i8, ptr %3590, i64 16
  %3656 = getelementptr i8, ptr %3591, i64 16
  %3657 = getelementptr i8, ptr %3588, i64 16
  %3658 = getelementptr i8, ptr %3585, i64 16
  %3659 = getelementptr i8, ptr %3592, i64 16
  %3660 = getelementptr i8, ptr %3594, i64 16
  %3661 = getelementptr i8, ptr %3589, i64 16
  %3662 = getelementptr i8, ptr %3595, i64 16
  %3663 = getelementptr inbounds i8, ptr %3662, i64 %3069
  %3664 = getelementptr inbounds i8, ptr %3658, i64 %3069
  %3665 = getelementptr inbounds i8, ptr %3596, i64 %3069
  %3666 = getelementptr inbounds i8, ptr %3659, i64 %3069
  %3667 = getelementptr inbounds i8, ptr %3656, i64 %3069
  %3668 = getelementptr inbounds i8, ptr %3660, i64 %3069
  %3669 = getelementptr inbounds i8, ptr %3655, i64 %3069
  %3670 = getelementptr inbounds i8, ptr %3661, i64 %3069
  %3671 = getelementptr inbounds i8, ptr %3657, i64 %3069
  %3672 = add nuw nsw i32 %3587, 1
  %3673 = icmp eq i32 %3672, 8
  br i1 %3673, label %3674, label %3584

3674:                                             ; preds = %3654
  %3675 = select i1 %3297, i32 0, i32 %3567
  %3676 = sext i32 %3675 to i64
  %3677 = getelementptr inbounds i8, ptr %2, i64 %3676
  %3678 = getelementptr inbounds i8, ptr %3677, i64 %3303
  %3679 = getelementptr inbounds i8, ptr %3678, i64 %3308
  %3680 = select i1 %3311, i32 0, i32 %3567
  %3681 = sext i32 %3680 to i64
  %3682 = getelementptr inbounds i8, ptr %3, i64 %3681
  %3683 = getelementptr inbounds i8, ptr %3682, i64 %3317
  %3684 = getelementptr inbounds i8, ptr %3683, i64 %3322
  %3685 = getelementptr inbounds i8, ptr %3684, i64 %3332
  %3686 = getelementptr inbounds i8, ptr %3685, i64 %3334
  %3687 = getelementptr inbounds i8, ptr %3684, i64 %3334
  %3688 = getelementptr inbounds i8, ptr %3679, i64 %3338
  %3689 = getelementptr inbounds i8, ptr %3688, i64 %3340
  %3690 = getelementptr inbounds i8, ptr %3679, i64 %3340
  br label %3691

3691:                                             ; preds = %3761, %3674
  %3692 = phi ptr [ %3679, %3674 ], [ %3771, %3761 ]
  %3693 = phi i32 [ 0, %3674 ], [ %3758, %3761 ]
  %3694 = phi i32 [ 0, %3674 ], [ %3779, %3761 ]
  %3695 = phi ptr [ %3686, %3674 ], [ %3778, %3761 ]
  %3696 = phi ptr [ %3685, %3674 ], [ %3777, %3761 ]
  %3697 = phi ptr [ %3687, %3674 ], [ %3776, %3761 ]
  %3698 = phi ptr [ %3689, %3674 ], [ %3774, %3761 ]
  %3699 = phi ptr [ %3688, %3674 ], [ %3773, %3761 ]
  %3700 = phi ptr [ %3690, %3674 ], [ %3772, %3761 ]
  %3701 = phi ptr [ %3684, %3674 ], [ %3775, %3761 ]
  %3702 = phi ptr [ %3326, %3674 ], [ %3770, %3761 ]
  %3703 = getelementptr i8, ptr %3700, i64 16
  br label %3704

3704:                                             ; preds = %3704, %3691
  %3705 = phi ptr [ %3692, %3691 ], [ %3716, %3704 ]
  %3706 = phi i32 [ %3693, %3691 ], [ %3758, %3704 ]
  %3707 = phi i32 [ 0, %3691 ], [ %3759, %3704 ]
  %3708 = phi ptr [ %3695, %3691 ], [ %3742, %3704 ]
  %3709 = phi ptr [ %3696, %3691 ], [ %3739, %3704 ]
  %3710 = phi ptr [ %3697, %3691 ], [ %3736, %3704 ]
  %3711 = phi ptr [ %3698, %3691 ], [ %3725, %3704 ]
  %3712 = phi ptr [ %3699, %3691 ], [ %3722, %3704 ]
  %3713 = phi ptr [ %3700, %3691 ], [ %3719, %3704 ]
  %3714 = phi ptr [ %3701, %3691 ], [ %3733, %3704 ]
  %3715 = phi ptr [ %3702, %3691 ], [ %3753, %3704 ]
  %3716 = getelementptr inbounds i8, ptr %3705, i64 1
  %3717 = load i8, ptr %3705, align 1, !tbaa !10
  %3718 = zext i8 %3717 to i32
  %3719 = getelementptr inbounds i8, ptr %3713, i64 1
  %3720 = load i8, ptr %3713, align 1, !tbaa !10
  %3721 = zext i8 %3720 to i32
  %3722 = getelementptr inbounds i8, ptr %3712, i64 1
  %3723 = load i8, ptr %3712, align 1, !tbaa !10
  %3724 = zext i8 %3723 to i32
  %3725 = getelementptr inbounds i8, ptr %3711, i64 1
  %3726 = load i8, ptr %3711, align 1, !tbaa !10
  %3727 = zext i8 %3726 to i32
  %3728 = add nuw nsw i32 %3718, 2
  %3729 = add nuw nsw i32 %3728, %3721
  %3730 = add nuw nsw i32 %3729, %3724
  %3731 = add nuw nsw i32 %3730, %3727
  %3732 = lshr i32 %3731, 2
  %3733 = getelementptr inbounds i8, ptr %3714, i64 1
  %3734 = load i8, ptr %3714, align 1, !tbaa !10
  %3735 = zext i8 %3734 to i32
  %3736 = getelementptr inbounds i8, ptr %3710, i64 1
  %3737 = load i8, ptr %3710, align 1, !tbaa !10
  %3738 = zext i8 %3737 to i32
  %3739 = getelementptr inbounds i8, ptr %3709, i64 1
  %3740 = load i8, ptr %3709, align 1, !tbaa !10
  %3741 = zext i8 %3740 to i32
  %3742 = getelementptr inbounds i8, ptr %3708, i64 1
  %3743 = load i8, ptr %3708, align 1, !tbaa !10
  %3744 = zext i8 %3743 to i32
  %3745 = add nuw nsw i32 %3735, 2
  %3746 = add nuw nsw i32 %3745, %3738
  %3747 = add nuw nsw i32 %3746, %3741
  %3748 = add nuw nsw i32 %3747, %3744
  %3749 = lshr i32 %3748, 2
  %3750 = add nuw nsw i32 %3732, 1
  %3751 = add nuw nsw i32 %3750, %3749
  %3752 = lshr i32 %3751, 1
  %3753 = getelementptr inbounds i8, ptr %3715, i64 1
  %3754 = load i8, ptr %3715, align 1, !tbaa !10
  %3755 = zext i8 %3754 to i32
  %3756 = sub nsw i32 %3752, %3755
  %3757 = mul nsw i32 %3756, %3756
  %3758 = add nsw i32 %3757, %3706
  %3759 = add nuw nsw i32 %3707, 1
  %3760 = icmp eq i32 %3759, 16
  br i1 %3760, label %3761, label %3704

3761:                                             ; preds = %3704
  %3762 = getelementptr i8, ptr %3697, i64 16
  %3763 = getelementptr i8, ptr %3698, i64 16
  %3764 = getelementptr i8, ptr %3695, i64 16
  %3765 = getelementptr i8, ptr %3692, i64 16
  %3766 = getelementptr i8, ptr %3699, i64 16
  %3767 = getelementptr i8, ptr %3701, i64 16
  %3768 = getelementptr i8, ptr %3696, i64 16
  %3769 = getelementptr i8, ptr %3702, i64 16
  %3770 = getelementptr inbounds i8, ptr %3769, i64 %3069
  %3771 = getelementptr inbounds i8, ptr %3765, i64 %3069
  %3772 = getelementptr inbounds i8, ptr %3703, i64 %3069
  %3773 = getelementptr inbounds i8, ptr %3766, i64 %3069
  %3774 = getelementptr inbounds i8, ptr %3763, i64 %3069
  %3775 = getelementptr inbounds i8, ptr %3767, i64 %3069
  %3776 = getelementptr inbounds i8, ptr %3762, i64 %3069
  %3777 = getelementptr inbounds i8, ptr %3768, i64 %3069
  %3778 = getelementptr inbounds i8, ptr %3764, i64 %3069
  %3779 = add nuw nsw i32 %3694, 1
  %3780 = icmp eq i32 %3779, 8
  br i1 %3780, label %3781, label %3691

3781:                                             ; preds = %3761
  %3782 = add nsw i32 %3758, %3651
  br label %3844

3783:                                             ; preds = %3557
  %3784 = icmp slt i32 %3436, %3439
  %3785 = icmp slt i32 %3436, %3442
  %3786 = select i1 %3784, i1 %3785, i1 false
  %3787 = icmp slt i32 %3436, %3445
  %3788 = select i1 %3786, i1 %3787, i1 false
  br i1 %3788, label %3789, label %3798

3789:                                             ; preds = %3783
  store i32 8, ptr %101, align 8, !tbaa !11
  %3790 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 1, ptr %3790, align 4, !tbaa !14
  %3791 = load i32, ptr @width, align 4
  %3792 = select i1 %3025, i32 0, i32 %3791
  %3793 = sext i32 %3792 to i64
  %3794 = getelementptr inbounds i8, ptr %2, i64 %3793
  %3795 = getelementptr inbounds i8, ptr %3794, i64 %3031
  %3796 = getelementptr inbounds i8, ptr %3795, i64 %3036
  %3797 = tail call fastcc signext i32 @dist2(ptr noundef readonly %3796, ptr noundef readonly %2250, i32 noundef signext %2242, i32 noundef signext %3052, i32 noundef signext %3053, i32 noundef signext 16)
  br label %3844

3798:                                             ; preds = %3783
  %3799 = icmp slt i32 %3439, %3442
  %3800 = icmp slt i32 %3439, %3445
  %3801 = select i1 %3799, i1 %3800, i1 false
  br i1 %3801, label %3802, label %3818

3802:                                             ; preds = %3798
  store i32 8, ptr %101, align 8, !tbaa !11
  %3803 = getelementptr inbounds i8, ptr %101, i64 4
  store i32 2, ptr %3803, align 4, !tbaa !14
  %3804 = load i32, ptr @width, align 4
  %3805 = select i1 %3162, i32 0, i32 %3804
  %3806 = sext i32 %3805 to i64
  %3807 = getelementptr inbounds i8, ptr %2, i64 %3806
  %3808 = getelementptr inbounds i8, ptr %3807, i64 %3168
  %3809 = getelementptr inbounds i8, ptr %3808, i64 %3173
  %3810 = tail call fastcc signext i32 @dist2(ptr noundef readonly %3809, ptr noundef readonly %2250, i32 noundef signext %2242, i32 noundef signext %3189, i32 noundef signext %3190, i32 noundef signext 8)
  %3811 = select i1 %3297, i32 0, i32 %3804
  %3812 = sext i32 %3811 to i64
  %3813 = getelementptr inbounds i8, ptr %2, i64 %3812
  %3814 = getelementptr inbounds i8, ptr %3813, i64 %3303
  %3815 = getelementptr inbounds i8, ptr %3814, i64 %3308
  %3816 = tail call fastcc signext i32 @dist2(ptr noundef readonly %3815, ptr noundef readonly %3326, i32 noundef signext %2242, i32 noundef signext %3327, i32 noundef signext %3328, i32 noundef signext 8)
  %3817 = add nsw i32 %3816, %3810
  br label %3844

3818:                                             ; preds = %3798
  %3819 = icmp slt i32 %3442, %3445
  store i32 4, ptr %101, align 8, !tbaa !11
  %3820 = getelementptr inbounds i8, ptr %101, i64 4
  br i1 %3819, label %3821, label %3829

3821:                                             ; preds = %3818
  store i32 1, ptr %3820, align 4, !tbaa !14
  %3822 = load i32, ptr @width, align 4
  %3823 = select i1 %3039, i32 0, i32 %3822
  %3824 = sext i32 %3823 to i64
  %3825 = getelementptr inbounds i8, ptr %3, i64 %3824
  %3826 = getelementptr inbounds i8, ptr %3825, i64 %3045
  %3827 = getelementptr inbounds i8, ptr %3826, i64 %3050
  %3828 = tail call fastcc signext i32 @dist2(ptr noundef readonly %3827, ptr noundef readonly %2250, i32 noundef signext %2242, i32 noundef signext %3054, i32 noundef signext %3055, i32 noundef signext 16)
  br label %3844

3829:                                             ; preds = %3818
  store i32 2, ptr %3820, align 4, !tbaa !14
  %3830 = load i32, ptr @width, align 4
  %3831 = select i1 %3176, i32 0, i32 %3830
  %3832 = sext i32 %3831 to i64
  %3833 = getelementptr inbounds i8, ptr %3, i64 %3832
  %3834 = getelementptr inbounds i8, ptr %3833, i64 %3182
  %3835 = getelementptr inbounds i8, ptr %3834, i64 %3187
  %3836 = tail call fastcc signext i32 @dist2(ptr noundef readonly %3835, ptr noundef readonly %2250, i32 noundef signext %2242, i32 noundef signext %3191, i32 noundef signext %3192, i32 noundef signext 8)
  %3837 = select i1 %3311, i32 0, i32 %3830
  %3838 = sext i32 %3837 to i64
  %3839 = getelementptr inbounds i8, ptr %3, i64 %3838
  %3840 = getelementptr inbounds i8, ptr %3839, i64 %3317
  %3841 = getelementptr inbounds i8, ptr %3840, i64 %3322
  %3842 = tail call fastcc signext i32 @dist2(ptr noundef readonly %3841, ptr noundef readonly %3326, i32 noundef signext %2242, i32 noundef signext %3329, i32 noundef signext %3330, i32 noundef signext 8)
  %3843 = add nsw i32 %3842, %3836
  br label %3844

3844:                                             ; preds = %3537, %3829, %3821, %3802, %3789, %3781
  %3845 = phi i1 [ false, %3781 ], [ true, %3789 ], [ false, %3802 ], [ true, %3821 ], [ false, %3829 ], [ true, %3537 ]
  %3846 = phi i32 [ %3782, %3781 ], [ %3797, %3789 ], [ %3817, %3802 ], [ %3828, %3821 ], [ %3843, %3829 ], [ %3534, %3537 ]
  %3847 = icmp sgt i32 %3846, %2360
  %3848 = icmp sgt i32 %3846, 2303
  %3849 = and i1 %3847, %3848
  br i1 %3849, label %3850, label %3851

3850:                                             ; preds = %3844
  store i32 1, ptr %101, align 8, !tbaa !11
  br label %3883

3851:                                             ; preds = %3844
  %3852 = getelementptr inbounds i8, ptr %101, i64 24
  %3853 = getelementptr inbounds i8, ptr %101, i64 28
  %3854 = getelementptr inbounds i8, ptr %101, i64 56
  %3855 = trunc i64 %99 to i32
  %3856 = shl i32 %3855, 1
  br i1 %3845, label %3857, label %3865

3857:                                             ; preds = %3851
  %3858 = sub nsw i32 %3029, %3856
  store i32 %3858, ptr %3852, align 8, !tbaa !6
  %3859 = sub nsw i32 %3033, %94
  store i32 %3859, ptr %3853, align 4, !tbaa !6
  store i32 %3024, ptr %3854, align 8, !tbaa !6
  %3860 = sub nsw i32 %3043, %3856
  %3861 = getelementptr inbounds i8, ptr %101, i64 32
  store i32 %3860, ptr %3861, align 8, !tbaa !6
  %3862 = sub nsw i32 %3047, %94
  %3863 = getelementptr inbounds i8, ptr %101, i64 36
  store i32 %3862, ptr %3863, align 4, !tbaa !6
  %3864 = getelementptr inbounds i8, ptr %101, i64 60
  store i32 %3038, ptr %3864, align 4, !tbaa !6
  br label %3883

3865:                                             ; preds = %3851
  %3866 = sub nsw i32 %3166, %3856
  store i32 %3866, ptr %3852, align 8, !tbaa !6
  %3867 = sub nsw i32 %3170, %94
  store i32 %3867, ptr %3853, align 4, !tbaa !6
  store i32 %3161, ptr %3854, align 8, !tbaa !6
  %3868 = sub nsw i32 %3301, %3856
  %3869 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 %3868, ptr %3869, align 8, !tbaa !6
  %3870 = sub nsw i32 %3305, %95
  %3871 = getelementptr inbounds i8, ptr %101, i64 44
  store i32 %3870, ptr %3871, align 4, !tbaa !6
  %3872 = getelementptr inbounds i8, ptr %101, i64 64
  store i32 %3296, ptr %3872, align 8, !tbaa !6
  %3873 = sub nsw i32 %3180, %3856
  %3874 = getelementptr inbounds i8, ptr %101, i64 32
  store i32 %3873, ptr %3874, align 8, !tbaa !6
  %3875 = sub nsw i32 %3184, %94
  %3876 = getelementptr inbounds i8, ptr %101, i64 36
  store i32 %3875, ptr %3876, align 4, !tbaa !6
  %3877 = getelementptr inbounds i8, ptr %101, i64 60
  store i32 %3175, ptr %3877, align 4, !tbaa !6
  %3878 = sub nsw i32 %3315, %3856
  %3879 = getelementptr inbounds i8, ptr %101, i64 48
  store i32 %3878, ptr %3879, align 8, !tbaa !6
  %3880 = sub nsw i32 %3319, %95
  %3881 = getelementptr inbounds i8, ptr %101, i64 52
  store i32 %3880, ptr %3881, align 4, !tbaa !6
  %3882 = getelementptr inbounds i8, ptr %101, i64 68
  store i32 %3310, ptr %3882, align 4, !tbaa !6
  br label %3883

3883:                                             ; preds = %2362, %2963, %2980, %2987, %2994, %3010, %3850, %3857, %3865
  %3884 = phi i32 [ %2360, %2362 ], [ %2360, %2963 ], [ %2959, %2980 ], [ %2959, %2987 ], [ %2959, %2994 ], [ %2969, %3010 ], [ %2360, %3850 ], [ %3846, %3857 ], [ %3846, %3865 ]
  %3885 = getelementptr inbounds i8, ptr %101, i64 88
  store i32 %3884, ptr %3885, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %49) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %48) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %47) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %46) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  br label %3886

3886:                                             ; preds = %3883, %2238
  %3887 = getelementptr inbounds i8, ptr %101, i64 96
  %3888 = add nuw nsw i64 %99, 16
  %3889 = load i32, ptr @width, align 4
  %3890 = trunc nuw i64 %3888 to i32
  %3891 = icmp sgt i32 %3889, %3890
  br i1 %3891, label %98, label %3892

3892:                                             ; preds = %3886, %88
  %3893 = phi i32 [ %89, %88 ], [ %3889, %3886 ]
  %3894 = phi ptr [ %91, %88 ], [ %3887, %3886 ]
  %3895 = load i32, ptr @quiet, align 4, !tbaa !6
  %3896 = icmp eq i32 %3895, 0
  br i1 %3896, label %3897, label %3903

3897:                                             ; preds = %3892
  %3898 = load ptr, ptr @stderr, align 8, !tbaa !16
  %3899 = tail call signext i32 @putc(i32 noundef signext 46, ptr noundef %3898)
  %3900 = load ptr, ptr @stderr, align 8, !tbaa !16
  %3901 = tail call signext i32 @fflush(ptr noundef %3900)
  %3902 = load i32, ptr @width, align 4
  br label %3903

3903:                                             ; preds = %3892, %3897
  %3904 = phi i32 [ %3893, %3892 ], [ %3902, %3897 ]
  %3905 = add nuw nsw i32 %90, 16
  %3906 = load i32, ptr @height2, align 4, !tbaa !6
  %3907 = icmp slt i32 %3905, %3906
  br i1 %3907, label %88, label %3908

3908:                                             ; preds = %3903, %13
  %3909 = load i32, ptr @quiet, align 4, !tbaa !6
  %3910 = icmp eq i32 %3909, 0
  br i1 %3910, label %3911, label %3914

3911:                                             ; preds = %3908
  %3912 = load ptr, ptr @stderr, align 8, !tbaa !16
  %3913 = tail call signext i32 @putc(i32 noundef signext 10, ptr noundef %3912)
  br label %3914

3914:                                             ; preds = %3911, %3908
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(ptr nocapture noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define internal fastcc signext range(i32 -2147483648, 65537) i32 @fullsearch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12) unnamed_addr #2 {
  %14 = sub nsw i32 %4, %6
  %15 = add nsw i32 %6, %4
  %16 = tail call i32 @llvm.smax.i32(i32 %14, i32 0)
  %17 = add nsw i32 %9, -16
  %18 = tail call i32 @llvm.smin.i32(i32 %15, i32 %17)
  %19 = sub nsw i32 %5, %7
  %20 = add nsw i32 %7, %5
  %21 = tail call i32 @llvm.smax.i32(i32 %19, i32 0)
  %22 = sub nsw i32 %10, %8
  %23 = tail call i32 @llvm.smin.i32(i32 %20, i32 %22)
  %24 = sext i32 %4 to i64
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = mul nsw i32 %5, %3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %25, i64 %27
  %29 = tail call fastcc signext i32 @dist1(ptr noundef %28, ptr noundef %2, i32 noundef signext %3, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %8, i32 noundef signext 65536)
  %30 = tail call i32 @llvm.smax.i32(i32 %6, i32 %7)
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %299, label %32

32:                                               ; preds = %13
  %33 = icmp sgt i32 %8, 0
  %34 = sext i32 %3 to i64
  br i1 %33, label %35, label %246

35:                                               ; preds = %32, %242
  %36 = phi i32 [ %244, %242 ], [ 8, %32 ]
  %37 = phi i32 [ %243, %242 ], [ 1, %32 ]
  %38 = phi i32 [ %223, %242 ], [ %29, %32 ]
  %39 = phi i32 [ %222, %242 ], [ %5, %32 ]
  %40 = phi i32 [ %221, %242 ], [ %4, %32 ]
  %41 = tail call i32 @llvm.umax.i32(i32 %36, i32 1)
  %42 = sub nsw i32 %4, %37
  %43 = sub nsw i32 %5, %37
  %44 = shl nuw nsw i32 %37, 1
  %45 = shl nsw i32 %37, 2
  %46 = mul nuw nsw i32 %37, 6
  br label %47

47:                                               ; preds = %237, %35
  %48 = phi i32 [ %42, %35 ], [ %239, %237 ]
  %49 = phi i32 [ 0, %35 ], [ %240, %237 ]
  %50 = phi i32 [ %38, %35 ], [ %223, %237 ]
  %51 = phi i32 [ %39, %35 ], [ %222, %237 ]
  %52 = phi i32 [ %40, %35 ], [ %221, %237 ]
  %53 = phi i32 [ %43, %35 ], [ %238, %237 ]
  %54 = icmp slt i32 %48, %16
  %55 = icmp sgt i32 %48, %18
  %56 = select i1 %54, i1 true, i1 %55
  %57 = icmp slt i32 %53, %21
  %58 = select i1 %56, i1 true, i1 %57
  %59 = icmp sgt i32 %53, %23
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %220, label %61

61:                                               ; preds = %47
  %62 = sext i32 %48 to i64
  %63 = getelementptr inbounds i8, ptr %0, i64 %62
  %64 = mul nsw i32 %53, %3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %63, i64 %65
  br label %67

67:                                               ; preds = %215, %61
  %68 = phi i32 [ 0, %61 ], [ %213, %215 ]
  %69 = phi i32 [ 0, %61 ], [ %218, %215 ]
  %70 = phi ptr [ %2, %61 ], [ %217, %215 ]
  %71 = phi ptr [ %66, %61 ], [ %216, %215 ]
  %72 = load i8, ptr %71, align 1, !tbaa !10
  %73 = zext i8 %72 to i32
  %74 = load i8, ptr %70, align 1, !tbaa !10
  %75 = zext i8 %74 to i32
  %76 = sub nsw i32 %73, %75
  %77 = tail call i32 @llvm.abs.i32(i32 %76, i1 true)
  %78 = add nsw i32 %77, %68
  %79 = getelementptr inbounds i8, ptr %71, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !10
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds i8, ptr %70, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !10
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %81, %84
  %86 = tail call i32 @llvm.abs.i32(i32 %85, i1 true)
  %87 = add nsw i32 %78, %86
  %88 = getelementptr inbounds i8, ptr %71, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !10
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds i8, ptr %70, i64 2
  %92 = load i8, ptr %91, align 1, !tbaa !10
  %93 = zext i8 %92 to i32
  %94 = sub nsw i32 %90, %93
  %95 = tail call i32 @llvm.abs.i32(i32 %94, i1 true)
  %96 = add nsw i32 %87, %95
  %97 = getelementptr inbounds i8, ptr %71, i64 3
  %98 = load i8, ptr %97, align 1, !tbaa !10
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds i8, ptr %70, i64 3
  %101 = load i8, ptr %100, align 1, !tbaa !10
  %102 = zext i8 %101 to i32
  %103 = sub nsw i32 %99, %102
  %104 = tail call i32 @llvm.abs.i32(i32 %103, i1 true)
  %105 = add nsw i32 %96, %104
  %106 = getelementptr inbounds i8, ptr %71, i64 4
  %107 = load i8, ptr %106, align 1, !tbaa !10
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds i8, ptr %70, i64 4
  %110 = load i8, ptr %109, align 1, !tbaa !10
  %111 = zext i8 %110 to i32
  %112 = sub nsw i32 %108, %111
  %113 = tail call i32 @llvm.abs.i32(i32 %112, i1 true)
  %114 = add nsw i32 %105, %113
  %115 = getelementptr inbounds i8, ptr %71, i64 5
  %116 = load i8, ptr %115, align 1, !tbaa !10
  %117 = zext i8 %116 to i32
  %118 = getelementptr inbounds i8, ptr %70, i64 5
  %119 = load i8, ptr %118, align 1, !tbaa !10
  %120 = zext i8 %119 to i32
  %121 = sub nsw i32 %117, %120
  %122 = tail call i32 @llvm.abs.i32(i32 %121, i1 true)
  %123 = add nsw i32 %114, %122
  %124 = getelementptr inbounds i8, ptr %71, i64 6
  %125 = load i8, ptr %124, align 1, !tbaa !10
  %126 = zext i8 %125 to i32
  %127 = getelementptr inbounds i8, ptr %70, i64 6
  %128 = load i8, ptr %127, align 1, !tbaa !10
  %129 = zext i8 %128 to i32
  %130 = sub nsw i32 %126, %129
  %131 = tail call i32 @llvm.abs.i32(i32 %130, i1 true)
  %132 = add nsw i32 %123, %131
  %133 = getelementptr inbounds i8, ptr %71, i64 7
  %134 = load i8, ptr %133, align 1, !tbaa !10
  %135 = zext i8 %134 to i32
  %136 = getelementptr inbounds i8, ptr %70, i64 7
  %137 = load i8, ptr %136, align 1, !tbaa !10
  %138 = zext i8 %137 to i32
  %139 = sub nsw i32 %135, %138
  %140 = tail call i32 @llvm.abs.i32(i32 %139, i1 true)
  %141 = add nsw i32 %132, %140
  %142 = getelementptr inbounds i8, ptr %71, i64 8
  %143 = load i8, ptr %142, align 1, !tbaa !10
  %144 = zext i8 %143 to i32
  %145 = getelementptr inbounds i8, ptr %70, i64 8
  %146 = load i8, ptr %145, align 1, !tbaa !10
  %147 = zext i8 %146 to i32
  %148 = sub nsw i32 %144, %147
  %149 = tail call i32 @llvm.abs.i32(i32 %148, i1 true)
  %150 = add nsw i32 %141, %149
  %151 = getelementptr inbounds i8, ptr %71, i64 9
  %152 = load i8, ptr %151, align 1, !tbaa !10
  %153 = zext i8 %152 to i32
  %154 = getelementptr inbounds i8, ptr %70, i64 9
  %155 = load i8, ptr %154, align 1, !tbaa !10
  %156 = zext i8 %155 to i32
  %157 = sub nsw i32 %153, %156
  %158 = tail call i32 @llvm.abs.i32(i32 %157, i1 true)
  %159 = add nsw i32 %150, %158
  %160 = getelementptr inbounds i8, ptr %71, i64 10
  %161 = load i8, ptr %160, align 1, !tbaa !10
  %162 = zext i8 %161 to i32
  %163 = getelementptr inbounds i8, ptr %70, i64 10
  %164 = load i8, ptr %163, align 1, !tbaa !10
  %165 = zext i8 %164 to i32
  %166 = sub nsw i32 %162, %165
  %167 = tail call i32 @llvm.abs.i32(i32 %166, i1 true)
  %168 = add nsw i32 %159, %167
  %169 = getelementptr inbounds i8, ptr %71, i64 11
  %170 = load i8, ptr %169, align 1, !tbaa !10
  %171 = zext i8 %170 to i32
  %172 = getelementptr inbounds i8, ptr %70, i64 11
  %173 = load i8, ptr %172, align 1, !tbaa !10
  %174 = zext i8 %173 to i32
  %175 = sub nsw i32 %171, %174
  %176 = tail call i32 @llvm.abs.i32(i32 %175, i1 true)
  %177 = add nsw i32 %168, %176
  %178 = getelementptr inbounds i8, ptr %71, i64 12
  %179 = load i8, ptr %178, align 1, !tbaa !10
  %180 = zext i8 %179 to i32
  %181 = getelementptr inbounds i8, ptr %70, i64 12
  %182 = load i8, ptr %181, align 1, !tbaa !10
  %183 = zext i8 %182 to i32
  %184 = sub nsw i32 %180, %183
  %185 = tail call i32 @llvm.abs.i32(i32 %184, i1 true)
  %186 = add nsw i32 %177, %185
  %187 = getelementptr inbounds i8, ptr %71, i64 13
  %188 = load i8, ptr %187, align 1, !tbaa !10
  %189 = zext i8 %188 to i32
  %190 = getelementptr inbounds i8, ptr %70, i64 13
  %191 = load i8, ptr %190, align 1, !tbaa !10
  %192 = zext i8 %191 to i32
  %193 = sub nsw i32 %189, %192
  %194 = tail call i32 @llvm.abs.i32(i32 %193, i1 true)
  %195 = add nsw i32 %186, %194
  %196 = getelementptr inbounds i8, ptr %71, i64 14
  %197 = load i8, ptr %196, align 1, !tbaa !10
  %198 = zext i8 %197 to i32
  %199 = getelementptr inbounds i8, ptr %70, i64 14
  %200 = load i8, ptr %199, align 1, !tbaa !10
  %201 = zext i8 %200 to i32
  %202 = sub nsw i32 %198, %201
  %203 = tail call i32 @llvm.abs.i32(i32 %202, i1 true)
  %204 = add nsw i32 %195, %203
  %205 = getelementptr inbounds i8, ptr %71, i64 15
  %206 = load i8, ptr %205, align 1, !tbaa !10
  %207 = zext i8 %206 to i32
  %208 = getelementptr inbounds i8, ptr %70, i64 15
  %209 = load i8, ptr %208, align 1, !tbaa !10
  %210 = zext i8 %209 to i32
  %211 = sub nsw i32 %207, %210
  %212 = tail call i32 @llvm.abs.i32(i32 %211, i1 true)
  %213 = add nsw i32 %204, %212
  %214 = icmp slt i32 %213, %50
  br i1 %214, label %215, label %220

215:                                              ; preds = %67
  %216 = getelementptr inbounds i8, ptr %71, i64 %34
  %217 = getelementptr inbounds i8, ptr %70, i64 %34
  %218 = add nuw nsw i32 %69, 1
  %219 = icmp eq i32 %218, %8
  br i1 %219, label %220, label %67

220:                                              ; preds = %215, %67, %47
  %221 = phi i32 [ %52, %47 ], [ %48, %215 ], [ %52, %67 ]
  %222 = phi i32 [ %51, %47 ], [ %53, %215 ], [ %51, %67 ]
  %223 = phi i32 [ %50, %47 ], [ %213, %215 ], [ %50, %67 ]
  %224 = icmp ult i32 %49, %44
  br i1 %224, label %235, label %225

225:                                              ; preds = %220
  %226 = icmp ult i32 %49, %45
  br i1 %226, label %233, label %227

227:                                              ; preds = %225
  %228 = icmp ult i32 %49, %46
  br i1 %228, label %231, label %229

229:                                              ; preds = %227
  %230 = add nsw i32 %53, -1
  br label %237

231:                                              ; preds = %227
  %232 = add nsw i32 %48, -1
  br label %237

233:                                              ; preds = %225
  %234 = add nsw i32 %53, 1
  br label %237

235:                                              ; preds = %220
  %236 = add nsw i32 %48, 1
  br label %237

237:                                              ; preds = %235, %233, %231, %229
  %238 = phi i32 [ %53, %235 ], [ %234, %233 ], [ %53, %231 ], [ %230, %229 ]
  %239 = phi i32 [ %236, %235 ], [ %48, %233 ], [ %232, %231 ], [ %48, %229 ]
  %240 = add nuw nsw i32 %49, 1
  %241 = icmp eq i32 %240, %41
  br i1 %241, label %242, label %47

242:                                              ; preds = %237
  %243 = add nuw i32 %37, 1
  %244 = add i32 %36, 8
  %245 = icmp eq i32 %37, %30
  br i1 %245, label %299, label %35

246:                                              ; preds = %32, %295
  %247 = phi i32 [ %297, %295 ], [ 8, %32 ]
  %248 = phi i32 [ %296, %295 ], [ 1, %32 ]
  %249 = phi i32 [ %276, %295 ], [ %29, %32 ]
  %250 = phi i32 [ %275, %295 ], [ %5, %32 ]
  %251 = phi i32 [ %274, %295 ], [ %4, %32 ]
  %252 = tail call i32 @llvm.umax.i32(i32 %247, i32 1)
  %253 = sub nsw i32 %4, %248
  %254 = sub nsw i32 %5, %248
  %255 = shl nuw nsw i32 %248, 1
  %256 = shl nsw i32 %248, 2
  %257 = mul nuw nsw i32 %248, 6
  br label %258

258:                                              ; preds = %246, %290
  %259 = phi i32 [ %253, %246 ], [ %292, %290 ]
  %260 = phi i32 [ 0, %246 ], [ %293, %290 ]
  %261 = phi i32 [ %249, %246 ], [ %276, %290 ]
  %262 = phi i32 [ %250, %246 ], [ %275, %290 ]
  %263 = phi i32 [ %251, %246 ], [ %274, %290 ]
  %264 = phi i32 [ %254, %246 ], [ %291, %290 ]
  %265 = icmp sge i32 %259, %16
  %266 = icmp sle i32 %259, %18
  %267 = select i1 %265, i1 %266, i1 false
  %268 = icmp sge i32 %264, %21
  %269 = select i1 %267, i1 %268, i1 false
  %270 = icmp sle i32 %264, %23
  %271 = select i1 %269, i1 %270, i1 false
  %272 = icmp sgt i32 %261, 0
  %273 = select i1 %271, i1 %272, i1 false
  %274 = select i1 %273, i32 %259, i32 %263
  %275 = select i1 %273, i32 %264, i32 %262
  %276 = select i1 %273, i32 0, i32 %261
  %277 = icmp ult i32 %260, %255
  br i1 %277, label %278, label %280

278:                                              ; preds = %258
  %279 = add nsw i32 %259, 1
  br label %290

280:                                              ; preds = %258
  %281 = icmp ult i32 %260, %256
  br i1 %281, label %282, label %284

282:                                              ; preds = %280
  %283 = add nsw i32 %264, 1
  br label %290

284:                                              ; preds = %280
  %285 = icmp ult i32 %260, %257
  br i1 %285, label %286, label %288

286:                                              ; preds = %284
  %287 = add nsw i32 %259, -1
  br label %290

288:                                              ; preds = %284
  %289 = add nsw i32 %264, -1
  br label %290

290:                                              ; preds = %278, %286, %288, %282
  %291 = phi i32 [ %264, %278 ], [ %283, %282 ], [ %264, %286 ], [ %289, %288 ]
  %292 = phi i32 [ %279, %278 ], [ %259, %282 ], [ %287, %286 ], [ %259, %288 ]
  %293 = add nuw nsw i32 %260, 1
  %294 = icmp eq i32 %293, %252
  br i1 %294, label %295, label %258

295:                                              ; preds = %290
  %296 = add nuw i32 %248, 1
  %297 = add i32 %247, 8
  %298 = icmp eq i32 %248, %30
  br i1 %298, label %299, label %246

299:                                              ; preds = %295, %242, %13
  %300 = phi i32 [ %4, %13 ], [ %221, %242 ], [ %274, %295 ]
  %301 = phi i32 [ %5, %13 ], [ %222, %242 ], [ %275, %295 ]
  %302 = shl i32 %300, 1
  %303 = shl i32 %301, 1
  %304 = icmp sgt i32 %302, 0
  %305 = sext i1 %304 to i32
  %306 = add i32 %302, %305
  %307 = shl i32 %17, 1
  %308 = icmp slt i32 %302, %307
  %309 = zext i1 %308 to i32
  %310 = icmp sgt i32 %303, 0
  %311 = sext i1 %310 to i32
  %312 = add i32 %303, %311
  %313 = shl i32 %22, 1
  %314 = icmp slt i32 %303, %313
  %315 = zext i1 %314 to i32
  %316 = or disjoint i32 %303, %315
  %317 = icmp sgt i32 %312, %316
  %318 = or disjoint i32 %302, %309
  %319 = icmp sgt i32 %306, %318
  %320 = select i1 %317, i1 true, i1 %319
  br i1 %320, label %353, label %321

321:                                              ; preds = %299
  %322 = or disjoint i32 %302, %309
  %323 = or disjoint i32 %303, %315
  br label %324

324:                                              ; preds = %321, %350
  %325 = phi i32 [ %347, %350 ], [ 65536, %321 ]
  %326 = phi i32 [ %346, %350 ], [ %303, %321 ]
  %327 = phi i32 [ %345, %350 ], [ %302, %321 ]
  %328 = phi i32 [ %351, %350 ], [ %312, %321 ]
  %329 = ashr i32 %328, 1
  %330 = mul nsw i32 %329, %3
  %331 = sext i32 %330 to i64
  %332 = getelementptr i8, ptr %1, i64 %331
  %333 = and i32 %328, 1
  br label %334

334:                                              ; preds = %324, %334
  %335 = phi i32 [ %306, %324 ], [ %348, %334 ]
  %336 = phi i32 [ %325, %324 ], [ %347, %334 ]
  %337 = phi i32 [ %326, %324 ], [ %346, %334 ]
  %338 = phi i32 [ %327, %324 ], [ %345, %334 ]
  %339 = ashr i32 %335, 1
  %340 = sext i32 %339 to i64
  %341 = getelementptr i8, ptr %332, i64 %340
  %342 = and i32 %335, 1
  %343 = tail call fastcc signext i32 @dist1(ptr noundef %341, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %342, i32 noundef signext %333, i32 noundef signext %8, i32 noundef signext %336)
  %344 = icmp slt i32 %343, %336
  %345 = select i1 %344, i32 %335, i32 %338
  %346 = select i1 %344, i32 %328, i32 %337
  %347 = tail call i32 @llvm.smin.i32(i32 %343, i32 %336)
  %348 = add i32 %335, 1
  %349 = icmp eq i32 %335, %322
  br i1 %349, label %350, label %334

350:                                              ; preds = %334
  %351 = add i32 %328, 1
  %352 = icmp eq i32 %328, %323
  br i1 %352, label %353, label %324

353:                                              ; preds = %350, %299
  %354 = phi i32 [ %302, %299 ], [ %345, %350 ]
  %355 = phi i32 [ %303, %299 ], [ %346, %350 ]
  %356 = phi i32 [ 65536, %299 ], [ %347, %350 ]
  store i32 %354, ptr %11, align 4, !tbaa !6
  store i32 %355, ptr %12, align 4, !tbaa !6
  ret i32 %356
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define internal fastcc signext i32 @dist2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) unnamed_addr #3 {
  %7 = icmp ne i32 %4, 0
  %8 = or i32 %4, %3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %165

10:                                               ; preds = %6
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %942

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i32 [ 0, %12 ], [ %160, %14 ]
  %16 = phi i32 [ 0, %12 ], [ %163, %14 ]
  %17 = phi ptr [ %1, %12 ], [ %162, %14 ]
  %18 = phi ptr [ %0, %12 ], [ %161, %14 ]
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = load i8, ptr %17, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %20, %22
  %24 = mul nsw i32 %23, %23
  %25 = add nsw i32 %24, %15
  %26 = getelementptr inbounds i8, ptr %18, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !10
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds i8, ptr %17, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !10
  %31 = zext i8 %30 to i32
  %32 = sub nsw i32 %28, %31
  %33 = mul nsw i32 %32, %32
  %34 = add nsw i32 %33, %25
  %35 = getelementptr inbounds i8, ptr %18, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !10
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8, ptr %17, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !10
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %37, %40
  %42 = mul nsw i32 %41, %41
  %43 = add nsw i32 %42, %34
  %44 = getelementptr inbounds i8, ptr %18, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !10
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %17, i64 3
  %48 = load i8, ptr %47, align 1, !tbaa !10
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %46, %49
  %51 = mul nsw i32 %50, %50
  %52 = add nsw i32 %51, %43
  %53 = getelementptr inbounds i8, ptr %18, i64 4
  %54 = load i8, ptr %53, align 1, !tbaa !10
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds i8, ptr %17, i64 4
  %57 = load i8, ptr %56, align 1, !tbaa !10
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 %55, %58
  %60 = mul nsw i32 %59, %59
  %61 = add nsw i32 %60, %52
  %62 = getelementptr inbounds i8, ptr %18, i64 5
  %63 = load i8, ptr %62, align 1, !tbaa !10
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds i8, ptr %17, i64 5
  %66 = load i8, ptr %65, align 1, !tbaa !10
  %67 = zext i8 %66 to i32
  %68 = sub nsw i32 %64, %67
  %69 = mul nsw i32 %68, %68
  %70 = add nsw i32 %69, %61
  %71 = getelementptr inbounds i8, ptr %18, i64 6
  %72 = load i8, ptr %71, align 1, !tbaa !10
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds i8, ptr %17, i64 6
  %75 = load i8, ptr %74, align 1, !tbaa !10
  %76 = zext i8 %75 to i32
  %77 = sub nsw i32 %73, %76
  %78 = mul nsw i32 %77, %77
  %79 = add nsw i32 %78, %70
  %80 = getelementptr inbounds i8, ptr %18, i64 7
  %81 = load i8, ptr %80, align 1, !tbaa !10
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds i8, ptr %17, i64 7
  %84 = load i8, ptr %83, align 1, !tbaa !10
  %85 = zext i8 %84 to i32
  %86 = sub nsw i32 %82, %85
  %87 = mul nsw i32 %86, %86
  %88 = add nsw i32 %87, %79
  %89 = getelementptr inbounds i8, ptr %18, i64 8
  %90 = load i8, ptr %89, align 1, !tbaa !10
  %91 = zext i8 %90 to i32
  %92 = getelementptr inbounds i8, ptr %17, i64 8
  %93 = load i8, ptr %92, align 1, !tbaa !10
  %94 = zext i8 %93 to i32
  %95 = sub nsw i32 %91, %94
  %96 = mul nsw i32 %95, %95
  %97 = add nsw i32 %96, %88
  %98 = getelementptr inbounds i8, ptr %18, i64 9
  %99 = load i8, ptr %98, align 1, !tbaa !10
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds i8, ptr %17, i64 9
  %102 = load i8, ptr %101, align 1, !tbaa !10
  %103 = zext i8 %102 to i32
  %104 = sub nsw i32 %100, %103
  %105 = mul nsw i32 %104, %104
  %106 = add nsw i32 %105, %97
  %107 = getelementptr inbounds i8, ptr %18, i64 10
  %108 = load i8, ptr %107, align 1, !tbaa !10
  %109 = zext i8 %108 to i32
  %110 = getelementptr inbounds i8, ptr %17, i64 10
  %111 = load i8, ptr %110, align 1, !tbaa !10
  %112 = zext i8 %111 to i32
  %113 = sub nsw i32 %109, %112
  %114 = mul nsw i32 %113, %113
  %115 = add nsw i32 %114, %106
  %116 = getelementptr inbounds i8, ptr %18, i64 11
  %117 = load i8, ptr %116, align 1, !tbaa !10
  %118 = zext i8 %117 to i32
  %119 = getelementptr inbounds i8, ptr %17, i64 11
  %120 = load i8, ptr %119, align 1, !tbaa !10
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %118, %121
  %123 = mul nsw i32 %122, %122
  %124 = add nsw i32 %123, %115
  %125 = getelementptr inbounds i8, ptr %18, i64 12
  %126 = load i8, ptr %125, align 1, !tbaa !10
  %127 = zext i8 %126 to i32
  %128 = getelementptr inbounds i8, ptr %17, i64 12
  %129 = load i8, ptr %128, align 1, !tbaa !10
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 %127, %130
  %132 = mul nsw i32 %131, %131
  %133 = add nsw i32 %132, %124
  %134 = getelementptr inbounds i8, ptr %18, i64 13
  %135 = load i8, ptr %134, align 1, !tbaa !10
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds i8, ptr %17, i64 13
  %138 = load i8, ptr %137, align 1, !tbaa !10
  %139 = zext i8 %138 to i32
  %140 = sub nsw i32 %136, %139
  %141 = mul nsw i32 %140, %140
  %142 = add nsw i32 %141, %133
  %143 = getelementptr inbounds i8, ptr %18, i64 14
  %144 = load i8, ptr %143, align 1, !tbaa !10
  %145 = zext i8 %144 to i32
  %146 = getelementptr inbounds i8, ptr %17, i64 14
  %147 = load i8, ptr %146, align 1, !tbaa !10
  %148 = zext i8 %147 to i32
  %149 = sub nsw i32 %145, %148
  %150 = mul nsw i32 %149, %149
  %151 = add nsw i32 %150, %142
  %152 = getelementptr inbounds i8, ptr %18, i64 15
  %153 = load i8, ptr %152, align 1, !tbaa !10
  %154 = zext i8 %153 to i32
  %155 = getelementptr inbounds i8, ptr %17, i64 15
  %156 = load i8, ptr %155, align 1, !tbaa !10
  %157 = zext i8 %156 to i32
  %158 = sub nsw i32 %154, %157
  %159 = mul nsw i32 %158, %158
  %160 = add nsw i32 %159, %151
  %161 = getelementptr inbounds i8, ptr %18, i64 %13
  %162 = getelementptr inbounds i8, ptr %17, i64 %13
  %163 = add nuw nsw i32 %16, 1
  %164 = icmp eq i32 %163, %5
  br i1 %164, label %942, label %14

165:                                              ; preds = %6
  %166 = icmp eq i32 %3, 0
  %167 = or i1 %166, %7
  br i1 %167, label %374, label %168

168:                                              ; preds = %165
  %169 = icmp sgt i32 %5, 0
  br i1 %169, label %170, label %942

170:                                              ; preds = %168
  %171 = sext i32 %2 to i64
  br label %172

172:                                              ; preds = %170, %172
  %173 = phi i32 [ 0, %170 ], [ %369, %172 ]
  %174 = phi i32 [ 0, %170 ], [ %372, %172 ]
  %175 = phi ptr [ %1, %170 ], [ %371, %172 ]
  %176 = phi ptr [ %0, %170 ], [ %370, %172 ]
  %177 = load i8, ptr %176, align 1, !tbaa !10
  %178 = zext i8 %177 to i32
  %179 = getelementptr inbounds i8, ptr %176, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !10
  %181 = zext i8 %180 to i32
  %182 = add nuw nsw i32 %178, 1
  %183 = add nuw nsw i32 %182, %181
  %184 = lshr i32 %183, 1
  %185 = load i8, ptr %175, align 1, !tbaa !10
  %186 = zext i8 %185 to i32
  %187 = sub nsw i32 %184, %186
  %188 = mul nsw i32 %187, %187
  %189 = add nsw i32 %188, %173
  %190 = getelementptr inbounds i8, ptr %176, i64 2
  %191 = load i8, ptr %190, align 1, !tbaa !10
  %192 = zext i8 %191 to i32
  %193 = add nuw nsw i32 %181, 1
  %194 = add nuw nsw i32 %193, %192
  %195 = lshr i32 %194, 1
  %196 = getelementptr inbounds i8, ptr %175, i64 1
  %197 = load i8, ptr %196, align 1, !tbaa !10
  %198 = zext i8 %197 to i32
  %199 = sub nsw i32 %195, %198
  %200 = mul nsw i32 %199, %199
  %201 = add nsw i32 %200, %189
  %202 = getelementptr inbounds i8, ptr %176, i64 3
  %203 = load i8, ptr %202, align 1, !tbaa !10
  %204 = zext i8 %203 to i32
  %205 = add nuw nsw i32 %192, 1
  %206 = add nuw nsw i32 %205, %204
  %207 = lshr i32 %206, 1
  %208 = getelementptr inbounds i8, ptr %175, i64 2
  %209 = load i8, ptr %208, align 1, !tbaa !10
  %210 = zext i8 %209 to i32
  %211 = sub nsw i32 %207, %210
  %212 = mul nsw i32 %211, %211
  %213 = add nsw i32 %212, %201
  %214 = getelementptr inbounds i8, ptr %176, i64 4
  %215 = load i8, ptr %214, align 1, !tbaa !10
  %216 = zext i8 %215 to i32
  %217 = add nuw nsw i32 %204, 1
  %218 = add nuw nsw i32 %217, %216
  %219 = lshr i32 %218, 1
  %220 = getelementptr inbounds i8, ptr %175, i64 3
  %221 = load i8, ptr %220, align 1, !tbaa !10
  %222 = zext i8 %221 to i32
  %223 = sub nsw i32 %219, %222
  %224 = mul nsw i32 %223, %223
  %225 = add nsw i32 %224, %213
  %226 = getelementptr inbounds i8, ptr %176, i64 5
  %227 = load i8, ptr %226, align 1, !tbaa !10
  %228 = zext i8 %227 to i32
  %229 = add nuw nsw i32 %216, 1
  %230 = add nuw nsw i32 %229, %228
  %231 = lshr i32 %230, 1
  %232 = getelementptr inbounds i8, ptr %175, i64 4
  %233 = load i8, ptr %232, align 1, !tbaa !10
  %234 = zext i8 %233 to i32
  %235 = sub nsw i32 %231, %234
  %236 = mul nsw i32 %235, %235
  %237 = add nsw i32 %236, %225
  %238 = getelementptr inbounds i8, ptr %176, i64 6
  %239 = load i8, ptr %238, align 1, !tbaa !10
  %240 = zext i8 %239 to i32
  %241 = add nuw nsw i32 %228, 1
  %242 = add nuw nsw i32 %241, %240
  %243 = lshr i32 %242, 1
  %244 = getelementptr inbounds i8, ptr %175, i64 5
  %245 = load i8, ptr %244, align 1, !tbaa !10
  %246 = zext i8 %245 to i32
  %247 = sub nsw i32 %243, %246
  %248 = mul nsw i32 %247, %247
  %249 = add nsw i32 %248, %237
  %250 = getelementptr inbounds i8, ptr %176, i64 7
  %251 = load i8, ptr %250, align 1, !tbaa !10
  %252 = zext i8 %251 to i32
  %253 = add nuw nsw i32 %240, 1
  %254 = add nuw nsw i32 %253, %252
  %255 = lshr i32 %254, 1
  %256 = getelementptr inbounds i8, ptr %175, i64 6
  %257 = load i8, ptr %256, align 1, !tbaa !10
  %258 = zext i8 %257 to i32
  %259 = sub nsw i32 %255, %258
  %260 = mul nsw i32 %259, %259
  %261 = add nsw i32 %260, %249
  %262 = getelementptr inbounds i8, ptr %176, i64 8
  %263 = load i8, ptr %262, align 1, !tbaa !10
  %264 = zext i8 %263 to i32
  %265 = add nuw nsw i32 %252, 1
  %266 = add nuw nsw i32 %265, %264
  %267 = lshr i32 %266, 1
  %268 = getelementptr inbounds i8, ptr %175, i64 7
  %269 = load i8, ptr %268, align 1, !tbaa !10
  %270 = zext i8 %269 to i32
  %271 = sub nsw i32 %267, %270
  %272 = mul nsw i32 %271, %271
  %273 = add nsw i32 %272, %261
  %274 = getelementptr inbounds i8, ptr %176, i64 9
  %275 = load i8, ptr %274, align 1, !tbaa !10
  %276 = zext i8 %275 to i32
  %277 = add nuw nsw i32 %264, 1
  %278 = add nuw nsw i32 %277, %276
  %279 = lshr i32 %278, 1
  %280 = getelementptr inbounds i8, ptr %175, i64 8
  %281 = load i8, ptr %280, align 1, !tbaa !10
  %282 = zext i8 %281 to i32
  %283 = sub nsw i32 %279, %282
  %284 = mul nsw i32 %283, %283
  %285 = add nsw i32 %284, %273
  %286 = getelementptr inbounds i8, ptr %176, i64 10
  %287 = load i8, ptr %286, align 1, !tbaa !10
  %288 = zext i8 %287 to i32
  %289 = add nuw nsw i32 %276, 1
  %290 = add nuw nsw i32 %289, %288
  %291 = lshr i32 %290, 1
  %292 = getelementptr inbounds i8, ptr %175, i64 9
  %293 = load i8, ptr %292, align 1, !tbaa !10
  %294 = zext i8 %293 to i32
  %295 = sub nsw i32 %291, %294
  %296 = mul nsw i32 %295, %295
  %297 = add nsw i32 %296, %285
  %298 = getelementptr inbounds i8, ptr %176, i64 11
  %299 = load i8, ptr %298, align 1, !tbaa !10
  %300 = zext i8 %299 to i32
  %301 = add nuw nsw i32 %288, 1
  %302 = add nuw nsw i32 %301, %300
  %303 = lshr i32 %302, 1
  %304 = getelementptr inbounds i8, ptr %175, i64 10
  %305 = load i8, ptr %304, align 1, !tbaa !10
  %306 = zext i8 %305 to i32
  %307 = sub nsw i32 %303, %306
  %308 = mul nsw i32 %307, %307
  %309 = add nsw i32 %308, %297
  %310 = getelementptr inbounds i8, ptr %176, i64 12
  %311 = load i8, ptr %310, align 1, !tbaa !10
  %312 = zext i8 %311 to i32
  %313 = add nuw nsw i32 %300, 1
  %314 = add nuw nsw i32 %313, %312
  %315 = lshr i32 %314, 1
  %316 = getelementptr inbounds i8, ptr %175, i64 11
  %317 = load i8, ptr %316, align 1, !tbaa !10
  %318 = zext i8 %317 to i32
  %319 = sub nsw i32 %315, %318
  %320 = mul nsw i32 %319, %319
  %321 = add nsw i32 %320, %309
  %322 = getelementptr inbounds i8, ptr %176, i64 13
  %323 = load i8, ptr %322, align 1, !tbaa !10
  %324 = zext i8 %323 to i32
  %325 = add nuw nsw i32 %312, 1
  %326 = add nuw nsw i32 %325, %324
  %327 = lshr i32 %326, 1
  %328 = getelementptr inbounds i8, ptr %175, i64 12
  %329 = load i8, ptr %328, align 1, !tbaa !10
  %330 = zext i8 %329 to i32
  %331 = sub nsw i32 %327, %330
  %332 = mul nsw i32 %331, %331
  %333 = add nsw i32 %332, %321
  %334 = getelementptr inbounds i8, ptr %176, i64 14
  %335 = load i8, ptr %334, align 1, !tbaa !10
  %336 = zext i8 %335 to i32
  %337 = add nuw nsw i32 %324, 1
  %338 = add nuw nsw i32 %337, %336
  %339 = lshr i32 %338, 1
  %340 = getelementptr inbounds i8, ptr %175, i64 13
  %341 = load i8, ptr %340, align 1, !tbaa !10
  %342 = zext i8 %341 to i32
  %343 = sub nsw i32 %339, %342
  %344 = mul nsw i32 %343, %343
  %345 = add nsw i32 %344, %333
  %346 = getelementptr inbounds i8, ptr %176, i64 15
  %347 = load i8, ptr %346, align 1, !tbaa !10
  %348 = zext i8 %347 to i32
  %349 = add nuw nsw i32 %336, 1
  %350 = add nuw nsw i32 %349, %348
  %351 = lshr i32 %350, 1
  %352 = getelementptr inbounds i8, ptr %175, i64 14
  %353 = load i8, ptr %352, align 1, !tbaa !10
  %354 = zext i8 %353 to i32
  %355 = sub nsw i32 %351, %354
  %356 = mul nsw i32 %355, %355
  %357 = add nsw i32 %356, %345
  %358 = getelementptr inbounds i8, ptr %176, i64 16
  %359 = load i8, ptr %358, align 1, !tbaa !10
  %360 = zext i8 %359 to i32
  %361 = add nuw nsw i32 %348, 1
  %362 = add nuw nsw i32 %361, %360
  %363 = lshr i32 %362, 1
  %364 = getelementptr inbounds i8, ptr %175, i64 15
  %365 = load i8, ptr %364, align 1, !tbaa !10
  %366 = zext i8 %365 to i32
  %367 = sub nsw i32 %363, %366
  %368 = mul nsw i32 %367, %367
  %369 = add nsw i32 %368, %357
  %370 = getelementptr inbounds i8, ptr %176, i64 %171
  %371 = getelementptr inbounds i8, ptr %175, i64 %171
  %372 = add nuw nsw i32 %174, 1
  %373 = icmp eq i32 %372, %5
  br i1 %373, label %942, label %172

374:                                              ; preds = %165
  %375 = and i1 %166, %7
  %376 = sext i32 %2 to i64
  %377 = icmp sgt i32 %5, 0
  br i1 %375, label %378, label %625

378:                                              ; preds = %374
  br i1 %377, label %379, label %942

379:                                              ; preds = %378, %379
  %380 = phi i32 [ %621, %379 ], [ 0, %378 ]
  %381 = phi i32 [ %623, %379 ], [ 0, %378 ]
  %382 = phi ptr [ %622, %379 ], [ %1, %378 ]
  %383 = phi ptr [ %384, %379 ], [ %0, %378 ]
  %384 = getelementptr inbounds i8, ptr %383, i64 %376
  %385 = load i8, ptr %383, align 1, !tbaa !10
  %386 = zext i8 %385 to i32
  %387 = load i8, ptr %384, align 1, !tbaa !10
  %388 = zext i8 %387 to i32
  %389 = add nuw nsw i32 %386, 1
  %390 = add nuw nsw i32 %389, %388
  %391 = lshr i32 %390, 1
  %392 = load i8, ptr %382, align 1, !tbaa !10
  %393 = zext i8 %392 to i32
  %394 = sub nsw i32 %391, %393
  %395 = mul nsw i32 %394, %394
  %396 = add nsw i32 %395, %380
  %397 = getelementptr inbounds i8, ptr %383, i64 1
  %398 = load i8, ptr %397, align 1, !tbaa !10
  %399 = zext i8 %398 to i32
  %400 = getelementptr inbounds i8, ptr %384, i64 1
  %401 = load i8, ptr %400, align 1, !tbaa !10
  %402 = zext i8 %401 to i32
  %403 = add nuw nsw i32 %399, 1
  %404 = add nuw nsw i32 %403, %402
  %405 = lshr i32 %404, 1
  %406 = getelementptr inbounds i8, ptr %382, i64 1
  %407 = load i8, ptr %406, align 1, !tbaa !10
  %408 = zext i8 %407 to i32
  %409 = sub nsw i32 %405, %408
  %410 = mul nsw i32 %409, %409
  %411 = add nsw i32 %410, %396
  %412 = getelementptr inbounds i8, ptr %383, i64 2
  %413 = load i8, ptr %412, align 1, !tbaa !10
  %414 = zext i8 %413 to i32
  %415 = getelementptr inbounds i8, ptr %384, i64 2
  %416 = load i8, ptr %415, align 1, !tbaa !10
  %417 = zext i8 %416 to i32
  %418 = add nuw nsw i32 %414, 1
  %419 = add nuw nsw i32 %418, %417
  %420 = lshr i32 %419, 1
  %421 = getelementptr inbounds i8, ptr %382, i64 2
  %422 = load i8, ptr %421, align 1, !tbaa !10
  %423 = zext i8 %422 to i32
  %424 = sub nsw i32 %420, %423
  %425 = mul nsw i32 %424, %424
  %426 = add nsw i32 %425, %411
  %427 = getelementptr inbounds i8, ptr %383, i64 3
  %428 = load i8, ptr %427, align 1, !tbaa !10
  %429 = zext i8 %428 to i32
  %430 = getelementptr inbounds i8, ptr %384, i64 3
  %431 = load i8, ptr %430, align 1, !tbaa !10
  %432 = zext i8 %431 to i32
  %433 = add nuw nsw i32 %429, 1
  %434 = add nuw nsw i32 %433, %432
  %435 = lshr i32 %434, 1
  %436 = getelementptr inbounds i8, ptr %382, i64 3
  %437 = load i8, ptr %436, align 1, !tbaa !10
  %438 = zext i8 %437 to i32
  %439 = sub nsw i32 %435, %438
  %440 = mul nsw i32 %439, %439
  %441 = add nsw i32 %440, %426
  %442 = getelementptr inbounds i8, ptr %383, i64 4
  %443 = load i8, ptr %442, align 1, !tbaa !10
  %444 = zext i8 %443 to i32
  %445 = getelementptr inbounds i8, ptr %384, i64 4
  %446 = load i8, ptr %445, align 1, !tbaa !10
  %447 = zext i8 %446 to i32
  %448 = add nuw nsw i32 %444, 1
  %449 = add nuw nsw i32 %448, %447
  %450 = lshr i32 %449, 1
  %451 = getelementptr inbounds i8, ptr %382, i64 4
  %452 = load i8, ptr %451, align 1, !tbaa !10
  %453 = zext i8 %452 to i32
  %454 = sub nsw i32 %450, %453
  %455 = mul nsw i32 %454, %454
  %456 = add nsw i32 %455, %441
  %457 = getelementptr inbounds i8, ptr %383, i64 5
  %458 = load i8, ptr %457, align 1, !tbaa !10
  %459 = zext i8 %458 to i32
  %460 = getelementptr inbounds i8, ptr %384, i64 5
  %461 = load i8, ptr %460, align 1, !tbaa !10
  %462 = zext i8 %461 to i32
  %463 = add nuw nsw i32 %459, 1
  %464 = add nuw nsw i32 %463, %462
  %465 = lshr i32 %464, 1
  %466 = getelementptr inbounds i8, ptr %382, i64 5
  %467 = load i8, ptr %466, align 1, !tbaa !10
  %468 = zext i8 %467 to i32
  %469 = sub nsw i32 %465, %468
  %470 = mul nsw i32 %469, %469
  %471 = add nsw i32 %470, %456
  %472 = getelementptr inbounds i8, ptr %383, i64 6
  %473 = load i8, ptr %472, align 1, !tbaa !10
  %474 = zext i8 %473 to i32
  %475 = getelementptr inbounds i8, ptr %384, i64 6
  %476 = load i8, ptr %475, align 1, !tbaa !10
  %477 = zext i8 %476 to i32
  %478 = add nuw nsw i32 %474, 1
  %479 = add nuw nsw i32 %478, %477
  %480 = lshr i32 %479, 1
  %481 = getelementptr inbounds i8, ptr %382, i64 6
  %482 = load i8, ptr %481, align 1, !tbaa !10
  %483 = zext i8 %482 to i32
  %484 = sub nsw i32 %480, %483
  %485 = mul nsw i32 %484, %484
  %486 = add nsw i32 %485, %471
  %487 = getelementptr inbounds i8, ptr %383, i64 7
  %488 = load i8, ptr %487, align 1, !tbaa !10
  %489 = zext i8 %488 to i32
  %490 = getelementptr inbounds i8, ptr %384, i64 7
  %491 = load i8, ptr %490, align 1, !tbaa !10
  %492 = zext i8 %491 to i32
  %493 = add nuw nsw i32 %489, 1
  %494 = add nuw nsw i32 %493, %492
  %495 = lshr i32 %494, 1
  %496 = getelementptr inbounds i8, ptr %382, i64 7
  %497 = load i8, ptr %496, align 1, !tbaa !10
  %498 = zext i8 %497 to i32
  %499 = sub nsw i32 %495, %498
  %500 = mul nsw i32 %499, %499
  %501 = add nsw i32 %500, %486
  %502 = getelementptr inbounds i8, ptr %383, i64 8
  %503 = load i8, ptr %502, align 1, !tbaa !10
  %504 = zext i8 %503 to i32
  %505 = getelementptr inbounds i8, ptr %384, i64 8
  %506 = load i8, ptr %505, align 1, !tbaa !10
  %507 = zext i8 %506 to i32
  %508 = add nuw nsw i32 %504, 1
  %509 = add nuw nsw i32 %508, %507
  %510 = lshr i32 %509, 1
  %511 = getelementptr inbounds i8, ptr %382, i64 8
  %512 = load i8, ptr %511, align 1, !tbaa !10
  %513 = zext i8 %512 to i32
  %514 = sub nsw i32 %510, %513
  %515 = mul nsw i32 %514, %514
  %516 = add nsw i32 %515, %501
  %517 = getelementptr inbounds i8, ptr %383, i64 9
  %518 = load i8, ptr %517, align 1, !tbaa !10
  %519 = zext i8 %518 to i32
  %520 = getelementptr inbounds i8, ptr %384, i64 9
  %521 = load i8, ptr %520, align 1, !tbaa !10
  %522 = zext i8 %521 to i32
  %523 = add nuw nsw i32 %519, 1
  %524 = add nuw nsw i32 %523, %522
  %525 = lshr i32 %524, 1
  %526 = getelementptr inbounds i8, ptr %382, i64 9
  %527 = load i8, ptr %526, align 1, !tbaa !10
  %528 = zext i8 %527 to i32
  %529 = sub nsw i32 %525, %528
  %530 = mul nsw i32 %529, %529
  %531 = add nsw i32 %530, %516
  %532 = getelementptr inbounds i8, ptr %383, i64 10
  %533 = load i8, ptr %532, align 1, !tbaa !10
  %534 = zext i8 %533 to i32
  %535 = getelementptr inbounds i8, ptr %384, i64 10
  %536 = load i8, ptr %535, align 1, !tbaa !10
  %537 = zext i8 %536 to i32
  %538 = add nuw nsw i32 %534, 1
  %539 = add nuw nsw i32 %538, %537
  %540 = lshr i32 %539, 1
  %541 = getelementptr inbounds i8, ptr %382, i64 10
  %542 = load i8, ptr %541, align 1, !tbaa !10
  %543 = zext i8 %542 to i32
  %544 = sub nsw i32 %540, %543
  %545 = mul nsw i32 %544, %544
  %546 = add nsw i32 %545, %531
  %547 = getelementptr inbounds i8, ptr %383, i64 11
  %548 = load i8, ptr %547, align 1, !tbaa !10
  %549 = zext i8 %548 to i32
  %550 = getelementptr inbounds i8, ptr %384, i64 11
  %551 = load i8, ptr %550, align 1, !tbaa !10
  %552 = zext i8 %551 to i32
  %553 = add nuw nsw i32 %549, 1
  %554 = add nuw nsw i32 %553, %552
  %555 = lshr i32 %554, 1
  %556 = getelementptr inbounds i8, ptr %382, i64 11
  %557 = load i8, ptr %556, align 1, !tbaa !10
  %558 = zext i8 %557 to i32
  %559 = sub nsw i32 %555, %558
  %560 = mul nsw i32 %559, %559
  %561 = add nsw i32 %560, %546
  %562 = getelementptr inbounds i8, ptr %383, i64 12
  %563 = load i8, ptr %562, align 1, !tbaa !10
  %564 = zext i8 %563 to i32
  %565 = getelementptr inbounds i8, ptr %384, i64 12
  %566 = load i8, ptr %565, align 1, !tbaa !10
  %567 = zext i8 %566 to i32
  %568 = add nuw nsw i32 %564, 1
  %569 = add nuw nsw i32 %568, %567
  %570 = lshr i32 %569, 1
  %571 = getelementptr inbounds i8, ptr %382, i64 12
  %572 = load i8, ptr %571, align 1, !tbaa !10
  %573 = zext i8 %572 to i32
  %574 = sub nsw i32 %570, %573
  %575 = mul nsw i32 %574, %574
  %576 = add nsw i32 %575, %561
  %577 = getelementptr inbounds i8, ptr %383, i64 13
  %578 = load i8, ptr %577, align 1, !tbaa !10
  %579 = zext i8 %578 to i32
  %580 = getelementptr inbounds i8, ptr %384, i64 13
  %581 = load i8, ptr %580, align 1, !tbaa !10
  %582 = zext i8 %581 to i32
  %583 = add nuw nsw i32 %579, 1
  %584 = add nuw nsw i32 %583, %582
  %585 = lshr i32 %584, 1
  %586 = getelementptr inbounds i8, ptr %382, i64 13
  %587 = load i8, ptr %586, align 1, !tbaa !10
  %588 = zext i8 %587 to i32
  %589 = sub nsw i32 %585, %588
  %590 = mul nsw i32 %589, %589
  %591 = add nsw i32 %590, %576
  %592 = getelementptr inbounds i8, ptr %383, i64 14
  %593 = load i8, ptr %592, align 1, !tbaa !10
  %594 = zext i8 %593 to i32
  %595 = getelementptr inbounds i8, ptr %384, i64 14
  %596 = load i8, ptr %595, align 1, !tbaa !10
  %597 = zext i8 %596 to i32
  %598 = add nuw nsw i32 %594, 1
  %599 = add nuw nsw i32 %598, %597
  %600 = lshr i32 %599, 1
  %601 = getelementptr inbounds i8, ptr %382, i64 14
  %602 = load i8, ptr %601, align 1, !tbaa !10
  %603 = zext i8 %602 to i32
  %604 = sub nsw i32 %600, %603
  %605 = mul nsw i32 %604, %604
  %606 = add nsw i32 %605, %591
  %607 = getelementptr inbounds i8, ptr %383, i64 15
  %608 = load i8, ptr %607, align 1, !tbaa !10
  %609 = zext i8 %608 to i32
  %610 = getelementptr inbounds i8, ptr %384, i64 15
  %611 = load i8, ptr %610, align 1, !tbaa !10
  %612 = zext i8 %611 to i32
  %613 = add nuw nsw i32 %609, 1
  %614 = add nuw nsw i32 %613, %612
  %615 = lshr i32 %614, 1
  %616 = getelementptr inbounds i8, ptr %382, i64 15
  %617 = load i8, ptr %616, align 1, !tbaa !10
  %618 = zext i8 %617 to i32
  %619 = sub nsw i32 %615, %618
  %620 = mul nsw i32 %619, %619
  %621 = add nsw i32 %620, %606
  %622 = getelementptr inbounds i8, ptr %382, i64 %376
  %623 = add nuw nsw i32 %381, 1
  %624 = icmp eq i32 %623, %5
  br i1 %624, label %942, label %379

625:                                              ; preds = %374
  br i1 %377, label %626, label %942

626:                                              ; preds = %625
  %627 = load i8, ptr %0, align 1, !tbaa !10
  br label %628

628:                                              ; preds = %626, %628
  %629 = phi i8 [ %635, %628 ], [ %627, %626 ]
  %630 = phi i32 [ %938, %628 ], [ 0, %626 ]
  %631 = phi i32 [ %940, %628 ], [ 0, %626 ]
  %632 = phi ptr [ %939, %628 ], [ %1, %626 ]
  %633 = phi ptr [ %634, %628 ], [ %0, %626 ]
  %634 = getelementptr inbounds i8, ptr %633, i64 %376
  %635 = load i8, ptr %634, align 1, !tbaa !10
  %636 = zext i8 %629 to i32
  %637 = getelementptr inbounds i8, ptr %633, i64 1
  %638 = load i8, ptr %637, align 1, !tbaa !10
  %639 = zext i8 %638 to i32
  %640 = zext i8 %635 to i32
  %641 = getelementptr inbounds i8, ptr %634, i64 1
  %642 = load i8, ptr %641, align 1, !tbaa !10
  %643 = zext i8 %642 to i32
  %644 = add nuw nsw i32 %636, 2
  %645 = add nuw nsw i32 %644, %639
  %646 = add nuw nsw i32 %645, %640
  %647 = add nuw nsw i32 %646, %643
  %648 = lshr i32 %647, 2
  %649 = load i8, ptr %632, align 1, !tbaa !10
  %650 = zext i8 %649 to i32
  %651 = sub nsw i32 %648, %650
  %652 = mul nsw i32 %651, %651
  %653 = add nsw i32 %652, %630
  %654 = zext i8 %638 to i32
  %655 = getelementptr inbounds i8, ptr %633, i64 2
  %656 = load i8, ptr %655, align 1, !tbaa !10
  %657 = zext i8 %656 to i32
  %658 = zext i8 %642 to i32
  %659 = getelementptr inbounds i8, ptr %634, i64 2
  %660 = load i8, ptr %659, align 1, !tbaa !10
  %661 = zext i8 %660 to i32
  %662 = add nuw nsw i32 %654, 2
  %663 = add nuw nsw i32 %662, %657
  %664 = add nuw nsw i32 %663, %658
  %665 = add nuw nsw i32 %664, %661
  %666 = lshr i32 %665, 2
  %667 = getelementptr inbounds i8, ptr %632, i64 1
  %668 = load i8, ptr %667, align 1, !tbaa !10
  %669 = zext i8 %668 to i32
  %670 = sub nsw i32 %666, %669
  %671 = mul nsw i32 %670, %670
  %672 = add nsw i32 %671, %653
  %673 = zext i8 %656 to i32
  %674 = getelementptr inbounds i8, ptr %633, i64 3
  %675 = load i8, ptr %674, align 1, !tbaa !10
  %676 = zext i8 %675 to i32
  %677 = zext i8 %660 to i32
  %678 = getelementptr inbounds i8, ptr %634, i64 3
  %679 = load i8, ptr %678, align 1, !tbaa !10
  %680 = zext i8 %679 to i32
  %681 = add nuw nsw i32 %673, 2
  %682 = add nuw nsw i32 %681, %676
  %683 = add nuw nsw i32 %682, %677
  %684 = add nuw nsw i32 %683, %680
  %685 = lshr i32 %684, 2
  %686 = getelementptr inbounds i8, ptr %632, i64 2
  %687 = load i8, ptr %686, align 1, !tbaa !10
  %688 = zext i8 %687 to i32
  %689 = sub nsw i32 %685, %688
  %690 = mul nsw i32 %689, %689
  %691 = add nsw i32 %690, %672
  %692 = zext i8 %675 to i32
  %693 = getelementptr inbounds i8, ptr %633, i64 4
  %694 = load i8, ptr %693, align 1, !tbaa !10
  %695 = zext i8 %694 to i32
  %696 = zext i8 %679 to i32
  %697 = getelementptr inbounds i8, ptr %634, i64 4
  %698 = load i8, ptr %697, align 1, !tbaa !10
  %699 = zext i8 %698 to i32
  %700 = add nuw nsw i32 %692, 2
  %701 = add nuw nsw i32 %700, %695
  %702 = add nuw nsw i32 %701, %696
  %703 = add nuw nsw i32 %702, %699
  %704 = lshr i32 %703, 2
  %705 = getelementptr inbounds i8, ptr %632, i64 3
  %706 = load i8, ptr %705, align 1, !tbaa !10
  %707 = zext i8 %706 to i32
  %708 = sub nsw i32 %704, %707
  %709 = mul nsw i32 %708, %708
  %710 = add nsw i32 %709, %691
  %711 = zext i8 %694 to i32
  %712 = getelementptr inbounds i8, ptr %633, i64 5
  %713 = load i8, ptr %712, align 1, !tbaa !10
  %714 = zext i8 %713 to i32
  %715 = zext i8 %698 to i32
  %716 = getelementptr inbounds i8, ptr %634, i64 5
  %717 = load i8, ptr %716, align 1, !tbaa !10
  %718 = zext i8 %717 to i32
  %719 = add nuw nsw i32 %711, 2
  %720 = add nuw nsw i32 %719, %714
  %721 = add nuw nsw i32 %720, %715
  %722 = add nuw nsw i32 %721, %718
  %723 = lshr i32 %722, 2
  %724 = getelementptr inbounds i8, ptr %632, i64 4
  %725 = load i8, ptr %724, align 1, !tbaa !10
  %726 = zext i8 %725 to i32
  %727 = sub nsw i32 %723, %726
  %728 = mul nsw i32 %727, %727
  %729 = add nsw i32 %728, %710
  %730 = zext i8 %713 to i32
  %731 = getelementptr inbounds i8, ptr %633, i64 6
  %732 = load i8, ptr %731, align 1, !tbaa !10
  %733 = zext i8 %732 to i32
  %734 = zext i8 %717 to i32
  %735 = getelementptr inbounds i8, ptr %634, i64 6
  %736 = load i8, ptr %735, align 1, !tbaa !10
  %737 = zext i8 %736 to i32
  %738 = add nuw nsw i32 %730, 2
  %739 = add nuw nsw i32 %738, %733
  %740 = add nuw nsw i32 %739, %734
  %741 = add nuw nsw i32 %740, %737
  %742 = lshr i32 %741, 2
  %743 = getelementptr inbounds i8, ptr %632, i64 5
  %744 = load i8, ptr %743, align 1, !tbaa !10
  %745 = zext i8 %744 to i32
  %746 = sub nsw i32 %742, %745
  %747 = mul nsw i32 %746, %746
  %748 = add nsw i32 %747, %729
  %749 = zext i8 %732 to i32
  %750 = getelementptr inbounds i8, ptr %633, i64 7
  %751 = load i8, ptr %750, align 1, !tbaa !10
  %752 = zext i8 %751 to i32
  %753 = zext i8 %736 to i32
  %754 = getelementptr inbounds i8, ptr %634, i64 7
  %755 = load i8, ptr %754, align 1, !tbaa !10
  %756 = zext i8 %755 to i32
  %757 = add nuw nsw i32 %749, 2
  %758 = add nuw nsw i32 %757, %752
  %759 = add nuw nsw i32 %758, %753
  %760 = add nuw nsw i32 %759, %756
  %761 = lshr i32 %760, 2
  %762 = getelementptr inbounds i8, ptr %632, i64 6
  %763 = load i8, ptr %762, align 1, !tbaa !10
  %764 = zext i8 %763 to i32
  %765 = sub nsw i32 %761, %764
  %766 = mul nsw i32 %765, %765
  %767 = add nsw i32 %766, %748
  %768 = zext i8 %751 to i32
  %769 = getelementptr inbounds i8, ptr %633, i64 8
  %770 = load i8, ptr %769, align 1, !tbaa !10
  %771 = zext i8 %770 to i32
  %772 = zext i8 %755 to i32
  %773 = getelementptr inbounds i8, ptr %634, i64 8
  %774 = load i8, ptr %773, align 1, !tbaa !10
  %775 = zext i8 %774 to i32
  %776 = add nuw nsw i32 %768, 2
  %777 = add nuw nsw i32 %776, %771
  %778 = add nuw nsw i32 %777, %772
  %779 = add nuw nsw i32 %778, %775
  %780 = lshr i32 %779, 2
  %781 = getelementptr inbounds i8, ptr %632, i64 7
  %782 = load i8, ptr %781, align 1, !tbaa !10
  %783 = zext i8 %782 to i32
  %784 = sub nsw i32 %780, %783
  %785 = mul nsw i32 %784, %784
  %786 = add nsw i32 %785, %767
  %787 = zext i8 %770 to i32
  %788 = getelementptr inbounds i8, ptr %633, i64 9
  %789 = load i8, ptr %788, align 1, !tbaa !10
  %790 = zext i8 %789 to i32
  %791 = zext i8 %774 to i32
  %792 = getelementptr inbounds i8, ptr %634, i64 9
  %793 = load i8, ptr %792, align 1, !tbaa !10
  %794 = zext i8 %793 to i32
  %795 = add nuw nsw i32 %787, 2
  %796 = add nuw nsw i32 %795, %790
  %797 = add nuw nsw i32 %796, %791
  %798 = add nuw nsw i32 %797, %794
  %799 = lshr i32 %798, 2
  %800 = getelementptr inbounds i8, ptr %632, i64 8
  %801 = load i8, ptr %800, align 1, !tbaa !10
  %802 = zext i8 %801 to i32
  %803 = sub nsw i32 %799, %802
  %804 = mul nsw i32 %803, %803
  %805 = add nsw i32 %804, %786
  %806 = zext i8 %789 to i32
  %807 = getelementptr inbounds i8, ptr %633, i64 10
  %808 = load i8, ptr %807, align 1, !tbaa !10
  %809 = zext i8 %808 to i32
  %810 = zext i8 %793 to i32
  %811 = getelementptr inbounds i8, ptr %634, i64 10
  %812 = load i8, ptr %811, align 1, !tbaa !10
  %813 = zext i8 %812 to i32
  %814 = add nuw nsw i32 %806, 2
  %815 = add nuw nsw i32 %814, %809
  %816 = add nuw nsw i32 %815, %810
  %817 = add nuw nsw i32 %816, %813
  %818 = lshr i32 %817, 2
  %819 = getelementptr inbounds i8, ptr %632, i64 9
  %820 = load i8, ptr %819, align 1, !tbaa !10
  %821 = zext i8 %820 to i32
  %822 = sub nsw i32 %818, %821
  %823 = mul nsw i32 %822, %822
  %824 = add nsw i32 %823, %805
  %825 = zext i8 %808 to i32
  %826 = getelementptr inbounds i8, ptr %633, i64 11
  %827 = load i8, ptr %826, align 1, !tbaa !10
  %828 = zext i8 %827 to i32
  %829 = zext i8 %812 to i32
  %830 = getelementptr inbounds i8, ptr %634, i64 11
  %831 = load i8, ptr %830, align 1, !tbaa !10
  %832 = zext i8 %831 to i32
  %833 = add nuw nsw i32 %825, 2
  %834 = add nuw nsw i32 %833, %828
  %835 = add nuw nsw i32 %834, %829
  %836 = add nuw nsw i32 %835, %832
  %837 = lshr i32 %836, 2
  %838 = getelementptr inbounds i8, ptr %632, i64 10
  %839 = load i8, ptr %838, align 1, !tbaa !10
  %840 = zext i8 %839 to i32
  %841 = sub nsw i32 %837, %840
  %842 = mul nsw i32 %841, %841
  %843 = add nsw i32 %842, %824
  %844 = zext i8 %827 to i32
  %845 = getelementptr inbounds i8, ptr %633, i64 12
  %846 = load i8, ptr %845, align 1, !tbaa !10
  %847 = zext i8 %846 to i32
  %848 = zext i8 %831 to i32
  %849 = getelementptr inbounds i8, ptr %634, i64 12
  %850 = load i8, ptr %849, align 1, !tbaa !10
  %851 = zext i8 %850 to i32
  %852 = add nuw nsw i32 %844, 2
  %853 = add nuw nsw i32 %852, %847
  %854 = add nuw nsw i32 %853, %848
  %855 = add nuw nsw i32 %854, %851
  %856 = lshr i32 %855, 2
  %857 = getelementptr inbounds i8, ptr %632, i64 11
  %858 = load i8, ptr %857, align 1, !tbaa !10
  %859 = zext i8 %858 to i32
  %860 = sub nsw i32 %856, %859
  %861 = mul nsw i32 %860, %860
  %862 = add nsw i32 %861, %843
  %863 = zext i8 %846 to i32
  %864 = getelementptr inbounds i8, ptr %633, i64 13
  %865 = load i8, ptr %864, align 1, !tbaa !10
  %866 = zext i8 %865 to i32
  %867 = zext i8 %850 to i32
  %868 = getelementptr inbounds i8, ptr %634, i64 13
  %869 = load i8, ptr %868, align 1, !tbaa !10
  %870 = zext i8 %869 to i32
  %871 = add nuw nsw i32 %863, 2
  %872 = add nuw nsw i32 %871, %866
  %873 = add nuw nsw i32 %872, %867
  %874 = add nuw nsw i32 %873, %870
  %875 = lshr i32 %874, 2
  %876 = getelementptr inbounds i8, ptr %632, i64 12
  %877 = load i8, ptr %876, align 1, !tbaa !10
  %878 = zext i8 %877 to i32
  %879 = sub nsw i32 %875, %878
  %880 = mul nsw i32 %879, %879
  %881 = add nsw i32 %880, %862
  %882 = zext i8 %865 to i32
  %883 = getelementptr inbounds i8, ptr %633, i64 14
  %884 = load i8, ptr %883, align 1, !tbaa !10
  %885 = zext i8 %884 to i32
  %886 = zext i8 %869 to i32
  %887 = getelementptr inbounds i8, ptr %634, i64 14
  %888 = load i8, ptr %887, align 1, !tbaa !10
  %889 = zext i8 %888 to i32
  %890 = add nuw nsw i32 %882, 2
  %891 = add nuw nsw i32 %890, %885
  %892 = add nuw nsw i32 %891, %886
  %893 = add nuw nsw i32 %892, %889
  %894 = lshr i32 %893, 2
  %895 = getelementptr inbounds i8, ptr %632, i64 13
  %896 = load i8, ptr %895, align 1, !tbaa !10
  %897 = zext i8 %896 to i32
  %898 = sub nsw i32 %894, %897
  %899 = mul nsw i32 %898, %898
  %900 = add nsw i32 %899, %881
  %901 = zext i8 %884 to i32
  %902 = getelementptr inbounds i8, ptr %633, i64 15
  %903 = load i8, ptr %902, align 1, !tbaa !10
  %904 = zext i8 %903 to i32
  %905 = zext i8 %888 to i32
  %906 = getelementptr inbounds i8, ptr %634, i64 15
  %907 = load i8, ptr %906, align 1, !tbaa !10
  %908 = zext i8 %907 to i32
  %909 = add nuw nsw i32 %901, 2
  %910 = add nuw nsw i32 %909, %904
  %911 = add nuw nsw i32 %910, %905
  %912 = add nuw nsw i32 %911, %908
  %913 = lshr i32 %912, 2
  %914 = getelementptr inbounds i8, ptr %632, i64 14
  %915 = load i8, ptr %914, align 1, !tbaa !10
  %916 = zext i8 %915 to i32
  %917 = sub nsw i32 %913, %916
  %918 = mul nsw i32 %917, %917
  %919 = add nsw i32 %918, %900
  %920 = zext i8 %903 to i32
  %921 = getelementptr inbounds i8, ptr %633, i64 16
  %922 = load i8, ptr %921, align 1, !tbaa !10
  %923 = zext i8 %922 to i32
  %924 = zext i8 %907 to i32
  %925 = getelementptr inbounds i8, ptr %634, i64 16
  %926 = load i8, ptr %925, align 1, !tbaa !10
  %927 = zext i8 %926 to i32
  %928 = add nuw nsw i32 %920, 2
  %929 = add nuw nsw i32 %928, %923
  %930 = add nuw nsw i32 %929, %924
  %931 = add nuw nsw i32 %930, %927
  %932 = lshr i32 %931, 2
  %933 = getelementptr inbounds i8, ptr %632, i64 15
  %934 = load i8, ptr %933, align 1, !tbaa !10
  %935 = zext i8 %934 to i32
  %936 = sub nsw i32 %932, %935
  %937 = mul nsw i32 %936, %936
  %938 = add nsw i32 %937, %919
  %939 = getelementptr inbounds i8, ptr %632, i64 %376
  %940 = add nuw nsw i32 %631, 1
  %941 = icmp eq i32 %940, %5
  br i1 %941, label %942, label %628

942:                                              ; preds = %172, %628, %379, %14, %168, %625, %378, %10
  %943 = phi i32 [ 0, %10 ], [ 0, %378 ], [ 0, %625 ], [ 0, %168 ], [ %160, %14 ], [ %621, %379 ], [ %938, %628 ], [ %369, %172 ]
  ret i32 %943
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define internal fastcc void @frame_estimate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, ptr nocapture noundef writeonly %13, ptr nocapture noundef writeonly %14, ptr nocapture noundef writeonly %15, ptr nocapture noundef writeonly %16, ptr nocapture noundef writeonly %17, ptr nocapture noundef writeonly %18) unnamed_addr #2 {
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #5
  %24 = load i32, ptr @width, align 4, !tbaa !6
  %25 = load i32, ptr @height, align 4, !tbaa !6
  %26 = tail call fastcc signext i32 @fullsearch(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %24, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext 16, i32 noundef signext %24, i32 noundef signext %25, ptr noundef %7, ptr noundef %8)
  store i32 %26, ptr %13, align 4, !tbaa !6
  %27 = load i32, ptr @width, align 4, !tbaa !6
  %28 = shl i32 %27, 1
  %29 = ashr i32 %4, 1
  %30 = ashr i32 %6, 1
  %31 = load i32, ptr @height, align 4, !tbaa !6
  %32 = ashr i32 %31, 1
  %33 = call fastcc signext i32 @fullsearch(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %28, i32 noundef signext %3, i32 noundef signext %29, i32 noundef signext %5, i32 noundef signext %30, i32 noundef signext 8, i32 noundef signext %27, i32 noundef signext %32, ptr noundef nonnull %20, ptr noundef nonnull %22)
  %34 = sext i32 %27 to i64
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = getelementptr inbounds i8, ptr %1, i64 %34
  %37 = call fastcc signext i32 @fullsearch(ptr noundef %35, ptr noundef %36, ptr noundef %2, i32 noundef signext %28, i32 noundef signext %3, i32 noundef signext %29, i32 noundef signext %5, i32 noundef signext %30, i32 noundef signext 8, i32 noundef signext %27, i32 noundef signext %32, ptr noundef nonnull %21, ptr noundef nonnull %23)
  %38 = load i32, ptr %20, align 4
  store i32 %38, ptr %17, align 4, !tbaa !6
  %39 = load i32, ptr %22, align 4
  store i32 %39, ptr %18, align 4, !tbaa !6
  %40 = load i32, ptr %21, align 4
  %41 = getelementptr inbounds i8, ptr %17, i64 8
  store i32 %40, ptr %41, align 4, !tbaa !6
  %42 = load i32, ptr %23, align 4
  %43 = getelementptr inbounds i8, ptr %18, i64 8
  store i32 %42, ptr %43, align 4, !tbaa !6
  %44 = icmp sgt i32 %33, %37
  %45 = zext i1 %44 to i32
  %46 = select i1 %44, i32 %40, i32 %38
  store i32 %46, ptr %9, align 4, !tbaa !6
  %47 = select i1 %44, i32 %42, i32 %39
  store i32 %47, ptr %10, align 4, !tbaa !6
  store i32 %45, ptr %15, align 4, !tbaa !6
  %48 = load i32, ptr @width, align 4, !tbaa !6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %2, i64 %49
  %51 = shl i32 %48, 1
  %52 = load i32, ptr @height, align 4, !tbaa !6
  %53 = ashr i32 %52, 1
  %54 = call fastcc signext i32 @fullsearch(ptr noundef %0, ptr noundef %1, ptr noundef %50, i32 noundef signext %51, i32 noundef signext %3, i32 noundef signext %29, i32 noundef signext %5, i32 noundef signext %30, i32 noundef signext 8, i32 noundef signext %48, i32 noundef signext %53, ptr noundef nonnull %20, ptr noundef nonnull %22)
  %55 = getelementptr inbounds i8, ptr %0, i64 %49
  %56 = getelementptr inbounds i8, ptr %1, i64 %49
  %57 = call fastcc signext i32 @fullsearch(ptr noundef %55, ptr noundef %56, ptr noundef %50, i32 noundef signext %51, i32 noundef signext %3, i32 noundef signext %29, i32 noundef signext %5, i32 noundef signext %30, i32 noundef signext 8, i32 noundef signext %48, i32 noundef signext %53, ptr noundef nonnull %21, ptr noundef nonnull %23)
  %58 = load i32, ptr %20, align 4, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %17, i64 4
  store i32 %58, ptr %59, align 4, !tbaa !6
  %60 = load i32, ptr %22, align 4, !tbaa !6
  %61 = getelementptr inbounds i8, ptr %18, i64 4
  store i32 %60, ptr %61, align 4, !tbaa !6
  %62 = load i32, ptr %21, align 4, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %17, i64 12
  store i32 %62, ptr %63, align 4, !tbaa !6
  %64 = load i32, ptr %23, align 4, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %18, i64 12
  store i32 %64, ptr %65, align 4, !tbaa !6
  %66 = icmp sgt i32 %57, %54
  br i1 %66, label %67, label %68

67:                                               ; preds = %19
  br label %68

68:                                               ; preds = %19, %67
  %69 = phi i32 [ %60, %67 ], [ %64, %19 ]
  %70 = phi i32 [ %58, %67 ], [ %62, %19 ]
  %71 = phi i32 [ 0, %67 ], [ 1, %19 ]
  %72 = phi i32 [ %54, %67 ], [ %57, %19 ]
  %73 = tail call i32 @llvm.smin.i32(i32 %33, i32 %37)
  store i32 %70, ptr %11, align 4, !tbaa !6
  store i32 %69, ptr %12, align 4, !tbaa !6
  store i32 %71, ptr %16, align 4, !tbaa !6
  %74 = add nsw i32 %72, %73
  store i32 %74, ptr %14, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define internal fastcc signext i32 @dist1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) unnamed_addr #3 {
  %8 = icmp ne i32 %4, 0
  %9 = or i32 %4, %3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %168

11:                                               ; preds = %7
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %13, label %669

13:                                               ; preds = %11
  %14 = sext i32 %2 to i64
  br label %15

15:                                               ; preds = %13, %163
  %16 = phi i32 [ 0, %13 ], [ %161, %163 ]
  %17 = phi i32 [ 0, %13 ], [ %166, %163 ]
  %18 = phi ptr [ %1, %13 ], [ %165, %163 ]
  %19 = phi ptr [ %0, %13 ], [ %164, %163 ]
  %20 = load i8, ptr %19, align 1, !tbaa !10
  %21 = zext i8 %20 to i32
  %22 = load i8, ptr %18, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = sub nsw i32 %21, %23
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = add nsw i32 %25, %16
  %27 = getelementptr inbounds i8, ptr %19, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !10
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %18, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !10
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %29, %32
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = add nsw i32 %26, %34
  %36 = getelementptr inbounds i8, ptr %19, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %18, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %38, %41
  %43 = tail call i32 @llvm.abs.i32(i32 %42, i1 true)
  %44 = add nsw i32 %35, %43
  %45 = getelementptr inbounds i8, ptr %19, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !10
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %18, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !10
  %50 = zext i8 %49 to i32
  %51 = sub nsw i32 %47, %50
  %52 = tail call i32 @llvm.abs.i32(i32 %51, i1 true)
  %53 = add nsw i32 %44, %52
  %54 = getelementptr inbounds i8, ptr %19, i64 4
  %55 = load i8, ptr %54, align 1, !tbaa !10
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds i8, ptr %18, i64 4
  %58 = load i8, ptr %57, align 1, !tbaa !10
  %59 = zext i8 %58 to i32
  %60 = sub nsw i32 %56, %59
  %61 = tail call i32 @llvm.abs.i32(i32 %60, i1 true)
  %62 = add nsw i32 %53, %61
  %63 = getelementptr inbounds i8, ptr %19, i64 5
  %64 = load i8, ptr %63, align 1, !tbaa !10
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds i8, ptr %18, i64 5
  %67 = load i8, ptr %66, align 1, !tbaa !10
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %65, %68
  %70 = tail call i32 @llvm.abs.i32(i32 %69, i1 true)
  %71 = add nsw i32 %62, %70
  %72 = getelementptr inbounds i8, ptr %19, i64 6
  %73 = load i8, ptr %72, align 1, !tbaa !10
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds i8, ptr %18, i64 6
  %76 = load i8, ptr %75, align 1, !tbaa !10
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %74, %77
  %79 = tail call i32 @llvm.abs.i32(i32 %78, i1 true)
  %80 = add nsw i32 %71, %79
  %81 = getelementptr inbounds i8, ptr %19, i64 7
  %82 = load i8, ptr %81, align 1, !tbaa !10
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds i8, ptr %18, i64 7
  %85 = load i8, ptr %84, align 1, !tbaa !10
  %86 = zext i8 %85 to i32
  %87 = sub nsw i32 %83, %86
  %88 = tail call i32 @llvm.abs.i32(i32 %87, i1 true)
  %89 = add nsw i32 %80, %88
  %90 = getelementptr inbounds i8, ptr %19, i64 8
  %91 = load i8, ptr %90, align 1, !tbaa !10
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds i8, ptr %18, i64 8
  %94 = load i8, ptr %93, align 1, !tbaa !10
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 %92, %95
  %97 = tail call i32 @llvm.abs.i32(i32 %96, i1 true)
  %98 = add nsw i32 %89, %97
  %99 = getelementptr inbounds i8, ptr %19, i64 9
  %100 = load i8, ptr %99, align 1, !tbaa !10
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds i8, ptr %18, i64 9
  %103 = load i8, ptr %102, align 1, !tbaa !10
  %104 = zext i8 %103 to i32
  %105 = sub nsw i32 %101, %104
  %106 = tail call i32 @llvm.abs.i32(i32 %105, i1 true)
  %107 = add nsw i32 %98, %106
  %108 = getelementptr inbounds i8, ptr %19, i64 10
  %109 = load i8, ptr %108, align 1, !tbaa !10
  %110 = zext i8 %109 to i32
  %111 = getelementptr inbounds i8, ptr %18, i64 10
  %112 = load i8, ptr %111, align 1, !tbaa !10
  %113 = zext i8 %112 to i32
  %114 = sub nsw i32 %110, %113
  %115 = tail call i32 @llvm.abs.i32(i32 %114, i1 true)
  %116 = add nsw i32 %107, %115
  %117 = getelementptr inbounds i8, ptr %19, i64 11
  %118 = load i8, ptr %117, align 1, !tbaa !10
  %119 = zext i8 %118 to i32
  %120 = getelementptr inbounds i8, ptr %18, i64 11
  %121 = load i8, ptr %120, align 1, !tbaa !10
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %119, %122
  %124 = tail call i32 @llvm.abs.i32(i32 %123, i1 true)
  %125 = add nsw i32 %116, %124
  %126 = getelementptr inbounds i8, ptr %19, i64 12
  %127 = load i8, ptr %126, align 1, !tbaa !10
  %128 = zext i8 %127 to i32
  %129 = getelementptr inbounds i8, ptr %18, i64 12
  %130 = load i8, ptr %129, align 1, !tbaa !10
  %131 = zext i8 %130 to i32
  %132 = sub nsw i32 %128, %131
  %133 = tail call i32 @llvm.abs.i32(i32 %132, i1 true)
  %134 = add nsw i32 %125, %133
  %135 = getelementptr inbounds i8, ptr %19, i64 13
  %136 = load i8, ptr %135, align 1, !tbaa !10
  %137 = zext i8 %136 to i32
  %138 = getelementptr inbounds i8, ptr %18, i64 13
  %139 = load i8, ptr %138, align 1, !tbaa !10
  %140 = zext i8 %139 to i32
  %141 = sub nsw i32 %137, %140
  %142 = tail call i32 @llvm.abs.i32(i32 %141, i1 true)
  %143 = add nsw i32 %134, %142
  %144 = getelementptr inbounds i8, ptr %19, i64 14
  %145 = load i8, ptr %144, align 1, !tbaa !10
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds i8, ptr %18, i64 14
  %148 = load i8, ptr %147, align 1, !tbaa !10
  %149 = zext i8 %148 to i32
  %150 = sub nsw i32 %146, %149
  %151 = tail call i32 @llvm.abs.i32(i32 %150, i1 true)
  %152 = add nsw i32 %143, %151
  %153 = getelementptr inbounds i8, ptr %19, i64 15
  %154 = load i8, ptr %153, align 1, !tbaa !10
  %155 = zext i8 %154 to i32
  %156 = getelementptr inbounds i8, ptr %18, i64 15
  %157 = load i8, ptr %156, align 1, !tbaa !10
  %158 = zext i8 %157 to i32
  %159 = sub nsw i32 %155, %158
  %160 = tail call i32 @llvm.abs.i32(i32 %159, i1 true)
  %161 = add nsw i32 %152, %160
  %162 = icmp slt i32 %161, %6
  br i1 %162, label %163, label %669

163:                                              ; preds = %15
  %164 = getelementptr inbounds i8, ptr %19, i64 %14
  %165 = getelementptr inbounds i8, ptr %18, i64 %14
  %166 = add nuw nsw i32 %17, 1
  %167 = icmp eq i32 %166, %5
  br i1 %167, label %669, label %15

168:                                              ; preds = %7
  %169 = icmp eq i32 %3, 0
  %170 = or i1 %169, %8
  br i1 %170, label %377, label %171

171:                                              ; preds = %168
  %172 = icmp sgt i32 %5, 0
  br i1 %172, label %173, label %669

173:                                              ; preds = %171
  %174 = sext i32 %2 to i64
  br label %175

175:                                              ; preds = %173, %175
  %176 = phi i32 [ 0, %173 ], [ %372, %175 ]
  %177 = phi i32 [ 0, %173 ], [ %375, %175 ]
  %178 = phi ptr [ %1, %173 ], [ %374, %175 ]
  %179 = phi ptr [ %0, %173 ], [ %373, %175 ]
  %180 = load i8, ptr %179, align 1, !tbaa !10
  %181 = zext i8 %180 to i32
  %182 = getelementptr inbounds i8, ptr %179, i64 1
  %183 = load i8, ptr %182, align 1, !tbaa !10
  %184 = zext i8 %183 to i32
  %185 = add nuw nsw i32 %181, 1
  %186 = add nuw nsw i32 %185, %184
  %187 = lshr i32 %186, 1
  %188 = load i8, ptr %178, align 1, !tbaa !10
  %189 = zext i8 %188 to i32
  %190 = sub nsw i32 %187, %189
  %191 = tail call i32 @llvm.abs.i32(i32 %190, i1 true)
  %192 = add i32 %191, %176
  %193 = getelementptr inbounds i8, ptr %179, i64 2
  %194 = load i8, ptr %193, align 1, !tbaa !10
  %195 = zext i8 %194 to i32
  %196 = add nuw nsw i32 %184, 1
  %197 = add nuw nsw i32 %196, %195
  %198 = lshr i32 %197, 1
  %199 = getelementptr inbounds i8, ptr %178, i64 1
  %200 = load i8, ptr %199, align 1, !tbaa !10
  %201 = zext i8 %200 to i32
  %202 = sub nsw i32 %198, %201
  %203 = tail call i32 @llvm.abs.i32(i32 %202, i1 true)
  %204 = add i32 %203, %192
  %205 = getelementptr inbounds i8, ptr %179, i64 3
  %206 = load i8, ptr %205, align 1, !tbaa !10
  %207 = zext i8 %206 to i32
  %208 = add nuw nsw i32 %195, 1
  %209 = add nuw nsw i32 %208, %207
  %210 = lshr i32 %209, 1
  %211 = getelementptr inbounds i8, ptr %178, i64 2
  %212 = load i8, ptr %211, align 1, !tbaa !10
  %213 = zext i8 %212 to i32
  %214 = sub nsw i32 %210, %213
  %215 = tail call i32 @llvm.abs.i32(i32 %214, i1 true)
  %216 = add i32 %215, %204
  %217 = getelementptr inbounds i8, ptr %179, i64 4
  %218 = load i8, ptr %217, align 1, !tbaa !10
  %219 = zext i8 %218 to i32
  %220 = add nuw nsw i32 %207, 1
  %221 = add nuw nsw i32 %220, %219
  %222 = lshr i32 %221, 1
  %223 = getelementptr inbounds i8, ptr %178, i64 3
  %224 = load i8, ptr %223, align 1, !tbaa !10
  %225 = zext i8 %224 to i32
  %226 = sub nsw i32 %222, %225
  %227 = tail call i32 @llvm.abs.i32(i32 %226, i1 true)
  %228 = add i32 %227, %216
  %229 = getelementptr inbounds i8, ptr %179, i64 5
  %230 = load i8, ptr %229, align 1, !tbaa !10
  %231 = zext i8 %230 to i32
  %232 = add nuw nsw i32 %219, 1
  %233 = add nuw nsw i32 %232, %231
  %234 = lshr i32 %233, 1
  %235 = getelementptr inbounds i8, ptr %178, i64 4
  %236 = load i8, ptr %235, align 1, !tbaa !10
  %237 = zext i8 %236 to i32
  %238 = sub nsw i32 %234, %237
  %239 = tail call i32 @llvm.abs.i32(i32 %238, i1 true)
  %240 = add i32 %239, %228
  %241 = getelementptr inbounds i8, ptr %179, i64 6
  %242 = load i8, ptr %241, align 1, !tbaa !10
  %243 = zext i8 %242 to i32
  %244 = add nuw nsw i32 %231, 1
  %245 = add nuw nsw i32 %244, %243
  %246 = lshr i32 %245, 1
  %247 = getelementptr inbounds i8, ptr %178, i64 5
  %248 = load i8, ptr %247, align 1, !tbaa !10
  %249 = zext i8 %248 to i32
  %250 = sub nsw i32 %246, %249
  %251 = tail call i32 @llvm.abs.i32(i32 %250, i1 true)
  %252 = add i32 %251, %240
  %253 = getelementptr inbounds i8, ptr %179, i64 7
  %254 = load i8, ptr %253, align 1, !tbaa !10
  %255 = zext i8 %254 to i32
  %256 = add nuw nsw i32 %243, 1
  %257 = add nuw nsw i32 %256, %255
  %258 = lshr i32 %257, 1
  %259 = getelementptr inbounds i8, ptr %178, i64 6
  %260 = load i8, ptr %259, align 1, !tbaa !10
  %261 = zext i8 %260 to i32
  %262 = sub nsw i32 %258, %261
  %263 = tail call i32 @llvm.abs.i32(i32 %262, i1 true)
  %264 = add i32 %263, %252
  %265 = getelementptr inbounds i8, ptr %179, i64 8
  %266 = load i8, ptr %265, align 1, !tbaa !10
  %267 = zext i8 %266 to i32
  %268 = add nuw nsw i32 %255, 1
  %269 = add nuw nsw i32 %268, %267
  %270 = lshr i32 %269, 1
  %271 = getelementptr inbounds i8, ptr %178, i64 7
  %272 = load i8, ptr %271, align 1, !tbaa !10
  %273 = zext i8 %272 to i32
  %274 = sub nsw i32 %270, %273
  %275 = tail call i32 @llvm.abs.i32(i32 %274, i1 true)
  %276 = add i32 %275, %264
  %277 = getelementptr inbounds i8, ptr %179, i64 9
  %278 = load i8, ptr %277, align 1, !tbaa !10
  %279 = zext i8 %278 to i32
  %280 = add nuw nsw i32 %267, 1
  %281 = add nuw nsw i32 %280, %279
  %282 = lshr i32 %281, 1
  %283 = getelementptr inbounds i8, ptr %178, i64 8
  %284 = load i8, ptr %283, align 1, !tbaa !10
  %285 = zext i8 %284 to i32
  %286 = sub nsw i32 %282, %285
  %287 = tail call i32 @llvm.abs.i32(i32 %286, i1 true)
  %288 = add i32 %287, %276
  %289 = getelementptr inbounds i8, ptr %179, i64 10
  %290 = load i8, ptr %289, align 1, !tbaa !10
  %291 = zext i8 %290 to i32
  %292 = add nuw nsw i32 %279, 1
  %293 = add nuw nsw i32 %292, %291
  %294 = lshr i32 %293, 1
  %295 = getelementptr inbounds i8, ptr %178, i64 9
  %296 = load i8, ptr %295, align 1, !tbaa !10
  %297 = zext i8 %296 to i32
  %298 = sub nsw i32 %294, %297
  %299 = tail call i32 @llvm.abs.i32(i32 %298, i1 true)
  %300 = add i32 %299, %288
  %301 = getelementptr inbounds i8, ptr %179, i64 11
  %302 = load i8, ptr %301, align 1, !tbaa !10
  %303 = zext i8 %302 to i32
  %304 = add nuw nsw i32 %291, 1
  %305 = add nuw nsw i32 %304, %303
  %306 = lshr i32 %305, 1
  %307 = getelementptr inbounds i8, ptr %178, i64 10
  %308 = load i8, ptr %307, align 1, !tbaa !10
  %309 = zext i8 %308 to i32
  %310 = sub nsw i32 %306, %309
  %311 = tail call i32 @llvm.abs.i32(i32 %310, i1 true)
  %312 = add i32 %311, %300
  %313 = getelementptr inbounds i8, ptr %179, i64 12
  %314 = load i8, ptr %313, align 1, !tbaa !10
  %315 = zext i8 %314 to i32
  %316 = add nuw nsw i32 %303, 1
  %317 = add nuw nsw i32 %316, %315
  %318 = lshr i32 %317, 1
  %319 = getelementptr inbounds i8, ptr %178, i64 11
  %320 = load i8, ptr %319, align 1, !tbaa !10
  %321 = zext i8 %320 to i32
  %322 = sub nsw i32 %318, %321
  %323 = tail call i32 @llvm.abs.i32(i32 %322, i1 true)
  %324 = add i32 %323, %312
  %325 = getelementptr inbounds i8, ptr %179, i64 13
  %326 = load i8, ptr %325, align 1, !tbaa !10
  %327 = zext i8 %326 to i32
  %328 = add nuw nsw i32 %315, 1
  %329 = add nuw nsw i32 %328, %327
  %330 = lshr i32 %329, 1
  %331 = getelementptr inbounds i8, ptr %178, i64 12
  %332 = load i8, ptr %331, align 1, !tbaa !10
  %333 = zext i8 %332 to i32
  %334 = sub nsw i32 %330, %333
  %335 = tail call i32 @llvm.abs.i32(i32 %334, i1 true)
  %336 = add i32 %335, %324
  %337 = getelementptr inbounds i8, ptr %179, i64 14
  %338 = load i8, ptr %337, align 1, !tbaa !10
  %339 = zext i8 %338 to i32
  %340 = add nuw nsw i32 %327, 1
  %341 = add nuw nsw i32 %340, %339
  %342 = lshr i32 %341, 1
  %343 = getelementptr inbounds i8, ptr %178, i64 13
  %344 = load i8, ptr %343, align 1, !tbaa !10
  %345 = zext i8 %344 to i32
  %346 = sub nsw i32 %342, %345
  %347 = tail call i32 @llvm.abs.i32(i32 %346, i1 true)
  %348 = add i32 %347, %336
  %349 = getelementptr inbounds i8, ptr %179, i64 15
  %350 = load i8, ptr %349, align 1, !tbaa !10
  %351 = zext i8 %350 to i32
  %352 = add nuw nsw i32 %339, 1
  %353 = add nuw nsw i32 %352, %351
  %354 = lshr i32 %353, 1
  %355 = getelementptr inbounds i8, ptr %178, i64 14
  %356 = load i8, ptr %355, align 1, !tbaa !10
  %357 = zext i8 %356 to i32
  %358 = sub nsw i32 %354, %357
  %359 = tail call i32 @llvm.abs.i32(i32 %358, i1 true)
  %360 = add i32 %359, %348
  %361 = getelementptr inbounds i8, ptr %179, i64 16
  %362 = load i8, ptr %361, align 1, !tbaa !10
  %363 = zext i8 %362 to i32
  %364 = add nuw nsw i32 %351, 1
  %365 = add nuw nsw i32 %364, %363
  %366 = lshr i32 %365, 1
  %367 = getelementptr inbounds i8, ptr %178, i64 15
  %368 = load i8, ptr %367, align 1, !tbaa !10
  %369 = zext i8 %368 to i32
  %370 = sub nsw i32 %366, %369
  %371 = tail call i32 @llvm.abs.i32(i32 %370, i1 true)
  %372 = add i32 %371, %360
  %373 = getelementptr inbounds i8, ptr %179, i64 %174
  %374 = getelementptr inbounds i8, ptr %178, i64 %174
  %375 = add nuw nsw i32 %177, 1
  %376 = icmp eq i32 %375, %5
  br i1 %376, label %669, label %175

377:                                              ; preds = %168
  %378 = and i1 %169, %8
  %379 = sext i32 %2 to i64
  %380 = icmp sgt i32 %5, 0
  br i1 %378, label %381, label %628

381:                                              ; preds = %377
  br i1 %380, label %382, label %669

382:                                              ; preds = %381, %382
  %383 = phi i32 [ %624, %382 ], [ 0, %381 ]
  %384 = phi i32 [ %626, %382 ], [ 0, %381 ]
  %385 = phi ptr [ %625, %382 ], [ %1, %381 ]
  %386 = phi ptr [ %387, %382 ], [ %0, %381 ]
  %387 = getelementptr inbounds i8, ptr %386, i64 %379
  %388 = load i8, ptr %386, align 1, !tbaa !10
  %389 = zext i8 %388 to i32
  %390 = load i8, ptr %387, align 1, !tbaa !10
  %391 = zext i8 %390 to i32
  %392 = add nuw nsw i32 %389, 1
  %393 = add nuw nsw i32 %392, %391
  %394 = lshr i32 %393, 1
  %395 = load i8, ptr %385, align 1, !tbaa !10
  %396 = zext i8 %395 to i32
  %397 = sub nsw i32 %394, %396
  %398 = tail call i32 @llvm.abs.i32(i32 %397, i1 true)
  %399 = add i32 %398, %383
  %400 = getelementptr inbounds i8, ptr %386, i64 1
  %401 = load i8, ptr %400, align 1, !tbaa !10
  %402 = zext i8 %401 to i32
  %403 = getelementptr inbounds i8, ptr %387, i64 1
  %404 = load i8, ptr %403, align 1, !tbaa !10
  %405 = zext i8 %404 to i32
  %406 = add nuw nsw i32 %402, 1
  %407 = add nuw nsw i32 %406, %405
  %408 = lshr i32 %407, 1
  %409 = getelementptr inbounds i8, ptr %385, i64 1
  %410 = load i8, ptr %409, align 1, !tbaa !10
  %411 = zext i8 %410 to i32
  %412 = sub nsw i32 %408, %411
  %413 = tail call i32 @llvm.abs.i32(i32 %412, i1 true)
  %414 = add i32 %413, %399
  %415 = getelementptr inbounds i8, ptr %386, i64 2
  %416 = load i8, ptr %415, align 1, !tbaa !10
  %417 = zext i8 %416 to i32
  %418 = getelementptr inbounds i8, ptr %387, i64 2
  %419 = load i8, ptr %418, align 1, !tbaa !10
  %420 = zext i8 %419 to i32
  %421 = add nuw nsw i32 %417, 1
  %422 = add nuw nsw i32 %421, %420
  %423 = lshr i32 %422, 1
  %424 = getelementptr inbounds i8, ptr %385, i64 2
  %425 = load i8, ptr %424, align 1, !tbaa !10
  %426 = zext i8 %425 to i32
  %427 = sub nsw i32 %423, %426
  %428 = tail call i32 @llvm.abs.i32(i32 %427, i1 true)
  %429 = add i32 %428, %414
  %430 = getelementptr inbounds i8, ptr %386, i64 3
  %431 = load i8, ptr %430, align 1, !tbaa !10
  %432 = zext i8 %431 to i32
  %433 = getelementptr inbounds i8, ptr %387, i64 3
  %434 = load i8, ptr %433, align 1, !tbaa !10
  %435 = zext i8 %434 to i32
  %436 = add nuw nsw i32 %432, 1
  %437 = add nuw nsw i32 %436, %435
  %438 = lshr i32 %437, 1
  %439 = getelementptr inbounds i8, ptr %385, i64 3
  %440 = load i8, ptr %439, align 1, !tbaa !10
  %441 = zext i8 %440 to i32
  %442 = sub nsw i32 %438, %441
  %443 = tail call i32 @llvm.abs.i32(i32 %442, i1 true)
  %444 = add i32 %443, %429
  %445 = getelementptr inbounds i8, ptr %386, i64 4
  %446 = load i8, ptr %445, align 1, !tbaa !10
  %447 = zext i8 %446 to i32
  %448 = getelementptr inbounds i8, ptr %387, i64 4
  %449 = load i8, ptr %448, align 1, !tbaa !10
  %450 = zext i8 %449 to i32
  %451 = add nuw nsw i32 %447, 1
  %452 = add nuw nsw i32 %451, %450
  %453 = lshr i32 %452, 1
  %454 = getelementptr inbounds i8, ptr %385, i64 4
  %455 = load i8, ptr %454, align 1, !tbaa !10
  %456 = zext i8 %455 to i32
  %457 = sub nsw i32 %453, %456
  %458 = tail call i32 @llvm.abs.i32(i32 %457, i1 true)
  %459 = add i32 %458, %444
  %460 = getelementptr inbounds i8, ptr %386, i64 5
  %461 = load i8, ptr %460, align 1, !tbaa !10
  %462 = zext i8 %461 to i32
  %463 = getelementptr inbounds i8, ptr %387, i64 5
  %464 = load i8, ptr %463, align 1, !tbaa !10
  %465 = zext i8 %464 to i32
  %466 = add nuw nsw i32 %462, 1
  %467 = add nuw nsw i32 %466, %465
  %468 = lshr i32 %467, 1
  %469 = getelementptr inbounds i8, ptr %385, i64 5
  %470 = load i8, ptr %469, align 1, !tbaa !10
  %471 = zext i8 %470 to i32
  %472 = sub nsw i32 %468, %471
  %473 = tail call i32 @llvm.abs.i32(i32 %472, i1 true)
  %474 = add i32 %473, %459
  %475 = getelementptr inbounds i8, ptr %386, i64 6
  %476 = load i8, ptr %475, align 1, !tbaa !10
  %477 = zext i8 %476 to i32
  %478 = getelementptr inbounds i8, ptr %387, i64 6
  %479 = load i8, ptr %478, align 1, !tbaa !10
  %480 = zext i8 %479 to i32
  %481 = add nuw nsw i32 %477, 1
  %482 = add nuw nsw i32 %481, %480
  %483 = lshr i32 %482, 1
  %484 = getelementptr inbounds i8, ptr %385, i64 6
  %485 = load i8, ptr %484, align 1, !tbaa !10
  %486 = zext i8 %485 to i32
  %487 = sub nsw i32 %483, %486
  %488 = tail call i32 @llvm.abs.i32(i32 %487, i1 true)
  %489 = add i32 %488, %474
  %490 = getelementptr inbounds i8, ptr %386, i64 7
  %491 = load i8, ptr %490, align 1, !tbaa !10
  %492 = zext i8 %491 to i32
  %493 = getelementptr inbounds i8, ptr %387, i64 7
  %494 = load i8, ptr %493, align 1, !tbaa !10
  %495 = zext i8 %494 to i32
  %496 = add nuw nsw i32 %492, 1
  %497 = add nuw nsw i32 %496, %495
  %498 = lshr i32 %497, 1
  %499 = getelementptr inbounds i8, ptr %385, i64 7
  %500 = load i8, ptr %499, align 1, !tbaa !10
  %501 = zext i8 %500 to i32
  %502 = sub nsw i32 %498, %501
  %503 = tail call i32 @llvm.abs.i32(i32 %502, i1 true)
  %504 = add i32 %503, %489
  %505 = getelementptr inbounds i8, ptr %386, i64 8
  %506 = load i8, ptr %505, align 1, !tbaa !10
  %507 = zext i8 %506 to i32
  %508 = getelementptr inbounds i8, ptr %387, i64 8
  %509 = load i8, ptr %508, align 1, !tbaa !10
  %510 = zext i8 %509 to i32
  %511 = add nuw nsw i32 %507, 1
  %512 = add nuw nsw i32 %511, %510
  %513 = lshr i32 %512, 1
  %514 = getelementptr inbounds i8, ptr %385, i64 8
  %515 = load i8, ptr %514, align 1, !tbaa !10
  %516 = zext i8 %515 to i32
  %517 = sub nsw i32 %513, %516
  %518 = tail call i32 @llvm.abs.i32(i32 %517, i1 true)
  %519 = add i32 %518, %504
  %520 = getelementptr inbounds i8, ptr %386, i64 9
  %521 = load i8, ptr %520, align 1, !tbaa !10
  %522 = zext i8 %521 to i32
  %523 = getelementptr inbounds i8, ptr %387, i64 9
  %524 = load i8, ptr %523, align 1, !tbaa !10
  %525 = zext i8 %524 to i32
  %526 = add nuw nsw i32 %522, 1
  %527 = add nuw nsw i32 %526, %525
  %528 = lshr i32 %527, 1
  %529 = getelementptr inbounds i8, ptr %385, i64 9
  %530 = load i8, ptr %529, align 1, !tbaa !10
  %531 = zext i8 %530 to i32
  %532 = sub nsw i32 %528, %531
  %533 = tail call i32 @llvm.abs.i32(i32 %532, i1 true)
  %534 = add i32 %533, %519
  %535 = getelementptr inbounds i8, ptr %386, i64 10
  %536 = load i8, ptr %535, align 1, !tbaa !10
  %537 = zext i8 %536 to i32
  %538 = getelementptr inbounds i8, ptr %387, i64 10
  %539 = load i8, ptr %538, align 1, !tbaa !10
  %540 = zext i8 %539 to i32
  %541 = add nuw nsw i32 %537, 1
  %542 = add nuw nsw i32 %541, %540
  %543 = lshr i32 %542, 1
  %544 = getelementptr inbounds i8, ptr %385, i64 10
  %545 = load i8, ptr %544, align 1, !tbaa !10
  %546 = zext i8 %545 to i32
  %547 = sub nsw i32 %543, %546
  %548 = tail call i32 @llvm.abs.i32(i32 %547, i1 true)
  %549 = add i32 %548, %534
  %550 = getelementptr inbounds i8, ptr %386, i64 11
  %551 = load i8, ptr %550, align 1, !tbaa !10
  %552 = zext i8 %551 to i32
  %553 = getelementptr inbounds i8, ptr %387, i64 11
  %554 = load i8, ptr %553, align 1, !tbaa !10
  %555 = zext i8 %554 to i32
  %556 = add nuw nsw i32 %552, 1
  %557 = add nuw nsw i32 %556, %555
  %558 = lshr i32 %557, 1
  %559 = getelementptr inbounds i8, ptr %385, i64 11
  %560 = load i8, ptr %559, align 1, !tbaa !10
  %561 = zext i8 %560 to i32
  %562 = sub nsw i32 %558, %561
  %563 = tail call i32 @llvm.abs.i32(i32 %562, i1 true)
  %564 = add i32 %563, %549
  %565 = getelementptr inbounds i8, ptr %386, i64 12
  %566 = load i8, ptr %565, align 1, !tbaa !10
  %567 = zext i8 %566 to i32
  %568 = getelementptr inbounds i8, ptr %387, i64 12
  %569 = load i8, ptr %568, align 1, !tbaa !10
  %570 = zext i8 %569 to i32
  %571 = add nuw nsw i32 %567, 1
  %572 = add nuw nsw i32 %571, %570
  %573 = lshr i32 %572, 1
  %574 = getelementptr inbounds i8, ptr %385, i64 12
  %575 = load i8, ptr %574, align 1, !tbaa !10
  %576 = zext i8 %575 to i32
  %577 = sub nsw i32 %573, %576
  %578 = tail call i32 @llvm.abs.i32(i32 %577, i1 true)
  %579 = add i32 %578, %564
  %580 = getelementptr inbounds i8, ptr %386, i64 13
  %581 = load i8, ptr %580, align 1, !tbaa !10
  %582 = zext i8 %581 to i32
  %583 = getelementptr inbounds i8, ptr %387, i64 13
  %584 = load i8, ptr %583, align 1, !tbaa !10
  %585 = zext i8 %584 to i32
  %586 = add nuw nsw i32 %582, 1
  %587 = add nuw nsw i32 %586, %585
  %588 = lshr i32 %587, 1
  %589 = getelementptr inbounds i8, ptr %385, i64 13
  %590 = load i8, ptr %589, align 1, !tbaa !10
  %591 = zext i8 %590 to i32
  %592 = sub nsw i32 %588, %591
  %593 = tail call i32 @llvm.abs.i32(i32 %592, i1 true)
  %594 = add i32 %593, %579
  %595 = getelementptr inbounds i8, ptr %386, i64 14
  %596 = load i8, ptr %595, align 1, !tbaa !10
  %597 = zext i8 %596 to i32
  %598 = getelementptr inbounds i8, ptr %387, i64 14
  %599 = load i8, ptr %598, align 1, !tbaa !10
  %600 = zext i8 %599 to i32
  %601 = add nuw nsw i32 %597, 1
  %602 = add nuw nsw i32 %601, %600
  %603 = lshr i32 %602, 1
  %604 = getelementptr inbounds i8, ptr %385, i64 14
  %605 = load i8, ptr %604, align 1, !tbaa !10
  %606 = zext i8 %605 to i32
  %607 = sub nsw i32 %603, %606
  %608 = tail call i32 @llvm.abs.i32(i32 %607, i1 true)
  %609 = add i32 %608, %594
  %610 = getelementptr inbounds i8, ptr %386, i64 15
  %611 = load i8, ptr %610, align 1, !tbaa !10
  %612 = zext i8 %611 to i32
  %613 = getelementptr inbounds i8, ptr %387, i64 15
  %614 = load i8, ptr %613, align 1, !tbaa !10
  %615 = zext i8 %614 to i32
  %616 = add nuw nsw i32 %612, 1
  %617 = add nuw nsw i32 %616, %615
  %618 = lshr i32 %617, 1
  %619 = getelementptr inbounds i8, ptr %385, i64 15
  %620 = load i8, ptr %619, align 1, !tbaa !10
  %621 = zext i8 %620 to i32
  %622 = sub nsw i32 %618, %621
  %623 = tail call i32 @llvm.abs.i32(i32 %622, i1 true)
  %624 = add i32 %623, %609
  %625 = getelementptr inbounds i8, ptr %385, i64 %379
  %626 = add nuw nsw i32 %384, 1
  %627 = icmp eq i32 %626, %5
  br i1 %627, label %669, label %382

628:                                              ; preds = %377
  br i1 %380, label %629, label %669

629:                                              ; preds = %628
  %630 = load i8, ptr %0, align 1, !tbaa !10
  br label %631

631:                                              ; preds = %629, %665
  %632 = phi i8 [ %638, %665 ], [ %630, %629 ]
  %633 = phi i32 [ %663, %665 ], [ 0, %629 ]
  %634 = phi i32 [ %667, %665 ], [ 0, %629 ]
  %635 = phi ptr [ %666, %665 ], [ %1, %629 ]
  %636 = phi ptr [ %637, %665 ], [ %0, %629 ]
  %637 = getelementptr inbounds i8, ptr %636, i64 %379
  %638 = load i8, ptr %637, align 1, !tbaa !10
  br label %639

639:                                              ; preds = %631, %639
  %640 = phi i8 [ %638, %631 ], [ %651, %639 ]
  %641 = phi i8 [ %632, %631 ], [ %647, %639 ]
  %642 = phi i64 [ 0, %631 ], [ %645, %639 ]
  %643 = phi i32 [ %633, %631 ], [ %663, %639 ]
  %644 = zext i8 %641 to i32
  %645 = add nuw nsw i64 %642, 1
  %646 = getelementptr inbounds i8, ptr %636, i64 %645
  %647 = load i8, ptr %646, align 1, !tbaa !10
  %648 = zext i8 %647 to i32
  %649 = zext i8 %640 to i32
  %650 = getelementptr inbounds i8, ptr %637, i64 %645
  %651 = load i8, ptr %650, align 1, !tbaa !10
  %652 = zext i8 %651 to i32
  %653 = add nuw nsw i32 %644, 2
  %654 = add nuw nsw i32 %653, %648
  %655 = add nuw nsw i32 %654, %649
  %656 = add nuw nsw i32 %655, %652
  %657 = lshr i32 %656, 2
  %658 = getelementptr inbounds i8, ptr %635, i64 %642
  %659 = load i8, ptr %658, align 1, !tbaa !10
  %660 = zext i8 %659 to i32
  %661 = sub nsw i32 %657, %660
  %662 = tail call i32 @llvm.abs.i32(i32 %661, i1 true)
  %663 = add i32 %662, %643
  %664 = icmp eq i64 %645, 16
  br i1 %664, label %665, label %639

665:                                              ; preds = %639
  %666 = getelementptr inbounds i8, ptr %635, i64 %379
  %667 = add nuw nsw i32 %634, 1
  %668 = icmp eq i32 %667, %5
  br i1 %668, label %669, label %631

669:                                              ; preds = %175, %665, %382, %15, %163, %171, %628, %381, %11
  %670 = phi i32 [ 0, %11 ], [ 0, %381 ], [ 0, %628 ], [ 0, %171 ], [ %161, %163 ], [ %161, %15 ], [ %624, %382 ], [ %663, %665 ], [ %372, %175 ]
  ret i32 %670
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define internal fastcc void @field_estimate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, ptr nocapture noundef writeonly %13, ptr nocapture noundef writeonly %14, ptr nocapture noundef writeonly %15, ptr nocapture noundef writeonly %16, ptr nocapture noundef %17, ptr nocapture noundef writeonly %18, ptr nocapture noundef writeonly %19, ptr nocapture noundef writeonly %20, ptr nocapture noundef writeonly %21, ptr nocapture noundef writeonly %22, ptr nocapture noundef writeonly %23) unnamed_addr #2 {
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #5
  %29 = icmp ne i32 %9, 0
  %30 = load i32, ptr @pict_struct, align 4
  %31 = icmp eq i32 %30, 1
  %32 = select i1 %29, i1 %31, i1 false
  %33 = icmp eq i32 %30, 2
  %34 = select i1 %29, i1 %33, i1 false
  br i1 %32, label %42, label %35

35:                                               ; preds = %24
  %36 = load i32, ptr @width, align 4, !tbaa !6
  %37 = shl i32 %36, 1
  %38 = ashr i32 %8, 1
  %39 = load i32, ptr @height, align 4, !tbaa !6
  %40 = ashr i32 %39, 1
  %41 = call fastcc signext i32 @fullsearch(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef signext %37, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %38, i32 noundef signext 16, i32 noundef signext %36, i32 noundef signext %40, ptr noundef nonnull %25, ptr noundef nonnull %26)
  br label %42

42:                                               ; preds = %24, %35
  %43 = phi i32 [ %41, %35 ], [ 65536, %24 ]
  br i1 %34, label %53, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr @width, align 4, !tbaa !6
  %46 = shl i32 %45, 1
  %47 = ashr i32 %8, 1
  %48 = load i32, ptr @height, align 4, !tbaa !6
  %49 = ashr i32 %48, 1
  %50 = call fastcc signext i32 @fullsearch(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef signext %46, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %47, i32 noundef signext 16, i32 noundef signext %45, i32 noundef signext %49, ptr noundef nonnull %27, ptr noundef nonnull %28)
  %51 = load i32, ptr %27, align 4
  %52 = load i32, ptr %28, align 4
  br label %53

53:                                               ; preds = %42, %44
  %54 = phi i32 [ %52, %44 ], [ undef, %42 ]
  %55 = phi i32 [ %51, %44 ], [ undef, %42 ]
  %56 = phi i32 [ %50, %44 ], [ 65536, %42 ]
  %57 = select i1 %31, i32 %43, i32 %56
  %58 = load i32, ptr %25, align 4
  %59 = select i1 %31, i32 %58, i32 %55
  store i32 %59, ptr %21, align 4, !tbaa !6
  %60 = load i32, ptr %26, align 4
  %61 = select i1 %31, i32 %60, i32 %54
  store i32 %61, ptr %22, align 4, !tbaa !6
  store i32 %57, ptr %23, align 4, !tbaa !6
  %62 = icmp sgt i32 %43, %56
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %53, %63
  %65 = phi i32 [ %54, %63 ], [ %60, %53 ]
  %66 = phi i32 [ %55, %63 ], [ %58, %53 ]
  %67 = phi i32 [ %56, %63 ], [ %43, %53 ]
  %68 = phi i32 [ 1, %63 ], [ 0, %53 ]
  store i32 %67, ptr %16, align 4, !tbaa !6
  store i32 %66, ptr %10, align 4, !tbaa !6
  store i32 %65, ptr %11, align 4, !tbaa !6
  store i32 %68, ptr %18, align 4, !tbaa !6
  br i1 %32, label %76, label %69

69:                                               ; preds = %64
  %70 = load i32, ptr @width, align 4, !tbaa !6
  %71 = shl i32 %70, 1
  %72 = ashr i32 %8, 1
  %73 = load i32, ptr @height, align 4, !tbaa !6
  %74 = ashr i32 %73, 1
  %75 = call fastcc signext i32 @fullsearch(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef signext %71, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %72, i32 noundef signext 8, i32 noundef signext %70, i32 noundef signext %74, ptr noundef nonnull %25, ptr noundef nonnull %26)
  br label %76

76:                                               ; preds = %64, %69
  %77 = phi i32 [ %75, %69 ], [ 65536, %64 ]
  br i1 %34, label %87, label %78

78:                                               ; preds = %76
  %79 = load i32, ptr @width, align 4, !tbaa !6
  %80 = shl i32 %79, 1
  %81 = ashr i32 %8, 1
  %82 = load i32, ptr @height, align 4, !tbaa !6
  %83 = ashr i32 %82, 1
  %84 = call fastcc signext i32 @fullsearch(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef signext %80, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %81, i32 noundef signext 8, i32 noundef signext %79, i32 noundef signext %83, ptr noundef nonnull %27, ptr noundef nonnull %28)
  %85 = load i32, ptr %27, align 4
  %86 = load i32, ptr %28, align 4
  br label %87

87:                                               ; preds = %76, %78
  %88 = phi i32 [ %86, %78 ], [ %54, %76 ]
  %89 = phi i32 [ %85, %78 ], [ %55, %76 ]
  %90 = phi i32 [ %84, %78 ], [ 65536, %76 ]
  %91 = icmp sgt i32 %77, %90
  %92 = tail call i32 @llvm.smin.i32(i32 %77, i32 %90)
  %93 = zext i1 %91 to i32
  store i32 %92, ptr %17, align 4, !tbaa !6
  %94 = load i32, ptr %25, align 4
  %95 = select i1 %91, i32 %89, i32 %94
  store i32 %95, ptr %12, align 4, !tbaa !6
  %96 = load i32, ptr %26, align 4
  %97 = select i1 %91, i32 %88, i32 %96
  store i32 %97, ptr %13, align 4, !tbaa !6
  store i32 %93, ptr %19, align 4, !tbaa !6
  br i1 %32, label %109, label %98

98:                                               ; preds = %87
  %99 = load i32, ptr @width, align 4, !tbaa !6
  %100 = shl i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %4, i64 %101
  %103 = shl i32 %99, 1
  %104 = add nsw i32 %6, 8
  %105 = ashr i32 %8, 1
  %106 = load i32, ptr @height, align 4, !tbaa !6
  %107 = ashr i32 %106, 1
  %108 = call fastcc signext i32 @fullsearch(ptr noundef %0, ptr noundef %1, ptr noundef %102, i32 noundef signext %103, i32 noundef signext %5, i32 noundef signext %104, i32 noundef signext %7, i32 noundef signext %105, i32 noundef signext 8, i32 noundef signext %99, i32 noundef signext %107, ptr noundef nonnull %25, ptr noundef nonnull %26)
  br label %109

109:                                              ; preds = %87, %98
  %110 = phi i32 [ %108, %98 ], [ 65536, %87 ]
  br i1 %34, label %122, label %111

111:                                              ; preds = %109
  %112 = load i32, ptr @width, align 4, !tbaa !6
  %113 = shl i32 %112, 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %4, i64 %114
  %116 = shl i32 %112, 1
  %117 = add nsw i32 %6, 8
  %118 = ashr i32 %8, 1
  %119 = load i32, ptr @height, align 4, !tbaa !6
  %120 = ashr i32 %119, 1
  %121 = call fastcc signext i32 @fullsearch(ptr noundef %2, ptr noundef %3, ptr noundef %115, i32 noundef signext %116, i32 noundef signext %5, i32 noundef signext %117, i32 noundef signext %7, i32 noundef signext %118, i32 noundef signext 8, i32 noundef signext %112, i32 noundef signext %120, ptr noundef nonnull %27, ptr noundef nonnull %28)
  br label %122

122:                                              ; preds = %109, %111
  %123 = phi i32 [ %121, %111 ], [ 65536, %109 ]
  %124 = icmp sgt i32 %110, %123
  %125 = load i32, ptr %17, align 4, !tbaa !6
  %126 = tail call i32 @llvm.smin.i32(i32 %110, i32 %123)
  %127 = zext i1 %124 to i32
  %128 = add nsw i32 %125, %126
  store i32 %128, ptr %17, align 4, !tbaa !6
  %129 = load i32, ptr %27, align 4
  %130 = load i32, ptr %25, align 4
  %131 = select i1 %124, i32 %129, i32 %130
  store i32 %131, ptr %14, align 4, !tbaa !6
  %132 = load i32, ptr %28, align 4
  %133 = load i32, ptr %26, align 4
  %134 = select i1 %124, i32 %132, i32 %133
  store i32 %134, ptr %15, align 4, !tbaa !6
  store i32 %127, ptr %20, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"mbinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 56, !8, i64 72, !13, i64 80, !7, i64 88}
!13 = !{!"double", !8, i64 0}
!14 = !{!12, !7, i64 4}
!15 = !{!12, !7, i64 88}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !8, i64 0}
