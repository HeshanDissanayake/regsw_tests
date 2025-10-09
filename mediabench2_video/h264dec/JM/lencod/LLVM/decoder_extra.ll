; ModuleID = 'src/decoder.c'
source_filename = "src/decoder.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@img = external dso_local local_unnamed_addr global ptr, align 8
@start_frame_no_in_this_IGOP = external dso_local local_unnamed_addr global i32, align 4
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@decs = external dso_local local_unnamed_addr global ptr, align 8
@enc_frame_picture = external dso_local local_unnamed_addr global ptr, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @decode_one_b8block(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x [4 x [4 x i32]]], align 4
  %7 = alloca [16 x [16 x i32]], align 4
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8, !tbaa !10
  %10 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !16
  %11 = xor i32 %10, -1
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds i8, ptr %8, i64 32
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = srem i32 %12, %14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #8
  %16 = sdiv i32 %2, 2
  %17 = mul i32 %16, 2
  %18 = sub i32 %2, %17
  %19 = shl nsw i32 %18, 3
  %20 = add nsw i32 %19, 8
  %21 = shl nsw i32 %18, 1
  %22 = add nsw i32 %21, 2
  %23 = shl i32 %16, 3
  %24 = add nsw i32 %23, 8
  %25 = ashr exact i32 %23, 2
  %26 = add nsw i32 %25, 2
  %27 = getelementptr inbounds i8, ptr %8, i64 24
  %28 = load i32, ptr %27, align 8, !tbaa !18
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %129

30:                                               ; preds = %5
  %31 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 6424
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = getelementptr inbounds i8, ptr %8, i64 156
  %35 = load i32, ptr %34, align 4, !tbaa !21
  %36 = getelementptr inbounds i8, ptr %8, i64 152
  %37 = load i32, ptr %36, align 8, !tbaa !22
  %38 = load ptr, ptr @decs, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 8
  %40 = load ptr, ptr %39, align 8, !tbaa !23
  %41 = sext i32 %0 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = sext i32 %23 to i64
  %45 = sext i32 %35 to i64
  %46 = sext i32 %24 to i64
  %47 = sext i32 %19 to i64
  %48 = sext i32 %37 to i64
  %49 = sext i32 %20 to i64
  %50 = add nsw i64 %45, %44
  %51 = getelementptr inbounds ptr, ptr %33, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds ptr, ptr %43, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = or disjoint i64 %44, 1
  %56 = icmp slt i64 %55, %46
  %57 = add nsw i64 %55, %45
  %58 = getelementptr inbounds ptr, ptr %33, i64 %57
  %59 = getelementptr inbounds ptr, ptr %43, i64 %57
  %60 = or disjoint i64 %44, 2
  %61 = add nsw i64 %60, %45
  %62 = getelementptr inbounds ptr, ptr %33, i64 %61
  %63 = getelementptr inbounds ptr, ptr %43, i64 %61
  %64 = or disjoint i64 %44, 3
  %65 = add nsw i64 %64, %45
  %66 = getelementptr inbounds ptr, ptr %33, i64 %65
  %67 = getelementptr inbounds ptr, ptr %43, i64 %65
  %68 = or disjoint i64 %44, 4
  %69 = add nsw i64 %68, %45
  %70 = getelementptr inbounds ptr, ptr %33, i64 %69
  %71 = getelementptr inbounds ptr, ptr %43, i64 %69
  %72 = or disjoint i64 %44, 5
  %73 = add nsw i64 %72, %45
  %74 = getelementptr inbounds ptr, ptr %33, i64 %73
  %75 = getelementptr inbounds ptr, ptr %43, i64 %73
  %76 = or disjoint i64 %44, 6
  %77 = add nsw i64 %76, %45
  %78 = getelementptr inbounds ptr, ptr %33, i64 %77
  %79 = getelementptr inbounds ptr, ptr %43, i64 %77
  %80 = or disjoint i64 %44, 7
  %81 = add nsw i64 %80, %45
  %82 = getelementptr inbounds ptr, ptr %33, i64 %81
  %83 = getelementptr inbounds ptr, ptr %43, i64 %81
  br label %84

84:                                               ; preds = %30, %126
  %85 = phi i64 [ %47, %30 ], [ %127, %126 ]
  %86 = add nsw i64 %85, %48
  %87 = getelementptr inbounds i16, ptr %52, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !25
  %89 = getelementptr inbounds i16, ptr %54, i64 %86
  store i16 %88, ptr %89, align 2, !tbaa !25
  br i1 %56, label %90, label %126

90:                                               ; preds = %84
  %91 = load ptr, ptr %58, align 8, !tbaa !6
  %92 = getelementptr inbounds i16, ptr %91, i64 %86
  %93 = load i16, ptr %92, align 2, !tbaa !25
  %94 = load ptr, ptr %59, align 8, !tbaa !6
  %95 = getelementptr inbounds i16, ptr %94, i64 %86
  store i16 %93, ptr %95, align 2, !tbaa !25
  %96 = load ptr, ptr %62, align 8, !tbaa !6
  %97 = getelementptr inbounds i16, ptr %96, i64 %86
  %98 = load i16, ptr %97, align 2, !tbaa !25
  %99 = load ptr, ptr %63, align 8, !tbaa !6
  %100 = getelementptr inbounds i16, ptr %99, i64 %86
  store i16 %98, ptr %100, align 2, !tbaa !25
  %101 = load ptr, ptr %66, align 8, !tbaa !6
  %102 = getelementptr inbounds i16, ptr %101, i64 %86
  %103 = load i16, ptr %102, align 2, !tbaa !25
  %104 = load ptr, ptr %67, align 8, !tbaa !6
  %105 = getelementptr inbounds i16, ptr %104, i64 %86
  store i16 %103, ptr %105, align 2, !tbaa !25
  %106 = load ptr, ptr %70, align 8, !tbaa !6
  %107 = getelementptr inbounds i16, ptr %106, i64 %86
  %108 = load i16, ptr %107, align 2, !tbaa !25
  %109 = load ptr, ptr %71, align 8, !tbaa !6
  %110 = getelementptr inbounds i16, ptr %109, i64 %86
  store i16 %108, ptr %110, align 2, !tbaa !25
  %111 = load ptr, ptr %74, align 8, !tbaa !6
  %112 = getelementptr inbounds i16, ptr %111, i64 %86
  %113 = load i16, ptr %112, align 2, !tbaa !25
  %114 = load ptr, ptr %75, align 8, !tbaa !6
  %115 = getelementptr inbounds i16, ptr %114, i64 %86
  store i16 %113, ptr %115, align 2, !tbaa !25
  %116 = load ptr, ptr %78, align 8, !tbaa !6
  %117 = getelementptr inbounds i16, ptr %116, i64 %86
  %118 = load i16, ptr %117, align 2, !tbaa !25
  %119 = load ptr, ptr %79, align 8, !tbaa !6
  %120 = getelementptr inbounds i16, ptr %119, i64 %86
  store i16 %118, ptr %120, align 2, !tbaa !25
  %121 = load ptr, ptr %82, align 8, !tbaa !6
  %122 = getelementptr inbounds i16, ptr %121, i64 %86
  %123 = load i16, ptr %122, align 2, !tbaa !25
  %124 = load ptr, ptr %83, align 8, !tbaa !6
  %125 = getelementptr inbounds i16, ptr %124, i64 %86
  store i16 %123, ptr %125, align 2, !tbaa !25
  br label %126

126:                                              ; preds = %90, %84
  %127 = add nsw i64 %85, 1
  %128 = icmp eq i64 %127, %49
  br i1 %128, label %649, label %84

129:                                              ; preds = %5
  %130 = icmp eq i32 %1, 0
  br i1 %130, label %131, label %180

131:                                              ; preds = %129
  switch i32 %28, label %180 [
    i32 0, label %136
    i32 1, label %132
  ]

132:                                              ; preds = %131
  %133 = getelementptr inbounds i8, ptr %8, i64 90316
  %134 = load i32, ptr %133, align 4, !tbaa !26
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %180

136:                                              ; preds = %131, %132
  %137 = sext i32 %23 to i64
  %138 = sext i32 %24 to i64
  %139 = sext i32 %19 to i64
  %140 = sext i32 %20 to i64
  %141 = or disjoint i64 %137, 1
  %142 = icmp slt i64 %141, %138
  %143 = or disjoint i64 %137, 2
  %144 = or disjoint i64 %137, 3
  %145 = or disjoint i64 %137, 4
  %146 = or disjoint i64 %137, 5
  %147 = or disjoint i64 %137, 6
  %148 = or disjoint i64 %137, 7
  br label %149

149:                                              ; preds = %136, %177
  %150 = phi i64 [ %139, %136 ], [ %178, %177 ]
  %151 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %137, i64 %150
  store i32 0, ptr %151, align 4, !tbaa !16
  br i1 %142, label %169, label %177

152:                                              ; preds = %177
  %153 = getelementptr inbounds i8, ptr %6, i64 64
  %154 = sext i32 %21 to i64
  %155 = trunc i32 %16 to i30
  %156 = shl i30 %155, 1
  %157 = sext i30 %156 to i64
  %158 = getelementptr inbounds [4 x [4 x i32]], ptr %153, i64 0, i64 %157, i64 %154
  store i32 0, ptr %158, align 4, !tbaa !16
  %159 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %157, i64 %154
  store i32 0, ptr %159, align 4, !tbaa !16
  %160 = or disjoint i64 %154, 1
  %161 = getelementptr inbounds [4 x [4 x i32]], ptr %153, i64 0, i64 %157, i64 %160
  store i32 0, ptr %161, align 4, !tbaa !16
  %162 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %157, i64 %160
  store i32 0, ptr %162, align 4, !tbaa !16
  %163 = or disjoint i64 %157, 1
  %164 = getelementptr inbounds [4 x [4 x i32]], ptr %153, i64 0, i64 %163, i64 %154
  store i32 0, ptr %164, align 4, !tbaa !16
  %165 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %163, i64 %154
  store i32 0, ptr %165, align 4, !tbaa !16
  %166 = getelementptr inbounds [4 x [4 x i32]], ptr %153, i64 0, i64 %163, i64 %160
  store i32 0, ptr %166, align 4, !tbaa !16
  %167 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %163, i64 %160
  store i32 0, ptr %167, align 4, !tbaa !16
  %168 = add i32 %3, -1
  br label %332

169:                                              ; preds = %149
  %170 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %141, i64 %150
  store i32 0, ptr %170, align 4, !tbaa !16
  %171 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %143, i64 %150
  store i32 0, ptr %171, align 4, !tbaa !16
  %172 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %144, i64 %150
  store i32 0, ptr %172, align 4, !tbaa !16
  %173 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %145, i64 %150
  store i32 0, ptr %173, align 4, !tbaa !16
  %174 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %146, i64 %150
  store i32 0, ptr %174, align 4, !tbaa !16
  %175 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %147, i64 %150
  store i32 0, ptr %175, align 4, !tbaa !16
  %176 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %148, i64 %150
  store i32 0, ptr %176, align 4, !tbaa !16
  br label %177

177:                                              ; preds = %169, %149
  %178 = add nsw i64 %150, 1
  %179 = icmp eq i64 %178, %140
  br i1 %179, label %152, label %149

180:                                              ; preds = %131, %132, %129
  %181 = add i32 %3, -1
  %182 = icmp ult i32 %181, 7
  br i1 %182, label %199, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds i8, ptr %6, i64 64
  %185 = sext i32 %21 to i64
  %186 = trunc i32 %16 to i30
  %187 = shl i30 %186, 1
  %188 = sext i30 %187 to i64
  %189 = getelementptr inbounds [4 x [4 x i32]], ptr %184, i64 0, i64 %188, i64 %185
  store i32 0, ptr %189, align 4, !tbaa !16
  %190 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %188, i64 %185
  store i32 0, ptr %190, align 4, !tbaa !16
  %191 = or disjoint i64 %185, 1
  %192 = getelementptr inbounds [4 x [4 x i32]], ptr %184, i64 0, i64 %188, i64 %191
  store i32 0, ptr %192, align 4, !tbaa !16
  %193 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %188, i64 %191
  store i32 0, ptr %193, align 4, !tbaa !16
  %194 = or disjoint i64 %188, 1
  %195 = getelementptr inbounds [4 x [4 x i32]], ptr %184, i64 0, i64 %194, i64 %185
  store i32 0, ptr %195, align 4, !tbaa !16
  %196 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %194, i64 %185
  store i32 0, ptr %196, align 4, !tbaa !16
  %197 = getelementptr inbounds [4 x [4 x i32]], ptr %184, i64 0, i64 %194, i64 %191
  store i32 0, ptr %197, align 4, !tbaa !16
  %198 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %194, i64 %191
  store i32 0, ptr %198, align 4, !tbaa !16
  br label %271

199:                                              ; preds = %180
  %200 = getelementptr inbounds i8, ptr %8, i64 89336
  %201 = load ptr, ptr %200, align 8, !tbaa !27
  %202 = sext i32 %4 to i64
  %203 = zext nneg i32 %3 to i64
  %204 = getelementptr inbounds i8, ptr %6, i64 64
  %205 = sext i32 %21 to i64
  %206 = trunc i32 %16 to i30
  %207 = shl i30 %206, 1
  %208 = sext i30 %207 to i64
  %209 = getelementptr inbounds ptr, ptr %201, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = getelementptr inbounds ptr, ptr %210, i64 %205
  %212 = load ptr, ptr %211, align 8, !tbaa !6
  %213 = load ptr, ptr %212, align 8, !tbaa !6
  %214 = getelementptr inbounds ptr, ptr %213, i64 %202
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = getelementptr inbounds ptr, ptr %215, i64 %203
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  %218 = load i16, ptr %217, align 2, !tbaa !25
  %219 = sext i16 %218 to i32
  %220 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %208, i64 %205
  store i32 %219, ptr %220, align 4, !tbaa !16
  %221 = getelementptr inbounds i8, ptr %217, i64 2
  %222 = load i16, ptr %221, align 2, !tbaa !25
  %223 = sext i16 %222 to i32
  %224 = getelementptr inbounds [4 x [4 x i32]], ptr %204, i64 0, i64 %208, i64 %205
  store i32 %223, ptr %224, align 4, !tbaa !16
  %225 = or disjoint i64 %205, 1
  %226 = getelementptr inbounds ptr, ptr %210, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !6
  %228 = load ptr, ptr %227, align 8, !tbaa !6
  %229 = getelementptr inbounds ptr, ptr %228, i64 %202
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  %231 = getelementptr inbounds ptr, ptr %230, i64 %203
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  %233 = load i16, ptr %232, align 2, !tbaa !25
  %234 = sext i16 %233 to i32
  %235 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %208, i64 %225
  store i32 %234, ptr %235, align 4, !tbaa !16
  %236 = getelementptr inbounds i8, ptr %232, i64 2
  %237 = load i16, ptr %236, align 2, !tbaa !25
  %238 = sext i16 %237 to i32
  %239 = getelementptr inbounds [4 x [4 x i32]], ptr %204, i64 0, i64 %208, i64 %225
  store i32 %238, ptr %239, align 4, !tbaa !16
  %240 = or disjoint i64 %208, 1
  %241 = getelementptr inbounds ptr, ptr %201, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !6
  %243 = getelementptr inbounds ptr, ptr %242, i64 %205
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  %245 = load ptr, ptr %244, align 8, !tbaa !6
  %246 = getelementptr inbounds ptr, ptr %245, i64 %202
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = getelementptr inbounds ptr, ptr %247, i64 %203
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = load i16, ptr %249, align 2, !tbaa !25
  %251 = sext i16 %250 to i32
  %252 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %240, i64 %205
  store i32 %251, ptr %252, align 4, !tbaa !16
  %253 = getelementptr inbounds i8, ptr %249, i64 2
  %254 = load i16, ptr %253, align 2, !tbaa !25
  %255 = sext i16 %254 to i32
  %256 = getelementptr inbounds [4 x [4 x i32]], ptr %204, i64 0, i64 %240, i64 %205
  store i32 %255, ptr %256, align 4, !tbaa !16
  %257 = getelementptr inbounds ptr, ptr %242, i64 %225
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  %259 = load ptr, ptr %258, align 8, !tbaa !6
  %260 = getelementptr inbounds ptr, ptr %259, i64 %202
  %261 = load ptr, ptr %260, align 8, !tbaa !6
  %262 = getelementptr inbounds ptr, ptr %261, i64 %203
  %263 = load ptr, ptr %262, align 8, !tbaa !6
  %264 = load i16, ptr %263, align 2, !tbaa !25
  %265 = sext i16 %264 to i32
  %266 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %240, i64 %225
  store i32 %265, ptr %266, align 4, !tbaa !16
  %267 = getelementptr inbounds i8, ptr %263, i64 2
  %268 = load i16, ptr %267, align 2, !tbaa !25
  %269 = sext i16 %268 to i32
  %270 = getelementptr inbounds [4 x [4 x i32]], ptr %204, i64 0, i64 %240, i64 %225
  store i32 %269, ptr %270, align 4, !tbaa !16
  br label %271

271:                                              ; preds = %183, %199
  %272 = load ptr, ptr @decs, align 8, !tbaa !6
  %273 = load ptr, ptr %272, align 8, !tbaa !28
  %274 = sext i32 %23 to i64
  %275 = sext i32 %24 to i64
  %276 = sext i32 %19 to i64
  %277 = sext i32 %20 to i64
  %278 = getelementptr inbounds ptr, ptr %273, i64 %274
  %279 = load ptr, ptr %278, align 8, !tbaa !6
  %280 = or disjoint i64 %274, 1
  %281 = icmp slt i64 %280, %275
  %282 = getelementptr inbounds ptr, ptr %273, i64 %280
  %283 = or disjoint i64 %274, 2
  %284 = getelementptr inbounds ptr, ptr %273, i64 %283
  %285 = or disjoint i64 %274, 3
  %286 = getelementptr inbounds ptr, ptr %273, i64 %285
  %287 = or disjoint i64 %274, 4
  %288 = getelementptr inbounds ptr, ptr %273, i64 %287
  %289 = or disjoint i64 %274, 5
  %290 = getelementptr inbounds ptr, ptr %273, i64 %289
  %291 = or disjoint i64 %274, 6
  %292 = getelementptr inbounds ptr, ptr %273, i64 %291
  %293 = or disjoint i64 %274, 7
  %294 = getelementptr inbounds ptr, ptr %273, i64 %293
  br label %295

295:                                              ; preds = %271, %329
  %296 = phi i64 [ %276, %271 ], [ %330, %329 ]
  %297 = getelementptr inbounds i32, ptr %279, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !16
  %299 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %274, i64 %296
  store i32 %298, ptr %299, align 4, !tbaa !16
  br i1 %281, label %300, label %329

300:                                              ; preds = %295
  %301 = load ptr, ptr %282, align 8, !tbaa !6
  %302 = getelementptr inbounds i32, ptr %301, i64 %296
  %303 = load i32, ptr %302, align 4, !tbaa !16
  %304 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %280, i64 %296
  store i32 %303, ptr %304, align 4, !tbaa !16
  %305 = load ptr, ptr %284, align 8, !tbaa !6
  %306 = getelementptr inbounds i32, ptr %305, i64 %296
  %307 = load i32, ptr %306, align 4, !tbaa !16
  %308 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %283, i64 %296
  store i32 %307, ptr %308, align 4, !tbaa !16
  %309 = load ptr, ptr %286, align 8, !tbaa !6
  %310 = getelementptr inbounds i32, ptr %309, i64 %296
  %311 = load i32, ptr %310, align 4, !tbaa !16
  %312 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %285, i64 %296
  store i32 %311, ptr %312, align 4, !tbaa !16
  %313 = load ptr, ptr %288, align 8, !tbaa !6
  %314 = getelementptr inbounds i32, ptr %313, i64 %296
  %315 = load i32, ptr %314, align 4, !tbaa !16
  %316 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %287, i64 %296
  store i32 %315, ptr %316, align 4, !tbaa !16
  %317 = load ptr, ptr %290, align 8, !tbaa !6
  %318 = getelementptr inbounds i32, ptr %317, i64 %296
  %319 = load i32, ptr %318, align 4, !tbaa !16
  %320 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %289, i64 %296
  store i32 %319, ptr %320, align 4, !tbaa !16
  %321 = load ptr, ptr %292, align 8, !tbaa !6
  %322 = getelementptr inbounds i32, ptr %321, i64 %296
  %323 = load i32, ptr %322, align 4, !tbaa !16
  %324 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %291, i64 %296
  store i32 %323, ptr %324, align 4, !tbaa !16
  %325 = load ptr, ptr %294, align 8, !tbaa !6
  %326 = getelementptr inbounds i32, ptr %325, i64 %296
  %327 = load i32, ptr %326, align 4, !tbaa !16
  %328 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %293, i64 %296
  store i32 %327, ptr %328, align 4, !tbaa !16
  br label %329

329:                                              ; preds = %300, %295
  %330 = add nsw i64 %296, 1
  %331 = icmp eq i64 %330, %277
  br i1 %331, label %332, label %295

332:                                              ; preds = %329, %152
  %333 = phi i32 [ %168, %152 ], [ %181, %329 ]
  %334 = icmp ult i32 %333, 7
  br i1 %334, label %341, label %335

335:                                              ; preds = %332
  br i1 %130, label %336, label %550

336:                                              ; preds = %335
  switch i32 %28, label %550 [
    i32 0, label %341
    i32 1, label %337
  ]

337:                                              ; preds = %336
  %338 = getelementptr inbounds i8, ptr %8, i64 90316
  %339 = load i32, ptr %338, align 4, !tbaa !26
  %340 = icmp sgt i32 %339, 0
  br i1 %340, label %341, label %550

341:                                              ; preds = %336, %332, %337
  %342 = sext i32 %0 to i64
  %343 = getelementptr inbounds i8, ptr %6, i64 64
  %344 = sext i32 %21 to i64
  %345 = trunc i32 %16 to i30
  %346 = shl i30 %345, 1
  %347 = sext i30 %346 to i64
  %348 = sext i32 %26 to i64
  %349 = sext i32 %22 to i64
  br label %350

350:                                              ; preds = %341, %547
  %351 = phi i64 [ %347, %341 ], [ %548, %547 ]
  %352 = phi i32 [ %15, %341 ], [ %386, %547 ]
  %353 = shl nsw i64 %351, 2
  %354 = or disjoint i64 %353, 3
  %355 = trunc nsw i64 %351 to i32
  %356 = or disjoint i64 %353, 1
  %357 = or disjoint i64 %353, 2
  br label %358

358:                                              ; preds = %350, %385
  %359 = phi i64 [ %344, %350 ], [ %545, %385 ]
  %360 = phi i32 [ %352, %350 ], [ %386, %385 ]
  %361 = load ptr, ptr @img, align 8, !tbaa !6
  %362 = getelementptr inbounds i8, ptr %361, i64 144
  %363 = load i32, ptr %362, align 8, !tbaa !29
  %364 = trunc nsw i64 %359 to i32
  %365 = add nsw i32 %363, %364
  %366 = getelementptr inbounds i8, ptr %361, i64 148
  %367 = load i32, ptr %366, align 4, !tbaa !30
  %368 = add nsw i32 %367, %355
  %369 = getelementptr inbounds i8, ptr %361, i64 24
  %370 = load i32, ptr %369, align 8, !tbaa !18
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %385

372:                                              ; preds = %358
  %373 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %374 = load ptr, ptr @enc_frame_picture, align 8, !tbaa !6
  %375 = icmp eq ptr %373, %374
  br i1 %375, label %385, label %376

376:                                              ; preds = %372
  %377 = load i32, ptr %361, align 8, !tbaa !10
  %378 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !16
  %379 = add i32 %377, -2
  %380 = add i32 %378, %4
  %381 = sub i32 %379, %380
  %382 = getelementptr inbounds i8, ptr %361, i64 32
  %383 = load i32, ptr %382, align 8, !tbaa !17
  %384 = srem i32 %381, %383
  br label %385

