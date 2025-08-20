; ModuleID = 'jdhuff.c'
source_filename = "jdhuff.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.bitread_working_state = type { ptr, i64, i64, i32, ptr }
%struct.savable_state = type { [4 x i32] }

@extend_test = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 4
@extend_offset = internal unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 4
@jpeg_natural_order = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind
define dso_local void @jpeg_make_d_derived_tbl(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [257 x i8], align 1
  %6 = alloca [257 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %6) #4
  %7 = icmp ugt i32 %2, 3
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  store i32 50, ptr %10, align 8, !tbaa !14
  %11 = getelementptr inbounds i8, ptr %9, i64 44
  store i32 %2, ptr %11, align 4, !tbaa !17
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %0) #4
  br label %14

14:                                               ; preds = %4, %8
  %15 = icmp ne i32 %1, 0
  %16 = getelementptr inbounds i8, ptr %0, i64 232
  %17 = sext i32 %2 to i64
  %18 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 %17
  %19 = getelementptr inbounds i8, ptr %0, i64 264
  %20 = getelementptr inbounds [4 x ptr], ptr %19, i64 0, i64 %17
  %21 = select i1 %15, ptr %18, ptr %20
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 40
  store i32 50, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds i8, ptr %25, i64 44
  store i32 %2, ptr %27, align 4, !tbaa !17
  %28 = load ptr, ptr %0, align 8, !tbaa !6
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  tail call void %29(ptr noundef nonnull %0) #4
  br label %30

30:                                               ; preds = %24, %14
  %31 = load ptr, ptr %3, align 8, !tbaa !19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %0, i64 8
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = tail call ptr %36(ptr noundef %0, i32 noundef signext 1, i64 noundef 1568) #4
  store ptr %37, ptr %3, align 8, !tbaa !19
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi ptr [ %37, %33 ], [ %31, %30 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 280
  store ptr %22, ptr %40, align 8, !tbaa !23
  br label %41

41:                                               ; preds = %38, %61
  %42 = phi i64 [ 1, %38 ], [ %63, %61 ]
  %43 = phi i32 [ 0, %38 ], [ %62, %61 ]
  %44 = getelementptr inbounds [17 x i8], ptr %22, i64 0, i64 %42
  %45 = load i8, ptr %44, align 1, !tbaa !17
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %43, %46
  %48 = icmp sgt i32 %47, 256
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load ptr, ptr %0, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 40
  store i32 8, ptr %51, align 8, !tbaa !14
  %52 = load ptr, ptr %50, align 8, !tbaa !18
  tail call void %52(ptr noundef nonnull %0) #4
  br label %53

53:                                               ; preds = %49, %41
  %54 = icmp eq i8 %45, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  %56 = trunc i64 %42 to i8
  %57 = sext i32 %43 to i64
  %58 = getelementptr i8, ptr %5, i64 %57
  %59 = zext i8 %45 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %58, i8 %56, i64 %59, i1 false), !tbaa !17
  %60 = add i32 %43, %46
  br label %61

61:                                               ; preds = %55, %53
  %62 = phi i32 [ %43, %53 ], [ %60, %55 ]
  %63 = add nuw nsw i64 %42, 1
  %64 = icmp eq i64 %63, 17
  br i1 %64, label %65, label %41, !llvm.loop !25

65:                                               ; preds = %61
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 %66
  store i8 0, ptr %67, align 1, !tbaa !17
  %68 = load i8, ptr %5, align 1, !tbaa !17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = zext i8 %68 to i64
  br label %72

72:                                               ; preds = %70, %105
  %73 = phi i8 [ %68, %70 ], [ %110, %105 ]
  %74 = phi i64 [ %71, %70 ], [ %107, %105 ]
  %75 = phi i32 [ 0, %70 ], [ %97, %105 ]
  %76 = phi i32 [ 0, %70 ], [ %106, %105 ]
  %77 = zext i8 %73 to i64
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %72
  %80 = sext i32 %75 to i64
  br label %83

81:                                               ; preds = %105, %65
  %82 = getelementptr inbounds i8, ptr %39, i64 144
  br label %112

83:                                               ; preds = %79, %83
  %84 = phi i64 [ %80, %79 ], [ %86, %83 ]
  %85 = phi i32 [ %76, %79 ], [ %88, %83 ]
  %86 = add nsw i64 %84, 1
  %87 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %84
  store i32 %85, ptr %87, align 4, !tbaa !27
  %88 = add i32 %85, 1
  %89 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 %86
  %90 = load i8, ptr %89, align 1, !tbaa !17
  %91 = zext i8 %90 to i64
  %92 = icmp eq i64 %74, %91
  br i1 %92, label %83, label %93, !llvm.loop !28

93:                                               ; preds = %83
  %94 = trunc nsw i64 %86 to i32
  br label %95

95:                                               ; preds = %93, %72
  %96 = phi i32 [ %76, %72 ], [ %88, %93 ]
  %97 = phi i32 [ %75, %72 ], [ %94, %93 ]
  %98 = zext i32 %96 to i64
  %99 = shl nuw i64 1, %74
  %100 = icmp sgt i64 %99, %98
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %0, align 8, !tbaa !6
  %103 = getelementptr inbounds i8, ptr %102, i64 40
  store i32 8, ptr %103, align 8, !tbaa !14
  %104 = load ptr, ptr %102, align 8, !tbaa !18
  tail call void %104(ptr noundef nonnull %0) #4
  br label %105

105:                                              ; preds = %101, %95
  %106 = shl i32 %96, 1
  %107 = add nuw nsw i64 %74, 1
  %108 = sext i32 %97 to i64
  %109 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !17
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %81, label %72, !llvm.loop !29

112:                                              ; preds = %81, %133
  %113 = phi i64 [ 1, %81 ], [ %137, %133 ]
  %114 = phi i32 [ 0, %81 ], [ %135, %133 ]
  %115 = getelementptr inbounds [17 x i8], ptr %22, i64 0, i64 %113
  %116 = load i8, ptr %115, align 1, !tbaa !17
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %112
  %119 = sext i32 %114 to i64
  %120 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !27
  %122 = zext i32 %121 to i64
  %123 = sub nsw i64 %119, %122
  %124 = getelementptr inbounds [17 x i64], ptr %82, i64 0, i64 %113
  store i64 %123, ptr %124, align 8, !tbaa !30
  %125 = load i8, ptr %115, align 1, !tbaa !17
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %114, %126
  %128 = add nsw i32 %127, -1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !27
  %132 = zext i32 %131 to i64
  br label %133

133:                                              ; preds = %112, %118
  %134 = phi i64 [ %132, %118 ], [ -1, %112 ]
  %135 = phi i32 [ %127, %118 ], [ %114, %112 ]
  %136 = getelementptr inbounds [18 x i64], ptr %39, i64 0, i64 %113
  store i64 %134, ptr %136, align 8
  %137 = add nuw nsw i64 %113, 1
  %138 = icmp eq i64 %137, 17
  br i1 %138, label %139, label %112, !llvm.loop !31

139:                                              ; preds = %133
  %140 = getelementptr inbounds i8, ptr %39, i64 136
  store i64 1048575, ptr %140, align 8, !tbaa !30
  %141 = getelementptr inbounds i8, ptr %39, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %141, i8 0, i64 1024, i1 false)
  %142 = getelementptr inbounds i8, ptr %22, i64 17
  %143 = getelementptr inbounds i8, ptr %39, i64 1312
  %144 = getelementptr inbounds i8, ptr %22, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !17
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %172, label %147

147:                                              ; preds = %139, %164
  %148 = phi i64 [ %166, %164 ], [ 0, %139 ]
  %149 = phi i32 [ %165, %164 ], [ 1, %139 ]
  %150 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %148
  %151 = load i32, ptr %150, align 4, !tbaa !27
  %152 = shl i32 %151, 7
  %153 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 %148
  %154 = sext i32 %152 to i64
  br label %155

155:                                              ; preds = %147, %155
  %156 = phi i64 [ %154, %147 ], [ %161, %155 ]
  %157 = phi i32 [ 128, %147 ], [ %162, %155 ]
  %158 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %156
  store i32 1, ptr %158, align 4, !tbaa !27
  %159 = load i8, ptr %153, align 1, !tbaa !17
  %160 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %156
  store i8 %159, ptr %160, align 1, !tbaa !17
  %161 = add nsw i64 %156, 1
  %162 = add nsw i32 %157, -1
  %163 = icmp ugt i32 %157, 1
  br i1 %163, label %155, label %164, !llvm.loop !32

164:                                              ; preds = %155
  %165 = add nuw nsw i32 %149, 1
  %166 = add nuw nsw i64 %148, 1
  %167 = load i8, ptr %144, align 1, !tbaa !17
  %168 = zext i8 %167 to i32
  %169 = icmp ult i32 %149, %168
  br i1 %169, label %147, label %170, !llvm.loop !33

170:                                              ; preds = %164
  %171 = trunc nsw i64 %166 to i32
  br label %172

172:                                              ; preds = %170, %139
  %173 = phi i32 [ 0, %139 ], [ %171, %170 ]
  %174 = getelementptr inbounds i8, ptr %22, i64 2
  %175 = load i8, ptr %174, align 1, !tbaa !17
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %204, label %177

177:                                              ; preds = %172
  %178 = sext i32 %173 to i64
  br label %179

