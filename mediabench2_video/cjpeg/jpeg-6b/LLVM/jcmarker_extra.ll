; ModuleID = 'jcmarker.c'
source_filename = "jcmarker.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@jpeg_natural_order = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind
define dso_local void @jinit_marker_writer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 64) #1
  %6 = getelementptr inbounds i8, ptr %0, i64 464
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @write_file_header, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @write_frame_header, ptr %7, align 8, !tbaa !21
  %8 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @write_scan_header, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  store ptr @write_file_trailer, ptr %9, align 8, !tbaa !23
  %10 = getelementptr inbounds i8, ptr %5, i64 32
  store ptr @write_tables_only, ptr %10, align 8, !tbaa !24
  %11 = getelementptr inbounds i8, ptr %5, i64 40
  store ptr @write_marker_header, ptr %11, align 8, !tbaa !25
  %12 = getelementptr inbounds i8, ptr %5, i64 48
  store ptr @write_marker_byte, ptr %12, align 8, !tbaa !26
  %13 = getelementptr inbounds i8, ptr %5, i64 56
  store i32 0, ptr %13, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind
define internal void @write_file_header(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 464
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %0, i64 40
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %7, ptr %5, align 8, !tbaa !29
  store i8 -1, ptr %6, align 1, !tbaa !31
  %8 = getelementptr inbounds i8, ptr %5, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !32
  %10 = add i64 %9, -1
  store i64 %10, ptr %8, align 8, !tbaa !32
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, ptr %5, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = tail call signext i32 %14(ptr noundef nonnull %0) #1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  store i32 24, ptr %19, align 8, !tbaa !35
  %20 = load ptr, ptr %18, align 8, !tbaa !37
  tail call void %20(ptr noundef nonnull %0) #1
  br label %21

21:                                               ; preds = %17, %12, %1
  %22 = load ptr, ptr %4, align 8, !tbaa !28
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %24, ptr %22, align 8, !tbaa !29
  store i8 -40, ptr %23, align 1, !tbaa !31
  %25 = getelementptr inbounds i8, ptr %22, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !32
  %27 = add i64 %26, -1
  store i64 %27, ptr %25, align 8, !tbaa !32
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, ptr %22, i64 24
  %31 = load ptr, ptr %30, align 8, !tbaa !33
  %32 = tail call signext i32 %31(ptr noundef nonnull %0) #1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %35, i64 40
  store i32 24, ptr %36, align 8, !tbaa !35
  %37 = load ptr, ptr %35, align 8, !tbaa !37
  tail call void %37(ptr noundef nonnull %0) #1
  br label %38

38:                                               ; preds = %21, %29, %34
  %39 = getelementptr inbounds i8, ptr %3, i64 56
  store i32 0, ptr %39, align 8, !tbaa !27
  %40 = getelementptr inbounds i8, ptr %0, i64 288
  %41 = load i32, ptr %40, align 8, !tbaa !38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %365, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %4, align 8, !tbaa !28
  %45 = load ptr, ptr %44, align 8, !tbaa !29
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %46, ptr %44, align 8, !tbaa !29
  store i8 -1, ptr %45, align 1, !tbaa !31
  %47 = getelementptr inbounds i8, ptr %44, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !32
  %49 = add i64 %48, -1
  store i64 %49, ptr %47, align 8, !tbaa !32
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = getelementptr inbounds i8, ptr %44, i64 24
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  %54 = tail call signext i32 %53(ptr noundef nonnull %0) #1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load ptr, ptr %0, align 8, !tbaa !34
  %58 = getelementptr inbounds i8, ptr %57, i64 40
  store i32 24, ptr %58, align 8, !tbaa !35
  %59 = load ptr, ptr %57, align 8, !tbaa !37
  tail call void %59(ptr noundef nonnull %0) #1
  br label %60

60:                                               ; preds = %56, %51, %43
  %61 = load ptr, ptr %4, align 8, !tbaa !28
  %62 = load ptr, ptr %61, align 8, !tbaa !29
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %63, ptr %61, align 8, !tbaa !29
  store i8 -32, ptr %62, align 1, !tbaa !31
  %64 = getelementptr inbounds i8, ptr %61, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !32
  %66 = add i64 %65, -1
  store i64 %66, ptr %64, align 8, !tbaa !32
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = getelementptr inbounds i8, ptr %61, i64 24
  %70 = load ptr, ptr %69, align 8, !tbaa !33
  %71 = tail call signext i32 %70(ptr noundef nonnull %0) #1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load ptr, ptr %0, align 8, !tbaa !34
  %75 = getelementptr inbounds i8, ptr %74, i64 40
  store i32 24, ptr %75, align 8, !tbaa !35
  %76 = load ptr, ptr %74, align 8, !tbaa !37
  tail call void %76(ptr noundef nonnull %0) #1
  br label %77

77:                                               ; preds = %73, %68, %60
  %78 = load ptr, ptr %4, align 8, !tbaa !28
  %79 = load ptr, ptr %78, align 8, !tbaa !29
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %80, ptr %78, align 8, !tbaa !29
  store i8 0, ptr %79, align 1, !tbaa !31
  %81 = getelementptr inbounds i8, ptr %78, i64 8
  %82 = load i64, ptr %81, align 8, !tbaa !32
  %83 = add i64 %82, -1
  store i64 %83, ptr %81, align 8, !tbaa !32
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = getelementptr inbounds i8, ptr %78, i64 24
  %87 = load ptr, ptr %86, align 8, !tbaa !33
  %88 = tail call signext i32 %87(ptr noundef nonnull %0) #1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load ptr, ptr %0, align 8, !tbaa !34
  %92 = getelementptr inbounds i8, ptr %91, i64 40
  store i32 24, ptr %92, align 8, !tbaa !35
  %93 = load ptr, ptr %91, align 8, !tbaa !37
  tail call void %93(ptr noundef nonnull %0) #1
  br label %94

94:                                               ; preds = %90, %85, %77
  %95 = load ptr, ptr %4, align 8, !tbaa !28
  %96 = load ptr, ptr %95, align 8, !tbaa !29
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %97, ptr %95, align 8, !tbaa !29
  store i8 16, ptr %96, align 1, !tbaa !31
  %98 = getelementptr inbounds i8, ptr %95, i64 8
  %99 = load i64, ptr %98, align 8, !tbaa !32
  %100 = add i64 %99, -1
  store i64 %100, ptr %98, align 8, !tbaa !32
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %94
  %103 = getelementptr inbounds i8, ptr %95, i64 24
  %104 = load ptr, ptr %103, align 8, !tbaa !33
  %105 = tail call signext i32 %104(ptr noundef nonnull %0) #1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load ptr, ptr %0, align 8, !tbaa !34
  %109 = getelementptr inbounds i8, ptr %108, i64 40
  store i32 24, ptr %109, align 8, !tbaa !35
  %110 = load ptr, ptr %108, align 8, !tbaa !37
  tail call void %110(ptr noundef nonnull %0) #1
  br label %111

111:                                              ; preds = %107, %102, %94
  %112 = load ptr, ptr %4, align 8, !tbaa !28
  %113 = load ptr, ptr %112, align 8, !tbaa !29
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %114, ptr %112, align 8, !tbaa !29
  store i8 74, ptr %113, align 1, !tbaa !31
  %115 = getelementptr inbounds i8, ptr %112, i64 8
  %116 = load i64, ptr %115, align 8, !tbaa !32
  %117 = add i64 %116, -1
  store i64 %117, ptr %115, align 8, !tbaa !32
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = getelementptr inbounds i8, ptr %112, i64 24
  %121 = load ptr, ptr %120, align 8, !tbaa !33
  %122 = tail call signext i32 %121(ptr noundef nonnull %0) #1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load ptr, ptr %0, align 8, !tbaa !34
  %126 = getelementptr inbounds i8, ptr %125, i64 40
  store i32 24, ptr %126, align 8, !tbaa !35
  %127 = load ptr, ptr %125, align 8, !tbaa !37
  tail call void %127(ptr noundef nonnull %0) #1
  br label %128

128:                                              ; preds = %124, %119, %111
  %129 = load ptr, ptr %4, align 8, !tbaa !28
  %130 = load ptr, ptr %129, align 8, !tbaa !29
  %131 = getelementptr inbounds i8, ptr %130, i64 1
  store ptr %131, ptr %129, align 8, !tbaa !29
  store i8 70, ptr %130, align 1, !tbaa !31
  %132 = getelementptr inbounds i8, ptr %129, i64 8
  %133 = load i64, ptr %132, align 8, !tbaa !32
  %134 = add i64 %133, -1
  store i64 %134, ptr %132, align 8, !tbaa !32
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = getelementptr inbounds i8, ptr %129, i64 24
  %138 = load ptr, ptr %137, align 8, !tbaa !33
  %139 = tail call signext i32 %138(ptr noundef nonnull %0) #1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load ptr, ptr %0, align 8, !tbaa !34
  %143 = getelementptr inbounds i8, ptr %142, i64 40
  store i32 24, ptr %143, align 8, !tbaa !35
  %144 = load ptr, ptr %142, align 8, !tbaa !37
  tail call void %144(ptr noundef nonnull %0) #1
  br label %145

145:                                              ; preds = %141, %136, %128
  %146 = load ptr, ptr %4, align 8, !tbaa !28
  %147 = load ptr, ptr %146, align 8, !tbaa !29
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  store ptr %148, ptr %146, align 8, !tbaa !29
  store i8 73, ptr %147, align 1, !tbaa !31
  %149 = getelementptr inbounds i8, ptr %146, i64 8
  %150 = load i64, ptr %149, align 8, !tbaa !32
  %151 = add i64 %150, -1
  store i64 %151, ptr %149, align 8, !tbaa !32
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %145
  %154 = getelementptr inbounds i8, ptr %146, i64 24
  %155 = load ptr, ptr %154, align 8, !tbaa !33
  %156 = tail call signext i32 %155(ptr noundef nonnull %0) #1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load ptr, ptr %0, align 8, !tbaa !34
  %160 = getelementptr inbounds i8, ptr %159, i64 40
  store i32 24, ptr %160, align 8, !tbaa !35
  %161 = load ptr, ptr %159, align 8, !tbaa !37
  tail call void %161(ptr noundef nonnull %0) #1
  br label %162

162:                                              ; preds = %158, %153, %145
  %163 = load ptr, ptr %4, align 8, !tbaa !28
  %164 = load ptr, ptr %163, align 8, !tbaa !29
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %165, ptr %163, align 8, !tbaa !29
  store i8 70, ptr %164, align 1, !tbaa !31
  %166 = getelementptr inbounds i8, ptr %163, i64 8
  %167 = load i64, ptr %166, align 8, !tbaa !32
  %168 = add i64 %167, -1
  store i64 %168, ptr %166, align 8, !tbaa !32
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %162
  %171 = getelementptr inbounds i8, ptr %163, i64 24
  %172 = load ptr, ptr %171, align 8, !tbaa !33
  %173 = tail call signext i32 %172(ptr noundef nonnull %0) #1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load ptr, ptr %0, align 8, !tbaa !34
  %177 = getelementptr inbounds i8, ptr %176, i64 40
  store i32 24, ptr %177, align 8, !tbaa !35
  %178 = load ptr, ptr %176, align 8, !tbaa !37
  tail call void %178(ptr noundef nonnull %0) #1
  br label %179

179:                                              ; preds = %175, %170, %162
  %180 = load ptr, ptr %4, align 8, !tbaa !28
  %181 = load ptr, ptr %180, align 8, !tbaa !29
  %182 = getelementptr inbounds i8, ptr %181, i64 1
  store ptr %182, ptr %180, align 8, !tbaa !29
  store i8 0, ptr %181, align 1, !tbaa !31
  %183 = getelementptr inbounds i8, ptr %180, i64 8
  %184 = load i64, ptr %183, align 8, !tbaa !32
  %185 = add i64 %184, -1
  store i64 %185, ptr %183, align 8, !tbaa !32
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %179
  %188 = getelementptr inbounds i8, ptr %180, i64 24
  %189 = load ptr, ptr %188, align 8, !tbaa !33
  %190 = tail call signext i32 %189(ptr noundef nonnull %0) #1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load ptr, ptr %0, align 8, !tbaa !34
  %194 = getelementptr inbounds i8, ptr %193, i64 40
  store i32 24, ptr %194, align 8, !tbaa !35
  %195 = load ptr, ptr %193, align 8, !tbaa !37
  tail call void %195(ptr noundef nonnull %0) #1
  br label %196

196:                                              ; preds = %192, %187, %179
  %197 = getelementptr inbounds i8, ptr %0, i64 292
  %198 = load i8, ptr %197, align 4, !tbaa !39
  %199 = load ptr, ptr %4, align 8, !tbaa !28
  %200 = load ptr, ptr %199, align 8, !tbaa !29
  %201 = getelementptr inbounds i8, ptr %200, i64 1
  store ptr %201, ptr %199, align 8, !tbaa !29
  store i8 %198, ptr %200, align 1, !tbaa !31
  %202 = getelementptr inbounds i8, ptr %199, i64 8
  %203 = load i64, ptr %202, align 8, !tbaa !32
  %204 = add i64 %203, -1
  store i64 %204, ptr %202, align 8, !tbaa !32
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %196
  %207 = getelementptr inbounds i8, ptr %199, i64 24
  %208 = load ptr, ptr %207, align 8, !tbaa !33
  %209 = tail call signext i32 %208(ptr noundef nonnull %0) #1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load ptr, ptr %0, align 8, !tbaa !34
  %213 = getelementptr inbounds i8, ptr %212, i64 40
  store i32 24, ptr %213, align 8, !tbaa !35
  %214 = load ptr, ptr %212, align 8, !tbaa !37
  tail call void %214(ptr noundef nonnull %0) #1
  br label %215

215:                                              ; preds = %211, %206, %196
  %216 = getelementptr inbounds i8, ptr %0, i64 293
  %217 = load i8, ptr %216, align 1, !tbaa !40
  %218 = load ptr, ptr %4, align 8, !tbaa !28
  %219 = load ptr, ptr %218, align 8, !tbaa !29
  %220 = getelementptr inbounds i8, ptr %219, i64 1
  store ptr %220, ptr %218, align 8, !tbaa !29
  store i8 %217, ptr %219, align 1, !tbaa !31
  %221 = getelementptr inbounds i8, ptr %218, i64 8
  %222 = load i64, ptr %221, align 8, !tbaa !32
  %223 = add i64 %222, -1
  store i64 %223, ptr %221, align 8, !tbaa !32
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %215
  %226 = getelementptr inbounds i8, ptr %218, i64 24
  %227 = load ptr, ptr %226, align 8, !tbaa !33
  %228 = tail call signext i32 %227(ptr noundef nonnull %0) #1
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load ptr, ptr %0, align 8, !tbaa !34
  %232 = getelementptr inbounds i8, ptr %231, i64 40
  store i32 24, ptr %232, align 8, !tbaa !35
  %233 = load ptr, ptr %231, align 8, !tbaa !37
  tail call void %233(ptr noundef nonnull %0) #1
  br label %234

234:                                              ; preds = %230, %225, %215
  %235 = getelementptr inbounds i8, ptr %0, i64 294
  %236 = load i8, ptr %235, align 2, !tbaa !41
  %237 = load ptr, ptr %4, align 8, !tbaa !28
  %238 = load ptr, ptr %237, align 8, !tbaa !29
  %239 = getelementptr inbounds i8, ptr %238, i64 1
  store ptr %239, ptr %237, align 8, !tbaa !29
  store i8 %236, ptr %238, align 1, !tbaa !31
  %240 = getelementptr inbounds i8, ptr %237, i64 8
  %241 = load i64, ptr %240, align 8, !tbaa !32
  %242 = add i64 %241, -1
  store i64 %242, ptr %240, align 8, !tbaa !32
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %234
  %245 = getelementptr inbounds i8, ptr %237, i64 24
  %246 = load ptr, ptr %245, align 8, !tbaa !33
  %247 = tail call signext i32 %246(ptr noundef nonnull %0) #1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load ptr, ptr %0, align 8, !tbaa !34
  %251 = getelementptr inbounds i8, ptr %250, i64 40
  store i32 24, ptr %251, align 8, !tbaa !35
  %252 = load ptr, ptr %250, align 8, !tbaa !37
  tail call void %252(ptr noundef nonnull %0) #1
  br label %253

253:                                              ; preds = %249, %244, %234
  %254 = getelementptr inbounds i8, ptr %0, i64 296
  %255 = load i16, ptr %254, align 8, !tbaa !42
  %256 = lshr i16 %255, 8
  %257 = load ptr, ptr %4, align 8, !tbaa !28
  %258 = trunc nuw i16 %256 to i8
  %259 = load ptr, ptr %257, align 8, !tbaa !29
  %260 = getelementptr inbounds i8, ptr %259, i64 1
  store ptr %260, ptr %257, align 8, !tbaa !29
  store i8 %258, ptr %259, align 1, !tbaa !31
  %261 = getelementptr inbounds i8, ptr %257, i64 8
  %262 = load i64, ptr %261, align 8, !tbaa !32
  %263 = add i64 %262, -1
  store i64 %263, ptr %261, align 8, !tbaa !32
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %253
  %266 = getelementptr inbounds i8, ptr %257, i64 24
  %267 = load ptr, ptr %266, align 8, !tbaa !33
  %268 = tail call signext i32 %267(ptr noundef nonnull %0) #1
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = load ptr, ptr %0, align 8, !tbaa !34
  %272 = getelementptr inbounds i8, ptr %271, i64 40
  store i32 24, ptr %272, align 8, !tbaa !35
  %273 = load ptr, ptr %271, align 8, !tbaa !37
  tail call void %273(ptr noundef nonnull %0) #1
  br label %274

274:                                              ; preds = %270, %265, %253
  %275 = load ptr, ptr %4, align 8, !tbaa !28
  %276 = trunc i16 %255 to i8
  %277 = load ptr, ptr %275, align 8, !tbaa !29
  %278 = getelementptr inbounds i8, ptr %277, i64 1
  store ptr %278, ptr %275, align 8, !tbaa !29
  store i8 %276, ptr %277, align 1, !tbaa !31
  %279 = getelementptr inbounds i8, ptr %275, i64 8
  %280 = load i64, ptr %279, align 8, !tbaa !32
  %281 = add i64 %280, -1
  store i64 %281, ptr %279, align 8, !tbaa !32
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %274
  %284 = getelementptr inbounds i8, ptr %275, i64 24
  %285 = load ptr, ptr %284, align 8, !tbaa !33
  %286 = tail call signext i32 %285(ptr noundef nonnull %0) #1
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %283
  %289 = load ptr, ptr %0, align 8, !tbaa !34
  %290 = getelementptr inbounds i8, ptr %289, i64 40
  store i32 24, ptr %290, align 8, !tbaa !35
  %291 = load ptr, ptr %289, align 8, !tbaa !37
  tail call void %291(ptr noundef nonnull %0) #1
  br label %292

292:                                              ; preds = %288, %283, %274
  %293 = getelementptr inbounds i8, ptr %0, i64 298
  %294 = load i16, ptr %293, align 2, !tbaa !43
  %295 = lshr i16 %294, 8
  %296 = load ptr, ptr %4, align 8, !tbaa !28
  %297 = trunc nuw i16 %295 to i8
  %298 = load ptr, ptr %296, align 8, !tbaa !29
  %299 = getelementptr inbounds i8, ptr %298, i64 1
  store ptr %299, ptr %296, align 8, !tbaa !29
  store i8 %297, ptr %298, align 1, !tbaa !31
  %300 = getelementptr inbounds i8, ptr %296, i64 8
  %301 = load i64, ptr %300, align 8, !tbaa !32
  %302 = add i64 %301, -1
  store i64 %302, ptr %300, align 8, !tbaa !32
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %292
  %305 = getelementptr inbounds i8, ptr %296, i64 24
  %306 = load ptr, ptr %305, align 8, !tbaa !33
  %307 = tail call signext i32 %306(ptr noundef nonnull %0) #1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = load ptr, ptr %0, align 8, !tbaa !34
  %311 = getelementptr inbounds i8, ptr %310, i64 40
  store i32 24, ptr %311, align 8, !tbaa !35
  %312 = load ptr, ptr %310, align 8, !tbaa !37
  tail call void %312(ptr noundef nonnull %0) #1
  br label %313

313:                                              ; preds = %309, %304, %292
  %314 = load ptr, ptr %4, align 8, !tbaa !28
  %315 = trunc i16 %294 to i8
  %316 = load ptr, ptr %314, align 8, !tbaa !29
  %317 = getelementptr inbounds i8, ptr %316, i64 1
  store ptr %317, ptr %314, align 8, !tbaa !29
  store i8 %315, ptr %316, align 1, !tbaa !31
  %318 = getelementptr inbounds i8, ptr %314, i64 8
  %319 = load i64, ptr %318, align 8, !tbaa !32
  %320 = add i64 %319, -1
  store i64 %320, ptr %318, align 8, !tbaa !32
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %313
  %323 = getelementptr inbounds i8, ptr %314, i64 24
  %324 = load ptr, ptr %323, align 8, !tbaa !33
  %325 = tail call signext i32 %324(ptr noundef nonnull %0) #1
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %322
  %328 = load ptr, ptr %0, align 8, !tbaa !34
  %329 = getelementptr inbounds i8, ptr %328, i64 40
  store i32 24, ptr %329, align 8, !tbaa !35
  %330 = load ptr, ptr %328, align 8, !tbaa !37
  tail call void %330(ptr noundef nonnull %0) #1
  br label %331

331:                                              ; preds = %327, %322, %313
  %332 = load ptr, ptr %4, align 8, !tbaa !28
  %333 = load ptr, ptr %332, align 8, !tbaa !29
  %334 = getelementptr inbounds i8, ptr %333, i64 1
  store ptr %334, ptr %332, align 8, !tbaa !29
  store i8 0, ptr %333, align 1, !tbaa !31
  %335 = getelementptr inbounds i8, ptr %332, i64 8
  %336 = load i64, ptr %335, align 8, !tbaa !32
  %337 = add i64 %336, -1
  store i64 %337, ptr %335, align 8, !tbaa !32
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %331
  %340 = getelementptr inbounds i8, ptr %332, i64 24
  %341 = load ptr, ptr %340, align 8, !tbaa !33
  %342 = tail call signext i32 %341(ptr noundef nonnull %0) #1
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %339
  %345 = load ptr, ptr %0, align 8, !tbaa !34
  %346 = getelementptr inbounds i8, ptr %345, i64 40
  store i32 24, ptr %346, align 8, !tbaa !35
  %347 = load ptr, ptr %345, align 8, !tbaa !37
  tail call void %347(ptr noundef nonnull %0) #1
  br label %348

348:                                              ; preds = %344, %339, %331
  %349 = load ptr, ptr %4, align 8, !tbaa !28
  %350 = load ptr, ptr %349, align 8, !tbaa !29
  %351 = getelementptr inbounds i8, ptr %350, i64 1
  store ptr %351, ptr %349, align 8, !tbaa !29
  store i8 0, ptr %350, align 1, !tbaa !31
  %352 = getelementptr inbounds i8, ptr %349, i64 8
  %353 = load i64, ptr %352, align 8, !tbaa !32
  %354 = add i64 %353, -1
  store i64 %354, ptr %352, align 8, !tbaa !32
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %365

356:                                              ; preds = %348
  %357 = getelementptr inbounds i8, ptr %349, i64 24
  %358 = load ptr, ptr %357, align 8, !tbaa !33
  %359 = tail call signext i32 %358(ptr noundef nonnull %0) #1
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %356
  %362 = load ptr, ptr %0, align 8, !tbaa !34
  %363 = getelementptr inbounds i8, ptr %362, i64 40
  store i32 24, ptr %363, align 8, !tbaa !35
  %364 = load ptr, ptr %362, align 8, !tbaa !37
  tail call void %364(ptr noundef nonnull %0) #1
  br label %365

365:                                              ; preds = %361, %356, %348, %38
  %366 = getelementptr inbounds i8, ptr %0, i64 300
  %367 = load i32, ptr %366, align 4, !tbaa !44
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %662, label %369

369:                                              ; preds = %365
  %370 = load ptr, ptr %4, align 8, !tbaa !28
  %371 = load ptr, ptr %370, align 8, !tbaa !29
  %372 = getelementptr inbounds i8, ptr %371, i64 1
  store ptr %372, ptr %370, align 8, !tbaa !29
  store i8 -1, ptr %371, align 1, !tbaa !31
  %373 = getelementptr inbounds i8, ptr %370, i64 8
  %374 = load i64, ptr %373, align 8, !tbaa !32
  %375 = add i64 %374, -1
  store i64 %375, ptr %373, align 8, !tbaa !32
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %386

377:                                              ; preds = %369
  %378 = getelementptr inbounds i8, ptr %370, i64 24
  %379 = load ptr, ptr %378, align 8, !tbaa !33
  %380 = tail call signext i32 %379(ptr noundef nonnull %0) #1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %377
  %383 = load ptr, ptr %0, align 8, !tbaa !34
  %384 = getelementptr inbounds i8, ptr %383, i64 40
  store i32 24, ptr %384, align 8, !tbaa !35
  %385 = load ptr, ptr %383, align 8, !tbaa !37
  tail call void %385(ptr noundef nonnull %0) #1
  br label %386

386:                                              ; preds = %382, %377, %369
  %387 = load ptr, ptr %4, align 8, !tbaa !28
  %388 = load ptr, ptr %387, align 8, !tbaa !29
  %389 = getelementptr inbounds i8, ptr %388, i64 1
  store ptr %389, ptr %387, align 8, !tbaa !29
  store i8 -18, ptr %388, align 1, !tbaa !31
  %390 = getelementptr inbounds i8, ptr %387, i64 8
  %391 = load i64, ptr %390, align 8, !tbaa !32
  %392 = add i64 %391, -1
  store i64 %392, ptr %390, align 8, !tbaa !32
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %403

394:                                              ; preds = %386
  %395 = getelementptr inbounds i8, ptr %387, i64 24
  %396 = load ptr, ptr %395, align 8, !tbaa !33
  %397 = tail call signext i32 %396(ptr noundef nonnull %0) #1
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = load ptr, ptr %0, align 8, !tbaa !34
  %401 = getelementptr inbounds i8, ptr %400, i64 40
  store i32 24, ptr %401, align 8, !tbaa !35
  %402 = load ptr, ptr %400, align 8, !tbaa !37
  tail call void %402(ptr noundef nonnull %0) #1
  br label %403

403:                                              ; preds = %399, %394, %386
  %404 = load ptr, ptr %4, align 8, !tbaa !28
  %405 = load ptr, ptr %404, align 8, !tbaa !29
  %406 = getelementptr inbounds i8, ptr %405, i64 1
  store ptr %406, ptr %404, align 8, !tbaa !29
  store i8 0, ptr %405, align 1, !tbaa !31
  %407 = getelementptr inbounds i8, ptr %404, i64 8
  %408 = load i64, ptr %407, align 8, !tbaa !32
  %409 = add i64 %408, -1
  store i64 %409, ptr %407, align 8, !tbaa !32
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %420

411:                                              ; preds = %403
  %412 = getelementptr inbounds i8, ptr %404, i64 24
  %413 = load ptr, ptr %412, align 8, !tbaa !33
  %414 = tail call signext i32 %413(ptr noundef nonnull %0) #1
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %411
  %417 = load ptr, ptr %0, align 8, !tbaa !34
  %418 = getelementptr inbounds i8, ptr %417, i64 40
  store i32 24, ptr %418, align 8, !tbaa !35
  %419 = load ptr, ptr %417, align 8, !tbaa !37
  tail call void %419(ptr noundef nonnull %0) #1
  br label %420

420:                                              ; preds = %416, %411, %403
  %421 = load ptr, ptr %4, align 8, !tbaa !28
  %422 = load ptr, ptr %421, align 8, !tbaa !29
  %423 = getelementptr inbounds i8, ptr %422, i64 1
  store ptr %423, ptr %421, align 8, !tbaa !29
  store i8 14, ptr %422, align 1, !tbaa !31
  %424 = getelementptr inbounds i8, ptr %421, i64 8
  %425 = load i64, ptr %424, align 8, !tbaa !32
  %426 = add i64 %425, -1
  store i64 %426, ptr %424, align 8, !tbaa !32
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %437

428:                                              ; preds = %420
  %429 = getelementptr inbounds i8, ptr %421, i64 24
  %430 = load ptr, ptr %429, align 8, !tbaa !33
  %431 = tail call signext i32 %430(ptr noundef nonnull %0) #1
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %428
  %434 = load ptr, ptr %0, align 8, !tbaa !34
  %435 = getelementptr inbounds i8, ptr %434, i64 40
  store i32 24, ptr %435, align 8, !tbaa !35
  %436 = load ptr, ptr %434, align 8, !tbaa !37
  tail call void %436(ptr noundef nonnull %0) #1
  br label %437

437:                                              ; preds = %433, %428, %420
  %438 = load ptr, ptr %4, align 8, !tbaa !28
  %439 = load ptr, ptr %438, align 8, !tbaa !29
  %440 = getelementptr inbounds i8, ptr %439, i64 1
  store ptr %440, ptr %438, align 8, !tbaa !29
  store i8 65, ptr %439, align 1, !tbaa !31
  %441 = getelementptr inbounds i8, ptr %438, i64 8
  %442 = load i64, ptr %441, align 8, !tbaa !32
  %443 = add i64 %442, -1
  store i64 %443, ptr %441, align 8, !tbaa !32
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %445, label %454

445:                                              ; preds = %437
  %446 = getelementptr inbounds i8, ptr %438, i64 24
  %447 = load ptr, ptr %446, align 8, !tbaa !33
  %448 = tail call signext i32 %447(ptr noundef nonnull %0) #1
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %445
  %451 = load ptr, ptr %0, align 8, !tbaa !34
  %452 = getelementptr inbounds i8, ptr %451, i64 40
  store i32 24, ptr %452, align 8, !tbaa !35
  %453 = load ptr, ptr %451, align 8, !tbaa !37
  tail call void %453(ptr noundef nonnull %0) #1
  br label %454

454:                                              ; preds = %450, %445, %437
  %455 = load ptr, ptr %4, align 8, !tbaa !28
  %456 = load ptr, ptr %455, align 8, !tbaa !29
  %457 = getelementptr inbounds i8, ptr %456, i64 1
  store ptr %457, ptr %455, align 8, !tbaa !29
  store i8 100, ptr %456, align 1, !tbaa !31
  %458 = getelementptr inbounds i8, ptr %455, i64 8
  %459 = load i64, ptr %458, align 8, !tbaa !32
  %460 = add i64 %459, -1
  store i64 %460, ptr %458, align 8, !tbaa !32
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %471

462:                                              ; preds = %454
  %463 = getelementptr inbounds i8, ptr %455, i64 24
  %464 = load ptr, ptr %463, align 8, !tbaa !33
  %465 = tail call signext i32 %464(ptr noundef nonnull %0) #1
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %471

467:                                              ; preds = %462
  %468 = load ptr, ptr %0, align 8, !tbaa !34
  %469 = getelementptr inbounds i8, ptr %468, i64 40
  store i32 24, ptr %469, align 8, !tbaa !35
  %470 = load ptr, ptr %468, align 8, !tbaa !37
  tail call void %470(ptr noundef nonnull %0) #1
  br label %471

471:                                              ; preds = %467, %462, %454
  %472 = load ptr, ptr %4, align 8, !tbaa !28
  %473 = load ptr, ptr %472, align 8, !tbaa !29
  %474 = getelementptr inbounds i8, ptr %473, i64 1
  store ptr %474, ptr %472, align 8, !tbaa !29
  store i8 111, ptr %473, align 1, !tbaa !31
  %475 = getelementptr inbounds i8, ptr %472, i64 8
  %476 = load i64, ptr %475, align 8, !tbaa !32
  %477 = add i64 %476, -1
  store i64 %477, ptr %475, align 8, !tbaa !32
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %488

479:                                              ; preds = %471
  %480 = getelementptr inbounds i8, ptr %472, i64 24
  %481 = load ptr, ptr %480, align 8, !tbaa !33
  %482 = tail call signext i32 %481(ptr noundef nonnull %0) #1
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %488

484:                                              ; preds = %479
  %485 = load ptr, ptr %0, align 8, !tbaa !34
  %486 = getelementptr inbounds i8, ptr %485, i64 40
  store i32 24, ptr %486, align 8, !tbaa !35
  %487 = load ptr, ptr %485, align 8, !tbaa !37
  tail call void %487(ptr noundef nonnull %0) #1
  br label %488

488:                                              ; preds = %484, %479, %471
  %489 = load ptr, ptr %4, align 8, !tbaa !28
  %490 = load ptr, ptr %489, align 8, !tbaa !29
  %491 = getelementptr inbounds i8, ptr %490, i64 1
  store ptr %491, ptr %489, align 8, !tbaa !29
  store i8 98, ptr %490, align 1, !tbaa !31
  %492 = getelementptr inbounds i8, ptr %489, i64 8
  %493 = load i64, ptr %492, align 8, !tbaa !32
  %494 = add i64 %493, -1
  store i64 %494, ptr %492, align 8, !tbaa !32
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %505

496:                                              ; preds = %488
  %497 = getelementptr inbounds i8, ptr %489, i64 24
  %498 = load ptr, ptr %497, align 8, !tbaa !33
  %499 = tail call signext i32 %498(ptr noundef nonnull %0) #1
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %505

501:                                              ; preds = %496
  %502 = load ptr, ptr %0, align 8, !tbaa !34
  %503 = getelementptr inbounds i8, ptr %502, i64 40
  store i32 24, ptr %503, align 8, !tbaa !35
  %504 = load ptr, ptr %502, align 8, !tbaa !37
  tail call void %504(ptr noundef nonnull %0) #1
  br label %505

505:                                              ; preds = %501, %496, %488
  %506 = load ptr, ptr %4, align 8, !tbaa !28
  %507 = load ptr, ptr %506, align 8, !tbaa !29
  %508 = getelementptr inbounds i8, ptr %507, i64 1
  store ptr %508, ptr %506, align 8, !tbaa !29
  store i8 101, ptr %507, align 1, !tbaa !31
  %509 = getelementptr inbounds i8, ptr %506, i64 8
  %510 = load i64, ptr %509, align 8, !tbaa !32
  %511 = add i64 %510, -1
  store i64 %511, ptr %509, align 8, !tbaa !32
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %513, label %522

513:                                              ; preds = %505
  %514 = getelementptr inbounds i8, ptr %506, i64 24
  %515 = load ptr, ptr %514, align 8, !tbaa !33
  %516 = tail call signext i32 %515(ptr noundef nonnull %0) #1
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %522

518:                                              ; preds = %513
  %519 = load ptr, ptr %0, align 8, !tbaa !34
  %520 = getelementptr inbounds i8, ptr %519, i64 40
  store i32 24, ptr %520, align 8, !tbaa !35
  %521 = load ptr, ptr %519, align 8, !tbaa !37
  tail call void %521(ptr noundef nonnull %0) #1
  br label %522

522:                                              ; preds = %518, %513, %505
  %523 = load ptr, ptr %4, align 8, !tbaa !28
  %524 = load ptr, ptr %523, align 8, !tbaa !29
  %525 = getelementptr inbounds i8, ptr %524, i64 1
  store ptr %525, ptr %523, align 8, !tbaa !29
  store i8 0, ptr %524, align 1, !tbaa !31
  %526 = getelementptr inbounds i8, ptr %523, i64 8
  %527 = load i64, ptr %526, align 8, !tbaa !32
  %528 = add i64 %527, -1
  store i64 %528, ptr %526, align 8, !tbaa !32
  %529 = icmp eq i64 %528, 0
  br i1 %529, label %530, label %539

530:                                              ; preds = %522
  %531 = getelementptr inbounds i8, ptr %523, i64 24
  %532 = load ptr, ptr %531, align 8, !tbaa !33
  %533 = tail call signext i32 %532(ptr noundef nonnull %0) #1
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %539

535:                                              ; preds = %530
  %536 = load ptr, ptr %0, align 8, !tbaa !34
  %537 = getelementptr inbounds i8, ptr %536, i64 40
  store i32 24, ptr %537, align 8, !tbaa !35
  %538 = load ptr, ptr %536, align 8, !tbaa !37
  tail call void %538(ptr noundef nonnull %0) #1
  br label %539

539:                                              ; preds = %535, %530, %522
  %540 = load ptr, ptr %4, align 8, !tbaa !28
  %541 = load ptr, ptr %540, align 8, !tbaa !29
  %542 = getelementptr inbounds i8, ptr %541, i64 1
  store ptr %542, ptr %540, align 8, !tbaa !29
  store i8 100, ptr %541, align 1, !tbaa !31
  %543 = getelementptr inbounds i8, ptr %540, i64 8
  %544 = load i64, ptr %543, align 8, !tbaa !32
  %545 = add i64 %544, -1
  store i64 %545, ptr %543, align 8, !tbaa !32
  %546 = icmp eq i64 %545, 0
  br i1 %546, label %547, label %556

547:                                              ; preds = %539
  %548 = getelementptr inbounds i8, ptr %540, i64 24
  %549 = load ptr, ptr %548, align 8, !tbaa !33
  %550 = tail call signext i32 %549(ptr noundef nonnull %0) #1
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %556

552:                                              ; preds = %547
  %553 = load ptr, ptr %0, align 8, !tbaa !34
  %554 = getelementptr inbounds i8, ptr %553, i64 40
  store i32 24, ptr %554, align 8, !tbaa !35
  %555 = load ptr, ptr %553, align 8, !tbaa !37
  tail call void %555(ptr noundef nonnull %0) #1
  br label %556

556:                                              ; preds = %552, %547, %539
  %557 = load ptr, ptr %4, align 8, !tbaa !28
  %558 = load ptr, ptr %557, align 8, !tbaa !29
  %559 = getelementptr inbounds i8, ptr %558, i64 1
  store ptr %559, ptr %557, align 8, !tbaa !29
  store i8 0, ptr %558, align 1, !tbaa !31
  %560 = getelementptr inbounds i8, ptr %557, i64 8
  %561 = load i64, ptr %560, align 8, !tbaa !32
  %562 = add i64 %561, -1
  store i64 %562, ptr %560, align 8, !tbaa !32
  %563 = icmp eq i64 %562, 0
  br i1 %563, label %564, label %573

564:                                              ; preds = %556
  %565 = getelementptr inbounds i8, ptr %557, i64 24
  %566 = load ptr, ptr %565, align 8, !tbaa !33
  %567 = tail call signext i32 %566(ptr noundef nonnull %0) #1
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %573

569:                                              ; preds = %564
  %570 = load ptr, ptr %0, align 8, !tbaa !34
  %571 = getelementptr inbounds i8, ptr %570, i64 40
  store i32 24, ptr %571, align 8, !tbaa !35
  %572 = load ptr, ptr %570, align 8, !tbaa !37
  tail call void %572(ptr noundef nonnull %0) #1
  br label %573

573:                                              ; preds = %569, %564, %556
  %574 = load ptr, ptr %4, align 8, !tbaa !28
  %575 = load ptr, ptr %574, align 8, !tbaa !29
  %576 = getelementptr inbounds i8, ptr %575, i64 1
  store ptr %576, ptr %574, align 8, !tbaa !29
  store i8 0, ptr %575, align 1, !tbaa !31
  %577 = getelementptr inbounds i8, ptr %574, i64 8
  %578 = load i64, ptr %577, align 8, !tbaa !32
  %579 = add i64 %578, -1
  store i64 %579, ptr %577, align 8, !tbaa !32
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %581, label %590

581:                                              ; preds = %573
  %582 = getelementptr inbounds i8, ptr %574, i64 24
  %583 = load ptr, ptr %582, align 8, !tbaa !33
  %584 = tail call signext i32 %583(ptr noundef nonnull %0) #1
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %590

586:                                              ; preds = %581
  %587 = load ptr, ptr %0, align 8, !tbaa !34
  %588 = getelementptr inbounds i8, ptr %587, i64 40
  store i32 24, ptr %588, align 8, !tbaa !35
  %589 = load ptr, ptr %587, align 8, !tbaa !37
  tail call void %589(ptr noundef nonnull %0) #1
  br label %590

590:                                              ; preds = %586, %581, %573
  %591 = load ptr, ptr %4, align 8, !tbaa !28
  %592 = load ptr, ptr %591, align 8, !tbaa !29
  %593 = getelementptr inbounds i8, ptr %592, i64 1
  store ptr %593, ptr %591, align 8, !tbaa !29
  store i8 0, ptr %592, align 1, !tbaa !31
  %594 = getelementptr inbounds i8, ptr %591, i64 8
  %595 = load i64, ptr %594, align 8, !tbaa !32
  %596 = add i64 %595, -1
  store i64 %596, ptr %594, align 8, !tbaa !32
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %598, label %607

598:                                              ; preds = %590
  %599 = getelementptr inbounds i8, ptr %591, i64 24
  %600 = load ptr, ptr %599, align 8, !tbaa !33
  %601 = tail call signext i32 %600(ptr noundef nonnull %0) #1
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %607

603:                                              ; preds = %598
  %604 = load ptr, ptr %0, align 8, !tbaa !34
  %605 = getelementptr inbounds i8, ptr %604, i64 40
  store i32 24, ptr %605, align 8, !tbaa !35
  %606 = load ptr, ptr %604, align 8, !tbaa !37
  tail call void %606(ptr noundef nonnull %0) #1
  br label %607

607:                                              ; preds = %603, %598, %590
  %608 = load ptr, ptr %4, align 8, !tbaa !28
  %609 = load ptr, ptr %608, align 8, !tbaa !29
  %610 = getelementptr inbounds i8, ptr %609, i64 1
  store ptr %610, ptr %608, align 8, !tbaa !29
  store i8 0, ptr %609, align 1, !tbaa !31
  %611 = getelementptr inbounds i8, ptr %608, i64 8
  %612 = load i64, ptr %611, align 8, !tbaa !32
  %613 = add i64 %612, -1
  store i64 %613, ptr %611, align 8, !tbaa !32
  %614 = icmp eq i64 %613, 0
  br i1 %614, label %615, label %624

615:                                              ; preds = %607
  %616 = getelementptr inbounds i8, ptr %608, i64 24
  %617 = load ptr, ptr %616, align 8, !tbaa !33
  %618 = tail call signext i32 %617(ptr noundef nonnull %0) #1
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %624

620:                                              ; preds = %615
  %621 = load ptr, ptr %0, align 8, !tbaa !34
  %622 = getelementptr inbounds i8, ptr %621, i64 40
  store i32 24, ptr %622, align 8, !tbaa !35
  %623 = load ptr, ptr %621, align 8, !tbaa !37
  tail call void %623(ptr noundef nonnull %0) #1
  br label %624

624:                                              ; preds = %620, %615, %607
  %625 = getelementptr inbounds i8, ptr %0, i64 80
  %626 = load i32, ptr %625, align 8, !tbaa !45
  %627 = load ptr, ptr %4, align 8, !tbaa !28
  %628 = load ptr, ptr %627, align 8, !tbaa !29
  %629 = getelementptr inbounds i8, ptr %628, i64 1
  store ptr %629, ptr %627, align 8, !tbaa !29
  %630 = getelementptr inbounds i8, ptr %627, i64 8
  switch i32 %626, label %649 [
    i32 3, label %631
    i32 5, label %640
  ]

631:                                              ; preds = %624
  store i8 1, ptr %628, align 1, !tbaa !31
  %632 = load i64, ptr %630, align 8, !tbaa !32
  %633 = add i64 %632, -1
  store i64 %633, ptr %630, align 8, !tbaa !32
  %634 = icmp eq i64 %633, 0
  br i1 %634, label %635, label %662

635:                                              ; preds = %631
  %636 = getelementptr inbounds i8, ptr %627, i64 24
  %637 = load ptr, ptr %636, align 8, !tbaa !33
  %638 = tail call signext i32 %637(ptr noundef nonnull %0) #1
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %658, label %662

640:                                              ; preds = %624
  store i8 2, ptr %628, align 1, !tbaa !31
  %641 = load i64, ptr %630, align 8, !tbaa !32
  %642 = add i64 %641, -1
  store i64 %642, ptr %630, align 8, !tbaa !32
  %643 = icmp eq i64 %642, 0
  br i1 %643, label %644, label %662

644:                                              ; preds = %640
  %645 = getelementptr inbounds i8, ptr %627, i64 24
  %646 = load ptr, ptr %645, align 8, !tbaa !33
  %647 = tail call signext i32 %646(ptr noundef nonnull %0) #1
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %658, label %662

649:                                              ; preds = %624
  store i8 0, ptr %628, align 1, !tbaa !31
  %650 = load i64, ptr %630, align 8, !tbaa !32
  %651 = add i64 %650, -1
  store i64 %651, ptr %630, align 8, !tbaa !32
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %653, label %662

653:                                              ; preds = %649
  %654 = getelementptr inbounds i8, ptr %627, i64 24
  %655 = load ptr, ptr %654, align 8, !tbaa !33
  %656 = tail call signext i32 %655(ptr noundef nonnull %0) #1
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %662

658:                                              ; preds = %653, %644, %635
  %659 = load ptr, ptr %0, align 8, !tbaa !34
  %660 = getelementptr inbounds i8, ptr %659, i64 40
  store i32 24, ptr %660, align 8, !tbaa !35
  %661 = load ptr, ptr %659, align 8, !tbaa !37
  tail call void %661(ptr noundef nonnull %0) #1
  br label %662

662:                                              ; preds = %658, %653, %649, %644, %640, %635, %631, %365
  ret void
}

