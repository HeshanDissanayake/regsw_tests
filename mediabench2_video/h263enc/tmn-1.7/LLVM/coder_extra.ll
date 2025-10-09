; ModuleID = 'coder.c'
source_filename = "coder.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.motionvector = type { i32, i32, i32, i32, i32, i32 }

@__const.CodeOneOrTwo.bquant = private unnamed_addr constant [4 x i32] [i32 5, i32 6, i32 7, i32 8], align 4
@mv_outside_frame = external dso_local local_unnamed_addr global i32, align 4
@long_vectors = external dso_local local_unnamed_addr global i32, align 4
@pels = external dso_local local_unnamed_addr global i32, align 4
@lines = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [38 x i8] c"Couldn't allocate memory for pi_edge\0A\00", align 1
@syntax_arith_coding = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"mb_encode(): Couldn't allocate qcoeff.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"MB_Coder: Could not allocate space for iblock\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"MB_Coder: Could not allocate space for rcoeff\0A\00", align 1
@cpels = external dso_local local_unnamed_addr global i32, align 4
@advanced = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @CodeOneOrTwo(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef signext %4, i32 noundef signext %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9) local_unnamed_addr #0 {
  %11 = alloca [6 x [73 x [90 x ptr]]], align 8
  %12 = alloca %struct.motionvector, align 4
  call void @llvm.lifetime.start.p0(i64 315360, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  tail call void @ZeroBits(ptr noundef %6) #15
  %13 = load i32, ptr @mv_outside_frame, align 4, !tbaa !6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %129, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr @long_vectors, align 4, !tbaa !6
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 8, i32 16
  %19 = load i32, ptr @pels, align 4, !tbaa !6
  %20 = shl nuw nsw i32 %18, 2
  %21 = add nsw i32 %20, %19
  %22 = sext i32 %21 to i64
  %23 = load i32, ptr @lines, align 4, !tbaa !6
  %24 = add nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %22, %25
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load ptr, ptr @stderr, align 8, !tbaa !10
  %31 = tail call i64 @fwrite(ptr nonnull @.str, i64 37, i64 1, ptr %30) #17
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

32:                                               ; preds = %15
  %33 = load ptr, ptr %3, align 8, !tbaa !12
  %34 = shl nsw i32 %21, 1
  %35 = select i1 %17, i32 3, i32 4
  %36 = shl i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %27, i64 %37
  %39 = shl nuw nsw i32 %18, 1
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  tail call void @MakeEdgeImage(ptr noundef %33, ptr noundef nonnull %41, i32 noundef signext %19, i32 noundef signext %23, i32 noundef signext %39)
  %42 = load i32, ptr @pels, align 4, !tbaa !6
  %43 = add nsw i32 %42, %20
  %44 = load i32, ptr @lines, align 4, !tbaa !6
  %45 = add nsw i32 %44, %20
  %46 = tail call ptr @InterpolateImage(ptr noundef nonnull %27, i32 noundef signext %43, i32 noundef signext %45)
  tail call void @free(ptr noundef nonnull %27) #15
  %47 = load i32, ptr @pels, align 4, !tbaa !6
  %48 = shl nuw nsw i32 %18, 5
  %49 = shl i32 %47, 3
  %50 = add i32 %49, %48
  %51 = shl i32 %50, %35
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %46, i64 %52
  %54 = zext nneg i32 %20 to i64
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  %56 = add nsw i32 %47, %20
  %57 = load i32, ptr @lines, align 4, !tbaa !6
  %58 = add nsw i32 %57, %20
  %59 = mul nsw i32 %58, %56
  %60 = tail call ptr @InitImage(i32 noundef signext %59) #15
  %61 = load ptr, ptr %2, align 8, !tbaa !12
  %62 = load ptr, ptr %60, align 8, !tbaa !12
  %63 = load i32, ptr @pels, align 4, !tbaa !6
  %64 = add nsw i32 %63, %20
  %65 = shl nsw i32 %64, 1
  %66 = shl i32 %65, %35
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  %69 = getelementptr inbounds i8, ptr %68, i64 %40
  %70 = load i32, ptr @lines, align 4, !tbaa !6
  tail call void @MakeEdgeImage(ptr noundef %61, ptr noundef nonnull %69, i32 noundef signext %63, i32 noundef signext %70, i32 noundef signext %39)
  %71 = load ptr, ptr %60, align 8, !tbaa !12
  %72 = load i32, ptr @pels, align 4, !tbaa !6
  %73 = add nsw i32 %72, %20
  %74 = shl nsw i32 %73, 1
  %75 = shl i32 %74, %35
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %71, i64 %76
  %78 = load ptr, ptr %3, align 8, !tbaa !12
  %79 = getelementptr inbounds i8, ptr %77, i64 %40
  %80 = load i32, ptr @lines, align 4, !tbaa !6
  tail call void @MakeEdgeImage(ptr noundef %78, ptr noundef nonnull %79, i32 noundef signext %72, i32 noundef signext %80, i32 noundef signext %39)
  %81 = getelementptr inbounds i8, ptr %3, i64 8
  %82 = load ptr, ptr %81, align 8, !tbaa !14
  %83 = getelementptr inbounds i8, ptr %60, i64 8
  %84 = load ptr, ptr %83, align 8, !tbaa !14
  %85 = load i32, ptr @pels, align 4, !tbaa !6
  %86 = sdiv i32 %85, 2
  %87 = add nsw i32 %86, %39
  %88 = shl i32 %87, %35
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %84, i64 %89
  %91 = zext nneg i32 %18 to i64
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  %93 = load i32, ptr @lines, align 4, !tbaa !6
  %94 = sdiv i32 %93, 2
  tail call void @MakeEdgeImage(ptr noundef %82, ptr noundef nonnull %92, i32 noundef signext %86, i32 noundef signext %94, i32 noundef signext %18)
  %95 = getelementptr inbounds i8, ptr %3, i64 16
  %96 = load ptr, ptr %95, align 8, !tbaa !15
  %97 = getelementptr inbounds i8, ptr %60, i64 16
  %98 = load ptr, ptr %97, align 8, !tbaa !15
  %99 = load i32, ptr @pels, align 4, !tbaa !6
  %100 = sdiv i32 %99, 2
  %101 = add nsw i32 %100, %39
  %102 = shl i32 %101, %35
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %98, i64 %103
  %105 = getelementptr inbounds i8, ptr %104, i64 %91
  %106 = load i32, ptr @lines, align 4, !tbaa !6
  %107 = sdiv i32 %106, 2
  tail call void @MakeEdgeImage(ptr noundef %96, ptr noundef nonnull %105, i32 noundef signext %100, i32 noundef signext %107, i32 noundef signext %18)
  %108 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %109 = load ptr, ptr %60, align 8, !tbaa !12
  %110 = load i32, ptr @pels, align 4, !tbaa !6
  %111 = add nsw i32 %110, %20
  %112 = shl nsw i32 %111, 1
  %113 = shl i32 %112, %35
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %109, i64 %114
  %116 = getelementptr inbounds i8, ptr %115, i64 %40
  store ptr %116, ptr %108, align 8, !tbaa !12
  %117 = load ptr, ptr %83, align 8, !tbaa !14
  %118 = sdiv i32 %110, 2
  %119 = add nsw i32 %118, %39
  %120 = shl i32 %119, %35
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %117, i64 %121
  %123 = getelementptr inbounds i8, ptr %122, i64 %91
  %124 = getelementptr inbounds i8, ptr %108, i64 8
  store ptr %123, ptr %124, align 8, !tbaa !14
  %125 = load ptr, ptr %97, align 8, !tbaa !15
  %126 = getelementptr inbounds i8, ptr %125, i64 %121
  %127 = getelementptr inbounds i8, ptr %126, i64 %91
  %128 = getelementptr inbounds i8, ptr %108, i64 16
  store ptr %127, ptr %128, align 8, !tbaa !15
  br label %135

129:                                              ; preds = %10
  %130 = load ptr, ptr %3, align 8, !tbaa !12
  %131 = load i32, ptr @pels, align 4, !tbaa !6
  %132 = load i32, ptr @lines, align 4, !tbaa !6
  %133 = tail call ptr @InterpolateImage(ptr noundef %130, i32 noundef signext %131, i32 noundef signext %132)
  %134 = load i32, ptr @pels, align 4, !tbaa !6
  br label %135

135:                                              ; preds = %129, %32
  %136 = phi i32 [ %110, %32 ], [ %134, %129 ]
  %137 = phi ptr [ %108, %32 ], [ %3, %129 ]
  %138 = phi ptr [ %60, %32 ], [ null, %129 ]
  %139 = phi ptr [ %46, %32 ], [ %133, %129 ]
  %140 = phi ptr [ %55, %32 ], [ %133, %129 ]
  %141 = icmp slt i32 %136, 16
  br i1 %141, label %162, label %142

142:                                              ; preds = %135, %142
  %143 = phi i64 [ %157, %142 ], [ 1, %135 ]
  %144 = getelementptr inbounds [90 x ptr], ptr %11, i64 0, i64 %143
  %145 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  store ptr %145, ptr %144, align 8, !tbaa !10
  tail call void @MarkVec(ptr noundef %145) #15
  %146 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %147 = getelementptr inbounds i8, ptr %144, i64 52560
  store ptr %146, ptr %147, align 8, !tbaa !10
  tail call void @MarkVec(ptr noundef %146) #15
  %148 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %149 = getelementptr inbounds i8, ptr %144, i64 105120
  store ptr %148, ptr %149, align 8, !tbaa !10
  tail call void @MarkVec(ptr noundef %148) #15
  %150 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %151 = getelementptr inbounds i8, ptr %144, i64 157680
  store ptr %150, ptr %151, align 8, !tbaa !10
  tail call void @MarkVec(ptr noundef %150) #15
  %152 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %153 = getelementptr inbounds i8, ptr %144, i64 210240
  store ptr %152, ptr %153, align 8, !tbaa !10
  tail call void @MarkVec(ptr noundef %152) #15
  %154 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %155 = getelementptr inbounds i8, ptr %144, i64 262800
  store ptr %154, ptr %155, align 8, !tbaa !10
  tail call void @MarkVec(ptr noundef %154) #15
  %156 = getelementptr inbounds i8, ptr %145, i64 20
  store i32 3, ptr %156, align 4, !tbaa !16
  %157 = add nuw nsw i64 %143, 1
  %158 = load i32, ptr @pels, align 4, !tbaa !6
  %159 = ashr i32 %158, 4
  %160 = sext i32 %159 to i64
  %161 = icmp slt i64 %143, %160
  br i1 %161, label %142, label %162

162:                                              ; preds = %142, %135
  %163 = load i32, ptr @lines, align 4, !tbaa !6
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %229, label %165

165:                                              ; preds = %162, %165
  %166 = phi i64 [ %224, %165 ], [ 0, %162 ]
  %167 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %168 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 0, i64 %166
  store ptr %167, ptr %168, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %167) #15
  %169 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %170 = load i32, ptr @pels, align 4, !tbaa !6
  %171 = ashr i32 %170, 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 0, i64 %166, i64 %173
  store ptr %169, ptr %174, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %169) #15
  %175 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %176 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 1, i64 %166
  store ptr %175, ptr %176, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %175) #15
  %177 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %178 = load i32, ptr @pels, align 4, !tbaa !6
  %179 = ashr i32 %178, 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 1, i64 %166, i64 %181
  store ptr %177, ptr %182, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %177) #15
  %183 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %184 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 2, i64 %166
  store ptr %183, ptr %184, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %183) #15
  %185 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %186 = load i32, ptr @pels, align 4, !tbaa !6
  %187 = ashr i32 %186, 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 2, i64 %166, i64 %189
  store ptr %185, ptr %190, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %185) #15
  %191 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %192 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 3, i64 %166
  store ptr %191, ptr %192, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %191) #15
  %193 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %194 = load i32, ptr @pels, align 4, !tbaa !6
  %195 = ashr i32 %194, 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 3, i64 %166, i64 %197
  store ptr %193, ptr %198, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %193) #15
  %199 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %200 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 4, i64 %166
  store ptr %199, ptr %200, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %199) #15
  %201 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %202 = load i32, ptr @pels, align 4, !tbaa !6
  %203 = ashr i32 %202, 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 4, i64 %166, i64 %205
  store ptr %201, ptr %206, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %201) #15
  %207 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %208 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 5, i64 %166
  store ptr %207, ptr %208, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %207) #15
  %209 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %210 = load i32, ptr @pels, align 4, !tbaa !6
  %211 = ashr i32 %210, 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 5, i64 %166, i64 %213
  store ptr %209, ptr %214, align 8, !tbaa !10
  tail call void @ZeroVec(ptr noundef %209) #15
  %215 = load ptr, ptr %168, align 8, !tbaa !10
  %216 = getelementptr inbounds i8, ptr %215, i64 20
  store i32 3, ptr %216, align 4, !tbaa !16
  %217 = load i32, ptr @pels, align 4, !tbaa !6
  %218 = ashr i32 %217, 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [73 x [90 x ptr]], ptr %11, i64 0, i64 %166, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !10
  %223 = getelementptr inbounds i8, ptr %222, i64 20
  store i32 3, ptr %223, align 4, !tbaa !16
  %224 = add nuw nsw i64 %166, 1
  %225 = load i32, ptr @lines, align 4, !tbaa !6
  %226 = ashr i32 %225, 4
  %227 = sext i32 %226 to i64
  %228 = icmp slt i64 %166, %227
  br i1 %228, label %165, label %229

229:                                              ; preds = %165, %162
  %230 = load ptr, ptr %0, align 8, !tbaa !12
  %231 = load ptr, ptr %137, align 8, !tbaa !12
  %232 = getelementptr inbounds i8, ptr %7, i64 56
  %233 = load i32, ptr %232, align 4, !tbaa !18
  %234 = getelementptr inbounds i8, ptr %7, i64 60
  %235 = load i32, ptr %234, align 4, !tbaa !21
  call void @MotionEstimatePicture(ptr noundef %230, ptr noundef %231, ptr noundef %140, i32 noundef signext %233, ptr noundef nonnull %11, i32 noundef signext %235)
  %236 = getelementptr inbounds i8, ptr %7, i64 12
  %237 = load i32, ptr %236, align 4, !tbaa !22
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %251, label %239

239:                                              ; preds = %229
  %240 = sitofp i32 %237 to float
  %241 = getelementptr inbounds i8, ptr %7, i64 40
  %242 = load i32, ptr %241, align 4, !tbaa !23
  %243 = icmp eq i32 %242, 0
  %244 = getelementptr inbounds i8, ptr %7, i64 20
  %245 = load float, ptr %244, align 4, !tbaa !24
  %246 = fmul float %245, 5.000000e-01
  %247 = select i1 %243, float %245, float %246
  %248 = getelementptr inbounds i8, ptr %7, i64 76
  %249 = load float, ptr %248, align 4, !tbaa !25
  %250 = call signext i32 @InitializeQuantizer(i32 noundef signext 1, float noundef %240, float noundef %247, float noundef %249) #15
  br label %251

251:                                              ; preds = %229, %239
  %252 = phi i32 [ %250, %239 ], [ %4, %229 ]
  %253 = load i32, ptr @lines, align 4, !tbaa !6
  %254 = icmp sgt i32 %253, 15
  br i1 %254, label %255, label %1176

255:                                              ; preds = %251
  %256 = getelementptr inbounds i8, ptr %7, i64 76
  %257 = getelementptr inbounds i8, ptr %6, i64 40
  %258 = getelementptr inbounds i8, ptr %6, i64 32
  %259 = getelementptr inbounds i8, ptr %7, i64 44
  %260 = getelementptr inbounds i8, ptr %7, i64 48
  %261 = getelementptr inbounds i8, ptr %7, i64 52
  %262 = getelementptr inbounds i8, ptr %0, i64 8
  %263 = getelementptr inbounds i8, ptr %0, i64 16
  %264 = getelementptr inbounds i8, ptr %7, i64 40
  %265 = getelementptr inbounds i8, ptr %7, i64 72
  %266 = getelementptr inbounds i8, ptr %7, i64 68
  %267 = getelementptr inbounds i8, ptr %7, i64 64
  %268 = getelementptr inbounds i8, ptr %11, i64 262800
  %269 = getelementptr inbounds i8, ptr %6, i64 44
  %270 = getelementptr inbounds i8, ptr %6, i64 52
  %271 = getelementptr inbounds i8, ptr %6, i64 48
  br label %272

272:                                              ; preds = %255, %1162
  %273 = phi i64 [ 0, %255 ], [ %317, %1162 ]
  %274 = phi i32 [ %252, %255 ], [ %1168, %1162 ]
  %275 = phi i32 [ %252, %255 ], [ %294, %1162 ]
  %276 = phi i32 [ 0, %255 ], [ %1167, %1162 ]
  %277 = phi float [ 0.000000e+00, %255 ], [ %1166, %1162 ]
  %278 = phi i32 [ 0, %255 ], [ %1165, %1162 ]
  %279 = phi ptr [ null, %255 ], [ %1164, %1162 ]
  %280 = phi ptr [ null, %255 ], [ %1163, %1162 ]
  %281 = load i32, ptr %236, align 4, !tbaa !22
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %272
  call void @AddBitsPicture(ptr noundef %6) #15
  %284 = load float, ptr %256, align 4, !tbaa !25
  %285 = load i32, ptr %236, align 4, !tbaa !22
  %286 = sitofp i32 %285 to float
  %287 = load i32, ptr @pels, align 4, !tbaa !6
  %288 = sdiv i32 %287, 16
  %289 = load i32, ptr @lines, align 4, !tbaa !6
  %290 = sdiv i32 %289, 16
  %291 = load i32, ptr %257, align 4, !tbaa !26
  %292 = call signext i32 @UpdateQuantizer(i32 noundef signext %276, float noundef %284, i32 noundef signext 1, float noundef %286, i32 noundef signext %288, i32 noundef signext %290, i32 noundef signext %291) #15
  br label %293

293:                                              ; preds = %283, %272
  %294 = phi i32 [ %292, %283 ], [ %275, %272 ]
  %295 = icmp eq i64 %273, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  store i32 %294, ptr %259, align 4, !tbaa !28
  %297 = call signext i32 @CountBitsPicture(ptr noundef nonnull %7) #15
  br label %307

298:                                              ; preds = %293
  %299 = load i32, ptr %234, align 4, !tbaa !21
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %312, label %301

301:                                              ; preds = %298
  %302 = trunc nuw nsw i64 %273 to i32
  %303 = srem i32 %302, %299
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %301
  %306 = call signext i32 @CountBitsSlice(i32 noundef signext %302, i32 noundef signext %294) #15
  br label %307

307:                                              ; preds = %296, %305
  %308 = phi i32 [ %306, %305 ], [ %297, %296 ]
  %309 = phi i32 [ 1, %305 ], [ 0, %296 ]
  %310 = load i32, ptr %258, align 4, !tbaa !29
  %311 = add nsw i32 %310, %308
  store i32 %311, ptr %258, align 4, !tbaa !29
  br label %312

312:                                              ; preds = %307, %298, %301
  %313 = phi i32 [ 0, %301 ], [ 0, %298 ], [ %309, %307 ]
  %314 = phi i32 [ %274, %301 ], [ %274, %298 ], [ %294, %307 ]
  %315 = load i32, ptr @pels, align 4, !tbaa !6
  %316 = icmp sgt i32 %315, 15
  %317 = add nuw nsw i64 %273, 1
  br i1 %316, label %318, label %1162

318:                                              ; preds = %312
  %319 = shl nsw i64 %273, 4
  %320 = lshr exact i64 %319, 1
  %321 = trunc nuw nsw i64 %273 to i32
  %322 = or disjoint i64 %320, 1
  %323 = or disjoint i64 %320, 2
  %324 = or disjoint i64 %320, 3
  %325 = or disjoint i64 %320, 4
  %326 = or disjoint i64 %320, 5
  %327 = or disjoint i64 %320, 6
  %328 = or disjoint i64 %320, 7
  %329 = trunc nuw nsw i64 %319 to i32
  %330 = trunc nuw nsw i64 %319 to i32
  br label %331

331:                                              ; preds = %318, %1157
  %332 = phi i64 [ 0, %318 ], [ %342, %1157 ]
  %333 = phi i32 [ %314, %318 ], [ %1145, %1157 ]
  %334 = phi i32 [ %276, %318 ], [ %1147, %1157 ]
  %335 = phi float [ %277, %318 ], [ %1149, %1157 ]
  %336 = phi i32 [ %278, %318 ], [ %1076, %1157 ]
  %337 = phi ptr [ %279, %318 ], [ %1075, %1157 ]
  %338 = phi ptr [ %280, %318 ], [ %1074, %1157 ]
  %339 = icmp ne i32 %294, %333
  %340 = icmp ne i64 %332, 0
  %341 = and i1 %340, %339
  %342 = add nuw nsw i64 %332, 1
  %343 = getelementptr inbounds [73 x [90 x ptr]], ptr %11, i64 0, i64 %317, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !10
  %345 = getelementptr inbounds i8, ptr %344, i64 20
  %346 = load i32, ptr %345, align 4, !tbaa !16
  %347 = icmp eq i32 %346, 2
  %348 = select i1 %341, i1 %347, i1 false
  br i1 %348, label %360, label %349

349:                                              ; preds = %331
  %350 = sub nsw i32 %294, %333
  %351 = freeze i32 %350
  %352 = icmp sgt i32 %351, 2
  %353 = add nsw i32 %333, 2
  %354 = call i32 @llvm.smin.i32(i32 %351, i32 2)
  %355 = select i1 %352, i32 %353, i32 %294
  %356 = icmp slt i32 %351, -2
  %357 = add nsw i32 %333, -2
  %358 = call i32 @llvm.smax.i32(i32 %354, i32 -2)
  %359 = select i1 %356, i32 %357, i32 %355
  br label %360

360:                                              ; preds = %349, %331
  %361 = phi i32 [ 0, %331 ], [ %358, %349 ]
  %362 = phi i32 [ 2, %331 ], [ %346, %349 ]
  %363 = phi i32 [ %333, %331 ], [ %359, %349 ]
  store i32 %361, ptr %260, align 4, !tbaa !30
  %364 = getelementptr inbounds [73 x [90 x ptr]], ptr %11, i64 0, i64 %317, i64 %342
  %365 = call signext i32 @ModifyMode(i32 noundef signext %362, i32 noundef signext %361) #15
  %366 = load ptr, ptr %364, align 8, !tbaa !10
  %367 = getelementptr inbounds i8, ptr %366, i64 20
  store i32 %365, ptr %367, align 4, !tbaa !16
  %368 = load i32, ptr @pels, align 4, !tbaa !6
  %369 = sdiv i32 %368, 16
  %370 = mul nsw i32 %369, %321
  %371 = trunc nuw nsw i64 %332 to i32
  %372 = add nsw i32 %370, %371
  store i32 %372, ptr %261, align 4, !tbaa !31
  %373 = icmp eq i32 %365, 1
  %374 = icmp ugt i32 %365, 1
  %375 = icmp eq i32 %365, 2
  %376 = icmp ult i32 %365, 3
  br i1 %376, label %377, label %382

377:                                              ; preds = %360
  %378 = load i32, ptr %264, align 4, !tbaa !23
  %379 = trunc i64 %332 to i32
  %380 = shl i32 %379, 4
  %381 = call ptr @Predict_P(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %140, i32 noundef signext %380, i32 noundef signext %329, ptr noundef nonnull %11, i32 noundef signext %378) #15
  br label %1015

382:                                              ; preds = %360
  %383 = call noalias dereferenceable_or_null(1536) ptr @malloc(i64 noundef 1536) #16
  %384 = shl nsw i64 %332, 4
  %385 = load ptr, ptr %0, align 8, !tbaa !12
  %386 = getelementptr inbounds i8, ptr %385, i64 %384
  %387 = getelementptr inbounds i8, ptr %386, i64 1
  %388 = getelementptr inbounds i8, ptr %386, i64 2
  %389 = getelementptr inbounds i8, ptr %386, i64 3
  %390 = getelementptr inbounds i8, ptr %386, i64 4
  %391 = getelementptr inbounds i8, ptr %386, i64 5
  %392 = getelementptr inbounds i8, ptr %386, i64 6
  %393 = getelementptr inbounds i8, ptr %386, i64 7
  %394 = getelementptr inbounds i8, ptr %386, i64 8
  %395 = getelementptr inbounds i8, ptr %386, i64 9
  %396 = getelementptr inbounds i8, ptr %386, i64 10
  %397 = getelementptr inbounds i8, ptr %386, i64 11
  %398 = getelementptr inbounds i8, ptr %386, i64 12
  %399 = getelementptr inbounds i8, ptr %386, i64 13
  %400 = getelementptr inbounds i8, ptr %386, i64 14
  %401 = getelementptr inbounds i8, ptr %386, i64 15
  %402 = sext i32 %368 to i64
  br label %403

403:                                              ; preds = %403, %382
  %404 = phi i64 [ 0, %382 ], [ %471, %403 ]
  %405 = add nuw nsw i64 %404, %319
  %406 = mul nsw i64 %405, %402
  %407 = getelementptr inbounds i8, ptr %386, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !32
  %409 = zext i8 %408 to i32
  %410 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 0
  store i32 %409, ptr %410, align 4, !tbaa !6
  %411 = getelementptr inbounds i8, ptr %387, i64 %406
  %412 = load i8, ptr %411, align 1, !tbaa !32
  %413 = zext i8 %412 to i32
  %414 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 1
  store i32 %413, ptr %414, align 4, !tbaa !6
  %415 = getelementptr inbounds i8, ptr %388, i64 %406
  %416 = load i8, ptr %415, align 1, !tbaa !32
  %417 = zext i8 %416 to i32
  %418 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 2
  store i32 %417, ptr %418, align 4, !tbaa !6
  %419 = getelementptr inbounds i8, ptr %389, i64 %406
  %420 = load i8, ptr %419, align 1, !tbaa !32
  %421 = zext i8 %420 to i32
  %422 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 3
  store i32 %421, ptr %422, align 4, !tbaa !6
  %423 = getelementptr inbounds i8, ptr %390, i64 %406
  %424 = load i8, ptr %423, align 1, !tbaa !32
  %425 = zext i8 %424 to i32
  %426 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 4
  store i32 %425, ptr %426, align 4, !tbaa !6
  %427 = getelementptr inbounds i8, ptr %391, i64 %406
  %428 = load i8, ptr %427, align 1, !tbaa !32
  %429 = zext i8 %428 to i32
  %430 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 5
  store i32 %429, ptr %430, align 4, !tbaa !6
  %431 = getelementptr inbounds i8, ptr %392, i64 %406
  %432 = load i8, ptr %431, align 1, !tbaa !32
  %433 = zext i8 %432 to i32
  %434 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 6
  store i32 %433, ptr %434, align 4, !tbaa !6
  %435 = getelementptr inbounds i8, ptr %393, i64 %406
  %436 = load i8, ptr %435, align 1, !tbaa !32
  %437 = zext i8 %436 to i32
  %438 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 7
  store i32 %437, ptr %438, align 4, !tbaa !6
  %439 = getelementptr inbounds i8, ptr %394, i64 %406
  %440 = load i8, ptr %439, align 1, !tbaa !32
  %441 = zext i8 %440 to i32
  %442 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 8
  store i32 %441, ptr %442, align 4, !tbaa !6
  %443 = getelementptr inbounds i8, ptr %395, i64 %406
  %444 = load i8, ptr %443, align 1, !tbaa !32
  %445 = zext i8 %444 to i32
  %446 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 9
  store i32 %445, ptr %446, align 4, !tbaa !6
  %447 = getelementptr inbounds i8, ptr %396, i64 %406
  %448 = load i8, ptr %447, align 1, !tbaa !32
  %449 = zext i8 %448 to i32
  %450 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 10
  store i32 %449, ptr %450, align 4, !tbaa !6
  %451 = getelementptr inbounds i8, ptr %397, i64 %406
  %452 = load i8, ptr %451, align 1, !tbaa !32
  %453 = zext i8 %452 to i32
  %454 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 11
  store i32 %453, ptr %454, align 4, !tbaa !6
  %455 = getelementptr inbounds i8, ptr %398, i64 %406
  %456 = load i8, ptr %455, align 1, !tbaa !32
  %457 = zext i8 %456 to i32
  %458 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 12
  store i32 %457, ptr %458, align 4, !tbaa !6
  %459 = getelementptr inbounds i8, ptr %399, i64 %406
  %460 = load i8, ptr %459, align 1, !tbaa !32
  %461 = zext i8 %460 to i32
  %462 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 13
  store i32 %461, ptr %462, align 4, !tbaa !6
  %463 = getelementptr inbounds i8, ptr %400, i64 %406
  %464 = load i8, ptr %463, align 1, !tbaa !32
  %465 = zext i8 %464 to i32
  %466 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 14
  store i32 %465, ptr %466, align 4, !tbaa !6
  %467 = getelementptr inbounds i8, ptr %401, i64 %406
  %468 = load i8, ptr %467, align 1, !tbaa !32
  %469 = zext i8 %468 to i32
  %470 = getelementptr inbounds [16 x [16 x i32]], ptr %383, i64 0, i64 %404, i64 15
  store i32 %469, ptr %470, align 4, !tbaa !6
  %471 = add nuw nsw i64 %404, 1
  %472 = icmp eq i64 %471, 16
  br i1 %472, label %473, label %403

