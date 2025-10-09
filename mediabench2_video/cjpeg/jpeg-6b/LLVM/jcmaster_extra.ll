; ModuleID = 'jcmaster.c'
source_filename = "jcmaster.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind
define dso_local void @jinit_c_master_control(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [10 x i32], align 4
  %4 = alloca [10 x [64 x i32]], align 4
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = tail call ptr %7(ptr noundef %0, i32 noundef signext 1, i64 noundef 48) #5
  %9 = getelementptr inbounds i8, ptr %0, i64 432
  store ptr %8, ptr %9, align 8, !tbaa !17
  store ptr @prepare_for_pass, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr @pass_startup, ptr %10, align 8, !tbaa !21
  %11 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr @finish_pass_master, ptr %11, align 8, !tbaa !22
  %12 = getelementptr inbounds i8, ptr %8, i64 28
  store i32 0, ptr %12, align 4, !tbaa !23
  %13 = getelementptr inbounds i8, ptr %0, i64 52
  %14 = load i32, ptr %13, align 4, !tbaa !24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %0, i64 48
  %18 = load i32, ptr %17, align 8, !tbaa !25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %0, i64 76
  %22 = load i32, ptr %21, align 4, !tbaa !26
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %0, i64 56
  %26 = load i32, ptr %25, align 8, !tbaa !27
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %20, %16, %2
  %29 = load ptr, ptr %0, align 8, !tbaa !28
  %30 = getelementptr inbounds i8, ptr %29, i64 40
  store i32 32, ptr %30, align 8, !tbaa !29
  %31 = load ptr, ptr %29, align 8, !tbaa !31
  tail call void %31(ptr noundef nonnull %0) #5
  %32 = load i32, ptr %13, align 4, !tbaa !24
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ %32, %28 ], [ %14, %24 ]
  %35 = icmp ugt i32 %34, 65500
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %0, i64 48
  %38 = load i32, ptr %37, align 8, !tbaa !25
  %39 = icmp ugt i32 %38, 65500
  br i1 %39, label %40, label %48

40:                                               ; preds = %36, %33
  %41 = load ptr, ptr %0, align 8, !tbaa !28
  %42 = getelementptr inbounds i8, ptr %41, i64 40
  store i32 41, ptr %42, align 8, !tbaa !29
  %43 = getelementptr inbounds i8, ptr %41, i64 44
  store i32 65500, ptr %43, align 4, !tbaa !32
  %44 = load ptr, ptr %0, align 8, !tbaa !28
  %45 = load ptr, ptr %44, align 8, !tbaa !31
  tail call void %45(ptr noundef nonnull %0) #5
  %46 = getelementptr inbounds i8, ptr %0, i64 48
  %47 = load i32, ptr %46, align 8, !tbaa !25
  br label %48

48:                                               ; preds = %40, %36
  %49 = phi i32 [ %47, %40 ], [ %38, %36 ]
  %50 = getelementptr inbounds i8, ptr %0, i64 48
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds i8, ptr %0, i64 56
  %53 = load i32, ptr %52, align 8, !tbaa !27
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, %51
  %56 = icmp ult i64 %55, 4294967296
  br i1 %56, label %61, label %57

57:                                               ; preds = %48
  %58 = load ptr, ptr %0, align 8, !tbaa !28
  %59 = getelementptr inbounds i8, ptr %58, i64 40
  store i32 70, ptr %59, align 8, !tbaa !29
  %60 = load ptr, ptr %58, align 8, !tbaa !31
  tail call void %60(ptr noundef nonnull %0) #5
  br label %61

61:                                               ; preds = %57, %48
  %62 = getelementptr inbounds i8, ptr %0, i64 72
  %63 = load i32, ptr %62, align 8, !tbaa !33
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %0, align 8, !tbaa !28
  %67 = getelementptr inbounds i8, ptr %66, i64 40
  store i32 15, ptr %67, align 8, !tbaa !29
  %68 = getelementptr inbounds i8, ptr %66, i64 44
  store i32 %63, ptr %68, align 4, !tbaa !32
  %69 = load ptr, ptr %0, align 8, !tbaa !28
  %70 = load ptr, ptr %69, align 8, !tbaa !31
  tail call void %70(ptr noundef nonnull %0) #5
  br label %71

71:                                               ; preds = %65, %61
  %72 = getelementptr inbounds i8, ptr %0, i64 76
  %73 = load i32, ptr %72, align 4, !tbaa !26
  %74 = icmp sgt i32 %73, 10
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load ptr, ptr %0, align 8, !tbaa !28
  %77 = getelementptr inbounds i8, ptr %76, i64 40
  store i32 26, ptr %77, align 8, !tbaa !29
  %78 = getelementptr inbounds i8, ptr %76, i64 44
  store i32 %73, ptr %78, align 4, !tbaa !32
  %79 = load ptr, ptr %0, align 8, !tbaa !28
  %80 = getelementptr inbounds i8, ptr %79, i64 48
  store i32 10, ptr %80, align 4, !tbaa !32
  %81 = load ptr, ptr %0, align 8, !tbaa !28
  %82 = load ptr, ptr %81, align 8, !tbaa !31
  tail call void %82(ptr noundef nonnull %0) #5
  %83 = load i32, ptr %72, align 4, !tbaa !26
  br label %84

84:                                               ; preds = %75, %71
  %85 = phi i32 [ %83, %75 ], [ %73, %71 ]
  %86 = getelementptr inbounds i8, ptr %0, i64 312
  store i32 1, ptr %86, align 8, !tbaa !34
  %87 = getelementptr inbounds i8, ptr %0, i64 316
  store i32 1, ptr %87, align 4, !tbaa !35
  %88 = getelementptr inbounds i8, ptr %0, i64 88
  %89 = icmp sgt i32 %85, 0
  br i1 %89, label %90, label %188

90:                                               ; preds = %84
  %91 = load ptr, ptr %88, align 8, !tbaa !36
  br label %92

92:                                               ; preds = %90, %117
  %93 = phi i32 [ %118, %117 ], [ %85, %90 ]
  %94 = phi i32 [ %124, %117 ], [ 1, %90 ]
  %95 = phi i32 [ %123, %117 ], [ 1, %90 ]
  %96 = phi i32 [ %125, %117 ], [ 0, %90 ]
  %97 = phi ptr [ %126, %117 ], [ %91, %90 ]
  %98 = getelementptr inbounds i8, ptr %97, i64 8
  %99 = load i32, ptr %98, align 8, !tbaa !37
  %100 = add i32 %99, -5
  %101 = icmp ult i32 %100, -4
  br i1 %101, label %107, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds i8, ptr %97, i64 12
  %104 = load i32, ptr %103, align 4, !tbaa !39
  %105 = add i32 %104, -5
  %106 = icmp ult i32 %105, -4
  br i1 %106, label %107, label %117

107:                                              ; preds = %102, %92
  %108 = load ptr, ptr %0, align 8, !tbaa !28
  %109 = getelementptr inbounds i8, ptr %108, i64 40
  store i32 18, ptr %109, align 8, !tbaa !29
  %110 = load ptr, ptr %108, align 8, !tbaa !31
  tail call void %110(ptr noundef nonnull %0) #5
  %111 = load i32, ptr %86, align 8, !tbaa !34
  %112 = load i32, ptr %98, align 8, !tbaa !37
  %113 = load i32, ptr %87, align 4, !tbaa !35
  %114 = getelementptr inbounds i8, ptr %97, i64 12
  %115 = load i32, ptr %114, align 4, !tbaa !39
  %116 = load i32, ptr %72, align 4, !tbaa !26
  br label %117

117:                                              ; preds = %107, %102
  %118 = phi i32 [ %93, %102 ], [ %116, %107 ]
  %119 = phi i32 [ %104, %102 ], [ %115, %107 ]
  %120 = phi i32 [ %94, %102 ], [ %113, %107 ]
  %121 = phi i32 [ %99, %102 ], [ %112, %107 ]
  %122 = phi i32 [ %95, %102 ], [ %111, %107 ]
  %123 = tail call i32 @llvm.smax.i32(i32 %122, i32 %121)
  store i32 %123, ptr %86, align 8, !tbaa !34
  %124 = tail call i32 @llvm.smax.i32(i32 %120, i32 %119)
  store i32 %124, ptr %87, align 4, !tbaa !35
  %125 = add nuw nsw i32 %96, 1
  %126 = getelementptr inbounds i8, ptr %97, i64 96
  %127 = icmp slt i32 %125, %118
  br i1 %127, label %92, label %128

128:                                              ; preds = %117
  %129 = icmp sgt i32 %118, 0
  br i1 %129, label %130, label %188