; Function Attrs: nounwind
define internal void @write_frame_header(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 88
  %3 = getelementptr inbounds i8, ptr %0, i64 76
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !47
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %17, %8 ], [ %7, %6 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %6 ]
  %11 = phi i32 [ %16, %8 ], [ 0, %6 ]
  %12 = getelementptr inbounds i8, ptr %9, i64 16
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = tail call fastcc signext i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef signext %13)
  %15 = add nuw nsw i32 %14, %10
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr inbounds i8, ptr %9, i64 96
  %18 = load i32, ptr %3, align 4, !tbaa !46
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !50

20:                                               ; preds = %8
  %21 = icmp ne i32 %15, 0
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi i1 [ false, %1 ], [ %21, %20 ]
  %24 = phi i32 [ %4, %1 ], [ %18, %20 ]
  %25 = getelementptr inbounds i8, ptr %0, i64 260
  %26 = load i32, ptr %25, align 4, !tbaa !52
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %22
  %29 = getelementptr inbounds i8, ptr %0, i64 308
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %0, i64 72
  %34 = load i32, ptr %33, align 8, !tbaa !54
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = icmp sgt i32 %24, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %36
  %39 = load ptr, ptr %2, align 8, !tbaa !47
  br label %40

40:                                               ; preds = %38, %52
  %41 = phi ptr [ %55, %52 ], [ %39, %38 ]
  %42 = phi i32 [ %53, %52 ], [ 1, %38 ]
  %43 = phi i32 [ %54, %52 ], [ 0, %38 ]
  %44 = getelementptr inbounds i8, ptr %41, i64 20
  %45 = load i32, ptr %44, align 4, !tbaa !55
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, ptr %41, i64 24
  %49 = load i32, ptr %48, align 8, !tbaa !56
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %40
  br label %52

