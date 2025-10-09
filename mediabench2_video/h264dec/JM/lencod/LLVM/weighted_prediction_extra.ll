; ModuleID = 'src/weighted_prediction.c'
source_filename = "src/weighted_prediction.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@img = external dso_local local_unnamed_addr global ptr, align 8
@luma_log_weight_denom = external dso_local local_unnamed_addr global i32, align 4
@chroma_log_weight_denom = external dso_local local_unnamed_addr global i32, align 4
@wp_luma_round = external dso_local local_unnamed_addr global i32, align 4
@wp_chroma_round = external dso_local local_unnamed_addr global i32, align 4
@listXsize = external dso_local local_unnamed_addr global [6 x i32], align 4
@wp_weight = external dso_local local_unnamed_addr global ptr, align 8
@wp_offset = external dso_local local_unnamed_addr global ptr, align 8
@imgY_org = external dso_local local_unnamed_addr global ptr, align 8
@listX = external dso_local local_unnamed_addr global [6 x ptr], align 8
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@wbp_weight = external dso_local local_unnamed_addr global ptr, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@active_sps = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @estimate_weighting_factor_P_slice(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca [2 x [32 x [3 x i32]]], align 4
  %3 = alloca [2 x [32 x [3 x i32]]], align 4
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 90220
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %4, i64 31576
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds i8, ptr %4, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %13, i32 19
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  %18 = and i32 %12, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i64 4, i64 6
  br label %21

21:                                               ; preds = %1, %8, %17
  %22 = phi i64 [ %20, %17 ], [ 2, %8 ], [ 2, %1 ]
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %3) #6
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !21
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !21
  store i32 16, ptr @wp_luma_round, align 4, !tbaa !21
  store i32 16, ptr @wp_chroma_round, align 4, !tbaa !21
  %23 = load ptr, ptr @wp_weight, align 8
  %24 = load ptr, ptr @wp_offset, align 8
  br label %25

25:                                               ; preds = %21, %67
  %26 = phi i64 [ 0, %21 ], [ %68, %67 ]
  %27 = mul nuw nsw i64 %26, 384
  %28 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %26
  %29 = load i32, ptr %28, align 4, !tbaa !21
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %25
  %32 = getelementptr inbounds ptr, ptr %23, i64 %26
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %24, i64 %26
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  br label %47

36:                                               ; preds = %67
  %37 = getelementptr inbounds i8, ptr %4, i64 60
  %38 = load i32, ptr %37, align 4, !tbaa !22
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %4, i64 52
  %42 = load i32, ptr %41, align 4, !tbaa !23
  %43 = icmp sgt i32 %42, 0
  %44 = load ptr, ptr @imgY_org, align 8
  %45 = zext nneg i32 %38 to i64
  %46 = zext nneg i32 %42 to i64
  br label %70

47:                                               ; preds = %31, %47
  %48 = phi i64 [ 0, %31 ], [ %63, %47 ]
  %49 = mul nuw nsw i64 %48, 12
  %50 = add nuw nsw i64 %27, %49
  %51 = getelementptr i8, ptr %2, i64 %50
  %52 = getelementptr i8, ptr %3, i64 %50
  %53 = getelementptr inbounds ptr, ptr %33, i64 %48
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds ptr, ptr %35, i64 %48
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %52, i8 0, i64 12, i1 false), !tbaa !21
  store i32 32, ptr %51, align 4, !tbaa !21
  %57 = getelementptr inbounds i8, ptr %51, i64 4
  store i32 32, ptr %57, align 4, !tbaa !21
  %58 = getelementptr inbounds i8, ptr %51, i64 8
  store i32 32, ptr %58, align 4, !tbaa !21
  store i32 32, ptr %54, align 4, !tbaa !21
  store i32 0, ptr %56, align 4, !tbaa !21
  %59 = getelementptr inbounds i8, ptr %54, i64 4
  store i32 32, ptr %59, align 4, !tbaa !21
  %60 = getelementptr inbounds i8, ptr %56, i64 4
  store i32 0, ptr %60, align 4, !tbaa !21
  %61 = getelementptr inbounds i8, ptr %54, i64 8
  store i32 32, ptr %61, align 4, !tbaa !21
  %62 = getelementptr inbounds i8, ptr %56, i64 8
  store i32 0, ptr %62, align 4, !tbaa !21
  %63 = add nuw nsw i64 %48, 1
  %64 = load i32, ptr %28, align 4, !tbaa !21
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %47, label %67

67:                                               ; preds = %47, %25
  %68 = add nuw nsw i64 %26, 1
  %69 = icmp eq i64 %68, %22
  br i1 %69, label %36, label %25

70:                                               ; preds = %40, %95
  %71 = phi i64 [ 0, %40 ], [ %97, %95 ]
  %72 = phi double [ 0.000000e+00, %40 ], [ %96, %95 ]
  br i1 %43, label %73, label %95

73:                                               ; preds = %70
  %74 = getelementptr inbounds ptr, ptr %44, i64 %71
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  br label %86

76:                                               ; preds = %95, %36
  %77 = phi double [ 0.000000e+00, %36 ], [ %96, %95 ]
  %78 = getelementptr inbounds i8, ptr %4, i64 52
  %79 = icmp eq i32 %0, 0
  %80 = fmul double %77, 3.200000e+01
  %81 = getelementptr inbounds i8, ptr %4, i64 90532
  %82 = shl i32 %38, 2
  %83 = add i32 %82, 32
  %84 = icmp sgt i32 %83, 0
  %85 = zext nneg i32 %83 to i64
  br label %99

86:                                               ; preds = %73, %86
  %87 = phi i64 [ 0, %73 ], [ %93, %86 ]
  %88 = phi double [ %72, %73 ], [ %92, %86 ]
  %89 = getelementptr inbounds i16, ptr %75, i64 %87
  %90 = load i16, ptr %89, align 2, !tbaa !24
  %91 = uitofp i16 %90 to double
  %92 = fadd double %88, %91
  %93 = add nuw nsw i64 %87, 1
  %94 = icmp eq i64 %93, %46
  br i1 %94, label %95, label %86

95:                                               ; preds = %86, %70
  %96 = phi double [ %72, %70 ], [ %92, %86 ]
  %97 = add nuw nsw i64 %71, 1
  %98 = icmp eq i64 %97, %45
  br i1 %98, label %76, label %70

99:                                               ; preds = %76, %236
  %100 = phi i64 [ 0, %76 ], [ %237, %236 ]
  %101 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !21
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %236

104:                                              ; preds = %99
  %105 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %100
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = load i32, ptr %78, align 4, !tbaa !23
  %108 = mul nsw i32 %107, %38
  %109 = icmp sgt i32 %108, 0
  %110 = sitofp i32 %108 to double
  %111 = load i32, ptr @wp_luma_round, align 4
  %112 = load i32, ptr @luma_log_weight_denom, align 4
  %113 = shl i32 %107, 2
  %114 = add i32 %113, 32
  %115 = icmp sgt i32 %114, 0
  %116 = zext nneg i32 %102 to i64
  %117 = zext nneg i32 %108 to i64
  %118 = zext nneg i32 %108 to i64
  %119 = zext nneg i32 %114 to i64
  br label %123

120:                                              ; preds = %236
  %121 = load ptr, ptr @wp_weight, align 8
  %122 = load ptr, ptr @wp_offset, align 8
  br label %239

123:                                              ; preds = %104, %233
  %124 = phi i64 [ 0, %104 ], [ %234, %233 ]
  %125 = getelementptr inbounds ptr, ptr %106, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = getelementptr inbounds i8, ptr %126, i64 6432
  %128 = load ptr, ptr %127, align 8, !tbaa !25
  %129 = getelementptr inbounds i8, ptr %126, i64 6440
  %130 = load ptr, ptr %129, align 8, !tbaa !27
  br i1 %109, label %131, label %141

131:                                              ; preds = %123, %131
  %132 = phi i64 [ %138, %131 ], [ 0, %123 ]
  %133 = phi double [ %137, %131 ], [ 0.000000e+00, %123 ]
  %134 = getelementptr inbounds i16, ptr %128, i64 %132
  %135 = load i16, ptr %134, align 2, !tbaa !24
  %136 = uitofp i16 %135 to double
  %137 = fadd double %133, %136
  %138 = add nuw nsw i64 %132, 1
  %139 = icmp eq i64 %138, %117
  br i1 %139, label %140, label %131

140:                                              ; preds = %131
  br i1 %79, label %142, label %154

141:                                              ; preds = %123
  br i1 %79, label %148, label %154

142:                                              ; preds = %140
  %143 = fcmp une double %137, 0.000000e+00
  br i1 %143, label %144, label %148

144:                                              ; preds = %142
  %145 = fdiv double %80, %137
  %146 = fadd double %145, 5.000000e-01
  %147 = fptosi double %146 to i32
  br label %148

148:                                              ; preds = %141, %142, %144
  %149 = phi i32 [ %147, %144 ], [ 32, %142 ], [ 32, %141 ]
  %150 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %100, i64 %124
  %151 = add i32 %149, -128
  %152 = icmp ult i32 %151, -192
  %153 = select i1 %152, i32 32, i32 %149
  store i32 %153, ptr %150, align 4
  br label %164

154:                                              ; preds = %141, %140
  %155 = phi double [ 0.000000e+00, %141 ], [ %137, %140 ]
  %156 = fsub double %77, %155
  %157 = fdiv double %156, %110
  %158 = fadd double %157, 5.000000e-01
  %159 = fptosi double %158 to i32
  %160 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %100, i64 %124
  %161 = tail call i32 @llvm.smin.i32(i32 %159, i32 127)
  %162 = tail call i32 @llvm.smax.i32(i32 %161, i32 -128)
  store i32 %162, ptr %160, align 4, !tbaa !21
  %163 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %100, i64 %124
  store i32 32, ptr %163, align 4, !tbaa !21
  br label %164

164:                                              ; preds = %148, %154
  %165 = phi i32 [ %153, %148 ], [ 32, %154 ]
  %166 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %100, i64 %124
  %167 = getelementptr inbounds i8, ptr %166, i64 4
  store i32 32, ptr %167, align 4, !tbaa !21
  %168 = getelementptr inbounds i8, ptr %166, i64 8
  store i32 32, ptr %168, align 4, !tbaa !21
  br i1 %109, label %169, label %172

169:                                              ; preds = %164
  %170 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %100, i64 %124
  %171 = load i32, ptr %170, align 4, !tbaa !21
  br label %179

172:                                              ; preds = %192, %164
  br i1 %84, label %173, label %233

173:                                              ; preds = %172
  %174 = load ptr, ptr @listX, align 8
  %175 = getelementptr inbounds ptr, ptr %174, i64 %124
  %176 = load i32, ptr @wp_luma_round, align 4
  %177 = load i32, ptr @luma_log_weight_denom, align 4
  %178 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %100, i64 %124
  br label %198

179:                                              ; preds = %169, %192
  %180 = phi i64 [ 0, %169 ], [ %196, %192 ]
  %181 = getelementptr inbounds i16, ptr %128, i64 %180
  %182 = load i16, ptr %181, align 2, !tbaa !24
  %183 = zext i16 %182 to i32
  %184 = mul nsw i32 %165, %183
  %185 = add nsw i32 %184, %111
  %186 = ashr i32 %185, %112
  %187 = add nsw i32 %186, %171
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %179
  %190 = load i32, ptr %81, align 4, !tbaa !28
  %191 = tail call i32 @llvm.smin.i32(i32 %187, i32 %190)
  br label %192

192:                                              ; preds = %189, %179
  %193 = phi i32 [ 0, %179 ], [ %191, %189 ]
  %194 = trunc i32 %193 to i16
  %195 = getelementptr inbounds i16, ptr %130, i64 %180
  store i16 %194, ptr %195, align 2, !tbaa !24
  %196 = add nuw nsw i64 %180, 1
  %197 = icmp eq i64 %196, %118
  br i1 %197, label %172, label %179

198:                                              ; preds = %173, %230
  %199 = phi i64 [ 0, %173 ], [ %231, %230 ]
  br i1 %115, label %200, label %230

200:                                              ; preds = %198
  %201 = load ptr, ptr %175, align 8, !tbaa !6
  %202 = getelementptr inbounds i8, ptr %201, i64 6448
  %203 = load ptr, ptr %202, align 8, !tbaa !29
  %204 = getelementptr inbounds ptr, ptr %203, i64 %199
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = load i32, ptr %178, align 4, !tbaa !21
  %207 = getelementptr inbounds i8, ptr %201, i64 6456
  %208 = load ptr, ptr %207, align 8, !tbaa !30
  %209 = getelementptr inbounds ptr, ptr %208, i64 %199
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  br label %211

