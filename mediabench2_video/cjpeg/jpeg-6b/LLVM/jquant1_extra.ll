; ModuleID = 'jquant1.c'
source_filename = "jquant1.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@base_dither_matrix = internal unnamed_addr constant [16 x [16 x i8]] [[16 x i8] c"\00\C00\F0\0C\CC<\FC\03\C33\F3\0F\CF?\FF", [16 x i8] c"\80@\B0p\8CL\BC|\83C\B3s\8FO\BF\7F", [16 x i8] c" \E0\10\D0,\EC\1C\DC#\E3\13\D3/\EF\1F\DF", [16 x i8] c"\A0`\90P\ACl\9C\\\A3c\93S\AFo\9F_", [16 x i8] c"\08\C88\F8\04\C44\F4\0B\CB;\FB\07\C77\F7", [16 x i8] c"\88H\B8x\84D\B4t\8BK\BB{\87G\B7w", [16 x i8] c"(\E8\18\D8$\E4\14\D4+\EB\1B\DB'\E7\17\D7", [16 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [16 x i8] c"\02\C22\F2\0E\CE>\FE\01\C11\F1\0D\CD=\FD", [16 x i8] c"\82B\B2r\8EN\BE~\81A\B1q\8DM\BD}", [16 x i8] c"\22\E2\12\D2.\EE\1E\DE!\E1\11\D1-\ED\1D\DD", [16 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [16 x i8] c"\0A\CA:\FA\06\C66\F6\09\C99\F9\05\C55\F5", [16 x i8] c"\8AJ\BAz\86F\B6v\89I\B9y\85E\B5u", [16 x i8] c"*\EA\1A\DA&\E6\16\D6)\E9\19\D9%\E5\15\D5", [16 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 1
@select_ncolors.RGB_order = internal unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 2], align 4

; Function Attrs: nounwind
define dso_local void @jinit_1pass_quantizer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 152) #6
  %6 = getelementptr inbounds i8, ptr %0, i64 624
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @start_pass_1_quant, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @finish_pass_1_quant, ptr %7, align 8, !tbaa !21
  %8 = getelementptr inbounds i8, ptr %5, i64 24
  store ptr @new_color_map_1_quant, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds i8, ptr %5, i64 112
  store ptr null, ptr %9, align 8, !tbaa !23
  %10 = getelementptr inbounds i8, ptr %5, i64 80
  store ptr null, ptr %10, align 8, !tbaa !23
  %11 = getelementptr inbounds i8, ptr %0, i64 144
  %12 = load i32, ptr %11, align 8, !tbaa !24
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 8, !tbaa !25
  %16 = getelementptr inbounds i8, ptr %15, i64 40
  store i32 55, ptr %16, align 8, !tbaa !26
  %17 = getelementptr inbounds i8, ptr %15, i64 44
  store i32 4, ptr %17, align 4, !tbaa !28
  %18 = load ptr, ptr %0, align 8, !tbaa !25
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  tail call void %19(ptr noundef nonnull %0) #6
  br label %20

20:                                               ; preds = %14, %1
  %21 = getelementptr inbounds i8, ptr %0, i64 120
  %22 = load i32, ptr %21, align 8, !tbaa !30
  %23 = icmp sgt i32 %22, 256
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !25
  %26 = getelementptr inbounds i8, ptr %25, i64 40
  store i32 57, ptr %26, align 8, !tbaa !26
  %27 = getelementptr inbounds i8, ptr %25, i64 44
  store i32 256, ptr %27, align 4, !tbaa !28
  %28 = load ptr, ptr %0, align 8, !tbaa !25
  %29 = load ptr, ptr %28, align 8, !tbaa !29
  tail call void %29(ptr noundef nonnull %0) #6
  %30 = load i32, ptr %21, align 8, !tbaa !30
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi i32 [ %30, %24 ], [ %22, %20 ]
  %33 = load ptr, ptr %6, align 8, !tbaa !17
  %34 = getelementptr inbounds i8, ptr %33, i64 60
  %35 = load i32, ptr %11, align 8, !tbaa !24
  %36 = sext i32 %32 to i64
  %37 = icmp sgt i32 %35, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = tail call i32 @llvm.smax.i32(i32 %32, i32 1)
  %40 = add nuw i32 %39, 1
  br label %55

41:                                               ; preds = %31, %50
  %42 = phi i64 [ %43, %50 ], [ 1, %31 ]
  %43 = add nuw nsw i64 %42, 1
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi i64 [ %43, %41 ], [ %47, %44 ]
  %46 = phi i32 [ 1, %41 ], [ %48, %44 ]
  %47 = mul nuw nsw i64 %45, %43
  %48 = add nuw nsw i32 %46, 1
  %49 = icmp eq i32 %48, %35
  br i1 %49, label %50, label %44

50:                                               ; preds = %44
  %51 = icmp sgt i64 %47, %36
  br i1 %51, label %52, label %41

52:                                               ; preds = %50
  %53 = trunc i64 %47 to i32
  %54 = trunc i64 %42 to i32
  br label %55

55:                                               ; preds = %52, %38
  %56 = phi i32 [ %54, %52 ], [ %39, %38 ]
  %57 = phi i32 [ %53, %52 ], [ %40, %38 ]
  %58 = icmp ult i32 %56, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load ptr, ptr %0, align 8, !tbaa !25
  %61 = getelementptr inbounds i8, ptr %60, i64 40
  store i32 56, ptr %61, align 8, !tbaa !26
  %62 = getelementptr inbounds i8, ptr %60, i64 44
  store i32 %57, ptr %62, align 4, !tbaa !28
  %63 = load ptr, ptr %0, align 8, !tbaa !25
  %64 = load ptr, ptr %63, align 8, !tbaa !29
  tail call void %64(ptr noundef nonnull %0) #6
  br label %65

65:                                               ; preds = %59, %55
  %66 = icmp sgt i32 %35, 0
  br i1 %66, label %67, label %151

67:                                               ; preds = %65
  %68 = zext nneg i32 %35 to i64
  br label %144

69:                                               ; preds = %144
  %70 = getelementptr inbounds i8, ptr %0, i64 64
  %71 = load i32, ptr %70, align 8, !tbaa !31
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds i32, ptr %34, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !32
  %76 = sdiv i32 %148, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i32 %75, 1
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %77, %79
  %81 = icmp sgt i64 %80, %36
  br i1 %81, label %151, label %82

82:                                               ; preds = %69
  %83 = icmp eq i32 %35, 1
  br i1 %83, label %84, label %100

84:                                               ; preds = %82, %84
  %85 = phi i64 [ %98, %84 ], [ %80, %82 ]
  %86 = phi i32 [ %96, %84 ], [ %78, %82 ]
  %87 = phi ptr [ %92, %84 ], [ %74, %82 ]
  store i32 %86, ptr %87, align 4, !tbaa !32
  %88 = trunc i64 %85 to i32
  %89 = load i32, ptr %70, align 8, !tbaa !31
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i64
  %92 = getelementptr inbounds i32, ptr %34, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !32
  %94 = sdiv i32 %88, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i32 %93, 1
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %95, %97
  %99 = icmp sgt i64 %98, %36
  br i1 %99, label %151, label %84

100:                                              ; preds = %82, %131
  %101 = phi i64 [ %142, %131 ], [ %80, %82 ]
  %102 = phi i32 [ %140, %131 ], [ %78, %82 ]
  %103 = phi ptr [ %136, %131 ], [ %74, %82 ]
  store i32 %102, ptr %103, align 4, !tbaa !32
  %104 = trunc i64 %101 to i32
  br label %105