179:                                              ; preds = %196, %177
  %180 = phi i64 [ %178, %177 ], [ %198, %196 ]
  %181 = phi i32 [ 1, %177 ], [ %197, %196 ]
  %182 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %180
  %183 = load i32, ptr %182, align 4, !tbaa !27
  %184 = shl i32 %183, 6
  %185 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 %180
  %186 = sext i32 %184 to i64
  br label %187

187:                                              ; preds = %187, %179
  %188 = phi i64 [ %186, %179 ], [ %193, %187 ]
  %189 = phi i32 [ 64, %179 ], [ %194, %187 ]
  %190 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %188
  store i32 2, ptr %190, align 4, !tbaa !27
  %191 = load i8, ptr %185, align 1, !tbaa !17
  %192 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %188
  store i8 %191, ptr %192, align 1, !tbaa !17
  %193 = add nsw i64 %188, 1
  %194 = add nsw i32 %189, -1
  %195 = icmp ugt i32 %189, 1
  br i1 %195, label %187, label %196, !llvm.loop !32

196:                                              ; preds = %187
  %197 = add nuw nsw i32 %181, 1
  %198 = add nsw i64 %180, 1
  %199 = load i8, ptr %174, align 1, !tbaa !17
  %200 = zext i8 %199 to i32
  %201 = icmp ult i32 %181, %200
  br i1 %201, label %179, label %202, !llvm.loop !33

202:                                              ; preds = %196
  %203 = trunc nsw i64 %198 to i32
  br label %204

204:                                              ; preds = %202, %172
  %205 = phi i32 [ %173, %172 ], [ %203, %202 ]
  %206 = getelementptr inbounds i8, ptr %22, i64 3
  %207 = load i8, ptr %206, align 1, !tbaa !17
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %353, label %209

209:                                              ; preds = %204
  %210 = sext i32 %205 to i64
  br label %211

211:                                              ; preds = %211, %209
  %212 = phi i64 [ %210, %209 ], [ %347, %211 ]
  %213 = phi i32 [ 1, %209 ], [ %346, %211 ]
  %214 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %212
  %215 = load i32, ptr %214, align 4, !tbaa !27
  %216 = shl i32 %215, 5
  %217 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 %212
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %218
  store i32 3, ptr %219, align 4, !tbaa !27
  %220 = load i8, ptr %217, align 1, !tbaa !17
  %221 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %218
  store i8 %220, ptr %221, align 1, !tbaa !17
  %222 = or disjoint i64 %218, 1
  %223 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %222
  store i32 3, ptr %223, align 4, !tbaa !27
  %224 = load i8, ptr %217, align 1, !tbaa !17
  %225 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %222
  store i8 %224, ptr %225, align 1, !tbaa !17
  %226 = or disjoint i64 %218, 2
  %227 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %226
  store i32 3, ptr %227, align 4, !tbaa !27
  %228 = load i8, ptr %217, align 1, !tbaa !17
  %229 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %226
  store i8 %228, ptr %229, align 1, !tbaa !17
  %230 = or disjoint i64 %218, 3
  %231 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %230
  store i32 3, ptr %231, align 4, !tbaa !27
  %232 = load i8, ptr %217, align 1, !tbaa !17
  %233 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %230
  store i8 %232, ptr %233, align 1, !tbaa !17
  %234 = or disjoint i64 %218, 4
  %235 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %234
  store i32 3, ptr %235, align 4, !tbaa !27
  %236 = load i8, ptr %217, align 1, !tbaa !17
  %237 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %234
  store i8 %236, ptr %237, align 1, !tbaa !17
  %238 = or disjoint i64 %218, 5
  %239 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %238
  store i32 3, ptr %239, align 4, !tbaa !27
  %240 = load i8, ptr %217, align 1, !tbaa !17
  %241 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %238
  store i8 %240, ptr %241, align 1, !tbaa !17
  %242 = or disjoint i64 %218, 6
  %243 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %242
  store i32 3, ptr %243, align 4, !tbaa !27
  %244 = load i8, ptr %217, align 1, !tbaa !17
  %245 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %242
  store i8 %244, ptr %245, align 1, !tbaa !17
  %246 = or disjoint i64 %218, 7
  %247 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %246
  store i32 3, ptr %247, align 4, !tbaa !27
  %248 = load i8, ptr %217, align 1, !tbaa !17
  %249 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %246
  store i8 %248, ptr %249, align 1, !tbaa !17
  %250 = or disjoint i64 %218, 8
  %251 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %250
  store i32 3, ptr %251, align 4, !tbaa !27
  %252 = load i8, ptr %217, align 1, !tbaa !17
  %253 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %250
  store i8 %252, ptr %253, align 1, !tbaa !17
  %254 = or disjoint i64 %218, 9
  %255 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %254
  store i32 3, ptr %255, align 4, !tbaa !27
  %256 = load i8, ptr %217, align 1, !tbaa !17
  %257 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %254
  store i8 %256, ptr %257, align 1, !tbaa !17
  %258 = or disjoint i64 %218, 10
  %259 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %258
  store i32 3, ptr %259, align 4, !tbaa !27
  %260 = load i8, ptr %217, align 1, !tbaa !17
  %261 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %258
  store i8 %260, ptr %261, align 1, !tbaa !17
  %262 = or disjoint i64 %218, 11
  %263 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %262
  store i32 3, ptr %263, align 4, !tbaa !27
  %264 = load i8, ptr %217, align 1, !tbaa !17
  %265 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %262
  store i8 %264, ptr %265, align 1, !tbaa !17
  %266 = or disjoint i64 %218, 12
  %267 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %266
  store i32 3, ptr %267, align 4, !tbaa !27
  %268 = load i8, ptr %217, align 1, !tbaa !17
  %269 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %266
  store i8 %268, ptr %269, align 1, !tbaa !17
  %270 = or disjoint i64 %218, 13
  %271 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %270
  store i32 3, ptr %271, align 4, !tbaa !27
  %272 = load i8, ptr %217, align 1, !tbaa !17
  %273 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %270
  store i8 %272, ptr %273, align 1, !tbaa !17
  %274 = or disjoint i64 %218, 14
  %275 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %274
  store i32 3, ptr %275, align 4, !tbaa !27
  %276 = load i8, ptr %217, align 1, !tbaa !17
  %277 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %274
  store i8 %276, ptr %277, align 1, !tbaa !17
  %278 = or disjoint i64 %218, 15
  %279 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %278
  store i32 3, ptr %279, align 4, !tbaa !27
  %280 = load i8, ptr %217, align 1, !tbaa !17
  %281 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %278
  store i8 %280, ptr %281, align 1, !tbaa !17
  %282 = or disjoint i64 %218, 16
  %283 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %282
  store i32 3, ptr %283, align 4, !tbaa !27
  %284 = load i8, ptr %217, align 1, !tbaa !17
  %285 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %282
  store i8 %284, ptr %285, align 1, !tbaa !17
  %286 = or disjoint i64 %218, 17
  %287 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %286
  store i32 3, ptr %287, align 4, !tbaa !27
  %288 = load i8, ptr %217, align 1, !tbaa !17
  %289 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %286
  store i8 %288, ptr %289, align 1, !tbaa !17
  %290 = or disjoint i64 %218, 18
  %291 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %290
  store i32 3, ptr %291, align 4, !tbaa !27
  %292 = load i8, ptr %217, align 1, !tbaa !17
  %293 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %290
  store i8 %292, ptr %293, align 1, !tbaa !17
  %294 = or disjoint i64 %218, 19
  %295 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %294
  store i32 3, ptr %295, align 4, !tbaa !27
  %296 = load i8, ptr %217, align 1, !tbaa !17
  %297 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %294
  store i8 %296, ptr %297, align 1, !tbaa !17
  %298 = or disjoint i64 %218, 20
  %299 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %298
  store i32 3, ptr %299, align 4, !tbaa !27
  %300 = load i8, ptr %217, align 1, !tbaa !17
  %301 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %298
  store i8 %300, ptr %301, align 1, !tbaa !17
  %302 = or disjoint i64 %218, 21
  %303 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %302
  store i32 3, ptr %303, align 4, !tbaa !27
  %304 = load i8, ptr %217, align 1, !tbaa !17
  %305 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %302
  store i8 %304, ptr %305, align 1, !tbaa !17
  %306 = or disjoint i64 %218, 22
  %307 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %306
  store i32 3, ptr %307, align 4, !tbaa !27
  %308 = load i8, ptr %217, align 1, !tbaa !17
  %309 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %306
  store i8 %308, ptr %309, align 1, !tbaa !17
  %310 = or disjoint i64 %218, 23
  %311 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %310
  store i32 3, ptr %311, align 4, !tbaa !27
  %312 = load i8, ptr %217, align 1, !tbaa !17
  %313 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %310
  store i8 %312, ptr %313, align 1, !tbaa !17
  %314 = or disjoint i64 %218, 24
  %315 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %314
  store i32 3, ptr %315, align 4, !tbaa !27
  %316 = load i8, ptr %217, align 1, !tbaa !17
  %317 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %314
  store i8 %316, ptr %317, align 1, !tbaa !17
  %318 = or disjoint i64 %218, 25
  %319 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %318
  store i32 3, ptr %319, align 4, !tbaa !27
  %320 = load i8, ptr %217, align 1, !tbaa !17
  %321 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %318
  store i8 %320, ptr %321, align 1, !tbaa !17
  %322 = or disjoint i64 %218, 26
  %323 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %322
  store i32 3, ptr %323, align 4, !tbaa !27
  %324 = load i8, ptr %217, align 1, !tbaa !17
  %325 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %322
  store i8 %324, ptr %325, align 1, !tbaa !17
  %326 = or disjoint i64 %218, 27
  %327 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %326
  store i32 3, ptr %327, align 4, !tbaa !27
  %328 = load i8, ptr %217, align 1, !tbaa !17
  %329 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %326
  store i8 %328, ptr %329, align 1, !tbaa !17
  %330 = or disjoint i64 %218, 28
  %331 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %330
  store i32 3, ptr %331, align 4, !tbaa !27
  %332 = load i8, ptr %217, align 1, !tbaa !17
  %333 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %330
  store i8 %332, ptr %333, align 1, !tbaa !17
  %334 = or disjoint i64 %218, 29
  %335 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %334
  store i32 3, ptr %335, align 4, !tbaa !27
  %336 = load i8, ptr %217, align 1, !tbaa !17
  %337 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %334
  store i8 %336, ptr %337, align 1, !tbaa !17
  %338 = or disjoint i64 %218, 30
  %339 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %338
  store i32 3, ptr %339, align 4, !tbaa !27
  %340 = load i8, ptr %217, align 1, !tbaa !17
  %341 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %338
  store i8 %340, ptr %341, align 1, !tbaa !17
  %342 = or disjoint i64 %218, 31
  %343 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %342
  store i32 3, ptr %343, align 4, !tbaa !27
  %344 = load i8, ptr %217, align 1, !tbaa !17
  %345 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %342
  store i8 %344, ptr %345, align 1, !tbaa !17
  %346 = add nuw nsw i32 %213, 1
  %347 = add nsw i64 %212, 1
  %348 = load i8, ptr %206, align 1, !tbaa !17
  %349 = zext i8 %348 to i32
  %350 = icmp ult i32 %213, %349
  br i1 %350, label %211, label %351, !llvm.loop !33