130:                                              ; preds = %128
  %131 = load ptr, ptr %88, align 8, !tbaa !36
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi i32 [ %182, %132 ], [ 0, %130 ]
  %134 = phi ptr [ %183, %132 ], [ %131, %130 ]
  %135 = getelementptr inbounds i8, ptr %134, i64 4
  store i32 %133, ptr %135, align 4, !tbaa !40
  %136 = getelementptr inbounds i8, ptr %134, i64 36
  store i32 8, ptr %136, align 4, !tbaa !41
  %137 = load i32, ptr %50, align 8, !tbaa !25
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %134, i64 8
  %140 = load i32, ptr %139, align 8, !tbaa !37
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, %138
  %143 = load i32, ptr %86, align 8, !tbaa !34
  %144 = shl nsw i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = tail call i64 @jdiv_round_up(i64 noundef %142, i64 noundef %145) #5
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds i8, ptr %134, i64 28
  store i32 %147, ptr %148, align 4, !tbaa !42
  %149 = load i32, ptr %13, align 4, !tbaa !24
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i8, ptr %134, i64 12
  %152 = load i32, ptr %151, align 4, !tbaa !39
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, %150
  %155 = load i32, ptr %87, align 4, !tbaa !35
  %156 = shl nsw i32 %155, 3
  %157 = sext i32 %156 to i64
  %158 = tail call i64 @jdiv_round_up(i64 noundef %154, i64 noundef %157) #5
  %159 = trunc i64 %158 to i32
  %160 = getelementptr inbounds i8, ptr %134, i64 32
  store i32 %159, ptr %160, align 8, !tbaa !43
  %161 = load i32, ptr %50, align 8, !tbaa !25
  %162 = zext i32 %161 to i64
  %163 = load i32, ptr %139, align 8, !tbaa !37
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %164, %162
  %166 = load i32, ptr %86, align 8, !tbaa !34
  %167 = sext i32 %166 to i64
  %168 = tail call i64 @jdiv_round_up(i64 noundef %165, i64 noundef %167) #5
  %169 = trunc i64 %168 to i32
  %170 = getelementptr inbounds i8, ptr %134, i64 40
  store i32 %169, ptr %170, align 8, !tbaa !44
  %171 = load i32, ptr %13, align 4, !tbaa !24
  %172 = zext i32 %171 to i64
  %173 = load i32, ptr %151, align 4, !tbaa !39
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %174, %172
  %176 = load i32, ptr %87, align 4, !tbaa !35
  %177 = sext i32 %176 to i64
  %178 = tail call i64 @jdiv_round_up(i64 noundef %175, i64 noundef %177) #5
  %179 = trunc i64 %178 to i32
  %180 = getelementptr inbounds i8, ptr %134, i64 44
  store i32 %179, ptr %180, align 4, !tbaa !45
  %181 = getelementptr inbounds i8, ptr %134, i64 48
  store i32 1, ptr %181, align 8, !tbaa !46
  %182 = add nuw nsw i32 %133, 1
  %183 = getelementptr inbounds i8, ptr %134, i64 96
  %184 = load i32, ptr %72, align 4, !tbaa !26
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %132, label %186

186:                                              ; preds = %132
  %187 = load i32, ptr %87, align 4, !tbaa !35
  br label %188

188:                                              ; preds = %84, %128, %186
  %189 = phi i32 [ %187, %186 ], [ %124, %128 ], [ 1, %84 ]
  %190 = load i32, ptr %13, align 4, !tbaa !24
  %191 = zext i32 %190 to i64
  %192 = shl nsw i32 %189, 3
  %193 = sext i32 %192 to i64
  %194 = tail call i64 @jdiv_round_up(i64 noundef %191, i64 noundef %193) #5
  %195 = trunc i64 %194 to i32
  %196 = getelementptr inbounds i8, ptr %0, i64 320
  store i32 %195, ptr %196, align 8, !tbaa !47
  %197 = getelementptr inbounds i8, ptr %0, i64 248
  %198 = load ptr, ptr %197, align 8, !tbaa !48
  %199 = icmp eq ptr %198, null
  %200 = getelementptr inbounds i8, ptr %0, i64 240
  br i1 %199, label %508, label %201

201:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 2560, ptr nonnull %4) #5
  %202 = load i32, ptr %200, align 8, !tbaa !49
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load ptr, ptr %0, align 8, !tbaa !28
  %206 = getelementptr inbounds i8, ptr %205, i64 40
  store i32 19, ptr %206, align 8, !tbaa !29
  %207 = getelementptr inbounds i8, ptr %205, i64 44
  store i32 0, ptr %207, align 4, !tbaa !32
  %208 = load ptr, ptr %0, align 8, !tbaa !28
  %209 = load ptr, ptr %208, align 8, !tbaa !31
  tail call void %209(ptr noundef nonnull %0) #5
  %210 = load ptr, ptr %197, align 8, !tbaa !48
  br label %211

211:                                              ; preds = %204, %201
  %212 = phi ptr [ %210, %204 ], [ %198, %201 ]
  %213 = getelementptr inbounds i8, ptr %212, i64 20
  %214 = load i32, ptr %213, align 4, !tbaa !50
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %212, i64 24
  %218 = load i32, ptr %217, align 4, !tbaa !52
  %219 = icmp eq i32 %218, 63
  br i1 %219, label %227, label %220

220:                                              ; preds = %216, %211
  %221 = getelementptr inbounds i8, ptr %0, i64 308
  store i32 1, ptr %221, align 4, !tbaa !53
  %222 = load i32, ptr %72, align 4, !tbaa !26
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = zext nneg i32 %222 to i64
  %226 = shl nuw nsw i64 %225, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %4, i8 -1, i64 %226, i1 false), !tbaa !54
  br label %234

227:                                              ; preds = %216
  %228 = getelementptr inbounds i8, ptr %0, i64 308
  store i32 0, ptr %228, align 4, !tbaa !53
  %229 = load i32, ptr %72, align 4, !tbaa !26
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = zext nneg i32 %229 to i64
  %233 = shl nuw nsw i64 %232, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %3, i8 0, i64 %233, i1 false), !tbaa !54
  br label %234

234:                                              ; preds = %224, %231, %227, %220
  %235 = phi i32 [ %229, %231 ], [ %222, %220 ], [ %229, %227 ], [ %222, %224 ]
  %236 = phi i32 [ 0, %231 ], [ 1, %220 ], [ 0, %227 ], [ 1, %224 ]
  %237 = load i32, ptr %200, align 8, !tbaa !49
  %238 = icmp slt i32 %237, 1
  br i1 %238, label %469, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds i8, ptr %0, i64 308
  br label %241

241:                                              ; preds = %461, %239
  %242 = phi ptr [ %212, %239 ], [ %462, %461 ]
  %243 = phi i32 [ 1, %239 ], [ %463, %461 ]
  %244 = load i32, ptr %242, align 4, !tbaa !55
  %245 = add i32 %244, -5
  %246 = icmp ult i32 %245, -4
  br i1 %246, label %247, label %256

247:                                              ; preds = %241
  %248 = load ptr, ptr %0, align 8, !tbaa !28
  %249 = getelementptr inbounds i8, ptr %248, i64 40
  store i32 26, ptr %249, align 8, !tbaa !29
  %250 = getelementptr inbounds i8, ptr %248, i64 44
  store i32 %244, ptr %250, align 4, !tbaa !32
  %251 = load ptr, ptr %0, align 8, !tbaa !28
  %252 = getelementptr inbounds i8, ptr %251, i64 48
  store i32 4, ptr %252, align 4, !tbaa !32
  %253 = load ptr, ptr %0, align 8, !tbaa !28
  %254 = load ptr, ptr %253, align 8, !tbaa !31
  tail call void %254(ptr noundef nonnull %0) #5
  %255 = icmp sgt i32 %244, 0
  br i1 %255, label %256, label %300

256:                                              ; preds = %247, %241
  %257 = getelementptr inbounds i8, ptr %242, i64 4
  %258 = zext nneg i32 %244 to i64
  %259 = load i32, ptr %257, align 4, !tbaa !54
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %256
  %262 = load i32, ptr %72, align 4, !tbaa !26
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %261, %256
  %265 = load ptr, ptr %0, align 8, !tbaa !28
  %266 = getelementptr inbounds i8, ptr %265, i64 40
  store i32 19, ptr %266, align 8, !tbaa !29
  %267 = getelementptr inbounds i8, ptr %265, i64 44
  store i32 %243, ptr %267, align 4, !tbaa !32
  %268 = load ptr, ptr %0, align 8, !tbaa !28
  %269 = load ptr, ptr %268, align 8, !tbaa !31
  tail call void %269(ptr noundef nonnull %0) #5
  br label %270

270:                                              ; preds = %264, %261
  %271 = icmp eq i32 %244, 1
  br i1 %271, label %300, label %272

272:                                              ; preds = %270, %297
  %273 = phi i64 [ %298, %297 ], [ 1, %270 ]
  %274 = getelementptr inbounds [4 x i32], ptr %257, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !54
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %272
  %278 = load i32, ptr %72, align 4, !tbaa !26
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %286, label %280

280:                                              ; preds = %277, %272
  %281 = load ptr, ptr %0, align 8, !tbaa !28
  %282 = getelementptr inbounds i8, ptr %281, i64 40
  store i32 19, ptr %282, align 8, !tbaa !29
  %283 = getelementptr inbounds i8, ptr %281, i64 44
  store i32 %243, ptr %283, align 4, !tbaa !32
  %284 = load ptr, ptr %0, align 8, !tbaa !28
  %285 = load ptr, ptr %284, align 8, !tbaa !31
  tail call void %285(ptr noundef %0) #5
  br label %286

