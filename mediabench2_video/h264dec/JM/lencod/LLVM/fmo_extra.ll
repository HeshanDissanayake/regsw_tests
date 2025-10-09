; ModuleID = 'src/fmo.c'
source_filename = "src/fmo.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@MBAmap = dso_local local_unnamed_addr global ptr null, align 8
@MapUnitToSliceGroupMap = dso_local local_unnamed_addr global ptr null, align 8
@FirstMBInSlice = internal unnamed_addr global [8 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"MBAmap != NULL\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"src/fmo.c\00", align 1
@__PRETTY_FUNCTION__.FmoStartPicture = private unnamed_addr constant [22 x i8] c"int FmoStartPicture()\00", align 1
@img = external dso_local local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"mb < (int)img->PicSizeInMbs\00", align 1
@__PRETTY_FUNCTION__.FmoMB2SliceGroup = private unnamed_addr constant [26 x i8] c"int FmoMB2SliceGroup(int)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mb >= 0\00", align 1
@__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice = private unnamed_addr constant [38 x i8] c"void FmoSetLastMacroblockInSlice(int)\00", align 1
@PicSizeInMapUnits = dso_local local_unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"cannot allocated %d bytes for MBAmap, exit\0A\00", align 1

; Function Attrs: nounwind
define dso_local noundef signext i32 @FmoInit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) @FirstMBInSlice, i8 -1, i64 32, i1 false), !tbaa !6
  %4 = getelementptr inbounds i8, ptr %0, i64 90292
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = getelementptr inbounds i8, ptr %0, i64 90288
  %7 = load i32, ptr %6, align 8, !tbaa !16
  %8 = mul i32 %7, %5
  store i32 %8, ptr @PicSizeInMapUnits, align 4, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %1, i64 64
  %10 = load i32, ptr %9, align 8, !tbaa !17
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %1, i64 172
  %14 = load i32, ptr %13, align 4, !tbaa !19
  %15 = add i32 %14, 1
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef signext 500) #11
  br label %18

18:                                               ; preds = %17, %12, %3
  %19 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, ptr @PicSizeInMapUnits, align 4
  %24 = zext i32 %23 to i64
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #12
  store ptr %25, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %24)
  tail call void @exit(i32 noundef signext -1) #13
  unreachable

29:                                               ; preds = %22
  %30 = getelementptr inbounds i8, ptr %1, i64 60
  %31 = load i32, ptr %30, align 4, !tbaa !21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %25, i8 0, i64 %24, i1 false)
  br label %372

34:                                               ; preds = %29
  %35 = load i32, ptr %9, align 8, !tbaa !17
  switch i32 %35, label %370 [
    i32 0, label %36
    i32 1, label %79
    i32 2, label %103
    i32 3, label %164
    i32 4, label %277
    i32 5, label %306
    i32 6, label %355
  ]

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %1, i64 68
  br label %38

38:                                               ; preds = %78, %36
  %39 = phi i32 [ %23, %36 ], [ %69, %78 ]
  %40 = phi i32 [ 0, %36 ], [ %73, %78 ]
  %41 = icmp ult i32 %40, %39
  br i1 %41, label %42, label %372

42:                                               ; preds = %38, %68
  %43 = phi i32 [ %69, %68 ], [ %39, %38 ]
  %44 = phi i32 [ %73, %68 ], [ %40, %38 ]
  %45 = phi i32 [ %71, %68 ], [ 0, %38 ]
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i32], ptr %37, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !6
  %49 = trunc i32 %45 to i8
  %50 = zext i32 %44 to i64
  %51 = icmp ult i32 %44, %43
  br i1 %51, label %58, label %68

52:                                               ; preds = %58
  %53 = add nuw nsw i64 %59, 1
  %54 = add nuw nsw i64 %53, %50
  %55 = load i32, ptr @PicSizeInMapUnits, align 4
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %42, %52
  %59 = phi i64 [ %53, %52 ], [ 0, %42 ]
  %60 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %61 = getelementptr inbounds i8, ptr %60, i64 %59
  %62 = getelementptr inbounds i8, ptr %61, i64 %50
  store i8 %49, ptr %62, align 1, !tbaa !22
  %63 = load i32, ptr %47, align 4, !tbaa !6
  %64 = zext i32 %63 to i64
  %65 = icmp ult i64 %59, %64
  br i1 %65, label %52, label %66

66:                                               ; preds = %58
  %67 = load i32, ptr @PicSizeInMapUnits, align 4
  br label %68

68:                                               ; preds = %52, %66, %42
  %69 = phi i32 [ %67, %66 ], [ %43, %42 ], [ %55, %52 ]
  %70 = phi i32 [ %63, %66 ], [ %48, %42 ], [ %63, %52 ]
  %71 = add i32 %45, 1
  %72 = add i32 %44, 1
  %73 = add i32 %72, %70
  %74 = load i32, ptr %30, align 4, !tbaa !21
  %75 = icmp ule i32 %71, %74
  %76 = icmp ult i32 %73, %69
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %42, label %78

78:                                               ; preds = %68
  br i1 %76, label %38, label %372

79:                                               ; preds = %34
  %80 = icmp eq i32 %23, 0
  br i1 %80, label %372, label %81

