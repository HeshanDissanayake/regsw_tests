; ModuleID = 'rdcolmap.c'
source_filename = "rdcolmap.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @read_color_map(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef signext 1, i32 noundef signext 256, i32 noundef signext 3) #2
  %8 = getelementptr inbounds i8, ptr %0, i64 160
  store ptr %7, ptr %8, align 8, !tbaa !17
  %9 = getelementptr inbounds i8, ptr %0, i64 156
  store i32 0, ptr %9, align 4, !tbaa !18
  %10 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %10, label %433 [
    i32 71, label %11
    i32 80, label %178
  ]

11:                                               ; preds = %2
  %12 = tail call signext i32 @getc(ptr noundef %1)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !19
  %16 = getelementptr inbounds i8, ptr %15, i64 40
  store i32 1038, ptr %16, align 8, !tbaa !20
  %17 = load ptr, ptr %15, align 8, !tbaa !22
  tail call void %17(ptr noundef nonnull %0) #2
  br label %18

18:                                               ; preds = %14, %11
  %19 = tail call signext i32 @getc(ptr noundef %1)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !19
  %23 = getelementptr inbounds i8, ptr %22, i64 40
  store i32 1038, ptr %23, align 8, !tbaa !20
  %24 = load ptr, ptr %22, align 8, !tbaa !22
  tail call void %24(ptr noundef nonnull %0) #2
  br label %25

25:                                               ; preds = %21, %18
  %26 = tail call signext i32 @getc(ptr noundef %1)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 8, !tbaa !19
  %30 = getelementptr inbounds i8, ptr %29, i64 40
  store i32 1038, ptr %30, align 8, !tbaa !20
  %31 = load ptr, ptr %29, align 8, !tbaa !22
  tail call void %31(ptr noundef nonnull %0) #2
  br label %32

32:                                               ; preds = %28, %25
  %33 = tail call signext i32 @getc(ptr noundef %1)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 8, !tbaa !19
  %37 = getelementptr inbounds i8, ptr %36, i64 40
  store i32 1038, ptr %37, align 8, !tbaa !20
  %38 = load ptr, ptr %36, align 8, !tbaa !22
  tail call void %38(ptr noundef nonnull %0) #2
  br label %39

39:                                               ; preds = %35, %32
  %40 = tail call signext i32 @getc(ptr noundef %1)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 8, !tbaa !19
  %44 = getelementptr inbounds i8, ptr %43, i64 40
  store i32 1038, ptr %44, align 8, !tbaa !20
  %45 = load ptr, ptr %43, align 8, !tbaa !22
  tail call void %45(ptr noundef nonnull %0) #2
  br label %46

46:                                               ; preds = %42, %39
  %47 = tail call signext i32 @getc(ptr noundef %1)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load ptr, ptr %0, align 8, !tbaa !19
  %51 = getelementptr inbounds i8, ptr %50, i64 40
  store i32 1038, ptr %51, align 8, !tbaa !20
  %52 = load ptr, ptr %50, align 8, !tbaa !22
  tail call void %52(ptr noundef nonnull %0) #2
  br label %53

53:                                               ; preds = %49, %46
  %54 = tail call signext i32 @getc(ptr noundef %1)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load ptr, ptr %0, align 8, !tbaa !19
  %58 = getelementptr inbounds i8, ptr %57, i64 40
  store i32 1038, ptr %58, align 8, !tbaa !20
  %59 = load ptr, ptr %57, align 8, !tbaa !22
  tail call void %59(ptr noundef nonnull %0) #2
  br label %60

60:                                               ; preds = %56, %53
  %61 = tail call signext i32 @getc(ptr noundef %1)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load ptr, ptr %0, align 8, !tbaa !19
  %65 = getelementptr inbounds i8, ptr %64, i64 40
  store i32 1038, ptr %65, align 8, !tbaa !20
  %66 = load ptr, ptr %64, align 8, !tbaa !22
  tail call void %66(ptr noundef nonnull %0) #2
  br label %67