286:                                              ; preds = %280, %277
  %287 = add nsw i64 %273, -1
  %288 = getelementptr inbounds [4 x i32], ptr %257, i64 0, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !54
  %290 = icmp sgt i32 %275, %289
  br i1 %290, label %297, label %291

291:                                              ; preds = %286
  %292 = load ptr, ptr %0, align 8, !tbaa !28
  %293 = getelementptr inbounds i8, ptr %292, i64 40
  store i32 19, ptr %293, align 8, !tbaa !29
  %294 = getelementptr inbounds i8, ptr %292, i64 44
  store i32 %243, ptr %294, align 4, !tbaa !32
  %295 = load ptr, ptr %0, align 8, !tbaa !28
  %296 = load ptr, ptr %295, align 8, !tbaa !31
  tail call void %296(ptr noundef nonnull %0) #5
  br label %297

297:                                              ; preds = %291, %286
  %298 = add nuw nsw i64 %273, 1
  %299 = icmp eq i64 %298, %258
  br i1 %299, label %300, label %272, !llvm.loop !56

300:                                              ; preds = %297, %270, %247
  %301 = phi i1 [ false, %247 ], [ true, %270 ], [ true, %297 ]
  %302 = getelementptr inbounds i8, ptr %242, i64 20
  %303 = load i32, ptr %302, align 4, !tbaa !50
  %304 = getelementptr inbounds i8, ptr %242, i64 24
  %305 = load i32, ptr %304, align 4, !tbaa !52
  %306 = getelementptr inbounds i8, ptr %242, i64 28
  %307 = load i32, ptr %306, align 4, !tbaa !58
  %308 = freeze i32 %307
  %309 = getelementptr inbounds i8, ptr %242, i64 32
  %310 = load i32, ptr %309, align 4, !tbaa !59
  %311 = load i32, ptr %240, align 4, !tbaa !53
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %427, label %313

313:                                              ; preds = %300
  %314 = icmp ugt i32 %303, 63
  br i1 %314, label %323, label %315

315:                                              ; preds = %313
  %316 = icmp slt i32 %305, %303
  %317 = icmp sgt i32 %305, 63
  %318 = or i1 %316, %317
  %319 = icmp ugt i32 %308, 10
  %320 = or i1 %318, %319
  %321 = icmp ugt i32 %310, 10
  %322 = select i1 %320, i1 true, i1 %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %315, %313
  %324 = load ptr, ptr %0, align 8, !tbaa !28
  %325 = getelementptr inbounds i8, ptr %324, i64 40
  store i32 17, ptr %325, align 8, !tbaa !29
  %326 = getelementptr inbounds i8, ptr %324, i64 44
  store i32 %243, ptr %326, align 4, !tbaa !32
  %327 = load ptr, ptr %0, align 8, !tbaa !28
  %328 = load ptr, ptr %327, align 8, !tbaa !31
  tail call void %328(ptr noundef nonnull %0) #5
  br label %329

329:                                              ; preds = %323, %315
  %330 = icmp eq i32 %303, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %329
  %332 = icmp eq i32 %305, 0
  br i1 %332, label %341, label %335

333:                                              ; preds = %329
  %334 = icmp eq i32 %244, 1
  br i1 %334, label %341, label %335

335:                                              ; preds = %333, %331
  %336 = load ptr, ptr %0, align 8, !tbaa !28
  %337 = getelementptr inbounds i8, ptr %336, i64 40
  store i32 17, ptr %337, align 8, !tbaa !29
  %338 = getelementptr inbounds i8, ptr %336, i64 44
  store i32 %243, ptr %338, align 4, !tbaa !32
  %339 = load ptr, ptr %0, align 8, !tbaa !28
  %340 = load ptr, ptr %339, align 8, !tbaa !31
  tail call void %340(ptr noundef nonnull %0) #5
  br label %341

341:                                              ; preds = %335, %333, %331
  br i1 %301, label %342, label %461

342:                                              ; preds = %341
  %343 = getelementptr inbounds i8, ptr %242, i64 4
  %344 = icmp sgt i32 %303, %305
  %345 = add nsw i32 %308, -1
  %346 = icmp eq i32 %310, %345
  %347 = freeze i1 %346
  %348 = icmp eq i32 %308, 0
  %349 = sext i32 %303 to i64
  %350 = add i32 %305, 1
  %351 = zext nneg i32 %244 to i64
  br label %352

352:                                              ; preds = %424, %342
  %353 = phi i64 [ 0, %342 ], [ %425, %424 ]
  %354 = getelementptr inbounds [4 x i32], ptr %343, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !54
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [10 x [64 x i32]], ptr %4, i64 0, i64 %356
  br i1 %330, label %367, label %358

358:                                              ; preds = %352
  %359 = load i32, ptr %357, align 4, !tbaa !54
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  %362 = load ptr, ptr %0, align 8, !tbaa !28
  %363 = getelementptr inbounds i8, ptr %362, i64 40
  store i32 17, ptr %363, align 8, !tbaa !29
  %364 = getelementptr inbounds i8, ptr %362, i64 44
  store i32 %243, ptr %364, align 4, !tbaa !32
  %365 = load ptr, ptr %0, align 8, !tbaa !28
  %366 = load ptr, ptr %365, align 8, !tbaa !31
  tail call void %366(ptr noundef nonnull %0) #5
  br label %367

367:                                              ; preds = %361, %358, %352
  br i1 %344, label %424, label %368

368:                                              ; preds = %367
  br i1 %348, label %369, label %400

369:                                              ; preds = %368
  br i1 %347, label %385, label %370

370:                                              ; preds = %369, %381
  %371 = phi i64 [ %382, %381 ], [ %349, %369 ]
  %372 = getelementptr inbounds i32, ptr %357, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !54
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %381, label %375

375:                                              ; preds = %370
  %376 = load ptr, ptr %0, align 8, !tbaa !28
  %377 = getelementptr inbounds i8, ptr %376, i64 40
  store i32 17, ptr %377, align 8, !tbaa !29
  %378 = getelementptr inbounds i8, ptr %376, i64 44
  store i32 %243, ptr %378, align 4, !tbaa !32
  %379 = load ptr, ptr %0, align 8, !tbaa !28
  %380 = load ptr, ptr %379, align 8, !tbaa !31
  tail call void %380(ptr noundef nonnull %0) #5
  br label %381

381:                                              ; preds = %375, %370
  store i32 %310, ptr %372, align 4, !tbaa !54
  %382 = add nsw i64 %371, 1
  %383 = trunc i64 %382 to i32
  %384 = icmp eq i32 %350, %383
  br i1 %384, label %424, label %370

385:                                              ; preds = %369, %396
  %386 = phi i64 [ %397, %396 ], [ %349, %369 ]
  %387 = getelementptr inbounds i32, ptr %357, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !54
  %389 = icmp slt i32 %388, 1
  br i1 %389, label %396, label %390

390:                                              ; preds = %385
  %391 = load ptr, ptr %0, align 8, !tbaa !28
  %392 = getelementptr inbounds i8, ptr %391, i64 40
  store i32 17, ptr %392, align 8, !tbaa !29
  %393 = getelementptr inbounds i8, ptr %391, i64 44
  store i32 %243, ptr %393, align 4, !tbaa !32
  %394 = load ptr, ptr %0, align 8, !tbaa !28
  %395 = load ptr, ptr %394, align 8, !tbaa !31
  tail call void %395(ptr noundef nonnull %0) #5
  br label %396

396:                                              ; preds = %390, %385
  store i32 %310, ptr %387, align 4, !tbaa !54
  %397 = add nsw i64 %386, 1
  %398 = trunc i64 %397 to i32
  %399 = icmp eq i32 %350, %398
  br i1 %399, label %424, label %385

400:                                              ; preds = %368, %420
  %401 = phi i64 [ %421, %420 ], [ %349, %368 ]
  %402 = getelementptr inbounds i32, ptr %357, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !54
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %411

405:                                              ; preds = %400
  %406 = load ptr, ptr %0, align 8, !tbaa !28
  %407 = getelementptr inbounds i8, ptr %406, i64 40
  store i32 17, ptr %407, align 8, !tbaa !29
  %408 = getelementptr inbounds i8, ptr %406, i64 44
  store i32 %243, ptr %408, align 4, !tbaa !32
  %409 = load ptr, ptr %0, align 8, !tbaa !28
  %410 = load ptr, ptr %409, align 8, !tbaa !31
  tail call void %410(ptr noundef %0) #5
  br label %420

411:                                              ; preds = %400
  %412 = icmp eq i32 %308, %403
  %413 = and i1 %347, %412
  br i1 %413, label %420, label %414

414:                                              ; preds = %411
  %415 = load ptr, ptr %0, align 8, !tbaa !28
  %416 = getelementptr inbounds i8, ptr %415, i64 40
  store i32 17, ptr %416, align 8, !tbaa !29
  %417 = getelementptr inbounds i8, ptr %415, i64 44
  store i32 %243, ptr %417, align 4, !tbaa !32
  %418 = load ptr, ptr %0, align 8, !tbaa !28
  %419 = load ptr, ptr %418, align 8, !tbaa !31
  tail call void %419(ptr noundef nonnull %0) #5
  br label %420