81:                                               ; preds = %79, %81
  %82 = phi i64 [ %99, %81 ], [ 0, %79 ]
  %83 = load i32, ptr %6, align 8, !tbaa !16
  %84 = trunc nuw i64 %82 to i32
  %85 = freeze i32 %84
  %86 = freeze i32 %83
  %87 = udiv i32 %85, %86
  %88 = mul i32 %87, %86
  %89 = sub i32 %85, %88
  %90 = load i32, ptr %30, align 4, !tbaa !21
  %91 = add i32 %90, 1
  %92 = mul i32 %91, %87
  %93 = lshr i32 %92, 1
  %94 = add i32 %93, %89
  %95 = urem i32 %94, %91
  %96 = trunc i32 %95 to i8
  %97 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %98 = getelementptr inbounds i8, ptr %97, i64 %82
  store i8 %96, ptr %98, align 1, !tbaa !22
  %99 = add nuw nsw i64 %82, 1
  %100 = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !6
  %101 = zext i32 %100 to i64
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %81, label %372

103:                                              ; preds = %34
  %104 = icmp eq i32 %23, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %103, %105
  %106 = phi i64 [ %111, %105 ], [ 0, %103 ]
  %107 = load i32, ptr %30, align 4, !tbaa !21
  %108 = trunc i32 %107 to i8
  %109 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %110 = getelementptr inbounds i8, ptr %109, i64 %106
  store i8 %108, ptr %110, align 1, !tbaa !22
  %111 = add nuw nsw i64 %106, 1
  %112 = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !6
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %105, label %115

115:                                              ; preds = %105
  %116 = load i32, ptr %30, align 4, !tbaa !21
  br label %117

117:                                              ; preds = %115, %103
  %118 = phi i32 [ %116, %115 ], [ %31, %103 ]
  %119 = add i32 %118, -1
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %121, label %372

121:                                              ; preds = %117
  %122 = getelementptr inbounds i8, ptr %1, i64 100
  %123 = getelementptr inbounds i8, ptr %1, i64 132
  %124 = zext nneg i32 %119 to i64
  br label %128

125:                                              ; preds = %161, %128
  %126 = add nsw i64 %129, -1
  %127 = icmp sgt i64 %129, 0
  br i1 %127, label %128, label %372

128:                                              ; preds = %125, %121
  %129 = phi i64 [ %124, %121 ], [ %126, %125 ]
  %130 = getelementptr inbounds [8 x i32], ptr %122, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !6
  %132 = load i32, ptr %6, align 8, !tbaa !16
  %133 = freeze i32 %131
  %134 = freeze i32 %132
  %135 = udiv i32 %133, %134
  %136 = mul i32 %135, %134
  %137 = sub i32 %133, %136
  %138 = getelementptr inbounds [8 x i32], ptr %123, i64 0, i64 %129
  %139 = load i32, ptr %138, align 4, !tbaa !6
  %140 = freeze i32 %139
  %141 = freeze i32 %132
  %142 = udiv i32 %140, %141
  %143 = mul i32 %142, %141
  %144 = sub i32 %140, %143
  %145 = icmp ugt i32 %135, %142
  br i1 %145, label %125, label %146

146:                                              ; preds = %128
  %147 = icmp ugt i32 %137, %144
  %148 = trunc i64 %129 to i8
  br label %149

149:                                              ; preds = %161, %146
  %150 = phi i32 [ %135, %146 ], [ %162, %161 ]
  br i1 %147, label %161, label %151

151:                                              ; preds = %149, %151
  %152 = phi i32 [ %159, %151 ], [ %137, %149 ]
  %153 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %154 = load i32, ptr %6, align 8, !tbaa !16
  %155 = mul i32 %154, %150
  %156 = add i32 %155, %152
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %153, i64 %157
  store i8 %148, ptr %158, align 1, !tbaa !22
  %159 = add i32 %152, 1
  %160 = icmp ugt i32 %159, %144
  br i1 %160, label %161, label %151

161:                                              ; preds = %151, %149
  %162 = add i32 %150, 1
  %163 = icmp ugt i32 %162, %142
  br i1 %163, label %125, label %149

164:                                              ; preds = %34
  %165 = getelementptr inbounds i8, ptr %1, i64 168
  %166 = load i32, ptr %165, align 8, !tbaa !23
  %167 = add i32 %166, 1
  %168 = getelementptr inbounds i8, ptr %0, i64 90476
  %169 = load i32, ptr %168, align 4, !tbaa !24
  %170 = mul i32 %167, %169
  %171 = tail call i32 @llvm.umin.i32(i32 %170, i32 %23)
  %172 = icmp eq i32 %23, 0
  br i1 %172, label %372, label %173

173:                                              ; preds = %164, %173
  %174 = phi i64 [ %177, %173 ], [ 0, %164 ]
  %175 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %176 = getelementptr inbounds i8, ptr %175, i64 %174
  store i8 2, ptr %176, align 1, !tbaa !22
  %177 = add nuw nsw i64 %174, 1
  %178 = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !6
  %179 = zext i32 %178 to i64
  %180 = icmp ult i64 %177, %179
  br i1 %180, label %173, label %181

181:                                              ; preds = %173
  %182 = icmp eq i32 %178, 0
  %183 = getelementptr inbounds i8, ptr %1, i64 164
  br i1 %182, label %372, label %184

