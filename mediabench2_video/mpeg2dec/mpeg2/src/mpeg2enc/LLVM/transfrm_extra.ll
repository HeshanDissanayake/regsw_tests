; ModuleID = 'transfrm.c'
source_filename = "transfrm.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.mbinfo = type { i32, i32, i32, i32, i32, i32, [2 x [2 x [2 x i32]]], [2 x [2 x i32]], [2 x i32], double, i32 }

@height2 = external dso_local local_unnamed_addr global i32, align 4
@width = external dso_local local_unnamed_addr global i32, align 4
@block_count = external dso_local local_unnamed_addr global i32, align 4
@pict_struct = external dso_local local_unnamed_addr global i32, align 4
@width2 = external dso_local local_unnamed_addr global i32, align 4
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@chrom_width = external dso_local local_unnamed_addr global i32, align 4
@chrom_width2 = external dso_local local_unnamed_addr global i32, align 4
@frame_pred_dct = external dso_local local_unnamed_addr global i32, align 4
@clp = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind
define dso_local void @transform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @height2, align 4, !tbaa !6
  %6 = icmp sgt i32 %5, 0
  %7 = load i32, ptr @width, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %658

10:                                               ; preds = %4, %650
  %11 = phi i32 [ %651, %650 ], [ %5, %4 ]
  %12 = phi i32 [ %652, %650 ], [ %7, %4 ]
  %13 = phi i32 [ %653, %650 ], [ %7, %4 ]
  %14 = phi i32 [ %654, %650 ], [ %7, %4 ]
  %15 = phi i32 [ %655, %650 ], [ 0, %4 ]
  %16 = phi i32 [ %656, %650 ], [ 0, %4 ]
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %650

18:                                               ; preds = %10
  %19 = load i32, ptr @block_count, align 4, !tbaa !6
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = sext i32 %15 to i64
  br label %29

23:                                               ; preds = %18
  %24 = tail call i32 @llvm.smax.i32(i32 %13, i32 16)
  %25 = add nsw i32 %24, -1
  %26 = lshr i32 %25, 4
  %27 = add i32 %15, 1
  %28 = add i32 %27, %26
  br label %650

29:                                               ; preds = %21, %641
  %30 = phi i32 [ %12, %21 ], [ %642, %641 ]
  %31 = phi i32 [ %19, %21 ], [ %643, %641 ]
  %32 = phi i64 [ %22, %21 ], [ %644, %641 ]
  %33 = phi i32 [ 0, %21 ], [ %645, %641 ]
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %35, label %641

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mbinfo, ptr %2, i64 %32, i32 2
  %37 = trunc nsw i64 %32 to i32
  br label %38

38:                                               ; preds = %35, %111
  %39 = phi i32 [ %31, %35 ], [ %637, %111 ]
  %40 = phi i32 [ 0, %35 ], [ %636, %111 ]
  %41 = icmp ult i32 %40, 4
  %42 = and i32 %40, 1
  %43 = add nuw nsw i32 %42, 1
  %44 = select i1 %41, i32 0, i32 %43
  br i1 %41, label %45, label %73

45:                                               ; preds = %38
  %46 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32, ptr %36, align 8, !tbaa !10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = shl nuw nsw i32 %42, 3
  %53 = or disjoint i32 %52, %33
  %54 = load i32, ptr @width, align 4, !tbaa !6
  %55 = lshr i32 %40, 1
  %56 = or disjoint i32 %55, %16
  %57 = mul nsw i32 %54, %56
  %58 = add nsw i32 %53, %57
  %59 = shl i32 %54, 1
  br label %111

60:                                               ; preds = %45, %48
  %61 = shl nuw nsw i32 %42, 3
  %62 = or disjoint i32 %61, %33
  %63 = load i32, ptr @width2, align 4, !tbaa !6
  %64 = shl nuw nsw i32 %40, 2
  %65 = and i32 %64, 8
  %66 = or disjoint i32 %65, %16
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %62, %67
  %69 = icmp eq i32 %46, 2
  br i1 %69, label %70, label %111

70:                                               ; preds = %60
  %71 = load i32, ptr @width, align 4, !tbaa !6
  %72 = add nsw i32 %71, %68
  br label %111

73:                                               ; preds = %38
  %74 = load i32, ptr @chroma_format, align 4
  %75 = icmp ne i32 %74, 3
  %76 = zext i1 %75 to i32
  %77 = lshr exact i32 %33, %76
  %78 = icmp ne i32 %74, 1
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = lshr exact i32 %16, %80
  %82 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %84, label %98

84:                                               ; preds = %73
  %85 = load i32, ptr %36, align 8, !tbaa !10
  %86 = icmp ne i32 %85, 0
  %87 = select i1 %86, i1 %78, i1 false
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = and i32 %40, 8
  %90 = add nuw nsw i32 %77, %89
  %91 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %92 = lshr i32 %40, 1
  %93 = and i32 %92, 1
  %94 = or disjoint i32 %81, %93
  %95 = mul nsw i32 %91, %94
  %96 = add nsw i32 %90, %95
  %97 = shl i32 %91, 1
  br label %111

98:                                               ; preds = %73, %84
  %99 = and i32 %40, 8
  %100 = add nuw nsw i32 %77, %99
  %101 = load i32, ptr @chrom_width2, align 4, !tbaa !6
  %102 = shl i32 %40, 2
  %103 = and i32 %102, 8
  %104 = add nuw nsw i32 %81, %103
  %105 = mul nsw i32 %101, %104
  %106 = add nsw i32 %100, %105
  %107 = icmp eq i32 %82, 2
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %110 = add nsw i32 %109, %106
  br label %111

