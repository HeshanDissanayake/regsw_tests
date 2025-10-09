; ModuleID = 'src/mb_access.c'
source_filename = "src/mb_access.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@img = external dso_local local_unnamed_addr global ptr, align 8
@xPicPos = external dso_local local_unnamed_addr global ptr, align 8
@yPicPos = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"img->yuv_format != 0\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"src/mb_access.c\00", align 1
@__PRETTY_FUNCTION__.getNonAffNeighbour = private unnamed_addr constant [65 x i8] c"void getNonAffNeighbour(unsigned int, int, int, int, PixelPos *)\00", align 1
@__PRETTY_FUNCTION__.getAffNeighbour = private unnamed_addr constant [62 x i8] c"void getAffNeighbour(unsigned int, int, int, int, PixelPos *)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"getNeighbour: invalid macroblock number\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext range(i32 0, 2) i32 @mb_is_available(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 90304
  %7 = load i32, ptr %6, align 8, !tbaa !10
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %5, i64 90460
  %11 = load i32, ptr %10, align 4, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %5, i64 31576
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = zext nneg i32 %0 to i64
  %17 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %16, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !18
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %19, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !18
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13, %9
  br label %24

24:                                               ; preds = %13, %2, %4, %23
  %25 = phi i32 [ 1, %23 ], [ 0, %4 ], [ 0, %2 ], [ 0, %13 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @CheckAvailabilityOfNeighbors() local_unnamed_addr #1 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 12
  %3 = load i32, ptr %2, align 4, !tbaa !21
  %4 = getelementptr inbounds i8, ptr %1, i64 31576
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.macroblock, ptr %5, i64 %6
  %8 = getelementptr inbounds i8, ptr %7, i64 56
  %9 = getelementptr inbounds i8, ptr %7, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr @img, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %10, i64 90220
  %12 = load i32, ptr %11, align 4, !tbaa !22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %124, label %14

14:                                               ; preds = %0
  %15 = sdiv i32 %3, 2
  %16 = shl nsw i32 %15, 1
  %17 = add i32 %16, -2
  %18 = getelementptr inbounds i8, ptr %7, i64 432
  store i32 %17, ptr %18, align 8, !tbaa !23
  %19 = getelementptr inbounds i8, ptr %10, i64 90288
  %20 = load i32, ptr %19, align 8, !tbaa !24
  %21 = sub i32 %15, %20
  %22 = shl i32 %21, 1
  %23 = getelementptr inbounds i8, ptr %7, i64 436
  store i32 %22, ptr %23, align 4, !tbaa !25
  %24 = add i32 %22, 2
  %25 = getelementptr inbounds i8, ptr %7, i64 440
  store i32 %24, ptr %25, align 8, !tbaa !26
  %26 = xor i32 %20, -1
  %27 = add i32 %15, %26
  %28 = shl i32 %27, 1
  %29 = getelementptr inbounds i8, ptr %7, i64 444
  store i32 %28, ptr %29, align 4, !tbaa !27
  %30 = icmp slt i32 %17, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %14
  %32 = getelementptr inbounds i8, ptr %10, i64 90304
  %33 = load i32, ptr %32, align 8, !tbaa !10
  %34 = icmp sgt i32 %33, %17
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %10, i64 90460
  %37 = load i32, ptr %36, align 4, !tbaa !16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %10, i64 31576
  %41 = load ptr, ptr %40, align 8, !tbaa !17
  %42 = zext nneg i32 %17 to i64
  %43 = getelementptr inbounds %struct.macroblock, ptr %41, i64 %42, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !18
  %45 = getelementptr inbounds %struct.macroblock, ptr %41, i64 %6, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !18
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39, %35
  %49 = urem i32 %15, %20
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %39, %14, %31, %48
  %53 = phi i32 [ %51, %48 ], [ 0, %31 ], [ 0, %14 ], [ 0, %39 ]
  %54 = getelementptr inbounds i8, ptr %7, i64 448
  store i32 %53, ptr %54, align 8, !tbaa !28
  %55 = icmp slt i32 %22, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %10, i64 90304
  %58 = load i32, ptr %57, align 8, !tbaa !10
  %59 = icmp sgt i32 %58, %22
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %10, i64 90460
  %62 = load i32, ptr %61, align 4, !tbaa !16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %10, i64 31576
  %66 = load ptr, ptr %65, align 8, !tbaa !17
  %67 = zext nneg i32 %22 to i64
  %68 = getelementptr inbounds %struct.macroblock, ptr %66, i64 %67, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !18
  %70 = getelementptr inbounds %struct.macroblock, ptr %66, i64 %6, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !18
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64, %60
  br label %74

74:                                               ; preds = %52, %56, %64, %73
  %75 = phi i32 [ 1, %73 ], [ 0, %56 ], [ 0, %52 ], [ 0, %64 ]
  %76 = getelementptr inbounds i8, ptr %7, i64 452
  store i32 %75, ptr %76, align 4, !tbaa !29
  %77 = icmp slt i32 %24, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds i8, ptr %10, i64 90304
  %80 = load i32, ptr %79, align 8, !tbaa !10
  %81 = icmp sgt i32 %80, %24
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %10, i64 90460
  %84 = load i32, ptr %83, align 4, !tbaa !16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = getelementptr inbounds i8, ptr %10, i64 31576
  %88 = load ptr, ptr %87, align 8, !tbaa !17
  %89 = zext nneg i32 %24 to i64
  %90 = getelementptr inbounds %struct.macroblock, ptr %88, i64 %89, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !18
  %92 = getelementptr inbounds %struct.macroblock, ptr %88, i64 %6, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !18
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %86, %82
  %96 = add nsw i32 %15, 1
  %97 = urem i32 %96, %20
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %86, %74, %78, %95
  %101 = phi i32 [ %99, %95 ], [ 0, %78 ], [ 0, %74 ], [ 0, %86 ]
  %102 = getelementptr inbounds i8, ptr %7, i64 456
  store i32 %101, ptr %102, align 8, !tbaa !30
  %103 = icmp slt i32 %28, 0
  br i1 %103, label %236, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, ptr %10, i64 90304
  %106 = load i32, ptr %105, align 8, !tbaa !10
  %107 = icmp sgt i32 %106, %28
  br i1 %107, label %108, label %236

108:                                              ; preds = %104
  %109 = getelementptr inbounds i8, ptr %10, i64 90460
  %110 = load i32, ptr %109, align 4, !tbaa !16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %10, i64 31576
  %114 = load ptr, ptr %113, align 8, !tbaa !17
  %115 = zext nneg i32 %28 to i64
  %116 = getelementptr inbounds %struct.macroblock, ptr %114, i64 %115, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !18
  %118 = getelementptr inbounds %struct.macroblock, ptr %114, i64 %6, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !18
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %236

121:                                              ; preds = %112, %108
  %122 = urem i32 %15, %20
  %123 = icmp ne i32 %122, 0
  br label %236

124:                                              ; preds = %0
  %125 = add nsw i32 %3, -1
  %126 = getelementptr inbounds i8, ptr %7, i64 432
  store i32 %125, ptr %126, align 8, !tbaa !23
  %127 = getelementptr inbounds i8, ptr %10, i64 90288
  %128 = load i32, ptr %127, align 8, !tbaa !24
  %129 = sub i32 %3, %128
  %130 = getelementptr inbounds i8, ptr %7, i64 436
  store i32 %129, ptr %130, align 4, !tbaa !25
  %131 = add i32 %129, 1
  %132 = getelementptr inbounds i8, ptr %7, i64 440
  store i32 %131, ptr %132, align 8, !tbaa !26
  %133 = xor i32 %128, -1
  %134 = add i32 %3, %133
  %135 = getelementptr inbounds i8, ptr %7, i64 444
  store i32 %134, ptr %135, align 4, !tbaa !27
  %136 = icmp slt i32 %3, 1
  br i1 %136, label %158, label %137

137:                                              ; preds = %124
  %138 = getelementptr inbounds i8, ptr %10, i64 90304
  %139 = load i32, ptr %138, align 8, !tbaa !10
  %140 = icmp slt i32 %139, %3
  br i1 %140, label %158, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds i8, ptr %10, i64 90460
  %143 = load i32, ptr %142, align 4, !tbaa !16
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = getelementptr inbounds i8, ptr %10, i64 31576
  %147 = load ptr, ptr %146, align 8, !tbaa !17
  %148 = zext nneg i32 %125 to i64
  %149 = getelementptr inbounds %struct.macroblock, ptr %147, i64 %148, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !18
  %151 = getelementptr inbounds %struct.macroblock, ptr %147, i64 %6, i32 1
  %152 = load i32, ptr %151, align 4, !tbaa !18
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %145, %141
  %155 = urem i32 %3, %128
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i32
  br label %158

158:                                              ; preds = %145, %124, %137, %154
  %159 = phi i32 [ %157, %154 ], [ 0, %137 ], [ 0, %124 ], [ 0, %145 ]
  %160 = getelementptr inbounds i8, ptr %7, i64 448
  store i32 %159, ptr %160, align 8, !tbaa !28
  %161 = icmp slt i32 %129, 0
  br i1 %161, label %183, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds i8, ptr %10, i64 90304
  %164 = load i32, ptr %163, align 8, !tbaa !10
  %165 = icmp sgt i32 %164, %129
  br i1 %165, label %166, label %183

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %10, i64 90460
  %168 = load i32, ptr %167, align 4, !tbaa !16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = getelementptr inbounds i8, ptr %10, i64 31576
  %172 = load ptr, ptr %171, align 8, !tbaa !17
  %173 = zext nneg i32 %129 to i64
  %174 = getelementptr inbounds %struct.macroblock, ptr %172, i64 %173, i32 1
  %175 = load i32, ptr %174, align 4, !tbaa !18
  %176 = getelementptr inbounds %struct.macroblock, ptr %172, i64 %6, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !18
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %170, %166
  br label %180

180:                                              ; preds = %170, %179
  %181 = phi i32 [ 0, %170 ], [ 1, %179 ]
  %182 = getelementptr inbounds i8, ptr %7, i64 452
  store i32 %181, ptr %182, align 4, !tbaa !29
  br label %189

183:                                              ; preds = %158, %162
  %184 = getelementptr inbounds i8, ptr %7, i64 452
  store i32 0, ptr %184, align 4, !tbaa !29
  %185 = icmp slt i32 %131, 0
  br i1 %185, label %211, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds i8, ptr %10, i64 90304
  %188 = load i32, ptr %187, align 8, !tbaa !10
  br label %189

189:                                              ; preds = %186, %180
  %190 = phi i32 [ 0, %186 ], [ %181, %180 ]
  %191 = phi i32 [ %188, %186 ], [ %164, %180 ]
  %192 = icmp sgt i32 %191, %131
  br i1 %192, label %193, label %211

193:                                              ; preds = %189
  %194 = getelementptr inbounds i8, ptr %10, i64 90460
  %195 = load i32, ptr %194, align 4, !tbaa !16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %193
  %198 = getelementptr inbounds i8, ptr %10, i64 31576
  %199 = load ptr, ptr %198, align 8, !tbaa !17
  %200 = zext nneg i32 %131 to i64
  %201 = getelementptr inbounds %struct.macroblock, ptr %199, i64 %200, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !18
  %203 = getelementptr inbounds %struct.macroblock, ptr %199, i64 %6, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !18
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %197, %193
  %207 = add nsw i32 %3, 1
  %208 = urem i32 %207, %128
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i32
  br label %211

211:                                              ; preds = %197, %183, %189, %206
  %212 = phi i32 [ %190, %206 ], [ %190, %189 ], [ 0, %183 ], [ %190, %197 ]
  %213 = phi i32 [ %210, %206 ], [ 0, %189 ], [ 0, %183 ], [ 0, %197 ]
  %214 = getelementptr inbounds i8, ptr %7, i64 456
  store i32 %213, ptr %214, align 8, !tbaa !30
  %215 = icmp slt i32 %134, 0
  br i1 %215, label %236, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %10, i64 90304
  %218 = load i32, ptr %217, align 8, !tbaa !10
  %219 = icmp sgt i32 %218, %134
  br i1 %219, label %220, label %236

220:                                              ; preds = %216
  %221 = getelementptr inbounds i8, ptr %10, i64 90460
  %222 = load i32, ptr %221, align 4, !tbaa !16
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %220
  %225 = getelementptr inbounds i8, ptr %10, i64 31576
  %226 = load ptr, ptr %225, align 8, !tbaa !17
  %227 = zext nneg i32 %134 to i64
  %228 = getelementptr inbounds %struct.macroblock, ptr %226, i64 %227, i32 1
  %229 = load i32, ptr %228, align 4, !tbaa !18
  %230 = getelementptr inbounds %struct.macroblock, ptr %226, i64 %6, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !18
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %224, %220
  %234 = urem i32 %3, %128
  %235 = icmp ne i32 %234, 0
  br label %236

236:                                              ; preds = %233, %216, %211, %224, %121, %104, %100, %112
  %237 = phi i1 [ %123, %121 ], [ false, %104 ], [ false, %100 ], [ false, %112 ], [ %235, %233 ], [ false, %216 ], [ false, %211 ], [ false, %224 ]
  %238 = phi i32 [ %22, %121 ], [ %22, %104 ], [ %22, %100 ], [ %22, %112 ], [ %129, %233 ], [ %129, %216 ], [ %129, %211 ], [ %129, %224 ]
  %239 = phi i32 [ %75, %121 ], [ %75, %104 ], [ %75, %100 ], [ %75, %112 ], [ %212, %233 ], [ %212, %216 ], [ %212, %211 ], [ %212, %224 ]
  %240 = phi i32 [ %17, %121 ], [ %17, %104 ], [ %17, %100 ], [ %17, %112 ], [ %125, %233 ], [ %125, %216 ], [ %125, %211 ], [ %125, %224 ]
  %241 = phi i32 [ %53, %121 ], [ %53, %104 ], [ %53, %100 ], [ %53, %112 ], [ %159, %233 ], [ %159, %216 ], [ %159, %211 ], [ %159, %224 ]
  %242 = zext i1 %237 to i32
  %243 = getelementptr inbounds i8, ptr %7, i64 460
  store i32 %242, ptr %243, align 4, !tbaa !31
  %244 = icmp eq i32 %241, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %236
  %246 = getelementptr inbounds i8, ptr %10, i64 31576
  %247 = load ptr, ptr %246, align 8, !tbaa !17
  %248 = sext i32 %240 to i64
  %249 = getelementptr inbounds %struct.macroblock, ptr %247, i64 %248
  store ptr %249, ptr %9, align 8, !tbaa !32
  br label %250

250:                                              ; preds = %245, %236
  %251 = icmp eq i32 %239, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %250
  %253 = load ptr, ptr @img, align 8, !tbaa !6
  %254 = getelementptr inbounds i8, ptr %253, i64 31576
  %255 = load ptr, ptr %254, align 8, !tbaa !17
  %256 = sext i32 %238 to i64
  %257 = getelementptr inbounds %struct.macroblock, ptr %255, i64 %256
  store ptr %257, ptr %8, align 8, !tbaa !33
  br label %258

258:                                              ; preds = %252, %250
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @get_mb_block_pos(i32 noundef signext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 90220
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = sdiv i32 %0, 2
  %10 = getelementptr inbounds i8, ptr %4, i64 90288
  %11 = load i32, ptr %10, align 8, !tbaa !24
  %12 = urem i32 %9, %11
  store i32 %12, ptr %1, align 4, !tbaa !34
  %13 = load i32, ptr %10, align 8, !tbaa !24
  %14 = udiv i32 %9, %13
  %15 = shl i32 %14, 1
  %16 = mul i32 %9, 2
  %17 = sub i32 %0, %16
  %18 = add i32 %15, %17
  br label %27

19:                                               ; preds = %3
  %20 = load ptr, ptr @xPicPos, align 8, !tbaa !6
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !34
  store i32 %23, ptr %1, align 4, !tbaa !34
  %24 = load ptr, ptr @yPicPos, align 8, !tbaa !6
  %25 = getelementptr inbounds i32, ptr %24, i64 %21
  %26 = load i32, ptr %25, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %19, %8
  %28 = phi i32 [ %26, %19 ], [ %18, %8 ]
  store i32 %28, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @get_mb_pos(i32 noundef signext %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 90220
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = sdiv i32 %0, 2
  %10 = getelementptr inbounds i8, ptr %4, i64 90288
  %11 = load i32, ptr %10, align 8, !tbaa !24
  %12 = urem i32 %9, %11
  store i32 %12, ptr %1, align 4, !tbaa !34
  %13 = load i32, ptr %10, align 8, !tbaa !24
  %14 = udiv i32 %9, %13
  %15 = shl i32 %14, 1
  %16 = mul i32 %9, 2
  %17 = sub i32 %0, %16
  %18 = add i32 %15, %17
  br label %27

19:                                               ; preds = %3
  %20 = load ptr, ptr @xPicPos, align 8, !tbaa !6
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !34
  store i32 %23, ptr %1, align 4, !tbaa !34
  %24 = load ptr, ptr @yPicPos, align 8, !tbaa !6
  %25 = getelementptr inbounds i32, ptr %24, i64 %21
  %26 = load i32, ptr %25, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %8, %19
  %28 = phi i32 [ %26, %19 ], [ %18, %8 ]
  store i32 %28, ptr %2, align 4, !tbaa !34
  %29 = load i32, ptr %1, align 4, !tbaa !34
  %30 = shl nsw i32 %29, 4
  store i32 %30, ptr %1, align 4, !tbaa !34
  %31 = load i32, ptr %2, align 4, !tbaa !34
  %32 = shl nsw i32 %31, 4
  store i32 %32, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind
define dso_local void @getNonAffNeighbour(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr nocapture noundef %4) local_unnamed_addr #3 {
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 31576
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %9
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, ptr %6, i64 90548
  %14 = load i32, ptr %13, align 4, !tbaa !35
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 154, ptr noundef nonnull @__PRETTY_FUNCTION__.getNonAffNeighbour) #7
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %6, i64 90556
  %19 = load i32, ptr %18, align 4, !tbaa !36
  %20 = getelementptr inbounds i8, ptr %6, i64 90560
  %21 = load i32, ptr %20, align 8, !tbaa !37
  br label %22

22:                                               ; preds = %5, %17
  %23 = phi i32 [ %19, %17 ], [ 16, %5 ]
  %24 = phi i32 [ %21, %17 ], [ 16, %5 ]
  %25 = icmp slt i32 %2, 0
  %26 = and i32 %2, %1
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds i8, ptr %10, i64 444
  br label %57

30:                                               ; preds = %22
  %31 = icmp slt i32 %1, 0
  %32 = icmp sgt i32 %2, -1
  %33 = and i1 %31, %32
  %34 = icmp sgt i32 %24, %2
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %10, i64 432
  br label %57

38:                                               ; preds = %30
  %39 = icmp sgt i32 %1, -1
  %40 = icmp sgt i32 %23, %1
  %41 = and i1 %25, %40
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %10, i64 436
  br label %57

45:                                               ; preds = %38
  %46 = and i1 %32, %40
  %47 = select i1 %39, i1 %46, i1 false
  %48 = select i1 %47, i1 %34, i1 false
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %0, ptr %50, align 4, !tbaa !38
  store i32 1, ptr %4, align 4, !tbaa !40
  br label %72

51:                                               ; preds = %45
  %52 = icmp sle i32 %23, %1
  %53 = and i1 %25, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %10, i64 440
  br label %57

56:                                               ; preds = %51
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %65

57:                                               ; preds = %36, %54, %43, %28
  %58 = phi ptr [ %37, %36 ], [ %55, %54 ], [ %44, %43 ], [ %29, %28 ]
  %59 = phi i64 [ 448, %36 ], [ 456, %54 ], [ 452, %43 ], [ 460, %28 ]
  %60 = load i32, ptr %58, align 4, !tbaa !34
  %61 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %60, ptr %61, align 4, !tbaa !38
  %62 = getelementptr inbounds i8, ptr %10, i64 %59
  %63 = load i32, ptr %62, align 4, !tbaa !34
  store i32 %63, ptr %4, align 4, !tbaa !40
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56, %57
  %66 = getelementptr inbounds i8, ptr %6, i64 90460
  %67 = load i32, ptr %66, align 4, !tbaa !16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %127, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds i8, ptr %4, i64 4
  %71 = load i32, ptr %70, align 4, !tbaa !38
  br label %72

72:                                               ; preds = %69, %49, %57
  %73 = phi i32 [ %71, %69 ], [ %0, %49 ], [ %60, %57 ]
  %74 = add nsw i32 %23, %1
  %75 = add nsw i32 %23, -1
  %76 = and i32 %74, %75
  %77 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %76, ptr %77, align 4, !tbaa !41
  %78 = add nsw i32 %24, %2
  %79 = add nsw i32 %24, -1
  %80 = and i32 %78, %79
  %81 = getelementptr inbounds i8, ptr %4, i64 12
  store i32 %80, ptr %81, align 4, !tbaa !42
  %82 = getelementptr inbounds i8, ptr %4, i64 16
  %83 = getelementptr inbounds i8, ptr %4, i64 20
  %84 = getelementptr inbounds i8, ptr %6, i64 90220
  %85 = load i32, ptr %84, align 4, !tbaa !22
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %72
  %88 = freeze i32 %73
  %89 = sdiv i32 %88, 2
  %90 = getelementptr inbounds i8, ptr %6, i64 90288
  %91 = load i32, ptr %90, align 8, !tbaa !24
  %92 = urem i32 %89, %91
  store i32 %92, ptr %82, align 4, !tbaa !34
  %93 = load i32, ptr %90, align 8, !tbaa !24
  %94 = udiv i32 %89, %93
  %95 = shl i32 %94, 1
  %96 = mul i32 %89, 2
  %97 = sub i32 %88, %96
  %98 = add i32 %95, %97
  br label %107

99:                                               ; preds = %72
  %100 = load ptr, ptr @xPicPos, align 8, !tbaa !6
  %101 = sext i32 %73 to i64
  %102 = getelementptr inbounds i32, ptr %100, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !34
  store i32 %103, ptr %82, align 4, !tbaa !34
  %104 = load ptr, ptr @yPicPos, align 8, !tbaa !6
  %105 = getelementptr inbounds i32, ptr %104, i64 %101
  %106 = load i32, ptr %105, align 4, !tbaa !34
  br label %107

107:                                              ; preds = %87, %99
  %108 = phi i32 [ %103, %99 ], [ %92, %87 ]
  %109 = phi i32 [ %106, %99 ], [ %98, %87 ]
  %110 = shl nsw i32 %108, 4
  store i32 %110, ptr %82, align 4, !tbaa !34
  %111 = shl nsw i32 %109, 4
  store i32 %111, ptr %83, align 4, !tbaa !34
  br i1 %11, label %114, label %112

112:                                              ; preds = %107
  %113 = add nsw i32 %110, %76
  store i32 %113, ptr %82, align 4, !tbaa !43
  br label %124

114:                                              ; preds = %107
  %115 = getelementptr inbounds i8, ptr %6, i64 90556
  %116 = load i32, ptr %115, align 4, !tbaa !36
  %117 = mul nsw i32 %116, %110
  %118 = ashr exact i32 %117, 4
  %119 = add nsw i32 %118, %76
  store i32 %119, ptr %82, align 4, !tbaa !43
  %120 = getelementptr inbounds i8, ptr %6, i64 90560
  %121 = load i32, ptr %120, align 8, !tbaa !37
  %122 = mul nsw i32 %121, %111
  %123 = ashr exact i32 %122, 4
  br label %124

124:                                              ; preds = %114, %112
  %125 = phi i32 [ %111, %112 ], [ %123, %114 ]
  %126 = add nsw i32 %125, %80
  store i32 %126, ptr %83, align 4, !tbaa !44
  br label %127

127:                                              ; preds = %124, %65
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @getAffNeighbour(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr nocapture noundef %4) local_unnamed_addr #3 {
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 31576
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %9
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, ptr %6, i64 90548
  %14 = load i32, ptr %13, align 4, !tbaa !35
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 243, ptr noundef nonnull @__PRETTY_FUNCTION__.getAffNeighbour) #7
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %6, i64 90556
  %19 = load i32, ptr %18, align 4, !tbaa !36
  %20 = getelementptr inbounds i8, ptr %6, i64 90560
  %21 = load i32, ptr %20, align 8, !tbaa !37
  br label %22

22:                                               ; preds = %5, %17
  %23 = phi i32 [ %19, %17 ], [ 16, %5 ]
  %24 = phi i32 [ %21, %17 ], [ 16, %5 ]
  store i32 0, ptr %4, align 4, !tbaa !40
  %25 = icmp sgt i32 %24, %2
  br i1 %25, label %26, label %325

26:                                               ; preds = %22
  %27 = icmp sle i32 %23, %1
  %28 = icmp sgt i32 %2, -1
  %29 = and i1 %28, %27
  br i1 %29, label %325, label %30

30:                                               ; preds = %26
  %31 = icmp slt i32 %1, 0
  br i1 %31, label %32, label %160

32:                                               ; preds = %30
  %33 = icmp slt i32 %2, 0
  %34 = getelementptr inbounds i8, ptr %10, i64 424
  %35 = load i32, ptr %34, align 8, !tbaa !45
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %0, 1
  %38 = icmp eq i32 %37, 0
  br i1 %33, label %39, label %85

39:                                               ; preds = %32
  br i1 %36, label %40, label %64

40:                                               ; preds = %39
  br i1 %38, label %41, label %48

41:                                               ; preds = %40
  %42 = getelementptr inbounds i8, ptr %10, i64 444
  %43 = load i32, ptr %42, align 4, !tbaa !27
  %44 = add nsw i32 %43, 1
  %45 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %44, ptr %45, align 4, !tbaa !38
  %46 = getelementptr inbounds i8, ptr %10, i64 460
  %47 = load i32, ptr %46, align 4, !tbaa !31
  br label %262

48:                                               ; preds = %40
  %49 = getelementptr inbounds i8, ptr %10, i64 432
  %50 = load i32, ptr %49, align 8, !tbaa !23
  %51 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %50, ptr %51, align 4, !tbaa !38
  %52 = getelementptr inbounds i8, ptr %10, i64 448
  %53 = load i32, ptr %52, align 8, !tbaa !28
  store i32 %53, ptr %4, align 4, !tbaa !40
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %265, label %55

55:                                               ; preds = %48
  %56 = sext i32 %50 to i64
  %57 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %56, i32 19
  %58 = load i32, ptr %57, align 8, !tbaa !45
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %270, label %60

60:                                               ; preds = %55
  %61 = add nsw i32 %50, 1
  store i32 %61, ptr %51, align 4, !tbaa !38
  %62 = add nsw i32 %24, %2
  %63 = ashr i32 %62, 1
  br label %270

64:                                               ; preds = %39
  %65 = getelementptr inbounds i8, ptr %10, i64 444
  %66 = load i32, ptr %65, align 4, !tbaa !27
  br i1 %38, label %67, label %80

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %66, ptr %68, align 4, !tbaa !38
  %69 = getelementptr inbounds i8, ptr %10, i64 460
  %70 = load i32, ptr %69, align 4, !tbaa !31
  store i32 %70, ptr %4, align 4, !tbaa !40
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %265, label %72

72:                                               ; preds = %67
  %73 = sext i32 %66 to i64
  %74 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %73, i32 19
  %75 = load i32, ptr %74, align 8, !tbaa !45
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %270

77:                                               ; preds = %72
  %78 = add nsw i32 %66, 1
  store i32 %78, ptr %68, align 4, !tbaa !38
  %79 = shl nsw i32 %2, 1
  br label %270

80:                                               ; preds = %64
  %81 = add nsw i32 %66, 1
  %82 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %81, ptr %82, align 4, !tbaa !38
  %83 = getelementptr inbounds i8, ptr %10, i64 460
  %84 = load i32, ptr %83, align 4, !tbaa !31
  br label %262

85:                                               ; preds = %32
  %86 = getelementptr inbounds i8, ptr %10, i64 432
  %87 = load i32, ptr %86, align 8, !tbaa !23
  %88 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %87, ptr %88, align 4, !tbaa !38
  %89 = getelementptr inbounds i8, ptr %10, i64 448
  %90 = load i32, ptr %89, align 8, !tbaa !28
  store i32 %90, ptr %4, align 4, !tbaa !40
  %91 = icmp eq i32 %90, 0
  br i1 %36, label %92, label %125

92:                                               ; preds = %85
  br i1 %38, label %93, label %107

93:                                               ; preds = %92
  br i1 %91, label %265, label %94

94:                                               ; preds = %93
  %95 = sext i32 %87 to i64
  %96 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %95, i32 19
  %97 = load i32, ptr %96, align 8, !tbaa !45
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %270, label %99

99:                                               ; preds = %94
  %100 = and i32 %2, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = lshr exact i32 %2, 1
  br label %270

104:                                              ; preds = %99
  %105 = add nsw i32 %87, 1
  store i32 %105, ptr %88, align 4, !tbaa !38
  %106 = lshr i32 %2, 1
  br label %270

107:                                              ; preds = %92
  br i1 %91, label %265, label %108

108:                                              ; preds = %107
  %109 = sext i32 %87 to i64
  %110 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %109, i32 19
  %111 = load i32, ptr %110, align 8, !tbaa !45
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = add nsw i32 %87, 1
  store i32 %114, ptr %88, align 4, !tbaa !38
  br label %270

115:                                              ; preds = %108
  %116 = and i32 %2, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = add nuw nsw i32 %24, %2
  %120 = lshr i32 %119, 1
  br label %270

121:                                              ; preds = %115
  %122 = add nsw i32 %87, 1
  store i32 %122, ptr %88, align 4, !tbaa !38
  %123 = add nuw nsw i32 %24, %2
  %124 = lshr i32 %123, 1
  br label %270

125:                                              ; preds = %85
  br i1 %38, label %126, label %141

126:                                              ; preds = %125
  br i1 %91, label %265, label %127

127:                                              ; preds = %126
  %128 = sext i32 %87 to i64
  %129 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %128, i32 19
  %130 = load i32, ptr %129, align 8, !tbaa !45
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %270

132:                                              ; preds = %127
  %133 = lshr i32 %24, 1
  %134 = icmp ugt i32 %133, %2
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = shl nuw nsw i32 %2, 1
  br label %270

137:                                              ; preds = %132
  %138 = add nsw i32 %87, 1
  store i32 %138, ptr %88, align 4, !tbaa !38
  %139 = shl nuw i32 %2, 1
  %140 = sub nsw i32 %139, %24
  br label %270

141:                                              ; preds = %125
  br i1 %91, label %265, label %142

142:                                              ; preds = %141
  %143 = sext i32 %87 to i64
  %144 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %143, i32 19
  %145 = load i32, ptr %144, align 8, !tbaa !45
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = lshr i32 %24, 1
  %149 = icmp ugt i32 %148, %2
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = shl nuw nsw i32 %2, 1
  %152 = or disjoint i32 %151, 1
  br label %270

153:                                              ; preds = %147
  %154 = add nsw i32 %87, 1
  store i32 %154, ptr %88, align 4, !tbaa !38
  %155 = shl nuw i32 %2, 1
  %156 = or disjoint i32 %155, 1
  %157 = sub i32 %156, %24
  br label %270

158:                                              ; preds = %142
  %159 = add nsw i32 %87, 1
  store i32 %159, ptr %88, align 4, !tbaa !38
  br label %270

160:                                              ; preds = %30
  %161 = icmp sgt i32 %23, %1
  %162 = icmp slt i32 %2, 0
  br i1 %161, label %163, label %226

163:                                              ; preds = %160
  br i1 %162, label %164, label %213

164:                                              ; preds = %163
  %165 = getelementptr inbounds i8, ptr %10, i64 424
  %166 = load i32, ptr %165, align 8, !tbaa !45
  %167 = icmp eq i32 %166, 0
  %168 = and i32 %0, 1
  %169 = icmp eq i32 %168, 0
  br i1 %167, label %170, label %192

170:                                              ; preds = %164
  br i1 %169, label %171, label %189

171:                                              ; preds = %170
  %172 = getelementptr inbounds i8, ptr %10, i64 436
  %173 = load i32, ptr %172, align 4, !tbaa !25
  %174 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %173, ptr %174, align 4, !tbaa !38
  %175 = getelementptr inbounds i8, ptr %10, i64 452
  %176 = load i32, ptr %175, align 4, !tbaa !29
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %262, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds i8, ptr %6, i64 90460
  %180 = load i32, ptr %179, align 4, !tbaa !16
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = sext i32 %173 to i64
  %184 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %183, i32 19
  %185 = load i32, ptr %184, align 8, !tbaa !45
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %262

187:                                              ; preds = %182, %178
  %188 = add nsw i32 %173, 1
  store i32 %188, ptr %174, align 4, !tbaa !38
  br label %262

189:                                              ; preds = %170
  %190 = add nsw i32 %0, -1
  %191 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %190, ptr %191, align 4, !tbaa !38
  store i32 1, ptr %4, align 4, !tbaa !40
  br label %270

192:                                              ; preds = %164
  %193 = getelementptr inbounds i8, ptr %10, i64 436
  %194 = load i32, ptr %193, align 4, !tbaa !25
  br i1 %169, label %195, label %208

195:                                              ; preds = %192
  %196 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %194, ptr %196, align 4, !tbaa !38
  %197 = getelementptr inbounds i8, ptr %10, i64 452
  %198 = load i32, ptr %197, align 4, !tbaa !29
  store i32 %198, ptr %4, align 4, !tbaa !40
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %265, label %200

200:                                              ; preds = %195
  %201 = sext i32 %194 to i64
  %202 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %201, i32 19
  %203 = load i32, ptr %202, align 8, !tbaa !45
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %270

205:                                              ; preds = %200
  %206 = add nsw i32 %194, 1
  store i32 %206, ptr %196, align 4, !tbaa !38
  %207 = shl nsw i32 %2, 1
  br label %270

208:                                              ; preds = %192
  %209 = add nsw i32 %194, 1
  %210 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %209, ptr %210, align 4, !tbaa !38
  %211 = getelementptr inbounds i8, ptr %10, i64 452
  %212 = load i32, ptr %211, align 4, !tbaa !29
  br label %262

213:                                              ; preds = %163
  %214 = icmp eq i32 %2, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %213
  %216 = getelementptr inbounds i8, ptr %6, i64 90460
  %217 = load i32, ptr %216, align 4, !tbaa !16
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = getelementptr inbounds i8, ptr %10, i64 436
  %221 = load i32, ptr %220, align 4, !tbaa !25
  %222 = add nsw i32 %221, 1
  %223 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %222, ptr %223, align 4, !tbaa !38
  store i32 1, ptr %4, align 4, !tbaa !40
  br label %270

224:                                              ; preds = %213, %215
  %225 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %0, ptr %225, align 4, !tbaa !38
  store i32 1, ptr %4, align 4, !tbaa !40
  br label %270

226:                                              ; preds = %160
  br i1 %162, label %227, label %265

227:                                              ; preds = %226
  %228 = getelementptr inbounds i8, ptr %10, i64 424
  %229 = load i32, ptr %228, align 8, !tbaa !45
  %230 = icmp eq i32 %229, 0
  %231 = and i32 %0, 1
  %232 = icmp eq i32 %231, 0
  br i1 %230, label %233, label %241

233:                                              ; preds = %227
  br i1 %232, label %234, label %265

234:                                              ; preds = %233
  %235 = getelementptr inbounds i8, ptr %10, i64 440
  %236 = load i32, ptr %235, align 8, !tbaa !26
  %237 = add nsw i32 %236, 1
  %238 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %237, ptr %238, align 4, !tbaa !38
  %239 = getelementptr inbounds i8, ptr %10, i64 456
  %240 = load i32, ptr %239, align 8, !tbaa !30
  br label %262

241:                                              ; preds = %227
  %242 = getelementptr inbounds i8, ptr %10, i64 440
  %243 = load i32, ptr %242, align 8, !tbaa !26
  br i1 %232, label %244, label %257

244:                                              ; preds = %241
  %245 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %243, ptr %245, align 4, !tbaa !38
  %246 = getelementptr inbounds i8, ptr %10, i64 456
  %247 = load i32, ptr %246, align 8, !tbaa !30
  store i32 %247, ptr %4, align 4, !tbaa !40
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %265, label %249

249:                                              ; preds = %244
  %250 = sext i32 %243 to i64
  %251 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %250, i32 19
  %252 = load i32, ptr %251, align 8, !tbaa !45
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %270

254:                                              ; preds = %249
  %255 = add nsw i32 %243, 1
  store i32 %255, ptr %245, align 4, !tbaa !38
  %256 = shl nsw i32 %2, 1
  br label %270

257:                                              ; preds = %241
  %258 = add nsw i32 %243, 1
  %259 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %258, ptr %259, align 4, !tbaa !38
  %260 = getelementptr inbounds i8, ptr %10, i64 456
  %261 = load i32, ptr %260, align 8, !tbaa !30
  br label %262

262:                                              ; preds = %171, %187, %182, %208, %234, %257, %80, %41
  %263 = phi i32 [ %212, %208 ], [ %240, %234 ], [ %261, %257 ], [ %84, %80 ], [ %47, %41 ], [ %176, %182 ], [ %176, %187 ], [ %176, %171 ]
  store i32 %263, ptr %4, align 4, !tbaa !40
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %233, %226, %126, %141, %93, %107, %48, %67, %244, %195, %262
  %266 = phi i32 [ %2, %262 ], [ -1, %195 ], [ -1, %244 ], [ -1, %67 ], [ -1, %48 ], [ -1, %107 ], [ -1, %93 ], [ -1, %141 ], [ -1, %126 ], [ -1, %226 ], [ -1, %233 ]
  %267 = getelementptr inbounds i8, ptr %6, i64 90460
  %268 = load i32, ptr %267, align 4, !tbaa !16
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %325, label %270

270:                                              ; preds = %77, %60, %135, %137, %158, %150, %153, %102, %104, %118, %121, %113, %205, %254, %55, %72, %94, %127, %200, %249, %189, %224, %219, %265, %262
  %271 = phi i32 [ %266, %265 ], [ %2, %262 ], [ %2, %224 ], [ -1, %219 ], [ %2, %189 ], [ %79, %77 ], [ %63, %60 ], [ %136, %135 ], [ %140, %137 ], [ %2, %158 ], [ %152, %150 ], [ %157, %153 ], [ %103, %102 ], [ %106, %104 ], [ %120, %118 ], [ %124, %121 ], [ %2, %113 ], [ %207, %205 ], [ %256, %254 ], [ %2, %55 ], [ %2, %72 ], [ %2, %94 ], [ %2, %127 ], [ %2, %200 ], [ %2, %249 ]
  %272 = add nsw i32 %23, %1
  %273 = srem i32 %272, %23
  %274 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %273, ptr %274, align 4, !tbaa !41
  %275 = add nsw i32 %271, %24
  %276 = srem i32 %275, %24
  %277 = getelementptr inbounds i8, ptr %4, i64 12
  store i32 %276, ptr %277, align 4, !tbaa !42
  %278 = getelementptr inbounds i8, ptr %4, i64 4
  %279 = load i32, ptr %278, align 4, !tbaa !38
  %280 = getelementptr inbounds i8, ptr %4, i64 16
  %281 = getelementptr inbounds i8, ptr %4, i64 20
  %282 = getelementptr inbounds i8, ptr %6, i64 90220
  %283 = load i32, ptr %282, align 4, !tbaa !22
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %297, label %285

285:                                              ; preds = %270
  %286 = freeze i32 %279
  %287 = sdiv i32 %286, 2
  %288 = getelementptr inbounds i8, ptr %6, i64 90288
  %289 = load i32, ptr %288, align 8, !tbaa !24
  %290 = urem i32 %287, %289
  store i32 %290, ptr %280, align 4, !tbaa !34
  %291 = load i32, ptr %288, align 8, !tbaa !24
  %292 = udiv i32 %287, %291
  %293 = shl i32 %292, 1
  %294 = mul i32 %287, 2
  %295 = sub i32 %286, %294
  %296 = add i32 %293, %295
  br label %305

297:                                              ; preds = %270
  %298 = load ptr, ptr @xPicPos, align 8, !tbaa !6
  %299 = sext i32 %279 to i64
  %300 = getelementptr inbounds i32, ptr %298, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !34
  store i32 %301, ptr %280, align 4, !tbaa !34
  %302 = load ptr, ptr @yPicPos, align 8, !tbaa !6
  %303 = getelementptr inbounds i32, ptr %302, i64 %299
  %304 = load i32, ptr %303, align 4, !tbaa !34
  br label %305

305:                                              ; preds = %285, %297
  %306 = phi i32 [ %301, %297 ], [ %290, %285 ]
  %307 = phi i32 [ %304, %297 ], [ %296, %285 ]
  %308 = shl nsw i32 %306, 4
  store i32 %308, ptr %280, align 4, !tbaa !34
  %309 = shl nsw i32 %307, 4
  store i32 %309, ptr %281, align 4, !tbaa !34
  br i1 %11, label %312, label %310

310:                                              ; preds = %305
  %311 = add nsw i32 %308, %273
  store i32 %311, ptr %280, align 4, !tbaa !43
  br label %322

312:                                              ; preds = %305
  %313 = getelementptr inbounds i8, ptr %6, i64 90556
  %314 = load i32, ptr %313, align 4, !tbaa !36
  %315 = mul nsw i32 %314, %308
  %316 = ashr exact i32 %315, 4
  %317 = add nsw i32 %316, %273
  store i32 %317, ptr %280, align 4, !tbaa !43
  %318 = getelementptr inbounds i8, ptr %6, i64 90560
  %319 = load i32, ptr %318, align 8, !tbaa !37
  %320 = mul nsw i32 %319, %309
  %321 = ashr exact i32 %320, 4
  br label %322

322:                                              ; preds = %310, %312
  %323 = phi i32 [ %321, %312 ], [ %309, %310 ]
  %324 = add nsw i32 %323, %276
  store i32 %324, ptr %281, align 4, !tbaa !44
  br label %325

325:                                              ; preds = %322, %265, %26, %22
  ret void
}

; Function Attrs: nounwind
define dso_local void @getNeighbour(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr nocapture noundef %4) local_unnamed_addr #3 {
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef signext 100) #8
  br label %8