351:                                              ; preds = %211
  %352 = trunc nsw i64 %347 to i32
  br label %353

353:                                              ; preds = %351, %204
  %354 = phi i32 [ %205, %204 ], [ %352, %351 ]
  %355 = getelementptr inbounds i8, ptr %22, i64 4
  %356 = load i8, ptr %355, align 1, !tbaa !17
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %438, label %358

358:                                              ; preds = %353
  %359 = sext i32 %354 to i64
  br label %360

360:                                              ; preds = %360, %358
  %361 = phi i64 [ %359, %358 ], [ %432, %360 ]
  %362 = phi i32 [ 1, %358 ], [ %431, %360 ]
  %363 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %361
  %364 = load i32, ptr %363, align 4, !tbaa !27
  %365 = shl i32 %364, 4
  %366 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 %361
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %367
  store i32 4, ptr %368, align 4, !tbaa !27
  %369 = load i8, ptr %366, align 1, !tbaa !17
  %370 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %367
  store i8 %369, ptr %370, align 1, !tbaa !17
  %371 = or disjoint i64 %367, 1
  %372 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %371
  store i32 4, ptr %372, align 4, !tbaa !27
  %373 = load i8, ptr %366, align 1, !tbaa !17
  %374 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %371
  store i8 %373, ptr %374, align 1, !tbaa !17
  %375 = or disjoint i64 %367, 2
  %376 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %375
  store i32 4, ptr %376, align 4, !tbaa !27
  %377 = load i8, ptr %366, align 1, !tbaa !17
  %378 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %375
  store i8 %377, ptr %378, align 1, !tbaa !17
  %379 = or disjoint i64 %367, 3
  %380 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %379
  store i32 4, ptr %380, align 4, !tbaa !27
  %381 = load i8, ptr %366, align 1, !tbaa !17
  %382 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %379
  store i8 %381, ptr %382, align 1, !tbaa !17
  %383 = or disjoint i64 %367, 4
  %384 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %383
  store i32 4, ptr %384, align 4, !tbaa !27
  %385 = load i8, ptr %366, align 1, !tbaa !17
  %386 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %383
  store i8 %385, ptr %386, align 1, !tbaa !17
  %387 = or disjoint i64 %367, 5
  %388 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %387
  store i32 4, ptr %388, align 4, !tbaa !27
  %389 = load i8, ptr %366, align 1, !tbaa !17
  %390 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %387
  store i8 %389, ptr %390, align 1, !tbaa !17
  %391 = or disjoint i64 %367, 6
  %392 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %391
  store i32 4, ptr %392, align 4, !tbaa !27
  %393 = load i8, ptr %366, align 1, !tbaa !17
  %394 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %391
  store i8 %393, ptr %394, align 1, !tbaa !17
  %395 = or disjoint i64 %367, 7
  %396 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %395
  store i32 4, ptr %396, align 4, !tbaa !27
  %397 = load i8, ptr %366, align 1, !tbaa !17
  %398 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %395
  store i8 %397, ptr %398, align 1, !tbaa !17
  %399 = or disjoint i64 %367, 8
  %400 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %399
  store i32 4, ptr %400, align 4, !tbaa !27
  %401 = load i8, ptr %366, align 1, !tbaa !17
  %402 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %399
  store i8 %401, ptr %402, align 1, !tbaa !17
  %403 = or disjoint i64 %367, 9
  %404 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %403
  store i32 4, ptr %404, align 4, !tbaa !27
  %405 = load i8, ptr %366, align 1, !tbaa !17
  %406 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %403
  store i8 %405, ptr %406, align 1, !tbaa !17
  %407 = or disjoint i64 %367, 10
  %408 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %407
  store i32 4, ptr %408, align 4, !tbaa !27
  %409 = load i8, ptr %366, align 1, !tbaa !17
  %410 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %407
  store i8 %409, ptr %410, align 1, !tbaa !17
  %411 = or disjoint i64 %367, 11
  %412 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %411
  store i32 4, ptr %412, align 4, !tbaa !27
  %413 = load i8, ptr %366, align 1, !tbaa !17
  %414 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %411
  store i8 %413, ptr %414, align 1, !tbaa !17
  %415 = or disjoint i64 %367, 12
  %416 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %415
  store i32 4, ptr %416, align 4, !tbaa !27
  %417 = load i8, ptr %366, align 1, !tbaa !17
  %418 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %415
  store i8 %417, ptr %418, align 1, !tbaa !17
  %419 = or disjoint i64 %367, 13
  %420 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %419
  store i32 4, ptr %420, align 4, !tbaa !27
  %421 = load i8, ptr %366, align 1, !tbaa !17
  %422 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %419
  store i8 %421, ptr %422, align 1, !tbaa !17
  %423 = or disjoint i64 %367, 14
  %424 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %423
  store i32 4, ptr %424, align 4, !tbaa !27
  %425 = load i8, ptr %366, align 1, !tbaa !17
  %426 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %423
  store i8 %425, ptr %426, align 1, !tbaa !17
  %427 = or disjoint i64 %367, 15
  %428 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %427
  store i32 4, ptr %428, align 4, !tbaa !27
  %429 = load i8, ptr %366, align 1, !tbaa !17
  %430 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %427
  store i8 %429, ptr %430, align 1, !tbaa !17
  %431 = add nuw nsw i32 %362, 1
  %432 = add nsw i64 %361, 1
  %433 = load i8, ptr %355, align 1, !tbaa !17
  %434 = zext i8 %433 to i32
  %435 = icmp ult i32 %362, %434
  br i1 %435, label %360, label %436, !llvm.loop !33

436:                                              ; preds = %360
  %437 = trunc nsw i64 %432 to i32
  br label %438

438:                                              ; preds = %436, %353
  %439 = phi i32 [ %354, %353 ], [ %437, %436 ]
  %440 = getelementptr inbounds i8, ptr %22, i64 5
  %441 = load i8, ptr %440, align 1, !tbaa !17
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %491, label %443

443:                                              ; preds = %438
  %444 = sext i32 %439 to i64
  br label %445