111:                                              ; preds = %88, %51, %98, %108, %60, %70
  %112 = phi i32 [ %72, %70 ], [ %68, %60 ], [ %110, %108 ], [ %106, %98 ], [ %58, %51 ], [ %96, %88 ]
  %113 = phi i32 [ %63, %70 ], [ %63, %60 ], [ %101, %108 ], [ %101, %98 ], [ %59, %51 ], [ %97, %88 ]
  %114 = zext nneg i32 %44 to i64
  %115 = getelementptr inbounds ptr, ptr %0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !13
  %117 = sext i32 %112 to i64
  %118 = getelementptr inbounds i8, ptr %116, i64 %117
  %119 = getelementptr inbounds ptr, ptr %1, i64 %114
  %120 = load ptr, ptr %119, align 8, !tbaa !13
  %121 = getelementptr inbounds i8, ptr %120, i64 %117
  %122 = mul nsw i32 %39, %37
  %123 = add nsw i32 %122, %40
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [64 x i16], ptr %3, i64 %124
  %126 = sext i32 %113 to i64
  %127 = load i8, ptr %121, align 1, !tbaa !15
  %128 = zext i8 %127 to i16
  %129 = load i8, ptr %118, align 1, !tbaa !15
  %130 = zext i8 %129 to i16
  %131 = sub nsw i16 %128, %130
  store i16 %131, ptr %125, align 2, !tbaa !16
  %132 = getelementptr inbounds i8, ptr %121, i64 1
  %133 = load i8, ptr %132, align 1, !tbaa !15
  %134 = zext i8 %133 to i16
  %135 = getelementptr inbounds i8, ptr %118, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !15
  %137 = zext i8 %136 to i16
  %138 = sub nsw i16 %134, %137
  %139 = getelementptr inbounds i8, ptr %125, i64 2
  store i16 %138, ptr %139, align 2, !tbaa !16
  %140 = getelementptr inbounds i8, ptr %121, i64 2
  %141 = load i8, ptr %140, align 1, !tbaa !15
  %142 = zext i8 %141 to i16
  %143 = getelementptr inbounds i8, ptr %118, i64 2
  %144 = load i8, ptr %143, align 1, !tbaa !15
  %145 = zext i8 %144 to i16
  %146 = sub nsw i16 %142, %145
  %147 = getelementptr inbounds i8, ptr %125, i64 4
  store i16 %146, ptr %147, align 2, !tbaa !16
  %148 = getelementptr inbounds i8, ptr %121, i64 3
  %149 = load i8, ptr %148, align 1, !tbaa !15
  %150 = zext i8 %149 to i16
  %151 = getelementptr inbounds i8, ptr %118, i64 3
  %152 = load i8, ptr %151, align 1, !tbaa !15
  %153 = zext i8 %152 to i16
  %154 = sub nsw i16 %150, %153
  %155 = getelementptr inbounds i8, ptr %125, i64 6
  store i16 %154, ptr %155, align 2, !tbaa !16
  %156 = getelementptr inbounds i8, ptr %121, i64 4
  %157 = load i8, ptr %156, align 1, !tbaa !15
  %158 = zext i8 %157 to i16
  %159 = getelementptr inbounds i8, ptr %118, i64 4
  %160 = load i8, ptr %159, align 1, !tbaa !15
  %161 = zext i8 %160 to i16
  %162 = sub nsw i16 %158, %161
  %163 = getelementptr inbounds i8, ptr %125, i64 8
  store i16 %162, ptr %163, align 2, !tbaa !16
  %164 = getelementptr inbounds i8, ptr %121, i64 5
  %165 = load i8, ptr %164, align 1, !tbaa !15
  %166 = zext i8 %165 to i16
  %167 = getelementptr inbounds i8, ptr %118, i64 5
  %168 = load i8, ptr %167, align 1, !tbaa !15
  %169 = zext i8 %168 to i16
  %170 = sub nsw i16 %166, %169
  %171 = getelementptr inbounds i8, ptr %125, i64 10
  store i16 %170, ptr %171, align 2, !tbaa !16
  %172 = getelementptr inbounds i8, ptr %121, i64 6
  %173 = load i8, ptr %172, align 1, !tbaa !15
  %174 = zext i8 %173 to i16
  %175 = getelementptr inbounds i8, ptr %118, i64 6
  %176 = load i8, ptr %175, align 1, !tbaa !15
  %177 = zext i8 %176 to i16
  %178 = sub nsw i16 %174, %177
  %179 = getelementptr inbounds i8, ptr %125, i64 12
  store i16 %178, ptr %179, align 2, !tbaa !16
  %180 = getelementptr inbounds i8, ptr %121, i64 7
  %181 = load i8, ptr %180, align 1, !tbaa !15
  %182 = zext i8 %181 to i16
  %183 = getelementptr inbounds i8, ptr %118, i64 7
  %184 = load i8, ptr %183, align 1, !tbaa !15
  %185 = zext i8 %184 to i16
  %186 = sub nsw i16 %182, %185
  %187 = getelementptr inbounds i8, ptr %125, i64 14
  store i16 %186, ptr %187, align 2, !tbaa !16
  %188 = getelementptr inbounds i8, ptr %125, i64 16
  %189 = getelementptr inbounds i8, ptr %121, i64 %126
  %190 = getelementptr inbounds i8, ptr %118, i64 %126
  %191 = load i8, ptr %189, align 1, !tbaa !15
  %192 = zext i8 %191 to i16
  %193 = load i8, ptr %190, align 1, !tbaa !15
  %194 = zext i8 %193 to i16
  %195 = sub nsw i16 %192, %194
  store i16 %195, ptr %188, align 2, !tbaa !16
  %196 = getelementptr inbounds i8, ptr %189, i64 1
  %197 = load i8, ptr %196, align 1, !tbaa !15
  %198 = zext i8 %197 to i16
  %199 = getelementptr inbounds i8, ptr %190, i64 1
  %200 = load i8, ptr %199, align 1, !tbaa !15
  %201 = zext i8 %200 to i16
  %202 = sub nsw i16 %198, %201
  %203 = getelementptr inbounds i8, ptr %125, i64 18
  store i16 %202, ptr %203, align 2, !tbaa !16
  %204 = getelementptr inbounds i8, ptr %189, i64 2
  %205 = load i8, ptr %204, align 1, !tbaa !15
  %206 = zext i8 %205 to i16
  %207 = getelementptr inbounds i8, ptr %190, i64 2
  %208 = load i8, ptr %207, align 1, !tbaa !15
  %209 = zext i8 %208 to i16
  %210 = sub nsw i16 %206, %209
  %211 = getelementptr inbounds i8, ptr %125, i64 20
  store i16 %210, ptr %211, align 2, !tbaa !16
  %212 = getelementptr inbounds i8, ptr %189, i64 3
  %213 = load i8, ptr %212, align 1, !tbaa !15
  %214 = zext i8 %213 to i16
  %215 = getelementptr inbounds i8, ptr %190, i64 3
  %216 = load i8, ptr %215, align 1, !tbaa !15
  %217 = zext i8 %216 to i16
  %218 = sub nsw i16 %214, %217
  %219 = getelementptr inbounds i8, ptr %125, i64 22
  store i16 %218, ptr %219, align 2, !tbaa !16
  %220 = getelementptr inbounds i8, ptr %189, i64 4
  %221 = load i8, ptr %220, align 1, !tbaa !15
  %222 = zext i8 %221 to i16
  %223 = getelementptr inbounds i8, ptr %190, i64 4
  %224 = load i8, ptr %223, align 1, !tbaa !15
  %225 = zext i8 %224 to i16
  %226 = sub nsw i16 %222, %225
  %227 = getelementptr inbounds i8, ptr %125, i64 24
  store i16 %226, ptr %227, align 2, !tbaa !16
  %228 = getelementptr inbounds i8, ptr %189, i64 5
  %229 = load i8, ptr %228, align 1, !tbaa !15
  %230 = zext i8 %229 to i16
  %231 = getelementptr inbounds i8, ptr %190, i64 5
  %232 = load i8, ptr %231, align 1, !tbaa !15
  %233 = zext i8 %232 to i16
  %234 = sub nsw i16 %230, %233
  %235 = getelementptr inbounds i8, ptr %125, i64 26
  store i16 %234, ptr %235, align 2, !tbaa !16
  %236 = getelementptr inbounds i8, ptr %189, i64 6
  %237 = load i8, ptr %236, align 1, !tbaa !15
  %238 = zext i8 %237 to i16
  %239 = getelementptr inbounds i8, ptr %190, i64 6
  %240 = load i8, ptr %239, align 1, !tbaa !15
  %241 = zext i8 %240 to i16
  %242 = sub nsw i16 %238, %241
  %243 = getelementptr inbounds i8, ptr %125, i64 28
  store i16 %242, ptr %243, align 2, !tbaa !16
  %244 = getelementptr inbounds i8, ptr %189, i64 7
  %245 = load i8, ptr %244, align 1, !tbaa !15
  %246 = zext i8 %245 to i16
  %247 = getelementptr inbounds i8, ptr %190, i64 7
  %248 = load i8, ptr %247, align 1, !tbaa !15
  %249 = zext i8 %248 to i16
  %250 = sub nsw i16 %246, %249
  %251 = getelementptr inbounds i8, ptr %125, i64 30
  store i16 %250, ptr %251, align 2, !tbaa !16
  %252 = getelementptr inbounds i8, ptr %125, i64 32
  %253 = getelementptr inbounds i8, ptr %189, i64 %126
  %254 = getelementptr inbounds i8, ptr %190, i64 %126
  %255 = load i8, ptr %253, align 1, !tbaa !15
  %256 = zext i8 %255 to i16
  %257 = load i8, ptr %254, align 1, !tbaa !15
  %258 = zext i8 %257 to i16
  %259 = sub nsw i16 %256, %258
  store i16 %259, ptr %252, align 2, !tbaa !16
  %260 = getelementptr inbounds i8, ptr %253, i64 1
  %261 = load i8, ptr %260, align 1, !tbaa !15
  %262 = zext i8 %261 to i16
  %263 = getelementptr inbounds i8, ptr %254, i64 1
  %264 = load i8, ptr %263, align 1, !tbaa !15
  %265 = zext i8 %264 to i16
  %266 = sub nsw i16 %262, %265
  %267 = getelementptr inbounds i8, ptr %125, i64 34
  store i16 %266, ptr %267, align 2, !tbaa !16
  %268 = getelementptr inbounds i8, ptr %253, i64 2
  %269 = load i8, ptr %268, align 1, !tbaa !15
  %270 = zext i8 %269 to i16
  %271 = getelementptr inbounds i8, ptr %254, i64 2
  %272 = load i8, ptr %271, align 1, !tbaa !15
  %273 = zext i8 %272 to i16
  %274 = sub nsw i16 %270, %273
  %275 = getelementptr inbounds i8, ptr %125, i64 36
  store i16 %274, ptr %275, align 2, !tbaa !16
  %276 = getelementptr inbounds i8, ptr %253, i64 3
  %277 = load i8, ptr %276, align 1, !tbaa !15
  %278 = zext i8 %277 to i16
  %279 = getelementptr inbounds i8, ptr %254, i64 3
  %280 = load i8, ptr %279, align 1, !tbaa !15
  %281 = zext i8 %280 to i16
  %282 = sub nsw i16 %278, %281
  %283 = getelementptr inbounds i8, ptr %125, i64 38
  store i16 %282, ptr %283, align 2, !tbaa !16
  %284 = getelementptr inbounds i8, ptr %253, i64 4
  %285 = load i8, ptr %284, align 1, !tbaa !15
  %286 = zext i8 %285 to i16
  %287 = getelementptr inbounds i8, ptr %254, i64 4
  %288 = load i8, ptr %287, align 1, !tbaa !15
  %289 = zext i8 %288 to i16
  %290 = sub nsw i16 %286, %289
  %291 = getelementptr inbounds i8, ptr %125, i64 40
  store i16 %290, ptr %291, align 2, !tbaa !16
  %292 = getelementptr inbounds i8, ptr %253, i64 5
  %293 = load i8, ptr %292, align 1, !tbaa !15
  %294 = zext i8 %293 to i16
  %295 = getelementptr inbounds i8, ptr %254, i64 5
  %296 = load i8, ptr %295, align 1, !tbaa !15
  %297 = zext i8 %296 to i16
  %298 = sub nsw i16 %294, %297
  %299 = getelementptr inbounds i8, ptr %125, i64 42
  store i16 %298, ptr %299, align 2, !tbaa !16
  %300 = getelementptr inbounds i8, ptr %253, i64 6
  %301 = load i8, ptr %300, align 1, !tbaa !15
  %302 = zext i8 %301 to i16
  %303 = getelementptr inbounds i8, ptr %254, i64 6
  %304 = load i8, ptr %303, align 1, !tbaa !15
  %305 = zext i8 %304 to i16
  %306 = sub nsw i16 %302, %305
  %307 = getelementptr inbounds i8, ptr %125, i64 44
  store i16 %306, ptr %307, align 2, !tbaa !16
  %308 = getelementptr inbounds i8, ptr %253, i64 7
  %309 = load i8, ptr %308, align 1, !tbaa !15
  %310 = zext i8 %309 to i16
  %311 = getelementptr inbounds i8, ptr %254, i64 7
  %312 = load i8, ptr %311, align 1, !tbaa !15
  %313 = zext i8 %312 to i16
  %314 = sub nsw i16 %310, %313
  %315 = getelementptr inbounds i8, ptr %125, i64 46
  store i16 %314, ptr %315, align 2, !tbaa !16
  %316 = getelementptr inbounds i8, ptr %125, i64 48
  %317 = getelementptr inbounds i8, ptr %253, i64 %126
  %318 = getelementptr inbounds i8, ptr %254, i64 %126
  %319 = load i8, ptr %317, align 1, !tbaa !15
  %320 = zext i8 %319 to i16
  %321 = load i8, ptr %318, align 1, !tbaa !15
  %322 = zext i8 %321 to i16
  %323 = sub nsw i16 %320, %322
  store i16 %323, ptr %316, align 2, !tbaa !16
  %324 = getelementptr inbounds i8, ptr %317, i64 1
  %325 = load i8, ptr %324, align 1, !tbaa !15
  %326 = zext i8 %325 to i16
  %327 = getelementptr inbounds i8, ptr %318, i64 1
  %328 = load i8, ptr %327, align 1, !tbaa !15
  %329 = zext i8 %328 to i16
  %330 = sub nsw i16 %326, %329
  %331 = getelementptr inbounds i8, ptr %125, i64 50
  store i16 %330, ptr %331, align 2, !tbaa !16
  %332 = getelementptr inbounds i8, ptr %317, i64 2
  %333 = load i8, ptr %332, align 1, !tbaa !15
  %334 = zext i8 %333 to i16
  %335 = getelementptr inbounds i8, ptr %318, i64 2
  %336 = load i8, ptr %335, align 1, !tbaa !15
  %337 = zext i8 %336 to i16
  %338 = sub nsw i16 %334, %337
  %339 = getelementptr inbounds i8, ptr %125, i64 52
  store i16 %338, ptr %339, align 2, !tbaa !16
  %340 = getelementptr inbounds i8, ptr %317, i64 3
  %341 = load i8, ptr %340, align 1, !tbaa !15
  %342 = zext i8 %341 to i16
  %343 = getelementptr inbounds i8, ptr %318, i64 3
  %344 = load i8, ptr %343, align 1, !tbaa !15
  %345 = zext i8 %344 to i16
  %346 = sub nsw i16 %342, %345
  %347 = getelementptr inbounds i8, ptr %125, i64 54
  store i16 %346, ptr %347, align 2, !tbaa !16
  %348 = getelementptr inbounds i8, ptr %317, i64 4
  %349 = load i8, ptr %348, align 1, !tbaa !15
  %350 = zext i8 %349 to i16
  %351 = getelementptr inbounds i8, ptr %318, i64 4
  %352 = load i8, ptr %351, align 1, !tbaa !15
  %353 = zext i8 %352 to i16
  %354 = sub nsw i16 %350, %353
  %355 = getelementptr inbounds i8, ptr %125, i64 56
  store i16 %354, ptr %355, align 2, !tbaa !16
  %356 = getelementptr inbounds i8, ptr %317, i64 5
  %357 = load i8, ptr %356, align 1, !tbaa !15
  %358 = zext i8 %357 to i16
  %359 = getelementptr inbounds i8, ptr %318, i64 5
  %360 = load i8, ptr %359, align 1, !tbaa !15
  %361 = zext i8 %360 to i16
  %362 = sub nsw i16 %358, %361
  %363 = getelementptr inbounds i8, ptr %125, i64 58
  store i16 %362, ptr %363, align 2, !tbaa !16
  %364 = getelementptr inbounds i8, ptr %317, i64 6
  %365 = load i8, ptr %364, align 1, !tbaa !15
  %366 = zext i8 %365 to i16
  %367 = getelementptr inbounds i8, ptr %318, i64 6
  %368 = load i8, ptr %367, align 1, !tbaa !15
  %369 = zext i8 %368 to i16
  %370 = sub nsw i16 %366, %369
  %371 = getelementptr inbounds i8, ptr %125, i64 60
  store i16 %370, ptr %371, align 2, !tbaa !16
  %372 = getelementptr inbounds i8, ptr %317, i64 7
  %373 = load i8, ptr %372, align 1, !tbaa !15
  %374 = zext i8 %373 to i16
  %375 = getelementptr inbounds i8, ptr %318, i64 7
  %376 = load i8, ptr %375, align 1, !tbaa !15
  %377 = zext i8 %376 to i16
  %378 = sub nsw i16 %374, %377
  %379 = getelementptr inbounds i8, ptr %125, i64 62
  store i16 %378, ptr %379, align 2, !tbaa !16
  %380 = getelementptr inbounds i8, ptr %125, i64 64
  %381 = getelementptr inbounds i8, ptr %317, i64 %126
  %382 = getelementptr inbounds i8, ptr %318, i64 %126
  %383 = load i8, ptr %381, align 1, !tbaa !15
  %384 = zext i8 %383 to i16
  %385 = load i8, ptr %382, align 1, !tbaa !15
  %386 = zext i8 %385 to i16
  %387 = sub nsw i16 %384, %386
  store i16 %387, ptr %380, align 2, !tbaa !16
  %388 = getelementptr inbounds i8, ptr %381, i64 1
  %389 = load i8, ptr %388, align 1, !tbaa !15
  %390 = zext i8 %389 to i16
  %391 = getelementptr inbounds i8, ptr %382, i64 1
  %392 = load i8, ptr %391, align 1, !tbaa !15
  %393 = zext i8 %392 to i16
  %394 = sub nsw i16 %390, %393
  %395 = getelementptr inbounds i8, ptr %125, i64 66
  store i16 %394, ptr %395, align 2, !tbaa !16
  %396 = getelementptr inbounds i8, ptr %381, i64 2
  %397 = load i8, ptr %396, align 1, !tbaa !15
  %398 = zext i8 %397 to i16
  %399 = getelementptr inbounds i8, ptr %382, i64 2
  %400 = load i8, ptr %399, align 1, !tbaa !15
  %401 = zext i8 %400 to i16
  %402 = sub nsw i16 %398, %401
  %403 = getelementptr inbounds i8, ptr %125, i64 68
  store i16 %402, ptr %403, align 2, !tbaa !16
  %404 = getelementptr inbounds i8, ptr %381, i64 3
  %405 = load i8, ptr %404, align 1, !tbaa !15
  %406 = zext i8 %405 to i16
  %407 = getelementptr inbounds i8, ptr %382, i64 3
  %408 = load i8, ptr %407, align 1, !tbaa !15
  %409 = zext i8 %408 to i16
  %410 = sub nsw i16 %406, %409
  %411 = getelementptr inbounds i8, ptr %125, i64 70
  store i16 %410, ptr %411, align 2, !tbaa !16
  %412 = getelementptr inbounds i8, ptr %381, i64 4
  %413 = load i8, ptr %412, align 1, !tbaa !15
  %414 = zext i8 %413 to i16
  %415 = getelementptr inbounds i8, ptr %382, i64 4
  %416 = load i8, ptr %415, align 1, !tbaa !15
  %417 = zext i8 %416 to i16
  %418 = sub nsw i16 %414, %417
  %419 = getelementptr inbounds i8, ptr %125, i64 72
  store i16 %418, ptr %419, align 2, !tbaa !16
  %420 = getelementptr inbounds i8, ptr %381, i64 5
  %421 = load i8, ptr %420, align 1, !tbaa !15
  %422 = zext i8 %421 to i16
  %423 = getelementptr inbounds i8, ptr %382, i64 5
  %424 = load i8, ptr %423, align 1, !tbaa !15
  %425 = zext i8 %424 to i16
  %426 = sub nsw i16 %422, %425
  %427 = getelementptr inbounds i8, ptr %125, i64 74
  store i16 %426, ptr %427, align 2, !tbaa !16
  %428 = getelementptr inbounds i8, ptr %381, i64 6
  %429 = load i8, ptr %428, align 1, !tbaa !15
  %430 = zext i8 %429 to i16
  %431 = getelementptr inbounds i8, ptr %382, i64 6
  %432 = load i8, ptr %431, align 1, !tbaa !15
  %433 = zext i8 %432 to i16
  %434 = sub nsw i16 %430, %433
  %435 = getelementptr inbounds i8, ptr %125, i64 76
  store i16 %434, ptr %435, align 2, !tbaa !16
  %436 = getelementptr inbounds i8, ptr %381, i64 7
  %437 = load i8, ptr %436, align 1, !tbaa !15
  %438 = zext i8 %437 to i16
  %439 = getelementptr inbounds i8, ptr %382, i64 7
  %440 = load i8, ptr %439, align 1, !tbaa !15
  %441 = zext i8 %440 to i16
  %442 = sub nsw i16 %438, %441
  %443 = getelementptr inbounds i8, ptr %125, i64 78
  store i16 %442, ptr %443, align 2, !tbaa !16
  %444 = getelementptr inbounds i8, ptr %125, i64 80
  %445 = getelementptr inbounds i8, ptr %381, i64 %126
  %446 = getelementptr inbounds i8, ptr %382, i64 %126
  %447 = load i8, ptr %445, align 1, !tbaa !15
  %448 = zext i8 %447 to i16
  %449 = load i8, ptr %446, align 1, !tbaa !15
  %450 = zext i8 %449 to i16
  %451 = sub nsw i16 %448, %450
  store i16 %451, ptr %444, align 2, !tbaa !16
  %452 = getelementptr inbounds i8, ptr %445, i64 1
  %453 = load i8, ptr %452, align 1, !tbaa !15
  %454 = zext i8 %453 to i16
  %455 = getelementptr inbounds i8, ptr %446, i64 1
  %456 = load i8, ptr %455, align 1, !tbaa !15
  %457 = zext i8 %456 to i16
  %458 = sub nsw i16 %454, %457
  %459 = getelementptr inbounds i8, ptr %125, i64 82
  store i16 %458, ptr %459, align 2, !tbaa !16
  %460 = getelementptr inbounds i8, ptr %445, i64 2
  %461 = load i8, ptr %460, align 1, !tbaa !15
  %462 = zext i8 %461 to i16
  %463 = getelementptr inbounds i8, ptr %446, i64 2
  %464 = load i8, ptr %463, align 1, !tbaa !15
  %465 = zext i8 %464 to i16
  %466 = sub nsw i16 %462, %465
  %467 = getelementptr inbounds i8, ptr %125, i64 84
  store i16 %466, ptr %467, align 2, !tbaa !16
  %468 = getelementptr inbounds i8, ptr %445, i64 3
  %469 = load i8, ptr %468, align 1, !tbaa !15
  %470 = zext i8 %469 to i16
  %471 = getelementptr inbounds i8, ptr %446, i64 3
  %472 = load i8, ptr %471, align 1, !tbaa !15
  %473 = zext i8 %472 to i16
  %474 = sub nsw i16 %470, %473
  %475 = getelementptr inbounds i8, ptr %125, i64 86
  store i16 %474, ptr %475, align 2, !tbaa !16
  %476 = getelementptr inbounds i8, ptr %445, i64 4
  %477 = load i8, ptr %476, align 1, !tbaa !15
  %478 = zext i8 %477 to i16
  %479 = getelementptr inbounds i8, ptr %446, i64 4
  %480 = load i8, ptr %479, align 1, !tbaa !15
  %481 = zext i8 %480 to i16
  %482 = sub nsw i16 %478, %481
  %483 = getelementptr inbounds i8, ptr %125, i64 88
  store i16 %482, ptr %483, align 2, !tbaa !16
  %484 = getelementptr inbounds i8, ptr %445, i64 5
  %485 = load i8, ptr %484, align 1, !tbaa !15
  %486 = zext i8 %485 to i16
  %487 = getelementptr inbounds i8, ptr %446, i64 5
  %488 = load i8, ptr %487, align 1, !tbaa !15
  %489 = zext i8 %488 to i16
  %490 = sub nsw i16 %486, %489
  %491 = getelementptr inbounds i8, ptr %125, i64 90
  store i16 %490, ptr %491, align 2, !tbaa !16
  %492 = getelementptr inbounds i8, ptr %445, i64 6
  %493 = load i8, ptr %492, align 1, !tbaa !15
  %494 = zext i8 %493 to i16
  %495 = getelementptr inbounds i8, ptr %446, i64 6
  %496 = load i8, ptr %495, align 1, !tbaa !15
  %497 = zext i8 %496 to i16
  %498 = sub nsw i16 %494, %497
  %499 = getelementptr inbounds i8, ptr %125, i64 92
  store i16 %498, ptr %499, align 2, !tbaa !16
  %500 = getelementptr inbounds i8, ptr %445, i64 7
  %501 = load i8, ptr %500, align 1, !tbaa !15
  %502 = zext i8 %501 to i16
  %503 = getelementptr inbounds i8, ptr %446, i64 7
  %504 = load i8, ptr %503, align 1, !tbaa !15
  %505 = zext i8 %504 to i16
  %506 = sub nsw i16 %502, %505
  %507 = getelementptr inbounds i8, ptr %125, i64 94
  store i16 %506, ptr %507, align 2, !tbaa !16
  %508 = getelementptr inbounds i8, ptr %125, i64 96
  %509 = getelementptr inbounds i8, ptr %445, i64 %126
  %510 = getelementptr inbounds i8, ptr %446, i64 %126
  %511 = load i8, ptr %509, align 1, !tbaa !15
  %512 = zext i8 %511 to i16
  %513 = load i8, ptr %510, align 1, !tbaa !15
  %514 = zext i8 %513 to i16
  %515 = sub nsw i16 %512, %514
  store i16 %515, ptr %508, align 2, !tbaa !16
  %516 = getelementptr inbounds i8, ptr %509, i64 1
  %517 = load i8, ptr %516, align 1, !tbaa !15
  %518 = zext i8 %517 to i16
  %519 = getelementptr inbounds i8, ptr %510, i64 1
  %520 = load i8, ptr %519, align 1, !tbaa !15
  %521 = zext i8 %520 to i16
  %522 = sub nsw i16 %518, %521
  %523 = getelementptr inbounds i8, ptr %125, i64 98
  store i16 %522, ptr %523, align 2, !tbaa !16
  %524 = getelementptr inbounds i8, ptr %509, i64 2
  %525 = load i8, ptr %524, align 1, !tbaa !15
  %526 = zext i8 %525 to i16
  %527 = getelementptr inbounds i8, ptr %510, i64 2
  %528 = load i8, ptr %527, align 1, !tbaa !15
  %529 = zext i8 %528 to i16
  %530 = sub nsw i16 %526, %529
  %531 = getelementptr inbounds i8, ptr %125, i64 100
  store i16 %530, ptr %531, align 2, !tbaa !16
  %532 = getelementptr inbounds i8, ptr %509, i64 3
  %533 = load i8, ptr %532, align 1, !tbaa !15
  %534 = zext i8 %533 to i16
  %535 = getelementptr inbounds i8, ptr %510, i64 3
  %536 = load i8, ptr %535, align 1, !tbaa !15
  %537 = zext i8 %536 to i16
  %538 = sub nsw i16 %534, %537
  %539 = getelementptr inbounds i8, ptr %125, i64 102
  store i16 %538, ptr %539, align 2, !tbaa !16
  %540 = getelementptr inbounds i8, ptr %509, i64 4
  %541 = load i8, ptr %540, align 1, !tbaa !15
  %542 = zext i8 %541 to i16
  %543 = getelementptr inbounds i8, ptr %510, i64 4
  %544 = load i8, ptr %543, align 1, !tbaa !15
  %545 = zext i8 %544 to i16
  %546 = sub nsw i16 %542, %545
  %547 = getelementptr inbounds i8, ptr %125, i64 104
  store i16 %546, ptr %547, align 2, !tbaa !16
  %548 = getelementptr inbounds i8, ptr %509, i64 5
  %549 = load i8, ptr %548, align 1, !tbaa !15
  %550 = zext i8 %549 to i16
  %551 = getelementptr inbounds i8, ptr %510, i64 5
  %552 = load i8, ptr %551, align 1, !tbaa !15
  %553 = zext i8 %552 to i16
  %554 = sub nsw i16 %550, %553
  %555 = getelementptr inbounds i8, ptr %125, i64 106
  store i16 %554, ptr %555, align 2, !tbaa !16
  %556 = getelementptr inbounds i8, ptr %509, i64 6
  %557 = load i8, ptr %556, align 1, !tbaa !15
  %558 = zext i8 %557 to i16
  %559 = getelementptr inbounds i8, ptr %510, i64 6
  %560 = load i8, ptr %559, align 1, !tbaa !15
  %561 = zext i8 %560 to i16
  %562 = sub nsw i16 %558, %561
  %563 = getelementptr inbounds i8, ptr %125, i64 108
  store i16 %562, ptr %563, align 2, !tbaa !16
  %564 = getelementptr inbounds i8, ptr %509, i64 7
  %565 = load i8, ptr %564, align 1, !tbaa !15
  %566 = zext i8 %565 to i16
  %567 = getelementptr inbounds i8, ptr %510, i64 7
  %568 = load i8, ptr %567, align 1, !tbaa !15
  %569 = zext i8 %568 to i16
  %570 = sub nsw i16 %566, %569
  %571 = getelementptr inbounds i8, ptr %125, i64 110
  store i16 %570, ptr %571, align 2, !tbaa !16
  %572 = getelementptr inbounds i8, ptr %125, i64 112
  %573 = getelementptr inbounds i8, ptr %509, i64 %126
  %574 = getelementptr inbounds i8, ptr %510, i64 %126
  %575 = load i8, ptr %573, align 1, !tbaa !15
  %576 = zext i8 %575 to i16
  %577 = load i8, ptr %574, align 1, !tbaa !15
  %578 = zext i8 %577 to i16
  %579 = sub nsw i16 %576, %578
  store i16 %579, ptr %572, align 2, !tbaa !16
  %580 = getelementptr inbounds i8, ptr %573, i64 1
  %581 = load i8, ptr %580, align 1, !tbaa !15
  %582 = zext i8 %581 to i16
  %583 = getelementptr inbounds i8, ptr %574, i64 1
  %584 = load i8, ptr %583, align 1, !tbaa !15
  %585 = zext i8 %584 to i16
  %586 = sub nsw i16 %582, %585
  %587 = getelementptr inbounds i8, ptr %125, i64 114
  store i16 %586, ptr %587, align 2, !tbaa !16
  %588 = getelementptr inbounds i8, ptr %573, i64 2
  %589 = load i8, ptr %588, align 1, !tbaa !15
  %590 = zext i8 %589 to i16
  %591 = getelementptr inbounds i8, ptr %574, i64 2
  %592 = load i8, ptr %591, align 1, !tbaa !15
  %593 = zext i8 %592 to i16
  %594 = sub nsw i16 %590, %593
  %595 = getelementptr inbounds i8, ptr %125, i64 116
  store i16 %594, ptr %595, align 2, !tbaa !16
  %596 = getelementptr inbounds i8, ptr %573, i64 3
  %597 = load i8, ptr %596, align 1, !tbaa !15
  %598 = zext i8 %597 to i16
  %599 = getelementptr inbounds i8, ptr %574, i64 3
  %600 = load i8, ptr %599, align 1, !tbaa !15
  %601 = zext i8 %600 to i16
  %602 = sub nsw i16 %598, %601
  %603 = getelementptr inbounds i8, ptr %125, i64 118
  store i16 %602, ptr %603, align 2, !tbaa !16
  %604 = getelementptr inbounds i8, ptr %573, i64 4
  %605 = load i8, ptr %604, align 1, !tbaa !15
  %606 = zext i8 %605 to i16
  %607 = getelementptr inbounds i8, ptr %574, i64 4
  %608 = load i8, ptr %607, align 1, !tbaa !15
  %609 = zext i8 %608 to i16
  %610 = sub nsw i16 %606, %609
  %611 = getelementptr inbounds i8, ptr %125, i64 120
  store i16 %610, ptr %611, align 2, !tbaa !16
  %612 = getelementptr inbounds i8, ptr %573, i64 5
  %613 = load i8, ptr %612, align 1, !tbaa !15
  %614 = zext i8 %613 to i16
  %615 = getelementptr inbounds i8, ptr %574, i64 5
  %616 = load i8, ptr %615, align 1, !tbaa !15
  %617 = zext i8 %616 to i16
  %618 = sub nsw i16 %614, %617
  %619 = getelementptr inbounds i8, ptr %125, i64 122
  store i16 %618, ptr %619, align 2, !tbaa !16
  %620 = getelementptr inbounds i8, ptr %573, i64 6
  %621 = load i8, ptr %620, align 1, !tbaa !15
  %622 = zext i8 %621 to i16
  %623 = getelementptr inbounds i8, ptr %574, i64 6
  %624 = load i8, ptr %623, align 1, !tbaa !15
  %625 = zext i8 %624 to i16
  %626 = sub nsw i16 %622, %625
  %627 = getelementptr inbounds i8, ptr %125, i64 124
  store i16 %626, ptr %627, align 2, !tbaa !16
  %628 = getelementptr inbounds i8, ptr %573, i64 7
  %629 = load i8, ptr %628, align 1, !tbaa !15
  %630 = zext i8 %629 to i16
  %631 = getelementptr inbounds i8, ptr %574, i64 7
  %632 = load i8, ptr %631, align 1, !tbaa !15
  %633 = zext i8 %632 to i16
  %634 = sub nsw i16 %630, %633
  %635 = getelementptr inbounds i8, ptr %125, i64 126
  store i16 %634, ptr %635, align 2, !tbaa !16
  tail call void @fdct(ptr noundef %125) #6
  %636 = add nuw nsw i32 %40, 1
  %637 = load i32, ptr @block_count, align 4, !tbaa !6
  %638 = icmp slt i32 %636, %637
  br i1 %638, label %38, label %639