473:                                              ; preds = %403
  %474 = lshr exact i64 %384, 1
  %475 = load ptr, ptr %262, align 8, !tbaa !14
  %476 = getelementptr inbounds i8, ptr %475, i64 %474
  %477 = getelementptr inbounds i8, ptr %383, i64 1024
  %478 = load ptr, ptr %263, align 8, !tbaa !15
  %479 = getelementptr inbounds i8, ptr %478, i64 %474
  %480 = getelementptr inbounds i8, ptr %383, i64 1280
  %481 = getelementptr inbounds i8, ptr %476, i64 1
  %482 = getelementptr inbounds i8, ptr %479, i64 1
  %483 = getelementptr inbounds i8, ptr %476, i64 2
  %484 = getelementptr inbounds i8, ptr %479, i64 2
  %485 = getelementptr inbounds i8, ptr %476, i64 3
  %486 = getelementptr inbounds i8, ptr %479, i64 3
  %487 = getelementptr inbounds i8, ptr %476, i64 4
  %488 = getelementptr inbounds i8, ptr %479, i64 4
  %489 = getelementptr inbounds i8, ptr %476, i64 5
  %490 = getelementptr inbounds i8, ptr %479, i64 5
  %491 = getelementptr inbounds i8, ptr %476, i64 6
  %492 = getelementptr inbounds i8, ptr %479, i64 6
  %493 = getelementptr inbounds i8, ptr %476, i64 7
  %494 = getelementptr inbounds i8, ptr %479, i64 7
  %495 = load i32, ptr @cpels, align 4, !tbaa !6
  %496 = sext i32 %495 to i64
  %497 = mul nsw i64 %320, %496
  %498 = getelementptr inbounds i8, ptr %476, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !32
  %500 = zext i8 %499 to i32
  store i32 %500, ptr %477, align 4, !tbaa !6
  %501 = getelementptr inbounds i8, ptr %479, i64 %497
  %502 = load i8, ptr %501, align 1, !tbaa !32
  %503 = zext i8 %502 to i32
  store i32 %503, ptr %480, align 4, !tbaa !6
  %504 = getelementptr inbounds i8, ptr %481, i64 %497
  %505 = load i8, ptr %504, align 1, !tbaa !32
  %506 = zext i8 %505 to i32
  %507 = getelementptr inbounds i8, ptr %383, i64 1028
  store i32 %506, ptr %507, align 4, !tbaa !6
  %508 = getelementptr inbounds i8, ptr %482, i64 %497
  %509 = load i8, ptr %508, align 1, !tbaa !32
  %510 = zext i8 %509 to i32
  %511 = getelementptr inbounds i8, ptr %383, i64 1284
  store i32 %510, ptr %511, align 4, !tbaa !6
  %512 = getelementptr inbounds i8, ptr %483, i64 %497
  %513 = load i8, ptr %512, align 1, !tbaa !32
  %514 = zext i8 %513 to i32
  %515 = getelementptr inbounds i8, ptr %383, i64 1032
  store i32 %514, ptr %515, align 4, !tbaa !6
  %516 = getelementptr inbounds i8, ptr %484, i64 %497
  %517 = load i8, ptr %516, align 1, !tbaa !32
  %518 = zext i8 %517 to i32
  %519 = getelementptr inbounds i8, ptr %383, i64 1288
  store i32 %518, ptr %519, align 4, !tbaa !6
  %520 = getelementptr inbounds i8, ptr %485, i64 %497
  %521 = load i8, ptr %520, align 1, !tbaa !32
  %522 = zext i8 %521 to i32
  %523 = getelementptr inbounds i8, ptr %383, i64 1036
  store i32 %522, ptr %523, align 4, !tbaa !6
  %524 = getelementptr inbounds i8, ptr %486, i64 %497
  %525 = load i8, ptr %524, align 1, !tbaa !32
  %526 = zext i8 %525 to i32
  %527 = getelementptr inbounds i8, ptr %383, i64 1292
  store i32 %526, ptr %527, align 4, !tbaa !6
  %528 = getelementptr inbounds i8, ptr %487, i64 %497
  %529 = load i8, ptr %528, align 1, !tbaa !32
  %530 = zext i8 %529 to i32
  %531 = getelementptr inbounds i8, ptr %383, i64 1040
  store i32 %530, ptr %531, align 4, !tbaa !6
  %532 = getelementptr inbounds i8, ptr %488, i64 %497
  %533 = load i8, ptr %532, align 1, !tbaa !32
  %534 = zext i8 %533 to i32
  %535 = getelementptr inbounds i8, ptr %383, i64 1296
  store i32 %534, ptr %535, align 4, !tbaa !6
  %536 = getelementptr inbounds i8, ptr %489, i64 %497
  %537 = load i8, ptr %536, align 1, !tbaa !32
  %538 = zext i8 %537 to i32
  %539 = getelementptr inbounds i8, ptr %383, i64 1044
  store i32 %538, ptr %539, align 4, !tbaa !6
  %540 = getelementptr inbounds i8, ptr %490, i64 %497
  %541 = load i8, ptr %540, align 1, !tbaa !32
  %542 = zext i8 %541 to i32
  %543 = getelementptr inbounds i8, ptr %383, i64 1300
  store i32 %542, ptr %543, align 4, !tbaa !6
  %544 = getelementptr inbounds i8, ptr %491, i64 %497
  %545 = load i8, ptr %544, align 1, !tbaa !32
  %546 = zext i8 %545 to i32
  %547 = getelementptr inbounds i8, ptr %383, i64 1048
  store i32 %546, ptr %547, align 4, !tbaa !6
  %548 = getelementptr inbounds i8, ptr %492, i64 %497
  %549 = load i8, ptr %548, align 1, !tbaa !32
  %550 = zext i8 %549 to i32
  %551 = getelementptr inbounds i8, ptr %383, i64 1304
  store i32 %550, ptr %551, align 4, !tbaa !6
  %552 = getelementptr inbounds i8, ptr %493, i64 %497
  %553 = load i8, ptr %552, align 1, !tbaa !32
  %554 = zext i8 %553 to i32
  %555 = getelementptr inbounds i8, ptr %383, i64 1052
  store i32 %554, ptr %555, align 4, !tbaa !6
  %556 = getelementptr inbounds i8, ptr %494, i64 %497
  %557 = load i8, ptr %556, align 1, !tbaa !32
  %558 = zext i8 %557 to i32
  %559 = getelementptr inbounds i8, ptr %383, i64 1308
  store i32 %558, ptr %559, align 4, !tbaa !6
  %560 = mul nsw i64 %322, %496
  %561 = getelementptr inbounds i8, ptr %476, i64 %560
  %562 = load i8, ptr %561, align 1, !tbaa !32
  %563 = zext i8 %562 to i32
  %564 = getelementptr inbounds i8, ptr %383, i64 1056
  store i32 %563, ptr %564, align 4, !tbaa !6
  %565 = getelementptr inbounds i8, ptr %479, i64 %560
  %566 = load i8, ptr %565, align 1, !tbaa !32
  %567 = zext i8 %566 to i32
  %568 = getelementptr inbounds i8, ptr %383, i64 1312
  store i32 %567, ptr %568, align 4, !tbaa !6
  %569 = getelementptr inbounds i8, ptr %481, i64 %560
  %570 = load i8, ptr %569, align 1, !tbaa !32
  %571 = zext i8 %570 to i32
  %572 = getelementptr inbounds i8, ptr %383, i64 1060
  store i32 %571, ptr %572, align 4, !tbaa !6
  %573 = getelementptr inbounds i8, ptr %482, i64 %560
  %574 = load i8, ptr %573, align 1, !tbaa !32
  %575 = zext i8 %574 to i32
  %576 = getelementptr inbounds i8, ptr %383, i64 1316
  store i32 %575, ptr %576, align 4, !tbaa !6
  %577 = getelementptr inbounds i8, ptr %483, i64 %560
  %578 = load i8, ptr %577, align 1, !tbaa !32
  %579 = zext i8 %578 to i32
  %580 = getelementptr inbounds i8, ptr %383, i64 1064
  store i32 %579, ptr %580, align 4, !tbaa !6
  %581 = getelementptr inbounds i8, ptr %484, i64 %560
  %582 = load i8, ptr %581, align 1, !tbaa !32
  %583 = zext i8 %582 to i32
  %584 = getelementptr inbounds i8, ptr %383, i64 1320
  store i32 %583, ptr %584, align 4, !tbaa !6
  %585 = getelementptr inbounds i8, ptr %485, i64 %560
  %586 = load i8, ptr %585, align 1, !tbaa !32
  %587 = zext i8 %586 to i32
  %588 = getelementptr inbounds i8, ptr %383, i64 1068
  store i32 %587, ptr %588, align 4, !tbaa !6
  %589 = getelementptr inbounds i8, ptr %486, i64 %560
  %590 = load i8, ptr %589, align 1, !tbaa !32
  %591 = zext i8 %590 to i32
  %592 = getelementptr inbounds i8, ptr %383, i64 1324
  store i32 %591, ptr %592, align 4, !tbaa !6
  %593 = getelementptr inbounds i8, ptr %487, i64 %560
  %594 = load i8, ptr %593, align 1, !tbaa !32
  %595 = zext i8 %594 to i32
  %596 = getelementptr inbounds i8, ptr %383, i64 1072
  store i32 %595, ptr %596, align 4, !tbaa !6
  %597 = getelementptr inbounds i8, ptr %488, i64 %560
  %598 = load i8, ptr %597, align 1, !tbaa !32
  %599 = zext i8 %598 to i32
  %600 = getelementptr inbounds i8, ptr %383, i64 1328
  store i32 %599, ptr %600, align 4, !tbaa !6
  %601 = getelementptr inbounds i8, ptr %489, i64 %560
  %602 = load i8, ptr %601, align 1, !tbaa !32
  %603 = zext i8 %602 to i32
  %604 = getelementptr inbounds i8, ptr %383, i64 1076
  store i32 %603, ptr %604, align 4, !tbaa !6
  %605 = getelementptr inbounds i8, ptr %490, i64 %560
  %606 = load i8, ptr %605, align 1, !tbaa !32
  %607 = zext i8 %606 to i32
  %608 = getelementptr inbounds i8, ptr %383, i64 1332
  store i32 %607, ptr %608, align 4, !tbaa !6
  %609 = getelementptr inbounds i8, ptr %491, i64 %560
  %610 = load i8, ptr %609, align 1, !tbaa !32
  %611 = zext i8 %610 to i32
  %612 = getelementptr inbounds i8, ptr %383, i64 1080
  store i32 %611, ptr %612, align 4, !tbaa !6
  %613 = getelementptr inbounds i8, ptr %492, i64 %560
  %614 = load i8, ptr %613, align 1, !tbaa !32
  %615 = zext i8 %614 to i32
  %616 = getelementptr inbounds i8, ptr %383, i64 1336
  store i32 %615, ptr %616, align 4, !tbaa !6
  %617 = getelementptr inbounds i8, ptr %493, i64 %560
  %618 = load i8, ptr %617, align 1, !tbaa !32
  %619 = zext i8 %618 to i32
  %620 = getelementptr inbounds i8, ptr %383, i64 1084
  store i32 %619, ptr %620, align 4, !tbaa !6
  %621 = getelementptr inbounds i8, ptr %494, i64 %560
  %622 = load i8, ptr %621, align 1, !tbaa !32
  %623 = zext i8 %622 to i32
  %624 = getelementptr inbounds i8, ptr %383, i64 1340
  store i32 %623, ptr %624, align 4, !tbaa !6
  %625 = mul nsw i64 %323, %496
  %626 = getelementptr inbounds i8, ptr %476, i64 %625
  %627 = load i8, ptr %626, align 1, !tbaa !32
  %628 = zext i8 %627 to i32
  %629 = getelementptr inbounds i8, ptr %383, i64 1088
  store i32 %628, ptr %629, align 4, !tbaa !6
  %630 = getelementptr inbounds i8, ptr %479, i64 %625
  %631 = load i8, ptr %630, align 1, !tbaa !32
  %632 = zext i8 %631 to i32
  %633 = getelementptr inbounds i8, ptr %383, i64 1344
  store i32 %632, ptr %633, align 4, !tbaa !6
  %634 = getelementptr inbounds i8, ptr %481, i64 %625
  %635 = load i8, ptr %634, align 1, !tbaa !32
  %636 = zext i8 %635 to i32
  %637 = getelementptr inbounds i8, ptr %383, i64 1092
  store i32 %636, ptr %637, align 4, !tbaa !6
  %638 = getelementptr inbounds i8, ptr %482, i64 %625
  %639 = load i8, ptr %638, align 1, !tbaa !32
  %640 = zext i8 %639 to i32
  %641 = getelementptr inbounds i8, ptr %383, i64 1348
  store i32 %640, ptr %641, align 4, !tbaa !6
  %642 = getelementptr inbounds i8, ptr %483, i64 %625
  %643 = load i8, ptr %642, align 1, !tbaa !32
  %644 = zext i8 %643 to i32
  %645 = getelementptr inbounds i8, ptr %383, i64 1096
  store i32 %644, ptr %645, align 4, !tbaa !6
  %646 = getelementptr inbounds i8, ptr %484, i64 %625
  %647 = load i8, ptr %646, align 1, !tbaa !32
  %648 = zext i8 %647 to i32
  %649 = getelementptr inbounds i8, ptr %383, i64 1352
  store i32 %648, ptr %649, align 4, !tbaa !6
  %650 = getelementptr inbounds i8, ptr %485, i64 %625
  %651 = load i8, ptr %650, align 1, !tbaa !32
  %652 = zext i8 %651 to i32
  %653 = getelementptr inbounds i8, ptr %383, i64 1100
  store i32 %652, ptr %653, align 4, !tbaa !6
  %654 = getelementptr inbounds i8, ptr %486, i64 %625
  %655 = load i8, ptr %654, align 1, !tbaa !32
  %656 = zext i8 %655 to i32
  %657 = getelementptr inbounds i8, ptr %383, i64 1356
  store i32 %656, ptr %657, align 4, !tbaa !6
  %658 = getelementptr inbounds i8, ptr %487, i64 %625
  %659 = load i8, ptr %658, align 1, !tbaa !32
  %660 = zext i8 %659 to i32
  %661 = getelementptr inbounds i8, ptr %383, i64 1104
  store i32 %660, ptr %661, align 4, !tbaa !6
  %662 = getelementptr inbounds i8, ptr %488, i64 %625
  %663 = load i8, ptr %662, align 1, !tbaa !32
  %664 = zext i8 %663 to i32
  %665 = getelementptr inbounds i8, ptr %383, i64 1360
  store i32 %664, ptr %665, align 4, !tbaa !6
  %666 = getelementptr inbounds i8, ptr %489, i64 %625
  %667 = load i8, ptr %666, align 1, !tbaa !32
  %668 = zext i8 %667 to i32
  %669 = getelementptr inbounds i8, ptr %383, i64 1108
  store i32 %668, ptr %669, align 4, !tbaa !6
  %670 = getelementptr inbounds i8, ptr %490, i64 %625
  %671 = load i8, ptr %670, align 1, !tbaa !32
  %672 = zext i8 %671 to i32
  %673 = getelementptr inbounds i8, ptr %383, i64 1364
  store i32 %672, ptr %673, align 4, !tbaa !6
  %674 = getelementptr inbounds i8, ptr %491, i64 %625
  %675 = load i8, ptr %674, align 1, !tbaa !32
  %676 = zext i8 %675 to i32
  %677 = getelementptr inbounds i8, ptr %383, i64 1112
  store i32 %676, ptr %677, align 4, !tbaa !6
  %678 = getelementptr inbounds i8, ptr %492, i64 %625
  %679 = load i8, ptr %678, align 1, !tbaa !32
  %680 = zext i8 %679 to i32
  %681 = getelementptr inbounds i8, ptr %383, i64 1368
  store i32 %680, ptr %681, align 4, !tbaa !6
  %682 = getelementptr inbounds i8, ptr %493, i64 %625
  %683 = load i8, ptr %682, align 1, !tbaa !32
  %684 = zext i8 %683 to i32
  %685 = getelementptr inbounds i8, ptr %383, i64 1116
  store i32 %684, ptr %685, align 4, !tbaa !6
  %686 = getelementptr inbounds i8, ptr %494, i64 %625
  %687 = load i8, ptr %686, align 1, !tbaa !32
  %688 = zext i8 %687 to i32
  %689 = getelementptr inbounds i8, ptr %383, i64 1372
  store i32 %688, ptr %689, align 4, !tbaa !6
  %690 = mul nsw i64 %324, %496
  %691 = getelementptr inbounds i8, ptr %476, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !32
  %693 = zext i8 %692 to i32
  %694 = getelementptr inbounds i8, ptr %383, i64 1120
  store i32 %693, ptr %694, align 4, !tbaa !6
  %695 = getelementptr inbounds i8, ptr %479, i64 %690
  %696 = load i8, ptr %695, align 1, !tbaa !32
  %697 = zext i8 %696 to i32
  %698 = getelementptr inbounds i8, ptr %383, i64 1376
  store i32 %697, ptr %698, align 4, !tbaa !6
  %699 = getelementptr inbounds i8, ptr %481, i64 %690
  %700 = load i8, ptr %699, align 1, !tbaa !32
  %701 = zext i8 %700 to i32
  %702 = getelementptr inbounds i8, ptr %383, i64 1124
  store i32 %701, ptr %702, align 4, !tbaa !6
  %703 = getelementptr inbounds i8, ptr %482, i64 %690
  %704 = load i8, ptr %703, align 1, !tbaa !32
  %705 = zext i8 %704 to i32
  %706 = getelementptr inbounds i8, ptr %383, i64 1380
  store i32 %705, ptr %706, align 4, !tbaa !6
  %707 = getelementptr inbounds i8, ptr %483, i64 %690
  %708 = load i8, ptr %707, align 1, !tbaa !32
  %709 = zext i8 %708 to i32
  %710 = getelementptr inbounds i8, ptr %383, i64 1128
  store i32 %709, ptr %710, align 4, !tbaa !6
  %711 = getelementptr inbounds i8, ptr %484, i64 %690
  %712 = load i8, ptr %711, align 1, !tbaa !32
  %713 = zext i8 %712 to i32
  %714 = getelementptr inbounds i8, ptr %383, i64 1384
  store i32 %713, ptr %714, align 4, !tbaa !6
  %715 = getelementptr inbounds i8, ptr %485, i64 %690
  %716 = load i8, ptr %715, align 1, !tbaa !32
  %717 = zext i8 %716 to i32
  %718 = getelementptr inbounds i8, ptr %383, i64 1132
  store i32 %717, ptr %718, align 4, !tbaa !6
  %719 = getelementptr inbounds i8, ptr %486, i64 %690
  %720 = load i8, ptr %719, align 1, !tbaa !32
  %721 = zext i8 %720 to i32
  %722 = getelementptr inbounds i8, ptr %383, i64 1388
  store i32 %721, ptr %722, align 4, !tbaa !6
  %723 = getelementptr inbounds i8, ptr %487, i64 %690
  %724 = load i8, ptr %723, align 1, !tbaa !32
  %725 = zext i8 %724 to i32
  %726 = getelementptr inbounds i8, ptr %383, i64 1136
  store i32 %725, ptr %726, align 4, !tbaa !6
  %727 = getelementptr inbounds i8, ptr %488, i64 %690
  %728 = load i8, ptr %727, align 1, !tbaa !32
  %729 = zext i8 %728 to i32
  %730 = getelementptr inbounds i8, ptr %383, i64 1392
  store i32 %729, ptr %730, align 4, !tbaa !6
  %731 = getelementptr inbounds i8, ptr %489, i64 %690
  %732 = load i8, ptr %731, align 1, !tbaa !32
  %733 = zext i8 %732 to i32
  %734 = getelementptr inbounds i8, ptr %383, i64 1140
  store i32 %733, ptr %734, align 4, !tbaa !6
  %735 = getelementptr inbounds i8, ptr %490, i64 %690
  %736 = load i8, ptr %735, align 1, !tbaa !32
  %737 = zext i8 %736 to i32
  %738 = getelementptr inbounds i8, ptr %383, i64 1396
  store i32 %737, ptr %738, align 4, !tbaa !6
  %739 = getelementptr inbounds i8, ptr %491, i64 %690
  %740 = load i8, ptr %739, align 1, !tbaa !32
  %741 = zext i8 %740 to i32
  %742 = getelementptr inbounds i8, ptr %383, i64 1144
  store i32 %741, ptr %742, align 4, !tbaa !6
  %743 = getelementptr inbounds i8, ptr %492, i64 %690
  %744 = load i8, ptr %743, align 1, !tbaa !32
  %745 = zext i8 %744 to i32
  %746 = getelementptr inbounds i8, ptr %383, i64 1400
  store i32 %745, ptr %746, align 4, !tbaa !6
  %747 = getelementptr inbounds i8, ptr %493, i64 %690
  %748 = load i8, ptr %747, align 1, !tbaa !32
  %749 = zext i8 %748 to i32
  %750 = getelementptr inbounds i8, ptr %383, i64 1148
  store i32 %749, ptr %750, align 4, !tbaa !6
  %751 = getelementptr inbounds i8, ptr %494, i64 %690
  %752 = load i8, ptr %751, align 1, !tbaa !32
  %753 = zext i8 %752 to i32
  %754 = getelementptr inbounds i8, ptr %383, i64 1404
  store i32 %753, ptr %754, align 4, !tbaa !6
  %755 = mul nsw i64 %325, %496
  %756 = getelementptr inbounds i8, ptr %476, i64 %755
  %757 = load i8, ptr %756, align 1, !tbaa !32
  %758 = zext i8 %757 to i32
  %759 = getelementptr inbounds i8, ptr %383, i64 1152
  store i32 %758, ptr %759, align 4, !tbaa !6
  %760 = getelementptr inbounds i8, ptr %479, i64 %755
  %761 = load i8, ptr %760, align 1, !tbaa !32
  %762 = zext i8 %761 to i32
  %763 = getelementptr inbounds i8, ptr %383, i64 1408
  store i32 %762, ptr %763, align 4, !tbaa !6
  %764 = getelementptr inbounds i8, ptr %481, i64 %755
  %765 = load i8, ptr %764, align 1, !tbaa !32
  %766 = zext i8 %765 to i32
  %767 = getelementptr inbounds i8, ptr %383, i64 1156
  store i32 %766, ptr %767, align 4, !tbaa !6
  %768 = getelementptr inbounds i8, ptr %482, i64 %755
  %769 = load i8, ptr %768, align 1, !tbaa !32
  %770 = zext i8 %769 to i32
  %771 = getelementptr inbounds i8, ptr %383, i64 1412
  store i32 %770, ptr %771, align 4, !tbaa !6
  %772 = getelementptr inbounds i8, ptr %483, i64 %755
  %773 = load i8, ptr %772, align 1, !tbaa !32
  %774 = zext i8 %773 to i32
  %775 = getelementptr inbounds i8, ptr %383, i64 1160
  store i32 %774, ptr %775, align 4, !tbaa !6
  %776 = getelementptr inbounds i8, ptr %484, i64 %755
  %777 = load i8, ptr %776, align 1, !tbaa !32
  %778 = zext i8 %777 to i32
  %779 = getelementptr inbounds i8, ptr %383, i64 1416
  store i32 %778, ptr %779, align 4, !tbaa !6
  %780 = getelementptr inbounds i8, ptr %485, i64 %755
  %781 = load i8, ptr %780, align 1, !tbaa !32
  %782 = zext i8 %781 to i32
  %783 = getelementptr inbounds i8, ptr %383, i64 1164
  store i32 %782, ptr %783, align 4, !tbaa !6
  %784 = getelementptr inbounds i8, ptr %486, i64 %755
  %785 = load i8, ptr %784, align 1, !tbaa !32
  %786 = zext i8 %785 to i32
  %787 = getelementptr inbounds i8, ptr %383, i64 1420
  store i32 %786, ptr %787, align 4, !tbaa !6
  %788 = getelementptr inbounds i8, ptr %487, i64 %755
  %789 = load i8, ptr %788, align 1, !tbaa !32
  %790 = zext i8 %789 to i32
  %791 = getelementptr inbounds i8, ptr %383, i64 1168
  store i32 %790, ptr %791, align 4, !tbaa !6
  %792 = getelementptr inbounds i8, ptr %488, i64 %755
  %793 = load i8, ptr %792, align 1, !tbaa !32
  %794 = zext i8 %793 to i32
  %795 = getelementptr inbounds i8, ptr %383, i64 1424
  store i32 %794, ptr %795, align 4, !tbaa !6
  %796 = getelementptr inbounds i8, ptr %489, i64 %755
  %797 = load i8, ptr %796, align 1, !tbaa !32
  %798 = zext i8 %797 to i32
  %799 = getelementptr inbounds i8, ptr %383, i64 1172
  store i32 %798, ptr %799, align 4, !tbaa !6
  %800 = getelementptr inbounds i8, ptr %490, i64 %755
  %801 = load i8, ptr %800, align 1, !tbaa !32
  %802 = zext i8 %801 to i32
  %803 = getelementptr inbounds i8, ptr %383, i64 1428
  store i32 %802, ptr %803, align 4, !tbaa !6
  %804 = getelementptr inbounds i8, ptr %491, i64 %755
  %805 = load i8, ptr %804, align 1, !tbaa !32
  %806 = zext i8 %805 to i32
  %807 = getelementptr inbounds i8, ptr %383, i64 1176
  store i32 %806, ptr %807, align 4, !tbaa !6
  %808 = getelementptr inbounds i8, ptr %492, i64 %755
  %809 = load i8, ptr %808, align 1, !tbaa !32
  %810 = zext i8 %809 to i32
  %811 = getelementptr inbounds i8, ptr %383, i64 1432
  store i32 %810, ptr %811, align 4, !tbaa !6
  %812 = getelementptr inbounds i8, ptr %493, i64 %755
  %813 = load i8, ptr %812, align 1, !tbaa !32
  %814 = zext i8 %813 to i32
  %815 = getelementptr inbounds i8, ptr %383, i64 1180
  store i32 %814, ptr %815, align 4, !tbaa !6
  %816 = getelementptr inbounds i8, ptr %494, i64 %755
  %817 = load i8, ptr %816, align 1, !tbaa !32
  %818 = zext i8 %817 to i32
  %819 = getelementptr inbounds i8, ptr %383, i64 1436
  store i32 %818, ptr %819, align 4, !tbaa !6
  %820 = mul nsw i64 %326, %496
  %821 = getelementptr inbounds i8, ptr %476, i64 %820
  %822 = load i8, ptr %821, align 1, !tbaa !32
  %823 = zext i8 %822 to i32
  %824 = getelementptr inbounds i8, ptr %383, i64 1184
  store i32 %823, ptr %824, align 4, !tbaa !6
  %825 = getelementptr inbounds i8, ptr %479, i64 %820
  %826 = load i8, ptr %825, align 1, !tbaa !32
  %827 = zext i8 %826 to i32
  %828 = getelementptr inbounds i8, ptr %383, i64 1440
  store i32 %827, ptr %828, align 4, !tbaa !6
  %829 = getelementptr inbounds i8, ptr %481, i64 %820
  %830 = load i8, ptr %829, align 1, !tbaa !32
  %831 = zext i8 %830 to i32
  %832 = getelementptr inbounds i8, ptr %383, i64 1188
  store i32 %831, ptr %832, align 4, !tbaa !6
  %833 = getelementptr inbounds i8, ptr %482, i64 %820
  %834 = load i8, ptr %833, align 1, !tbaa !32
  %835 = zext i8 %834 to i32
  %836 = getelementptr inbounds i8, ptr %383, i64 1444
  store i32 %835, ptr %836, align 4, !tbaa !6
  %837 = getelementptr inbounds i8, ptr %483, i64 %820
  %838 = load i8, ptr %837, align 1, !tbaa !32
  %839 = zext i8 %838 to i32
  %840 = getelementptr inbounds i8, ptr %383, i64 1192
  store i32 %839, ptr %840, align 4, !tbaa !6
  %841 = getelementptr inbounds i8, ptr %484, i64 %820
  %842 = load i8, ptr %841, align 1, !tbaa !32
  %843 = zext i8 %842 to i32
  %844 = getelementptr inbounds i8, ptr %383, i64 1448
  store i32 %843, ptr %844, align 4, !tbaa !6
  %845 = getelementptr inbounds i8, ptr %485, i64 %820
  %846 = load i8, ptr %845, align 1, !tbaa !32
  %847 = zext i8 %846 to i32
  %848 = getelementptr inbounds i8, ptr %383, i64 1196
  store i32 %847, ptr %848, align 4, !tbaa !6
  %849 = getelementptr inbounds i8, ptr %486, i64 %820
  %850 = load i8, ptr %849, align 1, !tbaa !32
  %851 = zext i8 %850 to i32
  %852 = getelementptr inbounds i8, ptr %383, i64 1452
  store i32 %851, ptr %852, align 4, !tbaa !6
  %853 = getelementptr inbounds i8, ptr %487, i64 %820
  %854 = load i8, ptr %853, align 1, !tbaa !32
  %855 = zext i8 %854 to i32
  %856 = getelementptr inbounds i8, ptr %383, i64 1200
  store i32 %855, ptr %856, align 4, !tbaa !6
  %857 = getelementptr inbounds i8, ptr %488, i64 %820
  %858 = load i8, ptr %857, align 1, !tbaa !32
  %859 = zext i8 %858 to i32
  %860 = getelementptr inbounds i8, ptr %383, i64 1456
  store i32 %859, ptr %860, align 4, !tbaa !6
  %861 = getelementptr inbounds i8, ptr %489, i64 %820
  %862 = load i8, ptr %861, align 1, !tbaa !32
  %863 = zext i8 %862 to i32
  %864 = getelementptr inbounds i8, ptr %383, i64 1204
  store i32 %863, ptr %864, align 4, !tbaa !6
  %865 = getelementptr inbounds i8, ptr %490, i64 %820
  %866 = load i8, ptr %865, align 1, !tbaa !32
  %867 = zext i8 %866 to i32
  %868 = getelementptr inbounds i8, ptr %383, i64 1460
  store i32 %867, ptr %868, align 4, !tbaa !6
  %869 = getelementptr inbounds i8, ptr %491, i64 %820
  %870 = load i8, ptr %869, align 1, !tbaa !32
  %871 = zext i8 %870 to i32
  %872 = getelementptr inbounds i8, ptr %383, i64 1208
  store i32 %871, ptr %872, align 4, !tbaa !6
  %873 = getelementptr inbounds i8, ptr %492, i64 %820
  %874 = load i8, ptr %873, align 1, !tbaa !32
  %875 = zext i8 %874 to i32
  %876 = getelementptr inbounds i8, ptr %383, i64 1464
  store i32 %875, ptr %876, align 4, !tbaa !6
  %877 = getelementptr inbounds i8, ptr %493, i64 %820
  %878 = load i8, ptr %877, align 1, !tbaa !32
  %879 = zext i8 %878 to i32
  %880 = getelementptr inbounds i8, ptr %383, i64 1212
  store i32 %879, ptr %880, align 4, !tbaa !6
  %881 = getelementptr inbounds i8, ptr %494, i64 %820
  %882 = load i8, ptr %881, align 1, !tbaa !32
  %883 = zext i8 %882 to i32
  %884 = getelementptr inbounds i8, ptr %383, i64 1468
  store i32 %883, ptr %884, align 4, !tbaa !6
  %885 = mul nsw i64 %327, %496
  %886 = getelementptr inbounds i8, ptr %476, i64 %885
  %887 = load i8, ptr %886, align 1, !tbaa !32
  %888 = zext i8 %887 to i32
  %889 = getelementptr inbounds i8, ptr %383, i64 1216
  store i32 %888, ptr %889, align 4, !tbaa !6
  %890 = getelementptr inbounds i8, ptr %479, i64 %885
  %891 = load i8, ptr %890, align 1, !tbaa !32
  %892 = zext i8 %891 to i32
  %893 = getelementptr inbounds i8, ptr %383, i64 1472
  store i32 %892, ptr %893, align 4, !tbaa !6
  %894 = getelementptr inbounds i8, ptr %481, i64 %885
  %895 = load i8, ptr %894, align 1, !tbaa !32
  %896 = zext i8 %895 to i32
  %897 = getelementptr inbounds i8, ptr %383, i64 1220
  store i32 %896, ptr %897, align 4, !tbaa !6
  %898 = getelementptr inbounds i8, ptr %482, i64 %885
  %899 = load i8, ptr %898, align 1, !tbaa !32
  %900 = zext i8 %899 to i32
  %901 = getelementptr inbounds i8, ptr %383, i64 1476
  store i32 %900, ptr %901, align 4, !tbaa !6
  %902 = getelementptr inbounds i8, ptr %483, i64 %885
  %903 = load i8, ptr %902, align 1, !tbaa !32
  %904 = zext i8 %903 to i32
  %905 = getelementptr inbounds i8, ptr %383, i64 1224
  store i32 %904, ptr %905, align 4, !tbaa !6
  %906 = getelementptr inbounds i8, ptr %484, i64 %885
  %907 = load i8, ptr %906, align 1, !tbaa !32
  %908 = zext i8 %907 to i32
  %909 = getelementptr inbounds i8, ptr %383, i64 1480
  store i32 %908, ptr %909, align 4, !tbaa !6
  %910 = getelementptr inbounds i8, ptr %485, i64 %885
  %911 = load i8, ptr %910, align 1, !tbaa !32
  %912 = zext i8 %911 to i32
  %913 = getelementptr inbounds i8, ptr %383, i64 1228
  store i32 %912, ptr %913, align 4, !tbaa !6
  %914 = getelementptr inbounds i8, ptr %486, i64 %885
  %915 = load i8, ptr %914, align 1, !tbaa !32
  %916 = zext i8 %915 to i32
  %917 = getelementptr inbounds i8, ptr %383, i64 1484
  store i32 %916, ptr %917, align 4, !tbaa !6
  %918 = getelementptr inbounds i8, ptr %487, i64 %885
  %919 = load i8, ptr %918, align 1, !tbaa !32
  %920 = zext i8 %919 to i32
  %921 = getelementptr inbounds i8, ptr %383, i64 1232
  store i32 %920, ptr %921, align 4, !tbaa !6
  %922 = getelementptr inbounds i8, ptr %488, i64 %885
  %923 = load i8, ptr %922, align 1, !tbaa !32
  %924 = zext i8 %923 to i32
  %925 = getelementptr inbounds i8, ptr %383, i64 1488
  store i32 %924, ptr %925, align 4, !tbaa !6
  %926 = getelementptr inbounds i8, ptr %489, i64 %885
  %927 = load i8, ptr %926, align 1, !tbaa !32
  %928 = zext i8 %927 to i32
  %929 = getelementptr inbounds i8, ptr %383, i64 1236
  store i32 %928, ptr %929, align 4, !tbaa !6
  %930 = getelementptr inbounds i8, ptr %490, i64 %885
  %931 = load i8, ptr %930, align 1, !tbaa !32
  %932 = zext i8 %931 to i32
  %933 = getelementptr inbounds i8, ptr %383, i64 1492
  store i32 %932, ptr %933, align 4, !tbaa !6
  %934 = getelementptr inbounds i8, ptr %491, i64 %885
  %935 = load i8, ptr %934, align 1, !tbaa !32
  %936 = zext i8 %935 to i32
  %937 = getelementptr inbounds i8, ptr %383, i64 1240
  store i32 %936, ptr %937, align 4, !tbaa !6
  %938 = getelementptr inbounds i8, ptr %492, i64 %885
  %939 = load i8, ptr %938, align 1, !tbaa !32
  %940 = zext i8 %939 to i32
  %941 = getelementptr inbounds i8, ptr %383, i64 1496
  store i32 %940, ptr %941, align 4, !tbaa !6
  %942 = getelementptr inbounds i8, ptr %493, i64 %885
  %943 = load i8, ptr %942, align 1, !tbaa !32
  %944 = zext i8 %943 to i32
  %945 = getelementptr inbounds i8, ptr %383, i64 1244
  store i32 %944, ptr %945, align 4, !tbaa !6
  %946 = getelementptr inbounds i8, ptr %494, i64 %885
  %947 = load i8, ptr %946, align 1, !tbaa !32
  %948 = zext i8 %947 to i32
  %949 = getelementptr inbounds i8, ptr %383, i64 1500
  store i32 %948, ptr %949, align 4, !tbaa !6
  %950 = mul nsw i64 %328, %496
  %951 = getelementptr inbounds i8, ptr %476, i64 %950
  %952 = load i8, ptr %951, align 1, !tbaa !32
  %953 = zext i8 %952 to i32
  %954 = getelementptr inbounds i8, ptr %383, i64 1248
  store i32 %953, ptr %954, align 4, !tbaa !6
  %955 = getelementptr inbounds i8, ptr %479, i64 %950
  %956 = load i8, ptr %955, align 1, !tbaa !32
  %957 = zext i8 %956 to i32
  %958 = getelementptr inbounds i8, ptr %383, i64 1504
  store i32 %957, ptr %958, align 4, !tbaa !6
  %959 = getelementptr inbounds i8, ptr %481, i64 %950
  %960 = load i8, ptr %959, align 1, !tbaa !32
  %961 = zext i8 %960 to i32
  %962 = getelementptr inbounds i8, ptr %383, i64 1252
  store i32 %961, ptr %962, align 4, !tbaa !6
  %963 = getelementptr inbounds i8, ptr %482, i64 %950
  %964 = load i8, ptr %963, align 1, !tbaa !32
  %965 = zext i8 %964 to i32
  %966 = getelementptr inbounds i8, ptr %383, i64 1508
  store i32 %965, ptr %966, align 4, !tbaa !6
  %967 = getelementptr inbounds i8, ptr %483, i64 %950
  %968 = load i8, ptr %967, align 1, !tbaa !32
  %969 = zext i8 %968 to i32
  %970 = getelementptr inbounds i8, ptr %383, i64 1256
  store i32 %969, ptr %970, align 4, !tbaa !6
  %971 = getelementptr inbounds i8, ptr %484, i64 %950
  %972 = load i8, ptr %971, align 1, !tbaa !32
  %973 = zext i8 %972 to i32
  %974 = getelementptr inbounds i8, ptr %383, i64 1512
  store i32 %973, ptr %974, align 4, !tbaa !6
  %975 = getelementptr inbounds i8, ptr %485, i64 %950
  %976 = load i8, ptr %975, align 1, !tbaa !32
  %977 = zext i8 %976 to i32
  %978 = getelementptr inbounds i8, ptr %383, i64 1260
  store i32 %977, ptr %978, align 4, !tbaa !6
  %979 = getelementptr inbounds i8, ptr %486, i64 %950
  %980 = load i8, ptr %979, align 1, !tbaa !32
  %981 = zext i8 %980 to i32
  %982 = getelementptr inbounds i8, ptr %383, i64 1516
  store i32 %981, ptr %982, align 4, !tbaa !6
  %983 = getelementptr inbounds i8, ptr %487, i64 %950
  %984 = load i8, ptr %983, align 1, !tbaa !32
  %985 = zext i8 %984 to i32
  %986 = getelementptr inbounds i8, ptr %383, i64 1264
  store i32 %985, ptr %986, align 4, !tbaa !6
  %987 = getelementptr inbounds i8, ptr %488, i64 %950
  %988 = load i8, ptr %987, align 1, !tbaa !32
  %989 = zext i8 %988 to i32
  %990 = getelementptr inbounds i8, ptr %383, i64 1520
  store i32 %989, ptr %990, align 4, !tbaa !6
  %991 = getelementptr inbounds i8, ptr %489, i64 %950
  %992 = load i8, ptr %991, align 1, !tbaa !32
  %993 = zext i8 %992 to i32
  %994 = getelementptr inbounds i8, ptr %383, i64 1268
  store i32 %993, ptr %994, align 4, !tbaa !6
  %995 = getelementptr inbounds i8, ptr %490, i64 %950
  %996 = load i8, ptr %995, align 1, !tbaa !32
  %997 = zext i8 %996 to i32
  %998 = getelementptr inbounds i8, ptr %383, i64 1524
  store i32 %997, ptr %998, align 4, !tbaa !6
  %999 = getelementptr inbounds i8, ptr %491, i64 %950
  %1000 = load i8, ptr %999, align 1, !tbaa !32
  %1001 = zext i8 %1000 to i32
  %1002 = getelementptr inbounds i8, ptr %383, i64 1272
  store i32 %1001, ptr %1002, align 4, !tbaa !6
  %1003 = getelementptr inbounds i8, ptr %492, i64 %950
  %1004 = load i8, ptr %1003, align 1, !tbaa !32
  %1005 = zext i8 %1004 to i32
  %1006 = getelementptr inbounds i8, ptr %383, i64 1528
  store i32 %1005, ptr %1006, align 4, !tbaa !6
  %1007 = getelementptr inbounds i8, ptr %493, i64 %950
  %1008 = load i8, ptr %1007, align 1, !tbaa !32
  %1009 = zext i8 %1008 to i32
  %1010 = getelementptr inbounds i8, ptr %383, i64 1276
  store i32 %1009, ptr %1010, align 4, !tbaa !6
  %1011 = getelementptr inbounds i8, ptr %494, i64 %950
  %1012 = load i8, ptr %1011, align 1, !tbaa !32
  %1013 = zext i8 %1012 to i32
  %1014 = getelementptr inbounds i8, ptr %383, i64 1532
  store i32 %1013, ptr %1014, align 4, !tbaa !6
  br label %1015