211:                                              ; preds = %200, %224
  %212 = phi i64 [ 0, %200 ], [ %228, %224 ]
  %213 = getelementptr inbounds i16, ptr %205, i64 %212
  %214 = load i16, ptr %213, align 2, !tbaa !24
  %215 = zext i16 %214 to i32
  %216 = mul nsw i32 %165, %215
  %217 = add nsw i32 %216, %176
  %218 = ashr i32 %217, %177
  %219 = add nsw i32 %218, %206
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %211
  %222 = load i32, ptr %81, align 4, !tbaa !28
  %223 = tail call i32 @llvm.smin.i32(i32 %219, i32 %222)
  br label %224

224:                                              ; preds = %221, %211
  %225 = phi i32 [ 0, %211 ], [ %223, %221 ]
  %226 = trunc i32 %225 to i16
  %227 = getelementptr inbounds i16, ptr %210, i64 %212
  store i16 %226, ptr %227, align 2, !tbaa !24
  %228 = add nuw nsw i64 %212, 1
  %229 = icmp eq i64 %228, %119
  br i1 %229, label %230, label %211

230:                                              ; preds = %224, %198
  %231 = add nuw nsw i64 %199, 1
  %232 = icmp eq i64 %231, %85
  br i1 %232, label %233, label %198

233:                                              ; preds = %230, %172
  %234 = add nuw nsw i64 %124, 1
  %235 = icmp eq i64 %234, %116
  br i1 %235, label %236, label %123

236:                                              ; preds = %233, %99
  %237 = add nuw nsw i64 %100, 1
  %238 = icmp eq i64 %237, %22
  br i1 %238, label %120, label %99

239:                                              ; preds = %120, %275
  %240 = phi i64 [ 0, %120 ], [ %276, %275 ]
  %241 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !21
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %275

244:                                              ; preds = %239
  %245 = getelementptr inbounds ptr, ptr %121, i64 %240
  %246 = load ptr, ptr %245, align 8, !tbaa !6
  %247 = getelementptr inbounds ptr, ptr %122, i64 %240
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  br label %249

249:                                              ; preds = %244, %249
  %250 = phi i64 [ 0, %244 ], [ %271, %249 ]
  %251 = getelementptr inbounds ptr, ptr %246, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !6
  %253 = getelementptr inbounds ptr, ptr %248, i64 %250
  %254 = load ptr, ptr %253, align 8, !tbaa !6
  %255 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %240, i64 %250, i64 0
  %256 = load i32, ptr %255, align 4, !tbaa !21
  store i32 %256, ptr %252, align 4, !tbaa !21
  %257 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %240, i64 %250, i64 0
  %258 = load i32, ptr %257, align 4, !tbaa !21
  store i32 %258, ptr %254, align 4, !tbaa !21
  %259 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %240, i64 %250, i64 1
  %260 = load i32, ptr %259, align 4, !tbaa !21
  %261 = getelementptr inbounds i8, ptr %252, i64 4
  store i32 %260, ptr %261, align 4, !tbaa !21
  %262 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %240, i64 %250, i64 1
  %263 = load i32, ptr %262, align 4, !tbaa !21
  %264 = getelementptr inbounds i8, ptr %254, i64 4
  store i32 %263, ptr %264, align 4, !tbaa !21
  %265 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %240, i64 %250, i64 2
  %266 = load i32, ptr %265, align 4, !tbaa !21
  %267 = getelementptr inbounds i8, ptr %252, i64 8
  store i32 %266, ptr %267, align 4, !tbaa !21
  %268 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %240, i64 %250, i64 2
  %269 = load i32, ptr %268, align 4, !tbaa !21
  %270 = getelementptr inbounds i8, ptr %254, i64 8
  store i32 %269, ptr %270, align 4, !tbaa !21
  %271 = add nuw nsw i64 %250, 1
  %272 = load i32, ptr %241, align 4, !tbaa !21
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %271, %273
  br i1 %274, label %249, label %275

275:                                              ; preds = %249, %239
  %276 = add nuw nsw i64 %240, 1
  %277 = icmp eq i64 %276, %22
  br i1 %277, label %278, label %239

278:                                              ; preds = %275
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @estimate_weighting_factor_B_slice() local_unnamed_addr #0 {
  %1 = alloca [6 x [32 x [3 x i32]]], align 4
  %2 = alloca [6 x [32 x [3 x i32]]], align 4
  %3 = alloca [6 x [32 x [32 x [3 x i32]]]], align 4
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 90220
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds i8, ptr %4, i64 31576
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds i8, ptr %4, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %13, i32 19
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  %18 = and i32 %12, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i64 4, i64 6
  br label %21

21:                                               ; preds = %0, %8, %17
  %22 = phi i64 [ %20, %17 ], [ 2, %8 ], [ 2, %0 ]
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 73728, ptr nonnull %3) #6
  %23 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 196
  %25 = load i32, ptr %24, align 4, !tbaa !31
  %26 = icmp eq i32 %25, 2
  %27 = select i1 %26, i32 5, i32 6
  store i32 %27, ptr @luma_log_weight_denom, align 4, !tbaa !21
  store i32 %27, ptr @chroma_log_weight_denom, align 4, !tbaa !21
  %28 = add nsw i32 %27, -1
  %29 = shl nuw nsw i32 1, %28
  store i32 %29, ptr @wp_luma_round, align 4, !tbaa !21
  store i32 %29, ptr @wp_chroma_round, align 4, !tbaa !21
  %30 = shl nuw nsw i32 1, %27
  %31 = load ptr, ptr @wp_weight, align 8
  %32 = load ptr, ptr @wp_offset, align 8
  br label %33

33:                                               ; preds = %21, %77
  %34 = phi i64 [ 0, %21 ], [ %78, %77 ]
  %35 = mul nuw nsw i64 %34, 384
  %36 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %34
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %33
  %40 = getelementptr inbounds ptr, ptr %31, i64 %34
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds ptr, ptr %32, i64 %34
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  br label %57

44:                                               ; preds = %77
  %45 = load i32, ptr @listXsize, align 4, !tbaa !21
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %173

47:                                               ; preds = %44
  %48 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  %49 = icmp sgt i32 %48, 0
  %50 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8
  %51 = load ptr, ptr @listX, align 8
  %52 = load ptr, ptr @enc_picture, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 4
  %54 = getelementptr inbounds i8, ptr %3, i64 12288
  %55 = zext nneg i32 %45 to i64
  %56 = zext nneg i32 %48 to i64
  br label %80

57:                                               ; preds = %39, %57
  %58 = phi i64 [ 0, %39 ], [ %73, %57 ]
  %59 = mul nuw nsw i64 %58, 12
  %60 = add nuw nsw i64 %35, %59
  %61 = getelementptr i8, ptr %1, i64 %60
  %62 = getelementptr i8, ptr %2, i64 %60
  %63 = getelementptr inbounds ptr, ptr %41, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds ptr, ptr %43, i64 %58
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %62, i8 0, i64 12, i1 false), !tbaa !21
  store i32 %30, ptr %61, align 4, !tbaa !21
  %67 = getelementptr inbounds i8, ptr %61, i64 4
  store i32 %30, ptr %67, align 4, !tbaa !21
  %68 = getelementptr inbounds i8, ptr %61, i64 8
  store i32 %30, ptr %68, align 4, !tbaa !21
  store i32 %30, ptr %64, align 4, !tbaa !21
  store i32 0, ptr %66, align 4, !tbaa !21
  %69 = getelementptr inbounds i8, ptr %64, i64 4
  store i32 %30, ptr %69, align 4, !tbaa !21
  %70 = getelementptr inbounds i8, ptr %66, i64 4
  store i32 0, ptr %70, align 4, !tbaa !21
  %71 = getelementptr inbounds i8, ptr %64, i64 8
  store i32 %30, ptr %71, align 4, !tbaa !21
  %72 = getelementptr inbounds i8, ptr %66, i64 8
  store i32 0, ptr %72, align 4, !tbaa !21
  %73 = add nuw nsw i64 %58, 1
  %74 = load i32, ptr %36, align 4, !tbaa !21
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %57, label %77

77:                                               ; preds = %57, %33
  %78 = add nuw nsw i64 %34, 1
  %79 = icmp eq i64 %78, %22
  br i1 %79, label %44, label %33

80:                                               ; preds = %47, %167
  %81 = phi i64 [ 0, %47 ], [ %168, %167 ]
  br i1 %49, label %82, label %167

82:                                               ; preds = %80
  %83 = getelementptr inbounds ptr, ptr %51, i64 %81
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %84, i64 4
  %86 = load i32, ptr %85, align 4, !tbaa !33
  %87 = load i32, ptr %53, align 4, !tbaa !33
  %88 = sub nsw i32 %87, %86
  %89 = tail call i32 @llvm.smin.i32(i32 %88, i32 127)
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 -128)
  br label %91

91:                                               ; preds = %82, %162
  %92 = phi i64 [ 0, %82 ], [ %165, %162 ]
  %93 = getelementptr inbounds ptr, ptr %50, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = getelementptr inbounds i8, ptr %94, i64 4
  %96 = load i32, ptr %95, align 4, !tbaa !33
  %97 = icmp eq i32 %96, %86
  br i1 %97, label %156, label %98

98:                                               ; preds = %91
  %99 = sub nsw i32 %96, %86
  %100 = icmp slt i32 %99, -1
  %101 = tail call i32 @llvm.smin.i32(i32 %99, i32 127)
  %102 = tail call i32 @llvm.smax.i32(i32 %101, i32 -128)
  %103 = trunc nsw i32 %102 to i8
  %104 = sdiv i8 %103, 2
  %105 = sext i8 %104 to i32
  %106 = sub nsw i32 0, %105
  %107 = select i1 %100, i32 %106, i32 %105
  %108 = add nuw nsw i32 %107, 16384
  %109 = trunc i32 %108 to i16
  %110 = trunc nsw i32 %102 to i16
  %111 = sdiv i16 %109, %110
  %112 = sext i16 %111 to i32
  %113 = mul nsw i32 %90, %112
  %114 = add nsw i32 %113, 32
  %115 = ashr i32 %114, 6
  %116 = tail call i32 @llvm.smin.i32(i32 %115, i32 1023)
  %117 = tail call i32 @llvm.smax.i32(i32 %116, i32 -1024)
  %118 = ashr i32 %117, 2
  %119 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %54, i64 0, i64 %81, i64 %92, i64 0
  %120 = add nsw i32 %118, -129
  %121 = icmp ult i32 %120, -193
  %122 = select i1 %121, i32 %30, i32 %118
  store i32 %122, ptr %119, align 4, !tbaa !21
  %123 = sub nsw i32 64, %122
  %124 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %81, i64 %92, i64 0
  store i32 %123, ptr %124, align 4, !tbaa !21
  %125 = trunc i32 %108 to i16
  %126 = trunc nsw i32 %102 to i16
  %127 = sdiv i16 %125, %126
  %128 = sext i16 %127 to i32
  %129 = mul nsw i32 %90, %128
  %130 = add nsw i32 %129, 32
  %131 = ashr i32 %130, 6
  %132 = tail call i32 @llvm.smin.i32(i32 %131, i32 1023)
  %133 = tail call i32 @llvm.smax.i32(i32 %132, i32 -1024)
  %134 = ashr i32 %133, 2
  %135 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %54, i64 0, i64 %81, i64 %92, i64 1
  %136 = add nsw i32 %134, -129
  %137 = icmp ult i32 %136, -193
  %138 = select i1 %137, i32 %30, i32 %134
  store i32 %138, ptr %135, align 4, !tbaa !21
  %139 = sub nsw i32 64, %138
  %140 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %81, i64 %92, i64 1
  store i32 %139, ptr %140, align 4, !tbaa !21
  %141 = trunc i32 %108 to i16
  %142 = trunc nsw i32 %102 to i16
  %143 = sdiv i16 %141, %142
  %144 = sext i16 %143 to i32
  %145 = mul nsw i32 %90, %144
  %146 = add nsw i32 %145, 32
  %147 = ashr i32 %146, 6
  %148 = tail call i32 @llvm.smin.i32(i32 %147, i32 1023)
  %149 = tail call i32 @llvm.smax.i32(i32 %148, i32 -1024)
  %150 = ashr i32 %149, 2
  %151 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %54, i64 0, i64 %81, i64 %92, i64 2
  %152 = add nsw i32 %150, -129
  %153 = icmp ult i32 %152, -193
  %154 = select i1 %153, i32 %30, i32 %150
  store i32 %154, ptr %151, align 4, !tbaa !21
  %155 = sub nsw i32 64, %154
  br label %162

156:                                              ; preds = %91
  %157 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %54, i64 0, i64 %81, i64 %92, i64 0
  store i32 %30, ptr %157, align 4, !tbaa !21
  %158 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %81, i64 %92, i64 0
  store i32 %30, ptr %158, align 4, !tbaa !21
  %159 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %54, i64 0, i64 %81, i64 %92, i64 1
  store i32 %30, ptr %159, align 4, !tbaa !21
  %160 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %81, i64 %92, i64 1
  store i32 %30, ptr %160, align 4, !tbaa !21
  %161 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %54, i64 0, i64 %81, i64 %92, i64 2
  store i32 %30, ptr %161, align 4, !tbaa !21
  br label %162

