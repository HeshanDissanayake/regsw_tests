; ModuleID = 'readpic.c'
source_filename = "readpic.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@inputtype = external dso_local local_unnamed_addr global i32, align 4
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@vertical_size = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errortext = external dso_local global [256 x i8], align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@width = external dso_local local_unnamed_addr global i32, align 4
@height = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@chrom_width = external dso_local local_unnamed_addr global i32, align 4
@chrom_height = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s.yuv\00", align 1
@read_ppm.u444 = internal unnamed_addr global ptr null, align 8
@read_ppm.v444 = internal unnamed_addr global ptr null, align 8
@read_ppm.u422 = internal unnamed_addr global ptr null, align 8
@read_ppm.v422 = internal unnamed_addr global ptr null, align 8
@read_ppm.coef = internal unnamed_addr constant [7 x [3 x double]] [[3 x double] [double 2.125000e-01, double 7.154000e-01, double 7.210000e-02], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 3.000000e-01, double 5.900000e-01, double 1.100000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.120000e-01, double 7.010000e-01, double 0x3FB645A1CAC08312]], align 8
@matrix_coefficients = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s.ppm\00", align 1
@mpeg1 = external dso_local local_unnamed_addr global i32, align 4
@clp = external dso_local local_unnamed_addr global ptr, align 8
@prog_frame = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @readframe(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 1
  %4 = alloca [128 x i8], align 1
  %5 = alloca [128 x i8], align 1
  %6 = load i32, ptr @inputtype, align 4, !tbaa !6
  switch i32 %6, label %923 [
    i32 0, label %7
    i32 1, label %238
    i32 2, label %463
  ]

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #8
  %8 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %9 = icmp ne i32 %8, 3
  %10 = load i32, ptr @horizontal_size, align 4
  %11 = zext i1 %9 to i32
  %12 = ashr i32 %10, %11
  %13 = icmp eq i32 %8, 1
  %14 = load i32, ptr @vertical_size, align 4
  %15 = zext i1 %13 to i32
  %16 = ashr i32 %14, %15
  %17 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0) #8
  %18 = call ptr @fopen(ptr noundef nonnull %5, ptr noundef nonnull @.str.1)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %5) #8
  call void @error(ptr noundef nonnull @errortext) #8
  br label %22

22:                                               ; preds = %20, %7
  %23 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22, %25
  %26 = phi i32 [ %35, %25 ], [ 0, %22 ]
  %27 = load ptr, ptr %1, align 8, !tbaa !10
  %28 = load i32, ptr @width, align 4, !tbaa !6
  %29 = mul nsw i32 %28, %26
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  %32 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %33 = sext i32 %32 to i64
  %34 = call i64 @fread(ptr noundef %31, i64 noundef 1, i64 noundef %33, ptr noundef %18)
  %35 = add nuw nsw i32 %26, 1
  %36 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %25, label %38

38:                                               ; preds = %25, %22
  %39 = call signext i32 @fclose(ptr noundef %18)
  %40 = load ptr, ptr %1, align 8, !tbaa !10
  %41 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %42 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %43 = load i32, ptr @width, align 4, !tbaa !6
  %44 = load i32, ptr @height, align 4, !tbaa !6
  %45 = icmp sgt i32 %42, 0
  %46 = icmp slt i32 %41, %43
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %38
  %49 = sext i32 %41 to i64
  %50 = sext i32 %43 to i64
  %51 = zext nneg i32 %42 to i64
  %52 = getelementptr i8, ptr %40, i64 %49
  %53 = getelementptr i8, ptr %52, i64 -1
  br label %54

54:                                               ; preds = %66, %48
  %55 = phi i64 [ 0, %48 ], [ %67, %66 ]
  %56 = mul i64 %55, %50
  %57 = getelementptr i8, ptr %53, i64 %56
  %58 = mul nsw i64 %55, %50
  %59 = getelementptr inbounds i8, ptr %40, i64 %58
  %60 = load i8, ptr %57, align 1
  br label %61

61:                                               ; preds = %61, %54
  %62 = phi i64 [ %49, %54 ], [ %64, %61 ]
  %63 = getelementptr i8, ptr %59, i64 %62
  store i8 %60, ptr %63, align 1, !tbaa !12
  %64 = add nsw i64 %62, 1
  %65 = icmp eq i64 %64, %50
  br i1 %65, label %66, label %61

66:                                               ; preds = %61
  %67 = add nuw nsw i64 %55, 1
  %68 = icmp eq i64 %67, %51
  br i1 %68, label %69, label %54

69:                                               ; preds = %66, %38
  %70 = icmp slt i32 %42, %44
  %71 = icmp sgt i32 %43, 0
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = zext nneg i32 %43 to i64
  %75 = sext i32 %42 to i64
  %76 = sext i32 %44 to i64
  br label %77

77:                                               ; preds = %89, %73
  %78 = phi i64 [ %75, %73 ], [ %90, %89 ]
  %79 = mul nsw i64 %78, %74
  %80 = getelementptr inbounds i8, ptr %40, i64 %79
  br label %81

81:                                               ; preds = %81, %77
  %82 = phi i64 [ 0, %77 ], [ %87, %81 ]
  %83 = sub nsw i64 %82, %74
  %84 = getelementptr inbounds i8, ptr %80, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !12
  %86 = getelementptr inbounds i8, ptr %80, i64 %82
  store i8 %85, ptr %86, align 1, !tbaa !12
  %87 = add nuw nsw i64 %82, 1
  %88 = icmp eq i64 %87, %74
  br i1 %88, label %89, label %81

89:                                               ; preds = %81
  %90 = add nsw i64 %78, 1
  %91 = icmp eq i64 %90, %76
  br i1 %91, label %92, label %77

92:                                               ; preds = %89, %69
  %93 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0) #8
  %94 = call ptr @fopen(ptr noundef nonnull %5, ptr noundef nonnull @.str.1)
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %5) #8
  call void @error(ptr noundef nonnull @errortext) #8
  br label %98

98:                                               ; preds = %96, %92
  %99 = icmp sgt i32 %16, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %98
  %101 = getelementptr inbounds i8, ptr %1, i64 8
  %102 = sext i32 %12 to i64
  br label %103

103:                                              ; preds = %103, %100
  %104 = phi i32 [ 0, %100 ], [ %111, %103 ]
  %105 = load ptr, ptr %101, align 8, !tbaa !10
  %106 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %107 = mul nsw i32 %106, %104
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %105, i64 %108
  %110 = call i64 @fread(ptr noundef %109, i64 noundef 1, i64 noundef %102, ptr noundef %94)
  %111 = add nuw nsw i32 %104, 1
  %112 = icmp eq i32 %111, %16
  br i1 %112, label %113, label %103

113:                                              ; preds = %103, %98
  %114 = call signext i32 @fclose(ptr noundef %94)
  %115 = getelementptr inbounds i8, ptr %1, i64 8
  %116 = load ptr, ptr %115, align 8, !tbaa !10
  %117 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %118 = load i32, ptr @chrom_height, align 4, !tbaa !6
  %119 = icmp slt i32 %12, %117
  %120 = and i1 %99, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %113
  %122 = sext i32 %12 to i64
  %123 = sext i32 %117 to i64
  %124 = zext nneg i32 %16 to i64
  %125 = getelementptr i8, ptr %116, i64 %122
  %126 = getelementptr i8, ptr %125, i64 -1
  br label %127

127:                                              ; preds = %139, %121
  %128 = phi i64 [ 0, %121 ], [ %140, %139 ]
  %129 = mul i64 %128, %123
  %130 = getelementptr i8, ptr %126, i64 %129
  %131 = mul nsw i64 %128, %123
  %132 = getelementptr inbounds i8, ptr %116, i64 %131
  %133 = load i8, ptr %130, align 1
  br label %134

134:                                              ; preds = %134, %127
  %135 = phi i64 [ %122, %127 ], [ %137, %134 ]
  %136 = getelementptr i8, ptr %132, i64 %135
  store i8 %133, ptr %136, align 1, !tbaa !12
  %137 = add nsw i64 %135, 1
  %138 = icmp eq i64 %137, %123
  br i1 %138, label %139, label %134

139:                                              ; preds = %134
  %140 = add nuw nsw i64 %128, 1
  %141 = icmp eq i64 %140, %124
  br i1 %141, label %142, label %127

142:                                              ; preds = %139, %113
  %143 = icmp slt i32 %16, %118
  %144 = icmp sgt i32 %117, 0
  %145 = and i1 %144, %143
  br i1 %145, label %146, label %165

146:                                              ; preds = %142
  %147 = zext nneg i32 %117 to i64
  %148 = sext i32 %16 to i64
  %149 = sext i32 %118 to i64
  br label %150

150:                                              ; preds = %162, %146
  %151 = phi i64 [ %148, %146 ], [ %163, %162 ]
  %152 = mul nsw i64 %151, %147
  %153 = getelementptr inbounds i8, ptr %116, i64 %152
  br label %154

154:                                              ; preds = %154, %150
  %155 = phi i64 [ 0, %150 ], [ %160, %154 ]
  %156 = sub nsw i64 %155, %147
  %157 = getelementptr inbounds i8, ptr %153, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !12
  %159 = getelementptr inbounds i8, ptr %153, i64 %155
  store i8 %158, ptr %159, align 1, !tbaa !12
  %160 = add nuw nsw i64 %155, 1
  %161 = icmp eq i64 %160, %147
  br i1 %161, label %162, label %154

162:                                              ; preds = %154
  %163 = add nsw i64 %151, 1
  %164 = icmp eq i64 %163, %149
  br i1 %164, label %165, label %150

165:                                              ; preds = %162, %142
  %166 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %0) #8
  %167 = call ptr @fopen(ptr noundef nonnull %5, ptr noundef nonnull @.str.1)
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %5) #8
  call void @error(ptr noundef nonnull @errortext) #8
  br label %171

171:                                              ; preds = %169, %165
  br i1 %99, label %172, label %185

172:                                              ; preds = %171
  %173 = getelementptr inbounds i8, ptr %1, i64 16
  %174 = sext i32 %12 to i64
  br label %175

175:                                              ; preds = %175, %172
  %176 = phi i32 [ 0, %172 ], [ %183, %175 ]
  %177 = load ptr, ptr %173, align 8, !tbaa !10
  %178 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %179 = mul nsw i32 %178, %176
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, ptr %177, i64 %180
  %182 = call i64 @fread(ptr noundef %181, i64 noundef 1, i64 noundef %174, ptr noundef %167)
  %183 = add nuw nsw i32 %176, 1
  %184 = icmp eq i32 %183, %16
  br i1 %184, label %185, label %175

185:                                              ; preds = %175, %171
  %186 = call signext i32 @fclose(ptr noundef %167)
  %187 = getelementptr inbounds i8, ptr %1, i64 16
  %188 = load ptr, ptr %187, align 8, !tbaa !10
  %189 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %190 = load i32, ptr @chrom_height, align 4, !tbaa !6
  %191 = icmp slt i32 %12, %189
  %192 = and i1 %99, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %185
  %194 = sext i32 %12 to i64
  %195 = sext i32 %189 to i64
  %196 = zext nneg i32 %16 to i64
  %197 = getelementptr i8, ptr %188, i64 %194
  %198 = getelementptr i8, ptr %197, i64 -1
  br label %199

199:                                              ; preds = %211, %193
  %200 = phi i64 [ 0, %193 ], [ %212, %211 ]
  %201 = mul i64 %200, %195
  %202 = getelementptr i8, ptr %198, i64 %201
  %203 = mul nsw i64 %200, %195
  %204 = getelementptr inbounds i8, ptr %188, i64 %203
  %205 = load i8, ptr %202, align 1
  br label %206