184:                                              ; preds = %181
  %185 = load i32, ptr %183, align 4, !tbaa !25
  %186 = add i32 %185, -1
  %187 = load i32, ptr %4, align 4, !tbaa !10
  %188 = sub i32 %187, %185
  %189 = lshr i32 %188, 1
  %190 = load i32, ptr %6, align 8, !tbaa !16
  %191 = sub i32 %190, %185
  %192 = lshr i32 %191, 1
  %193 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  br label %194

194:                                              ; preds = %265, %184
  %195 = phi ptr [ %218, %265 ], [ %193, %184 ]
  %196 = phi i32 [ %274, %265 ], [ 0, %184 ]
  %197 = phi i32 [ %273, %265 ], [ %185, %184 ]
  %198 = phi i32 [ %272, %265 ], [ %186, %184 ]
  %199 = phi i32 [ %271, %265 ], [ %189, %184 ]
  %200 = phi i32 [ %270, %265 ], [ %192, %184 ]
  %201 = phi i32 [ %269, %265 ], [ %189, %184 ]
  %202 = phi i32 [ %268, %265 ], [ %192, %184 ]
  %203 = phi i32 [ %267, %265 ], [ %189, %184 ]
  %204 = phi i32 [ %266, %265 ], [ %192, %184 ]
  %205 = load i32, ptr %6, align 8, !tbaa !16
  %206 = mul i32 %205, %199
  %207 = add i32 %206, %200
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i8, ptr %195, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !22
  %211 = icmp eq i8 %210, 2
  %212 = zext i1 %211 to i32
  br i1 %211, label %213, label %217

213:                                              ; preds = %194
  %214 = icmp uge i32 %196, %171
  %215 = zext i1 %214 to i8
  store i8 %215, ptr %209, align 1, !tbaa !22
  %216 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  br label %217

217:                                              ; preds = %213, %194
  %218 = phi ptr [ %216, %213 ], [ %195, %194 ]
  %219 = icmp eq i32 %198, -1
  %220 = icmp eq i32 %200, %204
  %221 = select i1 %219, i1 %220, i1 false
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = tail call i32 @llvm.smax.i32(i32 %200, i32 1)
  %224 = add nsw i32 %223, -1
  %225 = load i32, ptr %183, align 4, !tbaa !25
  %226 = shl i32 %225, 1
  %227 = add i32 %226, -1
  br label %265

228:                                              ; preds = %217
  %229 = icmp eq i32 %198, 1
  %230 = icmp eq i32 %200, %202
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %232, label %240

232:                                              ; preds = %228
  %233 = add nsw i32 %200, 1
  %234 = load i32, ptr %6, align 8, !tbaa !16
  %235 = add nsw i32 %234, -1
  %236 = tail call i32 @llvm.smin.i32(i32 %233, i32 %235)
  %237 = load i32, ptr %183, align 4, !tbaa !25
  %238 = shl i32 %237, 1
  %239 = sub i32 1, %238
  br label %265

240:                                              ; preds = %228
  %241 = icmp eq i32 %197, -1
  %242 = icmp eq i32 %199, %203
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = tail call i32 @llvm.smax.i32(i32 %199, i32 1)
  %246 = add nsw i32 %245, -1
  %247 = load i32, ptr %183, align 4, !tbaa !25
  %248 = shl i32 %247, 1
  %249 = sub i32 1, %248
  br label %265

250:                                              ; preds = %240
  %251 = icmp eq i32 %197, 1
  %252 = icmp eq i32 %199, %201
  %253 = select i1 %251, i1 %252, i1 false
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  %255 = add nsw i32 %199, 1
  %256 = load i32, ptr %4, align 4, !tbaa !10
  %257 = add nsw i32 %256, -1
  %258 = tail call i32 @llvm.smin.i32(i32 %255, i32 %257)
  %259 = load i32, ptr %183, align 4, !tbaa !25
  %260 = shl i32 %259, 1
  %261 = add i32 %260, -1
  br label %265

262:                                              ; preds = %250
  %263 = add nsw i32 %200, %198
  %264 = add nsw i32 %199, %197
  br label %265

265:                                              ; preds = %262, %254, %244, %232, %222
  %266 = phi i32 [ %224, %222 ], [ %204, %232 ], [ %204, %244 ], [ %204, %254 ], [ %204, %262 ]
  %267 = phi i32 [ %203, %222 ], [ %203, %232 ], [ %246, %244 ], [ %203, %254 ], [ %203, %262 ]
  %268 = phi i32 [ %202, %222 ], [ %236, %232 ], [ %202, %244 ], [ %202, %254 ], [ %202, %262 ]
  %269 = phi i32 [ %201, %222 ], [ %201, %232 ], [ %201, %244 ], [ %258, %254 ], [ %201, %262 ]
  %270 = phi i32 [ %224, %222 ], [ %236, %232 ], [ %200, %244 ], [ %200, %254 ], [ %263, %262 ]
  %271 = phi i32 [ %199, %222 ], [ %199, %232 ], [ %246, %244 ], [ %258, %254 ], [ %264, %262 ]
  %272 = phi i32 [ 0, %222 ], [ 0, %232 ], [ %249, %244 ], [ %261, %254 ], [ %198, %262 ]
  %273 = phi i32 [ %227, %222 ], [ %239, %232 ], [ 0, %244 ], [ 0, %254 ], [ %197, %262 ]
  %274 = add nuw i32 %196, %212
  %275 = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !6
  %276 = icmp ult i32 %274, %275
  br i1 %276, label %194, label %372