67:                                               ; preds = %63, %60
  %68 = tail call signext i32 @getc(ptr noundef %1)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load ptr, ptr %0, align 8, !tbaa !19
  %72 = getelementptr inbounds i8, ptr %71, i64 40
  store i32 1038, ptr %72, align 8, !tbaa !20
  %73 = load ptr, ptr %71, align 8, !tbaa !22
  tail call void %73(ptr noundef nonnull %0) #2
  br label %74

74:                                               ; preds = %70, %67
  %75 = tail call signext i32 @getc(ptr noundef %1)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load ptr, ptr %0, align 8, !tbaa !19
  %79 = getelementptr inbounds i8, ptr %78, i64 40
  store i32 1038, ptr %79, align 8, !tbaa !20
  %80 = load ptr, ptr %78, align 8, !tbaa !22
  tail call void %80(ptr noundef nonnull %0) #2
  br label %81

81:                                               ; preds = %77, %74
  %82 = tail call signext i32 @getc(ptr noundef %1)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load ptr, ptr %0, align 8, !tbaa !19
  %86 = getelementptr inbounds i8, ptr %85, i64 40
  store i32 1038, ptr %86, align 8, !tbaa !20
  %87 = load ptr, ptr %85, align 8, !tbaa !22
  tail call void %87(ptr noundef nonnull %0) #2
  br label %88

88:                                               ; preds = %84, %81
  %89 = tail call signext i32 @getc(ptr noundef %1)
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load ptr, ptr %0, align 8, !tbaa !19
  %93 = getelementptr inbounds i8, ptr %92, i64 40
  store i32 1038, ptr %93, align 8, !tbaa !20
  %94 = load ptr, ptr %92, align 8, !tbaa !22
  tail call void %94(ptr noundef nonnull %0) #2
  br label %95

95:                                               ; preds = %91, %88
  %96 = icmp ne i32 %12, 73
  %97 = icmp ne i32 %19, 70
  %98 = or i1 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load ptr, ptr %0, align 8, !tbaa !19
  %101 = getelementptr inbounds i8, ptr %100, i64 40
  store i32 1038, ptr %101, align 8, !tbaa !20
  %102 = load ptr, ptr %100, align 8, !tbaa !22
  tail call void %102(ptr noundef nonnull %0) #2
  br label %103

103:                                              ; preds = %99, %95
  %104 = and i32 %75, 128
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load ptr, ptr %0, align 8, !tbaa !19
  %108 = getelementptr inbounds i8, ptr %107, i64 40
  store i32 1038, ptr %108, align 8, !tbaa !20
  %109 = load ptr, ptr %107, align 8, !tbaa !22
  tail call void %109(ptr noundef nonnull %0) #2
  br label %110

110:                                              ; preds = %106, %103
  %111 = and i32 %75, 7
  %112 = shl nuw nsw i32 2, %111
  br label %113

113:                                              ; preds = %175, %110
  %114 = phi i32 [ 0, %110 ], [ %176, %175 ]
  %115 = tail call signext i32 @getc(ptr noundef %1)
  %116 = tail call signext i32 @getc(ptr noundef %1)
  %117 = tail call signext i32 @getc(ptr noundef %1)
  %118 = icmp eq i32 %115, -1
  %119 = icmp eq i32 %116, -1
  %120 = or i1 %118, %119
  %121 = icmp eq i32 %117, -1
  %122 = or i1 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %113
  %124 = load ptr, ptr %0, align 8, !tbaa !19
  %125 = getelementptr inbounds i8, ptr %124, i64 40
  store i32 1038, ptr %125, align 8, !tbaa !20
  %126 = load ptr, ptr %124, align 8, !tbaa !22
  tail call void %126(ptr noundef nonnull %0) #2
  br label %127