639:                                              ; preds = %111
  %640 = load i32, ptr @width, align 4, !tbaa !6
  br label %641

641:                                              ; preds = %639, %29
  %642 = phi i32 [ %640, %639 ], [ %30, %29 ]
  %643 = phi i32 [ %637, %639 ], [ %31, %29 ]
  %644 = add nsw i64 %32, 1
  %645 = add nuw nsw i32 %33, 16
  %646 = icmp slt i32 %645, %642
  br i1 %646, label %29, label %647, !llvm.loop !18

647:                                              ; preds = %641
  %648 = trunc nsw i64 %644 to i32
  %649 = load i32, ptr @height2, align 4, !tbaa !6
  br label %650

650:                                              ; preds = %23, %647, %10
  %651 = phi i32 [ %11, %10 ], [ %649, %647 ], [ %11, %23 ]
  %652 = phi i32 [ %12, %10 ], [ %642, %647 ], [ %12, %23 ]
  %653 = phi i32 [ %13, %10 ], [ %642, %647 ], [ %13, %23 ]
  %654 = phi i32 [ %14, %10 ], [ %642, %647 ], [ %13, %23 ]
  %655 = phi i32 [ %15, %10 ], [ %648, %647 ], [ %28, %23 ]
  %656 = add nuw nsw i32 %16, 16
  %657 = icmp slt i32 %656, %651
  br i1 %657, label %10, label %658, !llvm.loop !20