105:                                              ; preds = %125, %100
  %106 = phi i64 [ %127, %125 ], [ 1, %100 ]
  %107 = phi i32 [ %126, %125 ], [ %104, %100 ]
  %108 = load i32, ptr %70, align 8, !tbaa !31
  %109 = icmp eq i32 %108, 2
  %110 = trunc nuw nsw i64 %106 to i32
  br i1 %109, label %111, label %114

111:                                              ; preds = %105
  %112 = getelementptr inbounds [3 x i32], ptr @select_ncolors.RGB_order, i64 0, i64 %106
  %113 = load i32, ptr %112, align 4, !tbaa !32
  br label %114

114:                                              ; preds = %111, %105
  %115 = phi i32 [ %113, %111 ], [ %110, %105 ]
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %34, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !32
  %119 = sdiv i32 %107, %118
  %120 = sext i32 %119 to i64
  %121 = add nsw i32 %118, 1
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %120, %122
  %124 = icmp sgt i64 %123, %36
  br i1 %124, label %131, label %125

125:                                              ; preds = %114
  store i32 %121, ptr %117, align 4, !tbaa !32
  %126 = trunc i64 %123 to i32
  %127 = add nuw nsw i64 %106, 1
  %128 = icmp eq i64 %127, %68
  br i1 %128, label %129, label %105, !llvm.loop !33

129:                                              ; preds = %125
  %130 = load i32, ptr %70, align 8, !tbaa !31
  br label %131

131:                                              ; preds = %114, %129
  %132 = phi i32 [ %130, %129 ], [ %108, %114 ]
  %133 = phi i32 [ %126, %129 ], [ %107, %114 ]
  %134 = icmp eq i32 %132, 2
  %135 = zext i1 %134 to i64
  %136 = getelementptr inbounds i32, ptr %34, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !32
  %138 = sdiv i32 %133, %137
  %139 = sext i32 %138 to i64
  %140 = add nsw i32 %137, 1
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %139, %141
  %143 = icmp sgt i64 %142, %36
  br i1 %143, label %151, label %100

144:                                              ; preds = %144, %67
  %145 = phi i64 [ 0, %67 ], [ %149, %144 ]
  %146 = phi i32 [ 1, %67 ], [ %148, %144 ]
  %147 = getelementptr inbounds i32, ptr %34, i64 %145
  store i32 %56, ptr %147, align 4, !tbaa !32
  %148 = mul nuw nsw i32 %146, %56
  %149 = add nuw nsw i64 %145, 1
  %150 = icmp eq i64 %149, %68
  br i1 %150, label %69, label %144

151:                                              ; preds = %131, %84, %69, %65
  %152 = phi i32 [ 1, %65 ], [ %148, %69 ], [ %88, %84 ], [ %133, %131 ]
  %153 = load i32, ptr %11, align 8, !tbaa !24
  %154 = icmp eq i32 %153, 3
  %155 = load ptr, ptr %0, align 8, !tbaa !25
  %156 = getelementptr inbounds i8, ptr %155, i64 44
  store i32 %152, ptr %156, align 4, !tbaa !28
  br i1 %154, label %157, label %166

157:                                              ; preds = %151
  %158 = load i32, ptr %34, align 4, !tbaa !32
  %159 = getelementptr inbounds i8, ptr %155, i64 48
  store i32 %158, ptr %159, align 4, !tbaa !32
  %160 = getelementptr inbounds i8, ptr %33, i64 64
  %161 = load i32, ptr %160, align 4, !tbaa !32
  %162 = getelementptr inbounds i8, ptr %155, i64 52
  store i32 %161, ptr %162, align 4, !tbaa !32
  %163 = getelementptr inbounds i8, ptr %33, i64 68
  %164 = load i32, ptr %163, align 4, !tbaa !32
  %165 = getelementptr inbounds i8, ptr %155, i64 56
  store i32 %164, ptr %165, align 4, !tbaa !32
  br label %168

166:                                              ; preds = %151
  %167 = load ptr, ptr %0, align 8, !tbaa !25
  br label %168

168:                                              ; preds = %166, %157
  %169 = phi i32 [ 94, %157 ], [ 95, %166 ]
  %170 = phi ptr [ %155, %157 ], [ %167, %166 ]
  %171 = getelementptr inbounds i8, ptr %155, i64 40
  store i32 %169, ptr %171, align 8
  %172 = getelementptr inbounds i8, ptr %170, i64 8
  %173 = load ptr, ptr %172, align 8, !tbaa !35
  tail call void %173(ptr noundef nonnull %0, i32 noundef signext 1) #6
  %174 = load ptr, ptr %2, align 8, !tbaa !6
  %175 = getelementptr inbounds i8, ptr %174, i64 16
  %176 = load ptr, ptr %175, align 8, !tbaa !36
  %177 = load i32, ptr %11, align 8, !tbaa !24
  %178 = tail call ptr %176(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %152, i32 noundef signext %177) #6
  %179 = load i32, ptr %11, align 8, !tbaa !24
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %243

181:                                              ; preds = %168
  %182 = sext i32 %152 to i64
  %183 = icmp sgt i32 %152, 0
  br label %184

184:                                              ; preds = %238, %181
  %185 = phi i32 [ %179, %181 ], [ %239, %238 ]
  %186 = phi i64 [ 0, %181 ], [ %240, %238 ]
  %187 = phi i32 [ %152, %181 ], [ %191, %238 ]
  %188 = getelementptr inbounds [4 x i32], ptr %34, i64 0, i64 %186
  %189 = load i32, ptr %188, align 4, !tbaa !32
  %190 = sdiv i32 %187, %189
  %191 = freeze i32 %190
  %192 = icmp sgt i32 %189, 0
  br i1 %192, label %193, label %238

193:                                              ; preds = %184
  %194 = add nsw i32 %189, -1
  %195 = lshr i32 %194, 1
  %196 = zext nneg i32 %195 to i64
  %197 = zext nneg i32 %194 to i64
  %198 = icmp sgt i32 %191, 0
  %199 = getelementptr inbounds ptr, ptr %178, i64 %186
  br i1 %198, label %201, label %200

200:                                              ; preds = %193
  br i1 %183, label %232, label %238

201:                                              ; preds = %193
  %202 = zext nneg i32 %191 to i64
  %203 = sext i32 %187 to i64
  %204 = zext nneg i32 %189 to i64
  br label %205

205:                                              ; preds = %211, %201
  %206 = phi i64 [ 0, %201 ], [ %212, %211 ]
  %207 = phi i64 [ 0, %201 ], [ %213, %211 ]
  %208 = trunc i64 %206 to i32
  %209 = mul i32 %191, %208
  %210 = icmp slt i32 %209, %152
  br i1 %210, label %215, label %211

211:                                              ; preds = %229, %205
  %212 = add nuw nsw i64 %206, 1
  %213 = add nuw nsw i64 %207, %202
  %214 = icmp eq i64 %212, %204
  br i1 %214, label %236, label %205

215:                                              ; preds = %205
  %216 = mul nuw nsw i64 %206, 255
  %217 = add nuw nsw i64 %216, %196
  %218 = udiv i64 %217, %197
  %219 = trunc i64 %218 to i8
  br label %220

220:                                              ; preds = %229, %215
  %221 = phi i64 [ %230, %229 ], [ %207, %215 ]
  br label %222

222:                                              ; preds = %222, %220
  %223 = phi i64 [ %227, %222 ], [ 0, %220 ]
  %224 = load ptr, ptr %199, align 8, !tbaa !23
  %225 = getelementptr i8, ptr %224, i64 %223
  %226 = getelementptr i8, ptr %225, i64 %221
  store i8 %219, ptr %226, align 1, !tbaa !28
  %227 = add nuw nsw i64 %223, 1
  %228 = icmp eq i64 %227, %202
  br i1 %228, label %229, label %222