385:                                              ; preds = %376, %372, %358
  %386 = phi i32 [ %384, %376 ], [ %360, %372 ], [ %360, %358 ]
  %387 = load ptr, ptr @decs, align 8, !tbaa !6
  %388 = getelementptr inbounds i8, ptr %387, i64 16
  %389 = load ptr, ptr %388, align 8, !tbaa !31
  %390 = getelementptr inbounds ptr, ptr %389, i64 %342
  %391 = load ptr, ptr %390, align 8, !tbaa !6
  %392 = sext i32 %386 to i64
  %393 = getelementptr inbounds ptr, ptr %391, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !6
  %395 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %351, i64 %359
  %396 = load i32, ptr %395, align 4, !tbaa !16
  %397 = getelementptr inbounds [4 x [4 x i32]], ptr %343, i64 0, i64 %351, i64 %359
  %398 = load i32, ptr %397, align 4, !tbaa !16
  %399 = getelementptr inbounds i8, ptr %387, i64 32
  %400 = load ptr, ptr %399, align 8, !tbaa !32
  tail call void @Get_Reference_Block(ptr noundef %394, i32 noundef signext %368, i32 noundef signext %365, i32 noundef signext %396, i32 noundef signext %398, ptr noundef %400)
  %401 = shl nsw i64 %359, 2
  %402 = load ptr, ptr @decs, align 8, !tbaa !6
  %403 = getelementptr inbounds i8, ptr %402, i64 32
  %404 = load ptr, ptr %403, align 8, !tbaa !32
  %405 = getelementptr inbounds i8, ptr %402, i64 8
  %406 = load ptr, ptr %405, align 8, !tbaa !23
  %407 = getelementptr inbounds ptr, ptr %406, i64 %342
  %408 = load ptr, ptr %407, align 8, !tbaa !6
  %409 = shl nsw i32 %368, 2
  %410 = shl nsw i32 %365, 2
  %411 = sext i32 %410 to i64
  %412 = sext i32 %409 to i64
  %413 = load ptr, ptr %404, align 8, !tbaa !6
  %414 = getelementptr inbounds ptr, ptr %408, i64 %412
  %415 = load ptr, ptr %414, align 8, !tbaa !6
  %416 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %353, i64 %401
  %417 = load i32, ptr %416, align 4, !tbaa !16
  %418 = load i16, ptr %413, align 2, !tbaa !25
  %419 = trunc i32 %417 to i16
  %420 = add i16 %418, %419
  %421 = getelementptr inbounds i16, ptr %415, i64 %411
  store i16 %420, ptr %421, align 2, !tbaa !25
  %422 = or disjoint i64 %401, 1
  %423 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %353, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !16
  %425 = getelementptr inbounds i8, ptr %413, i64 2
  %426 = load i16, ptr %425, align 2, !tbaa !25
  %427 = trunc i32 %424 to i16
  %428 = add i16 %426, %427
  %429 = or disjoint i64 %411, 1
  %430 = getelementptr inbounds i16, ptr %415, i64 %429
  store i16 %428, ptr %430, align 2, !tbaa !25
  %431 = or disjoint i64 %401, 2
  %432 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %353, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !16
  %434 = getelementptr inbounds i8, ptr %413, i64 4
  %435 = load i16, ptr %434, align 2, !tbaa !25
  %436 = trunc i32 %433 to i16
  %437 = add i16 %435, %436
  %438 = or disjoint i64 %411, 2
  %439 = getelementptr inbounds i16, ptr %415, i64 %438
  store i16 %437, ptr %439, align 2, !tbaa !25
  %440 = or disjoint i64 %401, 3
  %441 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %353, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !16
  %443 = getelementptr inbounds i8, ptr %413, i64 6
  %444 = load i16, ptr %443, align 2, !tbaa !25
  %445 = trunc i32 %442 to i16
  %446 = add i16 %444, %445
  %447 = or disjoint i64 %411, 3
  %448 = getelementptr inbounds i16, ptr %415, i64 %447
  store i16 %446, ptr %448, align 2, !tbaa !25
  %449 = getelementptr inbounds i8, ptr %404, i64 8
  %450 = load ptr, ptr %449, align 8, !tbaa !6
  %451 = or disjoint i64 %412, 1
  %452 = getelementptr inbounds ptr, ptr %408, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !6
  %454 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %356, i64 %401
  %455 = load i32, ptr %454, align 4, !tbaa !16
  %456 = load i16, ptr %450, align 2, !tbaa !25
  %457 = trunc i32 %455 to i16
  %458 = add i16 %456, %457
  %459 = getelementptr inbounds i16, ptr %453, i64 %411
  store i16 %458, ptr %459, align 2, !tbaa !25
  %460 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %356, i64 %422
  %461 = load i32, ptr %460, align 4, !tbaa !16
  %462 = getelementptr inbounds i8, ptr %450, i64 2
  %463 = load i16, ptr %462, align 2, !tbaa !25
  %464 = trunc i32 %461 to i16
  %465 = add i16 %463, %464
  %466 = getelementptr inbounds i16, ptr %453, i64 %429
  store i16 %465, ptr %466, align 2, !tbaa !25
  %467 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %356, i64 %431
  %468 = load i32, ptr %467, align 4, !tbaa !16
  %469 = getelementptr inbounds i8, ptr %450, i64 4
  %470 = load i16, ptr %469, align 2, !tbaa !25
  %471 = trunc i32 %468 to i16
  %472 = add i16 %470, %471
  %473 = getelementptr inbounds i16, ptr %453, i64 %438
  store i16 %472, ptr %473, align 2, !tbaa !25
  %474 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %356, i64 %440
  %475 = load i32, ptr %474, align 4, !tbaa !16
  %476 = getelementptr inbounds i8, ptr %450, i64 6
  %477 = load i16, ptr %476, align 2, !tbaa !25
  %478 = trunc i32 %475 to i16
  %479 = add i16 %477, %478
  %480 = getelementptr inbounds i16, ptr %453, i64 %447
  store i16 %479, ptr %480, align 2, !tbaa !25
  %481 = getelementptr inbounds i8, ptr %404, i64 16
  %482 = load ptr, ptr %481, align 8, !tbaa !6
  %483 = or disjoint i64 %412, 2
  %484 = getelementptr inbounds ptr, ptr %408, i64 %483
  %485 = load ptr, ptr %484, align 8, !tbaa !6
  %486 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %357, i64 %401
  %487 = load i32, ptr %486, align 4, !tbaa !16
  %488 = load i16, ptr %482, align 2, !tbaa !25
  %489 = trunc i32 %487 to i16
  %490 = add i16 %488, %489
  %491 = getelementptr inbounds i16, ptr %485, i64 %411
  store i16 %490, ptr %491, align 2, !tbaa !25
  %492 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %357, i64 %422
  %493 = load i32, ptr %492, align 4, !tbaa !16
  %494 = getelementptr inbounds i8, ptr %482, i64 2
  %495 = load i16, ptr %494, align 2, !tbaa !25
  %496 = trunc i32 %493 to i16
  %497 = add i16 %495, %496
  %498 = getelementptr inbounds i16, ptr %485, i64 %429
  store i16 %497, ptr %498, align 2, !tbaa !25
  %499 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %357, i64 %431
  %500 = load i32, ptr %499, align 4, !tbaa !16
  %501 = getelementptr inbounds i8, ptr %482, i64 4
  %502 = load i16, ptr %501, align 2, !tbaa !25
  %503 = trunc i32 %500 to i16
  %504 = add i16 %502, %503
  %505 = getelementptr inbounds i16, ptr %485, i64 %438
  store i16 %504, ptr %505, align 2, !tbaa !25
  %506 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %357, i64 %440
  %507 = load i32, ptr %506, align 4, !tbaa !16
  %508 = getelementptr inbounds i8, ptr %482, i64 6
  %509 = load i16, ptr %508, align 2, !tbaa !25
  %510 = trunc i32 %507 to i16
  %511 = add i16 %509, %510
  %512 = getelementptr inbounds i16, ptr %485, i64 %447
  store i16 %511, ptr %512, align 2, !tbaa !25
  %513 = getelementptr inbounds i8, ptr %404, i64 24
  %514 = load ptr, ptr %513, align 8, !tbaa !6
  %515 = or disjoint i64 %412, 3
  %516 = getelementptr inbounds ptr, ptr %408, i64 %515
  %517 = load ptr, ptr %516, align 8, !tbaa !6
  %518 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %354, i64 %401
  %519 = load i32, ptr %518, align 4, !tbaa !16
  %520 = load i16, ptr %514, align 2, !tbaa !25
  %521 = trunc i32 %519 to i16
  %522 = add i16 %520, %521
  %523 = getelementptr inbounds i16, ptr %517, i64 %411
  store i16 %522, ptr %523, align 2, !tbaa !25
  %524 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %354, i64 %422
  %525 = load i32, ptr %524, align 4, !tbaa !16
  %526 = getelementptr inbounds i8, ptr %514, i64 2
  %527 = load i16, ptr %526, align 2, !tbaa !25
  %528 = trunc i32 %525 to i16
  %529 = add i16 %527, %528
  %530 = getelementptr inbounds i16, ptr %517, i64 %429
  store i16 %529, ptr %530, align 2, !tbaa !25
  %531 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %354, i64 %431
  %532 = load i32, ptr %531, align 4, !tbaa !16
  %533 = getelementptr inbounds i8, ptr %514, i64 4
  %534 = load i16, ptr %533, align 2, !tbaa !25
  %535 = trunc i32 %532 to i16
  %536 = add i16 %534, %535
  %537 = getelementptr inbounds i16, ptr %517, i64 %438
  store i16 %536, ptr %537, align 2, !tbaa !25
  %538 = getelementptr inbounds [16 x [16 x i32]], ptr %7, i64 0, i64 %354, i64 %440
  %539 = load i32, ptr %538, align 4, !tbaa !16
  %540 = getelementptr inbounds i8, ptr %514, i64 6
  %541 = load i16, ptr %540, align 2, !tbaa !25
  %542 = trunc i32 %539 to i16
  %543 = add i16 %541, %542
  %544 = getelementptr inbounds i16, ptr %517, i64 %447
  store i16 %543, ptr %544, align 2, !tbaa !25
  %545 = add nsw i64 %359, 1
  %546 = icmp eq i64 %545, %349
  br i1 %546, label %547, label %358

547:                                              ; preds = %385
  %548 = add nsw i64 %351, 1
  %549 = icmp eq i64 %548, %348
  br i1 %549, label %649, label %350

550:                                              ; preds = %336, %337, %335
  %551 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %552 = getelementptr inbounds i8, ptr %551, i64 6424
  %553 = load ptr, ptr %552, align 8, !tbaa !19
  %554 = getelementptr inbounds i8, ptr %8, i64 156
  %555 = load i32, ptr %554, align 4, !tbaa !21
  %556 = getelementptr inbounds i8, ptr %8, i64 152
  %557 = load i32, ptr %556, align 8, !tbaa !22
  %558 = load ptr, ptr @decs, align 8, !tbaa !6
  %559 = getelementptr inbounds i8, ptr %558, i64 8
  %560 = load ptr, ptr %559, align 8, !tbaa !23
  %561 = sext i32 %0 to i64
  %562 = getelementptr inbounds ptr, ptr %560, i64 %561
  %563 = load ptr, ptr %562, align 8, !tbaa !6
  %564 = sext i32 %23 to i64
  %565 = sext i32 %555 to i64
  %566 = sext i32 %24 to i64
  %567 = sext i32 %19 to i64
  %568 = sext i32 %557 to i64
  %569 = sext i32 %20 to i64
  %570 = add nsw i64 %565, %564
  %571 = getelementptr inbounds ptr, ptr %553, i64 %570
  %572 = load ptr, ptr %571, align 8, !tbaa !6
  %573 = getelementptr inbounds ptr, ptr %563, i64 %570
  %574 = load ptr, ptr %573, align 8, !tbaa !6
  %575 = or disjoint i64 %564, 1
  %576 = icmp slt i64 %575, %566
  %577 = add nsw i64 %575, %565
  %578 = getelementptr inbounds ptr, ptr %553, i64 %577
  %579 = getelementptr inbounds ptr, ptr %563, i64 %577
  %580 = or disjoint i64 %564, 2
  %581 = add nsw i64 %580, %565
  %582 = getelementptr inbounds ptr, ptr %553, i64 %581
  %583 = getelementptr inbounds ptr, ptr %563, i64 %581
  %584 = or disjoint i64 %564, 3
  %585 = add nsw i64 %584, %565
  %586 = getelementptr inbounds ptr, ptr %553, i64 %585
  %587 = getelementptr inbounds ptr, ptr %563, i64 %585
  %588 = or disjoint i64 %564, 4
  %589 = add nsw i64 %588, %565
  %590 = getelementptr inbounds ptr, ptr %553, i64 %589
  %591 = getelementptr inbounds ptr, ptr %563, i64 %589
  %592 = or disjoint i64 %564, 5
  %593 = add nsw i64 %592, %565
  %594 = getelementptr inbounds ptr, ptr %553, i64 %593
  %595 = getelementptr inbounds ptr, ptr %563, i64 %593
  %596 = or disjoint i64 %564, 6
  %597 = add nsw i64 %596, %565
  %598 = getelementptr inbounds ptr, ptr %553, i64 %597
  %599 = getelementptr inbounds ptr, ptr %563, i64 %597
  %600 = or disjoint i64 %564, 7
  %601 = add nsw i64 %600, %565
  %602 = getelementptr inbounds ptr, ptr %553, i64 %601
  %603 = getelementptr inbounds ptr, ptr %563, i64 %601
  br label %604

604:                                              ; preds = %550, %646
  %605 = phi i64 [ %567, %550 ], [ %647, %646 ]
  %606 = add nsw i64 %605, %568
  %607 = getelementptr inbounds i16, ptr %572, i64 %606
  %608 = load i16, ptr %607, align 2, !tbaa !25
  %609 = getelementptr inbounds i16, ptr %574, i64 %606
  store i16 %608, ptr %609, align 2, !tbaa !25
  br i1 %576, label %610, label %646

610:                                              ; preds = %604
  %611 = load ptr, ptr %578, align 8, !tbaa !6
  %612 = getelementptr inbounds i16, ptr %611, i64 %606
  %613 = load i16, ptr %612, align 2, !tbaa !25
  %614 = load ptr, ptr %579, align 8, !tbaa !6
  %615 = getelementptr inbounds i16, ptr %614, i64 %606
  store i16 %613, ptr %615, align 2, !tbaa !25
  %616 = load ptr, ptr %582, align 8, !tbaa !6
  %617 = getelementptr inbounds i16, ptr %616, i64 %606
  %618 = load i16, ptr %617, align 2, !tbaa !25
  %619 = load ptr, ptr %583, align 8, !tbaa !6
  %620 = getelementptr inbounds i16, ptr %619, i64 %606
  store i16 %618, ptr %620, align 2, !tbaa !25
  %621 = load ptr, ptr %586, align 8, !tbaa !6
  %622 = getelementptr inbounds i16, ptr %621, i64 %606
  %623 = load i16, ptr %622, align 2, !tbaa !25
  %624 = load ptr, ptr %587, align 8, !tbaa !6
  %625 = getelementptr inbounds i16, ptr %624, i64 %606
  store i16 %623, ptr %625, align 2, !tbaa !25
  %626 = load ptr, ptr %590, align 8, !tbaa !6
  %627 = getelementptr inbounds i16, ptr %626, i64 %606
  %628 = load i16, ptr %627, align 2, !tbaa !25
  %629 = load ptr, ptr %591, align 8, !tbaa !6
  %630 = getelementptr inbounds i16, ptr %629, i64 %606
  store i16 %628, ptr %630, align 2, !tbaa !25
  %631 = load ptr, ptr %594, align 8, !tbaa !6
  %632 = getelementptr inbounds i16, ptr %631, i64 %606
  %633 = load i16, ptr %632, align 2, !tbaa !25
  %634 = load ptr, ptr %595, align 8, !tbaa !6
  %635 = getelementptr inbounds i16, ptr %634, i64 %606
  store i16 %633, ptr %635, align 2, !tbaa !25
  %636 = load ptr, ptr %598, align 8, !tbaa !6
  %637 = getelementptr inbounds i16, ptr %636, i64 %606
  %638 = load i16, ptr %637, align 2, !tbaa !25
  %639 = load ptr, ptr %599, align 8, !tbaa !6
  %640 = getelementptr inbounds i16, ptr %639, i64 %606
  store i16 %638, ptr %640, align 2, !tbaa !25
  %641 = load ptr, ptr %602, align 8, !tbaa !6
  %642 = getelementptr inbounds i16, ptr %641, i64 %606
  %643 = load i16, ptr %642, align 2, !tbaa !25
  %644 = load ptr, ptr %603, align 8, !tbaa !6
  %645 = getelementptr inbounds i16, ptr %644, i64 %606
  store i16 %643, ptr %645, align 2, !tbaa !25
  br label %646

646:                                              ; preds = %610, %604
  %647 = add nsw i64 %605, 1
  %648 = icmp eq i64 %647, %569
  br i1 %648, label %649, label %604

649:                                              ; preds = %646, %547, %126
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @Get_Reference_Block(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  %7 = shl nsw i32 %1, 4
  %8 = add nsw i32 %7, %4
  %9 = shl nsw i32 %2, 4
  %10 = add nsw i32 %9, %3
  %11 = load ptr, ptr %5, align 8, !tbaa !6
  %12 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %8, i32 noundef signext %10)
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %11, align 2, !tbaa !25
  %14 = add i32 %10, 4
  %15 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %8, i32 noundef signext %14)
  %16 = zext i8 %15 to i16
  %17 = getelementptr inbounds i8, ptr %11, i64 2
  store i16 %16, ptr %17, align 2, !tbaa !25
  %18 = add i32 %10, 8
  %19 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %8, i32 noundef signext %18)
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds i8, ptr %11, i64 4
  store i16 %20, ptr %21, align 2, !tbaa !25
  %22 = add i32 %10, 12
  %23 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %8, i32 noundef signext %22)
  %24 = zext i8 %23 to i16
  %25 = getelementptr inbounds i8, ptr %11, i64 6
  store i16 %24, ptr %25, align 2, !tbaa !25
  %26 = add i32 %8, 4
  %27 = getelementptr inbounds i8, ptr %5, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %26, i32 noundef signext %10)
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %28, align 2, !tbaa !25
  %31 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %26, i32 noundef signext %14)
  %32 = zext i8 %31 to i16
  %33 = getelementptr inbounds i8, ptr %28, i64 2
  store i16 %32, ptr %33, align 2, !tbaa !25
  %34 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %26, i32 noundef signext %18)
  %35 = zext i8 %34 to i16
  %36 = getelementptr inbounds i8, ptr %28, i64 4
  store i16 %35, ptr %36, align 2, !tbaa !25
  %37 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %26, i32 noundef signext %22)
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %28, i64 6
  store i16 %38, ptr %39, align 2, !tbaa !25
  %40 = add i32 %8, 8
  %41 = getelementptr inbounds i8, ptr %5, i64 16
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %40, i32 noundef signext %10)
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %42, align 2, !tbaa !25
  %45 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %40, i32 noundef signext %14)
  %46 = zext i8 %45 to i16
  %47 = getelementptr inbounds i8, ptr %42, i64 2
  store i16 %46, ptr %47, align 2, !tbaa !25
  %48 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %40, i32 noundef signext %18)
  %49 = zext i8 %48 to i16
  %50 = getelementptr inbounds i8, ptr %42, i64 4
  store i16 %49, ptr %50, align 2, !tbaa !25
  %51 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %40, i32 noundef signext %22)
  %52 = zext i8 %51 to i16
  %53 = getelementptr inbounds i8, ptr %42, i64 6
  store i16 %52, ptr %53, align 2, !tbaa !25
  %54 = add i32 %8, 12
  %55 = getelementptr inbounds i8, ptr %5, i64 24
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %54, i32 noundef signext %10)
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %56, align 2, !tbaa !25
  %59 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %54, i32 noundef signext %14)
  %60 = zext i8 %59 to i16
  %61 = getelementptr inbounds i8, ptr %56, i64 2
  store i16 %60, ptr %61, align 2, !tbaa !25
  %62 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %54, i32 noundef signext %18)
  %63 = zext i8 %62 to i16
  %64 = getelementptr inbounds i8, ptr %56, i64 4
  store i16 %63, ptr %64, align 2, !tbaa !25
  %65 = tail call zeroext i8 @Get_Reference_Pixel(ptr noundef %0, i32 noundef signext %54, i32 noundef signext %22)
  %66 = zext i8 %65 to i16
  %67 = getelementptr inbounds i8, ptr %56, i64 6
  store i16 %66, ptr %67, align 2, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local void @decode_one_mb(i32 noundef signext %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local zeroext i8 @Get_Reference_Pixel(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #4 {
  %4 = and i32 %2, 3
  %5 = and i32 %1, 3
  %6 = ashr i32 %2, 2
  %7 = ashr i32 %1, 2
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 52
  %10 = load i32, ptr %9, align 4, !tbaa !33
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds i8, ptr %8, i64 60
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = add nsw i32 %13, -1
  %15 = or i32 %2, %1
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = tail call i32 @llvm.smin.i32(i32 %14, i32 %7)
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0)
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = tail call i32 @llvm.smin.i32(i32 %11, i32 %6)
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0)
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds i16, ptr %23, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !25
  %29 = zext i16 %28 to i32
  br label %843

30:                                               ; preds = %3
  %31 = icmp eq i32 %5, 0
  br i1 %31, label %32, label %107

32:                                               ; preds = %30
  %33 = tail call i32 @llvm.smin.i32(i32 %14, i32 %7)
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = add nsw i32 %6, -2
  %39 = tail call i32 @llvm.smin.i32(i32 %11, i32 %38)
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0)
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %37, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !25
  %44 = zext i16 %43 to i32
  %45 = add nsw i32 %6, -1
  %46 = tail call i32 @llvm.smin.i32(i32 %11, i32 %45)
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0)
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i16, ptr %37, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !25
  %51 = zext i16 %50 to i32
  %52 = mul nsw i32 %51, -5
  %53 = add nsw i32 %52, %44
  %54 = tail call i32 @llvm.smin.i32(i32 %11, i32 %6)
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 0)
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds i16, ptr %37, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !25
  %59 = zext i16 %58 to i32
  %60 = mul nuw nsw i32 %59, 20
  %61 = add nsw i32 %60, %53
  %62 = add nsw i32 %6, 1
  %63 = tail call i32 @llvm.smin.i32(i32 %11, i32 %62)
  %64 = tail call i32 @llvm.smax.i32(i32 %63, i32 0)
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds i16, ptr %37, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !25
  %68 = zext i16 %67 to i32
  %69 = mul nuw nsw i32 %68, 20
  %70 = add nsw i32 %69, %61
  %71 = add nsw i32 %6, 2
  %72 = tail call i32 @llvm.smin.i32(i32 %11, i32 %71)
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 0)
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %37, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !25
  %77 = zext i16 %76 to i32
  %78 = mul nsw i32 %77, -5
  %79 = add nsw i32 %78, %70
  %80 = add nsw i32 %6, 3
  %81 = tail call i32 @llvm.smin.i32(i32 %11, i32 %80)
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 0)
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds i16, ptr %37, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !25
  %86 = zext i16 %85 to i32
  %87 = add nsw i32 %79, %86
  %88 = getelementptr inbounds i8, ptr %8, i64 90532
  %89 = load i32, ptr %88, align 4, !tbaa !35
  %90 = add nsw i32 %87, 16
  %91 = sdiv i32 %90, 32
  %92 = tail call i32 @llvm.smin.i32(i32 %89, i32 %91)
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 0)
  switch i32 %4, label %843 [
    i32 1, label %94
    i32 3, label %97
  ]

94:                                               ; preds = %32
  %95 = add nuw nsw i32 %93, %59
  %96 = lshr i32 %95, 1
  br label %843

97:                                               ; preds = %32
  %98 = add nsw i32 %6, 1
  %99 = tail call i32 @llvm.smin.i32(i32 %11, i32 %98)
  %100 = tail call i32 @llvm.smax.i32(i32 %99, i32 0)
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds i16, ptr %37, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !25
  %104 = zext i16 %103 to i32
  %105 = add nuw nsw i32 %93, %104
  %106 = lshr i32 %105, 1
  br label %843

107:                                              ; preds = %30
  switch i32 %4, label %445 [
    i32 0, label %344
    i32 2, label %108
  ]