445:                                              ; preds = %445, %443
  %446 = phi i64 [ %444, %443 ], [ %485, %445 ]
  %447 = phi i32 [ 1, %443 ], [ %484, %445 ]
  %448 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %446
  %449 = load i32, ptr %448, align 4, !tbaa !27
  %450 = shl i32 %449, 3
  %451 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 %446
  %452 = sext i32 %450 to i64
  %453 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %452
  store i32 5, ptr %453, align 4, !tbaa !27
  %454 = load i8, ptr %451, align 1, !tbaa !17
  %455 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %452
  store i8 %454, ptr %455, align 1, !tbaa !17
  %456 = or disjoint i64 %452, 1
  %457 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %456
  store i32 5, ptr %457, align 4, !tbaa !27
  %458 = load i8, ptr %451, align 1, !tbaa !17
  %459 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %456
  store i8 %458, ptr %459, align 1, !tbaa !17
  %460 = or disjoint i64 %452, 2
  %461 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %460
  store i32 5, ptr %461, align 4, !tbaa !27
  %462 = load i8, ptr %451, align 1, !tbaa !17
  %463 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %460
  store i8 %462, ptr %463, align 1, !tbaa !17
  %464 = or disjoint i64 %452, 3
  %465 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %464
  store i32 5, ptr %465, align 4, !tbaa !27
  %466 = load i8, ptr %451, align 1, !tbaa !17
  %467 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %464
  store i8 %466, ptr %467, align 1, !tbaa !17
  %468 = or disjoint i64 %452, 4
  %469 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %468
  store i32 5, ptr %469, align 4, !tbaa !27
  %470 = load i8, ptr %451, align 1, !tbaa !17
  %471 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %468
  store i8 %470, ptr %471, align 1, !tbaa !17
  %472 = or disjoint i64 %452, 5
  %473 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %472
  store i32 5, ptr %473, align 4, !tbaa !27
  %474 = load i8, ptr %451, align 1, !tbaa !17
  %475 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %472
  store i8 %474, ptr %475, align 1, !tbaa !17
  %476 = or disjoint i64 %452, 6
  %477 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %476
  store i32 5, ptr %477, align 4, !tbaa !27
  %478 = load i8, ptr %451, align 1, !tbaa !17
  %479 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %476
  store i8 %478, ptr %479, align 1, !tbaa !17
  %480 = or disjoint i64 %452, 7
  %481 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %480
  store i32 5, ptr %481, align 4, !tbaa !27
  %482 = load i8, ptr %451, align 1, !tbaa !17
  %483 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %480
  store i8 %482, ptr %483, align 1, !tbaa !17
  %484 = add nuw nsw i32 %447, 1
  %485 = add nsw i64 %446, 1
  %486 = load i8, ptr %440, align 1, !tbaa !17
  %487 = zext i8 %486 to i32
  %488 = icmp ult i32 %447, %487
  br i1 %488, label %445, label %489, !llvm.loop !33

489:                                              ; preds = %445
  %490 = trunc nsw i64 %485 to i32
  br label %491

491:                                              ; preds = %489, %438
  %492 = phi i32 [ %439, %438 ], [ %490, %489 ]
  %493 = getelementptr inbounds i8, ptr %22, i64 6
  %494 = load i8, ptr %493, align 1, !tbaa !17
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %528, label %496

496:                                              ; preds = %491
  %497 = sext i32 %492 to i64
  br label %498

498:                                              ; preds = %498, %496
  %499 = phi i64 [ %497, %496 ], [ %522, %498 ]
  %500 = phi i32 [ 1, %496 ], [ %521, %498 ]
  %501 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %499
  %502 = load i32, ptr %501, align 4, !tbaa !27
  %503 = shl i32 %502, 2
  %504 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 %499
  %505 = sext i32 %503 to i64
  %506 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %505
  store i32 6, ptr %506, align 4, !tbaa !27
  %507 = load i8, ptr %504, align 1, !tbaa !17
  %508 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %505
  store i8 %507, ptr %508, align 1, !tbaa !17
  %509 = or disjoint i64 %505, 1
  %510 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %509
  store i32 6, ptr %510, align 4, !tbaa !27
  %511 = load i8, ptr %504, align 1, !tbaa !17
  %512 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %509
  store i8 %511, ptr %512, align 1, !tbaa !17
  %513 = or disjoint i64 %505, 2
  %514 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %513
  store i32 6, ptr %514, align 4, !tbaa !27
  %515 = load i8, ptr %504, align 1, !tbaa !17
  %516 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %513
  store i8 %515, ptr %516, align 1, !tbaa !17
  %517 = or disjoint i64 %505, 3
  %518 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %517
  store i32 6, ptr %518, align 4, !tbaa !27
  %519 = load i8, ptr %504, align 1, !tbaa !17
  %520 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %517
  store i8 %519, ptr %520, align 1, !tbaa !17
  %521 = add nuw nsw i32 %500, 1
  %522 = add nsw i64 %499, 1
  %523 = load i8, ptr %493, align 1, !tbaa !17
  %524 = zext i8 %523 to i32
  %525 = icmp ult i32 %500, %524
  br i1 %525, label %498, label %526, !llvm.loop !33

526:                                              ; preds = %498
  %527 = trunc nsw i64 %522 to i32
  br label %528

528:                                              ; preds = %526, %491
  %529 = phi i32 [ %492, %491 ], [ %527, %526 ]
  %530 = getelementptr inbounds i8, ptr %22, i64 7
  %531 = load i8, ptr %530, align 1, !tbaa !17
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %557, label %533

533:                                              ; preds = %528
  %534 = sext i32 %529 to i64
  br label %535

535:                                              ; preds = %535, %533
  %536 = phi i64 [ %534, %533 ], [ %551, %535 ]
  %537 = phi i32 [ 1, %533 ], [ %550, %535 ]
  %538 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %536
  %539 = load i32, ptr %538, align 4, !tbaa !27
  %540 = shl i32 %539, 1
  %541 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 %536
  %542 = sext i32 %540 to i64
  %543 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %542
  store i32 7, ptr %543, align 4, !tbaa !27
  %544 = load i8, ptr %541, align 1, !tbaa !17
  %545 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %542
  store i8 %544, ptr %545, align 1, !tbaa !17
  %546 = or disjoint i64 %542, 1
  %547 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %546
  store i32 7, ptr %547, align 4, !tbaa !27
  %548 = load i8, ptr %541, align 1, !tbaa !17
  %549 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %546
  store i8 %548, ptr %549, align 1, !tbaa !17
  %550 = add nuw nsw i32 %537, 1
  %551 = add nsw i64 %536, 1
  %552 = load i8, ptr %530, align 1, !tbaa !17
  %553 = zext i8 %552 to i32
  %554 = icmp ult i32 %537, %553
  br i1 %554, label %535, label %555, !llvm.loop !33

555:                                              ; preds = %535
  %556 = trunc nsw i64 %551 to i32
  br label %557

557:                                              ; preds = %555, %528
  %558 = phi i32 [ %529, %528 ], [ %556, %555 ]
  %559 = getelementptr inbounds i8, ptr %22, i64 8
  %560 = load i8, ptr %559, align 1, !tbaa !17
  %561 = icmp eq i8 %560, 0
  br i1 %561, label %579, label %562

562:                                              ; preds = %557
  %563 = sext i32 %558 to i64
  br label %564

564:                                              ; preds = %564, %562
  %565 = phi i64 [ %563, %562 ], [ %575, %564 ]
  %566 = phi i32 [ 1, %562 ], [ %574, %564 ]
  %567 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %565
  %568 = load i32, ptr %567, align 4, !tbaa !27
  %569 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 %565
  %570 = sext i32 %568 to i64
  %571 = getelementptr inbounds [256 x i32], ptr %141, i64 0, i64 %570
  store i32 8, ptr %571, align 4, !tbaa !27
  %572 = load i8, ptr %569, align 1, !tbaa !17
  %573 = getelementptr inbounds [256 x i8], ptr %143, i64 0, i64 %570
  store i8 %572, ptr %573, align 1, !tbaa !17
  %574 = add nuw nsw i32 %566, 1
  %575 = add nsw i64 %565, 1
  %576 = load i8, ptr %559, align 1, !tbaa !17
  %577 = zext i8 %576 to i32
  %578 = icmp ult i32 %566, %577
  br i1 %578, label %564, label %579, !llvm.loop !33

579:                                              ; preds = %564, %557
  %580 = icmp sgt i32 %62, 0
  %581 = and i1 %15, %580
  br i1 %581, label %582, label %596

582:                                              ; preds = %579
  %583 = zext nneg i32 %62 to i64
  br label %584

584:                                              ; preds = %582, %593
  %585 = phi i64 [ 0, %582 ], [ %594, %593 ]
  %586 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 %585
  %587 = load i8, ptr %586, align 1, !tbaa !17
  %588 = icmp ugt i8 %587, 15
  br i1 %588, label %589, label %593

589:                                              ; preds = %584
  %590 = load ptr, ptr %0, align 8, !tbaa !6
  %591 = getelementptr inbounds i8, ptr %590, i64 40
  store i32 8, ptr %591, align 8, !tbaa !14
  %592 = load ptr, ptr %590, align 8, !tbaa !18
  tail call void %592(ptr noundef nonnull %0) #4
  br label %593

593:                                              ; preds = %584, %589
  %594 = add nuw nsw i64 %585, 1
  %595 = icmp eq i64 %594, %583
  br i1 %595, label %596, label %584, !llvm.loop !34