162:                                              ; preds = %156, %98
  %163 = phi i32 [ %30, %156 ], [ %155, %98 ]
  %164 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %81, i64 %92, i64 2
  store i32 %163, ptr %164, align 4, !tbaa !21
  %165 = add nuw nsw i64 %92, 1
  %166 = icmp eq i64 %165, %56
  br i1 %166, label %167, label %91

167:                                              ; preds = %162, %80
  %168 = add nuw nsw i64 %81, 1
  %169 = icmp eq i64 %168, %55
  br i1 %169, label %170, label %80

170:                                              ; preds = %167
  %171 = load i32, ptr %24, align 4, !tbaa !31
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %188, label %176

173:                                              ; preds = %44
  %174 = load i32, ptr %24, align 4, !tbaa !31
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %206, label %176

176:                                              ; preds = %173, %170
  %177 = phi i32 [ %174, %173 ], [ %171, %170 ]
  %178 = getelementptr inbounds i8, ptr %4, i64 60
  %179 = load i32, ptr %178, align 4, !tbaa !22
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %364

181:                                              ; preds = %176
  %182 = getelementptr inbounds i8, ptr %4, i64 52
  %183 = load i32, ptr %182, align 4, !tbaa !23
  %184 = icmp sgt i32 %183, 0
  %185 = load ptr, ptr @imgY_org, align 8
  %186 = zext nneg i32 %179 to i64
  %187 = zext nneg i32 %183 to i64
  br label %358

188:                                              ; preds = %170
  br i1 %46, label %189, label %206

189:                                              ; preds = %188
  %190 = getelementptr inbounds i8, ptr %3, i64 12288
  %191 = load ptr, ptr @wbp_weight, align 8
  %192 = getelementptr inbounds i8, ptr %191, i64 8
  %193 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  br label %194

194:                                              ; preds = %189, %237
  %195 = phi i32 [ %45, %189 ], [ %238, %237 ]
  %196 = phi i32 [ %193, %189 ], [ %239, %237 ]
  %197 = phi i64 [ 0, %189 ], [ %240, %237 ]
  %198 = icmp sgt i32 %196, 0
  br i1 %198, label %199, label %237

199:                                              ; preds = %194
  %200 = load ptr, ptr %192, align 8, !tbaa !6
  %201 = getelementptr inbounds ptr, ptr %200, i64 %197
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = load ptr, ptr %191, align 8, !tbaa !6
  %204 = getelementptr inbounds ptr, ptr %203, i64 %197
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  br label %209

206:                                              ; preds = %237, %173, %188
  %207 = load ptr, ptr @wp_weight, align 8
  %208 = load ptr, ptr @wp_offset, align 8
  br label %243

209:                                              ; preds = %199, %209
  %210 = phi i64 [ 0, %199 ], [ %231, %209 ]
  %211 = getelementptr inbounds ptr, ptr %202, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !6
  %213 = getelementptr inbounds ptr, ptr %205, i64 %210
  %214 = load ptr, ptr %213, align 8, !tbaa !6
  %215 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %190, i64 0, i64 %197, i64 %210, i64 0
  %216 = load i32, ptr %215, align 4, !tbaa !21
  store i32 %216, ptr %212, align 4, !tbaa !21
  %217 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %197, i64 %210, i64 0
  %218 = load i32, ptr %217, align 4, !tbaa !21
  store i32 %218, ptr %214, align 4, !tbaa !21
  %219 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %190, i64 0, i64 %197, i64 %210, i64 1
  %220 = load i32, ptr %219, align 4, !tbaa !21
  %221 = getelementptr inbounds i8, ptr %212, i64 4
  store i32 %220, ptr %221, align 4, !tbaa !21
  %222 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %197, i64 %210, i64 1
  %223 = load i32, ptr %222, align 4, !tbaa !21
  %224 = getelementptr inbounds i8, ptr %214, i64 4
  store i32 %223, ptr %224, align 4, !tbaa !21
  %225 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %190, i64 0, i64 %197, i64 %210, i64 2
  %226 = load i32, ptr %225, align 4, !tbaa !21
  %227 = getelementptr inbounds i8, ptr %212, i64 8
  store i32 %226, ptr %227, align 4, !tbaa !21
  %228 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %197, i64 %210, i64 2
  %229 = load i32, ptr %228, align 4, !tbaa !21
  %230 = getelementptr inbounds i8, ptr %214, i64 8
  store i32 %229, ptr %230, align 4, !tbaa !21
  %231 = add nuw nsw i64 %210, 1
  %232 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  %233 = sext i32 %232 to i64
  %234 = icmp slt i64 %231, %233
  br i1 %234, label %209, label %235

235:                                              ; preds = %209
  %236 = load i32, ptr @listXsize, align 4, !tbaa !21
  br label %237

237:                                              ; preds = %235, %194
  %238 = phi i32 [ %236, %235 ], [ %195, %194 ]
  %239 = phi i32 [ %232, %235 ], [ %196, %194 ]
  %240 = add nuw nsw i64 %197, 1
  %241 = sext i32 %238 to i64
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %194, label %206

243:                                              ; preds = %206, %267
  %244 = phi i64 [ 0, %206 ], [ %268, %267 ]
  %245 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !21
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %243
  %249 = getelementptr inbounds ptr, ptr %207, i64 %244
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  %251 = getelementptr inbounds ptr, ptr %208, i64 %244
  %252 = load ptr, ptr %251, align 8, !tbaa !6
  br label %253

253:                                              ; preds = %248, %253
  %254 = phi i64 [ 0, %248 ], [ %263, %253 ]
  %255 = getelementptr inbounds ptr, ptr %250, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  store i32 %30, ptr %256, align 4, !tbaa !21
  %257 = getelementptr inbounds i8, ptr %256, i64 4
  store i32 %30, ptr %257, align 4, !tbaa !21
  %258 = getelementptr inbounds i8, ptr %256, i64 8
  store i32 %30, ptr %258, align 4, !tbaa !21
  %259 = getelementptr inbounds ptr, ptr %252, i64 %254
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  store i32 0, ptr %260, align 4, !tbaa !21
  %261 = getelementptr inbounds i8, ptr %260, i64 4
  store i32 0, ptr %261, align 4, !tbaa !21
  %262 = getelementptr inbounds i8, ptr %260, i64 8
  store i32 0, ptr %262, align 4, !tbaa !21
  %263 = add nuw nsw i64 %254, 1
  %264 = load i32, ptr %245, align 4, !tbaa !21
  %265 = sext i32 %264 to i64
  %266 = icmp slt i64 %263, %265
  br i1 %266, label %253, label %267

267:                                              ; preds = %253, %243
  %268 = add nuw nsw i64 %244, 1
  %269 = icmp eq i64 %268, %22
  br i1 %269, label %270, label %243

270:                                              ; preds = %267
  %271 = load i32, ptr @listXsize, align 4, !tbaa !21
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %314

273:                                              ; preds = %270, %273
  %274 = phi i64 [ %310, %273 ], [ 0, %270 ]
  %275 = load ptr, ptr @listX, align 8, !tbaa !6
  %276 = getelementptr inbounds ptr, ptr %275, i64 %274
  %277 = load ptr, ptr %276, align 8, !tbaa !6
  %278 = getelementptr inbounds i8, ptr %277, i64 6440
  %279 = load ptr, ptr %278, align 8, !tbaa !27
  %280 = getelementptr inbounds i8, ptr %277, i64 6432
  %281 = load ptr, ptr %280, align 8, !tbaa !25
  %282 = load ptr, ptr @img, align 8, !tbaa !6
  %283 = getelementptr inbounds i8, ptr %282, i64 60
  %284 = load i32, ptr %283, align 4, !tbaa !22
  %285 = getelementptr inbounds i8, ptr %282, i64 52
  %286 = load i32, ptr %285, align 4, !tbaa !23
  %287 = mul nsw i32 %286, %284
  %288 = sext i32 %287 to i64
  %289 = shl nsw i64 %288, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %279, ptr align 2 %281, i64 %289, i1 false)
  %290 = load ptr, ptr @listX, align 8, !tbaa !6
  %291 = getelementptr inbounds ptr, ptr %290, i64 %274
  %292 = load ptr, ptr %291, align 8, !tbaa !6
  %293 = getelementptr inbounds i8, ptr %292, i64 6456
  %294 = load ptr, ptr %293, align 8, !tbaa !30
  %295 = load ptr, ptr %294, align 8, !tbaa !6
  %296 = getelementptr inbounds i8, ptr %292, i64 6448
  %297 = load ptr, ptr %296, align 8, !tbaa !29
  %298 = load ptr, ptr %297, align 8, !tbaa !6
  %299 = load ptr, ptr @img, align 8, !tbaa !6
  %300 = getelementptr inbounds i8, ptr %299, i64 60
  %301 = load i32, ptr %300, align 4, !tbaa !22
  %302 = shl i32 %301, 4
  %303 = add i32 %302, 128
  %304 = getelementptr inbounds i8, ptr %299, i64 52
  %305 = load i32, ptr %304, align 4, !tbaa !23
  %306 = add nsw i32 %305, 8
  %307 = mul nsw i32 %303, %306
  %308 = sext i32 %307 to i64
  %309 = shl nsw i64 %308, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %295, ptr align 2 %298, i64 %309, i1 false)
  %310 = add nuw nsw i64 %274, 1
  %311 = load i32, ptr @listXsize, align 4, !tbaa !21
  %312 = sext i32 %311 to i64
  %313 = icmp slt i64 %310, %312
  br i1 %313, label %273, label %314

314:                                              ; preds = %273, %270
  %315 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %630

317:                                              ; preds = %314, %317
  %318 = phi i64 [ %354, %317 ], [ 0, %314 ]
  %319 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %320 = getelementptr inbounds ptr, ptr %319, i64 %318
  %321 = load ptr, ptr %320, align 8, !tbaa !6
  %322 = getelementptr inbounds i8, ptr %321, i64 6440
  %323 = load ptr, ptr %322, align 8, !tbaa !27
  %324 = getelementptr inbounds i8, ptr %321, i64 6432
  %325 = load ptr, ptr %324, align 8, !tbaa !25
  %326 = load ptr, ptr @img, align 8, !tbaa !6
  %327 = getelementptr inbounds i8, ptr %326, i64 60
  %328 = load i32, ptr %327, align 4, !tbaa !22
  %329 = getelementptr inbounds i8, ptr %326, i64 52
  %330 = load i32, ptr %329, align 4, !tbaa !23
  %331 = mul nsw i32 %330, %328
  %332 = sext i32 %331 to i64
  %333 = shl nsw i64 %332, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %323, ptr align 2 %325, i64 %333, i1 false)
  %334 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %335 = getelementptr inbounds ptr, ptr %334, i64 %318
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  %337 = getelementptr inbounds i8, ptr %336, i64 6456
  %338 = load ptr, ptr %337, align 8, !tbaa !30
  %339 = load ptr, ptr %338, align 8, !tbaa !6
  %340 = getelementptr inbounds i8, ptr %336, i64 6448
  %341 = load ptr, ptr %340, align 8, !tbaa !29
  %342 = load ptr, ptr %341, align 8, !tbaa !6
  %343 = load ptr, ptr @img, align 8, !tbaa !6
  %344 = getelementptr inbounds i8, ptr %343, i64 60
  %345 = load i32, ptr %344, align 4, !tbaa !22
  %346 = shl i32 %345, 4
  %347 = add i32 %346, 128
  %348 = getelementptr inbounds i8, ptr %343, i64 52
  %349 = load i32, ptr %348, align 4, !tbaa !23
  %350 = add nsw i32 %349, 8
  %351 = mul nsw i32 %347, %350
  %352 = sext i32 %351 to i64
  %353 = shl nsw i64 %352, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %339, ptr align 2 %342, i64 %353, i1 false)
  %354 = add nuw nsw i64 %318, 1
  %355 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  %356 = sext i32 %355 to i64
  %357 = icmp slt i64 %354, %356
  br i1 %357, label %317, label %630

358:                                              ; preds = %181, %383
  %359 = phi i64 [ 0, %181 ], [ %385, %383 ]
  %360 = phi double [ 0.000000e+00, %181 ], [ %384, %383 ]
  br i1 %184, label %361, label %383

361:                                              ; preds = %358
  %362 = getelementptr inbounds ptr, ptr %185, i64 %359
  %363 = load ptr, ptr %362, align 8, !tbaa !6
  br label %374

364:                                              ; preds = %383, %176
  %365 = phi double [ 0.000000e+00, %176 ], [ %384, %383 ]
  %366 = getelementptr inbounds i8, ptr %4, i64 52
  %367 = uitofp nneg i32 %30 to double
  %368 = fmul double %365, %367
  %369 = getelementptr inbounds i8, ptr %4, i64 90532
  %370 = shl i32 %179, 2
  %371 = add i32 %370, 32
  %372 = icmp sgt i32 %371, 0
  %373 = zext nneg i32 %371 to i64
  br label %387