1015:                                             ; preds = %473, %377
  %1016 = phi ptr [ %381, %377 ], [ %383, %473 ]
  %1017 = call ptr @MB_Encode(ptr noundef %1016, i32 noundef signext %363, i32 noundef signext %365)
  %1018 = call signext i32 @FindCBP(ptr noundef %1017, i32 noundef signext %365, i32 noundef signext 64) #15
  %1019 = icmp eq i32 %1018, 0
  %1020 = xor i1 %1019, true
  %1021 = or i1 %374, %1020
  br i1 %1021, label %1023, label %1022

1022:                                             ; preds = %1015
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 4 dereferenceable(1536) %1016, i8 0, i64 1536, i1 false)
  br label %1025

1023:                                             ; preds = %1015
  %1024 = call signext i32 @MB_Decode(ptr noundef %1017, ptr noundef %1016, i32 noundef signext %363, i32 noundef signext %365)
  br label %1025

1025:                                             ; preds = %1023, %1022
  %1026 = load i32, ptr %264, align 4, !tbaa !23
  %1027 = trunc i64 %332 to i32
  %1028 = shl i32 %1027, 4
  %1029 = call ptr @MB_Recon_P(ptr noundef nonnull %137, ptr noundef %140, ptr noundef %1016, i32 noundef signext %1028, i32 noundef signext %330, ptr noundef nonnull %11, i32 noundef signext %1026) #15
  call void @Clip(ptr noundef %1029)
  call void @free(ptr noundef %1016) #15
  %1030 = load i32, ptr %264, align 4, !tbaa !23
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1070, label %1032

1032:                                             ; preds = %1025
  %1033 = load i32, ptr %265, align 4, !tbaa !33
  %1034 = call ptr @Predict_B(ptr noundef %1, ptr noundef nonnull %137, ptr noundef %140, i32 noundef signext %1028, i32 noundef signext %330, ptr noundef nonnull %11, ptr noundef %1029, i32 noundef signext %5, i32 noundef signext %1033) #15
  %1035 = icmp eq i32 %363, 0
  br i1 %1035, label %1047, label %1036

1036:                                             ; preds = %1032
  %1037 = load i32, ptr %266, align 4, !tbaa !34
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds [4 x i32], ptr @__const.CodeOneOrTwo.bquant, i64 0, i64 %1038
  %1040 = load i32, ptr %1039, align 4, !tbaa !6
  %1041 = mul nsw i32 %1040, %363
  %1042 = icmp slt i32 %1041, 128
  %1043 = sdiv i32 %1041, 4
  %1044 = icmp slt i32 %1041, 4
  %1045 = select i1 %1042, i32 %1043, i32 31
  %1046 = select i1 %1044, i32 1, i32 %1045
  br label %1047

1047:                                             ; preds = %1036, %1032
  %1048 = phi i32 [ 0, %1032 ], [ %1046, %1036 ]
  %1049 = call ptr @MB_Encode(ptr noundef %1034, i32 noundef signext %1048, i32 noundef signext 0)
  %1050 = call signext i32 @FindCBP(ptr noundef %1049, i32 noundef signext 0, i32 noundef signext 64) #15
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1054, label %1052

1052:                                             ; preds = %1047
  %1053 = call signext i32 @MB_Decode(ptr noundef %1049, ptr noundef %1034, i32 noundef signext %1048, i32 noundef signext 0)
  br label %1055

1054:                                             ; preds = %1047
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 4 dereferenceable(1536) %1034, i8 0, i64 1536, i1 false)
  br label %1055

1055:                                             ; preds = %1054, %1052
  %1056 = load i32, ptr %265, align 4, !tbaa !33
  %1057 = call ptr @MB_Recon_B(ptr noundef nonnull %137, ptr noundef %1034, ptr noundef %140, i32 noundef signext %1028, i32 noundef signext %330, ptr noundef nonnull %11, ptr noundef %1029, i32 noundef signext %5, i32 noundef signext %1056) #15
  call void @Clip(ptr noundef %1057)
  br i1 %1051, label %1058, label %1068

1058:                                             ; preds = %1055
  %1059 = getelementptr inbounds [73 x [90 x ptr]], ptr %268, i64 0, i64 %317, i64 %342
  %1060 = load ptr, ptr %1059, align 8, !tbaa !10
  %1061 = load i32, ptr %1060, align 4, !tbaa !35
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1063, label %1067

1063:                                             ; preds = %1058
  %1064 = getelementptr inbounds i8, ptr %1060, i64 4
  %1065 = load i32, ptr %1064, align 4, !tbaa !36
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1068, label %1067

1067:                                             ; preds = %1063, %1058
  br label %1068

1068:                                             ; preds = %1063, %1055, %1067
  %1069 = phi i32 [ 1, %1067 ], [ 2, %1055 ], [ 0, %1063 ]
  store i32 %1069, ptr %267, align 4, !tbaa !37
  call void @free(ptr noundef %1034) #15
  br label %1073

1070:                                             ; preds = %1025
  %1071 = getelementptr inbounds [73 x [90 x ptr]], ptr %268, i64 0, i64 %317, i64 %342
  %1072 = load ptr, ptr %1071, align 8, !tbaa !10
  call void @ZeroVec(ptr noundef %1072) #15
  br label %1073

1073:                                             ; preds = %1070, %1068
  %1074 = phi ptr [ %1057, %1068 ], [ %338, %1070 ]
  %1075 = phi ptr [ %1049, %1068 ], [ %337, %1070 ]
  %1076 = phi i32 [ %1050, %1068 ], [ %336, %1070 ]
  %1077 = icmp eq i32 %1076, 0
  %1078 = select i1 %1019, i1 %1077, i1 false
  br i1 %1078, label %1079, label %1097

1079:                                             ; preds = %1073
  %1080 = load ptr, ptr %364, align 8, !tbaa !10
  %1081 = call signext i32 @EqualVec(ptr noundef %1080, ptr noundef nonnull %12) #15
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1097, label %1083

1083:                                             ; preds = %1079
  %1084 = getelementptr inbounds [73 x [90 x ptr]], ptr %268, i64 0, i64 %317, i64 %342
  %1085 = load ptr, ptr %1084, align 8, !tbaa !10
  %1086 = call signext i32 @EqualVec(ptr noundef %1085, ptr noundef nonnull %12) #15
  %1087 = icmp eq i32 %1086, 0
  %1088 = or i1 %374, %1087
  br i1 %1088, label %1097, label %1089

1089:                                             ; preds = %1083
  br i1 %373, label %1090, label %1091

1090:                                             ; preds = %1089
  store i32 0, ptr %260, align 4, !tbaa !30
  br label %1091

1091:                                             ; preds = %1090, %1089
  %1092 = phi i32 [ %333, %1090 ], [ %363, %1089 ]
  %1093 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !6
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1095, label %1096

1095:                                             ; preds = %1091
  call void @CountBitsMB(i32 noundef signext 0, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext 0, ptr noundef nonnull %7, ptr noundef %6) #15
  br label %1144

1096:                                             ; preds = %1091
  call void @Count_sac_BitsMB(i32 noundef signext 0, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext 0, ptr noundef nonnull %7, ptr noundef %6) #15
  br label %1144

1097:                                             ; preds = %1083, %1079, %1073
  %1098 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !6
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %1122

1100:                                             ; preds = %1097
  call void @CountBitsMB(i32 noundef signext %365, i32 noundef signext 0, i32 noundef signext %1018, i32 noundef signext %1076, ptr noundef nonnull %7, ptr noundef %6) #15
  br i1 %374, label %1104, label %1101

1101:                                             ; preds = %1100
  %1102 = load i32, ptr %269, align 4, !tbaa !38
  %1103 = add nsw i32 %1102, 1
  store i32 %1103, ptr %269, align 4, !tbaa !38
  call void @CountBitsVectors(ptr noundef nonnull %11, ptr noundef %6, i32 noundef signext %371, i32 noundef signext %321, i32 noundef signext %365, i32 noundef signext %313, ptr noundef nonnull %7) #15
  br label %1114

1104:                                             ; preds = %1100
  br i1 %375, label %1105, label %1108

1105:                                             ; preds = %1104
  %1106 = load i32, ptr %271, align 4, !tbaa !39
  %1107 = add nsw i32 %1106, 1
  store i32 %1107, ptr %271, align 4, !tbaa !39
  call void @CountBitsVectors(ptr noundef nonnull %11, ptr noundef %6, i32 noundef signext %371, i32 noundef signext %321, i32 noundef signext 2, i32 noundef signext %313, ptr noundef nonnull %7) #15
  br label %1114

1108:                                             ; preds = %1104
  %1109 = load i32, ptr %270, align 4, !tbaa !40
  %1110 = add nsw i32 %1109, 1
  store i32 %1110, ptr %270, align 4, !tbaa !40
  %1111 = load i32, ptr %264, align 4, !tbaa !23
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1114, label %1113

1113:                                             ; preds = %1108
  call void @CountBitsVectors(ptr noundef nonnull %11, ptr noundef nonnull %6, i32 noundef signext %371, i32 noundef signext %321, i32 noundef signext %365, i32 noundef signext %313, ptr noundef nonnull %7) #15
  br label %1114

1114:                                             ; preds = %1105, %1113, %1108, %1101
  %1115 = icmp ne i32 %1018, 0
  %1116 = add i32 %365, -3
  %1117 = icmp ult i32 %1116, 2
  %1118 = or i1 %1117, %1115
  br i1 %1118, label %1119, label %1120

1119:                                             ; preds = %1114
  call void @CountBitsCoeff(ptr noundef %1017, i32 noundef signext %365, i32 noundef signext %1018, ptr noundef nonnull %6, i32 noundef signext 64) #15
  br label %1120

1120:                                             ; preds = %1114, %1119
  br i1 %1077, label %1144, label %1121

1121:                                             ; preds = %1120
  call void @CountBitsCoeff(ptr noundef %1075, i32 noundef signext 0, i32 noundef signext %1076, ptr noundef nonnull %6, i32 noundef signext 64) #15
  br label %1144

1122:                                             ; preds = %1097
  call void @Count_sac_BitsMB(i32 noundef signext %365, i32 noundef signext 0, i32 noundef signext %1018, i32 noundef signext %1076, ptr noundef nonnull %7, ptr noundef %6) #15
  br i1 %374, label %1126, label %1123

1123:                                             ; preds = %1122
  %1124 = load i32, ptr %269, align 4, !tbaa !38
  %1125 = add nsw i32 %1124, 1
  store i32 %1125, ptr %269, align 4, !tbaa !38
  call void @Count_sac_BitsVectors(ptr noundef nonnull %11, ptr noundef %6, i32 noundef signext %371, i32 noundef signext %321, i32 noundef signext %365, i32 noundef signext %313, ptr noundef nonnull %7) #15
  br label %1136

1126:                                             ; preds = %1122
  br i1 %375, label %1127, label %1130

1127:                                             ; preds = %1126
  %1128 = load i32, ptr %271, align 4, !tbaa !39
  %1129 = add nsw i32 %1128, 1
  store i32 %1129, ptr %271, align 4, !tbaa !39
  call void @Count_sac_BitsVectors(ptr noundef nonnull %11, ptr noundef %6, i32 noundef signext %371, i32 noundef signext %321, i32 noundef signext 2, i32 noundef signext %313, ptr noundef nonnull %7) #15
  br label %1136

1130:                                             ; preds = %1126
  %1131 = load i32, ptr %270, align 4, !tbaa !40
  %1132 = add nsw i32 %1131, 1
  store i32 %1132, ptr %270, align 4, !tbaa !40
  %1133 = load i32, ptr %264, align 4, !tbaa !23
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1136, label %1135

1135:                                             ; preds = %1130
  call void @Count_sac_BitsVectors(ptr noundef nonnull %11, ptr noundef nonnull %6, i32 noundef signext %371, i32 noundef signext %321, i32 noundef signext %365, i32 noundef signext %313, ptr noundef nonnull %7) #15
  br label %1136

1136:                                             ; preds = %1127, %1135, %1130, %1123
  %1137 = icmp ne i32 %1018, 0
  %1138 = add i32 %365, -3
  %1139 = icmp ult i32 %1138, 2
  %1140 = or i1 %1139, %1137
  br i1 %1140, label %1141, label %1142

1141:                                             ; preds = %1136
  call void @Count_sac_BitsCoeff(ptr noundef %1017, i32 noundef signext %365, i32 noundef signext %1018, ptr noundef nonnull %6, i32 noundef signext 64) #15
  br label %1142

1142:                                             ; preds = %1136, %1141
  br i1 %1077, label %1144, label %1143

1143:                                             ; preds = %1142
  call void @Count_sac_BitsCoeff(ptr noundef %1075, i32 noundef signext 0, i32 noundef signext %1076, ptr noundef nonnull %6, i32 noundef signext 64) #15
  br label %1144

1144:                                             ; preds = %1121, %1120, %1143, %1142, %1095, %1096
  %1145 = phi i32 [ %333, %1096 ], [ %333, %1095 ], [ %363, %1142 ], [ %363, %1143 ], [ %363, %1120 ], [ %363, %1121 ]
  %1146 = phi i32 [ %1092, %1096 ], [ %1092, %1095 ], [ %363, %1142 ], [ %363, %1143 ], [ %363, %1120 ], [ %363, %1121 ]
  %1147 = add nsw i32 %334, 1
  %1148 = sitofp i32 %1146 to float
  %1149 = fadd float %335, %1148
  %1150 = load i32, ptr %264, align 4, !tbaa !23
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1153, label %1152

1152:                                             ; preds = %1144
  call void @ReconImage(i32 noundef signext %371, i32 noundef signext %321, ptr noundef %1074, ptr noundef %8)
  br label %1153

1153:                                             ; preds = %1152, %1144
  call void @ReconImage(i32 noundef signext %371, i32 noundef signext %321, ptr noundef %1029, ptr noundef %9)
  call void @free(ptr noundef %1029) #15
  call void @free(ptr noundef %1017) #15
  %1154 = load i32, ptr %264, align 4, !tbaa !23
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1157, label %1156

1156:                                             ; preds = %1153
  call void @free(ptr noundef %1075) #15
  call void @free(ptr noundef %1074) #15
  br label %1157

1157:                                             ; preds = %1153, %1156
  %1158 = load i32, ptr @pels, align 4, !tbaa !6
  %1159 = sdiv i32 %1158, 16
  %1160 = sext i32 %1159 to i64
  %1161 = icmp slt i64 %342, %1160
  br i1 %1161, label %331, label %1162

1162:                                             ; preds = %1157, %312
  %1163 = phi ptr [ %280, %312 ], [ %1074, %1157 ]
  %1164 = phi ptr [ %279, %312 ], [ %1075, %1157 ]
  %1165 = phi i32 [ %278, %312 ], [ %1076, %1157 ]
  %1166 = phi float [ %277, %312 ], [ %1149, %1157 ]
  %1167 = phi i32 [ %276, %312 ], [ %1147, %1157 ]
  %1168 = phi i32 [ %314, %312 ], [ %1145, %1157 ]
  %1169 = load i32, ptr @lines, align 4, !tbaa !6
  %1170 = sdiv i32 %1169, 16
  %1171 = sext i32 %1170 to i64
  %1172 = icmp slt i64 %317, %1171
  br i1 %1172, label %272, label %1173

