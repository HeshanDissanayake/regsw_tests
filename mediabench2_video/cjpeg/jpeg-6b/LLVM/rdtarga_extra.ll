; ModuleID = 'rdtarga.c'
source_filename = "rdtarga.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@c5to8bits = internal unnamed_addr constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 1

; Function Attrs: nounwind
define dso_local noundef ptr @jinit_read_targa(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 112) #4
  %6 = getelementptr inbounds i8, ptr %5, i64 48
  store ptr %0, ptr %6, align 8, !tbaa !17
  store ptr @start_input_tga, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @finish_input_tga, ptr %7, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @start_input_tga(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [18 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #4
  %4 = getelementptr inbounds i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 18, ptr noundef %5)
  %7 = icmp eq i64 %6, 18
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !23
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  store i32 43, ptr %10, align 8, !tbaa !24
  %11 = load ptr, ptr %9, align 8, !tbaa !26
  tail call void %11(ptr noundef nonnull %0) #4
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds i8, ptr %3, i64 16
  %14 = load i8, ptr %13, align 1, !tbaa !27
  %15 = icmp eq i8 %14, 15
  %16 = select i1 %15, i8 16, i8 %14
  store i8 %16, ptr %13, align 1
  %17 = load i8, ptr %3, align 1, !tbaa !27
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds i8, ptr %3, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !27
  %21 = getelementptr inbounds i8, ptr %3, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !27
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %3, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !27
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %3, i64 6
  %28 = load i8, ptr %27, align 1, !tbaa !27
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or disjoint i32 %30, %26
  %32 = getelementptr inbounds i8, ptr %3, i64 12
  %33 = load i8, ptr %32, align 1, !tbaa !27
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds i8, ptr %3, i64 13
  %36 = load i8, ptr %35, align 1, !tbaa !27
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or disjoint i32 %38, %34
  %40 = getelementptr inbounds i8, ptr %3, i64 14
  %41 = load i8, ptr %40, align 1, !tbaa !27
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds i8, ptr %3, i64 15
  %44 = load i8, ptr %43, align 1, !tbaa !27
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = or disjoint i32 %46, %42
  %48 = lshr i8 %16, 3
  %49 = zext nneg i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %1, i64 92
  store i32 %49, ptr %50, align 4, !tbaa !28
  %51 = getelementptr inbounds i8, ptr %3, i64 17
  %52 = load i8, ptr %51, align 1, !tbaa !27
  %53 = and i8 %52, 32
  %54 = icmp eq i8 %53, 0
  %55 = icmp ugt i8 %20, 1
  %56 = add i8 %16, -40
  %57 = icmp ult i8 %56, -32
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %12
  %60 = and i8 %16, 7
  %61 = icmp ne i8 %60, 0
  %62 = icmp ugt i8 %52, 63
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59, %12
  %65 = load ptr, ptr %0, align 8, !tbaa !23
  %66 = getelementptr inbounds i8, ptr %65, i64 40
  store i32 1033, ptr %66, align 8, !tbaa !24
  %67 = load ptr, ptr %65, align 8, !tbaa !26
  tail call void %67(ptr noundef %0) #4
  br label %68

68:                                               ; preds = %59, %64
  %69 = icmp ugt i8 %22, 8
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = getelementptr inbounds i8, ptr %1, i64 100
  store i32 0, ptr %71, align 4, !tbaa !29
  %72 = getelementptr inbounds i8, ptr %1, i64 96
  store i32 0, ptr %72, align 8, !tbaa !30
  %73 = add nsw i32 %23, -8
  br label %74

74:                                               ; preds = %68, %70
  %75 = phi ptr [ @read_rle_pixel, %70 ], [ @read_non_rle_pixel, %68 ]
  %76 = phi i32 [ %73, %70 ], [ %23, %68 ]
  %77 = getelementptr inbounds i8, ptr %1, i64 80
  store ptr %75, ptr %77, align 8
  %78 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 2, ptr %78, align 4, !tbaa !31
  switch i32 %76, label %138 [
    i32 1, label %79
    i32 2, label %99
    i32 3, label %120
  ]

79:                                               ; preds = %74
  %80 = load i32, ptr %50, align 4, !tbaa !28
  %81 = icmp eq i32 %80, 1
  %82 = icmp eq i8 %20, 1
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = getelementptr inbounds i8, ptr %1, i64 104
  store ptr @get_8bit_row, ptr %85, align 8, !tbaa !32
  br label %90

86:                                               ; preds = %79
  %87 = load ptr, ptr %0, align 8, !tbaa !23
  %88 = getelementptr inbounds i8, ptr %87, i64 40
  store i32 1033, ptr %88, align 8, !tbaa !24
  %89 = load ptr, ptr %87, align 8, !tbaa !26
  tail call void %89(ptr noundef nonnull %0) #4
  br label %90

90:                                               ; preds = %86, %84
  %91 = load ptr, ptr %0, align 8, !tbaa !23
  %92 = getelementptr inbounds i8, ptr %91, i64 40
  store i32 1037, ptr %92, align 8, !tbaa !24
  %93 = getelementptr inbounds i8, ptr %91, i64 44
  store i32 %39, ptr %93, align 4, !tbaa !27
  %94 = load ptr, ptr %0, align 8, !tbaa !23
  %95 = getelementptr inbounds i8, ptr %94, i64 48
  store i32 %47, ptr %95, align 4, !tbaa !27
  %96 = load ptr, ptr %0, align 8, !tbaa !23
  %97 = getelementptr inbounds i8, ptr %96, i64 8
  %98 = load ptr, ptr %97, align 8, !tbaa !33
  tail call void %98(ptr noundef nonnull %0, i32 noundef signext 1) #4
  br label %142

99:                                               ; preds = %74
  %100 = load i32, ptr %50, align 4, !tbaa !28
  switch i32 %100, label %107 [
    i32 2, label %101
    i32 3, label %103
    i32 4, label %105
  ]

101:                                              ; preds = %99
  %102 = getelementptr inbounds i8, ptr %1, i64 104
  store ptr @get_16bit_row, ptr %102, align 8, !tbaa !32
  br label %111

103:                                              ; preds = %99
  %104 = getelementptr inbounds i8, ptr %1, i64 104
  store ptr @get_24bit_row, ptr %104, align 8, !tbaa !32
  br label %111

105:                                              ; preds = %99
  %106 = getelementptr inbounds i8, ptr %1, i64 104
  store ptr @get_24bit_row, ptr %106, align 8, !tbaa !32
  br label %111

107:                                              ; preds = %99
  %108 = load ptr, ptr %0, align 8, !tbaa !23
  %109 = getelementptr inbounds i8, ptr %108, i64 40
  store i32 1033, ptr %109, align 8, !tbaa !24
  %110 = load ptr, ptr %108, align 8, !tbaa !26
  tail call void %110(ptr noundef nonnull %0) #4
  br label %111

111:                                              ; preds = %107, %105, %103, %101
  %112 = load ptr, ptr %0, align 8, !tbaa !23
  %113 = getelementptr inbounds i8, ptr %112, i64 40
  store i32 1035, ptr %113, align 8, !tbaa !24
  %114 = getelementptr inbounds i8, ptr %112, i64 44
  store i32 %39, ptr %114, align 4, !tbaa !27
  %115 = load ptr, ptr %0, align 8, !tbaa !23
  %116 = getelementptr inbounds i8, ptr %115, i64 48
  store i32 %47, ptr %116, align 4, !tbaa !27
  %117 = load ptr, ptr %0, align 8, !tbaa !23
  %118 = getelementptr inbounds i8, ptr %117, i64 8
  %119 = load ptr, ptr %118, align 8, !tbaa !33
  tail call void %119(ptr noundef nonnull %0, i32 noundef signext 1) #4
  br label %142

120:                                              ; preds = %74
  store i32 1, ptr %78, align 4, !tbaa !31
  %121 = load i32, ptr %50, align 4, !tbaa !28
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = getelementptr inbounds i8, ptr %1, i64 104
  store ptr @get_8bit_gray_row, ptr %124, align 8, !tbaa !32
  br label %129

125:                                              ; preds = %120
  %126 = load ptr, ptr %0, align 8, !tbaa !23
  %127 = getelementptr inbounds i8, ptr %126, i64 40
  store i32 1033, ptr %127, align 8, !tbaa !24
  %128 = load ptr, ptr %126, align 8, !tbaa !26
  tail call void %128(ptr noundef nonnull %0) #4
  br label %129

129:                                              ; preds = %125, %123
  %130 = load ptr, ptr %0, align 8, !tbaa !23
  %131 = getelementptr inbounds i8, ptr %130, i64 40
  store i32 1036, ptr %131, align 8, !tbaa !24
  %132 = getelementptr inbounds i8, ptr %130, i64 44
  store i32 %39, ptr %132, align 4, !tbaa !27
  %133 = load ptr, ptr %0, align 8, !tbaa !23
  %134 = getelementptr inbounds i8, ptr %133, i64 48
  store i32 %47, ptr %134, align 4, !tbaa !27
  %135 = load ptr, ptr %0, align 8, !tbaa !23
  %136 = getelementptr inbounds i8, ptr %135, i64 8
  %137 = load ptr, ptr %136, align 8, !tbaa !33
  tail call void %137(ptr noundef nonnull %0, i32 noundef signext 1) #4
  br label %142

138:                                              ; preds = %74
  %139 = load ptr, ptr %0, align 8, !tbaa !23
  %140 = getelementptr inbounds i8, ptr %139, i64 40
  store i32 1033, ptr %140, align 8, !tbaa !24
  %141 = load ptr, ptr %139, align 8, !tbaa !26
  tail call void %141(ptr noundef nonnull %0) #4
  br label %142

142:                                              ; preds = %138, %129, %111, %90
  %143 = phi i32 [ 3, %138 ], [ 1, %129 ], [ 3, %111 ], [ 3, %90 ]
  br i1 %54, label %144, label %161

144:                                              ; preds = %142
  %145 = getelementptr inbounds i8, ptr %0, i64 8
  %146 = load ptr, ptr %145, align 8, !tbaa !6
  %147 = getelementptr inbounds i8, ptr %146, i64 32
  %148 = load ptr, ptr %147, align 8, !tbaa !34
  %149 = mul nuw nsw i32 %143, %39
  %150 = tail call ptr %148(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %149, i32 noundef signext %47, i32 noundef signext 1) #4
  %151 = getelementptr inbounds i8, ptr %1, i64 64
  store ptr %150, ptr %151, align 8, !tbaa !35
  %152 = getelementptr inbounds i8, ptr %0, i64 16
  %153 = load ptr, ptr %152, align 8, !tbaa !36
  %154 = icmp eq ptr %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %144
  %156 = getelementptr inbounds i8, ptr %153, i64 36
  %157 = load i32, ptr %156, align 4, !tbaa !37
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr %156, align 4, !tbaa !37
  br label %159

159:                                              ; preds = %155, %144
  %160 = getelementptr inbounds i8, ptr %1, i64 40
  store i32 1, ptr %160, align 8, !tbaa !40
  br label %173

161:                                              ; preds = %142
  %162 = getelementptr inbounds i8, ptr %1, i64 64
  store ptr null, ptr %162, align 8, !tbaa !35
  %163 = getelementptr inbounds i8, ptr %0, i64 8
  %164 = load ptr, ptr %163, align 8, !tbaa !6
  %165 = getelementptr inbounds i8, ptr %164, i64 16
  %166 = load ptr, ptr %165, align 8, !tbaa !41
  %167 = mul nuw nsw i32 %143, %39
  %168 = tail call ptr %166(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %167, i32 noundef signext 1) #4
  %169 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr %168, ptr %169, align 8, !tbaa !42
  %170 = getelementptr inbounds i8, ptr %1, i64 40
  store i32 1, ptr %170, align 8, !tbaa !40
  %171 = getelementptr inbounds i8, ptr %1, i64 104
  %172 = load ptr, ptr %171, align 8, !tbaa !32
  br label %173

173:                                              ; preds = %161, %159
  %174 = phi ptr [ %172, %161 ], [ @preload_image, %159 ]
  %175 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr %174, ptr %175, align 8, !tbaa !43
  %176 = icmp eq i8 %17, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds i8, ptr %1, i64 48
  br label %179

179:                                              ; preds = %177, %190
  %180 = phi i32 [ %18, %177 ], [ %181, %190 ]
  %181 = add nsw i32 %180, -1
  %182 = load ptr, ptr %4, align 8, !tbaa !22
  %183 = tail call signext i32 @getc(ptr noundef %182)
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load ptr, ptr %178, align 8, !tbaa !17
  %187 = load ptr, ptr %186, align 8, !tbaa !23
  %188 = getelementptr inbounds i8, ptr %187, i64 40
  store i32 43, ptr %188, align 8, !tbaa !24
  %189 = load ptr, ptr %187, align 8, !tbaa !26
  tail call void %189(ptr noundef nonnull %186) #4
  br label %190

190:                                              ; preds = %179, %185
  %191 = icmp eq i32 %181, 0
  br i1 %191, label %192, label %179

192:                                              ; preds = %190, %173
  %193 = icmp eq i32 %31, 0
  br i1 %193, label %274, label %194

194:                                              ; preds = %192
  %195 = icmp ugt i32 %31, 256
  br i1 %195, label %206, label %196

196:                                              ; preds = %194
  %197 = getelementptr inbounds i8, ptr %3, i64 3
  %198 = load i8, ptr %197, align 1, !tbaa !27
  %199 = zext i8 %198 to i32
  %200 = getelementptr inbounds i8, ptr %3, i64 4
  %201 = load i8, ptr %200, align 1, !tbaa !27
  %202 = zext i8 %201 to i32
  %203 = shl nuw nsw i32 %202, 8
  %204 = or disjoint i32 %203, %199
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %196, %194
  %207 = load ptr, ptr %0, align 8, !tbaa !23
  %208 = getelementptr inbounds i8, ptr %207, i64 40
  store i32 1032, ptr %208, align 8, !tbaa !24
  %209 = load ptr, ptr %207, align 8, !tbaa !26
  tail call void %209(ptr noundef nonnull %0) #4
  br label %210

210:                                              ; preds = %206, %196
  %211 = getelementptr inbounds i8, ptr %0, i64 8
  %212 = load ptr, ptr %211, align 8, !tbaa !6
  %213 = getelementptr inbounds i8, ptr %212, i64 16
  %214 = load ptr, ptr %213, align 8, !tbaa !41
  %215 = tail call ptr %214(ptr noundef %0, i32 noundef signext 1, i32 noundef signext %31, i32 noundef signext 3) #4
  %216 = getelementptr inbounds i8, ptr %1, i64 56
  store ptr %215, ptr %216, align 8, !tbaa !44
  %217 = getelementptr inbounds i8, ptr %3, i64 7
  %218 = load i8, ptr %217, align 1, !tbaa !27
  %219 = icmp eq i8 %218, 24
  br i1 %219, label %226, label %220

220:                                              ; preds = %210
  %221 = getelementptr inbounds i8, ptr %1, i64 48
  %222 = load ptr, ptr %221, align 8, !tbaa !17
  %223 = load ptr, ptr %222, align 8, !tbaa !23
  %224 = getelementptr inbounds i8, ptr %223, i64 40
  store i32 1032, ptr %224, align 8, !tbaa !24
  %225 = load ptr, ptr %223, align 8, !tbaa !26
  tail call void %225(ptr noundef nonnull %222) #4
  br label %226

226:                                              ; preds = %210, %220
  %227 = getelementptr inbounds i8, ptr %1, i64 48
  %228 = zext nneg i32 %31 to i64
  br label %229

229:                                              ; preds = %267, %226
  %230 = phi i64 [ 0, %226 ], [ %272, %267 ]
  %231 = load ptr, ptr %4, align 8, !tbaa !22
  %232 = tail call signext i32 @getc(ptr noundef %231)
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load ptr, ptr %227, align 8, !tbaa !17
  %236 = load ptr, ptr %235, align 8, !tbaa !23
  %237 = getelementptr inbounds i8, ptr %236, i64 40
  store i32 43, ptr %237, align 8, !tbaa !24
  %238 = load ptr, ptr %236, align 8, !tbaa !26
  tail call void %238(ptr noundef nonnull %235) #4
  br label %239

239:                                              ; preds = %234, %229
  %240 = trunc i32 %232 to i8
  %241 = load ptr, ptr %216, align 8, !tbaa !44
  %242 = getelementptr inbounds i8, ptr %241, i64 16
  %243 = load ptr, ptr %242, align 8, !tbaa !45
  %244 = getelementptr inbounds i8, ptr %243, i64 %230
  store i8 %240, ptr %244, align 1, !tbaa !27
  %245 = load ptr, ptr %4, align 8, !tbaa !22
  %246 = tail call signext i32 @getc(ptr noundef %245)
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %253

248:                                              ; preds = %239
  %249 = load ptr, ptr %227, align 8, !tbaa !17
  %250 = load ptr, ptr %249, align 8, !tbaa !23
  %251 = getelementptr inbounds i8, ptr %250, i64 40
  store i32 43, ptr %251, align 8, !tbaa !24
  %252 = load ptr, ptr %250, align 8, !tbaa !26
  tail call void %252(ptr noundef nonnull %249) #4
  br label %253

253:                                              ; preds = %248, %239
  %254 = trunc i32 %246 to i8
  %255 = load ptr, ptr %216, align 8, !tbaa !44
  %256 = getelementptr inbounds i8, ptr %255, i64 8
  %257 = load ptr, ptr %256, align 8, !tbaa !45
  %258 = getelementptr inbounds i8, ptr %257, i64 %230
  store i8 %254, ptr %258, align 1, !tbaa !27
  %259 = load ptr, ptr %4, align 8, !tbaa !22
  %260 = tail call signext i32 @getc(ptr noundef %259)
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %267

262:                                              ; preds = %253
  %263 = load ptr, ptr %227, align 8, !tbaa !17
  %264 = load ptr, ptr %263, align 8, !tbaa !23
  %265 = getelementptr inbounds i8, ptr %264, i64 40
  store i32 43, ptr %265, align 8, !tbaa !24
  %266 = load ptr, ptr %264, align 8, !tbaa !26
  tail call void %266(ptr noundef nonnull %263) #4
  br label %267

267:                                              ; preds = %262, %253
  %268 = trunc i32 %260 to i8
  %269 = load ptr, ptr %216, align 8, !tbaa !44
  %270 = load ptr, ptr %269, align 8, !tbaa !45
  %271 = getelementptr inbounds i8, ptr %270, i64 %230
  store i8 %268, ptr %271, align 1, !tbaa !27
  %272 = add nuw nsw i64 %230, 1
  %273 = icmp eq i64 %272, %228
  br i1 %273, label %282, label %229

274:                                              ; preds = %192
  %275 = icmp eq i8 %20, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %274
  %277 = load ptr, ptr %0, align 8, !tbaa !23
  %278 = getelementptr inbounds i8, ptr %277, i64 40
  store i32 1033, ptr %278, align 8, !tbaa !24
  %279 = load ptr, ptr %277, align 8, !tbaa !26
  tail call void %279(ptr noundef nonnull %0) #4
  br label %280

280:                                              ; preds = %276, %274
  %281 = getelementptr inbounds i8, ptr %1, i64 56
  store ptr null, ptr %281, align 8, !tbaa !44
  br label %282

282:                                              ; preds = %267, %280
  %283 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %143, ptr %283, align 8, !tbaa !46
  %284 = getelementptr inbounds i8, ptr %0, i64 72
  store i32 8, ptr %284, align 8, !tbaa !47
  %285 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %39, ptr %285, align 8, !tbaa !48
  %286 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %47, ptr %286, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal void @finish_input_tga(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define internal void @read_rle_pixel(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds i8, ptr %0, i64 100
  %5 = load i32, ptr %4, align 4, !tbaa !29
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = add nsw i32 %5, -1
  store i32 %8, ptr %4, align 4, !tbaa !29
  br label %47

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %0, i64 96
  %11 = load i32, ptr %10, align 8, !tbaa !30
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 8, !tbaa !30
  %13 = icmp slt i32 %11, 1
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = tail call signext i32 @getc(ptr noundef %3)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, ptr %0, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = getelementptr inbounds i8, ptr %20, i64 40
  store i32 43, ptr %21, align 8, !tbaa !24
  %22 = load ptr, ptr %20, align 8, !tbaa !26
  tail call void %22(ptr noundef nonnull %19) #4
  br label %26

23:                                               ; preds = %14
  %24 = and i32 %15, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %17, %23
  %27 = and i32 %15, 127
  store i32 %27, ptr %4, align 4, !tbaa !29
  br label %30

28:                                               ; preds = %23
  %29 = and i32 %15, 127
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ 0, %26 ], [ %29, %28 ]
  store i32 %31, ptr %10, align 8, !tbaa !30
  br label %32

32:                                               ; preds = %30, %9
  %33 = getelementptr inbounds i8, ptr %0, i64 92
  %34 = load i32, ptr %33, align 4, !tbaa !28
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %0, i64 88
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ 0, %36 ], [ %43, %38 ]
  %40 = tail call signext i32 @getc(ptr noundef %3)
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [4 x i8], ptr %37, i64 0, i64 %39
  store i8 %41, ptr %42, align 1, !tbaa !27
  %43 = add nuw nsw i64 %39, 1
  %44 = load i32, ptr %33, align 4, !tbaa !28
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %38, label %47

47:                                               ; preds = %38, %32, %7
  ret void
}