374:                                              ; preds = %361, %374
  %375 = phi i64 [ 0, %361 ], [ %381, %374 ]
  %376 = phi double [ %360, %361 ], [ %380, %374 ]
  %377 = getelementptr inbounds i16, ptr %363, i64 %375
  %378 = load i16, ptr %377, align 2, !tbaa !24
  %379 = uitofp i16 %378 to double
  %380 = fadd double %376, %379
  %381 = add nuw nsw i64 %375, 1
  %382 = icmp eq i64 %381, %187
  br i1 %382, label %383, label %374

383:                                              ; preds = %374, %358
  %384 = phi double [ %360, %358 ], [ %380, %374 ]
  %385 = add nuw nsw i64 %359, 1
  %386 = icmp eq i64 %385, %186
  br i1 %386, label %364, label %358

387:                                              ; preds = %364, %498
  %388 = phi i64 [ 0, %364 ], [ %499, %498 ]
  %389 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %388
  %390 = load i32, ptr %389, align 4, !tbaa !21
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %498

392:                                              ; preds = %387
  %393 = mul nuw nsw i64 %388, 384
  %394 = getelementptr i8, ptr %2, i64 %393
  %395 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %388
  %396 = load ptr, ptr %395, align 8, !tbaa !6
  %397 = load i32, ptr %366, align 4, !tbaa !23
  %398 = mul nsw i32 %397, %179
  %399 = icmp sgt i32 %398, 0
  %400 = load i32, ptr @wp_luma_round, align 4
  %401 = load i32, ptr @luma_log_weight_denom, align 4
  %402 = shl i32 %397, 2
  %403 = add i32 %402, 32
  %404 = icmp sgt i32 %403, 0
  %405 = zext nneg i32 %390 to i64
  %406 = mul nuw nsw i64 %405, 12
  call void @llvm.memset.p0.i64(ptr align 4 %394, i8 0, i64 %406, i1 false), !tbaa !21
  %407 = zext nneg i32 %398 to i64
  %408 = zext nneg i32 %398 to i64
  %409 = zext nneg i32 %403 to i64
  br label %410

410:                                              ; preds = %392, %495
  %411 = phi i64 [ 0, %392 ], [ %496, %495 ]
  %412 = getelementptr inbounds ptr, ptr %396, i64 %411
  %413 = load ptr, ptr %412, align 8, !tbaa !6
  %414 = getelementptr inbounds i8, ptr %413, i64 6432
  %415 = load ptr, ptr %414, align 8, !tbaa !25
  %416 = getelementptr inbounds i8, ptr %413, i64 6440
  %417 = load ptr, ptr %416, align 8, !tbaa !27
  %418 = getelementptr inbounds i8, ptr %413, i64 6448
  %419 = load ptr, ptr %418, align 8, !tbaa !29
  %420 = getelementptr inbounds i8, ptr %413, i64 6456
  %421 = load ptr, ptr %420, align 8, !tbaa !30
  br i1 %399, label %422, label %437

422:                                              ; preds = %410, %422
  %423 = phi i64 [ %429, %422 ], [ 0, %410 ]
  %424 = phi double [ %428, %422 ], [ 0.000000e+00, %410 ]
  %425 = getelementptr inbounds i16, ptr %415, i64 %423
  %426 = load i16, ptr %425, align 2, !tbaa !24
  %427 = uitofp i16 %426 to double
  %428 = fadd double %424, %427
  %429 = add nuw nsw i64 %423, 1
  %430 = icmp eq i64 %429, %407
  br i1 %430, label %431, label %422

431:                                              ; preds = %422
  %432 = fcmp une double %428, 0.000000e+00
  br i1 %432, label %433, label %437

433:                                              ; preds = %431
  %434 = fdiv double %368, %428
  %435 = fadd double %434, 5.000000e-01
  %436 = fptosi double %435 to i32
  br label %437

437:                                              ; preds = %410, %431, %433
  %438 = phi i32 [ %436, %433 ], [ %30, %431 ], [ %30, %410 ]
  %439 = add i32 %438, -128
  %440 = icmp ult i32 %439, -192
  %441 = select i1 %440, i32 %30, i32 %438
  %442 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %1, i64 0, i64 %388, i64 %411
  store i32 %441, ptr %442, align 4, !tbaa !21
  %443 = getelementptr inbounds i8, ptr %442, i64 4
  store i32 %30, ptr %443, align 4, !tbaa !21
  %444 = getelementptr inbounds i8, ptr %442, i64 8
  store i32 %30, ptr %444, align 4, !tbaa !21
  br i1 %399, label %449, label %445

445:                                              ; preds = %461, %437
  br i1 %372, label %446, label %495

446:                                              ; preds = %445
  %447 = load i32, ptr @wp_luma_round, align 4
  %448 = load i32, ptr @luma_log_weight_denom, align 4
  br label %467

449:                                              ; preds = %437, %461
  %450 = phi i64 [ %465, %461 ], [ 0, %437 ]
  %451 = getelementptr inbounds i16, ptr %415, i64 %450
  %452 = load i16, ptr %451, align 2, !tbaa !24
  %453 = zext i16 %452 to i32
  %454 = mul nsw i32 %441, %453
  %455 = add nsw i32 %454, %400
  %456 = ashr i32 %455, %401
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %461, label %458

458:                                              ; preds = %449
  %459 = load i32, ptr %369, align 4, !tbaa !28
  %460 = tail call i32 @llvm.smin.i32(i32 %456, i32 %459)
  br label %461

461:                                              ; preds = %458, %449
  %462 = phi i32 [ 0, %449 ], [ %460, %458 ]
  %463 = trunc i32 %462 to i16
  %464 = getelementptr inbounds i16, ptr %417, i64 %450
  store i16 %463, ptr %464, align 2, !tbaa !24
  %465 = add nuw nsw i64 %450, 1
  %466 = icmp eq i64 %465, %408
  br i1 %466, label %445, label %449

467:                                              ; preds = %446, %492
  %468 = phi i64 [ 0, %446 ], [ %493, %492 ]
  br i1 %404, label %469, label %492

469:                                              ; preds = %467
  %470 = getelementptr inbounds ptr, ptr %419, i64 %468
  %471 = load ptr, ptr %470, align 8, !tbaa !6
  %472 = getelementptr inbounds ptr, ptr %421, i64 %468
  %473 = load ptr, ptr %472, align 8, !tbaa !6
  br label %474

474:                                              ; preds = %469, %486
  %475 = phi i64 [ 0, %469 ], [ %490, %486 ]
  %476 = getelementptr inbounds i16, ptr %471, i64 %475
  %477 = load i16, ptr %476, align 2, !tbaa !24
  %478 = zext i16 %477 to i32
  %479 = mul nsw i32 %441, %478
  %480 = add nsw i32 %479, %447
  %481 = ashr i32 %480, %448
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %486, label %483

483:                                              ; preds = %474
  %484 = load i32, ptr %369, align 4, !tbaa !28
  %485 = tail call i32 @llvm.smin.i32(i32 %481, i32 %484)
  br label %486

486:                                              ; preds = %483, %474
  %487 = phi i32 [ 0, %474 ], [ %485, %483 ]
  %488 = trunc i32 %487 to i16
  %489 = getelementptr inbounds i16, ptr %473, i64 %475
  store i16 %488, ptr %489, align 2, !tbaa !24
  %490 = add nuw nsw i64 %475, 1
  %491 = icmp eq i64 %490, %409
  br i1 %491, label %492, label %474

492:                                              ; preds = %486, %467
  %493 = add nuw nsw i64 %468, 1
  %494 = icmp eq i64 %493, %373
  br i1 %494, label %495, label %467

495:                                              ; preds = %492, %445
  %496 = add nuw nsw i64 %411, 1
  %497 = icmp eq i64 %496, %405
  br i1 %497, label %498, label %410

498:                                              ; preds = %495, %387
  %499 = add nuw nsw i64 %388, 1
  %500 = icmp eq i64 %499, %22
  br i1 %500, label %501, label %387

501:                                              ; preds = %498
  %502 = icmp eq i32 %177, 1
  %503 = load ptr, ptr @wp_weight, align 8
  %504 = load ptr, ptr @wp_offset, align 8
  br i1 %502, label %505, label %544

505:                                              ; preds = %501, %541
  %506 = phi i64 [ %542, %541 ], [ 0, %501 ]
  %507 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %506
  %508 = load i32, ptr %507, align 4, !tbaa !21
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %510, label %541

510:                                              ; preds = %505
  %511 = getelementptr inbounds ptr, ptr %503, i64 %506
  %512 = load ptr, ptr %511, align 8, !tbaa !6
  %513 = getelementptr inbounds ptr, ptr %504, i64 %506
  %514 = load ptr, ptr %513, align 8, !tbaa !6
  br label %515

515:                                              ; preds = %510, %515
  %516 = phi i64 [ 0, %510 ], [ %537, %515 ]
  %517 = getelementptr inbounds ptr, ptr %512, i64 %516
  %518 = load ptr, ptr %517, align 8, !tbaa !6
  %519 = getelementptr inbounds ptr, ptr %514, i64 %516
  %520 = load ptr, ptr %519, align 8, !tbaa !6
  %521 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %1, i64 0, i64 %506, i64 %516, i64 0
  %522 = load i32, ptr %521, align 4, !tbaa !21
  store i32 %522, ptr %518, align 4, !tbaa !21
  %523 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %506, i64 %516, i64 0
  %524 = load i32, ptr %523, align 4, !tbaa !21
  store i32 %524, ptr %520, align 4, !tbaa !21
  %525 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %1, i64 0, i64 %506, i64 %516, i64 1
  %526 = load i32, ptr %525, align 4, !tbaa !21
  %527 = getelementptr inbounds i8, ptr %518, i64 4
  store i32 %526, ptr %527, align 4, !tbaa !21
  %528 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %506, i64 %516, i64 1
  %529 = load i32, ptr %528, align 4, !tbaa !21
  %530 = getelementptr inbounds i8, ptr %520, i64 4
  store i32 %529, ptr %530, align 4, !tbaa !21
  %531 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %1, i64 0, i64 %506, i64 %516, i64 2
  %532 = load i32, ptr %531, align 4, !tbaa !21
  %533 = getelementptr inbounds i8, ptr %518, i64 8
  store i32 %532, ptr %533, align 4, !tbaa !21
  %534 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %506, i64 %516, i64 2
  %535 = load i32, ptr %534, align 4, !tbaa !21
  %536 = getelementptr inbounds i8, ptr %520, i64 8
  store i32 %535, ptr %536, align 4, !tbaa !21
  %537 = add nuw nsw i64 %516, 1
  %538 = load i32, ptr %507, align 4, !tbaa !21
  %539 = sext i32 %538 to i64
  %540 = icmp slt i64 %537, %539
  br i1 %540, label %515, label %541

541:                                              ; preds = %515, %505
  %542 = add nuw nsw i64 %506, 1
  %543 = icmp eq i64 %542, %22
  br i1 %543, label %571, label %505

544:                                              ; preds = %501, %568
  %545 = phi i64 [ %569, %568 ], [ 0, %501 ]
  %546 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %545
  %547 = load i32, ptr %546, align 4, !tbaa !21
  %548 = icmp sgt i32 %547, 0
  br i1 %548, label %549, label %568

549:                                              ; preds = %544
  %550 = getelementptr inbounds ptr, ptr %503, i64 %545
  %551 = load ptr, ptr %550, align 8, !tbaa !6
  %552 = getelementptr inbounds ptr, ptr %504, i64 %545
  %553 = load ptr, ptr %552, align 8, !tbaa !6
  br label %554

554:                                              ; preds = %549, %554
  %555 = phi i64 [ 0, %549 ], [ %564, %554 ]
  %556 = getelementptr inbounds ptr, ptr %551, i64 %555
  %557 = load ptr, ptr %556, align 8, !tbaa !6
  store i32 %30, ptr %557, align 4, !tbaa !21
  %558 = getelementptr inbounds i8, ptr %557, i64 4
  store i32 %30, ptr %558, align 4, !tbaa !21
  %559 = getelementptr inbounds i8, ptr %557, i64 8
  store i32 %30, ptr %559, align 4, !tbaa !21
  %560 = getelementptr inbounds ptr, ptr %553, i64 %555
  %561 = load ptr, ptr %560, align 8, !tbaa !6
  store i32 0, ptr %561, align 4, !tbaa !21
  %562 = getelementptr inbounds i8, ptr %561, i64 4
  store i32 0, ptr %562, align 4, !tbaa !21
  %563 = getelementptr inbounds i8, ptr %561, i64 8
  store i32 0, ptr %563, align 4, !tbaa !21
  %564 = add nuw nsw i64 %555, 1
  %565 = load i32, ptr %546, align 4, !tbaa !21
  %566 = sext i32 %565 to i64
  %567 = icmp slt i64 %564, %566
  br i1 %567, label %554, label %568

568:                                              ; preds = %554, %544
  %569 = add nuw nsw i64 %545, 1
  %570 = icmp eq i64 %569, %22
  br i1 %570, label %571, label %544