229:                                              ; preds = %222
  %230 = add nsw i64 %221, %203
  %231 = icmp slt i64 %230, %182
  br i1 %231, label %220, label %211

232:                                              ; preds = %200, %232
  %233 = phi i32 [ %234, %232 ], [ 0, %200 ]
  %234 = add nsw i32 %233, %187
  %235 = icmp slt i32 %234, %152
  br i1 %235, label %232, label %238

236:                                              ; preds = %211
  %237 = load i32, ptr %11, align 8, !tbaa !24
  br label %238

238:                                              ; preds = %232, %236, %200, %184
  %239 = phi i32 [ %237, %236 ], [ %185, %184 ], [ %185, %200 ], [ %185, %232 ]
  %240 = add nuw nsw i64 %186, 1
  %241 = sext i32 %239 to i64
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %184, label %243

243:                                              ; preds = %238, %168
  %244 = getelementptr inbounds i8, ptr %33, i64 32
  store ptr %178, ptr %244, align 8, !tbaa !37
  %245 = getelementptr inbounds i8, ptr %33, i64 40
  store i32 %152, ptr %245, align 8, !tbaa !38
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  %246 = getelementptr inbounds i8, ptr %0, i64 112
  %247 = load i32, ptr %246, align 8, !tbaa !39
  %248 = icmp eq i32 %247, 2
  br i1 %248, label %249, label %271

249:                                              ; preds = %243
  %250 = getelementptr inbounds i8, ptr %0, i64 136
  %251 = load i32, ptr %250, align 8, !tbaa !40
  %252 = add i32 %251, 2
  %253 = zext i32 %252 to i64
  %254 = shl nuw nsw i64 %253, 1
  %255 = load i32, ptr %11, align 8, !tbaa !24
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %249
  %258 = load ptr, ptr %6, align 8, !tbaa !17
  %259 = getelementptr inbounds i8, ptr %258, i64 112
  br label %260

260:                                              ; preds = %260, %257
  %261 = phi i64 [ 0, %257 ], [ %267, %260 ]
  %262 = load ptr, ptr %2, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 8
  %264 = load ptr, ptr %263, align 8, !tbaa !41
  %265 = tail call ptr %264(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %254) #6
  %266 = getelementptr inbounds [4 x ptr], ptr %259, i64 0, i64 %261
  store ptr %265, ptr %266, align 8, !tbaa !23
  %267 = add nuw nsw i64 %261, 1
  %268 = load i32, ptr %11, align 8, !tbaa !24
  %269 = sext i32 %268 to i64
  %270 = icmp slt i64 %267, %269
  br i1 %270, label %260, label %271

271:                                              ; preds = %260, %249, %243
  ret void
}