127:                                              ; preds = %123, %113
  %128 = load ptr, ptr %8, align 8, !tbaa !17
  %129 = load ptr, ptr %128, align 8, !tbaa !23
  %130 = getelementptr inbounds i8, ptr %128, i64 8
  %131 = load ptr, ptr %130, align 8, !tbaa !23
  %132 = getelementptr inbounds i8, ptr %128, i64 16
  %133 = load ptr, ptr %132, align 8, !tbaa !23
  %134 = load i32, ptr %9, align 4, !tbaa !18
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %127
  %137 = zext nneg i32 %134 to i64
  br label %138

138:                                              ; preds = %154, %136
  %139 = phi i64 [ 0, %136 ], [ %155, %154 ]
  %140 = getelementptr inbounds i8, ptr %129, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !24
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %115, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = getelementptr inbounds i8, ptr %131, i64 %139
  %146 = load i8, ptr %145, align 1, !tbaa !24
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %116, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = getelementptr inbounds i8, ptr %133, i64 %139
  %151 = load i8, ptr %150, align 1, !tbaa !24
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %117, %152
  br i1 %153, label %175, label %154

154:                                              ; preds = %149, %144, %138
  %155 = add nuw nsw i64 %139, 1
  %156 = icmp eq i64 %155, %137
  br i1 %156, label %157, label %138

157:                                              ; preds = %154
  %158 = icmp sgt i32 %134, 255
  br i1 %158, label %159, label %165

159:                                              ; preds = %157
  %160 = load ptr, ptr %0, align 8, !tbaa !19
  %161 = getelementptr inbounds i8, ptr %160, i64 40
  store i32 57, ptr %161, align 8, !tbaa !20
  %162 = getelementptr inbounds i8, ptr %160, i64 44
  store i32 256, ptr %162, align 4, !tbaa !24
  %163 = load ptr, ptr %0, align 8, !tbaa !19
  %164 = load ptr, ptr %163, align 8, !tbaa !22
  tail call void %164(ptr noundef nonnull %0) #2
  br label %165

165:                                              ; preds = %159, %157, %127
  %166 = trunc i32 %115 to i8
  %167 = sext i32 %134 to i64
  %168 = getelementptr inbounds i8, ptr %129, i64 %167
  store i8 %166, ptr %168, align 1, !tbaa !24
  %169 = trunc i32 %116 to i8
  %170 = getelementptr inbounds i8, ptr %131, i64 %167
  store i8 %169, ptr %170, align 1, !tbaa !24
  %171 = trunc i32 %117 to i8
  %172 = getelementptr inbounds i8, ptr %133, i64 %167
  store i8 %171, ptr %172, align 1, !tbaa !24
  %173 = load i32, ptr %9, align 4, !tbaa !18
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr %9, align 4, !tbaa !18
  br label %175

175:                                              ; preds = %149, %165
  %176 = add nuw nsw i32 %114, 1
  %177 = icmp eq i32 %176, %112
  br i1 %177, label %437, label %113

178:                                              ; preds = %2
  %179 = tail call signext i32 @getc(ptr noundef %1)
  %180 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1)
  %181 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1)
  %182 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1)
  %183 = icmp eq i32 %180, 0
  %184 = icmp eq i32 %181, 0
  %185 = select i1 %183, i1 true, i1 %184
  %186 = icmp eq i32 %182, 0
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %178
  %189 = load ptr, ptr %0, align 8, !tbaa !19
  %190 = getelementptr inbounds i8, ptr %189, i64 40
  store i32 1038, ptr %190, align 8, !tbaa !20
  %191 = load ptr, ptr %189, align 8, !tbaa !22
  tail call void %191(ptr noundef nonnull %0) #2
  br label %192

192:                                              ; preds = %188, %178
  %193 = icmp eq i32 %182, 255
  br i1 %193, label %198, label %194