571:                                              ; preds = %568, %541
  %572 = load i32, ptr @listXsize, align 4, !tbaa !21
  %573 = icmp sgt i32 %572, 0
  br i1 %573, label %574, label %630

574:                                              ; preds = %571
  %575 = load ptr, ptr @wp_weight, align 8
  %576 = load ptr, ptr @wbp_weight, align 8
  %577 = getelementptr inbounds i8, ptr %575, i64 8
  %578 = getelementptr inbounds i8, ptr %576, i64 8
  %579 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  br label %580

580:                                              ; preds = %574, %624
  %581 = phi i32 [ %572, %574 ], [ %625, %624 ]
  %582 = phi i32 [ %579, %574 ], [ %626, %624 ]
  %583 = phi i64 [ 0, %574 ], [ %627, %624 ]
  %584 = icmp sgt i32 %582, 0
  br i1 %584, label %585, label %624

585:                                              ; preds = %580
  %586 = load ptr, ptr %575, align 8, !tbaa !6
  %587 = getelementptr inbounds ptr, ptr %586, i64 %583
  %588 = load ptr, ptr %587, align 8, !tbaa !6
  %589 = load ptr, ptr %576, align 8, !tbaa !6
  %590 = getelementptr inbounds ptr, ptr %589, i64 %583
  %591 = load ptr, ptr %590, align 8, !tbaa !6
  %592 = load ptr, ptr %577, align 8, !tbaa !6
  %593 = load ptr, ptr %578, align 8, !tbaa !6
  %594 = getelementptr inbounds ptr, ptr %593, i64 %583
  %595 = load ptr, ptr %594, align 8, !tbaa !6
  %596 = getelementptr inbounds i8, ptr %588, i64 4
  %597 = getelementptr inbounds i8, ptr %588, i64 8
  br label %598

598:                                              ; preds = %585, %598
  %599 = phi i64 [ 0, %585 ], [ %618, %598 ]
  %600 = getelementptr inbounds ptr, ptr %591, i64 %599
  %601 = load ptr, ptr %600, align 8, !tbaa !6
  %602 = getelementptr inbounds ptr, ptr %592, i64 %599
  %603 = load ptr, ptr %602, align 8, !tbaa !6
  %604 = getelementptr inbounds ptr, ptr %595, i64 %599
  %605 = load ptr, ptr %604, align 8, !tbaa !6
  %606 = load i32, ptr %588, align 4, !tbaa !21
  store i32 %606, ptr %601, align 4, !tbaa !21
  %607 = load i32, ptr %603, align 4, !tbaa !21
  store i32 %607, ptr %605, align 4, !tbaa !21
  %608 = load i32, ptr %596, align 4, !tbaa !21
  %609 = getelementptr inbounds i8, ptr %601, i64 4
  store i32 %608, ptr %609, align 4, !tbaa !21
  %610 = getelementptr inbounds i8, ptr %603, i64 4
  %611 = load i32, ptr %610, align 4, !tbaa !21
  %612 = getelementptr inbounds i8, ptr %605, i64 4
  store i32 %611, ptr %612, align 4, !tbaa !21
  %613 = load i32, ptr %597, align 4, !tbaa !21
  %614 = getelementptr inbounds i8, ptr %601, i64 8
  store i32 %613, ptr %614, align 4, !tbaa !21
  %615 = getelementptr inbounds i8, ptr %603, i64 8
  %616 = load i32, ptr %615, align 4, !tbaa !21
  %617 = getelementptr inbounds i8, ptr %605, i64 8
  store i32 %616, ptr %617, align 4, !tbaa !21
  %618 = add nuw nsw i64 %599, 1
  %619 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  %620 = sext i32 %619 to i64
  %621 = icmp slt i64 %618, %620
  br i1 %621, label %598, label %622

622:                                              ; preds = %598
  %623 = load i32, ptr @listXsize, align 4, !tbaa !21
  br label %624

624:                                              ; preds = %622, %580
  %625 = phi i32 [ %623, %622 ], [ %581, %580 ]
  %626 = phi i32 [ %619, %622 ], [ %582, %580 ]
  %627 = add nuw nsw i64 %583, 1
  %628 = sext i32 %625 to i64
  %629 = icmp slt i64 %627, %628
  br i1 %629, label %580, label %630

630:                                              ; preds = %624, %317, %314, %571
  call void @llvm.lifetime.end.p0(i64 73728, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %1) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local signext range(i32 0, 2) i32 @test_wp_P_slice(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca [2 x [32 x [3 x i32]]], align 4
  %3 = alloca [2 x [32 x [3 x i32]]], align 4
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 90220
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %4, i64 31576
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds i8, ptr %4, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %13, i32 19
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  %18 = and i32 %12, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i64 4, i64 6
  br label %21

21:                                               ; preds = %1, %8, %17
  %22 = phi i64 [ %20, %17 ], [ 2, %8 ], [ 2, %1 ]
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %3) #6
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !21
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !21
  store i32 16, ptr @wp_luma_round, align 4, !tbaa !21
  store i32 16, ptr @wp_chroma_round, align 4, !tbaa !21
  %23 = load ptr, ptr @wp_weight, align 8
  %24 = load ptr, ptr @wp_offset, align 8
  br label %25

25:                                               ; preds = %21, %67
  %26 = phi i64 [ 0, %21 ], [ %68, %67 ]
  %27 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !21
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = mul nuw nsw i64 %26, 384
  %32 = getelementptr inbounds ptr, ptr %23, i64 %26
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %24, i64 %26
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = getelementptr i8, ptr %3, i64 %31
  br label %48

37:                                               ; preds = %67
  %38 = getelementptr inbounds i8, ptr %4, i64 60
  %39 = load i32, ptr %38, align 4, !tbaa !22
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %4, i64 52
  %43 = load i32, ptr %42, align 4, !tbaa !23
  %44 = icmp sgt i32 %43, 0
  %45 = load ptr, ptr @imgY_org, align 8
  %46 = zext nneg i32 %39 to i64
  %47 = zext nneg i32 %43 to i64
  br label %70

48:                                               ; preds = %30, %48
  %49 = phi i64 [ 0, %30 ], [ %63, %48 ]
  %50 = mul nuw nsw i64 %49, 12
  %51 = getelementptr i8, ptr %36, i64 %50
  %52 = getelementptr inbounds ptr, ptr %33, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds ptr, ptr %35, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %51, i8 0, i64 12, i1 false), !tbaa !21
  %56 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %26, i64 %49, i64 0
  store i32 32, ptr %56, align 4, !tbaa !21
  store i32 32, ptr %53, align 4, !tbaa !21
  store i32 0, ptr %55, align 4, !tbaa !21
  %57 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %26, i64 %49, i64 1
  store i32 32, ptr %57, align 4, !tbaa !21
  %58 = getelementptr inbounds i8, ptr %53, i64 4
  store i32 32, ptr %58, align 4, !tbaa !21
  %59 = getelementptr inbounds i8, ptr %55, i64 4
  store i32 0, ptr %59, align 4, !tbaa !21
  %60 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %26, i64 %49, i64 2
  store i32 32, ptr %60, align 4, !tbaa !21
  %61 = getelementptr inbounds i8, ptr %53, i64 8
  store i32 32, ptr %61, align 4, !tbaa !21
  %62 = getelementptr inbounds i8, ptr %55, i64 8
  store i32 0, ptr %62, align 4, !tbaa !21
  %63 = add nuw nsw i64 %49, 1
  %64 = load i32, ptr %27, align 4, !tbaa !21
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %48, label %67

67:                                               ; preds = %48, %25
  %68 = add nuw nsw i64 %26, 1
  %69 = icmp eq i64 %68, %22
  br i1 %69, label %37, label %25

70:                                               ; preds = %41, %90
  %71 = phi i64 [ 0, %41 ], [ %92, %90 ]
  %72 = phi double [ 0.000000e+00, %41 ], [ %91, %90 ]
  br i1 %44, label %73, label %90

73:                                               ; preds = %70
  %74 = getelementptr inbounds ptr, ptr %45, i64 %71
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  br label %81

76:                                               ; preds = %90, %37
  %77 = phi double [ 0.000000e+00, %37 ], [ %91, %90 ]
  %78 = getelementptr inbounds i8, ptr %4, i64 52
  %79 = icmp eq i32 %0, 0
  %80 = fmul double %77, 3.200000e+01
  br label %94

81:                                               ; preds = %73, %81
  %82 = phi i64 [ 0, %73 ], [ %88, %81 ]
  %83 = phi double [ %72, %73 ], [ %87, %81 ]
  %84 = getelementptr inbounds i16, ptr %75, i64 %82
  %85 = load i16, ptr %84, align 2, !tbaa !24
  %86 = uitofp i16 %85 to double
  %87 = fadd double %83, %86
  %88 = add nuw nsw i64 %82, 1
  %89 = icmp eq i64 %88, %47
  br i1 %89, label %90, label %81

90:                                               ; preds = %81, %70
  %91 = phi double [ %72, %70 ], [ %87, %81 ]
  %92 = add nuw nsw i64 %71, 1
  %93 = icmp eq i64 %92, %46
  br i1 %93, label %76, label %70

94:                                               ; preds = %76, %158
  %95 = phi i64 [ 0, %76 ], [ %159, %158 ]
  %96 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !21
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %158

99:                                               ; preds = %94
  %100 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %95
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = load i32, ptr %78, align 4, !tbaa !23
  %103 = mul nsw i32 %102, %39
  %104 = icmp sgt i32 %103, 0
  %105 = sitofp i32 %103 to double
  %106 = zext nneg i32 %97 to i64
  %107 = zext nneg i32 %103 to i64
  br label %113

108:                                              ; preds = %158
  %109 = load ptr, ptr @input, align 8
  %110 = getelementptr inbounds i8, ptr %109, i64 1928
  %111 = load ptr, ptr @active_sps, align 8
  %112 = getelementptr inbounds i8, ptr %111, i64 4
  br label %161

113:                                              ; preds = %99, %152
  %114 = phi i64 [ 0, %99 ], [ %156, %152 ]
  %115 = getelementptr inbounds ptr, ptr %101, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %116, i64 6432
  %118 = load ptr, ptr %117, align 8, !tbaa !25
  br i1 %104, label %119, label %129

119:                                              ; preds = %113, %119
  %120 = phi i64 [ %126, %119 ], [ 0, %113 ]
  %121 = phi double [ %125, %119 ], [ 0.000000e+00, %113 ]
  %122 = getelementptr inbounds i16, ptr %118, i64 %120
  %123 = load i16, ptr %122, align 2, !tbaa !24
  %124 = uitofp i16 %123 to double
  %125 = fadd double %121, %124
  %126 = add nuw nsw i64 %120, 1
  %127 = icmp eq i64 %126, %107
  br i1 %127, label %128, label %119

128:                                              ; preds = %119
  br i1 %79, label %130, label %142

129:                                              ; preds = %113
  br i1 %79, label %136, label %142

130:                                              ; preds = %128
  %131 = fcmp une double %125, 0.000000e+00
  br i1 %131, label %132, label %136

132:                                              ; preds = %130
  %133 = fdiv double %80, %125
  %134 = fadd double %133, 5.000000e-01
  %135 = fptosi double %134 to i32
  br label %136

136:                                              ; preds = %129, %130, %132
  %137 = phi i32 [ %135, %132 ], [ 32, %130 ], [ 32, %129 ]
  %138 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %95, i64 %114
  %139 = add i32 %137, -128
  %140 = icmp ult i32 %139, -192
  %141 = select i1 %140, i32 32, i32 %137
  store i32 %141, ptr %138, align 4
  br label %152

142:                                              ; preds = %129, %128
  %143 = phi double [ 0.000000e+00, %129 ], [ %125, %128 ]
  %144 = fsub double %77, %143
  %145 = fdiv double %144, %105
  %146 = fadd double %145, 5.000000e-01
  %147 = fptosi double %146 to i32
  %148 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %95, i64 %114
  %149 = tail call i32 @llvm.smin.i32(i32 %147, i32 127)
  %150 = tail call i32 @llvm.smax.i32(i32 %149, i32 -128)
  store i32 %150, ptr %148, align 4, !tbaa !21
  %151 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %95, i64 %114
  store i32 32, ptr %151, align 4, !tbaa !21
  br label %152

152:                                              ; preds = %136, %142
  %153 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %95, i64 %114
  %154 = getelementptr inbounds i8, ptr %153, i64 4
  store i32 32, ptr %154, align 4, !tbaa !21
  %155 = getelementptr inbounds i8, ptr %153, i64 8
  store i32 32, ptr %155, align 4, !tbaa !21
  %156 = add nuw nsw i64 %114, 1
  %157 = icmp eq i64 %156, %106
  br i1 %157, label %158, label %113

158:                                              ; preds = %152, %94
  %159 = add nuw nsw i64 %95, 1
  %160 = icmp eq i64 %159, %22
  br i1 %160, label %108, label %94