1173:                                             ; preds = %1162
  %1174 = sitofp i32 %1167 to float
  %1175 = fdiv float %1166, %1174
  br label %1176

1176:                                             ; preds = %1173, %251
  %1177 = phi i32 [ %253, %251 ], [ %1169, %1173 ]
  %1178 = phi float [ 0x7FF8000000000000, %251 ], [ %1175, %1173 ]
  %1179 = getelementptr inbounds i8, ptr %7, i64 76
  store float %1178, ptr %1179, align 4, !tbaa !25
  call void @free(ptr noundef %139) #15
  %1180 = load i32, ptr @mv_outside_frame, align 4, !tbaa !6
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1184, label %1182

1182:                                             ; preds = %1176
  call void @free(ptr noundef %137) #15
  call void @FreeImage(ptr noundef %138) #15
  %1183 = load i32, ptr @lines, align 4, !tbaa !6
  br label %1184

1184:                                             ; preds = %1182, %1176
  %1185 = phi i32 [ %1183, %1182 ], [ %1177, %1176 ]
  %1186 = icmp slt i32 %1185, 0
  br i1 %1186, label %1222, label %1187

1187:                                             ; preds = %1184
  %1188 = load i32, ptr @pels, align 4, !tbaa !6
  br label %1189

1189:                                             ; preds = %1187, %1215
  %1190 = phi i32 [ %1185, %1187 ], [ %1216, %1215 ]
  %1191 = phi i32 [ %1188, %1187 ], [ %1217, %1215 ]
  %1192 = phi i64 [ 0, %1187 ], [ %1218, %1215 ]
  %1193 = icmp sgt i32 %1191, -17
  br i1 %1193, label %1194, label %1215

1194:                                             ; preds = %1189, %1194
  %1195 = phi i64 [ %1208, %1194 ], [ 0, %1189 ]
  %1196 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 0, i64 %1192, i64 %1195
  %1197 = load ptr, ptr %1196, align 8, !tbaa !10
  call void @free(ptr noundef %1197) #15
  %1198 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 1, i64 %1192, i64 %1195
  %1199 = load ptr, ptr %1198, align 8, !tbaa !10
  call void @free(ptr noundef %1199) #15
  %1200 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 2, i64 %1192, i64 %1195
  %1201 = load ptr, ptr %1200, align 8, !tbaa !10
  call void @free(ptr noundef %1201) #15
  %1202 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 3, i64 %1192, i64 %1195
  %1203 = load ptr, ptr %1202, align 8, !tbaa !10
  call void @free(ptr noundef %1203) #15
  %1204 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 4, i64 %1192, i64 %1195
  %1205 = load ptr, ptr %1204, align 8, !tbaa !10
  call void @free(ptr noundef %1205) #15
  %1206 = getelementptr inbounds [6 x [73 x [90 x ptr]]], ptr %11, i64 0, i64 5, i64 %1192, i64 %1195
  %1207 = load ptr, ptr %1206, align 8, !tbaa !10
  call void @free(ptr noundef %1207) #15
  %1208 = add nuw nsw i64 %1195, 1
  %1209 = load i32, ptr @pels, align 4, !tbaa !6
  %1210 = ashr i32 %1209, 4
  %1211 = sext i32 %1210 to i64
  %1212 = icmp sgt i64 %1195, %1211
  br i1 %1212, label %1213, label %1194

1213:                                             ; preds = %1194
  %1214 = load i32, ptr @lines, align 4, !tbaa !6
  br label %1215

1215:                                             ; preds = %1213, %1189
  %1216 = phi i32 [ %1214, %1213 ], [ %1190, %1189 ]
  %1217 = phi i32 [ %1209, %1213 ], [ %1191, %1189 ]
  %1218 = add nuw nsw i64 %1192, 1
  %1219 = ashr i32 %1216, 4
  %1220 = sext i32 %1219 to i64
  %1221 = icmp slt i64 %1192, %1220
  br i1 %1221, label %1189, label %1222

1222:                                             ; preds = %1215, %1184
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 315360, ptr nonnull %11) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @ZeroBits(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @MakeEdgeImage(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #7 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %5
  %8 = sext i32 %2 to i64
  %9 = shl i32 %4, 1
  %10 = add nsw i32 %9, %2
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi i32 [ 0, %7 ], [ %18, %12 ]
  %14 = phi ptr [ %0, %7 ], [ %17, %12 ]
  %15 = phi ptr [ %1, %7 ], [ %16, %12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %14, i64 %8, i1 false)
  %16 = getelementptr inbounds i8, ptr %15, i64 %11
  %17 = getelementptr inbounds i8, ptr %14, i64 %8
  %18 = add nuw nsw i32 %13, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %12

20:                                               ; preds = %12
  br i1 %6, label %24, label %21

21:                                               ; preds = %5, %20
  %22 = shl i32 %4, 1
  %23 = add nsw i32 %22, %2
  br label %55

24:                                               ; preds = %20
  %25 = icmp sgt i32 %4, 0
  %26 = sext i32 %2 to i64
  %27 = shl i32 %4, 1
  %28 = add nsw i32 %27, %2
  %29 = sext i32 %28 to i64
  br i1 %25, label %30, label %141

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8, ptr %1, i64 -1
  %32 = zext nneg i32 %4 to i64
  br label %33

33:                                               ; preds = %30, %50
  %34 = phi i32 [ %53, %50 ], [ 0, %30 ]
  %35 = phi ptr [ %52, %50 ], [ %0, %30 ]
  %36 = phi ptr [ %51, %50 ], [ %31, %30 ]
  %37 = getelementptr i8, ptr %35, i64 -1
  %38 = getelementptr i8, ptr %37, i64 %26
  %39 = getelementptr inbounds i8, ptr %36, i64 %26
  %40 = getelementptr inbounds i8, ptr %39, i64 1
  br label %41

41:                                               ; preds = %33, %41
  %42 = phi i64 [ 0, %33 ], [ %48, %41 ]
  %43 = load i8, ptr %35, align 1, !tbaa !32
  %44 = sub nsw i64 0, %42
  %45 = getelementptr inbounds i8, ptr %36, i64 %44
  store i8 %43, ptr %45, align 1, !tbaa !32
  %46 = load i8, ptr %38, align 1, !tbaa !32
  %47 = getelementptr inbounds i8, ptr %40, i64 %42
  store i8 %46, ptr %47, align 1, !tbaa !32
  %48 = add nuw nsw i64 %42, 1
  %49 = icmp eq i64 %48, %32
  br i1 %49, label %50, label %41

50:                                               ; preds = %41
  %51 = getelementptr inbounds i8, ptr %36, i64 %29
  %52 = getelementptr inbounds i8, ptr %35, i64 %26
  %53 = add nuw nsw i32 %34, 1
  %54 = icmp eq i32 %53, %3
  br i1 %54, label %55, label %33

55:                                               ; preds = %50, %21
  %56 = phi i32 [ %23, %21 ], [ %28, %50 ]
  %57 = phi i32 [ %22, %21 ], [ %27, %50 ]
  %58 = add nsw i32 %3, -1
  %59 = mul nsw i32 %58, %2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  %62 = icmp sgt i32 %4, 0
  br i1 %62, label %63, label %141

63:                                               ; preds = %55
  %64 = sext i32 %56 to i64
  %65 = sub nsw i64 0, %64
  %66 = icmp sgt i32 %2, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = sext i32 %2 to i64
  br label %95

69:                                               ; preds = %63
  %70 = mul nsw i32 %56, %58
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %1, i64 %71
  %73 = zext nneg i32 %2 to i64
  br label %74

74:                                               ; preds = %69, %90
  %75 = phi i32 [ %91, %90 ], [ 0, %69 ]
  %76 = phi ptr [ %79, %90 ], [ %72, %69 ]
  %77 = phi ptr [ %78, %90 ], [ %1, %69 ]
  %78 = getelementptr inbounds i8, ptr %77, i64 %65
  %79 = getelementptr inbounds i8, ptr %76, i64 %64
  br label %80

80:                                               ; preds = %74, %80
  %81 = phi i64 [ 0, %74 ], [ %88, %80 ]
  %82 = getelementptr inbounds i8, ptr %0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !32
  %84 = getelementptr inbounds i8, ptr %78, i64 %81
  store i8 %83, ptr %84, align 1, !tbaa !32
  %85 = getelementptr inbounds i8, ptr %61, i64 %81
  %86 = load i8, ptr %85, align 1, !tbaa !32
  %87 = getelementptr inbounds i8, ptr %79, i64 %81
  store i8 %86, ptr %87, align 1, !tbaa !32
  %88 = add nuw nsw i64 %81, 1
  %89 = icmp eq i64 %88, %73
  br i1 %89, label %90, label %80

90:                                               ; preds = %80
  %91 = add nuw nsw i32 %75, 1
  %92 = icmp eq i32 %91, %4
  br i1 %92, label %93, label %74

93:                                               ; preds = %90
  %94 = zext nneg i32 %2 to i64
  br i1 %62, label %95, label %141

95:                                               ; preds = %67, %93
  %96 = phi i64 [ %68, %67 ], [ %94, %93 ]
  %97 = getelementptr inbounds i8, ptr %0, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 -1
  %99 = getelementptr inbounds i8, ptr %61, i64 %96
  %100 = getelementptr inbounds i8, ptr %99, i64 -1
  %101 = mul nsw i32 %56, %3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %1, i64 %102
  %104 = getelementptr inbounds i8, ptr %103, i64 -1
  %105 = getelementptr inbounds i8, ptr %104, i64 %96
  %106 = getelementptr inbounds i8, ptr %105, i64 1
  %107 = getelementptr inbounds i8, ptr %1, i64 %65
  %108 = getelementptr inbounds i8, ptr %107, i64 -1
  %109 = getelementptr inbounds i8, ptr %108, i64 %96
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = sext i32 %57 to i64
  %112 = zext nneg i32 %4 to i64
  br label %113

113:                                              ; preds = %132, %95
  %114 = phi i32 [ 0, %95 ], [ %139, %132 ]
  %115 = phi ptr [ %106, %95 ], [ %138, %132 ]
  %116 = phi ptr [ %104, %95 ], [ %136, %132 ]
  %117 = phi ptr [ %110, %95 ], [ %134, %132 ]
  %118 = phi ptr [ %108, %95 ], [ %133, %132 ]
  br label %119

119:                                              ; preds = %113, %119
  %120 = phi i64 [ 0, %113 ], [ %130, %119 ]
  %121 = load i8, ptr %0, align 1, !tbaa !32
  %122 = sub nsw i64 0, %120
  %123 = getelementptr inbounds i8, ptr %118, i64 %122
  store i8 %121, ptr %123, align 1, !tbaa !32
  %124 = load i8, ptr %98, align 1, !tbaa !32
  %125 = getelementptr inbounds i8, ptr %117, i64 %120
  store i8 %124, ptr %125, align 1, !tbaa !32
  %126 = load i8, ptr %61, align 1, !tbaa !32
  %127 = getelementptr inbounds i8, ptr %116, i64 %122
  store i8 %126, ptr %127, align 1, !tbaa !32
  %128 = load i8, ptr %100, align 1, !tbaa !32
  %129 = getelementptr inbounds i8, ptr %115, i64 %120
  store i8 %128, ptr %129, align 1, !tbaa !32
  %130 = add nuw nsw i64 %120, 1
  %131 = icmp eq i64 %130, %112
  br i1 %131, label %132, label %119

132:                                              ; preds = %119
  %133 = getelementptr inbounds i8, ptr %118, i64 %65
  %134 = getelementptr inbounds i8, ptr %117, i64 %65
  %135 = getelementptr inbounds i8, ptr %116, i64 %96
  %136 = getelementptr inbounds i8, ptr %135, i64 %111
  %137 = getelementptr inbounds i8, ptr %115, i64 %96
  %138 = getelementptr inbounds i8, ptr %137, i64 %111
  %139 = add nuw nsw i32 %114, 1
  %140 = icmp eq i32 %139, %4
  br i1 %140, label %141, label %113

141:                                              ; preds = %132, %24, %55, %93
  ret void
}

; Function Attrs: nofree nounwind
define dso_local noalias noundef ptr @InterpolateImage(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #8 {
  %4 = sext i32 %1 to i64
  %5 = sext i32 %2 to i64
  %6 = shl nsw i64 %4, 2
  %7 = mul i64 %6, %5
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #16
  %9 = add i32 %2, -1
  %10 = icmp sgt i32 %2, 1
  %11 = add i32 %1, -1
  br i1 %10, label %12, label %110

12:                                               ; preds = %3
  %13 = icmp sgt i32 %1, 1
  %14 = shl i32 %1, 1
  %15 = sext i32 %14 to i64
  %16 = shl i32 %1, 2
  %17 = sext i32 %16 to i64
  br i1 %13, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds i8, ptr %0, i64 %4
  %20 = getelementptr inbounds i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !32
  br label %86

22:                                               ; preds = %12
  %23 = zext i32 %11 to i64
  br label %24

24:                                               ; preds = %22, %64
  %25 = phi i32 [ %84, %64 ], [ 0, %22 ]
  %26 = phi ptr [ %65, %64 ], [ %0, %22 ]
  %27 = phi ptr [ %83, %64 ], [ %8, %22 ]
  br label %28

28:                                               ; preds = %24, %28
  %29 = phi i64 [ 0, %24 ], [ %62, %28 ]
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !32
  %32 = trunc i64 %29 to i32
  %33 = shl i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %27, i64 %34
  store i8 %31, ptr %35, align 1, !tbaa !32
  %36 = zext i8 %31 to i16
  %37 = getelementptr inbounds i8, ptr %30, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !32
  %39 = zext i8 %38 to i16
  %40 = add nuw nsw i16 %39, %36
  %41 = add nuw nsw i16 %40, 1
  %42 = lshr i16 %41, 1
  %43 = trunc nuw i16 %42 to i8
  %44 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 %43, ptr %44, align 1, !tbaa !32
  %45 = getelementptr inbounds i8, ptr %30, i64 %4
  %46 = load i8, ptr %45, align 1, !tbaa !32
  %47 = zext i8 %46 to i16
  %48 = add nuw nsw i16 %36, 1
  %49 = add nuw nsw i16 %48, %47
  %50 = lshr i16 %49, 1
  %51 = trunc nuw i16 %50 to i8
  %52 = getelementptr inbounds i8, ptr %35, i64 %15
  store i8 %51, ptr %52, align 1, !tbaa !32
  %53 = getelementptr inbounds i8, ptr %37, i64 %4
  %54 = load i8, ptr %53, align 1, !tbaa !32
  %55 = zext i8 %54 to i16
  %56 = add nuw nsw i16 %40, 2
  %57 = add nuw nsw i16 %56, %47
  %58 = add nuw nsw i16 %57, %55
  %59 = lshr i16 %58, 2
  %60 = trunc nuw i16 %59 to i8
  %61 = getelementptr inbounds i8, ptr %44, i64 %15
  store i8 %60, ptr %61, align 1, !tbaa !32
  %62 = add nuw nsw i64 %29, 1
  %63 = icmp eq i64 %62, %23
  br i1 %63, label %64, label %28

64:                                               ; preds = %28
  %65 = getelementptr inbounds i8, ptr %26, i64 %4
  %66 = getelementptr inbounds i8, ptr %65, i64 -1
  %67 = load i8, ptr %66, align 1, !tbaa !32
  %68 = getelementptr inbounds i8, ptr %27, i64 %15
  %69 = getelementptr inbounds i8, ptr %68, i64 -2
  store i8 %67, ptr %69, align 1, !tbaa !32
  %70 = getelementptr inbounds i8, ptr %68, i64 -1
  store i8 %67, ptr %70, align 1, !tbaa !32
  %71 = zext i8 %67 to i16
  %72 = getelementptr inbounds i8, ptr %65, i64 %4
  %73 = getelementptr inbounds i8, ptr %72, i64 -1
  %74 = load i8, ptr %73, align 1, !tbaa !32
  %75 = zext i8 %74 to i16
  %76 = add nuw nsw i16 %71, 1
  %77 = add nuw nsw i16 %76, %75
  %78 = lshr i16 %77, 1
  %79 = trunc nuw i16 %78 to i8
  %80 = getelementptr inbounds i8, ptr %68, i64 %15
  %81 = getelementptr inbounds i8, ptr %80, i64 -2
  store i8 %79, ptr %81, align 1, !tbaa !32
  %82 = getelementptr inbounds i8, ptr %80, i64 -1
  store i8 %79, ptr %82, align 1, !tbaa !32
  %83 = getelementptr inbounds i8, ptr %27, i64 %17
  %84 = add nuw nsw i32 %25, 1
  %85 = icmp eq i32 %84, %9
  br i1 %85, label %110, label %24

86:                                               ; preds = %18, %86
  %87 = phi i8 [ %98, %86 ], [ %21, %18 ]
  %88 = phi i32 [ %108, %86 ], [ 0, %18 ]
  %89 = phi ptr [ %91, %86 ], [ %0, %18 ]
  %90 = phi ptr [ %107, %86 ], [ %8, %18 ]
  %91 = getelementptr inbounds i8, ptr %89, i64 %4
  %92 = getelementptr inbounds i8, ptr %90, i64 %15
  %93 = getelementptr inbounds i8, ptr %92, i64 -2
  store i8 %87, ptr %93, align 1, !tbaa !32
  %94 = getelementptr inbounds i8, ptr %92, i64 -1
  store i8 %87, ptr %94, align 1, !tbaa !32
  %95 = zext i8 %87 to i16
  %96 = getelementptr inbounds i8, ptr %91, i64 %4
  %97 = getelementptr inbounds i8, ptr %96, i64 -1
  %98 = load i8, ptr %97, align 1, !tbaa !32
  %99 = zext i8 %98 to i16
  %100 = add nuw nsw i16 %95, 1
  %101 = add nuw nsw i16 %100, %99
  %102 = lshr i16 %101, 1
  %103 = trunc nuw i16 %102 to i8
  %104 = getelementptr inbounds i8, ptr %92, i64 %15
  %105 = getelementptr inbounds i8, ptr %104, i64 -2
  store i8 %103, ptr %105, align 1, !tbaa !32
  %106 = getelementptr inbounds i8, ptr %104, i64 -1
  store i8 %103, ptr %106, align 1, !tbaa !32
  %107 = getelementptr inbounds i8, ptr %90, i64 %17
  %108 = add nuw nsw i32 %88, 1
  %109 = icmp eq i32 %108, %9
  br i1 %109, label %110, label %86

110:                                              ; preds = %86, %64, %3
  %111 = phi ptr [ %8, %3 ], [ %83, %64 ], [ %107, %86 ]
  %112 = phi ptr [ %0, %3 ], [ %65, %64 ], [ %91, %86 ]
  %113 = icmp sgt i32 %1, 1
  %114 = shl i32 %1, 1
  %115 = sext i32 %114 to i64
  br i1 %113, label %116, label %140

116:                                              ; preds = %110
  %117 = getelementptr inbounds i8, ptr %111, i64 %115
  %118 = zext i32 %11 to i64
  br label %119

119:                                              ; preds = %116, %119
  %120 = phi i64 [ 0, %116 ], [ %138, %119 ]
  %121 = getelementptr inbounds i8, ptr %112, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !32
  %123 = trunc i64 %120 to i32
  %124 = shl i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %111, i64 %125
  store i8 %122, ptr %126, align 1, !tbaa !32
  %127 = zext i8 %122 to i16
  %128 = getelementptr inbounds i8, ptr %121, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !32
  %130 = zext i8 %129 to i16
  %131 = add nuw nsw i16 %127, 1
  %132 = add nuw nsw i16 %131, %130
  %133 = lshr i16 %132, 1
  %134 = trunc nuw i16 %133 to i8
  %135 = getelementptr inbounds i8, ptr %126, i64 1
  store i8 %134, ptr %135, align 1, !tbaa !32
  %136 = getelementptr inbounds i8, ptr %117, i64 %125
  store i8 %122, ptr %136, align 1, !tbaa !32
  %137 = getelementptr inbounds i8, ptr %136, i64 1
  store i8 %134, ptr %137, align 1, !tbaa !32
  %138 = add nuw nsw i64 %120, 1
  %139 = icmp eq i64 %138, %118
  br i1 %139, label %140, label %119

140:                                              ; preds = %119, %110
  %141 = getelementptr inbounds i8, ptr %112, i64 %4
  %142 = getelementptr inbounds i8, ptr %141, i64 -1
  %143 = load i8, ptr %142, align 1, !tbaa !32
  %144 = getelementptr inbounds i8, ptr %111, i64 %115
  %145 = getelementptr inbounds i8, ptr %144, i64 -2
  store i8 %143, ptr %145, align 1, !tbaa !32
  %146 = getelementptr inbounds i8, ptr %144, i64 -1
  store i8 %143, ptr %146, align 1, !tbaa !32
  %147 = shl i32 %1, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %111, i64 %148
  %150 = getelementptr inbounds i8, ptr %149, i64 -2
  store i8 %143, ptr %150, align 1, !tbaa !32
  %151 = getelementptr inbounds i8, ptr %149, i64 -1
  store i8 %143, ptr %151, align 1, !tbaa !32
  ret ptr %8
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

declare dso_local ptr @InitImage(i32 noundef signext) local_unnamed_addr #4

declare dso_local void @MarkVec(ptr noundef) local_unnamed_addr #4

declare dso_local void @ZeroVec(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @MotionEstimatePicture(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, ptr noundef %4, i32 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x [16 x i32]], align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  %11 = load i32, ptr @lines, align 4, !tbaa !6
  %12 = icmp sgt i32 %11, 15
  br i1 %12, label %13, label %136

13:                                               ; preds = %6
  %14 = icmp eq i32 %5, 0
  %15 = getelementptr inbounds i8, ptr %9, i64 32
  %16 = getelementptr inbounds i8, ptr %9, i64 512
  %17 = getelementptr inbounds i8, ptr %9, i64 544
  br label %18

18:                                               ; preds = %13, %130
  %19 = phi i32 [ %11, %13 ], [ %131, %130 ]
  %20 = phi i64 [ 0, %13 ], [ %31, %130 ]
  %21 = phi i32 [ 2147483647, %13 ], [ %132, %130 ]
  br i1 %14, label %27, label %22

22:                                               ; preds = %18
  %23 = trunc nuw nsw i64 %20 to i32
  %24 = srem i32 %23, %5
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ 0, %18 ], [ %26, %22 ]
  %29 = load i32, ptr @pels, align 4, !tbaa !6
  %30 = icmp sgt i32 %29, 15
  %31 = add nuw nsw i64 %20, 1
  br i1 %30, label %32, label %130

32:                                               ; preds = %27
  %33 = trunc nuw nsw i64 %31 to i32
  %34 = trunc i64 %20 to i32
  %35 = shl i32 %34, 4
  br label %36

36:                                               ; preds = %32, %122
  %37 = phi i64 [ 0, %32 ], [ %39, %122 ]
  %38 = phi i32 [ %21, %32 ], [ %123, %122 ]
  %39 = add nuw nsw i64 %37, 1
  %40 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %41 = getelementptr inbounds [73 x [90 x ptr]], ptr %4, i64 0, i64 %31, i64 %39
  store ptr %40, ptr %41, align 8, !tbaa !10
  %42 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %43 = getelementptr inbounds [73 x [90 x ptr]], ptr %4, i64 1, i64 %31, i64 %39
  store ptr %42, ptr %43, align 8, !tbaa !10
  %44 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %45 = getelementptr inbounds [73 x [90 x ptr]], ptr %4, i64 2, i64 %31, i64 %39
  store ptr %44, ptr %45, align 8, !tbaa !10
  %46 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %47 = getelementptr inbounds [73 x [90 x ptr]], ptr %4, i64 3, i64 %31, i64 %39
  store ptr %46, ptr %47, align 8, !tbaa !10
  %48 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %49 = getelementptr inbounds [73 x [90 x ptr]], ptr %4, i64 4, i64 %31, i64 %39
  store ptr %48, ptr %49, align 8, !tbaa !10
  %50 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %51 = getelementptr inbounds [73 x [90 x ptr]], ptr %4, i64 5, i64 %31, i64 %39
  store ptr %50, ptr %51, align 8, !tbaa !10
  %52 = trunc nuw nsw i64 %39 to i32
  call void @FindPMV(ptr noundef %4, i32 noundef signext %52, i32 noundef signext %33, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef signext 0, i32 noundef signext %28, i32 noundef signext 0) #15
  %53 = load i32, ptr @long_vectors, align 4, !tbaa !6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %36
  %56 = load i32, ptr %7, align 4, !tbaa !6
  %57 = sdiv i32 %56, 2
  %58 = load i32, ptr %8, align 4, !tbaa !6
  %59 = sdiv i32 %58, 2
  br label %60

60:                                               ; preds = %36, %55
  %61 = phi i32 [ %59, %55 ], [ 0, %36 ]
  %62 = phi i32 [ %57, %55 ], [ 0, %36 ]
  %63 = trunc i64 %37 to i32
  %64 = shl i32 %63, 4
  call void @MotionEstimation(ptr noundef %0, ptr noundef %1, i32 noundef signext %64, i32 noundef signext %35, i32 noundef signext %62, i32 noundef signext %61, i32 noundef signext %3, ptr noundef nonnull %4, ptr noundef nonnull %10) #15
  %65 = getelementptr inbounds i8, ptr %40, i64 16
  %66 = load i32, ptr %65, align 4, !tbaa !41
  %67 = load i32, ptr @advanced, align 4, !tbaa !6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds i8, ptr %42, i64 16
  %71 = load i32, ptr %70, align 4, !tbaa !41
  %72 = getelementptr inbounds i8, ptr %44, i64 16
  %73 = load i32, ptr %72, align 4, !tbaa !41
  %74 = add nsw i32 %73, %71
  %75 = getelementptr inbounds i8, ptr %46, i64 16
  %76 = load i32, ptr %75, align 4, !tbaa !41
  %77 = add nsw i32 %74, %76
  %78 = getelementptr inbounds i8, ptr %48, i64 16
  %79 = load i32, ptr %78, align 4, !tbaa !41
  %80 = add nsw i32 %77, %79
  br label %81

81:                                               ; preds = %69, %60
  %82 = phi i32 [ %80, %69 ], [ %38, %60 ]
  %83 = call i32 @llvm.smin.i32(i32 %82, i32 %66)
  %84 = call signext i32 @ChooseMode(ptr noundef %0, i32 noundef signext %64, i32 noundef signext %35, i32 noundef signext %83) #15
  %85 = getelementptr inbounds i8, ptr %40, i64 20
  store i32 %84, ptr %85, align 4, !tbaa !16
  %86 = icmp eq i32 %84, 3
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load ptr, ptr %41, align 8, !tbaa !10
  call void @ZeroVec(ptr noundef %88) #15
  %89 = load ptr, ptr %43, align 8, !tbaa !10
  call void @ZeroVec(ptr noundef %89) #15
  %90 = load ptr, ptr %45, align 8, !tbaa !10
  call void @ZeroVec(ptr noundef %90) #15
  %91 = load ptr, ptr %47, align 8, !tbaa !10
  call void @ZeroVec(ptr noundef %91) #15
  %92 = load ptr, ptr %49, align 8, !tbaa !10
  call void @ZeroVec(ptr noundef %92) #15
  br label %122

93:                                               ; preds = %81
  call void @FindMB(i32 noundef signext %64, i32 noundef signext %35, ptr noundef %0, ptr noundef nonnull %9) #15
  call void @FindHalfPel(i32 noundef signext %64, i32 noundef signext %35, ptr noundef nonnull %40, ptr noundef %2, ptr noundef nonnull %9, i32 noundef signext 16, i32 noundef signext 0) #15
  %94 = load i32, ptr %65, align 4, !tbaa !41
  %95 = load i32, ptr @advanced, align 4, !tbaa !6
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %118, label %97

97:                                               ; preds = %93
  call void @FindHalfPel(i32 noundef signext %64, i32 noundef signext %35, ptr noundef %42, ptr noundef %2, ptr noundef nonnull %9, i32 noundef signext 8, i32 noundef signext 0) #15
  call void @FindHalfPel(i32 noundef signext %64, i32 noundef signext %35, ptr noundef %44, ptr noundef %2, ptr noundef nonnull %15, i32 noundef signext 8, i32 noundef signext 1) #15
  call void @FindHalfPel(i32 noundef signext %64, i32 noundef signext %35, ptr noundef %46, ptr noundef %2, ptr noundef nonnull %16, i32 noundef signext 8, i32 noundef signext 2) #15
  call void @FindHalfPel(i32 noundef signext %64, i32 noundef signext %35, ptr noundef %48, ptr noundef %2, ptr noundef nonnull %17, i32 noundef signext 8, i32 noundef signext 3) #15
  %98 = getelementptr inbounds i8, ptr %42, i64 16
  %99 = load i32, ptr %98, align 4, !tbaa !41
  %100 = getelementptr inbounds i8, ptr %44, i64 16
  %101 = load i32, ptr %100, align 4, !tbaa !41
  %102 = getelementptr inbounds i8, ptr %46, i64 16
  %103 = load i32, ptr %102, align 4, !tbaa !41
  %104 = getelementptr inbounds i8, ptr %48, i64 16
  %105 = load i32, ptr %104, align 4, !tbaa !41
  %106 = add i32 %99, 200
  %107 = add i32 %106, %101
  %108 = add i32 %107, %103
  %109 = add i32 %108, %105
  %110 = load i32, ptr %10, align 4, !tbaa !6
  %111 = icmp slt i32 %110, %109
  %112 = icmp slt i32 %110, %94
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %115

114:                                              ; preds = %97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  br label %122

115:                                              ; preds = %97
  %116 = icmp slt i32 %109, %94
  br i1 %116, label %117, label %122

117:                                              ; preds = %115
  store i32 2, ptr %85, align 4, !tbaa !16
  br label %122

118:                                              ; preds = %93
  %119 = load i32, ptr %10, align 4, !tbaa !6
  %120 = icmp slt i32 %119, %94
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  br label %122

122:                                              ; preds = %87, %118, %121, %114, %117, %115
  %123 = phi i32 [ %109, %114 ], [ %109, %117 ], [ %109, %115 ], [ %82, %121 ], [ %82, %118 ], [ %82, %87 ]
  %124 = load i32, ptr @pels, align 4, !tbaa !6
  %125 = sdiv i32 %124, 16
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %39, %126
  br i1 %127, label %36, label %128

128:                                              ; preds = %122
  %129 = load i32, ptr @lines, align 4, !tbaa !6
  br label %130

130:                                              ; preds = %27, %128
  %131 = phi i32 [ %129, %128 ], [ %19, %27 ]
  %132 = phi i32 [ %123, %128 ], [ %21, %27 ]
  %133 = sdiv i32 %131, 16
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %31, %134
  br i1 %135, label %18, label %136

136:                                              ; preds = %130, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  ret void
}

declare dso_local signext i32 @InitializeQuantizer(i32 noundef signext, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare dso_local void @AddBitsPicture(ptr noundef) local_unnamed_addr #4

declare dso_local signext i32 @UpdateQuantizer(i32 noundef signext, float noundef, i32 noundef signext, float noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local signext i32 @CountBitsPicture(ptr noundef) local_unnamed_addr #4

declare dso_local signext i32 @CountBitsSlice(i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local signext i32 @ModifyMode(i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local ptr @Predict_P(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @FillLumBlock(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #10 {
  %5 = load ptr, ptr %2, align 8, !tbaa !12
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = getelementptr inbounds i8, ptr %7, i64 2
  %11 = getelementptr inbounds i8, ptr %7, i64 3
  %12 = getelementptr inbounds i8, ptr %7, i64 4
  %13 = getelementptr inbounds i8, ptr %7, i64 5
  %14 = getelementptr inbounds i8, ptr %7, i64 6
  %15 = getelementptr inbounds i8, ptr %7, i64 7
  %16 = getelementptr inbounds i8, ptr %7, i64 8
  %17 = getelementptr inbounds i8, ptr %7, i64 9
  %18 = getelementptr inbounds i8, ptr %7, i64 10
  %19 = getelementptr inbounds i8, ptr %7, i64 11
  %20 = getelementptr inbounds i8, ptr %7, i64 12
  %21 = getelementptr inbounds i8, ptr %7, i64 13
  %22 = getelementptr inbounds i8, ptr %7, i64 14
  %23 = getelementptr inbounds i8, ptr %7, i64 15
  br label %24

24:                                               ; preds = %4, %24
  %25 = phi i64 [ 0, %4 ], [ %139, %24 ]
  %26 = add nsw i64 %25, %8
  %27 = load i32, ptr @pels, align 4, !tbaa !6
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %26, %28
  %30 = getelementptr inbounds i8, ptr %7, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !32
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 0
  store i32 %32, ptr %33, align 4, !tbaa !6
  %34 = load i32, ptr @pels, align 4, !tbaa !6
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %26, %35
  %37 = getelementptr inbounds i8, ptr %9, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !32
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 1
  store i32 %39, ptr %40, align 4, !tbaa !6
  %41 = load i32, ptr @pels, align 4, !tbaa !6
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %26, %42
  %44 = getelementptr inbounds i8, ptr %10, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !32
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 2
  store i32 %46, ptr %47, align 4, !tbaa !6
  %48 = load i32, ptr @pels, align 4, !tbaa !6
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %26, %49
  %51 = getelementptr inbounds i8, ptr %11, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !32
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 3
  store i32 %53, ptr %54, align 4, !tbaa !6
  %55 = load i32, ptr @pels, align 4, !tbaa !6
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %26, %56
  %58 = getelementptr inbounds i8, ptr %12, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !32
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 4
  store i32 %60, ptr %61, align 4, !tbaa !6
  %62 = load i32, ptr @pels, align 4, !tbaa !6
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %26, %63
  %65 = getelementptr inbounds i8, ptr %13, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !32
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 5
  store i32 %67, ptr %68, align 4, !tbaa !6
  %69 = load i32, ptr @pels, align 4, !tbaa !6
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %26, %70
  %72 = getelementptr inbounds i8, ptr %14, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !32
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 6
  store i32 %74, ptr %75, align 4, !tbaa !6
  %76 = load i32, ptr @pels, align 4, !tbaa !6
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %26, %77
  %79 = getelementptr inbounds i8, ptr %15, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !32
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 7
  store i32 %81, ptr %82, align 4, !tbaa !6
  %83 = load i32, ptr @pels, align 4, !tbaa !6
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %26, %84
  %86 = getelementptr inbounds i8, ptr %16, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !32
  %88 = zext i8 %87 to i32
  %89 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 8
  store i32 %88, ptr %89, align 4, !tbaa !6
  %90 = load i32, ptr @pels, align 4, !tbaa !6
  %91 = sext i32 %90 to i64
  %92 = mul nsw i64 %26, %91
  %93 = getelementptr inbounds i8, ptr %17, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !32
  %95 = zext i8 %94 to i32
  %96 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 9
  store i32 %95, ptr %96, align 4, !tbaa !6
  %97 = load i32, ptr @pels, align 4, !tbaa !6
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %26, %98
  %100 = getelementptr inbounds i8, ptr %18, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !32
  %102 = zext i8 %101 to i32
  %103 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 10
  store i32 %102, ptr %103, align 4, !tbaa !6
  %104 = load i32, ptr @pels, align 4, !tbaa !6
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %26, %105
  %107 = getelementptr inbounds i8, ptr %19, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !32
  %109 = zext i8 %108 to i32
  %110 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 11
  store i32 %109, ptr %110, align 4, !tbaa !6
  %111 = load i32, ptr @pels, align 4, !tbaa !6
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %26, %112
  %114 = getelementptr inbounds i8, ptr %20, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !32
  %116 = zext i8 %115 to i32
  %117 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 12
  store i32 %116, ptr %117, align 4, !tbaa !6
  %118 = load i32, ptr @pels, align 4, !tbaa !6
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %26, %119
  %121 = getelementptr inbounds i8, ptr %21, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !32
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 13
  store i32 %123, ptr %124, align 4, !tbaa !6
  %125 = load i32, ptr @pels, align 4, !tbaa !6
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %26, %126
  %128 = getelementptr inbounds i8, ptr %22, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !32
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 14
  store i32 %130, ptr %131, align 4, !tbaa !6
  %132 = load i32, ptr @pels, align 4, !tbaa !6
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %26, %133
  %135 = getelementptr inbounds i8, ptr %23, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !32
  %137 = zext i8 %136 to i32
  %138 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %25, i64 15
  store i32 %137, ptr %138, align 4, !tbaa !6
  %139 = add nuw nsw i64 %25, 1
  %140 = icmp eq i64 %139, 16
  br i1 %140, label %141, label %24

141:                                              ; preds = %24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @FillChromBlock(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #10 {
  %5 = ashr i32 %0, 1
  %6 = ashr i32 %1, 1
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds i8, ptr %3, i64 1024
  %12 = getelementptr inbounds i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = getelementptr inbounds i8, ptr %13, i64 %9
  %15 = getelementptr inbounds i8, ptr %3, i64 1280
  %16 = sext i32 %6 to i64
  %17 = getelementptr inbounds i8, ptr %10, i64 1
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = getelementptr inbounds i8, ptr %10, i64 2
  %20 = getelementptr inbounds i8, ptr %14, i64 2
  %21 = getelementptr inbounds i8, ptr %10, i64 3
  %22 = getelementptr inbounds i8, ptr %14, i64 3
  %23 = getelementptr inbounds i8, ptr %10, i64 4
  %24 = getelementptr inbounds i8, ptr %14, i64 4
  %25 = getelementptr inbounds i8, ptr %10, i64 5
  %26 = getelementptr inbounds i8, ptr %14, i64 5
  %27 = getelementptr inbounds i8, ptr %10, i64 6
  %28 = getelementptr inbounds i8, ptr %14, i64 6
  %29 = getelementptr inbounds i8, ptr %10, i64 7
  %30 = getelementptr inbounds i8, ptr %14, i64 7
  br label %31

31:                                               ; preds = %4, %31
  %32 = phi i64 [ 0, %4 ], [ %146, %31 ]
  %33 = add nsw i64 %32, %16
  %34 = load i32, ptr @cpels, align 4, !tbaa !6
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %33, %35
  %37 = getelementptr inbounds i8, ptr %10, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !32
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 0, i64 %32, i64 0
  store i32 %39, ptr %40, align 4, !tbaa !6
  %41 = load i32, ptr @cpels, align 4, !tbaa !6
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %33, %42
  %44 = getelementptr inbounds i8, ptr %14, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !32
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds [8 x [8 x i32]], ptr %15, i64 0, i64 %32, i64 0
  store i32 %46, ptr %47, align 4, !tbaa !6
  %48 = load i32, ptr @cpels, align 4, !tbaa !6
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %33, %49
  %51 = getelementptr inbounds i8, ptr %17, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !32
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 0, i64 %32, i64 1
  store i32 %53, ptr %54, align 4, !tbaa !6
  %55 = load i32, ptr @cpels, align 4, !tbaa !6
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %33, %56
  %58 = getelementptr inbounds i8, ptr %18, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !32
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds [8 x [8 x i32]], ptr %15, i64 0, i64 %32, i64 1
  store i32 %60, ptr %61, align 4, !tbaa !6
  %62 = load i32, ptr @cpels, align 4, !tbaa !6
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %33, %63
  %65 = getelementptr inbounds i8, ptr %19, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !32
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 0, i64 %32, i64 2
  store i32 %67, ptr %68, align 4, !tbaa !6
  %69 = load i32, ptr @cpels, align 4, !tbaa !6
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %33, %70
  %72 = getelementptr inbounds i8, ptr %20, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !32
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds [8 x [8 x i32]], ptr %15, i64 0, i64 %32, i64 2
  store i32 %74, ptr %75, align 4, !tbaa !6
  %76 = load i32, ptr @cpels, align 4, !tbaa !6
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %33, %77
  %79 = getelementptr inbounds i8, ptr %21, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !32
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 0, i64 %32, i64 3
  store i32 %81, ptr %82, align 4, !tbaa !6
  %83 = load i32, ptr @cpels, align 4, !tbaa !6
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %33, %84
  %86 = getelementptr inbounds i8, ptr %22, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !32
  %88 = zext i8 %87 to i32
  %89 = getelementptr inbounds [8 x [8 x i32]], ptr %15, i64 0, i64 %32, i64 3
  store i32 %88, ptr %89, align 4, !tbaa !6
  %90 = load i32, ptr @cpels, align 4, !tbaa !6
  %91 = sext i32 %90 to i64
  %92 = mul nsw i64 %33, %91
  %93 = getelementptr inbounds i8, ptr %23, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !32
  %95 = zext i8 %94 to i32
  %96 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 0, i64 %32, i64 4
  store i32 %95, ptr %96, align 4, !tbaa !6
  %97 = load i32, ptr @cpels, align 4, !tbaa !6
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %33, %98
  %100 = getelementptr inbounds i8, ptr %24, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !32
  %102 = zext i8 %101 to i32
  %103 = getelementptr inbounds [8 x [8 x i32]], ptr %15, i64 0, i64 %32, i64 4
  store i32 %102, ptr %103, align 4, !tbaa !6
  %104 = load i32, ptr @cpels, align 4, !tbaa !6
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %33, %105
  %107 = getelementptr inbounds i8, ptr %25, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !32
  %109 = zext i8 %108 to i32
  %110 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 0, i64 %32, i64 5
  store i32 %109, ptr %110, align 4, !tbaa !6
  %111 = load i32, ptr @cpels, align 4, !tbaa !6
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %33, %112
  %114 = getelementptr inbounds i8, ptr %26, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !32
  %116 = zext i8 %115 to i32
  %117 = getelementptr inbounds [8 x [8 x i32]], ptr %15, i64 0, i64 %32, i64 5
  store i32 %116, ptr %117, align 4, !tbaa !6
  %118 = load i32, ptr @cpels, align 4, !tbaa !6
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %33, %119
  %121 = getelementptr inbounds i8, ptr %27, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !32
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 0, i64 %32, i64 6
  store i32 %123, ptr %124, align 4, !tbaa !6
  %125 = load i32, ptr @cpels, align 4, !tbaa !6
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %33, %126
  %128 = getelementptr inbounds i8, ptr %28, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !32
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds [8 x [8 x i32]], ptr %15, i64 0, i64 %32, i64 6
  store i32 %130, ptr %131, align 4, !tbaa !6
  %132 = load i32, ptr @cpels, align 4, !tbaa !6
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %33, %133
  %135 = getelementptr inbounds i8, ptr %29, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !32
  %137 = zext i8 %136 to i32
  %138 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 0, i64 %32, i64 7
  store i32 %137, ptr %138, align 4, !tbaa !6
  %139 = load i32, ptr @cpels, align 4, !tbaa !6
  %140 = sext i32 %139 to i64
  %141 = mul nsw i64 %33, %140
  %142 = getelementptr inbounds i8, ptr %30, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !32
  %144 = zext i8 %143 to i32
  %145 = getelementptr inbounds [8 x [8 x i32]], ptr %15, i64 0, i64 %32, i64 7
  store i32 %144, ptr %145, align 4, !tbaa !6
  %146 = add nuw nsw i64 %32, 1
  %147 = icmp eq i64 %146, 8
  br i1 %147, label %148, label %31

148:                                              ; preds = %31
  ret void
}

; Function Attrs: nounwind
define dso_local noundef ptr @MB_Encode(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i32], align 4
  %5 = alloca [384 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %5) #15
  %6 = tail call noalias dereferenceable_or_null(1536) ptr @malloc(i64 noundef 1536) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa !6
  %9 = getelementptr inbounds i8, ptr %4, i64 32
  %10 = getelementptr i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %10, i64 32, i1 false), !tbaa !6
  %11 = getelementptr inbounds i8, ptr %4, i64 64
  %12 = getelementptr i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(32) %12, i64 32, i1 false), !tbaa !6
  %13 = getelementptr inbounds i8, ptr %4, i64 96
  %14 = getelementptr i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %13, ptr noundef nonnull align 4 dereferenceable(32) %14, i64 32, i1 false), !tbaa !6
  %15 = getelementptr inbounds i8, ptr %4, i64 128
  %16 = getelementptr i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(32) %16, i64 32, i1 false), !tbaa !6
  %17 = getelementptr inbounds i8, ptr %4, i64 160
  %18 = getelementptr i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(32) %18, i64 32, i1 false), !tbaa !6
  %19 = getelementptr inbounds i8, ptr %4, i64 192
  %20 = getelementptr i8, ptr %0, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %19, ptr noundef nonnull align 4 dereferenceable(32) %20, i64 32, i1 false), !tbaa !6
  %21 = getelementptr inbounds i8, ptr %4, i64 224
  %22 = getelementptr i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %21, ptr noundef nonnull align 4 dereferenceable(32) %22, i64 32, i1 false), !tbaa !6
  %23 = call signext i32 @Dct(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @Quant(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef signext %1, i32 noundef signext %2) #15
  %24 = getelementptr inbounds i8, ptr %5, i64 256
  %25 = getelementptr inbounds i8, ptr %6, i64 256
  %26 = getelementptr i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %26, i64 32, i1 false), !tbaa !6
  %27 = getelementptr i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %27, i64 32, i1 false), !tbaa !6
  %28 = getelementptr i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(32) %28, i64 32, i1 false), !tbaa !6
  %29 = getelementptr i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %13, ptr noundef nonnull align 4 dereferenceable(32) %29, i64 32, i1 false), !tbaa !6
  %30 = getelementptr i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(32) %30, i64 32, i1 false), !tbaa !6
  %31 = getelementptr i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(32) %31, i64 32, i1 false), !tbaa !6
  %32 = getelementptr i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %19, ptr noundef nonnull align 4 dereferenceable(32) %32, i64 32, i1 false), !tbaa !6
  %33 = getelementptr i8, ptr %0, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %21, ptr noundef nonnull align 4 dereferenceable(32) %33, i64 32, i1 false), !tbaa !6
  %34 = call signext i32 @Dct(ptr noundef nonnull %4, ptr noundef nonnull %24) #15
  call void @Quant(ptr noundef nonnull %24, ptr noundef nonnull %25, i32 noundef signext %1, i32 noundef signext %2) #15
  %35 = getelementptr inbounds i8, ptr %5, i64 512
  %36 = getelementptr inbounds i8, ptr %6, i64 512
  %37 = getelementptr i8, ptr %0, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %37, i64 32, i1 false), !tbaa !6
  %38 = getelementptr i8, ptr %0, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %38, i64 32, i1 false), !tbaa !6
  %39 = getelementptr i8, ptr %0, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(32) %39, i64 32, i1 false), !tbaa !6
  %40 = getelementptr i8, ptr %0, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %13, ptr noundef nonnull align 4 dereferenceable(32) %40, i64 32, i1 false), !tbaa !6
  %41 = getelementptr i8, ptr %0, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(32) %41, i64 32, i1 false), !tbaa !6
  %42 = getelementptr i8, ptr %0, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(32) %42, i64 32, i1 false), !tbaa !6
  %43 = getelementptr i8, ptr %0, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %19, ptr noundef nonnull align 4 dereferenceable(32) %43, i64 32, i1 false), !tbaa !6
  %44 = getelementptr i8, ptr %0, i64 960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %21, ptr noundef nonnull align 4 dereferenceable(32) %44, i64 32, i1 false), !tbaa !6
  %45 = call signext i32 @Dct(ptr noundef nonnull %4, ptr noundef nonnull %35) #15
  call void @Quant(ptr noundef nonnull %35, ptr noundef nonnull %36, i32 noundef signext %1, i32 noundef signext %2) #15
  %46 = getelementptr inbounds i8, ptr %5, i64 768
  %47 = getelementptr inbounds i8, ptr %6, i64 768
  %48 = getelementptr i8, ptr %0, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %48, i64 32, i1 false), !tbaa !6
  %49 = getelementptr i8, ptr %0, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %49, i64 32, i1 false), !tbaa !6
  %50 = getelementptr i8, ptr %0, i64 672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(32) %50, i64 32, i1 false), !tbaa !6
  %51 = getelementptr i8, ptr %0, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %13, ptr noundef nonnull align 4 dereferenceable(32) %51, i64 32, i1 false), !tbaa !6
  %52 = getelementptr i8, ptr %0, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(32) %52, i64 32, i1 false), !tbaa !6
  %53 = getelementptr i8, ptr %0, i64 864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(32) %53, i64 32, i1 false), !tbaa !6
  %54 = getelementptr i8, ptr %0, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %19, ptr noundef nonnull align 4 dereferenceable(32) %54, i64 32, i1 false), !tbaa !6
  %55 = getelementptr i8, ptr %0, i64 992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %21, ptr noundef nonnull align 4 dereferenceable(32) %55, i64 32, i1 false), !tbaa !6
  %56 = call signext i32 @Dct(ptr noundef nonnull %4, ptr noundef nonnull %46) #15
  call void @Quant(ptr noundef nonnull %46, ptr noundef nonnull %47, i32 noundef signext %1, i32 noundef signext %2) #15
  %57 = getelementptr inbounds i8, ptr %5, i64 1024
  %58 = getelementptr i8, ptr %0, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %4, ptr noundef nonnull align 4 dereferenceable(256) %58, i64 256, i1 false), !tbaa !6
  %59 = getelementptr inbounds i8, ptr %6, i64 1024
  %60 = call signext i32 @Dct(ptr noundef nonnull %4, ptr noundef nonnull %57) #15
  call void @Quant(ptr noundef nonnull %57, ptr noundef nonnull %59, i32 noundef signext %1, i32 noundef signext %2) #15
  %61 = getelementptr i8, ptr %0, i64 1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %4, ptr noundef nonnull align 4 dereferenceable(256) %61, i64 256, i1 false), !tbaa !6
  %62 = getelementptr inbounds i8, ptr %6, i64 1280
  %63 = getelementptr inbounds i8, ptr %5, i64 1280
  %64 = call signext i32 @Dct(ptr noundef nonnull %4, ptr noundef nonnull %63) #15
  call void @Quant(ptr noundef nonnull %63, ptr noundef nonnull %62, i32 noundef signext %1, i32 noundef signext %2) #15
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #15
  ret ptr %6