108:                                              ; preds = %107
  %109 = add nsw i32 %6, -2
  %110 = tail call i32 @llvm.smin.i32(i32 %11, i32 %109)
  %111 = tail call i32 @llvm.smax.i32(i32 %110, i32 0)
  %112 = zext nneg i32 %111 to i64
  %113 = add nsw i32 %7, -2
  %114 = tail call i32 @llvm.smin.i32(i32 %14, i32 %113)
  %115 = tail call i32 @llvm.smax.i32(i32 %114, i32 0)
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %0, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = getelementptr inbounds i16, ptr %118, i64 %112
  %120 = load i16, ptr %119, align 2, !tbaa !25
  %121 = zext i16 %120 to i32
  %122 = add nsw i32 %6, -1
  %123 = tail call i32 @llvm.smin.i32(i32 %11, i32 %122)
  %124 = tail call i32 @llvm.smax.i32(i32 %123, i32 0)
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds i16, ptr %118, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !25
  %128 = zext i16 %127 to i32
  %129 = mul nsw i32 %128, -5
  %130 = add nsw i32 %129, %121
  %131 = tail call i32 @llvm.smin.i32(i32 %11, i32 %6)
  %132 = tail call i32 @llvm.smax.i32(i32 %131, i32 0)
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds i16, ptr %118, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !25
  %136 = zext i16 %135 to i32
  %137 = mul nuw nsw i32 %136, 20
  %138 = add nsw i32 %137, %130
  %139 = add nsw i32 %6, 1
  %140 = tail call i32 @llvm.smin.i32(i32 %11, i32 %139)
  %141 = tail call i32 @llvm.smax.i32(i32 %140, i32 0)
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds i16, ptr %118, i64 %142
  %144 = load i16, ptr %143, align 2, !tbaa !25
  %145 = zext i16 %144 to i32
  %146 = mul nuw nsw i32 %145, 20
  %147 = add nsw i32 %146, %138
  %148 = add nsw i32 %6, 2
  %149 = tail call i32 @llvm.smin.i32(i32 %11, i32 %148)
  %150 = tail call i32 @llvm.smax.i32(i32 %149, i32 0)
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds i16, ptr %118, i64 %151
  %153 = load i16, ptr %152, align 2, !tbaa !25
  %154 = zext i16 %153 to i32
  %155 = mul nsw i32 %154, -5
  %156 = add nsw i32 %155, %147
  %157 = add nsw i32 %6, 3
  %158 = tail call i32 @llvm.smin.i32(i32 %11, i32 %157)
  %159 = tail call i32 @llvm.smax.i32(i32 %158, i32 0)
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds i16, ptr %118, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !25
  %163 = zext i16 %162 to i32
  %164 = add nsw i32 %156, %163
  %165 = add nsw i32 %7, -1
  %166 = tail call i32 @llvm.smin.i32(i32 %14, i32 %165)
  %167 = tail call i32 @llvm.smax.i32(i32 %166, i32 0)
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %0, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !6
  %171 = getelementptr inbounds i16, ptr %170, i64 %112
  %172 = load i16, ptr %171, align 2, !tbaa !25
  %173 = zext i16 %172 to i32
  %174 = getelementptr inbounds i16, ptr %170, i64 %125
  %175 = load i16, ptr %174, align 2, !tbaa !25
  %176 = zext i16 %175 to i32
  %177 = mul nsw i32 %176, -5
  %178 = add nsw i32 %177, %173
  %179 = getelementptr inbounds i16, ptr %170, i64 %133
  %180 = load i16, ptr %179, align 2, !tbaa !25
  %181 = zext i16 %180 to i32
  %182 = mul nuw nsw i32 %181, 20
  %183 = add nsw i32 %182, %178
  %184 = getelementptr inbounds i16, ptr %170, i64 %142
  %185 = load i16, ptr %184, align 2, !tbaa !25
  %186 = zext i16 %185 to i32
  %187 = mul nuw nsw i32 %186, 20
  %188 = add nsw i32 %187, %183
  %189 = getelementptr inbounds i16, ptr %170, i64 %151
  %190 = load i16, ptr %189, align 2, !tbaa !25
  %191 = zext i16 %190 to i32
  %192 = mul nsw i32 %191, -5
  %193 = add nsw i32 %192, %188
  %194 = getelementptr inbounds i16, ptr %170, i64 %160
  %195 = load i16, ptr %194, align 2, !tbaa !25
  %196 = zext i16 %195 to i32
  %197 = add nsw i32 %193, %196
  %198 = tail call i32 @llvm.smin.i32(i32 %14, i32 %7)
  %199 = tail call i32 @llvm.smax.i32(i32 %198, i32 0)
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds ptr, ptr %0, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = getelementptr inbounds i16, ptr %202, i64 %112
  %204 = load i16, ptr %203, align 2, !tbaa !25
  %205 = zext i16 %204 to i32
  %206 = getelementptr inbounds i16, ptr %202, i64 %125
  %207 = load i16, ptr %206, align 2, !tbaa !25
  %208 = zext i16 %207 to i32
  %209 = mul nsw i32 %208, -5
  %210 = add nsw i32 %209, %205
  %211 = getelementptr inbounds i16, ptr %202, i64 %133
  %212 = load i16, ptr %211, align 2, !tbaa !25
  %213 = zext i16 %212 to i32
  %214 = mul nuw nsw i32 %213, 20
  %215 = add nsw i32 %214, %210
  %216 = getelementptr inbounds i16, ptr %202, i64 %142
  %217 = load i16, ptr %216, align 2, !tbaa !25
  %218 = zext i16 %217 to i32
  %219 = mul nuw nsw i32 %218, 20
  %220 = add nsw i32 %219, %215
  %221 = getelementptr inbounds i16, ptr %202, i64 %151
  %222 = load i16, ptr %221, align 2, !tbaa !25
  %223 = zext i16 %222 to i32
  %224 = mul nsw i32 %223, -5
  %225 = add nsw i32 %224, %220
  %226 = getelementptr inbounds i16, ptr %202, i64 %160
  %227 = load i16, ptr %226, align 2, !tbaa !25
  %228 = zext i16 %227 to i32
  %229 = add nsw i32 %225, %228
  %230 = add nsw i32 %7, 1
  %231 = tail call i32 @llvm.smin.i32(i32 %14, i32 %230)
  %232 = tail call i32 @llvm.smax.i32(i32 %231, i32 0)
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds ptr, ptr %0, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = getelementptr inbounds i16, ptr %235, i64 %112
  %237 = load i16, ptr %236, align 2, !tbaa !25
  %238 = zext i16 %237 to i32
  %239 = getelementptr inbounds i16, ptr %235, i64 %125
  %240 = load i16, ptr %239, align 2, !tbaa !25
  %241 = zext i16 %240 to i32
  %242 = mul nsw i32 %241, -5
  %243 = add nsw i32 %242, %238
  %244 = getelementptr inbounds i16, ptr %235, i64 %133
  %245 = load i16, ptr %244, align 2, !tbaa !25
  %246 = zext i16 %245 to i32
  %247 = mul nuw nsw i32 %246, 20
  %248 = add nsw i32 %247, %243
  %249 = getelementptr inbounds i16, ptr %235, i64 %142
  %250 = load i16, ptr %249, align 2, !tbaa !25
  %251 = zext i16 %250 to i32
  %252 = mul nuw nsw i32 %251, 20
  %253 = add nsw i32 %252, %248
  %254 = getelementptr inbounds i16, ptr %235, i64 %151
  %255 = load i16, ptr %254, align 2, !tbaa !25
  %256 = zext i16 %255 to i32
  %257 = mul nsw i32 %256, -5
  %258 = add nsw i32 %257, %253
  %259 = getelementptr inbounds i16, ptr %235, i64 %160
  %260 = load i16, ptr %259, align 2, !tbaa !25
  %261 = zext i16 %260 to i32
  %262 = add nsw i32 %258, %261
  %263 = add nsw i32 %7, 2
  %264 = tail call i32 @llvm.smin.i32(i32 %14, i32 %263)
  %265 = tail call i32 @llvm.smax.i32(i32 %264, i32 0)
  %266 = zext nneg i32 %265 to i64
  %267 = getelementptr inbounds ptr, ptr %0, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !6
  %269 = getelementptr inbounds i16, ptr %268, i64 %112
  %270 = load i16, ptr %269, align 2, !tbaa !25
  %271 = zext i16 %270 to i32
  %272 = getelementptr inbounds i16, ptr %268, i64 %125
  %273 = load i16, ptr %272, align 2, !tbaa !25
  %274 = zext i16 %273 to i32
  %275 = mul nsw i32 %274, -5
  %276 = add nsw i32 %275, %271
  %277 = getelementptr inbounds i16, ptr %268, i64 %133
  %278 = load i16, ptr %277, align 2, !tbaa !25
  %279 = zext i16 %278 to i32
  %280 = mul nuw nsw i32 %279, 20
  %281 = add nsw i32 %280, %276
  %282 = getelementptr inbounds i16, ptr %268, i64 %142
  %283 = load i16, ptr %282, align 2, !tbaa !25
  %284 = zext i16 %283 to i32
  %285 = mul nuw nsw i32 %284, 20
  %286 = add nsw i32 %285, %281
  %287 = getelementptr inbounds i16, ptr %268, i64 %151
  %288 = load i16, ptr %287, align 2, !tbaa !25
  %289 = zext i16 %288 to i32
  %290 = mul nsw i32 %289, -5
  %291 = add nsw i32 %290, %286
  %292 = getelementptr inbounds i16, ptr %268, i64 %160
  %293 = load i16, ptr %292, align 2, !tbaa !25
  %294 = zext i16 %293 to i32
  %295 = add nsw i32 %291, %294
  %296 = add nsw i32 %7, 3
  %297 = tail call i32 @llvm.smin.i32(i32 %14, i32 %296)
  %298 = tail call i32 @llvm.smax.i32(i32 %297, i32 0)
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds ptr, ptr %0, i64 %299
  %301 = load ptr, ptr %300, align 8, !tbaa !6
  %302 = getelementptr inbounds i16, ptr %301, i64 %112
  %303 = load i16, ptr %302, align 2, !tbaa !25
  %304 = zext i16 %303 to i32
  %305 = getelementptr inbounds i16, ptr %301, i64 %125
  %306 = load i16, ptr %305, align 2, !tbaa !25
  %307 = zext i16 %306 to i32
  %308 = mul nsw i32 %307, -5
  %309 = add nsw i32 %308, %304
  %310 = getelementptr inbounds i16, ptr %301, i64 %133
  %311 = load i16, ptr %310, align 2, !tbaa !25
  %312 = zext i16 %311 to i32
  %313 = mul nuw nsw i32 %312, 20
  %314 = add nsw i32 %313, %309
  %315 = getelementptr inbounds i16, ptr %301, i64 %142
  %316 = load i16, ptr %315, align 2, !tbaa !25
  %317 = zext i16 %316 to i32
  %318 = mul nuw nsw i32 %317, 20
  %319 = add nsw i32 %318, %314
  %320 = getelementptr inbounds i16, ptr %301, i64 %151
  %321 = load i16, ptr %320, align 2, !tbaa !25
  %322 = zext i16 %321 to i32
  %323 = mul nsw i32 %322, -5
  %324 = add nsw i32 %323, %319
  %325 = getelementptr inbounds i16, ptr %301, i64 %160
  %326 = load i16, ptr %325, align 2, !tbaa !25
  %327 = zext i16 %326 to i32
  %328 = add nsw i32 %324, %327
  %329 = mul nsw i32 %197, -5
  %330 = add nsw i32 %329, %164
  %331 = mul nsw i32 %229, 20
  %332 = add nsw i32 %331, %330
  %333 = mul nsw i32 %262, 20
  %334 = add nsw i32 %333, %332
  %335 = mul nsw i32 %295, -5
  %336 = add nsw i32 %335, %334
  %337 = add nsw i32 %328, %336
  %338 = getelementptr inbounds i8, ptr %8, i64 90532
  %339 = load i32, ptr %338, align 4, !tbaa !35
  %340 = add nsw i32 %337, 512
  %341 = sdiv i32 %340, 1024
  %342 = tail call i32 @llvm.smin.i32(i32 %339, i32 %341)
  %343 = tail call i32 @llvm.smax.i32(i32 %342, i32 0)
  switch i32 %5, label %843 [
    i32 1, label %431
    i32 3, label %438
  ]

344:                                              ; preds = %107
  %345 = tail call i32 @llvm.smin.i32(i32 %11, i32 %6)
  %346 = tail call i32 @llvm.smax.i32(i32 %345, i32 0)
  %347 = zext nneg i32 %346 to i64
  %348 = add nsw i32 %7, -2
  %349 = tail call i32 @llvm.smin.i32(i32 %14, i32 %348)
  %350 = tail call i32 @llvm.smax.i32(i32 %349, i32 0)
  %351 = zext nneg i32 %350 to i64
  %352 = getelementptr inbounds ptr, ptr %0, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !6
  %354 = getelementptr inbounds i16, ptr %353, i64 %347
  %355 = load i16, ptr %354, align 2, !tbaa !25
  %356 = zext i16 %355 to i32
  %357 = add nsw i32 %7, -1
  %358 = tail call i32 @llvm.smin.i32(i32 %14, i32 %357)
  %359 = tail call i32 @llvm.smax.i32(i32 %358, i32 0)
  %360 = zext nneg i32 %359 to i64
  %361 = getelementptr inbounds ptr, ptr %0, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !6
  %363 = getelementptr inbounds i16, ptr %362, i64 %347
  %364 = load i16, ptr %363, align 2, !tbaa !25
  %365 = zext i16 %364 to i32
  %366 = mul nsw i32 %365, -5
  %367 = add nsw i32 %366, %356
  %368 = tail call i32 @llvm.smin.i32(i32 %14, i32 %7)
  %369 = tail call i32 @llvm.smax.i32(i32 %368, i32 0)
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds ptr, ptr %0, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !6
  %373 = getelementptr inbounds i16, ptr %372, i64 %347
  %374 = load i16, ptr %373, align 2, !tbaa !25
  %375 = zext i16 %374 to i32
  %376 = mul nuw nsw i32 %375, 20
  %377 = add nsw i32 %376, %367
  %378 = add nsw i32 %7, 1
  %379 = tail call i32 @llvm.smin.i32(i32 %14, i32 %378)
  %380 = tail call i32 @llvm.smax.i32(i32 %379, i32 0)
  %381 = zext nneg i32 %380 to i64
  %382 = getelementptr inbounds ptr, ptr %0, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !6
  %384 = getelementptr inbounds i16, ptr %383, i64 %347
  %385 = load i16, ptr %384, align 2, !tbaa !25
  %386 = zext i16 %385 to i32
  %387 = mul nuw nsw i32 %386, 20
  %388 = add nsw i32 %387, %377
  %389 = add nsw i32 %7, 2
  %390 = tail call i32 @llvm.smin.i32(i32 %14, i32 %389)
  %391 = tail call i32 @llvm.smax.i32(i32 %390, i32 0)
  %392 = zext nneg i32 %391 to i64
  %393 = getelementptr inbounds ptr, ptr %0, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !6
  %395 = getelementptr inbounds i16, ptr %394, i64 %347
  %396 = load i16, ptr %395, align 2, !tbaa !25
  %397 = zext i16 %396 to i32
  %398 = mul nsw i32 %397, -5
  %399 = add nsw i32 %398, %388
  %400 = add nsw i32 %7, 3
  %401 = tail call i32 @llvm.smin.i32(i32 %14, i32 %400)
  %402 = tail call i32 @llvm.smax.i32(i32 %401, i32 0)
  %403 = zext nneg i32 %402 to i64
  %404 = getelementptr inbounds ptr, ptr %0, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !6
  %406 = getelementptr inbounds i16, ptr %405, i64 %347
  %407 = load i16, ptr %406, align 2, !tbaa !25
  %408 = zext i16 %407 to i32
  %409 = add nsw i32 %399, %408
  %410 = getelementptr inbounds i8, ptr %8, i64 90532
  %411 = load i32, ptr %410, align 4, !tbaa !35
  %412 = add nsw i32 %409, 16
  %413 = sdiv i32 %412, 32
  %414 = tail call i32 @llvm.smin.i32(i32 %411, i32 %413)
  %415 = tail call i32 @llvm.smax.i32(i32 %414, i32 0)
  switch i32 %5, label %843 [
    i32 1, label %416
    i32 3, label %419
  ]

416:                                              ; preds = %344
  %417 = add nuw nsw i32 %415, %375
  %418 = lshr i32 %417, 1
  br label %843

419:                                              ; preds = %344
  %420 = add nsw i32 %7, 1
  %421 = tail call i32 @llvm.smin.i32(i32 %14, i32 %420)
  %422 = tail call i32 @llvm.smax.i32(i32 %421, i32 0)
  %423 = zext nneg i32 %422 to i64
  %424 = getelementptr inbounds ptr, ptr %0, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !6
  %426 = getelementptr inbounds i16, ptr %425, i64 %347
  %427 = load i16, ptr %426, align 2, !tbaa !25
  %428 = zext i16 %427 to i32
  %429 = add nuw nsw i32 %415, %428
  %430 = lshr i32 %429, 1
  br label %843

431:                                              ; preds = %108
  %432 = add nsw i32 %229, 16
  %433 = sdiv i32 %432, 32
  %434 = tail call i32 @llvm.smin.i32(i32 %339, i32 %433)
  %435 = tail call i32 @llvm.smax.i32(i32 %434, i32 0)
  %436 = add nuw nsw i32 %435, %343
  %437 = lshr i32 %436, 1
  br label %843

438:                                              ; preds = %108
  %439 = add nsw i32 %262, 16
  %440 = sdiv i32 %439, 32
  %441 = tail call i32 @llvm.smin.i32(i32 %339, i32 %440)
  %442 = tail call i32 @llvm.smax.i32(i32 %441, i32 0)
  %443 = add nuw nsw i32 %442, %343
  %444 = lshr i32 %443, 1
  br label %843

445:                                              ; preds = %107
  %446 = icmp eq i32 %5, 2
  br i1 %446, label %447, label %704

447:                                              ; preds = %445
  %448 = add nsw i32 %7, -2
  %449 = tail call i32 @llvm.smin.i32(i32 %14, i32 %448)
  %450 = tail call i32 @llvm.smax.i32(i32 %449, i32 0)
  %451 = zext nneg i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %0, i64 %451
  %453 = add nsw i32 %6, -2
  %454 = tail call i32 @llvm.smin.i32(i32 %11, i32 %453)
  %455 = tail call i32 @llvm.smax.i32(i32 %454, i32 0)
  %456 = zext nneg i32 %455 to i64
  %457 = load ptr, ptr %452, align 8, !tbaa !6
  %458 = getelementptr inbounds i16, ptr %457, i64 %456
  %459 = load i16, ptr %458, align 2, !tbaa !25
  %460 = zext i16 %459 to i32
  %461 = add nsw i32 %7, -1
  %462 = tail call i32 @llvm.smin.i32(i32 %14, i32 %461)
  %463 = tail call i32 @llvm.smax.i32(i32 %462, i32 0)
  %464 = zext nneg i32 %463 to i64
  %465 = getelementptr inbounds ptr, ptr %0, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !6
  %467 = getelementptr inbounds i16, ptr %466, i64 %456
  %468 = load i16, ptr %467, align 2, !tbaa !25
  %469 = zext i16 %468 to i32
  %470 = mul nsw i32 %469, -5
  %471 = add nsw i32 %470, %460
  %472 = tail call i32 @llvm.smin.i32(i32 %14, i32 %7)
  %473 = tail call i32 @llvm.smax.i32(i32 %472, i32 0)
  %474 = zext nneg i32 %473 to i64
  %475 = getelementptr inbounds ptr, ptr %0, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !6
  %477 = getelementptr inbounds i16, ptr %476, i64 %456
  %478 = load i16, ptr %477, align 2, !tbaa !25
  %479 = zext i16 %478 to i32
  %480 = mul nuw nsw i32 %479, 20
  %481 = add nsw i32 %480, %471
  %482 = add nsw i32 %7, 1
  %483 = tail call i32 @llvm.smin.i32(i32 %14, i32 %482)
  %484 = tail call i32 @llvm.smax.i32(i32 %483, i32 0)
  %485 = zext nneg i32 %484 to i64
  %486 = getelementptr inbounds ptr, ptr %0, i64 %485
  %487 = load ptr, ptr %486, align 8, !tbaa !6
  %488 = getelementptr inbounds i16, ptr %487, i64 %456
  %489 = load i16, ptr %488, align 2, !tbaa !25
  %490 = zext i16 %489 to i32
  %491 = mul nuw nsw i32 %490, 20
  %492 = add nsw i32 %491, %481
  %493 = add nsw i32 %7, 2
  %494 = tail call i32 @llvm.smin.i32(i32 %14, i32 %493)
  %495 = tail call i32 @llvm.smax.i32(i32 %494, i32 0)
  %496 = zext nneg i32 %495 to i64
  %497 = getelementptr inbounds ptr, ptr %0, i64 %496
  %498 = load ptr, ptr %497, align 8, !tbaa !6
  %499 = getelementptr inbounds i16, ptr %498, i64 %456
  %500 = load i16, ptr %499, align 2, !tbaa !25
  %501 = zext i16 %500 to i32
  %502 = mul nsw i32 %501, -5
  %503 = add nsw i32 %502, %492
  %504 = add nsw i32 %7, 3
  %505 = tail call i32 @llvm.smin.i32(i32 %14, i32 %504)
  %506 = tail call i32 @llvm.smax.i32(i32 %505, i32 0)
  %507 = zext nneg i32 %506 to i64
  %508 = getelementptr inbounds ptr, ptr %0, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !6
  %510 = getelementptr inbounds i16, ptr %509, i64 %456
  %511 = load i16, ptr %510, align 2, !tbaa !25
  %512 = zext i16 %511 to i32
  %513 = add nsw i32 %503, %512
  %514 = add nsw i32 %6, -1
  %515 = tail call i32 @llvm.smin.i32(i32 %11, i32 %514)
  %516 = tail call i32 @llvm.smax.i32(i32 %515, i32 0)
  %517 = zext nneg i32 %516 to i64
  %518 = getelementptr inbounds i16, ptr %457, i64 %517
  %519 = load i16, ptr %518, align 2, !tbaa !25
  %520 = zext i16 %519 to i32
  %521 = getelementptr inbounds i16, ptr %466, i64 %517
  %522 = load i16, ptr %521, align 2, !tbaa !25
  %523 = zext i16 %522 to i32
  %524 = mul nsw i32 %523, -5
  %525 = add nsw i32 %524, %520
  %526 = getelementptr inbounds i16, ptr %476, i64 %517
  %527 = load i16, ptr %526, align 2, !tbaa !25
  %528 = zext i16 %527 to i32
  %529 = mul nuw nsw i32 %528, 20
  %530 = add nsw i32 %529, %525
  %531 = getelementptr inbounds i16, ptr %487, i64 %517
  %532 = load i16, ptr %531, align 2, !tbaa !25
  %533 = zext i16 %532 to i32
  %534 = mul nuw nsw i32 %533, 20
  %535 = add nsw i32 %534, %530
  %536 = getelementptr inbounds i16, ptr %498, i64 %517
  %537 = load i16, ptr %536, align 2, !tbaa !25
  %538 = zext i16 %537 to i32
  %539 = mul nsw i32 %538, -5
  %540 = add nsw i32 %539, %535
  %541 = getelementptr inbounds i16, ptr %509, i64 %517
  %542 = load i16, ptr %541, align 2, !tbaa !25
  %543 = zext i16 %542 to i32
  %544 = add nsw i32 %540, %543
  %545 = tail call i32 @llvm.smin.i32(i32 %11, i32 %6)
  %546 = tail call i32 @llvm.smax.i32(i32 %545, i32 0)
  %547 = zext nneg i32 %546 to i64
  %548 = getelementptr inbounds i16, ptr %457, i64 %547
  %549 = load i16, ptr %548, align 2, !tbaa !25
  %550 = zext i16 %549 to i32
  %551 = getelementptr inbounds i16, ptr %466, i64 %547
  %552 = load i16, ptr %551, align 2, !tbaa !25
  %553 = zext i16 %552 to i32
  %554 = mul nsw i32 %553, -5
  %555 = add nsw i32 %554, %550
  %556 = getelementptr inbounds i16, ptr %476, i64 %547
  %557 = load i16, ptr %556, align 2, !tbaa !25
  %558 = zext i16 %557 to i32
  %559 = mul nuw nsw i32 %558, 20
  %560 = add nsw i32 %559, %555
  %561 = getelementptr inbounds i16, ptr %487, i64 %547
  %562 = load i16, ptr %561, align 2, !tbaa !25
  %563 = zext i16 %562 to i32
  %564 = mul nuw nsw i32 %563, 20
  %565 = add nsw i32 %564, %560
  %566 = getelementptr inbounds i16, ptr %498, i64 %547
  %567 = load i16, ptr %566, align 2, !tbaa !25
  %568 = zext i16 %567 to i32
  %569 = mul nsw i32 %568, -5
  %570 = add nsw i32 %569, %565
  %571 = getelementptr inbounds i16, ptr %509, i64 %547
  %572 = load i16, ptr %571, align 2, !tbaa !25
  %573 = zext i16 %572 to i32
  %574 = add nsw i32 %570, %573
  %575 = add nsw i32 %6, 1
  %576 = tail call i32 @llvm.smin.i32(i32 %11, i32 %575)
  %577 = tail call i32 @llvm.smax.i32(i32 %576, i32 0)
  %578 = zext nneg i32 %577 to i64
  %579 = load ptr, ptr %452, align 8, !tbaa !6
  %580 = getelementptr inbounds i16, ptr %579, i64 %578
  %581 = load i16, ptr %580, align 2, !tbaa !25
  %582 = zext i16 %581 to i32
  %583 = load ptr, ptr %465, align 8, !tbaa !6
  %584 = getelementptr inbounds i16, ptr %583, i64 %578
  %585 = load i16, ptr %584, align 2, !tbaa !25
  %586 = zext i16 %585 to i32
  %587 = mul nsw i32 %586, -5
  %588 = add nsw i32 %587, %582
  %589 = load ptr, ptr %475, align 8, !tbaa !6
  %590 = getelementptr inbounds i16, ptr %589, i64 %578
  %591 = load i16, ptr %590, align 2, !tbaa !25
  %592 = zext i16 %591 to i32
  %593 = mul nuw nsw i32 %592, 20
  %594 = add nsw i32 %593, %588
  %595 = load ptr, ptr %486, align 8, !tbaa !6
  %596 = getelementptr inbounds i16, ptr %595, i64 %578
  %597 = load i16, ptr %596, align 2, !tbaa !25
  %598 = zext i16 %597 to i32
  %599 = mul nuw nsw i32 %598, 20
  %600 = add nsw i32 %599, %594
  %601 = load ptr, ptr %497, align 8, !tbaa !6
  %602 = getelementptr inbounds i16, ptr %601, i64 %578
  %603 = load i16, ptr %602, align 2, !tbaa !25
  %604 = zext i16 %603 to i32
  %605 = mul nsw i32 %604, -5
  %606 = add nsw i32 %605, %600
  %607 = load ptr, ptr %508, align 8, !tbaa !6
  %608 = getelementptr inbounds i16, ptr %607, i64 %578
  %609 = load i16, ptr %608, align 2, !tbaa !25
  %610 = zext i16 %609 to i32
  %611 = add nsw i32 %606, %610
  %612 = add nsw i32 %6, 2
  %613 = tail call i32 @llvm.smin.i32(i32 %11, i32 %612)
  %614 = tail call i32 @llvm.smax.i32(i32 %613, i32 0)
  %615 = zext nneg i32 %614 to i64
  %616 = getelementptr inbounds i16, ptr %579, i64 %615
  %617 = load i16, ptr %616, align 2, !tbaa !25
  %618 = zext i16 %617 to i32
  %619 = getelementptr inbounds i16, ptr %583, i64 %615
  %620 = load i16, ptr %619, align 2, !tbaa !25
  %621 = zext i16 %620 to i32
  %622 = mul nsw i32 %621, -5
  %623 = add nsw i32 %622, %618
  %624 = getelementptr inbounds i16, ptr %589, i64 %615
  %625 = load i16, ptr %624, align 2, !tbaa !25
  %626 = zext i16 %625 to i32
  %627 = mul nuw nsw i32 %626, 20
  %628 = add nsw i32 %627, %623
  %629 = getelementptr inbounds i16, ptr %595, i64 %615
  %630 = load i16, ptr %629, align 2, !tbaa !25
  %631 = zext i16 %630 to i32
  %632 = mul nuw nsw i32 %631, 20
  %633 = add nsw i32 %632, %628
  %634 = getelementptr inbounds i16, ptr %601, i64 %615
  %635 = load i16, ptr %634, align 2, !tbaa !25
  %636 = zext i16 %635 to i32
  %637 = mul nsw i32 %636, -5
  %638 = add nsw i32 %637, %633
  %639 = getelementptr inbounds i16, ptr %607, i64 %615
  %640 = load i16, ptr %639, align 2, !tbaa !25
  %641 = zext i16 %640 to i32
  %642 = add nsw i32 %638, %641
  %643 = add nsw i32 %6, 3
  %644 = tail call i32 @llvm.smin.i32(i32 %11, i32 %643)
  %645 = tail call i32 @llvm.smax.i32(i32 %644, i32 0)
  %646 = zext nneg i32 %645 to i64
  %647 = getelementptr inbounds i16, ptr %579, i64 %646
  %648 = load i16, ptr %647, align 2, !tbaa !25
  %649 = zext i16 %648 to i32
  %650 = getelementptr inbounds i16, ptr %583, i64 %646
  %651 = load i16, ptr %650, align 2, !tbaa !25
  %652 = zext i16 %651 to i32
  %653 = mul nsw i32 %652, -5
  %654 = add nsw i32 %653, %649
  %655 = getelementptr inbounds i16, ptr %589, i64 %646
  %656 = load i16, ptr %655, align 2, !tbaa !25
  %657 = zext i16 %656 to i32
  %658 = mul nuw nsw i32 %657, 20
  %659 = add nsw i32 %658, %654
  %660 = getelementptr inbounds i16, ptr %595, i64 %646
  %661 = load i16, ptr %660, align 2, !tbaa !25
  %662 = zext i16 %661 to i32
  %663 = mul nuw nsw i32 %662, 20
  %664 = add nsw i32 %663, %659
  %665 = getelementptr inbounds i16, ptr %601, i64 %646
  %666 = load i16, ptr %665, align 2, !tbaa !25
  %667 = zext i16 %666 to i32
  %668 = mul nsw i32 %667, -5
  %669 = add nsw i32 %668, %664
  %670 = getelementptr inbounds i16, ptr %607, i64 %646
  %671 = load i16, ptr %670, align 2, !tbaa !25
  %672 = zext i16 %671 to i32
  %673 = add nsw i32 %669, %672
  %674 = mul nsw i32 %544, -5
  %675 = add nsw i32 %674, %513
  %676 = mul nsw i32 %574, 20
  %677 = add nsw i32 %676, %675
  %678 = mul nsw i32 %611, 20
  %679 = add nsw i32 %678, %677
  %680 = mul nsw i32 %642, -5
  %681 = add nsw i32 %680, %679
  %682 = add nsw i32 %673, %681
  %683 = getelementptr inbounds i8, ptr %8, i64 90532
  %684 = load i32, ptr %683, align 4, !tbaa !35
  %685 = add nsw i32 %682, 512
  %686 = sdiv i32 %685, 1024
  %687 = tail call i32 @llvm.smin.i32(i32 %684, i32 %686)
  %688 = tail call i32 @llvm.smax.i32(i32 %687, i32 0)
  %689 = icmp eq i32 %4, 1
  br i1 %689, label %690, label %697