206:                                              ; preds = %206, %199
  %207 = phi i64 [ %194, %199 ], [ %209, %206 ]
  %208 = getelementptr i8, ptr %204, i64 %207
  store i8 %205, ptr %208, align 1, !tbaa !12
  %209 = add nsw i64 %207, 1
  %210 = icmp eq i64 %209, %195
  br i1 %210, label %211, label %206

211:                                              ; preds = %206
  %212 = add nuw nsw i64 %200, 1
  %213 = icmp eq i64 %212, %196
  br i1 %213, label %214, label %199

214:                                              ; preds = %211, %185
  %215 = icmp slt i32 %16, %190
  %216 = icmp sgt i32 %189, 0
  %217 = and i1 %216, %215
  br i1 %217, label %218, label %237

218:                                              ; preds = %214
  %219 = zext nneg i32 %189 to i64
  %220 = sext i32 %16 to i64
  %221 = sext i32 %190 to i64
  br label %222

222:                                              ; preds = %234, %218
  %223 = phi i64 [ %220, %218 ], [ %235, %234 ]
  %224 = mul nsw i64 %223, %219
  %225 = getelementptr inbounds i8, ptr %188, i64 %224
  br label %226

226:                                              ; preds = %226, %222
  %227 = phi i64 [ 0, %222 ], [ %232, %226 ]
  %228 = sub nsw i64 %227, %219
  %229 = getelementptr inbounds i8, ptr %225, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !12
  %231 = getelementptr inbounds i8, ptr %225, i64 %227
  store i8 %230, ptr %231, align 1, !tbaa !12
  %232 = add nuw nsw i64 %227, 1
  %233 = icmp eq i64 %232, %219
  br i1 %233, label %234, label %226

234:                                              ; preds = %226
  %235 = add nsw i64 %223, 1
  %236 = icmp eq i64 %235, %221
  br i1 %236, label %237, label %222

237:                                              ; preds = %234, %214
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #8
  br label %923

238:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8
  %239 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %240 = icmp ne i32 %239, 3
  %241 = load i32, ptr @horizontal_size, align 4
  %242 = zext i1 %240 to i32
  %243 = ashr i32 %241, %242
  %244 = icmp eq i32 %239, 1
  %245 = load i32, ptr @vertical_size, align 4
  %246 = zext i1 %244 to i32
  %247 = ashr i32 %245, %246
  %248 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %0) #8
  %249 = call ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.1)
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %238
  %252 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %4) #8
  call void @error(ptr noundef nonnull @errortext) #8
  br label %253

253:                                              ; preds = %251, %238
  %254 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %253, %256
  %257 = phi i32 [ %266, %256 ], [ 0, %253 ]
  %258 = load ptr, ptr %1, align 8, !tbaa !10
  %259 = load i32, ptr @width, align 4, !tbaa !6
  %260 = mul nsw i32 %259, %257
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, ptr %258, i64 %261
  %263 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %264 = sext i32 %263 to i64
  %265 = call i64 @fread(ptr noundef %262, i64 noundef 1, i64 noundef %264, ptr noundef %249)
  %266 = add nuw nsw i32 %257, 1
  %267 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %256, label %269

269:                                              ; preds = %256, %253
  %270 = phi i32 [ %254, %253 ], [ %267, %256 ]
  %271 = load ptr, ptr %1, align 8, !tbaa !10
  %272 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %273 = load i32, ptr @width, align 4, !tbaa !6
  %274 = load i32, ptr @height, align 4, !tbaa !6
  %275 = icmp sgt i32 %270, 0
  %276 = icmp slt i32 %272, %273
  %277 = and i1 %275, %276
  br i1 %277, label %278, label %299

278:                                              ; preds = %269
  %279 = sext i32 %272 to i64
  %280 = sext i32 %273 to i64
  %281 = zext nneg i32 %270 to i64
  %282 = getelementptr i8, ptr %271, i64 %279
  %283 = getelementptr i8, ptr %282, i64 -1
  br label %284

284:                                              ; preds = %296, %278
  %285 = phi i64 [ 0, %278 ], [ %297, %296 ]
  %286 = mul i64 %285, %280
  %287 = getelementptr i8, ptr %283, i64 %286
  %288 = mul nsw i64 %285, %280
  %289 = getelementptr inbounds i8, ptr %271, i64 %288
  %290 = load i8, ptr %287, align 1
  br label %291

291:                                              ; preds = %291, %284
  %292 = phi i64 [ %279, %284 ], [ %294, %291 ]
  %293 = getelementptr i8, ptr %289, i64 %292
  store i8 %290, ptr %293, align 1, !tbaa !12
  %294 = add nsw i64 %292, 1
  %295 = icmp eq i64 %294, %280
  br i1 %295, label %296, label %291

296:                                              ; preds = %291
  %297 = add nuw nsw i64 %285, 1
  %298 = icmp eq i64 %297, %281
  br i1 %298, label %299, label %284

299:                                              ; preds = %296, %269
  %300 = icmp slt i32 %270, %274
  %301 = icmp sgt i32 %273, 0
  %302 = and i1 %301, %300
  br i1 %302, label %303, label %322

303:                                              ; preds = %299
  %304 = zext nneg i32 %273 to i64
  %305 = sext i32 %270 to i64
  %306 = sext i32 %274 to i64
  br label %307

307:                                              ; preds = %319, %303
  %308 = phi i64 [ %305, %303 ], [ %320, %319 ]
  %309 = mul nsw i64 %308, %304
  %310 = getelementptr inbounds i8, ptr %271, i64 %309
  br label %311

311:                                              ; preds = %311, %307
  %312 = phi i64 [ 0, %307 ], [ %317, %311 ]
  %313 = sub nsw i64 %312, %304
  %314 = getelementptr inbounds i8, ptr %310, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !12
  %316 = getelementptr inbounds i8, ptr %310, i64 %312
  store i8 %315, ptr %316, align 1, !tbaa !12
  %317 = add nuw nsw i64 %312, 1
  %318 = icmp eq i64 %317, %304
  br i1 %318, label %319, label %311

319:                                              ; preds = %311
  %320 = add nsw i64 %308, 1
  %321 = icmp eq i64 %320, %306
  br i1 %321, label %322, label %307

322:                                              ; preds = %319, %299
  %323 = icmp sgt i32 %247, 0
  %324 = getelementptr inbounds i8, ptr %1, i64 8
  br i1 %323, label %329, label %325

325:                                              ; preds = %322
  %326 = load ptr, ptr %324, align 8, !tbaa !10
  %327 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %328 = load i32, ptr @chrom_height, align 4, !tbaa !6
  br label %366

329:                                              ; preds = %322
  %330 = sext i32 %243 to i64
  br label %331

331:                                              ; preds = %331, %329
  %332 = phi i32 [ 0, %329 ], [ %339, %331 ]
  %333 = load ptr, ptr %324, align 8, !tbaa !10
  %334 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %335 = mul nsw i32 %334, %332
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, ptr %333, i64 %336
  %338 = call i64 @fread(ptr noundef %337, i64 noundef 1, i64 noundef %330, ptr noundef %249)
  %339 = add nuw nsw i32 %332, 1
  %340 = icmp eq i32 %339, %247
  br i1 %340, label %341, label %331

341:                                              ; preds = %331
  %342 = load ptr, ptr %324, align 8, !tbaa !10
  %343 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %344 = load i32, ptr @chrom_height, align 4, !tbaa !6
  %345 = icmp slt i32 %243, %343
  br i1 %345, label %346, label %366

346:                                              ; preds = %341
  %347 = sext i32 %343 to i64
  %348 = zext nneg i32 %247 to i64
  %349 = getelementptr i8, ptr %342, i64 %330
  %350 = getelementptr i8, ptr %349, i64 -1
  br label %351

351:                                              ; preds = %363, %346
  %352 = phi i64 [ 0, %346 ], [ %364, %363 ]
  %353 = mul i64 %352, %347
  %354 = getelementptr i8, ptr %350, i64 %353
  %355 = mul nsw i64 %352, %347
  %356 = getelementptr inbounds i8, ptr %342, i64 %355
  %357 = load i8, ptr %354, align 1
  br label %358

358:                                              ; preds = %358, %351
  %359 = phi i64 [ %330, %351 ], [ %361, %358 ]
  %360 = getelementptr i8, ptr %356, i64 %359
  store i8 %357, ptr %360, align 1, !tbaa !12
  %361 = add nsw i64 %359, 1
  %362 = icmp eq i64 %361, %347
  br i1 %362, label %363, label %358

363:                                              ; preds = %358
  %364 = add nuw nsw i64 %352, 1
  %365 = icmp eq i64 %364, %348
  br i1 %365, label %366, label %351

366:                                              ; preds = %363, %341, %325
  %367 = phi i32 [ %328, %325 ], [ %344, %341 ], [ %344, %363 ]
  %368 = phi i32 [ %327, %325 ], [ %343, %341 ], [ %343, %363 ]
  %369 = phi ptr [ %326, %325 ], [ %342, %341 ], [ %342, %363 ]
  %370 = icmp slt i32 %247, %367
  %371 = icmp sgt i32 %368, 0
  %372 = and i1 %370, %371
  br i1 %372, label %373, label %392

373:                                              ; preds = %366
  %374 = zext nneg i32 %368 to i64
  %375 = sext i32 %247 to i64
  %376 = sext i32 %367 to i64
  br label %377

377:                                              ; preds = %389, %373
  %378 = phi i64 [ %375, %373 ], [ %390, %389 ]
  %379 = mul nsw i64 %378, %374
  %380 = getelementptr inbounds i8, ptr %369, i64 %379
  br label %381

381:                                              ; preds = %381, %377
  %382 = phi i64 [ 0, %377 ], [ %387, %381 ]
  %383 = sub nsw i64 %382, %374
  %384 = getelementptr inbounds i8, ptr %380, i64 %383
  %385 = load i8, ptr %384, align 1, !tbaa !12
  %386 = getelementptr inbounds i8, ptr %380, i64 %382
  store i8 %385, ptr %386, align 1, !tbaa !12
  %387 = add nuw nsw i64 %382, 1
  %388 = icmp eq i64 %387, %374
  br i1 %388, label %389, label %381

389:                                              ; preds = %381
  %390 = add nsw i64 %378, 1
  %391 = icmp eq i64 %390, %376
  br i1 %391, label %392, label %377

392:                                              ; preds = %389, %366
  %393 = getelementptr inbounds i8, ptr %1, i64 16
  br i1 %323, label %398, label %394

394:                                              ; preds = %392
  %395 = load ptr, ptr %393, align 8, !tbaa !10
  %396 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %397 = load i32, ptr @chrom_height, align 4, !tbaa !6
  br label %435

398:                                              ; preds = %392
  %399 = sext i32 %243 to i64
  br label %400

400:                                              ; preds = %400, %398
  %401 = phi i32 [ 0, %398 ], [ %408, %400 ]
  %402 = load ptr, ptr %393, align 8, !tbaa !10
  %403 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %404 = mul nsw i32 %403, %401
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %402, i64 %405
  %407 = call i64 @fread(ptr noundef %406, i64 noundef 1, i64 noundef %399, ptr noundef %249)
  %408 = add nuw nsw i32 %401, 1
  %409 = icmp eq i32 %408, %247
  br i1 %409, label %410, label %400

410:                                              ; preds = %400
  %411 = load ptr, ptr %393, align 8, !tbaa !10
  %412 = load i32, ptr @chrom_width, align 4, !tbaa !6
  %413 = load i32, ptr @chrom_height, align 4, !tbaa !6
  %414 = icmp slt i32 %243, %412
  br i1 %414, label %415, label %435