420:                                              ; preds = %414, %411, %405
  store i32 %310, ptr %402, align 4, !tbaa !54
  %421 = add nsw i64 %401, 1
  %422 = trunc i64 %421 to i32
  %423 = icmp eq i32 %350, %422
  br i1 %423, label %424, label %400

424:                                              ; preds = %420, %381, %396, %367
  %425 = add nuw nsw i64 %353, 1
  %426 = icmp eq i64 %425, %351
  br i1 %426, label %461, label %352

427:                                              ; preds = %300
  %428 = icmp ne i32 %305, 63
  %429 = or i32 %308, %303
  %430 = icmp ne i32 %429, 0
  %431 = select i1 %430, i1 true, i1 %428
  %432 = icmp ne i32 %310, 0
  %433 = select i1 %431, i1 true, i1 %432
  br i1 %433, label %434, label %440

434:                                              ; preds = %427
  %435 = load ptr, ptr %0, align 8, !tbaa !28
  %436 = getelementptr inbounds i8, ptr %435, i64 40
  store i32 17, ptr %436, align 8, !tbaa !29
  %437 = getelementptr inbounds i8, ptr %435, i64 44
  store i32 %243, ptr %437, align 4, !tbaa !32
  %438 = load ptr, ptr %0, align 8, !tbaa !28
  %439 = load ptr, ptr %438, align 8, !tbaa !31
  tail call void %439(ptr noundef nonnull %0) #5
  br label %440

440:                                              ; preds = %434, %427
  br i1 %301, label %441, label %461

441:                                              ; preds = %440
  %442 = getelementptr inbounds i8, ptr %242, i64 4
  %443 = zext nneg i32 %244 to i64
  br label %444

444:                                              ; preds = %458, %441
  %445 = phi i64 [ 0, %441 ], [ %459, %458 ]
  %446 = getelementptr inbounds [4 x i32], ptr %442, i64 0, i64 %445
  %447 = load i32, ptr %446, align 4, !tbaa !54
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [10 x i32], ptr %3, i64 0, i64 %448
  %450 = load i32, ptr %449, align 4, !tbaa !54
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %458, label %452

452:                                              ; preds = %444
  %453 = load ptr, ptr %0, align 8, !tbaa !28
  %454 = getelementptr inbounds i8, ptr %453, i64 40
  store i32 19, ptr %454, align 8, !tbaa !29
  %455 = getelementptr inbounds i8, ptr %453, i64 44
  store i32 %243, ptr %455, align 4, !tbaa !32
  %456 = load ptr, ptr %0, align 8, !tbaa !28
  %457 = load ptr, ptr %456, align 8, !tbaa !31
  tail call void %457(ptr noundef nonnull %0) #5
  br label %458

458:                                              ; preds = %452, %444
  store i32 1, ptr %449, align 4, !tbaa !54
  %459 = add nuw nsw i64 %445, 1
  %460 = icmp eq i64 %459, %443
  br i1 %460, label %461, label %444

461:                                              ; preds = %424, %458, %440, %341
  %462 = getelementptr inbounds i8, ptr %242, i64 36
  %463 = add nuw nsw i32 %243, 1
  %464 = load i32, ptr %200, align 8, !tbaa !49
  %465 = icmp slt i32 %243, %464
  br i1 %465, label %241, label %466

466:                                              ; preds = %461
  %467 = load i32, ptr %240, align 4, !tbaa !53
  %468 = load i32, ptr %72, align 4, !tbaa !26
  br label %469

469:                                              ; preds = %466, %234
  %470 = phi i32 [ %468, %466 ], [ %235, %234 ]
  %471 = phi i32 [ %467, %466 ], [ %236, %234 ]
  %472 = icmp eq i32 %471, 0
  %473 = icmp sgt i32 %470, 0
  br i1 %472, label %475, label %474

474:                                              ; preds = %469
  br i1 %473, label %476, label %510

475:                                              ; preds = %469
  br i1 %473, label %492, label %510

476:                                              ; preds = %474, %487
  %477 = phi i32 [ %488, %487 ], [ %470, %474 ]
  %478 = phi i64 [ %489, %487 ], [ 0, %474 ]
  %479 = getelementptr inbounds [10 x [64 x i32]], ptr %4, i64 0, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !54
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %476
  %483 = load ptr, ptr %0, align 8, !tbaa !28
  %484 = getelementptr inbounds i8, ptr %483, i64 40
  store i32 45, ptr %484, align 8, !tbaa !29
  %485 = load ptr, ptr %483, align 8, !tbaa !31
  tail call void %485(ptr noundef nonnull %0) #5
  %486 = load i32, ptr %72, align 4, !tbaa !26
  br label %487

487:                                              ; preds = %482, %476
  %488 = phi i32 [ %477, %476 ], [ %486, %482 ]
  %489 = add nuw nsw i64 %478, 1
  %490 = sext i32 %488 to i64
  %491 = icmp slt i64 %489, %490
  br i1 %491, label %476, label %510

492:                                              ; preds = %475, %503
  %493 = phi i32 [ %504, %503 ], [ %470, %475 ]
  %494 = phi i64 [ %505, %503 ], [ 0, %475 ]
  %495 = getelementptr inbounds [10 x i32], ptr %3, i64 0, i64 %494
  %496 = load i32, ptr %495, align 4, !tbaa !54
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %492
  %499 = load ptr, ptr %0, align 8, !tbaa !28
  %500 = getelementptr inbounds i8, ptr %499, i64 40
  store i32 45, ptr %500, align 8, !tbaa !29
  %501 = load ptr, ptr %499, align 8, !tbaa !31
  tail call void %501(ptr noundef nonnull %0) #5
  %502 = load i32, ptr %72, align 4, !tbaa !26
  br label %503

503:                                              ; preds = %498, %492
  %504 = phi i32 [ %493, %492 ], [ %502, %498 ]
  %505 = add nuw nsw i64 %494, 1
  %506 = sext i32 %504 to i64
  %507 = icmp slt i64 %505, %506
  br i1 %507, label %492, label %510

508:                                              ; preds = %188
  %509 = getelementptr inbounds i8, ptr %0, i64 308
  store i32 0, ptr %509, align 4, !tbaa !53
  br label %516