596:                                              ; preds = %593, %579
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %5) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local noundef signext i32 @jpeg_fill_bit_buffer(ptr nocapture noundef %0, i64 noundef %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds i8, ptr %9, i64 540
  %11 = load i32, ptr %10, align 4, !tbaa !39
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %73

13:                                               ; preds = %4
  %14 = icmp slt i32 %2, 25
  br i1 %14, label %15, label %96

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %9, i64 40
  br label %17

17:                                               ; preds = %15, %65
  %18 = phi i64 [ %7, %15 ], [ %67, %65 ]
  %19 = phi ptr [ %5, %15 ], [ %66, %65 ]
  %20 = phi i64 [ %1, %15 ], [ %70, %65 ]
  %21 = phi i32 [ %2, %15 ], [ %71, %65 ]
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load ptr, ptr %16, align 8, !tbaa !40
  %25 = getelementptr inbounds i8, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = tail call signext i32 %26(ptr noundef %9) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %103, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %16, align 8, !tbaa !40
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = getelementptr inbounds i8, ptr %30, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !44
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi ptr [ %31, %29 ], [ %19, %17 ]
  %36 = phi i64 [ %33, %29 ], [ %18, %17 ]
  %37 = add i64 %36, -1
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  %39 = load i8, ptr %35, align 1, !tbaa !17
  %40 = zext i8 %39 to i64
  %41 = icmp eq i8 %39, -1
  br i1 %41, label %42, label %65

42:                                               ; preds = %34, %57
  %43 = phi ptr [ %61, %57 ], [ %38, %34 ]
  %44 = phi i64 [ %60, %57 ], [ %37, %34 ]
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load ptr, ptr %16, align 8, !tbaa !40
  %48 = getelementptr inbounds i8, ptr %47, i64 24
  %49 = load ptr, ptr %48, align 8, !tbaa !41
  %50 = tail call signext i32 %49(ptr noundef %9) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %103, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %16, align 8, !tbaa !40
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = getelementptr inbounds i8, ptr %53, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !44
  br label %57

57:                                               ; preds = %52, %42
  %58 = phi ptr [ %54, %52 ], [ %43, %42 ]
  %59 = phi i64 [ %56, %52 ], [ %44, %42 ]
  %60 = add i64 %59, -1
  %61 = getelementptr inbounds i8, ptr %58, i64 1
  %62 = load i8, ptr %58, align 1, !tbaa !17
  switch i8 %62, label %63 [
    i8 -1, label %42
    i8 0, label %65
  ]

63:                                               ; preds = %57
  %64 = zext i8 %62 to i32
  store i32 %64, ptr %10, align 4, !tbaa !39
  br label %73

65:                                               ; preds = %57, %34
  %66 = phi ptr [ %38, %34 ], [ %61, %57 ]
  %67 = phi i64 [ %37, %34 ], [ %60, %57 ]
  %68 = phi i64 [ %40, %34 ], [ 255, %57 ]
  %69 = shl i64 %20, 8
  %70 = or disjoint i64 %68, %69
  %71 = add nsw i32 %21, 8
  %72 = icmp slt i32 %21, 17
  br i1 %72, label %17, label %96

73:                                               ; preds = %63, %4
  %74 = phi i32 [ %2, %4 ], [ %21, %63 ]
  %75 = phi i64 [ %1, %4 ], [ %20, %63 ]
  %76 = phi ptr [ %5, %4 ], [ %61, %63 ]
  %77 = phi i64 [ %7, %4 ], [ %60, %63 ]
  %78 = icmp slt i32 %74, %3
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = getelementptr inbounds i8, ptr %9, i64 592
  %81 = load ptr, ptr %80, align 8, !tbaa !45
  %82 = getelementptr inbounds i8, ptr %81, i64 16
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load ptr, ptr %9, align 8, !tbaa !6
  %87 = getelementptr inbounds i8, ptr %86, i64 40
  store i32 117, ptr %87, align 8, !tbaa !14
  %88 = getelementptr inbounds i8, ptr %86, i64 8
  %89 = load ptr, ptr %88, align 8, !tbaa !48
  tail call void %89(ptr noundef nonnull %9, i32 noundef signext -1) #4
  %90 = load ptr, ptr %80, align 8, !tbaa !45
  %91 = getelementptr inbounds i8, ptr %90, i64 16
  store i32 1, ptr %91, align 8, !tbaa !46
  br label %92

92:                                               ; preds = %85, %79
  %93 = sub nsw i32 25, %74
  %94 = zext nneg i32 %93 to i64
  %95 = shl i64 %75, %94
  br label %96

96:                                               ; preds = %65, %13, %73, %92
  %97 = phi i32 [ 25, %92 ], [ %74, %73 ], [ %2, %13 ], [ %71, %65 ]
  %98 = phi i64 [ %95, %92 ], [ %75, %73 ], [ %1, %13 ], [ %70, %65 ]
  %99 = phi ptr [ %76, %92 ], [ %76, %73 ], [ %5, %13 ], [ %66, %65 ]
  %100 = phi i64 [ %77, %92 ], [ %77, %73 ], [ %7, %13 ], [ %67, %65 ]
  store ptr %99, ptr %0, align 8, !tbaa !35
  store i64 %100, ptr %6, align 8, !tbaa !37
  %101 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %98, ptr %101, align 8, !tbaa !49
  %102 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %97, ptr %102, align 8, !tbaa !50
  br label %103

103:                                              ; preds = %23, %46, %96
  %104 = phi i32 [ 1, %96 ], [ 0, %46 ], [ 0, %23 ]
  ret i32 %104
}

; Function Attrs: nounwind
define dso_local signext range(i32 -1, 256) i32 @jpeg_huff_decode(ptr nocapture noundef %0, i64 noundef %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = icmp slt i32 %2, %4
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = tail call signext i32 @jpeg_fill_bit_buffer(ptr noundef %0, i64 noundef %1, i32 noundef signext %2, i32 noundef signext %4)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %89, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %0, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds i8, ptr %0, i64 24
  %14 = load i32, ptr %13, align 8, !tbaa !50
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi i32 [ %14, %10 ], [ %2, %5 ]
  %17 = phi i64 [ %12, %10 ], [ %1, %5 ]
  %18 = sub nsw i32 %16, %4
  %19 = zext nneg i32 %18 to i64
  %20 = ashr i64 %17, %19
  %21 = trunc i64 %20 to i32
  %22 = shl nsw i32 -1, %4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = zext nneg i32 %24 to i64
  %26 = sext i32 %4 to i64
  %27 = getelementptr inbounds [18 x i64], ptr %3, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !30
  %29 = icmp slt i64 %28, %25
  br i1 %29, label %30, label %60

30:                                               ; preds = %15
  %31 = getelementptr inbounds i8, ptr %0, i64 16
  %32 = getelementptr inbounds i8, ptr %0, i64 24
  br label %33

33:                                               ; preds = %30, %46
  %34 = phi i64 [ %26, %30 ], [ %54, %46 ]
  %35 = phi i64 [ %25, %30 ], [ %53, %46 ]
  %36 = phi i64 [ %17, %30 ], [ %48, %46 ]
  %37 = phi i32 [ %18, %30 ], [ %49, %46 ]
  %38 = shl i64 %35, 1
  %39 = icmp slt i32 %37, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = tail call signext i32 @jpeg_fill_bit_buffer(ptr noundef %0, i64 noundef %36, i32 noundef signext %37, i32 noundef signext 1)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %89, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %31, align 8, !tbaa !49
  %45 = load i32, ptr %32, align 8, !tbaa !50
  br label %46

46:                                               ; preds = %43, %33
  %47 = phi i32 [ %45, %43 ], [ %37, %33 ]
  %48 = phi i64 [ %44, %43 ], [ %36, %33 ]
  %49 = add nsw i32 %47, -1
  %50 = zext nneg i32 %49 to i64
  %51 = lshr i64 %48, %50
  %52 = and i64 %51, 1
  %53 = or disjoint i64 %52, %38
  %54 = add nsw i64 %34, 1
  %55 = getelementptr inbounds [18 x i64], ptr %3, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !30
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %33, label %58, !llvm.loop !51

58:                                               ; preds = %46
  %59 = trunc nsw i64 %54 to i32
  br label %60

60:                                               ; preds = %58, %15
  %61 = phi i32 [ %18, %15 ], [ %49, %58 ]
  %62 = phi i64 [ %17, %15 ], [ %48, %58 ]
  %63 = phi i32 [ %4, %15 ], [ %59, %58 ]
  %64 = phi i64 [ %25, %15 ], [ %53, %58 ]
  %65 = phi i64 [ %26, %15 ], [ %54, %58 ]
  %66 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %62, ptr %66, align 8, !tbaa !49
  %67 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %61, ptr %67, align 8, !tbaa !50
  %68 = icmp sgt i32 %63, 16
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = getelementptr inbounds i8, ptr %0, i64 32
  %71 = load ptr, ptr %70, align 8, !tbaa !38
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %72, i64 40
  store i32 118, ptr %73, align 8, !tbaa !14
  %74 = getelementptr inbounds i8, ptr %72, i64 8
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  tail call void %75(ptr noundef nonnull %71, i32 noundef signext -1) #4
  br label %89

76:                                               ; preds = %60
  %77 = getelementptr inbounds i8, ptr %3, i64 280
  %78 = load ptr, ptr %77, align 8, !tbaa !23
  %79 = getelementptr inbounds i8, ptr %78, i64 17
  %80 = getelementptr inbounds i8, ptr %3, i64 144
  %81 = getelementptr inbounds [17 x i64], ptr %80, i64 0, i64 %65
  %82 = load i64, ptr %81, align 8, !tbaa !30
  %83 = add nsw i64 %82, %64
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = getelementptr inbounds [256 x i8], ptr %79, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !17
  %88 = zext i8 %87 to i32
  br label %89

89:                                               ; preds = %40, %7, %76, %69
  %90 = phi i32 [ 0, %69 ], [ %88, %76 ], [ -1, %7 ], [ -1, %40 ]
  ret i32 %90
}

; Function Attrs: nounwind
define dso_local void @jinit_huff_decoder(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 368) #4
  %6 = getelementptr inbounds i8, ptr %0, i64 592
  store ptr %5, ptr %6, align 8, !tbaa !45
  store ptr @start_pass_huff_decoder, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @decode_mcu, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds i8, ptr %5, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nounwind