415:                                              ; preds = %410
  %416 = sext i32 %412 to i64
  %417 = zext nneg i32 %247 to i64
  %418 = getelementptr i8, ptr %411, i64 %399
  %419 = getelementptr i8, ptr %418, i64 -1
  br label %420

420:                                              ; preds = %432, %415
  %421 = phi i64 [ 0, %415 ], [ %433, %432 ]
  %422 = mul i64 %421, %416
  %423 = getelementptr i8, ptr %419, i64 %422
  %424 = mul nsw i64 %421, %416
  %425 = getelementptr inbounds i8, ptr %411, i64 %424
  %426 = load i8, ptr %423, align 1
  br label %427

427:                                              ; preds = %427, %420
  %428 = phi i64 [ %399, %420 ], [ %430, %427 ]
  %429 = getelementptr i8, ptr %425, i64 %428
  store i8 %426, ptr %429, align 1, !tbaa !12
  %430 = add nsw i64 %428, 1
  %431 = icmp eq i64 %430, %416
  br i1 %431, label %432, label %427

432:                                              ; preds = %427
  %433 = add nuw nsw i64 %421, 1
  %434 = icmp eq i64 %433, %417
  br i1 %434, label %435, label %420

435:                                              ; preds = %432, %410, %394
  %436 = phi i32 [ %397, %394 ], [ %413, %410 ], [ %413, %432 ]
  %437 = phi i32 [ %396, %394 ], [ %412, %410 ], [ %412, %432 ]
  %438 = phi ptr [ %395, %394 ], [ %411, %410 ], [ %411, %432 ]
  %439 = icmp slt i32 %247, %436
  %440 = icmp sgt i32 %437, 0
  %441 = and i1 %439, %440
  br i1 %441, label %442, label %461

442:                                              ; preds = %435
  %443 = zext nneg i32 %437 to i64
  %444 = sext i32 %247 to i64
  %445 = sext i32 %436 to i64
  br label %446

446:                                              ; preds = %458, %442
  %447 = phi i64 [ %444, %442 ], [ %459, %458 ]
  %448 = mul nsw i64 %447, %443
  %449 = getelementptr inbounds i8, ptr %438, i64 %448
  br label %450

450:                                              ; preds = %450, %446
  %451 = phi i64 [ 0, %446 ], [ %456, %450 ]
  %452 = sub nsw i64 %451, %443
  %453 = getelementptr inbounds i8, ptr %449, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !12
  %455 = getelementptr inbounds i8, ptr %449, i64 %451
  store i8 %454, ptr %455, align 1, !tbaa !12
  %456 = add nuw nsw i64 %451, 1
  %457 = icmp eq i64 %456, %443
  br i1 %457, label %458, label %450

458:                                              ; preds = %450
  %459 = add nsw i64 %447, 1
  %460 = icmp eq i64 %459, %445
  br i1 %460, label %461, label %446

461:                                              ; preds = %458, %435
  %462 = call signext i32 @fclose(ptr noundef %249)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  br label %923

463:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  %464 = load i32, ptr @matrix_coefficients, align 4, !tbaa !6
  %465 = icmp sgt i32 %464, 8
  %466 = add nsw i32 %464, -1
  %467 = select i1 %465, i32 2, i32 %466
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [7 x [3 x double]], ptr @read_ppm.coef, i64 0, i64 %468
  %470 = load double, ptr %469, align 8, !tbaa !13
  %471 = getelementptr inbounds i8, ptr %469, i64 8
  %472 = load double, ptr %471, align 8, !tbaa !13
  %473 = getelementptr inbounds i8, ptr %469, i64 16
  %474 = load double, ptr %473, align 8, !tbaa !13
  %475 = fsub double 1.000000e+00, %474
  %476 = fdiv double 5.000000e-01, %475
  %477 = fsub double 1.000000e+00, %470
  %478 = fdiv double 5.000000e-01, %477
  %479 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %480 = icmp eq i32 %479, 3
  br i1 %480, label %481, label %486

481:                                              ; preds = %463
  %482 = getelementptr inbounds i8, ptr %1, i64 8
  %483 = load ptr, ptr %482, align 8, !tbaa !10
  store ptr %483, ptr @read_ppm.u444, align 8, !tbaa !10
  %484 = getelementptr inbounds i8, ptr %1, i64 16
  %485 = load ptr, ptr %484, align 8, !tbaa !10
  store ptr %485, ptr @read_ppm.v444, align 8, !tbaa !10
  br label %528

486:                                              ; preds = %463
  %487 = load ptr, ptr @read_ppm.u444, align 8, !tbaa !10
  %488 = icmp eq ptr %487, null
  br i1 %488, label %489, label %528

489:                                              ; preds = %486
  %490 = load i32, ptr @width, align 4, !tbaa !6
  %491 = load i32, ptr @height, align 4, !tbaa !6
  %492 = mul nsw i32 %491, %490
  %493 = sext i32 %492 to i64
  %494 = tail call noalias ptr @malloc(i64 noundef %493) #9
  store ptr %494, ptr @read_ppm.u444, align 8, !tbaa !10
  %495 = icmp eq ptr %494, null
  br i1 %495, label %496, label %501

496:                                              ; preds = %489
  tail call void @error(ptr noundef nonnull @.str.6) #8
  %497 = load i32, ptr @width, align 4, !tbaa !6
  %498 = load i32, ptr @height, align 4, !tbaa !6
  %499 = mul nsw i32 %498, %497
  %500 = sext i32 %499 to i64
  br label %501

501:                                              ; preds = %496, %489
  %502 = phi i64 [ %500, %496 ], [ %493, %489 ]
  %503 = tail call noalias ptr @malloc(i64 noundef %502) #9
  store ptr %503, ptr @read_ppm.v444, align 8, !tbaa !10
  %504 = icmp eq ptr %503, null
  br i1 %504, label %505, label %506

505:                                              ; preds = %501
  tail call void @error(ptr noundef nonnull @.str.6) #8
  br label %506

506:                                              ; preds = %505, %501
  %507 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %508 = icmp eq i32 %507, 1
  br i1 %508, label %509, label %528

509:                                              ; preds = %506
  %510 = load i32, ptr @width, align 4, !tbaa !6
  %511 = ashr i32 %510, 1
  %512 = load i32, ptr @height, align 4, !tbaa !6
  %513 = mul nsw i32 %511, %512
  %514 = sext i32 %513 to i64
  %515 = tail call noalias ptr @malloc(i64 noundef %514) #9
  store ptr %515, ptr @read_ppm.u422, align 8, !tbaa !10
  %516 = icmp eq ptr %515, null
  br i1 %516, label %517, label %523

517:                                              ; preds = %509
  tail call void @error(ptr noundef nonnull @.str.6) #8
  %518 = load i32, ptr @width, align 4, !tbaa !6
  %519 = load i32, ptr @height, align 4, !tbaa !6
  %520 = ashr i32 %518, 1
  %521 = mul nsw i32 %520, %519
  %522 = sext i32 %521 to i64
  br label %523

523:                                              ; preds = %517, %509
  %524 = phi i64 [ %522, %517 ], [ %514, %509 ]
  %525 = tail call noalias ptr @malloc(i64 noundef %524) #9
  store ptr %525, ptr @read_ppm.v422, align 8, !tbaa !10
  %526 = icmp eq ptr %525, null
  br i1 %526, label %527, label %528

527:                                              ; preds = %523
  tail call void @error(ptr noundef nonnull @.str.6) #8
  br label %528

528:                                              ; preds = %527, %523, %506, %486, %481
  %529 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %0) #8
  %530 = call ptr @fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.1)
  %531 = icmp eq ptr %530, null
  br i1 %531, label %610, label %532

532:                                              ; preds = %528
  %533 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %534 = tail call signext i32 @getc(ptr noundef nonnull %530)
  br label %535

535:                                              ; preds = %546, %532
  %536 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %537 = and i32 %536, 255
  %538 = icmp eq i32 %537, 35
  br i1 %538, label %541, label %539

539:                                              ; preds = %535
  %540 = trunc i32 %536 to i8
  br label %544

541:                                              ; preds = %535, %541
  %542 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %543 = trunc i32 %542 to i8
  switch i8 %543, label %541 [
    i8 13, label %544
    i8 10, label %544
  ]

544:                                              ; preds = %541, %541, %539
  %545 = phi i8 [ %540, %539 ], [ %543, %541 ], [ %543, %541 ]
  switch i8 %545, label %547 [
    i8 32, label %546
    i8 13, label %546
    i8 10, label %546
    i8 9, label %546
  ]

546:                                              ; preds = %544, %544, %544, %544
  br label %535

547:                                              ; preds = %544, %556
  %548 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %549 = and i32 %548, 255
  %550 = icmp eq i32 %549, 35
  br i1 %550, label %553, label %551

551:                                              ; preds = %547
  %552 = trunc i32 %548 to i8
  br label %556

553:                                              ; preds = %547, %553
  %554 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %555 = trunc i32 %554 to i8
  switch i8 %555, label %553 [
    i8 13, label %556
    i8 10, label %556
  ]

556:                                              ; preds = %553, %553, %551
  %557 = phi i8 [ %552, %551 ], [ %555, %553 ], [ %555, %553 ]
  %558 = add i8 %557, -48
  %559 = icmp ult i8 %558, 10
  br i1 %559, label %547, label %560

560:                                              ; preds = %556, %571
  %561 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %562 = and i32 %561, 255
  %563 = icmp eq i32 %562, 35
  br i1 %563, label %566, label %564

564:                                              ; preds = %560
  %565 = trunc i32 %561 to i8
  br label %569

566:                                              ; preds = %560, %566
  %567 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %568 = trunc i32 %567 to i8
  switch i8 %568, label %566 [
    i8 13, label %569
    i8 10, label %569
  ]

569:                                              ; preds = %566, %566, %564
  %570 = phi i8 [ %565, %564 ], [ %568, %566 ], [ %568, %566 ]
  switch i8 %570, label %572 [
    i8 32, label %571
    i8 13, label %571
    i8 10, label %571
    i8 9, label %571
  ]

571:                                              ; preds = %569, %569, %569, %569
  br label %560

572:                                              ; preds = %569, %581
  %573 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %574 = and i32 %573, 255
  %575 = icmp eq i32 %574, 35
  br i1 %575, label %578, label %576

576:                                              ; preds = %572
  %577 = trunc i32 %573 to i8
  br label %581

578:                                              ; preds = %572, %578
  %579 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %580 = trunc i32 %579 to i8
  switch i8 %580, label %578 [
    i8 13, label %581
    i8 10, label %581
  ]

581:                                              ; preds = %578, %578, %576
  %582 = phi i8 [ %577, %576 ], [ %580, %578 ], [ %580, %578 ]
  %583 = add i8 %582, -48
  %584 = icmp ult i8 %583, 10
  br i1 %584, label %572, label %585

585:                                              ; preds = %581, %596
  %586 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %587 = and i32 %586, 255
  %588 = icmp eq i32 %587, 35
  br i1 %588, label %591, label %589

589:                                              ; preds = %585
  %590 = trunc i32 %586 to i8
  br label %594

591:                                              ; preds = %585, %591
  %592 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %593 = trunc i32 %592 to i8
  switch i8 %593, label %591 [
    i8 13, label %594
    i8 10, label %594
  ]

594:                                              ; preds = %591, %591, %589
  %595 = phi i8 [ %590, %589 ], [ %593, %591 ], [ %593, %591 ]
  switch i8 %595, label %597 [
    i8 32, label %596
    i8 13, label %596
    i8 10, label %596
    i8 9, label %596
  ]

596:                                              ; preds = %594, %594, %594, %594
  br label %585

597:                                              ; preds = %594, %606
  %598 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %599 = and i32 %598, 255
  %600 = icmp eq i32 %599, 35
  br i1 %600, label %603, label %601