277:                                              ; preds = %34
  %278 = getelementptr inbounds i8, ptr %1, i64 164
  %279 = icmp eq i32 %23, 0
  br i1 %279, label %372, label %280

280:                                              ; preds = %277
  %281 = load i32, ptr %278, align 4, !tbaa !25
  %282 = icmp eq i32 %281, 0
  %283 = getelementptr inbounds i8, ptr %1, i64 168
  %284 = load i32, ptr %283, align 8, !tbaa !23
  %285 = add i32 %284, 1
  %286 = getelementptr inbounds i8, ptr %0, i64 90476
  %287 = load i32, ptr %286, align 4, !tbaa !24
  %288 = mul i32 %285, %287
  %289 = tail call i32 @llvm.umin.i32(i32 %288, i32 %23)
  %290 = sub i32 %23, %289
  %291 = select i1 %282, i32 %289, i32 %290
  %292 = zext i32 %291 to i64
  br label %293

293:                                              ; preds = %293, %280
  %294 = phi i64 [ 0, %280 ], [ %302, %293 ]
  %295 = icmp ult i64 %294, %292
  %296 = load i32, ptr %278, align 4, !tbaa !25
  %297 = trunc i32 %296 to i8
  %298 = sub i8 1, %297
  %299 = select i1 %295, i8 %297, i8 %298
  %300 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %301 = getelementptr inbounds i8, ptr %300, i64 %294
  store i8 %299, ptr %301, align 1, !tbaa !22
  %302 = add nuw nsw i64 %294, 1
  %303 = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !6
  %304 = zext i32 %303 to i64
  %305 = icmp ult i64 %302, %304
  br i1 %305, label %293, label %372

306:                                              ; preds = %34
  %307 = getelementptr inbounds i8, ptr %1, i64 168
  %308 = load i32, ptr %307, align 8, !tbaa !23
  %309 = add i32 %308, 1
  %310 = getelementptr inbounds i8, ptr %0, i64 90476
  %311 = load i32, ptr %310, align 4, !tbaa !24
  %312 = mul i32 %309, %311
  %313 = tail call i32 @llvm.umin.i32(i32 %312, i32 %23)
  %314 = getelementptr inbounds i8, ptr %1, i64 164
  %315 = load i32, ptr %314, align 4, !tbaa !25
  %316 = icmp eq i32 %315, 0
  %317 = sub i32 %23, %313
  %318 = select i1 %316, i32 %313, i32 %317
  %319 = load i32, ptr %6, align 8, !tbaa !16
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %372, label %321

321:                                              ; preds = %306
  %322 = load i32, ptr %4, align 4, !tbaa !10
  br label %323

323:                                              ; preds = %349, %321
  %324 = phi i32 [ %319, %321 ], [ %350, %349 ]
  %325 = phi i32 [ %322, %321 ], [ %351, %349 ]
  %326 = phi i32 [ 0, %321 ], [ %352, %349 ]
  %327 = phi i32 [ 0, %321 ], [ %353, %349 ]
  %328 = icmp eq i32 %325, 0
  br i1 %328, label %349, label %329

329:                                              ; preds = %323, %329
  %330 = phi i32 [ %332, %329 ], [ %326, %323 ]
  %331 = phi i32 [ %344, %329 ], [ 0, %323 ]
  %332 = add i32 %330, 1
  %333 = icmp ult i32 %330, %318
  %334 = load i32, ptr %314, align 4, !tbaa !25
  %335 = trunc i32 %334 to i8
  %336 = sub i8 1, %335
  %337 = select i1 %333, i8 %335, i8 %336
  %338 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %339 = load i32, ptr %6, align 8, !tbaa !16
  %340 = mul i32 %339, %331
  %341 = add i32 %340, %327
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %338, i64 %342
  store i8 %337, ptr %343, align 1, !tbaa !22
  %344 = add nuw i32 %331, 1
  %345 = load i32, ptr %4, align 4, !tbaa !10
  %346 = icmp ult i32 %344, %345
  br i1 %346, label %329, label %347

347:                                              ; preds = %329
  %348 = load i32, ptr %6, align 8, !tbaa !16
  br label %349

349:                                              ; preds = %347, %323
  %350 = phi i32 [ %324, %323 ], [ %348, %347 ]
  %351 = phi i32 [ 0, %323 ], [ %345, %347 ]
  %352 = phi i32 [ %326, %323 ], [ %332, %347 ]
  %353 = add nuw i32 %327, 1
  %354 = icmp ult i32 %353, %350
  br i1 %354, label %323, label %372

355:                                              ; preds = %34
  %356 = icmp eq i32 %23, 0
  br i1 %356, label %372, label %357

357:                                              ; preds = %355
  %358 = getelementptr inbounds i8, ptr %1, i64 176
  br label %359