65:                                               ; preds = %3
  %66 = load ptr, ptr @stderr, align 8, !tbaa !10
  %67 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 39, i64 1, ptr %66) #17
  tail call void @exit(i32 noundef signext -1) #18
  unreachable
}

declare dso_local signext i32 @FindCBP(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @ZeroMBlock(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %0, i8 0, i64 1536, i1 false)
  ret void
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @MB_Decode(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !10
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 46, i64 1, ptr %8) #17
  tail call void @exit(i32 noundef signext -1) #18
  unreachable

10:                                               ; preds = %4
  %11 = tail call noalias dereferenceable_or_null(1536) ptr @malloc(i64 noundef 1536) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %64, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %1, i64 64
  %15 = getelementptr i8, ptr %1, i64 128
  %16 = getelementptr i8, ptr %1, i64 192
  %17 = getelementptr i8, ptr %1, i64 256
  %18 = getelementptr i8, ptr %1, i64 320
  %19 = getelementptr i8, ptr %1, i64 384
  %20 = getelementptr i8, ptr %1, i64 448
  %21 = getelementptr i8, ptr %1, i64 512
  %22 = getelementptr i8, ptr %1, i64 576
  %23 = getelementptr i8, ptr %1, i64 640
  %24 = getelementptr i8, ptr %1, i64 704
  %25 = getelementptr i8, ptr %1, i64 768
  %26 = getelementptr i8, ptr %1, i64 832
  %27 = getelementptr i8, ptr %1, i64 896
  %28 = getelementptr i8, ptr %1, i64 960
  %29 = getelementptr inbounds i8, ptr %1, i64 1280
  %30 = getelementptr i8, ptr %1, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %1, i8 0, i64 1536, i1 false)
  tail call void @Dequant(ptr noundef %0, ptr noundef nonnull %11, i32 noundef signext %2, i32 noundef signext %3) #15
  tail call void @idctref(ptr noundef nonnull %11, ptr noundef nonnull %5) #15
  %31 = getelementptr inbounds i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa !6
  %32 = getelementptr i8, ptr %5, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %14, ptr noundef nonnull align 4 dereferenceable(32) %32, i64 32, i1 false), !tbaa !6
  %33 = getelementptr i8, ptr %5, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(32) %33, i64 32, i1 false), !tbaa !6
  %34 = getelementptr i8, ptr %5, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(32) %34, i64 32, i1 false), !tbaa !6
  %35 = getelementptr i8, ptr %5, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(32) %35, i64 32, i1 false), !tbaa !6
  %36 = getelementptr i8, ptr %5, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %18, ptr noundef nonnull align 4 dereferenceable(32) %36, i64 32, i1 false), !tbaa !6
  %37 = getelementptr i8, ptr %5, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %19, ptr noundef nonnull align 4 dereferenceable(32) %37, i64 32, i1 false), !tbaa !6
  %38 = getelementptr i8, ptr %5, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %20, ptr noundef nonnull align 4 dereferenceable(32) %38, i64 32, i1 false), !tbaa !6
  %39 = getelementptr inbounds i8, ptr %11, i64 256
  tail call void @Dequant(ptr noundef nonnull %31, ptr noundef nonnull %39, i32 noundef signext %2, i32 noundef signext %3) #15
  tail call void @idctref(ptr noundef nonnull %39, ptr noundef nonnull %5) #15
  %40 = getelementptr inbounds i8, ptr %0, i64 512
  %41 = getelementptr i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %41, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa !6
  %42 = getelementptr i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %42, ptr noundef nonnull align 4 dereferenceable(32) %32, i64 32, i1 false), !tbaa !6
  %43 = getelementptr i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %43, ptr noundef nonnull align 4 dereferenceable(32) %33, i64 32, i1 false), !tbaa !6
  %44 = getelementptr i8, ptr %1, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %44, ptr noundef nonnull align 4 dereferenceable(32) %34, i64 32, i1 false), !tbaa !6
  %45 = getelementptr i8, ptr %1, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %45, ptr noundef nonnull align 4 dereferenceable(32) %35, i64 32, i1 false), !tbaa !6
  %46 = getelementptr i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %46, ptr noundef nonnull align 4 dereferenceable(32) %36, i64 32, i1 false), !tbaa !6
  %47 = getelementptr i8, ptr %1, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %47, ptr noundef nonnull align 4 dereferenceable(32) %37, i64 32, i1 false), !tbaa !6
  %48 = getelementptr i8, ptr %1, i64 480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %48, ptr noundef nonnull align 4 dereferenceable(32) %38, i64 32, i1 false), !tbaa !6
  %49 = getelementptr inbounds i8, ptr %11, i64 512
  tail call void @Dequant(ptr noundef nonnull %40, ptr noundef nonnull %49, i32 noundef signext %2, i32 noundef signext %3) #15
  tail call void @idctref(ptr noundef nonnull %49, ptr noundef nonnull %5) #15
  %50 = getelementptr inbounds i8, ptr %0, i64 768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %21, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %22, ptr noundef nonnull align 4 dereferenceable(32) %32, i64 32, i1 false), !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %23, ptr noundef nonnull align 4 dereferenceable(32) %33, i64 32, i1 false), !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %24, ptr noundef nonnull align 4 dereferenceable(32) %34, i64 32, i1 false), !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %25, ptr noundef nonnull align 4 dereferenceable(32) %35, i64 32, i1 false), !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %26, ptr noundef nonnull align 4 dereferenceable(32) %36, i64 32, i1 false), !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %27, ptr noundef nonnull align 4 dereferenceable(32) %37, i64 32, i1 false), !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %28, ptr noundef nonnull align 4 dereferenceable(32) %38, i64 32, i1 false), !tbaa !6
  %51 = getelementptr inbounds i8, ptr %11, i64 768
  tail call void @Dequant(ptr noundef nonnull %50, ptr noundef nonnull %51, i32 noundef signext %2, i32 noundef signext %3) #15
  tail call void @idctref(ptr noundef nonnull %51, ptr noundef nonnull %5) #15
  %52 = getelementptr inbounds i8, ptr %0, i64 1024
  %53 = getelementptr i8, ptr %1, i64 544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %53, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa !6
  %54 = getelementptr i8, ptr %1, i64 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %54, ptr noundef nonnull align 4 dereferenceable(32) %32, i64 32, i1 false), !tbaa !6
  %55 = getelementptr i8, ptr %1, i64 672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %55, ptr noundef nonnull align 4 dereferenceable(32) %33, i64 32, i1 false), !tbaa !6
  %56 = getelementptr i8, ptr %1, i64 736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %56, ptr noundef nonnull align 4 dereferenceable(32) %34, i64 32, i1 false), !tbaa !6
  %57 = getelementptr i8, ptr %1, i64 800
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %57, ptr noundef nonnull align 4 dereferenceable(32) %35, i64 32, i1 false), !tbaa !6
  %58 = getelementptr i8, ptr %1, i64 864
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %58, ptr noundef nonnull align 4 dereferenceable(32) %36, i64 32, i1 false), !tbaa !6
  %59 = getelementptr i8, ptr %1, i64 928
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %59, ptr noundef nonnull align 4 dereferenceable(32) %37, i64 32, i1 false), !tbaa !6
  %60 = getelementptr i8, ptr %1, i64 992
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %60, ptr noundef nonnull align 4 dereferenceable(32) %38, i64 32, i1 false), !tbaa !6
  %61 = getelementptr inbounds i8, ptr %11, i64 1024
  tail call void @Dequant(ptr noundef nonnull %52, ptr noundef nonnull %61, i32 noundef signext %2, i32 noundef signext %3) #15
  tail call void @idctref(ptr noundef nonnull %61, ptr noundef nonnull %5) #15
  %62 = getelementptr inbounds i8, ptr %0, i64 1280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %29, ptr noundef nonnull align 4 dereferenceable(256) %5, i64 256, i1 false), !tbaa !6
  %63 = getelementptr inbounds i8, ptr %11, i64 1280
  tail call void @Dequant(ptr noundef nonnull %62, ptr noundef nonnull %63, i32 noundef signext %2, i32 noundef signext %3) #15
  tail call void @idctref(ptr noundef nonnull %63, ptr noundef nonnull %5) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %30, ptr noundef nonnull align 4 dereferenceable(256) %5, i64 256, i1 false), !tbaa !6
  tail call void @free(ptr noundef nonnull %5) #15
  tail call void @free(ptr noundef nonnull %11) #15
  ret i32 0