; Function Attrs: nofree nounwind
define internal void @read_non_rle_pixel(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds i8, ptr %0, i64 92
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 88
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = tail call signext i32 @getc(ptr noundef %3)
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 %10
  store i8 %12, ptr %13, align 1, !tbaa !27
  %14 = add nuw nsw i64 %10, 1
  %15 = load i32, ptr %4, align 4, !tbaa !28
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %9, label %18

18:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_8bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 56
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds i8, ptr %0, i64 48
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %1, i64 32
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds i8, ptr %1, i64 80
  %13 = getelementptr inbounds i8, ptr %1, i64 88
  %14 = getelementptr inbounds i8, ptr %4, i64 8
  %15 = getelementptr inbounds i8, ptr %4, i64 16
  br label %16

16:                                               ; preds = %8, %16
  %17 = phi ptr [ %11, %8 ], [ %33, %16 ]
  %18 = phi i32 [ %6, %8 ], [ %34, %16 ]
  %19 = load ptr, ptr %12, align 8, !tbaa !50
  tail call void %19(ptr noundef nonnull %1) #4
  %20 = load i8, ptr %13, align 8, !tbaa !27
  %21 = load ptr, ptr %4, align 8, !tbaa !45
  %22 = zext i8 %20 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !27
  %25 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %24, ptr %17, align 1, !tbaa !27
  %26 = load ptr, ptr %14, align 8, !tbaa !45
  %27 = getelementptr inbounds i8, ptr %26, i64 %22
  %28 = load i8, ptr %27, align 1, !tbaa !27
  %29 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %28, ptr %25, align 1, !tbaa !27
  %30 = load ptr, ptr %15, align 8, !tbaa !45
  %31 = getelementptr inbounds i8, ptr %30, i64 %22
  %32 = load i8, ptr %31, align 1, !tbaa !27
  %33 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 %32, ptr %29, align 1, !tbaa !27
  %34 = add i32 %18, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %16

36:                                               ; preds = %16, %2
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_16bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 48
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %1, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %1, i64 80
  %11 = getelementptr inbounds i8, ptr %1, i64 88
  %12 = getelementptr inbounds i8, ptr %1, i64 89
  br label %13

13:                                               ; preds = %6, %13
  %14 = phi i32 [ %4, %6 ], [ %40, %13 ]
  %15 = phi ptr [ %9, %6 ], [ %39, %13 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !50
  tail call void %16(ptr noundef nonnull %1) #4
  %17 = load i8, ptr %11, align 8, !tbaa !27
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr %12, align 1, !tbaa !27
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or disjoint i32 %21, %18
  %23 = and i32 %18, 31
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !27
  %27 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !27
  %28 = lshr i32 %22, 5
  %29 = and i32 %28, 31
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !27
  %33 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %32, ptr %33, align 1, !tbaa !27
  %34 = lshr i32 %20, 2
  %35 = and i32 %34, 31
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !27
  store i8 %38, ptr %15, align 1, !tbaa !27
  %39 = getelementptr inbounds i8, ptr %15, i64 3
  %40 = add i32 %14, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %13

42:                                               ; preds = %13, %2
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_24bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 48
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %1, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %1, i64 80
  %11 = getelementptr inbounds i8, ptr %1, i64 88
  %12 = getelementptr inbounds i8, ptr %1, i64 90
  %13 = getelementptr inbounds i8, ptr %1, i64 89
  br label %14

14:                                               ; preds = %6, %14
  %15 = phi i32 [ %4, %6 ], [ %24, %14 ]
  %16 = phi ptr [ %9, %6 ], [ %23, %14 ]
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  tail call void %17(ptr noundef nonnull %1) #4
  %18 = load i8, ptr %12, align 2, !tbaa !27
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %18, ptr %16, align 1, !tbaa !27
  %20 = load i8, ptr %13, align 1, !tbaa !27
  %21 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %20, ptr %19, align 1, !tbaa !27
  %22 = load i8, ptr %11, align 8, !tbaa !27
  %23 = getelementptr inbounds i8, ptr %16, i64 3
  store i8 %22, ptr %21, align 1, !tbaa !27
  %24 = add i32 %15, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %14

26:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_8bit_gray_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 48
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %1, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %1, i64 80
  %11 = getelementptr inbounds i8, ptr %1, i64 88
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %4, %6 ], [ %18, %12 ]
  %14 = phi ptr [ %9, %6 ], [ %17, %12 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  tail call void %15(ptr noundef nonnull %1) #4
  %16 = load i8, ptr %11, align 8, !tbaa !27
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %16, ptr %14, align 1, !tbaa !27
  %18 = add i32 %13, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @preload_image(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds i8, ptr %0, i64 52
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  %10 = getelementptr inbounds i8, ptr %4, i64 8
  %11 = getelementptr inbounds i8, ptr %4, i64 16
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  %13 = getelementptr inbounds i8, ptr %1, i64 64
  %14 = getelementptr inbounds i8, ptr %1, i64 32
  %15 = getelementptr inbounds i8, ptr %1, i64 104
  br i1 %9, label %16, label %28

16:                                               ; preds = %8, %16
  %17 = phi i32 [ %25, %16 ], [ 0, %8 ]
  %18 = load ptr, ptr %12, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 56
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = load ptr, ptr %13, align 8, !tbaa !35
  %22 = tail call ptr %20(ptr noundef nonnull %0, ptr noundef %21, i32 noundef signext %17, i32 noundef signext 1, i32 noundef signext 1) #4
  store ptr %22, ptr %14, align 8, !tbaa !42
  %23 = load ptr, ptr %15, align 8, !tbaa !32
  %24 = tail call signext i32 %23(ptr noundef nonnull %0, ptr noundef %1) #4
  %25 = add nuw i32 %17, 1
  %26 = load i32, ptr %5, align 4, !tbaa !49
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %16, label %45

28:                                               ; preds = %8, %28
  %29 = phi i64 [ %41, %28 ], [ 0, %8 ]
  %30 = phi i32 [ %42, %28 ], [ %6, %8 ]
  store i64 %29, ptr %10, align 8, !tbaa !52
  %31 = zext i32 %30 to i64
  store i64 %31, ptr %11, align 8, !tbaa !53
  %32 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void %32(ptr noundef nonnull %0) #4
  %33 = load ptr, ptr %12, align 8, !tbaa !6
  %34 = getelementptr inbounds i8, ptr %33, i64 56
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = load ptr, ptr %13, align 8, !tbaa !35
  %37 = trunc nuw i64 %29 to i32
  %38 = tail call ptr %35(ptr noundef nonnull %0, ptr noundef %36, i32 noundef signext %37, i32 noundef signext 1, i32 noundef signext 1) #4
  store ptr %38, ptr %14, align 8, !tbaa !42
  %39 = load ptr, ptr %15, align 8, !tbaa !32
  %40 = tail call signext i32 %39(ptr noundef nonnull %0, ptr noundef %1) #4
  %41 = add nuw nsw i64 %29, 1
  %42 = load i32, ptr %5, align 4, !tbaa !49
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %28, label %48

45:                                               ; preds = %16, %2
  %46 = phi i32 [ 0, %2 ], [ %26, %16 ]
  %47 = icmp eq ptr %4, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %28, %45
  %49 = phi i32 [ %46, %45 ], [ %42, %28 ]
  %50 = getelementptr inbounds i8, ptr %4, i64 32
  %51 = load i32, ptr %50, align 8, !tbaa !55
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !55
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i32 [ %49, %48 ], [ %46, %45 ]
  %55 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr @get_memory_row, ptr %55, align 8, !tbaa !43
  %56 = getelementptr inbounds i8, ptr %1, i64 72
  store i32 0, ptr %56, align 8, !tbaa !56
  %57 = add i32 %54, -1
  %58 = getelementptr inbounds i8, ptr %0, i64 8
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %59, i64 56
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = getelementptr inbounds i8, ptr %1, i64 64
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  %64 = tail call ptr %61(ptr noundef nonnull %0, ptr noundef %63, i32 noundef signext %57, i32 noundef signext 1, i32 noundef signext 0) #4
  %65 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr %64, ptr %65, align 8, !tbaa !42
  %66 = load i32, ptr %56, align 8, !tbaa !56
  %67 = add i32 %66, 1
  store i32 %67, ptr %56, align 8, !tbaa !56
  ret i32 1
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define internal noundef signext i32 @get_memory_row(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 52
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %5 = getelementptr inbounds i8, ptr %1, i64 72
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = xor i32 %6, -1
  %8 = add i32 %4, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %10, i64 56
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds i8, ptr %1, i64 64
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call ptr %12(ptr noundef %0, ptr noundef %14, i32 noundef signext %8, i32 noundef signext 1, i32 noundef signext 0) #4
  %16 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr %15, ptr %16, align 8, !tbaa !42
  %17 = load i32, ptr %5, align 8, !tbaa !56
  %18 = add i32 %17, 1
  store i32 %18, ptr %5, align 8, !tbaa !56
  ret i32 1
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nounwind }

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
!17 = !{!18, !8, i64 48}
!18 = !{!"_tga_source_struct", !19, i64 0, !8, i64 48, !8, i64 56, !8, i64 64, !11, i64 72, !8, i64 80, !9, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !8, i64 104}
!19 = !{!"cjpeg_source_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40}
!20 = !{!18, !8, i64 0}
!21 = !{!18, !8, i64 16}
!22 = !{!18, !8, i64 24}
!23 = !{!7, !8, i64 0}
!24 = !{!25, !11, i64 40}
!25 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!26 = !{!25, !8, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!18, !11, i64 92}
!29 = !{!18, !11, i64 100}
!30 = !{!18, !11, i64 96}
!31 = !{!7, !11, i64 60}
!32 = !{!18, !8, i64 104}
!33 = !{!25, !8, i64 8}
!34 = !{!15, !8, i64 32}
!35 = !{!18, !8, i64 64}
!36 = !{!7, !8, i64 16}
!37 = !{!38, !11, i64 36}
!38 = !{!"cdjpeg_progress_mgr", !39, i64 0, !11, i64 32, !11, i64 36, !11, i64 40}
!39 = !{!"jpeg_progress_mgr", !8, i64 0, !16, i64 8, !16, i64 16, !11, i64 24, !11, i64 28}
!40 = !{!18, !11, i64 40}
!41 = !{!15, !8, i64 16}
!42 = !{!18, !8, i64 32}
!43 = !{!18, !8, i64 8}
!44 = !{!18, !8, i64 56}
!45 = !{!8, !8, i64 0}
!46 = !{!7, !11, i64 56}
!47 = !{!7, !11, i64 72}
!48 = !{!7, !11, i64 48}
!49 = !{!7, !11, i64 52}
!50 = !{!18, !8, i64 80}
!51 = !{!15, !8, i64 56}
!52 = !{!38, !16, i64 8}
!53 = !{!38, !16, i64 16}
!54 = !{!38, !8, i64 0}
!55 = !{!38, !11, i64 32}
!56 = !{!18, !11, i64 72}