359:                                              ; preds = %359, %357
  %360 = phi i64 [ 0, %357 ], [ %366, %359 ]
  %361 = load ptr, ptr %358, align 8, !tbaa !26
  %362 = getelementptr inbounds i8, ptr %361, i64 %360
  %363 = load i8, ptr %362, align 1, !tbaa !22
  %364 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %365 = getelementptr inbounds i8, ptr %364, i64 %360
  store i8 %363, ptr %365, align 1, !tbaa !22
  %366 = add nuw nsw i64 %360, 1
  %367 = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !6
  %368 = zext i32 %367 to i64
  %369 = icmp ult i64 %366, %368
  br i1 %369, label %359, label %372

370:                                              ; preds = %34
  %371 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef signext %35)
  tail call void @exit(i32 noundef signext -1) #13
  unreachable

372:                                              ; preds = %359, %349, %293, %265, %125, %81, %38, %78, %33, %79, %117, %164, %181, %277, %306, %355
  %373 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %374 = icmp eq ptr %373, null
  br i1 %374, label %376, label %375

375:                                              ; preds = %372
  tail call void @free(ptr noundef nonnull %373) #11
  br label %376

376:                                              ; preds = %375, %372
  %377 = getelementptr inbounds i8, ptr %0, i64 90304
  %378 = load i32, ptr %377, align 8, !tbaa !27
  %379 = zext i32 %378 to i64
  %380 = tail call noalias ptr @malloc(i64 noundef %379) #12
  store ptr %380, ptr @MBAmap, align 8, !tbaa !20
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %384

382:                                              ; preds = %376
  %383 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %379)
  tail call void @exit(i32 noundef signext -1) #13
  unreachable

384:                                              ; preds = %376
  %385 = getelementptr inbounds i8, ptr %2, i64 1148
  %386 = load i32, ptr %385, align 4, !tbaa !28
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %384
  %389 = getelementptr inbounds i8, ptr %0, i64 90264
  %390 = load i32, ptr %389, align 8, !tbaa !32
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %405, label %392

392:                                              ; preds = %388, %384
  %393 = icmp eq i32 %378, 0
  br i1 %393, label %443, label %394

394:                                              ; preds = %392, %394
  %395 = phi i64 [ %401, %394 ], [ 0, %392 ]
  %396 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %397 = getelementptr inbounds i8, ptr %396, i64 %395
  %398 = load i8, ptr %397, align 1, !tbaa !22
  %399 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %400 = getelementptr inbounds i8, ptr %399, i64 %395
  store i8 %398, ptr %400, align 1, !tbaa !22
  %401 = add nuw nsw i64 %395, 1
  %402 = load i32, ptr %377, align 8, !tbaa !27
  %403 = zext i32 %402 to i64
  %404 = icmp ult i64 %401, %403
  br i1 %404, label %394, label %443

405:                                              ; preds = %388
  %406 = getelementptr inbounds i8, ptr %2, i64 1152
  %407 = load i32, ptr %406, align 4, !tbaa !33
  %408 = icmp eq i32 %407, 0
  %409 = icmp eq i32 %378, 0
  br i1 %408, label %411, label %410

410:                                              ; preds = %405
  br i1 %409, label %443, label %412

411:                                              ; preds = %405
  br i1 %409, label %443, label %424

412:                                              ; preds = %410, %412
  %413 = phi i64 [ %420, %412 ], [ 0, %410 ]
  %414 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %415 = lshr i64 %413, 1
  %416 = getelementptr inbounds i8, ptr %414, i64 %415
  %417 = load i8, ptr %416, align 1, !tbaa !22
  %418 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %419 = getelementptr inbounds i8, ptr %418, i64 %413
  store i8 %417, ptr %419, align 1, !tbaa !22
  %420 = add nuw nsw i64 %413, 1
  %421 = load i32, ptr %377, align 8, !tbaa !27
  %422 = zext i32 %421 to i64
  %423 = icmp ult i64 %420, %422
  br i1 %423, label %412, label %443

424:                                              ; preds = %411, %424
  %425 = phi i64 [ %439, %424 ], [ 0, %411 ]
  %426 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %427 = load i32, ptr %6, align 8, !tbaa !16
  %428 = shl i32 %427, 1
  %429 = trunc nuw i64 %425 to i32
  %430 = udiv i32 %429, %428
  %431 = mul i32 %430, %427
  %432 = urem i32 %429, %427
  %433 = add i32 %431, %432
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds i8, ptr %426, i64 %434
  %436 = load i8, ptr %435, align 1, !tbaa !22
  %437 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %438 = getelementptr inbounds i8, ptr %437, i64 %425
  store i8 %436, ptr %438, align 1, !tbaa !22
  %439 = add nuw nsw i64 %425, 1
  %440 = load i32, ptr %377, align 8, !tbaa !27
  %441 = zext i32 %440 to i64
  %442 = icmp ult i64 %439, %441
  br i1 %442, label %424, label %443

443:                                              ; preds = %394, %412, %424, %392, %410, %411
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @FmoUninit() local_unnamed_addr #1 {
  %1 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #11
  store ptr null, ptr @MBAmap, align 8, !tbaa !20
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #11
  store ptr null, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !20
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local noundef signext i32 @FmoStartPicture() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @img, align 8, !tbaa !20
  %5 = getelementptr inbounds i8, ptr %4, i64 90304
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %7 = icmp sgt i32 %6, 0
  %8 = zext nneg i32 %6 to i64
  br i1 %7, label %11, label %9