510:                                              ; preds = %487, %503, %475, %474
  call void @llvm.lifetime.end.p0(i64 2560, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5
  %511 = getelementptr inbounds i8, ptr %0, i64 308
  %512 = load i32, ptr %511, align 4, !tbaa !53
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %518, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds i8, ptr %0, i64 264
  br label %516

516:                                              ; preds = %514, %508
  %517 = phi ptr [ %200, %508 ], [ %515, %514 ]
  store i32 1, ptr %517, align 8, !tbaa !54
  br label %518

518:                                              ; preds = %516, %510
  %519 = icmp eq i32 %1, 0
  br i1 %519, label %529, label %520

520:                                              ; preds = %518
  %521 = getelementptr inbounds i8, ptr %0, i64 264
  %522 = load i32, ptr %521, align 8, !tbaa !60
  %523 = icmp eq i32 %522, 0
  %524 = getelementptr inbounds i8, ptr %8, i64 32
  %525 = getelementptr inbounds i8, ptr %8, i64 44
  %526 = getelementptr inbounds i8, ptr %8, i64 36
  br i1 %523, label %528, label %527

527:                                              ; preds = %520
  store i32 1, ptr %524, align 8, !tbaa !61
  store i32 0, ptr %525, align 4, !tbaa !62
  store i32 0, ptr %526, align 4, !tbaa !63
  br label %536

528:                                              ; preds = %520
  store i32 2, ptr %524, align 8, !tbaa !61
  store i32 0, ptr %525, align 4, !tbaa !62
  store i32 0, ptr %526, align 4, !tbaa !63
  br label %540

529:                                              ; preds = %518
  %530 = getelementptr inbounds i8, ptr %8, i64 32
  store i32 0, ptr %530, align 8, !tbaa !61
  %531 = getelementptr inbounds i8, ptr %0, i64 264
  %532 = load i32, ptr %531, align 8, !tbaa !60
  %533 = icmp eq i32 %532, 0
  %534 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 0, ptr %534, align 4, !tbaa !62
  %535 = getelementptr inbounds i8, ptr %8, i64 36
  store i32 0, ptr %535, align 4, !tbaa !63
  br i1 %533, label %540, label %536

536:                                              ; preds = %527, %529
  %537 = getelementptr inbounds i8, ptr %0, i64 240
  %538 = load i32, ptr %537, align 8, !tbaa !49
  %539 = shl nsw i32 %538, 1
  br label %543

540:                                              ; preds = %528, %529
  %541 = getelementptr inbounds i8, ptr %0, i64 240
  %542 = load i32, ptr %541, align 8, !tbaa !49
  br label %543

543:                                              ; preds = %540, %536
  %544 = phi i32 [ %542, %540 ], [ %539, %536 ]
  %545 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 %544, ptr %545, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @prepare_for_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 432
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %3, i64 32
  %5 = load i32, ptr %4, align 8, !tbaa !61
  switch i32 %5, label %314 [
    i32 0, label %6
    i32 1, label %117
    i32 2, label %214
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 248
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 44
  %12 = load i32, ptr %11, align 4, !tbaa !62
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.jpeg_scan_info, ptr %8, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !55
  %16 = getelementptr inbounds i8, ptr %0, i64 324
  store i32 %15, ptr %16, align 4, !tbaa !64
  %17 = icmp sgt i32 %15, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %0, i64 88
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = getelementptr inbounds i8, ptr %14, i64 4
  %22 = getelementptr inbounds i8, ptr %0, i64 328
  %23 = zext nneg i32 %15 to i64
  br label %24

24:                                               ; preds = %24, %18
  %25 = phi i64 [ 0, %18 ], [ %31, %24 ]
  %26 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !54
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i64 %28
  %30 = getelementptr inbounds [4 x ptr], ptr %22, i64 0, i64 %25
  store ptr %29, ptr %30, align 8, !tbaa !65
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24

33:                                               ; preds = %24, %10
  %34 = getelementptr inbounds i8, ptr %14, i64 20
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = getelementptr inbounds i8, ptr %0, i64 412
  store i32 %35, ptr %36, align 4, !tbaa !66
  %37 = getelementptr inbounds i8, ptr %14, i64 24
  %38 = load i32, ptr %37, align 4, !tbaa !52
  %39 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 %38, ptr %39, align 8, !tbaa !67
  %40 = getelementptr inbounds i8, ptr %14, i64 28
  %41 = load i32, ptr %40, align 4, !tbaa !58
  %42 = getelementptr inbounds i8, ptr %0, i64 420
  store i32 %41, ptr %42, align 4, !tbaa !68
  %43 = getelementptr inbounds i8, ptr %14, i64 32
  %44 = load i32, ptr %43, align 4, !tbaa !59
  br label %77

45:                                               ; preds = %6
  %46 = getelementptr inbounds i8, ptr %0, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !26
  %48 = icmp sgt i32 %47, 4
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load ptr, ptr %0, align 8, !tbaa !28
  %51 = getelementptr inbounds i8, ptr %50, i64 40
  store i32 26, ptr %51, align 8, !tbaa !29
  %52 = getelementptr inbounds i8, ptr %50, i64 44
  store i32 %47, ptr %52, align 4, !tbaa !32
  %53 = load ptr, ptr %0, align 8, !tbaa !28
  %54 = getelementptr inbounds i8, ptr %53, i64 48
  store i32 4, ptr %54, align 4, !tbaa !32
  %55 = load ptr, ptr %0, align 8, !tbaa !28
  %56 = load ptr, ptr %55, align 8, !tbaa !31
  tail call void %56(ptr noundef nonnull %0) #5
  %57 = load i32, ptr %46, align 4, !tbaa !26
  br label %58

58:                                               ; preds = %49, %45
  %59 = phi i32 [ %57, %49 ], [ %47, %45 ]
  %60 = getelementptr inbounds i8, ptr %0, i64 324
  store i32 %59, ptr %60, align 4, !tbaa !64
  %61 = icmp sgt i32 %59, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %0, i64 88
  %64 = load ptr, ptr %63, align 8, !tbaa !36
  %65 = getelementptr inbounds i8, ptr %0, i64 328
  %66 = zext nneg i32 %59 to i64
  br label %67

67:                                               ; preds = %67, %62
  %68 = phi i64 [ 0, %62 ], [ %71, %67 ]
  %69 = getelementptr inbounds %struct.jpeg_component_info, ptr %64, i64 %68
  %70 = getelementptr inbounds [4 x ptr], ptr %65, i64 0, i64 %68
  store ptr %69, ptr %70, align 8, !tbaa !65
  %71 = add nuw nsw i64 %68, 1
  %72 = icmp eq i64 %71, %66
  br i1 %72, label %73, label %67

73:                                               ; preds = %67, %58
  %74 = getelementptr inbounds i8, ptr %0, i64 412
  store i32 0, ptr %74, align 4, !tbaa !66
  %75 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 63, ptr %75, align 8, !tbaa !67
  %76 = getelementptr inbounds i8, ptr %0, i64 420
  store i32 0, ptr %76, align 4, !tbaa !68
  br label %77

77:                                               ; preds = %33, %73
  %78 = phi i32 [ 0, %73 ], [ %44, %33 ]
  %79 = getelementptr inbounds i8, ptr %0, i64 424
  store i32 %78, ptr %79, align 8, !tbaa !69
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0)
  %80 = getelementptr inbounds i8, ptr %0, i64 256
  %81 = load i32, ptr %80, align 8, !tbaa !70
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = getelementptr inbounds i8, ptr %0, i64 472
  %85 = load ptr, ptr %84, align 8, !tbaa !71
  %86 = load ptr, ptr %85, align 8, !tbaa !72
  tail call void %86(ptr noundef nonnull %0) #5
  %87 = getelementptr inbounds i8, ptr %0, i64 480
  %88 = load ptr, ptr %87, align 8, !tbaa !74
  %89 = load ptr, ptr %88, align 8, !tbaa !75
  tail call void %89(ptr noundef nonnull %0) #5
  %90 = getelementptr inbounds i8, ptr %0, i64 448
  %91 = load ptr, ptr %90, align 8, !tbaa !77
  %92 = load ptr, ptr %91, align 8, !tbaa !78
  tail call void %92(ptr noundef nonnull %0, i32 noundef signext 0) #5
  br label %93

93:                                               ; preds = %83, %77
  %94 = getelementptr inbounds i8, ptr %0, i64 488
  %95 = load ptr, ptr %94, align 8, !tbaa !80
  %96 = load ptr, ptr %95, align 8, !tbaa !81
  tail call void %96(ptr noundef nonnull %0) #5
  %97 = getelementptr inbounds i8, ptr %0, i64 496
  %98 = load ptr, ptr %97, align 8, !tbaa !83
  %99 = load ptr, ptr %98, align 8, !tbaa !84
  %100 = getelementptr inbounds i8, ptr %0, i64 264
  %101 = load i32, ptr %100, align 8, !tbaa !60
  tail call void %99(ptr noundef nonnull %0, i32 noundef signext %101) #5
  %102 = getelementptr inbounds i8, ptr %0, i64 456
  %103 = load ptr, ptr %102, align 8, !tbaa !86
  %104 = load ptr, ptr %103, align 8, !tbaa !87
  %105 = getelementptr inbounds i8, ptr %3, i64 40
  %106 = load i32, ptr %105, align 8, !tbaa !89
  %107 = icmp sgt i32 %106, 1
  %108 = select i1 %107, i32 3, i32 0
  tail call void %104(ptr noundef nonnull %0, i32 noundef signext %108) #5
  %109 = getelementptr inbounds i8, ptr %0, i64 440
  %110 = load ptr, ptr %109, align 8, !tbaa !90
  %111 = load ptr, ptr %110, align 8, !tbaa !91
  tail call void %111(ptr noundef nonnull %0, i32 noundef signext 0) #5
  %112 = load i32, ptr %100, align 8, !tbaa !60
  %113 = icmp eq i32 %112, 0
  %114 = getelementptr inbounds i8, ptr %3, i64 24
  br i1 %113, label %116, label %115

115:                                              ; preds = %93
  store i32 0, ptr %114, align 8, !tbaa !93
  br label %318

116:                                              ; preds = %93
  store i32 1, ptr %114, align 8, !tbaa !93
  br label %318

117:                                              ; preds = %1
  %118 = getelementptr inbounds i8, ptr %0, i64 248
  %119 = load ptr, ptr %118, align 8, !tbaa !48
  %120 = icmp eq ptr %119, null
  br i1 %120, label %156, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds i8, ptr %3, i64 44
  %123 = load i32, ptr %122, align 4, !tbaa !62
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.jpeg_scan_info, ptr %119, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !55
  %127 = getelementptr inbounds i8, ptr %0, i64 324
  store i32 %126, ptr %127, align 4, !tbaa !64
  %128 = icmp sgt i32 %126, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %121
  %130 = getelementptr inbounds i8, ptr %0, i64 88
  %131 = load ptr, ptr %130, align 8, !tbaa !36
  %132 = getelementptr inbounds i8, ptr %125, i64 4
  %133 = getelementptr inbounds i8, ptr %0, i64 328
  %134 = zext nneg i32 %126 to i64
  br label %135

135:                                              ; preds = %135, %129
  %136 = phi i64 [ 0, %129 ], [ %142, %135 ]
  %137 = getelementptr inbounds [4 x i32], ptr %132, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !54
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.jpeg_component_info, ptr %131, i64 %139
  %141 = getelementptr inbounds [4 x ptr], ptr %133, i64 0, i64 %136
  store ptr %140, ptr %141, align 8, !tbaa !65
  %142 = add nuw nsw i64 %136, 1
  %143 = icmp eq i64 %142, %134
  br i1 %143, label %144, label %135

144:                                              ; preds = %135, %121
  %145 = getelementptr inbounds i8, ptr %125, i64 20
  %146 = load i32, ptr %145, align 4, !tbaa !50
  %147 = getelementptr inbounds i8, ptr %0, i64 412
  store i32 %146, ptr %147, align 4, !tbaa !66
  %148 = getelementptr inbounds i8, ptr %125, i64 24
  %149 = load i32, ptr %148, align 4, !tbaa !52
  %150 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 %149, ptr %150, align 8, !tbaa !67
  %151 = getelementptr inbounds i8, ptr %125, i64 28
  %152 = load i32, ptr %151, align 4, !tbaa !58
  %153 = getelementptr inbounds i8, ptr %0, i64 420
  store i32 %152, ptr %153, align 4, !tbaa !68
  %154 = getelementptr inbounds i8, ptr %125, i64 32
  %155 = load i32, ptr %154, align 4, !tbaa !59
  br label %188

156:                                              ; preds = %117
  %157 = getelementptr inbounds i8, ptr %0, i64 76
  %158 = load i32, ptr %157, align 4, !tbaa !26
  %159 = icmp sgt i32 %158, 4
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load ptr, ptr %0, align 8, !tbaa !28
  %162 = getelementptr inbounds i8, ptr %161, i64 40
  store i32 26, ptr %162, align 8, !tbaa !29
  %163 = getelementptr inbounds i8, ptr %161, i64 44
  store i32 %158, ptr %163, align 4, !tbaa !32
  %164 = load ptr, ptr %0, align 8, !tbaa !28
  %165 = getelementptr inbounds i8, ptr %164, i64 48
  store i32 4, ptr %165, align 4, !tbaa !32
  %166 = load ptr, ptr %0, align 8, !tbaa !28
  %167 = load ptr, ptr %166, align 8, !tbaa !31
  tail call void %167(ptr noundef nonnull %0) #5
  %168 = load i32, ptr %157, align 4, !tbaa !26
  br label %169

169:                                              ; preds = %160, %156
  %170 = phi i32 [ %168, %160 ], [ %158, %156 ]
  %171 = getelementptr inbounds i8, ptr %0, i64 324
  store i32 %170, ptr %171, align 4, !tbaa !64
  %172 = icmp sgt i32 %170, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = getelementptr inbounds i8, ptr %0, i64 88
  %175 = load ptr, ptr %174, align 8, !tbaa !36
  %176 = getelementptr inbounds i8, ptr %0, i64 328
  %177 = zext nneg i32 %170 to i64
  br label %178

178:                                              ; preds = %178, %173
  %179 = phi i64 [ 0, %173 ], [ %182, %178 ]
  %180 = getelementptr inbounds %struct.jpeg_component_info, ptr %175, i64 %179
  %181 = getelementptr inbounds [4 x ptr], ptr %176, i64 0, i64 %179
  store ptr %180, ptr %181, align 8, !tbaa !65
  %182 = add nuw nsw i64 %179, 1
  %183 = icmp eq i64 %182, %177
  br i1 %183, label %184, label %178

184:                                              ; preds = %178, %169
  %185 = getelementptr inbounds i8, ptr %0, i64 412
  store i32 0, ptr %185, align 4, !tbaa !66
  %186 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 63, ptr %186, align 8, !tbaa !67
  %187 = getelementptr inbounds i8, ptr %0, i64 420
  store i32 0, ptr %187, align 4, !tbaa !68
  br label %188

188:                                              ; preds = %144, %184
  %189 = phi i32 [ 0, %184 ], [ %155, %144 ]
  %190 = getelementptr inbounds i8, ptr %0, i64 424
  store i32 %189, ptr %190, align 8, !tbaa !69
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0)
  %191 = getelementptr inbounds i8, ptr %0, i64 412
  %192 = load i32, ptr %191, align 4, !tbaa !66
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %188
  %195 = getelementptr inbounds i8, ptr %0, i64 420
  %196 = load i32, ptr %195, align 4, !tbaa !68
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds i8, ptr %0, i64 260
  %200 = load i32, ptr %199, align 4, !tbaa !94
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %198, %194, %188
  %203 = getelementptr inbounds i8, ptr %0, i64 496
  %204 = load ptr, ptr %203, align 8, !tbaa !83
  %205 = load ptr, ptr %204, align 8, !tbaa !84
  tail call void %205(ptr noundef nonnull %0, i32 noundef signext 1) #5
  %206 = getelementptr inbounds i8, ptr %0, i64 456
  %207 = load ptr, ptr %206, align 8, !tbaa !86
  %208 = load ptr, ptr %207, align 8, !tbaa !87
  tail call void %208(ptr noundef nonnull %0, i32 noundef signext 2) #5
  %209 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 0, ptr %209, align 8, !tbaa !93
  br label %318