; Function Attrs: nounwind
define internal void @start_pass_1_quant(ptr noundef %0, i32 signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 624
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %4, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds i8, ptr %0, i64 160
  store ptr %6, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds i8, ptr %4, i64 40
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds i8, ptr %0, i64 156
  store i32 %9, ptr %10, align 4, !tbaa !43
  %11 = getelementptr inbounds i8, ptr %0, i64 112
  %12 = load i32, ptr %11, align 8, !tbaa !39
  switch i32 %12, label %289 [
    i32 0, label %13
    i32 1, label %20
    i32 2, label %241
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %0, i64 144
  %15 = load i32, ptr %14, align 8, !tbaa !24
  %16 = icmp eq i32 %15, 3
  %17 = getelementptr inbounds i8, ptr %4, i64 8
  br i1 %16, label %18, label %19

18:                                               ; preds = %13
  store ptr @color_quantize3, ptr %17, align 8, !tbaa !44
  br label %293

19:                                               ; preds = %13
  store ptr @color_quantize, ptr %17, align 8, !tbaa !44
  br label %293

20:                                               ; preds = %2
  %21 = getelementptr inbounds i8, ptr %0, i64 144
  %22 = load i32, ptr %21, align 8, !tbaa !24
  %23 = icmp eq i32 %22, 3
  %24 = select i1 %23, ptr @quantize3_ord_dither, ptr @quantize_ord_dither
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds i8, ptr %4, i64 76
  store i32 0, ptr %26, align 4, !tbaa !45
  %27 = getelementptr inbounds i8, ptr %4, i64 56
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  br label %31

31:                                               ; preds = %30, %20
  %32 = getelementptr inbounds i8, ptr %4, i64 80
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %293

35:                                               ; preds = %31
  %36 = load i32, ptr %21, align 8, !tbaa !24
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %293

38:                                               ; preds = %35
  %39 = load ptr, ptr %3, align 8, !tbaa !17
  %40 = getelementptr inbounds i8, ptr %39, i64 60
  %41 = getelementptr inbounds i8, ptr %39, i64 80
  %42 = getelementptr inbounds i8, ptr %0, i64 8
  br label %43

43:                                               ; preds = %234, %38
  %44 = phi i32 [ %36, %38 ], [ %235, %234 ]
  %45 = phi i64 [ 0, %38 ], [ %238, %234 ]
  %46 = getelementptr inbounds [4 x i32], ptr %40, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !32
  %48 = icmp eq i64 %45, 0
  br i1 %48, label %61, label %52

49:                                               ; preds = %52
  %50 = add nuw nsw i64 %53, 1
  %51 = icmp eq i64 %50, %45
  br i1 %51, label %61, label %52

52:                                               ; preds = %43, %49
  %53 = phi i64 [ %50, %49 ], [ 0, %43 ]
  %54 = getelementptr inbounds [4 x i32], ptr %40, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !32
  %56 = icmp eq i32 %47, %55
  br i1 %56, label %57, label %49

57:                                               ; preds = %52
  %58 = getelementptr inbounds [4 x ptr], ptr %41, i64 0, i64 %53
  %59 = load ptr, ptr %58, align 8, !tbaa !23
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %234

61:                                               ; preds = %49, %57, %43
  %62 = load ptr, ptr %42, align 8, !tbaa !6
  %63 = load ptr, ptr %62, align 8, !tbaa !14
  %64 = tail call ptr %63(ptr noundef %0, i32 noundef signext 1, i64 noundef 1024) #6
  %65 = add nsw i32 %47, -1
  %66 = sext i32 %65 to i64
  %67 = shl nsw i64 %66, 9
  br label %68

68:                                               ; preds = %68, %61
  %69 = phi i64 [ 0, %61 ], [ %230, %68 ]
  %70 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 0
  %71 = load i8, ptr %70, align 1, !tbaa !28
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 1
  %74 = sub nsw i32 255, %73
  %75 = mul nsw i32 %74, 255
  %76 = sext i32 %75 to i64
  %77 = sdiv i64 %76, %67
  %78 = trunc nsw i64 %77 to i32
  %79 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 0
  store i32 %78, ptr %79, align 4, !tbaa !32
  %80 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !28
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 1
  %84 = sub nsw i32 255, %83
  %85 = mul nsw i32 %84, 255
  %86 = sext i32 %85 to i64
  %87 = sdiv i64 %86, %67
  %88 = trunc nsw i64 %87 to i32
  %89 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 1
  store i32 %88, ptr %89, align 4, !tbaa !32
  %90 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 2
  %91 = load i8, ptr %90, align 1, !tbaa !28
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 1
  %94 = sub nsw i32 255, %93
  %95 = mul nsw i32 %94, 255
  %96 = sext i32 %95 to i64
  %97 = sdiv i64 %96, %67
  %98 = trunc nsw i64 %97 to i32
  %99 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 2
  store i32 %98, ptr %99, align 4, !tbaa !32
  %100 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 3
  %101 = load i8, ptr %100, align 1, !tbaa !28
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 1
  %104 = sub nsw i32 255, %103
  %105 = mul nsw i32 %104, 255
  %106 = sext i32 %105 to i64
  %107 = sdiv i64 %106, %67
  %108 = trunc nsw i64 %107 to i32
  %109 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 3
  store i32 %108, ptr %109, align 4, !tbaa !32
  %110 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 4
  %111 = load i8, ptr %110, align 1, !tbaa !28
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 1
  %114 = sub nsw i32 255, %113
  %115 = mul nsw i32 %114, 255
  %116 = sext i32 %115 to i64
  %117 = sdiv i64 %116, %67
  %118 = trunc nsw i64 %117 to i32
  %119 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 4
  store i32 %118, ptr %119, align 4, !tbaa !32
  %120 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 5
  %121 = load i8, ptr %120, align 1, !tbaa !28
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 1
  %124 = sub nsw i32 255, %123
  %125 = mul nsw i32 %124, 255
  %126 = sext i32 %125 to i64
  %127 = sdiv i64 %126, %67
  %128 = trunc nsw i64 %127 to i32
  %129 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 5
  store i32 %128, ptr %129, align 4, !tbaa !32
  %130 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 6
  %131 = load i8, ptr %130, align 1, !tbaa !28
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 1
  %134 = sub nsw i32 255, %133
  %135 = mul nsw i32 %134, 255
  %136 = sext i32 %135 to i64
  %137 = sdiv i64 %136, %67
  %138 = trunc nsw i64 %137 to i32
  %139 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 6
  store i32 %138, ptr %139, align 4, !tbaa !32
  %140 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 7
  %141 = load i8, ptr %140, align 1, !tbaa !28
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 1
  %144 = sub nsw i32 255, %143
  %145 = mul nsw i32 %144, 255
  %146 = sext i32 %145 to i64
  %147 = sdiv i64 %146, %67
  %148 = trunc nsw i64 %147 to i32
  %149 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 7
  store i32 %148, ptr %149, align 4, !tbaa !32
  %150 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 8
  %151 = load i8, ptr %150, align 1, !tbaa !28
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 1
  %154 = sub nsw i32 255, %153
  %155 = mul nsw i32 %154, 255
  %156 = sext i32 %155 to i64
  %157 = sdiv i64 %156, %67
  %158 = trunc nsw i64 %157 to i32
  %159 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 8
  store i32 %158, ptr %159, align 4, !tbaa !32
  %160 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 9
  %161 = load i8, ptr %160, align 1, !tbaa !28
  %162 = zext i8 %161 to i32
  %163 = shl nuw nsw i32 %162, 1
  %164 = sub nsw i32 255, %163
  %165 = mul nsw i32 %164, 255
  %166 = sext i32 %165 to i64
  %167 = sdiv i64 %166, %67
  %168 = trunc nsw i64 %167 to i32
  %169 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 9
  store i32 %168, ptr %169, align 4, !tbaa !32
  %170 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 10
  %171 = load i8, ptr %170, align 1, !tbaa !28
  %172 = zext i8 %171 to i32
  %173 = shl nuw nsw i32 %172, 1
  %174 = sub nsw i32 255, %173
  %175 = mul nsw i32 %174, 255
  %176 = sext i32 %175 to i64
  %177 = sdiv i64 %176, %67
  %178 = trunc nsw i64 %177 to i32
  %179 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 10
  store i32 %178, ptr %179, align 4, !tbaa !32
  %180 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 11
  %181 = load i8, ptr %180, align 1, !tbaa !28
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 1
  %184 = sub nsw i32 255, %183
  %185 = mul nsw i32 %184, 255
  %186 = sext i32 %185 to i64
  %187 = sdiv i64 %186, %67
  %188 = trunc nsw i64 %187 to i32
  %189 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 11
  store i32 %188, ptr %189, align 4, !tbaa !32
  %190 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 12
  %191 = load i8, ptr %190, align 1, !tbaa !28
  %192 = zext i8 %191 to i32
  %193 = shl nuw nsw i32 %192, 1
  %194 = sub nsw i32 255, %193
  %195 = mul nsw i32 %194, 255
  %196 = sext i32 %195 to i64
  %197 = sdiv i64 %196, %67
  %198 = trunc nsw i64 %197 to i32
  %199 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 12
  store i32 %198, ptr %199, align 4, !tbaa !32
  %200 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 13
  %201 = load i8, ptr %200, align 1, !tbaa !28
  %202 = zext i8 %201 to i32
  %203 = shl nuw nsw i32 %202, 1
  %204 = sub nsw i32 255, %203
  %205 = mul nsw i32 %204, 255
  %206 = sext i32 %205 to i64
  %207 = sdiv i64 %206, %67
  %208 = trunc nsw i64 %207 to i32
  %209 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 13
  store i32 %208, ptr %209, align 4, !tbaa !32
  %210 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 14
  %211 = load i8, ptr %210, align 1, !tbaa !28
  %212 = zext i8 %211 to i32
  %213 = shl nuw nsw i32 %212, 1
  %214 = sub nsw i32 255, %213
  %215 = mul nsw i32 %214, 255
  %216 = sext i32 %215 to i64
  %217 = sdiv i64 %216, %67
  %218 = trunc nsw i64 %217 to i32
  %219 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 14
  store i32 %218, ptr %219, align 4, !tbaa !32
  %220 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %69, i64 15
  %221 = load i8, ptr %220, align 1, !tbaa !28
  %222 = zext i8 %221 to i32
  %223 = shl nuw nsw i32 %222, 1
  %224 = sub nsw i32 255, %223
  %225 = mul nsw i32 %224, 255
  %226 = sext i32 %225 to i64
  %227 = sdiv i64 %226, %67
  %228 = trunc nsw i64 %227 to i32
  %229 = getelementptr inbounds [16 x i32], ptr %64, i64 %69, i64 15
  store i32 %228, ptr %229, align 4, !tbaa !32
  %230 = add nuw nsw i64 %69, 1
  %231 = icmp eq i64 %230, 16
  br i1 %231, label %232, label %68

232:                                              ; preds = %68
  %233 = load i32, ptr %21, align 8, !tbaa !24
  br label %234

234:                                              ; preds = %232, %57
  %235 = phi i32 [ %44, %57 ], [ %233, %232 ]
  %236 = phi ptr [ %59, %57 ], [ %64, %232 ]
  %237 = getelementptr inbounds [4 x ptr], ptr %41, i64 0, i64 %45
  store ptr %236, ptr %237, align 8, !tbaa !23
  %238 = add nuw nsw i64 %45, 1
  %239 = sext i32 %235 to i64
  %240 = icmp slt i64 %238, %239
  br i1 %240, label %43, label %293

241:                                              ; preds = %2
  %242 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @quantize_fs_dither, ptr %242, align 8, !tbaa !44
  %243 = getelementptr inbounds i8, ptr %4, i64 144
  store i32 0, ptr %243, align 8, !tbaa !47
  %244 = getelementptr inbounds i8, ptr %4, i64 112
  %245 = load ptr, ptr %244, align 8, !tbaa !23
  %246 = icmp eq ptr %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %241
  %248 = getelementptr inbounds i8, ptr %0, i64 144
  %249 = load i32, ptr %248, align 8, !tbaa !24
  br label %272

250:                                              ; preds = %241
  %251 = getelementptr inbounds i8, ptr %0, i64 136
  %252 = load i32, ptr %251, align 8, !tbaa !40
  %253 = add i32 %252, 2
  %254 = zext i32 %253 to i64
  %255 = shl nuw nsw i64 %254, 1
  %256 = getelementptr inbounds i8, ptr %0, i64 144
  %257 = load i32, ptr %256, align 8, !tbaa !24
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %293

259:                                              ; preds = %250
  %260 = getelementptr inbounds i8, ptr %0, i64 8
  br label %261

261:                                              ; preds = %261, %259
  %262 = phi i64 [ 0, %259 ], [ %268, %261 ]
  %263 = load ptr, ptr %260, align 8, !tbaa !6
  %264 = getelementptr inbounds i8, ptr %263, i64 8
  %265 = load ptr, ptr %264, align 8, !tbaa !41
  %266 = tail call ptr %265(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %255) #6
  %267 = getelementptr inbounds [4 x ptr], ptr %244, i64 0, i64 %262
  store ptr %266, ptr %267, align 8, !tbaa !23
  %268 = add nuw nsw i64 %262, 1
  %269 = load i32, ptr %256, align 8, !tbaa !24
  %270 = sext i32 %269 to i64
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %261, label %272

272:                                              ; preds = %261, %247
  %273 = phi i32 [ %249, %247 ], [ %269, %261 ]
  %274 = getelementptr inbounds i8, ptr %0, i64 136
  %275 = load i32, ptr %274, align 8, !tbaa !40
  %276 = add i32 %275, 2
  %277 = zext i32 %276 to i64
  %278 = shl nuw nsw i64 %277, 1
  %279 = getelementptr inbounds i8, ptr %0, i64 144
  %280 = icmp sgt i32 %273, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %272, %281
  %282 = phi i64 [ %285, %281 ], [ 0, %272 ]
  %283 = getelementptr inbounds [4 x ptr], ptr %244, i64 0, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !23
  tail call void @jzero_far(ptr noundef %284, i64 noundef %278) #6
  %285 = add nuw nsw i64 %282, 1
  %286 = load i32, ptr %279, align 8, !tbaa !24
  %287 = sext i32 %286 to i64
  %288 = icmp slt i64 %285, %287
  br i1 %288, label %281, label %293

289:                                              ; preds = %2
  %290 = load ptr, ptr %0, align 8, !tbaa !25
  %291 = getelementptr inbounds i8, ptr %290, i64 40
  store i32 48, ptr %291, align 8, !tbaa !26
  %292 = load ptr, ptr %290, align 8, !tbaa !29
  tail call void %292(ptr noundef nonnull %0) #6
  br label %293

293:                                              ; preds = %281, %234, %250, %272, %35, %31, %18, %19, %289
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal void @finish_pass_1_quant(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: nounwind
define internal void @new_color_map_1_quant(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !25
  %3 = getelementptr inbounds i8, ptr %2, i64 40
  store i32 46, ptr %3, align 8, !tbaa !26
  %4 = load ptr, ptr %2, align 8, !tbaa !29
  tail call void %4(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @create_colorindex(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 624
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %0, i64 112
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = select i1 %6, i32 766, i32 256
  %9 = getelementptr inbounds i8, ptr %3, i64 56
  store i32 %7, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = getelementptr inbounds i8, ptr %0, i64 144
  %15 = load i32, ptr %14, align 8, !tbaa !24
  %16 = tail call ptr %13(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %8, i32 noundef signext %15) #6
  %17 = getelementptr inbounds i8, ptr %3, i64 48
  store ptr %16, ptr %17, align 8, !tbaa !48
  %18 = load i32, ptr %14, align 8, !tbaa !24
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %93

20:                                               ; preds = %1
  %21 = getelementptr inbounds i8, ptr %3, i64 40
  %22 = load i32, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds i8, ptr %3, i64 60
  br label %24

24:                                               ; preds = %20, %88
  %25 = phi i64 [ 0, %20 ], [ %89, %88 ]
  %26 = phi i32 [ %22, %20 ], [ %29, %88 ]
  %27 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 %25
  %28 = load i32, ptr %27, align 4, !tbaa !32
  %29 = sdiv i32 %26, %28
  %30 = load ptr, ptr %17, align 8, !tbaa !48
  br i1 %6, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds ptr, ptr %30, i64 %25
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = getelementptr inbounds i8, ptr %33, i64 255
  store ptr %34, ptr %32, align 8, !tbaa !23
  %35 = load ptr, ptr %17, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %31, %24
  %37 = phi ptr [ %35, %31 ], [ %30, %24 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %25
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = add nsw i32 %28, -1
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, 255
  %43 = shl nsw i32 %40, 1
  %44 = sext i32 %43 to i64
  %45 = sdiv i64 %42, %44
  %46 = trunc i64 %45 to i32
  br label %47

47:                                               ; preds = %36, %68
  %48 = phi i64 [ 0, %36 ], [ %74, %68 ]
  %49 = phi i32 [ 0, %36 ], [ %70, %68 ]
  %50 = phi i32 [ %46, %36 ], [ %69, %68 ]
  %51 = sext i32 %50 to i64
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = sext i32 %49 to i64
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi i64 [ %54, %53 ], [ %57, %55 ]
  %57 = add nsw i64 %56, 1
  %58 = mul i64 %57, 510
  %59 = add i64 %58, 255
  %60 = add nsw i64 %59, %41
  %61 = sdiv i64 %60, %44
  %62 = shl i64 %61, 32
  %63 = ashr exact i64 %62, 32
  %64 = icmp sgt i64 %48, %63
  br i1 %64, label %55, label %65

65:                                               ; preds = %55
  %66 = trunc i64 %61 to i32
  %67 = trunc nsw i64 %57 to i32
  br label %68

68:                                               ; preds = %65, %47
  %69 = phi i32 [ %50, %47 ], [ %66, %65 ]
  %70 = phi i32 [ %49, %47 ], [ %67, %65 ]
  %71 = mul nsw i32 %70, %29
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %39, i64 %48
  store i8 %72, ptr %73, align 1, !tbaa !28
  %74 = add nuw nsw i64 %48, 1
  %75 = icmp eq i64 %74, 256
  br i1 %75, label %76, label %47

76:                                               ; preds = %68
  br i1 %6, label %77, label %88

77:                                               ; preds = %76
  %78 = getelementptr inbounds i8, ptr %39, i64 255
  %79 = load i8, ptr %39, align 1, !tbaa !28
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi i64 [ 1, %77 ], [ %86, %80 ]
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds i8, ptr %39, i64 %82
  store i8 %79, ptr %83, align 1, !tbaa !28
  %84 = load i8, ptr %78, align 1, !tbaa !28
  %85 = getelementptr inbounds i8, ptr %78, i64 %81
  store i8 %84, ptr %85, align 1, !tbaa !28
  %86 = add nuw nsw i64 %81, 1
  %87 = icmp eq i64 %86, 256
  br i1 %87, label %88, label %80

88:                                               ; preds = %80, %76
  %89 = add nuw nsw i64 %25, 1
  %90 = load i32, ptr %14, align 8, !tbaa !24
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %24, label %93

93:                                               ; preds = %88, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @color_quantize3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) #2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 624
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 48
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds i8, ptr %8, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = getelementptr inbounds i8, ptr %0, i64 136
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = icmp slt i32 %3, 1
  %17 = icmp eq i32 %15, 0
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %54, label %19

19:                                               ; preds = %4
  %20 = zext nneg i32 %3 to i64
  br label %21

21:                                               ; preds = %19, %51
  %22 = phi i64 [ 0, %19 ], [ %52, %51 ]
  %23 = getelementptr inbounds ptr, ptr %1, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = getelementptr inbounds ptr, ptr %2, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !23
  br label %27

27:                                               ; preds = %21, %27
  %28 = phi ptr [ %24, %21 ], [ %42, %27 ]
  %29 = phi i32 [ %15, %21 ], [ %49, %27 ]
  %30 = phi ptr [ %26, %21 ], [ %48, %27 ]
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  %32 = load i8, ptr %28, align 1, !tbaa !28
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %9, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !28
  %36 = getelementptr inbounds i8, ptr %28, i64 2
  %37 = load i8, ptr %31, align 1, !tbaa !28
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i8, ptr %11, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !28
  %41 = add i8 %40, %35
  %42 = getelementptr inbounds i8, ptr %28, i64 3
  %43 = load i8, ptr %36, align 1, !tbaa !28
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, ptr %13, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !28
  %47 = add i8 %41, %46
  %48 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %47, ptr %30, align 1, !tbaa !28
  %49 = add i32 %29, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %27

51:                                               ; preds = %27
  %52 = add nuw nsw i64 %22, 1
  %53 = icmp eq i64 %52, %20
  br i1 %53, label %54, label %21

54:                                               ; preds = %51, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @color_quantize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) #2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 624
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 48
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds i8, ptr %0, i64 136
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = getelementptr inbounds i8, ptr %0, i64 144
  %12 = load i32, ptr %11, align 8, !tbaa !24
  %13 = icmp slt i32 %3, 1
  %14 = icmp eq i32 %10, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %64, label %16

16:                                               ; preds = %4
  %17 = icmp sgt i32 %12, 0
  %18 = zext nneg i32 %3 to i64
  br i1 %17, label %21, label %19

19:                                               ; preds = %16
  %20 = zext i32 %10 to i64
  br label %58

21:                                               ; preds = %16
  %22 = zext nneg i32 %12 to i64
  %23 = zext nneg i32 %12 to i64
  br label %24

24:                                               ; preds = %21, %55
  %25 = phi i64 [ 0, %21 ], [ %56, %55 ]
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  %28 = getelementptr inbounds ptr, ptr %2, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !23
  br label %30

30:                                               ; preds = %49, %24
  %31 = phi i32 [ %10, %24 ], [ %53, %49 ]
  %32 = phi ptr [ %29, %24 ], [ %52, %49 ]
  %33 = phi ptr [ %27, %24 ], [ %50, %49 ]
  br label %34

34:                                               ; preds = %34, %30
  %35 = phi i64 [ %47, %34 ], [ 0, %30 ]
  %36 = phi i32 [ %46, %34 ], [ 0, %30 ]
  %37 = phi ptr [ %40, %34 ], [ %33, %30 ]
  %38 = getelementptr inbounds ptr, ptr %8, i64 %35
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = getelementptr inbounds i8, ptr %37, i64 1
  %41 = load i8, ptr %37, align 1, !tbaa !28
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !28
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %36, %45
  %47 = add nuw nsw i64 %35, 1
  %48 = icmp eq i64 %47, %23
  br i1 %48, label %49, label %34

49:                                               ; preds = %34
  %50 = getelementptr i8, ptr %33, i64 %22
  %51 = trunc i32 %46 to i8
  %52 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %51, ptr %32, align 1, !tbaa !28
  %53 = add i32 %31, -1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %30

55:                                               ; preds = %49
  %56 = add nuw nsw i64 %25, 1
  %57 = icmp eq i64 %56, %18
  br i1 %57, label %64, label %24

58:                                               ; preds = %19, %58
  %59 = phi i64 [ 0, %19 ], [ %62, %58 ]
  %60 = getelementptr inbounds ptr, ptr %2, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr align 1 %61, i8 0, i64 %20, i1 false), !tbaa !28
  %62 = add nuw nsw i64 %59, 1
  %63 = icmp eq i64 %62, %18
  br i1 %63, label %64, label %58

64:                                               ; preds = %58, %55, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @quantize3_ord_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) #2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 624
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 48
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds i8, ptr %8, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = getelementptr inbounds i8, ptr %0, i64 136
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = icmp sgt i32 %3, 0
  br i1 %16, label %17, label %95

17:                                               ; preds = %4
  %18 = getelementptr inbounds i8, ptr %6, i64 76
  %19 = getelementptr inbounds i8, ptr %6, i64 80
  %20 = getelementptr inbounds i8, ptr %6, i64 88
  %21 = getelementptr inbounds i8, ptr %6, i64 96
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = zext nneg i32 %3 to i64
  %25 = load i32, ptr %18, align 4, !tbaa !45
  br label %36

26:                                               ; preds = %17
  %27 = load i32, ptr %18, align 4, !tbaa !45
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %30 = phi i32 [ 0, %26 ], [ %33, %28 ]
  %31 = add nsw i32 %29, 1
  %32 = and i32 %31, 15
  %33 = add nuw nsw i32 %30, 1
  %34 = icmp eq i32 %33, %3
  br i1 %34, label %35, label %28

35:                                               ; preds = %28
  store i32 %32, ptr %18, align 4, !tbaa !45
  br label %95

36:                                               ; preds = %23, %90
  %37 = phi i32 [ %25, %23 ], [ %92, %90 ]
  %38 = phi i64 [ 0, %23 ], [ %93, %90 ]
  %39 = getelementptr inbounds ptr, ptr %1, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !23
  %41 = getelementptr inbounds ptr, ptr %2, i64 %38
  %42 = load ptr, ptr %41, align 8, !tbaa !23
  %43 = load ptr, ptr %19, align 8, !tbaa !23
  %44 = sext i32 %37 to i64
  %45 = getelementptr inbounds [16 x i32], ptr %43, i64 %44
  %46 = load ptr, ptr %20, align 8, !tbaa !23
  %47 = getelementptr inbounds [16 x i32], ptr %46, i64 %44
  %48 = load ptr, ptr %21, align 8, !tbaa !23
  %49 = getelementptr inbounds [16 x i32], ptr %48, i64 %44
  br label %50

50:                                               ; preds = %36, %50
  %51 = phi ptr [ %40, %36 ], [ %75, %50 ]
  %52 = phi i32 [ %15, %36 ], [ %88, %50 ]
  %53 = phi i32 [ 0, %36 ], [ %87, %50 ]
  %54 = phi ptr [ %42, %36 ], [ %85, %50 ]
  %55 = getelementptr inbounds i8, ptr %51, i64 1
  %56 = load i8, ptr %51, align 1, !tbaa !28
  %57 = zext i8 %56 to i32
  %58 = zext nneg i32 %53 to i64
  %59 = getelementptr inbounds i32, ptr %45, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !32
  %61 = add nsw i32 %60, %57
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %9, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !28
  %65 = getelementptr inbounds i8, ptr %51, i64 2
  %66 = load i8, ptr %55, align 1, !tbaa !28
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds i32, ptr %47, i64 %58
  %69 = load i32, ptr %68, align 4, !tbaa !32
  %70 = add nsw i32 %69, %67
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %11, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !28
  %74 = add i8 %73, %64
  %75 = getelementptr inbounds i8, ptr %51, i64 3
  %76 = load i8, ptr %65, align 1, !tbaa !28
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds i32, ptr %49, i64 %58
  %79 = load i32, ptr %78, align 4, !tbaa !32
  %80 = add nsw i32 %79, %77
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %13, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !28
  %84 = add i8 %74, %83
  %85 = getelementptr inbounds i8, ptr %54, i64 1
  store i8 %84, ptr %54, align 1, !tbaa !28
  %86 = add nuw nsw i32 %53, 1
  %87 = and i32 %86, 15
  %88 = add i32 %52, -1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %50

90:                                               ; preds = %50
  %91 = add nsw i32 %37, 1
  %92 = and i32 %91, 15
  store i32 %92, ptr %18, align 4, !tbaa !45
  %93 = add nuw nsw i64 %38, 1
  %94 = icmp eq i64 %93, %24
  br i1 %94, label %95, label %36

95:                                               ; preds = %90, %35, %4
  ret void
}

; Function Attrs: nounwind
define internal void @quantize_ord_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 144
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = freeze i32 %6
  %8 = getelementptr inbounds i8, ptr %0, i64 136
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = freeze i32 %9
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %94

12:                                               ; preds = %4
  %13 = getelementptr inbounds i8, ptr %0, i64 624
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 76
  %17 = icmp sgt i32 %7, 0
  %18 = getelementptr inbounds i8, ptr %14, i64 48
  %19 = getelementptr inbounds i8, ptr %14, i64 80
  %20 = sext i32 %7 to i64
  br i1 %17, label %23, label %21

21:                                               ; preds = %12
  %22 = zext nneg i32 %3 to i64
  br label %85

23:                                               ; preds = %12
  %24 = icmp eq i32 %10, 0
  %25 = zext nneg i32 %3 to i64
  br i1 %24, label %28, label %26

26:                                               ; preds = %23
  %27 = zext nneg i32 %7 to i64
  br label %37

28:                                               ; preds = %23, %28
  %29 = phi i64 [ %35, %28 ], [ 0, %23 ]
  %30 = getelementptr inbounds ptr, ptr %2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  tail call void @jzero_far(ptr noundef %31, i64 noundef %15) #6
  %32 = load i32, ptr %16, align 4, !tbaa !45
  %33 = add nsw i32 %32, 1
  %34 = and i32 %33, 15
  store i32 %34, ptr %16, align 4, !tbaa !45
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %25
  br i1 %36, label %94, label %28

37:                                               ; preds = %26, %80
  %38 = phi i64 [ 0, %26 ], [ %83, %80 ]
  %39 = getelementptr inbounds ptr, ptr %2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !23
  tail call void @jzero_far(ptr noundef %40, i64 noundef %15) #6
  %41 = load i32, ptr %16, align 4, !tbaa !45
  %42 = getelementptr inbounds ptr, ptr %1, i64 %38
  %43 = sext i32 %41 to i64
  br label %44

44:                                               ; preds = %37, %77
  %45 = phi i64 [ 0, %37 ], [ %78, %77 ]
  %46 = load ptr, ptr %42, align 8, !tbaa !23
  %47 = getelementptr inbounds i8, ptr %46, i64 %45
  %48 = load ptr, ptr %39, align 8, !tbaa !23
  %49 = load ptr, ptr %18, align 8, !tbaa !48
  %50 = getelementptr inbounds ptr, ptr %49, i64 %45
  %51 = load ptr, ptr %50, align 8, !tbaa !23
  %52 = getelementptr inbounds [4 x ptr], ptr %19, i64 0, i64 %45
  %53 = load ptr, ptr %52, align 8, !tbaa !23
  %54 = getelementptr inbounds [16 x i32], ptr %53, i64 %43
  br label %55

55:                                               ; preds = %55, %44
  %56 = phi ptr [ %47, %44 ], [ %71, %55 ]
  %57 = phi i32 [ %10, %44 ], [ %75, %55 ]
  %58 = phi ptr [ %48, %44 ], [ %72, %55 ]
  %59 = phi i32 [ 0, %44 ], [ %74, %55 ]
  %60 = load i8, ptr %56, align 1, !tbaa !28
  %61 = zext i8 %60 to i32
  %62 = zext nneg i32 %59 to i64
  %63 = getelementptr inbounds i32, ptr %54, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !32
  %65 = add nsw i32 %64, %61
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %51, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !28
  %69 = load i8, ptr %58, align 1, !tbaa !28
  %70 = add i8 %69, %68
  store i8 %70, ptr %58, align 1, !tbaa !28
  %71 = getelementptr inbounds i8, ptr %56, i64 %20
  %72 = getelementptr inbounds i8, ptr %58, i64 1
  %73 = add nuw nsw i32 %59, 1
  %74 = and i32 %73, 15
  %75 = add i32 %57, -1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %55

77:                                               ; preds = %55
  %78 = add nuw nsw i64 %45, 1
  %79 = icmp eq i64 %78, %27
  br i1 %79, label %80, label %44

80:                                               ; preds = %77
  %81 = add nsw i32 %41, 1
  %82 = and i32 %81, 15
  store i32 %82, ptr %16, align 4, !tbaa !45
  %83 = add nuw nsw i64 %38, 1
  %84 = icmp eq i64 %83, %25
  br i1 %84, label %94, label %37

85:                                               ; preds = %21, %85
  %86 = phi i64 [ 0, %21 ], [ %92, %85 ]
  %87 = getelementptr inbounds ptr, ptr %2, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !23
  tail call void @jzero_far(ptr noundef %88, i64 noundef %15) #6
  %89 = load i32, ptr %16, align 4, !tbaa !45
  %90 = add nsw i32 %89, 1
  %91 = and i32 %90, 15
  store i32 %91, ptr %16, align 4, !tbaa !45
  %92 = add nuw nsw i64 %86, 1
  %93 = icmp eq i64 %92, %22
  br i1 %93, label %94, label %85

94:                                               ; preds = %85, %80, %28, %4
  ret void
}

; Function Attrs: nounwind
define internal void @quantize_fs_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 144
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = freeze i32 %6
  %8 = getelementptr inbounds i8, ptr %0, i64 136
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = freeze i32 %9
  %11 = getelementptr inbounds i8, ptr %0, i64 424
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %155

14:                                               ; preds = %4
  %15 = getelementptr inbounds i8, ptr %0, i64 624
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = zext i32 %10 to i64
  %18 = icmp sgt i32 %7, 0
  %19 = getelementptr inbounds i8, ptr %16, i64 144
  %20 = add i32 %10, -1
  %21 = mul i32 %20, %7
  %22 = zext i32 %21 to i64
  %23 = zext i32 %20 to i64
  %24 = sub nsw i32 0, %7
  %25 = getelementptr inbounds i8, ptr %16, i64 112
  %26 = add i32 %10, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %16, i64 48
  %29 = getelementptr inbounds i8, ptr %16, i64 32
  br i1 %18, label %32, label %30

30:                                               ; preds = %14
  %31 = zext nneg i32 %3 to i64
  br label %146

32:                                               ; preds = %14
  %33 = icmp eq i32 %10, 0
  %34 = zext nneg i32 %3 to i64
  %35 = zext nneg i32 %7 to i64
  br i1 %33, label %36, label %61

36:                                               ; preds = %32
  %37 = zext nneg i32 %7 to i64
  br label %38

38:                                               ; preds = %36, %51
  %39 = phi i64 [ 0, %36 ], [ %53, %51 ]
  %40 = getelementptr inbounds ptr, ptr %2, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  tail call void @jzero_far(ptr noundef %41, i64 noundef %17) #6
  %42 = load i32, ptr %19, align 8, !tbaa !47
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %38, %44
  %45 = phi i64 [ %49, %44 ], [ 0, %38 ]
  %46 = getelementptr inbounds [4 x ptr], ptr %25, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = getelementptr inbounds i16, ptr %47, i64 %27
  store i16 0, ptr %48, align 2, !tbaa !50
  %49 = add nuw nsw i64 %45, 1
  %50 = icmp eq i64 %49, %35
  br i1 %50, label %51, label %44

51:                                               ; preds = %44, %55
  %52 = zext i1 %43 to i32
  store i32 %52, ptr %19, align 8, !tbaa !47
  %53 = add nuw nsw i64 %39, 1
  %54 = icmp eq i64 %53, %34
  br i1 %54, label %155, label %38

55:                                               ; preds = %38, %55
  %56 = phi i64 [ %59, %55 ], [ 0, %38 ]
  %57 = getelementptr inbounds [4 x ptr], ptr %25, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !23
  store i16 0, ptr %58, align 2, !tbaa !50
  %59 = add nuw nsw i64 %56, 1
  %60 = icmp eq i64 %59, %37
  br i1 %60, label %51, label %55

61:                                               ; preds = %32, %140
  %62 = phi i64 [ %144, %140 ], [ 0, %32 ]
  %63 = getelementptr inbounds ptr, ptr %2, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !23
  tail call void @jzero_far(ptr noundef %64, i64 noundef %17) #6
  %65 = getelementptr inbounds ptr, ptr %1, i64 %62
  br label %66

66:                                               ; preds = %61, %136
  %67 = phi i64 [ 0, %61 ], [ %138, %136 ]
  %68 = load ptr, ptr %65, align 8, !tbaa !23
  %69 = getelementptr inbounds i8, ptr %68, i64 %67
  %70 = load ptr, ptr %63, align 8, !tbaa !23
  %71 = load i32, ptr %19, align 8, !tbaa !47
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds i8, ptr %69, i64 %22
  %75 = getelementptr inbounds i8, ptr %70, i64 %23
  %76 = getelementptr inbounds [4 x ptr], ptr %25, i64 0, i64 %67
  %77 = load ptr, ptr %76, align 8, !tbaa !23
  %78 = getelementptr inbounds i16, ptr %77, i64 %27
  br label %82

79:                                               ; preds = %66
  %80 = getelementptr inbounds [4 x ptr], ptr %25, i64 0, i64 %67
  %81 = load ptr, ptr %80, align 8, !tbaa !23
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi ptr [ %75, %73 ], [ %70, %79 ]
  %84 = phi ptr [ %74, %73 ], [ %69, %79 ]
  %85 = phi ptr [ %78, %73 ], [ %81, %79 ]
  %86 = phi i64 [ -1, %73 ], [ 1, %79 ]
  %87 = phi i32 [ %24, %73 ], [ %7, %79 ]
  %88 = load ptr, ptr %28, align 8, !tbaa !48
  %89 = getelementptr inbounds ptr, ptr %88, i64 %67
  %90 = load ptr, ptr %89, align 8, !tbaa !23
  %91 = load ptr, ptr %29, align 8, !tbaa !37
  %92 = getelementptr inbounds ptr, ptr %91, i64 %67
  %93 = load ptr, ptr %92, align 8, !tbaa !23
  %94 = sext i32 %87 to i64
  br label %95

95:                                               ; preds = %95, %82
  %96 = phi i32 [ 0, %82 ], [ %131, %95 ]
  %97 = phi i32 [ 0, %82 ], [ %125, %95 ]
  %98 = phi i32 [ %10, %82 ], [ %134, %95 ]
  %99 = phi i32 [ 0, %82 ], [ %130, %95 ]
  %100 = phi ptr [ %85, %82 ], [ %103, %95 ]
  %101 = phi ptr [ %84, %82 ], [ %132, %95 ]
  %102 = phi ptr [ %83, %82 ], [ %133, %95 ]
  %103 = getelementptr inbounds i16, ptr %100, i64 %86
  %104 = load i16, ptr %103, align 2, !tbaa !50
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %96, 8
  %107 = add nsw i32 %106, %105
  %108 = ashr i32 %107, 4
  %109 = load i8, ptr %101, align 1, !tbaa !28
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %108, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %12, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !28
  %115 = zext i8 %114 to i32
  %116 = zext i8 %114 to i64
  %117 = getelementptr inbounds i8, ptr %90, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !28
  %119 = load i8, ptr %102, align 1, !tbaa !28
  %120 = add i8 %119, %118
  store i8 %120, ptr %102, align 1, !tbaa !28
  %121 = zext i8 %118 to i64
  %122 = getelementptr inbounds i8, ptr %93, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !28
  %124 = zext i8 %123 to i32
  %125 = sub nsw i32 %115, %124
  %126 = mul nsw i32 %125, 3
  %127 = add nsw i32 %126, %99
  %128 = trunc nsw i32 %127 to i16
  store i16 %128, ptr %100, align 2, !tbaa !50
  %129 = mul nsw i32 %125, 5
  %130 = add nsw i32 %129, %97
  %131 = mul nsw i32 %125, 7
  %132 = getelementptr inbounds i8, ptr %101, i64 %94
  %133 = getelementptr inbounds i8, ptr %102, i64 %86
  %134 = add i32 %98, -1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %95

136:                                              ; preds = %95
  %137 = trunc nsw i32 %130 to i16
  store i16 %137, ptr %103, align 2, !tbaa !50
  %138 = add nuw nsw i64 %67, 1
  %139 = icmp eq i64 %138, %35
  br i1 %139, label %140, label %66

140:                                              ; preds = %136
  %141 = load i32, ptr %19, align 8, !tbaa !47
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i32
  store i32 %143, ptr %19, align 8, !tbaa !47
  %144 = add nuw nsw i64 %62, 1
  %145 = icmp eq i64 %144, %34
  br i1 %145, label %155, label %61

146:                                              ; preds = %30, %146
  %147 = phi i64 [ 0, %30 ], [ %153, %146 ]
  %148 = getelementptr inbounds ptr, ptr %2, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !23
  tail call void @jzero_far(ptr noundef %149, i64 noundef %17) #6
  %150 = load i32, ptr %19, align 8, !tbaa !47
  %151 = icmp eq i32 %150, 0
  %152 = zext i1 %151 to i32
  store i32 %152, ptr %19, align 8, !tbaa !47
  %153 = add nuw nsw i64 %147, 1
  %154 = icmp eq i64 %153, %31
  br i1 %154, label %155, label %146

155:                                              ; preds = %146, %140, %51, %4
  ret void
}