9:                                                ; preds = %3
  store i32 -1, ptr @FirstMBInSlice, align 4, !tbaa !6
  br label %33

10:                                               ; preds = %0
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 561, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoStartPicture) #13
  unreachable

11:                                               ; preds = %3, %16
  %12 = phi i64 [ %17, %16 ], [ 0, %3 ]
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = add nuw nsw i64 %12, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %21, label %11

19:                                               ; preds = %11
  %20 = trunc nuw nsw i64 %12 to i32
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi i32 [ %20, %19 ], [ -1, %16 ]
  store i32 %22, ptr @FirstMBInSlice, align 4, !tbaa !6
  br i1 %7, label %23, label %33

23:                                               ; preds = %21, %28
  %24 = phi i64 [ %29, %28 ], [ 0, %21 ]
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !22
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %8
  br i1 %30, label %34, label %23

31:                                               ; preds = %23
  %32 = trunc nuw nsw i64 %24 to i32
  br label %34

33:                                               ; preds = %9, %21
  store i32 -1, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 4), align 4, !tbaa !6
  br label %46

34:                                               ; preds = %28, %31
  %35 = phi i32 [ %32, %31 ], [ -1, %28 ]
  store i32 %35, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 4), align 4, !tbaa !6
  br i1 %7, label %36, label %46

36:                                               ; preds = %34, %41
  %37 = phi i64 [ %42, %41 ], [ 0, %34 ]
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !22
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = add nuw nsw i64 %37, 1
  %43 = icmp eq i64 %42, %8
  br i1 %43, label %47, label %36

44:                                               ; preds = %36
  %45 = trunc nuw nsw i64 %37 to i32
  br label %47

46:                                               ; preds = %33, %34
  store i32 -1, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 8), align 4, !tbaa !6
  br label %59

47:                                               ; preds = %41, %44
  %48 = phi i32 [ %45, %44 ], [ -1, %41 ]
  store i32 %48, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 8), align 4, !tbaa !6
  br i1 %7, label %49, label %59

49:                                               ; preds = %47, %54
  %50 = phi i64 [ %55, %54 ], [ 0, %47 ]
  %51 = getelementptr inbounds i8, ptr %1, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !22
  %53 = icmp eq i8 %52, 3
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = add nuw nsw i64 %50, 1
  %56 = icmp eq i64 %55, %8
  br i1 %56, label %60, label %49

57:                                               ; preds = %49
  %58 = trunc nuw nsw i64 %50 to i32
  br label %60

59:                                               ; preds = %46, %47
  store i32 -1, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 12), align 4, !tbaa !6
  br label %72

60:                                               ; preds = %54, %57
  %61 = phi i32 [ %58, %57 ], [ -1, %54 ]
  store i32 %61, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 12), align 4, !tbaa !6
  br i1 %7, label %62, label %72

62:                                               ; preds = %60, %67
  %63 = phi i64 [ %68, %67 ], [ 0, %60 ]
  %64 = getelementptr inbounds i8, ptr %1, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !22
  %66 = icmp eq i8 %65, 4
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = add nuw nsw i64 %63, 1
  %69 = icmp eq i64 %68, %8
  br i1 %69, label %73, label %62

70:                                               ; preds = %62
  %71 = trunc nuw nsw i64 %63 to i32
  br label %73

72:                                               ; preds = %59, %60
  store i32 -1, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 16), align 4, !tbaa !6
  br label %85

73:                                               ; preds = %67, %70
  %74 = phi i32 [ %71, %70 ], [ -1, %67 ]
  store i32 %74, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 16), align 4, !tbaa !6
  br i1 %7, label %75, label %85

75:                                               ; preds = %73, %80
  %76 = phi i64 [ %81, %80 ], [ 0, %73 ]
  %77 = getelementptr inbounds i8, ptr %1, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !22
  %79 = icmp eq i8 %78, 5
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, %8
  br i1 %82, label %86, label %75

83:                                               ; preds = %75
  %84 = trunc nuw nsw i64 %76 to i32
  br label %86

85:                                               ; preds = %72, %73
  store i32 -1, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 20), align 4, !tbaa !6
  br label %98

86:                                               ; preds = %80, %83
  %87 = phi i32 [ %84, %83 ], [ -1, %80 ]
  store i32 %87, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 20), align 4, !tbaa !6
  br i1 %7, label %88, label %98

88:                                               ; preds = %86, %93
  %89 = phi i64 [ %94, %93 ], [ 0, %86 ]
  %90 = getelementptr inbounds i8, ptr %1, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !22
  %92 = icmp eq i8 %91, 6
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = add nuw nsw i64 %89, 1
  %95 = icmp eq i64 %94, %8
  br i1 %95, label %99, label %88

96:                                               ; preds = %88
  %97 = trunc nuw nsw i64 %89 to i32
  br label %99

98:                                               ; preds = %85, %86
  store i32 -1, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 24), align 4, !tbaa !6
  br label %111

99:                                               ; preds = %93, %96
  %100 = phi i32 [ %97, %96 ], [ -1, %93 ]
  store i32 %100, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 24), align 4, !tbaa !6
  br i1 %7, label %101, label %111