define internal void @start_pass_huff_decoder(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 592
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds i8, ptr %0, i64 524
  %5 = load i32, ptr %4, align 4, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 528
  %9 = load i32, ptr %8, align 8, !tbaa !58
  %10 = icmp eq i32 %9, 63
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i64 532
  %13 = load i32, ptr %12, align 4, !tbaa !59
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 536
  %17 = load i32, ptr %16, align 8, !tbaa !60
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %11, %7, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 40
  store i32 122, ptr %21, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, ptr %20, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  tail call void %23(ptr noundef nonnull %0, i32 noundef signext -1) #4
  br label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds i8, ptr %0, i64 432
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %0, i64 440
  %30 = getelementptr inbounds i8, ptr %3, i64 64
  %31 = getelementptr inbounds i8, ptr %3, i64 96
  %32 = getelementptr inbounds i8, ptr %3, i64 40
  br label %46

33:                                               ; preds = %46, %24
  %34 = getelementptr inbounds i8, ptr %0, i64 480
  %35 = load i32, ptr %34, align 8, !tbaa !62
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %102

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %0, i64 484
  %39 = getelementptr inbounds i8, ptr %0, i64 440
  %40 = getelementptr inbounds i8, ptr %3, i64 64
  %41 = getelementptr inbounds i8, ptr %3, i64 128
  %42 = getelementptr inbounds i8, ptr %3, i64 96
  %43 = getelementptr inbounds i8, ptr %3, i64 208
  %44 = getelementptr inbounds i8, ptr %3, i64 288
  %45 = getelementptr inbounds i8, ptr %3, i64 328
  br label %63

46:                                               ; preds = %28, %46
  %47 = phi i64 [ 0, %28 ], [ %59, %46 ]
  %48 = getelementptr inbounds [4 x ptr], ptr %29, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !19
  %50 = getelementptr inbounds i8, ptr %49, i64 20
  %51 = load i32, ptr %50, align 4, !tbaa !63
  %52 = getelementptr inbounds i8, ptr %49, i64 24
  %53 = load i32, ptr %52, align 8, !tbaa !65
  %54 = sext i32 %51 to i64
  %55 = getelementptr inbounds [4 x ptr], ptr %30, i64 0, i64 %54
  tail call void @jpeg_make_d_derived_tbl(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %51, ptr noundef nonnull %55)
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds [4 x ptr], ptr %31, i64 0, i64 %56
  tail call void @jpeg_make_d_derived_tbl(ptr noundef nonnull %0, i32 noundef signext 0, i32 noundef signext %53, ptr noundef nonnull %57)
  %58 = getelementptr inbounds [4 x i32], ptr %32, i64 0, i64 %47
  store i32 0, ptr %58, align 4, !tbaa !27
  %59 = add nuw nsw i64 %47, 1
  %60 = load i32, ptr %25, align 8, !tbaa !61
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %46, label %33, !llvm.loop !66

63:                                               ; preds = %37, %93
  %64 = phi i64 [ 0, %37 ], [ %98, %93 ]
  %65 = getelementptr inbounds [10 x i32], ptr %38, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !27
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x ptr], ptr %39, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !19
  %70 = getelementptr inbounds i8, ptr %69, i64 20
  %71 = load i32, ptr %70, align 4, !tbaa !63
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x ptr], ptr %40, i64 0, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !19
  %75 = getelementptr inbounds [10 x ptr], ptr %41, i64 0, i64 %64
  store ptr %74, ptr %75, align 8, !tbaa !19
  %76 = getelementptr inbounds i8, ptr %69, i64 24
  %77 = load i32, ptr %76, align 8, !tbaa !65
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x ptr], ptr %42, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !19
  %81 = getelementptr inbounds [10 x ptr], ptr %43, i64 0, i64 %64
  store ptr %80, ptr %81, align 8, !tbaa !19
  %82 = getelementptr inbounds i8, ptr %69, i64 48
  %83 = load i32, ptr %82, align 8, !tbaa !67
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %63
  %86 = getelementptr inbounds [10 x i32], ptr %44, i64 0, i64 %64
  store i32 1, ptr %86, align 4, !tbaa !27
  %87 = getelementptr inbounds i8, ptr %69, i64 36
  %88 = load i32, ptr %87, align 4, !tbaa !68
  %89 = icmp sgt i32 %88, 1
  %90 = zext i1 %89 to i32
  br label %93

91:                                               ; preds = %63
  %92 = getelementptr inbounds [10 x i32], ptr %45, i64 0, i64 %64
  store i32 0, ptr %92, align 4, !tbaa !27
  br label %93

93:                                               ; preds = %85, %91
  %94 = phi i64 [ 328, %85 ], [ 288, %91 ]
  %95 = phi i32 [ %90, %85 ], [ 0, %91 ]
  %96 = getelementptr inbounds i8, ptr %3, i64 %94
  %97 = getelementptr inbounds [10 x i32], ptr %96, i64 0, i64 %64
  store i32 %95, ptr %97, align 4, !tbaa !27
  %98 = add nuw nsw i64 %64, 1
  %99 = load i32, ptr %34, align 8, !tbaa !62
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %63, label %102, !llvm.loop !69

102:                                              ; preds = %93, %33
  %103 = getelementptr inbounds i8, ptr %3, i64 24
  %104 = getelementptr inbounds i8, ptr %3, i64 32
  store i32 0, ptr %104, align 8, !tbaa !70
  store i64 0, ptr %103, align 8, !tbaa !71
  %105 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 0, ptr %105, align 8, !tbaa !72
  %106 = getelementptr inbounds i8, ptr %0, i64 368
  %107 = load i32, ptr %106, align 8, !tbaa !73
  %108 = getelementptr inbounds i8, ptr %3, i64 56
  store i32 %107, ptr %108, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind
define internal noundef signext i32 @decode_mcu(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = alloca %struct.savable_state, align 4
  %5 = getelementptr inbounds i8, ptr %0, i64 592
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4
  %7 = getelementptr inbounds i8, ptr %0, i64 368
  %8 = load i32, ptr %7, align 8, !tbaa !73
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %6, i64 56
  %12 = load i32, ptr %11, align 8, !tbaa !74
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %6, i64 32
  %16 = load i32, ptr %15, align 8, !tbaa !70
  %17 = sdiv i32 %16, 8
  %18 = getelementptr inbounds i8, ptr %0, i64 584
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds i8, ptr %19, i64 36
  %21 = load i32, ptr %20, align 4, !tbaa !76
  %22 = add i32 %21, %17
  store i32 %22, ptr %20, align 4, !tbaa !76
  store i32 0, ptr %15, align 8, !tbaa !70
  %23 = getelementptr inbounds i8, ptr %19, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  %25 = tail call signext i32 %24(ptr noundef nonnull %0) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %347, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds i8, ptr %0, i64 432
  %29 = load i32, ptr %28, align 8, !tbaa !61
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %6, i64 40
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %36, %33 ]
  %35 = getelementptr inbounds [4 x i32], ptr %32, i64 0, i64 %34
  store i32 0, ptr %35, align 4, !tbaa !27
  %36 = add nuw nsw i64 %34, 1
  %37 = load i32, ptr %28, align 8, !tbaa !61
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %33, label %40, !llvm.loop !79

40:                                               ; preds = %33, %27
  %41 = load i32, ptr %7, align 8, !tbaa !73
  store i32 %41, ptr %11, align 8, !tbaa !74
  %42 = getelementptr inbounds i8, ptr %0, i64 540
  %43 = load i32, ptr %42, align 4, !tbaa !39
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %6, i64 16
  store i32 0, ptr %46, align 8, !tbaa !72
  br label %47

47:                                               ; preds = %40, %45, %10, %2
  %48 = getelementptr inbounds i8, ptr %6, i64 16
  %49 = load i32, ptr %48, align 8, !tbaa !72
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %343

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %3, i64 32
  store ptr %0, ptr %52, align 8, !tbaa !38
  %53 = getelementptr inbounds i8, ptr %0, i64 40
  %54 = load ptr, ptr %53, align 8, !tbaa !40
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  store ptr %55, ptr %3, align 8, !tbaa !35
  %56 = getelementptr inbounds i8, ptr %54, i64 8
  %57 = load i64, ptr %56, align 8, !tbaa !44
  %58 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %57, ptr %58, align 8, !tbaa !37
  %59 = getelementptr inbounds i8, ptr %6, i64 24
  %60 = load i64, ptr %59, align 8, !tbaa !71
  %61 = getelementptr inbounds i8, ptr %6, i64 32
  %62 = load i32, ptr %61, align 8, !tbaa !70
  %63 = getelementptr inbounds i8, ptr %6, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %63, i64 16, i1 false), !tbaa.struct !80
  %64 = getelementptr inbounds i8, ptr %0, i64 480
  %65 = load i32, ptr %64, align 8, !tbaa !62
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %336

67:                                               ; preds = %51
  %68 = getelementptr inbounds i8, ptr %6, i64 128
  %69 = getelementptr inbounds i8, ptr %6, i64 208
  %70 = getelementptr inbounds i8, ptr %3, i64 16
  %71 = getelementptr inbounds i8, ptr %3, i64 24
  %72 = getelementptr inbounds i8, ptr %6, i64 288
  %73 = getelementptr inbounds i8, ptr %0, i64 484
  %74 = getelementptr inbounds i8, ptr %6, i64 328
  br label %75

