; ModuleID = 'snr.c'
source_filename = "snr.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@.str = private unnamed_addr constant [11 x i8] c"./diff.raw\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@pels = external dso_local local_unnamed_addr global i32, align 4
@lines = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @ComputeSNR(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load i32, ptr @lines, align 4, !tbaa !6
  %8 = load i32, ptr @pels, align 4, !tbaa !6
  br label %23

9:                                                ; preds = %4
  %10 = tail call ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
  %11 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #6
  %12 = load i32, ptr @pels, align 4, !tbaa !6
  %13 = sext i32 %12 to i64
  %14 = load i32, ptr @lines, align 4, !tbaa !6
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, %13
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #6
  store ptr %17, ptr %11, align 8, !tbaa !10
  %18 = lshr i64 %16, 2
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #6
  %20 = getelementptr inbounds i8, ptr %11, i64 8
  store ptr %19, ptr %20, align 8, !tbaa !13
  %21 = tail call noalias ptr @malloc(i64 noundef %18) #6
  %22 = getelementptr inbounds i8, ptr %11, i64 16
  store ptr %21, ptr %22, align 8, !tbaa !14
  br label %23

23:                                               ; preds = %6, %9
  %24 = phi i32 [ %12, %9 ], [ %8, %6 ]
  %25 = phi i32 [ %14, %9 ], [ %7, %6 ]
  %26 = phi ptr [ %11, %9 ], [ null, %6 ]
  %27 = phi ptr [ %10, %9 ], [ null, %6 ]
  %28 = icmp sgt i32 %25, 0
  %29 = icmp sgt i32 %24, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %116

31:                                               ; preds = %23, %107
  %32 = phi i32 [ %108, %107 ], [ %25, %23 ]
  %33 = phi i32 [ %109, %107 ], [ %24, %23 ]
  %34 = phi i32 [ %110, %107 ], [ %24, %23 ]
  %35 = phi i32 [ %112, %107 ], [ 0, %23 ]
  %36 = phi i32 [ %111, %107 ], [ 0, %23 ]
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %38, label %107

38:                                               ; preds = %31
  br i1 %5, label %39, label %75

39:                                               ; preds = %38
  %40 = load ptr, ptr %0, align 8, !tbaa !10
  %41 = load ptr, ptr %1, align 8, !tbaa !10
  %42 = tail call i32 @llvm.smax.i32(i32 %33, i32 1)
  %43 = zext nneg i32 %42 to i64
  %44 = mul nuw nsw i32 %34, %35
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %40, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !15
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %41, i64 %45
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i32
  %52 = sub nsw i32 %48, %51
  %53 = mul nsw i32 %52, %52
  %54 = add nsw i32 %53, %36
  %55 = icmp slt i32 %33, 2
  br i1 %55, label %107, label %56

56:                                               ; preds = %39
  %57 = mul nuw nsw i32 %33, %35
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %40, i64 %58
  %60 = getelementptr inbounds i8, ptr %41, i64 %58
  br label %61

61:                                               ; preds = %61, %56
  %62 = phi i64 [ %73, %61 ], [ 1, %56 ]
  %63 = phi i32 [ %72, %61 ], [ %54, %56 ]
  %64 = getelementptr inbounds i8, ptr %59, i64 %62
  %65 = load i8, ptr %64, align 1, !tbaa !15
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds i8, ptr %60, i64 %62
  %68 = load i8, ptr %67, align 1, !tbaa !15
  %69 = zext i8 %68 to i32
  %70 = sub nsw i32 %66, %69
  %71 = mul nsw i32 %70, %70
  %72 = add nsw i32 %71, %63
  %73 = add nuw nsw i64 %62, 1
  %74 = icmp eq i64 %73, %43
  br i1 %74, label %107, label %61, !llvm.loop !16

75:                                               ; preds = %38
  %76 = load ptr, ptr %26, align 8, !tbaa !10
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi i64 [ 0, %75 ], [ %101, %77 ]
  %79 = phi i32 [ %34, %75 ], [ %102, %77 ]
  %80 = phi i32 [ %36, %75 ], [ %100, %77 ]
  %81 = load ptr, ptr %0, align 8, !tbaa !10
  %82 = getelementptr inbounds i8, ptr %81, i64 %78
  %83 = mul nsw i32 %79, %35
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %82, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !15
  %87 = zext i8 %86 to i32
  %88 = load ptr, ptr %1, align 8, !tbaa !10
  %89 = getelementptr inbounds i8, ptr %88, i64 %78
  %90 = getelementptr inbounds i8, ptr %89, i64 %84
  %91 = load i8, ptr %90, align 1, !tbaa !15
  %92 = zext i8 %91 to i32
  %93 = sub nsw i32 %87, %92
  %94 = trunc i32 %93 to i8
  %95 = mul i8 %94, 10
  %96 = xor i8 %95, -128
  %97 = getelementptr inbounds i8, ptr %76, i64 %78
  %98 = getelementptr inbounds i8, ptr %97, i64 %84
  store i8 %96, ptr %98, align 1, !tbaa !15
  %99 = mul nsw i32 %93, %93
  %100 = add nsw i32 %99, %80
  %101 = add nuw nsw i64 %78, 1
  %102 = load i32, ptr @pels, align 4, !tbaa !6
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %77, label %105

105:                                              ; preds = %77
  %106 = load i32, ptr @lines, align 4, !tbaa !6
  br label %107

107:                                              ; preds = %61, %39, %105, %31
  %108 = phi i32 [ %32, %31 ], [ %106, %105 ], [ %32, %39 ], [ %32, %61 ]
  %109 = phi i32 [ %33, %31 ], [ %102, %105 ], [ %33, %39 ], [ %33, %61 ]
  %110 = phi i32 [ %34, %31 ], [ %102, %105 ], [ %33, %39 ], [ %33, %61 ]
  %111 = phi i32 [ %36, %31 ], [ %100, %105 ], [ %54, %39 ], [ %72, %61 ]
  %112 = add nuw nsw i32 %35, 1
  %113 = icmp slt i32 %112, %108
  br i1 %113, label %31, label %114, !llvm.loop !18

114:                                              ; preds = %107
  %115 = sitofp i32 %111 to float
  br label %116

116:                                              ; preds = %114, %23
  %117 = phi i32 [ %24, %23 ], [ %109, %114 ]
  %118 = phi float [ 0.000000e+00, %23 ], [ %115, %114 ]
  %119 = phi i32 [ %25, %23 ], [ %108, %114 ]
  %120 = mul nsw i32 %117, %119
  %121 = sitofp i32 %120 to float
  %122 = fdiv float %118, %121
  %123 = fcmp une float %122, 0.000000e+00
  br i1 %123, label %124, label %131

124:                                              ; preds = %116
  %125 = fdiv float 6.502500e+04, %122
  %126 = fpext float %125 to double
  %127 = tail call double @log10(double noundef %126) #7
  %128 = fptrunc double %127 to float
  %129 = fmul float %128, 1.000000e+01
  %130 = load i32, ptr @lines, align 4, !tbaa !6
  br label %131

131:                                              ; preds = %116, %124
  %132 = phi i32 [ %130, %124 ], [ %119, %116 ]
  %133 = phi float [ %129, %124 ], [ 0x4058FF5C20000000, %116 ]
  store float %133, ptr %2, align 4, !tbaa !20
  %134 = icmp sgt i32 %132, 1
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr @pels, align 4, !tbaa !6
  br label %274

137:                                              ; preds = %131
  %138 = getelementptr inbounds i8, ptr %0, i64 8
  %139 = getelementptr inbounds i8, ptr %1, i64 8
  %140 = getelementptr inbounds i8, ptr %0, i64 16
  %141 = getelementptr inbounds i8, ptr %1, i64 16
  %142 = getelementptr inbounds i8, ptr %26, i64 8
  %143 = getelementptr inbounds i8, ptr %26, i64 16
  %144 = load i32, ptr @pels, align 4
  br i1 %5, label %145, label %193

145:                                              ; preds = %137
  %146 = icmp sgt i32 %144, 1
  br i1 %146, label %147, label %274

147:                                              ; preds = %145
  %148 = lshr i32 %144, 1
  %149 = lshr i32 %132, 1
  %150 = load ptr, ptr %138, align 8, !tbaa !13
  %151 = load ptr, ptr %139, align 8, !tbaa !13
  %152 = load ptr, ptr %140, align 8, !tbaa !14
  %153 = load ptr, ptr %141, align 8, !tbaa !14
  %154 = zext nneg i32 %148 to i64
  br label %155

155:                                              ; preds = %190, %147
  %156 = phi i32 [ 0, %147 ], [ %191, %190 ]
  %157 = phi i32 [ 0, %147 ], [ %187, %190 ]
  %158 = phi i32 [ 0, %147 ], [ %178, %190 ]
  %159 = mul nuw nsw i32 %144, %156
  %160 = lshr i32 %159, 1
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %150, i64 %161
  %163 = getelementptr inbounds i8, ptr %151, i64 %161
  %164 = getelementptr inbounds i8, ptr %152, i64 %161
  %165 = getelementptr inbounds i8, ptr %153, i64 %161
  br label %166

166:                                              ; preds = %166, %155
  %167 = phi i64 [ %188, %166 ], [ 0, %155 ]
  %168 = phi i32 [ %187, %166 ], [ %157, %155 ]
  %169 = phi i32 [ %178, %166 ], [ %158, %155 ]
  %170 = getelementptr inbounds i8, ptr %162, i64 %167
  %171 = load i8, ptr %170, align 1, !tbaa !15
  %172 = zext i8 %171 to i32
  %173 = getelementptr inbounds i8, ptr %163, i64 %167
  %174 = load i8, ptr %173, align 1, !tbaa !15
  %175 = zext i8 %174 to i32
  %176 = sub nsw i32 %172, %175
  %177 = mul nsw i32 %176, %176
  %178 = add nsw i32 %177, %169
  %179 = getelementptr inbounds i8, ptr %164, i64 %167
  %180 = load i8, ptr %179, align 1, !tbaa !15
  %181 = zext i8 %180 to i32
  %182 = getelementptr inbounds i8, ptr %165, i64 %167
  %183 = load i8, ptr %182, align 1, !tbaa !15
  %184 = zext i8 %183 to i32
  %185 = sub nsw i32 %181, %184
  %186 = mul nsw i32 %185, %185
  %187 = add nsw i32 %186, %168
  %188 = add nuw nsw i64 %167, 1
  %189 = icmp eq i64 %188, %154
  br i1 %189, label %190, label %166

190:                                              ; preds = %166
  %191 = add nuw nsw i32 %156, 1
  %192 = icmp eq i32 %191, %149
  br i1 %192, label %274, label %155

193:                                              ; preds = %137, %266
  %194 = phi i32 [ %267, %266 ], [ %132, %137 ]
  %195 = phi i32 [ %268, %266 ], [ %144, %137 ]
  %196 = phi i32 [ %271, %266 ], [ 0, %137 ]
  %197 = phi i32 [ %270, %266 ], [ 0, %137 ]
  %198 = phi i32 [ %269, %266 ], [ 0, %137 ]
  %199 = icmp sgt i32 %195, 1
  br i1 %199, label %200, label %266

200:                                              ; preds = %193
  %201 = load ptr, ptr %142, align 8, !tbaa !13
  %202 = load ptr, ptr %143, align 8, !tbaa !14
  br label %203

203:                                              ; preds = %200, %203
  %204 = phi i64 [ 0, %200 ], [ %259, %203 ]
  %205 = phi i32 [ %195, %200 ], [ %260, %203 ]
  %206 = phi i32 [ %197, %200 ], [ %236, %203 ]
  %207 = phi i32 [ %198, %200 ], [ %223, %203 ]
  %208 = load ptr, ptr %138, align 8, !tbaa !13
  %209 = getelementptr inbounds i8, ptr %208, i64 %204
  %210 = mul nsw i32 %205, %196
  %211 = sdiv i32 %210, 2
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, ptr %209, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !15
  %215 = zext i8 %214 to i32
  %216 = load ptr, ptr %139, align 8, !tbaa !13
  %217 = getelementptr inbounds i8, ptr %216, i64 %204
  %218 = getelementptr inbounds i8, ptr %217, i64 %212
  %219 = load i8, ptr %218, align 1, !tbaa !15
  %220 = zext i8 %219 to i32
  %221 = sub nsw i32 %215, %220
  %222 = mul nsw i32 %221, %221
  %223 = add nsw i32 %222, %207
  %224 = load ptr, ptr %140, align 8, !tbaa !14
  %225 = getelementptr inbounds i8, ptr %224, i64 %204
  %226 = getelementptr inbounds i8, ptr %225, i64 %212
  %227 = load i8, ptr %226, align 1, !tbaa !15
  %228 = zext i8 %227 to i32
  %229 = load ptr, ptr %141, align 8, !tbaa !14
  %230 = getelementptr inbounds i8, ptr %229, i64 %204
  %231 = getelementptr inbounds i8, ptr %230, i64 %212
  %232 = load i8, ptr %231, align 1, !tbaa !15
  %233 = zext i8 %232 to i32
  %234 = sub nsw i32 %228, %233
  %235 = mul nsw i32 %234, %234
  %236 = add nsw i32 %235, %206
  %237 = trunc i32 %221 to i8
  %238 = mul i8 %237, 10
  %239 = xor i8 %238, -128
  %240 = getelementptr inbounds i8, ptr %201, i64 %204
  %241 = getelementptr inbounds i8, ptr %240, i64 %212
  store i8 %239, ptr %241, align 1, !tbaa !15
  %242 = load ptr, ptr %140, align 8, !tbaa !14
  %243 = getelementptr inbounds i8, ptr %242, i64 %204
  %244 = load i32, ptr @pels, align 4, !tbaa !6
  %245 = mul nsw i32 %244, %196
  %246 = sdiv i32 %245, 2
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %243, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !15
  %250 = load ptr, ptr %141, align 8, !tbaa !14
  %251 = getelementptr inbounds i8, ptr %250, i64 %204
  %252 = getelementptr inbounds i8, ptr %251, i64 %247
  %253 = load i8, ptr %252, align 1, !tbaa !15
  %254 = sub i8 %249, %253
  %255 = mul i8 %254, 10
  %256 = xor i8 %255, -128
  %257 = getelementptr inbounds i8, ptr %202, i64 %204
  %258 = getelementptr inbounds i8, ptr %257, i64 %247
  store i8 %256, ptr %258, align 1, !tbaa !15
  %259 = add nuw nsw i64 %204, 1
  %260 = load i32, ptr @pels, align 4, !tbaa !6
  %261 = sdiv i32 %260, 2
  %262 = sext i32 %261 to i64
  %263 = icmp slt i64 %259, %262
  br i1 %263, label %203, label %264

264:                                              ; preds = %203
  %265 = load i32, ptr @lines, align 4, !tbaa !6
  br label %266

266:                                              ; preds = %264, %193
  %267 = phi i32 [ %194, %193 ], [ %265, %264 ]
  %268 = phi i32 [ %195, %193 ], [ %260, %264 ]
  %269 = phi i32 [ %198, %193 ], [ %223, %264 ]
  %270 = phi i32 [ %197, %193 ], [ %236, %264 ]
  %271 = add nuw nsw i32 %196, 1
  %272 = sdiv i32 %267, 2
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %193, label %274

274:                                              ; preds = %266, %190, %145, %135
  %275 = phi i32 [ %136, %135 ], [ %144, %145 ], [ %144, %190 ], [ %268, %266 ]
  %276 = phi i32 [ 0, %135 ], [ 0, %145 ], [ %178, %190 ], [ %269, %266 ]
  %277 = phi i32 [ 0, %135 ], [ 0, %145 ], [ %187, %190 ], [ %270, %266 ]
  %278 = phi i32 [ %132, %135 ], [ %132, %145 ], [ %132, %190 ], [ %267, %266 ]
  %279 = sitofp i32 %276 to float
  %280 = mul nsw i32 %275, %278
  %281 = sdiv i32 %280, 4
  %282 = sitofp i32 %281 to float
  %283 = fdiv float %279, %282
  %284 = getelementptr inbounds i8, ptr %2, i64 4
  %285 = fcmp une float %283, 0.000000e+00
  br i1 %285, label %286, label %297

286:                                              ; preds = %274
  %287 = fdiv float 6.502500e+04, %283
  %288 = fpext float %287 to double
  %289 = tail call double @log10(double noundef %288) #7
  %290 = fptrunc double %289 to float
  %291 = fmul float %290, 1.000000e+01
  %292 = load i32, ptr @pels, align 4, !tbaa !6
  %293 = load i32, ptr @lines, align 4, !tbaa !6
  %294 = mul nsw i32 %293, %292
  %295 = sdiv i32 %294, 4
  %296 = sitofp i32 %295 to float
  br label %297

297:                                              ; preds = %274, %286
  %298 = phi float [ %282, %274 ], [ %296, %286 ]
  %299 = phi float [ 0x4058FF5C20000000, %274 ], [ %291, %286 ]
  store float %299, ptr %284, align 4, !tbaa !23
  %300 = sitofp i32 %277 to float
  %301 = fdiv float %300, %298
  %302 = getelementptr inbounds i8, ptr %2, i64 8
  %303 = fcmp une float %301, 0.000000e+00
  br i1 %303, label %304, label %310

304:                                              ; preds = %297
  %305 = fdiv float 6.502500e+04, %301
  %306 = fpext float %305 to double
  %307 = tail call double @log10(double noundef %306) #7
  %308 = fptrunc double %307 to float
  %309 = fmul float %308, 1.000000e+01
  br label %310

310:                                              ; preds = %297, %304
  %311 = phi float [ %309, %304 ], [ 0x4058FF5C20000000, %297 ]
  store float %311, ptr %302, align 4, !tbaa !24
  br i1 %5, label %339, label %312

312:                                              ; preds = %310
  %313 = load ptr, ptr %26, align 8, !tbaa !10
  %314 = load i32, ptr @pels, align 4, !tbaa !6
  %315 = load i32, ptr @lines, align 4, !tbaa !6
  %316 = mul nsw i32 %315, %314
  %317 = sext i32 %316 to i64
  %318 = tail call i64 @fwrite(ptr noundef %313, i64 noundef 1, i64 noundef %317, ptr noundef %27)
  %319 = getelementptr inbounds i8, ptr %26, i64 8
  %320 = load ptr, ptr %319, align 8, !tbaa !13
  %321 = load i32, ptr @pels, align 4, !tbaa !6
  %322 = load i32, ptr @lines, align 4, !tbaa !6
  %323 = mul nsw i32 %322, %321
  %324 = sdiv i32 %323, 4
  %325 = sext i32 %324 to i64
  %326 = tail call i64 @fwrite(ptr noundef %320, i64 noundef 1, i64 noundef %325, ptr noundef %27)
  %327 = getelementptr inbounds i8, ptr %26, i64 16
  %328 = load ptr, ptr %327, align 8, !tbaa !14
  %329 = load i32, ptr @pels, align 4, !tbaa !6
  %330 = load i32, ptr @lines, align 4, !tbaa !6
  %331 = mul nsw i32 %330, %329
  %332 = sdiv i32 %331, 4
  %333 = sext i32 %332 to i64
  %334 = tail call i64 @fwrite(ptr noundef %328, i64 noundef 1, i64 noundef %333, ptr noundef %27)
  %335 = load ptr, ptr %26, align 8, !tbaa !10
  tail call void @free(ptr noundef %335) #7
  %336 = load ptr, ptr %319, align 8, !tbaa !13
  tail call void @free(ptr noundef %336) #7
  %337 = load ptr, ptr %327, align 8, !tbaa !14
  tail call void @free(ptr noundef %337) #7
  tail call void @free(ptr noundef %26) #7
  %338 = tail call signext i32 @fclose(ptr noundef %27)
  br label %339

339:                                              ; preds = %312, %310
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare dso_local double @log10(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
!10 = !{!11, !12, i64 0}
!11 = !{!"pict_image", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!11, !12, i64 16}
!15 = !{!8, !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unswitch.partial.disable"}
!20 = !{!21, !22, i64 0}
!21 = !{!"results", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!22 = !{!"float", !8, i64 0}
!23 = !{!21, !22, i64 4}
!24 = !{!21, !22, i64 8}