210:                                              ; preds = %198
  store i32 2, ptr %4, align 8, !tbaa !61
  %211 = getelementptr inbounds i8, ptr %3, i64 36
  %212 = load i32, ptr %211, align 4, !tbaa !63
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %211, align 4, !tbaa !63
  br label %214

214:                                              ; preds = %1, %210
  %215 = getelementptr inbounds i8, ptr %0, i64 264
  %216 = load i32, ptr %215, align 8, !tbaa !60
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %293

218:                                              ; preds = %214
  %219 = getelementptr inbounds i8, ptr %0, i64 248
  %220 = load ptr, ptr %219, align 8, !tbaa !48
  %221 = icmp eq ptr %220, null
  br i1 %221, label %258, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr %2, align 8, !tbaa !17
  %224 = getelementptr inbounds i8, ptr %223, i64 44
  %225 = load i32, ptr %224, align 4, !tbaa !62
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.jpeg_scan_info, ptr %220, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !55
  %229 = getelementptr inbounds i8, ptr %0, i64 324
  store i32 %228, ptr %229, align 4, !tbaa !64
  %230 = icmp sgt i32 %228, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %222
  %232 = getelementptr inbounds i8, ptr %0, i64 88
  %233 = load ptr, ptr %232, align 8, !tbaa !36
  %234 = getelementptr inbounds i8, ptr %227, i64 4
  %235 = getelementptr inbounds i8, ptr %0, i64 328
  %236 = zext nneg i32 %228 to i64
  br label %237

237:                                              ; preds = %237, %231
  %238 = phi i64 [ 0, %231 ], [ %244, %237 ]
  %239 = getelementptr inbounds [4 x i32], ptr %234, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !54
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.jpeg_component_info, ptr %233, i64 %241
  %243 = getelementptr inbounds [4 x ptr], ptr %235, i64 0, i64 %238
  store ptr %242, ptr %243, align 8, !tbaa !65
  %244 = add nuw nsw i64 %238, 1
  %245 = icmp eq i64 %244, %236
  br i1 %245, label %246, label %237

246:                                              ; preds = %237, %222
  %247 = getelementptr inbounds i8, ptr %227, i64 20
  %248 = load i32, ptr %247, align 4, !tbaa !50
  %249 = getelementptr inbounds i8, ptr %0, i64 412
  store i32 %248, ptr %249, align 4, !tbaa !66
  %250 = getelementptr inbounds i8, ptr %227, i64 24
  %251 = load i32, ptr %250, align 4, !tbaa !52
  %252 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 %251, ptr %252, align 8, !tbaa !67
  %253 = getelementptr inbounds i8, ptr %227, i64 28
  %254 = load i32, ptr %253, align 4, !tbaa !58
  %255 = getelementptr inbounds i8, ptr %0, i64 420
  store i32 %254, ptr %255, align 4, !tbaa !68
  %256 = getelementptr inbounds i8, ptr %227, i64 32
  %257 = load i32, ptr %256, align 4, !tbaa !59
  br label %290

258:                                              ; preds = %218
  %259 = getelementptr inbounds i8, ptr %0, i64 76
  %260 = load i32, ptr %259, align 4, !tbaa !26
  %261 = icmp sgt i32 %260, 4
  br i1 %261, label %262, label %271

262:                                              ; preds = %258
  %263 = load ptr, ptr %0, align 8, !tbaa !28
  %264 = getelementptr inbounds i8, ptr %263, i64 40
  store i32 26, ptr %264, align 8, !tbaa !29
  %265 = getelementptr inbounds i8, ptr %263, i64 44
  store i32 %260, ptr %265, align 4, !tbaa !32
  %266 = load ptr, ptr %0, align 8, !tbaa !28
  %267 = getelementptr inbounds i8, ptr %266, i64 48
  store i32 4, ptr %267, align 4, !tbaa !32
  %268 = load ptr, ptr %0, align 8, !tbaa !28
  %269 = load ptr, ptr %268, align 8, !tbaa !31
  tail call void %269(ptr noundef nonnull %0) #5
  %270 = load i32, ptr %259, align 4, !tbaa !26
  br label %271

271:                                              ; preds = %262, %258
  %272 = phi i32 [ %270, %262 ], [ %260, %258 ]
  %273 = getelementptr inbounds i8, ptr %0, i64 324
  store i32 %272, ptr %273, align 4, !tbaa !64
  %274 = icmp sgt i32 %272, 0
  br i1 %274, label %275, label %286

275:                                              ; preds = %271
  %276 = getelementptr inbounds i8, ptr %0, i64 88
  %277 = load ptr, ptr %276, align 8, !tbaa !36
  %278 = getelementptr inbounds i8, ptr %0, i64 328
  %279 = zext nneg i32 %272 to i64
  br label %280