194:                                              ; preds = %192
  %195 = load ptr, ptr %0, align 8, !tbaa !19
  %196 = getelementptr inbounds i8, ptr %195, i64 40
  store i32 1038, ptr %196, align 8, !tbaa !20
  %197 = load ptr, ptr %195, align 8, !tbaa !22
  tail call void %197(ptr noundef nonnull %0) #2
  br label %198

198:                                              ; preds = %194, %192
  switch i32 %179, label %433 [
    i32 51, label %271
    i32 54, label %199
  ]

199:                                              ; preds = %198
  %200 = or i1 %183, %184
  br i1 %200, label %437, label %201

201:                                              ; preds = %199, %268
  %202 = phi i32 [ %269, %268 ], [ 0, %199 ]
  br label %203

203:                                              ; preds = %265, %201
  %204 = phi i32 [ 0, %201 ], [ %266, %265 ]
  %205 = tail call signext i32 @getc(ptr noundef %1)
  %206 = tail call signext i32 @getc(ptr noundef %1)
  %207 = tail call signext i32 @getc(ptr noundef %1)
  %208 = icmp eq i32 %205, -1
  %209 = icmp eq i32 %206, -1
  %210 = or i1 %208, %209
  %211 = icmp eq i32 %207, -1
  %212 = or i1 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %203
  %214 = load ptr, ptr %0, align 8, !tbaa !19
  %215 = getelementptr inbounds i8, ptr %214, i64 40
  store i32 1038, ptr %215, align 8, !tbaa !20
  %216 = load ptr, ptr %214, align 8, !tbaa !22
  tail call void %216(ptr noundef nonnull %0) #2
  br label %217

217:                                              ; preds = %213, %203
  %218 = load ptr, ptr %8, align 8, !tbaa !17
  %219 = load ptr, ptr %218, align 8, !tbaa !23
  %220 = getelementptr inbounds i8, ptr %218, i64 8
  %221 = load ptr, ptr %220, align 8, !tbaa !23
  %222 = getelementptr inbounds i8, ptr %218, i64 16
  %223 = load ptr, ptr %222, align 8, !tbaa !23
  %224 = load i32, ptr %9, align 4, !tbaa !18
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %255

226:                                              ; preds = %217
  %227 = zext nneg i32 %224 to i64
  br label %228

228:                                              ; preds = %244, %226
  %229 = phi i64 [ 0, %226 ], [ %245, %244 ]
  %230 = getelementptr inbounds i8, ptr %219, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !24
  %232 = zext i8 %231 to i32
  %233 = icmp eq i32 %205, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %228
  %235 = getelementptr inbounds i8, ptr %221, i64 %229
  %236 = load i8, ptr %235, align 1, !tbaa !24
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %206, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = getelementptr inbounds i8, ptr %223, i64 %229
  %241 = load i8, ptr %240, align 1, !tbaa !24
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %207, %242
  br i1 %243, label %265, label %244

244:                                              ; preds = %239, %234, %228
  %245 = add nuw nsw i64 %229, 1
  %246 = icmp eq i64 %245, %227
  br i1 %246, label %247, label %228

247:                                              ; preds = %244
  %248 = icmp sgt i32 %224, 255
  br i1 %248, label %249, label %255

249:                                              ; preds = %247
  %250 = load ptr, ptr %0, align 8, !tbaa !19
  %251 = getelementptr inbounds i8, ptr %250, i64 40
  store i32 57, ptr %251, align 8, !tbaa !20
  %252 = getelementptr inbounds i8, ptr %250, i64 44
  store i32 256, ptr %252, align 4, !tbaa !24
  %253 = load ptr, ptr %0, align 8, !tbaa !19
  %254 = load ptr, ptr %253, align 8, !tbaa !22
  tail call void %254(ptr noundef nonnull %0) #2
  br label %255