690:                                              ; preds = %447
  %691 = add nsw i32 %574, 16
  %692 = sdiv i32 %691, 32
  %693 = tail call i32 @llvm.smin.i32(i32 %684, i32 %692)
  %694 = tail call i32 @llvm.smax.i32(i32 %693, i32 0)
  %695 = add nuw nsw i32 %694, %688
  %696 = lshr i32 %695, 1
  br label %843

697:                                              ; preds = %447
  %698 = add nsw i32 %611, 16
  %699 = sdiv i32 %698, 32
  %700 = tail call i32 @llvm.smin.i32(i32 %684, i32 %699)
  %701 = tail call i32 @llvm.smax.i32(i32 %700, i32 0)
  %702 = add nuw nsw i32 %701, %688
  %703 = lshr i32 %702, 1
  br label %843

704:                                              ; preds = %445
  %705 = icmp ne i32 %5, 1
  %706 = zext i1 %705 to i32
  %707 = add nsw i32 %7, %706
  %708 = tail call i32 @llvm.smin.i32(i32 %14, i32 %707)
  %709 = tail call i32 @llvm.smax.i32(i32 %708, i32 0)
  %710 = zext nneg i32 %709 to i64
  %711 = getelementptr inbounds ptr, ptr %0, i64 %710
  %712 = load ptr, ptr %711, align 8, !tbaa !6
  %713 = add nsw i32 %6, -2
  %714 = tail call i32 @llvm.smin.i32(i32 %11, i32 %713)
  %715 = tail call i32 @llvm.smax.i32(i32 %714, i32 0)
  %716 = zext nneg i32 %715 to i64
  %717 = getelementptr inbounds i16, ptr %712, i64 %716
  %718 = load i16, ptr %717, align 2, !tbaa !25
  %719 = zext i16 %718 to i32
  %720 = add nsw i32 %6, -1
  %721 = tail call i32 @llvm.smin.i32(i32 %11, i32 %720)
  %722 = tail call i32 @llvm.smax.i32(i32 %721, i32 0)
  %723 = zext nneg i32 %722 to i64
  %724 = getelementptr inbounds i16, ptr %712, i64 %723
  %725 = load i16, ptr %724, align 2, !tbaa !25
  %726 = zext i16 %725 to i32
  %727 = mul nsw i32 %726, -5
  %728 = add nsw i32 %727, %719
  %729 = tail call i32 @llvm.smin.i32(i32 %11, i32 %6)
  %730 = tail call i32 @llvm.smax.i32(i32 %729, i32 0)
  %731 = zext nneg i32 %730 to i64
  %732 = getelementptr inbounds i16, ptr %712, i64 %731
  %733 = load i16, ptr %732, align 2, !tbaa !25
  %734 = zext i16 %733 to i32
  %735 = mul nuw nsw i32 %734, 20
  %736 = add nsw i32 %735, %728
  %737 = add nsw i32 %6, 1
  %738 = tail call i32 @llvm.smin.i32(i32 %11, i32 %737)
  %739 = tail call i32 @llvm.smax.i32(i32 %738, i32 0)
  %740 = zext nneg i32 %739 to i64
  %741 = getelementptr inbounds i16, ptr %712, i64 %740
  %742 = load i16, ptr %741, align 2, !tbaa !25
  %743 = zext i16 %742 to i32
  %744 = mul nuw nsw i32 %743, 20
  %745 = add nsw i32 %744, %736
  %746 = add nsw i32 %6, 2
  %747 = tail call i32 @llvm.smin.i32(i32 %11, i32 %746)
  %748 = tail call i32 @llvm.smax.i32(i32 %747, i32 0)
  %749 = zext nneg i32 %748 to i64
  %750 = getelementptr inbounds i16, ptr %712, i64 %749
  %751 = load i16, ptr %750, align 2, !tbaa !25
  %752 = zext i16 %751 to i32
  %753 = mul nsw i32 %752, -5
  %754 = add nsw i32 %753, %745
  %755 = add nsw i32 %6, 3
  %756 = tail call i32 @llvm.smin.i32(i32 %11, i32 %755)
  %757 = tail call i32 @llvm.smax.i32(i32 %756, i32 0)
  %758 = zext nneg i32 %757 to i64
  %759 = getelementptr inbounds i16, ptr %712, i64 %758
  %760 = load i16, ptr %759, align 2, !tbaa !25
  %761 = zext i16 %760 to i32
  %762 = add nsw i32 %754, %761
  %763 = getelementptr inbounds i8, ptr %8, i64 90532
  %764 = load i32, ptr %763, align 4, !tbaa !35
  %765 = add nsw i32 %762, 16
  %766 = sdiv i32 %765, 32
  %767 = tail call i32 @llvm.smin.i32(i32 %764, i32 %766)
  %768 = icmp ne i32 %4, 1
  %769 = zext i1 %768 to i32
  %770 = add nsw i32 %6, %769
  %771 = tail call i32 @llvm.smin.i32(i32 %11, i32 %770)
  %772 = tail call i32 @llvm.smax.i32(i32 %771, i32 0)
  %773 = zext nneg i32 %772 to i64
  %774 = add nsw i32 %7, -2
  %775 = tail call i32 @llvm.smin.i32(i32 %14, i32 %774)
  %776 = tail call i32 @llvm.smax.i32(i32 %775, i32 0)
  %777 = zext nneg i32 %776 to i64
  %778 = getelementptr inbounds ptr, ptr %0, i64 %777
  %779 = load ptr, ptr %778, align 8, !tbaa !6
  %780 = getelementptr inbounds i16, ptr %779, i64 %773
  %781 = load i16, ptr %780, align 2, !tbaa !25
  %782 = zext i16 %781 to i32
  %783 = add nsw i32 %7, -1
  %784 = tail call i32 @llvm.smin.i32(i32 %14, i32 %783)
  %785 = tail call i32 @llvm.smax.i32(i32 %784, i32 0)
  %786 = zext nneg i32 %785 to i64
  %787 = getelementptr inbounds ptr, ptr %0, i64 %786
  %788 = load ptr, ptr %787, align 8, !tbaa !6
  %789 = getelementptr inbounds i16, ptr %788, i64 %773
  %790 = load i16, ptr %789, align 2, !tbaa !25
  %791 = zext i16 %790 to i32
  %792 = mul nsw i32 %791, -5
  %793 = add nsw i32 %792, %782
  %794 = tail call i32 @llvm.smin.i32(i32 %14, i32 %7)
  %795 = tail call i32 @llvm.smax.i32(i32 %794, i32 0)
  %796 = zext nneg i32 %795 to i64
  %797 = getelementptr inbounds ptr, ptr %0, i64 %796
  %798 = load ptr, ptr %797, align 8, !tbaa !6
  %799 = getelementptr inbounds i16, ptr %798, i64 %773
  %800 = load i16, ptr %799, align 2, !tbaa !25
  %801 = zext i16 %800 to i32
  %802 = mul nuw nsw i32 %801, 20
  %803 = add nsw i32 %802, %793
  %804 = add nsw i32 %7, 1
  %805 = tail call i32 @llvm.smin.i32(i32 %14, i32 %804)
  %806 = tail call i32 @llvm.smax.i32(i32 %805, i32 0)
  %807 = zext nneg i32 %806 to i64
  %808 = getelementptr inbounds ptr, ptr %0, i64 %807
  %809 = load ptr, ptr %808, align 8, !tbaa !6
  %810 = getelementptr inbounds i16, ptr %809, i64 %773
  %811 = load i16, ptr %810, align 2, !tbaa !25
  %812 = zext i16 %811 to i32
  %813 = mul nuw nsw i32 %812, 20
  %814 = add nsw i32 %813, %803
  %815 = add nsw i32 %7, 2
  %816 = tail call i32 @llvm.smin.i32(i32 %14, i32 %815)
  %817 = tail call i32 @llvm.smax.i32(i32 %816, i32 0)
  %818 = zext nneg i32 %817 to i64
  %819 = getelementptr inbounds ptr, ptr %0, i64 %818
  %820 = load ptr, ptr %819, align 8, !tbaa !6
  %821 = getelementptr inbounds i16, ptr %820, i64 %773
  %822 = load i16, ptr %821, align 2, !tbaa !25
  %823 = zext i16 %822 to i32
  %824 = mul nsw i32 %823, -5
  %825 = add nsw i32 %824, %814
  %826 = add nsw i32 %7, 3
  %827 = tail call i32 @llvm.smin.i32(i32 %14, i32 %826)
  %828 = tail call i32 @llvm.smax.i32(i32 %827, i32 0)
  %829 = zext nneg i32 %828 to i64
  %830 = getelementptr inbounds ptr, ptr %0, i64 %829
  %831 = load ptr, ptr %830, align 8, !tbaa !6
  %832 = getelementptr inbounds i16, ptr %831, i64 %773
  %833 = load i16, ptr %832, align 2, !tbaa !25
  %834 = zext i16 %833 to i32
  %835 = add nsw i32 %825, %834
  %836 = tail call i32 @llvm.smax.i32(i32 %767, i32 0)
  %837 = add nsw i32 %835, 16
  %838 = sdiv i32 %837, 32
  %839 = tail call i32 @llvm.smin.i32(i32 %764, i32 %838)
  %840 = tail call i32 @llvm.smax.i32(i32 %839, i32 0)
  %841 = add nuw nsw i32 %840, %836
  %842 = lshr i32 %841, 1
  br label %843

843:                                              ; preds = %108, %344, %32, %97, %94, %438, %431, %690, %697, %704, %416, %419, %18
  %844 = phi i32 [ %29, %18 ], [ %96, %94 ], [ %106, %97 ], [ %418, %416 ], [ %430, %419 ], [ %437, %431 ], [ %444, %438 ], [ %696, %690 ], [ %703, %697 ], [ %842, %704 ], [ %93, %32 ], [ %415, %344 ], [ %343, %108 ]
  %845 = trunc i32 %844 to i8
  ret i8 %845
}

; Function Attrs: nounwind
define dso_local void @UpdateDecoders() local_unnamed_addr #5 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 3576
  %3 = load i32, ptr %2, align 8, !tbaa !36
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %105

5:                                                ; preds = %0, %98
  %6 = phi i64 [ %99, %98 ], [ 0, %0 ]
  %7 = load ptr, ptr @decs, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  tail call void @Build_Status_Map(ptr noundef %9)
  %10 = load ptr, ptr @decs, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %10, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %10, i64 40
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds i8, ptr %10, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = getelementptr inbounds ptr, ptr %18, i64 %6
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load ptr, ptr @img, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 60
  %23 = load i32, ptr %22, align 4, !tbaa !34
  %24 = icmp sgt i32 %23, 15
  br i1 %24, label %25, label %61

25:                                               ; preds = %5
  %26 = getelementptr inbounds i8, ptr %21, i64 52
  %27 = load i32, ptr %26, align 4, !tbaa !33
  %28 = sdiv i32 %27, 16
  %29 = lshr i32 %23, 4
  %30 = icmp sgt i32 %27, 15
  %31 = zext nneg i32 %29 to i64
  %32 = zext nneg i32 %28 to i64
  br label %33

33:                                               ; preds = %49, %25
  %34 = phi i64 [ 0, %25 ], [ %50, %49 ]
  br i1 %30, label %35, label %49

35:                                               ; preds = %33
  %36 = getelementptr inbounds ptr, ptr %16, i64 %34
  %37 = trunc nuw nsw i64 %34 to i32
  br label %38

38:                                               ; preds = %46, %35
  %39 = phi i64 [ 0, %35 ], [ %47, %46 ]
  %40 = load ptr, ptr %36, align 8, !tbaa !6
  %41 = getelementptr inbounds i8, ptr %40, i64 %39
  %42 = load i8, ptr %41, align 1, !tbaa !40
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = trunc nuw nsw i64 %39 to i32
  tail call void @Conceal_Error(ptr noundef readonly %14, i32 noundef signext %37, i32 noundef signext %45, ptr noundef readonly %20, ptr noundef nonnull readonly %16)
  br label %46

46:                                               ; preds = %44, %38
  %47 = add nuw nsw i64 %39, 1
  %48 = icmp eq i64 %47, %32
  br i1 %48, label %49, label %38

49:                                               ; preds = %46, %33
  %50 = add nuw nsw i64 %34, 1
  %51 = icmp eq i64 %50, %31
  br i1 %51, label %52, label %33

52:                                               ; preds = %49
  %53 = load ptr, ptr @decs, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 24
  %55 = load ptr, ptr %54, align 8, !tbaa !39
  %56 = getelementptr inbounds ptr, ptr %55, i64 %6
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = load ptr, ptr @img, align 8, !tbaa !6
  %59 = getelementptr inbounds i8, ptr %58, i64 60
  %60 = load i32, ptr %59, align 4, !tbaa !34
  br label %61

61:                                               ; preds = %52, %5
  %62 = phi i32 [ %60, %52 ], [ %23, %5 ]
  %63 = phi ptr [ %58, %52 ], [ %21, %5 ]
  %64 = phi ptr [ %57, %52 ], [ %14, %5 ]
  %65 = phi ptr [ %53, %52 ], [ %10, %5 ]
  %66 = icmp sgt i32 %62, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %61
  %68 = getelementptr inbounds i8, ptr %65, i64 16
  %69 = load ptr, ptr %68, align 8, !tbaa !31
  %70 = getelementptr inbounds ptr, ptr %69, i64 %6
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = load i32, ptr %63, align 8, !tbaa !10
  %73 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !16
  %74 = sub nsw i32 %72, %73
  %75 = getelementptr inbounds i8, ptr %63, i64 90192
  %76 = load i32, ptr %75, align 8, !tbaa !41
  %77 = srem i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %71, i64 %78
  br label %80

80:                                               ; preds = %80, %67
  %81 = phi i64 [ 0, %67 ], [ %92, %80 ]
  %82 = phi ptr [ %63, %67 ], [ %93, %80 ]
  %83 = load ptr, ptr %79, align 8, !tbaa !6
  %84 = getelementptr inbounds ptr, ptr %83, i64 %81
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds ptr, ptr %64, i64 %81
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %82, i64 52
  %89 = load i32, ptr %88, align 4, !tbaa !33
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %85, ptr align 2 %87, i64 %91, i1 false)
  %92 = add nuw nsw i64 %81, 1
  %93 = load ptr, ptr @img, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 60
  %95 = load i32, ptr %94, align 4, !tbaa !34
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %80, label %98

98:                                               ; preds = %80, %61
  %99 = add nuw nsw i64 %6, 1
  %100 = load ptr, ptr @input, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %100, i64 3576
  %102 = load i32, ptr %101, align 8, !tbaa !36
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %99, %103
  br i1 %104, label %5, label %105

105:                                              ; preds = %98, %0
  ret void
}