280:                                              ; preds = %280, %275
  %281 = phi i64 [ 0, %275 ], [ %284, %280 ]
  %282 = getelementptr inbounds %struct.jpeg_component_info, ptr %277, i64 %281
  %283 = getelementptr inbounds [4 x ptr], ptr %278, i64 0, i64 %281
  store ptr %282, ptr %283, align 8, !tbaa !65
  %284 = add nuw nsw i64 %281, 1
  %285 = icmp eq i64 %284, %279
  br i1 %285, label %286, label %280

286:                                              ; preds = %280, %271
  %287 = getelementptr inbounds i8, ptr %0, i64 412
  store i32 0, ptr %287, align 4, !tbaa !66
  %288 = getelementptr inbounds i8, ptr %0, i64 416
  store i32 63, ptr %288, align 8, !tbaa !67
  %289 = getelementptr inbounds i8, ptr %0, i64 420
  store i32 0, ptr %289, align 4, !tbaa !68
  br label %290

290:                                              ; preds = %246, %286
  %291 = phi i32 [ 0, %286 ], [ %257, %246 ]
  %292 = getelementptr inbounds i8, ptr %0, i64 424
  store i32 %291, ptr %292, align 8, !tbaa !69
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0)
  br label %293

293:                                              ; preds = %290, %214
  %294 = getelementptr inbounds i8, ptr %0, i64 496
  %295 = load ptr, ptr %294, align 8, !tbaa !83
  %296 = load ptr, ptr %295, align 8, !tbaa !84
  tail call void %296(ptr noundef nonnull %0, i32 noundef signext 0) #5
  %297 = getelementptr inbounds i8, ptr %0, i64 456
  %298 = load ptr, ptr %297, align 8, !tbaa !86
  %299 = load ptr, ptr %298, align 8, !tbaa !87
  tail call void %299(ptr noundef nonnull %0, i32 noundef signext 2) #5
  %300 = getelementptr inbounds i8, ptr %3, i64 44
  %301 = load i32, ptr %300, align 4, !tbaa !62
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %293
  %304 = getelementptr inbounds i8, ptr %0, i64 464
  %305 = load ptr, ptr %304, align 8, !tbaa !95
  %306 = getelementptr inbounds i8, ptr %305, i64 8
  %307 = load ptr, ptr %306, align 8, !tbaa !96
  tail call void %307(ptr noundef nonnull %0) #5
  br label %308

308:                                              ; preds = %303, %293
  %309 = getelementptr inbounds i8, ptr %0, i64 464
  %310 = load ptr, ptr %309, align 8, !tbaa !95
  %311 = getelementptr inbounds i8, ptr %310, i64 16
  %312 = load ptr, ptr %311, align 8, !tbaa !98
  tail call void %312(ptr noundef nonnull %0) #5
  %313 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 0, ptr %313, align 8, !tbaa !93
  br label %318

314:                                              ; preds = %1
  %315 = load ptr, ptr %0, align 8, !tbaa !28
  %316 = getelementptr inbounds i8, ptr %315, i64 40
  store i32 48, ptr %316, align 8, !tbaa !29
  %317 = load ptr, ptr %315, align 8, !tbaa !31
  tail call void %317(ptr noundef nonnull %0) #5
  br label %318

318:                                              ; preds = %115, %116, %314, %308, %202
  %319 = getelementptr inbounds i8, ptr %3, i64 36
  %320 = load i32, ptr %319, align 4, !tbaa !63
  %321 = getelementptr inbounds i8, ptr %3, i64 40
  %322 = load i32, ptr %321, align 8, !tbaa !89
  %323 = add nsw i32 %322, -1
  %324 = icmp eq i32 %320, %323
  %325 = zext i1 %324 to i32
  %326 = getelementptr inbounds i8, ptr %3, i64 28
  store i32 %325, ptr %326, align 4, !tbaa !23
  %327 = getelementptr inbounds i8, ptr %0, i64 16
  %328 = load ptr, ptr %327, align 8, !tbaa !99
  %329 = icmp eq ptr %328, null
  br i1 %329, label %333, label %330

330:                                              ; preds = %318
  %331 = getelementptr inbounds i8, ptr %328, i64 24
  store i32 %320, ptr %331, align 8, !tbaa !100
  %332 = getelementptr inbounds i8, ptr %328, i64 28
  store i32 %322, ptr %332, align 4, !tbaa !102
  br label %333

333:                                              ; preds = %330, %318
  ret void
}

; Function Attrs: nounwind
define internal void @pass_startup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 432
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 0, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds i8, ptr %0, i64 464
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  tail call void %8(ptr noundef %0) #5
  %9 = load ptr, ptr %5, align 8, !tbaa !95
  %10 = getelementptr inbounds i8, ptr %9, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  tail call void %11(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind
define internal void @finish_pass_master(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 432
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %0, i64 496
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  tail call void %7(ptr noundef %0) #5
  %8 = getelementptr inbounds i8, ptr %3, i64 32
  %9 = load i32, ptr %8, align 8, !tbaa !61
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %18
    i32 2, label %19
  ]

10:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !61
  %11 = getelementptr inbounds i8, ptr %0, i64 264
  %12 = load i32, ptr %11, align 8, !tbaa !60
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %3, i64 44
  %16 = load i32, ptr %15, align 4, !tbaa !62
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !62
  br label %28

18:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !61
  br label %28

19:                                               ; preds = %1
  %20 = getelementptr inbounds i8, ptr %0, i64 264
  %21 = load i32, ptr %20, align 8, !tbaa !60
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 1, ptr %8, align 8, !tbaa !61
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds i8, ptr %3, i64 44
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !62
  br label %28

28:                                               ; preds = %10, %14, %1, %24, %18
  %29 = getelementptr inbounds i8, ptr %3, i64 36
  %30 = load i32, ptr %29, align 4, !tbaa !63
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal fastcc void @per_scan_setup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 324
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 328
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds i8, ptr %7, i64 28
  %9 = load i32, ptr %8, align 4, !tbaa !42
  %10 = getelementptr inbounds i8, ptr %0, i64 360
  store i32 %9, ptr %10, align 8, !tbaa !105
  %11 = getelementptr inbounds i8, ptr %7, i64 32
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds i8, ptr %0, i64 364
  store i32 %12, ptr %13, align 4, !tbaa !106
  %14 = getelementptr inbounds i8, ptr %7, i64 52
  store i32 1, ptr %14, align 4, !tbaa !107
  %15 = getelementptr inbounds i8, ptr %7, i64 56
  store i32 1, ptr %15, align 8, !tbaa !108
  %16 = getelementptr inbounds i8, ptr %7, i64 60
  store i32 1, ptr %16, align 4, !tbaa !109
  %17 = getelementptr inbounds i8, ptr %7, i64 64
  store i32 8, ptr %17, align 8, !tbaa !110
  %18 = getelementptr inbounds i8, ptr %7, i64 68
  store i32 1, ptr %18, align 4, !tbaa !111
  %19 = getelementptr inbounds i8, ptr %7, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !39
  %21 = urem i32 %12, %20
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 %20, i32 %21
  %24 = getelementptr inbounds i8, ptr %7, i64 72
  store i32 %23, ptr %24, align 8, !tbaa !112
  %25 = getelementptr inbounds i8, ptr %0, i64 368
  store i32 1, ptr %25, align 8, !tbaa !113
  %26 = getelementptr inbounds i8, ptr %0, i64 372
  store i32 0, ptr %26, align 4, !tbaa !54
  br label %115

27:                                               ; preds = %1
  %28 = add i32 %3, -5
  %29 = icmp ult i32 %28, -4
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !28
  %32 = getelementptr inbounds i8, ptr %31, i64 40
  store i32 26, ptr %32, align 8, !tbaa !29
  %33 = getelementptr inbounds i8, ptr %31, i64 44
  store i32 %3, ptr %33, align 4, !tbaa !32
  %34 = load ptr, ptr %0, align 8, !tbaa !28
  %35 = getelementptr inbounds i8, ptr %34, i64 48
  store i32 4, ptr %35, align 4, !tbaa !32
  %36 = load ptr, ptr %0, align 8, !tbaa !28
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  tail call void %37(ptr noundef nonnull %0) #5
  br label %38

38:                                               ; preds = %27, %30
  %39 = getelementptr inbounds i8, ptr %0, i64 48
  %40 = load i32, ptr %39, align 8, !tbaa !25
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %0, i64 312
  %43 = load i32, ptr %42, align 8, !tbaa !34
  %44 = shl nsw i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = tail call i64 @jdiv_round_up(i64 noundef %41, i64 noundef %45) #5
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds i8, ptr %0, i64 360
  store i32 %47, ptr %48, align 8, !tbaa !105
  %49 = getelementptr inbounds i8, ptr %0, i64 52
  %50 = load i32, ptr %49, align 4, !tbaa !24
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %0, i64 316
  %53 = load i32, ptr %52, align 4, !tbaa !35
  %54 = shl nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = tail call i64 @jdiv_round_up(i64 noundef %51, i64 noundef %55) #5
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds i8, ptr %0, i64 364
  store i32 %57, ptr %58, align 4, !tbaa !106
  %59 = getelementptr inbounds i8, ptr %0, i64 368
  store i32 0, ptr %59, align 8, !tbaa !113
  %60 = load i32, ptr %2, align 4, !tbaa !64
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %38
  %63 = getelementptr inbounds i8, ptr %0, i64 328
  %64 = getelementptr inbounds i8, ptr %0, i64 372
  br label %65

65:                                               ; preds = %62, %110
  %66 = phi i64 [ 0, %62 ], [ %111, %110 ]
  %67 = getelementptr inbounds [4 x ptr], ptr %63, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !65
  %69 = getelementptr inbounds i8, ptr %68, i64 8
  %70 = load i32, ptr %69, align 8, !tbaa !37
  %71 = getelementptr inbounds i8, ptr %68, i64 52
  store i32 %70, ptr %71, align 4, !tbaa !107
  %72 = getelementptr inbounds i8, ptr %68, i64 12
  %73 = load i32, ptr %72, align 4, !tbaa !39
  %74 = getelementptr inbounds i8, ptr %68, i64 56
  store i32 %73, ptr %74, align 8, !tbaa !108
  %75 = mul nsw i32 %73, %70
  %76 = getelementptr inbounds i8, ptr %68, i64 60
  store i32 %75, ptr %76, align 4, !tbaa !109
  %77 = shl nsw i32 %70, 3
  %78 = getelementptr inbounds i8, ptr %68, i64 64
  store i32 %77, ptr %78, align 8, !tbaa !110
  %79 = getelementptr inbounds i8, ptr %68, i64 28
  %80 = load i32, ptr %79, align 4, !tbaa !42
  %81 = urem i32 %80, %70
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 %70, i32 %81
  %84 = getelementptr inbounds i8, ptr %68, i64 68
  store i32 %83, ptr %84, align 4, !tbaa !111
  %85 = getelementptr inbounds i8, ptr %68, i64 32
  %86 = load i32, ptr %85, align 8, !tbaa !43
  %87 = urem i32 %86, %73
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 %73, i32 %87
  %90 = getelementptr inbounds i8, ptr %68, i64 72
  store i32 %89, ptr %90, align 8, !tbaa !112
  %91 = load i32, ptr %59, align 8, !tbaa !113
  %92 = add nsw i32 %91, %75
  %93 = icmp sgt i32 %92, 10
  br i1 %93, label %94, label %98

94:                                               ; preds = %65
  %95 = load ptr, ptr %0, align 8, !tbaa !28
  %96 = getelementptr inbounds i8, ptr %95, i64 40
  store i32 13, ptr %96, align 8, !tbaa !29
  %97 = load ptr, ptr %95, align 8, !tbaa !31
  tail call void %97(ptr noundef nonnull %0) #5
  br label %98

98:                                               ; preds = %94, %65
  %99 = icmp sgt i32 %75, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %98
  %101 = trunc nuw nsw i64 %66 to i32
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i32 [ %104, %102 ], [ %75, %100 ]
  %104 = add nsw i32 %103, -1
  %105 = load i32, ptr %59, align 8, !tbaa !113
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %59, align 8, !tbaa !113
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds [10 x i32], ptr %64, i64 0, i64 %107
  store i32 %101, ptr %108, align 4, !tbaa !54
  %109 = icmp ugt i32 %103, 1
  br i1 %109, label %102, label %110

110:                                              ; preds = %102, %98
  %111 = add nuw nsw i64 %66, 1
  %112 = load i32, ptr %2, align 4, !tbaa !64
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %65, label %115

115:                                              ; preds = %110, %38, %5
  %116 = getelementptr inbounds i8, ptr %0, i64 284
  %117 = load i32, ptr %116, align 4, !tbaa !114
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = zext nneg i32 %117 to i64
  %121 = getelementptr inbounds i8, ptr %0, i64 360
  %122 = load i32, ptr %121, align 8, !tbaa !105
  %123 = zext i32 %122 to i64
  %124 = mul nuw nsw i64 %123, %120
  %125 = tail call i64 @llvm.umin.i64(i64 %124, i64 65535)
  %126 = trunc nuw nsw i64 %125 to i32
  %127 = getelementptr inbounds i8, ptr %0, i64 280
  store i32 %126, ptr %127, align 8, !tbaa !115
  br label %128

128:                                              ; preds = %119, %115
  ret void
}

