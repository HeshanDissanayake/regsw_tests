; ModuleID = 'jidctfst.c'
source_filename = "jidctfst.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @jpeg_idct_ifast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i32], align 4
  %7 = getelementptr inbounds i8, ptr %0, i64 424
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #2
  %9 = getelementptr inbounds i8, ptr %1, i64 88
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  br label %14

11:                                               ; preds = %156
  %12 = getelementptr inbounds i8, ptr %8, i64 128
  %13 = zext i32 %4 to i64
  br label %165

14:                                               ; preds = %5, %156
  %15 = phi i32 [ 8, %5 ], [ %163, %156 ]
  %16 = phi ptr [ %6, %5 ], [ %160, %156 ]
  %17 = phi ptr [ %10, %5 ], [ %161, %156 ]
  %18 = phi ptr [ %2, %5 ], [ %162, %156 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 16
  %20 = load i16, ptr %19, align 2, !tbaa !16
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds i8, ptr %18, i64 32
  %23 = load i16, ptr %22, align 2, !tbaa !16
  %24 = icmp eq i16 %23, 0
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %26, label %57

26:                                               ; preds = %14
  %27 = getelementptr inbounds i8, ptr %18, i64 48
  %28 = load i16, ptr %27, align 2, !tbaa !16
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %18, i64 64
  %32 = load i16, ptr %31, align 2, !tbaa !16
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %18, i64 80
  %36 = load i16, ptr %35, align 2, !tbaa !16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %18, i64 96
  %40 = load i16, ptr %39, align 2, !tbaa !16
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %18, i64 112
  %44 = load i16, ptr %43, align 2, !tbaa !16
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i16, ptr %18, align 2, !tbaa !16
  %48 = sext i16 %47 to i32
  %49 = load i32, ptr %17, align 4, !tbaa !17
  %50 = mul nsw i32 %49, %48
  store i32 %50, ptr %16, align 4, !tbaa !17
  %51 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 %50, ptr %51, align 4, !tbaa !17
  %52 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 %50, ptr %52, align 4, !tbaa !17
  %53 = getelementptr inbounds i8, ptr %16, i64 96
  store i32 %50, ptr %53, align 4, !tbaa !17
  %54 = getelementptr inbounds i8, ptr %16, i64 128
  store i32 %50, ptr %54, align 4, !tbaa !17
  %55 = getelementptr inbounds i8, ptr %16, i64 160
  store i32 %50, ptr %55, align 4, !tbaa !17
  %56 = getelementptr inbounds i8, ptr %16, i64 192
  store i32 %50, ptr %56, align 4, !tbaa !17
  br label %156

57:                                               ; preds = %14, %42, %38, %34, %30, %26
  %58 = phi i16 [ 0, %42 ], [ 0, %38 ], [ 0, %34 ], [ 0, %30 ], [ 0, %26 ], [ %23, %14 ]
  %59 = load i16, ptr %18, align 2, !tbaa !16
  %60 = sext i16 %59 to i32
  %61 = load i32, ptr %17, align 4, !tbaa !17
  %62 = mul nsw i32 %61, %60
  %63 = sext i16 %58 to i32
  %64 = getelementptr inbounds i8, ptr %17, i64 64
  %65 = load i32, ptr %64, align 4, !tbaa !17
  %66 = mul nsw i32 %65, %63
  %67 = getelementptr inbounds i8, ptr %18, i64 64
  %68 = load i16, ptr %67, align 2, !tbaa !16
  %69 = sext i16 %68 to i32
  %70 = getelementptr inbounds i8, ptr %17, i64 128
  %71 = load i32, ptr %70, align 4, !tbaa !17
  %72 = mul nsw i32 %71, %69
  %73 = getelementptr inbounds i8, ptr %18, i64 96
  %74 = load i16, ptr %73, align 2, !tbaa !16
  %75 = sext i16 %74 to i32
  %76 = getelementptr inbounds i8, ptr %17, i64 192
  %77 = load i32, ptr %76, align 4, !tbaa !17
  %78 = mul nsw i32 %77, %75
  %79 = add nsw i32 %72, %62
  %80 = sub nsw i32 %62, %72
  %81 = add nsw i32 %78, %66
  %82 = sub nsw i32 %66, %78
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, 362
  %85 = lshr i64 %84, 8
  %86 = trunc i64 %85 to i32
  %87 = sub nsw i32 %86, %81
  %88 = add nsw i32 %81, %79
  %89 = sub nsw i32 %79, %81
  %90 = add nsw i32 %87, %80
  %91 = sub nsw i32 %80, %87
  %92 = sext i16 %20 to i32
  %93 = getelementptr inbounds i8, ptr %17, i64 32
  %94 = load i32, ptr %93, align 4, !tbaa !17
  %95 = mul nsw i32 %94, %92
  %96 = getelementptr inbounds i8, ptr %18, i64 48
  %97 = load i16, ptr %96, align 2, !tbaa !16
  %98 = sext i16 %97 to i32
  %99 = getelementptr inbounds i8, ptr %17, i64 96
  %100 = load i32, ptr %99, align 4, !tbaa !17
  %101 = mul nsw i32 %100, %98
  %102 = getelementptr inbounds i8, ptr %18, i64 80
  %103 = load i16, ptr %102, align 2, !tbaa !16
  %104 = sext i16 %103 to i32
  %105 = getelementptr inbounds i8, ptr %17, i64 160
  %106 = load i32, ptr %105, align 4, !tbaa !17
  %107 = mul nsw i32 %106, %104
  %108 = getelementptr inbounds i8, ptr %18, i64 112
  %109 = load i16, ptr %108, align 2, !tbaa !16
  %110 = sext i16 %109 to i32
  %111 = getelementptr inbounds i8, ptr %17, i64 224
  %112 = load i32, ptr %111, align 4, !tbaa !17
  %113 = mul nsw i32 %112, %110
  %114 = add nsw i32 %107, %101
  %115 = sub nsw i32 %107, %101
  %116 = add nsw i32 %113, %95
  %117 = sub nsw i32 %95, %113
  %118 = add nsw i32 %116, %114
  %119 = sub nsw i32 %116, %114
  %120 = sext i32 %119 to i64
  %121 = mul nsw i64 %120, 362
  %122 = lshr i64 %121, 8
  %123 = trunc i64 %122 to i32
  %124 = add nsw i32 %117, %115
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, 473
  %127 = lshr i64 %126, 8
  %128 = trunc i64 %127 to i32
  %129 = sext i32 %117 to i64
  %130 = mul nsw i64 %129, 277
  %131 = lshr i64 %130, 8
  %132 = trunc i64 %131 to i32
  %133 = sub nsw i32 %132, %128
  %134 = sext i32 %115 to i64
  %135 = mul i64 %134, 1099511627107
  %136 = lshr i64 %135, 8
  %137 = trunc i64 %136 to i32
  %138 = sub i32 %137, %118
  %139 = add i32 %138, %128
  %140 = sub nsw i32 %123, %139
  %141 = add nsw i32 %140, %133
  %142 = add nsw i32 %118, %88
  store i32 %142, ptr %16, align 4, !tbaa !17
  %143 = sub nsw i32 %88, %118
  %144 = getelementptr inbounds i8, ptr %16, i64 224
  store i32 %143, ptr %144, align 4, !tbaa !17
  %145 = add nsw i32 %139, %90
  %146 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 %145, ptr %146, align 4, !tbaa !17
  %147 = sub nsw i32 %90, %139
  %148 = getelementptr inbounds i8, ptr %16, i64 192
  store i32 %147, ptr %148, align 4, !tbaa !17
  %149 = add nsw i32 %140, %91
  %150 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 %149, ptr %150, align 4, !tbaa !17
  %151 = sub nsw i32 %91, %140
  %152 = getelementptr inbounds i8, ptr %16, i64 160
  store i32 %151, ptr %152, align 4, !tbaa !17
  %153 = add nsw i32 %141, %89
  %154 = getelementptr inbounds i8, ptr %16, i64 128
  store i32 %153, ptr %154, align 4, !tbaa !17
  %155 = sub nsw i32 %89, %141
  br label %156

156:                                              ; preds = %57, %46
  %157 = phi i64 [ 96, %57 ], [ 224, %46 ]
  %158 = phi i32 [ %155, %57 ], [ %50, %46 ]
  %159 = getelementptr inbounds i8, ptr %16, i64 %157
  store i32 %158, ptr %159, align 4, !tbaa !17
  %160 = getelementptr inbounds i8, ptr %16, i64 4
  %161 = getelementptr inbounds i8, ptr %17, i64 4
  %162 = getelementptr inbounds i8, ptr %18, i64 2
  %163 = add nsw i32 %15, -1
  %164 = icmp ugt i32 %15, 1
  br i1 %164, label %14, label %11

165:                                              ; preds = %11, %319
  %166 = phi i64 [ 0, %11 ], [ %324, %319 ]
  %167 = phi ptr [ %6, %11 ], [ %323, %319 ]
  %168 = getelementptr inbounds ptr, ptr %3, i64 %166
  %169 = load ptr, ptr %168, align 8, !tbaa !18
  %170 = getelementptr inbounds i8, ptr %169, i64 %13
  %171 = getelementptr inbounds i8, ptr %167, i64 4
  %172 = load i32, ptr %171, align 4, !tbaa !17
  %173 = icmp eq i32 %172, 0
  %174 = getelementptr inbounds i8, ptr %167, i64 8
  %175 = load i32, ptr %174, align 4, !tbaa !17
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %173, i1 %176, i1 false
  br i1 %177, label %178, label %211

178:                                              ; preds = %165
  %179 = getelementptr inbounds i8, ptr %167, i64 12
  %180 = load i32, ptr %179, align 4, !tbaa !17
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %178
  %183 = getelementptr inbounds i8, ptr %167, i64 16
  %184 = load i32, ptr %183, align 4, !tbaa !17
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %211

186:                                              ; preds = %182
  %187 = getelementptr inbounds i8, ptr %167, i64 20
  %188 = load i32, ptr %187, align 4, !tbaa !17
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %186
  %191 = getelementptr inbounds i8, ptr %167, i64 24
  %192 = load i32, ptr %191, align 4, !tbaa !17
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %190
  %195 = getelementptr inbounds i8, ptr %167, i64 28
  %196 = load i32, ptr %195, align 4, !tbaa !17
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  %199 = load i32, ptr %167, align 4, !tbaa !17
  %200 = lshr i32 %199, 5
  %201 = and i32 %200, 1023
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr %12, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !19
  store i8 %204, ptr %170, align 1, !tbaa !19
  %205 = getelementptr inbounds i8, ptr %170, i64 1
  store i8 %204, ptr %205, align 1, !tbaa !19
  %206 = getelementptr inbounds i8, ptr %170, i64 2
  store i8 %204, ptr %206, align 1, !tbaa !19
  %207 = getelementptr inbounds i8, ptr %170, i64 3
  store i8 %204, ptr %207, align 1, !tbaa !19
  %208 = getelementptr inbounds i8, ptr %170, i64 4
  store i8 %204, ptr %208, align 1, !tbaa !19
  %209 = getelementptr inbounds i8, ptr %170, i64 5
  store i8 %204, ptr %209, align 1, !tbaa !19
  %210 = getelementptr inbounds i8, ptr %170, i64 6
  store i8 %204, ptr %210, align 1, !tbaa !19
  br label %319

211:                                              ; preds = %165, %194, %190, %186, %182, %178
  %212 = phi i32 [ 0, %194 ], [ 0, %190 ], [ 0, %186 ], [ 0, %182 ], [ 0, %178 ], [ %175, %165 ]
  %213 = load i32, ptr %167, align 4, !tbaa !17
  %214 = getelementptr inbounds i8, ptr %167, i64 16
  %215 = load i32, ptr %214, align 4, !tbaa !17
  %216 = add nsw i32 %215, %213
  %217 = sub nsw i32 %213, %215
  %218 = getelementptr inbounds i8, ptr %167, i64 24
  %219 = load i32, ptr %218, align 4, !tbaa !17
  %220 = add nsw i32 %219, %212
  %221 = sub nsw i32 %212, %219
  %222 = zext i32 %221 to i64
  %223 = mul nuw nsw i64 %222, 362
  %224 = lshr i64 %223, 8
  %225 = trunc i64 %224 to i32
  %226 = sub i32 %225, %220
  %227 = add nsw i32 %220, %216
  %228 = sub nsw i32 %216, %220
  %229 = add i32 %226, %217
  %230 = sub i32 %217, %226
  %231 = getelementptr inbounds i8, ptr %167, i64 20
  %232 = load i32, ptr %231, align 4, !tbaa !17
  %233 = getelementptr inbounds i8, ptr %167, i64 12
  %234 = load i32, ptr %233, align 4, !tbaa !17
  %235 = add nsw i32 %234, %232
  %236 = sub nsw i32 %232, %234
  %237 = getelementptr inbounds i8, ptr %167, i64 28
  %238 = load i32, ptr %237, align 4, !tbaa !17
  %239 = add nsw i32 %238, %172
  %240 = sub nsw i32 %172, %238
  %241 = add nsw i32 %239, %235
  %242 = sub nsw i32 %239, %235
  %243 = zext i32 %242 to i64
  %244 = mul nuw nsw i64 %243, 362
  %245 = lshr i64 %244, 8
  %246 = trunc i64 %245 to i32
  %247 = add nsw i32 %240, %236
  %248 = zext i32 %247 to i64
  %249 = mul nuw nsw i64 %248, 473
  %250 = lshr i64 %249, 8
  %251 = trunc i64 %250 to i32
  %252 = zext i32 %240 to i64
  %253 = mul nuw nsw i64 %252, 277
  %254 = lshr i64 %253, 8
  %255 = trunc i64 %254 to i32
  %256 = sub i32 %255, %251
  %257 = zext i32 %236 to i64
  %258 = mul i64 %257, 1099511627107
  %259 = lshr i64 %258, 8
  %260 = trunc i64 %259 to i32
  %261 = sub i32 %260, %241
  %262 = add i32 %261, %251
  %263 = sub i32 %246, %262
  %264 = add i32 %263, %256
  %265 = add nsw i32 %241, %227
  %266 = lshr i32 %265, 5
  %267 = and i32 %266, 1023
  %268 = zext nneg i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %12, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !19
  store i8 %270, ptr %170, align 1, !tbaa !19
  %271 = sub nsw i32 %227, %241
  %272 = lshr i32 %271, 5
  %273 = and i32 %272, 1023
  %274 = zext nneg i32 %273 to i64
  %275 = getelementptr inbounds i8, ptr %12, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !19
  %277 = getelementptr inbounds i8, ptr %170, i64 7
  store i8 %276, ptr %277, align 1, !tbaa !19
  %278 = add i32 %262, %229
  %279 = lshr i32 %278, 5
  %280 = and i32 %279, 1023
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds i8, ptr %12, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !19
  %284 = getelementptr inbounds i8, ptr %170, i64 1
  store i8 %283, ptr %284, align 1, !tbaa !19
  %285 = sub i32 %229, %262
  %286 = lshr i32 %285, 5
  %287 = and i32 %286, 1023
  %288 = zext nneg i32 %287 to i64
  %289 = getelementptr inbounds i8, ptr %12, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !19
  %291 = getelementptr inbounds i8, ptr %170, i64 6
  store i8 %290, ptr %291, align 1, !tbaa !19
  %292 = add i32 %263, %230
  %293 = lshr i32 %292, 5
  %294 = and i32 %293, 1023
  %295 = zext nneg i32 %294 to i64
  %296 = getelementptr inbounds i8, ptr %12, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !19
  %298 = getelementptr inbounds i8, ptr %170, i64 2
  store i8 %297, ptr %298, align 1, !tbaa !19
  %299 = sub i32 %230, %263
  %300 = lshr i32 %299, 5
  %301 = and i32 %300, 1023
  %302 = zext nneg i32 %301 to i64
  %303 = getelementptr inbounds i8, ptr %12, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !19
  %305 = getelementptr inbounds i8, ptr %170, i64 5
  store i8 %304, ptr %305, align 1, !tbaa !19
  %306 = add i32 %264, %228
  %307 = lshr i32 %306, 5
  %308 = and i32 %307, 1023
  %309 = zext nneg i32 %308 to i64
  %310 = getelementptr inbounds i8, ptr %12, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !19
  %312 = getelementptr inbounds i8, ptr %170, i64 4
  store i8 %311, ptr %312, align 1, !tbaa !19
  %313 = sub i32 %228, %264
  %314 = lshr i32 %313, 5
  %315 = and i32 %314, 1023
  %316 = zext nneg i32 %315 to i64
  %317 = getelementptr inbounds i8, ptr %12, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !19
  br label %319

319:                                              ; preds = %211, %198
  %320 = phi i64 [ 3, %211 ], [ 7, %198 ]
  %321 = phi i8 [ %318, %211 ], [ %204, %198 ]
  %322 = getelementptr inbounds i8, ptr %170, i64 %320
  store i8 %321, ptr %322, align 1, !tbaa !19
  %323 = getelementptr inbounds i8, ptr %167, i64 32
  %324 = add nuw nsw i64 %166, 1
  %325 = icmp eq i64 %324, 8
  br i1 %325, label %326, label %165

326:                                              ; preds = %319
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 424}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 88}
!15 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!16 = !{!13, !13, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!9, !9, i64 0}