255:                                              ; preds = %249, %247, %217
  %256 = trunc i32 %205 to i8
  %257 = sext i32 %224 to i64
  %258 = getelementptr inbounds i8, ptr %219, i64 %257
  store i8 %256, ptr %258, align 1, !tbaa !24
  %259 = trunc i32 %206 to i8
  %260 = getelementptr inbounds i8, ptr %221, i64 %257
  store i8 %259, ptr %260, align 1, !tbaa !24
  %261 = trunc i32 %207 to i8
  %262 = getelementptr inbounds i8, ptr %223, i64 %257
  store i8 %261, ptr %262, align 1, !tbaa !24
  %263 = load i32, ptr %9, align 4, !tbaa !18
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %9, align 4, !tbaa !18
  br label %265

265:                                              ; preds = %239, %255
  %266 = add nuw i32 %204, 1
  %267 = icmp eq i32 %266, %180
  br i1 %267, label %268, label %203

268:                                              ; preds = %265
  %269 = add nuw i32 %202, 1
  %270 = icmp eq i32 %269, %181
  br i1 %270, label %437, label %201

271:                                              ; preds = %198
  %272 = or i1 %183, %184
  br i1 %272, label %437, label %273

273:                                              ; preds = %271, %430
  %274 = phi i32 [ %431, %430 ], [ 0, %271 ]
  br label %428

275:                                              ; preds = %282, %428
  %276 = tail call signext i32 @getc(ptr noundef %1)
  %277 = icmp eq i32 %276, 35
  br i1 %277, label %278, label %280

278:                                              ; preds = %275, %278
  %279 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %279, label %278 [
    i32 -1, label %280
    i32 10, label %280
  ]

280:                                              ; preds = %278, %278, %275
  %281 = phi i32 [ %276, %275 ], [ %279, %278 ], [ %279, %278 ]
  switch i32 %281, label %287 [
    i32 -1, label %283
    i32 32, label %282
    i32 13, label %282
    i32 10, label %282
    i32 9, label %282
  ]

282:                                              ; preds = %280, %280, %280, %280
  br label %275

283:                                              ; preds = %280
  %284 = load ptr, ptr %0, align 8, !tbaa !19
  %285 = getelementptr inbounds i8, ptr %284, i64 40
  store i32 1038, ptr %285, align 8, !tbaa !20
  %286 = load ptr, ptr %284, align 8, !tbaa !22
  tail call void %286(ptr noundef nonnull %0) #2
  br label %290

287:                                              ; preds = %280
  %288 = add i32 %281, -58
  %289 = icmp ult i32 %288, -10
  br i1 %289, label %290, label %294

290:                                              ; preds = %287, %283
  %291 = load ptr, ptr %0, align 8, !tbaa !19
  %292 = getelementptr inbounds i8, ptr %291, i64 40
  store i32 1038, ptr %292, align 8, !tbaa !20
  %293 = load ptr, ptr %291, align 8, !tbaa !22
  tail call void %293(ptr noundef nonnull %0) #2
  br label %294

294:                                              ; preds = %290, %287
  %295 = add nsw i32 %281, -48
  br label %296

296:                                              ; preds = %425, %294
  %297 = phi i32 [ %295, %294 ], [ %427, %425 ]
  %298 = tail call signext i32 @getc(ptr noundef %1)
  %299 = icmp eq i32 %298, 35
  br i1 %299, label %300, label %302

300:                                              ; preds = %296, %300
  %301 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %301, label %300 [
    i32 -1, label %302
    i32 10, label %302
  ]

302:                                              ; preds = %300, %300, %296
  %303 = phi i32 [ %298, %296 ], [ %301, %300 ], [ %301, %300 ]
  %304 = add i32 %303, -48
  %305 = icmp ult i32 %304, 10
  br i1 %305, label %425, label %306

306:                                              ; preds = %302, %313
  %307 = tail call signext i32 @getc(ptr noundef %1)
  %308 = icmp eq i32 %307, 35
  br i1 %308, label %309, label %311