declare dso_local i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!17 = !{!7, !8, i64 432}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!20 = !{!"jpeg_comp_master", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28}
!21 = !{!19, !8, i64 8}
!22 = !{!19, !8, i64 16}
!23 = !{!19, !11, i64 28}
!24 = !{!7, !11, i64 52}
!25 = !{!7, !11, i64 48}
!26 = !{!7, !11, i64 76}
!27 = !{!7, !11, i64 56}
!28 = !{!7, !8, i64 0}
!29 = !{!30, !11, i64 40}
!30 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!31 = !{!30, !8, i64 0}
!32 = !{!9, !9, i64 0}
!33 = !{!7, !11, i64 72}
!34 = !{!7, !11, i64 312}
!35 = !{!7, !11, i64 316}
!36 = !{!7, !8, i64 88}
!37 = !{!38, !11, i64 8}
!38 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!39 = !{!38, !11, i64 12}
!40 = !{!38, !11, i64 4}
!41 = !{!38, !11, i64 36}
!42 = !{!38, !11, i64 28}
!43 = !{!38, !11, i64 32}
!44 = !{!38, !11, i64 40}
!45 = !{!38, !11, i64 44}
!46 = !{!38, !11, i64 48}
!47 = !{!7, !11, i64 320}
!48 = !{!7, !8, i64 248}
!49 = !{!7, !11, i64 240}
!50 = !{!51, !11, i64 20}
!51 = !{!"", !11, i64 0, !9, i64 4, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!52 = !{!51, !11, i64 24}
!53 = !{!7, !11, i64 308}
!54 = !{!11, !11, i64 0}
!55 = !{!51, !11, i64 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.peeled.count", i32 1}
!58 = !{!51, !11, i64 28}
!59 = !{!51, !11, i64 32}
!60 = !{!7, !11, i64 264}
!61 = !{!19, !11, i64 32}
!62 = !{!19, !11, i64 44}
!63 = !{!19, !11, i64 36}
!64 = !{!7, !11, i64 324}
!65 = !{!8, !8, i64 0}
!66 = !{!7, !11, i64 412}
!67 = !{!7, !11, i64 416}
!68 = !{!7, !11, i64 420}
!69 = !{!7, !11, i64 424}
!70 = !{!7, !11, i64 256}
!71 = !{!7, !8, i64 472}
!72 = !{!73, !8, i64 0}
!73 = !{!"jpeg_color_converter", !8, i64 0, !8, i64 8}
!74 = !{!7, !8, i64 480}
!75 = !{!76, !8, i64 0}
!76 = !{!"jpeg_downsampler", !8, i64 0, !8, i64 8, !11, i64 16}
!77 = !{!7, !8, i64 448}
!78 = !{!79, !8, i64 0}
!79 = !{!"jpeg_c_prep_controller", !8, i64 0, !8, i64 8}
!80 = !{!7, !8, i64 488}
!81 = !{!82, !8, i64 0}
!82 = !{!"jpeg_forward_dct", !8, i64 0, !8, i64 8}
!83 = !{!7, !8, i64 496}
!84 = !{!85, !8, i64 0}
!85 = !{!"jpeg_entropy_encoder", !8, i64 0, !8, i64 8, !8, i64 16}
!86 = !{!7, !8, i64 456}
!87 = !{!88, !8, i64 0}
!88 = !{!"jpeg_c_coef_controller", !8, i64 0, !8, i64 8}
!89 = !{!19, !11, i64 40}
!90 = !{!7, !8, i64 440}
!91 = !{!92, !8, i64 0}
!92 = !{!"jpeg_c_main_controller", !8, i64 0, !8, i64 8}
!93 = !{!19, !11, i64 24}
!94 = !{!7, !11, i64 260}
!95 = !{!7, !8, i64 464}
!96 = !{!97, !8, i64 8}
!97 = !{!"jpeg_marker_writer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!98 = !{!97, !8, i64 16}
!99 = !{!7, !8, i64 16}
!100 = !{!101, !11, i64 24}
!101 = !{!"jpeg_progress_mgr", !8, i64 0, !16, i64 8, !16, i64 16, !11, i64 24, !11, i64 28}
!102 = !{!101, !11, i64 28}
!103 = !{!20, !11, i64 24}
!104 = !{!85, !8, i64 16}
!105 = !{!7, !11, i64 360}
!106 = !{!7, !11, i64 364}
!107 = !{!38, !11, i64 52}
!108 = !{!38, !11, i64 56}
!109 = !{!38, !11, i64 60}
!110 = !{!38, !11, i64 64}
!111 = !{!38, !11, i64 68}
!112 = !{!38, !11, i64 72}
!113 = !{!7, !11, i64 368}
!114 = !{!7, !11, i64 284}
!115 = !{!7, !11, i64 280}