601:                                              ; preds = %597
  %602 = trunc i32 %598 to i8
  br label %606

603:                                              ; preds = %597, %603
  %604 = tail call signext i32 @getc(ptr noundef nonnull %530)
  %605 = trunc i32 %604 to i8
  switch i8 %605, label %603 [
    i8 13, label %606
    i8 10, label %606
  ]

606:                                              ; preds = %603, %603, %601
  %607 = phi i8 [ %602, %601 ], [ %605, %603 ], [ %605, %603 ]
  %608 = add i8 %607, -48
  %609 = icmp ult i8 %608, 10
  br i1 %609, label %597, label %689

610:                                              ; preds = %528
  %611 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %3) #8
  call void @error(ptr noundef nonnull @errortext) #8
  %612 = call signext i32 @getc(ptr noundef null)
  %613 = call signext i32 @getc(ptr noundef null)
  br label %614

614:                                              ; preds = %625, %610
  %615 = call signext i32 @getc(ptr noundef null)
  %616 = and i32 %615, 255
  %617 = icmp eq i32 %616, 35
  br i1 %617, label %620, label %618

618:                                              ; preds = %614
  %619 = trunc i32 %615 to i8
  br label %623

620:                                              ; preds = %614, %620
  %621 = call signext i32 @getc(ptr noundef null)
  %622 = trunc i32 %621 to i8
  switch i8 %622, label %620 [
    i8 13, label %623
    i8 10, label %623
  ]

623:                                              ; preds = %620, %620, %618
  %624 = phi i8 [ %619, %618 ], [ %622, %620 ], [ %622, %620 ]
  switch i8 %624, label %626 [
    i8 32, label %625
    i8 13, label %625
    i8 10, label %625
    i8 9, label %625
  ]

625:                                              ; preds = %623, %623, %623, %623
  br label %614

626:                                              ; preds = %623, %635
  %627 = call signext i32 @getc(ptr noundef null)
  %628 = and i32 %627, 255
  %629 = icmp eq i32 %628, 35
  br i1 %629, label %632, label %630

630:                                              ; preds = %626
  %631 = trunc i32 %627 to i8
  br label %635

632:                                              ; preds = %626, %632
  %633 = call signext i32 @getc(ptr noundef null)
  %634 = trunc i32 %633 to i8
  switch i8 %634, label %632 [
    i8 13, label %635
    i8 10, label %635
  ]

635:                                              ; preds = %632, %632, %630
  %636 = phi i8 [ %631, %630 ], [ %634, %632 ], [ %634, %632 ]
  %637 = add i8 %636, -48
  %638 = icmp ult i8 %637, 10
  br i1 %638, label %626, label %639

639:                                              ; preds = %635, %650
  %640 = call signext i32 @getc(ptr noundef null)
  %641 = and i32 %640, 255
  %642 = icmp eq i32 %641, 35
  br i1 %642, label %645, label %643

643:                                              ; preds = %639
  %644 = trunc i32 %640 to i8
  br label %648

645:                                              ; preds = %639, %645
  %646 = call signext i32 @getc(ptr noundef null)
  %647 = trunc i32 %646 to i8
  switch i8 %647, label %645 [
    i8 13, label %648
    i8 10, label %648
  ]

648:                                              ; preds = %645, %645, %643
  %649 = phi i8 [ %644, %643 ], [ %647, %645 ], [ %647, %645 ]
  switch i8 %649, label %651 [
    i8 32, label %650
    i8 13, label %650
    i8 10, label %650
    i8 9, label %650
  ]

650:                                              ; preds = %648, %648, %648, %648
  br label %639

651:                                              ; preds = %648, %660
  %652 = call signext i32 @getc(ptr noundef null)
  %653 = and i32 %652, 255
  %654 = icmp eq i32 %653, 35
  br i1 %654, label %657, label %655

655:                                              ; preds = %651
  %656 = trunc i32 %652 to i8
  br label %660

657:                                              ; preds = %651, %657
  %658 = call signext i32 @getc(ptr noundef null)
  %659 = trunc i32 %658 to i8
  switch i8 %659, label %657 [
    i8 13, label %660
    i8 10, label %660
  ]

660:                                              ; preds = %657, %657, %655
  %661 = phi i8 [ %656, %655 ], [ %659, %657 ], [ %659, %657 ]
  %662 = add i8 %661, -48
  %663 = icmp ult i8 %662, 10
  br i1 %663, label %651, label %664

664:                                              ; preds = %660, %675
  %665 = call signext i32 @getc(ptr noundef null)
  %666 = and i32 %665, 255
  %667 = icmp eq i32 %666, 35
  br i1 %667, label %670, label %668

668:                                              ; preds = %664
  %669 = trunc i32 %665 to i8
  br label %673

670:                                              ; preds = %664, %670
  %671 = call signext i32 @getc(ptr noundef null)
  %672 = trunc i32 %671 to i8
  switch i8 %672, label %670 [
    i8 13, label %673
    i8 10, label %673
  ]

673:                                              ; preds = %670, %670, %668
  %674 = phi i8 [ %669, %668 ], [ %672, %670 ], [ %672, %670 ]
  switch i8 %674, label %676 [
    i8 32, label %675
    i8 13, label %675
    i8 10, label %675
    i8 9, label %675
  ]

675:                                              ; preds = %673, %673, %673, %673
  br label %664

676:                                              ; preds = %673, %685
  %677 = call signext i32 @getc(ptr noundef null)
  %678 = and i32 %677, 255
  %679 = icmp eq i32 %678, 35
  br i1 %679, label %682, label %680

680:                                              ; preds = %676
  %681 = trunc i32 %677 to i8
  br label %685

682:                                              ; preds = %676, %682
  %683 = call signext i32 @getc(ptr noundef null)
  %684 = trunc i32 %683 to i8
  switch i8 %684, label %682 [
    i8 13, label %685
    i8 10, label %685
  ]

685:                                              ; preds = %682, %682, %680
  %686 = phi i8 [ %681, %680 ], [ %684, %682 ], [ %684, %682 ]
  %687 = add i8 %686, -48
  %688 = icmp ult i8 %687, 10
  br i1 %688, label %676, label %689

689:                                              ; preds = %606, %685
  %690 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %691 = icmp sgt i32 %690, 0
  br i1 %691, label %692, label %743

692:                                              ; preds = %689
  %693 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  br label %694

694:                                              ; preds = %738, %692
  %695 = phi i32 [ %739, %738 ], [ %690, %692 ]
  %696 = phi i32 [ %740, %738 ], [ %693, %692 ]
  %697 = phi i32 [ %741, %738 ], [ 0, %692 ]
  %698 = load ptr, ptr %1, align 8, !tbaa !10
  %699 = load i32, ptr @width, align 4, !tbaa !6
  %700 = mul nsw i32 %699, %697
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i8, ptr %698, i64 %701
  %703 = load ptr, ptr @read_ppm.u444, align 8, !tbaa !10
  %704 = getelementptr inbounds i8, ptr %703, i64 %701
  %705 = load ptr, ptr @read_ppm.v444, align 8, !tbaa !10
  %706 = getelementptr inbounds i8, ptr %705, i64 %701
  %707 = icmp sgt i32 %696, 0
  br i1 %707, label %708, label %738

708:                                              ; preds = %694, %708
  %709 = phi i64 [ %732, %708 ], [ 0, %694 ]
  %710 = call signext i32 @getc(ptr noundef %530)
  %711 = call signext i32 @getc(ptr noundef %530)
  %712 = call signext i32 @getc(ptr noundef %530)
  %713 = sitofp i32 %710 to double
  %714 = sitofp i32 %711 to double
  %715 = fmul double %472, %714
  %716 = call double @llvm.fmuladd.f64(double %470, double %713, double %715)
  %717 = sitofp i32 %712 to double
  %718 = call double @llvm.fmuladd.f64(double %474, double %717, double %716)
  %719 = fsub double %717, %718
  %720 = fmul double %476, %719
  %721 = fsub double %713, %718
  %722 = fmul double %478, %721
  %723 = call double @llvm.fmuladd.f64(double %718, double 0x3FEB600000000000, double 1.650000e+01)
  %724 = fptoui double %723 to i8
  %725 = getelementptr inbounds i8, ptr %702, i64 %709
  store i8 %724, ptr %725, align 1, !tbaa !12
  %726 = call double @llvm.fmuladd.f64(double %720, double 8.750000e-01, double 1.285000e+02)
  %727 = fptoui double %726 to i8
  %728 = getelementptr inbounds i8, ptr %704, i64 %709
  store i8 %727, ptr %728, align 1, !tbaa !12
  %729 = call double @llvm.fmuladd.f64(double %722, double 8.750000e-01, double 1.285000e+02)
  %730 = fptoui double %729 to i8
  %731 = getelementptr inbounds i8, ptr %706, i64 %709
  store i8 %730, ptr %731, align 1, !tbaa !12
  %732 = add nuw nsw i64 %709, 1
  %733 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %734 = sext i32 %733 to i64
  %735 = icmp slt i64 %732, %734
  br i1 %735, label %708, label %736

736:                                              ; preds = %708
  %737 = load i32, ptr @vertical_size, align 4, !tbaa !6
  br label %738

738:                                              ; preds = %736, %694
  %739 = phi i32 [ %737, %736 ], [ %695, %694 ]
  %740 = phi i32 [ %733, %736 ], [ %696, %694 ]
  %741 = add nuw nsw i32 %697, 1
  %742 = icmp slt i32 %741, %739
  br i1 %742, label %694, label %743

743:                                              ; preds = %738, %689
  %744 = call signext i32 @fclose(ptr noundef %530)
  %745 = load ptr, ptr %1, align 8, !tbaa !10
  %746 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %747 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %748 = load i32, ptr @width, align 4, !tbaa !6
  %749 = load i32, ptr @height, align 4, !tbaa !6
  %750 = icmp sgt i32 %747, 0
  %751 = icmp slt i32 %746, %748
  %752 = and i1 %750, %751
  br i1 %752, label %753, label %774

753:                                              ; preds = %743
  %754 = sext i32 %746 to i64
  %755 = sext i32 %748 to i64
  %756 = zext nneg i32 %747 to i64
  %757 = getelementptr i8, ptr %745, i64 %754
  %758 = getelementptr i8, ptr %757, i64 -1
  br label %759

759:                                              ; preds = %771, %753
  %760 = phi i64 [ 0, %753 ], [ %772, %771 ]
  %761 = mul i64 %760, %755
  %762 = getelementptr i8, ptr %758, i64 %761
  %763 = mul nsw i64 %760, %755
  %764 = getelementptr inbounds i8, ptr %745, i64 %763
  %765 = load i8, ptr %762, align 1
  br label %766

766:                                              ; preds = %766, %759
  %767 = phi i64 [ %754, %759 ], [ %769, %766 ]
  %768 = getelementptr i8, ptr %764, i64 %767
  store i8 %765, ptr %768, align 1, !tbaa !12
  %769 = add nsw i64 %767, 1
  %770 = icmp eq i64 %769, %755
  br i1 %770, label %771, label %766

771:                                              ; preds = %766
  %772 = add nuw nsw i64 %760, 1
  %773 = icmp eq i64 %772, %756
  br i1 %773, label %774, label %759

774:                                              ; preds = %771, %743
  %775 = icmp slt i32 %747, %749
  %776 = icmp sgt i32 %748, 0
  %777 = and i1 %776, %775
  br i1 %777, label %778, label %797

778:                                              ; preds = %774
  %779 = zext nneg i32 %748 to i64
  %780 = sext i32 %747 to i64
  %781 = sext i32 %749 to i64
  br label %782