52:                                               ; preds = %47, %51
  %53 = phi i32 [ 0, %51 ], [ %42, %47 ]
  %54 = add nuw nsw i32 %43, 1
  %55 = getelementptr inbounds i8, ptr %41, i64 96
  %56 = icmp eq i32 %54, %24
  br i1 %56, label %57, label %40, !llvm.loop !57

57:                                               ; preds = %52, %36
  %58 = phi i32 [ 1, %36 ], [ %53, %52 ]
  %59 = icmp ne i32 %58, 0
  %60 = select i1 %23, i1 %59, i1 false
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load ptr, ptr %0, align 8, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %62, i64 40
  store i32 75, ptr %63, align 8, !tbaa !35
  %64 = getelementptr inbounds i8, ptr %62, i64 8
  %65 = load ptr, ptr %64, align 8, !tbaa !58
  tail call void %65(ptr noundef nonnull %0, i32 noundef signext 0) #1
  %66 = load i32, ptr %25, align 4, !tbaa !52
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %78

68:                                               ; preds = %57, %32
  %69 = phi i32 [ 0, %32 ], [ %58, %57 ]
  %70 = load i32, ptr %29, align 4, !tbaa !53
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %78

72:                                               ; preds = %61
  %73 = load i32, ptr %29, align 4, !tbaa !53
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %78