658:                                              ; preds = %650, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local void @fdct(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @itransform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @height2, align 4, !tbaa !6
  %6 = icmp sgt i32 %5, 0
  %7 = load i32, ptr @width, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %250

10:                                               ; preds = %4, %242
  %11 = phi i32 [ %243, %242 ], [ %5, %4 ]
  %12 = phi i32 [ %244, %242 ], [ %7, %4 ]
  %13 = phi i32 [ %245, %242 ], [ %7, %4 ]
  %14 = phi i32 [ %246, %242 ], [ %7, %4 ]
  %15 = phi i32 [ %247, %242 ], [ 0, %4 ]
  %16 = phi i32 [ %248, %242 ], [ 0, %4 ]
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %242

18:                                               ; preds = %10
  %19 = load i32, ptr @block_count, align 4, !tbaa !6
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = sext i32 %15 to i64
  br label %29

23:                                               ; preds = %18
  %24 = tail call i32 @llvm.smax.i32(i32 %13, i32 16)
  %25 = add nsw i32 %24, -1
  %26 = lshr i32 %25, 4
  %27 = add i32 %15, 1
  %28 = add i32 %27, %26
  br label %242

29:                                               ; preds = %21, %233
  %30 = phi i32 [ %12, %21 ], [ %234, %233 ]
  %31 = phi i32 [ %19, %21 ], [ %235, %233 ]
  %32 = phi i64 [ %22, %21 ], [ %236, %233 ]
  %33 = phi i32 [ 0, %21 ], [ %237, %233 ]
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %35, label %233

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mbinfo, ptr %2, i64 %32, i32 2
  %37 = trunc nsw i64 %32 to i32
  br label %38

38:                                               ; preds = %35, %227
  %39 = phi i32 [ %31, %35 ], [ %229, %227 ]
  %40 = phi i32 [ 0, %35 ], [ %228, %227 ]
  %41 = icmp ult i32 %40, 4
  %42 = and i32 %40, 1
  %43 = add nuw nsw i32 %42, 1
  %44 = select i1 %41, i32 0, i32 %43
  br i1 %41, label %45, label %73

45:                                               ; preds = %38
  %46 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32, ptr %36, align 8, !tbaa !10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = shl nuw nsw i32 %42, 3
  %53 = or disjoint i32 %52, %33
  %54 = load i32, ptr @width, align 4, !tbaa !6
  %55 = lshr i32 %40, 1
  %56 = or disjoint i32 %55, %16
  %57 = mul nsw i32 %54, %56
  %58 = add nsw i32 %53, %57
  %59 = shl i32 %54, 1
  br label %111

60:                                               ; preds = %45, %48
  %61 = shl nuw nsw i32 %42, 3
  %62 = or disjoint i32 %61, %33
  %63 = load i32, ptr @width2, align 4, !tbaa !6
  %64 = shl nuw nsw i32 %40, 2
  %65 = and i32 %64, 8
  %66 = or disjoint i32 %65, %16
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %62, %67
  %69 = icmp eq i32 %46, 2
  br i1 %69, label %70, label %111

70:                                               ; preds = %60
  %71 = load i32, ptr @width, align 4, !tbaa !6
  %72 = add nsw i32 %71, %68
  br label %111

73:                                               ; preds = %38
  %74 = load i32, ptr @chroma_format, align 4
  %75 = icmp ne i32 %74, 3
  %76 = zext i1 %75 to i32
  %77 = lshr exact i32 %33, %76
  %78 = icmp ne i32 %74, 1
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = lshr exact i32 %16, %80
  %82 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %84, label %98

84:                                               ; preds = %73
  %85 = load i32, ptr %36, align 8, !tbaa !10
  %86 = icmp ne i32 %85, 0
  %87 = select i1 %86, i1 %78, i1 false
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = and i32 %40, 8
  %90 = add nuw nsw i32 %77, %89
  %91 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %92 = lshr i32 %40, 1
  %93 = and i32 %92, 1
  %94 = or disjoint i32 %81, %93
  %95 = mul nsw i32 %91, %94
  %96 = add nsw i32 %90, %95
  %97 = shl i32 %91, 1
  br label %111

98:                                               ; preds = %73, %84
  %99 = and i32 %40, 8
  %100 = add nuw nsw i32 %77, %99
  %101 = load i32, ptr @chrom_width2, align 4, !tbaa !6
  %102 = shl i32 %40, 2
  %103 = and i32 %102, 8
  %104 = add nuw nsw i32 %81, %103
  %105 = mul nsw i32 %101, %104
  %106 = add nsw i32 %100, %105
  %107 = icmp eq i32 %82, 2
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %110 = add nsw i32 %109, %106
  br label %111

111:                                              ; preds = %88, %51, %98, %108, %60, %70
  %112 = phi i32 [ %72, %70 ], [ %68, %60 ], [ %110, %108 ], [ %106, %98 ], [ %58, %51 ], [ %96, %88 ]
  %113 = phi i32 [ %63, %70 ], [ %63, %60 ], [ %101, %108 ], [ %101, %98 ], [ %59, %51 ], [ %97, %88 ]
  %114 = mul nsw i32 %39, %37
  %115 = add nsw i32 %114, %40
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [64 x i16], ptr %3, i64 %116
  tail call void @idct(ptr noundef %117) #6
  %118 = zext nneg i32 %44 to i64
  %119 = getelementptr inbounds ptr, ptr %0, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !13
  %121 = sext i32 %112 to i64
  %122 = getelementptr inbounds i8, ptr %120, i64 %121
  %123 = getelementptr inbounds ptr, ptr %1, i64 %118
  %124 = load ptr, ptr %123, align 8, !tbaa !13
  %125 = getelementptr inbounds i8, ptr %124, i64 %121
  %126 = load i32, ptr @block_count, align 4, !tbaa !6
  %127 = mul nsw i32 %126, %37
  %128 = add nsw i32 %127, %40
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [64 x i16], ptr %3, i64 %129
  %131 = sext i32 %113 to i64
  br label %132

132:                                              ; preds = %132, %111
  %133 = phi i32 [ 0, %111 ], [ %225, %132 ]
  %134 = phi ptr [ %130, %111 ], [ %222, %132 ]
  %135 = phi ptr [ %122, %111 ], [ %224, %132 ]
  %136 = phi ptr [ %125, %111 ], [ %223, %132 ]
  %137 = load ptr, ptr @clp, align 8, !tbaa !13
  %138 = load i16, ptr %134, align 2, !tbaa !16
  %139 = sext i16 %138 to i64
  %140 = load i8, ptr %135, align 1, !tbaa !15
  %141 = zext i8 %140 to i64
  %142 = getelementptr i8, ptr %137, i64 %139
  %143 = getelementptr i8, ptr %142, i64 %141
  %144 = load i8, ptr %143, align 1, !tbaa !15
  store i8 %144, ptr %136, align 1, !tbaa !15
  %145 = load ptr, ptr @clp, align 8, !tbaa !13
  %146 = getelementptr inbounds i8, ptr %134, i64 2
  %147 = load i16, ptr %146, align 2, !tbaa !16
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds i8, ptr %135, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !15
  %151 = zext i8 %150 to i64
  %152 = getelementptr i8, ptr %145, i64 %148
  %153 = getelementptr i8, ptr %152, i64 %151
  %154 = load i8, ptr %153, align 1, !tbaa !15
  %155 = getelementptr inbounds i8, ptr %136, i64 1
  store i8 %154, ptr %155, align 1, !tbaa !15
  %156 = load ptr, ptr @clp, align 8, !tbaa !13
  %157 = getelementptr inbounds i8, ptr %134, i64 4
  %158 = load i16, ptr %157, align 2, !tbaa !16
  %159 = sext i16 %158 to i64
  %160 = getelementptr inbounds i8, ptr %135, i64 2
  %161 = load i8, ptr %160, align 1, !tbaa !15
  %162 = zext i8 %161 to i64
  %163 = getelementptr i8, ptr %156, i64 %159
  %164 = getelementptr i8, ptr %163, i64 %162
  %165 = load i8, ptr %164, align 1, !tbaa !15
  %166 = getelementptr inbounds i8, ptr %136, i64 2
  store i8 %165, ptr %166, align 1, !tbaa !15
  %167 = load ptr, ptr @clp, align 8, !tbaa !13
  %168 = getelementptr inbounds i8, ptr %134, i64 6
  %169 = load i16, ptr %168, align 2, !tbaa !16
  %170 = sext i16 %169 to i64
  %171 = getelementptr inbounds i8, ptr %135, i64 3
  %172 = load i8, ptr %171, align 1, !tbaa !15
  %173 = zext i8 %172 to i64
  %174 = getelementptr i8, ptr %167, i64 %170
  %175 = getelementptr i8, ptr %174, i64 %173
  %176 = load i8, ptr %175, align 1, !tbaa !15
  %177 = getelementptr inbounds i8, ptr %136, i64 3
  store i8 %176, ptr %177, align 1, !tbaa !15
  %178 = load ptr, ptr @clp, align 8, !tbaa !13
  %179 = getelementptr inbounds i8, ptr %134, i64 8
  %180 = load i16, ptr %179, align 2, !tbaa !16
  %181 = sext i16 %180 to i64
  %182 = getelementptr inbounds i8, ptr %135, i64 4
  %183 = load i8, ptr %182, align 1, !tbaa !15
  %184 = zext i8 %183 to i64
  %185 = getelementptr i8, ptr %178, i64 %181
  %186 = getelementptr i8, ptr %185, i64 %184
  %187 = load i8, ptr %186, align 1, !tbaa !15
  %188 = getelementptr inbounds i8, ptr %136, i64 4
  store i8 %187, ptr %188, align 1, !tbaa !15
  %189 = load ptr, ptr @clp, align 8, !tbaa !13
  %190 = getelementptr inbounds i8, ptr %134, i64 10
  %191 = load i16, ptr %190, align 2, !tbaa !16
  %192 = sext i16 %191 to i64
  %193 = getelementptr inbounds i8, ptr %135, i64 5
  %194 = load i8, ptr %193, align 1, !tbaa !15
  %195 = zext i8 %194 to i64
  %196 = getelementptr i8, ptr %189, i64 %192
  %197 = getelementptr i8, ptr %196, i64 %195
  %198 = load i8, ptr %197, align 1, !tbaa !15
  %199 = getelementptr inbounds i8, ptr %136, i64 5
  store i8 %198, ptr %199, align 1, !tbaa !15
  %200 = load ptr, ptr @clp, align 8, !tbaa !13
  %201 = getelementptr inbounds i8, ptr %134, i64 12
  %202 = load i16, ptr %201, align 2, !tbaa !16
  %203 = sext i16 %202 to i64
  %204 = getelementptr inbounds i8, ptr %135, i64 6
  %205 = load i8, ptr %204, align 1, !tbaa !15
  %206 = zext i8 %205 to i64
  %207 = getelementptr i8, ptr %200, i64 %203
  %208 = getelementptr i8, ptr %207, i64 %206
  %209 = load i8, ptr %208, align 1, !tbaa !15
  %210 = getelementptr inbounds i8, ptr %136, i64 6
  store i8 %209, ptr %210, align 1, !tbaa !15
  %211 = load ptr, ptr @clp, align 8, !tbaa !13
  %212 = getelementptr inbounds i8, ptr %134, i64 14
  %213 = load i16, ptr %212, align 2, !tbaa !16
  %214 = sext i16 %213 to i64
  %215 = getelementptr inbounds i8, ptr %135, i64 7
  %216 = load i8, ptr %215, align 1, !tbaa !15
  %217 = zext i8 %216 to i64
  %218 = getelementptr i8, ptr %211, i64 %214
  %219 = getelementptr i8, ptr %218, i64 %217
  %220 = load i8, ptr %219, align 1, !tbaa !15
  %221 = getelementptr inbounds i8, ptr %136, i64 7
  store i8 %220, ptr %221, align 1, !tbaa !15
  %222 = getelementptr inbounds i8, ptr %134, i64 16
  %223 = getelementptr inbounds i8, ptr %136, i64 %131
  %224 = getelementptr inbounds i8, ptr %135, i64 %131
  %225 = add nuw nsw i32 %133, 1
  %226 = icmp eq i32 %225, 8
  br i1 %226, label %227, label %132

227:                                              ; preds = %132
  %228 = add nuw nsw i32 %40, 1
  %229 = load i32, ptr @block_count, align 4, !tbaa !6
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %38, label %231

231:                                              ; preds = %227
  %232 = load i32, ptr @width, align 4, !tbaa !6
  br label %233

233:                                              ; preds = %231, %29
  %234 = phi i32 [ %232, %231 ], [ %30, %29 ]
  %235 = phi i32 [ %229, %231 ], [ %31, %29 ]
  %236 = add nsw i64 %32, 1
  %237 = add nuw nsw i32 %33, 16
  %238 = icmp slt i32 %237, %234
  br i1 %238, label %29, label %239, !llvm.loop !21

239:                                              ; preds = %233
  %240 = trunc nsw i64 %236 to i32
  %241 = load i32, ptr @height2, align 4, !tbaa !6
  br label %242

242:                                              ; preds = %23, %239, %10
  %243 = phi i32 [ %11, %10 ], [ %241, %239 ], [ %11, %23 ]
  %244 = phi i32 [ %12, %10 ], [ %234, %239 ], [ %12, %23 ]
  %245 = phi i32 [ %13, %10 ], [ %234, %239 ], [ %13, %23 ]
  %246 = phi i32 [ %14, %10 ], [ %234, %239 ], [ %13, %23 ]
  %247 = phi i32 [ %15, %10 ], [ %240, %239 ], [ %28, %23 ]
  %248 = add nuw nsw i32 %16, 16
  %249 = icmp slt i32 %248, %243
  br i1 %249, label %10, label %250, !llvm.loop !22

250:                                              ; preds = %242, %4
  ret void
}