782:                                              ; preds = %794, %778
  %783 = phi i64 [ %780, %778 ], [ %795, %794 ]
  %784 = mul nsw i64 %783, %779
  %785 = getelementptr inbounds i8, ptr %745, i64 %784
  br label %786

786:                                              ; preds = %786, %782
  %787 = phi i64 [ 0, %782 ], [ %792, %786 ]
  %788 = sub nsw i64 %787, %779
  %789 = getelementptr inbounds i8, ptr %785, i64 %788
  %790 = load i8, ptr %789, align 1, !tbaa !12
  %791 = getelementptr inbounds i8, ptr %785, i64 %787
  store i8 %790, ptr %791, align 1, !tbaa !12
  %792 = add nuw nsw i64 %787, 1
  %793 = icmp eq i64 %792, %779
  br i1 %793, label %794, label %786

794:                                              ; preds = %786
  %795 = add nsw i64 %783, 1
  %796 = icmp eq i64 %795, %781
  br i1 %796, label %797, label %782

797:                                              ; preds = %794, %774
  %798 = load ptr, ptr @read_ppm.u444, align 8, !tbaa !10
  %799 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %800 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %801 = load i32, ptr @width, align 4, !tbaa !6
  %802 = load i32, ptr @height, align 4, !tbaa !6
  %803 = icmp sgt i32 %800, 0
  %804 = icmp slt i32 %799, %801
  %805 = and i1 %803, %804
  br i1 %805, label %806, label %827

806:                                              ; preds = %797
  %807 = sext i32 %799 to i64
  %808 = sext i32 %801 to i64
  %809 = zext nneg i32 %800 to i64
  %810 = getelementptr i8, ptr %798, i64 %807
  %811 = getelementptr i8, ptr %810, i64 -1
  br label %812

812:                                              ; preds = %824, %806
  %813 = phi i64 [ 0, %806 ], [ %825, %824 ]
  %814 = mul i64 %813, %808
  %815 = getelementptr i8, ptr %811, i64 %814
  %816 = mul nsw i64 %813, %808
  %817 = getelementptr inbounds i8, ptr %798, i64 %816
  %818 = load i8, ptr %815, align 1
  br label %819

819:                                              ; preds = %819, %812
  %820 = phi i64 [ %807, %812 ], [ %822, %819 ]
  %821 = getelementptr i8, ptr %817, i64 %820
  store i8 %818, ptr %821, align 1, !tbaa !12
  %822 = add nsw i64 %820, 1
  %823 = icmp eq i64 %822, %808
  br i1 %823, label %824, label %819

824:                                              ; preds = %819
  %825 = add nuw nsw i64 %813, 1
  %826 = icmp eq i64 %825, %809
  br i1 %826, label %827, label %812

827:                                              ; preds = %824, %797
  %828 = icmp slt i32 %800, %802
  %829 = icmp sgt i32 %801, 0
  %830 = and i1 %829, %828
  br i1 %830, label %831, label %850

831:                                              ; preds = %827
  %832 = zext nneg i32 %801 to i64
  %833 = sext i32 %800 to i64
  %834 = sext i32 %802 to i64
  br label %835

835:                                              ; preds = %847, %831
  %836 = phi i64 [ %833, %831 ], [ %848, %847 ]
  %837 = mul nsw i64 %836, %832
  %838 = getelementptr inbounds i8, ptr %798, i64 %837
  br label %839

839:                                              ; preds = %839, %835
  %840 = phi i64 [ 0, %835 ], [ %845, %839 ]
  %841 = sub nsw i64 %840, %832
  %842 = getelementptr inbounds i8, ptr %838, i64 %841
  %843 = load i8, ptr %842, align 1, !tbaa !12
  %844 = getelementptr inbounds i8, ptr %838, i64 %840
  store i8 %843, ptr %844, align 1, !tbaa !12
  %845 = add nuw nsw i64 %840, 1
  %846 = icmp eq i64 %845, %832
  br i1 %846, label %847, label %839

847:                                              ; preds = %839
  %848 = add nsw i64 %836, 1
  %849 = icmp eq i64 %848, %834
  br i1 %849, label %850, label %835

850:                                              ; preds = %847, %827
  %851 = load ptr, ptr @read_ppm.v444, align 8, !tbaa !10
  %852 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %853 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %854 = load i32, ptr @width, align 4, !tbaa !6
  %855 = load i32, ptr @height, align 4, !tbaa !6
  %856 = icmp sgt i32 %853, 0
  %857 = icmp slt i32 %852, %854
  %858 = and i1 %856, %857
  br i1 %858, label %859, label %880

859:                                              ; preds = %850
  %860 = sext i32 %852 to i64
  %861 = sext i32 %854 to i64
  %862 = zext nneg i32 %853 to i64
  %863 = getelementptr i8, ptr %851, i64 %860
  %864 = getelementptr i8, ptr %863, i64 -1
  br label %865

865:                                              ; preds = %877, %859
  %866 = phi i64 [ 0, %859 ], [ %878, %877 ]
  %867 = mul i64 %866, %861
  %868 = getelementptr i8, ptr %864, i64 %867
  %869 = mul nsw i64 %866, %861
  %870 = getelementptr inbounds i8, ptr %851, i64 %869
  %871 = load i8, ptr %868, align 1
  br label %872

872:                                              ; preds = %872, %865
  %873 = phi i64 [ %860, %865 ], [ %875, %872 ]
  %874 = getelementptr i8, ptr %870, i64 %873
  store i8 %871, ptr %874, align 1, !tbaa !12
  %875 = add nsw i64 %873, 1
  %876 = icmp eq i64 %875, %861
  br i1 %876, label %877, label %872

877:                                              ; preds = %872
  %878 = add nuw nsw i64 %866, 1
  %879 = icmp eq i64 %878, %862
  br i1 %879, label %880, label %865

880:                                              ; preds = %877, %850
  %881 = icmp slt i32 %853, %855
  %882 = icmp sgt i32 %854, 0
  %883 = and i1 %882, %881
  br i1 %883, label %884, label %903

884:                                              ; preds = %880
  %885 = zext nneg i32 %854 to i64
  %886 = sext i32 %853 to i64
  %887 = sext i32 %855 to i64
  br label %888

888:                                              ; preds = %900, %884
  %889 = phi i64 [ %886, %884 ], [ %901, %900 ]
  %890 = mul nsw i64 %889, %885
  %891 = getelementptr inbounds i8, ptr %851, i64 %890
  br label %892

892:                                              ; preds = %892, %888
  %893 = phi i64 [ 0, %888 ], [ %898, %892 ]
  %894 = sub nsw i64 %893, %885
  %895 = getelementptr inbounds i8, ptr %891, i64 %894
  %896 = load i8, ptr %895, align 1, !tbaa !12
  %897 = getelementptr inbounds i8, ptr %891, i64 %893
  store i8 %896, ptr %897, align 1, !tbaa !12
  %898 = add nuw nsw i64 %893, 1
  %899 = icmp eq i64 %898, %885
  br i1 %899, label %900, label %892

900:                                              ; preds = %892
  %901 = add nsw i64 %889, 1
  %902 = icmp eq i64 %901, %887
  br i1 %902, label %903, label %888

903:                                              ; preds = %900, %880
  %904 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %905 = icmp eq i32 %904, 2
  br i1 %905, label %906, label %912

906:                                              ; preds = %903
  %907 = getelementptr inbounds i8, ptr %1, i64 8
  %908 = load ptr, ptr %907, align 8, !tbaa !10
  call fastcc void @conv444to422(ptr noundef %798, ptr noundef %908)
  %909 = getelementptr inbounds i8, ptr %1, i64 16
  %910 = load ptr, ptr %909, align 8, !tbaa !10
  call fastcc void @conv444to422(ptr noundef %851, ptr noundef %910)
  %911 = load i32, ptr @chroma_format, align 4, !tbaa !6
  br label %912

912:                                              ; preds = %906, %903
  %913 = phi i32 [ %911, %906 ], [ %904, %903 ]
  %914 = icmp eq i32 %913, 1
  br i1 %914, label %915, label %922

915:                                              ; preds = %912
  %916 = load ptr, ptr @read_ppm.u422, align 8, !tbaa !10
  call fastcc void @conv444to422(ptr noundef %798, ptr noundef %916)
  %917 = load ptr, ptr @read_ppm.v422, align 8, !tbaa !10
  call fastcc void @conv444to422(ptr noundef %851, ptr noundef %917)
  %918 = getelementptr inbounds i8, ptr %1, i64 8
  %919 = load ptr, ptr %918, align 8, !tbaa !10
  call fastcc void @conv422to420(ptr noundef %916, ptr noundef %919)
  %920 = getelementptr inbounds i8, ptr %1, i64 16
  %921 = load ptr, ptr %920, align 8, !tbaa !10
  call fastcc void @conv422to420(ptr noundef %917, ptr noundef %921)
  br label %922

922:                                              ; preds = %912, %915
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  br label %923

923:                                              ; preds = %2, %922, %461, %237
  ret void
}