; Function Attrs: nounwind
define dso_local void @Build_Status_Map(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 60
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds i8, ptr %2, i64 52
  %6 = load i32, ptr %5, align 4, !tbaa !33
  %7 = sdiv i32 %6, 16
  %8 = icmp sgt i32 %4, 15
  br i1 %8, label %9, label %104

9:                                                ; preds = %1
  %10 = lshr i32 %4, 4
  %11 = icmp sgt i32 %6, 15
  %12 = zext nneg i32 %10 to i64
  %13 = zext nneg i32 %7 to i64
  br label %14

14:                                               ; preds = %9, %98
  %15 = phi i64 [ 0, %9 ], [ %102, %98 ]
  %16 = phi i32 [ 0, %9 ], [ %101, %98 ]
  %17 = phi i32 [ 0, %9 ], [ %100, %98 ]
  %18 = phi i32 [ -1, %9 ], [ %99, %98 ]
  br i1 %11, label %19, label %98

19:                                               ; preds = %14
  %20 = getelementptr inbounds ptr, ptr %0, i64 %15
  %21 = sext i32 %17 to i64
  br label %22

22:                                               ; preds = %19, %90
  %23 = phi i64 [ %21, %19 ], [ %93, %90 ]
  %24 = phi i64 [ 0, %19 ], [ %94, %90 ]
  %25 = phi i32 [ %16, %19 ], [ %91, %90 ]
  %26 = phi i32 [ %18, %19 ], [ %92, %90 ]
  %27 = load ptr, ptr @input, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 212
  %29 = load i32, ptr %28, align 4, !tbaa !42
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr @img, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %32, i64 31576
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.macroblock, ptr %34, i64 %23, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !44
  %37 = icmp eq i32 %36, %26
  br i1 %37, label %70, label %38

38:                                               ; preds = %31, %22
  %39 = tail call signext i32 @rand() #8
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 0x41DFFFFFFFC00000
  %42 = fmul double %41, 1.000000e+02
  %43 = load ptr, ptr @input, align 8, !tbaa !6
  %44 = getelementptr inbounds i8, ptr %43, i64 3572
  %45 = load i32, ptr %44, align 4, !tbaa !47
  %46 = sitofp i32 %45 to double
  %47 = fcmp olt double %42, %46
  %48 = select i1 %47, i32 3, i32 0
  %49 = tail call signext i32 @rand() #8
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %50, 0x41DFFFFFFFC00000
  %52 = fmul double %51, 1.000000e+02
  %53 = load ptr, ptr @input, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 3568
  %55 = load i32, ptr %54, align 8, !tbaa !48
  %56 = sitofp i32 %55 to double
  %57 = fcmp olt double %52, %56
  %58 = add nuw nsw i32 %48, 2
  %59 = select i1 %57, i32 %58, i32 %48
  %60 = tail call signext i32 @rand() #8
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %61, 0x41DFFFFFFFC00000
  %63 = fmul double %62, 1.000000e+02
  %64 = load ptr, ptr @input, align 8, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %64, i64 3564
  %66 = load i32, ptr %65, align 4, !tbaa !49
  %67 = sitofp i32 %66 to double
  %68 = fcmp olt double %63, %67
  %69 = add nsw i32 %26, 1
  br i1 %68, label %74, label %70

70:                                               ; preds = %38, %31
  %71 = phi i32 [ %69, %38 ], [ %26, %31 ]
  %72 = phi i32 [ %59, %38 ], [ %25, %31 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %38, %70
  %75 = phi i32 [ %72, %70 ], [ 1, %38 ]
  %76 = phi i32 [ %71, %70 ], [ %69, %38 ]
  %77 = trunc i32 %75 to i8
  %78 = load ptr, ptr %20, align 8, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %78, i64 %24
  store i8 %77, ptr %79, align 1, !tbaa !40
  %80 = load ptr, ptr @input, align 8, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %80, i64 2992
  %82 = load i32, ptr %81, align 8, !tbaa !50
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %74, %70
  %85 = phi i8 [ 0, %70 ], [ 1, %74 ]
  %86 = phi i32 [ 0, %70 ], [ %75, %74 ]
  %87 = phi i32 [ %71, %70 ], [ %76, %74 ]
  %88 = load ptr, ptr %20, align 8, !tbaa !6
  %89 = getelementptr inbounds i8, ptr %88, i64 %24
  store i8 %85, ptr %89, align 1, !tbaa !40
  br label %90

90:                                               ; preds = %84, %74
  %91 = phi i32 [ %75, %74 ], [ %86, %84 ]
  %92 = phi i32 [ %76, %74 ], [ %87, %84 ]
  %93 = add nsw i64 %23, 1
  %94 = add nuw nsw i64 %24, 1
  %95 = icmp eq i64 %94, %13
  br i1 %95, label %96, label %22

96:                                               ; preds = %90
  %97 = add i32 %7, %17
  br label %98

98:                                               ; preds = %96, %14
  %99 = phi i32 [ %18, %14 ], [ %92, %96 ]
  %100 = phi i32 [ %17, %14 ], [ %97, %96 ]
  %101 = phi i32 [ %16, %14 ], [ %91, %96 ]
  %102 = add nuw nsw i64 %15, 1
  %103 = icmp eq i64 %102, %12
  br i1 %103, label %104, label %14

104:                                              ; preds = %98, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @Error_Concealment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 60
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp sgt i32 %6, 15
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %4, i64 52
  %10 = load i32, ptr %9, align 4, !tbaa !33
  %11 = sdiv i32 %10, 16
  %12 = lshr i32 %6, 4
  %13 = icmp sgt i32 %10, 15
  %14 = zext nneg i32 %12 to i64
  %15 = zext nneg i32 %11 to i64
  br label %16

16:                                               ; preds = %8, %32
  %17 = phi i64 [ 0, %8 ], [ %33, %32 ]
  br i1 %13, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds ptr, ptr %1, i64 %17
  %20 = trunc nuw nsw i64 %17 to i32
  br label %21

21:                                               ; preds = %18, %29
  %22 = phi i64 [ 0, %18 ], [ %30, %29 ]
  %23 = load ptr, ptr %19, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  %25 = load i8, ptr %24, align 1, !tbaa !40
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = trunc nuw nsw i64 %22 to i32
  tail call void @Conceal_Error(ptr noundef %0, i32 noundef signext %20, i32 noundef signext %28, ptr noundef %2, ptr noundef nonnull %1)
  br label %29

29:                                               ; preds = %21, %27
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %15
  br i1 %31, label %32, label %21

32:                                               ; preds = %29, %16
  %33 = add nuw nsw i64 %17, 1
  %34 = icmp eq i64 %33, %14
  br i1 %34, label %35, label %16

35:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @DecOneForthPix(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 60
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !10
  %9 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !16
  %10 = sub nsw i32 %8, %9
  %11 = getelementptr inbounds i8, ptr %3, i64 90192
  %12 = load i32, ptr %11, align 8, !tbaa !41
  %13 = srem i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  br label %16

16:                                               ; preds = %7, %16
  %17 = phi i64 [ 0, %7 ], [ %28, %16 ]
  %18 = phi ptr [ %3, %7 ], [ %29, %16 ]
  %19 = load ptr, ptr %15, align 8, !tbaa !6
  %20 = getelementptr inbounds ptr, ptr %19, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds ptr, ptr %0, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %18, i64 52
  %25 = load i32, ptr %24, align 4, !tbaa !33
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %23, i64 %27, i1 false)
  %28 = add nuw nsw i64 %17, 1
  %29 = load ptr, ptr @img, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 60
  %31 = load i32, ptr %30, align 4, !tbaa !34
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %28, %32
  br i1 %33, label %16, label %34

34:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @compute_residue_b8block(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = sdiv i32 %0, 2
  %4 = mul i32 %3, 2
  %5 = sub i32 %0, %4
  %6 = shl nsw i32 %5, 3
  %7 = add nsw i32 %6, 8
  %8 = shl i32 %3, 3
  %9 = add nsw i32 %8, 8
  %10 = icmp sgt i32 %1, -1
  %11 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 6424
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = load ptr, ptr @img, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 156
  %16 = getelementptr inbounds i8, ptr %14, i64 152
  br i1 %10, label %50, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, ptr %14, i64 12600
  %19 = load ptr, ptr @decs, align 8, !tbaa !6
  %20 = load ptr, ptr %19, align 8, !tbaa !28
  %21 = sext i32 %8 to i64
  %22 = sext i32 %9 to i64
  %23 = sext i32 %6 to i64
  %24 = sext i32 %7 to i64
  %25 = getelementptr ptr, ptr %13, i64 %21
  %26 = getelementptr inbounds ptr, ptr %20, i64 %21
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = or disjoint i64 %21, 1
  %29 = icmp slt i64 %28, %22
  %30 = getelementptr ptr, ptr %13, i64 %28
  %31 = getelementptr inbounds ptr, ptr %20, i64 %28
  %32 = or disjoint i64 %21, 2
  %33 = getelementptr ptr, ptr %13, i64 %32
  %34 = getelementptr inbounds ptr, ptr %20, i64 %32
  %35 = or disjoint i64 %21, 3
  %36 = getelementptr ptr, ptr %13, i64 %35
  %37 = getelementptr inbounds ptr, ptr %20, i64 %35
  %38 = or disjoint i64 %21, 4
  %39 = getelementptr ptr, ptr %13, i64 %38
  %40 = getelementptr inbounds ptr, ptr %20, i64 %38
  %41 = or disjoint i64 %21, 5
  %42 = getelementptr ptr, ptr %13, i64 %41
  %43 = getelementptr inbounds ptr, ptr %20, i64 %41
  %44 = or disjoint i64 %21, 6
  %45 = getelementptr ptr, ptr %13, i64 %44
  %46 = getelementptr inbounds ptr, ptr %20, i64 %44
  %47 = or disjoint i64 %21, 7
  %48 = getelementptr ptr, ptr %13, i64 %47
  %49 = getelementptr inbounds ptr, ptr %20, i64 %47
  br label %217

50:                                               ; preds = %2
  %51 = getelementptr inbounds i8, ptr %14, i64 4792
  %52 = zext nneg i32 %1 to i64
  %53 = load ptr, ptr @decs, align 8, !tbaa !6
  %54 = load ptr, ptr %53, align 8, !tbaa !28
  %55 = sext i32 %8 to i64
  %56 = sext i32 %9 to i64
  %57 = sext i32 %6 to i64
  %58 = sext i32 %7 to i64
  %59 = getelementptr ptr, ptr %13, i64 %55
  %60 = getelementptr inbounds ptr, ptr %54, i64 %55
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = or disjoint i64 %55, 1
  %63 = icmp slt i64 %62, %56
  %64 = getelementptr ptr, ptr %13, i64 %62
  %65 = getelementptr inbounds ptr, ptr %54, i64 %62
  %66 = or disjoint i64 %55, 2
  %67 = getelementptr ptr, ptr %13, i64 %66
  %68 = getelementptr inbounds ptr, ptr %54, i64 %66
  %69 = or disjoint i64 %55, 3
  %70 = getelementptr ptr, ptr %13, i64 %69
  %71 = getelementptr inbounds ptr, ptr %54, i64 %69
  %72 = or disjoint i64 %55, 4
  %73 = getelementptr ptr, ptr %13, i64 %72
  %74 = getelementptr inbounds ptr, ptr %54, i64 %72
  %75 = or disjoint i64 %55, 5
  %76 = getelementptr ptr, ptr %13, i64 %75
  %77 = getelementptr inbounds ptr, ptr %54, i64 %75
  %78 = or disjoint i64 %55, 6
  %79 = getelementptr ptr, ptr %13, i64 %78
  %80 = getelementptr inbounds ptr, ptr %54, i64 %78
  %81 = or disjoint i64 %55, 7
  %82 = getelementptr ptr, ptr %13, i64 %81
  %83 = getelementptr inbounds ptr, ptr %54, i64 %81
  br label %84

84:                                               ; preds = %50, %214
  %85 = phi i64 [ %57, %50 ], [ %215, %214 ]
  %86 = load i32, ptr %15, align 4, !tbaa !21
  %87 = sext i32 %86 to i64
  %88 = getelementptr ptr, ptr %59, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = load i32, ptr %16, align 8, !tbaa !22
  %91 = sext i32 %90 to i64
  %92 = getelementptr i16, ptr %89, i64 %85
  %93 = getelementptr i16, ptr %92, i64 %91
  %94 = load i16, ptr %93, align 2, !tbaa !25
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %51, i64 0, i64 %52, i64 %55, i64 %85
  %97 = load i16, ptr %96, align 2, !tbaa !25
  %98 = zext i16 %97 to i32
  %99 = sub nsw i32 %95, %98
  %100 = getelementptr inbounds i32, ptr %61, i64 %85
  store i32 %99, ptr %100, align 4, !tbaa !16
  br i1 %63, label %101, label %214

101:                                              ; preds = %84
  %102 = load i32, ptr %15, align 4, !tbaa !21
  %103 = sext i32 %102 to i64
  %104 = getelementptr ptr, ptr %64, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  %106 = load i32, ptr %16, align 8, !tbaa !22
  %107 = sext i32 %106 to i64
  %108 = getelementptr i16, ptr %105, i64 %85
  %109 = getelementptr i16, ptr %108, i64 %107
  %110 = load i16, ptr %109, align 2, !tbaa !25
  %111 = zext i16 %110 to i32
  %112 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %51, i64 0, i64 %52, i64 %62, i64 %85
  %113 = load i16, ptr %112, align 2, !tbaa !25
  %114 = zext i16 %113 to i32
  %115 = sub nsw i32 %111, %114
  %116 = load ptr, ptr %65, align 8, !tbaa !6
  %117 = getelementptr inbounds i32, ptr %116, i64 %85
  store i32 %115, ptr %117, align 4, !tbaa !16
  %118 = load i32, ptr %15, align 4, !tbaa !21
  %119 = sext i32 %118 to i64
  %120 = getelementptr ptr, ptr %67, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = load i32, ptr %16, align 8, !tbaa !22
  %123 = sext i32 %122 to i64
  %124 = getelementptr i16, ptr %121, i64 %85
  %125 = getelementptr i16, ptr %124, i64 %123
  %126 = load i16, ptr %125, align 2, !tbaa !25
  %127 = zext i16 %126 to i32
  %128 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %51, i64 0, i64 %52, i64 %66, i64 %85
  %129 = load i16, ptr %128, align 2, !tbaa !25
  %130 = zext i16 %129 to i32
  %131 = sub nsw i32 %127, %130
  %132 = load ptr, ptr %68, align 8, !tbaa !6
  %133 = getelementptr inbounds i32, ptr %132, i64 %85
  store i32 %131, ptr %133, align 4, !tbaa !16
  %134 = load i32, ptr %15, align 4, !tbaa !21
  %135 = sext i32 %134 to i64
  %136 = getelementptr ptr, ptr %70, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = load i32, ptr %16, align 8, !tbaa !22
  %139 = sext i32 %138 to i64
  %140 = getelementptr i16, ptr %137, i64 %85
  %141 = getelementptr i16, ptr %140, i64 %139
  %142 = load i16, ptr %141, align 2, !tbaa !25
  %143 = zext i16 %142 to i32
  %144 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %51, i64 0, i64 %52, i64 %69, i64 %85
  %145 = load i16, ptr %144, align 2, !tbaa !25
  %146 = zext i16 %145 to i32
  %147 = sub nsw i32 %143, %146
  %148 = load ptr, ptr %71, align 8, !tbaa !6
  %149 = getelementptr inbounds i32, ptr %148, i64 %85
  store i32 %147, ptr %149, align 4, !tbaa !16
  %150 = load i32, ptr %15, align 4, !tbaa !21
  %151 = sext i32 %150 to i64
  %152 = getelementptr ptr, ptr %73, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !6
  %154 = load i32, ptr %16, align 8, !tbaa !22
  %155 = sext i32 %154 to i64
  %156 = getelementptr i16, ptr %153, i64 %85
  %157 = getelementptr i16, ptr %156, i64 %155
  %158 = load i16, ptr %157, align 2, !tbaa !25
  %159 = zext i16 %158 to i32
  %160 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %51, i64 0, i64 %52, i64 %72, i64 %85
  %161 = load i16, ptr %160, align 2, !tbaa !25
  %162 = zext i16 %161 to i32
  %163 = sub nsw i32 %159, %162
  %164 = load ptr, ptr %74, align 8, !tbaa !6
  %165 = getelementptr inbounds i32, ptr %164, i64 %85
  store i32 %163, ptr %165, align 4, !tbaa !16
  %166 = load i32, ptr %15, align 4, !tbaa !21
  %167 = sext i32 %166 to i64
  %168 = getelementptr ptr, ptr %76, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !6
  %170 = load i32, ptr %16, align 8, !tbaa !22
  %171 = sext i32 %170 to i64
  %172 = getelementptr i16, ptr %169, i64 %85
  %173 = getelementptr i16, ptr %172, i64 %171
  %174 = load i16, ptr %173, align 2, !tbaa !25
  %175 = zext i16 %174 to i32
  %176 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %51, i64 0, i64 %52, i64 %75, i64 %85
  %177 = load i16, ptr %176, align 2, !tbaa !25
  %178 = zext i16 %177 to i32
  %179 = sub nsw i32 %175, %178
  %180 = load ptr, ptr %77, align 8, !tbaa !6
  %181 = getelementptr inbounds i32, ptr %180, i64 %85
  store i32 %179, ptr %181, align 4, !tbaa !16
  %182 = load i32, ptr %15, align 4, !tbaa !21
  %183 = sext i32 %182 to i64
  %184 = getelementptr ptr, ptr %79, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = load i32, ptr %16, align 8, !tbaa !22
  %187 = sext i32 %186 to i64
  %188 = getelementptr i16, ptr %185, i64 %85
  %189 = getelementptr i16, ptr %188, i64 %187
  %190 = load i16, ptr %189, align 2, !tbaa !25
  %191 = zext i16 %190 to i32
  %192 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %51, i64 0, i64 %52, i64 %78, i64 %85
  %193 = load i16, ptr %192, align 2, !tbaa !25
  %194 = zext i16 %193 to i32
  %195 = sub nsw i32 %191, %194
  %196 = load ptr, ptr %80, align 8, !tbaa !6
  %197 = getelementptr inbounds i32, ptr %196, i64 %85
  store i32 %195, ptr %197, align 4, !tbaa !16
  %198 = load i32, ptr %15, align 4, !tbaa !21
  %199 = sext i32 %198 to i64
  %200 = getelementptr ptr, ptr %82, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  %202 = load i32, ptr %16, align 8, !tbaa !22
  %203 = sext i32 %202 to i64
  %204 = getelementptr i16, ptr %201, i64 %85
  %205 = getelementptr i16, ptr %204, i64 %203
  %206 = load i16, ptr %205, align 2, !tbaa !25
  %207 = zext i16 %206 to i32
  %208 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %51, i64 0, i64 %52, i64 %81, i64 %85
  %209 = load i16, ptr %208, align 2, !tbaa !25
  %210 = zext i16 %209 to i32
  %211 = sub nsw i32 %207, %210
  %212 = load ptr, ptr %83, align 8, !tbaa !6
  %213 = getelementptr inbounds i32, ptr %212, i64 %85
  store i32 %211, ptr %213, align 4, !tbaa !16
  br label %214

214:                                              ; preds = %101, %84
  %215 = add nsw i64 %85, 1
  %216 = icmp eq i64 %215, %58
  br i1 %216, label %350, label %84

217:                                              ; preds = %17, %347
  %218 = phi i64 [ %23, %17 ], [ %348, %347 ]
  %219 = load i32, ptr %15, align 4, !tbaa !21
  %220 = sext i32 %219 to i64
  %221 = getelementptr ptr, ptr %25, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !6
  %223 = load i32, ptr %16, align 8, !tbaa !22
  %224 = sext i32 %223 to i64
  %225 = getelementptr i16, ptr %222, i64 %218
  %226 = getelementptr i16, ptr %225, i64 %224
  %227 = load i16, ptr %226, align 2, !tbaa !25
  %228 = zext i16 %227 to i32
  %229 = getelementptr inbounds [16 x [16 x i16]], ptr %18, i64 0, i64 %21, i64 %218
  %230 = load i16, ptr %229, align 2, !tbaa !25
  %231 = zext i16 %230 to i32
  %232 = sub nsw i32 %228, %231
  %233 = getelementptr inbounds i32, ptr %27, i64 %218
  store i32 %232, ptr %233, align 4, !tbaa !16
  br i1 %29, label %234, label %347

234:                                              ; preds = %217
  %235 = load i32, ptr %15, align 4, !tbaa !21
  %236 = sext i32 %235 to i64
  %237 = getelementptr ptr, ptr %30, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !6
  %239 = load i32, ptr %16, align 8, !tbaa !22
  %240 = sext i32 %239 to i64
  %241 = getelementptr i16, ptr %238, i64 %218
  %242 = getelementptr i16, ptr %241, i64 %240
  %243 = load i16, ptr %242, align 2, !tbaa !25
  %244 = zext i16 %243 to i32
  %245 = getelementptr inbounds [16 x [16 x i16]], ptr %18, i64 0, i64 %28, i64 %218
  %246 = load i16, ptr %245, align 2, !tbaa !25
  %247 = zext i16 %246 to i32
  %248 = sub nsw i32 %244, %247
  %249 = load ptr, ptr %31, align 8, !tbaa !6
  %250 = getelementptr inbounds i32, ptr %249, i64 %218
  store i32 %248, ptr %250, align 4, !tbaa !16
  %251 = load i32, ptr %15, align 4, !tbaa !21
  %252 = sext i32 %251 to i64
  %253 = getelementptr ptr, ptr %33, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !6
  %255 = load i32, ptr %16, align 8, !tbaa !22
  %256 = sext i32 %255 to i64
  %257 = getelementptr i16, ptr %254, i64 %218
  %258 = getelementptr i16, ptr %257, i64 %256
  %259 = load i16, ptr %258, align 2, !tbaa !25
  %260 = zext i16 %259 to i32
  %261 = getelementptr inbounds [16 x [16 x i16]], ptr %18, i64 0, i64 %32, i64 %218
  %262 = load i16, ptr %261, align 2, !tbaa !25
  %263 = zext i16 %262 to i32
  %264 = sub nsw i32 %260, %263
  %265 = load ptr, ptr %34, align 8, !tbaa !6
  %266 = getelementptr inbounds i32, ptr %265, i64 %218
  store i32 %264, ptr %266, align 4, !tbaa !16
  %267 = load i32, ptr %15, align 4, !tbaa !21
  %268 = sext i32 %267 to i64
  %269 = getelementptr ptr, ptr %36, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !6
  %271 = load i32, ptr %16, align 8, !tbaa !22
  %272 = sext i32 %271 to i64
  %273 = getelementptr i16, ptr %270, i64 %218
  %274 = getelementptr i16, ptr %273, i64 %272
  %275 = load i16, ptr %274, align 2, !tbaa !25
  %276 = zext i16 %275 to i32
  %277 = getelementptr inbounds [16 x [16 x i16]], ptr %18, i64 0, i64 %35, i64 %218
  %278 = load i16, ptr %277, align 2, !tbaa !25
  %279 = zext i16 %278 to i32
  %280 = sub nsw i32 %276, %279
  %281 = load ptr, ptr %37, align 8, !tbaa !6
  %282 = getelementptr inbounds i32, ptr %281, i64 %218
  store i32 %280, ptr %282, align 4, !tbaa !16
  %283 = load i32, ptr %15, align 4, !tbaa !21
  %284 = sext i32 %283 to i64
  %285 = getelementptr ptr, ptr %39, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !6
  %287 = load i32, ptr %16, align 8, !tbaa !22
  %288 = sext i32 %287 to i64
  %289 = getelementptr i16, ptr %286, i64 %218
  %290 = getelementptr i16, ptr %289, i64 %288
  %291 = load i16, ptr %290, align 2, !tbaa !25
  %292 = zext i16 %291 to i32
  %293 = getelementptr inbounds [16 x [16 x i16]], ptr %18, i64 0, i64 %38, i64 %218
  %294 = load i16, ptr %293, align 2, !tbaa !25
  %295 = zext i16 %294 to i32
  %296 = sub nsw i32 %292, %295
  %297 = load ptr, ptr %40, align 8, !tbaa !6
  %298 = getelementptr inbounds i32, ptr %297, i64 %218
  store i32 %296, ptr %298, align 4, !tbaa !16
  %299 = load i32, ptr %15, align 4, !tbaa !21
  %300 = sext i32 %299 to i64
  %301 = getelementptr ptr, ptr %42, i64 %300
  %302 = load ptr, ptr %301, align 8, !tbaa !6
  %303 = load i32, ptr %16, align 8, !tbaa !22
  %304 = sext i32 %303 to i64
  %305 = getelementptr i16, ptr %302, i64 %218
  %306 = getelementptr i16, ptr %305, i64 %304
  %307 = load i16, ptr %306, align 2, !tbaa !25
  %308 = zext i16 %307 to i32
  %309 = getelementptr inbounds [16 x [16 x i16]], ptr %18, i64 0, i64 %41, i64 %218
  %310 = load i16, ptr %309, align 2, !tbaa !25
  %311 = zext i16 %310 to i32
  %312 = sub nsw i32 %308, %311
  %313 = load ptr, ptr %43, align 8, !tbaa !6
  %314 = getelementptr inbounds i32, ptr %313, i64 %218
  store i32 %312, ptr %314, align 4, !tbaa !16
  %315 = load i32, ptr %15, align 4, !tbaa !21
  %316 = sext i32 %315 to i64
  %317 = getelementptr ptr, ptr %45, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !6
  %319 = load i32, ptr %16, align 8, !tbaa !22
  %320 = sext i32 %319 to i64
  %321 = getelementptr i16, ptr %318, i64 %218
  %322 = getelementptr i16, ptr %321, i64 %320
  %323 = load i16, ptr %322, align 2, !tbaa !25
  %324 = zext i16 %323 to i32
  %325 = getelementptr inbounds [16 x [16 x i16]], ptr %18, i64 0, i64 %44, i64 %218
  %326 = load i16, ptr %325, align 2, !tbaa !25
  %327 = zext i16 %326 to i32
  %328 = sub nsw i32 %324, %327
  %329 = load ptr, ptr %46, align 8, !tbaa !6
  %330 = getelementptr inbounds i32, ptr %329, i64 %218
  store i32 %328, ptr %330, align 4, !tbaa !16
  %331 = load i32, ptr %15, align 4, !tbaa !21
  %332 = sext i32 %331 to i64
  %333 = getelementptr ptr, ptr %48, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !6
  %335 = load i32, ptr %16, align 8, !tbaa !22
  %336 = sext i32 %335 to i64
  %337 = getelementptr i16, ptr %334, i64 %218
  %338 = getelementptr i16, ptr %337, i64 %336
  %339 = load i16, ptr %338, align 2, !tbaa !25
  %340 = zext i16 %339 to i32
  %341 = getelementptr inbounds [16 x [16 x i16]], ptr %18, i64 0, i64 %47, i64 %218
  %342 = load i16, ptr %341, align 2, !tbaa !25
  %343 = zext i16 %342 to i32
  %344 = sub nsw i32 %340, %343
  %345 = load ptr, ptr %49, align 8, !tbaa !6
  %346 = getelementptr inbounds i32, ptr %345, i64 %218
  store i32 %344, ptr %346, align 4, !tbaa !16
  br label %347

347:                                              ; preds = %234, %217
  %348 = add nsw i64 %218, 1
  %349 = icmp eq i64 %348, %24
  br i1 %349, label %350, label %217

350:                                              ; preds = %347, %214
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @compute_residue_mb(i32 noundef signext %0) local_unnamed_addr #0 {
  tail call void @compute_residue_b8block(i32 noundef signext 0, i32 noundef signext %0)
  tail call void @compute_residue_b8block(i32 noundef signext 1, i32 noundef signext %0)
  tail call void @compute_residue_b8block(i32 noundef signext 2, i32 noundef signext %0)
  tail call void @compute_residue_b8block(i32 noundef signext 3, i32 noundef signext %0)
  ret void
}

; Function Attrs: nounwind
declare dso_local signext i32 @rand() local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @Conceal_Error(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [2 x [4 x [4 x i32]]], align 4
  %7 = load ptr, ptr @img, align 8, !tbaa !6
  %8 = load i32, ptr %7, align 8, !tbaa !10
  %9 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !16
  %10 = xor i32 %9, -1
  %11 = add i32 %8, %10
  %12 = getelementptr inbounds i8, ptr %7, i64 32
  %13 = load i32, ptr %12, align 8, !tbaa !17
  %14 = srem i32 %11, %13
  %15 = shl nsw i32 %1, 4
  %16 = shl nsw i32 %2, 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  %17 = load ptr, ptr @decs, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !40
  switch i8 %25, label %42 [
    i8 0, label %26
    i8 8, label %34
    i8 3, label %34
    i8 2, label %34
    i8 1, label %34
  ]

26:                                               ; preds = %5
  %27 = getelementptr inbounds i8, ptr %7, i64 24
  %28 = load i32, ptr %27, align 8, !tbaa !18
  switch i32 %28, label %33 [
    i32 0, label %42
    i32 1, label %29
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %7, i64 90316
  %31 = load i32, ptr %30, align 4, !tbaa !26
  %32 = icmp sgt i32 %31, 0
  br label %42

33:                                               ; preds = %26
  br label %42

34:                                               ; preds = %5, %5, %5, %5
  %35 = getelementptr inbounds i8, ptr %7, i64 24
  %36 = load i32, ptr %35, align 8, !tbaa !18
  switch i32 %36, label %41 [
    i32 0, label %42
    i32 1, label %37
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %7, i64 90316
  %39 = load i32, ptr %38, align 4, !tbaa !26
  %40 = icmp sgt i32 %39, 0
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %5, %26, %33, %29, %34, %41, %37
  %43 = phi i1 [ false, %34 ], [ false, %37 ], [ false, %41 ], [ false, %33 ], [ %32, %29 ], [ true, %26 ], [ false, %5 ]
  %44 = phi i1 [ true, %34 ], [ %40, %37 ], [ false, %41 ], [ false, %33 ], [ false, %29 ], [ false, %26 ], [ false, %5 ]
  %45 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 6504
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds ptr, ptr %4, i64 %23
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 %20
  %52 = load i8, ptr %51, align 1, !tbaa !40
  switch i8 %52, label %1113 [
    i8 1, label %222
    i8 5, label %53
    i8 3, label %640
    i8 2, label %989
  ]

53:                                               ; preds = %42
  %54 = shl nsw i32 %1, 2
  %55 = shl nsw i32 %2, 2
  %56 = sext i32 %55 to i64
  %57 = sext i32 %54 to i64
  %58 = getelementptr inbounds ptr, ptr %48, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr i8, ptr %59, i64 32
  %61 = getelementptr ptr, ptr %60, i64 %56
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = load i16, ptr %62, align 2, !tbaa !25
  %64 = sext i16 %63 to i32
  store i32 %64, ptr %6, align 4, !tbaa !16
  %65 = getelementptr inbounds i8, ptr %62, i64 2
  %66 = load i16, ptr %65, align 2, !tbaa !25
  %67 = sext i16 %66 to i32
  %68 = getelementptr inbounds i8, ptr %6, i64 64
  store i32 %67, ptr %68, align 4, !tbaa !16
  %69 = or disjoint i64 %56, 1
  %70 = getelementptr ptr, ptr %60, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = load i16, ptr %71, align 2, !tbaa !25
  %73 = sext i16 %72 to i32
  %74 = getelementptr inbounds i8, ptr %6, i64 4
  store i32 %73, ptr %74, align 4, !tbaa !16
  %75 = getelementptr inbounds i8, ptr %71, i64 2
  %76 = load i16, ptr %75, align 2, !tbaa !25
  %77 = sext i16 %76 to i32
  %78 = getelementptr inbounds i8, ptr %6, i64 68
  store i32 %77, ptr %78, align 4, !tbaa !16
  %79 = or disjoint i64 %56, 2
  %80 = getelementptr ptr, ptr %60, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = load i16, ptr %81, align 2, !tbaa !25
  %83 = sext i16 %82 to i32
  %84 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 %83, ptr %84, align 4, !tbaa !16
  %85 = getelementptr inbounds i8, ptr %81, i64 2
  %86 = load i16, ptr %85, align 2, !tbaa !25
  %87 = sext i16 %86 to i32
  %88 = getelementptr inbounds i8, ptr %6, i64 72
  store i32 %87, ptr %88, align 4, !tbaa !16
  %89 = or disjoint i64 %56, 3
  %90 = getelementptr ptr, ptr %60, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = load i16, ptr %91, align 2, !tbaa !25
  %93 = sext i16 %92 to i32
  %94 = getelementptr inbounds i8, ptr %6, i64 12
  store i32 %93, ptr %94, align 4, !tbaa !16
  %95 = getelementptr inbounds i8, ptr %91, i64 2
  %96 = load i16, ptr %95, align 2, !tbaa !25
  %97 = sext i16 %96 to i32
  %98 = getelementptr inbounds i8, ptr %6, i64 76
  store i32 %97, ptr %98, align 4, !tbaa !16
  %99 = or disjoint i64 %57, 1
  %100 = getelementptr inbounds ptr, ptr %48, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = getelementptr i8, ptr %101, i64 32
  %103 = getelementptr ptr, ptr %102, i64 %56
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = load i16, ptr %104, align 2, !tbaa !25
  %106 = sext i16 %105 to i32
  %107 = getelementptr inbounds i8, ptr %6, i64 16
  store i32 %106, ptr %107, align 4, !tbaa !16
  %108 = getelementptr inbounds i8, ptr %104, i64 2
  %109 = load i16, ptr %108, align 2, !tbaa !25
  %110 = sext i16 %109 to i32
  %111 = getelementptr inbounds i8, ptr %6, i64 80
  store i32 %110, ptr %111, align 4, !tbaa !16
  %112 = getelementptr ptr, ptr %102, i64 %69
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = load i16, ptr %113, align 2, !tbaa !25
  %115 = sext i16 %114 to i32
  %116 = getelementptr inbounds i8, ptr %6, i64 20
  store i32 %115, ptr %116, align 4, !tbaa !16
  %117 = getelementptr inbounds i8, ptr %113, i64 2
  %118 = load i16, ptr %117, align 2, !tbaa !25
  %119 = sext i16 %118 to i32
  %120 = getelementptr inbounds i8, ptr %6, i64 84
  store i32 %119, ptr %120, align 4, !tbaa !16
  %121 = getelementptr ptr, ptr %102, i64 %79
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = load i16, ptr %122, align 2, !tbaa !25
  %124 = sext i16 %123 to i32
  %125 = getelementptr inbounds i8, ptr %6, i64 24
  store i32 %124, ptr %125, align 4, !tbaa !16
  %126 = getelementptr inbounds i8, ptr %122, i64 2
  %127 = load i16, ptr %126, align 2, !tbaa !25
  %128 = sext i16 %127 to i32
  %129 = getelementptr inbounds i8, ptr %6, i64 88
  store i32 %128, ptr %129, align 4, !tbaa !16
  %130 = getelementptr ptr, ptr %102, i64 %89
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = load i16, ptr %131, align 2, !tbaa !25
  %133 = sext i16 %132 to i32
  %134 = getelementptr inbounds i8, ptr %6, i64 28
  store i32 %133, ptr %134, align 4, !tbaa !16
  %135 = getelementptr inbounds i8, ptr %131, i64 2
  %136 = load i16, ptr %135, align 2, !tbaa !25
  %137 = sext i16 %136 to i32
  %138 = getelementptr inbounds i8, ptr %6, i64 92
  store i32 %137, ptr %138, align 4, !tbaa !16
  %139 = or disjoint i64 %57, 2
  %140 = getelementptr inbounds ptr, ptr %48, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = getelementptr i8, ptr %141, i64 32
  %143 = getelementptr ptr, ptr %142, i64 %56
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = load i16, ptr %144, align 2, !tbaa !25
  %146 = sext i16 %145 to i32
  %147 = getelementptr inbounds i8, ptr %6, i64 32
  store i32 %146, ptr %147, align 4, !tbaa !16
  %148 = getelementptr inbounds i8, ptr %144, i64 2
  %149 = load i16, ptr %148, align 2, !tbaa !25
  %150 = sext i16 %149 to i32
  %151 = getelementptr inbounds i8, ptr %6, i64 96
  store i32 %150, ptr %151, align 4, !tbaa !16
  %152 = getelementptr ptr, ptr %142, i64 %69
  %153 = load ptr, ptr %152, align 8, !tbaa !6
  %154 = load i16, ptr %153, align 2, !tbaa !25
  %155 = sext i16 %154 to i32
  %156 = getelementptr inbounds i8, ptr %6, i64 36
  store i32 %155, ptr %156, align 4, !tbaa !16
  %157 = getelementptr inbounds i8, ptr %153, i64 2
  %158 = load i16, ptr %157, align 2, !tbaa !25
  %159 = sext i16 %158 to i32
  %160 = getelementptr inbounds i8, ptr %6, i64 100
  store i32 %159, ptr %160, align 4, !tbaa !16
  %161 = getelementptr ptr, ptr %142, i64 %79
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = load i16, ptr %162, align 2, !tbaa !25
  %164 = sext i16 %163 to i32
  %165 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 %164, ptr %165, align 4, !tbaa !16
  %166 = getelementptr inbounds i8, ptr %162, i64 2
  %167 = load i16, ptr %166, align 2, !tbaa !25
  %168 = sext i16 %167 to i32
  %169 = getelementptr inbounds i8, ptr %6, i64 104
  store i32 %168, ptr %169, align 4, !tbaa !16
  %170 = getelementptr ptr, ptr %142, i64 %89
  %171 = load ptr, ptr %170, align 8, !tbaa !6
  %172 = load i16, ptr %171, align 2, !tbaa !25
  %173 = sext i16 %172 to i32
  %174 = getelementptr inbounds i8, ptr %6, i64 44
  store i32 %173, ptr %174, align 4, !tbaa !16
  %175 = getelementptr inbounds i8, ptr %171, i64 2
  %176 = load i16, ptr %175, align 2, !tbaa !25
  %177 = sext i16 %176 to i32
  %178 = getelementptr inbounds i8, ptr %6, i64 108
  store i32 %177, ptr %178, align 4, !tbaa !16
  %179 = or disjoint i64 %57, 3
  %180 = getelementptr inbounds ptr, ptr %48, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = getelementptr i8, ptr %181, i64 32
  %183 = getelementptr ptr, ptr %182, i64 %56
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = load i16, ptr %184, align 2, !tbaa !25
  %186 = sext i16 %185 to i32
  %187 = getelementptr inbounds i8, ptr %6, i64 48
  store i32 %186, ptr %187, align 4, !tbaa !16
  %188 = getelementptr inbounds i8, ptr %184, i64 2
  %189 = load i16, ptr %188, align 2, !tbaa !25
  %190 = sext i16 %189 to i32
  %191 = getelementptr inbounds i8, ptr %6, i64 112
  store i32 %190, ptr %191, align 4, !tbaa !16
  %192 = getelementptr ptr, ptr %182, i64 %69
  %193 = load ptr, ptr %192, align 8, !tbaa !6
  %194 = load i16, ptr %193, align 2, !tbaa !25
  %195 = sext i16 %194 to i32
  %196 = getelementptr inbounds i8, ptr %6, i64 52
  store i32 %195, ptr %196, align 4, !tbaa !16
  %197 = getelementptr inbounds i8, ptr %193, i64 2
  %198 = load i16, ptr %197, align 2, !tbaa !25
  %199 = sext i16 %198 to i32
  %200 = getelementptr inbounds i8, ptr %6, i64 116
  store i32 %199, ptr %200, align 4, !tbaa !16
  %201 = getelementptr ptr, ptr %182, i64 %79
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = load i16, ptr %202, align 2, !tbaa !25
  %204 = sext i16 %203 to i32
  %205 = getelementptr inbounds i8, ptr %6, i64 56
  store i32 %204, ptr %205, align 4, !tbaa !16
  %206 = getelementptr inbounds i8, ptr %202, i64 2
  %207 = load i16, ptr %206, align 2, !tbaa !25
  %208 = sext i16 %207 to i32
  %209 = getelementptr inbounds i8, ptr %6, i64 120
  store i32 %208, ptr %209, align 4, !tbaa !16
  %210 = getelementptr ptr, ptr %182, i64 %89
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = load i16, ptr %211, align 2, !tbaa !25
  %213 = sext i16 %212 to i32
  %214 = getelementptr inbounds i8, ptr %6, i64 60
  store i32 %213, ptr %214, align 4, !tbaa !16
  %215 = getelementptr inbounds i8, ptr %211, i64 2
  %216 = load i16, ptr %215, align 2, !tbaa !25
  %217 = sext i16 %216 to i32
  %218 = getelementptr inbounds i8, ptr %6, i64 124
  store i32 %217, ptr %218, align 4, !tbaa !16
  %219 = getelementptr inbounds i8, ptr %7, i64 24
  %220 = load i32, ptr %219, align 8, !tbaa !18
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %345, label %363

222:                                              ; preds = %42
  %223 = getelementptr inbounds i8, ptr %7, i64 24
  %224 = load i32, ptr %223, align 8, !tbaa !18
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %226, label %244

226:                                              ; preds = %222
  %227 = sext i32 %16 to i64
  %228 = sext i32 %15 to i64
  %229 = or disjoint i64 %227, 1
  %230 = or disjoint i64 %227, 2
  %231 = or disjoint i64 %227, 3
  %232 = or disjoint i64 %227, 4
  %233 = or disjoint i64 %227, 5
  %234 = or disjoint i64 %227, 6
  %235 = or disjoint i64 %227, 7
  %236 = or disjoint i64 %227, 8
  %237 = or disjoint i64 %227, 9
  %238 = or disjoint i64 %227, 10
  %239 = or disjoint i64 %227, 11
  %240 = or disjoint i64 %227, 12
  %241 = or disjoint i64 %227, 13
  %242 = or disjoint i64 %227, 14
  %243 = or disjoint i64 %227, 15
  br label %322

244:                                              ; preds = %222
  %245 = sext i32 %14 to i64
  %246 = getelementptr inbounds ptr, ptr %3, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = sext i32 %16 to i64
  %249 = sext i32 %15 to i64
  %250 = or disjoint i64 %248, 1
  %251 = or disjoint i64 %248, 2
  %252 = or disjoint i64 %248, 3
  %253 = or disjoint i64 %248, 4
  %254 = or disjoint i64 %248, 5
  %255 = or disjoint i64 %248, 6
  %256 = or disjoint i64 %248, 7
  %257 = or disjoint i64 %248, 8
  %258 = or disjoint i64 %248, 9
  %259 = or disjoint i64 %248, 10
  %260 = or disjoint i64 %248, 11
  %261 = or disjoint i64 %248, 12
  %262 = or disjoint i64 %248, 13
  %263 = or disjoint i64 %248, 14
  %264 = or disjoint i64 %248, 15
  br label %265

265:                                              ; preds = %244, %265
  %266 = phi i64 [ 0, %244 ], [ %320, %265 ]
  %267 = or disjoint i64 %266, %249
  %268 = getelementptr inbounds ptr, ptr %247, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !6
  %270 = getelementptr inbounds ptr, ptr %0, i64 %267
  %271 = load ptr, ptr %270, align 8, !tbaa !6
  %272 = getelementptr inbounds i16, ptr %269, i64 %248
  %273 = load i16, ptr %272, align 2, !tbaa !25
  %274 = getelementptr inbounds i16, ptr %271, i64 %248
  store i16 %273, ptr %274, align 2, !tbaa !25
  %275 = getelementptr inbounds i16, ptr %269, i64 %250
  %276 = load i16, ptr %275, align 2, !tbaa !25
  %277 = getelementptr inbounds i16, ptr %271, i64 %250
  store i16 %276, ptr %277, align 2, !tbaa !25
  %278 = getelementptr inbounds i16, ptr %269, i64 %251
  %279 = load i16, ptr %278, align 2, !tbaa !25
  %280 = getelementptr inbounds i16, ptr %271, i64 %251
  store i16 %279, ptr %280, align 2, !tbaa !25
  %281 = getelementptr inbounds i16, ptr %269, i64 %252
  %282 = load i16, ptr %281, align 2, !tbaa !25
  %283 = getelementptr inbounds i16, ptr %271, i64 %252
  store i16 %282, ptr %283, align 2, !tbaa !25
  %284 = getelementptr inbounds i16, ptr %269, i64 %253
  %285 = load i16, ptr %284, align 2, !tbaa !25
  %286 = getelementptr inbounds i16, ptr %271, i64 %253
  store i16 %285, ptr %286, align 2, !tbaa !25
  %287 = getelementptr inbounds i16, ptr %269, i64 %254
  %288 = load i16, ptr %287, align 2, !tbaa !25
  %289 = getelementptr inbounds i16, ptr %271, i64 %254
  store i16 %288, ptr %289, align 2, !tbaa !25
  %290 = getelementptr inbounds i16, ptr %269, i64 %255
  %291 = load i16, ptr %290, align 2, !tbaa !25
  %292 = getelementptr inbounds i16, ptr %271, i64 %255
  store i16 %291, ptr %292, align 2, !tbaa !25
  %293 = getelementptr inbounds i16, ptr %269, i64 %256
  %294 = load i16, ptr %293, align 2, !tbaa !25
  %295 = getelementptr inbounds i16, ptr %271, i64 %256
  store i16 %294, ptr %295, align 2, !tbaa !25
  %296 = getelementptr inbounds i16, ptr %269, i64 %257
  %297 = load i16, ptr %296, align 2, !tbaa !25
  %298 = getelementptr inbounds i16, ptr %271, i64 %257
  store i16 %297, ptr %298, align 2, !tbaa !25
  %299 = getelementptr inbounds i16, ptr %269, i64 %258
  %300 = load i16, ptr %299, align 2, !tbaa !25
  %301 = getelementptr inbounds i16, ptr %271, i64 %258
  store i16 %300, ptr %301, align 2, !tbaa !25
  %302 = getelementptr inbounds i16, ptr %269, i64 %259
  %303 = load i16, ptr %302, align 2, !tbaa !25
  %304 = getelementptr inbounds i16, ptr %271, i64 %259
  store i16 %303, ptr %304, align 2, !tbaa !25
  %305 = getelementptr inbounds i16, ptr %269, i64 %260
  %306 = load i16, ptr %305, align 2, !tbaa !25
  %307 = getelementptr inbounds i16, ptr %271, i64 %260
  store i16 %306, ptr %307, align 2, !tbaa !25
  %308 = getelementptr inbounds i16, ptr %269, i64 %261
  %309 = load i16, ptr %308, align 2, !tbaa !25
  %310 = getelementptr inbounds i16, ptr %271, i64 %261
  store i16 %309, ptr %310, align 2, !tbaa !25
  %311 = getelementptr inbounds i16, ptr %269, i64 %262
  %312 = load i16, ptr %311, align 2, !tbaa !25
  %313 = getelementptr inbounds i16, ptr %271, i64 %262
  store i16 %312, ptr %313, align 2, !tbaa !25
  %314 = getelementptr inbounds i16, ptr %269, i64 %263
  %315 = load i16, ptr %314, align 2, !tbaa !25
  %316 = getelementptr inbounds i16, ptr %271, i64 %263
  store i16 %315, ptr %316, align 2, !tbaa !25
  %317 = getelementptr inbounds i16, ptr %269, i64 %264
  %318 = load i16, ptr %317, align 2, !tbaa !25
  %319 = getelementptr inbounds i16, ptr %271, i64 %264
  store i16 %318, ptr %319, align 2, !tbaa !25
  %320 = add nuw nsw i64 %266, 1
  %321 = icmp eq i64 %320, 16
  br i1 %321, label %1113, label %265

322:                                              ; preds = %226, %322
  %323 = phi i64 [ 0, %226 ], [ %343, %322 ]
  %324 = or disjoint i64 %323, %228
  %325 = getelementptr inbounds ptr, ptr %0, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !6
  %327 = getelementptr inbounds i16, ptr %326, i64 %227
  store i16 127, ptr %327, align 2, !tbaa !25
  %328 = getelementptr inbounds i16, ptr %326, i64 %229
  store i16 127, ptr %328, align 2, !tbaa !25
  %329 = getelementptr inbounds i16, ptr %326, i64 %230
  store i16 127, ptr %329, align 2, !tbaa !25
  %330 = getelementptr inbounds i16, ptr %326, i64 %231
  store i16 127, ptr %330, align 2, !tbaa !25
  %331 = getelementptr inbounds i16, ptr %326, i64 %232
  store i16 127, ptr %331, align 2, !tbaa !25
  %332 = getelementptr inbounds i16, ptr %326, i64 %233
  store i16 127, ptr %332, align 2, !tbaa !25
  %333 = getelementptr inbounds i16, ptr %326, i64 %234
  store i16 127, ptr %333, align 2, !tbaa !25
  %334 = getelementptr inbounds i16, ptr %326, i64 %235
  store i16 127, ptr %334, align 2, !tbaa !25
  %335 = getelementptr inbounds i16, ptr %326, i64 %236
  store i16 127, ptr %335, align 2, !tbaa !25
  %336 = getelementptr inbounds i16, ptr %326, i64 %237
  store i16 127, ptr %336, align 2, !tbaa !25
  %337 = getelementptr inbounds i16, ptr %326, i64 %238
  store i16 127, ptr %337, align 2, !tbaa !25
  %338 = getelementptr inbounds i16, ptr %326, i64 %239
  store i16 127, ptr %338, align 2, !tbaa !25
  %339 = getelementptr inbounds i16, ptr %326, i64 %240
  store i16 127, ptr %339, align 2, !tbaa !25
  %340 = getelementptr inbounds i16, ptr %326, i64 %241
  store i16 127, ptr %340, align 2, !tbaa !25
  %341 = getelementptr inbounds i16, ptr %326, i64 %242
  store i16 127, ptr %341, align 2, !tbaa !25
  %342 = getelementptr inbounds i16, ptr %326, i64 %243
  store i16 127, ptr %342, align 2, !tbaa !25
  %343 = add nuw nsw i64 %323, 1
  %344 = icmp eq i64 %343, 16
  br i1 %344, label %1113, label %322

345:                                              ; preds = %53
  %346 = sext i32 %16 to i64
  %347 = sext i32 %15 to i64
  %348 = or disjoint i64 %346, 1
  %349 = or disjoint i64 %346, 2
  %350 = or disjoint i64 %346, 3
  %351 = or disjoint i64 %346, 4
  %352 = or disjoint i64 %346, 5
  %353 = or disjoint i64 %346, 6
  %354 = or disjoint i64 %346, 7
  %355 = or disjoint i64 %346, 8
  %356 = or disjoint i64 %346, 9
  %357 = or disjoint i64 %346, 10
  %358 = or disjoint i64 %346, 11
  %359 = or disjoint i64 %346, 12
  %360 = or disjoint i64 %346, 13
  %361 = or disjoint i64 %346, 14
  %362 = or disjoint i64 %346, 15
  br label %617

363:                                              ; preds = %53
  %364 = sext i32 %14 to i64
  %365 = getelementptr inbounds ptr, ptr %3, i64 %364
  br i1 %43, label %366, label %442

366:                                              ; preds = %363
  %367 = load ptr, ptr %365, align 8, !tbaa !6
  %368 = sext i32 %16 to i64
  %369 = sext i32 %15 to i64
  %370 = or disjoint i64 %368, 1
  %371 = or disjoint i64 %368, 2
  %372 = or disjoint i64 %368, 3
  %373 = or disjoint i64 %368, 4
  %374 = or disjoint i64 %368, 5
  %375 = or disjoint i64 %368, 6
  %376 = or disjoint i64 %368, 7
  %377 = or disjoint i64 %368, 8
  %378 = or disjoint i64 %368, 9
  %379 = or disjoint i64 %368, 10
  %380 = or disjoint i64 %368, 11
  %381 = or disjoint i64 %368, 12
  %382 = or disjoint i64 %368, 13
  %383 = or disjoint i64 %368, 14
  %384 = or disjoint i64 %368, 15
  br label %385

385:                                              ; preds = %366, %385
  %386 = phi i64 [ 0, %366 ], [ %440, %385 ]
  %387 = or disjoint i64 %386, %369
  %388 = getelementptr inbounds ptr, ptr %367, i64 %387
  %389 = load ptr, ptr %388, align 8, !tbaa !6
  %390 = getelementptr inbounds ptr, ptr %0, i64 %387
  %391 = load ptr, ptr %390, align 8, !tbaa !6
  %392 = getelementptr inbounds i16, ptr %389, i64 %368
  %393 = load i16, ptr %392, align 2, !tbaa !25
  %394 = getelementptr inbounds i16, ptr %391, i64 %368
  store i16 %393, ptr %394, align 2, !tbaa !25
  %395 = getelementptr inbounds i16, ptr %389, i64 %370
  %396 = load i16, ptr %395, align 2, !tbaa !25
  %397 = getelementptr inbounds i16, ptr %391, i64 %370
  store i16 %396, ptr %397, align 2, !tbaa !25
  %398 = getelementptr inbounds i16, ptr %389, i64 %371
  %399 = load i16, ptr %398, align 2, !tbaa !25
  %400 = getelementptr inbounds i16, ptr %391, i64 %371
  store i16 %399, ptr %400, align 2, !tbaa !25
  %401 = getelementptr inbounds i16, ptr %389, i64 %372
  %402 = load i16, ptr %401, align 2, !tbaa !25
  %403 = getelementptr inbounds i16, ptr %391, i64 %372
  store i16 %402, ptr %403, align 2, !tbaa !25
  %404 = getelementptr inbounds i16, ptr %389, i64 %373
  %405 = load i16, ptr %404, align 2, !tbaa !25
  %406 = getelementptr inbounds i16, ptr %391, i64 %373
  store i16 %405, ptr %406, align 2, !tbaa !25
  %407 = getelementptr inbounds i16, ptr %389, i64 %374
  %408 = load i16, ptr %407, align 2, !tbaa !25
  %409 = getelementptr inbounds i16, ptr %391, i64 %374
  store i16 %408, ptr %409, align 2, !tbaa !25
  %410 = getelementptr inbounds i16, ptr %389, i64 %375
  %411 = load i16, ptr %410, align 2, !tbaa !25
  %412 = getelementptr inbounds i16, ptr %391, i64 %375
  store i16 %411, ptr %412, align 2, !tbaa !25
  %413 = getelementptr inbounds i16, ptr %389, i64 %376
  %414 = load i16, ptr %413, align 2, !tbaa !25
  %415 = getelementptr inbounds i16, ptr %391, i64 %376
  store i16 %414, ptr %415, align 2, !tbaa !25
  %416 = getelementptr inbounds i16, ptr %389, i64 %377
  %417 = load i16, ptr %416, align 2, !tbaa !25
  %418 = getelementptr inbounds i16, ptr %391, i64 %377
  store i16 %417, ptr %418, align 2, !tbaa !25
  %419 = getelementptr inbounds i16, ptr %389, i64 %378
  %420 = load i16, ptr %419, align 2, !tbaa !25
  %421 = getelementptr inbounds i16, ptr %391, i64 %378
  store i16 %420, ptr %421, align 2, !tbaa !25
  %422 = getelementptr inbounds i16, ptr %389, i64 %379
  %423 = load i16, ptr %422, align 2, !tbaa !25
  %424 = getelementptr inbounds i16, ptr %391, i64 %379
  store i16 %423, ptr %424, align 2, !tbaa !25
  %425 = getelementptr inbounds i16, ptr %389, i64 %380
  %426 = load i16, ptr %425, align 2, !tbaa !25
  %427 = getelementptr inbounds i16, ptr %391, i64 %380
  store i16 %426, ptr %427, align 2, !tbaa !25
  %428 = getelementptr inbounds i16, ptr %389, i64 %381
  %429 = load i16, ptr %428, align 2, !tbaa !25
  %430 = getelementptr inbounds i16, ptr %391, i64 %381
  store i16 %429, ptr %430, align 2, !tbaa !25
  %431 = getelementptr inbounds i16, ptr %389, i64 %382
  %432 = load i16, ptr %431, align 2, !tbaa !25
  %433 = getelementptr inbounds i16, ptr %391, i64 %382
  store i16 %432, ptr %433, align 2, !tbaa !25
  %434 = getelementptr inbounds i16, ptr %389, i64 %383
  %435 = load i16, ptr %434, align 2, !tbaa !25
  %436 = getelementptr inbounds i16, ptr %391, i64 %383
  store i16 %435, ptr %436, align 2, !tbaa !25
  %437 = getelementptr inbounds i16, ptr %389, i64 %384
  %438 = load i16, ptr %437, align 2, !tbaa !25
  %439 = getelementptr inbounds i16, ptr %391, i64 %384
  store i16 %438, ptr %439, align 2, !tbaa !25
  %440 = add nuw nsw i64 %386, 1
  %441 = icmp eq i64 %440, 16
  br i1 %441, label %1113, label %385

442:                                              ; preds = %363
  br i1 %44, label %462, label %443

443:                                              ; preds = %442
  %444 = load ptr, ptr %365, align 8, !tbaa !6
  %445 = sext i32 %16 to i64
  %446 = sext i32 %15 to i64
  %447 = or disjoint i64 %445, 1
  %448 = or disjoint i64 %445, 2
  %449 = or disjoint i64 %445, 3
  %450 = or disjoint i64 %445, 4
  %451 = or disjoint i64 %445, 5
  %452 = or disjoint i64 %445, 6
  %453 = or disjoint i64 %445, 7
  %454 = or disjoint i64 %445, 8
  %455 = or disjoint i64 %445, 9
  %456 = or disjoint i64 %445, 10
  %457 = or disjoint i64 %445, 11
  %458 = or disjoint i64 %445, 12
  %459 = or disjoint i64 %445, 13
  %460 = or disjoint i64 %445, 14
  %461 = or disjoint i64 %445, 15
  br label %560

462:                                              ; preds = %442
  %463 = add i32 %55, 4
  %464 = add i32 %54, 4
  %465 = load ptr, ptr @decs, align 8, !tbaa !6
  %466 = getelementptr inbounds i8, ptr %465, i64 32
  %467 = load ptr, ptr %466, align 8, !tbaa !32
  br label %468

468:                                              ; preds = %462, %556
  %469 = phi ptr [ %467, %462 ], [ %493, %556 ]
  %470 = phi i64 [ %57, %462 ], [ %557, %556 ]
  %471 = sub nuw nsw i64 %470, %57
  %472 = shl nsw i64 %470, 2
  %473 = trunc nsw i64 %470 to i32
  %474 = getelementptr inbounds ptr, ptr %0, i64 %472
  %475 = or disjoint i64 %472, 1
  %476 = getelementptr inbounds ptr, ptr %0, i64 %475
  %477 = or disjoint i64 %472, 2
  %478 = getelementptr inbounds ptr, ptr %0, i64 %477
  %479 = or disjoint i64 %472, 3
  %480 = getelementptr inbounds ptr, ptr %0, i64 %479
  br label %481

481:                                              ; preds = %468, %481
  %482 = phi ptr [ %469, %468 ], [ %493, %481 ]
  %483 = phi i64 [ %56, %468 ], [ %553, %481 ]
  %484 = load ptr, ptr %365, align 8, !tbaa !6
  %485 = sub nuw nsw i64 %483, %56
  %486 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %471, i64 %485
  %487 = load i32, ptr %486, align 4, !tbaa !16
  %488 = getelementptr inbounds [4 x [4 x i32]], ptr %68, i64 0, i64 %471, i64 %485
  %489 = load i32, ptr %488, align 4, !tbaa !16
  %490 = trunc nsw i64 %483 to i32
  tail call void @Get_Reference_Block(ptr noundef %484, i32 noundef signext %473, i32 noundef signext %490, i32 noundef signext %487, i32 noundef signext %489, ptr noundef %482)
  %491 = load ptr, ptr @decs, align 8, !tbaa !6
  %492 = getelementptr inbounds i8, ptr %491, i64 32
  %493 = load ptr, ptr %492, align 8, !tbaa !32
  %494 = shl nsw i64 %483, 2
  %495 = load ptr, ptr %493, align 8, !tbaa !6
  %496 = load ptr, ptr %474, align 8, !tbaa !6
  %497 = load i16, ptr %495, align 2, !tbaa !25
  %498 = getelementptr inbounds i16, ptr %496, i64 %494
  store i16 %497, ptr %498, align 2, !tbaa !25
  %499 = getelementptr inbounds i8, ptr %495, i64 2
  %500 = load i16, ptr %499, align 2, !tbaa !25
  %501 = or disjoint i64 %494, 1
  %502 = getelementptr inbounds i16, ptr %496, i64 %501
  store i16 %500, ptr %502, align 2, !tbaa !25
  %503 = getelementptr inbounds i8, ptr %495, i64 4
  %504 = load i16, ptr %503, align 2, !tbaa !25
  %505 = or disjoint i64 %494, 2
  %506 = getelementptr inbounds i16, ptr %496, i64 %505
  store i16 %504, ptr %506, align 2, !tbaa !25
  %507 = getelementptr inbounds i8, ptr %495, i64 6
  %508 = load i16, ptr %507, align 2, !tbaa !25
  %509 = or disjoint i64 %494, 3
  %510 = getelementptr inbounds i16, ptr %496, i64 %509
  store i16 %508, ptr %510, align 2, !tbaa !25
  %511 = getelementptr inbounds i8, ptr %493, i64 8
  %512 = load ptr, ptr %511, align 8, !tbaa !6
  %513 = load ptr, ptr %476, align 8, !tbaa !6
  %514 = load i16, ptr %512, align 2, !tbaa !25
  %515 = getelementptr inbounds i16, ptr %513, i64 %494
  store i16 %514, ptr %515, align 2, !tbaa !25
  %516 = getelementptr inbounds i8, ptr %512, i64 2
  %517 = load i16, ptr %516, align 2, !tbaa !25
  %518 = getelementptr inbounds i16, ptr %513, i64 %501
  store i16 %517, ptr %518, align 2, !tbaa !25
  %519 = getelementptr inbounds i8, ptr %512, i64 4
  %520 = load i16, ptr %519, align 2, !tbaa !25
  %521 = getelementptr inbounds i16, ptr %513, i64 %505
  store i16 %520, ptr %521, align 2, !tbaa !25
  %522 = getelementptr inbounds i8, ptr %512, i64 6
  %523 = load i16, ptr %522, align 2, !tbaa !25
  %524 = getelementptr inbounds i16, ptr %513, i64 %509
  store i16 %523, ptr %524, align 2, !tbaa !25
  %525 = getelementptr inbounds i8, ptr %493, i64 16
  %526 = load ptr, ptr %525, align 8, !tbaa !6
  %527 = load ptr, ptr %478, align 8, !tbaa !6
  %528 = load i16, ptr %526, align 2, !tbaa !25
  %529 = getelementptr inbounds i16, ptr %527, i64 %494
  store i16 %528, ptr %529, align 2, !tbaa !25
  %530 = getelementptr inbounds i8, ptr %526, i64 2
  %531 = load i16, ptr %530, align 2, !tbaa !25
  %532 = getelementptr inbounds i16, ptr %527, i64 %501
  store i16 %531, ptr %532, align 2, !tbaa !25
  %533 = getelementptr inbounds i8, ptr %526, i64 4
  %534 = load i16, ptr %533, align 2, !tbaa !25
  %535 = getelementptr inbounds i16, ptr %527, i64 %505
  store i16 %534, ptr %535, align 2, !tbaa !25
  %536 = getelementptr inbounds i8, ptr %526, i64 6
  %537 = load i16, ptr %536, align 2, !tbaa !25
  %538 = getelementptr inbounds i16, ptr %527, i64 %509
  store i16 %537, ptr %538, align 2, !tbaa !25
  %539 = getelementptr inbounds i8, ptr %493, i64 24
  %540 = load ptr, ptr %539, align 8, !tbaa !6
  %541 = load ptr, ptr %480, align 8, !tbaa !6
  %542 = load i16, ptr %540, align 2, !tbaa !25
  %543 = getelementptr inbounds i16, ptr %541, i64 %494
  store i16 %542, ptr %543, align 2, !tbaa !25
  %544 = getelementptr inbounds i8, ptr %540, i64 2
  %545 = load i16, ptr %544, align 2, !tbaa !25
  %546 = getelementptr inbounds i16, ptr %541, i64 %501
  store i16 %545, ptr %546, align 2, !tbaa !25
  %547 = getelementptr inbounds i8, ptr %540, i64 4
  %548 = load i16, ptr %547, align 2, !tbaa !25
  %549 = getelementptr inbounds i16, ptr %541, i64 %505
  store i16 %548, ptr %549, align 2, !tbaa !25
  %550 = getelementptr inbounds i8, ptr %540, i64 6
  %551 = load i16, ptr %550, align 2, !tbaa !25
  %552 = getelementptr inbounds i16, ptr %541, i64 %509
  store i16 %551, ptr %552, align 2, !tbaa !25
  %553 = add nsw i64 %483, 1
  %554 = trunc i64 %553 to i32
  %555 = icmp eq i32 %463, %554
  br i1 %555, label %556, label %481

556:                                              ; preds = %481
  %557 = add nsw i64 %470, 1
  %558 = trunc i64 %557 to i32
  %559 = icmp eq i32 %464, %558
  br i1 %559, label %1113, label %468

560:                                              ; preds = %443, %560
  %561 = phi i64 [ 0, %443 ], [ %615, %560 ]
  %562 = or disjoint i64 %561, %446
  %563 = getelementptr inbounds ptr, ptr %444, i64 %562
  %564 = load ptr, ptr %563, align 8, !tbaa !6
  %565 = getelementptr inbounds ptr, ptr %0, i64 %562
  %566 = load ptr, ptr %565, align 8, !tbaa !6
  %567 = getelementptr inbounds i16, ptr %564, i64 %445
  %568 = load i16, ptr %567, align 2, !tbaa !25
  %569 = getelementptr inbounds i16, ptr %566, i64 %445
  store i16 %568, ptr %569, align 2, !tbaa !25
  %570 = getelementptr inbounds i16, ptr %564, i64 %447
  %571 = load i16, ptr %570, align 2, !tbaa !25
  %572 = getelementptr inbounds i16, ptr %566, i64 %447
  store i16 %571, ptr %572, align 2, !tbaa !25
  %573 = getelementptr inbounds i16, ptr %564, i64 %448
  %574 = load i16, ptr %573, align 2, !tbaa !25
  %575 = getelementptr inbounds i16, ptr %566, i64 %448
  store i16 %574, ptr %575, align 2, !tbaa !25
  %576 = getelementptr inbounds i16, ptr %564, i64 %449
  %577 = load i16, ptr %576, align 2, !tbaa !25
  %578 = getelementptr inbounds i16, ptr %566, i64 %449
  store i16 %577, ptr %578, align 2, !tbaa !25
  %579 = getelementptr inbounds i16, ptr %564, i64 %450
  %580 = load i16, ptr %579, align 2, !tbaa !25
  %581 = getelementptr inbounds i16, ptr %566, i64 %450
  store i16 %580, ptr %581, align 2, !tbaa !25
  %582 = getelementptr inbounds i16, ptr %564, i64 %451
  %583 = load i16, ptr %582, align 2, !tbaa !25
  %584 = getelementptr inbounds i16, ptr %566, i64 %451
  store i16 %583, ptr %584, align 2, !tbaa !25
  %585 = getelementptr inbounds i16, ptr %564, i64 %452
  %586 = load i16, ptr %585, align 2, !tbaa !25
  %587 = getelementptr inbounds i16, ptr %566, i64 %452
  store i16 %586, ptr %587, align 2, !tbaa !25
  %588 = getelementptr inbounds i16, ptr %564, i64 %453
  %589 = load i16, ptr %588, align 2, !tbaa !25
  %590 = getelementptr inbounds i16, ptr %566, i64 %453
  store i16 %589, ptr %590, align 2, !tbaa !25
  %591 = getelementptr inbounds i16, ptr %564, i64 %454
  %592 = load i16, ptr %591, align 2, !tbaa !25
  %593 = getelementptr inbounds i16, ptr %566, i64 %454
  store i16 %592, ptr %593, align 2, !tbaa !25
  %594 = getelementptr inbounds i16, ptr %564, i64 %455
  %595 = load i16, ptr %594, align 2, !tbaa !25
  %596 = getelementptr inbounds i16, ptr %566, i64 %455
  store i16 %595, ptr %596, align 2, !tbaa !25
  %597 = getelementptr inbounds i16, ptr %564, i64 %456
  %598 = load i16, ptr %597, align 2, !tbaa !25
  %599 = getelementptr inbounds i16, ptr %566, i64 %456
  store i16 %598, ptr %599, align 2, !tbaa !25
  %600 = getelementptr inbounds i16, ptr %564, i64 %457
  %601 = load i16, ptr %600, align 2, !tbaa !25
  %602 = getelementptr inbounds i16, ptr %566, i64 %457
  store i16 %601, ptr %602, align 2, !tbaa !25
  %603 = getelementptr inbounds i16, ptr %564, i64 %458
  %604 = load i16, ptr %603, align 2, !tbaa !25
  %605 = getelementptr inbounds i16, ptr %566, i64 %458
  store i16 %604, ptr %605, align 2, !tbaa !25
  %606 = getelementptr inbounds i16, ptr %564, i64 %459
  %607 = load i16, ptr %606, align 2, !tbaa !25
  %608 = getelementptr inbounds i16, ptr %566, i64 %459
  store i16 %607, ptr %608, align 2, !tbaa !25
  %609 = getelementptr inbounds i16, ptr %564, i64 %460
  %610 = load i16, ptr %609, align 2, !tbaa !25
  %611 = getelementptr inbounds i16, ptr %566, i64 %460
  store i16 %610, ptr %611, align 2, !tbaa !25
  %612 = getelementptr inbounds i16, ptr %564, i64 %461
  %613 = load i16, ptr %612, align 2, !tbaa !25
  %614 = getelementptr inbounds i16, ptr %566, i64 %461
  store i16 %613, ptr %614, align 2, !tbaa !25
  %615 = add nuw nsw i64 %561, 1
  %616 = icmp eq i64 %615, 16
  br i1 %616, label %1113, label %560

617:                                              ; preds = %345, %617
  %618 = phi i64 [ 0, %345 ], [ %638, %617 ]
  %619 = or disjoint i64 %618, %347
  %620 = getelementptr inbounds ptr, ptr %0, i64 %619
  %621 = load ptr, ptr %620, align 8, !tbaa !6
  %622 = getelementptr inbounds i16, ptr %621, i64 %346
  store i16 127, ptr %622, align 2, !tbaa !25
  %623 = getelementptr inbounds i16, ptr %621, i64 %348
  store i16 127, ptr %623, align 2, !tbaa !25
  %624 = getelementptr inbounds i16, ptr %621, i64 %349
  store i16 127, ptr %624, align 2, !tbaa !25
  %625 = getelementptr inbounds i16, ptr %621, i64 %350
  store i16 127, ptr %625, align 2, !tbaa !25
  %626 = getelementptr inbounds i16, ptr %621, i64 %351
  store i16 127, ptr %626, align 2, !tbaa !25
  %627 = getelementptr inbounds i16, ptr %621, i64 %352
  store i16 127, ptr %627, align 2, !tbaa !25
  %628 = getelementptr inbounds i16, ptr %621, i64 %353
  store i16 127, ptr %628, align 2, !tbaa !25
  %629 = getelementptr inbounds i16, ptr %621, i64 %354
  store i16 127, ptr %629, align 2, !tbaa !25
  %630 = getelementptr inbounds i16, ptr %621, i64 %355
  store i16 127, ptr %630, align 2, !tbaa !25
  %631 = getelementptr inbounds i16, ptr %621, i64 %356
  store i16 127, ptr %631, align 2, !tbaa !25
  %632 = getelementptr inbounds i16, ptr %621, i64 %357
  store i16 127, ptr %632, align 2, !tbaa !25
  %633 = getelementptr inbounds i16, ptr %621, i64 %358
  store i16 127, ptr %633, align 2, !tbaa !25
  %634 = getelementptr inbounds i16, ptr %621, i64 %359
  store i16 127, ptr %634, align 2, !tbaa !25
  %635 = getelementptr inbounds i16, ptr %621, i64 %360
  store i16 127, ptr %635, align 2, !tbaa !25
  %636 = getelementptr inbounds i16, ptr %621, i64 %361
  store i16 127, ptr %636, align 2, !tbaa !25
  %637 = getelementptr inbounds i16, ptr %621, i64 %362
  store i16 127, ptr %637, align 2, !tbaa !25
  %638 = add nuw nsw i64 %618, 1
  %639 = icmp eq i64 %638, 16
  br i1 %639, label %1113, label %617

640:                                              ; preds = %42
  %641 = getelementptr inbounds i8, ptr %7, i64 24
  %642 = load i32, ptr %641, align 8, !tbaa !18
  %643 = icmp eq i32 %642, 2
  br i1 %643, label %1113, label %644

644:                                              ; preds = %640
  %645 = shl nsw i32 %1, 2
  %646 = shl nsw i32 %2, 2
  %647 = sext i32 %646 to i64
  %648 = sext i32 %645 to i64
  %649 = getelementptr inbounds ptr, ptr %48, i64 %648
  %650 = load ptr, ptr %649, align 8, !tbaa !6
  %651 = getelementptr i8, ptr %650, i64 32
  %652 = getelementptr ptr, ptr %651, i64 %647
  %653 = load ptr, ptr %652, align 8, !tbaa !6
  %654 = load i16, ptr %653, align 2, !tbaa !25
  %655 = sext i16 %654 to i32
  store i32 %655, ptr %6, align 4, !tbaa !16
  %656 = getelementptr inbounds i8, ptr %653, i64 2
  %657 = load i16, ptr %656, align 2, !tbaa !25
  %658 = sext i16 %657 to i32
  %659 = getelementptr inbounds i8, ptr %6, i64 64
  store i32 %658, ptr %659, align 4, !tbaa !16
  %660 = or disjoint i64 %647, 1
  %661 = getelementptr ptr, ptr %651, i64 %660
  %662 = load ptr, ptr %661, align 8, !tbaa !6
  %663 = load i16, ptr %662, align 2, !tbaa !25
  %664 = sext i16 %663 to i32
  %665 = getelementptr inbounds i8, ptr %6, i64 4
  store i32 %664, ptr %665, align 4, !tbaa !16
  %666 = getelementptr inbounds i8, ptr %662, i64 2
  %667 = load i16, ptr %666, align 2, !tbaa !25
  %668 = sext i16 %667 to i32
  %669 = getelementptr inbounds i8, ptr %6, i64 68
  store i32 %668, ptr %669, align 4, !tbaa !16
  %670 = or disjoint i64 %647, 2
  %671 = getelementptr ptr, ptr %651, i64 %670
  %672 = load ptr, ptr %671, align 8, !tbaa !6
  %673 = load i16, ptr %672, align 2, !tbaa !25
  %674 = sext i16 %673 to i32
  %675 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 %674, ptr %675, align 4, !tbaa !16
  %676 = getelementptr inbounds i8, ptr %672, i64 2
  %677 = load i16, ptr %676, align 2, !tbaa !25
  %678 = sext i16 %677 to i32
  %679 = getelementptr inbounds i8, ptr %6, i64 72
  store i32 %678, ptr %679, align 4, !tbaa !16
  %680 = or disjoint i64 %647, 3
  %681 = getelementptr ptr, ptr %651, i64 %680
  %682 = load ptr, ptr %681, align 8, !tbaa !6
  %683 = load i16, ptr %682, align 2, !tbaa !25
  %684 = sext i16 %683 to i32
  %685 = getelementptr inbounds i8, ptr %6, i64 12
  store i32 %684, ptr %685, align 4, !tbaa !16
  %686 = getelementptr inbounds i8, ptr %682, i64 2
  %687 = load i16, ptr %686, align 2, !tbaa !25
  %688 = sext i16 %687 to i32
  %689 = getelementptr inbounds i8, ptr %6, i64 76
  store i32 %688, ptr %689, align 4, !tbaa !16
  %690 = or disjoint i64 %648, 1
  %691 = getelementptr inbounds ptr, ptr %48, i64 %690
  %692 = load ptr, ptr %691, align 8, !tbaa !6
  %693 = getelementptr i8, ptr %692, i64 32
  %694 = getelementptr ptr, ptr %693, i64 %647
  %695 = load ptr, ptr %694, align 8, !tbaa !6
  %696 = load i16, ptr %695, align 2, !tbaa !25
  %697 = sext i16 %696 to i32
  %698 = getelementptr inbounds i8, ptr %6, i64 16
  store i32 %697, ptr %698, align 4, !tbaa !16
  %699 = getelementptr inbounds i8, ptr %695, i64 2
  %700 = load i16, ptr %699, align 2, !tbaa !25
  %701 = sext i16 %700 to i32
  %702 = getelementptr inbounds i8, ptr %6, i64 80
  store i32 %701, ptr %702, align 4, !tbaa !16
  %703 = getelementptr ptr, ptr %693, i64 %660
  %704 = load ptr, ptr %703, align 8, !tbaa !6
  %705 = load i16, ptr %704, align 2, !tbaa !25
  %706 = sext i16 %705 to i32
  %707 = getelementptr inbounds i8, ptr %6, i64 20
  store i32 %706, ptr %707, align 4, !tbaa !16
  %708 = getelementptr inbounds i8, ptr %704, i64 2
  %709 = load i16, ptr %708, align 2, !tbaa !25
  %710 = sext i16 %709 to i32
  %711 = getelementptr inbounds i8, ptr %6, i64 84
  store i32 %710, ptr %711, align 4, !tbaa !16
  %712 = getelementptr ptr, ptr %693, i64 %670
  %713 = load ptr, ptr %712, align 8, !tbaa !6
  %714 = load i16, ptr %713, align 2, !tbaa !25
  %715 = sext i16 %714 to i32
  %716 = getelementptr inbounds i8, ptr %6, i64 24
  store i32 %715, ptr %716, align 4, !tbaa !16
  %717 = getelementptr inbounds i8, ptr %713, i64 2
  %718 = load i16, ptr %717, align 2, !tbaa !25
  %719 = sext i16 %718 to i32
  %720 = getelementptr inbounds i8, ptr %6, i64 88
  store i32 %719, ptr %720, align 4, !tbaa !16
  %721 = getelementptr ptr, ptr %693, i64 %680
  %722 = load ptr, ptr %721, align 8, !tbaa !6
  %723 = load i16, ptr %722, align 2, !tbaa !25
  %724 = sext i16 %723 to i32
  %725 = getelementptr inbounds i8, ptr %6, i64 28
  store i32 %724, ptr %725, align 4, !tbaa !16
  %726 = getelementptr inbounds i8, ptr %722, i64 2
  %727 = load i16, ptr %726, align 2, !tbaa !25
  %728 = sext i16 %727 to i32
  %729 = getelementptr inbounds i8, ptr %6, i64 92
  store i32 %728, ptr %729, align 4, !tbaa !16
  %730 = or disjoint i64 %648, 2
  %731 = getelementptr inbounds ptr, ptr %48, i64 %730
  %732 = load ptr, ptr %731, align 8, !tbaa !6
  %733 = getelementptr i8, ptr %732, i64 32
  %734 = getelementptr ptr, ptr %733, i64 %647
  %735 = load ptr, ptr %734, align 8, !tbaa !6
  %736 = load i16, ptr %735, align 2, !tbaa !25
  %737 = sext i16 %736 to i32
  %738 = getelementptr inbounds i8, ptr %6, i64 32
  store i32 %737, ptr %738, align 4, !tbaa !16
  %739 = getelementptr inbounds i8, ptr %735, i64 2
  %740 = load i16, ptr %739, align 2, !tbaa !25
  %741 = sext i16 %740 to i32
  %742 = getelementptr inbounds i8, ptr %6, i64 96
  store i32 %741, ptr %742, align 4, !tbaa !16
  %743 = getelementptr ptr, ptr %733, i64 %660
  %744 = load ptr, ptr %743, align 8, !tbaa !6
  %745 = load i16, ptr %744, align 2, !tbaa !25
  %746 = sext i16 %745 to i32
  %747 = getelementptr inbounds i8, ptr %6, i64 36
  store i32 %746, ptr %747, align 4, !tbaa !16
  %748 = getelementptr inbounds i8, ptr %744, i64 2
  %749 = load i16, ptr %748, align 2, !tbaa !25
  %750 = sext i16 %749 to i32
  %751 = getelementptr inbounds i8, ptr %6, i64 100
  store i32 %750, ptr %751, align 4, !tbaa !16
  %752 = getelementptr ptr, ptr %733, i64 %670
  %753 = load ptr, ptr %752, align 8, !tbaa !6
  %754 = load i16, ptr %753, align 2, !tbaa !25
  %755 = sext i16 %754 to i32
  %756 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 %755, ptr %756, align 4, !tbaa !16
  %757 = getelementptr inbounds i8, ptr %753, i64 2
  %758 = load i16, ptr %757, align 2, !tbaa !25
  %759 = sext i16 %758 to i32
  %760 = getelementptr inbounds i8, ptr %6, i64 104
  store i32 %759, ptr %760, align 4, !tbaa !16
  %761 = getelementptr ptr, ptr %733, i64 %680
  %762 = load ptr, ptr %761, align 8, !tbaa !6
  %763 = load i16, ptr %762, align 2, !tbaa !25
  %764 = sext i16 %763 to i32
  %765 = getelementptr inbounds i8, ptr %6, i64 44
  store i32 %764, ptr %765, align 4, !tbaa !16
  %766 = getelementptr inbounds i8, ptr %762, i64 2
  %767 = load i16, ptr %766, align 2, !tbaa !25
  %768 = sext i16 %767 to i32
  %769 = getelementptr inbounds i8, ptr %6, i64 108
  store i32 %768, ptr %769, align 4, !tbaa !16
  %770 = or disjoint i64 %648, 3
  %771 = getelementptr inbounds ptr, ptr %48, i64 %770
  %772 = load ptr, ptr %771, align 8, !tbaa !6
  %773 = getelementptr i8, ptr %772, i64 32
  %774 = getelementptr ptr, ptr %773, i64 %647
  %775 = load ptr, ptr %774, align 8, !tbaa !6
  %776 = load i16, ptr %775, align 2, !tbaa !25
  %777 = sext i16 %776 to i32
  %778 = getelementptr inbounds i8, ptr %6, i64 48
  store i32 %777, ptr %778, align 4, !tbaa !16
  %779 = getelementptr inbounds i8, ptr %775, i64 2
  %780 = load i16, ptr %779, align 2, !tbaa !25
  %781 = sext i16 %780 to i32
  %782 = getelementptr inbounds i8, ptr %6, i64 112
  store i32 %781, ptr %782, align 4, !tbaa !16
  %783 = getelementptr ptr, ptr %773, i64 %660
  %784 = load ptr, ptr %783, align 8, !tbaa !6
  %785 = load i16, ptr %784, align 2, !tbaa !25
  %786 = sext i16 %785 to i32
  %787 = getelementptr inbounds i8, ptr %6, i64 52
  store i32 %786, ptr %787, align 4, !tbaa !16
  %788 = getelementptr inbounds i8, ptr %784, i64 2
  %789 = load i16, ptr %788, align 2, !tbaa !25
  %790 = sext i16 %789 to i32
  %791 = getelementptr inbounds i8, ptr %6, i64 116
  store i32 %790, ptr %791, align 4, !tbaa !16
  %792 = getelementptr ptr, ptr %773, i64 %670
  %793 = load ptr, ptr %792, align 8, !tbaa !6
  %794 = load i16, ptr %793, align 2, !tbaa !25
  %795 = sext i16 %794 to i32
  %796 = getelementptr inbounds i8, ptr %6, i64 56
  store i32 %795, ptr %796, align 4, !tbaa !16
  %797 = getelementptr inbounds i8, ptr %793, i64 2
  %798 = load i16, ptr %797, align 2, !tbaa !25
  %799 = sext i16 %798 to i32
  %800 = getelementptr inbounds i8, ptr %6, i64 120
  store i32 %799, ptr %800, align 4, !tbaa !16
  %801 = getelementptr ptr, ptr %773, i64 %680
  %802 = load ptr, ptr %801, align 8, !tbaa !6
  %803 = load i16, ptr %802, align 2, !tbaa !25
  %804 = sext i16 %803 to i32
  %805 = getelementptr inbounds i8, ptr %6, i64 60
  store i32 %804, ptr %805, align 4, !tbaa !16
  %806 = getelementptr inbounds i8, ptr %802, i64 2
  %807 = load i16, ptr %806, align 2, !tbaa !25
  %808 = sext i16 %807 to i32
  %809 = getelementptr inbounds i8, ptr %6, i64 124
  store i32 %808, ptr %809, align 4, !tbaa !16
  br i1 %43, label %810, label %888

810:                                              ; preds = %644
  %811 = sext i32 %14 to i64
  %812 = getelementptr inbounds ptr, ptr %3, i64 %811
  %813 = load ptr, ptr %812, align 8, !tbaa !6
  %814 = sext i32 %16 to i64
  %815 = sext i32 %15 to i64
  %816 = or disjoint i64 %814, 1
  %817 = or disjoint i64 %814, 2
  %818 = or disjoint i64 %814, 3
  %819 = or disjoint i64 %814, 4
  %820 = or disjoint i64 %814, 5
  %821 = or disjoint i64 %814, 6
  %822 = or disjoint i64 %814, 7
  %823 = or disjoint i64 %814, 8
  %824 = or disjoint i64 %814, 9
  %825 = or disjoint i64 %814, 10
  %826 = or disjoint i64 %814, 11
  %827 = or disjoint i64 %814, 12
  %828 = or disjoint i64 %814, 13
  %829 = or disjoint i64 %814, 14
  %830 = or disjoint i64 %814, 15
  br label %831

831:                                              ; preds = %810, %831
  %832 = phi i64 [ 0, %810 ], [ %886, %831 ]
  %833 = or disjoint i64 %832, %815
  %834 = getelementptr inbounds ptr, ptr %813, i64 %833
  %835 = load ptr, ptr %834, align 8, !tbaa !6
  %836 = getelementptr inbounds ptr, ptr %0, i64 %833
  %837 = load ptr, ptr %836, align 8, !tbaa !6
  %838 = getelementptr inbounds i16, ptr %835, i64 %814
  %839 = load i16, ptr %838, align 2, !tbaa !25
  %840 = getelementptr inbounds i16, ptr %837, i64 %814
  store i16 %839, ptr %840, align 2, !tbaa !25
  %841 = getelementptr inbounds i16, ptr %835, i64 %816
  %842 = load i16, ptr %841, align 2, !tbaa !25
  %843 = getelementptr inbounds i16, ptr %837, i64 %816
  store i16 %842, ptr %843, align 2, !tbaa !25
  %844 = getelementptr inbounds i16, ptr %835, i64 %817
  %845 = load i16, ptr %844, align 2, !tbaa !25
  %846 = getelementptr inbounds i16, ptr %837, i64 %817
  store i16 %845, ptr %846, align 2, !tbaa !25
  %847 = getelementptr inbounds i16, ptr %835, i64 %818
  %848 = load i16, ptr %847, align 2, !tbaa !25
  %849 = getelementptr inbounds i16, ptr %837, i64 %818
  store i16 %848, ptr %849, align 2, !tbaa !25
  %850 = getelementptr inbounds i16, ptr %835, i64 %819
  %851 = load i16, ptr %850, align 2, !tbaa !25
  %852 = getelementptr inbounds i16, ptr %837, i64 %819
  store i16 %851, ptr %852, align 2, !tbaa !25
  %853 = getelementptr inbounds i16, ptr %835, i64 %820
  %854 = load i16, ptr %853, align 2, !tbaa !25
  %855 = getelementptr inbounds i16, ptr %837, i64 %820
  store i16 %854, ptr %855, align 2, !tbaa !25
  %856 = getelementptr inbounds i16, ptr %835, i64 %821
  %857 = load i16, ptr %856, align 2, !tbaa !25
  %858 = getelementptr inbounds i16, ptr %837, i64 %821
  store i16 %857, ptr %858, align 2, !tbaa !25
  %859 = getelementptr inbounds i16, ptr %835, i64 %822
  %860 = load i16, ptr %859, align 2, !tbaa !25
  %861 = getelementptr inbounds i16, ptr %837, i64 %822
  store i16 %860, ptr %861, align 2, !tbaa !25
  %862 = getelementptr inbounds i16, ptr %835, i64 %823
  %863 = load i16, ptr %862, align 2, !tbaa !25
  %864 = getelementptr inbounds i16, ptr %837, i64 %823
  store i16 %863, ptr %864, align 2, !tbaa !25
  %865 = getelementptr inbounds i16, ptr %835, i64 %824
  %866 = load i16, ptr %865, align 2, !tbaa !25
  %867 = getelementptr inbounds i16, ptr %837, i64 %824
  store i16 %866, ptr %867, align 2, !tbaa !25
  %868 = getelementptr inbounds i16, ptr %835, i64 %825
  %869 = load i16, ptr %868, align 2, !tbaa !25
  %870 = getelementptr inbounds i16, ptr %837, i64 %825
  store i16 %869, ptr %870, align 2, !tbaa !25
  %871 = getelementptr inbounds i16, ptr %835, i64 %826
  %872 = load i16, ptr %871, align 2, !tbaa !25
  %873 = getelementptr inbounds i16, ptr %837, i64 %826
  store i16 %872, ptr %873, align 2, !tbaa !25
  %874 = getelementptr inbounds i16, ptr %835, i64 %827
  %875 = load i16, ptr %874, align 2, !tbaa !25
  %876 = getelementptr inbounds i16, ptr %837, i64 %827
  store i16 %875, ptr %876, align 2, !tbaa !25
  %877 = getelementptr inbounds i16, ptr %835, i64 %828
  %878 = load i16, ptr %877, align 2, !tbaa !25
  %879 = getelementptr inbounds i16, ptr %837, i64 %828
  store i16 %878, ptr %879, align 2, !tbaa !25
  %880 = getelementptr inbounds i16, ptr %835, i64 %829
  %881 = load i16, ptr %880, align 2, !tbaa !25
  %882 = getelementptr inbounds i16, ptr %837, i64 %829
  store i16 %881, ptr %882, align 2, !tbaa !25
  %883 = getelementptr inbounds i16, ptr %835, i64 %830
  %884 = load i16, ptr %883, align 2, !tbaa !25
  %885 = getelementptr inbounds i16, ptr %837, i64 %830
  store i16 %884, ptr %885, align 2, !tbaa !25
  %886 = add nuw nsw i64 %832, 1
  %887 = icmp eq i64 %886, 16
  br i1 %887, label %1113, label %831

888:                                              ; preds = %644
  br i1 %44, label %889, label %1113

889:                                              ; preds = %888
  %890 = sext i32 %14 to i64
  %891 = getelementptr inbounds ptr, ptr %3, i64 %890
  %892 = add i32 %646, 4
  %893 = add i32 %645, 4
  %894 = load ptr, ptr @decs, align 8, !tbaa !6
  %895 = getelementptr inbounds i8, ptr %894, i64 32
  %896 = load ptr, ptr %895, align 8, !tbaa !32
  br label %897

897:                                              ; preds = %889, %985
  %898 = phi ptr [ %896, %889 ], [ %922, %985 ]
  %899 = phi i64 [ %648, %889 ], [ %986, %985 ]
  %900 = sub nuw nsw i64 %899, %648
  %901 = shl nsw i64 %899, 2
  %902 = trunc nsw i64 %899 to i32
  %903 = getelementptr inbounds ptr, ptr %0, i64 %901
  %904 = or disjoint i64 %901, 1
  %905 = getelementptr inbounds ptr, ptr %0, i64 %904
  %906 = or disjoint i64 %901, 2
  %907 = getelementptr inbounds ptr, ptr %0, i64 %906
  %908 = or disjoint i64 %901, 3
  %909 = getelementptr inbounds ptr, ptr %0, i64 %908
  br label %910

910:                                              ; preds = %897, %910
  %911 = phi ptr [ %898, %897 ], [ %922, %910 ]
  %912 = phi i64 [ %647, %897 ], [ %982, %910 ]
  %913 = load ptr, ptr %891, align 8, !tbaa !6
  %914 = sub nuw nsw i64 %912, %647
  %915 = getelementptr inbounds [4 x [4 x i32]], ptr %6, i64 0, i64 %900, i64 %914
  %916 = load i32, ptr %915, align 4, !tbaa !16
  %917 = getelementptr inbounds [4 x [4 x i32]], ptr %659, i64 0, i64 %900, i64 %914
  %918 = load i32, ptr %917, align 4, !tbaa !16
  %919 = trunc nsw i64 %912 to i32
  tail call void @Get_Reference_Block(ptr noundef %913, i32 noundef signext %902, i32 noundef signext %919, i32 noundef signext %916, i32 noundef signext %918, ptr noundef %911)
  %920 = load ptr, ptr @decs, align 8, !tbaa !6
  %921 = getelementptr inbounds i8, ptr %920, i64 32
  %922 = load ptr, ptr %921, align 8, !tbaa !32
  %923 = shl nsw i64 %912, 2
  %924 = load ptr, ptr %922, align 8, !tbaa !6
  %925 = load ptr, ptr %903, align 8, !tbaa !6
  %926 = load i16, ptr %924, align 2, !tbaa !25
  %927 = getelementptr inbounds i16, ptr %925, i64 %923
  store i16 %926, ptr %927, align 2, !tbaa !25
  %928 = getelementptr inbounds i8, ptr %924, i64 2
  %929 = load i16, ptr %928, align 2, !tbaa !25
  %930 = or disjoint i64 %923, 1
  %931 = getelementptr inbounds i16, ptr %925, i64 %930
  store i16 %929, ptr %931, align 2, !tbaa !25
  %932 = getelementptr inbounds i8, ptr %924, i64 4
  %933 = load i16, ptr %932, align 2, !tbaa !25
  %934 = or disjoint i64 %923, 2
  %935 = getelementptr inbounds i16, ptr %925, i64 %934
  store i16 %933, ptr %935, align 2, !tbaa !25
  %936 = getelementptr inbounds i8, ptr %924, i64 6
  %937 = load i16, ptr %936, align 2, !tbaa !25
  %938 = or disjoint i64 %923, 3
  %939 = getelementptr inbounds i16, ptr %925, i64 %938
  store i16 %937, ptr %939, align 2, !tbaa !25
  %940 = getelementptr inbounds i8, ptr %922, i64 8
  %941 = load ptr, ptr %940, align 8, !tbaa !6
  %942 = load ptr, ptr %905, align 8, !tbaa !6
  %943 = load i16, ptr %941, align 2, !tbaa !25
  %944 = getelementptr inbounds i16, ptr %942, i64 %923
  store i16 %943, ptr %944, align 2, !tbaa !25
  %945 = getelementptr inbounds i8, ptr %941, i64 2
  %946 = load i16, ptr %945, align 2, !tbaa !25
  %947 = getelementptr inbounds i16, ptr %942, i64 %930
  store i16 %946, ptr %947, align 2, !tbaa !25
  %948 = getelementptr inbounds i8, ptr %941, i64 4
  %949 = load i16, ptr %948, align 2, !tbaa !25
  %950 = getelementptr inbounds i16, ptr %942, i64 %934
  store i16 %949, ptr %950, align 2, !tbaa !25
  %951 = getelementptr inbounds i8, ptr %941, i64 6
  %952 = load i16, ptr %951, align 2, !tbaa !25
  %953 = getelementptr inbounds i16, ptr %942, i64 %938
  store i16 %952, ptr %953, align 2, !tbaa !25
  %954 = getelementptr inbounds i8, ptr %922, i64 16
  %955 = load ptr, ptr %954, align 8, !tbaa !6
  %956 = load ptr, ptr %907, align 8, !tbaa !6
  %957 = load i16, ptr %955, align 2, !tbaa !25
  %958 = getelementptr inbounds i16, ptr %956, i64 %923
  store i16 %957, ptr %958, align 2, !tbaa !25
  %959 = getelementptr inbounds i8, ptr %955, i64 2
  %960 = load i16, ptr %959, align 2, !tbaa !25
  %961 = getelementptr inbounds i16, ptr %956, i64 %930
  store i16 %960, ptr %961, align 2, !tbaa !25
  %962 = getelementptr inbounds i8, ptr %955, i64 4
  %963 = load i16, ptr %962, align 2, !tbaa !25
  %964 = getelementptr inbounds i16, ptr %956, i64 %934
  store i16 %963, ptr %964, align 2, !tbaa !25
  %965 = getelementptr inbounds i8, ptr %955, i64 6
  %966 = load i16, ptr %965, align 2, !tbaa !25
  %967 = getelementptr inbounds i16, ptr %956, i64 %938
  store i16 %966, ptr %967, align 2, !tbaa !25
  %968 = getelementptr inbounds i8, ptr %922, i64 24
  %969 = load ptr, ptr %968, align 8, !tbaa !6
  %970 = load ptr, ptr %909, align 8, !tbaa !6
  %971 = load i16, ptr %969, align 2, !tbaa !25
  %972 = getelementptr inbounds i16, ptr %970, i64 %923
  store i16 %971, ptr %972, align 2, !tbaa !25
  %973 = getelementptr inbounds i8, ptr %969, i64 2
  %974 = load i16, ptr %973, align 2, !tbaa !25
  %975 = getelementptr inbounds i16, ptr %970, i64 %930
  store i16 %974, ptr %975, align 2, !tbaa !25
  %976 = getelementptr inbounds i8, ptr %969, i64 4
  %977 = load i16, ptr %976, align 2, !tbaa !25
  %978 = getelementptr inbounds i16, ptr %970, i64 %934
  store i16 %977, ptr %978, align 2, !tbaa !25
  %979 = getelementptr inbounds i8, ptr %969, i64 6
  %980 = load i16, ptr %979, align 2, !tbaa !25
  %981 = getelementptr inbounds i16, ptr %970, i64 %938
  store i16 %980, ptr %981, align 2, !tbaa !25
  %982 = add nsw i64 %912, 1
  %983 = trunc i64 %982 to i32
  %984 = icmp eq i32 %892, %983
  br i1 %984, label %985, label %910

985:                                              ; preds = %910
  %986 = add nsw i64 %899, 1
  %987 = trunc i64 %986 to i32
  %988 = icmp eq i32 %893, %987
  br i1 %988, label %1113, label %897

989:                                              ; preds = %42
  %990 = getelementptr inbounds i8, ptr %7, i64 24
  %991 = load i32, ptr %990, align 8, !tbaa !18
  %992 = icmp eq i32 %991, 2
  br i1 %992, label %993, label %1011

993:                                              ; preds = %989
  %994 = sext i32 %16 to i64
  %995 = sext i32 %15 to i64
  %996 = or disjoint i64 %994, 1
  %997 = or disjoint i64 %994, 2
  %998 = or disjoint i64 %994, 3
  %999 = or disjoint i64 %994, 4
  %1000 = or disjoint i64 %994, 5
  %1001 = or disjoint i64 %994, 6
  %1002 = or disjoint i64 %994, 7
  %1003 = or disjoint i64 %994, 8
  %1004 = or disjoint i64 %994, 9
  %1005 = or disjoint i64 %994, 10
  %1006 = or disjoint i64 %994, 11
  %1007 = or disjoint i64 %994, 12
  %1008 = or disjoint i64 %994, 13
  %1009 = or disjoint i64 %994, 14
  %1010 = or disjoint i64 %994, 15
  br label %1090

1011:                                             ; preds = %989
  br i1 %44, label %1113, label %1012

1012:                                             ; preds = %1011
  %1013 = sext i32 %14 to i64
  %1014 = getelementptr inbounds ptr, ptr %3, i64 %1013
  %1015 = load ptr, ptr %1014, align 8, !tbaa !6
  %1016 = sext i32 %16 to i64
  %1017 = sext i32 %15 to i64
  %1018 = or disjoint i64 %1016, 1
  %1019 = or disjoint i64 %1016, 2
  %1020 = or disjoint i64 %1016, 3
  %1021 = or disjoint i64 %1016, 4
  %1022 = or disjoint i64 %1016, 5
  %1023 = or disjoint i64 %1016, 6
  %1024 = or disjoint i64 %1016, 7
  %1025 = or disjoint i64 %1016, 8
  %1026 = or disjoint i64 %1016, 9
  %1027 = or disjoint i64 %1016, 10
  %1028 = or disjoint i64 %1016, 11
  %1029 = or disjoint i64 %1016, 12
  %1030 = or disjoint i64 %1016, 13
  %1031 = or disjoint i64 %1016, 14
  %1032 = or disjoint i64 %1016, 15
  br label %1033

1033:                                             ; preds = %1012, %1033
  %1034 = phi i64 [ 0, %1012 ], [ %1088, %1033 ]
  %1035 = or disjoint i64 %1034, %1017
  %1036 = getelementptr inbounds ptr, ptr %1015, i64 %1035
  %1037 = load ptr, ptr %1036, align 8, !tbaa !6
  %1038 = getelementptr inbounds ptr, ptr %0, i64 %1035
  %1039 = load ptr, ptr %1038, align 8, !tbaa !6
  %1040 = getelementptr inbounds i16, ptr %1037, i64 %1016
  %1041 = load i16, ptr %1040, align 2, !tbaa !25
  %1042 = getelementptr inbounds i16, ptr %1039, i64 %1016
  store i16 %1041, ptr %1042, align 2, !tbaa !25
  %1043 = getelementptr inbounds i16, ptr %1037, i64 %1018
  %1044 = load i16, ptr %1043, align 2, !tbaa !25
  %1045 = getelementptr inbounds i16, ptr %1039, i64 %1018
  store i16 %1044, ptr %1045, align 2, !tbaa !25
  %1046 = getelementptr inbounds i16, ptr %1037, i64 %1019
  %1047 = load i16, ptr %1046, align 2, !tbaa !25
  %1048 = getelementptr inbounds i16, ptr %1039, i64 %1019
  store i16 %1047, ptr %1048, align 2, !tbaa !25
  %1049 = getelementptr inbounds i16, ptr %1037, i64 %1020
  %1050 = load i16, ptr %1049, align 2, !tbaa !25
  %1051 = getelementptr inbounds i16, ptr %1039, i64 %1020
  store i16 %1050, ptr %1051, align 2, !tbaa !25
  %1052 = getelementptr inbounds i16, ptr %1037, i64 %1021
  %1053 = load i16, ptr %1052, align 2, !tbaa !25
  %1054 = getelementptr inbounds i16, ptr %1039, i64 %1021
  store i16 %1053, ptr %1054, align 2, !tbaa !25
  %1055 = getelementptr inbounds i16, ptr %1037, i64 %1022
  %1056 = load i16, ptr %1055, align 2, !tbaa !25
  %1057 = getelementptr inbounds i16, ptr %1039, i64 %1022
  store i16 %1056, ptr %1057, align 2, !tbaa !25
  %1058 = getelementptr inbounds i16, ptr %1037, i64 %1023
  %1059 = load i16, ptr %1058, align 2, !tbaa !25
  %1060 = getelementptr inbounds i16, ptr %1039, i64 %1023
  store i16 %1059, ptr %1060, align 2, !tbaa !25
  %1061 = getelementptr inbounds i16, ptr %1037, i64 %1024
  %1062 = load i16, ptr %1061, align 2, !tbaa !25
  %1063 = getelementptr inbounds i16, ptr %1039, i64 %1024
  store i16 %1062, ptr %1063, align 2, !tbaa !25
  %1064 = getelementptr inbounds i16, ptr %1037, i64 %1025
  %1065 = load i16, ptr %1064, align 2, !tbaa !25
  %1066 = getelementptr inbounds i16, ptr %1039, i64 %1025
  store i16 %1065, ptr %1066, align 2, !tbaa !25
  %1067 = getelementptr inbounds i16, ptr %1037, i64 %1026
  %1068 = load i16, ptr %1067, align 2, !tbaa !25
  %1069 = getelementptr inbounds i16, ptr %1039, i64 %1026
  store i16 %1068, ptr %1069, align 2, !tbaa !25
  %1070 = getelementptr inbounds i16, ptr %1037, i64 %1027
  %1071 = load i16, ptr %1070, align 2, !tbaa !25
  %1072 = getelementptr inbounds i16, ptr %1039, i64 %1027
  store i16 %1071, ptr %1072, align 2, !tbaa !25
  %1073 = getelementptr inbounds i16, ptr %1037, i64 %1028
  %1074 = load i16, ptr %1073, align 2, !tbaa !25
  %1075 = getelementptr inbounds i16, ptr %1039, i64 %1028
  store i16 %1074, ptr %1075, align 2, !tbaa !25
  %1076 = getelementptr inbounds i16, ptr %1037, i64 %1029
  %1077 = load i16, ptr %1076, align 2, !tbaa !25
  %1078 = getelementptr inbounds i16, ptr %1039, i64 %1029
  store i16 %1077, ptr %1078, align 2, !tbaa !25
  %1079 = getelementptr inbounds i16, ptr %1037, i64 %1030
  %1080 = load i16, ptr %1079, align 2, !tbaa !25
  %1081 = getelementptr inbounds i16, ptr %1039, i64 %1030
  store i16 %1080, ptr %1081, align 2, !tbaa !25
  %1082 = getelementptr inbounds i16, ptr %1037, i64 %1031
  %1083 = load i16, ptr %1082, align 2, !tbaa !25
  %1084 = getelementptr inbounds i16, ptr %1039, i64 %1031
  store i16 %1083, ptr %1084, align 2, !tbaa !25
  %1085 = getelementptr inbounds i16, ptr %1037, i64 %1032
  %1086 = load i16, ptr %1085, align 2, !tbaa !25
  %1087 = getelementptr inbounds i16, ptr %1039, i64 %1032
  store i16 %1086, ptr %1087, align 2, !tbaa !25
  %1088 = add nuw nsw i64 %1034, 1
  %1089 = icmp eq i64 %1088, 16
  br i1 %1089, label %1113, label %1033

1090:                                             ; preds = %993, %1090
  %1091 = phi i64 [ 0, %993 ], [ %1111, %1090 ]
  %1092 = or disjoint i64 %1091, %995
  %1093 = getelementptr inbounds ptr, ptr %0, i64 %1092
  %1094 = load ptr, ptr %1093, align 8, !tbaa !6
  %1095 = getelementptr inbounds i16, ptr %1094, i64 %994
  store i16 127, ptr %1095, align 2, !tbaa !25
  %1096 = getelementptr inbounds i16, ptr %1094, i64 %996
  store i16 127, ptr %1096, align 2, !tbaa !25
  %1097 = getelementptr inbounds i16, ptr %1094, i64 %997
  store i16 127, ptr %1097, align 2, !tbaa !25
  %1098 = getelementptr inbounds i16, ptr %1094, i64 %998
  store i16 127, ptr %1098, align 2, !tbaa !25
  %1099 = getelementptr inbounds i16, ptr %1094, i64 %999
  store i16 127, ptr %1099, align 2, !tbaa !25
  %1100 = getelementptr inbounds i16, ptr %1094, i64 %1000
  store i16 127, ptr %1100, align 2, !tbaa !25
  %1101 = getelementptr inbounds i16, ptr %1094, i64 %1001
  store i16 127, ptr %1101, align 2, !tbaa !25
  %1102 = getelementptr inbounds i16, ptr %1094, i64 %1002
  store i16 127, ptr %1102, align 2, !tbaa !25
  %1103 = getelementptr inbounds i16, ptr %1094, i64 %1003
  store i16 127, ptr %1103, align 2, !tbaa !25
  %1104 = getelementptr inbounds i16, ptr %1094, i64 %1004
  store i16 127, ptr %1104, align 2, !tbaa !25
  %1105 = getelementptr inbounds i16, ptr %1094, i64 %1005
  store i16 127, ptr %1105, align 2, !tbaa !25
  %1106 = getelementptr inbounds i16, ptr %1094, i64 %1006
  store i16 127, ptr %1106, align 2, !tbaa !25
  %1107 = getelementptr inbounds i16, ptr %1094, i64 %1007
  store i16 127, ptr %1107, align 2, !tbaa !25
  %1108 = getelementptr inbounds i16, ptr %1094, i64 %1008
  store i16 127, ptr %1108, align 2, !tbaa !25
  %1109 = getelementptr inbounds i16, ptr %1094, i64 %1009
  store i16 127, ptr %1109, align 2, !tbaa !25
  %1110 = getelementptr inbounds i16, ptr %1094, i64 %1010
  store i16 127, ptr %1110, align 2, !tbaa !25
  %1111 = add nuw nsw i64 %1091, 1
  %1112 = icmp eq i64 %1111, 16
  br i1 %1112, label %1113, label %1090

1113:                                             ; preds = %1033, %1090, %985, %831, %560, %556, %385, %617, %265, %322, %1011, %640, %888, %42
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !13, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !14, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !14, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !15, i64 90584, !12, i64 90588, !12, i64 90592}
!12 = !{!"int", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!12, !12, i64 0}
!17 = !{!11, !12, i64 32}
!18 = !{!11, !12, i64 24}
!19 = !{!20, !7, i64 6424}
!20 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!21 = !{!11, !12, i64 156}
!22 = !{!11, !12, i64 152}
!23 = !{!24, !7, i64 8}
!24 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!25 = !{!15, !15, i64 0}
!26 = !{!11, !12, i64 90316}
!27 = !{!11, !7, i64 89336}
!28 = !{!24, !7, i64 0}
!29 = !{!11, !12, i64 144}
!30 = !{!11, !12, i64 148}
!31 = !{!24, !7, i64 16}
!32 = !{!24, !7, i64 32}
!33 = !{!11, !12, i64 52}
!34 = !{!11, !12, i64 60}
!35 = !{!11, !12, i64 90532}
!36 = !{!37, !12, i64 3576}
!37 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !14, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!38 = !{!24, !7, i64 40}
!39 = !{!24, !7, i64 24}
!40 = !{!8, !8, i64 0}
!41 = !{!11, !12, i64 90192}
!42 = !{!37, !12, i64 212}
!43 = !{!11, !7, i64 31576}
!44 = !{!45, !12, i64 4}
!45 = !{!"macroblock", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !12, i64 364, !46, i64 368, !8, i64 376, !8, i64 392, !46, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !15, i64 476, !14, i64 480, !12, i64 488, !12, i64 492, !12, i64 496, !12, i64 500, !12, i64 504, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520}
!46 = !{!"long long", !8, i64 0}
!47 = !{!37, !12, i64 3572}
!48 = !{!37, !12, i64 3568}
!49 = !{!37, !12, i64 3564}
!50 = !{!37, !12, i64 2992}
!51 = !{!24, !7, i64 48}
!52 = !{!20, !7, i64 6504}