75:                                               ; preds = %67, %325
  %76 = phi i64 [ 0, %67 ], [ %328, %325 ]
  %77 = phi i64 [ %60, %67 ], [ %327, %325 ]
  %78 = phi i32 [ %62, %67 ], [ %326, %325 ]
  %79 = getelementptr inbounds ptr, ptr %1, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !19
  %81 = getelementptr inbounds [10 x ptr], ptr %68, i64 0, i64 %76
  %82 = load ptr, ptr %81, align 8, !tbaa !19
  %83 = getelementptr inbounds [10 x ptr], ptr %69, i64 0, i64 %76
  %84 = load ptr, ptr %83, align 8, !tbaa !19
  %85 = icmp slt i32 %78, 8
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %77, i32 noundef signext %78, i32 noundef signext 0)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %347, label %89

89:                                               ; preds = %86
  %90 = load i64, ptr %70, align 8, !tbaa !49
  %91 = load i32, ptr %71, align 8, !tbaa !50
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call signext i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %90, i32 noundef signext %91, ptr noundef %82, i32 noundef signext 1)
  br label %114

95:                                               ; preds = %89, %75
  %96 = phi i32 [ %91, %89 ], [ %78, %75 ]
  %97 = phi i64 [ %90, %89 ], [ %77, %75 ]
  %98 = add nsw i32 %96, -8
  %99 = zext nneg i32 %98 to i64
  %100 = ashr i64 %97, %99
  %101 = and i64 %100, 255
  %102 = getelementptr inbounds i8, ptr %82, i64 288
  %103 = getelementptr inbounds [256 x i32], ptr %102, i64 0, i64 %101
  %104 = load i32, ptr %103, align 4, !tbaa !27
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %95
  %107 = sub nsw i32 %96, %104
  %108 = getelementptr inbounds i8, ptr %82, i64 1312
  %109 = getelementptr inbounds [256 x i8], ptr %108, i64 0, i64 %101
  %110 = load i8, ptr %109, align 1, !tbaa !17
  %111 = zext i8 %110 to i32
  br label %120

112:                                              ; preds = %95
  %113 = call signext i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %97, i32 noundef signext %96, ptr noundef nonnull %82, i32 noundef signext 9)
  br label %114

114:                                              ; preds = %112, %93
  %115 = phi i32 [ %113, %112 ], [ %94, %93 ]
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %347, label %117

117:                                              ; preds = %114
  %118 = load i64, ptr %70, align 8, !tbaa !49
  %119 = load i32, ptr %71, align 8, !tbaa !50
  br label %120

120:                                              ; preds = %117, %106
  %121 = phi i32 [ %111, %106 ], [ %115, %117 ]
  %122 = phi i32 [ %107, %106 ], [ %119, %117 ]
  %123 = phi i64 [ %97, %106 ], [ %118, %117 ]
  %124 = icmp eq i32 %121, 0
  br i1 %124, label %151, label %125

125:                                              ; preds = %120
  %126 = icmp slt i32 %122, %121
  br i1 %126, label %127, label %133

127:                                              ; preds = %125
  %128 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %123, i32 noundef signext %122, i32 noundef signext %121)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %347, label %130

130:                                              ; preds = %127
  %131 = load i64, ptr %70, align 8, !tbaa !49
  %132 = load i32, ptr %71, align 8, !tbaa !50
  br label %133

133:                                              ; preds = %130, %125
  %134 = phi i32 [ %132, %130 ], [ %122, %125 ]
  %135 = phi i64 [ %131, %130 ], [ %123, %125 ]
  %136 = sub nsw i32 %134, %121
  %137 = zext nneg i32 %136 to i64
  %138 = ashr i64 %135, %137
  %139 = trunc i64 %138 to i32
  %140 = shl nsw i32 -1, %121
  %141 = xor i32 %140, -1
  %142 = and i32 %139, %141
  %143 = zext nneg i32 %121 to i64
  %144 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !27
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %133
  %148 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %143
  %149 = load i32, ptr %148, align 4, !tbaa !27
  %150 = add nsw i32 %149, %142
  br label %151

151:                                              ; preds = %147, %133, %120
  %152 = phi i32 [ 0, %120 ], [ %150, %147 ], [ %142, %133 ]
  %153 = phi i32 [ %122, %120 ], [ %136, %147 ], [ %136, %133 ]
  %154 = phi i64 [ %123, %120 ], [ %135, %147 ], [ %135, %133 ]
  %155 = getelementptr inbounds [10 x i32], ptr %72, i64 0, i64 %76
  %156 = load i32, ptr %155, align 4, !tbaa !27
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds [10 x i32], ptr %73, i64 0, i64 %76
  %160 = load i32, ptr %159, align 4, !tbaa !27
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !27
  %164 = add nsw i32 %163, %152
  store i32 %164, ptr %162, align 4, !tbaa !27
  %165 = trunc i32 %164 to i16
  store i16 %165, ptr %80, align 2, !tbaa !81
  br label %166

166:                                              ; preds = %158, %151
  %167 = getelementptr inbounds [10 x i32], ptr %74, i64 0, i64 %76
  %168 = load i32, ptr %167, align 4, !tbaa !27
  %169 = icmp eq i32 %168, 0
  %170 = getelementptr inbounds i8, ptr %84, i64 288
  %171 = getelementptr inbounds i8, ptr %84, i64 1312
  br i1 %169, label %261, label %172

172:                                              ; preds = %166, %255
  %173 = phi i64 [ %258, %255 ], [ %154, %166 ]
  %174 = phi i32 [ %257, %255 ], [ %153, %166 ]
  %175 = phi i32 [ %259, %255 ], [ 1, %166 ]
  %176 = icmp slt i32 %174, 8
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %173, i32 noundef signext %174, i32 noundef signext 0)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %347, label %180

180:                                              ; preds = %177
  %181 = load i64, ptr %70, align 8, !tbaa !49
  %182 = load i32, ptr %71, align 8, !tbaa !50
  %183 = icmp slt i32 %182, 8
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = call signext i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %181, i32 noundef signext %182, ptr noundef %84, i32 noundef signext 1)
  br label %203

186:                                              ; preds = %180, %172
  %187 = phi i32 [ %182, %180 ], [ %174, %172 ]
  %188 = phi i64 [ %181, %180 ], [ %173, %172 ]
  %189 = add nsw i32 %187, -8
  %190 = zext nneg i32 %189 to i64
  %191 = ashr i64 %188, %190
  %192 = and i64 %191, 255
  %193 = getelementptr inbounds [256 x i32], ptr %170, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !27
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %186
  %197 = sub nsw i32 %187, %194
  %198 = getelementptr inbounds [256 x i8], ptr %171, i64 0, i64 %192
  %199 = load i8, ptr %198, align 1, !tbaa !17
  %200 = zext i8 %199 to i32
  br label %209

201:                                              ; preds = %186
  %202 = call signext i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %188, i32 noundef signext %187, ptr noundef nonnull %84, i32 noundef signext 9)
  br label %203

203:                                              ; preds = %201, %184
  %204 = phi i32 [ %202, %201 ], [ %185, %184 ]
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %347, label %206

206:                                              ; preds = %203
  %207 = load i64, ptr %70, align 8, !tbaa !49
  %208 = load i32, ptr %71, align 8, !tbaa !50
  br label %209

209:                                              ; preds = %206, %196
  %210 = phi i32 [ %200, %196 ], [ %204, %206 ]
  %211 = phi i32 [ %197, %196 ], [ %208, %206 ]
  %212 = phi i64 [ %188, %196 ], [ %207, %206 ]
  %213 = lshr i32 %210, 4
  %214 = and i32 %210, 15
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %251, label %216

216:                                              ; preds = %209
  %217 = add nsw i32 %213, %175
  %218 = icmp slt i32 %211, %214
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %212, i32 noundef signext %211, i32 noundef signext %214)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %347, label %222

222:                                              ; preds = %219
  %223 = load i64, ptr %70, align 8, !tbaa !49
  %224 = load i32, ptr %71, align 8, !tbaa !50
  br label %225

225:                                              ; preds = %222, %216
  %226 = phi i32 [ %224, %222 ], [ %211, %216 ]
  %227 = phi i64 [ %223, %222 ], [ %212, %216 ]
  %228 = sub nsw i32 %226, %214
  %229 = zext nneg i32 %228 to i64
  %230 = ashr i64 %227, %229
  %231 = trunc i64 %230 to i32
  %232 = shl nsw i32 -1, %214
  %233 = xor i32 %232, -1
  %234 = and i32 %231, %233
  %235 = zext nneg i32 %214 to i64
  %236 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !27
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %225
  %240 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %235
  %241 = load i32, ptr %240, align 4, !tbaa !27
  %242 = add nsw i32 %241, %234
  br label %243

243:                                              ; preds = %225, %239
  %244 = phi i32 [ %242, %239 ], [ %234, %225 ]
  %245 = trunc i32 %244 to i16
  %246 = sext i32 %217 to i64
  %247 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !27
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [64 x i16], ptr %80, i64 0, i64 %249
  store i16 %245, ptr %250, align 2, !tbaa !81
  br label %255

251:                                              ; preds = %209
  %252 = icmp eq i32 %213, 15
  br i1 %252, label %253, label %325

253:                                              ; preds = %251
  %254 = add nsw i32 %175, 15
  br label %255