101:                                              ; preds = %99, %106
  %102 = phi i64 [ %107, %106 ], [ 0, %99 ]
  %103 = getelementptr inbounds i8, ptr %1, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !22
  %105 = icmp eq i8 %104, 7
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = add nuw nsw i64 %102, 1
  %108 = icmp eq i64 %107, %8
  br i1 %108, label %111, label %101

109:                                              ; preds = %101
  %110 = trunc nuw nsw i64 %102 to i32
  br label %111

111:                                              ; preds = %106, %98, %109, %99
  %112 = phi i32 [ -1, %99 ], [ %110, %109 ], [ -1, %98 ], [ -1, %106 ]
  store i32 %112, ptr getelementptr inbounds (i8, ptr @FirstMBInSlice, i64 28), align 4, !tbaa !6
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @FmoGetFirstMBOfSliceGroup(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !20
  %3 = getelementptr inbounds i8, ptr %2, i64 90304
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = zext nneg i32 %4 to i64
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !22
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %21, label %18

17:                                               ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 599, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

18:                                               ; preds = %11
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %23, label %11

21:                                               ; preds = %11
  %22 = trunc nuw nsw i64 %12 to i32
  br label %23

23:                                               ; preds = %18, %21, %1
  %24 = phi i32 [ -1, %1 ], [ %22, %21 ], [ -1, %18 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef signext i32 @FmoEndPicture() local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 256) i32 @FmoMB2SliceGroup(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !20
  %3 = getelementptr inbounds i8, ptr %2, i64 90304
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef signext 598, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

7:                                                ; preds = %1
  %8 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 599, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

11:                                               ; preds = %7
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds i8, ptr %8, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !22
  %15 = zext i8 %14 to i32
  ret i32 %15
}

; Function Attrs: nounwind
define dso_local signext range(i32 -2147483647, -2147483648) i32 @FmoGetNextMBNr(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !20
  %3 = getelementptr inbounds i8, ptr %2, i64 90304
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef signext 598, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

7:                                                ; preds = %1
  %8 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 599, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

11:                                               ; preds = %7
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds i8, ptr %8, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !22
  %15 = add nsw i32 %4, -1
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %20, %11
  %18 = phi i64 [ %21, %20 ], [ %12, %11 ]
  %19 = icmp eq i64 %18, %16
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = add nsw i64 %18, 1
  %22 = getelementptr inbounds i8, ptr %8, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !22
  %24 = icmp eq i8 %14, %23
  br i1 %24, label %25, label %17

25:                                               ; preds = %20
  %26 = trunc nsw i64 %21 to i32
  br label %27

27:                                               ; preds = %17, %25
  %28 = phi i32 [ %26, %25 ], [ -1, %17 ]
  ret i32 %28
}

; Function Attrs: nounwind
define dso_local signext range(i32 -1, 2147483647) i32 @FmoGetPreviousMBNr(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !20
  %3 = getelementptr inbounds i8, ptr %2, i64 90304
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef signext 598, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

7:                                                ; preds = %1
  %8 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 599, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

11:                                               ; preds = %7
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds i8, ptr %8, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !22
  %15 = zext i32 %0 to i64
  br label %16

16:                                               ; preds = %20, %11
  %17 = phi i64 [ %26, %20 ], [ %15, %11 ]
  %18 = trunc nuw i64 %17 to i32
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = add nsw i32 %18, -1
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %8, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !22
  %25 = icmp eq i8 %14, %24
  %26 = add nsw i64 %17, -1
  br i1 %25, label %27, label %16

27:                                               ; preds = %16, %20
  %28 = phi i32 [ -1, %16 ], [ %21, %20 ]
  ret i32 %28
}

; Function Attrs: nounwind
define dso_local signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !20
  %3 = getelementptr inbounds i8, ptr %2, i64 90304
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = zext nneg i32 %4 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %20, %11 ]
  %13 = phi i32 [ -1, %9 ], [ %19, %11 ]
  %14 = getelementptr inbounds i8, ptr %7, i64 %12
  %15 = load i8, ptr %14, align 1, !tbaa !22
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, %0
  %18 = trunc nuw nsw i64 %12 to i32
  %19 = select i1 %17, i32 %18, i32 %13
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, %10
  br i1 %21, label %23, label %11

22:                                               ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 599, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

23:                                               ; preds = %11, %1
  %24 = phi i32 [ -1, %1 ], [ %19, %11 ]
  ret i32 %24
}

; Function Attrs: nounwind
define dso_local void @FmoSetLastMacroblockInSlice(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @img, align 8, !tbaa !20
  %3 = getelementptr inbounds i8, ptr %2, i64 90304
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef signext 598, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

7:                                                ; preds = %1
  %8 = load ptr, ptr @MBAmap, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 599, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoMB2SliceGroup) #13
  unreachable

11:                                               ; preds = %7
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds i8, ptr %8, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !22
  %15 = icmp sgt i32 %0, -1
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef signext 708, ptr noundef nonnull @__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice) #13
  unreachable

17:                                               ; preds = %11
  %18 = add nsw i32 %4, -1
  %19 = sext i32 %18 to i64
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %24, %23 ], [ %12, %17 ]
  %22 = icmp eq i64 %21, %19
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = add nuw nsw i64 %21, 1
  %25 = getelementptr inbounds i8, ptr %8, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !22
  %27 = icmp eq i8 %14, %26
  br i1 %27, label %28, label %20