64:                                               ; preds = %10
  %65 = load ptr, ptr @stderr, align 8, !tbaa !10
  %66 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 46, i64 1, ptr %65) #17
  tail call void @exit(i32 noundef signext -1) #18
  unreachable
}

declare dso_local ptr @MB_Recon_P(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @Clip(ptr nocapture noundef %0) local_unnamed_addr #12 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %68, %2 ]
  %4 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 0
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  store i32 %7, ptr %4, align 4, !tbaa !6
  %8 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !6
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 255)
  store i32 %11, ptr %8, align 4, !tbaa !6
  %12 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 2
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 255)
  store i32 %15, ptr %12, align 4, !tbaa !6
  %16 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 3
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 255)
  store i32 %19, ptr %16, align 4, !tbaa !6
  %20 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0)
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 255)
  store i32 %23, ptr %20, align 4, !tbaa !6
  %24 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 5
  %25 = load i32, ptr %24, align 4, !tbaa !6
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0)
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 255)
  store i32 %27, ptr %24, align 4, !tbaa !6
  %28 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 6
  %29 = load i32, ptr %28, align 4, !tbaa !6
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 0)
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 255)
  store i32 %31, ptr %28, align 4, !tbaa !6
  %32 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 7
  %33 = load i32, ptr %32, align 4, !tbaa !6
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 255)
  store i32 %35, ptr %32, align 4, !tbaa !6
  %36 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 8
  %37 = load i32, ptr %36, align 4, !tbaa !6
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0)
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 255)
  store i32 %39, ptr %36, align 4, !tbaa !6
  %40 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 9
  %41 = load i32, ptr %40, align 4, !tbaa !6
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 255)
  store i32 %43, ptr %40, align 4, !tbaa !6
  %44 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 10
  %45 = load i32, ptr %44, align 4, !tbaa !6
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 0)
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 255)
  store i32 %47, ptr %44, align 4, !tbaa !6
  %48 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 11
  %49 = load i32, ptr %48, align 4, !tbaa !6
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 255)
  store i32 %51, ptr %48, align 4, !tbaa !6
  %52 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 12
  %53 = load i32, ptr %52, align 4, !tbaa !6
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0)
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 255)
  store i32 %55, ptr %52, align 4, !tbaa !6
  %56 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 13
  %57 = load i32, ptr %56, align 4, !tbaa !6
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 0)
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 255)
  store i32 %59, ptr %56, align 4, !tbaa !6
  %60 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 14
  %61 = load i32, ptr %60, align 4, !tbaa !6
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 0)
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 255)
  store i32 %63, ptr %60, align 4, !tbaa !6
  %64 = getelementptr inbounds [16 x [16 x i32]], ptr %0, i64 0, i64 %3, i64 15
  %65 = load i32, ptr %64, align 4, !tbaa !6
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 0)
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 255)
  store i32 %67, ptr %64, align 4, !tbaa !6
  %68 = add nuw nsw i64 %3, 1
  %69 = icmp eq i64 %68, 16
  br i1 %69, label %70, label %2

70:                                               ; preds = %2
  %71 = getelementptr inbounds i8, ptr %0, i64 1024
  %72 = getelementptr inbounds i8, ptr %0, i64 1280
  br label %73

73:                                               ; preds = %70, %73
  %74 = phi i64 [ 0, %70 ], [ %139, %73 ]
  %75 = getelementptr inbounds [8 x [8 x i32]], ptr %71, i64 0, i64 %74, i64 0
  %76 = load i32, ptr %75, align 4, !tbaa !6
  %77 = tail call i32 @llvm.smax.i32(i32 %76, i32 0)
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 255)
  store i32 %78, ptr %75, align 4, !tbaa !6
  %79 = getelementptr inbounds [8 x [8 x i32]], ptr %72, i64 0, i64 %74, i64 0
  %80 = load i32, ptr %79, align 4, !tbaa !6
  %81 = tail call i32 @llvm.smax.i32(i32 %80, i32 0)
  %82 = tail call i32 @llvm.umin.i32(i32 %81, i32 255)
  store i32 %82, ptr %79, align 4, !tbaa !6
  %83 = getelementptr inbounds [8 x [8 x i32]], ptr %71, i64 0, i64 %74, i64 1
  %84 = load i32, ptr %83, align 4, !tbaa !6
  %85 = tail call i32 @llvm.smax.i32(i32 %84, i32 0)
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 255)
  store i32 %86, ptr %83, align 4, !tbaa !6
  %87 = getelementptr inbounds [8 x [8 x i32]], ptr %72, i64 0, i64 %74, i64 1
  %88 = load i32, ptr %87, align 4, !tbaa !6
  %89 = tail call i32 @llvm.smax.i32(i32 %88, i32 0)
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 255)
  store i32 %90, ptr %87, align 4, !tbaa !6
  %91 = getelementptr inbounds [8 x [8 x i32]], ptr %71, i64 0, i64 %74, i64 2
  %92 = load i32, ptr %91, align 4, !tbaa !6
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 0)
  %94 = tail call i32 @llvm.umin.i32(i32 %93, i32 255)
  store i32 %94, ptr %91, align 4, !tbaa !6
  %95 = getelementptr inbounds [8 x [8 x i32]], ptr %72, i64 0, i64 %74, i64 2
  %96 = load i32, ptr %95, align 4, !tbaa !6
  %97 = tail call i32 @llvm.smax.i32(i32 %96, i32 0)
  %98 = tail call i32 @llvm.umin.i32(i32 %97, i32 255)
  store i32 %98, ptr %95, align 4, !tbaa !6
  %99 = getelementptr inbounds [8 x [8 x i32]], ptr %71, i64 0, i64 %74, i64 3
  %100 = load i32, ptr %99, align 4, !tbaa !6
  %101 = tail call i32 @llvm.smax.i32(i32 %100, i32 0)
  %102 = tail call i32 @llvm.umin.i32(i32 %101, i32 255)
  store i32 %102, ptr %99, align 4, !tbaa !6
  %103 = getelementptr inbounds [8 x [8 x i32]], ptr %72, i64 0, i64 %74, i64 3
  %104 = load i32, ptr %103, align 4, !tbaa !6
  %105 = tail call i32 @llvm.smax.i32(i32 %104, i32 0)
  %106 = tail call i32 @llvm.umin.i32(i32 %105, i32 255)
  store i32 %106, ptr %103, align 4, !tbaa !6
  %107 = getelementptr inbounds [8 x [8 x i32]], ptr %71, i64 0, i64 %74, i64 4
  %108 = load i32, ptr %107, align 4, !tbaa !6
  %109 = tail call i32 @llvm.smax.i32(i32 %108, i32 0)
  %110 = tail call i32 @llvm.umin.i32(i32 %109, i32 255)
  store i32 %110, ptr %107, align 4, !tbaa !6
  %111 = getelementptr inbounds [8 x [8 x i32]], ptr %72, i64 0, i64 %74, i64 4
  %112 = load i32, ptr %111, align 4, !tbaa !6
  %113 = tail call i32 @llvm.smax.i32(i32 %112, i32 0)
  %114 = tail call i32 @llvm.umin.i32(i32 %113, i32 255)
  store i32 %114, ptr %111, align 4, !tbaa !6
  %115 = getelementptr inbounds [8 x [8 x i32]], ptr %71, i64 0, i64 %74, i64 5
  %116 = load i32, ptr %115, align 4, !tbaa !6
  %117 = tail call i32 @llvm.smax.i32(i32 %116, i32 0)
  %118 = tail call i32 @llvm.umin.i32(i32 %117, i32 255)
  store i32 %118, ptr %115, align 4, !tbaa !6
  %119 = getelementptr inbounds [8 x [8 x i32]], ptr %72, i64 0, i64 %74, i64 5
  %120 = load i32, ptr %119, align 4, !tbaa !6
  %121 = tail call i32 @llvm.smax.i32(i32 %120, i32 0)
  %122 = tail call i32 @llvm.umin.i32(i32 %121, i32 255)
  store i32 %122, ptr %119, align 4, !tbaa !6
  %123 = getelementptr inbounds [8 x [8 x i32]], ptr %71, i64 0, i64 %74, i64 6
  %124 = load i32, ptr %123, align 4, !tbaa !6
  %125 = tail call i32 @llvm.smax.i32(i32 %124, i32 0)
  %126 = tail call i32 @llvm.umin.i32(i32 %125, i32 255)
  store i32 %126, ptr %123, align 4, !tbaa !6
  %127 = getelementptr inbounds [8 x [8 x i32]], ptr %72, i64 0, i64 %74, i64 6
  %128 = load i32, ptr %127, align 4, !tbaa !6
  %129 = tail call i32 @llvm.smax.i32(i32 %128, i32 0)
  %130 = tail call i32 @llvm.umin.i32(i32 %129, i32 255)
  store i32 %130, ptr %127, align 4, !tbaa !6
  %131 = getelementptr inbounds [8 x [8 x i32]], ptr %71, i64 0, i64 %74, i64 7
  %132 = load i32, ptr %131, align 4, !tbaa !6
  %133 = tail call i32 @llvm.smax.i32(i32 %132, i32 0)
  %134 = tail call i32 @llvm.umin.i32(i32 %133, i32 255)
  store i32 %134, ptr %131, align 4, !tbaa !6
  %135 = getelementptr inbounds [8 x [8 x i32]], ptr %72, i64 0, i64 %74, i64 7
  %136 = load i32, ptr %135, align 4, !tbaa !6
  %137 = tail call i32 @llvm.smax.i32(i32 %136, i32 0)
  %138 = tail call i32 @llvm.umin.i32(i32 %137, i32 255)
  store i32 %138, ptr %135, align 4, !tbaa !6
  %139 = add nuw nsw i64 %74, 1
  %140 = icmp eq i64 %139, 8
  br i1 %140, label %141, label %73

141:                                              ; preds = %73
  ret void
}