8:                                                ; preds = %7, %5
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 90220
  %11 = load i32, ptr %10, align 4, !tbaa !22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @getAffNeighbour(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4)
  br label %15

14:                                               ; preds = %8
  tail call void @getNonAffNeighbour(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4)
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind
define dso_local void @getLuma4x4Neighbour(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, ptr nocapture noundef %5) local_unnamed_addr #3 {
  %7 = shl nsw i32 %1, 2
  %8 = add nsw i32 %7, %3
  %9 = shl nsw i32 %2, 2
  %10 = add nsw i32 %9, %4
  %11 = icmp slt i32 %0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef signext 100) #8
  br label %13

13:                                               ; preds = %12, %6
  %14 = load ptr, ptr @img, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 90220
  %16 = load i32, ptr %15, align 4, !tbaa !22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @getAffNeighbour(i32 noundef signext %0, i32 noundef signext %8, i32 noundef signext %10, i32 noundef signext 1, ptr noundef %5)
  br label %20

19:                                               ; preds = %13
  tail call void @getNonAffNeighbour(i32 noundef signext %0, i32 noundef signext %8, i32 noundef signext %10, i32 noundef signext 1, ptr noundef %5)
  br label %20

20:                                               ; preds = %18, %19
  %21 = load i32, ptr %5, align 4, !tbaa !40
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %5, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = ashr i32 %25, 2
  store i32 %26, ptr %24, align 4, !tbaa !41
  %27 = getelementptr inbounds i8, ptr %5, i64 12
  %28 = load i32, ptr %27, align 4, !tbaa !42
  %29 = ashr i32 %28, 2
  store i32 %29, ptr %27, align 4, !tbaa !42
  %30 = getelementptr inbounds i8, ptr %5, i64 16
  %31 = load i32, ptr %30, align 4, !tbaa !43
  %32 = ashr i32 %31, 2
  store i32 %32, ptr %30, align 4, !tbaa !43
  %33 = getelementptr inbounds i8, ptr %5, i64 20
  %34 = load i32, ptr %33, align 4, !tbaa !44
  %35 = ashr i32 %34, 2
  store i32 %35, ptr %33, align 4, !tbaa !44
  br label %36

36:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: nounwind
define dso_local void @getChroma4x4Neighbour(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, ptr nocapture noundef %5) local_unnamed_addr #3 {
  %7 = shl nsw i32 %1, 2
  %8 = add nsw i32 %7, %3
  %9 = shl nsw i32 %2, 2
  %10 = add nsw i32 %9, %4
  %11 = icmp slt i32 %0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef signext 100) #8
  br label %13

13:                                               ; preds = %12, %6
  %14 = load ptr, ptr @img, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 90220
  %16 = load i32, ptr %15, align 4, !tbaa !22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @getAffNeighbour(i32 noundef signext %0, i32 noundef signext %8, i32 noundef signext %10, i32 noundef signext 0, ptr noundef %5)
  br label %20

19:                                               ; preds = %13
  tail call void @getNonAffNeighbour(i32 noundef signext %0, i32 noundef signext %8, i32 noundef signext %10, i32 noundef signext 0, ptr noundef %5)
  br label %20

20:                                               ; preds = %18, %19
  %21 = load i32, ptr %5, align 4, !tbaa !40
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %5, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = ashr i32 %25, 2
  store i32 %26, ptr %24, align 4, !tbaa !41
  %27 = getelementptr inbounds i8, ptr %5, i64 12
  %28 = load i32, ptr %27, align 4, !tbaa !42
  %29 = ashr i32 %28, 2
  store i32 %29, ptr %27, align 4, !tbaa !42
  %30 = getelementptr inbounds i8, ptr %5, i64 16
  %31 = load i32, ptr %30, align 4, !tbaa !43
  %32 = ashr i32 %31, 2
  store i32 %32, ptr %30, align 4, !tbaa !43
  %33 = getelementptr inbounds i8, ptr %5, i64 20
  %34 = load i32, ptr %33, align 4, !tbaa !44
  %35 = ashr i32 %34, 2
  store i32 %35, ptr %33, align 4, !tbaa !44
  br label %36

36:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
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
!10 = !{!11, !12, i64 90304}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !13, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !14, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !14, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !15, i64 90584, !12, i64 90588, !12, i64 90592}
!12 = !{!"int", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!11, !12, i64 90460}
!17 = !{!11, !7, i64 31576}
!18 = !{!19, !12, i64 4}
!19 = !{!"macroblock", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !12, i64 364, !20, i64 368, !8, i64 376, !8, i64 392, !20, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !15, i64 476, !14, i64 480, !12, i64 488, !12, i64 492, !12, i64 496, !12, i64 500, !12, i64 504, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520}
!20 = !{!"long long", !8, i64 0}
!21 = !{!11, !12, i64 12}
!22 = !{!11, !12, i64 90220}
!23 = !{!19, !12, i64 432}
!24 = !{!11, !12, i64 90288}
!25 = !{!19, !12, i64 436}
!26 = !{!19, !12, i64 440}
!27 = !{!19, !12, i64 444}
!28 = !{!19, !12, i64 448}
!29 = !{!19, !12, i64 452}
!30 = !{!19, !12, i64 456}
!31 = !{!19, !12, i64 460}
!32 = !{!19, !7, i64 64}
!33 = !{!19, !7, i64 56}
!34 = !{!12, !12, i64 0}
!35 = !{!11, !12, i64 90548}
!36 = !{!11, !12, i64 90556}
!37 = !{!11, !12, i64 90560}
!38 = !{!39, !12, i64 4}
!39 = !{!"pix_pos", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!40 = !{!39, !12, i64 0}
!41 = !{!39, !12, i64 8}
!42 = !{!39, !12, i64 12}
!43 = !{!39, !12, i64 16}
!44 = !{!39, !12, i64 20}
!45 = !{!19, !12, i64 424}