75:                                               ; preds = %68
  %76 = icmp eq i32 %69, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %75
  br label %78

78:                                               ; preds = %75, %68, %72, %28, %61, %22, %77
  %79 = phi i32 [ 193, %77 ], [ 201, %22 ], [ 201, %61 ], [ 194, %28 ], [ 194, %72 ], [ 194, %68 ], [ 192, %75 ]
  tail call fastcc void @emit_sof(ptr noundef nonnull %0, i32 noundef signext %79)
  ret void
}

; Function Attrs: nounwind
define internal void @write_scan_header(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 464
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %0, i64 260
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 324
  %9 = load i32, ptr %8, align 4, !tbaa !59
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i64 328
  %13 = getelementptr inbounds i8, ptr %0, i64 308
  %14 = getelementptr inbounds i8, ptr %0, i64 412
  %15 = getelementptr inbounds i8, ptr %0, i64 420
  br label %16

16:                                               ; preds = %11, %39
  %17 = phi i64 [ 0, %11 ], [ %40, %39 ]
  %18 = getelementptr inbounds [4 x ptr], ptr %12, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = load i32, ptr %13, align 4, !tbaa !53
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %14, align 4, !tbaa !61
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, ptr %15, align 4, !tbaa !62
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %19, i64 20
  %30 = load i32, ptr %29, align 4, !tbaa !55
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext %30, i32 noundef signext 0)
  br label %39

31:                                               ; preds = %22
  %32 = getelementptr inbounds i8, ptr %19, i64 24
  %33 = load i32, ptr %32, align 8, !tbaa !56
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext %33, i32 noundef signext 1)
  br label %39

34:                                               ; preds = %16
  %35 = getelementptr inbounds i8, ptr %19, i64 20
  %36 = load i32, ptr %35, align 4, !tbaa !55
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext %36, i32 noundef signext 0)
  %37 = getelementptr inbounds i8, ptr %19, i64 24
  %38 = load i32, ptr %37, align 8, !tbaa !56
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext %38, i32 noundef signext 1)
  br label %39

39:                                               ; preds = %34, %25, %28, %31
  %40 = add nuw nsw i64 %17, 1
  %41 = load i32, ptr %8, align 4, !tbaa !59
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %16, label %44, !llvm.loop !63

44:                                               ; preds = %39, %7, %1
  %45 = getelementptr inbounds i8, ptr %0, i64 280
  %46 = load i32, ptr %45, align 8, !tbaa !64
  %47 = getelementptr inbounds i8, ptr %3, i64 56
  %48 = load i32, ptr %47, align 8, !tbaa !27
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %159, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds i8, ptr %0, i64 40
  %52 = load ptr, ptr %51, align 8, !tbaa !28
  %53 = load ptr, ptr %52, align 8, !tbaa !29
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %54, ptr %52, align 8, !tbaa !29
  store i8 -1, ptr %53, align 1, !tbaa !31
  %55 = getelementptr inbounds i8, ptr %52, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !32
  %57 = add i64 %56, -1
  store i64 %57, ptr %55, align 8, !tbaa !32
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = getelementptr inbounds i8, ptr %52, i64 24
  %61 = load ptr, ptr %60, align 8, !tbaa !33
  %62 = tail call signext i32 %61(ptr noundef nonnull %0) #1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load ptr, ptr %0, align 8, !tbaa !34
  %66 = getelementptr inbounds i8, ptr %65, i64 40
  store i32 24, ptr %66, align 8, !tbaa !35
  %67 = load ptr, ptr %65, align 8, !tbaa !37
  tail call void %67(ptr noundef nonnull %0) #1
  br label %68

68:                                               ; preds = %64, %59, %50
  %69 = load ptr, ptr %51, align 8, !tbaa !28
  %70 = load ptr, ptr %69, align 8, !tbaa !29
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  store ptr %71, ptr %69, align 8, !tbaa !29
  store i8 -35, ptr %70, align 1, !tbaa !31
  %72 = getelementptr inbounds i8, ptr %69, i64 8
  %73 = load i64, ptr %72, align 8, !tbaa !32
  %74 = add i64 %73, -1
  store i64 %74, ptr %72, align 8, !tbaa !32
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = getelementptr inbounds i8, ptr %69, i64 24
  %78 = load ptr, ptr %77, align 8, !tbaa !33
  %79 = tail call signext i32 %78(ptr noundef nonnull %0) #1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load ptr, ptr %0, align 8, !tbaa !34
  %83 = getelementptr inbounds i8, ptr %82, i64 40
  store i32 24, ptr %83, align 8, !tbaa !35
  %84 = load ptr, ptr %82, align 8, !tbaa !37
  tail call void %84(ptr noundef nonnull %0) #1
  br label %85

85:                                               ; preds = %81, %76, %68
  %86 = load ptr, ptr %51, align 8, !tbaa !28
  %87 = load ptr, ptr %86, align 8, !tbaa !29
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %88, ptr %86, align 8, !tbaa !29
  store i8 0, ptr %87, align 1, !tbaa !31
  %89 = getelementptr inbounds i8, ptr %86, i64 8
  %90 = load i64, ptr %89, align 8, !tbaa !32
  %91 = add i64 %90, -1
  store i64 %91, ptr %89, align 8, !tbaa !32
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = getelementptr inbounds i8, ptr %86, i64 24
  %95 = load ptr, ptr %94, align 8, !tbaa !33
  %96 = tail call signext i32 %95(ptr noundef nonnull %0) #1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load ptr, ptr %0, align 8, !tbaa !34
  %100 = getelementptr inbounds i8, ptr %99, i64 40
  store i32 24, ptr %100, align 8, !tbaa !35
  %101 = load ptr, ptr %99, align 8, !tbaa !37
  tail call void %101(ptr noundef nonnull %0) #1
  br label %102

102:                                              ; preds = %98, %93, %85
  %103 = load ptr, ptr %51, align 8, !tbaa !28
  %104 = load ptr, ptr %103, align 8, !tbaa !29
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %105, ptr %103, align 8, !tbaa !29
  store i8 4, ptr %104, align 1, !tbaa !31
  %106 = getelementptr inbounds i8, ptr %103, i64 8
  %107 = load i64, ptr %106, align 8, !tbaa !32
  %108 = add i64 %107, -1
  store i64 %108, ptr %106, align 8, !tbaa !32
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = getelementptr inbounds i8, ptr %103, i64 24
  %112 = load ptr, ptr %111, align 8, !tbaa !33
  %113 = tail call signext i32 %112(ptr noundef nonnull %0) #1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load ptr, ptr %0, align 8, !tbaa !34
  %117 = getelementptr inbounds i8, ptr %116, i64 40
  store i32 24, ptr %117, align 8, !tbaa !35
  %118 = load ptr, ptr %116, align 8, !tbaa !37
  tail call void %118(ptr noundef nonnull %0) #1
  br label %119

119:                                              ; preds = %115, %110, %102
  %120 = load i32, ptr %45, align 8, !tbaa !64
  %121 = lshr i32 %120, 8
  %122 = load ptr, ptr %51, align 8, !tbaa !28
  %123 = trunc i32 %121 to i8
  %124 = load ptr, ptr %122, align 8, !tbaa !29
  %125 = getelementptr inbounds i8, ptr %124, i64 1
  store ptr %125, ptr %122, align 8, !tbaa !29
  store i8 %123, ptr %124, align 1, !tbaa !31
  %126 = getelementptr inbounds i8, ptr %122, i64 8
  %127 = load i64, ptr %126, align 8, !tbaa !32
  %128 = add i64 %127, -1
  store i64 %128, ptr %126, align 8, !tbaa !32
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %119
  %131 = getelementptr inbounds i8, ptr %122, i64 24
  %132 = load ptr, ptr %131, align 8, !tbaa !33
  %133 = tail call signext i32 %132(ptr noundef nonnull %0) #1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load ptr, ptr %0, align 8, !tbaa !34
  %137 = getelementptr inbounds i8, ptr %136, i64 40
  store i32 24, ptr %137, align 8, !tbaa !35
  %138 = load ptr, ptr %136, align 8, !tbaa !37
  tail call void %138(ptr noundef nonnull %0) #1
  br label %139

139:                                              ; preds = %135, %130, %119
  %140 = load ptr, ptr %51, align 8, !tbaa !28
  %141 = trunc i32 %120 to i8
  %142 = load ptr, ptr %140, align 8, !tbaa !29
  %143 = getelementptr inbounds i8, ptr %142, i64 1
  store ptr %143, ptr %140, align 8, !tbaa !29
  store i8 %141, ptr %142, align 1, !tbaa !31
  %144 = getelementptr inbounds i8, ptr %140, i64 8
  %145 = load i64, ptr %144, align 8, !tbaa !32
  %146 = add i64 %145, -1
  store i64 %146, ptr %144, align 8, !tbaa !32
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %139
  %149 = getelementptr inbounds i8, ptr %140, i64 24
  %150 = load ptr, ptr %149, align 8, !tbaa !33
  %151 = tail call signext i32 %150(ptr noundef nonnull %0) #1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load ptr, ptr %0, align 8, !tbaa !34
  %155 = getelementptr inbounds i8, ptr %154, i64 40
  store i32 24, ptr %155, align 8, !tbaa !35
  %156 = load ptr, ptr %154, align 8, !tbaa !37
  tail call void %156(ptr noundef nonnull %0) #1
  br label %157

157:                                              ; preds = %139, %148, %153
  %158 = load i32, ptr %45, align 8, !tbaa !64
  store i32 %158, ptr %47, align 8, !tbaa !27
  br label %159

159:                                              ; preds = %157, %44
  %160 = getelementptr inbounds i8, ptr %0, i64 40
  %161 = load ptr, ptr %160, align 8, !tbaa !28
  %162 = load ptr, ptr %161, align 8, !tbaa !29
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  store ptr %163, ptr %161, align 8, !tbaa !29
  store i8 -1, ptr %162, align 1, !tbaa !31
  %164 = getelementptr inbounds i8, ptr %161, i64 8
  %165 = load i64, ptr %164, align 8, !tbaa !32
  %166 = add i64 %165, -1
  store i64 %166, ptr %164, align 8, !tbaa !32
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %159
  %169 = getelementptr inbounds i8, ptr %161, i64 24
  %170 = load ptr, ptr %169, align 8, !tbaa !33
  %171 = tail call signext i32 %170(ptr noundef nonnull %0) #1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load ptr, ptr %0, align 8, !tbaa !34
  %175 = getelementptr inbounds i8, ptr %174, i64 40
  store i32 24, ptr %175, align 8, !tbaa !35
  %176 = load ptr, ptr %174, align 8, !tbaa !37
  tail call void %176(ptr noundef nonnull %0) #1
  br label %177

177:                                              ; preds = %173, %168, %159
  %178 = load ptr, ptr %160, align 8, !tbaa !28
  %179 = load ptr, ptr %178, align 8, !tbaa !29
  %180 = getelementptr inbounds i8, ptr %179, i64 1
  store ptr %180, ptr %178, align 8, !tbaa !29
  store i8 -38, ptr %179, align 1, !tbaa !31
  %181 = getelementptr inbounds i8, ptr %178, i64 8
  %182 = load i64, ptr %181, align 8, !tbaa !32
  %183 = add i64 %182, -1
  store i64 %183, ptr %181, align 8, !tbaa !32
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %177
  %186 = getelementptr inbounds i8, ptr %178, i64 24
  %187 = load ptr, ptr %186, align 8, !tbaa !33
  %188 = tail call signext i32 %187(ptr noundef nonnull %0) #1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load ptr, ptr %0, align 8, !tbaa !34
  %192 = getelementptr inbounds i8, ptr %191, i64 40
  store i32 24, ptr %192, align 8, !tbaa !35
  %193 = load ptr, ptr %191, align 8, !tbaa !37
  tail call void %193(ptr noundef nonnull %0) #1
  br label %194

194:                                              ; preds = %190, %185, %177
  %195 = getelementptr inbounds i8, ptr %0, i64 324
  %196 = load i32, ptr %195, align 4, !tbaa !59
  %197 = shl nsw i32 %196, 1
  %198 = add nsw i32 %197, 6
  %199 = lshr i32 %198, 8
  %200 = load ptr, ptr %160, align 8, !tbaa !28
  %201 = trunc i32 %199 to i8
  %202 = load ptr, ptr %200, align 8, !tbaa !29
  %203 = getelementptr inbounds i8, ptr %202, i64 1
  store ptr %203, ptr %200, align 8, !tbaa !29
  store i8 %201, ptr %202, align 1, !tbaa !31
  %204 = getelementptr inbounds i8, ptr %200, i64 8
  %205 = load i64, ptr %204, align 8, !tbaa !32
  %206 = add i64 %205, -1
  store i64 %206, ptr %204, align 8, !tbaa !32
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %194
  %209 = getelementptr inbounds i8, ptr %200, i64 24
  %210 = load ptr, ptr %209, align 8, !tbaa !33
  %211 = tail call signext i32 %210(ptr noundef nonnull %0) #1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load ptr, ptr %0, align 8, !tbaa !34
  %215 = getelementptr inbounds i8, ptr %214, i64 40
  store i32 24, ptr %215, align 8, !tbaa !35
  %216 = load ptr, ptr %214, align 8, !tbaa !37
  tail call void %216(ptr noundef nonnull %0) #1
  br label %217

217:                                              ; preds = %213, %208, %194
  %218 = load ptr, ptr %160, align 8, !tbaa !28
  %219 = trunc i32 %198 to i8
  %220 = load ptr, ptr %218, align 8, !tbaa !29
  %221 = getelementptr inbounds i8, ptr %220, i64 1
  store ptr %221, ptr %218, align 8, !tbaa !29
  store i8 %219, ptr %220, align 1, !tbaa !31
  %222 = getelementptr inbounds i8, ptr %218, i64 8
  %223 = load i64, ptr %222, align 8, !tbaa !32
  %224 = add i64 %223, -1
  store i64 %224, ptr %222, align 8, !tbaa !32
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %217
  %227 = getelementptr inbounds i8, ptr %218, i64 24
  %228 = load ptr, ptr %227, align 8, !tbaa !33
  %229 = tail call signext i32 %228(ptr noundef nonnull %0) #1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load ptr, ptr %0, align 8, !tbaa !34
  %233 = getelementptr inbounds i8, ptr %232, i64 40
  store i32 24, ptr %233, align 8, !tbaa !35
  %234 = load ptr, ptr %232, align 8, !tbaa !37
  tail call void %234(ptr noundef nonnull %0) #1
  br label %235

235:                                              ; preds = %231, %226, %217
  %236 = load i32, ptr %195, align 4, !tbaa !59
  %237 = load ptr, ptr %160, align 8, !tbaa !28
  %238 = trunc i32 %236 to i8
  %239 = load ptr, ptr %237, align 8, !tbaa !29
  %240 = getelementptr inbounds i8, ptr %239, i64 1
  store ptr %240, ptr %237, align 8, !tbaa !29
  store i8 %238, ptr %239, align 1, !tbaa !31
  %241 = getelementptr inbounds i8, ptr %237, i64 8
  %242 = load i64, ptr %241, align 8, !tbaa !32
  %243 = add i64 %242, -1
  store i64 %243, ptr %241, align 8, !tbaa !32
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %235
  %246 = getelementptr inbounds i8, ptr %237, i64 24
  %247 = load ptr, ptr %246, align 8, !tbaa !33
  %248 = tail call signext i32 %247(ptr noundef nonnull %0) #1
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load ptr, ptr %0, align 8, !tbaa !34
  %252 = getelementptr inbounds i8, ptr %251, i64 40
  store i32 24, ptr %252, align 8, !tbaa !35
  %253 = load ptr, ptr %251, align 8, !tbaa !37
  tail call void %253(ptr noundef nonnull %0) #1
  br label %254

254:                                              ; preds = %250, %245, %235
  %255 = load i32, ptr %195, align 4, !tbaa !59
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %328

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 328
  %259 = getelementptr inbounds i8, ptr %0, i64 308
  %260 = getelementptr inbounds i8, ptr %0, i64 412
  %261 = getelementptr inbounds i8, ptr %0, i64 420
  br label %262