declare dso_local ptr @Predict_B(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local ptr @MB_Recon_B(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local signext i32 @EqualVec(ptr noundef, ptr noundef) local_unnamed_addr #4

declare dso_local void @CountBitsMB(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #4

declare dso_local void @Count_sac_BitsMB(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #4

declare dso_local void @CountBitsVectors(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #4

declare dso_local void @CountBitsCoeff(ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #4

declare dso_local void @Count_sac_BitsVectors(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #4

declare dso_local void @Count_sac_BitsCoeff(ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @ReconImage(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #7 {
  %5 = shl nsw i32 %0, 4
  %6 = shl nsw i32 %1, 4
  %7 = sext i32 %5 to i64
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %171, %8 ]
  %10 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 0
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr %3, align 8, !tbaa !12
  %14 = getelementptr inbounds i8, ptr %13, i64 %7
  %15 = load i32, ptr @pels, align 4, !tbaa !6
  %16 = trunc i64 %9 to i32
  %17 = add i32 %6, %16
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %14, i64 %19
  store i8 %12, ptr %20, align 1, !tbaa !32
  %21 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !6
  %23 = trunc i32 %22 to i8
  %24 = load ptr, ptr %3, align 8, !tbaa !12
  %25 = getelementptr inbounds i8, ptr %24, i64 %7
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = load i32, ptr @pels, align 4, !tbaa !6
  %28 = mul nsw i32 %27, %17
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  store i8 %23, ptr %30, align 1, !tbaa !32
  %31 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 2
  %32 = load i32, ptr %31, align 4, !tbaa !6
  %33 = trunc i32 %32 to i8
  %34 = load ptr, ptr %3, align 8, !tbaa !12
  %35 = getelementptr inbounds i8, ptr %34, i64 %7
  %36 = getelementptr inbounds i8, ptr %35, i64 2
  %37 = load i32, ptr @pels, align 4, !tbaa !6
  %38 = mul nsw i32 %37, %17
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  store i8 %33, ptr %40, align 1, !tbaa !32
  %41 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 3
  %42 = load i32, ptr %41, align 4, !tbaa !6
  %43 = trunc i32 %42 to i8
  %44 = load ptr, ptr %3, align 8, !tbaa !12
  %45 = getelementptr inbounds i8, ptr %44, i64 %7
  %46 = getelementptr inbounds i8, ptr %45, i64 3
  %47 = load i32, ptr @pels, align 4, !tbaa !6
  %48 = mul nsw i32 %47, %17
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  store i8 %43, ptr %50, align 1, !tbaa !32
  %51 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 4
  %52 = load i32, ptr %51, align 4, !tbaa !6
  %53 = trunc i32 %52 to i8
  %54 = load ptr, ptr %3, align 8, !tbaa !12
  %55 = getelementptr inbounds i8, ptr %54, i64 %7
  %56 = getelementptr inbounds i8, ptr %55, i64 4
  %57 = load i32, ptr @pels, align 4, !tbaa !6
  %58 = mul nsw i32 %57, %17
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %56, i64 %59
  store i8 %53, ptr %60, align 1, !tbaa !32
  %61 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 5
  %62 = load i32, ptr %61, align 4, !tbaa !6
  %63 = trunc i32 %62 to i8
  %64 = load ptr, ptr %3, align 8, !tbaa !12
  %65 = getelementptr inbounds i8, ptr %64, i64 %7
  %66 = getelementptr inbounds i8, ptr %65, i64 5
  %67 = load i32, ptr @pels, align 4, !tbaa !6
  %68 = mul nsw i32 %67, %17
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  store i8 %63, ptr %70, align 1, !tbaa !32
  %71 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 6
  %72 = load i32, ptr %71, align 4, !tbaa !6
  %73 = trunc i32 %72 to i8
  %74 = load ptr, ptr %3, align 8, !tbaa !12
  %75 = getelementptr inbounds i8, ptr %74, i64 %7
  %76 = getelementptr inbounds i8, ptr %75, i64 6
  %77 = load i32, ptr @pels, align 4, !tbaa !6
  %78 = mul nsw i32 %77, %17
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %76, i64 %79
  store i8 %73, ptr %80, align 1, !tbaa !32
  %81 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 7
  %82 = load i32, ptr %81, align 4, !tbaa !6
  %83 = trunc i32 %82 to i8
  %84 = load ptr, ptr %3, align 8, !tbaa !12
  %85 = getelementptr inbounds i8, ptr %84, i64 %7
  %86 = getelementptr inbounds i8, ptr %85, i64 7
  %87 = load i32, ptr @pels, align 4, !tbaa !6
  %88 = mul nsw i32 %87, %17
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %86, i64 %89
  store i8 %83, ptr %90, align 1, !tbaa !32
  %91 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 8
  %92 = load i32, ptr %91, align 4, !tbaa !6
  %93 = trunc i32 %92 to i8
  %94 = load ptr, ptr %3, align 8, !tbaa !12
  %95 = getelementptr inbounds i8, ptr %94, i64 %7
  %96 = getelementptr inbounds i8, ptr %95, i64 8
  %97 = load i32, ptr @pels, align 4, !tbaa !6
  %98 = mul nsw i32 %97, %17
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  store i8 %93, ptr %100, align 1, !tbaa !32
  %101 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 9
  %102 = load i32, ptr %101, align 4, !tbaa !6
  %103 = trunc i32 %102 to i8
  %104 = load ptr, ptr %3, align 8, !tbaa !12
  %105 = getelementptr inbounds i8, ptr %104, i64 %7
  %106 = getelementptr inbounds i8, ptr %105, i64 9
  %107 = load i32, ptr @pels, align 4, !tbaa !6
  %108 = mul nsw i32 %107, %17
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %106, i64 %109
  store i8 %103, ptr %110, align 1, !tbaa !32
  %111 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 10
  %112 = load i32, ptr %111, align 4, !tbaa !6
  %113 = trunc i32 %112 to i8
  %114 = load ptr, ptr %3, align 8, !tbaa !12
  %115 = getelementptr inbounds i8, ptr %114, i64 %7
  %116 = getelementptr inbounds i8, ptr %115, i64 10
  %117 = load i32, ptr @pels, align 4, !tbaa !6
  %118 = mul nsw i32 %117, %17
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %116, i64 %119
  store i8 %113, ptr %120, align 1, !tbaa !32
  %121 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 11
  %122 = load i32, ptr %121, align 4, !tbaa !6
  %123 = trunc i32 %122 to i8
  %124 = load ptr, ptr %3, align 8, !tbaa !12
  %125 = getelementptr inbounds i8, ptr %124, i64 %7
  %126 = getelementptr inbounds i8, ptr %125, i64 11
  %127 = load i32, ptr @pels, align 4, !tbaa !6
  %128 = mul nsw i32 %127, %17
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %126, i64 %129
  store i8 %123, ptr %130, align 1, !tbaa !32
  %131 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 12
  %132 = load i32, ptr %131, align 4, !tbaa !6
  %133 = trunc i32 %132 to i8
  %134 = load ptr, ptr %3, align 8, !tbaa !12
  %135 = getelementptr inbounds i8, ptr %134, i64 %7
  %136 = getelementptr inbounds i8, ptr %135, i64 12
  %137 = load i32, ptr @pels, align 4, !tbaa !6
  %138 = mul nsw i32 %137, %17
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %136, i64 %139
  store i8 %133, ptr %140, align 1, !tbaa !32
  %141 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 13
  %142 = load i32, ptr %141, align 4, !tbaa !6
  %143 = trunc i32 %142 to i8
  %144 = load ptr, ptr %3, align 8, !tbaa !12
  %145 = getelementptr inbounds i8, ptr %144, i64 %7
  %146 = getelementptr inbounds i8, ptr %145, i64 13
  %147 = load i32, ptr @pels, align 4, !tbaa !6
  %148 = mul nsw i32 %147, %17
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %146, i64 %149
  store i8 %143, ptr %150, align 1, !tbaa !32
  %151 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 14
  %152 = load i32, ptr %151, align 4, !tbaa !6
  %153 = trunc i32 %152 to i8
  %154 = load ptr, ptr %3, align 8, !tbaa !12
  %155 = getelementptr inbounds i8, ptr %154, i64 %7
  %156 = getelementptr inbounds i8, ptr %155, i64 14
  %157 = load i32, ptr @pels, align 4, !tbaa !6
  %158 = mul nsw i32 %157, %17
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, ptr %156, i64 %159
  store i8 %153, ptr %160, align 1, !tbaa !32
  %161 = getelementptr inbounds [16 x [16 x i32]], ptr %2, i64 0, i64 %9, i64 15
  %162 = load i32, ptr %161, align 4, !tbaa !6
  %163 = trunc i32 %162 to i8
  %164 = load ptr, ptr %3, align 8, !tbaa !12
  %165 = getelementptr inbounds i8, ptr %164, i64 %7
  %166 = getelementptr inbounds i8, ptr %165, i64 15
  %167 = load i32, ptr @pels, align 4, !tbaa !6
  %168 = mul nsw i32 %167, %17
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %166, i64 %169
  store i8 %163, ptr %170, align 1, !tbaa !32
  %171 = add nuw nsw i64 %9, 1
  %172 = icmp eq i64 %171, 16
  br i1 %172, label %173, label %8

173:                                              ; preds = %8
  %174 = getelementptr inbounds i8, ptr %2, i64 1024
  %175 = getelementptr inbounds i8, ptr %3, i64 8
  %176 = shl nsw i32 %0, 3
  %177 = sext i32 %176 to i64
  %178 = shl nsw i32 %1, 3
  %179 = getelementptr inbounds i8, ptr %2, i64 1280
  %180 = getelementptr inbounds i8, ptr %3, i64 16
  br label %181

181:                                              ; preds = %173, %181
  %182 = phi i64 [ 0, %173 ], [ %343, %181 ]
  %183 = getelementptr inbounds [8 x [8 x i32]], ptr %174, i64 0, i64 %182, i64 0
  %184 = load i32, ptr %183, align 4, !tbaa !6
  %185 = trunc i32 %184 to i8
  %186 = load ptr, ptr %175, align 8, !tbaa !14
  %187 = getelementptr inbounds i8, ptr %186, i64 %177
  %188 = load i32, ptr @cpels, align 4, !tbaa !6
  %189 = trunc i64 %182 to i32
  %190 = add i32 %178, %189
  %191 = mul nsw i32 %188, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, ptr %187, i64 %192
  store i8 %185, ptr %193, align 1, !tbaa !32
  %194 = getelementptr inbounds [8 x [8 x i32]], ptr %179, i64 0, i64 %182, i64 0
  %195 = load i32, ptr %194, align 4, !tbaa !6
  %196 = trunc i32 %195 to i8
  %197 = load ptr, ptr %180, align 8, !tbaa !15
  %198 = getelementptr inbounds i8, ptr %197, i64 %177
  %199 = load i32, ptr @cpels, align 4, !tbaa !6
  %200 = mul nsw i32 %199, %190
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %198, i64 %201
  store i8 %196, ptr %202, align 1, !tbaa !32
  %203 = getelementptr inbounds [8 x [8 x i32]], ptr %174, i64 0, i64 %182, i64 1
  %204 = load i32, ptr %203, align 4, !tbaa !6
  %205 = trunc i32 %204 to i8
  %206 = load ptr, ptr %175, align 8, !tbaa !14
  %207 = getelementptr inbounds i8, ptr %206, i64 %177
  %208 = getelementptr inbounds i8, ptr %207, i64 1
  %209 = load i32, ptr @cpels, align 4, !tbaa !6
  %210 = mul nsw i32 %209, %190
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %208, i64 %211
  store i8 %205, ptr %212, align 1, !tbaa !32
  %213 = getelementptr inbounds [8 x [8 x i32]], ptr %179, i64 0, i64 %182, i64 1
  %214 = load i32, ptr %213, align 4, !tbaa !6
  %215 = trunc i32 %214 to i8
  %216 = load ptr, ptr %180, align 8, !tbaa !15
  %217 = getelementptr inbounds i8, ptr %216, i64 %177
  %218 = getelementptr inbounds i8, ptr %217, i64 1
  %219 = load i32, ptr @cpels, align 4, !tbaa !6
  %220 = mul nsw i32 %219, %190
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, ptr %218, i64 %221
  store i8 %215, ptr %222, align 1, !tbaa !32
  %223 = getelementptr inbounds [8 x [8 x i32]], ptr %174, i64 0, i64 %182, i64 2
  %224 = load i32, ptr %223, align 4, !tbaa !6
  %225 = trunc i32 %224 to i8
  %226 = load ptr, ptr %175, align 8, !tbaa !14
  %227 = getelementptr inbounds i8, ptr %226, i64 %177
  %228 = getelementptr inbounds i8, ptr %227, i64 2
  %229 = load i32, ptr @cpels, align 4, !tbaa !6
  %230 = mul nsw i32 %229, %190
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %228, i64 %231
  store i8 %225, ptr %232, align 1, !tbaa !32
  %233 = getelementptr inbounds [8 x [8 x i32]], ptr %179, i64 0, i64 %182, i64 2
  %234 = load i32, ptr %233, align 4, !tbaa !6
  %235 = trunc i32 %234 to i8
  %236 = load ptr, ptr %180, align 8, !tbaa !15
  %237 = getelementptr inbounds i8, ptr %236, i64 %177
  %238 = getelementptr inbounds i8, ptr %237, i64 2
  %239 = load i32, ptr @cpels, align 4, !tbaa !6
  %240 = mul nsw i32 %239, %190
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, ptr %238, i64 %241
  store i8 %235, ptr %242, align 1, !tbaa !32
  %243 = getelementptr inbounds [8 x [8 x i32]], ptr %174, i64 0, i64 %182, i64 3
  %244 = load i32, ptr %243, align 4, !tbaa !6
  %245 = trunc i32 %244 to i8
  %246 = load ptr, ptr %175, align 8, !tbaa !14
  %247 = getelementptr inbounds i8, ptr %246, i64 %177
  %248 = getelementptr inbounds i8, ptr %247, i64 3
  %249 = load i32, ptr @cpels, align 4, !tbaa !6
  %250 = mul nsw i32 %249, %190
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %248, i64 %251
  store i8 %245, ptr %252, align 1, !tbaa !32
  %253 = getelementptr inbounds [8 x [8 x i32]], ptr %179, i64 0, i64 %182, i64 3
  %254 = load i32, ptr %253, align 4, !tbaa !6
  %255 = trunc i32 %254 to i8
  %256 = load ptr, ptr %180, align 8, !tbaa !15
  %257 = getelementptr inbounds i8, ptr %256, i64 %177
  %258 = getelementptr inbounds i8, ptr %257, i64 3
  %259 = load i32, ptr @cpels, align 4, !tbaa !6
  %260 = mul nsw i32 %259, %190
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, ptr %258, i64 %261
  store i8 %255, ptr %262, align 1, !tbaa !32
  %263 = getelementptr inbounds [8 x [8 x i32]], ptr %174, i64 0, i64 %182, i64 4
  %264 = load i32, ptr %263, align 4, !tbaa !6
  %265 = trunc i32 %264 to i8
  %266 = load ptr, ptr %175, align 8, !tbaa !14
  %267 = getelementptr inbounds i8, ptr %266, i64 %177
  %268 = getelementptr inbounds i8, ptr %267, i64 4
  %269 = load i32, ptr @cpels, align 4, !tbaa !6
  %270 = mul nsw i32 %269, %190
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, ptr %268, i64 %271
  store i8 %265, ptr %272, align 1, !tbaa !32
  %273 = getelementptr inbounds [8 x [8 x i32]], ptr %179, i64 0, i64 %182, i64 4
  %274 = load i32, ptr %273, align 4, !tbaa !6
  %275 = trunc i32 %274 to i8
  %276 = load ptr, ptr %180, align 8, !tbaa !15
  %277 = getelementptr inbounds i8, ptr %276, i64 %177
  %278 = getelementptr inbounds i8, ptr %277, i64 4
  %279 = load i32, ptr @cpels, align 4, !tbaa !6
  %280 = mul nsw i32 %279, %190
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, ptr %278, i64 %281
  store i8 %275, ptr %282, align 1, !tbaa !32
  %283 = getelementptr inbounds [8 x [8 x i32]], ptr %174, i64 0, i64 %182, i64 5
  %284 = load i32, ptr %283, align 4, !tbaa !6
  %285 = trunc i32 %284 to i8
  %286 = load ptr, ptr %175, align 8, !tbaa !14
  %287 = getelementptr inbounds i8, ptr %286, i64 %177
  %288 = getelementptr inbounds i8, ptr %287, i64 5
  %289 = load i32, ptr @cpels, align 4, !tbaa !6
  %290 = mul nsw i32 %289, %190
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, ptr %288, i64 %291
  store i8 %285, ptr %292, align 1, !tbaa !32
  %293 = getelementptr inbounds [8 x [8 x i32]], ptr %179, i64 0, i64 %182, i64 5
  %294 = load i32, ptr %293, align 4, !tbaa !6
  %295 = trunc i32 %294 to i8
  %296 = load ptr, ptr %180, align 8, !tbaa !15
  %297 = getelementptr inbounds i8, ptr %296, i64 %177
  %298 = getelementptr inbounds i8, ptr %297, i64 5
  %299 = load i32, ptr @cpels, align 4, !tbaa !6
  %300 = mul nsw i32 %299, %190
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, ptr %298, i64 %301
  store i8 %295, ptr %302, align 1, !tbaa !32
  %303 = getelementptr inbounds [8 x [8 x i32]], ptr %174, i64 0, i64 %182, i64 6
  %304 = load i32, ptr %303, align 4, !tbaa !6
  %305 = trunc i32 %304 to i8
  %306 = load ptr, ptr %175, align 8, !tbaa !14
  %307 = getelementptr inbounds i8, ptr %306, i64 %177
  %308 = getelementptr inbounds i8, ptr %307, i64 6
  %309 = load i32, ptr @cpels, align 4, !tbaa !6
  %310 = mul nsw i32 %309, %190
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, ptr %308, i64 %311
  store i8 %305, ptr %312, align 1, !tbaa !32
  %313 = getelementptr inbounds [8 x [8 x i32]], ptr %179, i64 0, i64 %182, i64 6
  %314 = load i32, ptr %313, align 4, !tbaa !6
  %315 = trunc i32 %314 to i8
  %316 = load ptr, ptr %180, align 8, !tbaa !15
  %317 = getelementptr inbounds i8, ptr %316, i64 %177
  %318 = getelementptr inbounds i8, ptr %317, i64 6
  %319 = load i32, ptr @cpels, align 4, !tbaa !6
  %320 = mul nsw i32 %319, %190
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, ptr %318, i64 %321
  store i8 %315, ptr %322, align 1, !tbaa !32
  %323 = getelementptr inbounds [8 x [8 x i32]], ptr %174, i64 0, i64 %182, i64 7
  %324 = load i32, ptr %323, align 4, !tbaa !6
  %325 = trunc i32 %324 to i8
  %326 = load ptr, ptr %175, align 8, !tbaa !14
  %327 = getelementptr inbounds i8, ptr %326, i64 %177
  %328 = getelementptr inbounds i8, ptr %327, i64 7
  %329 = load i32, ptr @cpels, align 4, !tbaa !6
  %330 = mul nsw i32 %329, %190
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, ptr %328, i64 %331
  store i8 %325, ptr %332, align 1, !tbaa !32
  %333 = getelementptr inbounds [8 x [8 x i32]], ptr %179, i64 0, i64 %182, i64 7
  %334 = load i32, ptr %333, align 4, !tbaa !6
  %335 = trunc i32 %334 to i8
  %336 = load ptr, ptr %180, align 8, !tbaa !15
  %337 = getelementptr inbounds i8, ptr %336, i64 %177
  %338 = getelementptr inbounds i8, ptr %337, i64 7
  %339 = load i32, ptr @cpels, align 4, !tbaa !6
  %340 = mul nsw i32 %339, %190
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, ptr %338, i64 %341
  store i8 %335, ptr %342, align 1, !tbaa !32
  %343 = add nuw nsw i64 %182, 1
  %344 = icmp eq i64 %343, 8
  br i1 %344, label %345, label %181

345:                                              ; preds = %181
  ret void
}

declare dso_local void @FreeImage(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local ptr @CodeOneIntra(ptr nocapture noundef readonly %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias dereferenceable_or_null(1536) ptr @malloc(i64 noundef 1536) #16
  %6 = load i32, ptr @pels, align 4, !tbaa !6
  %7 = load i32, ptr @lines, align 4, !tbaa !6
  %8 = mul nsw i32 %7, %6
  %9 = tail call ptr @InitImage(i32 noundef signext %8) #15
  tail call void @ZeroBits(ptr noundef %2) #15
  %10 = getelementptr inbounds i8, ptr %3, i64 44
  store i32 %1, ptr %10, align 4, !tbaa !28
  %11 = tail call signext i32 @CountBitsPicture(ptr noundef %3) #15
  %12 = getelementptr inbounds i8, ptr %2, i64 32
  %13 = load i32, ptr %12, align 4, !tbaa !29
  %14 = add nsw i32 %13, %11
  store i32 %14, ptr %12, align 4, !tbaa !29
  %15 = load i32, ptr @lines, align 4, !tbaa !6
  %16 = icmp sgt i32 %15, 15
  br i1 %16, label %17, label %708

17:                                               ; preds = %4
  %18 = getelementptr inbounds i8, ptr %3, i64 60
  %19 = getelementptr inbounds i8, ptr %3, i64 52
  %20 = getelementptr inbounds i8, ptr %2, i64 52
  %21 = getelementptr inbounds i8, ptr %0, i64 8
  %22 = getelementptr inbounds i8, ptr %5, i64 1024
  %23 = getelementptr inbounds i8, ptr %0, i64 16
  %24 = getelementptr inbounds i8, ptr %5, i64 1280
  %25 = getelementptr inbounds i8, ptr %5, i64 1028
  %26 = getelementptr inbounds i8, ptr %5, i64 1284
  %27 = getelementptr inbounds i8, ptr %5, i64 1032
  %28 = getelementptr inbounds i8, ptr %5, i64 1288
  %29 = getelementptr inbounds i8, ptr %5, i64 1036
  %30 = getelementptr inbounds i8, ptr %5, i64 1292
  %31 = getelementptr inbounds i8, ptr %5, i64 1040
  %32 = getelementptr inbounds i8, ptr %5, i64 1296
  %33 = getelementptr inbounds i8, ptr %5, i64 1044
  %34 = getelementptr inbounds i8, ptr %5, i64 1300
  %35 = getelementptr inbounds i8, ptr %5, i64 1048
  %36 = getelementptr inbounds i8, ptr %5, i64 1304
  %37 = getelementptr inbounds i8, ptr %5, i64 1052
  %38 = getelementptr inbounds i8, ptr %5, i64 1308
  %39 = getelementptr inbounds i8, ptr %5, i64 1056
  %40 = getelementptr inbounds i8, ptr %5, i64 1312
  %41 = getelementptr inbounds i8, ptr %5, i64 1060
  %42 = getelementptr inbounds i8, ptr %5, i64 1316
  %43 = getelementptr inbounds i8, ptr %5, i64 1064
  %44 = getelementptr inbounds i8, ptr %5, i64 1320
  %45 = getelementptr inbounds i8, ptr %5, i64 1068
  %46 = getelementptr inbounds i8, ptr %5, i64 1324
  %47 = getelementptr inbounds i8, ptr %5, i64 1072
  %48 = getelementptr inbounds i8, ptr %5, i64 1328
  %49 = getelementptr inbounds i8, ptr %5, i64 1076
  %50 = getelementptr inbounds i8, ptr %5, i64 1332
  %51 = getelementptr inbounds i8, ptr %5, i64 1080
  %52 = getelementptr inbounds i8, ptr %5, i64 1336
  %53 = getelementptr inbounds i8, ptr %5, i64 1084
  %54 = getelementptr inbounds i8, ptr %5, i64 1340
  %55 = getelementptr inbounds i8, ptr %5, i64 1088
  %56 = getelementptr inbounds i8, ptr %5, i64 1344
  %57 = getelementptr inbounds i8, ptr %5, i64 1092
  %58 = getelementptr inbounds i8, ptr %5, i64 1348
  %59 = getelementptr inbounds i8, ptr %5, i64 1096
  %60 = getelementptr inbounds i8, ptr %5, i64 1352
  %61 = getelementptr inbounds i8, ptr %5, i64 1100
  %62 = getelementptr inbounds i8, ptr %5, i64 1356
  %63 = getelementptr inbounds i8, ptr %5, i64 1104
  %64 = getelementptr inbounds i8, ptr %5, i64 1360
  %65 = getelementptr inbounds i8, ptr %5, i64 1108
  %66 = getelementptr inbounds i8, ptr %5, i64 1364
  %67 = getelementptr inbounds i8, ptr %5, i64 1112
  %68 = getelementptr inbounds i8, ptr %5, i64 1368
  %69 = getelementptr inbounds i8, ptr %5, i64 1116
  %70 = getelementptr inbounds i8, ptr %5, i64 1372
  %71 = getelementptr inbounds i8, ptr %5, i64 1120
  %72 = getelementptr inbounds i8, ptr %5, i64 1376
  %73 = getelementptr inbounds i8, ptr %5, i64 1124
  %74 = getelementptr inbounds i8, ptr %5, i64 1380
  %75 = getelementptr inbounds i8, ptr %5, i64 1128
  %76 = getelementptr inbounds i8, ptr %5, i64 1384
  %77 = getelementptr inbounds i8, ptr %5, i64 1132
  %78 = getelementptr inbounds i8, ptr %5, i64 1388
  %79 = getelementptr inbounds i8, ptr %5, i64 1136
  %80 = getelementptr inbounds i8, ptr %5, i64 1392
  %81 = getelementptr inbounds i8, ptr %5, i64 1140
  %82 = getelementptr inbounds i8, ptr %5, i64 1396
  %83 = getelementptr inbounds i8, ptr %5, i64 1144
  %84 = getelementptr inbounds i8, ptr %5, i64 1400
  %85 = getelementptr inbounds i8, ptr %5, i64 1148
  %86 = getelementptr inbounds i8, ptr %5, i64 1404
  %87 = getelementptr inbounds i8, ptr %5, i64 1152
  %88 = getelementptr inbounds i8, ptr %5, i64 1408
  %89 = getelementptr inbounds i8, ptr %5, i64 1156
  %90 = getelementptr inbounds i8, ptr %5, i64 1412
  %91 = getelementptr inbounds i8, ptr %5, i64 1160
  %92 = getelementptr inbounds i8, ptr %5, i64 1416
  %93 = getelementptr inbounds i8, ptr %5, i64 1164
  %94 = getelementptr inbounds i8, ptr %5, i64 1420
  %95 = getelementptr inbounds i8, ptr %5, i64 1168
  %96 = getelementptr inbounds i8, ptr %5, i64 1424
  %97 = getelementptr inbounds i8, ptr %5, i64 1172
  %98 = getelementptr inbounds i8, ptr %5, i64 1428
  %99 = getelementptr inbounds i8, ptr %5, i64 1176
  %100 = getelementptr inbounds i8, ptr %5, i64 1432
  %101 = getelementptr inbounds i8, ptr %5, i64 1180
  %102 = getelementptr inbounds i8, ptr %5, i64 1436
  %103 = getelementptr inbounds i8, ptr %5, i64 1184
  %104 = getelementptr inbounds i8, ptr %5, i64 1440
  %105 = getelementptr inbounds i8, ptr %5, i64 1188
  %106 = getelementptr inbounds i8, ptr %5, i64 1444
  %107 = getelementptr inbounds i8, ptr %5, i64 1192
  %108 = getelementptr inbounds i8, ptr %5, i64 1448
  %109 = getelementptr inbounds i8, ptr %5, i64 1196
  %110 = getelementptr inbounds i8, ptr %5, i64 1452
  %111 = getelementptr inbounds i8, ptr %5, i64 1200
  %112 = getelementptr inbounds i8, ptr %5, i64 1456
  %113 = getelementptr inbounds i8, ptr %5, i64 1204
  %114 = getelementptr inbounds i8, ptr %5, i64 1460
  %115 = getelementptr inbounds i8, ptr %5, i64 1208
  %116 = getelementptr inbounds i8, ptr %5, i64 1464
  %117 = getelementptr inbounds i8, ptr %5, i64 1212
  %118 = getelementptr inbounds i8, ptr %5, i64 1468
  %119 = getelementptr inbounds i8, ptr %5, i64 1216
  %120 = getelementptr inbounds i8, ptr %5, i64 1472
  %121 = getelementptr inbounds i8, ptr %5, i64 1220
  %122 = getelementptr inbounds i8, ptr %5, i64 1476
  %123 = getelementptr inbounds i8, ptr %5, i64 1224
  %124 = getelementptr inbounds i8, ptr %5, i64 1480
  %125 = getelementptr inbounds i8, ptr %5, i64 1228
  %126 = getelementptr inbounds i8, ptr %5, i64 1484
  %127 = getelementptr inbounds i8, ptr %5, i64 1232
  %128 = getelementptr inbounds i8, ptr %5, i64 1488
  %129 = getelementptr inbounds i8, ptr %5, i64 1236
  %130 = getelementptr inbounds i8, ptr %5, i64 1492
  %131 = getelementptr inbounds i8, ptr %5, i64 1240
  %132 = getelementptr inbounds i8, ptr %5, i64 1496
  %133 = getelementptr inbounds i8, ptr %5, i64 1244
  %134 = getelementptr inbounds i8, ptr %5, i64 1500
  %135 = getelementptr inbounds i8, ptr %5, i64 1248
  %136 = getelementptr inbounds i8, ptr %5, i64 1504
  %137 = getelementptr inbounds i8, ptr %5, i64 1252
  %138 = getelementptr inbounds i8, ptr %5, i64 1508
  %139 = getelementptr inbounds i8, ptr %5, i64 1256
  %140 = getelementptr inbounds i8, ptr %5, i64 1512
  %141 = getelementptr inbounds i8, ptr %5, i64 1260
  %142 = getelementptr inbounds i8, ptr %5, i64 1516
  %143 = getelementptr inbounds i8, ptr %5, i64 1264
  %144 = getelementptr inbounds i8, ptr %5, i64 1520
  %145 = getelementptr inbounds i8, ptr %5, i64 1268
  %146 = getelementptr inbounds i8, ptr %5, i64 1524
  %147 = getelementptr inbounds i8, ptr %5, i64 1272
  %148 = getelementptr inbounds i8, ptr %5, i64 1528
  %149 = getelementptr inbounds i8, ptr %5, i64 1276
  %150 = getelementptr inbounds i8, ptr %5, i64 1532
  br label %151

151:                                              ; preds = %17, %702
  %152 = phi i64 [ 0, %17 ], [ %703, %702 ]
  %153 = load i32, ptr %18, align 4, !tbaa !21
  %154 = icmp ne i32 %153, 0
  %155 = icmp ne i64 %152, 0
  %156 = and i1 %155, %154
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = trunc nuw nsw i64 %152 to i32
  %159 = tail call signext i32 @CountBitsSlice(i32 noundef signext %158, i32 noundef signext %1) #15
  %160 = load i32, ptr %12, align 4, !tbaa !29
  %161 = add nsw i32 %160, %159
  store i32 %161, ptr %12, align 4, !tbaa !29
  br label %162

162:                                              ; preds = %157, %151
  %163 = load i32, ptr @pels, align 4, !tbaa !6
  %164 = icmp sgt i32 %163, 15
  br i1 %164, label %165, label %702

165:                                              ; preds = %162
  %166 = lshr i32 %163, 4
  %167 = shl nsw i64 %152, 4
  %168 = lshr exact i64 %167, 1
  %169 = trunc nuw nsw i64 %152 to i32
  %170 = or disjoint i64 %168, 1
  %171 = or disjoint i64 %168, 2
  %172 = or disjoint i64 %168, 3
  %173 = or disjoint i64 %168, 4
  %174 = or disjoint i64 %168, 5
  %175 = or disjoint i64 %168, 6
  %176 = or disjoint i64 %168, 7
  br label %177

177:                                              ; preds = %165, %695
  %178 = phi i64 [ 0, %165 ], [ %697, %695 ]
  %179 = phi i32 [ %166, %165 ], [ %699, %695 ]
  %180 = phi i32 [ %163, %165 ], [ %698, %695 ]
  %181 = mul nsw i32 %179, %169
  %182 = trunc nuw nsw i64 %178 to i32
  %183 = add nsw i32 %181, %182
  store i32 %183, ptr %19, align 4, !tbaa !31
  %184 = load i32, ptr %20, align 4, !tbaa !40
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %20, align 4, !tbaa !40
  %186 = shl nsw i64 %178, 4
  %187 = load ptr, ptr %0, align 8, !tbaa !12
  %188 = getelementptr inbounds i8, ptr %187, i64 %186
  %189 = getelementptr inbounds i8, ptr %188, i64 1
  %190 = getelementptr inbounds i8, ptr %188, i64 2
  %191 = getelementptr inbounds i8, ptr %188, i64 3
  %192 = getelementptr inbounds i8, ptr %188, i64 4
  %193 = getelementptr inbounds i8, ptr %188, i64 5
  %194 = getelementptr inbounds i8, ptr %188, i64 6
  %195 = getelementptr inbounds i8, ptr %188, i64 7
  %196 = getelementptr inbounds i8, ptr %188, i64 8
  %197 = getelementptr inbounds i8, ptr %188, i64 9
  %198 = getelementptr inbounds i8, ptr %188, i64 10
  %199 = getelementptr inbounds i8, ptr %188, i64 11
  %200 = getelementptr inbounds i8, ptr %188, i64 12
  %201 = getelementptr inbounds i8, ptr %188, i64 13
  %202 = getelementptr inbounds i8, ptr %188, i64 14
  %203 = getelementptr inbounds i8, ptr %188, i64 15
  %204 = sext i32 %180 to i64
  br label %205

205:                                              ; preds = %205, %177
  %206 = phi i64 [ 0, %177 ], [ %273, %205 ]
  %207 = add nuw nsw i64 %206, %167
  %208 = mul nsw i64 %207, %204
  %209 = getelementptr inbounds i8, ptr %188, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !32
  %211 = zext i8 %210 to i32
  %212 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 0
  store i32 %211, ptr %212, align 4, !tbaa !6
  %213 = getelementptr inbounds i8, ptr %189, i64 %208
  %214 = load i8, ptr %213, align 1, !tbaa !32
  %215 = zext i8 %214 to i32
  %216 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 1
  store i32 %215, ptr %216, align 4, !tbaa !6
  %217 = getelementptr inbounds i8, ptr %190, i64 %208
  %218 = load i8, ptr %217, align 1, !tbaa !32
  %219 = zext i8 %218 to i32
  %220 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 2
  store i32 %219, ptr %220, align 4, !tbaa !6
  %221 = getelementptr inbounds i8, ptr %191, i64 %208
  %222 = load i8, ptr %221, align 1, !tbaa !32
  %223 = zext i8 %222 to i32
  %224 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 3
  store i32 %223, ptr %224, align 4, !tbaa !6
  %225 = getelementptr inbounds i8, ptr %192, i64 %208
  %226 = load i8, ptr %225, align 1, !tbaa !32
  %227 = zext i8 %226 to i32
  %228 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 4
  store i32 %227, ptr %228, align 4, !tbaa !6
  %229 = getelementptr inbounds i8, ptr %193, i64 %208
  %230 = load i8, ptr %229, align 1, !tbaa !32
  %231 = zext i8 %230 to i32
  %232 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 5
  store i32 %231, ptr %232, align 4, !tbaa !6
  %233 = getelementptr inbounds i8, ptr %194, i64 %208
  %234 = load i8, ptr %233, align 1, !tbaa !32
  %235 = zext i8 %234 to i32
  %236 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 6
  store i32 %235, ptr %236, align 4, !tbaa !6
  %237 = getelementptr inbounds i8, ptr %195, i64 %208
  %238 = load i8, ptr %237, align 1, !tbaa !32
  %239 = zext i8 %238 to i32
  %240 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 7
  store i32 %239, ptr %240, align 4, !tbaa !6
  %241 = getelementptr inbounds i8, ptr %196, i64 %208
  %242 = load i8, ptr %241, align 1, !tbaa !32
  %243 = zext i8 %242 to i32
  %244 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 8
  store i32 %243, ptr %244, align 4, !tbaa !6
  %245 = getelementptr inbounds i8, ptr %197, i64 %208
  %246 = load i8, ptr %245, align 1, !tbaa !32
  %247 = zext i8 %246 to i32
  %248 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 9
  store i32 %247, ptr %248, align 4, !tbaa !6
  %249 = getelementptr inbounds i8, ptr %198, i64 %208
  %250 = load i8, ptr %249, align 1, !tbaa !32
  %251 = zext i8 %250 to i32
  %252 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 10
  store i32 %251, ptr %252, align 4, !tbaa !6
  %253 = getelementptr inbounds i8, ptr %199, i64 %208
  %254 = load i8, ptr %253, align 1, !tbaa !32
  %255 = zext i8 %254 to i32
  %256 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 11
  store i32 %255, ptr %256, align 4, !tbaa !6
  %257 = getelementptr inbounds i8, ptr %200, i64 %208
  %258 = load i8, ptr %257, align 1, !tbaa !32
  %259 = zext i8 %258 to i32
  %260 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 12
  store i32 %259, ptr %260, align 4, !tbaa !6
  %261 = getelementptr inbounds i8, ptr %201, i64 %208
  %262 = load i8, ptr %261, align 1, !tbaa !32
  %263 = zext i8 %262 to i32
  %264 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 13
  store i32 %263, ptr %264, align 4, !tbaa !6
  %265 = getelementptr inbounds i8, ptr %202, i64 %208
  %266 = load i8, ptr %265, align 1, !tbaa !32
  %267 = zext i8 %266 to i32
  %268 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 14
  store i32 %267, ptr %268, align 4, !tbaa !6
  %269 = getelementptr inbounds i8, ptr %203, i64 %208
  %270 = load i8, ptr %269, align 1, !tbaa !32
  %271 = zext i8 %270 to i32
  %272 = getelementptr inbounds [16 x [16 x i32]], ptr %5, i64 0, i64 %206, i64 15
  store i32 %271, ptr %272, align 4, !tbaa !6
  %273 = add nuw nsw i64 %206, 1
  %274 = icmp eq i64 %273, 16
  br i1 %274, label %275, label %205

275:                                              ; preds = %205
  %276 = lshr exact i64 %186, 1
  %277 = load ptr, ptr %21, align 8, !tbaa !14
  %278 = getelementptr inbounds i8, ptr %277, i64 %276
  %279 = load ptr, ptr %23, align 8, !tbaa !15
  %280 = getelementptr inbounds i8, ptr %279, i64 %276
  %281 = getelementptr inbounds i8, ptr %278, i64 1
  %282 = getelementptr inbounds i8, ptr %280, i64 1
  %283 = getelementptr inbounds i8, ptr %278, i64 2
  %284 = getelementptr inbounds i8, ptr %280, i64 2
  %285 = getelementptr inbounds i8, ptr %278, i64 3
  %286 = getelementptr inbounds i8, ptr %280, i64 3
  %287 = getelementptr inbounds i8, ptr %278, i64 4
  %288 = getelementptr inbounds i8, ptr %280, i64 4
  %289 = getelementptr inbounds i8, ptr %278, i64 5
  %290 = getelementptr inbounds i8, ptr %280, i64 5
  %291 = getelementptr inbounds i8, ptr %278, i64 6
  %292 = getelementptr inbounds i8, ptr %280, i64 6
  %293 = getelementptr inbounds i8, ptr %278, i64 7
  %294 = getelementptr inbounds i8, ptr %280, i64 7
  %295 = load i32, ptr @cpels, align 4, !tbaa !6
  %296 = sext i32 %295 to i64
  %297 = mul nsw i64 %168, %296
  %298 = getelementptr inbounds i8, ptr %278, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !32
  %300 = zext i8 %299 to i32
  store i32 %300, ptr %22, align 4, !tbaa !6
  %301 = getelementptr inbounds i8, ptr %280, i64 %297
  %302 = load i8, ptr %301, align 1, !tbaa !32
  %303 = zext i8 %302 to i32
  store i32 %303, ptr %24, align 4, !tbaa !6
  %304 = getelementptr inbounds i8, ptr %281, i64 %297
  %305 = load i8, ptr %304, align 1, !tbaa !32
  %306 = zext i8 %305 to i32
  store i32 %306, ptr %25, align 4, !tbaa !6
  %307 = getelementptr inbounds i8, ptr %282, i64 %297
  %308 = load i8, ptr %307, align 1, !tbaa !32
  %309 = zext i8 %308 to i32
  store i32 %309, ptr %26, align 4, !tbaa !6
  %310 = getelementptr inbounds i8, ptr %283, i64 %297
  %311 = load i8, ptr %310, align 1, !tbaa !32
  %312 = zext i8 %311 to i32
  store i32 %312, ptr %27, align 4, !tbaa !6
  %313 = getelementptr inbounds i8, ptr %284, i64 %297
  %314 = load i8, ptr %313, align 1, !tbaa !32
  %315 = zext i8 %314 to i32
  store i32 %315, ptr %28, align 4, !tbaa !6
  %316 = getelementptr inbounds i8, ptr %285, i64 %297
  %317 = load i8, ptr %316, align 1, !tbaa !32
  %318 = zext i8 %317 to i32
  store i32 %318, ptr %29, align 4, !tbaa !6
  %319 = getelementptr inbounds i8, ptr %286, i64 %297
  %320 = load i8, ptr %319, align 1, !tbaa !32
  %321 = zext i8 %320 to i32
  store i32 %321, ptr %30, align 4, !tbaa !6
  %322 = getelementptr inbounds i8, ptr %287, i64 %297
  %323 = load i8, ptr %322, align 1, !tbaa !32
  %324 = zext i8 %323 to i32
  store i32 %324, ptr %31, align 4, !tbaa !6
  %325 = getelementptr inbounds i8, ptr %288, i64 %297
  %326 = load i8, ptr %325, align 1, !tbaa !32
  %327 = zext i8 %326 to i32
  store i32 %327, ptr %32, align 4, !tbaa !6
  %328 = getelementptr inbounds i8, ptr %289, i64 %297
  %329 = load i8, ptr %328, align 1, !tbaa !32
  %330 = zext i8 %329 to i32
  store i32 %330, ptr %33, align 4, !tbaa !6
  %331 = getelementptr inbounds i8, ptr %290, i64 %297
  %332 = load i8, ptr %331, align 1, !tbaa !32
  %333 = zext i8 %332 to i32
  store i32 %333, ptr %34, align 4, !tbaa !6
  %334 = getelementptr inbounds i8, ptr %291, i64 %297
  %335 = load i8, ptr %334, align 1, !tbaa !32
  %336 = zext i8 %335 to i32
  store i32 %336, ptr %35, align 4, !tbaa !6
  %337 = getelementptr inbounds i8, ptr %292, i64 %297
  %338 = load i8, ptr %337, align 1, !tbaa !32
  %339 = zext i8 %338 to i32
  store i32 %339, ptr %36, align 4, !tbaa !6
  %340 = getelementptr inbounds i8, ptr %293, i64 %297
  %341 = load i8, ptr %340, align 1, !tbaa !32
  %342 = zext i8 %341 to i32
  store i32 %342, ptr %37, align 4, !tbaa !6
  %343 = getelementptr inbounds i8, ptr %294, i64 %297
  %344 = load i8, ptr %343, align 1, !tbaa !32
  %345 = zext i8 %344 to i32
  store i32 %345, ptr %38, align 4, !tbaa !6
  %346 = mul nsw i64 %170, %296
  %347 = getelementptr inbounds i8, ptr %278, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !32
  %349 = zext i8 %348 to i32
  store i32 %349, ptr %39, align 4, !tbaa !6
  %350 = getelementptr inbounds i8, ptr %280, i64 %346
  %351 = load i8, ptr %350, align 1, !tbaa !32
  %352 = zext i8 %351 to i32
  store i32 %352, ptr %40, align 4, !tbaa !6
  %353 = getelementptr inbounds i8, ptr %281, i64 %346
  %354 = load i8, ptr %353, align 1, !tbaa !32
  %355 = zext i8 %354 to i32
  store i32 %355, ptr %41, align 4, !tbaa !6
  %356 = getelementptr inbounds i8, ptr %282, i64 %346
  %357 = load i8, ptr %356, align 1, !tbaa !32
  %358 = zext i8 %357 to i32
  store i32 %358, ptr %42, align 4, !tbaa !6
  %359 = getelementptr inbounds i8, ptr %283, i64 %346
  %360 = load i8, ptr %359, align 1, !tbaa !32
  %361 = zext i8 %360 to i32
  store i32 %361, ptr %43, align 4, !tbaa !6
  %362 = getelementptr inbounds i8, ptr %284, i64 %346
  %363 = load i8, ptr %362, align 1, !tbaa !32
  %364 = zext i8 %363 to i32
  store i32 %364, ptr %44, align 4, !tbaa !6
  %365 = getelementptr inbounds i8, ptr %285, i64 %346
  %366 = load i8, ptr %365, align 1, !tbaa !32
  %367 = zext i8 %366 to i32
  store i32 %367, ptr %45, align 4, !tbaa !6
  %368 = getelementptr inbounds i8, ptr %286, i64 %346
  %369 = load i8, ptr %368, align 1, !tbaa !32
  %370 = zext i8 %369 to i32
  store i32 %370, ptr %46, align 4, !tbaa !6
  %371 = getelementptr inbounds i8, ptr %287, i64 %346
  %372 = load i8, ptr %371, align 1, !tbaa !32
  %373 = zext i8 %372 to i32
  store i32 %373, ptr %47, align 4, !tbaa !6
  %374 = getelementptr inbounds i8, ptr %288, i64 %346
  %375 = load i8, ptr %374, align 1, !tbaa !32
  %376 = zext i8 %375 to i32
  store i32 %376, ptr %48, align 4, !tbaa !6
  %377 = getelementptr inbounds i8, ptr %289, i64 %346
  %378 = load i8, ptr %377, align 1, !tbaa !32
  %379 = zext i8 %378 to i32
  store i32 %379, ptr %49, align 4, !tbaa !6
  %380 = getelementptr inbounds i8, ptr %290, i64 %346
  %381 = load i8, ptr %380, align 1, !tbaa !32
  %382 = zext i8 %381 to i32
  store i32 %382, ptr %50, align 4, !tbaa !6
  %383 = getelementptr inbounds i8, ptr %291, i64 %346
  %384 = load i8, ptr %383, align 1, !tbaa !32
  %385 = zext i8 %384 to i32
  store i32 %385, ptr %51, align 4, !tbaa !6
  %386 = getelementptr inbounds i8, ptr %292, i64 %346
  %387 = load i8, ptr %386, align 1, !tbaa !32
  %388 = zext i8 %387 to i32
  store i32 %388, ptr %52, align 4, !tbaa !6
  %389 = getelementptr inbounds i8, ptr %293, i64 %346
  %390 = load i8, ptr %389, align 1, !tbaa !32
  %391 = zext i8 %390 to i32
  store i32 %391, ptr %53, align 4, !tbaa !6
  %392 = getelementptr inbounds i8, ptr %294, i64 %346
  %393 = load i8, ptr %392, align 1, !tbaa !32
  %394 = zext i8 %393 to i32
  store i32 %394, ptr %54, align 4, !tbaa !6
  %395 = mul nsw i64 %171, %296
  %396 = getelementptr inbounds i8, ptr %278, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !32
  %398 = zext i8 %397 to i32
  store i32 %398, ptr %55, align 4, !tbaa !6
  %399 = getelementptr inbounds i8, ptr %280, i64 %395
  %400 = load i8, ptr %399, align 1, !tbaa !32
  %401 = zext i8 %400 to i32
  store i32 %401, ptr %56, align 4, !tbaa !6
  %402 = getelementptr inbounds i8, ptr %281, i64 %395
  %403 = load i8, ptr %402, align 1, !tbaa !32
  %404 = zext i8 %403 to i32
  store i32 %404, ptr %57, align 4, !tbaa !6
  %405 = getelementptr inbounds i8, ptr %282, i64 %395
  %406 = load i8, ptr %405, align 1, !tbaa !32
  %407 = zext i8 %406 to i32
  store i32 %407, ptr %58, align 4, !tbaa !6
  %408 = getelementptr inbounds i8, ptr %283, i64 %395
  %409 = load i8, ptr %408, align 1, !tbaa !32
  %410 = zext i8 %409 to i32
  store i32 %410, ptr %59, align 4, !tbaa !6
  %411 = getelementptr inbounds i8, ptr %284, i64 %395
  %412 = load i8, ptr %411, align 1, !tbaa !32
  %413 = zext i8 %412 to i32
  store i32 %413, ptr %60, align 4, !tbaa !6
  %414 = getelementptr inbounds i8, ptr %285, i64 %395
  %415 = load i8, ptr %414, align 1, !tbaa !32
  %416 = zext i8 %415 to i32
  store i32 %416, ptr %61, align 4, !tbaa !6
  %417 = getelementptr inbounds i8, ptr %286, i64 %395
  %418 = load i8, ptr %417, align 1, !tbaa !32
  %419 = zext i8 %418 to i32
  store i32 %419, ptr %62, align 4, !tbaa !6
  %420 = getelementptr inbounds i8, ptr %287, i64 %395
  %421 = load i8, ptr %420, align 1, !tbaa !32
  %422 = zext i8 %421 to i32
  store i32 %422, ptr %63, align 4, !tbaa !6
  %423 = getelementptr inbounds i8, ptr %288, i64 %395
  %424 = load i8, ptr %423, align 1, !tbaa !32
  %425 = zext i8 %424 to i32
  store i32 %425, ptr %64, align 4, !tbaa !6
  %426 = getelementptr inbounds i8, ptr %289, i64 %395
  %427 = load i8, ptr %426, align 1, !tbaa !32
  %428 = zext i8 %427 to i32
  store i32 %428, ptr %65, align 4, !tbaa !6
  %429 = getelementptr inbounds i8, ptr %290, i64 %395
  %430 = load i8, ptr %429, align 1, !tbaa !32
  %431 = zext i8 %430 to i32
  store i32 %431, ptr %66, align 4, !tbaa !6
  %432 = getelementptr inbounds i8, ptr %291, i64 %395
  %433 = load i8, ptr %432, align 1, !tbaa !32
  %434 = zext i8 %433 to i32
  store i32 %434, ptr %67, align 4, !tbaa !6
  %435 = getelementptr inbounds i8, ptr %292, i64 %395
  %436 = load i8, ptr %435, align 1, !tbaa !32
  %437 = zext i8 %436 to i32
  store i32 %437, ptr %68, align 4, !tbaa !6
  %438 = getelementptr inbounds i8, ptr %293, i64 %395
  %439 = load i8, ptr %438, align 1, !tbaa !32
  %440 = zext i8 %439 to i32
  store i32 %440, ptr %69, align 4, !tbaa !6
  %441 = getelementptr inbounds i8, ptr %294, i64 %395
  %442 = load i8, ptr %441, align 1, !tbaa !32
  %443 = zext i8 %442 to i32
  store i32 %443, ptr %70, align 4, !tbaa !6
  %444 = mul nsw i64 %172, %296
  %445 = getelementptr inbounds i8, ptr %278, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !32
  %447 = zext i8 %446 to i32
  store i32 %447, ptr %71, align 4, !tbaa !6
  %448 = getelementptr inbounds i8, ptr %280, i64 %444
  %449 = load i8, ptr %448, align 1, !tbaa !32
  %450 = zext i8 %449 to i32
  store i32 %450, ptr %72, align 4, !tbaa !6
  %451 = getelementptr inbounds i8, ptr %281, i64 %444
  %452 = load i8, ptr %451, align 1, !tbaa !32
  %453 = zext i8 %452 to i32
  store i32 %453, ptr %73, align 4, !tbaa !6
  %454 = getelementptr inbounds i8, ptr %282, i64 %444
  %455 = load i8, ptr %454, align 1, !tbaa !32
  %456 = zext i8 %455 to i32
  store i32 %456, ptr %74, align 4, !tbaa !6
  %457 = getelementptr inbounds i8, ptr %283, i64 %444
  %458 = load i8, ptr %457, align 1, !tbaa !32
  %459 = zext i8 %458 to i32
  store i32 %459, ptr %75, align 4, !tbaa !6
  %460 = getelementptr inbounds i8, ptr %284, i64 %444
  %461 = load i8, ptr %460, align 1, !tbaa !32
  %462 = zext i8 %461 to i32
  store i32 %462, ptr %76, align 4, !tbaa !6
  %463 = getelementptr inbounds i8, ptr %285, i64 %444
  %464 = load i8, ptr %463, align 1, !tbaa !32
  %465 = zext i8 %464 to i32
  store i32 %465, ptr %77, align 4, !tbaa !6
  %466 = getelementptr inbounds i8, ptr %286, i64 %444
  %467 = load i8, ptr %466, align 1, !tbaa !32
  %468 = zext i8 %467 to i32
  store i32 %468, ptr %78, align 4, !tbaa !6
  %469 = getelementptr inbounds i8, ptr %287, i64 %444
  %470 = load i8, ptr %469, align 1, !tbaa !32
  %471 = zext i8 %470 to i32
  store i32 %471, ptr %79, align 4, !tbaa !6
  %472 = getelementptr inbounds i8, ptr %288, i64 %444
  %473 = load i8, ptr %472, align 1, !tbaa !32
  %474 = zext i8 %473 to i32
  store i32 %474, ptr %80, align 4, !tbaa !6
  %475 = getelementptr inbounds i8, ptr %289, i64 %444
  %476 = load i8, ptr %475, align 1, !tbaa !32
  %477 = zext i8 %476 to i32
  store i32 %477, ptr %81, align 4, !tbaa !6
  %478 = getelementptr inbounds i8, ptr %290, i64 %444
  %479 = load i8, ptr %478, align 1, !tbaa !32
  %480 = zext i8 %479 to i32
  store i32 %480, ptr %82, align 4, !tbaa !6
  %481 = getelementptr inbounds i8, ptr %291, i64 %444
  %482 = load i8, ptr %481, align 1, !tbaa !32
  %483 = zext i8 %482 to i32
  store i32 %483, ptr %83, align 4, !tbaa !6
  %484 = getelementptr inbounds i8, ptr %292, i64 %444
  %485 = load i8, ptr %484, align 1, !tbaa !32
  %486 = zext i8 %485 to i32
  store i32 %486, ptr %84, align 4, !tbaa !6
  %487 = getelementptr inbounds i8, ptr %293, i64 %444
  %488 = load i8, ptr %487, align 1, !tbaa !32
  %489 = zext i8 %488 to i32
  store i32 %489, ptr %85, align 4, !tbaa !6
  %490 = getelementptr inbounds i8, ptr %294, i64 %444
  %491 = load i8, ptr %490, align 1, !tbaa !32
  %492 = zext i8 %491 to i32
  store i32 %492, ptr %86, align 4, !tbaa !6
  %493 = mul nsw i64 %173, %296
  %494 = getelementptr inbounds i8, ptr %278, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !32
  %496 = zext i8 %495 to i32
  store i32 %496, ptr %87, align 4, !tbaa !6
  %497 = getelementptr inbounds i8, ptr %280, i64 %493
  %498 = load i8, ptr %497, align 1, !tbaa !32
  %499 = zext i8 %498 to i32
  store i32 %499, ptr %88, align 4, !tbaa !6
  %500 = getelementptr inbounds i8, ptr %281, i64 %493
  %501 = load i8, ptr %500, align 1, !tbaa !32
  %502 = zext i8 %501 to i32
  store i32 %502, ptr %89, align 4, !tbaa !6
  %503 = getelementptr inbounds i8, ptr %282, i64 %493
  %504 = load i8, ptr %503, align 1, !tbaa !32
  %505 = zext i8 %504 to i32
  store i32 %505, ptr %90, align 4, !tbaa !6
  %506 = getelementptr inbounds i8, ptr %283, i64 %493
  %507 = load i8, ptr %506, align 1, !tbaa !32
  %508 = zext i8 %507 to i32
  store i32 %508, ptr %91, align 4, !tbaa !6
  %509 = getelementptr inbounds i8, ptr %284, i64 %493
  %510 = load i8, ptr %509, align 1, !tbaa !32
  %511 = zext i8 %510 to i32
  store i32 %511, ptr %92, align 4, !tbaa !6
  %512 = getelementptr inbounds i8, ptr %285, i64 %493
  %513 = load i8, ptr %512, align 1, !tbaa !32
  %514 = zext i8 %513 to i32
  store i32 %514, ptr %93, align 4, !tbaa !6
  %515 = getelementptr inbounds i8, ptr %286, i64 %493
  %516 = load i8, ptr %515, align 1, !tbaa !32
  %517 = zext i8 %516 to i32
  store i32 %517, ptr %94, align 4, !tbaa !6
  %518 = getelementptr inbounds i8, ptr %287, i64 %493
  %519 = load i8, ptr %518, align 1, !tbaa !32
  %520 = zext i8 %519 to i32
  store i32 %520, ptr %95, align 4, !tbaa !6
  %521 = getelementptr inbounds i8, ptr %288, i64 %493
  %522 = load i8, ptr %521, align 1, !tbaa !32
  %523 = zext i8 %522 to i32
  store i32 %523, ptr %96, align 4, !tbaa !6
  %524 = getelementptr inbounds i8, ptr %289, i64 %493
  %525 = load i8, ptr %524, align 1, !tbaa !32
  %526 = zext i8 %525 to i32
  store i32 %526, ptr %97, align 4, !tbaa !6
  %527 = getelementptr inbounds i8, ptr %290, i64 %493
  %528 = load i8, ptr %527, align 1, !tbaa !32
  %529 = zext i8 %528 to i32
  store i32 %529, ptr %98, align 4, !tbaa !6
  %530 = getelementptr inbounds i8, ptr %291, i64 %493
  %531 = load i8, ptr %530, align 1, !tbaa !32
  %532 = zext i8 %531 to i32
  store i32 %532, ptr %99, align 4, !tbaa !6
  %533 = getelementptr inbounds i8, ptr %292, i64 %493
  %534 = load i8, ptr %533, align 1, !tbaa !32
  %535 = zext i8 %534 to i32
  store i32 %535, ptr %100, align 4, !tbaa !6
  %536 = getelementptr inbounds i8, ptr %293, i64 %493
  %537 = load i8, ptr %536, align 1, !tbaa !32
  %538 = zext i8 %537 to i32
  store i32 %538, ptr %101, align 4, !tbaa !6
  %539 = getelementptr inbounds i8, ptr %294, i64 %493
  %540 = load i8, ptr %539, align 1, !tbaa !32
  %541 = zext i8 %540 to i32
  store i32 %541, ptr %102, align 4, !tbaa !6
  %542 = mul nsw i64 %174, %296
  %543 = getelementptr inbounds i8, ptr %278, i64 %542
  %544 = load i8, ptr %543, align 1, !tbaa !32
  %545 = zext i8 %544 to i32
  store i32 %545, ptr %103, align 4, !tbaa !6
  %546 = getelementptr inbounds i8, ptr %280, i64 %542
  %547 = load i8, ptr %546, align 1, !tbaa !32
  %548 = zext i8 %547 to i32
  store i32 %548, ptr %104, align 4, !tbaa !6
  %549 = getelementptr inbounds i8, ptr %281, i64 %542
  %550 = load i8, ptr %549, align 1, !tbaa !32
  %551 = zext i8 %550 to i32
  store i32 %551, ptr %105, align 4, !tbaa !6
  %552 = getelementptr inbounds i8, ptr %282, i64 %542
  %553 = load i8, ptr %552, align 1, !tbaa !32
  %554 = zext i8 %553 to i32
  store i32 %554, ptr %106, align 4, !tbaa !6
  %555 = getelementptr inbounds i8, ptr %283, i64 %542
  %556 = load i8, ptr %555, align 1, !tbaa !32
  %557 = zext i8 %556 to i32
  store i32 %557, ptr %107, align 4, !tbaa !6
  %558 = getelementptr inbounds i8, ptr %284, i64 %542
  %559 = load i8, ptr %558, align 1, !tbaa !32
  %560 = zext i8 %559 to i32
  store i32 %560, ptr %108, align 4, !tbaa !6
  %561 = getelementptr inbounds i8, ptr %285, i64 %542
  %562 = load i8, ptr %561, align 1, !tbaa !32
  %563 = zext i8 %562 to i32
  store i32 %563, ptr %109, align 4, !tbaa !6
  %564 = getelementptr inbounds i8, ptr %286, i64 %542
  %565 = load i8, ptr %564, align 1, !tbaa !32
  %566 = zext i8 %565 to i32
  store i32 %566, ptr %110, align 4, !tbaa !6
  %567 = getelementptr inbounds i8, ptr %287, i64 %542
  %568 = load i8, ptr %567, align 1, !tbaa !32
  %569 = zext i8 %568 to i32
  store i32 %569, ptr %111, align 4, !tbaa !6
  %570 = getelementptr inbounds i8, ptr %288, i64 %542
  %571 = load i8, ptr %570, align 1, !tbaa !32
  %572 = zext i8 %571 to i32
  store i32 %572, ptr %112, align 4, !tbaa !6
  %573 = getelementptr inbounds i8, ptr %289, i64 %542
  %574 = load i8, ptr %573, align 1, !tbaa !32
  %575 = zext i8 %574 to i32
  store i32 %575, ptr %113, align 4, !tbaa !6
  %576 = getelementptr inbounds i8, ptr %290, i64 %542
  %577 = load i8, ptr %576, align 1, !tbaa !32
  %578 = zext i8 %577 to i32
  store i32 %578, ptr %114, align 4, !tbaa !6
  %579 = getelementptr inbounds i8, ptr %291, i64 %542
  %580 = load i8, ptr %579, align 1, !tbaa !32
  %581 = zext i8 %580 to i32
  store i32 %581, ptr %115, align 4, !tbaa !6
  %582 = getelementptr inbounds i8, ptr %292, i64 %542
  %583 = load i8, ptr %582, align 1, !tbaa !32
  %584 = zext i8 %583 to i32
  store i32 %584, ptr %116, align 4, !tbaa !6
  %585 = getelementptr inbounds i8, ptr %293, i64 %542
  %586 = load i8, ptr %585, align 1, !tbaa !32
  %587 = zext i8 %586 to i32
  store i32 %587, ptr %117, align 4, !tbaa !6
  %588 = getelementptr inbounds i8, ptr %294, i64 %542
  %589 = load i8, ptr %588, align 1, !tbaa !32
  %590 = zext i8 %589 to i32
  store i32 %590, ptr %118, align 4, !tbaa !6
  %591 = mul nsw i64 %175, %296
  %592 = getelementptr inbounds i8, ptr %278, i64 %591
  %593 = load i8, ptr %592, align 1, !tbaa !32
  %594 = zext i8 %593 to i32
  store i32 %594, ptr %119, align 4, !tbaa !6
  %595 = getelementptr inbounds i8, ptr %280, i64 %591
  %596 = load i8, ptr %595, align 1, !tbaa !32
  %597 = zext i8 %596 to i32
  store i32 %597, ptr %120, align 4, !tbaa !6
  %598 = getelementptr inbounds i8, ptr %281, i64 %591
  %599 = load i8, ptr %598, align 1, !tbaa !32
  %600 = zext i8 %599 to i32
  store i32 %600, ptr %121, align 4, !tbaa !6
  %601 = getelementptr inbounds i8, ptr %282, i64 %591
  %602 = load i8, ptr %601, align 1, !tbaa !32
  %603 = zext i8 %602 to i32
  store i32 %603, ptr %122, align 4, !tbaa !6
  %604 = getelementptr inbounds i8, ptr %283, i64 %591
  %605 = load i8, ptr %604, align 1, !tbaa !32
  %606 = zext i8 %605 to i32
  store i32 %606, ptr %123, align 4, !tbaa !6
  %607 = getelementptr inbounds i8, ptr %284, i64 %591
  %608 = load i8, ptr %607, align 1, !tbaa !32
  %609 = zext i8 %608 to i32
  store i32 %609, ptr %124, align 4, !tbaa !6
  %610 = getelementptr inbounds i8, ptr %285, i64 %591
  %611 = load i8, ptr %610, align 1, !tbaa !32
  %612 = zext i8 %611 to i32
  store i32 %612, ptr %125, align 4, !tbaa !6
  %613 = getelementptr inbounds i8, ptr %286, i64 %591
  %614 = load i8, ptr %613, align 1, !tbaa !32
  %615 = zext i8 %614 to i32
  store i32 %615, ptr %126, align 4, !tbaa !6
  %616 = getelementptr inbounds i8, ptr %287, i64 %591
  %617 = load i8, ptr %616, align 1, !tbaa !32
  %618 = zext i8 %617 to i32
  store i32 %618, ptr %127, align 4, !tbaa !6
  %619 = getelementptr inbounds i8, ptr %288, i64 %591
  %620 = load i8, ptr %619, align 1, !tbaa !32
  %621 = zext i8 %620 to i32
  store i32 %621, ptr %128, align 4, !tbaa !6
  %622 = getelementptr inbounds i8, ptr %289, i64 %591
  %623 = load i8, ptr %622, align 1, !tbaa !32
  %624 = zext i8 %623 to i32
  store i32 %624, ptr %129, align 4, !tbaa !6
  %625 = getelementptr inbounds i8, ptr %290, i64 %591
  %626 = load i8, ptr %625, align 1, !tbaa !32
  %627 = zext i8 %626 to i32
  store i32 %627, ptr %130, align 4, !tbaa !6
  %628 = getelementptr inbounds i8, ptr %291, i64 %591
  %629 = load i8, ptr %628, align 1, !tbaa !32
  %630 = zext i8 %629 to i32
  store i32 %630, ptr %131, align 4, !tbaa !6
  %631 = getelementptr inbounds i8, ptr %292, i64 %591
  %632 = load i8, ptr %631, align 1, !tbaa !32
  %633 = zext i8 %632 to i32
  store i32 %633, ptr %132, align 4, !tbaa !6
  %634 = getelementptr inbounds i8, ptr %293, i64 %591
  %635 = load i8, ptr %634, align 1, !tbaa !32
  %636 = zext i8 %635 to i32
  store i32 %636, ptr %133, align 4, !tbaa !6
  %637 = getelementptr inbounds i8, ptr %294, i64 %591
  %638 = load i8, ptr %637, align 1, !tbaa !32
  %639 = zext i8 %638 to i32
  store i32 %639, ptr %134, align 4, !tbaa !6
  %640 = mul nsw i64 %176, %296
  %641 = getelementptr inbounds i8, ptr %278, i64 %640
  %642 = load i8, ptr %641, align 1, !tbaa !32
  %643 = zext i8 %642 to i32
  store i32 %643, ptr %135, align 4, !tbaa !6
  %644 = getelementptr inbounds i8, ptr %280, i64 %640
  %645 = load i8, ptr %644, align 1, !tbaa !32
  %646 = zext i8 %645 to i32
  store i32 %646, ptr %136, align 4, !tbaa !6
  %647 = getelementptr inbounds i8, ptr %281, i64 %640
  %648 = load i8, ptr %647, align 1, !tbaa !32
  %649 = zext i8 %648 to i32
  store i32 %649, ptr %137, align 4, !tbaa !6
  %650 = getelementptr inbounds i8, ptr %282, i64 %640
  %651 = load i8, ptr %650, align 1, !tbaa !32
  %652 = zext i8 %651 to i32
  store i32 %652, ptr %138, align 4, !tbaa !6
  %653 = getelementptr inbounds i8, ptr %283, i64 %640
  %654 = load i8, ptr %653, align 1, !tbaa !32
  %655 = zext i8 %654 to i32
  store i32 %655, ptr %139, align 4, !tbaa !6
  %656 = getelementptr inbounds i8, ptr %284, i64 %640
  %657 = load i8, ptr %656, align 1, !tbaa !32
  %658 = zext i8 %657 to i32
  store i32 %658, ptr %140, align 4, !tbaa !6
  %659 = getelementptr inbounds i8, ptr %285, i64 %640
  %660 = load i8, ptr %659, align 1, !tbaa !32
  %661 = zext i8 %660 to i32
  store i32 %661, ptr %141, align 4, !tbaa !6
  %662 = getelementptr inbounds i8, ptr %286, i64 %640
  %663 = load i8, ptr %662, align 1, !tbaa !32
  %664 = zext i8 %663 to i32
  store i32 %664, ptr %142, align 4, !tbaa !6
  %665 = getelementptr inbounds i8, ptr %287, i64 %640
  %666 = load i8, ptr %665, align 1, !tbaa !32
  %667 = zext i8 %666 to i32
  store i32 %667, ptr %143, align 4, !tbaa !6
  %668 = getelementptr inbounds i8, ptr %288, i64 %640
  %669 = load i8, ptr %668, align 1, !tbaa !32
  %670 = zext i8 %669 to i32
  store i32 %670, ptr %144, align 4, !tbaa !6
  %671 = getelementptr inbounds i8, ptr %289, i64 %640
  %672 = load i8, ptr %671, align 1, !tbaa !32
  %673 = zext i8 %672 to i32
  store i32 %673, ptr %145, align 4, !tbaa !6
  %674 = getelementptr inbounds i8, ptr %290, i64 %640
  %675 = load i8, ptr %674, align 1, !tbaa !32
  %676 = zext i8 %675 to i32
  store i32 %676, ptr %146, align 4, !tbaa !6
  %677 = getelementptr inbounds i8, ptr %291, i64 %640
  %678 = load i8, ptr %677, align 1, !tbaa !32
  %679 = zext i8 %678 to i32
  store i32 %679, ptr %147, align 4, !tbaa !6
  %680 = getelementptr inbounds i8, ptr %292, i64 %640
  %681 = load i8, ptr %680, align 1, !tbaa !32
  %682 = zext i8 %681 to i32
  store i32 %682, ptr %148, align 4, !tbaa !6
  %683 = getelementptr inbounds i8, ptr %293, i64 %640
  %684 = load i8, ptr %683, align 1, !tbaa !32
  %685 = zext i8 %684 to i32
  store i32 %685, ptr %149, align 4, !tbaa !6
  %686 = getelementptr inbounds i8, ptr %294, i64 %640
  %687 = load i8, ptr %686, align 1, !tbaa !32
  %688 = zext i8 %687 to i32
  store i32 %688, ptr %150, align 4, !tbaa !6
  %689 = tail call ptr @MB_Encode(ptr noundef nonnull %5, i32 noundef signext %1, i32 noundef signext 3)
  %690 = tail call signext i32 @FindCBP(ptr noundef %689, i32 noundef signext 3, i32 noundef signext 64) #15
  %691 = load i32, ptr @syntax_arith_coding, align 4, !tbaa !6
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %693, label %694

693:                                              ; preds = %275
  tail call void @CountBitsMB(i32 noundef signext 3, i32 noundef signext 0, i32 noundef signext %690, i32 noundef signext 0, ptr noundef %3, ptr noundef %2) #15
  tail call void @CountBitsCoeff(ptr noundef %689, i32 noundef signext 3, i32 noundef signext %690, ptr noundef %2, i32 noundef signext 64) #15
  br label %695

694:                                              ; preds = %275
  tail call void @Count_sac_BitsMB(i32 noundef signext 3, i32 noundef signext 0, i32 noundef signext %690, i32 noundef signext 0, ptr noundef %3, ptr noundef %2) #15
  tail call void @Count_sac_BitsCoeff(ptr noundef %689, i32 noundef signext 3, i32 noundef signext %690, ptr noundef %2, i32 noundef signext 64) #15
  br label %695

695:                                              ; preds = %694, %693
  %696 = tail call signext i32 @MB_Decode(ptr noundef %689, ptr noundef nonnull %5, i32 noundef signext %1, i32 noundef signext 3)
  tail call void @Clip(ptr noundef nonnull %5)
  tail call void @ReconImage(i32 noundef signext %182, i32 noundef signext %169, ptr noundef nonnull %5, ptr noundef %9)
  tail call void @free(ptr noundef %689) #15
  %697 = add nuw nsw i64 %178, 1
  %698 = load i32, ptr @pels, align 4, !tbaa !6
  %699 = sdiv i32 %698, 16
  %700 = sext i32 %699 to i64
  %701 = icmp slt i64 %697, %700
  br i1 %701, label %177, label %702

702:                                              ; preds = %695, %162
  %703 = add nuw nsw i64 %152, 1
  %704 = load i32, ptr @lines, align 4, !tbaa !6
  %705 = sdiv i32 %704, 16
  %706 = sext i32 %705 to i64
  %707 = icmp slt i64 %703, %706
  br i1 %707, label %151, label %708

708:                                              ; preds = %702, %4
  %709 = sitofp i32 %1 to float
  %710 = getelementptr inbounds i8, ptr %3, i64 76
  store float %709, ptr %710, align 4, !tbaa !25
  tail call void @free(ptr noundef %5) #15
  ret ptr %9
}

declare dso_local signext i32 @Dct(ptr noundef, ptr noundef) local_unnamed_addr #4

declare dso_local void @Quant(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local void @Dequant(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local void @idctref(ptr noundef, ptr noundef) local_unnamed_addr #4

declare dso_local void @FindPMV(ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local void @MotionEstimation(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #4

declare dso_local signext i32 @ChooseMode(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local void @FindMB(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #4

declare dso_local void @FindHalfPel(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }

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
!12 = !{!13, !11, i64 0}
!13 = !{!"pict_image", !11, i64 0, !11, i64 8, !11, i64 16}
!14 = !{!13, !11, i64 8}
!15 = !{!13, !11, i64 16}
!16 = !{!17, !7, i64 20}
!17 = !{!"motionvector", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!18 = !{!19, !7, i64 56}
!19 = !{!"pict", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !20, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !20, i64 76}
!20 = !{!"float", !8, i64 0}
!21 = !{!19, !7, i64 60}
!22 = !{!19, !7, i64 12}
!23 = !{!19, !7, i64 40}
!24 = !{!19, !20, i64 20}
!25 = !{!19, !20, i64 76}
!26 = !{!27, !7, i64 40}
!27 = !{!"bits_counted", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52}
!28 = !{!19, !7, i64 44}
!29 = !{!27, !7, i64 32}
!30 = !{!19, !7, i64 48}
!31 = !{!19, !7, i64 52}
!32 = !{!8, !8, i64 0}
!33 = !{!19, !7, i64 72}
!34 = !{!19, !7, i64 68}
!35 = !{!17, !7, i64 0}
!36 = !{!17, !7, i64 4}
!37 = !{!19, !7, i64 64}
!38 = !{!27, !7, i64 44}
!39 = !{!27, !7, i64 48}
!40 = !{!27, !7, i64 52}
!41 = !{!17, !7, i64 16}