309:                                              ; preds = %306, %309
  %310 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %310, label %309 [
    i32 -1, label %311
    i32 10, label %311
  ]

311:                                              ; preds = %309, %309, %306
  %312 = phi i32 [ %307, %306 ], [ %310, %309 ], [ %310, %309 ]
  switch i32 %312, label %318 [
    i32 -1, label %314
    i32 32, label %313
    i32 13, label %313
    i32 10, label %313
    i32 9, label %313
  ]

313:                                              ; preds = %311, %311, %311, %311
  br label %306

314:                                              ; preds = %311
  %315 = load ptr, ptr %0, align 8, !tbaa !19
  %316 = getelementptr inbounds i8, ptr %315, i64 40
  store i32 1038, ptr %316, align 8, !tbaa !20
  %317 = load ptr, ptr %315, align 8, !tbaa !22
  tail call void %317(ptr noundef nonnull %0) #2
  br label %321

318:                                              ; preds = %311
  %319 = add i32 %312, -58
  %320 = icmp ult i32 %319, -10
  br i1 %320, label %321, label %325

321:                                              ; preds = %318, %314
  %322 = load ptr, ptr %0, align 8, !tbaa !19
  %323 = getelementptr inbounds i8, ptr %322, i64 40
  store i32 1038, ptr %323, align 8, !tbaa !20
  %324 = load ptr, ptr %322, align 8, !tbaa !22
  tail call void %324(ptr noundef nonnull %0) #2
  br label %325

325:                                              ; preds = %321, %318
  %326 = add nsw i32 %312, -48
  br label %327

327:                                              ; preds = %422, %325
  %328 = phi i32 [ %326, %325 ], [ %424, %422 ]
  %329 = tail call signext i32 @getc(ptr noundef %1)
  %330 = icmp eq i32 %329, 35
  br i1 %330, label %331, label %333

331:                                              ; preds = %327, %331
  %332 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %332, label %331 [
    i32 -1, label %333
    i32 10, label %333
  ]

333:                                              ; preds = %331, %331, %327
  %334 = phi i32 [ %329, %327 ], [ %332, %331 ], [ %332, %331 ]
  %335 = add i32 %334, -48
  %336 = icmp ult i32 %335, 10
  br i1 %336, label %422, label %337

337:                                              ; preds = %333, %344
  %338 = tail call signext i32 @getc(ptr noundef %1)
  %339 = icmp eq i32 %338, 35
  br i1 %339, label %340, label %342

340:                                              ; preds = %337, %340
  %341 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %341, label %340 [
    i32 -1, label %342
    i32 10, label %342
  ]

342:                                              ; preds = %340, %340, %337
  %343 = phi i32 [ %338, %337 ], [ %341, %340 ], [ %341, %340 ]
  switch i32 %343, label %349 [
    i32 -1, label %345
    i32 32, label %344
    i32 13, label %344
    i32 10, label %344
    i32 9, label %344
  ]

344:                                              ; preds = %342, %342, %342, %342
  br label %337

345:                                              ; preds = %342
  %346 = load ptr, ptr %0, align 8, !tbaa !19
  %347 = getelementptr inbounds i8, ptr %346, i64 40
  store i32 1038, ptr %347, align 8, !tbaa !20
  %348 = load ptr, ptr %346, align 8, !tbaa !22
  tail call void %348(ptr noundef nonnull %0) #2
  br label %352

349:                                              ; preds = %342
  %350 = add i32 %343, -58
  %351 = icmp ult i32 %350, -10
  br i1 %351, label %352, label %356

352:                                              ; preds = %349, %345
  %353 = load ptr, ptr %0, align 8, !tbaa !19
  %354 = getelementptr inbounds i8, ptr %353, i64 40
  store i32 1038, ptr %354, align 8, !tbaa !20
  %355 = load ptr, ptr %353, align 8, !tbaa !22
  tail call void %355(ptr noundef nonnull %0) #2
  br label %356