262:                                              ; preds = %323, %257
  %263 = phi i64 [ 0, %257 ], [ %324, %323 ]
  %264 = getelementptr inbounds [4 x ptr], ptr %258, i64 0, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !60
  %266 = load i32, ptr %265, align 8, !tbaa !65
  %267 = load ptr, ptr %160, align 8, !tbaa !28
  %268 = trunc i32 %266 to i8
  %269 = load ptr, ptr %267, align 8, !tbaa !29
  %270 = getelementptr inbounds i8, ptr %269, i64 1
  store ptr %270, ptr %267, align 8, !tbaa !29
  store i8 %268, ptr %269, align 1, !tbaa !31
  %271 = getelementptr inbounds i8, ptr %267, i64 8
  %272 = load i64, ptr %271, align 8, !tbaa !32
  %273 = add i64 %272, -1
  store i64 %273, ptr %271, align 8, !tbaa !32
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %262
  %276 = getelementptr inbounds i8, ptr %267, i64 24
  %277 = load ptr, ptr %276, align 8, !tbaa !33
  %278 = tail call signext i32 %277(ptr noundef nonnull %0) #1
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = load ptr, ptr %0, align 8, !tbaa !34
  %282 = getelementptr inbounds i8, ptr %281, i64 40
  store i32 24, ptr %282, align 8, !tbaa !35
  %283 = load ptr, ptr %281, align 8, !tbaa !37
  tail call void %283(ptr noundef nonnull %0) #1
  br label %284

284:                                              ; preds = %280, %275, %262
  %285 = getelementptr inbounds i8, ptr %265, i64 20
  %286 = load i32, ptr %285, align 4, !tbaa !55
  %287 = getelementptr inbounds i8, ptr %265, i64 24
  %288 = load i32, ptr %287, align 8, !tbaa !56
  %289 = load i32, ptr %259, align 4, !tbaa !53
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %301, label %291

291:                                              ; preds = %284
  %292 = load i32, ptr %260, align 4, !tbaa !61
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %291
  %295 = load i32, ptr %261, align 4, !tbaa !62
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %294
  %298 = load i32, ptr %4, align 4, !tbaa !52
  %299 = icmp eq i32 %298, 0
  %300 = select i1 %299, i32 0, i32 %286
  br label %301

301:                                              ; preds = %297, %294, %291, %284
  %302 = phi i32 [ %286, %294 ], [ %286, %284 ], [ %300, %297 ], [ 0, %291 ]
  %303 = phi i32 [ 0, %294 ], [ %288, %284 ], [ 0, %297 ], [ %288, %291 ]
  %304 = shl i32 %302, 4
  %305 = add nsw i32 %304, %303
  %306 = load ptr, ptr %160, align 8, !tbaa !28
  %307 = trunc i32 %305 to i8
  %308 = load ptr, ptr %306, align 8, !tbaa !29
  %309 = getelementptr inbounds i8, ptr %308, i64 1
  store ptr %309, ptr %306, align 8, !tbaa !29
  store i8 %307, ptr %308, align 1, !tbaa !31
  %310 = getelementptr inbounds i8, ptr %306, i64 8
  %311 = load i64, ptr %310, align 8, !tbaa !32
  %312 = add i64 %311, -1
  store i64 %312, ptr %310, align 8, !tbaa !32
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %301
  %315 = getelementptr inbounds i8, ptr %306, i64 24
  %316 = load ptr, ptr %315, align 8, !tbaa !33
  %317 = tail call signext i32 %316(ptr noundef nonnull %0) #1
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = load ptr, ptr %0, align 8, !tbaa !34
  %321 = getelementptr inbounds i8, ptr %320, i64 40
  store i32 24, ptr %321, align 8, !tbaa !35
  %322 = load ptr, ptr %320, align 8, !tbaa !37
  tail call void %322(ptr noundef nonnull %0) #1
  br label %323

323:                                              ; preds = %319, %314, %301
  %324 = add nuw nsw i64 %263, 1
  %325 = load i32, ptr %195, align 4, !tbaa !59
  %326 = sext i32 %325 to i64
  %327 = icmp slt i64 %324, %326
  br i1 %327, label %262, label %328, !llvm.loop !66

328:                                              ; preds = %323, %254
  %329 = getelementptr inbounds i8, ptr %0, i64 412
  %330 = load i32, ptr %329, align 4, !tbaa !61
  %331 = load ptr, ptr %160, align 8, !tbaa !28
  %332 = trunc i32 %330 to i8
  %333 = load ptr, ptr %331, align 8, !tbaa !29
  %334 = getelementptr inbounds i8, ptr %333, i64 1
  store ptr %334, ptr %331, align 8, !tbaa !29
  store i8 %332, ptr %333, align 1, !tbaa !31
  %335 = getelementptr inbounds i8, ptr %331, i64 8
  %336 = load i64, ptr %335, align 8, !tbaa !32
  %337 = add i64 %336, -1
  store i64 %337, ptr %335, align 8, !tbaa !32
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %328
  %340 = getelementptr inbounds i8, ptr %331, i64 24
  %341 = load ptr, ptr %340, align 8, !tbaa !33
  %342 = tail call signext i32 %341(ptr noundef nonnull %0) #1
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %339
  %345 = load ptr, ptr %0, align 8, !tbaa !34
  %346 = getelementptr inbounds i8, ptr %345, i64 40
  store i32 24, ptr %346, align 8, !tbaa !35
  %347 = load ptr, ptr %345, align 8, !tbaa !37
  tail call void %347(ptr noundef nonnull %0) #1
  br label %348

348:                                              ; preds = %344, %339, %328
  %349 = getelementptr inbounds i8, ptr %0, i64 416
  %350 = load i32, ptr %349, align 8, !tbaa !67
  %351 = load ptr, ptr %160, align 8, !tbaa !28
  %352 = trunc i32 %350 to i8
  %353 = load ptr, ptr %351, align 8, !tbaa !29
  %354 = getelementptr inbounds i8, ptr %353, i64 1
  store ptr %354, ptr %351, align 8, !tbaa !29
  store i8 %352, ptr %353, align 1, !tbaa !31
  %355 = getelementptr inbounds i8, ptr %351, i64 8
  %356 = load i64, ptr %355, align 8, !tbaa !32
  %357 = add i64 %356, -1
  store i64 %357, ptr %355, align 8, !tbaa !32
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %359, label %368

359:                                              ; preds = %348
  %360 = getelementptr inbounds i8, ptr %351, i64 24
  %361 = load ptr, ptr %360, align 8, !tbaa !33
  %362 = tail call signext i32 %361(ptr noundef nonnull %0) #1
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = load ptr, ptr %0, align 8, !tbaa !34
  %366 = getelementptr inbounds i8, ptr %365, i64 40
  store i32 24, ptr %366, align 8, !tbaa !35
  %367 = load ptr, ptr %365, align 8, !tbaa !37
  tail call void %367(ptr noundef nonnull %0) #1
  br label %368

368:                                              ; preds = %364, %359, %348
  %369 = getelementptr inbounds i8, ptr %0, i64 420
  %370 = load i32, ptr %369, align 4, !tbaa !62
  %371 = shl i32 %370, 4
  %372 = getelementptr inbounds i8, ptr %0, i64 424
  %373 = load i32, ptr %372, align 8, !tbaa !68
  %374 = add nsw i32 %371, %373
  %375 = load ptr, ptr %160, align 8, !tbaa !28
  %376 = trunc i32 %374 to i8
  %377 = load ptr, ptr %375, align 8, !tbaa !29
  %378 = getelementptr inbounds i8, ptr %377, i64 1
  store ptr %378, ptr %375, align 8, !tbaa !29
  store i8 %376, ptr %377, align 1, !tbaa !31
  %379 = getelementptr inbounds i8, ptr %375, i64 8
  %380 = load i64, ptr %379, align 8, !tbaa !32
  %381 = add i64 %380, -1
  store i64 %381, ptr %379, align 8, !tbaa !32
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %392

383:                                              ; preds = %368
  %384 = getelementptr inbounds i8, ptr %375, i64 24
  %385 = load ptr, ptr %384, align 8, !tbaa !33
  %386 = tail call signext i32 %385(ptr noundef nonnull %0) #1
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %383
  %389 = load ptr, ptr %0, align 8, !tbaa !34
  %390 = getelementptr inbounds i8, ptr %389, i64 40
  store i32 24, ptr %390, align 8, !tbaa !35
  %391 = load ptr, ptr %389, align 8, !tbaa !37
  tail call void %391(ptr noundef nonnull %0) #1
  br label %392

392:                                              ; preds = %368, %383, %388
  ret void
}

; Function Attrs: nounwind
define internal void @write_file_trailer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %5, ptr %3, align 8, !tbaa !29
  store i8 -1, ptr %4, align 1, !tbaa !31
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !32
  %8 = add i64 %7, -1
  store i64 %8, ptr %6, align 8, !tbaa !32
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %3, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = tail call signext i32 %12(ptr noundef nonnull %0) #1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds i8, ptr %16, i64 40
  store i32 24, ptr %17, align 8, !tbaa !35
  %18 = load ptr, ptr %16, align 8, !tbaa !37
  tail call void %18(ptr noundef nonnull %0) #1
  br label %19

19:                                               ; preds = %15, %10, %1
  %20 = load ptr, ptr %2, align 8, !tbaa !28
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %22, ptr %20, align 8, !tbaa !29
  store i8 -39, ptr %21, align 1, !tbaa !31
  %23 = getelementptr inbounds i8, ptr %20, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !32
  %25 = add i64 %24, -1
  store i64 %25, ptr %23, align 8, !tbaa !32
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = getelementptr inbounds i8, ptr %20, i64 24
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = tail call signext i32 %29(ptr noundef nonnull %0) #1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8, !tbaa !34
  %34 = getelementptr inbounds i8, ptr %33, i64 40
  store i32 24, ptr %34, align 8, !tbaa !35
  %35 = load ptr, ptr %33, align 8, !tbaa !37
  tail call void %35(ptr noundef nonnull %0) #1
  br label %36

36:                                               ; preds = %19, %27, %32
  ret void
}

; Function Attrs: nounwind
define internal void @write_tables_only(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %5, ptr %3, align 8, !tbaa !29
  store i8 -1, ptr %4, align 1, !tbaa !31
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !32
  %8 = add i64 %7, -1
  store i64 %8, ptr %6, align 8, !tbaa !32
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %3, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = tail call signext i32 %12(ptr noundef nonnull %0) #1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds i8, ptr %16, i64 40
  store i32 24, ptr %17, align 8, !tbaa !35
  %18 = load ptr, ptr %16, align 8, !tbaa !37
  tail call void %18(ptr noundef nonnull %0) #1
  br label %19

19:                                               ; preds = %15, %10, %1
  %20 = load ptr, ptr %2, align 8, !tbaa !28
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %22, ptr %20, align 8, !tbaa !29
  store i8 -40, ptr %21, align 1, !tbaa !31
  %23 = getelementptr inbounds i8, ptr %20, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !32
  %25 = add i64 %24, -1
  store i64 %25, ptr %23, align 8, !tbaa !32
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = getelementptr inbounds i8, ptr %20, i64 24
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = tail call signext i32 %29(ptr noundef nonnull %0) #1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8, !tbaa !34
  %34 = getelementptr inbounds i8, ptr %33, i64 40
  store i32 24, ptr %34, align 8, !tbaa !35
  %35 = load ptr, ptr %33, align 8, !tbaa !37
  tail call void %35(ptr noundef nonnull %0) #1
  br label %36

36:                                               ; preds = %19, %27, %32
  %37 = getelementptr inbounds i8, ptr %0, i64 96
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call fastcc signext i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef signext 0)
  br label %42

42:                                               ; preds = %36, %40
  %43 = getelementptr inbounds i8, ptr %0, i64 104
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call fastcc signext i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef signext 1)
  br label %48

48:                                               ; preds = %46, %42
  %49 = getelementptr inbounds i8, ptr %0, i64 112
  %50 = load ptr, ptr %49, align 8, !tbaa !60
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call fastcc signext i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef signext 2)
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds i8, ptr %0, i64 120
  %56 = load ptr, ptr %55, align 8, !tbaa !60
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call fastcc signext i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef signext 3)
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds i8, ptr %0, i64 260
  %62 = load i32, ptr %61, align 4, !tbaa !52
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %104

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %0, i64 128
  %66 = getelementptr inbounds i8, ptr %0, i64 160
  %67 = load ptr, ptr %65, align 8, !tbaa !60
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext 0, i32 noundef signext 0)
  br label %70

70:                                               ; preds = %69, %64
  %71 = load ptr, ptr %66, align 8, !tbaa !60
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext 0, i32 noundef signext 1)
  br label %74

74:                                               ; preds = %70, %73
  %75 = getelementptr inbounds i8, ptr %0, i64 136
  %76 = load ptr, ptr %75, align 8, !tbaa !60
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 0)
  br label %79

79:                                               ; preds = %78, %74
  %80 = getelementptr inbounds i8, ptr %0, i64 168
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 1)
  br label %84

84:                                               ; preds = %83, %79
  %85 = getelementptr inbounds i8, ptr %0, i64 144
  %86 = load ptr, ptr %85, align 8, !tbaa !60
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext 2, i32 noundef signext 0)
  br label %89

89:                                               ; preds = %88, %84
  %90 = getelementptr inbounds i8, ptr %0, i64 176
  %91 = load ptr, ptr %90, align 8, !tbaa !60
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext 2, i32 noundef signext 1)
  br label %94

94:                                               ; preds = %93, %89
  %95 = getelementptr inbounds i8, ptr %0, i64 152
  %96 = load ptr, ptr %95, align 8, !tbaa !60
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext 3, i32 noundef signext 0)
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr inbounds i8, ptr %0, i64 184
  %101 = load ptr, ptr %100, align 8, !tbaa !60
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef signext 3, i32 noundef signext 1)
  br label %104

104:                                              ; preds = %99, %103, %60
  %105 = load ptr, ptr %2, align 8, !tbaa !28
  %106 = load ptr, ptr %105, align 8, !tbaa !29
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  store ptr %107, ptr %105, align 8, !tbaa !29
  store i8 -1, ptr %106, align 1, !tbaa !31
  %108 = getelementptr inbounds i8, ptr %105, i64 8
  %109 = load i64, ptr %108, align 8, !tbaa !32
  %110 = add i64 %109, -1
  store i64 %110, ptr %108, align 8, !tbaa !32
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = getelementptr inbounds i8, ptr %105, i64 24
  %114 = load ptr, ptr %113, align 8, !tbaa !33
  %115 = tail call signext i32 %114(ptr noundef nonnull %0) #1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load ptr, ptr %0, align 8, !tbaa !34
  %119 = getelementptr inbounds i8, ptr %118, i64 40
  store i32 24, ptr %119, align 8, !tbaa !35
  %120 = load ptr, ptr %118, align 8, !tbaa !37
  tail call void %120(ptr noundef nonnull %0) #1
  br label %121

121:                                              ; preds = %117, %112, %104
  %122 = load ptr, ptr %2, align 8, !tbaa !28
  %123 = load ptr, ptr %122, align 8, !tbaa !29
  %124 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %124, ptr %122, align 8, !tbaa !29
  store i8 -39, ptr %123, align 1, !tbaa !31
  %125 = getelementptr inbounds i8, ptr %122, i64 8
  %126 = load i64, ptr %125, align 8, !tbaa !32
  %127 = add i64 %126, -1
  store i64 %127, ptr %125, align 8, !tbaa !32
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %121
  %130 = getelementptr inbounds i8, ptr %122, i64 24
  %131 = load ptr, ptr %130, align 8, !tbaa !33
  %132 = tail call signext i32 %131(ptr noundef nonnull %0) #1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load ptr, ptr %0, align 8, !tbaa !34
  %136 = getelementptr inbounds i8, ptr %135, i64 40
  store i32 24, ptr %136, align 8, !tbaa !35
  %137 = load ptr, ptr %135, align 8, !tbaa !37
  tail call void %137(ptr noundef nonnull %0) #1
  br label %138

138:                                              ; preds = %121, %129, %134
  ret void
}