161:                                              ; preds = %108, %235
  %162 = phi i64 [ 0, %108 ], [ %236, %235 ]
  %163 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !21
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %235

166:                                              ; preds = %161
  %167 = load i32, ptr %110, align 8, !tbaa !34
  %168 = icmp eq i32 %167, 0
  %169 = zext nneg i32 %164 to i64
  br label %170

170:                                              ; preds = %166, %212
  %171 = phi i64 [ 0, %166 ], [ %213, %212 ]
  br i1 %168, label %218, label %215

172:                                              ; preds = %218
  br i1 %168, label %176, label %173

173:                                              ; preds = %226, %172
  %174 = load i32, ptr %112, align 4, !tbaa !36
  %175 = icmp eq i32 %174, 66
  br i1 %175, label %176, label %184

176:                                              ; preds = %172, %173
  %177 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %162, i64 %171, i64 1
  %178 = load i32, ptr %177, align 4, !tbaa !21
  %179 = icmp ne i32 %178, 0
  %180 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %162, i64 %171, i64 1
  %181 = load i32, ptr %180, align 4, !tbaa !21
  %182 = icmp ne i32 %181, 32
  %183 = select i1 %182, i1 true, i1 %179
  br i1 %183, label %238, label %193

184:                                              ; preds = %173
  %185 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %162, i64 %171, i64 1
  %186 = load i32, ptr %185, align 4, !tbaa !21
  %187 = tail call i32 @llvm.abs.i32(i32 %186, i1 true)
  %188 = icmp ugt i32 %187, 2
  %189 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %162, i64 %171, i64 1
  %190 = load i32, ptr %189, align 4, !tbaa !21
  %191 = icmp ne i32 %190, 32
  %192 = select i1 %191, i1 true, i1 %188
  br i1 %192, label %238, label %194

193:                                              ; preds = %176
  br i1 %168, label %202, label %194

194:                                              ; preds = %184, %193
  %195 = load i32, ptr %112, align 4, !tbaa !36
  %196 = icmp eq i32 %195, 66
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %162, i64 %171, i64 2
  %199 = load i32, ptr %198, align 4, !tbaa !21
  %200 = tail call i32 @llvm.abs.i32(i32 %199, i1 true)
  %201 = icmp ugt i32 %200, 2
  br label %206

202:                                              ; preds = %194, %193
  %203 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %162, i64 %171, i64 2
  %204 = load i32, ptr %203, align 4, !tbaa !21
  %205 = icmp ne i32 %204, 0
  br label %206

206:                                              ; preds = %202, %197
  %207 = phi i1 [ %201, %197 ], [ %205, %202 ]
  %208 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %162, i64 %171, i64 2
  %209 = load i32, ptr %208, align 4, !tbaa !21
  %210 = icmp ne i32 %209, 32
  %211 = select i1 %210, i1 true, i1 %207
  br i1 %211, label %238, label %212

212:                                              ; preds = %206
  %213 = add nuw nsw i64 %171, 1
  %214 = icmp eq i64 %213, %169
  br i1 %214, label %235, label %170

215:                                              ; preds = %170
  %216 = load i32, ptr %112, align 4, !tbaa !36
  %217 = icmp eq i32 %216, 66
  br i1 %217, label %218, label %226

218:                                              ; preds = %170, %215
  %219 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %162, i64 %171, i64 0
  %220 = load i32, ptr %219, align 4, !tbaa !21
  %221 = icmp ne i32 %220, 0
  %222 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %162, i64 %171, i64 0
  %223 = load i32, ptr %222, align 4, !tbaa !21
  %224 = icmp ne i32 %223, 32
  %225 = select i1 %224, i1 true, i1 %221
  br i1 %225, label %238, label %172

226:                                              ; preds = %215
  %227 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %162, i64 %171, i64 0
  %228 = load i32, ptr %227, align 4, !tbaa !21
  %229 = tail call i32 @llvm.abs.i32(i32 %228, i1 true)
  %230 = icmp ugt i32 %229, 2
  %231 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %162, i64 %171, i64 0
  %232 = load i32, ptr %231, align 4, !tbaa !21
  %233 = icmp ne i32 %232, 32
  %234 = select i1 %233, i1 true, i1 %230
  br i1 %234, label %238, label %173

235:                                              ; preds = %212, %161
  %236 = add nuw nsw i64 %162, 1
  %237 = icmp eq i64 %236, %22
  br i1 %237, label %238, label %161

238:                                              ; preds = %235, %218, %176, %206, %226, %184
  %239 = phi i32 [ 1, %184 ], [ 1, %226 ], [ 1, %206 ], [ 1, %176 ], [ 1, %218 ], [ 0, %235 ]
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %2) #6
  ret i32 %239
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local signext range(i32 0, 2) i32 @test_wp_B_slice(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca [6 x [32 x [3 x i32]]], align 4
  %3 = alloca [6 x [32 x [3 x i32]]], align 4
  %4 = alloca [6 x [32 x [32 x [3 x i32]]]], align 4
  %5 = alloca [2 x i32], align 4
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 90220
  %8 = load i32, ptr %7, align 4, !tbaa !10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %6, i64 31576
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = getelementptr inbounds i8, ptr %6, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %15, i32 19
  %17 = load i32, ptr %16, align 8, !tbaa !18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %10
  %20 = and i32 %14, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i64 4, i64 6
  br label %23

23:                                               ; preds = %1, %10, %19
  %24 = phi i64 [ %22, %19 ], [ 2, %10 ], [ 2, %1 ]
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 73728, ptr nonnull %4) #6
  %25 = icmp eq i32 %0, 1
  %26 = select i1 %25, i32 5, i32 6
  store i32 %26, ptr @luma_log_weight_denom, align 4, !tbaa !21
  store i32 %26, ptr @chroma_log_weight_denom, align 4, !tbaa !21
  %27 = add nsw i32 %26, -1
  %28 = shl nuw nsw i32 1, %27
  store i32 %28, ptr @wp_luma_round, align 4, !tbaa !21
  store i32 %28, ptr @wp_chroma_round, align 4, !tbaa !21
  %29 = shl nuw nsw i32 1, %26
  %30 = load ptr, ptr @wp_weight, align 8
  %31 = load ptr, ptr @wp_offset, align 8
  br label %32

32:                                               ; preds = %23, %76
  %33 = phi i64 [ 0, %23 ], [ %77, %76 ]
  %34 = mul nuw nsw i64 %33, 384
  %35 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %33
  %36 = load i32, ptr %35, align 4, !tbaa !21
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %32
  %39 = getelementptr inbounds ptr, ptr %30, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = getelementptr inbounds ptr, ptr %31, i64 %33
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  br label %56

43:                                               ; preds = %76
  %44 = load i32, ptr @listXsize, align 4, !tbaa !21
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %170

46:                                               ; preds = %43
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  %48 = icmp sgt i32 %47, 0
  %49 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8
  %50 = load ptr, ptr @listX, align 8
  %51 = load ptr, ptr @enc_picture, align 8
  %52 = getelementptr inbounds i8, ptr %51, i64 4
  %53 = getelementptr inbounds i8, ptr %4, i64 12288
  %54 = zext nneg i32 %44 to i64
  %55 = zext nneg i32 %47 to i64
  br label %79

56:                                               ; preds = %38, %56
  %57 = phi i64 [ 0, %38 ], [ %72, %56 ]
  %58 = mul nuw nsw i64 %57, 12
  %59 = add nuw nsw i64 %34, %58
  %60 = getelementptr i8, ptr %2, i64 %59
  %61 = getelementptr i8, ptr %3, i64 %59
  %62 = getelementptr inbounds ptr, ptr %40, i64 %57
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds ptr, ptr %42, i64 %57
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %61, i8 0, i64 12, i1 false), !tbaa !21
  store i32 %29, ptr %60, align 4, !tbaa !21
  %66 = getelementptr inbounds i8, ptr %60, i64 4
  store i32 %29, ptr %66, align 4, !tbaa !21
  %67 = getelementptr inbounds i8, ptr %60, i64 8
  store i32 %29, ptr %67, align 4, !tbaa !21
  store i32 %29, ptr %63, align 4, !tbaa !21
  store i32 0, ptr %65, align 4, !tbaa !21
  %68 = getelementptr inbounds i8, ptr %63, i64 4
  store i32 %29, ptr %68, align 4, !tbaa !21
  %69 = getelementptr inbounds i8, ptr %65, i64 4
  store i32 0, ptr %69, align 4, !tbaa !21
  %70 = getelementptr inbounds i8, ptr %63, i64 8
  store i32 %29, ptr %70, align 4, !tbaa !21
  %71 = getelementptr inbounds i8, ptr %65, i64 8
  store i32 0, ptr %71, align 4, !tbaa !21
  %72 = add nuw nsw i64 %57, 1
  %73 = load i32, ptr %35, align 4, !tbaa !21
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %56, label %76

76:                                               ; preds = %56, %32
  %77 = add nuw nsw i64 %33, 1
  %78 = icmp eq i64 %77, %24
  br i1 %78, label %43, label %32

79:                                               ; preds = %46, %166
  %80 = phi i64 [ 0, %46 ], [ %167, %166 ]
  br i1 %48, label %81, label %166

81:                                               ; preds = %79
  %82 = getelementptr inbounds ptr, ptr %50, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 4
  %85 = load i32, ptr %84, align 4, !tbaa !33
  %86 = load i32, ptr %52, align 4, !tbaa !33
  %87 = sub nsw i32 %86, %85
  %88 = tail call i32 @llvm.smin.i32(i32 %87, i32 127)
  %89 = tail call i32 @llvm.smax.i32(i32 %88, i32 -128)
  br label %90

90:                                               ; preds = %81, %161
  %91 = phi i64 [ 0, %81 ], [ %164, %161 ]
  %92 = getelementptr inbounds ptr, ptr %49, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 4
  %95 = load i32, ptr %94, align 4, !tbaa !33
  %96 = icmp eq i32 %95, %85
  br i1 %96, label %155, label %97

97:                                               ; preds = %90
  %98 = sub nsw i32 %95, %85
  %99 = icmp slt i32 %98, -1
  %100 = tail call i32 @llvm.smin.i32(i32 %98, i32 127)
  %101 = tail call i32 @llvm.smax.i32(i32 %100, i32 -128)
  %102 = trunc nsw i32 %101 to i8
  %103 = sdiv i8 %102, 2
  %104 = sext i8 %103 to i32
  %105 = sub nsw i32 0, %104
  %106 = select i1 %99, i32 %105, i32 %104
  %107 = add nuw nsw i32 %106, 16384
  %108 = trunc i32 %107 to i16
  %109 = trunc nsw i32 %101 to i16
  %110 = sdiv i16 %108, %109
  %111 = sext i16 %110 to i32
  %112 = mul nsw i32 %89, %111
  %113 = add nsw i32 %112, 32
  %114 = ashr i32 %113, 6
  %115 = tail call i32 @llvm.smin.i32(i32 %114, i32 1023)
  %116 = tail call i32 @llvm.smax.i32(i32 %115, i32 -1024)
  %117 = ashr i32 %116, 2
  %118 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %53, i64 0, i64 %80, i64 %91, i64 0
  %119 = add nsw i32 %117, -129
  %120 = icmp ult i32 %119, -193
  %121 = select i1 %120, i32 32, i32 %117
  store i32 %121, ptr %118, align 4
  %122 = sub nsw i32 64, %121
  %123 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %4, i64 0, i64 %80, i64 %91, i64 0
  store i32 %122, ptr %123, align 4
  %124 = trunc i32 %107 to i16
  %125 = trunc nsw i32 %101 to i16
  %126 = sdiv i16 %124, %125
  %127 = sext i16 %126 to i32
  %128 = mul nsw i32 %89, %127
  %129 = add nsw i32 %128, 32
  %130 = ashr i32 %129, 6
  %131 = tail call i32 @llvm.smin.i32(i32 %130, i32 1023)
  %132 = tail call i32 @llvm.smax.i32(i32 %131, i32 -1024)
  %133 = ashr i32 %132, 2
  %134 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %53, i64 0, i64 %80, i64 %91, i64 1
  %135 = add nsw i32 %133, -129
  %136 = icmp ult i32 %135, -193
  %137 = select i1 %136, i32 32, i32 %133
  store i32 %137, ptr %134, align 4
  %138 = sub nsw i32 64, %137
  %139 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %4, i64 0, i64 %80, i64 %91, i64 1
  store i32 %138, ptr %139, align 4
  %140 = trunc i32 %107 to i16
  %141 = trunc nsw i32 %101 to i16
  %142 = sdiv i16 %140, %141
  %143 = sext i16 %142 to i32
  %144 = mul nsw i32 %89, %143
  %145 = add nsw i32 %144, 32
  %146 = ashr i32 %145, 6
  %147 = tail call i32 @llvm.smin.i32(i32 %146, i32 1023)
  %148 = tail call i32 @llvm.smax.i32(i32 %147, i32 -1024)
  %149 = ashr i32 %148, 2
  %150 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %53, i64 0, i64 %80, i64 %91, i64 2
  %151 = add nsw i32 %149, -129
  %152 = icmp ult i32 %151, -193
  %153 = select i1 %152, i32 32, i32 %149
  store i32 %153, ptr %150, align 4
  %154 = sub nsw i32 64, %153
  br label %161