; Function Attrs: nofree nounwind
define dso_local noundef zeroext i8 @pbm_getc(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = tail call signext i32 @getc(ptr noundef %0)
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = trunc i32 %2 to i8
  br label %10

7:                                                ; preds = %1, %7
  %8 = tail call signext i32 @getc(ptr noundef %0)
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %7 [
    i8 13, label %10
    i8 10, label %10
  ]

10:                                               ; preds = %7, %7, %5
  %11 = phi i8 [ %6, %5 ], [ %9, %7 ], [ %9, %7 ]
  ret i8 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
define dso_local signext range(i32 -2147483648, 2147483600) i32 @pbm_getint(ptr nocapture noundef %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = tail call signext i32 @getc(ptr noundef %0)
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 35
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = trunc i32 %3 to i8
  br label %11

8:                                                ; preds = %2, %8
  %9 = tail call signext i32 @getc(ptr noundef %0)
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %8 [
    i8 13, label %11
    i8 10, label %11
  ]

11:                                               ; preds = %8, %8, %6
  %12 = phi i8 [ %7, %6 ], [ %10, %8 ], [ %10, %8 ]
  switch i8 %12, label %14 [
    i8 32, label %13
    i8 13, label %13
    i8 10, label %13
    i8 9, label %13
  ]

13:                                               ; preds = %11, %11, %11, %11
  br label %2

14:                                               ; preds = %11, %29
  %15 = phi i8 [ %30, %29 ], [ %12, %11 ]
  %16 = phi i32 [ %20, %29 ], [ 0, %11 ]
  %17 = mul nsw i32 %16, 10
  %18 = zext i8 %15 to i32
  %19 = add nsw i32 %18, -48
  %20 = add i32 %19, %17
  %21 = tail call signext i32 @getc(ptr noundef %0)
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  %25 = trunc i32 %21 to i8
  br label %29

26:                                               ; preds = %14, %26
  %27 = tail call signext i32 @getc(ptr noundef %0)
  %28 = trunc i32 %27 to i8
  switch i8 %28, label %26 [
    i8 13, label %29
    i8 10, label %29
  ]

29:                                               ; preds = %26, %26, %24
  %30 = phi i8 [ %25, %24 ], [ %28, %26 ], [ %28, %26 ]
  %31 = add i8 %30, -48
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %14, label %33

33:                                               ; preds = %29
  ret i32 %20
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

declare dso_local void @error(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @conv444to422(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr @height, align 4, !tbaa !6
  %6 = icmp sgt i32 %5, 0
  %7 = load i32, ptr @width, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %4, label %11, label %10

10:                                               ; preds = %2
  br i1 %9, label %12, label %308

11:                                               ; preds = %2
  br i1 %9, label %213, label %308

12:                                               ; preds = %10, %203
  %13 = phi i32 [ %204, %203 ], [ %5, %10 ]
  %14 = phi i32 [ %205, %203 ], [ %7, %10 ]
  %15 = phi ptr [ %207, %203 ], [ %0, %10 ]
  %16 = phi ptr [ %210, %203 ], [ %1, %10 ]
  %17 = phi i32 [ %211, %203 ], [ 0, %10 ]
  %18 = icmp sgt i32 %14, 0
  br i1 %18, label %19, label %203

19:                                               ; preds = %12
  %20 = add nsw i32 %14, -1
  %21 = icmp ne i32 %14, 1
  %22 = icmp ugt i32 %14, 2
  %23 = select i1 %22, i32 2, i32 %20
  %24 = icmp ugt i32 %14, 3
  %25 = select i1 %24, i32 3, i32 %20
  %26 = icmp ugt i32 %14, 4
  %27 = select i1 %26, i32 4, i32 %20
  %28 = icmp ugt i32 %14, 5
  %29 = select i1 %28, i32 5, i32 %20
  %30 = select i1 %28, i32 6, i32 %20
  %31 = load ptr, ptr @clp, align 8, !tbaa !10
  %32 = load i8, ptr %15, align 1, !tbaa !12
  %33 = zext i8 %32 to i32
  %34 = zext i1 %21 to i64
  %35 = getelementptr inbounds i8, ptr %15, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !12
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %37, %33
  %39 = mul nuw nsw i32 %38, 228
  %40 = zext nneg i32 %23 to i64
  %41 = getelementptr inbounds i8, ptr %15, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !12
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, %33
  %45 = mul nuw nsw i32 %44, 70
  %46 = zext nneg i32 %25 to i64
  %47 = getelementptr inbounds i8, ptr %15, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !12
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %49, %33
  %51 = mul nsw i32 %50, -37
  %52 = zext nneg i32 %27 to i64
  %53 = getelementptr inbounds i8, ptr %15, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !12
  %55 = zext i8 %54 to i32
  %56 = add nuw nsw i32 %55, %33
  %57 = mul nsw i32 %56, -21
  %58 = zext nneg i32 %29 to i64
  %59 = getelementptr inbounds i8, ptr %15, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !12
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %61, %33
  %63 = mul nuw nsw i32 %62, 11
  %64 = zext nneg i32 %30 to i64
  %65 = getelementptr inbounds i8, ptr %15, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !12
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %67, %33
  %69 = mul nuw nsw i32 %68, 5
  %70 = add nuw nsw i32 %39, 256
  %71 = add nuw nsw i32 %70, %45
  %72 = add nsw i32 %71, %51
  %73 = add nsw i32 %72, %57
  %74 = add nsw i32 %73, %63
  %75 = add nsw i32 %74, %69
  %76 = ashr i32 %75, 9
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %31, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !12
  store i8 %79, ptr %16, align 1, !tbaa !12
  %80 = load i32, ptr @width, align 4
  %81 = icmp sgt i32 %80, 2
  br i1 %81, label %82, label %200

82:                                               ; preds = %19, %82
  %83 = phi i64 [ %99, %82 ], [ 2, %19 ]
  %84 = phi i32 [ %197, %82 ], [ %80, %19 ]
  %85 = trunc nuw nsw i64 %83 to i32
  %86 = tail call i32 @llvm.usub.sat.i32(i32 %85, i32 5)
  %87 = tail call i32 @llvm.usub.sat.i32(i32 %85, i32 4)
  %88 = tail call i32 @llvm.usub.sat.i32(i32 %85, i32 3)
  %89 = add nuw nsw i64 %83, 4294967295
  %90 = add nsw i32 %84, -1
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %83, %91
  %93 = trunc i64 %83 to i32
  %94 = or disjoint i32 %93, 1
  %95 = select i1 %92, i32 %94, i32 %90
  %96 = add nsw i32 %84, -2
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %83, %97
  %99 = add nuw nsw i64 %83, 2
  %100 = trunc nuw nsw i64 %99 to i32
  %101 = select i1 %98, i32 %100, i32 %90
  %102 = add nsw i32 %84, -3
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %83, %103
  %105 = trunc i64 %83 to i32
  %106 = add i32 %105, 3
  %107 = select i1 %104, i32 %106, i32 %90
  %108 = add nsw i32 %84, -4
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %83, %109
  %111 = trunc i64 %83 to i32
  %112 = add i32 %111, 4
  %113 = select i1 %110, i32 %112, i32 %90
  %114 = add nsw i32 %84, -5
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %83, %115
  %117 = trunc i64 %83 to i32
  %118 = add i32 %117, 5
  %119 = select i1 %116, i32 %118, i32 %90
  %120 = trunc i64 %83 to i32
  %121 = add i32 %120, 6
  %122 = select i1 %116, i32 %121, i32 %90
  %123 = load ptr, ptr @clp, align 8, !tbaa !10
  %124 = getelementptr inbounds i8, ptr %15, i64 %83
  %125 = load i8, ptr %124, align 1, !tbaa !12
  %126 = zext i8 %125 to i32
  %127 = sext i32 %95 to i64
  %128 = getelementptr inbounds i8, ptr %15, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !12
  %130 = zext i8 %129 to i32
  %131 = add nuw nsw i32 %130, %126
  %132 = mul nuw nsw i32 %131, 228
  %133 = and i64 %89, 4294967295
  %134 = getelementptr inbounds i8, ptr %15, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !12
  %136 = zext i8 %135 to i32
  %137 = sext i32 %101 to i64
  %138 = getelementptr inbounds i8, ptr %15, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !12
  %140 = zext i8 %139 to i32
  %141 = add nuw nsw i32 %140, %136
  %142 = mul nuw nsw i32 %141, 70
  %143 = shl i64 %83, 32
  %144 = add i64 %143, -8589934592
  %145 = ashr exact i64 %144, 32
  %146 = getelementptr inbounds i8, ptr %15, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !12
  %148 = zext i8 %147 to i32
  %149 = sext i32 %107 to i64
  %150 = getelementptr inbounds i8, ptr %15, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !12
  %152 = zext i8 %151 to i32
  %153 = add nuw nsw i32 %152, %148
  %154 = mul nsw i32 %153, -37
  %155 = zext nneg i32 %88 to i64
  %156 = getelementptr inbounds i8, ptr %15, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !12
  %158 = zext i8 %157 to i32
  %159 = sext i32 %113 to i64
  %160 = getelementptr inbounds i8, ptr %15, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !12
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %162, %158
  %164 = mul nsw i32 %163, -21
  %165 = zext nneg i32 %87 to i64
  %166 = getelementptr inbounds i8, ptr %15, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !12
  %168 = zext i8 %167 to i32
  %169 = sext i32 %119 to i64
  %170 = getelementptr inbounds i8, ptr %15, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !12
  %172 = zext i8 %171 to i32
  %173 = add nuw nsw i32 %172, %168
  %174 = mul nuw nsw i32 %173, 11
  %175 = zext nneg i32 %86 to i64
  %176 = getelementptr inbounds i8, ptr %15, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !12
  %178 = zext i8 %177 to i32
  %179 = sext i32 %122 to i64
  %180 = getelementptr inbounds i8, ptr %15, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !12
  %182 = zext i8 %181 to i32
  %183 = add nuw nsw i32 %182, %178
  %184 = mul nuw nsw i32 %183, 5
  %185 = add nuw nsw i32 %132, 256
  %186 = add nuw nsw i32 %185, %142
  %187 = add nsw i32 %186, %154
  %188 = add nsw i32 %187, %164
  %189 = add nsw i32 %188, %174
  %190 = add nsw i32 %189, %184
  %191 = ashr i32 %190, 9
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, ptr %123, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !12
  %195 = lshr exact i64 %83, 1
  %196 = getelementptr inbounds i8, ptr %16, i64 %195
  store i8 %194, ptr %196, align 1, !tbaa !12
  %197 = load i32, ptr @width, align 4
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %99, %198
  br i1 %199, label %82, label %200, !llvm.loop !15

200:                                              ; preds = %82, %19
  %201 = phi i32 [ %80, %19 ], [ %197, %82 ]
  %202 = load i32, ptr @height, align 4, !tbaa !6
  br label %203

203:                                              ; preds = %200, %12
  %204 = phi i32 [ %13, %12 ], [ %202, %200 ]
  %205 = phi i32 [ %14, %12 ], [ %201, %200 ]
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, ptr %15, i64 %206
  %208 = ashr i32 %205, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, ptr %16, i64 %209
  %211 = add nuw nsw i32 %17, 1
  %212 = icmp slt i32 %211, %204
  br i1 %212, label %12, label %308, !llvm.loop !17

213:                                              ; preds = %11, %298
  %214 = phi i32 [ %300, %298 ], [ %5, %11 ]
  %215 = phi i32 [ %301, %298 ], [ %7, %11 ]
  %216 = phi ptr [ %302, %298 ], [ %0, %11 ]
  %217 = phi ptr [ %305, %298 ], [ %1, %11 ]
  %218 = phi i32 [ %306, %298 ], [ 0, %11 ]
  %219 = icmp sgt i32 %215, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %213
  %221 = sext i32 %215 to i64
  br label %298

222:                                              ; preds = %213, %222
  %223 = phi i64 [ %292, %222 ], [ 0, %213 ]
  %224 = phi i32 [ %293, %222 ], [ %215, %213 ]
  %225 = trunc nuw nsw i64 %223 to i32
  %226 = tail call i32 @llvm.usub.sat.i32(i32 %225, i32 5)
  %227 = tail call i32 @llvm.usub.sat.i32(i32 %225, i32 3)
  %228 = tail call i32 @llvm.usub.sat.i32(i32 %225, i32 1)
  %229 = add nsw i32 %224, -1
  %230 = sext i32 %229 to i64
  %231 = icmp slt i64 %223, %230
  %232 = trunc i64 %223 to i32
  %233 = or disjoint i32 %232, 1
  %234 = select i1 %231, i32 %233, i32 %229
  %235 = add nsw i32 %224, -3
  %236 = sext i32 %235 to i64
  %237 = icmp slt i64 %223, %236
  %238 = trunc i64 %223 to i32
  %239 = add i32 %238, 3
  %240 = select i1 %237, i32 %239, i32 %229
  %241 = add nsw i32 %224, -5
  %242 = sext i32 %241 to i64
  %243 = icmp slt i64 %223, %242
  %244 = trunc i64 %223 to i32
  %245 = add i32 %244, 5
  %246 = select i1 %243, i32 %245, i32 %229
  %247 = load ptr, ptr @clp, align 8, !tbaa !10
  %248 = zext nneg i32 %226 to i64
  %249 = getelementptr inbounds i8, ptr %216, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !12
  %251 = zext i8 %250 to i32
  %252 = sext i32 %246 to i64
  %253 = getelementptr inbounds i8, ptr %216, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !12
  %255 = zext i8 %254 to i32
  %256 = add nuw nsw i32 %255, %251
  %257 = mul nuw nsw i32 %256, 22
  %258 = zext nneg i32 %227 to i64
  %259 = getelementptr inbounds i8, ptr %216, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !12
  %261 = zext i8 %260 to i32
  %262 = sext i32 %240 to i64
  %263 = getelementptr inbounds i8, ptr %216, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !12
  %265 = zext i8 %264 to i32
  %266 = add nuw nsw i32 %265, %261
  %267 = mul nsw i32 %266, -52
  %268 = zext nneg i32 %228 to i64
  %269 = getelementptr inbounds i8, ptr %216, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !12
  %271 = zext i8 %270 to i32
  %272 = sext i32 %234 to i64
  %273 = getelementptr inbounds i8, ptr %216, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !12
  %275 = zext i8 %274 to i32
  %276 = add nuw nsw i32 %275, %271
  %277 = mul nuw nsw i32 %276, 159
  %278 = getelementptr inbounds i8, ptr %216, i64 %223
  %279 = load i8, ptr %278, align 1, !tbaa !12
  %280 = zext i8 %279 to i32
  %281 = shl nuw nsw i32 %280, 8
  %282 = add nuw nsw i32 %257, 256
  %283 = add nsw i32 %282, %267
  %284 = add nsw i32 %283, %277
  %285 = add nsw i32 %284, %281
  %286 = ashr i32 %285, 9
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, ptr %247, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !12
  %290 = lshr exact i64 %223, 1
  %291 = getelementptr inbounds i8, ptr %217, i64 %290
  store i8 %289, ptr %291, align 1, !tbaa !12
  %292 = add nuw nsw i64 %223, 2
  %293 = load i32, ptr @width, align 4
  %294 = sext i32 %293 to i64
  %295 = icmp slt i64 %292, %294
  br i1 %295, label %222, label %296

296:                                              ; preds = %222
  %297 = load i32, ptr @height, align 4, !tbaa !6
  br label %298

298:                                              ; preds = %220, %296
  %299 = phi i64 [ %221, %220 ], [ %294, %296 ]
  %300 = phi i32 [ %214, %220 ], [ %297, %296 ]
  %301 = phi i32 [ %215, %220 ], [ %293, %296 ]
  %302 = getelementptr inbounds i8, ptr %216, i64 %299
  %303 = ashr i32 %301, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, ptr %217, i64 %304
  %306 = add nuw nsw i32 %218, 1
  %307 = icmp slt i32 %306, %300
  br i1 %307, label %213, label %308, !llvm.loop !19

308:                                              ; preds = %203, %298, %10, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @conv422to420(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = load i32, ptr @width, align 4, !tbaa !6
  %4 = ashr i32 %3, 1
  %5 = load i32, ptr @prog_frame, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 0
  %7 = icmp sgt i32 %4, 0
  br i1 %6, label %15, label %8

8:                                                ; preds = %2
  br i1 %7, label %9, label %543

9:                                                ; preds = %8
  %10 = load i32, ptr @height, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %543

12:                                               ; preds = %9
  %13 = zext nneg i32 %4 to i64
  %14 = zext nneg i32 %4 to i64
  br label %22

15:                                               ; preds = %2
  br i1 %7, label %16, label %543

16:                                               ; preds = %15
  %17 = load i32, ptr @height, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %543

19:                                               ; preds = %16
  %20 = zext nneg i32 %4 to i64
  %21 = zext nneg i32 %4 to i64
  br label %234

22:                                               ; preds = %12, %228
  %23 = phi i32 [ %229, %228 ], [ %10, %12 ]
  %24 = phi ptr [ %230, %228 ], [ %0, %12 ]
  %25 = phi i32 [ %232, %228 ], [ 0, %12 ]
  %26 = phi ptr [ %231, %228 ], [ %1, %12 ]
  %27 = icmp sgt i32 %23, 0
  br i1 %27, label %28, label %228

28:                                               ; preds = %22
  %29 = add nsw i32 %23, -1
  %30 = icmp eq i32 %23, 1
  %31 = icmp ugt i32 %23, 2
  %32 = select i1 %31, i32 2, i32 %29
  %33 = icmp ugt i32 %23, 3
  %34 = select i1 %33, i32 3, i32 %29
  %35 = icmp ugt i32 %23, 4
  %36 = select i1 %35, i32 4, i32 %29
  %37 = icmp ugt i32 %23, 5
  %38 = select i1 %37, i32 5, i32 %29
  %39 = select i1 %37, i32 6, i32 %29
  %40 = load ptr, ptr @clp, align 8, !tbaa !10
  %41 = load i8, ptr %24, align 1, !tbaa !12
  %42 = zext i8 %41 to i32
  %43 = select i1 %30, i32 0, i32 %4
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %24, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !12
  %47 = zext i8 %46 to i32
  %48 = add nuw nsw i32 %47, %42
  %49 = mul nuw nsw i32 %48, 228
  %50 = mul nsw i32 %32, %4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %24, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !12
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %54, %42
  %56 = mul nuw nsw i32 %55, 70
  %57 = mul nsw i32 %34, %4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %24, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !12
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %61, %42
  %63 = mul nsw i32 %62, -37
  %64 = mul nsw i32 %36, %4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %24, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !12
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %68, %42
  %70 = mul nsw i32 %69, -21
  %71 = mul nsw i32 %38, %4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %24, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !12
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %75, %42
  %77 = mul nuw nsw i32 %76, 11
  %78 = mul nsw i32 %39, %4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %24, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !12
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %82, %42
  %84 = mul nuw nsw i32 %83, 5
  %85 = add nuw nsw i32 %49, 256
  %86 = add nuw nsw i32 %85, %56
  %87 = add nsw i32 %86, %63
  %88 = add nsw i32 %87, %70
  %89 = add nsw i32 %88, %77
  %90 = add nsw i32 %89, %84
  %91 = ashr i32 %90, 9
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %40, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !12
  store i8 %94, ptr %26, align 1, !tbaa !12
  %95 = load i32, ptr @height, align 4
  %96 = icmp sgt i32 %95, 2
  br i1 %96, label %97, label %228

97:                                               ; preds = %28, %97
  %98 = phi i64 [ %116, %97 ], [ 2, %28 ]
  %99 = phi i32 [ %225, %97 ], [ %95, %28 ]
  %100 = trunc nuw nsw i64 %98 to i32
  %101 = tail call i32 @llvm.usub.sat.i32(i32 %100, i32 5)
  %102 = tail call i32 @llvm.usub.sat.i32(i32 %100, i32 4)
  %103 = tail call i32 @llvm.usub.sat.i32(i32 %100, i32 3)
  %104 = trunc i64 %98 to i32
  %105 = add i32 %104, -2
  %106 = add nsw i32 %100, -1
  %107 = add nsw i32 %99, -1
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %98, %108
  %110 = trunc i64 %98 to i32
  %111 = or disjoint i32 %110, 1
  %112 = select i1 %109, i32 %111, i32 %107
  %113 = add nsw i32 %99, -2
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %98, %114
  %116 = add nuw nsw i64 %98, 2
  %117 = trunc nuw nsw i64 %116 to i32
  %118 = select i1 %115, i32 %117, i32 %107
  %119 = add nsw i32 %99, -3
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %98, %120
  %122 = trunc i64 %98 to i32
  %123 = add i32 %122, 3
  %124 = select i1 %121, i32 %123, i32 %107
  %125 = add nsw i32 %99, -4
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %98, %126
  %128 = trunc i64 %98 to i32
  %129 = add i32 %128, 4
  %130 = select i1 %127, i32 %129, i32 %107
  %131 = add nsw i32 %99, -5
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %98, %132
  %134 = trunc i64 %98 to i32
  %135 = add i32 %134, 5
  %136 = select i1 %133, i32 %135, i32 %107
  %137 = trunc i64 %98 to i32
  %138 = add i32 %137, 6
  %139 = select i1 %133, i32 %138, i32 %107
  %140 = load ptr, ptr @clp, align 8, !tbaa !10
  %141 = mul nuw nsw i64 %98, %14
  %142 = getelementptr inbounds i8, ptr %24, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !12
  %144 = zext i8 %143 to i32
  %145 = mul nsw i32 %112, %4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %24, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !12
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %149, %144
  %151 = mul nuw nsw i32 %150, 228
  %152 = mul nuw nsw i32 %106, %4
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %24, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !12
  %156 = zext i8 %155 to i32
  %157 = mul nsw i32 %118, %4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %24, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !12
  %161 = zext i8 %160 to i32
  %162 = add nuw nsw i32 %161, %156
  %163 = mul nuw nsw i32 %162, 70
  %164 = mul nsw i32 %105, %4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %24, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !12
  %168 = zext i8 %167 to i32
  %169 = mul nsw i32 %124, %4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %24, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !12
  %173 = zext i8 %172 to i32
  %174 = add nuw nsw i32 %173, %168
  %175 = mul nsw i32 %174, -37
  %176 = mul nuw nsw i32 %103, %4
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds i8, ptr %24, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !12
  %180 = zext i8 %179 to i32
  %181 = mul nsw i32 %130, %4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, ptr %24, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !12
  %185 = zext i8 %184 to i32
  %186 = add nuw nsw i32 %185, %180
  %187 = mul nsw i32 %186, -21
  %188 = mul nuw nsw i32 %102, %4
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %24, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !12
  %192 = zext i8 %191 to i32
  %193 = mul nsw i32 %136, %4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %24, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !12
  %197 = zext i8 %196 to i32
  %198 = add nuw nsw i32 %197, %192
  %199 = mul nuw nsw i32 %198, 11
  %200 = mul nuw nsw i32 %101, %4
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %24, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !12
  %204 = zext i8 %203 to i32
  %205 = mul nsw i32 %139, %4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, ptr %24, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !12
  %209 = zext i8 %208 to i32
  %210 = add nuw nsw i32 %209, %204
  %211 = mul nuw nsw i32 %210, 5
  %212 = add nuw nsw i32 %151, 256
  %213 = add nuw nsw i32 %212, %163
  %214 = add nsw i32 %213, %175
  %215 = add nsw i32 %214, %187
  %216 = add nsw i32 %215, %199
  %217 = add nsw i32 %216, %211
  %218 = ashr i32 %217, 9
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, ptr %140, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !12
  %222 = lshr exact i64 %98, 1
  %223 = mul nuw nsw i64 %222, %13
  %224 = getelementptr inbounds i8, ptr %26, i64 %223
  store i8 %221, ptr %224, align 1, !tbaa !12
  %225 = load i32, ptr @height, align 4
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %116, %226
  br i1 %227, label %97, label %228, !llvm.loop !20

228:                                              ; preds = %97, %28, %22
  %229 = phi i32 [ %23, %22 ], [ %95, %28 ], [ %225, %97 ]
  %230 = getelementptr inbounds i8, ptr %24, i64 1
  %231 = getelementptr inbounds i8, ptr %26, i64 1
  %232 = add nuw nsw i32 %25, 1
  %233 = icmp eq i32 %232, %4
  br i1 %233, label %543, label %22, !llvm.loop !21

234:                                              ; preds = %19, %537
  %235 = phi i32 [ %538, %537 ], [ %17, %19 ]
  %236 = phi ptr [ %539, %537 ], [ %0, %19 ]
  %237 = phi i32 [ %541, %537 ], [ 0, %19 ]
  %238 = phi ptr [ %540, %537 ], [ %1, %19 ]
  %239 = icmp sgt i32 %235, 0
  br i1 %239, label %240, label %537

240:                                              ; preds = %234, %240
  %241 = phi i64 [ %263, %240 ], [ 0, %234 ]
  %242 = phi i32 [ %534, %240 ], [ %235, %234 ]
  %243 = trunc nuw nsw i64 %241 to i32
  %244 = tail call i32 @llvm.usub.sat.i32(i32 %243, i32 10)
  %245 = tail call i32 @llvm.usub.sat.i32(i32 %243, i32 8)
  %246 = tail call i32 @llvm.usub.sat.i32(i32 %243, i32 6)
  %247 = icmp eq i64 %241, 0
  %248 = trunc i64 %241 to i32
  %249 = add i32 %248, -4
  %250 = select i1 %247, i32 0, i32 %249
  %251 = trunc i64 %241 to i32
  %252 = add i32 %251, -2
  %253 = select i1 %247, i32 0, i32 %252
  %254 = add nsw i32 %242, -2
  %255 = sext i32 %254 to i64
  %256 = icmp slt i64 %241, %255
  %257 = trunc i64 %241 to i32
  %258 = or disjoint i32 %257, 2
  %259 = select i1 %256, i32 %258, i32 %254
  %260 = add nsw i32 %242, -4
  %261 = sext i32 %260 to i64
  %262 = icmp slt i64 %241, %261
  %263 = add nuw nsw i64 %241, 4
  %264 = trunc nuw nsw i64 %263 to i32
  %265 = select i1 %262, i32 %264, i32 %254
  %266 = add nsw i32 %242, -6
  %267 = sext i32 %266 to i64
  %268 = icmp slt i64 %241, %267
  %269 = trunc i64 %241 to i32
  %270 = add i32 %269, 6
  %271 = select i1 %268, i32 %270, i32 %254
  %272 = add nsw i32 %242, -8
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %241, %273
  %275 = trunc i64 %241 to i32
  %276 = add i32 %275, 8
  %277 = select i1 %274, i32 %276, i32 %254
  %278 = add nsw i32 %242, -10
  %279 = sext i32 %278 to i64
  %280 = icmp slt i64 %241, %279
  %281 = trunc i64 %241 to i32
  %282 = add i32 %281, 10
  %283 = select i1 %280, i32 %282, i32 %254
  %284 = add nsw i32 %242, -12
  %285 = sext i32 %284 to i64
  %286 = icmp slt i64 %241, %285
  %287 = trunc i64 %241 to i32
  %288 = add i32 %287, 12
  %289 = select i1 %286, i32 %288, i32 %254
  %290 = load ptr, ptr @clp, align 8, !tbaa !10
  %291 = mul nuw nsw i32 %244, %4
  %292 = zext nneg i32 %291 to i64
  %293 = getelementptr inbounds i8, ptr %236, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !12
  %295 = zext i8 %294 to i32
  %296 = shl nuw nsw i32 %295, 3
  %297 = mul nuw nsw i32 %245, %4
  %298 = zext nneg i32 %297 to i64
  %299 = getelementptr inbounds i8, ptr %236, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !12
  %301 = zext i8 %300 to i32
  %302 = mul nuw nsw i32 %301, 5
  %303 = mul nuw nsw i32 %246, %4
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds i8, ptr %236, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !12
  %307 = zext i8 %306 to i32
  %308 = mul nsw i32 %307, -30
  %309 = mul nsw i32 %250, %4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, ptr %236, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !12
  %313 = zext i8 %312 to i32
  %314 = mul nsw i32 %313, -18
  %315 = mul nsw i32 %253, %4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, ptr %236, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !12
  %319 = zext i8 %318 to i32
  %320 = mul nuw nsw i32 %319, 113
  %321 = mul nuw nsw i64 %241, %21
  %322 = getelementptr inbounds i8, ptr %236, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !12
  %324 = zext i8 %323 to i32
  %325 = mul nuw nsw i32 %324, 242
  %326 = mul nsw i32 %259, %4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, ptr %236, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !12
  %330 = zext i8 %329 to i32
  %331 = mul nuw nsw i32 %330, 192
  %332 = mul nsw i32 %265, %4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, ptr %236, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !12
  %336 = zext i8 %335 to i32
  %337 = mul nuw nsw i32 %336, 35
  %338 = mul nsw i32 %271, %4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, ptr %236, i64 %339
  %341 = load i8, ptr %340, align 1, !tbaa !12
  %342 = zext i8 %341 to i32
  %343 = mul nsw i32 %342, -38
  %344 = mul nsw i32 %277, %4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, ptr %236, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !12
  %348 = zext i8 %347 to i32
  %349 = mul nsw i32 %348, -10
  %350 = mul nsw i32 %283, %4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, ptr %236, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !12
  %354 = zext i8 %353 to i32
  %355 = mul nuw nsw i32 %354, 11
  %356 = mul nsw i32 %289, %4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, ptr %236, i64 %357
  %359 = load i8, ptr %358, align 1, !tbaa !12
  %360 = zext i8 %359 to i32
  %361 = shl nuw nsw i32 %360, 1
  %362 = add nuw nsw i32 %296, 256
  %363 = add nuw nsw i32 %362, %302
  %364 = add nsw i32 %363, %308
  %365 = add nsw i32 %364, %314
  %366 = add nsw i32 %365, %320
  %367 = add nsw i32 %366, %325
  %368 = add nsw i32 %367, %331
  %369 = add nsw i32 %368, %337
  %370 = add nsw i32 %369, %343
  %371 = add nsw i32 %370, %349
  %372 = add nsw i32 %371, %355
  %373 = add nsw i32 %372, %361
  %374 = ashr i32 %373, 9
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, ptr %290, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !12
  %378 = lshr exact i64 %241, 1
  %379 = mul nuw nsw i64 %378, %20
  %380 = getelementptr inbounds i8, ptr %238, i64 %379
  store i8 %377, ptr %380, align 1, !tbaa !12
  %381 = icmp ult i64 %241, 9
  %382 = trunc i64 %241 to i32
  %383 = add i32 %382, -9
  %384 = select i1 %381, i32 1, i32 %383
  %385 = icmp ult i64 %241, 7
  %386 = trunc i64 %241 to i32
  %387 = add i32 %386, -7
  %388 = select i1 %385, i32 1, i32 %387
  %389 = icmp ult i64 %241, 5
  %390 = trunc i64 %241 to i32
  %391 = add i32 %390, -5
  %392 = select i1 %389, i32 1, i32 %391
  %393 = trunc i64 %241 to i32
  %394 = add i32 %393, -3
  %395 = select i1 %247, i32 1, i32 %394
  %396 = trunc i64 %241 to i32
  %397 = add i32 %396, -1
  %398 = select i1 %247, i32 1, i32 %397
  %399 = load i32, ptr @height, align 4
  %400 = add nsw i32 %399, -1
  %401 = sext i32 %400 to i64
  %402 = icmp slt i64 %241, %401
  %403 = trunc i64 %241 to i32
  %404 = or disjoint i32 %403, 1
  %405 = select i1 %402, i32 %404, i32 %400
  %406 = add nsw i32 %399, -3
  %407 = sext i32 %406 to i64
  %408 = icmp slt i64 %241, %407
  %409 = trunc i64 %241 to i32
  %410 = or disjoint i32 %409, 3
  %411 = select i1 %408, i32 %410, i32 %400
  %412 = add nsw i32 %399, -5
  %413 = sext i32 %412 to i64
  %414 = icmp slt i64 %241, %413
  %415 = trunc i64 %241 to i32
  %416 = add i32 %415, 5
  %417 = select i1 %414, i32 %416, i32 %400
  %418 = add nsw i32 %399, -7
  %419 = sext i32 %418 to i64
  %420 = icmp slt i64 %241, %419
  %421 = trunc i64 %241 to i32
  %422 = add i32 %421, 7
  %423 = select i1 %420, i32 %422, i32 %400
  %424 = add nsw i32 %399, -9
  %425 = sext i32 %424 to i64
  %426 = icmp slt i64 %241, %425
  %427 = trunc i64 %241 to i32
  %428 = add i32 %427, 9
  %429 = select i1 %426, i32 %428, i32 %400
  %430 = add nsw i32 %399, -11
  %431 = sext i32 %430 to i64
  %432 = icmp slt i64 %241, %431
  %433 = trunc i64 %241 to i32
  %434 = add i32 %433, 11
  %435 = select i1 %432, i32 %434, i32 %400
  %436 = add nsw i32 %399, -13
  %437 = sext i32 %436 to i64
  %438 = icmp slt i64 %241, %437
  %439 = trunc i64 %241 to i32
  %440 = add i32 %439, 13
  %441 = select i1 %438, i32 %440, i32 %400
  %442 = load ptr, ptr @clp, align 8, !tbaa !10
  %443 = mul nsw i32 %441, %4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8, ptr %236, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !12
  %447 = zext i8 %446 to i32
  %448 = shl nuw nsw i32 %447, 3
  %449 = mul nsw i32 %435, %4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, ptr %236, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !12
  %453 = zext i8 %452 to i32
  %454 = mul nuw nsw i32 %453, 5
  %455 = mul nsw i32 %429, %4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, ptr %236, i64 %456
  %458 = load i8, ptr %457, align 1, !tbaa !12
  %459 = zext i8 %458 to i32
  %460 = mul nsw i32 %459, -30
  %461 = mul nsw i32 %423, %4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i8, ptr %236, i64 %462
  %464 = load i8, ptr %463, align 1, !tbaa !12
  %465 = zext i8 %464 to i32
  %466 = mul nsw i32 %465, -18
  %467 = mul nsw i32 %417, %4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8, ptr %236, i64 %468
  %470 = load i8, ptr %469, align 1, !tbaa !12
  %471 = zext i8 %470 to i32
  %472 = mul nuw nsw i32 %471, 113
  %473 = mul nsw i32 %411, %4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, ptr %236, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !12
  %477 = zext i8 %476 to i32
  %478 = mul nuw nsw i32 %477, 242
  %479 = mul nsw i32 %405, %4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i8, ptr %236, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !12
  %483 = zext i8 %482 to i32
  %484 = mul nuw nsw i32 %483, 192
  %485 = mul nsw i32 %398, %4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i8, ptr %236, i64 %486
  %488 = load i8, ptr %487, align 1, !tbaa !12
  %489 = zext i8 %488 to i32
  %490 = mul nuw nsw i32 %489, 35
  %491 = mul nsw i32 %395, %4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8, ptr %236, i64 %492
  %494 = load i8, ptr %493, align 1, !tbaa !12
  %495 = zext i8 %494 to i32
  %496 = mul nsw i32 %495, -38
  %497 = mul nsw i32 %392, %4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8, ptr %236, i64 %498
  %500 = load i8, ptr %499, align 1, !tbaa !12
  %501 = zext i8 %500 to i32
  %502 = mul nsw i32 %501, -10
  %503 = mul nsw i32 %388, %4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8, ptr %236, i64 %504
  %506 = load i8, ptr %505, align 1, !tbaa !12
  %507 = zext i8 %506 to i32
  %508 = mul nuw nsw i32 %507, 11
  %509 = mul nsw i32 %384, %4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8, ptr %236, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !12
  %513 = zext i8 %512 to i32
  %514 = shl nuw nsw i32 %513, 1
  %515 = add nuw nsw i32 %448, 256
  %516 = add nuw nsw i32 %515, %454
  %517 = add nsw i32 %516, %460
  %518 = add nsw i32 %517, %466
  %519 = add nsw i32 %518, %472
  %520 = add nsw i32 %519, %478
  %521 = add nsw i32 %520, %484
  %522 = add nsw i32 %521, %490
  %523 = add nsw i32 %522, %496
  %524 = add nsw i32 %523, %502
  %525 = add nsw i32 %524, %508
  %526 = add nsw i32 %525, %514
  %527 = ashr i32 %526, 9
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i8, ptr %442, i64 %528
  %530 = load i8, ptr %529, align 1, !tbaa !12
  %531 = or disjoint i64 %378, 1
  %532 = mul nuw nsw i64 %531, %20
  %533 = getelementptr inbounds i8, ptr %238, i64 %532
  store i8 %530, ptr %533, align 1, !tbaa !12
  %534 = load i32, ptr @height, align 4
  %535 = sext i32 %534 to i64
  %536 = icmp slt i64 %263, %535
  br i1 %536, label %240, label %537

537:                                              ; preds = %240, %234
  %538 = phi i32 [ %235, %234 ], [ %534, %240 ]
  %539 = getelementptr inbounds i8, ptr %236, i64 1
  %540 = getelementptr inbounds i8, ptr %238, i64 1
  %541 = add nuw nsw i32 %237, 1
  %542 = icmp eq i32 %541, %4
  br i1 %542, label %543, label %234, !llvm.loop !22

543:                                              ; preds = %228, %537, %16, %9, %8, %15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