; Function Attrs: nounwind
define internal void @write_marker_header(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = icmp ugt i32 %2, 65533
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 11, ptr %7, align 8, !tbaa !35
  %8 = load ptr, ptr %6, align 8, !tbaa !37
  tail call void %8(ptr noundef nonnull %0) #1
  br label %9

9:                                                ; preds = %5, %3
  %10 = getelementptr inbounds i8, ptr %0, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %11, align 8, !tbaa !29
  store i8 -1, ptr %12, align 1, !tbaa !31
  %14 = getelementptr inbounds i8, ptr %11, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !32
  %16 = add i64 %15, -1
  store i64 %16, ptr %14, align 8, !tbaa !32
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, ptr %11, i64 24
  %20 = load ptr, ptr %19, align 8, !tbaa !33
  %21 = tail call signext i32 %20(ptr noundef nonnull %0) #1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds i8, ptr %24, i64 40
  store i32 24, ptr %25, align 8, !tbaa !35
  %26 = load ptr, ptr %24, align 8, !tbaa !37
  tail call void %26(ptr noundef nonnull %0) #1
  br label %27

27:                                               ; preds = %23, %18, %9
  %28 = load ptr, ptr %10, align 8, !tbaa !28
  %29 = trunc i32 %1 to i8
  %30 = load ptr, ptr %28, align 8, !tbaa !29
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %31, ptr %28, align 8, !tbaa !29
  store i8 %29, ptr %30, align 1, !tbaa !31
  %32 = getelementptr inbounds i8, ptr %28, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !32
  %34 = add i64 %33, -1
  store i64 %34, ptr %32, align 8, !tbaa !32
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = getelementptr inbounds i8, ptr %28, i64 24
  %38 = load ptr, ptr %37, align 8, !tbaa !33
  %39 = tail call signext i32 %38(ptr noundef nonnull %0) #1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load ptr, ptr %0, align 8, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %42, i64 40
  store i32 24, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr %42, align 8, !tbaa !37
  tail call void %44(ptr noundef nonnull %0) #1
  br label %45

45:                                               ; preds = %27, %36, %41
  %46 = add i32 %2, 2
  %47 = lshr i32 %46, 8
  %48 = load ptr, ptr %10, align 8, !tbaa !28
  %49 = trunc i32 %47 to i8
  %50 = load ptr, ptr %48, align 8, !tbaa !29
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %51, ptr %48, align 8, !tbaa !29
  store i8 %49, ptr %50, align 1, !tbaa !31
  %52 = getelementptr inbounds i8, ptr %48, i64 8
  %53 = load i64, ptr %52, align 8, !tbaa !32
  %54 = add i64 %53, -1
  store i64 %54, ptr %52, align 8, !tbaa !32
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = getelementptr inbounds i8, ptr %48, i64 24
  %58 = load ptr, ptr %57, align 8, !tbaa !33
  %59 = tail call signext i32 %58(ptr noundef nonnull %0) #1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load ptr, ptr %0, align 8, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %62, i64 40
  store i32 24, ptr %63, align 8, !tbaa !35
  %64 = load ptr, ptr %62, align 8, !tbaa !37
  tail call void %64(ptr noundef nonnull %0) #1
  br label %65

65:                                               ; preds = %61, %56, %45
  %66 = load ptr, ptr %10, align 8, !tbaa !28
  %67 = trunc i32 %46 to i8
  %68 = load ptr, ptr %66, align 8, !tbaa !29
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %69, ptr %66, align 8, !tbaa !29
  store i8 %67, ptr %68, align 1, !tbaa !31
  %70 = getelementptr inbounds i8, ptr %66, i64 8
  %71 = load i64, ptr %70, align 8, !tbaa !32
  %72 = add i64 %71, -1
  store i64 %72, ptr %70, align 8, !tbaa !32
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = getelementptr inbounds i8, ptr %66, i64 24
  %76 = load ptr, ptr %75, align 8, !tbaa !33
  %77 = tail call signext i32 %76(ptr noundef nonnull %0) #1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load ptr, ptr %0, align 8, !tbaa !34
  %81 = getelementptr inbounds i8, ptr %80, i64 40
  store i32 24, ptr %81, align 8, !tbaa !35
  %82 = load ptr, ptr %80, align 8, !tbaa !37
  tail call void %82(ptr noundef nonnull %0) #1
  br label %83

83:                                               ; preds = %65, %74, %79
  ret void
}

; Function Attrs: nounwind
define internal void @write_marker_byte(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 40
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = trunc i32 %1 to i8
  %6 = load ptr, ptr %4, align 8, !tbaa !29
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %7, ptr %4, align 8, !tbaa !29
  store i8 %5, ptr %6, align 1, !tbaa !31
  %8 = getelementptr inbounds i8, ptr %4, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !32
  %10 = add i64 %9, -1
  store i64 %10, ptr %8, align 8, !tbaa !32
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %4, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = tail call signext i32 %14(ptr noundef nonnull %0) #1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  store i32 24, ptr %19, align 8, !tbaa !35
  %20 = load ptr, ptr %18, align 8, !tbaa !37
  tail call void %20(ptr noundef nonnull %0) #1
  br label %21

21:                                               ; preds = %2, %12, %17
  ret void
}

; Function Attrs: nounwind
define internal fastcc signext range(i32 0, 2) i32 @emit_dqt(ptr noundef %0, i32 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 96
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  store i32 52, ptr %10, align 8, !tbaa !35
  %11 = getelementptr inbounds i8, ptr %9, i64 44
  store i32 %1, ptr %11, align 4, !tbaa !31
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  tail call void %13(ptr noundef nonnull %0) #1
  br label %14

14:                                               ; preds = %8, %2
  br label %15

15:                                               ; preds = %14, %15
  %16 = phi i64 [ %22, %15 ], [ 0, %14 ]
  %17 = phi i32 [ %21, %15 ], [ 0, %14 ]
  %18 = getelementptr inbounds [64 x i16], ptr %6, i64 0, i64 %16
  %19 = load i16, ptr %18, align 2, !tbaa !69
  %20 = icmp ugt i16 %19, 255
  %21 = select i1 %20, i32 1, i32 %17
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, 64
  br i1 %23, label %24, label %15, !llvm.loop !70

24:                                               ; preds = %15
  %25 = getelementptr inbounds i8, ptr %6, i64 128
  %26 = load i32, ptr %25, align 4, !tbaa !71
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %194

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %0, i64 40
  %30 = load ptr, ptr %29, align 8, !tbaa !28
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %32, ptr %30, align 8, !tbaa !29
  store i8 -1, ptr %31, align 1, !tbaa !31
  %33 = getelementptr inbounds i8, ptr %30, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !32
  %35 = add i64 %34, -1
  store i64 %35, ptr %33, align 8, !tbaa !32
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = getelementptr inbounds i8, ptr %30, i64 24
  %39 = load ptr, ptr %38, align 8, !tbaa !33
  %40 = tail call signext i32 %39(ptr noundef nonnull %0) #1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load ptr, ptr %0, align 8, !tbaa !34
  %44 = getelementptr inbounds i8, ptr %43, i64 40
  store i32 24, ptr %44, align 8, !tbaa !35
  %45 = load ptr, ptr %43, align 8, !tbaa !37
  tail call void %45(ptr noundef nonnull %0) #1
  br label %46

46:                                               ; preds = %42, %37, %28
  %47 = load ptr, ptr %29, align 8, !tbaa !28
  %48 = load ptr, ptr %47, align 8, !tbaa !29
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %49, ptr %47, align 8, !tbaa !29
  store i8 -37, ptr %48, align 1, !tbaa !31
  %50 = getelementptr inbounds i8, ptr %47, i64 8
  %51 = load i64, ptr %50, align 8, !tbaa !32
  %52 = add i64 %51, -1
  store i64 %52, ptr %50, align 8, !tbaa !32
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, ptr %47, i64 24
  %56 = load ptr, ptr %55, align 8, !tbaa !33
  %57 = tail call signext i32 %56(ptr noundef nonnull %0) #1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load ptr, ptr %0, align 8, !tbaa !34
  %61 = getelementptr inbounds i8, ptr %60, i64 40
  store i32 24, ptr %61, align 8, !tbaa !35
  %62 = load ptr, ptr %60, align 8, !tbaa !37
  tail call void %62(ptr noundef nonnull %0) #1
  br label %63

63:                                               ; preds = %46, %54, %59
  %64 = icmp eq i32 %21, 0
  %65 = load ptr, ptr %29, align 8, !tbaa !28
  %66 = load ptr, ptr %65, align 8, !tbaa !29
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %67, ptr %65, align 8, !tbaa !29
  store i8 0, ptr %66, align 1, !tbaa !31
  %68 = getelementptr inbounds i8, ptr %65, i64 8
  %69 = load i64, ptr %68, align 8, !tbaa !32
  %70 = add i64 %69, -1
  store i64 %70, ptr %68, align 8, !tbaa !32
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = getelementptr inbounds i8, ptr %65, i64 24
  %74 = load ptr, ptr %73, align 8, !tbaa !33
  %75 = tail call signext i32 %74(ptr noundef nonnull %0) #1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load ptr, ptr %0, align 8, !tbaa !34
  %79 = getelementptr inbounds i8, ptr %78, i64 40
  store i32 24, ptr %79, align 8, !tbaa !35
  %80 = load ptr, ptr %78, align 8, !tbaa !37
  tail call void %80(ptr noundef nonnull %0) #1
  br label %81

81:                                               ; preds = %77, %72, %63
  %82 = load ptr, ptr %29, align 8, !tbaa !28
  %83 = select i1 %64, i8 67, i8 -125
  %84 = load ptr, ptr %82, align 8, !tbaa !29
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %85, ptr %82, align 8, !tbaa !29
  store i8 %83, ptr %84, align 1, !tbaa !31
  %86 = getelementptr inbounds i8, ptr %82, i64 8
  %87 = load i64, ptr %86, align 8, !tbaa !32
  %88 = add i64 %87, -1
  store i64 %88, ptr %86, align 8, !tbaa !32
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = getelementptr inbounds i8, ptr %82, i64 24
  %92 = load ptr, ptr %91, align 8, !tbaa !33
  %93 = tail call signext i32 %92(ptr noundef nonnull %0) #1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load ptr, ptr %0, align 8, !tbaa !34
  %97 = getelementptr inbounds i8, ptr %96, i64 40
  store i32 24, ptr %97, align 8, !tbaa !35
  %98 = load ptr, ptr %96, align 8, !tbaa !37
  tail call void %98(ptr noundef nonnull %0) #1
  br label %99

99:                                               ; preds = %81, %90, %95
  %100 = shl nuw nsw i32 %21, 4
  %101 = add nsw i32 %100, %1
  %102 = load ptr, ptr %29, align 8, !tbaa !28
  %103 = trunc i32 %101 to i8
  %104 = load ptr, ptr %102, align 8, !tbaa !29
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %105, ptr %102, align 8, !tbaa !29
  store i8 %103, ptr %104, align 1, !tbaa !31
  %106 = getelementptr inbounds i8, ptr %102, i64 8
  %107 = load i64, ptr %106, align 8, !tbaa !32
  %108 = add i64 %107, -1
  store i64 %108, ptr %106, align 8, !tbaa !32
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %99
  %111 = getelementptr inbounds i8, ptr %102, i64 24
  %112 = load ptr, ptr %111, align 8, !tbaa !33
  %113 = tail call signext i32 %112(ptr noundef nonnull %0) #1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load ptr, ptr %0, align 8, !tbaa !34
  %117 = getelementptr inbounds i8, ptr %116, i64 40
  store i32 24, ptr %117, align 8, !tbaa !35
  %118 = load ptr, ptr %116, align 8, !tbaa !37
  tail call void %118(ptr noundef nonnull %0) #1
  br label %119

119:                                              ; preds = %99, %110, %115
  br i1 %64, label %120, label %147

120:                                              ; preds = %119, %144
  %121 = phi i64 [ %145, %144 ], [ 0, %119 ]
  %122 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !73
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [64 x i16], ptr %6, i64 0, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !69
  %127 = load ptr, ptr %29, align 8, !tbaa !28
  %128 = trunc i16 %126 to i8
  %129 = load ptr, ptr %127, align 8, !tbaa !29
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  store ptr %130, ptr %127, align 8, !tbaa !29
  store i8 %128, ptr %129, align 1, !tbaa !31
  %131 = getelementptr inbounds i8, ptr %127, i64 8
  %132 = load i64, ptr %131, align 8, !tbaa !32
  %133 = add i64 %132, -1
  store i64 %133, ptr %131, align 8, !tbaa !32
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %120
  %136 = getelementptr inbounds i8, ptr %127, i64 24
  %137 = load ptr, ptr %136, align 8, !tbaa !33
  %138 = tail call signext i32 %137(ptr noundef nonnull %0) #1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load ptr, ptr %0, align 8, !tbaa !34
  %142 = getelementptr inbounds i8, ptr %141, i64 40
  store i32 24, ptr %142, align 8, !tbaa !35
  %143 = load ptr, ptr %141, align 8, !tbaa !37
  tail call void %143(ptr noundef nonnull %0) #1
  br label %144

144:                                              ; preds = %140, %135, %120
  %145 = add nuw nsw i64 %121, 1
  %146 = icmp eq i64 %145, 64
  br i1 %146, label %193, label %120, !llvm.loop !74

147:                                              ; preds = %119, %190
  %148 = phi i64 [ %191, %190 ], [ 0, %119 ]
  %149 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !73
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [64 x i16], ptr %6, i64 0, i64 %151
  %153 = load i16, ptr %152, align 2, !tbaa !69
  %154 = lshr i16 %153, 8
  %155 = load ptr, ptr %29, align 8, !tbaa !28
  %156 = trunc nuw i16 %154 to i8
  %157 = load ptr, ptr %155, align 8, !tbaa !29
  %158 = getelementptr inbounds i8, ptr %157, i64 1
  store ptr %158, ptr %155, align 8, !tbaa !29
  store i8 %156, ptr %157, align 1, !tbaa !31
  %159 = getelementptr inbounds i8, ptr %155, i64 8
  %160 = load i64, ptr %159, align 8, !tbaa !32
  %161 = add i64 %160, -1
  store i64 %161, ptr %159, align 8, !tbaa !32
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %147
  %164 = getelementptr inbounds i8, ptr %155, i64 24
  %165 = load ptr, ptr %164, align 8, !tbaa !33
  %166 = tail call signext i32 %165(ptr noundef nonnull %0) #1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load ptr, ptr %0, align 8, !tbaa !34
  %170 = getelementptr inbounds i8, ptr %169, i64 40
  store i32 24, ptr %170, align 8, !tbaa !35
  %171 = load ptr, ptr %169, align 8, !tbaa !37
  tail call void %171(ptr noundef nonnull %0) #1
  br label %172

172:                                              ; preds = %168, %163, %147
  %173 = load ptr, ptr %29, align 8, !tbaa !28
  %174 = trunc i16 %153 to i8
  %175 = load ptr, ptr %173, align 8, !tbaa !29
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  store ptr %176, ptr %173, align 8, !tbaa !29
  store i8 %174, ptr %175, align 1, !tbaa !31
  %177 = getelementptr inbounds i8, ptr %173, i64 8
  %178 = load i64, ptr %177, align 8, !tbaa !32
  %179 = add i64 %178, -1
  store i64 %179, ptr %177, align 8, !tbaa !32
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %172
  %182 = getelementptr inbounds i8, ptr %173, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !33
  %184 = tail call signext i32 %183(ptr noundef nonnull %0) #1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load ptr, ptr %0, align 8, !tbaa !34
  %188 = getelementptr inbounds i8, ptr %187, i64 40
  store i32 24, ptr %188, align 8, !tbaa !35
  %189 = load ptr, ptr %187, align 8, !tbaa !37
  tail call void %189(ptr noundef nonnull %0) #1
  br label %190

190:                                              ; preds = %172, %181, %186
  %191 = add nuw nsw i64 %148, 1
  %192 = icmp eq i64 %191, 64
  br i1 %192, label %193, label %147, !llvm.loop !74

193:                                              ; preds = %190, %144
  store i32 1, ptr %25, align 4, !tbaa !71
  br label %194

194:                                              ; preds = %193, %24
  ret i32 %21
}