155:                                              ; preds = %90
  %156 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %53, i64 0, i64 %80, i64 %91, i64 0
  store i32 %29, ptr %156, align 4, !tbaa !21
  %157 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %4, i64 0, i64 %80, i64 %91, i64 0
  store i32 %29, ptr %157, align 4
  %158 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %53, i64 0, i64 %80, i64 %91, i64 1
  store i32 %29, ptr %158, align 4, !tbaa !21
  %159 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %4, i64 0, i64 %80, i64 %91, i64 1
  store i32 %29, ptr %159, align 4
  %160 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %53, i64 0, i64 %80, i64 %91, i64 2
  store i32 %29, ptr %160, align 4, !tbaa !21
  br label %161

161:                                              ; preds = %155, %97
  %162 = phi i32 [ %29, %155 ], [ %154, %97 ]
  %163 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %4, i64 0, i64 %80, i64 %91, i64 2
  store i32 %162, ptr %163, align 4
  %164 = add nuw nsw i64 %91, 1
  %165 = icmp eq i64 %164, %55
  br i1 %165, label %166, label %90

166:                                              ; preds = %161, %79
  %167 = add nuw nsw i64 %80, 1
  %168 = icmp eq i64 %167, %54
  br i1 %168, label %169, label %79

169:                                              ; preds = %166
  br i1 %25, label %182, label %171

170:                                              ; preds = %43
  br i1 %25, label %200, label %171

171:                                              ; preds = %170, %169
  %172 = getelementptr inbounds i8, ptr %6, i64 60
  %173 = load i32, ptr %172, align 4, !tbaa !22
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %270

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8, ptr %6, i64 52
  %177 = load i32, ptr %176, align 4, !tbaa !23
  %178 = icmp sgt i32 %177, 0
  %179 = load ptr, ptr @imgY_org, align 8
  %180 = zext nneg i32 %173 to i64
  %181 = zext nneg i32 %177 to i64
  br label %264

182:                                              ; preds = %169
  br i1 %45, label %183, label %200

183:                                              ; preds = %182
  %184 = getelementptr inbounds i8, ptr %4, i64 12288
  %185 = load ptr, ptr @wbp_weight, align 8
  %186 = getelementptr inbounds i8, ptr %185, i64 8
  %187 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  br label %188

188:                                              ; preds = %183, %231
  %189 = phi i32 [ %44, %183 ], [ %232, %231 ]
  %190 = phi i32 [ %187, %183 ], [ %233, %231 ]
  %191 = phi i64 [ 0, %183 ], [ %234, %231 ]
  %192 = icmp sgt i32 %190, 0
  br i1 %192, label %193, label %231

193:                                              ; preds = %188
  %194 = load ptr, ptr %186, align 8, !tbaa !6
  %195 = getelementptr inbounds ptr, ptr %194, i64 %191
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  %197 = load ptr, ptr %185, align 8, !tbaa !6
  %198 = getelementptr inbounds ptr, ptr %197, i64 %191
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  br label %203

200:                                              ; preds = %231, %170, %182
  %201 = load ptr, ptr @wp_weight, align 8
  %202 = load ptr, ptr @wp_offset, align 8
  br label %237

203:                                              ; preds = %193, %203
  %204 = phi i64 [ 0, %193 ], [ %225, %203 ]
  %205 = getelementptr inbounds ptr, ptr %196, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = getelementptr inbounds ptr, ptr %199, i64 %204
  %208 = load ptr, ptr %207, align 8, !tbaa !6
  %209 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %184, i64 0, i64 %191, i64 %204, i64 0
  %210 = load i32, ptr %209, align 4, !tbaa !21
  store i32 %210, ptr %206, align 4, !tbaa !21
  %211 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %4, i64 0, i64 %191, i64 %204, i64 0
  %212 = load i32, ptr %211, align 4, !tbaa !21
  store i32 %212, ptr %208, align 4, !tbaa !21
  %213 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %184, i64 0, i64 %191, i64 %204, i64 1
  %214 = load i32, ptr %213, align 4, !tbaa !21
  %215 = getelementptr inbounds i8, ptr %206, i64 4
  store i32 %214, ptr %215, align 4, !tbaa !21
  %216 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %4, i64 0, i64 %191, i64 %204, i64 1
  %217 = load i32, ptr %216, align 4, !tbaa !21
  %218 = getelementptr inbounds i8, ptr %208, i64 4
  store i32 %217, ptr %218, align 4, !tbaa !21
  %219 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %184, i64 0, i64 %191, i64 %204, i64 2
  %220 = load i32, ptr %219, align 4, !tbaa !21
  %221 = getelementptr inbounds i8, ptr %206, i64 8
  store i32 %220, ptr %221, align 4, !tbaa !21
  %222 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %4, i64 0, i64 %191, i64 %204, i64 2
  %223 = load i32, ptr %222, align 4, !tbaa !21
  %224 = getelementptr inbounds i8, ptr %208, i64 8
  store i32 %223, ptr %224, align 4, !tbaa !21
  %225 = add nuw nsw i64 %204, 1
  %226 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  %227 = sext i32 %226 to i64
  %228 = icmp slt i64 %225, %227
  br i1 %228, label %203, label %229

229:                                              ; preds = %203
  %230 = load i32, ptr @listXsize, align 4, !tbaa !21
  br label %231

231:                                              ; preds = %229, %188
  %232 = phi i32 [ %230, %229 ], [ %189, %188 ]
  %233 = phi i32 [ %226, %229 ], [ %190, %188 ]
  %234 = add nuw nsw i64 %191, 1
  %235 = sext i32 %232 to i64
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %188, label %200

237:                                              ; preds = %200, %261
  %238 = phi i64 [ 0, %200 ], [ %262, %261 ]
  %239 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !21
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %237
  %243 = getelementptr inbounds ptr, ptr %201, i64 %238
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  %245 = getelementptr inbounds ptr, ptr %202, i64 %238
  %246 = load ptr, ptr %245, align 8, !tbaa !6
  br label %247

247:                                              ; preds = %242, %247
  %248 = phi i64 [ 0, %242 ], [ %257, %247 ]
  %249 = getelementptr inbounds ptr, ptr %244, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  store i32 %29, ptr %250, align 4, !tbaa !21
  %251 = getelementptr inbounds i8, ptr %250, i64 4
  store i32 %29, ptr %251, align 4, !tbaa !21
  %252 = getelementptr inbounds i8, ptr %250, i64 8
  store i32 %29, ptr %252, align 4, !tbaa !21
  %253 = getelementptr inbounds ptr, ptr %246, i64 %248
  %254 = load ptr, ptr %253, align 8, !tbaa !6
  store i32 0, ptr %254, align 4, !tbaa !21
  %255 = getelementptr inbounds i8, ptr %254, i64 4
  store i32 0, ptr %255, align 4, !tbaa !21
  %256 = getelementptr inbounds i8, ptr %254, i64 8
  store i32 0, ptr %256, align 4, !tbaa !21
  %257 = add nuw nsw i64 %248, 1
  %258 = load i32, ptr %239, align 4, !tbaa !21
  %259 = sext i32 %258 to i64
  %260 = icmp slt i64 %257, %259
  br i1 %260, label %247, label %261

261:                                              ; preds = %247, %237
  %262 = add nuw nsw i64 %238, 1
  %263 = icmp eq i64 %262, %24
  br i1 %263, label %467, label %237

264:                                              ; preds = %175, %284
  %265 = phi i64 [ 0, %175 ], [ %286, %284 ]
  %266 = phi double [ 0.000000e+00, %175 ], [ %285, %284 ]
  br i1 %178, label %267, label %284

267:                                              ; preds = %264
  %268 = getelementptr inbounds ptr, ptr %179, i64 %265
  %269 = load ptr, ptr %268, align 8, !tbaa !6
  br label %275

270:                                              ; preds = %284, %171
  %271 = phi double [ 0.000000e+00, %171 ], [ %285, %284 ]
  %272 = getelementptr inbounds i8, ptr %6, i64 52
  %273 = uitofp nneg i32 %29 to double
  %274 = fmul double %271, %273
  br label %288

275:                                              ; preds = %267, %275
  %276 = phi i64 [ 0, %267 ], [ %282, %275 ]
  %277 = phi double [ %266, %267 ], [ %281, %275 ]
  %278 = getelementptr inbounds i16, ptr %269, i64 %276
  %279 = load i16, ptr %278, align 2, !tbaa !24
  %280 = uitofp i16 %279 to double
  %281 = fadd double %277, %280
  %282 = add nuw nsw i64 %276, 1
  %283 = icmp eq i64 %282, %181
  br i1 %283, label %284, label %275

284:                                              ; preds = %275, %264
  %285 = phi double [ %266, %264 ], [ %281, %275 ]
  %286 = add nuw nsw i64 %265, 1
  %287 = icmp eq i64 %286, %180
  br i1 %287, label %270, label %264

288:                                              ; preds = %270, %335
  %289 = phi i64 [ 0, %270 ], [ %336, %335 ]
  %290 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !21
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %335

293:                                              ; preds = %288
  %294 = mul nuw nsw i64 %289, 384
  %295 = getelementptr i8, ptr %3, i64 %294
  %296 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %289
  %297 = load ptr, ptr %296, align 8, !tbaa !6
  %298 = load i32, ptr %272, align 4, !tbaa !23
  %299 = mul nsw i32 %298, %173
  %300 = icmp sgt i32 %299, 0
  %301 = zext nneg i32 %291 to i64
  %302 = mul nuw nsw i64 %301, 12
  call void @llvm.memset.p0.i64(ptr align 4 %295, i8 0, i64 %302, i1 false), !tbaa !21
  %303 = zext nneg i32 %299 to i64
  br label %304

304:                                              ; preds = %293, %325
  %305 = phi i64 [ 0, %293 ], [ %333, %325 ]
  %306 = getelementptr inbounds ptr, ptr %297, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !6
  %308 = getelementptr inbounds i8, ptr %307, i64 6432
  %309 = load ptr, ptr %308, align 8, !tbaa !25
  br i1 %300, label %310, label %325

310:                                              ; preds = %304, %310
  %311 = phi i64 [ %317, %310 ], [ 0, %304 ]
  %312 = phi double [ %316, %310 ], [ 0.000000e+00, %304 ]
  %313 = getelementptr inbounds i16, ptr %309, i64 %311
  %314 = load i16, ptr %313, align 2, !tbaa !24
  %315 = uitofp i16 %314 to double
  %316 = fadd double %312, %315
  %317 = add nuw nsw i64 %311, 1
  %318 = icmp eq i64 %317, %303
  br i1 %318, label %319, label %310

319:                                              ; preds = %310
  %320 = fcmp une double %316, 0.000000e+00
  br i1 %320, label %321, label %325

321:                                              ; preds = %319
  %322 = fdiv double %274, %316
  %323 = fadd double %322, 5.000000e-01
  %324 = fptosi double %323 to i32
  br label %325

325:                                              ; preds = %304, %319, %321
  %326 = phi i32 [ %324, %321 ], [ %29, %319 ], [ %29, %304 ]
  %327 = add i32 %326, -128
  %328 = icmp ult i32 %327, -192
  %329 = select i1 %328, i32 %29, i32 %326
  %330 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %289, i64 %305
  store i32 %329, ptr %330, align 4, !tbaa !21
  %331 = getelementptr inbounds i8, ptr %330, i64 4
  store i32 %29, ptr %331, align 4, !tbaa !21
  %332 = getelementptr inbounds i8, ptr %330, i64 8
  store i32 %29, ptr %332, align 4, !tbaa !21
  %333 = add nuw nsw i64 %305, 1
  %334 = icmp eq i64 %333, %301
  br i1 %334, label %335, label %304

335:                                              ; preds = %325, %288
  %336 = add nuw nsw i64 %289, 1
  %337 = icmp eq i64 %336, %24
  br i1 %337, label %338, label %288

338:                                              ; preds = %335
  %339 = icmp eq i32 %0, 0
  %340 = load ptr, ptr @wp_weight, align 8
  %341 = load ptr, ptr @wp_offset, align 8
  br i1 %339, label %342, label %381

342:                                              ; preds = %338, %378
  %343 = phi i64 [ %379, %378 ], [ 0, %338 ]
  %344 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !21
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %378

347:                                              ; preds = %342
  %348 = getelementptr inbounds ptr, ptr %340, i64 %343
  %349 = load ptr, ptr %348, align 8, !tbaa !6
  %350 = getelementptr inbounds ptr, ptr %341, i64 %343
  %351 = load ptr, ptr %350, align 8, !tbaa !6
  br label %352