declare dso_local void @idct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write)
define dso_local void @dct_type_estimation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = alloca [128 x i16], align 2
  %5 = alloca [128 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #6
  %6 = load i32, ptr @height2, align 4, !tbaa !6
  %7 = icmp sgt i32 %6, 0
  %8 = load i32, ptr @width, align 4
  %9 = icmp sgt i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %409

11:                                               ; preds = %3, %403
  %12 = phi i32 [ %404, %403 ], [ %6, %3 ]
  %13 = phi i32 [ %405, %403 ], [ %8, %3 ]
  %14 = phi i32 [ %406, %403 ], [ 0, %3 ]
  %15 = phi i32 [ %407, %403 ], [ 0, %3 ]
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %17, label %403

17:                                               ; preds = %11
  %18 = sext i32 %14 to i64
  br label %19

19:                                               ; preds = %17, %395
  %20 = phi i64 [ %18, %17 ], [ %396, %395 ]
  %21 = phi i32 [ %13, %17 ], [ %398, %395 ]
  %22 = phi i32 [ 0, %17 ], [ %397, %395 ]
  %23 = load i32, ptr @frame_pred_dct, align 4, !tbaa !6
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr @pict_struct, align 4
  %26 = icmp ne i32 %25, 3
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = mul i32 %15, %21
  %30 = add i32 %22, %29
  %31 = shl i32 %21, 1
  %32 = sext i32 %21 to i64
  br label %35

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.mbinfo, ptr %2, i64 %20, i32 2
  store i32 0, ptr %34, align 8, !tbaa !10
  br label %395

35:                                               ; preds = %28, %35
  %36 = phi i64 [ 0, %28 ], [ %342, %35 ]
  %37 = phi i32 [ %30, %28 ], [ %343, %35 ]
  %38 = sext i32 %37 to i64
  %39 = shl nuw nsw i64 %36, 4
  %40 = getelementptr inbounds i8, ptr %1, i64 %38
  %41 = load i8, ptr %40, align 1, !tbaa !15
  %42 = zext i8 %41 to i16
  %43 = getelementptr inbounds i8, ptr %0, i64 %38
  %44 = load i8, ptr %43, align 1, !tbaa !15
  %45 = zext i8 %44 to i16
  %46 = sub nsw i16 %42, %45
  %47 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %39
  store i16 %46, ptr %47, align 2, !tbaa !16
  %48 = add nsw i64 %38, %32
  %49 = getelementptr inbounds i8, ptr %1, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i16
  %52 = getelementptr inbounds i8, ptr %0, i64 %48
  %53 = load i8, ptr %52, align 1, !tbaa !15
  %54 = zext i8 %53 to i16
  %55 = sub nsw i16 %51, %54
  %56 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %39
  store i16 %55, ptr %56, align 2, !tbaa !16
  %57 = or disjoint i64 %38, 1
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !15
  %60 = zext i8 %59 to i16
  %61 = getelementptr inbounds i8, ptr %0, i64 %57
  %62 = load i8, ptr %61, align 1, !tbaa !15
  %63 = zext i8 %62 to i16
  %64 = sub nsw i16 %60, %63
  %65 = or disjoint i64 %39, 1
  %66 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %65
  store i16 %64, ptr %66, align 2, !tbaa !16
  %67 = add nsw i64 %57, %32
  %68 = getelementptr inbounds i8, ptr %1, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !15
  %70 = zext i8 %69 to i16
  %71 = getelementptr inbounds i8, ptr %0, i64 %67
  %72 = load i8, ptr %71, align 1, !tbaa !15
  %73 = zext i8 %72 to i16
  %74 = sub nsw i16 %70, %73
  %75 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %65
  store i16 %74, ptr %75, align 2, !tbaa !16
  %76 = add nsw i64 %38, 2
  %77 = getelementptr inbounds i8, ptr %1, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !15
  %79 = zext i8 %78 to i16
  %80 = getelementptr inbounds i8, ptr %0, i64 %76
  %81 = load i8, ptr %80, align 1, !tbaa !15
  %82 = zext i8 %81 to i16
  %83 = sub nsw i16 %79, %82
  %84 = or disjoint i64 %39, 2
  %85 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %84
  store i16 %83, ptr %85, align 2, !tbaa !16
  %86 = add nsw i64 %76, %32
  %87 = getelementptr inbounds i8, ptr %1, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !15
  %89 = zext i8 %88 to i16
  %90 = getelementptr inbounds i8, ptr %0, i64 %86
  %91 = load i8, ptr %90, align 1, !tbaa !15
  %92 = zext i8 %91 to i16
  %93 = sub nsw i16 %89, %92
  %94 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %84
  store i16 %93, ptr %94, align 2, !tbaa !16
  %95 = add nsw i64 %38, 3
  %96 = getelementptr inbounds i8, ptr %1, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !15
  %98 = zext i8 %97 to i16
  %99 = getelementptr inbounds i8, ptr %0, i64 %95
  %100 = load i8, ptr %99, align 1, !tbaa !15
  %101 = zext i8 %100 to i16
  %102 = sub nsw i16 %98, %101
  %103 = or disjoint i64 %39, 3
  %104 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %103
  store i16 %102, ptr %104, align 2, !tbaa !16
  %105 = add nsw i64 %95, %32
  %106 = getelementptr inbounds i8, ptr %1, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !15
  %108 = zext i8 %107 to i16
  %109 = getelementptr inbounds i8, ptr %0, i64 %105
  %110 = load i8, ptr %109, align 1, !tbaa !15
  %111 = zext i8 %110 to i16
  %112 = sub nsw i16 %108, %111
  %113 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %103
  store i16 %112, ptr %113, align 2, !tbaa !16
  %114 = add nsw i64 %38, 4
  %115 = getelementptr inbounds i8, ptr %1, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !15
  %117 = zext i8 %116 to i16
  %118 = getelementptr inbounds i8, ptr %0, i64 %114
  %119 = load i8, ptr %118, align 1, !tbaa !15
  %120 = zext i8 %119 to i16
  %121 = sub nsw i16 %117, %120
  %122 = or disjoint i64 %39, 4
  %123 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %122
  store i16 %121, ptr %123, align 2, !tbaa !16
  %124 = add nsw i64 %114, %32
  %125 = getelementptr inbounds i8, ptr %1, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !15
  %127 = zext i8 %126 to i16
  %128 = getelementptr inbounds i8, ptr %0, i64 %124
  %129 = load i8, ptr %128, align 1, !tbaa !15
  %130 = zext i8 %129 to i16
  %131 = sub nsw i16 %127, %130
  %132 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %122
  store i16 %131, ptr %132, align 2, !tbaa !16
  %133 = add nsw i64 %38, 5
  %134 = getelementptr inbounds i8, ptr %1, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !15
  %136 = zext i8 %135 to i16
  %137 = getelementptr inbounds i8, ptr %0, i64 %133
  %138 = load i8, ptr %137, align 1, !tbaa !15
  %139 = zext i8 %138 to i16
  %140 = sub nsw i16 %136, %139
  %141 = or disjoint i64 %39, 5
  %142 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %141
  store i16 %140, ptr %142, align 2, !tbaa !16
  %143 = add nsw i64 %133, %32
  %144 = getelementptr inbounds i8, ptr %1, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !15
  %146 = zext i8 %145 to i16
  %147 = getelementptr inbounds i8, ptr %0, i64 %143
  %148 = load i8, ptr %147, align 1, !tbaa !15
  %149 = zext i8 %148 to i16
  %150 = sub nsw i16 %146, %149
  %151 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %141
  store i16 %150, ptr %151, align 2, !tbaa !16
  %152 = add nsw i64 %38, 6
  %153 = getelementptr inbounds i8, ptr %1, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !15
  %155 = zext i8 %154 to i16
  %156 = getelementptr inbounds i8, ptr %0, i64 %152
  %157 = load i8, ptr %156, align 1, !tbaa !15
  %158 = zext i8 %157 to i16
  %159 = sub nsw i16 %155, %158
  %160 = or disjoint i64 %39, 6
  %161 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %160
  store i16 %159, ptr %161, align 2, !tbaa !16
  %162 = add nsw i64 %152, %32
  %163 = getelementptr inbounds i8, ptr %1, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !15
  %165 = zext i8 %164 to i16
  %166 = getelementptr inbounds i8, ptr %0, i64 %162
  %167 = load i8, ptr %166, align 1, !tbaa !15
  %168 = zext i8 %167 to i16
  %169 = sub nsw i16 %165, %168
  %170 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %160
  store i16 %169, ptr %170, align 2, !tbaa !16
  %171 = add nsw i64 %38, 7
  %172 = getelementptr inbounds i8, ptr %1, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !15
  %174 = zext i8 %173 to i16
  %175 = getelementptr inbounds i8, ptr %0, i64 %171
  %176 = load i8, ptr %175, align 1, !tbaa !15
  %177 = zext i8 %176 to i16
  %178 = sub nsw i16 %174, %177
  %179 = or disjoint i64 %39, 7
  %180 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %179
  store i16 %178, ptr %180, align 2, !tbaa !16
  %181 = add nsw i64 %171, %32
  %182 = getelementptr inbounds i8, ptr %1, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !15
  %184 = zext i8 %183 to i16
  %185 = getelementptr inbounds i8, ptr %0, i64 %181
  %186 = load i8, ptr %185, align 1, !tbaa !15
  %187 = zext i8 %186 to i16
  %188 = sub nsw i16 %184, %187
  %189 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %179
  store i16 %188, ptr %189, align 2, !tbaa !16
  %190 = add nsw i64 %38, 8
  %191 = getelementptr inbounds i8, ptr %1, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !15
  %193 = zext i8 %192 to i16
  %194 = getelementptr inbounds i8, ptr %0, i64 %190
  %195 = load i8, ptr %194, align 1, !tbaa !15
  %196 = zext i8 %195 to i16
  %197 = sub nsw i16 %193, %196
  %198 = or disjoint i64 %39, 8
  %199 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %198
  store i16 %197, ptr %199, align 2, !tbaa !16
  %200 = add nsw i64 %190, %32
  %201 = getelementptr inbounds i8, ptr %1, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !15
  %203 = zext i8 %202 to i16
  %204 = getelementptr inbounds i8, ptr %0, i64 %200
  %205 = load i8, ptr %204, align 1, !tbaa !15
  %206 = zext i8 %205 to i16
  %207 = sub nsw i16 %203, %206
  %208 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %198
  store i16 %207, ptr %208, align 2, !tbaa !16
  %209 = add nsw i64 %38, 9
  %210 = getelementptr inbounds i8, ptr %1, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !15
  %212 = zext i8 %211 to i16
  %213 = getelementptr inbounds i8, ptr %0, i64 %209
  %214 = load i8, ptr %213, align 1, !tbaa !15
  %215 = zext i8 %214 to i16
  %216 = sub nsw i16 %212, %215
  %217 = or disjoint i64 %39, 9
  %218 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %217
  store i16 %216, ptr %218, align 2, !tbaa !16
  %219 = add nsw i64 %209, %32
  %220 = getelementptr inbounds i8, ptr %1, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !15
  %222 = zext i8 %221 to i16
  %223 = getelementptr inbounds i8, ptr %0, i64 %219
  %224 = load i8, ptr %223, align 1, !tbaa !15
  %225 = zext i8 %224 to i16
  %226 = sub nsw i16 %222, %225
  %227 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %217
  store i16 %226, ptr %227, align 2, !tbaa !16
  %228 = add nsw i64 %38, 10
  %229 = getelementptr inbounds i8, ptr %1, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !15
  %231 = zext i8 %230 to i16
  %232 = getelementptr inbounds i8, ptr %0, i64 %228
  %233 = load i8, ptr %232, align 1, !tbaa !15
  %234 = zext i8 %233 to i16
  %235 = sub nsw i16 %231, %234
  %236 = or disjoint i64 %39, 10
  %237 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %236
  store i16 %235, ptr %237, align 2, !tbaa !16
  %238 = add nsw i64 %228, %32
  %239 = getelementptr inbounds i8, ptr %1, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !15
  %241 = zext i8 %240 to i16
  %242 = getelementptr inbounds i8, ptr %0, i64 %238
  %243 = load i8, ptr %242, align 1, !tbaa !15
  %244 = zext i8 %243 to i16
  %245 = sub nsw i16 %241, %244
  %246 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %236
  store i16 %245, ptr %246, align 2, !tbaa !16
  %247 = add nsw i64 %38, 11
  %248 = getelementptr inbounds i8, ptr %1, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !15
  %250 = zext i8 %249 to i16
  %251 = getelementptr inbounds i8, ptr %0, i64 %247
  %252 = load i8, ptr %251, align 1, !tbaa !15
  %253 = zext i8 %252 to i16
  %254 = sub nsw i16 %250, %253
  %255 = or disjoint i64 %39, 11
  %256 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %255
  store i16 %254, ptr %256, align 2, !tbaa !16
  %257 = add nsw i64 %247, %32
  %258 = getelementptr inbounds i8, ptr %1, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !15
  %260 = zext i8 %259 to i16
  %261 = getelementptr inbounds i8, ptr %0, i64 %257
  %262 = load i8, ptr %261, align 1, !tbaa !15
  %263 = zext i8 %262 to i16
  %264 = sub nsw i16 %260, %263
  %265 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %255
  store i16 %264, ptr %265, align 2, !tbaa !16
  %266 = add nsw i64 %38, 12
  %267 = getelementptr inbounds i8, ptr %1, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !15
  %269 = zext i8 %268 to i16
  %270 = getelementptr inbounds i8, ptr %0, i64 %266
  %271 = load i8, ptr %270, align 1, !tbaa !15
  %272 = zext i8 %271 to i16
  %273 = sub nsw i16 %269, %272
  %274 = or disjoint i64 %39, 12
  %275 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %274
  store i16 %273, ptr %275, align 2, !tbaa !16
  %276 = add nsw i64 %266, %32
  %277 = getelementptr inbounds i8, ptr %1, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !15
  %279 = zext i8 %278 to i16
  %280 = getelementptr inbounds i8, ptr %0, i64 %276
  %281 = load i8, ptr %280, align 1, !tbaa !15
  %282 = zext i8 %281 to i16
  %283 = sub nsw i16 %279, %282
  %284 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %274
  store i16 %283, ptr %284, align 2, !tbaa !16
  %285 = add nsw i64 %38, 13
  %286 = getelementptr inbounds i8, ptr %1, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !15
  %288 = zext i8 %287 to i16
  %289 = getelementptr inbounds i8, ptr %0, i64 %285
  %290 = load i8, ptr %289, align 1, !tbaa !15
  %291 = zext i8 %290 to i16
  %292 = sub nsw i16 %288, %291
  %293 = or disjoint i64 %39, 13
  %294 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %293
  store i16 %292, ptr %294, align 2, !tbaa !16
  %295 = add nsw i64 %285, %32
  %296 = getelementptr inbounds i8, ptr %1, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !15
  %298 = zext i8 %297 to i16
  %299 = getelementptr inbounds i8, ptr %0, i64 %295
  %300 = load i8, ptr %299, align 1, !tbaa !15
  %301 = zext i8 %300 to i16
  %302 = sub nsw i16 %298, %301
  %303 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %293
  store i16 %302, ptr %303, align 2, !tbaa !16
  %304 = add nsw i64 %38, 14
  %305 = getelementptr inbounds i8, ptr %1, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !15
  %307 = zext i8 %306 to i16
  %308 = getelementptr inbounds i8, ptr %0, i64 %304
  %309 = load i8, ptr %308, align 1, !tbaa !15
  %310 = zext i8 %309 to i16
  %311 = sub nsw i16 %307, %310
  %312 = or disjoint i64 %39, 14
  %313 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %312
  store i16 %311, ptr %313, align 2, !tbaa !16
  %314 = add nsw i64 %304, %32
  %315 = getelementptr inbounds i8, ptr %1, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !15
  %317 = zext i8 %316 to i16
  %318 = getelementptr inbounds i8, ptr %0, i64 %314
  %319 = load i8, ptr %318, align 1, !tbaa !15
  %320 = zext i8 %319 to i16
  %321 = sub nsw i16 %317, %320
  %322 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %312
  store i16 %321, ptr %322, align 2, !tbaa !16
  %323 = add nsw i64 %38, 15
  %324 = getelementptr inbounds i8, ptr %1, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !15
  %326 = zext i8 %325 to i16
  %327 = getelementptr inbounds i8, ptr %0, i64 %323
  %328 = load i8, ptr %327, align 1, !tbaa !15
  %329 = zext i8 %328 to i16
  %330 = sub nsw i16 %326, %329
  %331 = or disjoint i64 %39, 15
  %332 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %331
  store i16 %330, ptr %332, align 2, !tbaa !16
  %333 = add nsw i64 %323, %32
  %334 = getelementptr inbounds i8, ptr %1, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !15
  %336 = zext i8 %335 to i16
  %337 = getelementptr inbounds i8, ptr %0, i64 %333
  %338 = load i8, ptr %337, align 1, !tbaa !15
  %339 = zext i8 %338 to i16
  %340 = sub nsw i16 %336, %339
  %341 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %331
  store i16 %340, ptr %341, align 2, !tbaa !16
  %342 = add nuw nsw i64 %36, 1
  %343 = add i32 %37, %31
  %344 = icmp eq i64 %342, 8
  br i1 %344, label %345, label %35

345:                                              ; preds = %35, %345
  %346 = phi i64 [ %366, %345 ], [ 0, %35 ]
  %347 = phi i32 [ %365, %345 ], [ 0, %35 ]
  %348 = phi i32 [ %363, %345 ], [ 0, %35 ]
  %349 = phi i32 [ %357, %345 ], [ 0, %35 ]
  %350 = phi i32 [ %361, %345 ], [ 0, %35 ]
  %351 = phi i32 [ %355, %345 ], [ 0, %35 ]
  %352 = getelementptr inbounds [128 x i16], ptr %4, i64 0, i64 %346
  %353 = load i16, ptr %352, align 2, !tbaa !16
  %354 = sext i16 %353 to i32
  %355 = add nsw i32 %351, %354
  %356 = mul nsw i32 %354, %354
  %357 = add nuw nsw i32 %356, %349
  %358 = getelementptr inbounds [128 x i16], ptr %5, i64 0, i64 %346
  %359 = load i16, ptr %358, align 2, !tbaa !16
  %360 = sext i16 %359 to i32
  %361 = add nsw i32 %350, %360
  %362 = mul nsw i32 %360, %360
  %363 = add nuw nsw i32 %362, %348
  %364 = mul nsw i32 %360, %354
  %365 = add nsw i32 %364, %347
  %366 = add nuw nsw i64 %346, 1
  %367 = icmp eq i64 %366, 128
  br i1 %367, label %368, label %345

368:                                              ; preds = %345
  %369 = uitofp nneg i32 %357 to double
  %370 = mul nsw i32 %355, %355
  %371 = uitofp nneg i32 %370 to double
  %372 = fmul double %371, 7.812500e-03
  %373 = fsub double %369, %372
  %374 = uitofp nneg i32 %363 to double
  %375 = mul nsw i32 %361, %361
  %376 = uitofp nneg i32 %375 to double
  %377 = fmul double %376, 7.812500e-03
  %378 = fsub double %374, %377
  %379 = fmul double %373, %378
  %380 = fcmp ogt double %379, 0.000000e+00
  br i1 %380, label %381, label %393

381:                                              ; preds = %368
  %382 = sitofp i32 %365 to double
  %383 = mul nsw i32 %361, %355
  %384 = sitofp i32 %383 to double
  %385 = fmul double %384, 7.812500e-03
  %386 = fsub double %382, %385
  %387 = tail call double @sqrt(double noundef %379) #6
  %388 = fdiv double %386, %387
  %389 = fcmp ogt double %388, 5.000000e-01
  %390 = getelementptr inbounds %struct.mbinfo, ptr %2, i64 %20, i32 2
  br i1 %389, label %391, label %392

391:                                              ; preds = %381
  store i32 0, ptr %390, align 8, !tbaa !10
  br label %395

392:                                              ; preds = %381
  store i32 1, ptr %390, align 8, !tbaa !10
  br label %395

393:                                              ; preds = %368
  %394 = getelementptr inbounds %struct.mbinfo, ptr %2, i64 %20, i32 2
  store i32 1, ptr %394, align 8, !tbaa !10
  br label %395

395:                                              ; preds = %393, %392, %391, %33
  %396 = add nsw i64 %20, 1
  %397 = add nuw nsw i32 %22, 16
  %398 = load i32, ptr @width, align 4, !tbaa !6
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %19, label %400

400:                                              ; preds = %395
  %401 = trunc nsw i64 %396 to i32
  %402 = load i32, ptr @height2, align 4, !tbaa !6
  br label %403

403:                                              ; preds = %400, %11
  %404 = phi i32 [ %12, %11 ], [ %402, %400 ]
  %405 = phi i32 [ %13, %11 ], [ %398, %400 ]
  %406 = phi i32 [ %14, %11 ], [ %401, %400 ]
  %407 = add nuw nsw i32 %15, 16
  %408 = icmp slt i32 %407, %404
  br i1 %408, label %11, label %409, !llvm.loop !23

409:                                              ; preds = %403, %3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare dso_local double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind memory(readwrite, inaccessiblemem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!10 = !{!11, !7, i64 8}
!11 = !{!"mbinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 56, !8, i64 72, !12, i64 80, !7, i64 88}
!12 = !{!"double", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !8, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unswitch.partial.disable"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
