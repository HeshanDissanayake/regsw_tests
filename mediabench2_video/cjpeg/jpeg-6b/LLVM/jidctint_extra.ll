; ModuleID = 'jidctint.c'
source_filename = "jidctint.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @jpeg_idct_islow(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i32], align 4
  %7 = getelementptr inbounds i8, ptr %0, i64 424
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #2
  %9 = getelementptr inbounds i8, ptr %1, i64 88
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  br label %14

11:                                               ; preds = %182
  %12 = getelementptr inbounds i8, ptr %8, i64 128
  %13 = zext i32 %4 to i64
  br label %191

14:                                               ; preds = %5, %182
  %15 = phi i32 [ 8, %5 ], [ %189, %182 ]
  %16 = phi ptr [ %6, %5 ], [ %186, %182 ]
  %17 = phi ptr [ %10, %5 ], [ %187, %182 ]
  %18 = phi ptr [ %2, %5 ], [ %188, %182 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 16
  %20 = load i16, ptr %19, align 2, !tbaa !16
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds i8, ptr %18, i64 32
  %23 = load i16, ptr %22, align 2, !tbaa !16
  %24 = icmp eq i16 %23, 0
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %26, label %58

26:                                               ; preds = %14
  %27 = getelementptr inbounds i8, ptr %18, i64 48
  %28 = load i16, ptr %27, align 2, !tbaa !16
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %18, i64 64
  %32 = load i16, ptr %31, align 2, !tbaa !16
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %18, i64 80
  %36 = load i16, ptr %35, align 2, !tbaa !16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %18, i64 96
  %40 = load i16, ptr %39, align 2, !tbaa !16
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %18, i64 112
  %44 = load i16, ptr %43, align 2, !tbaa !16
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i16, ptr %18, align 2, !tbaa !16
  %48 = sext i16 %47 to i32
  %49 = load i32, ptr %17, align 4, !tbaa !17
  %50 = shl nsw i32 %48, 2
  %51 = mul i32 %50, %49
  store i32 %51, ptr %16, align 4, !tbaa !17
  %52 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 %51, ptr %52, align 4, !tbaa !17
  %53 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 %51, ptr %53, align 4, !tbaa !17
  %54 = getelementptr inbounds i8, ptr %16, i64 96
  store i32 %51, ptr %54, align 4, !tbaa !17
  %55 = getelementptr inbounds i8, ptr %16, i64 128
  store i32 %51, ptr %55, align 4, !tbaa !17
  %56 = getelementptr inbounds i8, ptr %16, i64 160
  store i32 %51, ptr %56, align 4, !tbaa !17
  %57 = getelementptr inbounds i8, ptr %16, i64 192
  store i32 %51, ptr %57, align 4, !tbaa !17
  br label %182

58:                                               ; preds = %14, %42, %38, %34, %30, %26
  %59 = phi i16 [ 0, %42 ], [ 0, %38 ], [ 0, %34 ], [ 0, %30 ], [ 0, %26 ], [ %23, %14 ]
  %60 = sext i16 %59 to i32
  %61 = getelementptr inbounds i8, ptr %17, i64 64
  %62 = load i32, ptr %61, align 4, !tbaa !17
  %63 = mul nsw i32 %62, %60
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %18, i64 96
  %66 = load i16, ptr %65, align 2, !tbaa !16
  %67 = sext i16 %66 to i32
  %68 = getelementptr inbounds i8, ptr %17, i64 192
  %69 = load i32, ptr %68, align 4, !tbaa !17
  %70 = mul nsw i32 %69, %67
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %64
  %73 = mul nsw i64 %72, 4433
  %74 = mul nsw i64 %71, -15137
  %75 = add nsw i64 %73, %74
  %76 = mul nsw i64 %64, 6270
  %77 = add nsw i64 %73, %76
  %78 = load i16, ptr %18, align 2, !tbaa !16
  %79 = sext i16 %78 to i32
  %80 = load i32, ptr %17, align 4, !tbaa !17
  %81 = mul nsw i32 %80, %79
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %18, i64 64
  %84 = load i16, ptr %83, align 2, !tbaa !16
  %85 = sext i16 %84 to i32
  %86 = getelementptr inbounds i8, ptr %17, i64 128
  %87 = load i32, ptr %86, align 4, !tbaa !17
  %88 = mul nsw i32 %87, %85
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %82
  %91 = shl nsw i64 %90, 13
  %92 = sub nsw i64 %82, %89
  %93 = shl nsw i64 %92, 13
  %94 = add nsw i64 %91, %77
  %95 = sub nsw i64 %91, %77
  %96 = add nsw i64 %93, %75
  %97 = sub nsw i64 %93, %75
  %98 = getelementptr inbounds i8, ptr %18, i64 112
  %99 = load i16, ptr %98, align 2, !tbaa !16
  %100 = sext i16 %99 to i32
  %101 = getelementptr inbounds i8, ptr %17, i64 224
  %102 = load i32, ptr %101, align 4, !tbaa !17
  %103 = mul nsw i32 %102, %100
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %18, i64 80
  %106 = load i16, ptr %105, align 2, !tbaa !16
  %107 = sext i16 %106 to i32
  %108 = getelementptr inbounds i8, ptr %17, i64 160
  %109 = load i32, ptr %108, align 4, !tbaa !17
  %110 = mul nsw i32 %109, %107
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %18, i64 48
  %113 = load i16, ptr %112, align 2, !tbaa !16
  %114 = sext i16 %113 to i32
  %115 = getelementptr inbounds i8, ptr %17, i64 96
  %116 = load i32, ptr %115, align 4, !tbaa !17
  %117 = mul nsw i32 %116, %114
  %118 = sext i32 %117 to i64
  %119 = sext i16 %20 to i32
  %120 = getelementptr inbounds i8, ptr %17, i64 32
  %121 = load i32, ptr %120, align 4, !tbaa !17
  %122 = mul nsw i32 %121, %119
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %104
  %125 = add nsw i64 %118, %111
  %126 = add nsw i64 %118, %104
  %127 = add nsw i64 %123, %111
  %128 = add nsw i64 %127, %126
  %129 = mul nsw i64 %128, 9633
  %130 = mul nsw i64 %104, 2446
  %131 = mul nsw i64 %111, 16819
  %132 = mul nsw i64 %118, 25172
  %133 = mul nsw i64 %123, 12299
  %134 = mul nsw i64 %124, -7373
  %135 = mul nsw i64 %125, -20995
  %136 = mul nsw i64 %126, -16069
  %137 = mul nsw i64 %127, -3196
  %138 = add nsw i64 %129, %136
  %139 = add nsw i64 %129, %137
  %140 = add nsw i64 %134, %130
  %141 = add nsw i64 %140, %138
  %142 = add nsw i64 %135, %131
  %143 = add nsw i64 %142, %139
  %144 = add nsw i64 %135, %132
  %145 = add nsw i64 %144, %138
  %146 = add nsw i64 %134, %133
  %147 = add nsw i64 %146, %139
  %148 = add nsw i64 %94, 1024
  %149 = add nsw i64 %148, %147
  %150 = lshr i64 %149, 11
  %151 = trunc i64 %150 to i32
  store i32 %151, ptr %16, align 4, !tbaa !17
  %152 = sub nsw i64 %148, %147
  %153 = lshr i64 %152, 11
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds i8, ptr %16, i64 224
  store i32 %154, ptr %155, align 4, !tbaa !17
  %156 = add nsw i64 %96, 1024
  %157 = add nsw i64 %156, %145
  %158 = lshr i64 %157, 11
  %159 = trunc i64 %158 to i32
  %160 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 %159, ptr %160, align 4, !tbaa !17
  %161 = sub nsw i64 %156, %145
  %162 = lshr i64 %161, 11
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds i8, ptr %16, i64 192
  store i32 %163, ptr %164, align 4, !tbaa !17
  %165 = add nsw i64 %97, 1024
  %166 = add nsw i64 %165, %143
  %167 = lshr i64 %166, 11
  %168 = trunc i64 %167 to i32
  %169 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 %168, ptr %169, align 4, !tbaa !17
  %170 = sub nsw i64 %165, %143
  %171 = lshr i64 %170, 11
  %172 = trunc i64 %171 to i32
  %173 = getelementptr inbounds i8, ptr %16, i64 160
  store i32 %172, ptr %173, align 4, !tbaa !17
  %174 = add nsw i64 %95, 1024
  %175 = add nsw i64 %174, %141
  %176 = lshr i64 %175, 11
  %177 = trunc i64 %176 to i32
  %178 = getelementptr inbounds i8, ptr %16, i64 96
  store i32 %177, ptr %178, align 4, !tbaa !17
  %179 = sub nsw i64 %174, %141
  %180 = lshr i64 %179, 11
  %181 = trunc i64 %180 to i32
  br label %182

182:                                              ; preds = %58, %46
  %183 = phi i64 [ 128, %58 ], [ 224, %46 ]
  %184 = phi i32 [ %181, %58 ], [ %51, %46 ]
  %185 = getelementptr inbounds i8, ptr %16, i64 %183
  store i32 %184, ptr %185, align 4, !tbaa !17
  %186 = getelementptr inbounds i8, ptr %16, i64 4
  %187 = getelementptr inbounds i8, ptr %17, i64 4
  %188 = getelementptr inbounds i8, ptr %18, i64 2
  %189 = add nsw i32 %15, -1
  %190 = icmp ugt i32 %15, 1
  br i1 %190, label %14, label %11, !llvm.loop !18

191:                                              ; preds = %11, %347
  %192 = phi i64 [ 0, %11 ], [ %352, %347 ]
  %193 = phi ptr [ %6, %11 ], [ %351, %347 ]
  %194 = getelementptr inbounds ptr, ptr %3, i64 %192
  %195 = load ptr, ptr %194, align 8, !tbaa !20
  %196 = getelementptr inbounds i8, ptr %195, i64 %13
  %197 = getelementptr inbounds i8, ptr %193, i64 4
  %198 = load i32, ptr %197, align 4, !tbaa !17
  %199 = icmp eq i32 %198, 0
  %200 = getelementptr inbounds i8, ptr %193, i64 8
  %201 = load i32, ptr %200, align 4, !tbaa !17
  %202 = icmp eq i32 %201, 0
  %203 = select i1 %199, i1 %202, i1 false
  br i1 %203, label %204, label %238

204:                                              ; preds = %191
  %205 = getelementptr inbounds i8, ptr %193, i64 12
  %206 = load i32, ptr %205, align 4, !tbaa !17
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %238

208:                                              ; preds = %204
  %209 = getelementptr inbounds i8, ptr %193, i64 16
  %210 = load i32, ptr %209, align 4, !tbaa !17
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %238

212:                                              ; preds = %208
  %213 = getelementptr inbounds i8, ptr %193, i64 20
  %214 = load i32, ptr %213, align 4, !tbaa !17
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %238

216:                                              ; preds = %212
  %217 = getelementptr inbounds i8, ptr %193, i64 24
  %218 = load i32, ptr %217, align 4, !tbaa !17
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %238

220:                                              ; preds = %216
  %221 = getelementptr inbounds i8, ptr %193, i64 28
  %222 = load i32, ptr %221, align 4, !tbaa !17
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = load i32, ptr %193, align 4, !tbaa !17
  %226 = add i32 %225, 16
  %227 = lshr i32 %226, 5
  %228 = and i32 %227, 1023
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds i8, ptr %12, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !21
  store i8 %231, ptr %196, align 1, !tbaa !21
  %232 = getelementptr inbounds i8, ptr %196, i64 1
  store i8 %231, ptr %232, align 1, !tbaa !21
  %233 = getelementptr inbounds i8, ptr %196, i64 2
  store i8 %231, ptr %233, align 1, !tbaa !21
  %234 = getelementptr inbounds i8, ptr %196, i64 3
  store i8 %231, ptr %234, align 1, !tbaa !21
  %235 = getelementptr inbounds i8, ptr %196, i64 4
  store i8 %231, ptr %235, align 1, !tbaa !21
  %236 = getelementptr inbounds i8, ptr %196, i64 5
  store i8 %231, ptr %236, align 1, !tbaa !21
  %237 = getelementptr inbounds i8, ptr %196, i64 6
  store i8 %231, ptr %237, align 1, !tbaa !21
  br label %347

238:                                              ; preds = %191, %220, %216, %212, %208, %204
  %239 = phi i32 [ 0, %220 ], [ 0, %216 ], [ 0, %212 ], [ 0, %208 ], [ 0, %204 ], [ %201, %191 ]
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i8, ptr %193, i64 24
  %242 = load i32, ptr %241, align 4, !tbaa !17
  %243 = zext i32 %242 to i64
  %244 = add nuw nsw i64 %243, %240
  %245 = mul nuw nsw i64 %244, 4433
  %246 = mul nsw i64 %243, -15137
  %247 = add nsw i64 %245, %246
  %248 = mul nuw nsw i64 %240, 6270
  %249 = add nuw nsw i64 %245, %248
  %250 = load i32, ptr %193, align 4, !tbaa !17
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %193, i64 16
  %253 = load i32, ptr %252, align 4, !tbaa !17
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %251
  %256 = shl nsw i64 %255, 13
  %257 = sub nsw i64 %251, %254
  %258 = shl nsw i64 %257, 13
  %259 = add nsw i64 %256, %249
  %260 = sub nsw i64 %256, %249
  %261 = add nsw i64 %258, %247
  %262 = sub nsw i64 %258, %247
  %263 = getelementptr inbounds i8, ptr %193, i64 28
  %264 = load i32, ptr %263, align 4, !tbaa !17
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i8, ptr %193, i64 20
  %267 = load i32, ptr %266, align 4, !tbaa !17
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %193, i64 12
  %270 = load i32, ptr %269, align 4, !tbaa !17
  %271 = zext i32 %270 to i64
  %272 = zext i32 %198 to i64
  %273 = add nuw nsw i64 %265, %272
  %274 = add nuw nsw i64 %271, %268
  %275 = add nuw nsw i64 %271, %265
  %276 = add nuw nsw i64 %268, %272
  %277 = add nuw nsw i64 %275, %276
  %278 = mul nuw nsw i64 %277, 9633
  %279 = mul nuw nsw i64 %265, 2446
  %280 = mul nuw nsw i64 %268, 16819
  %281 = mul nuw nsw i64 %271, 25172
  %282 = mul nuw nsw i64 %272, 12299
  %283 = mul nsw i64 %273, -7373
  %284 = mul nsw i64 %274, -20995
  %285 = mul nsw i64 %275, -16069
  %286 = mul nsw i64 %276, -3196
  %287 = add nsw i64 %278, %285
  %288 = add nsw i64 %278, %286
  %289 = add nsw i64 %283, %279
  %290 = add nsw i64 %289, %287
  %291 = add nsw i64 %284, %280
  %292 = add nsw i64 %291, %288
  %293 = add nsw i64 %284, %281
  %294 = add nsw i64 %293, %287
  %295 = add nsw i64 %283, %282
  %296 = add nsw i64 %295, %288
  %297 = add nsw i64 %259, 131072
  %298 = add nsw i64 %297, %296
  %299 = lshr i64 %298, 18
  %300 = and i64 %299, 1023
  %301 = getelementptr inbounds i8, ptr %12, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !21
  store i8 %302, ptr %196, align 1, !tbaa !21
  %303 = sub nsw i64 %297, %296
  %304 = lshr i64 %303, 18
  %305 = and i64 %304, 1023
  %306 = getelementptr inbounds i8, ptr %12, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !21
  %308 = getelementptr inbounds i8, ptr %196, i64 7
  store i8 %307, ptr %308, align 1, !tbaa !21
  %309 = add nsw i64 %261, 131072
  %310 = add nsw i64 %309, %294
  %311 = lshr i64 %310, 18
  %312 = and i64 %311, 1023
  %313 = getelementptr inbounds i8, ptr %12, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !21
  %315 = getelementptr inbounds i8, ptr %196, i64 1
  store i8 %314, ptr %315, align 1, !tbaa !21
  %316 = sub nsw i64 %309, %294
  %317 = lshr i64 %316, 18
  %318 = and i64 %317, 1023
  %319 = getelementptr inbounds i8, ptr %12, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !21
  %321 = getelementptr inbounds i8, ptr %196, i64 6
  store i8 %320, ptr %321, align 1, !tbaa !21
  %322 = add nsw i64 %262, 131072
  %323 = add nsw i64 %322, %292
  %324 = lshr i64 %323, 18
  %325 = and i64 %324, 1023
  %326 = getelementptr inbounds i8, ptr %12, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !21
  %328 = getelementptr inbounds i8, ptr %196, i64 2
  store i8 %327, ptr %328, align 1, !tbaa !21
  %329 = sub nsw i64 %322, %292
  %330 = lshr i64 %329, 18
  %331 = and i64 %330, 1023
  %332 = getelementptr inbounds i8, ptr %12, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !21
  %334 = getelementptr inbounds i8, ptr %196, i64 5
  store i8 %333, ptr %334, align 1, !tbaa !21
  %335 = add nsw i64 %260, 131072
  %336 = add nsw i64 %335, %290
  %337 = lshr i64 %336, 18
  %338 = and i64 %337, 1023
  %339 = getelementptr inbounds i8, ptr %12, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !21
  %341 = getelementptr inbounds i8, ptr %196, i64 3
  store i8 %340, ptr %341, align 1, !tbaa !21
  %342 = sub nsw i64 %335, %290
  %343 = lshr i64 %342, 18
  %344 = and i64 %343, 1023
  %345 = getelementptr inbounds i8, ptr %12, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !21
  br label %347

347:                                              ; preds = %238, %224
  %348 = phi i64 [ 4, %238 ], [ 7, %224 ]
  %349 = phi i8 [ %346, %238 ], [ %231, %224 ]
  %350 = getelementptr inbounds i8, ptr %196, i64 %348
  store i8 %349, ptr %350, align 1, !tbaa !21
  %351 = getelementptr inbounds i8, ptr %193, i64 32
  %352 = add nuw nsw i64 %192, 1
  %353 = icmp eq i64 %352, 8
  br i1 %353, label %354, label %191, !llvm.loop !22

354:                                              ; preds = %347
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 424}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 88}
!15 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!16 = !{!13, !13, i64 0}
!17 = !{!11, !11, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!8, !8, i64 0}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !19}