356:                                              ; preds = %352, %349
  %357 = add nsw i32 %343, -48
  br label %358

358:                                              ; preds = %419, %356
  %359 = phi i32 [ %357, %356 ], [ %421, %419 ]
  %360 = tail call signext i32 @getc(ptr noundef %1)
  %361 = icmp eq i32 %360, 35
  br i1 %361, label %362, label %364

362:                                              ; preds = %358, %362
  %363 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %363, label %362 [
    i32 -1, label %364
    i32 10, label %364
  ]

364:                                              ; preds = %362, %362, %358
  %365 = phi i32 [ %360, %358 ], [ %363, %362 ], [ %363, %362 ]
  %366 = add i32 %365, -48
  %367 = icmp ult i32 %366, 10
  br i1 %367, label %419, label %368

368:                                              ; preds = %364
  %369 = load ptr, ptr %8, align 8, !tbaa !17
  %370 = load ptr, ptr %369, align 8, !tbaa !23
  %371 = getelementptr inbounds i8, ptr %369, i64 8
  %372 = load ptr, ptr %371, align 8, !tbaa !23
  %373 = getelementptr inbounds i8, ptr %369, i64 16
  %374 = load ptr, ptr %373, align 8, !tbaa !23
  %375 = load i32, ptr %9, align 4, !tbaa !18
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %406

377:                                              ; preds = %368
  %378 = zext nneg i32 %375 to i64
  br label %379

379:                                              ; preds = %395, %377
  %380 = phi i64 [ 0, %377 ], [ %396, %395 ]
  %381 = getelementptr inbounds i8, ptr %370, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !24
  %383 = zext i8 %382 to i32
  %384 = icmp eq i32 %297, %383
  br i1 %384, label %385, label %395

385:                                              ; preds = %379
  %386 = getelementptr inbounds i8, ptr %372, i64 %380
  %387 = load i8, ptr %386, align 1, !tbaa !24
  %388 = zext i8 %387 to i32
  %389 = icmp eq i32 %328, %388
  br i1 %389, label %390, label %395

390:                                              ; preds = %385
  %391 = getelementptr inbounds i8, ptr %374, i64 %380
  %392 = load i8, ptr %391, align 1, !tbaa !24
  %393 = zext i8 %392 to i32
  %394 = icmp eq i32 %359, %393
  br i1 %394, label %416, label %395

395:                                              ; preds = %390, %385, %379
  %396 = add nuw nsw i64 %380, 1
  %397 = icmp eq i64 %396, %378
  br i1 %397, label %398, label %379

398:                                              ; preds = %395
  %399 = icmp sgt i32 %375, 255
  br i1 %399, label %400, label %406

400:                                              ; preds = %398
  %401 = load ptr, ptr %0, align 8, !tbaa !19
  %402 = getelementptr inbounds i8, ptr %401, i64 40
  store i32 57, ptr %402, align 8, !tbaa !20
  %403 = getelementptr inbounds i8, ptr %401, i64 44
  store i32 256, ptr %403, align 4, !tbaa !24
  %404 = load ptr, ptr %0, align 8, !tbaa !19
  %405 = load ptr, ptr %404, align 8, !tbaa !22
  tail call void %405(ptr noundef nonnull %0) #2
  br label %406

406:                                              ; preds = %400, %398, %368
  %407 = trunc i32 %297 to i8
  %408 = sext i32 %375 to i64
  %409 = getelementptr inbounds i8, ptr %370, i64 %408
  store i8 %407, ptr %409, align 1, !tbaa !24
  %410 = trunc i32 %328 to i8
  %411 = getelementptr inbounds i8, ptr %372, i64 %408
  store i8 %410, ptr %411, align 1, !tbaa !24
  %412 = trunc i32 %359 to i8
  %413 = getelementptr inbounds i8, ptr %374, i64 %408
  store i8 %412, ptr %413, align 1, !tbaa !24
  %414 = load i32, ptr %9, align 4, !tbaa !18
  %415 = add nsw i32 %414, 1
  store i32 %415, ptr %9, align 4, !tbaa !18
  br label %416