; Function Attrs: nounwind
define internal fastcc void @emit_sof(ptr noundef %0, i32 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 40
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %4, align 8, !tbaa !29
  store i8 -1, ptr %5, align 1, !tbaa !31
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !32
  %9 = add i64 %8, -1
  store i64 %9, ptr %7, align 8, !tbaa !32
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %4, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = tail call signext i32 %13(ptr noundef nonnull %0) #1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds i8, ptr %17, i64 40
  store i32 24, ptr %18, align 8, !tbaa !35
  %19 = load ptr, ptr %17, align 8, !tbaa !37
  tail call void %19(ptr noundef nonnull %0) #1
  br label %20

20:                                               ; preds = %16, %11, %2
  %21 = load ptr, ptr %3, align 8, !tbaa !28
  %22 = trunc i32 %1 to i8
  %23 = load ptr, ptr %21, align 8, !tbaa !29
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %24, ptr %21, align 8, !tbaa !29
  store i8 %22, ptr %23, align 1, !tbaa !31
  %25 = getelementptr inbounds i8, ptr %21, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !32
  %27 = add i64 %26, -1
  store i64 %27, ptr %25, align 8, !tbaa !32
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %21, i64 24
  %31 = load ptr, ptr %30, align 8, !tbaa !33
  %32 = tail call signext i32 %31(ptr noundef nonnull %0) #1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %35, i64 40
  store i32 24, ptr %36, align 8, !tbaa !35
  %37 = load ptr, ptr %35, align 8, !tbaa !37
  tail call void %37(ptr noundef nonnull %0) #1
  br label %38

38:                                               ; preds = %20, %29, %34
  %39 = getelementptr inbounds i8, ptr %0, i64 76
  %40 = load i32, ptr %39, align 4, !tbaa !46
  %41 = mul nsw i32 %40, 3
  %42 = add nsw i32 %41, 8
  %43 = lshr i32 %42, 8
  %44 = load ptr, ptr %3, align 8, !tbaa !28
  %45 = trunc i32 %43 to i8
  %46 = load ptr, ptr %44, align 8, !tbaa !29
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %47, ptr %44, align 8, !tbaa !29
  store i8 %45, ptr %46, align 1, !tbaa !31
  %48 = getelementptr inbounds i8, ptr %44, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa !32
  %50 = add i64 %49, -1
  store i64 %50, ptr %48, align 8, !tbaa !32
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %38
  %53 = getelementptr inbounds i8, ptr %44, i64 24
  %54 = load ptr, ptr %53, align 8, !tbaa !33
  %55 = tail call signext i32 %54(ptr noundef nonnull %0) #1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load ptr, ptr %0, align 8, !tbaa !34
  %59 = getelementptr inbounds i8, ptr %58, i64 40
  store i32 24, ptr %59, align 8, !tbaa !35
  %60 = load ptr, ptr %58, align 8, !tbaa !37
  tail call void %60(ptr noundef nonnull %0) #1
  br label %61

61:                                               ; preds = %57, %52, %38
  %62 = load ptr, ptr %3, align 8, !tbaa !28
  %63 = trunc i32 %42 to i8
  %64 = load ptr, ptr %62, align 8, !tbaa !29
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %65, ptr %62, align 8, !tbaa !29
  store i8 %63, ptr %64, align 1, !tbaa !31
  %66 = getelementptr inbounds i8, ptr %62, i64 8
  %67 = load i64, ptr %66, align 8, !tbaa !32
  %68 = add i64 %67, -1
  store i64 %68, ptr %66, align 8, !tbaa !32
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = getelementptr inbounds i8, ptr %62, i64 24
  %72 = load ptr, ptr %71, align 8, !tbaa !33
  %73 = tail call signext i32 %72(ptr noundef nonnull %0) #1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load ptr, ptr %0, align 8, !tbaa !34
  %77 = getelementptr inbounds i8, ptr %76, i64 40
  store i32 24, ptr %77, align 8, !tbaa !35
  %78 = load ptr, ptr %76, align 8, !tbaa !37
  tail call void %78(ptr noundef nonnull %0) #1
  br label %79

79:                                               ; preds = %61, %70, %75
  %80 = getelementptr inbounds i8, ptr %0, i64 52
  %81 = load i32, ptr %80, align 4, !tbaa !75
  %82 = icmp ugt i32 %81, 65535
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %0, i64 48
  %85 = load i32, ptr %84, align 8, !tbaa !76
  %86 = icmp ugt i32 %85, 65535
  br i1 %86, label %87, label %93

87:                                               ; preds = %83, %79
  %88 = load ptr, ptr %0, align 8, !tbaa !34
  %89 = getelementptr inbounds i8, ptr %88, i64 40
  store i32 41, ptr %89, align 8, !tbaa !35
  %90 = getelementptr inbounds i8, ptr %88, i64 44
  store i32 65535, ptr %90, align 4, !tbaa !31
  %91 = load ptr, ptr %0, align 8, !tbaa !34
  %92 = load ptr, ptr %91, align 8, !tbaa !37
  tail call void %92(ptr noundef nonnull %0) #1
  br label %93

93:                                               ; preds = %87, %83
  %94 = getelementptr inbounds i8, ptr %0, i64 72
  %95 = load i32, ptr %94, align 8, !tbaa !54
  %96 = load ptr, ptr %3, align 8, !tbaa !28
  %97 = trunc i32 %95 to i8
  %98 = load ptr, ptr %96, align 8, !tbaa !29
  %99 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %99, ptr %96, align 8, !tbaa !29
  store i8 %97, ptr %98, align 1, !tbaa !31
  %100 = getelementptr inbounds i8, ptr %96, i64 8
  %101 = load i64, ptr %100, align 8, !tbaa !32
  %102 = add i64 %101, -1
  store i64 %102, ptr %100, align 8, !tbaa !32
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %93
  %105 = getelementptr inbounds i8, ptr %96, i64 24
  %106 = load ptr, ptr %105, align 8, !tbaa !33
  %107 = tail call signext i32 %106(ptr noundef nonnull %0) #1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load ptr, ptr %0, align 8, !tbaa !34
  %111 = getelementptr inbounds i8, ptr %110, i64 40
  store i32 24, ptr %111, align 8, !tbaa !35
  %112 = load ptr, ptr %110, align 8, !tbaa !37
  tail call void %112(ptr noundef nonnull %0) #1
  br label %113

113:                                              ; preds = %93, %104, %109
  %114 = load i32, ptr %80, align 4, !tbaa !75
  %115 = lshr i32 %114, 8
  %116 = load ptr, ptr %3, align 8, !tbaa !28
  %117 = trunc i32 %115 to i8
  %118 = load ptr, ptr %116, align 8, !tbaa !29
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  store ptr %119, ptr %116, align 8, !tbaa !29
  store i8 %117, ptr %118, align 1, !tbaa !31
  %120 = getelementptr inbounds i8, ptr %116, i64 8
  %121 = load i64, ptr %120, align 8, !tbaa !32
  %122 = add i64 %121, -1
  store i64 %122, ptr %120, align 8, !tbaa !32
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %113
  %125 = getelementptr inbounds i8, ptr %116, i64 24
  %126 = load ptr, ptr %125, align 8, !tbaa !33
  %127 = tail call signext i32 %126(ptr noundef nonnull %0) #1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load ptr, ptr %0, align 8, !tbaa !34
  %131 = getelementptr inbounds i8, ptr %130, i64 40
  store i32 24, ptr %131, align 8, !tbaa !35
  %132 = load ptr, ptr %130, align 8, !tbaa !37
  tail call void %132(ptr noundef nonnull %0) #1
  br label %133

133:                                              ; preds = %129, %124, %113
  %134 = load ptr, ptr %3, align 8, !tbaa !28
  %135 = trunc i32 %114 to i8
  %136 = load ptr, ptr %134, align 8, !tbaa !29
  %137 = getelementptr inbounds i8, ptr %136, i64 1
  store ptr %137, ptr %134, align 8, !tbaa !29
  store i8 %135, ptr %136, align 1, !tbaa !31
  %138 = getelementptr inbounds i8, ptr %134, i64 8
  %139 = load i64, ptr %138, align 8, !tbaa !32
  %140 = add i64 %139, -1
  store i64 %140, ptr %138, align 8, !tbaa !32
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %133
  %143 = getelementptr inbounds i8, ptr %134, i64 24
  %144 = load ptr, ptr %143, align 8, !tbaa !33
  %145 = tail call signext i32 %144(ptr noundef nonnull %0) #1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load ptr, ptr %0, align 8, !tbaa !34
  %149 = getelementptr inbounds i8, ptr %148, i64 40
  store i32 24, ptr %149, align 8, !tbaa !35
  %150 = load ptr, ptr %148, align 8, !tbaa !37
  tail call void %150(ptr noundef nonnull %0) #1
  br label %151

151:                                              ; preds = %133, %142, %147
  %152 = getelementptr inbounds i8, ptr %0, i64 48
  %153 = load i32, ptr %152, align 8, !tbaa !76
  %154 = lshr i32 %153, 8
  %155 = load ptr, ptr %3, align 8, !tbaa !28
  %156 = trunc i32 %154 to i8
  %157 = load ptr, ptr %155, align 8, !tbaa !29
  %158 = getelementptr inbounds i8, ptr %157, i64 1
  store ptr %158, ptr %155, align 8, !tbaa !29
  store i8 %156, ptr %157, align 1, !tbaa !31
  %159 = getelementptr inbounds i8, ptr %155, i64 8
  %160 = load i64, ptr %159, align 8, !tbaa !32
  %161 = add i64 %160, -1
  store i64 %161, ptr %159, align 8, !tbaa !32
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %151
  %164 = getelementptr inbounds i8, ptr %155, i64 24
  %165 = load ptr, ptr %164, align 8, !tbaa !33
  %166 = tail call signext i32 %165(ptr noundef nonnull %0) #1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load ptr, ptr %0, align 8, !tbaa !34
  %170 = getelementptr inbounds i8, ptr %169, i64 40
  store i32 24, ptr %170, align 8, !tbaa !35
  %171 = load ptr, ptr %169, align 8, !tbaa !37
  tail call void %171(ptr noundef nonnull %0) #1
  br label %172

172:                                              ; preds = %168, %163, %151
  %173 = load ptr, ptr %3, align 8, !tbaa !28
  %174 = trunc i32 %153 to i8
  %175 = load ptr, ptr %173, align 8, !tbaa !29
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  store ptr %176, ptr %173, align 8, !tbaa !29
  store i8 %174, ptr %175, align 1, !tbaa !31
  %177 = getelementptr inbounds i8, ptr %173, i64 8
  %178 = load i64, ptr %177, align 8, !tbaa !32
  %179 = add i64 %178, -1
  store i64 %179, ptr %177, align 8, !tbaa !32
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %172
  %182 = getelementptr inbounds i8, ptr %173, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !33
  %184 = tail call signext i32 %183(ptr noundef nonnull %0) #1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load ptr, ptr %0, align 8, !tbaa !34
  %188 = getelementptr inbounds i8, ptr %187, i64 40
  store i32 24, ptr %188, align 8, !tbaa !35
  %189 = load ptr, ptr %187, align 8, !tbaa !37
  tail call void %189(ptr noundef nonnull %0) #1
  br label %190

190:                                              ; preds = %172, %181, %186
  %191 = load i32, ptr %39, align 4, !tbaa !46
  %192 = load ptr, ptr %3, align 8, !tbaa !28
  %193 = trunc i32 %191 to i8
  %194 = load ptr, ptr %192, align 8, !tbaa !29
  %195 = getelementptr inbounds i8, ptr %194, i64 1
  store ptr %195, ptr %192, align 8, !tbaa !29
  store i8 %193, ptr %194, align 1, !tbaa !31
  %196 = getelementptr inbounds i8, ptr %192, i64 8
  %197 = load i64, ptr %196, align 8, !tbaa !32
  %198 = add i64 %197, -1
  store i64 %198, ptr %196, align 8, !tbaa !32
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %190
  %201 = getelementptr inbounds i8, ptr %192, i64 24
  %202 = load ptr, ptr %201, align 8, !tbaa !33
  %203 = tail call signext i32 %202(ptr noundef nonnull %0) #1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load ptr, ptr %0, align 8, !tbaa !34
  %207 = getelementptr inbounds i8, ptr %206, i64 40
  store i32 24, ptr %207, align 8, !tbaa !35
  %208 = load ptr, ptr %206, align 8, !tbaa !37
  tail call void %208(ptr noundef nonnull %0) #1
  br label %209

209:                                              ; preds = %190, %200, %205
  %210 = load i32, ptr %39, align 4, !tbaa !46
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %285

212:                                              ; preds = %209
  %213 = getelementptr inbounds i8, ptr %0, i64 88
  %214 = load ptr, ptr %213, align 8, !tbaa !47
  br label %215

215:                                              ; preds = %212, %280
  %216 = phi ptr [ %282, %280 ], [ %214, %212 ]
  %217 = phi i32 [ %281, %280 ], [ 0, %212 ]
  %218 = load i32, ptr %216, align 8, !tbaa !65
  %219 = load ptr, ptr %3, align 8, !tbaa !28
  %220 = trunc i32 %218 to i8
  %221 = load ptr, ptr %219, align 8, !tbaa !29
  %222 = getelementptr inbounds i8, ptr %221, i64 1
  store ptr %222, ptr %219, align 8, !tbaa !29
  store i8 %220, ptr %221, align 1, !tbaa !31
  %223 = getelementptr inbounds i8, ptr %219, i64 8
  %224 = load i64, ptr %223, align 8, !tbaa !32
  %225 = add i64 %224, -1
  store i64 %225, ptr %223, align 8, !tbaa !32
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %215
  %228 = getelementptr inbounds i8, ptr %219, i64 24
  %229 = load ptr, ptr %228, align 8, !tbaa !33
  %230 = tail call signext i32 %229(ptr noundef nonnull %0) #1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load ptr, ptr %0, align 8, !tbaa !34
  %234 = getelementptr inbounds i8, ptr %233, i64 40
  store i32 24, ptr %234, align 8, !tbaa !35
  %235 = load ptr, ptr %233, align 8, !tbaa !37
  tail call void %235(ptr noundef nonnull %0) #1
  br label %236

236:                                              ; preds = %215, %227, %232
  %237 = getelementptr inbounds i8, ptr %216, i64 8
  %238 = load i32, ptr %237, align 8, !tbaa !77
  %239 = shl i32 %238, 4
  %240 = getelementptr inbounds i8, ptr %216, i64 12
  %241 = load i32, ptr %240, align 4, !tbaa !78
  %242 = add nsw i32 %239, %241
  %243 = load ptr, ptr %3, align 8, !tbaa !28
  %244 = trunc i32 %242 to i8
  %245 = load ptr, ptr %243, align 8, !tbaa !29
  %246 = getelementptr inbounds i8, ptr %245, i64 1
  store ptr %246, ptr %243, align 8, !tbaa !29
  store i8 %244, ptr %245, align 1, !tbaa !31
  %247 = getelementptr inbounds i8, ptr %243, i64 8
  %248 = load i64, ptr %247, align 8, !tbaa !32
  %249 = add i64 %248, -1
  store i64 %249, ptr %247, align 8, !tbaa !32
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %236
  %252 = getelementptr inbounds i8, ptr %243, i64 24
  %253 = load ptr, ptr %252, align 8, !tbaa !33
  %254 = tail call signext i32 %253(ptr noundef nonnull %0) #1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = load ptr, ptr %0, align 8, !tbaa !34
  %258 = getelementptr inbounds i8, ptr %257, i64 40
  store i32 24, ptr %258, align 8, !tbaa !35
  %259 = load ptr, ptr %257, align 8, !tbaa !37
  tail call void %259(ptr noundef nonnull %0) #1
  br label %260

260:                                              ; preds = %236, %251, %256
  %261 = getelementptr inbounds i8, ptr %216, i64 16
  %262 = load i32, ptr %261, align 8, !tbaa !48
  %263 = load ptr, ptr %3, align 8, !tbaa !28
  %264 = trunc i32 %262 to i8
  %265 = load ptr, ptr %263, align 8, !tbaa !29
  %266 = getelementptr inbounds i8, ptr %265, i64 1
  store ptr %266, ptr %263, align 8, !tbaa !29
  store i8 %264, ptr %265, align 1, !tbaa !31
  %267 = getelementptr inbounds i8, ptr %263, i64 8
  %268 = load i64, ptr %267, align 8, !tbaa !32
  %269 = add i64 %268, -1
  store i64 %269, ptr %267, align 8, !tbaa !32
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %260
  %272 = getelementptr inbounds i8, ptr %263, i64 24
  %273 = load ptr, ptr %272, align 8, !tbaa !33
  %274 = tail call signext i32 %273(ptr noundef nonnull %0) #1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load ptr, ptr %0, align 8, !tbaa !34
  %278 = getelementptr inbounds i8, ptr %277, i64 40
  store i32 24, ptr %278, align 8, !tbaa !35
  %279 = load ptr, ptr %277, align 8, !tbaa !37
  tail call void %279(ptr noundef nonnull %0) #1
  br label %280

280:                                              ; preds = %260, %271, %276
  %281 = add nuw nsw i32 %217, 1
  %282 = getelementptr inbounds i8, ptr %216, i64 96
  %283 = load i32, ptr %39, align 4, !tbaa !46
  %284 = icmp slt i32 %281, %283
  br i1 %284, label %215, label %285, !llvm.loop !79

285:                                              ; preds = %280, %209
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @emit_dht(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 160
  %7 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %5
  %8 = add nsw i32 %1, 16
  %9 = getelementptr inbounds i8, ptr %0, i64 128
  %10 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 %5
  %11 = select i1 %4, i32 %1, i32 %8
  %12 = select i1 %4, ptr %10, ptr %7
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds i8, ptr %16, i64 40
  store i32 50, ptr %17, align 8, !tbaa !35
  %18 = getelementptr inbounds i8, ptr %16, i64 44
  store i32 %11, ptr %18, align 4, !tbaa !31
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = load ptr, ptr %19, align 8, !tbaa !37
  tail call void %20(ptr noundef nonnull %0) #1
  br label %21

21:                                               ; preds = %15, %3
  %22 = getelementptr inbounds i8, ptr %13, i64 276
  %23 = load i32, ptr %22, align 4, !tbaa !80
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %232

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %0, i64 40
  %27 = load ptr, ptr %26, align 8, !tbaa !28
  %28 = load ptr, ptr %27, align 8, !tbaa !29
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !29
  store i8 -1, ptr %28, align 1, !tbaa !31
  %30 = getelementptr inbounds i8, ptr %27, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !32
  %32 = add i64 %31, -1
  store i64 %32, ptr %30, align 8, !tbaa !32
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = getelementptr inbounds i8, ptr %27, i64 24
  %36 = load ptr, ptr %35, align 8, !tbaa !33
  %37 = tail call signext i32 %36(ptr noundef nonnull %0) #1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !34
  %41 = getelementptr inbounds i8, ptr %40, i64 40
  store i32 24, ptr %41, align 8, !tbaa !35
  %42 = load ptr, ptr %40, align 8, !tbaa !37
  tail call void %42(ptr noundef nonnull %0) #1
  br label %43

43:                                               ; preds = %39, %34, %25
  %44 = load ptr, ptr %26, align 8, !tbaa !28
  %45 = load ptr, ptr %44, align 8, !tbaa !29
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %46, ptr %44, align 8, !tbaa !29
  store i8 -60, ptr %45, align 1, !tbaa !31
  %47 = getelementptr inbounds i8, ptr %44, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !32
  %49 = add i64 %48, -1
  store i64 %49, ptr %47, align 8, !tbaa !32
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = getelementptr inbounds i8, ptr %44, i64 24
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  %54 = tail call signext i32 %53(ptr noundef nonnull %0) #1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load ptr, ptr %0, align 8, !tbaa !34
  %58 = getelementptr inbounds i8, ptr %57, i64 40
  store i32 24, ptr %58, align 8, !tbaa !35
  %59 = load ptr, ptr %57, align 8, !tbaa !37
  tail call void %59(ptr noundef nonnull %0) #1
  br label %60

60:                                               ; preds = %43, %51, %56
  %61 = getelementptr inbounds i8, ptr %13, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !31
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds i8, ptr %13, i64 2
  %65 = load i8, ptr %64, align 1, !tbaa !31
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %63, %66
  %68 = getelementptr inbounds i8, ptr %13, i64 3
  %69 = load i8, ptr %68, align 1, !tbaa !31
  %70 = zext i8 %69 to i32
  %71 = add nuw nsw i32 %67, %70
  %72 = getelementptr inbounds i8, ptr %13, i64 4
  %73 = load i8, ptr %72, align 1, !tbaa !31
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %71, %74
  %76 = getelementptr inbounds i8, ptr %13, i64 5
  %77 = load i8, ptr %76, align 1, !tbaa !31
  %78 = zext i8 %77 to i32
  %79 = add nuw nsw i32 %75, %78
  %80 = getelementptr inbounds i8, ptr %13, i64 6
  %81 = load i8, ptr %80, align 1, !tbaa !31
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %79, %82
  %84 = getelementptr inbounds i8, ptr %13, i64 7
  %85 = load i8, ptr %84, align 1, !tbaa !31
  %86 = zext i8 %85 to i32
  %87 = add nuw nsw i32 %83, %86
  %88 = getelementptr inbounds i8, ptr %13, i64 8
  %89 = load i8, ptr %88, align 1, !tbaa !31
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %87, %90
  %92 = getelementptr inbounds i8, ptr %13, i64 9
  %93 = load i8, ptr %92, align 1, !tbaa !31
  %94 = zext i8 %93 to i32
  %95 = add nuw nsw i32 %91, %94
  %96 = getelementptr inbounds i8, ptr %13, i64 10
  %97 = load i8, ptr %96, align 1, !tbaa !31
  %98 = zext i8 %97 to i32
  %99 = add nuw nsw i32 %95, %98
  %100 = getelementptr inbounds i8, ptr %13, i64 11
  %101 = load i8, ptr %100, align 1, !tbaa !31
  %102 = zext i8 %101 to i32
  %103 = add nuw nsw i32 %99, %102
  %104 = getelementptr inbounds i8, ptr %13, i64 12
  %105 = load i8, ptr %104, align 1, !tbaa !31
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %103, %106
  %108 = getelementptr inbounds i8, ptr %13, i64 13
  %109 = load i8, ptr %108, align 1, !tbaa !31
  %110 = zext i8 %109 to i32
  %111 = add nuw nsw i32 %107, %110
  %112 = getelementptr inbounds i8, ptr %13, i64 14
  %113 = load i8, ptr %112, align 1, !tbaa !31
  %114 = zext i8 %113 to i32
  %115 = add nuw nsw i32 %111, %114
  %116 = getelementptr inbounds i8, ptr %13, i64 15
  %117 = load i8, ptr %116, align 1, !tbaa !31
  %118 = zext i8 %117 to i32
  %119 = add nuw nsw i32 %115, %118
  %120 = getelementptr inbounds i8, ptr %13, i64 16
  %121 = load i8, ptr %120, align 1, !tbaa !31
  %122 = zext i8 %121 to i32
  %123 = add nuw nsw i32 %119, %122
  %124 = add nuw nsw i32 %123, 19
  %125 = lshr i32 %124, 8
  %126 = load ptr, ptr %26, align 8, !tbaa !28
  %127 = trunc nuw nsw i32 %125 to i8
  %128 = load ptr, ptr %126, align 8, !tbaa !29
  %129 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %129, ptr %126, align 8, !tbaa !29
  store i8 %127, ptr %128, align 1, !tbaa !31
  %130 = getelementptr inbounds i8, ptr %126, i64 8
  %131 = load i64, ptr %130, align 8, !tbaa !32
  %132 = add i64 %131, -1
  store i64 %132, ptr %130, align 8, !tbaa !32
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %60
  %135 = getelementptr inbounds i8, ptr %126, i64 24
  %136 = load ptr, ptr %135, align 8, !tbaa !33
  %137 = tail call signext i32 %136(ptr noundef nonnull %0) #1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load ptr, ptr %0, align 8, !tbaa !34
  %141 = getelementptr inbounds i8, ptr %140, i64 40
  store i32 24, ptr %141, align 8, !tbaa !35
  %142 = load ptr, ptr %140, align 8, !tbaa !37
  tail call void %142(ptr noundef nonnull %0) #1
  br label %143

143:                                              ; preds = %139, %134, %60
  %144 = load ptr, ptr %26, align 8, !tbaa !28
  %145 = trunc i32 %124 to i8
  %146 = load ptr, ptr %144, align 8, !tbaa !29
  %147 = getelementptr inbounds i8, ptr %146, i64 1
  store ptr %147, ptr %144, align 8, !tbaa !29
  store i8 %145, ptr %146, align 1, !tbaa !31
  %148 = getelementptr inbounds i8, ptr %144, i64 8
  %149 = load i64, ptr %148, align 8, !tbaa !32
  %150 = add i64 %149, -1
  store i64 %150, ptr %148, align 8, !tbaa !32
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %143
  %153 = getelementptr inbounds i8, ptr %144, i64 24
  %154 = load ptr, ptr %153, align 8, !tbaa !33
  %155 = tail call signext i32 %154(ptr noundef nonnull %0) #1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load ptr, ptr %0, align 8, !tbaa !34
  %159 = getelementptr inbounds i8, ptr %158, i64 40
  store i32 24, ptr %159, align 8, !tbaa !35
  %160 = load ptr, ptr %158, align 8, !tbaa !37
  tail call void %160(ptr noundef nonnull %0) #1
  br label %161

161:                                              ; preds = %143, %152, %157
  %162 = load ptr, ptr %26, align 8, !tbaa !28
  %163 = trunc i32 %11 to i8
  %164 = load ptr, ptr %162, align 8, !tbaa !29
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %165, ptr %162, align 8, !tbaa !29
  store i8 %163, ptr %164, align 1, !tbaa !31
  %166 = getelementptr inbounds i8, ptr %162, i64 8
  %167 = load i64, ptr %166, align 8, !tbaa !32
  %168 = add i64 %167, -1
  store i64 %168, ptr %166, align 8, !tbaa !32
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %161
  %171 = getelementptr inbounds i8, ptr %162, i64 24
  %172 = load ptr, ptr %171, align 8, !tbaa !33
  %173 = tail call signext i32 %172(ptr noundef nonnull %0) #1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load ptr, ptr %0, align 8, !tbaa !34
  %177 = getelementptr inbounds i8, ptr %176, i64 40
  store i32 24, ptr %177, align 8, !tbaa !35
  %178 = load ptr, ptr %176, align 8, !tbaa !37
  tail call void %178(ptr noundef nonnull %0) #1
  br label %179

179:                                              ; preds = %161, %170, %175
  br label %185

180:                                              ; preds = %205
  %181 = icmp eq i32 %123, 0
  br i1 %181, label %231, label %182

182:                                              ; preds = %180
  %183 = getelementptr inbounds i8, ptr %13, i64 17
  %184 = zext nneg i32 %123 to i64
  br label %208

185:                                              ; preds = %179, %205
  %186 = phi i64 [ %206, %205 ], [ 1, %179 ]
  %187 = getelementptr inbounds [17 x i8], ptr %13, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !31
  %189 = load ptr, ptr %26, align 8, !tbaa !28
  %190 = load ptr, ptr %189, align 8, !tbaa !29
  %191 = getelementptr inbounds i8, ptr %190, i64 1
  store ptr %191, ptr %189, align 8, !tbaa !29
  store i8 %188, ptr %190, align 1, !tbaa !31
  %192 = getelementptr inbounds i8, ptr %189, i64 8
  %193 = load i64, ptr %192, align 8, !tbaa !32
  %194 = add i64 %193, -1
  store i64 %194, ptr %192, align 8, !tbaa !32
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %185
  %197 = getelementptr inbounds i8, ptr %189, i64 24
  %198 = load ptr, ptr %197, align 8, !tbaa !33
  %199 = tail call signext i32 %198(ptr noundef nonnull %0) #1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load ptr, ptr %0, align 8, !tbaa !34
  %203 = getelementptr inbounds i8, ptr %202, i64 40
  store i32 24, ptr %203, align 8, !tbaa !35
  %204 = load ptr, ptr %202, align 8, !tbaa !37
  tail call void %204(ptr noundef nonnull %0) #1
  br label %205

205:                                              ; preds = %185, %196, %201
  %206 = add nuw nsw i64 %186, 1
  %207 = icmp eq i64 %206, 17
  br i1 %207, label %180, label %185, !llvm.loop !82

208:                                              ; preds = %182, %228
  %209 = phi i64 [ 0, %182 ], [ %229, %228 ]
  %210 = getelementptr inbounds [256 x i8], ptr %183, i64 0, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !31
  %212 = load ptr, ptr %26, align 8, !tbaa !28
  %213 = load ptr, ptr %212, align 8, !tbaa !29
  %214 = getelementptr inbounds i8, ptr %213, i64 1
  store ptr %214, ptr %212, align 8, !tbaa !29
  store i8 %211, ptr %213, align 1, !tbaa !31
  %215 = getelementptr inbounds i8, ptr %212, i64 8
  %216 = load i64, ptr %215, align 8, !tbaa !32
  %217 = add i64 %216, -1
  store i64 %217, ptr %215, align 8, !tbaa !32
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %208
  %220 = getelementptr inbounds i8, ptr %212, i64 24
  %221 = load ptr, ptr %220, align 8, !tbaa !33
  %222 = tail call signext i32 %221(ptr noundef nonnull %0) #1
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load ptr, ptr %0, align 8, !tbaa !34
  %226 = getelementptr inbounds i8, ptr %225, i64 40
  store i32 24, ptr %226, align 8, !tbaa !35
  %227 = load ptr, ptr %225, align 8, !tbaa !37
  tail call void %227(ptr noundef nonnull %0) #1
  br label %228

228:                                              ; preds = %208, %219, %224
  %229 = add nuw nsw i64 %209, 1
  %230 = icmp ult i64 %229, %184
  br i1 %230, label %208, label %231, !llvm.loop !83

231:                                              ; preds = %228, %180
  store i32 1, ptr %22, align 4, !tbaa !80
  br label %232

232:                                              ; preds = %231, %21
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind }

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
!17 = !{!7, !8, i64 464}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !11, i64 56}
!20 = !{!"jpeg_marker_writer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!21 = !{!19, !8, i64 8}
!22 = !{!19, !8, i64 16}
!23 = !{!19, !8, i64 24}
!24 = !{!19, !8, i64 32}
!25 = !{!19, !8, i64 40}
!26 = !{!19, !8, i64 48}
!27 = !{!19, !11, i64 56}
!28 = !{!7, !8, i64 40}
!29 = !{!30, !8, i64 0}
!30 = !{!"jpeg_destination_mgr", !8, i64 0, !16, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!31 = !{!9, !9, i64 0}
!32 = !{!30, !16, i64 8}
!33 = !{!30, !8, i64 24}
!34 = !{!7, !8, i64 0}
!35 = !{!36, !11, i64 40}
!36 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!37 = !{!36, !8, i64 0}
!38 = !{!7, !11, i64 288}
!39 = !{!7, !9, i64 292}
!40 = !{!7, !9, i64 293}
!41 = !{!7, !9, i64 294}
!42 = !{!7, !13, i64 296}
!43 = !{!7, !13, i64 298}
!44 = !{!7, !11, i64 300}
!45 = !{!7, !11, i64 80}
!46 = !{!7, !11, i64 76}
!47 = !{!7, !8, i64 88}
!48 = !{!49, !11, i64 16}
!49 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!7, !11, i64 260}
!53 = !{!7, !11, i64 308}
!54 = !{!7, !11, i64 72}
!55 = !{!49, !11, i64 20}
!56 = !{!49, !11, i64 24}
!57 = distinct !{!57, !51}
!58 = !{!36, !8, i64 8}
!59 = !{!7, !11, i64 324}
!60 = !{!8, !8, i64 0}
!61 = !{!7, !11, i64 412}
!62 = !{!7, !11, i64 420}
!63 = distinct !{!63, !51}
!64 = !{!7, !11, i64 280}
!65 = !{!49, !11, i64 0}
!66 = distinct !{!66, !51}
!67 = !{!7, !11, i64 416}
!68 = !{!7, !11, i64 424}
!69 = !{!13, !13, i64 0}
!70 = distinct !{!70, !51}
!71 = !{!72, !11, i64 128}
!72 = !{!"", !9, i64 0, !11, i64 128}
!73 = !{!11, !11, i64 0}
!74 = distinct !{!74, !51}
!75 = !{!7, !11, i64 52}
!76 = !{!7, !11, i64 48}
!77 = !{!49, !11, i64 8}
!78 = !{!49, !11, i64 12}
!79 = distinct !{!79, !51}
!80 = !{!81, !11, i64 276}
!81 = !{!"", !9, i64 0, !9, i64 17, !11, i64 276}
!82 = distinct !{!82, !51}
!83 = distinct !{!83, !51}