declare dso_local void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 624}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !8, i64 32, !11, i64 40, !8, i64 48, !11, i64 56, !9, i64 60, !11, i64 76, !9, i64 80, !9, i64 112, !11, i64 144}
!20 = !{!"jpeg_color_quantizer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!21 = !{!19, !8, i64 16}
!22 = !{!19, !8, i64 24}
!23 = !{!8, !8, i64 0}
!24 = !{!7, !11, i64 144}
!25 = !{!7, !8, i64 0}
!26 = !{!27, !11, i64 40}
!27 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!28 = !{!9, !9, i64 0}
!29 = !{!27, !8, i64 0}
!30 = !{!7, !11, i64 120}
!31 = !{!7, !11, i64 64}
!32 = !{!11, !11, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = !{!27, !8, i64 8}
!36 = !{!15, !8, i64 16}
!37 = !{!19, !8, i64 32}
!38 = !{!19, !11, i64 40}
!39 = !{!7, !11, i64 112}
!40 = !{!7, !11, i64 136}
!41 = !{!15, !8, i64 8}
!42 = !{!7, !8, i64 160}
!43 = !{!7, !11, i64 156}
!44 = !{!19, !8, i64 8}
!45 = !{!19, !11, i64 76}
!46 = !{!19, !11, i64 56}
!47 = !{!19, !11, i64 144}
!48 = !{!19, !8, i64 48}
!49 = !{!7, !8, i64 424}
!50 = !{!13, !13, i64 0}