416:                                              ; preds = %390, %406
  %417 = add nuw i32 %429, 1
  %418 = icmp eq i32 %417, %180
  br i1 %418, label %430, label %428

419:                                              ; preds = %364
  %420 = mul i32 %359, 10
  %421 = add i32 %366, %420
  br label %358

422:                                              ; preds = %333
  %423 = mul i32 %328, 10
  %424 = add i32 %335, %423
  br label %327

425:                                              ; preds = %302
  %426 = mul i32 %297, 10
  %427 = add i32 %304, %426
  br label %296

428:                                              ; preds = %416, %273
  %429 = phi i32 [ 0, %273 ], [ %417, %416 ]
  br label %275

430:                                              ; preds = %416
  %431 = add nuw i32 %274, 1
  %432 = icmp eq i32 %431, %181
  br i1 %432, label %437, label %273

433:                                              ; preds = %2, %198
  %434 = load ptr, ptr %0, align 8, !tbaa !19
  %435 = getelementptr inbounds i8, ptr %434, i64 40
  store i32 1038, ptr %435, align 8, !tbaa !20
  %436 = load ptr, ptr %434, align 8, !tbaa !22
  tail call void %436(ptr noundef nonnull %0) #2
  br label %437

437:                                              ; preds = %268, %430, %175, %433, %271, %199
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define internal fastcc signext i32 @read_pbm_integer(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = tail call signext i32 @getc(ptr noundef %1)
  %5 = icmp eq i32 %4, 35
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %6
  %7 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %7, label %6 [
    i32 -1, label %8
    i32 10, label %8
  ]

8:                                                ; preds = %6, %6, %3
  %9 = phi i32 [ %4, %3 ], [ %7, %6 ], [ %7, %6 ]
  switch i32 %9, label %15 [
    i32 -1, label %11
    i32 32, label %10
    i32 13, label %10
    i32 10, label %10
    i32 9, label %10
  ]

10:                                               ; preds = %8, %8, %8, %8
  br label %3

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !19
  %13 = getelementptr inbounds i8, ptr %12, i64 40
  store i32 1038, ptr %13, align 8, !tbaa !20
  %14 = load ptr, ptr %12, align 8, !tbaa !22
  tail call void %14(ptr noundef nonnull %0) #2
  br label %18

15:                                               ; preds = %8
  %16 = add i32 %9, -58
  %17 = icmp ult i32 %16, -10
  br i1 %17, label %18, label %22

18:                                               ; preds = %11, %15
  %19 = load ptr, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds i8, ptr %19, i64 40
  store i32 1038, ptr %20, align 8, !tbaa !20
  %21 = load ptr, ptr %19, align 8, !tbaa !22
  tail call void %21(ptr noundef nonnull %0) #2
  br label %22

22:                                               ; preds = %15, %18
  %23 = add nsw i32 %9, -48
  br label %24

24:                                               ; preds = %34, %22
  %25 = phi i32 [ %23, %22 ], [ %36, %34 ]
  %26 = tail call signext i32 @getc(ptr noundef %1)
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %28
  %29 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %29, label %28 [
    i32 -1, label %30
    i32 10, label %30
  ]

30:                                               ; preds = %28, %28, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %28 ], [ %29, %28 ]
  %32 = add i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = mul i32 %25, 10
  %36 = add i32 %32, %35
  br label %24

37:                                               ; preds = %30
  ret i32 %25
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 16}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 160}
!18 = !{!7, !11, i64 156}
!19 = !{!7, !8, i64 0}
!20 = !{!21, !11, i64 40}
!21 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!22 = !{!21, !8, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!9, !9, i64 0}