28:                                               ; preds = %23
  %29 = trunc nsw i64 %24 to i32
  br label %30

30:                                               ; preds = %20, %28
  %31 = phi i32 [ %29, %28 ], [ -1, %20 ]
  %32 = zext i8 %14 to i64
  %33 = getelementptr inbounds [8 x i32], ptr @FirstMBInSlice, i64 0, i64 %32
  store i32 %31, ptr %33, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local signext i32 @FmoGetFirstMacroblockInSlice(i32 noundef signext %0) local_unnamed_addr #5 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [8 x i32], ptr @FirstMBInSlice, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local signext range(i32 0, 2) i32 @FmoSliceGroupCompletelyCoded(i32 noundef signext %0) local_unnamed_addr #5 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [8 x i32], ptr @FirstMBInSlice, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = lshr i32 %4, 31
  ret i32 %5
}

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }

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
!10 = !{!11, !7, i64 90292}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !12, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !13, i64 104, !13, i64 112, !7, i64 120, !13, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !13, i64 14136, !13, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !13, i64 31560, !13, i64 31568, !13, i64 31576, !8, i64 31584, !13, i64 89184, !13, i64 89192, !7, i64 89200, !7, i64 89204, !7, i64 89208, !7, i64 89212, !8, i64 89216, !7, i64 89280, !7, i64 89284, !7, i64 89288, !7, i64 89292, !7, i64 89296, !14, i64 89304, !7, i64 89312, !7, i64 89316, !7, i64 89320, !7, i64 89324, !13, i64 89328, !13, i64 89336, !13, i64 89344, !13, i64 89352, !8, i64 89360, !7, i64 89392, !7, i64 89396, !7, i64 89400, !7, i64 89404, !7, i64 89408, !7, i64 89412, !7, i64 89416, !7, i64 89420, !8, i64 89424, !7, i64 90192, !7, i64 90196, !7, i64 90200, !7, i64 90204, !7, i64 90208, !7, i64 90212, !7, i64 90216, !7, i64 90220, !7, i64 90224, !7, i64 90228, !7, i64 90232, !7, i64 90236, !7, i64 90240, !8, i64 90244, !7, i64 90248, !7, i64 90252, !8, i64 90256, !7, i64 90264, !7, i64 90268, !7, i64 90272, !7, i64 90276, !7, i64 90280, !7, i64 90284, !7, i64 90288, !7, i64 90292, !7, i64 90296, !7, i64 90300, !7, i64 90304, !7, i64 90308, !7, i64 90312, !7, i64 90316, !7, i64 90320, !7, i64 90324, !7, i64 90328, !13, i64 90336, !7, i64 90344, !7, i64 90348, !7, i64 90352, !7, i64 90356, !7, i64 90360, !14, i64 90368, !7, i64 90376, !7, i64 90380, !7, i64 90384, !7, i64 90388, !7, i64 90392, !7, i64 90396, !7, i64 90400, !13, i64 90408, !7, i64 90416, !7, i64 90420, !7, i64 90424, !7, i64 90428, !7, i64 90432, !7, i64 90436, !7, i64 90440, !7, i64 90444, !7, i64 90448, !7, i64 90452, !7, i64 90456, !7, i64 90460, !7, i64 90464, !7, i64 90468, !7, i64 90472, !7, i64 90476, !7, i64 90480, !7, i64 90484, !7, i64 90488, !7, i64 90492, !7, i64 90496, !7, i64 90500, !13, i64 90504, !13, i64 90512, !13, i64 90520, !7, i64 90528, !7, i64 90532, !7, i64 90536, !7, i64 90540, !7, i64 90544, !7, i64 90548, !7, i64 90552, !7, i64 90556, !7, i64 90560, !8, i64 90564, !7, i64 90572, !7, i64 90576, !7, i64 90580, !15, i64 90584, !7, i64 90588, !7, i64 90592}
!12 = !{!"float", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!11, !7, i64 90288}
!17 = !{!18, !7, i64 64}
!18 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !7, i64 56, !7, i64 60, !7, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !7, i64 164, !7, i64 168, !7, i64 172, !13, i64 176, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232}
!19 = !{!18, !7, i64 172}
!20 = !{!13, !13, i64 0}
!21 = !{!18, !7, i64 60}
!22 = !{!8, !8, i64 0}
!23 = !{!18, !7, i64 168}
!24 = !{!11, !7, i64 90476}
!25 = !{!18, !7, i64 164}
!26 = !{!18, !13, i64 176}
!27 = !{!11, !7, i64 90304}
!28 = !{!29, !7, i64 1148}
!29 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !8, i64 40, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !8, i64 108, !7, i64 1132, !7, i64 1136, !7, i64 1140, !7, i64 1144, !7, i64 1148, !7, i64 1152, !7, i64 1156, !7, i64 1160, !7, i64 1164, !7, i64 1168, !7, i64 1172, !7, i64 1176, !7, i64 1180, !30, i64 1184}
!30 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !31, i64 84, !7, i64 496, !31, i64 500, !7, i64 912, !7, i64 916, !7, i64 920, !7, i64 924, !7, i64 928, !7, i64 932, !7, i64 936, !7, i64 940, !7, i64 944}
!31 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408}
!32 = !{!11, !7, i64 90264}
!33 = !{!29, !7, i64 1152}