255:                                              ; preds = %243, %253
  %256 = phi i32 [ %217, %243 ], [ %254, %253 ]
  %257 = phi i32 [ %228, %243 ], [ %211, %253 ]
  %258 = phi i64 [ %227, %243 ], [ %212, %253 ]
  %259 = add nsw i32 %256, 1
  %260 = icmp slt i32 %256, 63
  br i1 %260, label %172, label %325, !llvm.loop !82

261:                                              ; preds = %166, %319
  %262 = phi i64 [ %321, %319 ], [ %154, %166 ]
  %263 = phi i32 [ %320, %319 ], [ %153, %166 ]
  %264 = phi i32 [ %323, %319 ], [ 1, %166 ]
  %265 = icmp slt i32 %263, 8
  br i1 %265, label %266, label %275

266:                                              ; preds = %261
  %267 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %262, i32 noundef signext %263, i32 noundef signext 0)
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %347, label %269

269:                                              ; preds = %266
  %270 = load i64, ptr %70, align 8, !tbaa !49
  %271 = load i32, ptr %71, align 8, !tbaa !50
  %272 = icmp slt i32 %271, 8
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = call signext i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %270, i32 noundef signext %271, ptr noundef %84, i32 noundef signext 1)
  br label %292

275:                                              ; preds = %269, %261
  %276 = phi i32 [ %271, %269 ], [ %263, %261 ]
  %277 = phi i64 [ %270, %269 ], [ %262, %261 ]
  %278 = add nsw i32 %276, -8
  %279 = zext nneg i32 %278 to i64
  %280 = ashr i64 %277, %279
  %281 = and i64 %280, 255
  %282 = getelementptr inbounds [256 x i32], ptr %170, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !27
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %275
  %286 = sub nsw i32 %276, %283
  %287 = getelementptr inbounds [256 x i8], ptr %171, i64 0, i64 %281
  %288 = load i8, ptr %287, align 1, !tbaa !17
  %289 = zext i8 %288 to i32
  br label %298

290:                                              ; preds = %275
  %291 = call signext i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %277, i32 noundef signext %276, ptr noundef nonnull %84, i32 noundef signext 9)
  br label %292

292:                                              ; preds = %290, %273
  %293 = phi i32 [ %291, %290 ], [ %274, %273 ]
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %347, label %295

295:                                              ; preds = %292
  %296 = load i64, ptr %70, align 8, !tbaa !49
  %297 = load i32, ptr %71, align 8, !tbaa !50
  br label %298

298:                                              ; preds = %295, %285
  %299 = phi i32 [ %289, %285 ], [ %293, %295 ]
  %300 = phi i32 [ %286, %285 ], [ %297, %295 ]
  %301 = phi i64 [ %277, %285 ], [ %296, %295 ]
  %302 = lshr i32 %299, 4
  %303 = and i32 %299, 15
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %317, label %305

305:                                              ; preds = %298
  %306 = icmp slt i32 %300, %303
  br i1 %306, label %307, label %313

307:                                              ; preds = %305
  %308 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %301, i32 noundef signext %300, i32 noundef signext %303)
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %347, label %310

310:                                              ; preds = %307
  %311 = load i64, ptr %70, align 8, !tbaa !49
  %312 = load i32, ptr %71, align 8, !tbaa !50
  br label %313

313:                                              ; preds = %310, %305
  %314 = phi i32 [ %312, %310 ], [ %300, %305 ]
  %315 = phi i64 [ %311, %310 ], [ %301, %305 ]
  %316 = sub nsw i32 %314, %303
  br label %319

317:                                              ; preds = %298
  %318 = icmp eq i32 %302, 15
  br i1 %318, label %319, label %325

319:                                              ; preds = %317, %313
  %320 = phi i32 [ %316, %313 ], [ %300, %317 ]
  %321 = phi i64 [ %315, %313 ], [ %301, %317 ]
  %322 = add nsw i32 %264, 1
  %323 = add nsw i32 %322, %302
  %324 = icmp slt i32 %323, 64
  br i1 %324, label %261, label %325, !llvm.loop !83

325:                                              ; preds = %255, %251, %319, %317
  %326 = phi i32 [ %320, %319 ], [ %300, %317 ], [ %257, %255 ], [ %211, %251 ]
  %327 = phi i64 [ %321, %319 ], [ %301, %317 ], [ %258, %255 ], [ %212, %251 ]
  %328 = add nuw nsw i64 %76, 1
  %329 = load i32, ptr %64, align 8, !tbaa !62
  %330 = sext i32 %329 to i64
  %331 = icmp slt i64 %328, %330
  br i1 %331, label %75, label %332, !llvm.loop !84

332:                                              ; preds = %325
  %333 = load ptr, ptr %3, align 8, !tbaa !35
  %334 = load ptr, ptr %53, align 8, !tbaa !40
  %335 = load i64, ptr %58, align 8, !tbaa !37
  br label %336

336:                                              ; preds = %332, %51
  %337 = phi i64 [ %57, %51 ], [ %335, %332 ]
  %338 = phi ptr [ %54, %51 ], [ %334, %332 ]
  %339 = phi ptr [ %55, %51 ], [ %333, %332 ]
  %340 = phi i32 [ %62, %51 ], [ %326, %332 ]
  %341 = phi i64 [ %60, %51 ], [ %327, %332 ]
  store ptr %339, ptr %338, align 8, !tbaa !43
  %342 = getelementptr inbounds i8, ptr %338, i64 8
  store i64 %337, ptr %342, align 8, !tbaa !44
  store i64 %341, ptr %59, align 8, !tbaa !71
  store i32 %340, ptr %61, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !80
  br label %343

343:                                              ; preds = %336, %47
  %344 = getelementptr inbounds i8, ptr %6, i64 56
  %345 = load i32, ptr %344, align 8, !tbaa !74
  %346 = add i32 %345, -1
  store i32 %346, ptr %344, align 8, !tbaa !74
  br label %347

347:                                              ; preds = %86, %114, %127, %177, %203, %219, %266, %292, %307, %14, %343
  %348 = phi i32 [ 1, %343 ], [ 0, %14 ], [ 0, %307 ], [ 0, %292 ], [ 0, %266 ], [ 0, %219 ], [ 0, %203 ], [ 0, %177 ], [ 0, %127 ], [ 0, %114 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #4
  ret i32 %348
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!7, !8, i64 0}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !11, i64 40}
!15 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!16 = !{!"long", !9, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!15, !8, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!7, !8, i64 8}
!21 = !{!22, !8, i64 0}
!22 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!23 = !{!24, !8, i64 280}
!24 = !{!"", !9, i64 0, !9, i64 144, !8, i64 280, !9, i64 288, !9, i64 1312}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!11, !11, i64 0}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = !{!16, !16, i64 0}
!31 = distinct !{!31, !26}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = !{!36, !8, i64 0}
!36 = !{!"", !8, i64 0, !16, i64 8, !16, i64 16, !11, i64 24, !8, i64 32}
!37 = !{!36, !16, i64 8}
!38 = !{!36, !8, i64 32}
!39 = !{!7, !11, i64 540}
!40 = !{!7, !8, i64 40}
!41 = !{!42, !8, i64 24}
!42 = !{!"jpeg_source_mgr", !8, i64 0, !16, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!43 = !{!42, !8, i64 0}
!44 = !{!42, !16, i64 8}
!45 = !{!7, !8, i64 592}
!46 = !{!47, !11, i64 16}
!47 = !{!"jpeg_entropy_decoder", !8, i64 0, !8, i64 8, !11, i64 16}
!48 = !{!15, !8, i64 8}
!49 = !{!36, !16, i64 16}
!50 = !{!36, !11, i64 24}
!51 = distinct !{!51, !26}
!52 = !{!53, !8, i64 0}
!53 = !{!"", !47, i64 0, !54, i64 24, !55, i64 40, !11, i64 56, !9, i64 64, !9, i64 96, !9, i64 128, !9, i64 208, !9, i64 288, !9, i64 328}
!54 = !{!"", !16, i64 0, !11, i64 8}
!55 = !{!"", !9, i64 0}
!56 = !{!53, !8, i64 8}
!57 = !{!7, !11, i64 524}
!58 = !{!7, !11, i64 528}
!59 = !{!7, !11, i64 532}
!60 = !{!7, !11, i64 536}
!61 = !{!7, !11, i64 432}
!62 = !{!7, !11, i64 480}
!63 = !{!64, !11, i64 20}
!64 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!65 = !{!64, !11, i64 24}
!66 = distinct !{!66, !26}
!67 = !{!64, !11, i64 48}
!68 = !{!64, !11, i64 36}
!69 = distinct !{!69, !26}
!70 = !{!53, !11, i64 32}
!71 = !{!53, !16, i64 24}
!72 = !{!53, !11, i64 16}
!73 = !{!7, !11, i64 368}
!74 = !{!53, !11, i64 56}
!75 = !{!7, !8, i64 584}
!76 = !{!77, !11, i64 36}
!77 = !{!"jpeg_marker_reader", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!78 = !{!77, !8, i64 16}
!79 = distinct !{!79, !26}
!80 = !{i64 0, i64 16, !17}
!81 = !{!13, !13, i64 0}
!82 = distinct !{!82, !26}
!83 = distinct !{!83, !26}
!84 = distinct !{!84, !26}