352:                                              ; preds = %347, %352
  %353 = phi i64 [ 0, %347 ], [ %374, %352 ]
  %354 = getelementptr inbounds ptr, ptr %349, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !6
  %356 = getelementptr inbounds ptr, ptr %351, i64 %353
  %357 = load ptr, ptr %356, align 8, !tbaa !6
  %358 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %343, i64 %353, i64 0
  %359 = load i32, ptr %358, align 4, !tbaa !21
  store i32 %359, ptr %355, align 4, !tbaa !21
  %360 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %343, i64 %353, i64 0
  %361 = load i32, ptr %360, align 4, !tbaa !21
  store i32 %361, ptr %357, align 4, !tbaa !21
  %362 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %343, i64 %353, i64 1
  %363 = load i32, ptr %362, align 4, !tbaa !21
  %364 = getelementptr inbounds i8, ptr %355, i64 4
  store i32 %363, ptr %364, align 4, !tbaa !21
  %365 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %343, i64 %353, i64 1
  %366 = load i32, ptr %365, align 4, !tbaa !21
  %367 = getelementptr inbounds i8, ptr %357, i64 4
  store i32 %366, ptr %367, align 4, !tbaa !21
  %368 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %2, i64 0, i64 %343, i64 %353, i64 2
  %369 = load i32, ptr %368, align 4, !tbaa !21
  %370 = getelementptr inbounds i8, ptr %355, i64 8
  store i32 %369, ptr %370, align 4, !tbaa !21
  %371 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %3, i64 0, i64 %343, i64 %353, i64 2
  %372 = load i32, ptr %371, align 4, !tbaa !21
  %373 = getelementptr inbounds i8, ptr %357, i64 8
  store i32 %372, ptr %373, align 4, !tbaa !21
  %374 = add nuw nsw i64 %353, 1
  %375 = load i32, ptr %344, align 4, !tbaa !21
  %376 = sext i32 %375 to i64
  %377 = icmp slt i64 %374, %376
  br i1 %377, label %352, label %378

378:                                              ; preds = %352, %342
  %379 = add nuw nsw i64 %343, 1
  %380 = icmp eq i64 %379, %24
  br i1 %380, label %408, label %342

381:                                              ; preds = %338, %405
  %382 = phi i64 [ %406, %405 ], [ 0, %338 ]
  %383 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !21
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %405

386:                                              ; preds = %381
  %387 = getelementptr inbounds ptr, ptr %340, i64 %382
  %388 = load ptr, ptr %387, align 8, !tbaa !6
  %389 = getelementptr inbounds ptr, ptr %341, i64 %382
  %390 = load ptr, ptr %389, align 8, !tbaa !6
  br label %391

391:                                              ; preds = %386, %391
  %392 = phi i64 [ 0, %386 ], [ %401, %391 ]
  %393 = getelementptr inbounds ptr, ptr %388, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !6
  store i32 %29, ptr %394, align 4, !tbaa !21
  %395 = getelementptr inbounds i8, ptr %394, i64 4
  store i32 %29, ptr %395, align 4, !tbaa !21
  %396 = getelementptr inbounds i8, ptr %394, i64 8
  store i32 %29, ptr %396, align 4, !tbaa !21
  %397 = getelementptr inbounds ptr, ptr %390, i64 %392
  %398 = load ptr, ptr %397, align 8, !tbaa !6
  store i32 0, ptr %398, align 4, !tbaa !21
  %399 = getelementptr inbounds i8, ptr %398, i64 4
  store i32 0, ptr %399, align 4, !tbaa !21
  %400 = getelementptr inbounds i8, ptr %398, i64 8
  store i32 0, ptr %400, align 4, !tbaa !21
  %401 = add nuw nsw i64 %392, 1
  %402 = load i32, ptr %383, align 4, !tbaa !21
  %403 = sext i32 %402 to i64
  %404 = icmp slt i64 %401, %403
  br i1 %404, label %391, label %405

405:                                              ; preds = %391, %381
  %406 = add nuw nsw i64 %382, 1
  %407 = icmp eq i64 %406, %24
  br i1 %407, label %408, label %381

408:                                              ; preds = %405, %378
  %409 = load i32, ptr @listXsize, align 4, !tbaa !21
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %411, label %467

411:                                              ; preds = %408
  %412 = load ptr, ptr @wp_weight, align 8
  %413 = load ptr, ptr @wbp_weight, align 8
  %414 = getelementptr inbounds i8, ptr %412, i64 8
  %415 = getelementptr inbounds i8, ptr %413, i64 8
  %416 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  br label %417

417:                                              ; preds = %411, %461
  %418 = phi i32 [ %409, %411 ], [ %462, %461 ]
  %419 = phi i32 [ %416, %411 ], [ %463, %461 ]
  %420 = phi i64 [ 0, %411 ], [ %464, %461 ]
  %421 = icmp sgt i32 %419, 0
  br i1 %421, label %422, label %461

422:                                              ; preds = %417
  %423 = load ptr, ptr %412, align 8, !tbaa !6
  %424 = getelementptr inbounds ptr, ptr %423, i64 %420
  %425 = load ptr, ptr %424, align 8, !tbaa !6
  %426 = load ptr, ptr %413, align 8, !tbaa !6
  %427 = getelementptr inbounds ptr, ptr %426, i64 %420
  %428 = load ptr, ptr %427, align 8, !tbaa !6
  %429 = load ptr, ptr %414, align 8, !tbaa !6
  %430 = load ptr, ptr %415, align 8, !tbaa !6
  %431 = getelementptr inbounds ptr, ptr %430, i64 %420
  %432 = load ptr, ptr %431, align 8, !tbaa !6
  %433 = getelementptr inbounds i8, ptr %425, i64 4
  %434 = getelementptr inbounds i8, ptr %425, i64 8
  br label %435

435:                                              ; preds = %422, %435
  %436 = phi i64 [ 0, %422 ], [ %455, %435 ]
  %437 = getelementptr inbounds ptr, ptr %428, i64 %436
  %438 = load ptr, ptr %437, align 8, !tbaa !6
  %439 = getelementptr inbounds ptr, ptr %429, i64 %436
  %440 = load ptr, ptr %439, align 8, !tbaa !6
  %441 = getelementptr inbounds ptr, ptr %432, i64 %436
  %442 = load ptr, ptr %441, align 8, !tbaa !6
  %443 = load i32, ptr %425, align 4, !tbaa !21
  store i32 %443, ptr %438, align 4, !tbaa !21
  %444 = load i32, ptr %440, align 4, !tbaa !21
  store i32 %444, ptr %442, align 4, !tbaa !21
  %445 = load i32, ptr %433, align 4, !tbaa !21
  %446 = getelementptr inbounds i8, ptr %438, i64 4
  store i32 %445, ptr %446, align 4, !tbaa !21
  %447 = getelementptr inbounds i8, ptr %440, i64 4
  %448 = load i32, ptr %447, align 4, !tbaa !21
  %449 = getelementptr inbounds i8, ptr %442, i64 4
  store i32 %448, ptr %449, align 4, !tbaa !21
  %450 = load i32, ptr %434, align 4, !tbaa !21
  %451 = getelementptr inbounds i8, ptr %438, i64 8
  store i32 %450, ptr %451, align 4, !tbaa !21
  %452 = getelementptr inbounds i8, ptr %440, i64 8
  %453 = load i32, ptr %452, align 4, !tbaa !21
  %454 = getelementptr inbounds i8, ptr %442, i64 8
  store i32 %453, ptr %454, align 4, !tbaa !21
  %455 = add nuw nsw i64 %436, 1
  %456 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !21
  %457 = sext i32 %456 to i64
  %458 = icmp slt i64 %455, %457
  br i1 %458, label %435, label %459

459:                                              ; preds = %435
  %460 = load i32, ptr @listXsize, align 4, !tbaa !21
  br label %461

461:                                              ; preds = %459, %417
  %462 = phi i32 [ %460, %459 ], [ %418, %417 ]
  %463 = phi i32 [ %456, %459 ], [ %419, %417 ]
  %464 = add nuw nsw i64 %420, 1
  %465 = sext i32 %462 to i64
  %466 = icmp slt i64 %464, %465
  br i1 %466, label %417, label %467

467:                                              ; preds = %461, %261, %408
  %468 = icmp eq i32 %0, 0
  br i1 %468, label %469, label %516

469:                                              ; preds = %467
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %470 = load ptr, ptr @input, align 8, !tbaa !6
  %471 = getelementptr inbounds i8, ptr %470, i64 44
  %472 = load i32, ptr %471, align 4, !tbaa !40
  %473 = icmp eq i32 %472, 0
  %474 = load i32, ptr @listXsize, align 4
  %475 = tail call i32 @llvm.smin.i32(i32 %472, i32 %474)
  %476 = select i1 %473, i32 %474, i32 %475
  store i32 %476, ptr %5, align 4, !tbaa !21
  %477 = getelementptr inbounds i8, ptr %470, i64 48
  %478 = load i32, ptr %477, align 8, !tbaa !41
  %479 = icmp eq i32 %478, 0
  %480 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4
  %481 = tail call i32 @llvm.smin.i32(i32 %472, i32 %480)
  %482 = select i1 %479, i32 %480, i32 %481
  %483 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 %482, ptr %483, align 4, !tbaa !21
  %484 = load ptr, ptr @wp_weight, align 8
  br label %485

485:                                              ; preds = %469, %511
  %486 = phi i64 [ 0, %469 ], [ %512, %511 ]
  %487 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %486
  %488 = load i32, ptr %487, align 4, !tbaa !21
  %489 = icmp sgt i32 %488, 0
  br i1 %489, label %490, label %511

490:                                              ; preds = %485
  %491 = getelementptr inbounds ptr, ptr %484, i64 %486
  %492 = load ptr, ptr %491, align 8, !tbaa !6
  %493 = zext nneg i32 %488 to i64
  br label %494

494:                                              ; preds = %490, %508
  %495 = phi i64 [ 0, %490 ], [ %509, %508 ]
  %496 = getelementptr inbounds ptr, ptr %492, i64 %495
  %497 = load ptr, ptr %496, align 8, !tbaa !6
  %498 = load i32, ptr %497, align 4, !tbaa !21
  %499 = icmp eq i32 %498, %29
  br i1 %499, label %500, label %514

500:                                              ; preds = %494
  %501 = getelementptr inbounds i8, ptr %497, i64 4
  %502 = load i32, ptr %501, align 4, !tbaa !21
  %503 = icmp eq i32 %502, %29
  br i1 %503, label %504, label %514

504:                                              ; preds = %500
  %505 = getelementptr inbounds i8, ptr %497, i64 8
  %506 = load i32, ptr %505, align 4, !tbaa !21
  %507 = icmp eq i32 %506, %29
  br i1 %507, label %508, label %514

508:                                              ; preds = %504
  %509 = add nuw nsw i64 %495, 1
  %510 = icmp eq i64 %509, %493
  br i1 %510, label %511, label %494

511:                                              ; preds = %508, %485
  %512 = add nuw nsw i64 %486, 1
  %513 = icmp eq i64 %512, %24
  br i1 %513, label %514, label %485

514:                                              ; preds = %511, %494, %500, %504
  %515 = phi i32 [ 1, %504 ], [ 1, %500 ], [ 1, %494 ], [ 0, %511 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %516

516:                                              ; preds = %514, %467
  %517 = phi i32 [ %515, %514 ], [ 0, %467 ]
  call void @llvm.lifetime.end.p0(i64 73728, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %2) #6
  ret i32 %517
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 90220}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !13, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !14, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !14, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !15, i64 90584, !12, i64 90588, !12, i64 90592}
!12 = !{!"int", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!11, !7, i64 31576}
!17 = !{!11, !12, i64 12}
!18 = !{!19, !12, i64 424}
!19 = !{!"macroblock", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !12, i64 364, !20, i64 368, !8, i64 376, !8, i64 392, !20, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !15, i64 476, !14, i64 480, !12, i64 488, !12, i64 492, !12, i64 496, !12, i64 500, !12, i64 504, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520}
!20 = !{!"long long", !8, i64 0}
!21 = !{!12, !12, i64 0}
!22 = !{!11, !12, i64 60}
!23 = !{!11, !12, i64 52}
!24 = !{!15, !15, i64 0}
!25 = !{!26, !7, i64 6432}
!26 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!27 = !{!26, !7, i64 6440}
!28 = !{!11, !12, i64 90532}
!29 = !{!26, !7, i64 6448}
!30 = !{!26, !7, i64 6456}
!31 = !{!32, !12, i64 196}
!32 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232}
!33 = !{!26, !12, i64 4}
!34 = !{!35, !12, i64 1928}
!35 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !14, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!36 = !{!37, !12, i64 4}
!37 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !8, i64 108, !12, i64 1132, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !12, i64 1164, !12, i64 1168, !12, i64 1172, !12, i64 1176, !12, i64 1180, !38, i64 1184}
!38 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !39, i64 84, !12, i64 496, !39, i64 500, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!39 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!40 = !{!35, !12, i64 44}
!41 = !{!35, !12, i64 48}
