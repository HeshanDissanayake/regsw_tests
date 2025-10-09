; ModuleID = 'recon.c'
source_filename = "recon.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@coded_picture_width = external dso_local local_unnamed_addr global i32, align 4
@mv_outside_frame = external dso_local local_unnamed_addr global i32, align 4
@edgeframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@oldrefframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@modemap = external dso_local local_unnamed_addr global [73 x [90 x i32]], align 4
@adv_pred_mode = external dso_local local_unnamed_addr global i32, align 4
@newframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@MV = external dso_local local_unnamed_addr global [2 x [5 x [73 x [90 x i32]]]], align 4
@roundtab = external dso_local local_unnamed_addr global [16 x i32], align 4
@trb = external dso_local local_unnamed_addr global i32, align 4
@trd = external dso_local local_unnamed_addr global i32, align 4
@bframe = external dso_local local_unnamed_addr global [3 x ptr], align 8
@pb_frame = external dso_local local_unnamed_addr global i32, align 4
@mb_width = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [51 x i8] c"Illegal block number in recon_comp_obmc (recon.c)\0A\00", align 1
@OM = external dso_local local_unnamed_addr global [5 x [8 x [8 x i32]]], align 4

; Function Attrs: nounwind
define dso_local void @reconstruct(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i32], align 4
  %7 = sdiv i32 %0, 16
  %8 = add nsw i32 %7, 1
  %9 = sdiv i32 %1, 16
  %10 = add nsw i32 %9, 1
  %11 = load i32, ptr @coded_picture_width, align 4, !tbaa !6
  %12 = load i32, ptr @mv_outside_frame, align 4, !tbaa !6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = add nsw i32 %11, 64
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i32 [ %15, %14 ], [ %11, %5 ]
  %18 = phi ptr [ getelementptr inbounds (i8, ptr @edgeframe, i64 16), %14 ], [ getelementptr inbounds (i8, ptr @oldrefframe, i64 16), %5 ]
  %19 = phi ptr [ getelementptr inbounds (i8, ptr @edgeframe, i64 8), %14 ], [ getelementptr inbounds (i8, ptr @oldrefframe, i64 8), %5 ]
  %20 = phi ptr [ @edgeframe, %14 ], [ @oldrefframe, %5 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = load ptr, ptr %19, align 8, !tbaa !10
  %23 = load ptr, ptr %18, align 8, !tbaa !10
  %24 = sext i32 %10 to i64
  %25 = sext i32 %8 to i64
  %26 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %24, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !6
  %28 = icmp eq i32 %2, 0
  %29 = load i32, ptr @adv_pred_mode, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %28, label %3527, label %31

31:                                               ; preds = %16
  br i1 %30, label %3505, label %32

32:                                               ; preds = %31
  %33 = sext i32 %17 to i64
  %34 = getelementptr inbounds i8, ptr %6, i64 4
  %35 = getelementptr inbounds i8, ptr %6, i64 8
  %36 = getelementptr inbounds i8, ptr %6, i64 12
  %37 = getelementptr inbounds i8, ptr %6, i64 16
  %38 = getelementptr inbounds i8, ptr %6, i64 20
  %39 = getelementptr inbounds i8, ptr %6, i64 24
  %40 = getelementptr inbounds i8, ptr %6, i64 28
  %41 = getelementptr inbounds i8, ptr %6, i64 32
  %42 = getelementptr inbounds i8, ptr %6, i64 36
  %43 = getelementptr inbounds i8, ptr %6, i64 40
  %44 = getelementptr inbounds i8, ptr %6, i64 44
  %45 = getelementptr inbounds i8, ptr %6, i64 48
  %46 = getelementptr inbounds i8, ptr %6, i64 52
  %47 = getelementptr inbounds i8, ptr %6, i64 56
  %48 = getelementptr inbounds i8, ptr %6, i64 60
  %49 = getelementptr inbounds i8, ptr %6, i64 64
  %50 = getelementptr inbounds i8, ptr %6, i64 68
  %51 = getelementptr inbounds i8, ptr %6, i64 72
  %52 = getelementptr inbounds i8, ptr %6, i64 76
  %53 = getelementptr inbounds i8, ptr %6, i64 80
  %54 = getelementptr inbounds i8, ptr %6, i64 84
  %55 = getelementptr inbounds i8, ptr %6, i64 88
  %56 = getelementptr inbounds i8, ptr %6, i64 92
  %57 = getelementptr inbounds i8, ptr %6, i64 96
  %58 = getelementptr inbounds i8, ptr %6, i64 100
  %59 = getelementptr inbounds i8, ptr %6, i64 104
  %60 = getelementptr inbounds i8, ptr %6, i64 108
  %61 = getelementptr inbounds i8, ptr %6, i64 112
  %62 = getelementptr inbounds i8, ptr %6, i64 116
  %63 = getelementptr inbounds i8, ptr %6, i64 120
  %64 = getelementptr inbounds i8, ptr %6, i64 124
  %65 = getelementptr inbounds i8, ptr %6, i64 128
  %66 = getelementptr inbounds i8, ptr %6, i64 132
  %67 = getelementptr inbounds i8, ptr %6, i64 136
  %68 = getelementptr inbounds i8, ptr %6, i64 140
  %69 = getelementptr inbounds i8, ptr %6, i64 144
  %70 = getelementptr inbounds i8, ptr %6, i64 148
  %71 = getelementptr inbounds i8, ptr %6, i64 152
  %72 = getelementptr inbounds i8, ptr %6, i64 156
  %73 = getelementptr inbounds i8, ptr %6, i64 160
  %74 = getelementptr inbounds i8, ptr %6, i64 164
  %75 = getelementptr inbounds i8, ptr %6, i64 168
  %76 = getelementptr inbounds i8, ptr %6, i64 172
  %77 = getelementptr inbounds i8, ptr %6, i64 176
  %78 = getelementptr inbounds i8, ptr %6, i64 180
  %79 = getelementptr inbounds i8, ptr %6, i64 184
  %80 = getelementptr inbounds i8, ptr %6, i64 188
  %81 = getelementptr inbounds i8, ptr %6, i64 192
  %82 = getelementptr inbounds i8, ptr %6, i64 196
  %83 = getelementptr inbounds i8, ptr %6, i64 200
  %84 = getelementptr inbounds i8, ptr %6, i64 204
  %85 = getelementptr inbounds i8, ptr %6, i64 208
  %86 = getelementptr inbounds i8, ptr %6, i64 212
  %87 = getelementptr inbounds i8, ptr %6, i64 216
  %88 = getelementptr inbounds i8, ptr %6, i64 220
  %89 = getelementptr inbounds i8, ptr %6, i64 224
  %90 = getelementptr inbounds i8, ptr %6, i64 228
  %91 = getelementptr inbounds i8, ptr %6, i64 232
  %92 = getelementptr inbounds i8, ptr %6, i64 236
  %93 = getelementptr inbounds i8, ptr %6, i64 240
  %94 = getelementptr inbounds i8, ptr %6, i64 244
  %95 = getelementptr inbounds i8, ptr %6, i64 248
  %96 = getelementptr inbounds i8, ptr %6, i64 252
  %97 = shl i32 %17, 2
  %98 = sext i32 %97 to i64
  %99 = sext i32 %11 to i64
  br label %100

100:                                              ; preds = %32, %3109
  %101 = phi i32 [ 0, %32 ], [ %143, %3109 ]
  %102 = shl nuw nsw i32 %101, 3
  %103 = and i32 %102, 8
  %104 = add nsw i32 %103, %0
  %105 = shl nuw nsw i32 %101, 2
  %106 = and i32 %105, 8
  %107 = add nsw i32 %106, %1
  %108 = load ptr, ptr @newframe, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #6
  %109 = ashr i32 %104, 4
  %110 = add nsw i32 %109, 1
  %111 = ashr i32 %107, 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = sext i32 %110 to i64
  %115 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %113, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !6
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i32
  %119 = sext i32 %111 to i64
  %120 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %119, i64 %114
  %121 = load i32, ptr %120, align 4, !tbaa !6
  %122 = icmp eq i32 %121, 2
  %123 = add i32 %121, -3
  %124 = icmp ult i32 %123, 2
  %125 = sext i32 %109 to i64
  %126 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %113, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !6
  %128 = icmp eq i32 %127, 2
  %129 = add i32 %127, -3
  %130 = icmp ult i32 %129, 2
  %131 = add nsw i32 %109, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [73 x [90 x i32]], ptr @modemap, i64 0, i64 %113, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !6
  %135 = icmp eq i32 %134, 2
  %136 = add i32 %134, -3
  %137 = icmp ult i32 %136, 2
  %138 = load i32, ptr @pb_frame, align 4, !tbaa !6
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i1 %124, i1 false
  %141 = select i1 %139, i1 %130, i1 false
  %142 = select i1 %139, i1 %137, i1 false
  %143 = add nuw nsw i32 %101, 1
  switch i32 %101, label %191 [
    i32 0, label %144
    i32 1, label %158
    i32 2, label %173
    i32 3, label %181
  ]

144:                                              ; preds = %100
  %145 = select i1 %122, i32 3, i32 0
  %146 = select i1 %140, i32 %112, i32 %111
  %147 = select i1 %117, i32 3, i32 0
  %148 = select i1 %128, i32 2, i32 0
  %149 = select i1 %141, i32 %110, i32 %109
  %150 = select i1 %141, i32 %118, i32 %148
  %151 = select i1 %117, i32 2, i32 0
  %152 = icmp ult i32 %107, 16
  %153 = select i1 %152, i32 1, i32 %146
  %154 = select i1 %152, i1 true, i1 %140
  %155 = select i1 %154, i32 %118, i32 %145
  %156 = icmp ult i32 %104, 16
  br i1 %156, label %157, label %194

157:                                              ; preds = %144
  br label %194

158:                                              ; preds = %100
  %159 = zext i1 %135 to i32
  %160 = select i1 %117, i32 2, i32 0
  %161 = select i1 %122, i32 4, i32 0
  %162 = select i1 %140, i32 %112, i32 %111
  %163 = select i1 %117, i32 4, i32 0
  %164 = icmp ult i32 %107, 16
  %165 = select i1 %164, i32 1, i32 %162
  %166 = select i1 %164, i1 true, i1 %140
  %167 = select i1 %166, i32 %160, i32 %161
  %168 = load i32, ptr @mb_width, align 4, !tbaa !6
  %169 = icmp eq i32 %110, %168
  %170 = select i1 %169, i1 true, i1 %142
  %171 = select i1 %170, i32 %110, i32 %131
  %172 = select i1 %170, i32 %160, i32 %159
  br label %194

173:                                              ; preds = %100
  %174 = select i1 %117, i32 3, i32 0
  %175 = select i1 %128, i32 4, i32 0
  %176 = select i1 %141, i32 %110, i32 %109
  %177 = select i1 %141, i32 %174, i32 %175
  %178 = select i1 %117, i32 4, i32 0
  %179 = icmp ult i32 %104, 16
  br i1 %179, label %180, label %194

180:                                              ; preds = %173
  br label %194

181:                                              ; preds = %100
  %182 = select i1 %117, i32 2, i32 0
  %183 = select i1 %117, i32 4, i32 0
  %184 = select i1 %117, i32 3, i32 0
  %185 = select i1 %135, i32 3, i32 0
  %186 = load i32, ptr @mb_width, align 4, !tbaa !6
  %187 = icmp eq i32 %110, %186
  %188 = select i1 %187, i1 true, i1 %142
  %189 = select i1 %188, i32 %110, i32 %131
  %190 = select i1 %188, i32 %183, i32 %185
  br label %194

191:                                              ; preds = %100
  %192 = load ptr, ptr @stderr, align 8, !tbaa !10
  %193 = tail call i64 @fwrite(ptr nonnull @.str, i64 50, i64 1, ptr %192) #7
  tail call void @exit(i32 noundef signext 1) #8
  unreachable

194:                                              ; preds = %181, %180, %173, %158, %157, %144
  %195 = phi i32 [ 1, %180 ], [ %110, %173 ], [ 1, %157 ], [ %110, %144 ], [ %171, %158 ], [ %189, %181 ]
  %196 = phi i32 [ 1, %180 ], [ %176, %173 ], [ 1, %157 ], [ %149, %144 ], [ %110, %158 ], [ %110, %181 ]
  %197 = phi i32 [ %112, %180 ], [ %112, %173 ], [ %153, %157 ], [ %153, %144 ], [ %165, %158 ], [ %112, %181 ]
  %198 = phi i32 [ %118, %180 ], [ %118, %173 ], [ %155, %157 ], [ %155, %144 ], [ %167, %158 ], [ %182, %181 ]
  %199 = phi i32 [ %174, %180 ], [ %174, %173 ], [ %147, %157 ], [ %147, %144 ], [ %163, %158 ], [ %183, %181 ]
  %200 = phi i32 [ %178, %180 ], [ %178, %173 ], [ %151, %157 ], [ %151, %144 ], [ %172, %158 ], [ %190, %181 ]
  %201 = phi i32 [ %174, %180 ], [ %177, %173 ], [ %118, %157 ], [ %150, %144 ], [ %118, %158 ], [ %184, %181 ]
  %202 = select i1 %117, i32 %143, i32 0
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 %203, i64 %113, i64 %114
  %205 = load i32, ptr %204, align 4, !tbaa !6
  %206 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %203, i64 %113, i64 %114
  %207 = load i32, ptr %206, align 4, !tbaa !6
  %208 = zext nneg i32 %198 to i64
  %209 = sext i32 %197 to i64
  %210 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 %208, i64 %209, i64 %114
  %211 = load i32, ptr %210, align 4, !tbaa !6
  %212 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %208, i64 %209, i64 %114
  %213 = load i32, ptr %212, align 4, !tbaa !6
  %214 = zext nneg i32 %199 to i64
  %215 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 %214, i64 %113, i64 %114
  %216 = load i32, ptr %215, align 4, !tbaa !6
  %217 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %214, i64 %113, i64 %114
  %218 = load i32, ptr %217, align 4, !tbaa !6
  %219 = zext nneg i32 %200 to i64
  %220 = sext i32 %195 to i64
  %221 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 %219, i64 %113, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !6
  %223 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %219, i64 %113, i64 %220
  %224 = load i32, ptr %223, align 4, !tbaa !6
  %225 = zext nneg i32 %201 to i64
  %226 = sext i32 %196 to i64
  %227 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 %225, i64 %113, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !6
  %229 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %225, i64 %113, i64 %226
  %230 = load i32, ptr %229, align 4, !tbaa !6
  %231 = sext i32 %104 to i64
  %232 = getelementptr i8, ptr %21, i64 %231
  %233 = ashr i32 %205, 1
  %234 = and i32 %205, 1
  %235 = ashr i32 %207, 1
  %236 = and i32 %207, 1
  %237 = add nsw i32 %235, %107
  %238 = mul nsw i32 %237, %17
  %239 = sext i32 %238 to i64
  %240 = getelementptr i8, ptr %232, i64 %239
  %241 = sext i32 %233 to i64
  %242 = getelementptr inbounds i8, ptr %240, i64 %241
  %243 = ashr i32 %211, 1
  %244 = and i32 %211, 1
  %245 = ashr i32 %213, 1
  %246 = and i32 %213, 1
  %247 = add nsw i32 %245, %107
  %248 = mul nsw i32 %247, %17
  %249 = sext i32 %248 to i64
  %250 = getelementptr i8, ptr %232, i64 %249
  %251 = sext i32 %243 to i64
  %252 = getelementptr inbounds i8, ptr %250, i64 %251
  %253 = ashr i32 %216, 1
  %254 = and i32 %216, 1
  %255 = ashr i32 %218, 1
  %256 = and i32 %218, 1
  %257 = add nsw i32 %255, %107
  %258 = mul nsw i32 %257, %17
  %259 = sext i32 %258 to i64
  %260 = getelementptr i8, ptr %232, i64 %259
  %261 = sext i32 %253 to i64
  %262 = getelementptr inbounds i8, ptr %260, i64 %261
  %263 = ashr i32 %222, 1
  %264 = and i32 %222, 1
  %265 = ashr i32 %224, 1
  %266 = and i32 %224, 1
  %267 = add nsw i32 %265, %107
  %268 = mul nsw i32 %267, %17
  %269 = sext i32 %268 to i64
  %270 = getelementptr i8, ptr %232, i64 %269
  %271 = sext i32 %263 to i64
  %272 = getelementptr inbounds i8, ptr %270, i64 %271
  %273 = ashr i32 %228, 1
  %274 = and i32 %228, 1
  %275 = ashr i32 %230, 1
  %276 = and i32 %230, 1
  %277 = add nsw i32 %275, %107
  %278 = mul nsw i32 %277, %17
  %279 = sext i32 %278 to i64
  %280 = getelementptr i8, ptr %232, i64 %279
  %281 = sext i32 %273 to i64
  %282 = getelementptr inbounds i8, ptr %280, i64 %281
  %283 = icmp ne i32 %234, 0
  %284 = icmp ne i32 %236, 0
  %285 = select i1 %283, i1 true, i1 %284
  br i1 %285, label %606, label %286

286:                                              ; preds = %194
  %287 = load i8, ptr %242, align 1, !tbaa !12
  %288 = zext i8 %287 to i32
  %289 = load i32, ptr @OM, align 4, !tbaa !6
  %290 = mul nsw i32 %289, %288
  store i32 %290, ptr %6, align 4, !tbaa !6
  %291 = getelementptr inbounds i8, ptr %242, i64 1
  %292 = load i8, ptr %291, align 1, !tbaa !12
  %293 = zext i8 %292 to i32
  %294 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 4), align 4, !tbaa !6
  %295 = mul nsw i32 %294, %293
  store i32 %295, ptr %34, align 4, !tbaa !6
  %296 = getelementptr inbounds i8, ptr %242, i64 2
  %297 = load i8, ptr %296, align 1, !tbaa !12
  %298 = zext i8 %297 to i32
  %299 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 8), align 4, !tbaa !6
  %300 = mul nsw i32 %299, %298
  store i32 %300, ptr %35, align 4, !tbaa !6
  %301 = getelementptr inbounds i8, ptr %242, i64 3
  %302 = load i8, ptr %301, align 1, !tbaa !12
  %303 = zext i8 %302 to i32
  %304 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 12), align 4, !tbaa !6
  %305 = mul nsw i32 %304, %303
  store i32 %305, ptr %36, align 4, !tbaa !6
  %306 = getelementptr inbounds i8, ptr %242, i64 4
  %307 = load i8, ptr %306, align 1, !tbaa !12
  %308 = zext i8 %307 to i32
  %309 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 16), align 4, !tbaa !6
  %310 = mul nsw i32 %309, %308
  store i32 %310, ptr %37, align 4, !tbaa !6
  %311 = getelementptr inbounds i8, ptr %242, i64 5
  %312 = load i8, ptr %311, align 1, !tbaa !12
  %313 = zext i8 %312 to i32
  %314 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 20), align 4, !tbaa !6
  %315 = mul nsw i32 %314, %313
  store i32 %315, ptr %38, align 4, !tbaa !6
  %316 = getelementptr inbounds i8, ptr %242, i64 6
  %317 = load i8, ptr %316, align 1, !tbaa !12
  %318 = zext i8 %317 to i32
  %319 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 24), align 4, !tbaa !6
  %320 = mul nsw i32 %319, %318
  store i32 %320, ptr %39, align 4, !tbaa !6
  %321 = getelementptr inbounds i8, ptr %242, i64 7
  %322 = load i8, ptr %321, align 1, !tbaa !12
  %323 = zext i8 %322 to i32
  %324 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 28), align 4, !tbaa !6
  %325 = mul nsw i32 %324, %323
  store i32 %325, ptr %40, align 4, !tbaa !6
  %326 = getelementptr inbounds i8, ptr %242, i64 %33
  %327 = load i8, ptr %326, align 1, !tbaa !12
  %328 = zext i8 %327 to i32
  %329 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 32), align 4, !tbaa !6
  %330 = mul nsw i32 %329, %328
  store i32 %330, ptr %41, align 4, !tbaa !6
  %331 = getelementptr inbounds i8, ptr %326, i64 1
  %332 = load i8, ptr %331, align 1, !tbaa !12
  %333 = zext i8 %332 to i32
  %334 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 36), align 4, !tbaa !6
  %335 = mul nsw i32 %334, %333
  store i32 %335, ptr %42, align 4, !tbaa !6
  %336 = getelementptr inbounds i8, ptr %326, i64 2
  %337 = load i8, ptr %336, align 1, !tbaa !12
  %338 = zext i8 %337 to i32
  %339 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 40), align 4, !tbaa !6
  %340 = mul nsw i32 %339, %338
  store i32 %340, ptr %43, align 4, !tbaa !6
  %341 = getelementptr inbounds i8, ptr %326, i64 3
  %342 = load i8, ptr %341, align 1, !tbaa !12
  %343 = zext i8 %342 to i32
  %344 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 44), align 4, !tbaa !6
  %345 = mul nsw i32 %344, %343
  store i32 %345, ptr %44, align 4, !tbaa !6
  %346 = getelementptr inbounds i8, ptr %326, i64 4
  %347 = load i8, ptr %346, align 1, !tbaa !12
  %348 = zext i8 %347 to i32
  %349 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 48), align 4, !tbaa !6
  %350 = mul nsw i32 %349, %348
  store i32 %350, ptr %45, align 4, !tbaa !6
  %351 = getelementptr inbounds i8, ptr %326, i64 5
  %352 = load i8, ptr %351, align 1, !tbaa !12
  %353 = zext i8 %352 to i32
  %354 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 52), align 4, !tbaa !6
  %355 = mul nsw i32 %354, %353
  store i32 %355, ptr %46, align 4, !tbaa !6
  %356 = getelementptr inbounds i8, ptr %326, i64 6
  %357 = load i8, ptr %356, align 1, !tbaa !12
  %358 = zext i8 %357 to i32
  %359 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 56), align 4, !tbaa !6
  %360 = mul nsw i32 %359, %358
  store i32 %360, ptr %47, align 4, !tbaa !6
  %361 = getelementptr inbounds i8, ptr %326, i64 7
  %362 = load i8, ptr %361, align 1, !tbaa !12
  %363 = zext i8 %362 to i32
  %364 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 60), align 4, !tbaa !6
  %365 = mul nsw i32 %364, %363
  store i32 %365, ptr %48, align 4, !tbaa !6
  %366 = getelementptr inbounds i8, ptr %326, i64 %33
  %367 = load i8, ptr %366, align 1, !tbaa !12
  %368 = zext i8 %367 to i32
  %369 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 64), align 4, !tbaa !6
  %370 = mul nsw i32 %369, %368
  store i32 %370, ptr %49, align 4, !tbaa !6
  %371 = getelementptr inbounds i8, ptr %366, i64 1
  %372 = load i8, ptr %371, align 1, !tbaa !12
  %373 = zext i8 %372 to i32
  %374 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 68), align 4, !tbaa !6
  %375 = mul nsw i32 %374, %373
  store i32 %375, ptr %50, align 4, !tbaa !6
  %376 = getelementptr inbounds i8, ptr %366, i64 2
  %377 = load i8, ptr %376, align 1, !tbaa !12
  %378 = zext i8 %377 to i32
  %379 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 72), align 4, !tbaa !6
  %380 = mul nsw i32 %379, %378
  store i32 %380, ptr %51, align 4, !tbaa !6
  %381 = getelementptr inbounds i8, ptr %366, i64 3
  %382 = load i8, ptr %381, align 1, !tbaa !12
  %383 = zext i8 %382 to i32
  %384 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 76), align 4, !tbaa !6
  %385 = mul nsw i32 %384, %383
  store i32 %385, ptr %52, align 4, !tbaa !6
  %386 = getelementptr inbounds i8, ptr %366, i64 4
  %387 = load i8, ptr %386, align 1, !tbaa !12
  %388 = zext i8 %387 to i32
  %389 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 80), align 4, !tbaa !6
  %390 = mul nsw i32 %389, %388
  store i32 %390, ptr %53, align 4, !tbaa !6
  %391 = getelementptr inbounds i8, ptr %366, i64 5
  %392 = load i8, ptr %391, align 1, !tbaa !12
  %393 = zext i8 %392 to i32
  %394 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 84), align 4, !tbaa !6
  %395 = mul nsw i32 %394, %393
  store i32 %395, ptr %54, align 4, !tbaa !6
  %396 = getelementptr inbounds i8, ptr %366, i64 6
  %397 = load i8, ptr %396, align 1, !tbaa !12
  %398 = zext i8 %397 to i32
  %399 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 88), align 4, !tbaa !6
  %400 = mul nsw i32 %399, %398
  store i32 %400, ptr %55, align 4, !tbaa !6
  %401 = getelementptr inbounds i8, ptr %366, i64 7
  %402 = load i8, ptr %401, align 1, !tbaa !12
  %403 = zext i8 %402 to i32
  %404 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 92), align 4, !tbaa !6
  %405 = mul nsw i32 %404, %403
  store i32 %405, ptr %56, align 4, !tbaa !6
  %406 = getelementptr inbounds i8, ptr %366, i64 %33
  %407 = load i8, ptr %406, align 1, !tbaa !12
  %408 = zext i8 %407 to i32
  %409 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 96), align 4, !tbaa !6
  %410 = mul nsw i32 %409, %408
  store i32 %410, ptr %57, align 4, !tbaa !6
  %411 = getelementptr inbounds i8, ptr %406, i64 1
  %412 = load i8, ptr %411, align 1, !tbaa !12
  %413 = zext i8 %412 to i32
  %414 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 100), align 4, !tbaa !6
  %415 = mul nsw i32 %414, %413
  store i32 %415, ptr %58, align 4, !tbaa !6
  %416 = getelementptr inbounds i8, ptr %406, i64 2
  %417 = load i8, ptr %416, align 1, !tbaa !12
  %418 = zext i8 %417 to i32
  %419 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 104), align 4, !tbaa !6
  %420 = mul nsw i32 %419, %418
  store i32 %420, ptr %59, align 4, !tbaa !6
  %421 = getelementptr inbounds i8, ptr %406, i64 3
  %422 = load i8, ptr %421, align 1, !tbaa !12
  %423 = zext i8 %422 to i32
  %424 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 108), align 4, !tbaa !6
  %425 = mul nsw i32 %424, %423
  store i32 %425, ptr %60, align 4, !tbaa !6
  %426 = getelementptr inbounds i8, ptr %406, i64 4
  %427 = load i8, ptr %426, align 1, !tbaa !12
  %428 = zext i8 %427 to i32
  %429 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 112), align 4, !tbaa !6
  %430 = mul nsw i32 %429, %428
  store i32 %430, ptr %61, align 4, !tbaa !6
  %431 = getelementptr inbounds i8, ptr %406, i64 5
  %432 = load i8, ptr %431, align 1, !tbaa !12
  %433 = zext i8 %432 to i32
  %434 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 116), align 4, !tbaa !6
  %435 = mul nsw i32 %434, %433
  store i32 %435, ptr %62, align 4, !tbaa !6
  %436 = getelementptr inbounds i8, ptr %406, i64 6
  %437 = load i8, ptr %436, align 1, !tbaa !12
  %438 = zext i8 %437 to i32
  %439 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 120), align 4, !tbaa !6
  %440 = mul nsw i32 %439, %438
  store i32 %440, ptr %63, align 4, !tbaa !6
  %441 = getelementptr inbounds i8, ptr %406, i64 7
  %442 = load i8, ptr %441, align 1, !tbaa !12
  %443 = zext i8 %442 to i32
  %444 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 124), align 4, !tbaa !6
  %445 = mul nsw i32 %444, %443
  store i32 %445, ptr %64, align 4, !tbaa !6
  %446 = getelementptr inbounds i8, ptr %406, i64 %33
  %447 = load i8, ptr %446, align 1, !tbaa !12
  %448 = zext i8 %447 to i32
  %449 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 128), align 4, !tbaa !6
  %450 = mul nsw i32 %449, %448
  store i32 %450, ptr %65, align 4, !tbaa !6
  %451 = getelementptr inbounds i8, ptr %446, i64 1
  %452 = load i8, ptr %451, align 1, !tbaa !12
  %453 = zext i8 %452 to i32
  %454 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 132), align 4, !tbaa !6
  %455 = mul nsw i32 %454, %453
  store i32 %455, ptr %66, align 4, !tbaa !6
  %456 = getelementptr inbounds i8, ptr %446, i64 2
  %457 = load i8, ptr %456, align 1, !tbaa !12
  %458 = zext i8 %457 to i32
  %459 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 136), align 4, !tbaa !6
  %460 = mul nsw i32 %459, %458
  store i32 %460, ptr %67, align 4, !tbaa !6
  %461 = getelementptr inbounds i8, ptr %446, i64 3
  %462 = load i8, ptr %461, align 1, !tbaa !12
  %463 = zext i8 %462 to i32
  %464 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 140), align 4, !tbaa !6
  %465 = mul nsw i32 %464, %463
  store i32 %465, ptr %68, align 4, !tbaa !6
  %466 = getelementptr inbounds i8, ptr %446, i64 4
  %467 = load i8, ptr %466, align 1, !tbaa !12
  %468 = zext i8 %467 to i32
  %469 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 144), align 4, !tbaa !6
  %470 = mul nsw i32 %469, %468
  store i32 %470, ptr %69, align 4, !tbaa !6
  %471 = getelementptr inbounds i8, ptr %446, i64 5
  %472 = load i8, ptr %471, align 1, !tbaa !12
  %473 = zext i8 %472 to i32
  %474 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 148), align 4, !tbaa !6
  %475 = mul nsw i32 %474, %473
  store i32 %475, ptr %70, align 4, !tbaa !6
  %476 = getelementptr inbounds i8, ptr %446, i64 6
  %477 = load i8, ptr %476, align 1, !tbaa !12
  %478 = zext i8 %477 to i32
  %479 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 152), align 4, !tbaa !6
  %480 = mul nsw i32 %479, %478
  store i32 %480, ptr %71, align 4, !tbaa !6
  %481 = getelementptr inbounds i8, ptr %446, i64 7
  %482 = load i8, ptr %481, align 1, !tbaa !12
  %483 = zext i8 %482 to i32
  %484 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 156), align 4, !tbaa !6
  %485 = mul nsw i32 %484, %483
  store i32 %485, ptr %72, align 4, !tbaa !6
  %486 = getelementptr inbounds i8, ptr %446, i64 %33
  %487 = load i8, ptr %486, align 1, !tbaa !12
  %488 = zext i8 %487 to i32
  %489 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 160), align 4, !tbaa !6
  %490 = mul nsw i32 %489, %488
  store i32 %490, ptr %73, align 4, !tbaa !6
  %491 = getelementptr inbounds i8, ptr %486, i64 1
  %492 = load i8, ptr %491, align 1, !tbaa !12
  %493 = zext i8 %492 to i32
  %494 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 164), align 4, !tbaa !6
  %495 = mul nsw i32 %494, %493
  store i32 %495, ptr %74, align 4, !tbaa !6
  %496 = getelementptr inbounds i8, ptr %486, i64 2
  %497 = load i8, ptr %496, align 1, !tbaa !12
  %498 = zext i8 %497 to i32
  %499 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 168), align 4, !tbaa !6
  %500 = mul nsw i32 %499, %498
  store i32 %500, ptr %75, align 4, !tbaa !6
  %501 = getelementptr inbounds i8, ptr %486, i64 3
  %502 = load i8, ptr %501, align 1, !tbaa !12
  %503 = zext i8 %502 to i32
  %504 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 172), align 4, !tbaa !6
  %505 = mul nsw i32 %504, %503
  store i32 %505, ptr %76, align 4, !tbaa !6
  %506 = getelementptr inbounds i8, ptr %486, i64 4
  %507 = load i8, ptr %506, align 1, !tbaa !12
  %508 = zext i8 %507 to i32
  %509 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 176), align 4, !tbaa !6
  %510 = mul nsw i32 %509, %508
  store i32 %510, ptr %77, align 4, !tbaa !6
  %511 = getelementptr inbounds i8, ptr %486, i64 5
  %512 = load i8, ptr %511, align 1, !tbaa !12
  %513 = zext i8 %512 to i32
  %514 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 180), align 4, !tbaa !6
  %515 = mul nsw i32 %514, %513
  store i32 %515, ptr %78, align 4, !tbaa !6
  %516 = getelementptr inbounds i8, ptr %486, i64 6
  %517 = load i8, ptr %516, align 1, !tbaa !12
  %518 = zext i8 %517 to i32
  %519 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 184), align 4, !tbaa !6
  %520 = mul nsw i32 %519, %518
  store i32 %520, ptr %79, align 4, !tbaa !6
  %521 = getelementptr inbounds i8, ptr %486, i64 7
  %522 = load i8, ptr %521, align 1, !tbaa !12
  %523 = zext i8 %522 to i32
  %524 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 188), align 4, !tbaa !6
  %525 = mul nsw i32 %524, %523
  store i32 %525, ptr %80, align 4, !tbaa !6
  %526 = getelementptr inbounds i8, ptr %486, i64 %33
  %527 = load i8, ptr %526, align 1, !tbaa !12
  %528 = zext i8 %527 to i32
  %529 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 192), align 4, !tbaa !6
  %530 = mul nsw i32 %529, %528
  store i32 %530, ptr %81, align 4, !tbaa !6
  %531 = getelementptr inbounds i8, ptr %526, i64 1
  %532 = load i8, ptr %531, align 1, !tbaa !12
  %533 = zext i8 %532 to i32
  %534 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 196), align 4, !tbaa !6
  %535 = mul nsw i32 %534, %533
  store i32 %535, ptr %82, align 4, !tbaa !6
  %536 = getelementptr inbounds i8, ptr %526, i64 2
  %537 = load i8, ptr %536, align 1, !tbaa !12
  %538 = zext i8 %537 to i32
  %539 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 200), align 4, !tbaa !6
  %540 = mul nsw i32 %539, %538
  store i32 %540, ptr %83, align 4, !tbaa !6
  %541 = getelementptr inbounds i8, ptr %526, i64 3
  %542 = load i8, ptr %541, align 1, !tbaa !12
  %543 = zext i8 %542 to i32
  %544 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 204), align 4, !tbaa !6
  %545 = mul nsw i32 %544, %543
  store i32 %545, ptr %84, align 4, !tbaa !6
  %546 = getelementptr inbounds i8, ptr %526, i64 4
  %547 = load i8, ptr %546, align 1, !tbaa !12
  %548 = zext i8 %547 to i32
  %549 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 208), align 4, !tbaa !6
  %550 = mul nsw i32 %549, %548
  store i32 %550, ptr %85, align 4, !tbaa !6
  %551 = getelementptr inbounds i8, ptr %526, i64 5
  %552 = load i8, ptr %551, align 1, !tbaa !12
  %553 = zext i8 %552 to i32
  %554 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 212), align 4, !tbaa !6
  %555 = mul nsw i32 %554, %553
  store i32 %555, ptr %86, align 4, !tbaa !6
  %556 = getelementptr inbounds i8, ptr %526, i64 6
  %557 = load i8, ptr %556, align 1, !tbaa !12
  %558 = zext i8 %557 to i32
  %559 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 216), align 4, !tbaa !6
  %560 = mul nsw i32 %559, %558
  store i32 %560, ptr %87, align 4, !tbaa !6
  %561 = getelementptr inbounds i8, ptr %526, i64 7
  %562 = load i8, ptr %561, align 1, !tbaa !12
  %563 = zext i8 %562 to i32
  %564 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 220), align 4, !tbaa !6
  %565 = mul nsw i32 %564, %563
  store i32 %565, ptr %88, align 4, !tbaa !6
  %566 = getelementptr inbounds i8, ptr %526, i64 %33
  %567 = load i8, ptr %566, align 1, !tbaa !12
  %568 = zext i8 %567 to i32
  %569 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 224), align 4, !tbaa !6
  %570 = mul nsw i32 %569, %568
  store i32 %570, ptr %89, align 4, !tbaa !6
  %571 = getelementptr inbounds i8, ptr %566, i64 1
  %572 = load i8, ptr %571, align 1, !tbaa !12
  %573 = zext i8 %572 to i32
  %574 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 228), align 4, !tbaa !6
  %575 = mul nsw i32 %574, %573
  store i32 %575, ptr %90, align 4, !tbaa !6
  %576 = getelementptr inbounds i8, ptr %566, i64 2
  %577 = load i8, ptr %576, align 1, !tbaa !12
  %578 = zext i8 %577 to i32
  %579 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 232), align 4, !tbaa !6
  %580 = mul nsw i32 %579, %578
  store i32 %580, ptr %91, align 4, !tbaa !6
  %581 = getelementptr inbounds i8, ptr %566, i64 3
  %582 = load i8, ptr %581, align 1, !tbaa !12
  %583 = zext i8 %582 to i32
  %584 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 236), align 4, !tbaa !6
  %585 = mul nsw i32 %584, %583
  store i32 %585, ptr %92, align 4, !tbaa !6
  %586 = getelementptr inbounds i8, ptr %566, i64 4
  %587 = load i8, ptr %586, align 1, !tbaa !12
  %588 = zext i8 %587 to i32
  %589 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 240), align 4, !tbaa !6
  %590 = mul nsw i32 %589, %588
  store i32 %590, ptr %93, align 4, !tbaa !6
  %591 = getelementptr inbounds i8, ptr %566, i64 5
  %592 = load i8, ptr %591, align 1, !tbaa !12
  %593 = zext i8 %592 to i32
  %594 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 244), align 4, !tbaa !6
  %595 = mul nsw i32 %594, %593
  store i32 %595, ptr %94, align 4, !tbaa !6
  %596 = getelementptr inbounds i8, ptr %566, i64 6
  %597 = load i8, ptr %596, align 1, !tbaa !12
  %598 = zext i8 %597 to i32
  %599 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 248), align 4, !tbaa !6
  %600 = mul nsw i32 %599, %598
  store i32 %600, ptr %95, align 4, !tbaa !6
  %601 = getelementptr inbounds i8, ptr %566, i64 7
  %602 = load i8, ptr %601, align 1, !tbaa !12
  %603 = zext i8 %602 to i32
  %604 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 252), align 4, !tbaa !6
  %605 = mul nsw i32 %604, %603
  store i32 %605, ptr %96, align 4, !tbaa !6
  br label %954

606:                                              ; preds = %194
  %607 = icmp eq i32 %234, 0
  %608 = select i1 %607, i1 %284, i1 false
  br i1 %608, label %609, label %726

609:                                              ; preds = %606
  %610 = getelementptr inbounds i8, ptr %242, i64 1
  %611 = load i8, ptr %610, align 1, !tbaa !12
  %612 = getelementptr inbounds i8, ptr %242, i64 2
  %613 = load i8, ptr %612, align 1, !tbaa !12
  %614 = getelementptr inbounds i8, ptr %242, i64 3
  %615 = load i8, ptr %614, align 1, !tbaa !12
  %616 = getelementptr inbounds i8, ptr %242, i64 4
  %617 = load i8, ptr %616, align 1, !tbaa !12
  %618 = getelementptr inbounds i8, ptr %242, i64 5
  %619 = load i8, ptr %618, align 1, !tbaa !12
  %620 = getelementptr inbounds i8, ptr %242, i64 6
  %621 = load i8, ptr %620, align 1, !tbaa !12
  br label %622

622:                                              ; preds = %622, %609
  %623 = phi i8 [ %700, %622 ], [ %621, %609 ]
  %624 = phi i8 [ %689, %622 ], [ %619, %609 ]
  %625 = phi i8 [ %678, %622 ], [ %617, %609 ]
  %626 = phi i8 [ %667, %622 ], [ %615, %609 ]
  %627 = phi i8 [ %656, %622 ], [ %613, %609 ]
  %628 = phi i8 [ %645, %622 ], [ %611, %609 ]
  %629 = phi i32 [ %724, %622 ], [ 0, %609 ]
  %630 = phi ptr [ %633, %622 ], [ %242, %609 ]
  %631 = phi ptr [ %723, %622 ], [ @OM, %609 ]
  %632 = phi ptr [ %722, %622 ], [ %6, %609 ]
  %633 = getelementptr i8, ptr %630, i64 %33
  %634 = load i8, ptr %630, align 1, !tbaa !12
  %635 = zext i8 %634 to i32
  %636 = load i8, ptr %633, align 1, !tbaa !12
  %637 = zext i8 %636 to i32
  %638 = add nuw nsw i32 %635, 1
  %639 = add nuw nsw i32 %638, %637
  %640 = lshr i32 %639, 1
  %641 = load i32, ptr %631, align 4, !tbaa !6
  %642 = mul i32 %640, %641
  store i32 %642, ptr %632, align 4, !tbaa !6
  %643 = zext i8 %628 to i32
  %644 = getelementptr inbounds i8, ptr %633, i64 1
  %645 = load i8, ptr %644, align 1, !tbaa !12
  %646 = zext i8 %645 to i32
  %647 = add nuw nsw i32 %643, 1
  %648 = add nuw nsw i32 %647, %646
  %649 = lshr i32 %648, 1
  %650 = getelementptr inbounds i8, ptr %631, i64 4
  %651 = load i32, ptr %650, align 4, !tbaa !6
  %652 = mul i32 %649, %651
  %653 = getelementptr inbounds i8, ptr %632, i64 4
  store i32 %652, ptr %653, align 4, !tbaa !6
  %654 = zext i8 %627 to i32
  %655 = getelementptr inbounds i8, ptr %633, i64 2
  %656 = load i8, ptr %655, align 1, !tbaa !12
  %657 = zext i8 %656 to i32
  %658 = add nuw nsw i32 %654, 1
  %659 = add nuw nsw i32 %658, %657
  %660 = lshr i32 %659, 1
  %661 = getelementptr inbounds i8, ptr %631, i64 8
  %662 = load i32, ptr %661, align 4, !tbaa !6
  %663 = mul i32 %660, %662
  %664 = getelementptr inbounds i8, ptr %632, i64 8
  store i32 %663, ptr %664, align 4, !tbaa !6
  %665 = zext i8 %626 to i32
  %666 = getelementptr inbounds i8, ptr %633, i64 3
  %667 = load i8, ptr %666, align 1, !tbaa !12
  %668 = zext i8 %667 to i32
  %669 = add nuw nsw i32 %665, 1
  %670 = add nuw nsw i32 %669, %668
  %671 = lshr i32 %670, 1
  %672 = getelementptr inbounds i8, ptr %631, i64 12
  %673 = load i32, ptr %672, align 4, !tbaa !6
  %674 = mul i32 %671, %673
  %675 = getelementptr inbounds i8, ptr %632, i64 12
  store i32 %674, ptr %675, align 4, !tbaa !6
  %676 = zext i8 %625 to i32
  %677 = getelementptr inbounds i8, ptr %633, i64 4
  %678 = load i8, ptr %677, align 1, !tbaa !12
  %679 = zext i8 %678 to i32
  %680 = add nuw nsw i32 %676, 1
  %681 = add nuw nsw i32 %680, %679
  %682 = lshr i32 %681, 1
  %683 = getelementptr inbounds i8, ptr %631, i64 16
  %684 = load i32, ptr %683, align 4, !tbaa !6
  %685 = mul i32 %682, %684
  %686 = getelementptr inbounds i8, ptr %632, i64 16
  store i32 %685, ptr %686, align 4, !tbaa !6
  %687 = zext i8 %624 to i32
  %688 = getelementptr inbounds i8, ptr %633, i64 5
  %689 = load i8, ptr %688, align 1, !tbaa !12
  %690 = zext i8 %689 to i32
  %691 = add nuw nsw i32 %687, 1
  %692 = add nuw nsw i32 %691, %690
  %693 = lshr i32 %692, 1
  %694 = getelementptr inbounds i8, ptr %631, i64 20
  %695 = load i32, ptr %694, align 4, !tbaa !6
  %696 = mul i32 %693, %695
  %697 = getelementptr inbounds i8, ptr %632, i64 20
  store i32 %696, ptr %697, align 4, !tbaa !6
  %698 = zext i8 %623 to i32
  %699 = getelementptr inbounds i8, ptr %633, i64 6
  %700 = load i8, ptr %699, align 1, !tbaa !12
  %701 = zext i8 %700 to i32
  %702 = add nuw nsw i32 %698, 1
  %703 = add nuw nsw i32 %702, %701
  %704 = lshr i32 %703, 1
  %705 = getelementptr inbounds i8, ptr %631, i64 24
  %706 = load i32, ptr %705, align 4, !tbaa !6
  %707 = mul i32 %704, %706
  %708 = getelementptr inbounds i8, ptr %632, i64 24
  store i32 %707, ptr %708, align 4, !tbaa !6
  %709 = getelementptr inbounds i8, ptr %630, i64 7
  %710 = load i8, ptr %709, align 1, !tbaa !12
  %711 = zext i8 %710 to i32
  %712 = getelementptr inbounds i8, ptr %633, i64 7
  %713 = load i8, ptr %712, align 1, !tbaa !12
  %714 = zext i8 %713 to i32
  %715 = add nuw nsw i32 %711, 1
  %716 = add nuw nsw i32 %715, %714
  %717 = lshr i32 %716, 1
  %718 = getelementptr inbounds i8, ptr %631, i64 28
  %719 = load i32, ptr %718, align 4, !tbaa !6
  %720 = mul i32 %717, %719
  %721 = getelementptr inbounds i8, ptr %632, i64 28
  store i32 %720, ptr %721, align 4, !tbaa !6
  %722 = getelementptr inbounds i8, ptr %632, i64 32
  %723 = getelementptr inbounds i8, ptr %631, i64 32
  %724 = add nuw nsw i32 %629, 1
  %725 = icmp eq i32 %724, 8
  br i1 %725, label %954, label %622

726:                                              ; preds = %606
  %727 = select i1 %607, i1 true, i1 %284
  br i1 %727, label %817, label %728

728:                                              ; preds = %726, %728
  %729 = phi i32 [ %815, %728 ], [ 0, %726 ]
  %730 = phi ptr [ %812, %728 ], [ %242, %726 ]
  %731 = phi ptr [ %814, %728 ], [ @OM, %726 ]
  %732 = phi ptr [ %813, %728 ], [ %6, %726 ]
  %733 = load i8, ptr %730, align 1, !tbaa !12
  %734 = zext i8 %733 to i32
  %735 = getelementptr inbounds i8, ptr %730, i64 1
  %736 = load i8, ptr %735, align 1, !tbaa !12
  %737 = zext i8 %736 to i32
  %738 = add nuw nsw i32 %737, 1
  %739 = add nuw nsw i32 %738, %734
  %740 = lshr i32 %739, 1
  %741 = load i32, ptr %731, align 4, !tbaa !6
  %742 = mul i32 %740, %741
  store i32 %742, ptr %732, align 4, !tbaa !6
  %743 = getelementptr inbounds i8, ptr %730, i64 2
  %744 = load i8, ptr %743, align 1, !tbaa !12
  %745 = zext i8 %744 to i32
  %746 = add nuw nsw i32 %738, %745
  %747 = lshr i32 %746, 1
  %748 = getelementptr inbounds i8, ptr %731, i64 4
  %749 = load i32, ptr %748, align 4, !tbaa !6
  %750 = mul i32 %747, %749
  %751 = getelementptr inbounds i8, ptr %732, i64 4
  store i32 %750, ptr %751, align 4, !tbaa !6
  %752 = getelementptr inbounds i8, ptr %730, i64 3
  %753 = load i8, ptr %752, align 1, !tbaa !12
  %754 = zext i8 %753 to i32
  %755 = add nuw nsw i32 %745, 1
  %756 = add nuw nsw i32 %755, %754
  %757 = lshr i32 %756, 1
  %758 = getelementptr inbounds i8, ptr %731, i64 8
  %759 = load i32, ptr %758, align 4, !tbaa !6
  %760 = mul i32 %757, %759
  %761 = getelementptr inbounds i8, ptr %732, i64 8
  store i32 %760, ptr %761, align 4, !tbaa !6
  %762 = getelementptr inbounds i8, ptr %730, i64 4
  %763 = load i8, ptr %762, align 1, !tbaa !12
  %764 = zext i8 %763 to i32
  %765 = add nuw nsw i32 %754, 1
  %766 = add nuw nsw i32 %765, %764
  %767 = lshr i32 %766, 1
  %768 = getelementptr inbounds i8, ptr %731, i64 12
  %769 = load i32, ptr %768, align 4, !tbaa !6
  %770 = mul i32 %767, %769
  %771 = getelementptr inbounds i8, ptr %732, i64 12
  store i32 %770, ptr %771, align 4, !tbaa !6
  %772 = getelementptr inbounds i8, ptr %730, i64 5
  %773 = load i8, ptr %772, align 1, !tbaa !12
  %774 = zext i8 %773 to i32
  %775 = add nuw nsw i32 %764, 1
  %776 = add nuw nsw i32 %775, %774
  %777 = lshr i32 %776, 1
  %778 = getelementptr inbounds i8, ptr %731, i64 16
  %779 = load i32, ptr %778, align 4, !tbaa !6
  %780 = mul i32 %777, %779
  %781 = getelementptr inbounds i8, ptr %732, i64 16
  store i32 %780, ptr %781, align 4, !tbaa !6
  %782 = getelementptr inbounds i8, ptr %730, i64 6
  %783 = load i8, ptr %782, align 1, !tbaa !12
  %784 = zext i8 %783 to i32
  %785 = add nuw nsw i32 %774, 1
  %786 = add nuw nsw i32 %785, %784
  %787 = lshr i32 %786, 1
  %788 = getelementptr inbounds i8, ptr %731, i64 20
  %789 = load i32, ptr %788, align 4, !tbaa !6
  %790 = mul i32 %787, %789
  %791 = getelementptr inbounds i8, ptr %732, i64 20
  store i32 %790, ptr %791, align 4, !tbaa !6
  %792 = getelementptr inbounds i8, ptr %730, i64 7
  %793 = load i8, ptr %792, align 1, !tbaa !12
  %794 = zext i8 %793 to i32
  %795 = add nuw nsw i32 %784, 1
  %796 = add nuw nsw i32 %795, %794
  %797 = lshr i32 %796, 1
  %798 = getelementptr inbounds i8, ptr %731, i64 24
  %799 = load i32, ptr %798, align 4, !tbaa !6
  %800 = mul i32 %797, %799
  %801 = getelementptr inbounds i8, ptr %732, i64 24
  store i32 %800, ptr %801, align 4, !tbaa !6
  %802 = getelementptr inbounds i8, ptr %730, i64 8
  %803 = load i8, ptr %802, align 1, !tbaa !12
  %804 = zext i8 %803 to i32
  %805 = add nuw nsw i32 %794, 1
  %806 = add nuw nsw i32 %805, %804
  %807 = lshr i32 %806, 1
  %808 = getelementptr inbounds i8, ptr %731, i64 28
  %809 = load i32, ptr %808, align 4, !tbaa !6
  %810 = mul i32 %807, %809
  %811 = getelementptr inbounds i8, ptr %732, i64 28
  store i32 %810, ptr %811, align 4, !tbaa !6
  %812 = getelementptr inbounds i8, ptr %730, i64 %33
  %813 = getelementptr inbounds i8, ptr %732, i64 32
  %814 = getelementptr inbounds i8, ptr %731, i64 32
  %815 = add nuw nsw i32 %729, 1
  %816 = icmp eq i32 %815, 8
  br i1 %816, label %954, label %728

817:                                              ; preds = %726
  %818 = getelementptr inbounds i8, ptr %242, i64 4
  %819 = load i8, ptr %818, align 1, !tbaa !12
  %820 = getelementptr inbounds i8, ptr %242, i64 5
  %821 = load i8, ptr %820, align 1, !tbaa !12
  %822 = getelementptr inbounds i8, ptr %242, i64 6
  %823 = load i8, ptr %822, align 1, !tbaa !12
  %824 = getelementptr inbounds i8, ptr %242, i64 3
  %825 = load i8, ptr %824, align 1, !tbaa !12
  br label %826

826:                                              ; preds = %826, %817
  %827 = phi i8 [ %869, %826 ], [ %825, %817 ]
  %828 = phi i8 [ %908, %826 ], [ %823, %817 ]
  %829 = phi i8 [ %894, %826 ], [ %821, %817 ]
  %830 = phi i8 [ %882, %826 ], [ %819, %817 ]
  %831 = phi i32 [ %952, %826 ], [ 0, %817 ]
  %832 = phi ptr [ %835, %826 ], [ %242, %817 ]
  %833 = phi ptr [ %951, %826 ], [ @OM, %817 ]
  %834 = phi ptr [ %950, %826 ], [ %6, %817 ]
  %835 = getelementptr i8, ptr %832, i64 %33
  %836 = load i8, ptr %832, align 1, !tbaa !12
  %837 = zext i8 %836 to i32
  %838 = load i8, ptr %835, align 1, !tbaa !12
  %839 = zext i8 %838 to i32
  %840 = getelementptr inbounds i8, ptr %832, i64 1
  %841 = load i8, ptr %840, align 1, !tbaa !12
  %842 = zext i8 %841 to i32
  %843 = getelementptr inbounds i8, ptr %835, i64 1
  %844 = load i8, ptr %843, align 1, !tbaa !12
  %845 = zext i8 %844 to i32
  %846 = add nuw nsw i32 %842, 2
  %847 = add nuw nsw i32 %846, %837
  %848 = add nuw nsw i32 %847, %839
  %849 = add nuw nsw i32 %848, %845
  %850 = lshr i32 %849, 2
  %851 = load i32, ptr %833, align 4, !tbaa !6
  %852 = mul i32 %850, %851
  store i32 %852, ptr %834, align 4, !tbaa !6
  %853 = getelementptr inbounds i8, ptr %832, i64 2
  %854 = load i8, ptr %853, align 1, !tbaa !12
  %855 = zext i8 %854 to i32
  %856 = getelementptr inbounds i8, ptr %835, i64 2
  %857 = load i8, ptr %856, align 1, !tbaa !12
  %858 = zext i8 %857 to i32
  %859 = add nuw nsw i32 %846, %845
  %860 = add nuw nsw i32 %859, %855
  %861 = add nuw nsw i32 %860, %858
  %862 = lshr i32 %861, 2
  %863 = getelementptr inbounds i8, ptr %833, i64 4
  %864 = load i32, ptr %863, align 4, !tbaa !6
  %865 = mul i32 %862, %864
  %866 = getelementptr inbounds i8, ptr %834, i64 4
  store i32 %865, ptr %866, align 4, !tbaa !6
  %867 = zext i8 %827 to i32
  %868 = getelementptr inbounds i8, ptr %835, i64 3
  %869 = load i8, ptr %868, align 1, !tbaa !12
  %870 = zext i8 %869 to i32
  %871 = add nuw nsw i32 %867, 2
  %872 = add nuw nsw i32 %871, %855
  %873 = add nuw nsw i32 %872, %858
  %874 = add nuw nsw i32 %873, %870
  %875 = lshr i32 %874, 2
  %876 = getelementptr inbounds i8, ptr %833, i64 8
  %877 = load i32, ptr %876, align 4, !tbaa !6
  %878 = mul i32 %875, %877
  %879 = getelementptr inbounds i8, ptr %834, i64 8
  store i32 %878, ptr %879, align 4, !tbaa !6
  %880 = zext i8 %830 to i32
  %881 = getelementptr inbounds i8, ptr %835, i64 4
  %882 = load i8, ptr %881, align 1, !tbaa !12
  %883 = zext i8 %882 to i32
  %884 = add nuw nsw i32 %871, %880
  %885 = add nuw nsw i32 %884, %870
  %886 = add nuw nsw i32 %885, %883
  %887 = lshr i32 %886, 2
  %888 = getelementptr inbounds i8, ptr %833, i64 12
  %889 = load i32, ptr %888, align 4, !tbaa !6
  %890 = mul i32 %887, %889
  %891 = getelementptr inbounds i8, ptr %834, i64 12
  store i32 %890, ptr %891, align 4, !tbaa !6
  %892 = zext i8 %829 to i32
  %893 = getelementptr inbounds i8, ptr %835, i64 5
  %894 = load i8, ptr %893, align 1, !tbaa !12
  %895 = zext i8 %894 to i32
  %896 = add nuw nsw i32 %892, 2
  %897 = add nuw nsw i32 %896, %880
  %898 = add nuw nsw i32 %897, %883
  %899 = add nuw nsw i32 %898, %895
  %900 = lshr i32 %899, 2
  %901 = getelementptr inbounds i8, ptr %833, i64 16
  %902 = load i32, ptr %901, align 4, !tbaa !6
  %903 = mul i32 %900, %902
  %904 = getelementptr inbounds i8, ptr %834, i64 16
  store i32 %903, ptr %904, align 4, !tbaa !6
  %905 = getelementptr inbounds i8, ptr %832, i64 6
  %906 = zext i8 %828 to i32
  %907 = getelementptr inbounds i8, ptr %835, i64 6
  %908 = load i8, ptr %907, align 1, !tbaa !12
  %909 = zext i8 %908 to i32
  %910 = add nuw nsw i32 %896, %906
  %911 = add nuw nsw i32 %910, %895
  %912 = add nuw nsw i32 %911, %909
  %913 = lshr i32 %912, 2
  %914 = getelementptr inbounds i8, ptr %833, i64 20
  %915 = load i32, ptr %914, align 4, !tbaa !6
  %916 = mul i32 %913, %915
  %917 = getelementptr inbounds i8, ptr %834, i64 20
  store i32 %916, ptr %917, align 4, !tbaa !6
  %918 = load i8, ptr %905, align 1, !tbaa !12
  %919 = zext i8 %918 to i32
  %920 = getelementptr inbounds i8, ptr %832, i64 7
  %921 = load i8, ptr %920, align 1, !tbaa !12
  %922 = zext i8 %921 to i32
  %923 = getelementptr inbounds i8, ptr %835, i64 7
  %924 = load i8, ptr %923, align 1, !tbaa !12
  %925 = zext i8 %924 to i32
  %926 = add nuw nsw i32 %909, 2
  %927 = add nuw nsw i32 %926, %919
  %928 = add nuw nsw i32 %927, %922
  %929 = add nuw nsw i32 %928, %925
  %930 = lshr i32 %929, 2
  %931 = getelementptr inbounds i8, ptr %833, i64 24
  %932 = load i32, ptr %931, align 4, !tbaa !6
  %933 = mul i32 %930, %932
  %934 = getelementptr inbounds i8, ptr %834, i64 24
  store i32 %933, ptr %934, align 4, !tbaa !6
  %935 = getelementptr inbounds i8, ptr %832, i64 8
  %936 = load i8, ptr %935, align 1, !tbaa !12
  %937 = zext i8 %936 to i32
  %938 = getelementptr inbounds i8, ptr %835, i64 8
  %939 = load i8, ptr %938, align 1, !tbaa !12
  %940 = zext i8 %939 to i32
  %941 = add nuw nsw i32 %922, 2
  %942 = add nuw nsw i32 %941, %925
  %943 = add nuw nsw i32 %942, %937
  %944 = add nuw nsw i32 %943, %940
  %945 = lshr i32 %944, 2
  %946 = getelementptr inbounds i8, ptr %833, i64 28
  %947 = load i32, ptr %946, align 4, !tbaa !6
  %948 = mul i32 %945, %947
  %949 = getelementptr inbounds i8, ptr %834, i64 28
  store i32 %948, ptr %949, align 4, !tbaa !6
  %950 = getelementptr inbounds i8, ptr %834, i64 32
  %951 = getelementptr inbounds i8, ptr %833, i64 32
  %952 = add nuw nsw i32 %831, 1
  %953 = icmp eq i32 %952, 8
  br i1 %953, label %954, label %826

954:                                              ; preds = %728, %826, %622, %286
  %955 = icmp ne i32 %244, 0
  %956 = icmp ne i32 %246, 0
  %957 = select i1 %955, i1 true, i1 %956
  br i1 %957, label %1182, label %958

958:                                              ; preds = %954
  %959 = load i8, ptr %252, align 1, !tbaa !12
  %960 = zext i8 %959 to i32
  %961 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 256), align 4, !tbaa !6
  %962 = mul nsw i32 %961, %960
  %963 = load i32, ptr %6, align 4, !tbaa !6
  %964 = add nsw i32 %963, %962
  store i32 %964, ptr %6, align 4, !tbaa !6
  %965 = getelementptr inbounds i8, ptr %252, i64 1
  %966 = load i8, ptr %965, align 1, !tbaa !12
  %967 = zext i8 %966 to i32
  %968 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 260), align 4, !tbaa !6
  %969 = mul nsw i32 %968, %967
  %970 = load i32, ptr %34, align 4, !tbaa !6
  %971 = add nsw i32 %970, %969
  store i32 %971, ptr %34, align 4, !tbaa !6
  %972 = getelementptr inbounds i8, ptr %252, i64 2
  %973 = load i8, ptr %972, align 1, !tbaa !12
  %974 = zext i8 %973 to i32
  %975 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 264), align 4, !tbaa !6
  %976 = mul nsw i32 %975, %974
  %977 = load i32, ptr %35, align 4, !tbaa !6
  %978 = add nsw i32 %977, %976
  store i32 %978, ptr %35, align 4, !tbaa !6
  %979 = getelementptr inbounds i8, ptr %252, i64 3
  %980 = load i8, ptr %979, align 1, !tbaa !12
  %981 = zext i8 %980 to i32
  %982 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 268), align 4, !tbaa !6
  %983 = mul nsw i32 %982, %981
  %984 = load i32, ptr %36, align 4, !tbaa !6
  %985 = add nsw i32 %984, %983
  store i32 %985, ptr %36, align 4, !tbaa !6
  %986 = getelementptr inbounds i8, ptr %252, i64 4
  %987 = load i8, ptr %986, align 1, !tbaa !12
  %988 = zext i8 %987 to i32
  %989 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 272), align 4, !tbaa !6
  %990 = mul nsw i32 %989, %988
  %991 = load i32, ptr %37, align 4, !tbaa !6
  %992 = add nsw i32 %991, %990
  store i32 %992, ptr %37, align 4, !tbaa !6
  %993 = getelementptr inbounds i8, ptr %252, i64 5
  %994 = load i8, ptr %993, align 1, !tbaa !12
  %995 = zext i8 %994 to i32
  %996 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 276), align 4, !tbaa !6
  %997 = mul nsw i32 %996, %995
  %998 = load i32, ptr %38, align 4, !tbaa !6
  %999 = add nsw i32 %998, %997
  store i32 %999, ptr %38, align 4, !tbaa !6
  %1000 = getelementptr inbounds i8, ptr %252, i64 6
  %1001 = load i8, ptr %1000, align 1, !tbaa !12
  %1002 = zext i8 %1001 to i32
  %1003 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 280), align 4, !tbaa !6
  %1004 = mul nsw i32 %1003, %1002
  %1005 = load i32, ptr %39, align 4, !tbaa !6
  %1006 = add nsw i32 %1005, %1004
  store i32 %1006, ptr %39, align 4, !tbaa !6
  %1007 = getelementptr inbounds i8, ptr %252, i64 7
  %1008 = load i8, ptr %1007, align 1, !tbaa !12
  %1009 = zext i8 %1008 to i32
  %1010 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 284), align 4, !tbaa !6
  %1011 = mul nsw i32 %1010, %1009
  %1012 = load i32, ptr %40, align 4, !tbaa !6
  %1013 = add nsw i32 %1012, %1011
  store i32 %1013, ptr %40, align 4, !tbaa !6
  %1014 = getelementptr inbounds i8, ptr %252, i64 %33
  %1015 = load i8, ptr %1014, align 1, !tbaa !12
  %1016 = zext i8 %1015 to i32
  %1017 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 288), align 4, !tbaa !6
  %1018 = mul nsw i32 %1017, %1016
  %1019 = load i32, ptr %41, align 4, !tbaa !6
  %1020 = add nsw i32 %1019, %1018
  store i32 %1020, ptr %41, align 4, !tbaa !6
  %1021 = getelementptr inbounds i8, ptr %1014, i64 1
  %1022 = load i8, ptr %1021, align 1, !tbaa !12
  %1023 = zext i8 %1022 to i32
  %1024 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 292), align 4, !tbaa !6
  %1025 = mul nsw i32 %1024, %1023
  %1026 = load i32, ptr %42, align 4, !tbaa !6
  %1027 = add nsw i32 %1026, %1025
  store i32 %1027, ptr %42, align 4, !tbaa !6
  %1028 = getelementptr inbounds i8, ptr %1014, i64 2
  %1029 = load i8, ptr %1028, align 1, !tbaa !12
  %1030 = zext i8 %1029 to i32
  %1031 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 296), align 4, !tbaa !6
  %1032 = mul nsw i32 %1031, %1030
  %1033 = load i32, ptr %43, align 4, !tbaa !6
  %1034 = add nsw i32 %1033, %1032
  store i32 %1034, ptr %43, align 4, !tbaa !6
  %1035 = getelementptr inbounds i8, ptr %1014, i64 3
  %1036 = load i8, ptr %1035, align 1, !tbaa !12
  %1037 = zext i8 %1036 to i32
  %1038 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 300), align 4, !tbaa !6
  %1039 = mul nsw i32 %1038, %1037
  %1040 = load i32, ptr %44, align 4, !tbaa !6
  %1041 = add nsw i32 %1040, %1039
  store i32 %1041, ptr %44, align 4, !tbaa !6
  %1042 = getelementptr inbounds i8, ptr %1014, i64 4
  %1043 = load i8, ptr %1042, align 1, !tbaa !12
  %1044 = zext i8 %1043 to i32
  %1045 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 304), align 4, !tbaa !6
  %1046 = mul nsw i32 %1045, %1044
  %1047 = load i32, ptr %45, align 4, !tbaa !6
  %1048 = add nsw i32 %1047, %1046
  store i32 %1048, ptr %45, align 4, !tbaa !6
  %1049 = getelementptr inbounds i8, ptr %1014, i64 5
  %1050 = load i8, ptr %1049, align 1, !tbaa !12
  %1051 = zext i8 %1050 to i32
  %1052 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 308), align 4, !tbaa !6
  %1053 = mul nsw i32 %1052, %1051
  %1054 = load i32, ptr %46, align 4, !tbaa !6
  %1055 = add nsw i32 %1054, %1053
  store i32 %1055, ptr %46, align 4, !tbaa !6
  %1056 = getelementptr inbounds i8, ptr %1014, i64 6
  %1057 = load i8, ptr %1056, align 1, !tbaa !12
  %1058 = zext i8 %1057 to i32
  %1059 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 312), align 4, !tbaa !6
  %1060 = mul nsw i32 %1059, %1058
  %1061 = load i32, ptr %47, align 4, !tbaa !6
  %1062 = add nsw i32 %1061, %1060
  store i32 %1062, ptr %47, align 4, !tbaa !6
  %1063 = getelementptr inbounds i8, ptr %1014, i64 7
  %1064 = load i8, ptr %1063, align 1, !tbaa !12
  %1065 = zext i8 %1064 to i32
  %1066 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 316), align 4, !tbaa !6
  %1067 = mul nsw i32 %1066, %1065
  %1068 = load i32, ptr %48, align 4, !tbaa !6
  %1069 = add nsw i32 %1068, %1067
  store i32 %1069, ptr %48, align 4, !tbaa !6
  %1070 = getelementptr inbounds i8, ptr %1014, i64 %33
  %1071 = load i8, ptr %1070, align 1, !tbaa !12
  %1072 = zext i8 %1071 to i32
  %1073 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 320), align 4, !tbaa !6
  %1074 = mul nsw i32 %1073, %1072
  %1075 = load i32, ptr %49, align 4, !tbaa !6
  %1076 = add nsw i32 %1075, %1074
  store i32 %1076, ptr %49, align 4, !tbaa !6
  %1077 = getelementptr inbounds i8, ptr %1070, i64 1
  %1078 = load i8, ptr %1077, align 1, !tbaa !12
  %1079 = zext i8 %1078 to i32
  %1080 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 324), align 4, !tbaa !6
  %1081 = mul nsw i32 %1080, %1079
  %1082 = load i32, ptr %50, align 4, !tbaa !6
  %1083 = add nsw i32 %1082, %1081
  store i32 %1083, ptr %50, align 4, !tbaa !6
  %1084 = getelementptr inbounds i8, ptr %1070, i64 2
  %1085 = load i8, ptr %1084, align 1, !tbaa !12
  %1086 = zext i8 %1085 to i32
  %1087 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 328), align 4, !tbaa !6
  %1088 = mul nsw i32 %1087, %1086
  %1089 = load i32, ptr %51, align 4, !tbaa !6
  %1090 = add nsw i32 %1089, %1088
  store i32 %1090, ptr %51, align 4, !tbaa !6
  %1091 = getelementptr inbounds i8, ptr %1070, i64 3
  %1092 = load i8, ptr %1091, align 1, !tbaa !12
  %1093 = zext i8 %1092 to i32
  %1094 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 332), align 4, !tbaa !6
  %1095 = mul nsw i32 %1094, %1093
  %1096 = load i32, ptr %52, align 4, !tbaa !6
  %1097 = add nsw i32 %1096, %1095
  store i32 %1097, ptr %52, align 4, !tbaa !6
  %1098 = getelementptr inbounds i8, ptr %1070, i64 4
  %1099 = load i8, ptr %1098, align 1, !tbaa !12
  %1100 = zext i8 %1099 to i32
  %1101 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 336), align 4, !tbaa !6
  %1102 = mul nsw i32 %1101, %1100
  %1103 = load i32, ptr %53, align 4, !tbaa !6
  %1104 = add nsw i32 %1103, %1102
  store i32 %1104, ptr %53, align 4, !tbaa !6
  %1105 = getelementptr inbounds i8, ptr %1070, i64 5
  %1106 = load i8, ptr %1105, align 1, !tbaa !12
  %1107 = zext i8 %1106 to i32
  %1108 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 340), align 4, !tbaa !6
  %1109 = mul nsw i32 %1108, %1107
  %1110 = load i32, ptr %54, align 4, !tbaa !6
  %1111 = add nsw i32 %1110, %1109
  store i32 %1111, ptr %54, align 4, !tbaa !6
  %1112 = getelementptr inbounds i8, ptr %1070, i64 6
  %1113 = load i8, ptr %1112, align 1, !tbaa !12
  %1114 = zext i8 %1113 to i32
  %1115 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 344), align 4, !tbaa !6
  %1116 = mul nsw i32 %1115, %1114
  %1117 = load i32, ptr %55, align 4, !tbaa !6
  %1118 = add nsw i32 %1117, %1116
  store i32 %1118, ptr %55, align 4, !tbaa !6
  %1119 = getelementptr inbounds i8, ptr %1070, i64 7
  %1120 = load i8, ptr %1119, align 1, !tbaa !12
  %1121 = zext i8 %1120 to i32
  %1122 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 348), align 4, !tbaa !6
  %1123 = mul nsw i32 %1122, %1121
  %1124 = load i32, ptr %56, align 4, !tbaa !6
  %1125 = add nsw i32 %1124, %1123
  store i32 %1125, ptr %56, align 4, !tbaa !6
  %1126 = getelementptr inbounds i8, ptr %1070, i64 %33
  %1127 = load i8, ptr %1126, align 1, !tbaa !12
  %1128 = zext i8 %1127 to i32
  %1129 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 352), align 4, !tbaa !6
  %1130 = mul nsw i32 %1129, %1128
  %1131 = load i32, ptr %57, align 4, !tbaa !6
  %1132 = add nsw i32 %1131, %1130
  store i32 %1132, ptr %57, align 4, !tbaa !6
  %1133 = getelementptr inbounds i8, ptr %1126, i64 1
  %1134 = load i8, ptr %1133, align 1, !tbaa !12
  %1135 = zext i8 %1134 to i32
  %1136 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 356), align 4, !tbaa !6
  %1137 = mul nsw i32 %1136, %1135
  %1138 = load i32, ptr %58, align 4, !tbaa !6
  %1139 = add nsw i32 %1138, %1137
  store i32 %1139, ptr %58, align 4, !tbaa !6
  %1140 = getelementptr inbounds i8, ptr %1126, i64 2
  %1141 = load i8, ptr %1140, align 1, !tbaa !12
  %1142 = zext i8 %1141 to i32
  %1143 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 360), align 4, !tbaa !6
  %1144 = mul nsw i32 %1143, %1142
  %1145 = load i32, ptr %59, align 4, !tbaa !6
  %1146 = add nsw i32 %1145, %1144
  store i32 %1146, ptr %59, align 4, !tbaa !6
  %1147 = getelementptr inbounds i8, ptr %1126, i64 3
  %1148 = load i8, ptr %1147, align 1, !tbaa !12
  %1149 = zext i8 %1148 to i32
  %1150 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 364), align 4, !tbaa !6
  %1151 = mul nsw i32 %1150, %1149
  %1152 = load i32, ptr %60, align 4, !tbaa !6
  %1153 = add nsw i32 %1152, %1151
  store i32 %1153, ptr %60, align 4, !tbaa !6
  %1154 = getelementptr inbounds i8, ptr %1126, i64 4
  %1155 = load i8, ptr %1154, align 1, !tbaa !12
  %1156 = zext i8 %1155 to i32
  %1157 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 368), align 4, !tbaa !6
  %1158 = mul nsw i32 %1157, %1156
  %1159 = load i32, ptr %61, align 4, !tbaa !6
  %1160 = add nsw i32 %1159, %1158
  store i32 %1160, ptr %61, align 4, !tbaa !6
  %1161 = getelementptr inbounds i8, ptr %1126, i64 5
  %1162 = load i8, ptr %1161, align 1, !tbaa !12
  %1163 = zext i8 %1162 to i32
  %1164 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 372), align 4, !tbaa !6
  %1165 = mul nsw i32 %1164, %1163
  %1166 = load i32, ptr %62, align 4, !tbaa !6
  %1167 = add nsw i32 %1166, %1165
  store i32 %1167, ptr %62, align 4, !tbaa !6
  %1168 = getelementptr inbounds i8, ptr %1126, i64 6
  %1169 = load i8, ptr %1168, align 1, !tbaa !12
  %1170 = zext i8 %1169 to i32
  %1171 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 376), align 4, !tbaa !6
  %1172 = mul nsw i32 %1171, %1170
  %1173 = load i32, ptr %63, align 4, !tbaa !6
  %1174 = add nsw i32 %1173, %1172
  store i32 %1174, ptr %63, align 4, !tbaa !6
  %1175 = getelementptr inbounds i8, ptr %1126, i64 7
  %1176 = load i8, ptr %1175, align 1, !tbaa !12
  %1177 = zext i8 %1176 to i32
  %1178 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 380), align 4, !tbaa !6
  %1179 = mul nsw i32 %1178, %1177
  %1180 = load i32, ptr %64, align 4, !tbaa !6
  %1181 = add nsw i32 %1180, %1179
  store i32 %1181, ptr %64, align 4, !tbaa !6
  br label %1576

1182:                                             ; preds = %954
  %1183 = icmp eq i32 %244, 0
  %1184 = select i1 %1183, i1 %956, i1 false
  br i1 %1184, label %1185, label %1317

1185:                                             ; preds = %1182
  %1186 = getelementptr inbounds i8, ptr %252, i64 2
  %1187 = load i8, ptr %1186, align 1, !tbaa !12
  %1188 = getelementptr inbounds i8, ptr %252, i64 3
  %1189 = load i8, ptr %1188, align 1, !tbaa !12
  %1190 = getelementptr inbounds i8, ptr %252, i64 4
  %1191 = load i8, ptr %1190, align 1, !tbaa !12
  %1192 = getelementptr inbounds i8, ptr %252, i64 5
  %1193 = load i8, ptr %1192, align 1, !tbaa !12
  %1194 = getelementptr inbounds i8, ptr %252, i64 6
  %1195 = load i8, ptr %1194, align 1, !tbaa !12
  br label %1196

1196:                                             ; preds = %1196, %1185
  %1197 = phi i8 [ %1287, %1196 ], [ %1195, %1185 ]
  %1198 = phi i8 [ %1274, %1196 ], [ %1193, %1185 ]
  %1199 = phi i8 [ %1261, %1196 ], [ %1191, %1185 ]
  %1200 = phi i8 [ %1248, %1196 ], [ %1189, %1185 ]
  %1201 = phi i8 [ %1235, %1196 ], [ %1187, %1185 ]
  %1202 = phi i32 [ %1315, %1196 ], [ 0, %1185 ]
  %1203 = phi ptr [ %1206, %1196 ], [ %252, %1185 ]
  %1204 = phi ptr [ %1314, %1196 ], [ getelementptr inbounds (i8, ptr @OM, i64 256), %1185 ]
  %1205 = phi ptr [ %1313, %1196 ], [ %6, %1185 ]
  %1206 = getelementptr i8, ptr %1203, i64 %33
  %1207 = load i8, ptr %1203, align 1, !tbaa !12
  %1208 = zext i8 %1207 to i32
  %1209 = load i8, ptr %1206, align 1, !tbaa !12
  %1210 = zext i8 %1209 to i32
  %1211 = add nuw nsw i32 %1208, 1
  %1212 = add nuw nsw i32 %1211, %1210
  %1213 = lshr i32 %1212, 1
  %1214 = load i32, ptr %1204, align 4, !tbaa !6
  %1215 = mul i32 %1213, %1214
  %1216 = load i32, ptr %1205, align 4, !tbaa !6
  %1217 = add i32 %1215, %1216
  store i32 %1217, ptr %1205, align 4, !tbaa !6
  %1218 = getelementptr inbounds i8, ptr %1203, i64 1
  %1219 = load i8, ptr %1218, align 1, !tbaa !12
  %1220 = zext i8 %1219 to i32
  %1221 = getelementptr inbounds i8, ptr %1206, i64 1
  %1222 = load i8, ptr %1221, align 1, !tbaa !12
  %1223 = zext i8 %1222 to i32
  %1224 = add nuw nsw i32 %1220, 1
  %1225 = add nuw nsw i32 %1224, %1223
  %1226 = lshr i32 %1225, 1
  %1227 = getelementptr inbounds i8, ptr %1204, i64 4
  %1228 = load i32, ptr %1227, align 4, !tbaa !6
  %1229 = mul i32 %1226, %1228
  %1230 = getelementptr inbounds i8, ptr %1205, i64 4
  %1231 = load i32, ptr %1230, align 4, !tbaa !6
  %1232 = add i32 %1229, %1231
  store i32 %1232, ptr %1230, align 4, !tbaa !6
  %1233 = zext i8 %1201 to i32
  %1234 = getelementptr inbounds i8, ptr %1206, i64 2
  %1235 = load i8, ptr %1234, align 1, !tbaa !12
  %1236 = zext i8 %1235 to i32
  %1237 = add nuw nsw i32 %1233, 1
  %1238 = add nuw nsw i32 %1237, %1236
  %1239 = lshr i32 %1238, 1
  %1240 = getelementptr inbounds i8, ptr %1204, i64 8
  %1241 = load i32, ptr %1240, align 4, !tbaa !6
  %1242 = mul i32 %1239, %1241
  %1243 = getelementptr inbounds i8, ptr %1205, i64 8
  %1244 = load i32, ptr %1243, align 4, !tbaa !6
  %1245 = add i32 %1242, %1244
  store i32 %1245, ptr %1243, align 4, !tbaa !6
  %1246 = zext i8 %1200 to i32
  %1247 = getelementptr inbounds i8, ptr %1206, i64 3
  %1248 = load i8, ptr %1247, align 1, !tbaa !12
  %1249 = zext i8 %1248 to i32
  %1250 = add nuw nsw i32 %1246, 1
  %1251 = add nuw nsw i32 %1250, %1249
  %1252 = lshr i32 %1251, 1
  %1253 = getelementptr inbounds i8, ptr %1204, i64 12
  %1254 = load i32, ptr %1253, align 4, !tbaa !6
  %1255 = mul i32 %1252, %1254
  %1256 = getelementptr inbounds i8, ptr %1205, i64 12
  %1257 = load i32, ptr %1256, align 4, !tbaa !6
  %1258 = add i32 %1255, %1257
  store i32 %1258, ptr %1256, align 4, !tbaa !6
  %1259 = zext i8 %1199 to i32
  %1260 = getelementptr inbounds i8, ptr %1206, i64 4
  %1261 = load i8, ptr %1260, align 1, !tbaa !12
  %1262 = zext i8 %1261 to i32
  %1263 = add nuw nsw i32 %1259, 1
  %1264 = add nuw nsw i32 %1263, %1262
  %1265 = lshr i32 %1264, 1
  %1266 = getelementptr inbounds i8, ptr %1204, i64 16
  %1267 = load i32, ptr %1266, align 4, !tbaa !6
  %1268 = mul i32 %1265, %1267
  %1269 = getelementptr inbounds i8, ptr %1205, i64 16
  %1270 = load i32, ptr %1269, align 4, !tbaa !6
  %1271 = add i32 %1268, %1270
  store i32 %1271, ptr %1269, align 4, !tbaa !6
  %1272 = zext i8 %1198 to i32
  %1273 = getelementptr inbounds i8, ptr %1206, i64 5
  %1274 = load i8, ptr %1273, align 1, !tbaa !12
  %1275 = zext i8 %1274 to i32
  %1276 = add nuw nsw i32 %1272, 1
  %1277 = add nuw nsw i32 %1276, %1275
  %1278 = lshr i32 %1277, 1
  %1279 = getelementptr inbounds i8, ptr %1204, i64 20
  %1280 = load i32, ptr %1279, align 4, !tbaa !6
  %1281 = mul i32 %1278, %1280
  %1282 = getelementptr inbounds i8, ptr %1205, i64 20
  %1283 = load i32, ptr %1282, align 4, !tbaa !6
  %1284 = add i32 %1281, %1283
  store i32 %1284, ptr %1282, align 4, !tbaa !6
  %1285 = zext i8 %1197 to i32
  %1286 = getelementptr inbounds i8, ptr %1206, i64 6
  %1287 = load i8, ptr %1286, align 1, !tbaa !12
  %1288 = zext i8 %1287 to i32
  %1289 = add nuw nsw i32 %1285, 1
  %1290 = add nuw nsw i32 %1289, %1288
  %1291 = lshr i32 %1290, 1
  %1292 = getelementptr inbounds i8, ptr %1204, i64 24
  %1293 = load i32, ptr %1292, align 4, !tbaa !6
  %1294 = mul i32 %1291, %1293
  %1295 = getelementptr inbounds i8, ptr %1205, i64 24
  %1296 = load i32, ptr %1295, align 4, !tbaa !6
  %1297 = add i32 %1294, %1296
  store i32 %1297, ptr %1295, align 4, !tbaa !6
  %1298 = getelementptr inbounds i8, ptr %1203, i64 7
  %1299 = load i8, ptr %1298, align 1, !tbaa !12
  %1300 = zext i8 %1299 to i32
  %1301 = getelementptr inbounds i8, ptr %1206, i64 7
  %1302 = load i8, ptr %1301, align 1, !tbaa !12
  %1303 = zext i8 %1302 to i32
  %1304 = add nuw nsw i32 %1300, 1
  %1305 = add nuw nsw i32 %1304, %1303
  %1306 = lshr i32 %1305, 1
  %1307 = getelementptr inbounds i8, ptr %1204, i64 28
  %1308 = load i32, ptr %1307, align 4, !tbaa !6
  %1309 = mul i32 %1306, %1308
  %1310 = getelementptr inbounds i8, ptr %1205, i64 28
  %1311 = load i32, ptr %1310, align 4, !tbaa !6
  %1312 = add i32 %1309, %1311
  store i32 %1312, ptr %1310, align 4, !tbaa !6
  %1313 = getelementptr inbounds i8, ptr %1205, i64 32
  %1314 = getelementptr inbounds i8, ptr %1204, i64 32
  %1315 = add nuw nsw i32 %1202, 1
  %1316 = icmp eq i32 %1315, 4
  br i1 %1316, label %1576, label %1196

1317:                                             ; preds = %1182
  %1318 = select i1 %1183, i1 true, i1 %956
  br i1 %1318, label %1423, label %1319

1319:                                             ; preds = %1317, %1319
  %1320 = phi i64 [ %1421, %1319 ], [ 0, %1317 ]
  %1321 = phi ptr [ %1419, %1319 ], [ %252, %1317 ]
  %1322 = phi ptr [ %1420, %1319 ], [ %6, %1317 ]
  %1323 = load i8, ptr %1321, align 1, !tbaa !12
  %1324 = zext i8 %1323 to i32
  %1325 = getelementptr inbounds i8, ptr %1321, i64 1
  %1326 = load i8, ptr %1325, align 1, !tbaa !12
  %1327 = zext i8 %1326 to i32
  %1328 = add nuw nsw i32 %1327, 1
  %1329 = add nuw nsw i32 %1328, %1324
  %1330 = lshr i32 %1329, 1
  %1331 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 1, i64 %1320, i64 0
  %1332 = load i32, ptr %1331, align 4, !tbaa !6
  %1333 = mul i32 %1330, %1332
  %1334 = load i32, ptr %1322, align 4, !tbaa !6
  %1335 = add i32 %1333, %1334
  store i32 %1335, ptr %1322, align 4, !tbaa !6
  %1336 = getelementptr inbounds i8, ptr %1321, i64 2
  %1337 = load i8, ptr %1336, align 1, !tbaa !12
  %1338 = zext i8 %1337 to i32
  %1339 = add nuw nsw i32 %1328, %1338
  %1340 = lshr i32 %1339, 1
  %1341 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 1, i64 %1320, i64 1
  %1342 = load i32, ptr %1341, align 4, !tbaa !6
  %1343 = mul i32 %1340, %1342
  %1344 = getelementptr inbounds i8, ptr %1322, i64 4
  %1345 = load i32, ptr %1344, align 4, !tbaa !6
  %1346 = add i32 %1343, %1345
  store i32 %1346, ptr %1344, align 4, !tbaa !6
  %1347 = getelementptr inbounds i8, ptr %1321, i64 3
  %1348 = load i8, ptr %1347, align 1, !tbaa !12
  %1349 = zext i8 %1348 to i32
  %1350 = add nuw nsw i32 %1338, 1
  %1351 = add nuw nsw i32 %1350, %1349
  %1352 = lshr i32 %1351, 1
  %1353 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 1, i64 %1320, i64 2
  %1354 = load i32, ptr %1353, align 4, !tbaa !6
  %1355 = mul i32 %1352, %1354
  %1356 = getelementptr inbounds i8, ptr %1322, i64 8
  %1357 = load i32, ptr %1356, align 4, !tbaa !6
  %1358 = add i32 %1355, %1357
  store i32 %1358, ptr %1356, align 4, !tbaa !6
  %1359 = getelementptr inbounds i8, ptr %1321, i64 4
  %1360 = load i8, ptr %1359, align 1, !tbaa !12
  %1361 = zext i8 %1360 to i32
  %1362 = add nuw nsw i32 %1349, 1
  %1363 = add nuw nsw i32 %1362, %1361
  %1364 = lshr i32 %1363, 1
  %1365 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 1, i64 %1320, i64 3
  %1366 = load i32, ptr %1365, align 4, !tbaa !6
  %1367 = mul i32 %1364, %1366
  %1368 = getelementptr inbounds i8, ptr %1322, i64 12
  %1369 = load i32, ptr %1368, align 4, !tbaa !6
  %1370 = add i32 %1367, %1369
  store i32 %1370, ptr %1368, align 4, !tbaa !6
  %1371 = getelementptr inbounds i8, ptr %1321, i64 5
  %1372 = load i8, ptr %1371, align 1, !tbaa !12
  %1373 = zext i8 %1372 to i32
  %1374 = add nuw nsw i32 %1361, 1
  %1375 = add nuw nsw i32 %1374, %1373
  %1376 = lshr i32 %1375, 1
  %1377 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 1, i64 %1320, i64 4
  %1378 = load i32, ptr %1377, align 4, !tbaa !6
  %1379 = mul i32 %1376, %1378
  %1380 = getelementptr inbounds i8, ptr %1322, i64 16
  %1381 = load i32, ptr %1380, align 4, !tbaa !6
  %1382 = add i32 %1379, %1381
  store i32 %1382, ptr %1380, align 4, !tbaa !6
  %1383 = getelementptr inbounds i8, ptr %1321, i64 6
  %1384 = load i8, ptr %1383, align 1, !tbaa !12
  %1385 = zext i8 %1384 to i32
  %1386 = add nuw nsw i32 %1373, 1
  %1387 = add nuw nsw i32 %1386, %1385
  %1388 = lshr i32 %1387, 1
  %1389 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 1, i64 %1320, i64 5
  %1390 = load i32, ptr %1389, align 4, !tbaa !6
  %1391 = mul i32 %1388, %1390
  %1392 = getelementptr inbounds i8, ptr %1322, i64 20
  %1393 = load i32, ptr %1392, align 4, !tbaa !6
  %1394 = add i32 %1391, %1393
  store i32 %1394, ptr %1392, align 4, !tbaa !6
  %1395 = getelementptr inbounds i8, ptr %1321, i64 7
  %1396 = load i8, ptr %1395, align 1, !tbaa !12
  %1397 = zext i8 %1396 to i32
  %1398 = add nuw nsw i32 %1385, 1
  %1399 = add nuw nsw i32 %1398, %1397
  %1400 = lshr i32 %1399, 1
  %1401 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 1, i64 %1320, i64 6
  %1402 = load i32, ptr %1401, align 4, !tbaa !6
  %1403 = mul i32 %1400, %1402
  %1404 = getelementptr inbounds i8, ptr %1322, i64 24
  %1405 = load i32, ptr %1404, align 4, !tbaa !6
  %1406 = add i32 %1403, %1405
  store i32 %1406, ptr %1404, align 4, !tbaa !6
  %1407 = getelementptr inbounds i8, ptr %1321, i64 8
  %1408 = load i8, ptr %1407, align 1, !tbaa !12
  %1409 = zext i8 %1408 to i32
  %1410 = add nuw nsw i32 %1397, 1
  %1411 = add nuw nsw i32 %1410, %1409
  %1412 = lshr i32 %1411, 1
  %1413 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 1, i64 %1320, i64 7
  %1414 = load i32, ptr %1413, align 4, !tbaa !6
  %1415 = mul i32 %1412, %1414
  %1416 = getelementptr inbounds i8, ptr %1322, i64 28
  %1417 = load i32, ptr %1416, align 4, !tbaa !6
  %1418 = add i32 %1415, %1417
  store i32 %1418, ptr %1416, align 4, !tbaa !6
  %1419 = getelementptr inbounds i8, ptr %1321, i64 %33
  %1420 = getelementptr inbounds i8, ptr %1322, i64 32
  %1421 = add nuw nsw i64 %1320, 1
  %1422 = icmp eq i64 %1421, 4
  br i1 %1422, label %1576, label %1319

1423:                                             ; preds = %1317
  %1424 = getelementptr inbounds i8, ptr %252, i64 4
  %1425 = load i8, ptr %1424, align 1, !tbaa !12
  %1426 = getelementptr inbounds i8, ptr %252, i64 5
  %1427 = load i8, ptr %1426, align 1, !tbaa !12
  %1428 = getelementptr inbounds i8, ptr %252, i64 6
  %1429 = load i8, ptr %1428, align 1, !tbaa !12
  br label %1430

1430:                                             ; preds = %1430, %1423
  %1431 = phi i8 [ %1524, %1430 ], [ %1429, %1423 ]
  %1432 = phi i8 [ %1508, %1430 ], [ %1427, %1423 ]
  %1433 = phi i8 [ %1493, %1430 ], [ %1425, %1423 ]
  %1434 = phi i32 [ %1574, %1430 ], [ 0, %1423 ]
  %1435 = phi ptr [ %1438, %1430 ], [ %252, %1423 ]
  %1436 = phi ptr [ %1573, %1430 ], [ getelementptr inbounds (i8, ptr @OM, i64 256), %1423 ]
  %1437 = phi ptr [ %1572, %1430 ], [ %6, %1423 ]
  %1438 = getelementptr i8, ptr %1435, i64 %33
  %1439 = load i8, ptr %1435, align 1, !tbaa !12
  %1440 = zext i8 %1439 to i32
  %1441 = load i8, ptr %1438, align 1, !tbaa !12
  %1442 = zext i8 %1441 to i32
  %1443 = getelementptr inbounds i8, ptr %1435, i64 1
  %1444 = load i8, ptr %1443, align 1, !tbaa !12
  %1445 = zext i8 %1444 to i32
  %1446 = getelementptr inbounds i8, ptr %1438, i64 1
  %1447 = load i8, ptr %1446, align 1, !tbaa !12
  %1448 = zext i8 %1447 to i32
  %1449 = add nuw nsw i32 %1445, 2
  %1450 = add nuw nsw i32 %1449, %1440
  %1451 = add nuw nsw i32 %1450, %1442
  %1452 = add nuw nsw i32 %1451, %1448
  %1453 = lshr i32 %1452, 2
  %1454 = load i32, ptr %1436, align 4, !tbaa !6
  %1455 = mul i32 %1453, %1454
  %1456 = load i32, ptr %1437, align 4, !tbaa !6
  %1457 = add i32 %1455, %1456
  store i32 %1457, ptr %1437, align 4, !tbaa !6
  %1458 = getelementptr inbounds i8, ptr %1435, i64 2
  %1459 = load i8, ptr %1458, align 1, !tbaa !12
  %1460 = zext i8 %1459 to i32
  %1461 = getelementptr inbounds i8, ptr %1438, i64 2
  %1462 = load i8, ptr %1461, align 1, !tbaa !12
  %1463 = zext i8 %1462 to i32
  %1464 = add nuw nsw i32 %1449, %1448
  %1465 = add nuw nsw i32 %1464, %1460
  %1466 = add nuw nsw i32 %1465, %1463
  %1467 = lshr i32 %1466, 2
  %1468 = getelementptr inbounds i8, ptr %1436, i64 4
  %1469 = load i32, ptr %1468, align 4, !tbaa !6
  %1470 = mul i32 %1467, %1469
  %1471 = getelementptr inbounds i8, ptr %1437, i64 4
  %1472 = load i32, ptr %1471, align 4, !tbaa !6
  %1473 = add i32 %1470, %1472
  store i32 %1473, ptr %1471, align 4, !tbaa !6
  %1474 = getelementptr inbounds i8, ptr %1435, i64 3
  %1475 = load i8, ptr %1474, align 1, !tbaa !12
  %1476 = zext i8 %1475 to i32
  %1477 = getelementptr inbounds i8, ptr %1438, i64 3
  %1478 = load i8, ptr %1477, align 1, !tbaa !12
  %1479 = zext i8 %1478 to i32
  %1480 = add nuw nsw i32 %1460, 2
  %1481 = add nuw nsw i32 %1480, %1463
  %1482 = add nuw nsw i32 %1481, %1476
  %1483 = add nuw nsw i32 %1482, %1479
  %1484 = lshr i32 %1483, 2
  %1485 = getelementptr inbounds i8, ptr %1436, i64 8
  %1486 = load i32, ptr %1485, align 4, !tbaa !6
  %1487 = mul i32 %1484, %1486
  %1488 = getelementptr inbounds i8, ptr %1437, i64 8
  %1489 = load i32, ptr %1488, align 4, !tbaa !6
  %1490 = add i32 %1487, %1489
  store i32 %1490, ptr %1488, align 4, !tbaa !6
  %1491 = zext i8 %1433 to i32
  %1492 = getelementptr inbounds i8, ptr %1438, i64 4
  %1493 = load i8, ptr %1492, align 1, !tbaa !12
  %1494 = zext i8 %1493 to i32
  %1495 = add nuw nsw i32 %1491, 2
  %1496 = add nuw nsw i32 %1495, %1476
  %1497 = add nuw nsw i32 %1496, %1479
  %1498 = add nuw nsw i32 %1497, %1494
  %1499 = lshr i32 %1498, 2
  %1500 = getelementptr inbounds i8, ptr %1436, i64 12
  %1501 = load i32, ptr %1500, align 4, !tbaa !6
  %1502 = mul i32 %1499, %1501
  %1503 = getelementptr inbounds i8, ptr %1437, i64 12
  %1504 = load i32, ptr %1503, align 4, !tbaa !6
  %1505 = add i32 %1502, %1504
  store i32 %1505, ptr %1503, align 4, !tbaa !6
  %1506 = zext i8 %1432 to i32
  %1507 = getelementptr inbounds i8, ptr %1438, i64 5
  %1508 = load i8, ptr %1507, align 1, !tbaa !12
  %1509 = zext i8 %1508 to i32
  %1510 = add nuw nsw i32 %1506, 2
  %1511 = add nuw nsw i32 %1510, %1491
  %1512 = add nuw nsw i32 %1511, %1494
  %1513 = add nuw nsw i32 %1512, %1509
  %1514 = lshr i32 %1513, 2
  %1515 = getelementptr inbounds i8, ptr %1436, i64 16
  %1516 = load i32, ptr %1515, align 4, !tbaa !6
  %1517 = mul i32 %1514, %1516
  %1518 = getelementptr inbounds i8, ptr %1437, i64 16
  %1519 = load i32, ptr %1518, align 4, !tbaa !6
  %1520 = add i32 %1517, %1519
  store i32 %1520, ptr %1518, align 4, !tbaa !6
  %1521 = getelementptr inbounds i8, ptr %1435, i64 6
  %1522 = zext i8 %1431 to i32
  %1523 = getelementptr inbounds i8, ptr %1438, i64 6
  %1524 = load i8, ptr %1523, align 1, !tbaa !12
  %1525 = zext i8 %1524 to i32
  %1526 = add nuw nsw i32 %1510, %1522
  %1527 = add nuw nsw i32 %1526, %1509
  %1528 = add nuw nsw i32 %1527, %1525
  %1529 = lshr i32 %1528, 2
  %1530 = getelementptr inbounds i8, ptr %1436, i64 20
  %1531 = load i32, ptr %1530, align 4, !tbaa !6
  %1532 = mul i32 %1529, %1531
  %1533 = getelementptr inbounds i8, ptr %1437, i64 20
  %1534 = load i32, ptr %1533, align 4, !tbaa !6
  %1535 = add i32 %1532, %1534
  store i32 %1535, ptr %1533, align 4, !tbaa !6
  %1536 = load i8, ptr %1521, align 1, !tbaa !12
  %1537 = zext i8 %1536 to i32
  %1538 = getelementptr inbounds i8, ptr %1435, i64 7
  %1539 = load i8, ptr %1538, align 1, !tbaa !12
  %1540 = zext i8 %1539 to i32
  %1541 = getelementptr inbounds i8, ptr %1438, i64 7
  %1542 = load i8, ptr %1541, align 1, !tbaa !12
  %1543 = zext i8 %1542 to i32
  %1544 = add nuw nsw i32 %1525, 2
  %1545 = add nuw nsw i32 %1544, %1537
  %1546 = add nuw nsw i32 %1545, %1540
  %1547 = add nuw nsw i32 %1546, %1543
  %1548 = lshr i32 %1547, 2
  %1549 = getelementptr inbounds i8, ptr %1436, i64 24
  %1550 = load i32, ptr %1549, align 4, !tbaa !6
  %1551 = mul i32 %1548, %1550
  %1552 = getelementptr inbounds i8, ptr %1437, i64 24
  %1553 = load i32, ptr %1552, align 4, !tbaa !6
  %1554 = add i32 %1551, %1553
  store i32 %1554, ptr %1552, align 4, !tbaa !6
  %1555 = getelementptr inbounds i8, ptr %1435, i64 8
  %1556 = load i8, ptr %1555, align 1, !tbaa !12
  %1557 = zext i8 %1556 to i32
  %1558 = getelementptr inbounds i8, ptr %1438, i64 8
  %1559 = load i8, ptr %1558, align 1, !tbaa !12
  %1560 = zext i8 %1559 to i32
  %1561 = add nuw nsw i32 %1540, 2
  %1562 = add nuw nsw i32 %1561, %1543
  %1563 = add nuw nsw i32 %1562, %1557
  %1564 = add nuw nsw i32 %1563, %1560
  %1565 = lshr i32 %1564, 2
  %1566 = getelementptr inbounds i8, ptr %1436, i64 28
  %1567 = load i32, ptr %1566, align 4, !tbaa !6
  %1568 = mul i32 %1565, %1567
  %1569 = getelementptr inbounds i8, ptr %1437, i64 28
  %1570 = load i32, ptr %1569, align 4, !tbaa !6
  %1571 = add i32 %1568, %1570
  store i32 %1571, ptr %1569, align 4, !tbaa !6
  %1572 = getelementptr inbounds i8, ptr %1437, i64 32
  %1573 = getelementptr inbounds i8, ptr %1436, i64 32
  %1574 = add nuw nsw i32 %1434, 1
  %1575 = icmp eq i32 %1574, 4
  br i1 %1575, label %1576, label %1430

1576:                                             ; preds = %1319, %1430, %1196, %958
  %1577 = icmp ne i32 %254, 0
  %1578 = icmp ne i32 %256, 0
  %1579 = select i1 %1577, i1 true, i1 %1578
  br i1 %1579, label %1805, label %1580

1580:                                             ; preds = %1576
  %1581 = getelementptr inbounds i8, ptr %262, i64 %98
  %1582 = load i8, ptr %1581, align 1, !tbaa !12
  %1583 = zext i8 %1582 to i32
  %1584 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 640), align 4, !tbaa !6
  %1585 = mul nsw i32 %1584, %1583
  %1586 = load i32, ptr %65, align 4, !tbaa !6
  %1587 = add nsw i32 %1586, %1585
  store i32 %1587, ptr %65, align 4, !tbaa !6
  %1588 = getelementptr inbounds i8, ptr %1581, i64 1
  %1589 = load i8, ptr %1588, align 1, !tbaa !12
  %1590 = zext i8 %1589 to i32
  %1591 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 644), align 4, !tbaa !6
  %1592 = mul nsw i32 %1591, %1590
  %1593 = load i32, ptr %66, align 4, !tbaa !6
  %1594 = add nsw i32 %1593, %1592
  store i32 %1594, ptr %66, align 4, !tbaa !6
  %1595 = getelementptr inbounds i8, ptr %1581, i64 2
  %1596 = load i8, ptr %1595, align 1, !tbaa !12
  %1597 = zext i8 %1596 to i32
  %1598 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 648), align 4, !tbaa !6
  %1599 = mul nsw i32 %1598, %1597
  %1600 = load i32, ptr %67, align 4, !tbaa !6
  %1601 = add nsw i32 %1600, %1599
  store i32 %1601, ptr %67, align 4, !tbaa !6
  %1602 = getelementptr inbounds i8, ptr %1581, i64 3
  %1603 = load i8, ptr %1602, align 1, !tbaa !12
  %1604 = zext i8 %1603 to i32
  %1605 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 652), align 4, !tbaa !6
  %1606 = mul nsw i32 %1605, %1604
  %1607 = load i32, ptr %68, align 4, !tbaa !6
  %1608 = add nsw i32 %1607, %1606
  store i32 %1608, ptr %68, align 4, !tbaa !6
  %1609 = getelementptr inbounds i8, ptr %1581, i64 4
  %1610 = load i8, ptr %1609, align 1, !tbaa !12
  %1611 = zext i8 %1610 to i32
  %1612 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 656), align 4, !tbaa !6
  %1613 = mul nsw i32 %1612, %1611
  %1614 = load i32, ptr %69, align 4, !tbaa !6
  %1615 = add nsw i32 %1614, %1613
  store i32 %1615, ptr %69, align 4, !tbaa !6
  %1616 = getelementptr inbounds i8, ptr %1581, i64 5
  %1617 = load i8, ptr %1616, align 1, !tbaa !12
  %1618 = zext i8 %1617 to i32
  %1619 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 660), align 4, !tbaa !6
  %1620 = mul nsw i32 %1619, %1618
  %1621 = load i32, ptr %70, align 4, !tbaa !6
  %1622 = add nsw i32 %1621, %1620
  store i32 %1622, ptr %70, align 4, !tbaa !6
  %1623 = getelementptr inbounds i8, ptr %1581, i64 6
  %1624 = load i8, ptr %1623, align 1, !tbaa !12
  %1625 = zext i8 %1624 to i32
  %1626 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 664), align 4, !tbaa !6
  %1627 = mul nsw i32 %1626, %1625
  %1628 = load i32, ptr %71, align 4, !tbaa !6
  %1629 = add nsw i32 %1628, %1627
  store i32 %1629, ptr %71, align 4, !tbaa !6
  %1630 = getelementptr inbounds i8, ptr %1581, i64 7
  %1631 = load i8, ptr %1630, align 1, !tbaa !12
  %1632 = zext i8 %1631 to i32
  %1633 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 668), align 4, !tbaa !6
  %1634 = mul nsw i32 %1633, %1632
  %1635 = load i32, ptr %72, align 4, !tbaa !6
  %1636 = add nsw i32 %1635, %1634
  store i32 %1636, ptr %72, align 4, !tbaa !6
  %1637 = getelementptr inbounds i8, ptr %1581, i64 %33
  %1638 = load i8, ptr %1637, align 1, !tbaa !12
  %1639 = zext i8 %1638 to i32
  %1640 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 672), align 4, !tbaa !6
  %1641 = mul nsw i32 %1640, %1639
  %1642 = load i32, ptr %73, align 4, !tbaa !6
  %1643 = add nsw i32 %1642, %1641
  store i32 %1643, ptr %73, align 4, !tbaa !6
  %1644 = getelementptr inbounds i8, ptr %1637, i64 1
  %1645 = load i8, ptr %1644, align 1, !tbaa !12
  %1646 = zext i8 %1645 to i32
  %1647 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 676), align 4, !tbaa !6
  %1648 = mul nsw i32 %1647, %1646
  %1649 = load i32, ptr %74, align 4, !tbaa !6
  %1650 = add nsw i32 %1649, %1648
  store i32 %1650, ptr %74, align 4, !tbaa !6
  %1651 = getelementptr inbounds i8, ptr %1637, i64 2
  %1652 = load i8, ptr %1651, align 1, !tbaa !12
  %1653 = zext i8 %1652 to i32
  %1654 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 680), align 4, !tbaa !6
  %1655 = mul nsw i32 %1654, %1653
  %1656 = load i32, ptr %75, align 4, !tbaa !6
  %1657 = add nsw i32 %1656, %1655
  store i32 %1657, ptr %75, align 4, !tbaa !6
  %1658 = getelementptr inbounds i8, ptr %1637, i64 3
  %1659 = load i8, ptr %1658, align 1, !tbaa !12
  %1660 = zext i8 %1659 to i32
  %1661 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 684), align 4, !tbaa !6
  %1662 = mul nsw i32 %1661, %1660
  %1663 = load i32, ptr %76, align 4, !tbaa !6
  %1664 = add nsw i32 %1663, %1662
  store i32 %1664, ptr %76, align 4, !tbaa !6
  %1665 = getelementptr inbounds i8, ptr %1637, i64 4
  %1666 = load i8, ptr %1665, align 1, !tbaa !12
  %1667 = zext i8 %1666 to i32
  %1668 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 688), align 4, !tbaa !6
  %1669 = mul nsw i32 %1668, %1667
  %1670 = load i32, ptr %77, align 4, !tbaa !6
  %1671 = add nsw i32 %1670, %1669
  store i32 %1671, ptr %77, align 4, !tbaa !6
  %1672 = getelementptr inbounds i8, ptr %1637, i64 5
  %1673 = load i8, ptr %1672, align 1, !tbaa !12
  %1674 = zext i8 %1673 to i32
  %1675 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 692), align 4, !tbaa !6
  %1676 = mul nsw i32 %1675, %1674
  %1677 = load i32, ptr %78, align 4, !tbaa !6
  %1678 = add nsw i32 %1677, %1676
  store i32 %1678, ptr %78, align 4, !tbaa !6
  %1679 = getelementptr inbounds i8, ptr %1637, i64 6
  %1680 = load i8, ptr %1679, align 1, !tbaa !12
  %1681 = zext i8 %1680 to i32
  %1682 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 696), align 4, !tbaa !6
  %1683 = mul nsw i32 %1682, %1681
  %1684 = load i32, ptr %79, align 4, !tbaa !6
  %1685 = add nsw i32 %1684, %1683
  store i32 %1685, ptr %79, align 4, !tbaa !6
  %1686 = getelementptr inbounds i8, ptr %1637, i64 7
  %1687 = load i8, ptr %1686, align 1, !tbaa !12
  %1688 = zext i8 %1687 to i32
  %1689 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 700), align 4, !tbaa !6
  %1690 = mul nsw i32 %1689, %1688
  %1691 = load i32, ptr %80, align 4, !tbaa !6
  %1692 = add nsw i32 %1691, %1690
  store i32 %1692, ptr %80, align 4, !tbaa !6
  %1693 = getelementptr inbounds i8, ptr %1637, i64 %33
  %1694 = load i8, ptr %1693, align 1, !tbaa !12
  %1695 = zext i8 %1694 to i32
  %1696 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 704), align 4, !tbaa !6
  %1697 = mul nsw i32 %1696, %1695
  %1698 = load i32, ptr %81, align 4, !tbaa !6
  %1699 = add nsw i32 %1698, %1697
  store i32 %1699, ptr %81, align 4, !tbaa !6
  %1700 = getelementptr inbounds i8, ptr %1693, i64 1
  %1701 = load i8, ptr %1700, align 1, !tbaa !12
  %1702 = zext i8 %1701 to i32
  %1703 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 708), align 4, !tbaa !6
  %1704 = mul nsw i32 %1703, %1702
  %1705 = load i32, ptr %82, align 4, !tbaa !6
  %1706 = add nsw i32 %1705, %1704
  store i32 %1706, ptr %82, align 4, !tbaa !6
  %1707 = getelementptr inbounds i8, ptr %1693, i64 2
  %1708 = load i8, ptr %1707, align 1, !tbaa !12
  %1709 = zext i8 %1708 to i32
  %1710 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 712), align 4, !tbaa !6
  %1711 = mul nsw i32 %1710, %1709
  %1712 = load i32, ptr %83, align 4, !tbaa !6
  %1713 = add nsw i32 %1712, %1711
  store i32 %1713, ptr %83, align 4, !tbaa !6
  %1714 = getelementptr inbounds i8, ptr %1693, i64 3
  %1715 = load i8, ptr %1714, align 1, !tbaa !12
  %1716 = zext i8 %1715 to i32
  %1717 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 716), align 4, !tbaa !6
  %1718 = mul nsw i32 %1717, %1716
  %1719 = load i32, ptr %84, align 4, !tbaa !6
  %1720 = add nsw i32 %1719, %1718
  store i32 %1720, ptr %84, align 4, !tbaa !6
  %1721 = getelementptr inbounds i8, ptr %1693, i64 4
  %1722 = load i8, ptr %1721, align 1, !tbaa !12
  %1723 = zext i8 %1722 to i32
  %1724 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 720), align 4, !tbaa !6
  %1725 = mul nsw i32 %1724, %1723
  %1726 = load i32, ptr %85, align 4, !tbaa !6
  %1727 = add nsw i32 %1726, %1725
  store i32 %1727, ptr %85, align 4, !tbaa !6
  %1728 = getelementptr inbounds i8, ptr %1693, i64 5
  %1729 = load i8, ptr %1728, align 1, !tbaa !12
  %1730 = zext i8 %1729 to i32
  %1731 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 724), align 4, !tbaa !6
  %1732 = mul nsw i32 %1731, %1730
  %1733 = load i32, ptr %86, align 4, !tbaa !6
  %1734 = add nsw i32 %1733, %1732
  store i32 %1734, ptr %86, align 4, !tbaa !6
  %1735 = getelementptr inbounds i8, ptr %1693, i64 6
  %1736 = load i8, ptr %1735, align 1, !tbaa !12
  %1737 = zext i8 %1736 to i32
  %1738 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 728), align 4, !tbaa !6
  %1739 = mul nsw i32 %1738, %1737
  %1740 = load i32, ptr %87, align 4, !tbaa !6
  %1741 = add nsw i32 %1740, %1739
  store i32 %1741, ptr %87, align 4, !tbaa !6
  %1742 = getelementptr inbounds i8, ptr %1693, i64 7
  %1743 = load i8, ptr %1742, align 1, !tbaa !12
  %1744 = zext i8 %1743 to i32
  %1745 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 732), align 4, !tbaa !6
  %1746 = mul nsw i32 %1745, %1744
  %1747 = load i32, ptr %88, align 4, !tbaa !6
  %1748 = add nsw i32 %1747, %1746
  store i32 %1748, ptr %88, align 4, !tbaa !6
  %1749 = getelementptr inbounds i8, ptr %1693, i64 %33
  %1750 = load i8, ptr %1749, align 1, !tbaa !12
  %1751 = zext i8 %1750 to i32
  %1752 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 736), align 4, !tbaa !6
  %1753 = mul nsw i32 %1752, %1751
  %1754 = load i32, ptr %89, align 4, !tbaa !6
  %1755 = add nsw i32 %1754, %1753
  store i32 %1755, ptr %89, align 4, !tbaa !6
  %1756 = getelementptr inbounds i8, ptr %1749, i64 1
  %1757 = load i8, ptr %1756, align 1, !tbaa !12
  %1758 = zext i8 %1757 to i32
  %1759 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 740), align 4, !tbaa !6
  %1760 = mul nsw i32 %1759, %1758
  %1761 = load i32, ptr %90, align 4, !tbaa !6
  %1762 = add nsw i32 %1761, %1760
  store i32 %1762, ptr %90, align 4, !tbaa !6
  %1763 = getelementptr inbounds i8, ptr %1749, i64 2
  %1764 = load i8, ptr %1763, align 1, !tbaa !12
  %1765 = zext i8 %1764 to i32
  %1766 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 744), align 4, !tbaa !6
  %1767 = mul nsw i32 %1766, %1765
  %1768 = load i32, ptr %91, align 4, !tbaa !6
  %1769 = add nsw i32 %1768, %1767
  store i32 %1769, ptr %91, align 4, !tbaa !6
  %1770 = getelementptr inbounds i8, ptr %1749, i64 3
  %1771 = load i8, ptr %1770, align 1, !tbaa !12
  %1772 = zext i8 %1771 to i32
  %1773 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 748), align 4, !tbaa !6
  %1774 = mul nsw i32 %1773, %1772
  %1775 = load i32, ptr %92, align 4, !tbaa !6
  %1776 = add nsw i32 %1775, %1774
  store i32 %1776, ptr %92, align 4, !tbaa !6
  %1777 = getelementptr inbounds i8, ptr %1749, i64 4
  %1778 = load i8, ptr %1777, align 1, !tbaa !12
  %1779 = zext i8 %1778 to i32
  %1780 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 752), align 4, !tbaa !6
  %1781 = mul nsw i32 %1780, %1779
  %1782 = load i32, ptr %93, align 4, !tbaa !6
  %1783 = add nsw i32 %1782, %1781
  store i32 %1783, ptr %93, align 4, !tbaa !6
  %1784 = getelementptr inbounds i8, ptr %1749, i64 5
  %1785 = load i8, ptr %1784, align 1, !tbaa !12
  %1786 = zext i8 %1785 to i32
  %1787 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 756), align 4, !tbaa !6
  %1788 = mul nsw i32 %1787, %1786
  %1789 = load i32, ptr %94, align 4, !tbaa !6
  %1790 = add nsw i32 %1789, %1788
  store i32 %1790, ptr %94, align 4, !tbaa !6
  %1791 = getelementptr inbounds i8, ptr %1749, i64 6
  %1792 = load i8, ptr %1791, align 1, !tbaa !12
  %1793 = zext i8 %1792 to i32
  %1794 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 760), align 4, !tbaa !6
  %1795 = mul nsw i32 %1794, %1793
  %1796 = load i32, ptr %95, align 4, !tbaa !6
  %1797 = add nsw i32 %1796, %1795
  store i32 %1797, ptr %95, align 4, !tbaa !6
  %1798 = getelementptr inbounds i8, ptr %1749, i64 7
  %1799 = load i8, ptr %1798, align 1, !tbaa !12
  %1800 = zext i8 %1799 to i32
  %1801 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 764), align 4, !tbaa !6
  %1802 = mul nsw i32 %1801, %1800
  %1803 = load i32, ptr %96, align 4, !tbaa !6
  %1804 = add nsw i32 %1803, %1802
  store i32 %1804, ptr %96, align 4, !tbaa !6
  br label %2201

1805:                                             ; preds = %1576
  %1806 = icmp eq i32 %254, 0
  %1807 = select i1 %1806, i1 %1578, i1 false
  br i1 %1807, label %1808, label %1941

1808:                                             ; preds = %1805
  %1809 = getelementptr inbounds i8, ptr %262, i64 %98
  %1810 = getelementptr inbounds i8, ptr %1809, i64 2
  %1811 = load i8, ptr %1810, align 1, !tbaa !12
  %1812 = getelementptr inbounds i8, ptr %1809, i64 3
  %1813 = load i8, ptr %1812, align 1, !tbaa !12
  %1814 = getelementptr inbounds i8, ptr %1809, i64 4
  %1815 = load i8, ptr %1814, align 1, !tbaa !12
  %1816 = getelementptr inbounds i8, ptr %1809, i64 5
  %1817 = load i8, ptr %1816, align 1, !tbaa !12
  %1818 = getelementptr inbounds i8, ptr %1809, i64 6
  %1819 = load i8, ptr %1818, align 1, !tbaa !12
  br label %1820

1820:                                             ; preds = %1820, %1808
  %1821 = phi i8 [ %1911, %1820 ], [ %1819, %1808 ]
  %1822 = phi i8 [ %1898, %1820 ], [ %1817, %1808 ]
  %1823 = phi i8 [ %1885, %1820 ], [ %1815, %1808 ]
  %1824 = phi i8 [ %1872, %1820 ], [ %1813, %1808 ]
  %1825 = phi i8 [ %1859, %1820 ], [ %1811, %1808 ]
  %1826 = phi i32 [ %1939, %1820 ], [ 4, %1808 ]
  %1827 = phi ptr [ %1830, %1820 ], [ %1809, %1808 ]
  %1828 = phi ptr [ %1938, %1820 ], [ getelementptr inbounds (i8, ptr @OM, i64 640), %1808 ]
  %1829 = phi ptr [ %1937, %1820 ], [ %65, %1808 ]
  %1830 = getelementptr i8, ptr %1827, i64 %33
  %1831 = load i8, ptr %1827, align 1, !tbaa !12
  %1832 = zext i8 %1831 to i32
  %1833 = load i8, ptr %1830, align 1, !tbaa !12
  %1834 = zext i8 %1833 to i32
  %1835 = add nuw nsw i32 %1832, 1
  %1836 = add nuw nsw i32 %1835, %1834
  %1837 = lshr i32 %1836, 1
  %1838 = load i32, ptr %1828, align 4, !tbaa !6
  %1839 = mul i32 %1837, %1838
  %1840 = load i32, ptr %1829, align 4, !tbaa !6
  %1841 = add i32 %1839, %1840
  store i32 %1841, ptr %1829, align 4, !tbaa !6
  %1842 = getelementptr inbounds i8, ptr %1827, i64 1
  %1843 = load i8, ptr %1842, align 1, !tbaa !12
  %1844 = zext i8 %1843 to i32
  %1845 = getelementptr inbounds i8, ptr %1830, i64 1
  %1846 = load i8, ptr %1845, align 1, !tbaa !12
  %1847 = zext i8 %1846 to i32
  %1848 = add nuw nsw i32 %1844, 1
  %1849 = add nuw nsw i32 %1848, %1847
  %1850 = lshr i32 %1849, 1
  %1851 = getelementptr inbounds i8, ptr %1828, i64 4
  %1852 = load i32, ptr %1851, align 4, !tbaa !6
  %1853 = mul i32 %1850, %1852
  %1854 = getelementptr inbounds i8, ptr %1829, i64 4
  %1855 = load i32, ptr %1854, align 4, !tbaa !6
  %1856 = add i32 %1853, %1855
  store i32 %1856, ptr %1854, align 4, !tbaa !6
  %1857 = zext i8 %1825 to i32
  %1858 = getelementptr inbounds i8, ptr %1830, i64 2
  %1859 = load i8, ptr %1858, align 1, !tbaa !12
  %1860 = zext i8 %1859 to i32
  %1861 = add nuw nsw i32 %1857, 1
  %1862 = add nuw nsw i32 %1861, %1860
  %1863 = lshr i32 %1862, 1
  %1864 = getelementptr inbounds i8, ptr %1828, i64 8
  %1865 = load i32, ptr %1864, align 4, !tbaa !6
  %1866 = mul i32 %1863, %1865
  %1867 = getelementptr inbounds i8, ptr %1829, i64 8
  %1868 = load i32, ptr %1867, align 4, !tbaa !6
  %1869 = add i32 %1866, %1868
  store i32 %1869, ptr %1867, align 4, !tbaa !6
  %1870 = zext i8 %1824 to i32
  %1871 = getelementptr inbounds i8, ptr %1830, i64 3
  %1872 = load i8, ptr %1871, align 1, !tbaa !12
  %1873 = zext i8 %1872 to i32
  %1874 = add nuw nsw i32 %1870, 1
  %1875 = add nuw nsw i32 %1874, %1873
  %1876 = lshr i32 %1875, 1
  %1877 = getelementptr inbounds i8, ptr %1828, i64 12
  %1878 = load i32, ptr %1877, align 4, !tbaa !6
  %1879 = mul i32 %1876, %1878
  %1880 = getelementptr inbounds i8, ptr %1829, i64 12
  %1881 = load i32, ptr %1880, align 4, !tbaa !6
  %1882 = add i32 %1879, %1881
  store i32 %1882, ptr %1880, align 4, !tbaa !6
  %1883 = zext i8 %1823 to i32
  %1884 = getelementptr inbounds i8, ptr %1830, i64 4
  %1885 = load i8, ptr %1884, align 1, !tbaa !12
  %1886 = zext i8 %1885 to i32
  %1887 = add nuw nsw i32 %1883, 1
  %1888 = add nuw nsw i32 %1887, %1886
  %1889 = lshr i32 %1888, 1
  %1890 = getelementptr inbounds i8, ptr %1828, i64 16
  %1891 = load i32, ptr %1890, align 4, !tbaa !6
  %1892 = mul i32 %1889, %1891
  %1893 = getelementptr inbounds i8, ptr %1829, i64 16
  %1894 = load i32, ptr %1893, align 4, !tbaa !6
  %1895 = add i32 %1892, %1894
  store i32 %1895, ptr %1893, align 4, !tbaa !6
  %1896 = zext i8 %1822 to i32
  %1897 = getelementptr inbounds i8, ptr %1830, i64 5
  %1898 = load i8, ptr %1897, align 1, !tbaa !12
  %1899 = zext i8 %1898 to i32
  %1900 = add nuw nsw i32 %1896, 1
  %1901 = add nuw nsw i32 %1900, %1899
  %1902 = lshr i32 %1901, 1
  %1903 = getelementptr inbounds i8, ptr %1828, i64 20
  %1904 = load i32, ptr %1903, align 4, !tbaa !6
  %1905 = mul i32 %1902, %1904
  %1906 = getelementptr inbounds i8, ptr %1829, i64 20
  %1907 = load i32, ptr %1906, align 4, !tbaa !6
  %1908 = add i32 %1905, %1907
  store i32 %1908, ptr %1906, align 4, !tbaa !6
  %1909 = zext i8 %1821 to i32
  %1910 = getelementptr inbounds i8, ptr %1830, i64 6
  %1911 = load i8, ptr %1910, align 1, !tbaa !12
  %1912 = zext i8 %1911 to i32
  %1913 = add nuw nsw i32 %1909, 1
  %1914 = add nuw nsw i32 %1913, %1912
  %1915 = lshr i32 %1914, 1
  %1916 = getelementptr inbounds i8, ptr %1828, i64 24
  %1917 = load i32, ptr %1916, align 4, !tbaa !6
  %1918 = mul i32 %1915, %1917
  %1919 = getelementptr inbounds i8, ptr %1829, i64 24
  %1920 = load i32, ptr %1919, align 4, !tbaa !6
  %1921 = add i32 %1918, %1920
  store i32 %1921, ptr %1919, align 4, !tbaa !6
  %1922 = getelementptr inbounds i8, ptr %1827, i64 7
  %1923 = load i8, ptr %1922, align 1, !tbaa !12
  %1924 = zext i8 %1923 to i32
  %1925 = getelementptr inbounds i8, ptr %1830, i64 7
  %1926 = load i8, ptr %1925, align 1, !tbaa !12
  %1927 = zext i8 %1926 to i32
  %1928 = add nuw nsw i32 %1924, 1
  %1929 = add nuw nsw i32 %1928, %1927
  %1930 = lshr i32 %1929, 1
  %1931 = getelementptr inbounds i8, ptr %1828, i64 28
  %1932 = load i32, ptr %1931, align 4, !tbaa !6
  %1933 = mul i32 %1930, %1932
  %1934 = getelementptr inbounds i8, ptr %1829, i64 28
  %1935 = load i32, ptr %1934, align 4, !tbaa !6
  %1936 = add i32 %1933, %1935
  store i32 %1936, ptr %1934, align 4, !tbaa !6
  %1937 = getelementptr inbounds i8, ptr %1829, i64 32
  %1938 = getelementptr inbounds i8, ptr %1828, i64 32
  %1939 = add nuw nsw i32 %1826, 1
  %1940 = icmp eq i32 %1939, 8
  br i1 %1940, label %2201, label %1820

1941:                                             ; preds = %1805
  %1942 = select i1 %1806, i1 true, i1 %1578
  %1943 = getelementptr inbounds i8, ptr %262, i64 %98
  br i1 %1942, label %2048, label %1944

1944:                                             ; preds = %1941, %1944
  %1945 = phi i64 [ %2046, %1944 ], [ 4, %1941 ]
  %1946 = phi ptr [ %2044, %1944 ], [ %1943, %1941 ]
  %1947 = phi ptr [ %2045, %1944 ], [ %65, %1941 ]
  %1948 = load i8, ptr %1946, align 1, !tbaa !12
  %1949 = zext i8 %1948 to i32
  %1950 = getelementptr inbounds i8, ptr %1946, i64 1
  %1951 = load i8, ptr %1950, align 1, !tbaa !12
  %1952 = zext i8 %1951 to i32
  %1953 = add nuw nsw i32 %1952, 1
  %1954 = add nuw nsw i32 %1953, %1949
  %1955 = lshr i32 %1954, 1
  %1956 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 2, i64 %1945, i64 0
  %1957 = load i32, ptr %1956, align 4, !tbaa !6
  %1958 = mul i32 %1955, %1957
  %1959 = load i32, ptr %1947, align 4, !tbaa !6
  %1960 = add i32 %1958, %1959
  store i32 %1960, ptr %1947, align 4, !tbaa !6
  %1961 = getelementptr inbounds i8, ptr %1946, i64 2
  %1962 = load i8, ptr %1961, align 1, !tbaa !12
  %1963 = zext i8 %1962 to i32
  %1964 = add nuw nsw i32 %1953, %1963
  %1965 = lshr i32 %1964, 1
  %1966 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 2, i64 %1945, i64 1
  %1967 = load i32, ptr %1966, align 4, !tbaa !6
  %1968 = mul i32 %1965, %1967
  %1969 = getelementptr inbounds i8, ptr %1947, i64 4
  %1970 = load i32, ptr %1969, align 4, !tbaa !6
  %1971 = add i32 %1968, %1970
  store i32 %1971, ptr %1969, align 4, !tbaa !6
  %1972 = getelementptr inbounds i8, ptr %1946, i64 3
  %1973 = load i8, ptr %1972, align 1, !tbaa !12
  %1974 = zext i8 %1973 to i32
  %1975 = add nuw nsw i32 %1963, 1
  %1976 = add nuw nsw i32 %1975, %1974
  %1977 = lshr i32 %1976, 1
  %1978 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 2, i64 %1945, i64 2
  %1979 = load i32, ptr %1978, align 4, !tbaa !6
  %1980 = mul i32 %1977, %1979
  %1981 = getelementptr inbounds i8, ptr %1947, i64 8
  %1982 = load i32, ptr %1981, align 4, !tbaa !6
  %1983 = add i32 %1980, %1982
  store i32 %1983, ptr %1981, align 4, !tbaa !6
  %1984 = getelementptr inbounds i8, ptr %1946, i64 4
  %1985 = load i8, ptr %1984, align 1, !tbaa !12
  %1986 = zext i8 %1985 to i32
  %1987 = add nuw nsw i32 %1974, 1
  %1988 = add nuw nsw i32 %1987, %1986
  %1989 = lshr i32 %1988, 1
  %1990 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 2, i64 %1945, i64 3
  %1991 = load i32, ptr %1990, align 4, !tbaa !6
  %1992 = mul i32 %1989, %1991
  %1993 = getelementptr inbounds i8, ptr %1947, i64 12
  %1994 = load i32, ptr %1993, align 4, !tbaa !6
  %1995 = add i32 %1992, %1994
  store i32 %1995, ptr %1993, align 4, !tbaa !6
  %1996 = getelementptr inbounds i8, ptr %1946, i64 5
  %1997 = load i8, ptr %1996, align 1, !tbaa !12
  %1998 = zext i8 %1997 to i32
  %1999 = add nuw nsw i32 %1986, 1
  %2000 = add nuw nsw i32 %1999, %1998
  %2001 = lshr i32 %2000, 1
  %2002 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 2, i64 %1945, i64 4
  %2003 = load i32, ptr %2002, align 4, !tbaa !6
  %2004 = mul i32 %2001, %2003
  %2005 = getelementptr inbounds i8, ptr %1947, i64 16
  %2006 = load i32, ptr %2005, align 4, !tbaa !6
  %2007 = add i32 %2004, %2006
  store i32 %2007, ptr %2005, align 4, !tbaa !6
  %2008 = getelementptr inbounds i8, ptr %1946, i64 6
  %2009 = load i8, ptr %2008, align 1, !tbaa !12
  %2010 = zext i8 %2009 to i32
  %2011 = add nuw nsw i32 %1998, 1
  %2012 = add nuw nsw i32 %2011, %2010
  %2013 = lshr i32 %2012, 1
  %2014 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 2, i64 %1945, i64 5
  %2015 = load i32, ptr %2014, align 4, !tbaa !6
  %2016 = mul i32 %2013, %2015
  %2017 = getelementptr inbounds i8, ptr %1947, i64 20
  %2018 = load i32, ptr %2017, align 4, !tbaa !6
  %2019 = add i32 %2016, %2018
  store i32 %2019, ptr %2017, align 4, !tbaa !6
  %2020 = getelementptr inbounds i8, ptr %1946, i64 7
  %2021 = load i8, ptr %2020, align 1, !tbaa !12
  %2022 = zext i8 %2021 to i32
  %2023 = add nuw nsw i32 %2010, 1
  %2024 = add nuw nsw i32 %2023, %2022
  %2025 = lshr i32 %2024, 1
  %2026 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 2, i64 %1945, i64 6
  %2027 = load i32, ptr %2026, align 4, !tbaa !6
  %2028 = mul i32 %2025, %2027
  %2029 = getelementptr inbounds i8, ptr %1947, i64 24
  %2030 = load i32, ptr %2029, align 4, !tbaa !6
  %2031 = add i32 %2028, %2030
  store i32 %2031, ptr %2029, align 4, !tbaa !6
  %2032 = getelementptr inbounds i8, ptr %1946, i64 8
  %2033 = load i8, ptr %2032, align 1, !tbaa !12
  %2034 = zext i8 %2033 to i32
  %2035 = add nuw nsw i32 %2022, 1
  %2036 = add nuw nsw i32 %2035, %2034
  %2037 = lshr i32 %2036, 1
  %2038 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 2, i64 %1945, i64 7
  %2039 = load i32, ptr %2038, align 4, !tbaa !6
  %2040 = mul i32 %2037, %2039
  %2041 = getelementptr inbounds i8, ptr %1947, i64 28
  %2042 = load i32, ptr %2041, align 4, !tbaa !6
  %2043 = add i32 %2040, %2042
  store i32 %2043, ptr %2041, align 4, !tbaa !6
  %2044 = getelementptr inbounds i8, ptr %1946, i64 %33
  %2045 = getelementptr inbounds i8, ptr %1947, i64 32
  %2046 = add nuw nsw i64 %1945, 1
  %2047 = icmp eq i64 %2046, 8
  br i1 %2047, label %2201, label %1944

2048:                                             ; preds = %1941
  %2049 = getelementptr inbounds i8, ptr %1943, i64 4
  %2050 = load i8, ptr %2049, align 1, !tbaa !12
  %2051 = getelementptr inbounds i8, ptr %1943, i64 5
  %2052 = load i8, ptr %2051, align 1, !tbaa !12
  %2053 = getelementptr inbounds i8, ptr %1943, i64 6
  %2054 = load i8, ptr %2053, align 1, !tbaa !12
  br label %2055

2055:                                             ; preds = %2055, %2048
  %2056 = phi i8 [ %2149, %2055 ], [ %2054, %2048 ]
  %2057 = phi i8 [ %2133, %2055 ], [ %2052, %2048 ]
  %2058 = phi i8 [ %2118, %2055 ], [ %2050, %2048 ]
  %2059 = phi i32 [ %2199, %2055 ], [ 4, %2048 ]
  %2060 = phi ptr [ %2063, %2055 ], [ %1943, %2048 ]
  %2061 = phi ptr [ %2198, %2055 ], [ getelementptr inbounds (i8, ptr @OM, i64 640), %2048 ]
  %2062 = phi ptr [ %2197, %2055 ], [ %65, %2048 ]
  %2063 = getelementptr i8, ptr %2060, i64 %33
  %2064 = load i8, ptr %2060, align 1, !tbaa !12
  %2065 = zext i8 %2064 to i32
  %2066 = load i8, ptr %2063, align 1, !tbaa !12
  %2067 = zext i8 %2066 to i32
  %2068 = getelementptr inbounds i8, ptr %2060, i64 1
  %2069 = load i8, ptr %2068, align 1, !tbaa !12
  %2070 = zext i8 %2069 to i32
  %2071 = getelementptr inbounds i8, ptr %2063, i64 1
  %2072 = load i8, ptr %2071, align 1, !tbaa !12
  %2073 = zext i8 %2072 to i32
  %2074 = add nuw nsw i32 %2070, 2
  %2075 = add nuw nsw i32 %2074, %2065
  %2076 = add nuw nsw i32 %2075, %2067
  %2077 = add nuw nsw i32 %2076, %2073
  %2078 = lshr i32 %2077, 2
  %2079 = load i32, ptr %2061, align 4, !tbaa !6
  %2080 = mul i32 %2078, %2079
  %2081 = load i32, ptr %2062, align 4, !tbaa !6
  %2082 = add i32 %2080, %2081
  store i32 %2082, ptr %2062, align 4, !tbaa !6
  %2083 = getelementptr inbounds i8, ptr %2060, i64 2
  %2084 = load i8, ptr %2083, align 1, !tbaa !12
  %2085 = zext i8 %2084 to i32
  %2086 = getelementptr inbounds i8, ptr %2063, i64 2
  %2087 = load i8, ptr %2086, align 1, !tbaa !12
  %2088 = zext i8 %2087 to i32
  %2089 = add nuw nsw i32 %2074, %2073
  %2090 = add nuw nsw i32 %2089, %2085
  %2091 = add nuw nsw i32 %2090, %2088
  %2092 = lshr i32 %2091, 2
  %2093 = getelementptr inbounds i8, ptr %2061, i64 4
  %2094 = load i32, ptr %2093, align 4, !tbaa !6
  %2095 = mul i32 %2092, %2094
  %2096 = getelementptr inbounds i8, ptr %2062, i64 4
  %2097 = load i32, ptr %2096, align 4, !tbaa !6
  %2098 = add i32 %2095, %2097
  store i32 %2098, ptr %2096, align 4, !tbaa !6
  %2099 = getelementptr inbounds i8, ptr %2060, i64 3
  %2100 = load i8, ptr %2099, align 1, !tbaa !12
  %2101 = zext i8 %2100 to i32
  %2102 = getelementptr inbounds i8, ptr %2063, i64 3
  %2103 = load i8, ptr %2102, align 1, !tbaa !12
  %2104 = zext i8 %2103 to i32
  %2105 = add nuw nsw i32 %2085, 2
  %2106 = add nuw nsw i32 %2105, %2088
  %2107 = add nuw nsw i32 %2106, %2101
  %2108 = add nuw nsw i32 %2107, %2104
  %2109 = lshr i32 %2108, 2
  %2110 = getelementptr inbounds i8, ptr %2061, i64 8
  %2111 = load i32, ptr %2110, align 4, !tbaa !6
  %2112 = mul i32 %2109, %2111
  %2113 = getelementptr inbounds i8, ptr %2062, i64 8
  %2114 = load i32, ptr %2113, align 4, !tbaa !6
  %2115 = add i32 %2112, %2114
  store i32 %2115, ptr %2113, align 4, !tbaa !6
  %2116 = zext i8 %2058 to i32
  %2117 = getelementptr inbounds i8, ptr %2063, i64 4
  %2118 = load i8, ptr %2117, align 1, !tbaa !12
  %2119 = zext i8 %2118 to i32
  %2120 = add nuw nsw i32 %2116, 2
  %2121 = add nuw nsw i32 %2120, %2101
  %2122 = add nuw nsw i32 %2121, %2104
  %2123 = add nuw nsw i32 %2122, %2119
  %2124 = lshr i32 %2123, 2
  %2125 = getelementptr inbounds i8, ptr %2061, i64 12
  %2126 = load i32, ptr %2125, align 4, !tbaa !6
  %2127 = mul i32 %2124, %2126
  %2128 = getelementptr inbounds i8, ptr %2062, i64 12
  %2129 = load i32, ptr %2128, align 4, !tbaa !6
  %2130 = add i32 %2127, %2129
  store i32 %2130, ptr %2128, align 4, !tbaa !6
  %2131 = zext i8 %2057 to i32
  %2132 = getelementptr inbounds i8, ptr %2063, i64 5
  %2133 = load i8, ptr %2132, align 1, !tbaa !12
  %2134 = zext i8 %2133 to i32
  %2135 = add nuw nsw i32 %2131, 2
  %2136 = add nuw nsw i32 %2135, %2116
  %2137 = add nuw nsw i32 %2136, %2119
  %2138 = add nuw nsw i32 %2137, %2134
  %2139 = lshr i32 %2138, 2
  %2140 = getelementptr inbounds i8, ptr %2061, i64 16
  %2141 = load i32, ptr %2140, align 4, !tbaa !6
  %2142 = mul i32 %2139, %2141
  %2143 = getelementptr inbounds i8, ptr %2062, i64 16
  %2144 = load i32, ptr %2143, align 4, !tbaa !6
  %2145 = add i32 %2142, %2144
  store i32 %2145, ptr %2143, align 4, !tbaa !6
  %2146 = getelementptr inbounds i8, ptr %2060, i64 6
  %2147 = zext i8 %2056 to i32
  %2148 = getelementptr inbounds i8, ptr %2063, i64 6
  %2149 = load i8, ptr %2148, align 1, !tbaa !12
  %2150 = zext i8 %2149 to i32
  %2151 = add nuw nsw i32 %2135, %2147
  %2152 = add nuw nsw i32 %2151, %2134
  %2153 = add nuw nsw i32 %2152, %2150
  %2154 = lshr i32 %2153, 2
  %2155 = getelementptr inbounds i8, ptr %2061, i64 20
  %2156 = load i32, ptr %2155, align 4, !tbaa !6
  %2157 = mul i32 %2154, %2156
  %2158 = getelementptr inbounds i8, ptr %2062, i64 20
  %2159 = load i32, ptr %2158, align 4, !tbaa !6
  %2160 = add i32 %2157, %2159
  store i32 %2160, ptr %2158, align 4, !tbaa !6
  %2161 = load i8, ptr %2146, align 1, !tbaa !12
  %2162 = zext i8 %2161 to i32
  %2163 = getelementptr inbounds i8, ptr %2060, i64 7
  %2164 = load i8, ptr %2163, align 1, !tbaa !12
  %2165 = zext i8 %2164 to i32
  %2166 = getelementptr inbounds i8, ptr %2063, i64 7
  %2167 = load i8, ptr %2166, align 1, !tbaa !12
  %2168 = zext i8 %2167 to i32
  %2169 = add nuw nsw i32 %2150, 2
  %2170 = add nuw nsw i32 %2169, %2162
  %2171 = add nuw nsw i32 %2170, %2165
  %2172 = add nuw nsw i32 %2171, %2168
  %2173 = lshr i32 %2172, 2
  %2174 = getelementptr inbounds i8, ptr %2061, i64 24
  %2175 = load i32, ptr %2174, align 4, !tbaa !6
  %2176 = mul i32 %2173, %2175
  %2177 = getelementptr inbounds i8, ptr %2062, i64 24
  %2178 = load i32, ptr %2177, align 4, !tbaa !6
  %2179 = add i32 %2176, %2178
  store i32 %2179, ptr %2177, align 4, !tbaa !6
  %2180 = getelementptr inbounds i8, ptr %2060, i64 8
  %2181 = load i8, ptr %2180, align 1, !tbaa !12
  %2182 = zext i8 %2181 to i32
  %2183 = getelementptr inbounds i8, ptr %2063, i64 8
  %2184 = load i8, ptr %2183, align 1, !tbaa !12
  %2185 = zext i8 %2184 to i32
  %2186 = add nuw nsw i32 %2165, 2
  %2187 = add nuw nsw i32 %2186, %2168
  %2188 = add nuw nsw i32 %2187, %2182
  %2189 = add nuw nsw i32 %2188, %2185
  %2190 = lshr i32 %2189, 2
  %2191 = getelementptr inbounds i8, ptr %2061, i64 28
  %2192 = load i32, ptr %2191, align 4, !tbaa !6
  %2193 = mul i32 %2190, %2192
  %2194 = getelementptr inbounds i8, ptr %2062, i64 28
  %2195 = load i32, ptr %2194, align 4, !tbaa !6
  %2196 = add i32 %2193, %2195
  store i32 %2196, ptr %2194, align 4, !tbaa !6
  %2197 = getelementptr inbounds i8, ptr %2062, i64 32
  %2198 = getelementptr inbounds i8, ptr %2061, i64 32
  %2199 = add nuw nsw i32 %2059, 1
  %2200 = icmp eq i32 %2199, 8
  br i1 %2200, label %2201, label %2055

2201:                                             ; preds = %1944, %2055, %1820, %1580
  %2202 = icmp ne i32 %264, 0
  %2203 = icmp ne i32 %266, 0
  %2204 = select i1 %2202, i1 true, i1 %2203
  br i1 %2204, label %2437, label %2205

2205:                                             ; preds = %2201
  %2206 = getelementptr inbounds i8, ptr %272, i64 4
  %2207 = load i8, ptr %2206, align 1, !tbaa !12
  %2208 = zext i8 %2207 to i32
  %2209 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 784), align 4, !tbaa !6
  %2210 = mul nsw i32 %2209, %2208
  %2211 = load i32, ptr %37, align 4, !tbaa !6
  %2212 = add nsw i32 %2211, %2210
  store i32 %2212, ptr %37, align 4, !tbaa !6
  %2213 = getelementptr inbounds i8, ptr %272, i64 5
  %2214 = load i8, ptr %2213, align 1, !tbaa !12
  %2215 = zext i8 %2214 to i32
  %2216 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 788), align 4, !tbaa !6
  %2217 = mul nsw i32 %2216, %2215
  %2218 = load i32, ptr %38, align 4, !tbaa !6
  %2219 = add nsw i32 %2218, %2217
  store i32 %2219, ptr %38, align 4, !tbaa !6
  %2220 = getelementptr inbounds i8, ptr %272, i64 6
  %2221 = load i8, ptr %2220, align 1, !tbaa !12
  %2222 = zext i8 %2221 to i32
  %2223 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 792), align 4, !tbaa !6
  %2224 = mul nsw i32 %2223, %2222
  %2225 = load i32, ptr %39, align 4, !tbaa !6
  %2226 = add nsw i32 %2225, %2224
  store i32 %2226, ptr %39, align 4, !tbaa !6
  %2227 = getelementptr inbounds i8, ptr %272, i64 7
  %2228 = load i8, ptr %2227, align 1, !tbaa !12
  %2229 = zext i8 %2228 to i32
  %2230 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 796), align 4, !tbaa !6
  %2231 = mul nsw i32 %2230, %2229
  %2232 = load i32, ptr %40, align 4, !tbaa !6
  %2233 = add nsw i32 %2232, %2231
  store i32 %2233, ptr %40, align 4, !tbaa !6
  %2234 = getelementptr inbounds i8, ptr %272, i64 %33
  %2235 = getelementptr inbounds i8, ptr %2234, i64 4
  %2236 = load i8, ptr %2235, align 1, !tbaa !12
  %2237 = zext i8 %2236 to i32
  %2238 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 816), align 4, !tbaa !6
  %2239 = mul nsw i32 %2238, %2237
  %2240 = load i32, ptr %45, align 4, !tbaa !6
  %2241 = add nsw i32 %2240, %2239
  store i32 %2241, ptr %45, align 4, !tbaa !6
  %2242 = getelementptr inbounds i8, ptr %2234, i64 5
  %2243 = load i8, ptr %2242, align 1, !tbaa !12
  %2244 = zext i8 %2243 to i32
  %2245 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 820), align 4, !tbaa !6
  %2246 = mul nsw i32 %2245, %2244
  %2247 = load i32, ptr %46, align 4, !tbaa !6
  %2248 = add nsw i32 %2247, %2246
  store i32 %2248, ptr %46, align 4, !tbaa !6
  %2249 = getelementptr inbounds i8, ptr %2234, i64 6
  %2250 = load i8, ptr %2249, align 1, !tbaa !12
  %2251 = zext i8 %2250 to i32
  %2252 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 824), align 4, !tbaa !6
  %2253 = mul nsw i32 %2252, %2251
  %2254 = load i32, ptr %47, align 4, !tbaa !6
  %2255 = add nsw i32 %2254, %2253
  store i32 %2255, ptr %47, align 4, !tbaa !6
  %2256 = getelementptr inbounds i8, ptr %2234, i64 7
  %2257 = load i8, ptr %2256, align 1, !tbaa !12
  %2258 = zext i8 %2257 to i32
  %2259 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 828), align 4, !tbaa !6
  %2260 = mul nsw i32 %2259, %2258
  %2261 = load i32, ptr %48, align 4, !tbaa !6
  %2262 = add nsw i32 %2261, %2260
  store i32 %2262, ptr %48, align 4, !tbaa !6
  %2263 = getelementptr inbounds i8, ptr %2234, i64 %33
  %2264 = getelementptr inbounds i8, ptr %2263, i64 4
  %2265 = load i8, ptr %2264, align 1, !tbaa !12
  %2266 = zext i8 %2265 to i32
  %2267 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 848), align 4, !tbaa !6
  %2268 = mul nsw i32 %2267, %2266
  %2269 = load i32, ptr %53, align 4, !tbaa !6
  %2270 = add nsw i32 %2269, %2268
  store i32 %2270, ptr %53, align 4, !tbaa !6
  %2271 = getelementptr inbounds i8, ptr %2263, i64 5
  %2272 = load i8, ptr %2271, align 1, !tbaa !12
  %2273 = zext i8 %2272 to i32
  %2274 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 852), align 4, !tbaa !6
  %2275 = mul nsw i32 %2274, %2273
  %2276 = load i32, ptr %54, align 4, !tbaa !6
  %2277 = add nsw i32 %2276, %2275
  store i32 %2277, ptr %54, align 4, !tbaa !6
  %2278 = getelementptr inbounds i8, ptr %2263, i64 6
  %2279 = load i8, ptr %2278, align 1, !tbaa !12
  %2280 = zext i8 %2279 to i32
  %2281 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 856), align 4, !tbaa !6
  %2282 = mul nsw i32 %2281, %2280
  %2283 = load i32, ptr %55, align 4, !tbaa !6
  %2284 = add nsw i32 %2283, %2282
  store i32 %2284, ptr %55, align 4, !tbaa !6
  %2285 = getelementptr inbounds i8, ptr %2263, i64 7
  %2286 = load i8, ptr %2285, align 1, !tbaa !12
  %2287 = zext i8 %2286 to i32
  %2288 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 860), align 4, !tbaa !6
  %2289 = mul nsw i32 %2288, %2287
  %2290 = load i32, ptr %56, align 4, !tbaa !6
  %2291 = add nsw i32 %2290, %2289
  store i32 %2291, ptr %56, align 4, !tbaa !6
  %2292 = getelementptr inbounds i8, ptr %2263, i64 %33
  %2293 = getelementptr inbounds i8, ptr %2292, i64 4
  %2294 = load i8, ptr %2293, align 1, !tbaa !12
  %2295 = zext i8 %2294 to i32
  %2296 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 880), align 4, !tbaa !6
  %2297 = mul nsw i32 %2296, %2295
  %2298 = load i32, ptr %61, align 4, !tbaa !6
  %2299 = add nsw i32 %2298, %2297
  store i32 %2299, ptr %61, align 4, !tbaa !6
  %2300 = getelementptr inbounds i8, ptr %2292, i64 5
  %2301 = load i8, ptr %2300, align 1, !tbaa !12
  %2302 = zext i8 %2301 to i32
  %2303 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 884), align 4, !tbaa !6
  %2304 = mul nsw i32 %2303, %2302
  %2305 = load i32, ptr %62, align 4, !tbaa !6
  %2306 = add nsw i32 %2305, %2304
  store i32 %2306, ptr %62, align 4, !tbaa !6
  %2307 = getelementptr inbounds i8, ptr %2292, i64 6
  %2308 = load i8, ptr %2307, align 1, !tbaa !12
  %2309 = zext i8 %2308 to i32
  %2310 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 888), align 4, !tbaa !6
  %2311 = mul nsw i32 %2310, %2309
  %2312 = load i32, ptr %63, align 4, !tbaa !6
  %2313 = add nsw i32 %2312, %2311
  store i32 %2313, ptr %63, align 4, !tbaa !6
  %2314 = getelementptr inbounds i8, ptr %2292, i64 7
  %2315 = load i8, ptr %2314, align 1, !tbaa !12
  %2316 = zext i8 %2315 to i32
  %2317 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 892), align 4, !tbaa !6
  %2318 = mul nsw i32 %2317, %2316
  %2319 = load i32, ptr %64, align 4, !tbaa !6
  %2320 = add nsw i32 %2319, %2318
  store i32 %2320, ptr %64, align 4, !tbaa !6
  %2321 = getelementptr inbounds i8, ptr %2292, i64 %33
  %2322 = getelementptr inbounds i8, ptr %2321, i64 4
  %2323 = load i8, ptr %2322, align 1, !tbaa !12
  %2324 = zext i8 %2323 to i32
  %2325 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 912), align 4, !tbaa !6
  %2326 = mul nsw i32 %2325, %2324
  %2327 = load i32, ptr %69, align 4, !tbaa !6
  %2328 = add nsw i32 %2327, %2326
  store i32 %2328, ptr %69, align 4, !tbaa !6
  %2329 = getelementptr inbounds i8, ptr %2321, i64 5
  %2330 = load i8, ptr %2329, align 1, !tbaa !12
  %2331 = zext i8 %2330 to i32
  %2332 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 916), align 4, !tbaa !6
  %2333 = mul nsw i32 %2332, %2331
  %2334 = load i32, ptr %70, align 4, !tbaa !6
  %2335 = add nsw i32 %2334, %2333
  store i32 %2335, ptr %70, align 4, !tbaa !6
  %2336 = getelementptr inbounds i8, ptr %2321, i64 6
  %2337 = load i8, ptr %2336, align 1, !tbaa !12
  %2338 = zext i8 %2337 to i32
  %2339 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 920), align 4, !tbaa !6
  %2340 = mul nsw i32 %2339, %2338
  %2341 = load i32, ptr %71, align 4, !tbaa !6
  %2342 = add nsw i32 %2341, %2340
  store i32 %2342, ptr %71, align 4, !tbaa !6
  %2343 = getelementptr inbounds i8, ptr %2321, i64 7
  %2344 = load i8, ptr %2343, align 1, !tbaa !12
  %2345 = zext i8 %2344 to i32
  %2346 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 924), align 4, !tbaa !6
  %2347 = mul nsw i32 %2346, %2345
  %2348 = load i32, ptr %72, align 4, !tbaa !6
  %2349 = add nsw i32 %2348, %2347
  store i32 %2349, ptr %72, align 4, !tbaa !6
  %2350 = getelementptr inbounds i8, ptr %2321, i64 %33
  %2351 = getelementptr inbounds i8, ptr %2350, i64 4
  %2352 = load i8, ptr %2351, align 1, !tbaa !12
  %2353 = zext i8 %2352 to i32
  %2354 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 944), align 4, !tbaa !6
  %2355 = mul nsw i32 %2354, %2353
  %2356 = load i32, ptr %77, align 4, !tbaa !6
  %2357 = add nsw i32 %2356, %2355
  store i32 %2357, ptr %77, align 4, !tbaa !6
  %2358 = getelementptr inbounds i8, ptr %2350, i64 5
  %2359 = load i8, ptr %2358, align 1, !tbaa !12
  %2360 = zext i8 %2359 to i32
  %2361 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 948), align 4, !tbaa !6
  %2362 = mul nsw i32 %2361, %2360
  %2363 = load i32, ptr %78, align 4, !tbaa !6
  %2364 = add nsw i32 %2363, %2362
  store i32 %2364, ptr %78, align 4, !tbaa !6
  %2365 = getelementptr inbounds i8, ptr %2350, i64 6
  %2366 = load i8, ptr %2365, align 1, !tbaa !12
  %2367 = zext i8 %2366 to i32
  %2368 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 952), align 4, !tbaa !6
  %2369 = mul nsw i32 %2368, %2367
  %2370 = load i32, ptr %79, align 4, !tbaa !6
  %2371 = add nsw i32 %2370, %2369
  store i32 %2371, ptr %79, align 4, !tbaa !6
  %2372 = getelementptr inbounds i8, ptr %2350, i64 7
  %2373 = load i8, ptr %2372, align 1, !tbaa !12
  %2374 = zext i8 %2373 to i32
  %2375 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 956), align 4, !tbaa !6
  %2376 = mul nsw i32 %2375, %2374
  %2377 = load i32, ptr %80, align 4, !tbaa !6
  %2378 = add nsw i32 %2377, %2376
  store i32 %2378, ptr %80, align 4, !tbaa !6
  %2379 = getelementptr inbounds i8, ptr %2350, i64 %33
  %2380 = getelementptr inbounds i8, ptr %2379, i64 4
  %2381 = load i8, ptr %2380, align 1, !tbaa !12
  %2382 = zext i8 %2381 to i32
  %2383 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 976), align 4, !tbaa !6
  %2384 = mul nsw i32 %2383, %2382
  %2385 = load i32, ptr %85, align 4, !tbaa !6
  %2386 = add nsw i32 %2385, %2384
  store i32 %2386, ptr %85, align 4, !tbaa !6
  %2387 = getelementptr inbounds i8, ptr %2379, i64 5
  %2388 = load i8, ptr %2387, align 1, !tbaa !12
  %2389 = zext i8 %2388 to i32
  %2390 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 980), align 4, !tbaa !6
  %2391 = mul nsw i32 %2390, %2389
  %2392 = load i32, ptr %86, align 4, !tbaa !6
  %2393 = add nsw i32 %2392, %2391
  store i32 %2393, ptr %86, align 4, !tbaa !6
  %2394 = getelementptr inbounds i8, ptr %2379, i64 6
  %2395 = load i8, ptr %2394, align 1, !tbaa !12
  %2396 = zext i8 %2395 to i32
  %2397 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 984), align 4, !tbaa !6
  %2398 = mul nsw i32 %2397, %2396
  %2399 = load i32, ptr %87, align 4, !tbaa !6
  %2400 = add nsw i32 %2399, %2398
  store i32 %2400, ptr %87, align 4, !tbaa !6
  %2401 = getelementptr inbounds i8, ptr %2379, i64 7
  %2402 = load i8, ptr %2401, align 1, !tbaa !12
  %2403 = zext i8 %2402 to i32
  %2404 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 988), align 4, !tbaa !6
  %2405 = mul nsw i32 %2404, %2403
  %2406 = load i32, ptr %88, align 4, !tbaa !6
  %2407 = add nsw i32 %2406, %2405
  store i32 %2407, ptr %88, align 4, !tbaa !6
  %2408 = getelementptr inbounds i8, ptr %2379, i64 %33
  %2409 = getelementptr inbounds i8, ptr %2408, i64 4
  %2410 = load i8, ptr %2409, align 1, !tbaa !12
  %2411 = zext i8 %2410 to i32
  %2412 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1008), align 4, !tbaa !6
  %2413 = mul nsw i32 %2412, %2411
  %2414 = load i32, ptr %93, align 4, !tbaa !6
  %2415 = add nsw i32 %2414, %2413
  store i32 %2415, ptr %93, align 4, !tbaa !6
  %2416 = getelementptr inbounds i8, ptr %2408, i64 5
  %2417 = load i8, ptr %2416, align 1, !tbaa !12
  %2418 = zext i8 %2417 to i32
  %2419 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1012), align 4, !tbaa !6
  %2420 = mul nsw i32 %2419, %2418
  %2421 = load i32, ptr %94, align 4, !tbaa !6
  %2422 = add nsw i32 %2421, %2420
  store i32 %2422, ptr %94, align 4, !tbaa !6
  %2423 = getelementptr inbounds i8, ptr %2408, i64 6
  %2424 = load i8, ptr %2423, align 1, !tbaa !12
  %2425 = zext i8 %2424 to i32
  %2426 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1016), align 4, !tbaa !6
  %2427 = mul nsw i32 %2426, %2425
  %2428 = load i32, ptr %95, align 4, !tbaa !6
  %2429 = add nsw i32 %2428, %2427
  store i32 %2429, ptr %95, align 4, !tbaa !6
  %2430 = getelementptr inbounds i8, ptr %2408, i64 7
  %2431 = load i8, ptr %2430, align 1, !tbaa !12
  %2432 = zext i8 %2431 to i32
  %2433 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1020), align 4, !tbaa !6
  %2434 = mul nsw i32 %2433, %2432
  %2435 = load i32, ptr %96, align 4, !tbaa !6
  %2436 = add nsw i32 %2435, %2434
  store i32 %2436, ptr %96, align 4, !tbaa !6
  br label %2664

2437:                                             ; preds = %2201
  %2438 = icmp eq i32 %264, 0
  %2439 = select i1 %2438, i1 %2203, i1 false
  br i1 %2439, label %2440, label %2515

2440:                                             ; preds = %2437
  %2441 = getelementptr inbounds i8, ptr %272, i64 4
  %2442 = load i8, ptr %2441, align 1, !tbaa !12
  %2443 = getelementptr inbounds i8, ptr %272, i64 5
  %2444 = load i8, ptr %2443, align 1, !tbaa !12
  %2445 = getelementptr inbounds i8, ptr %272, i64 6
  %2446 = load i8, ptr %2445, align 1, !tbaa !12
  %2447 = getelementptr inbounds i8, ptr %272, i64 7
  %2448 = load i8, ptr %2447, align 1, !tbaa !12
  br label %2449

2449:                                             ; preds = %2449, %2440
  %2450 = phi i8 [ %2500, %2449 ], [ %2448, %2440 ]
  %2451 = phi i8 [ %2487, %2449 ], [ %2446, %2440 ]
  %2452 = phi i8 [ %2474, %2449 ], [ %2444, %2440 ]
  %2453 = phi i8 [ %2461, %2449 ], [ %2442, %2440 ]
  %2454 = phi i32 [ %2513, %2449 ], [ 0, %2440 ]
  %2455 = phi ptr [ %2458, %2449 ], [ %272, %2440 ]
  %2456 = phi ptr [ %2512, %2449 ], [ getelementptr inbounds (i8, ptr @OM, i64 768), %2440 ]
  %2457 = phi ptr [ %2511, %2449 ], [ %6, %2440 ]
  %2458 = getelementptr i8, ptr %2455, i64 %33
  %2459 = zext i8 %2453 to i32
  %2460 = getelementptr inbounds i8, ptr %2458, i64 4
  %2461 = load i8, ptr %2460, align 1, !tbaa !12
  %2462 = zext i8 %2461 to i32
  %2463 = add nuw nsw i32 %2459, 1
  %2464 = add nuw nsw i32 %2463, %2462
  %2465 = lshr i32 %2464, 1
  %2466 = getelementptr inbounds i8, ptr %2456, i64 16
  %2467 = load i32, ptr %2466, align 4, !tbaa !6
  %2468 = mul i32 %2465, %2467
  %2469 = getelementptr inbounds i8, ptr %2457, i64 16
  %2470 = load i32, ptr %2469, align 4, !tbaa !6
  %2471 = add i32 %2468, %2470
  store i32 %2471, ptr %2469, align 4, !tbaa !6
  %2472 = zext i8 %2452 to i32
  %2473 = getelementptr inbounds i8, ptr %2458, i64 5
  %2474 = load i8, ptr %2473, align 1, !tbaa !12
  %2475 = zext i8 %2474 to i32
  %2476 = add nuw nsw i32 %2472, 1
  %2477 = add nuw nsw i32 %2476, %2475
  %2478 = lshr i32 %2477, 1
  %2479 = getelementptr inbounds i8, ptr %2456, i64 20
  %2480 = load i32, ptr %2479, align 4, !tbaa !6
  %2481 = mul i32 %2478, %2480
  %2482 = getelementptr inbounds i8, ptr %2457, i64 20
  %2483 = load i32, ptr %2482, align 4, !tbaa !6
  %2484 = add i32 %2481, %2483
  store i32 %2484, ptr %2482, align 4, !tbaa !6
  %2485 = zext i8 %2451 to i32
  %2486 = getelementptr inbounds i8, ptr %2458, i64 6
  %2487 = load i8, ptr %2486, align 1, !tbaa !12
  %2488 = zext i8 %2487 to i32
  %2489 = add nuw nsw i32 %2485, 1
  %2490 = add nuw nsw i32 %2489, %2488
  %2491 = lshr i32 %2490, 1
  %2492 = getelementptr inbounds i8, ptr %2456, i64 24
  %2493 = load i32, ptr %2492, align 4, !tbaa !6
  %2494 = mul i32 %2491, %2493
  %2495 = getelementptr inbounds i8, ptr %2457, i64 24
  %2496 = load i32, ptr %2495, align 4, !tbaa !6
  %2497 = add i32 %2494, %2496
  store i32 %2497, ptr %2495, align 4, !tbaa !6
  %2498 = zext i8 %2450 to i32
  %2499 = getelementptr inbounds i8, ptr %2458, i64 7
  %2500 = load i8, ptr %2499, align 1, !tbaa !12
  %2501 = zext i8 %2500 to i32
  %2502 = add nuw nsw i32 %2498, 1
  %2503 = add nuw nsw i32 %2502, %2501
  %2504 = lshr i32 %2503, 1
  %2505 = getelementptr inbounds i8, ptr %2456, i64 28
  %2506 = load i32, ptr %2505, align 4, !tbaa !6
  %2507 = mul i32 %2504, %2506
  %2508 = getelementptr inbounds i8, ptr %2457, i64 28
  %2509 = load i32, ptr %2508, align 4, !tbaa !6
  %2510 = add i32 %2507, %2509
  store i32 %2510, ptr %2508, align 4, !tbaa !6
  %2511 = getelementptr inbounds i8, ptr %2457, i64 32
  %2512 = getelementptr inbounds i8, ptr %2456, i64 32
  %2513 = add nuw nsw i32 %2454, 1
  %2514 = icmp eq i32 %2513, 8
  br i1 %2514, label %2664, label %2449

2515:                                             ; preds = %2437
  %2516 = select i1 %2438, i1 true, i1 %2203
  br i1 %2516, label %2575, label %2517

2517:                                             ; preds = %2515, %2517
  %2518 = phi i64 [ %2573, %2517 ], [ 0, %2515 ]
  %2519 = phi ptr [ %2571, %2517 ], [ %272, %2515 ]
  %2520 = phi ptr [ %2572, %2517 ], [ %6, %2515 ]
  %2521 = getelementptr inbounds i8, ptr %2519, i64 4
  %2522 = load i8, ptr %2521, align 1, !tbaa !12
  %2523 = zext i8 %2522 to i32
  %2524 = getelementptr inbounds i8, ptr %2519, i64 5
  %2525 = load i8, ptr %2524, align 1, !tbaa !12
  %2526 = zext i8 %2525 to i32
  %2527 = add nuw nsw i32 %2526, 1
  %2528 = add nuw nsw i32 %2527, %2523
  %2529 = lshr i32 %2528, 1
  %2530 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 3, i64 %2518, i64 4
  %2531 = load i32, ptr %2530, align 4, !tbaa !6
  %2532 = mul i32 %2529, %2531
  %2533 = getelementptr inbounds i8, ptr %2520, i64 16
  %2534 = load i32, ptr %2533, align 4, !tbaa !6
  %2535 = add i32 %2532, %2534
  store i32 %2535, ptr %2533, align 4, !tbaa !6
  %2536 = getelementptr inbounds i8, ptr %2519, i64 6
  %2537 = load i8, ptr %2536, align 1, !tbaa !12
  %2538 = zext i8 %2537 to i32
  %2539 = add nuw nsw i32 %2527, %2538
  %2540 = lshr i32 %2539, 1
  %2541 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 3, i64 %2518, i64 5
  %2542 = load i32, ptr %2541, align 4, !tbaa !6
  %2543 = mul i32 %2540, %2542
  %2544 = getelementptr inbounds i8, ptr %2520, i64 20
  %2545 = load i32, ptr %2544, align 4, !tbaa !6
  %2546 = add i32 %2543, %2545
  store i32 %2546, ptr %2544, align 4, !tbaa !6
  %2547 = getelementptr inbounds i8, ptr %2519, i64 7
  %2548 = load i8, ptr %2547, align 1, !tbaa !12
  %2549 = zext i8 %2548 to i32
  %2550 = add nuw nsw i32 %2538, 1
  %2551 = add nuw nsw i32 %2550, %2549
  %2552 = lshr i32 %2551, 1
  %2553 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 3, i64 %2518, i64 6
  %2554 = load i32, ptr %2553, align 4, !tbaa !6
  %2555 = mul i32 %2552, %2554
  %2556 = getelementptr inbounds i8, ptr %2520, i64 24
  %2557 = load i32, ptr %2556, align 4, !tbaa !6
  %2558 = add i32 %2555, %2557
  store i32 %2558, ptr %2556, align 4, !tbaa !6
  %2559 = getelementptr inbounds i8, ptr %2519, i64 8
  %2560 = load i8, ptr %2559, align 1, !tbaa !12
  %2561 = zext i8 %2560 to i32
  %2562 = add nuw nsw i32 %2549, 1
  %2563 = add nuw nsw i32 %2562, %2561
  %2564 = lshr i32 %2563, 1
  %2565 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 3, i64 %2518, i64 7
  %2566 = load i32, ptr %2565, align 4, !tbaa !6
  %2567 = mul i32 %2564, %2566
  %2568 = getelementptr inbounds i8, ptr %2520, i64 28
  %2569 = load i32, ptr %2568, align 4, !tbaa !6
  %2570 = add i32 %2567, %2569
  store i32 %2570, ptr %2568, align 4, !tbaa !6
  %2571 = getelementptr inbounds i8, ptr %2519, i64 %33
  %2572 = getelementptr inbounds i8, ptr %2520, i64 32
  %2573 = add nuw nsw i64 %2518, 1
  %2574 = icmp eq i64 %2573, 8
  br i1 %2574, label %2664, label %2517

2575:                                             ; preds = %2515
  %2576 = getelementptr inbounds i8, ptr %272, i64 4
  %2577 = load i8, ptr %2576, align 1, !tbaa !12
  %2578 = getelementptr inbounds i8, ptr %272, i64 5
  %2579 = load i8, ptr %2578, align 1, !tbaa !12
  %2580 = getelementptr inbounds i8, ptr %272, i64 6
  %2581 = load i8, ptr %2580, align 1, !tbaa !12
  %2582 = getelementptr inbounds i8, ptr %272, i64 7
  %2583 = load i8, ptr %2582, align 1, !tbaa !12
  %2584 = getelementptr inbounds i8, ptr %272, i64 8
  %2585 = load i8, ptr %2584, align 1, !tbaa !12
  br label %2586

2586:                                             ; preds = %2586, %2575
  %2587 = phi i8 [ %2648, %2586 ], [ %2585, %2575 ]
  %2588 = phi i8 [ %2633, %2586 ], [ %2583, %2575 ]
  %2589 = phi i8 [ %2618, %2586 ], [ %2581, %2575 ]
  %2590 = phi i8 [ %2603, %2586 ], [ %2579, %2575 ]
  %2591 = phi i8 [ %2599, %2586 ], [ %2577, %2575 ]
  %2592 = phi i32 [ %2662, %2586 ], [ 0, %2575 ]
  %2593 = phi ptr [ %2596, %2586 ], [ %272, %2575 ]
  %2594 = phi ptr [ %2661, %2586 ], [ getelementptr inbounds (i8, ptr @OM, i64 768), %2575 ]
  %2595 = phi ptr [ %2660, %2586 ], [ %6, %2575 ]
  %2596 = getelementptr i8, ptr %2593, i64 %33
  %2597 = zext i8 %2591 to i32
  %2598 = getelementptr inbounds i8, ptr %2596, i64 4
  %2599 = load i8, ptr %2598, align 1, !tbaa !12
  %2600 = zext i8 %2599 to i32
  %2601 = zext i8 %2590 to i32
  %2602 = getelementptr inbounds i8, ptr %2596, i64 5
  %2603 = load i8, ptr %2602, align 1, !tbaa !12
  %2604 = zext i8 %2603 to i32
  %2605 = add nuw nsw i32 %2601, 2
  %2606 = add nuw nsw i32 %2605, %2597
  %2607 = add nuw nsw i32 %2606, %2600
  %2608 = add nuw nsw i32 %2607, %2604
  %2609 = lshr i32 %2608, 2
  %2610 = getelementptr inbounds i8, ptr %2594, i64 16
  %2611 = load i32, ptr %2610, align 4, !tbaa !6
  %2612 = mul i32 %2609, %2611
  %2613 = getelementptr inbounds i8, ptr %2595, i64 16
  %2614 = load i32, ptr %2613, align 4, !tbaa !6
  %2615 = add i32 %2612, %2614
  store i32 %2615, ptr %2613, align 4, !tbaa !6
  %2616 = zext i8 %2589 to i32
  %2617 = getelementptr inbounds i8, ptr %2596, i64 6
  %2618 = load i8, ptr %2617, align 1, !tbaa !12
  %2619 = zext i8 %2618 to i32
  %2620 = add nuw nsw i32 %2616, 2
  %2621 = add nuw nsw i32 %2620, %2601
  %2622 = add nuw nsw i32 %2621, %2604
  %2623 = add nuw nsw i32 %2622, %2619
  %2624 = lshr i32 %2623, 2
  %2625 = getelementptr inbounds i8, ptr %2594, i64 20
  %2626 = load i32, ptr %2625, align 4, !tbaa !6
  %2627 = mul i32 %2624, %2626
  %2628 = getelementptr inbounds i8, ptr %2595, i64 20
  %2629 = load i32, ptr %2628, align 4, !tbaa !6
  %2630 = add i32 %2627, %2629
  store i32 %2630, ptr %2628, align 4, !tbaa !6
  %2631 = zext i8 %2588 to i32
  %2632 = getelementptr inbounds i8, ptr %2596, i64 7
  %2633 = load i8, ptr %2632, align 1, !tbaa !12
  %2634 = zext i8 %2633 to i32
  %2635 = add nuw nsw i32 %2631, 2
  %2636 = add nuw nsw i32 %2635, %2616
  %2637 = add nuw nsw i32 %2636, %2619
  %2638 = add nuw nsw i32 %2637, %2634
  %2639 = lshr i32 %2638, 2
  %2640 = getelementptr inbounds i8, ptr %2594, i64 24
  %2641 = load i32, ptr %2640, align 4, !tbaa !6
  %2642 = mul i32 %2639, %2641
  %2643 = getelementptr inbounds i8, ptr %2595, i64 24
  %2644 = load i32, ptr %2643, align 4, !tbaa !6
  %2645 = add i32 %2642, %2644
  store i32 %2645, ptr %2643, align 4, !tbaa !6
  %2646 = zext i8 %2587 to i32
  %2647 = getelementptr inbounds i8, ptr %2596, i64 8
  %2648 = load i8, ptr %2647, align 1, !tbaa !12
  %2649 = zext i8 %2648 to i32
  %2650 = add nuw nsw i32 %2635, %2646
  %2651 = add nuw nsw i32 %2650, %2634
  %2652 = add nuw nsw i32 %2651, %2649
  %2653 = lshr i32 %2652, 2
  %2654 = getelementptr inbounds i8, ptr %2594, i64 28
  %2655 = load i32, ptr %2654, align 4, !tbaa !6
  %2656 = mul i32 %2653, %2655
  %2657 = getelementptr inbounds i8, ptr %2595, i64 28
  %2658 = load i32, ptr %2657, align 4, !tbaa !6
  %2659 = add i32 %2656, %2658
  store i32 %2659, ptr %2657, align 4, !tbaa !6
  %2660 = getelementptr inbounds i8, ptr %2595, i64 32
  %2661 = getelementptr inbounds i8, ptr %2594, i64 32
  %2662 = add nuw nsw i32 %2592, 1
  %2663 = icmp eq i32 %2662, 8
  br i1 %2663, label %2664, label %2586

2664:                                             ; preds = %2517, %2586, %2449, %2205
  %2665 = icmp ne i32 %274, 0
  %2666 = icmp ne i32 %276, 0
  %2667 = select i1 %2665, i1 true, i1 %2666
  br i1 %2667, label %2892, label %2668

2668:                                             ; preds = %2664
  %2669 = load i8, ptr %282, align 1, !tbaa !12
  %2670 = zext i8 %2669 to i32
  %2671 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1024), align 4, !tbaa !6
  %2672 = mul nsw i32 %2671, %2670
  %2673 = load i32, ptr %6, align 4, !tbaa !6
  %2674 = add nsw i32 %2673, %2672
  store i32 %2674, ptr %6, align 4, !tbaa !6
  %2675 = getelementptr inbounds i8, ptr %282, i64 1
  %2676 = load i8, ptr %2675, align 1, !tbaa !12
  %2677 = zext i8 %2676 to i32
  %2678 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1028), align 4, !tbaa !6
  %2679 = mul nsw i32 %2678, %2677
  %2680 = load i32, ptr %34, align 4, !tbaa !6
  %2681 = add nsw i32 %2680, %2679
  store i32 %2681, ptr %34, align 4, !tbaa !6
  %2682 = getelementptr inbounds i8, ptr %282, i64 2
  %2683 = load i8, ptr %2682, align 1, !tbaa !12
  %2684 = zext i8 %2683 to i32
  %2685 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1032), align 4, !tbaa !6
  %2686 = mul nsw i32 %2685, %2684
  %2687 = load i32, ptr %35, align 4, !tbaa !6
  %2688 = add nsw i32 %2687, %2686
  store i32 %2688, ptr %35, align 4, !tbaa !6
  %2689 = getelementptr inbounds i8, ptr %282, i64 3
  %2690 = load i8, ptr %2689, align 1, !tbaa !12
  %2691 = zext i8 %2690 to i32
  %2692 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1036), align 4, !tbaa !6
  %2693 = mul nsw i32 %2692, %2691
  %2694 = load i32, ptr %36, align 4, !tbaa !6
  %2695 = add nsw i32 %2694, %2693
  store i32 %2695, ptr %36, align 4, !tbaa !6
  %2696 = getelementptr inbounds i8, ptr %282, i64 %33
  %2697 = load i8, ptr %2696, align 1, !tbaa !12
  %2698 = zext i8 %2697 to i32
  %2699 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1056), align 4, !tbaa !6
  %2700 = mul nsw i32 %2699, %2698
  %2701 = load i32, ptr %41, align 4, !tbaa !6
  %2702 = add nsw i32 %2701, %2700
  store i32 %2702, ptr %41, align 4, !tbaa !6
  %2703 = getelementptr inbounds i8, ptr %2696, i64 1
  %2704 = load i8, ptr %2703, align 1, !tbaa !12
  %2705 = zext i8 %2704 to i32
  %2706 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1060), align 4, !tbaa !6
  %2707 = mul nsw i32 %2706, %2705
  %2708 = load i32, ptr %42, align 4, !tbaa !6
  %2709 = add nsw i32 %2708, %2707
  store i32 %2709, ptr %42, align 4, !tbaa !6
  %2710 = getelementptr inbounds i8, ptr %2696, i64 2
  %2711 = load i8, ptr %2710, align 1, !tbaa !12
  %2712 = zext i8 %2711 to i32
  %2713 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1064), align 4, !tbaa !6
  %2714 = mul nsw i32 %2713, %2712
  %2715 = load i32, ptr %43, align 4, !tbaa !6
  %2716 = add nsw i32 %2715, %2714
  store i32 %2716, ptr %43, align 4, !tbaa !6
  %2717 = getelementptr inbounds i8, ptr %2696, i64 3
  %2718 = load i8, ptr %2717, align 1, !tbaa !12
  %2719 = zext i8 %2718 to i32
  %2720 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1068), align 4, !tbaa !6
  %2721 = mul nsw i32 %2720, %2719
  %2722 = load i32, ptr %44, align 4, !tbaa !6
  %2723 = add nsw i32 %2722, %2721
  store i32 %2723, ptr %44, align 4, !tbaa !6
  %2724 = getelementptr inbounds i8, ptr %2696, i64 %33
  %2725 = load i8, ptr %2724, align 1, !tbaa !12
  %2726 = zext i8 %2725 to i32
  %2727 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1088), align 4, !tbaa !6
  %2728 = mul nsw i32 %2727, %2726
  %2729 = load i32, ptr %49, align 4, !tbaa !6
  %2730 = add nsw i32 %2729, %2728
  store i32 %2730, ptr %49, align 4, !tbaa !6
  %2731 = getelementptr inbounds i8, ptr %2724, i64 1
  %2732 = load i8, ptr %2731, align 1, !tbaa !12
  %2733 = zext i8 %2732 to i32
  %2734 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1092), align 4, !tbaa !6
  %2735 = mul nsw i32 %2734, %2733
  %2736 = load i32, ptr %50, align 4, !tbaa !6
  %2737 = add nsw i32 %2736, %2735
  store i32 %2737, ptr %50, align 4, !tbaa !6
  %2738 = getelementptr inbounds i8, ptr %2724, i64 2
  %2739 = load i8, ptr %2738, align 1, !tbaa !12
  %2740 = zext i8 %2739 to i32
  %2741 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1096), align 4, !tbaa !6
  %2742 = mul nsw i32 %2741, %2740
  %2743 = load i32, ptr %51, align 4, !tbaa !6
  %2744 = add nsw i32 %2743, %2742
  store i32 %2744, ptr %51, align 4, !tbaa !6
  %2745 = getelementptr inbounds i8, ptr %2724, i64 3
  %2746 = load i8, ptr %2745, align 1, !tbaa !12
  %2747 = zext i8 %2746 to i32
  %2748 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1100), align 4, !tbaa !6
  %2749 = mul nsw i32 %2748, %2747
  %2750 = load i32, ptr %52, align 4, !tbaa !6
  %2751 = add nsw i32 %2750, %2749
  store i32 %2751, ptr %52, align 4, !tbaa !6
  %2752 = getelementptr inbounds i8, ptr %2724, i64 %33
  %2753 = load i8, ptr %2752, align 1, !tbaa !12
  %2754 = zext i8 %2753 to i32
  %2755 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1120), align 4, !tbaa !6
  %2756 = mul nsw i32 %2755, %2754
  %2757 = load i32, ptr %57, align 4, !tbaa !6
  %2758 = add nsw i32 %2757, %2756
  store i32 %2758, ptr %57, align 4, !tbaa !6
  %2759 = getelementptr inbounds i8, ptr %2752, i64 1
  %2760 = load i8, ptr %2759, align 1, !tbaa !12
  %2761 = zext i8 %2760 to i32
  %2762 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1124), align 4, !tbaa !6
  %2763 = mul nsw i32 %2762, %2761
  %2764 = load i32, ptr %58, align 4, !tbaa !6
  %2765 = add nsw i32 %2764, %2763
  store i32 %2765, ptr %58, align 4, !tbaa !6
  %2766 = getelementptr inbounds i8, ptr %2752, i64 2
  %2767 = load i8, ptr %2766, align 1, !tbaa !12
  %2768 = zext i8 %2767 to i32
  %2769 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1128), align 4, !tbaa !6
  %2770 = mul nsw i32 %2769, %2768
  %2771 = load i32, ptr %59, align 4, !tbaa !6
  %2772 = add nsw i32 %2771, %2770
  store i32 %2772, ptr %59, align 4, !tbaa !6
  %2773 = getelementptr inbounds i8, ptr %2752, i64 3
  %2774 = load i8, ptr %2773, align 1, !tbaa !12
  %2775 = zext i8 %2774 to i32
  %2776 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1132), align 4, !tbaa !6
  %2777 = mul nsw i32 %2776, %2775
  %2778 = load i32, ptr %60, align 4, !tbaa !6
  %2779 = add nsw i32 %2778, %2777
  store i32 %2779, ptr %60, align 4, !tbaa !6
  %2780 = getelementptr inbounds i8, ptr %2752, i64 %33
  %2781 = load i8, ptr %2780, align 1, !tbaa !12
  %2782 = zext i8 %2781 to i32
  %2783 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1152), align 4, !tbaa !6
  %2784 = mul nsw i32 %2783, %2782
  %2785 = load i32, ptr %65, align 4, !tbaa !6
  %2786 = add nsw i32 %2785, %2784
  store i32 %2786, ptr %65, align 4, !tbaa !6
  %2787 = getelementptr inbounds i8, ptr %2780, i64 1
  %2788 = load i8, ptr %2787, align 1, !tbaa !12
  %2789 = zext i8 %2788 to i32
  %2790 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1156), align 4, !tbaa !6
  %2791 = mul nsw i32 %2790, %2789
  %2792 = load i32, ptr %66, align 4, !tbaa !6
  %2793 = add nsw i32 %2792, %2791
  store i32 %2793, ptr %66, align 4, !tbaa !6
  %2794 = getelementptr inbounds i8, ptr %2780, i64 2
  %2795 = load i8, ptr %2794, align 1, !tbaa !12
  %2796 = zext i8 %2795 to i32
  %2797 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1160), align 4, !tbaa !6
  %2798 = mul nsw i32 %2797, %2796
  %2799 = load i32, ptr %67, align 4, !tbaa !6
  %2800 = add nsw i32 %2799, %2798
  store i32 %2800, ptr %67, align 4, !tbaa !6
  %2801 = getelementptr inbounds i8, ptr %2780, i64 3
  %2802 = load i8, ptr %2801, align 1, !tbaa !12
  %2803 = zext i8 %2802 to i32
  %2804 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1164), align 4, !tbaa !6
  %2805 = mul nsw i32 %2804, %2803
  %2806 = load i32, ptr %68, align 4, !tbaa !6
  %2807 = add nsw i32 %2806, %2805
  store i32 %2807, ptr %68, align 4, !tbaa !6
  %2808 = getelementptr inbounds i8, ptr %2780, i64 %33
  %2809 = load i8, ptr %2808, align 1, !tbaa !12
  %2810 = zext i8 %2809 to i32
  %2811 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1184), align 4, !tbaa !6
  %2812 = mul nsw i32 %2811, %2810
  %2813 = load i32, ptr %73, align 4, !tbaa !6
  %2814 = add nsw i32 %2813, %2812
  store i32 %2814, ptr %73, align 4, !tbaa !6
  %2815 = getelementptr inbounds i8, ptr %2808, i64 1
  %2816 = load i8, ptr %2815, align 1, !tbaa !12
  %2817 = zext i8 %2816 to i32
  %2818 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1188), align 4, !tbaa !6
  %2819 = mul nsw i32 %2818, %2817
  %2820 = load i32, ptr %74, align 4, !tbaa !6
  %2821 = add nsw i32 %2820, %2819
  store i32 %2821, ptr %74, align 4, !tbaa !6
  %2822 = getelementptr inbounds i8, ptr %2808, i64 2
  %2823 = load i8, ptr %2822, align 1, !tbaa !12
  %2824 = zext i8 %2823 to i32
  %2825 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1192), align 4, !tbaa !6
  %2826 = mul nsw i32 %2825, %2824
  %2827 = load i32, ptr %75, align 4, !tbaa !6
  %2828 = add nsw i32 %2827, %2826
  store i32 %2828, ptr %75, align 4, !tbaa !6
  %2829 = getelementptr inbounds i8, ptr %2808, i64 3
  %2830 = load i8, ptr %2829, align 1, !tbaa !12
  %2831 = zext i8 %2830 to i32
  %2832 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1196), align 4, !tbaa !6
  %2833 = mul nsw i32 %2832, %2831
  %2834 = load i32, ptr %76, align 4, !tbaa !6
  %2835 = add nsw i32 %2834, %2833
  store i32 %2835, ptr %76, align 4, !tbaa !6
  %2836 = getelementptr inbounds i8, ptr %2808, i64 %33
  %2837 = load i8, ptr %2836, align 1, !tbaa !12
  %2838 = zext i8 %2837 to i32
  %2839 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1216), align 4, !tbaa !6
  %2840 = mul nsw i32 %2839, %2838
  %2841 = load i32, ptr %81, align 4, !tbaa !6
  %2842 = add nsw i32 %2841, %2840
  store i32 %2842, ptr %81, align 4, !tbaa !6
  %2843 = getelementptr inbounds i8, ptr %2836, i64 1
  %2844 = load i8, ptr %2843, align 1, !tbaa !12
  %2845 = zext i8 %2844 to i32
  %2846 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1220), align 4, !tbaa !6
  %2847 = mul nsw i32 %2846, %2845
  %2848 = load i32, ptr %82, align 4, !tbaa !6
  %2849 = add nsw i32 %2848, %2847
  store i32 %2849, ptr %82, align 4, !tbaa !6
  %2850 = getelementptr inbounds i8, ptr %2836, i64 2
  %2851 = load i8, ptr %2850, align 1, !tbaa !12
  %2852 = zext i8 %2851 to i32
  %2853 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1224), align 4, !tbaa !6
  %2854 = mul nsw i32 %2853, %2852
  %2855 = load i32, ptr %83, align 4, !tbaa !6
  %2856 = add nsw i32 %2855, %2854
  store i32 %2856, ptr %83, align 4, !tbaa !6
  %2857 = getelementptr inbounds i8, ptr %2836, i64 3
  %2858 = load i8, ptr %2857, align 1, !tbaa !12
  %2859 = zext i8 %2858 to i32
  %2860 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1228), align 4, !tbaa !6
  %2861 = mul nsw i32 %2860, %2859
  %2862 = load i32, ptr %84, align 4, !tbaa !6
  %2863 = add nsw i32 %2862, %2861
  store i32 %2863, ptr %84, align 4, !tbaa !6
  %2864 = getelementptr inbounds i8, ptr %2836, i64 %33
  %2865 = load i8, ptr %2864, align 1, !tbaa !12
  %2866 = zext i8 %2865 to i32
  %2867 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1248), align 4, !tbaa !6
  %2868 = mul nsw i32 %2867, %2866
  %2869 = load i32, ptr %89, align 4, !tbaa !6
  %2870 = add nsw i32 %2869, %2868
  store i32 %2870, ptr %89, align 4, !tbaa !6
  %2871 = getelementptr inbounds i8, ptr %2864, i64 1
  %2872 = load i8, ptr %2871, align 1, !tbaa !12
  %2873 = zext i8 %2872 to i32
  %2874 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1252), align 4, !tbaa !6
  %2875 = mul nsw i32 %2874, %2873
  %2876 = load i32, ptr %90, align 4, !tbaa !6
  %2877 = add nsw i32 %2876, %2875
  store i32 %2877, ptr %90, align 4, !tbaa !6
  %2878 = getelementptr inbounds i8, ptr %2864, i64 2
  %2879 = load i8, ptr %2878, align 1, !tbaa !12
  %2880 = zext i8 %2879 to i32
  %2881 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1256), align 4, !tbaa !6
  %2882 = mul nsw i32 %2881, %2880
  %2883 = load i32, ptr %91, align 4, !tbaa !6
  %2884 = add nsw i32 %2883, %2882
  store i32 %2884, ptr %91, align 4, !tbaa !6
  %2885 = getelementptr inbounds i8, ptr %2864, i64 3
  %2886 = load i8, ptr %2885, align 1, !tbaa !12
  %2887 = zext i8 %2886 to i32
  %2888 = load i32, ptr getelementptr inbounds (i8, ptr @OM, i64 1260), align 4, !tbaa !6
  %2889 = mul nsw i32 %2888, %2887
  %2890 = load i32, ptr %92, align 4, !tbaa !6
  %2891 = add nsw i32 %2890, %2889
  store i32 %2891, ptr %92, align 4, !tbaa !6
  br label %3109

2892:                                             ; preds = %2664
  %2893 = icmp eq i32 %274, 0
  %2894 = select i1 %2893, i1 %2666, i1 false
  br i1 %2894, label %2895, label %2966

2895:                                             ; preds = %2892
  %2896 = load i8, ptr %282, align 1, !tbaa !12
  %2897 = getelementptr inbounds i8, ptr %282, i64 1
  %2898 = load i8, ptr %2897, align 1, !tbaa !12
  %2899 = getelementptr inbounds i8, ptr %282, i64 2
  %2900 = load i8, ptr %2899, align 1, !tbaa !12
  %2901 = getelementptr inbounds i8, ptr %282, i64 3
  %2902 = load i8, ptr %2901, align 1, !tbaa !12
  br label %2903

2903:                                             ; preds = %2903, %2895
  %2904 = phi i8 [ %2951, %2903 ], [ %2902, %2895 ]
  %2905 = phi i8 [ %2938, %2903 ], [ %2900, %2895 ]
  %2906 = phi i8 [ %2925, %2903 ], [ %2898, %2895 ]
  %2907 = phi i8 [ %2914, %2903 ], [ %2896, %2895 ]
  %2908 = phi i32 [ %2964, %2903 ], [ 0, %2895 ]
  %2909 = phi ptr [ %2912, %2903 ], [ %282, %2895 ]
  %2910 = phi ptr [ %2963, %2903 ], [ getelementptr inbounds (i8, ptr @OM, i64 1024), %2895 ]
  %2911 = phi ptr [ %2962, %2903 ], [ %6, %2895 ]
  %2912 = getelementptr i8, ptr %2909, i64 %33
  %2913 = zext i8 %2907 to i32
  %2914 = load i8, ptr %2912, align 1, !tbaa !12
  %2915 = zext i8 %2914 to i32
  %2916 = add nuw nsw i32 %2913, 1
  %2917 = add nuw nsw i32 %2916, %2915
  %2918 = lshr i32 %2917, 1
  %2919 = load i32, ptr %2910, align 4, !tbaa !6
  %2920 = mul i32 %2918, %2919
  %2921 = load i32, ptr %2911, align 4, !tbaa !6
  %2922 = add i32 %2920, %2921
  store i32 %2922, ptr %2911, align 4, !tbaa !6
  %2923 = zext i8 %2906 to i32
  %2924 = getelementptr inbounds i8, ptr %2912, i64 1
  %2925 = load i8, ptr %2924, align 1, !tbaa !12
  %2926 = zext i8 %2925 to i32
  %2927 = add nuw nsw i32 %2923, 1
  %2928 = add nuw nsw i32 %2927, %2926
  %2929 = lshr i32 %2928, 1
  %2930 = getelementptr inbounds i8, ptr %2910, i64 4
  %2931 = load i32, ptr %2930, align 4, !tbaa !6
  %2932 = mul i32 %2929, %2931
  %2933 = getelementptr inbounds i8, ptr %2911, i64 4
  %2934 = load i32, ptr %2933, align 4, !tbaa !6
  %2935 = add i32 %2932, %2934
  store i32 %2935, ptr %2933, align 4, !tbaa !6
  %2936 = zext i8 %2905 to i32
  %2937 = getelementptr inbounds i8, ptr %2912, i64 2
  %2938 = load i8, ptr %2937, align 1, !tbaa !12
  %2939 = zext i8 %2938 to i32
  %2940 = add nuw nsw i32 %2936, 1
  %2941 = add nuw nsw i32 %2940, %2939
  %2942 = lshr i32 %2941, 1
  %2943 = getelementptr inbounds i8, ptr %2910, i64 8
  %2944 = load i32, ptr %2943, align 4, !tbaa !6
  %2945 = mul i32 %2942, %2944
  %2946 = getelementptr inbounds i8, ptr %2911, i64 8
  %2947 = load i32, ptr %2946, align 4, !tbaa !6
  %2948 = add i32 %2945, %2947
  store i32 %2948, ptr %2946, align 4, !tbaa !6
  %2949 = zext i8 %2904 to i32
  %2950 = getelementptr inbounds i8, ptr %2912, i64 3
  %2951 = load i8, ptr %2950, align 1, !tbaa !12
  %2952 = zext i8 %2951 to i32
  %2953 = add nuw nsw i32 %2949, 1
  %2954 = add nuw nsw i32 %2953, %2952
  %2955 = lshr i32 %2954, 1
  %2956 = getelementptr inbounds i8, ptr %2910, i64 12
  %2957 = load i32, ptr %2956, align 4, !tbaa !6
  %2958 = mul i32 %2955, %2957
  %2959 = getelementptr inbounds i8, ptr %2911, i64 12
  %2960 = load i32, ptr %2959, align 4, !tbaa !6
  %2961 = add i32 %2958, %2960
  store i32 %2961, ptr %2959, align 4, !tbaa !6
  %2962 = getelementptr inbounds i8, ptr %2911, i64 32
  %2963 = getelementptr inbounds i8, ptr %2910, i64 32
  %2964 = add nuw nsw i32 %2908, 1
  %2965 = icmp eq i32 %2964, 8
  br i1 %2965, label %3109, label %2903

2966:                                             ; preds = %2892
  %2967 = select i1 %2893, i1 true, i1 %2666
  br i1 %2967, label %3024, label %2968

2968:                                             ; preds = %2966, %2968
  %2969 = phi i64 [ %3022, %2968 ], [ 0, %2966 ]
  %2970 = phi ptr [ %3020, %2968 ], [ %282, %2966 ]
  %2971 = phi ptr [ %3021, %2968 ], [ %6, %2966 ]
  %2972 = load i8, ptr %2970, align 1, !tbaa !12
  %2973 = zext i8 %2972 to i32
  %2974 = getelementptr inbounds i8, ptr %2970, i64 1
  %2975 = load i8, ptr %2974, align 1, !tbaa !12
  %2976 = zext i8 %2975 to i32
  %2977 = add nuw nsw i32 %2976, 1
  %2978 = add nuw nsw i32 %2977, %2973
  %2979 = lshr i32 %2978, 1
  %2980 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 4, i64 %2969, i64 0
  %2981 = load i32, ptr %2980, align 4, !tbaa !6
  %2982 = mul i32 %2979, %2981
  %2983 = load i32, ptr %2971, align 4, !tbaa !6
  %2984 = add i32 %2982, %2983
  store i32 %2984, ptr %2971, align 4, !tbaa !6
  %2985 = getelementptr inbounds i8, ptr %2970, i64 2
  %2986 = load i8, ptr %2985, align 1, !tbaa !12
  %2987 = zext i8 %2986 to i32
  %2988 = add nuw nsw i32 %2977, %2987
  %2989 = lshr i32 %2988, 1
  %2990 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 4, i64 %2969, i64 1
  %2991 = load i32, ptr %2990, align 4, !tbaa !6
  %2992 = mul i32 %2989, %2991
  %2993 = getelementptr inbounds i8, ptr %2971, i64 4
  %2994 = load i32, ptr %2993, align 4, !tbaa !6
  %2995 = add i32 %2992, %2994
  store i32 %2995, ptr %2993, align 4, !tbaa !6
  %2996 = getelementptr inbounds i8, ptr %2970, i64 3
  %2997 = load i8, ptr %2996, align 1, !tbaa !12
  %2998 = zext i8 %2997 to i32
  %2999 = add nuw nsw i32 %2987, 1
  %3000 = add nuw nsw i32 %2999, %2998
  %3001 = lshr i32 %3000, 1
  %3002 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 4, i64 %2969, i64 2
  %3003 = load i32, ptr %3002, align 4, !tbaa !6
  %3004 = mul i32 %3001, %3003
  %3005 = getelementptr inbounds i8, ptr %2971, i64 8
  %3006 = load i32, ptr %3005, align 4, !tbaa !6
  %3007 = add i32 %3004, %3006
  store i32 %3007, ptr %3005, align 4, !tbaa !6
  %3008 = getelementptr inbounds i8, ptr %2970, i64 4
  %3009 = load i8, ptr %3008, align 1, !tbaa !12
  %3010 = zext i8 %3009 to i32
  %3011 = add nuw nsw i32 %2998, 1
  %3012 = add nuw nsw i32 %3011, %3010
  %3013 = lshr i32 %3012, 1
  %3014 = getelementptr inbounds [5 x [8 x [8 x i32]]], ptr @OM, i64 0, i64 4, i64 %2969, i64 3
  %3015 = load i32, ptr %3014, align 4, !tbaa !6
  %3016 = mul i32 %3013, %3015
  %3017 = getelementptr inbounds i8, ptr %2971, i64 12
  %3018 = load i32, ptr %3017, align 4, !tbaa !6
  %3019 = add i32 %3016, %3018
  store i32 %3019, ptr %3017, align 4, !tbaa !6
  %3020 = getelementptr inbounds i8, ptr %2970, i64 %33
  %3021 = getelementptr inbounds i8, ptr %2971, i64 32
  %3022 = add nuw nsw i64 %2969, 1
  %3023 = icmp eq i64 %3022, 8
  br i1 %3023, label %3109, label %2968

3024:                                             ; preds = %2966
  %3025 = load i8, ptr %282, align 1, !tbaa !12
  %3026 = getelementptr inbounds i8, ptr %282, i64 1
  %3027 = load i8, ptr %3026, align 1, !tbaa !12
  %3028 = getelementptr inbounds i8, ptr %282, i64 2
  %3029 = load i8, ptr %3028, align 1, !tbaa !12
  %3030 = getelementptr inbounds i8, ptr %282, i64 3
  %3031 = load i8, ptr %3030, align 1, !tbaa !12
  %3032 = getelementptr inbounds i8, ptr %282, i64 4
  %3033 = load i8, ptr %3032, align 1, !tbaa !12
  br label %3034

3034:                                             ; preds = %3034, %3024
  %3035 = phi i8 [ %3093, %3034 ], [ %3033, %3024 ]
  %3036 = phi i8 [ %3078, %3034 ], [ %3031, %3024 ]
  %3037 = phi i8 [ %3063, %3034 ], [ %3029, %3024 ]
  %3038 = phi i8 [ %3050, %3034 ], [ %3027, %3024 ]
  %3039 = phi i8 [ %3046, %3034 ], [ %3025, %3024 ]
  %3040 = phi i32 [ %3107, %3034 ], [ 0, %3024 ]
  %3041 = phi ptr [ %3044, %3034 ], [ %282, %3024 ]
  %3042 = phi ptr [ %3106, %3034 ], [ getelementptr inbounds (i8, ptr @OM, i64 1024), %3024 ]
  %3043 = phi ptr [ %3105, %3034 ], [ %6, %3024 ]
  %3044 = getelementptr i8, ptr %3041, i64 %33
  %3045 = zext i8 %3039 to i32
  %3046 = load i8, ptr %3044, align 1, !tbaa !12
  %3047 = zext i8 %3046 to i32
  %3048 = zext i8 %3038 to i32
  %3049 = getelementptr inbounds i8, ptr %3044, i64 1
  %3050 = load i8, ptr %3049, align 1, !tbaa !12
  %3051 = zext i8 %3050 to i32
  %3052 = add nuw nsw i32 %3048, 2
  %3053 = add nuw nsw i32 %3052, %3045
  %3054 = add nuw nsw i32 %3053, %3047
  %3055 = add nuw nsw i32 %3054, %3051
  %3056 = lshr i32 %3055, 2
  %3057 = load i32, ptr %3042, align 4, !tbaa !6
  %3058 = mul i32 %3056, %3057
  %3059 = load i32, ptr %3043, align 4, !tbaa !6
  %3060 = add i32 %3058, %3059
  store i32 %3060, ptr %3043, align 4, !tbaa !6
  %3061 = zext i8 %3037 to i32
  %3062 = getelementptr inbounds i8, ptr %3044, i64 2
  %3063 = load i8, ptr %3062, align 1, !tbaa !12
  %3064 = zext i8 %3063 to i32
  %3065 = add nuw nsw i32 %3061, 2
  %3066 = add nuw nsw i32 %3065, %3048
  %3067 = add nuw nsw i32 %3066, %3051
  %3068 = add nuw nsw i32 %3067, %3064
  %3069 = lshr i32 %3068, 2
  %3070 = getelementptr inbounds i8, ptr %3042, i64 4
  %3071 = load i32, ptr %3070, align 4, !tbaa !6
  %3072 = mul i32 %3069, %3071
  %3073 = getelementptr inbounds i8, ptr %3043, i64 4
  %3074 = load i32, ptr %3073, align 4, !tbaa !6
  %3075 = add i32 %3072, %3074
  store i32 %3075, ptr %3073, align 4, !tbaa !6
  %3076 = zext i8 %3036 to i32
  %3077 = getelementptr inbounds i8, ptr %3044, i64 3
  %3078 = load i8, ptr %3077, align 1, !tbaa !12
  %3079 = zext i8 %3078 to i32
  %3080 = add nuw nsw i32 %3076, 2
  %3081 = add nuw nsw i32 %3080, %3061
  %3082 = add nuw nsw i32 %3081, %3064
  %3083 = add nuw nsw i32 %3082, %3079
  %3084 = lshr i32 %3083, 2
  %3085 = getelementptr inbounds i8, ptr %3042, i64 8
  %3086 = load i32, ptr %3085, align 4, !tbaa !6
  %3087 = mul i32 %3084, %3086
  %3088 = getelementptr inbounds i8, ptr %3043, i64 8
  %3089 = load i32, ptr %3088, align 4, !tbaa !6
  %3090 = add i32 %3087, %3089
  store i32 %3090, ptr %3088, align 4, !tbaa !6
  %3091 = zext i8 %3035 to i32
  %3092 = getelementptr inbounds i8, ptr %3044, i64 4
  %3093 = load i8, ptr %3092, align 1, !tbaa !12
  %3094 = zext i8 %3093 to i32
  %3095 = add nuw nsw i32 %3080, %3091
  %3096 = add nuw nsw i32 %3095, %3079
  %3097 = add nuw nsw i32 %3096, %3094
  %3098 = lshr i32 %3097, 2
  %3099 = getelementptr inbounds i8, ptr %3042, i64 12
  %3100 = load i32, ptr %3099, align 4, !tbaa !6
  %3101 = mul i32 %3098, %3100
  %3102 = getelementptr inbounds i8, ptr %3043, i64 12
  %3103 = load i32, ptr %3102, align 4, !tbaa !6
  %3104 = add i32 %3101, %3103
  store i32 %3104, ptr %3102, align 4, !tbaa !6
  %3105 = getelementptr inbounds i8, ptr %3043, i64 32
  %3106 = getelementptr inbounds i8, ptr %3042, i64 32
  %3107 = add nuw nsw i32 %3040, 1
  %3108 = icmp eq i32 %3107, 8
  br i1 %3108, label %3109, label %3034

3109:                                             ; preds = %2968, %3034, %2903, %2668
  %3110 = mul nsw i32 %107, %11
  %3111 = sext i32 %3110 to i64
  %3112 = getelementptr inbounds i8, ptr %108, i64 %3111
  %3113 = getelementptr inbounds i8, ptr %3112, i64 %231
  %3114 = load i32, ptr %6, align 4, !tbaa !6
  %3115 = add nsw i32 %3114, 4
  %3116 = lshr i32 %3115, 3
  %3117 = trunc i32 %3116 to i8
  store i8 %3117, ptr %3113, align 1, !tbaa !12
  %3118 = load i32, ptr %34, align 4, !tbaa !6
  %3119 = add nsw i32 %3118, 4
  %3120 = lshr i32 %3119, 3
  %3121 = trunc i32 %3120 to i8
  %3122 = getelementptr inbounds i8, ptr %3113, i64 1
  store i8 %3121, ptr %3122, align 1, !tbaa !12
  %3123 = load i32, ptr %35, align 4, !tbaa !6
  %3124 = add nsw i32 %3123, 4
  %3125 = lshr i32 %3124, 3
  %3126 = trunc i32 %3125 to i8
  %3127 = getelementptr inbounds i8, ptr %3113, i64 2
  store i8 %3126, ptr %3127, align 1, !tbaa !12
  %3128 = load i32, ptr %36, align 4, !tbaa !6
  %3129 = add nsw i32 %3128, 4
  %3130 = lshr i32 %3129, 3
  %3131 = trunc i32 %3130 to i8
  %3132 = getelementptr inbounds i8, ptr %3113, i64 3
  store i8 %3131, ptr %3132, align 1, !tbaa !12
  %3133 = load i32, ptr %37, align 4, !tbaa !6
  %3134 = add nsw i32 %3133, 4
  %3135 = lshr i32 %3134, 3
  %3136 = trunc i32 %3135 to i8
  %3137 = getelementptr inbounds i8, ptr %3113, i64 4
  store i8 %3136, ptr %3137, align 1, !tbaa !12
  %3138 = load i32, ptr %38, align 4, !tbaa !6
  %3139 = add nsw i32 %3138, 4
  %3140 = lshr i32 %3139, 3
  %3141 = trunc i32 %3140 to i8
  %3142 = getelementptr inbounds i8, ptr %3113, i64 5
  store i8 %3141, ptr %3142, align 1, !tbaa !12
  %3143 = load i32, ptr %39, align 4, !tbaa !6
  %3144 = add nsw i32 %3143, 4
  %3145 = lshr i32 %3144, 3
  %3146 = trunc i32 %3145 to i8
  %3147 = getelementptr inbounds i8, ptr %3113, i64 6
  store i8 %3146, ptr %3147, align 1, !tbaa !12
  %3148 = load i32, ptr %40, align 4, !tbaa !6
  %3149 = add nsw i32 %3148, 4
  %3150 = lshr i32 %3149, 3
  %3151 = trunc i32 %3150 to i8
  %3152 = getelementptr inbounds i8, ptr %3113, i64 7
  store i8 %3151, ptr %3152, align 1, !tbaa !12
  %3153 = getelementptr inbounds i8, ptr %3113, i64 %99
  %3154 = load i32, ptr %41, align 4, !tbaa !6
  %3155 = add nsw i32 %3154, 4
  %3156 = lshr i32 %3155, 3
  %3157 = trunc i32 %3156 to i8
  store i8 %3157, ptr %3153, align 1, !tbaa !12
  %3158 = load i32, ptr %42, align 4, !tbaa !6
  %3159 = add nsw i32 %3158, 4
  %3160 = lshr i32 %3159, 3
  %3161 = trunc i32 %3160 to i8
  %3162 = getelementptr inbounds i8, ptr %3153, i64 1
  store i8 %3161, ptr %3162, align 1, !tbaa !12
  %3163 = load i32, ptr %43, align 4, !tbaa !6
  %3164 = add nsw i32 %3163, 4
  %3165 = lshr i32 %3164, 3
  %3166 = trunc i32 %3165 to i8
  %3167 = getelementptr inbounds i8, ptr %3153, i64 2
  store i8 %3166, ptr %3167, align 1, !tbaa !12
  %3168 = load i32, ptr %44, align 4, !tbaa !6
  %3169 = add nsw i32 %3168, 4
  %3170 = lshr i32 %3169, 3
  %3171 = trunc i32 %3170 to i8
  %3172 = getelementptr inbounds i8, ptr %3153, i64 3
  store i8 %3171, ptr %3172, align 1, !tbaa !12
  %3173 = load i32, ptr %45, align 4, !tbaa !6
  %3174 = add nsw i32 %3173, 4
  %3175 = lshr i32 %3174, 3
  %3176 = trunc i32 %3175 to i8
  %3177 = getelementptr inbounds i8, ptr %3153, i64 4
  store i8 %3176, ptr %3177, align 1, !tbaa !12
  %3178 = load i32, ptr %46, align 4, !tbaa !6
  %3179 = add nsw i32 %3178, 4
  %3180 = lshr i32 %3179, 3
  %3181 = trunc i32 %3180 to i8
  %3182 = getelementptr inbounds i8, ptr %3153, i64 5
  store i8 %3181, ptr %3182, align 1, !tbaa !12
  %3183 = load i32, ptr %47, align 4, !tbaa !6
  %3184 = add nsw i32 %3183, 4
  %3185 = lshr i32 %3184, 3
  %3186 = trunc i32 %3185 to i8
  %3187 = getelementptr inbounds i8, ptr %3153, i64 6
  store i8 %3186, ptr %3187, align 1, !tbaa !12
  %3188 = load i32, ptr %48, align 4, !tbaa !6
  %3189 = add nsw i32 %3188, 4
  %3190 = lshr i32 %3189, 3
  %3191 = trunc i32 %3190 to i8
  %3192 = getelementptr inbounds i8, ptr %3153, i64 7
  store i8 %3191, ptr %3192, align 1, !tbaa !12
  %3193 = getelementptr inbounds i8, ptr %3153, i64 %99
  %3194 = load i32, ptr %49, align 4, !tbaa !6
  %3195 = add nsw i32 %3194, 4
  %3196 = lshr i32 %3195, 3
  %3197 = trunc i32 %3196 to i8
  store i8 %3197, ptr %3193, align 1, !tbaa !12
  %3198 = load i32, ptr %50, align 4, !tbaa !6
  %3199 = add nsw i32 %3198, 4
  %3200 = lshr i32 %3199, 3
  %3201 = trunc i32 %3200 to i8
  %3202 = getelementptr inbounds i8, ptr %3193, i64 1
  store i8 %3201, ptr %3202, align 1, !tbaa !12
  %3203 = load i32, ptr %51, align 4, !tbaa !6
  %3204 = add nsw i32 %3203, 4
  %3205 = lshr i32 %3204, 3
  %3206 = trunc i32 %3205 to i8
  %3207 = getelementptr inbounds i8, ptr %3193, i64 2
  store i8 %3206, ptr %3207, align 1, !tbaa !12
  %3208 = load i32, ptr %52, align 4, !tbaa !6
  %3209 = add nsw i32 %3208, 4
  %3210 = lshr i32 %3209, 3
  %3211 = trunc i32 %3210 to i8
  %3212 = getelementptr inbounds i8, ptr %3193, i64 3
  store i8 %3211, ptr %3212, align 1, !tbaa !12
  %3213 = load i32, ptr %53, align 4, !tbaa !6
  %3214 = add nsw i32 %3213, 4
  %3215 = lshr i32 %3214, 3
  %3216 = trunc i32 %3215 to i8
  %3217 = getelementptr inbounds i8, ptr %3193, i64 4
  store i8 %3216, ptr %3217, align 1, !tbaa !12
  %3218 = load i32, ptr %54, align 4, !tbaa !6
  %3219 = add nsw i32 %3218, 4
  %3220 = lshr i32 %3219, 3
  %3221 = trunc i32 %3220 to i8
  %3222 = getelementptr inbounds i8, ptr %3193, i64 5
  store i8 %3221, ptr %3222, align 1, !tbaa !12
  %3223 = load i32, ptr %55, align 4, !tbaa !6
  %3224 = add nsw i32 %3223, 4
  %3225 = lshr i32 %3224, 3
  %3226 = trunc i32 %3225 to i8
  %3227 = getelementptr inbounds i8, ptr %3193, i64 6
  store i8 %3226, ptr %3227, align 1, !tbaa !12
  %3228 = load i32, ptr %56, align 4, !tbaa !6
  %3229 = add nsw i32 %3228, 4
  %3230 = lshr i32 %3229, 3
  %3231 = trunc i32 %3230 to i8
  %3232 = getelementptr inbounds i8, ptr %3193, i64 7
  store i8 %3231, ptr %3232, align 1, !tbaa !12
  %3233 = getelementptr inbounds i8, ptr %3193, i64 %99
  %3234 = load i32, ptr %57, align 4, !tbaa !6
  %3235 = add nsw i32 %3234, 4
  %3236 = lshr i32 %3235, 3
  %3237 = trunc i32 %3236 to i8
  store i8 %3237, ptr %3233, align 1, !tbaa !12
  %3238 = load i32, ptr %58, align 4, !tbaa !6
  %3239 = add nsw i32 %3238, 4
  %3240 = lshr i32 %3239, 3
  %3241 = trunc i32 %3240 to i8
  %3242 = getelementptr inbounds i8, ptr %3233, i64 1
  store i8 %3241, ptr %3242, align 1, !tbaa !12
  %3243 = load i32, ptr %59, align 4, !tbaa !6
  %3244 = add nsw i32 %3243, 4
  %3245 = lshr i32 %3244, 3
  %3246 = trunc i32 %3245 to i8
  %3247 = getelementptr inbounds i8, ptr %3233, i64 2
  store i8 %3246, ptr %3247, align 1, !tbaa !12
  %3248 = load i32, ptr %60, align 4, !tbaa !6
  %3249 = add nsw i32 %3248, 4
  %3250 = lshr i32 %3249, 3
  %3251 = trunc i32 %3250 to i8
  %3252 = getelementptr inbounds i8, ptr %3233, i64 3
  store i8 %3251, ptr %3252, align 1, !tbaa !12
  %3253 = load i32, ptr %61, align 4, !tbaa !6
  %3254 = add nsw i32 %3253, 4
  %3255 = lshr i32 %3254, 3
  %3256 = trunc i32 %3255 to i8
  %3257 = getelementptr inbounds i8, ptr %3233, i64 4
  store i8 %3256, ptr %3257, align 1, !tbaa !12
  %3258 = load i32, ptr %62, align 4, !tbaa !6
  %3259 = add nsw i32 %3258, 4
  %3260 = lshr i32 %3259, 3
  %3261 = trunc i32 %3260 to i8
  %3262 = getelementptr inbounds i8, ptr %3233, i64 5
  store i8 %3261, ptr %3262, align 1, !tbaa !12
  %3263 = load i32, ptr %63, align 4, !tbaa !6
  %3264 = add nsw i32 %3263, 4
  %3265 = lshr i32 %3264, 3
  %3266 = trunc i32 %3265 to i8
  %3267 = getelementptr inbounds i8, ptr %3233, i64 6
  store i8 %3266, ptr %3267, align 1, !tbaa !12
  %3268 = load i32, ptr %64, align 4, !tbaa !6
  %3269 = add nsw i32 %3268, 4
  %3270 = lshr i32 %3269, 3
  %3271 = trunc i32 %3270 to i8
  %3272 = getelementptr inbounds i8, ptr %3233, i64 7
  store i8 %3271, ptr %3272, align 1, !tbaa !12
  %3273 = getelementptr inbounds i8, ptr %3233, i64 %99
  %3274 = load i32, ptr %65, align 4, !tbaa !6
  %3275 = add nsw i32 %3274, 4
  %3276 = lshr i32 %3275, 3
  %3277 = trunc i32 %3276 to i8
  store i8 %3277, ptr %3273, align 1, !tbaa !12
  %3278 = load i32, ptr %66, align 4, !tbaa !6
  %3279 = add nsw i32 %3278, 4
  %3280 = lshr i32 %3279, 3
  %3281 = trunc i32 %3280 to i8
  %3282 = getelementptr inbounds i8, ptr %3273, i64 1
  store i8 %3281, ptr %3282, align 1, !tbaa !12
  %3283 = load i32, ptr %67, align 4, !tbaa !6
  %3284 = add nsw i32 %3283, 4
  %3285 = lshr i32 %3284, 3
  %3286 = trunc i32 %3285 to i8
  %3287 = getelementptr inbounds i8, ptr %3273, i64 2
  store i8 %3286, ptr %3287, align 1, !tbaa !12
  %3288 = load i32, ptr %68, align 4, !tbaa !6
  %3289 = add nsw i32 %3288, 4
  %3290 = lshr i32 %3289, 3
  %3291 = trunc i32 %3290 to i8
  %3292 = getelementptr inbounds i8, ptr %3273, i64 3
  store i8 %3291, ptr %3292, align 1, !tbaa !12
  %3293 = load i32, ptr %69, align 4, !tbaa !6
  %3294 = add nsw i32 %3293, 4
  %3295 = lshr i32 %3294, 3
  %3296 = trunc i32 %3295 to i8
  %3297 = getelementptr inbounds i8, ptr %3273, i64 4
  store i8 %3296, ptr %3297, align 1, !tbaa !12
  %3298 = load i32, ptr %70, align 4, !tbaa !6
  %3299 = add nsw i32 %3298, 4
  %3300 = lshr i32 %3299, 3
  %3301 = trunc i32 %3300 to i8
  %3302 = getelementptr inbounds i8, ptr %3273, i64 5
  store i8 %3301, ptr %3302, align 1, !tbaa !12
  %3303 = load i32, ptr %71, align 4, !tbaa !6
  %3304 = add nsw i32 %3303, 4
  %3305 = lshr i32 %3304, 3
  %3306 = trunc i32 %3305 to i8
  %3307 = getelementptr inbounds i8, ptr %3273, i64 6
  store i8 %3306, ptr %3307, align 1, !tbaa !12
  %3308 = load i32, ptr %72, align 4, !tbaa !6
  %3309 = add nsw i32 %3308, 4
  %3310 = lshr i32 %3309, 3
  %3311 = trunc i32 %3310 to i8
  %3312 = getelementptr inbounds i8, ptr %3273, i64 7
  store i8 %3311, ptr %3312, align 1, !tbaa !12
  %3313 = getelementptr inbounds i8, ptr %3273, i64 %99
  %3314 = load i32, ptr %73, align 4, !tbaa !6
  %3315 = add nsw i32 %3314, 4
  %3316 = lshr i32 %3315, 3
  %3317 = trunc i32 %3316 to i8
  store i8 %3317, ptr %3313, align 1, !tbaa !12
  %3318 = load i32, ptr %74, align 4, !tbaa !6
  %3319 = add nsw i32 %3318, 4
  %3320 = lshr i32 %3319, 3
  %3321 = trunc i32 %3320 to i8
  %3322 = getelementptr inbounds i8, ptr %3313, i64 1
  store i8 %3321, ptr %3322, align 1, !tbaa !12
  %3323 = load i32, ptr %75, align 4, !tbaa !6
  %3324 = add nsw i32 %3323, 4
  %3325 = lshr i32 %3324, 3
  %3326 = trunc i32 %3325 to i8
  %3327 = getelementptr inbounds i8, ptr %3313, i64 2
  store i8 %3326, ptr %3327, align 1, !tbaa !12
  %3328 = load i32, ptr %76, align 4, !tbaa !6
  %3329 = add nsw i32 %3328, 4
  %3330 = lshr i32 %3329, 3
  %3331 = trunc i32 %3330 to i8
  %3332 = getelementptr inbounds i8, ptr %3313, i64 3
  store i8 %3331, ptr %3332, align 1, !tbaa !12
  %3333 = load i32, ptr %77, align 4, !tbaa !6
  %3334 = add nsw i32 %3333, 4
  %3335 = lshr i32 %3334, 3
  %3336 = trunc i32 %3335 to i8
  %3337 = getelementptr inbounds i8, ptr %3313, i64 4
  store i8 %3336, ptr %3337, align 1, !tbaa !12
  %3338 = load i32, ptr %78, align 4, !tbaa !6
  %3339 = add nsw i32 %3338, 4
  %3340 = lshr i32 %3339, 3
  %3341 = trunc i32 %3340 to i8
  %3342 = getelementptr inbounds i8, ptr %3313, i64 5
  store i8 %3341, ptr %3342, align 1, !tbaa !12
  %3343 = load i32, ptr %79, align 4, !tbaa !6
  %3344 = add nsw i32 %3343, 4
  %3345 = lshr i32 %3344, 3
  %3346 = trunc i32 %3345 to i8
  %3347 = getelementptr inbounds i8, ptr %3313, i64 6
  store i8 %3346, ptr %3347, align 1, !tbaa !12
  %3348 = load i32, ptr %80, align 4, !tbaa !6
  %3349 = add nsw i32 %3348, 4
  %3350 = lshr i32 %3349, 3
  %3351 = trunc i32 %3350 to i8
  %3352 = getelementptr inbounds i8, ptr %3313, i64 7
  store i8 %3351, ptr %3352, align 1, !tbaa !12
  %3353 = getelementptr inbounds i8, ptr %3313, i64 %99
  %3354 = load i32, ptr %81, align 4, !tbaa !6
  %3355 = add nsw i32 %3354, 4
  %3356 = lshr i32 %3355, 3
  %3357 = trunc i32 %3356 to i8
  store i8 %3357, ptr %3353, align 1, !tbaa !12
  %3358 = load i32, ptr %82, align 4, !tbaa !6
  %3359 = add nsw i32 %3358, 4
  %3360 = lshr i32 %3359, 3
  %3361 = trunc i32 %3360 to i8
  %3362 = getelementptr inbounds i8, ptr %3353, i64 1
  store i8 %3361, ptr %3362, align 1, !tbaa !12
  %3363 = load i32, ptr %83, align 4, !tbaa !6
  %3364 = add nsw i32 %3363, 4
  %3365 = lshr i32 %3364, 3
  %3366 = trunc i32 %3365 to i8
  %3367 = getelementptr inbounds i8, ptr %3353, i64 2
  store i8 %3366, ptr %3367, align 1, !tbaa !12
  %3368 = load i32, ptr %84, align 4, !tbaa !6
  %3369 = add nsw i32 %3368, 4
  %3370 = lshr i32 %3369, 3
  %3371 = trunc i32 %3370 to i8
  %3372 = getelementptr inbounds i8, ptr %3353, i64 3
  store i8 %3371, ptr %3372, align 1, !tbaa !12
  %3373 = load i32, ptr %85, align 4, !tbaa !6
  %3374 = add nsw i32 %3373, 4
  %3375 = lshr i32 %3374, 3
  %3376 = trunc i32 %3375 to i8
  %3377 = getelementptr inbounds i8, ptr %3353, i64 4
  store i8 %3376, ptr %3377, align 1, !tbaa !12
  %3378 = load i32, ptr %86, align 4, !tbaa !6
  %3379 = add nsw i32 %3378, 4
  %3380 = lshr i32 %3379, 3
  %3381 = trunc i32 %3380 to i8
  %3382 = getelementptr inbounds i8, ptr %3353, i64 5
  store i8 %3381, ptr %3382, align 1, !tbaa !12
  %3383 = load i32, ptr %87, align 4, !tbaa !6
  %3384 = add nsw i32 %3383, 4
  %3385 = lshr i32 %3384, 3
  %3386 = trunc i32 %3385 to i8
  %3387 = getelementptr inbounds i8, ptr %3353, i64 6
  store i8 %3386, ptr %3387, align 1, !tbaa !12
  %3388 = load i32, ptr %88, align 4, !tbaa !6
  %3389 = add nsw i32 %3388, 4
  %3390 = lshr i32 %3389, 3
  %3391 = trunc i32 %3390 to i8
  %3392 = getelementptr inbounds i8, ptr %3353, i64 7
  store i8 %3391, ptr %3392, align 1, !tbaa !12
  %3393 = getelementptr inbounds i8, ptr %3353, i64 %99
  %3394 = load i32, ptr %89, align 4, !tbaa !6
  %3395 = add nsw i32 %3394, 4
  %3396 = lshr i32 %3395, 3
  %3397 = trunc i32 %3396 to i8
  store i8 %3397, ptr %3393, align 1, !tbaa !12
  %3398 = load i32, ptr %90, align 4, !tbaa !6
  %3399 = add nsw i32 %3398, 4
  %3400 = lshr i32 %3399, 3
  %3401 = trunc i32 %3400 to i8
  %3402 = getelementptr inbounds i8, ptr %3393, i64 1
  store i8 %3401, ptr %3402, align 1, !tbaa !12
  %3403 = load i32, ptr %91, align 4, !tbaa !6
  %3404 = add nsw i32 %3403, 4
  %3405 = lshr i32 %3404, 3
  %3406 = trunc i32 %3405 to i8
  %3407 = getelementptr inbounds i8, ptr %3393, i64 2
  store i8 %3406, ptr %3407, align 1, !tbaa !12
  %3408 = load i32, ptr %92, align 4, !tbaa !6
  %3409 = add nsw i32 %3408, 4
  %3410 = lshr i32 %3409, 3
  %3411 = trunc i32 %3410 to i8
  %3412 = getelementptr inbounds i8, ptr %3393, i64 3
  store i8 %3411, ptr %3412, align 1, !tbaa !12
  %3413 = load i32, ptr %93, align 4, !tbaa !6
  %3414 = add nsw i32 %3413, 4
  %3415 = lshr i32 %3414, 3
  %3416 = trunc i32 %3415 to i8
  %3417 = getelementptr inbounds i8, ptr %3393, i64 4
  store i8 %3416, ptr %3417, align 1, !tbaa !12
  %3418 = load i32, ptr %94, align 4, !tbaa !6
  %3419 = add nsw i32 %3418, 4
  %3420 = lshr i32 %3419, 3
  %3421 = trunc i32 %3420 to i8
  %3422 = getelementptr inbounds i8, ptr %3393, i64 5
  store i8 %3421, ptr %3422, align 1, !tbaa !12
  %3423 = load i32, ptr %95, align 4, !tbaa !6
  %3424 = add nsw i32 %3423, 4
  %3425 = lshr i32 %3424, 3
  %3426 = trunc i32 %3425 to i8
  %3427 = getelementptr inbounds i8, ptr %3393, i64 6
  store i8 %3426, ptr %3427, align 1, !tbaa !12
  %3428 = load i32, ptr %96, align 4, !tbaa !6
  %3429 = add nsw i32 %3428, 4
  %3430 = lshr i32 %3429, 3
  %3431 = trunc i32 %3430 to i8
  %3432 = getelementptr inbounds i8, ptr %3393, i64 7
  store i8 %3431, ptr %3432, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #6
  %3433 = icmp eq i32 %143, 4
  br i1 %3433, label %3434, label %100

3434:                                             ; preds = %3109
  %3435 = icmp eq i32 %27, 2
  br i1 %3435, label %3436, label %3481

3436:                                             ; preds = %3434
  %3437 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 26280), i64 0, i64 %24, i64 %25
  %3438 = load i32, ptr %3437, align 4, !tbaa !6
  %3439 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 52560), i64 0, i64 %24, i64 %25
  %3440 = load i32, ptr %3439, align 4, !tbaa !6
  %3441 = add nsw i32 %3440, %3438
  %3442 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 78840), i64 0, i64 %24, i64 %25
  %3443 = load i32, ptr %3442, align 4, !tbaa !6
  %3444 = add nsw i32 %3441, %3443
  %3445 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 105120), i64 0, i64 %24, i64 %25
  %3446 = load i32, ptr %3445, align 4, !tbaa !6
  %3447 = add nsw i32 %3444, %3446
  %3448 = tail call i32 @llvm.abs.i32(i32 %3447, i1 true)
  %3449 = and i32 %3448, 15
  %3450 = zext nneg i32 %3449 to i64
  %3451 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %3450
  %3452 = load i32, ptr %3451, align 4, !tbaa !6
  %3453 = lshr i32 %3448, 3
  %3454 = and i32 %3453, 268435454
  %3455 = add nsw i32 %3454, %3452
  %3456 = sub nsw i32 0, %3455
  %3457 = icmp slt i32 %3447, 0
  %3458 = select i1 %3457, i32 %3456, i32 %3455
  %3459 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 157680), i64 0, i64 %24, i64 %25
  %3460 = load i32, ptr %3459, align 4, !tbaa !6
  %3461 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 183960), i64 0, i64 %24, i64 %25
  %3462 = load i32, ptr %3461, align 4, !tbaa !6
  %3463 = add nsw i32 %3462, %3460
  %3464 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 210240), i64 0, i64 %24, i64 %25
  %3465 = load i32, ptr %3464, align 4, !tbaa !6
  %3466 = add nsw i32 %3463, %3465
  %3467 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 236520), i64 0, i64 %24, i64 %25
  %3468 = load i32, ptr %3467, align 4, !tbaa !6
  %3469 = add nsw i32 %3466, %3468
  %3470 = tail call i32 @llvm.abs.i32(i32 %3469, i1 true)
  %3471 = and i32 %3470, 15
  %3472 = zext nneg i32 %3471 to i64
  %3473 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %3472
  %3474 = load i32, ptr %3473, align 4, !tbaa !6
  %3475 = lshr i32 %3470, 3
  %3476 = and i32 %3475, 268435454
  %3477 = add nsw i32 %3476, %3474
  %3478 = sub nsw i32 0, %3477
  %3479 = icmp slt i32 %3469, 0
  %3480 = select i1 %3479, i32 %3478, i32 %3477
  br label %3496

3481:                                             ; preds = %3434
  %3482 = getelementptr inbounds [73 x [90 x i32]], ptr @MV, i64 0, i64 %24, i64 %25
  %3483 = load i32, ptr %3482, align 4, !tbaa !6
  %3484 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %24, i64 %25
  %3485 = load i32, ptr %3484, align 4, !tbaa !6
  %3486 = and i32 %3483, 3
  %3487 = icmp ne i32 %3486, 0
  %3488 = ashr i32 %3483, 1
  %3489 = zext i1 %3487 to i32
  %3490 = or i32 %3488, %3489
  %3491 = and i32 %3485, 3
  %3492 = icmp ne i32 %3491, 0
  %3493 = ashr i32 %3485, 1
  %3494 = zext i1 %3492 to i32
  %3495 = or i32 %3493, %3494
  br label %3496

3496:                                             ; preds = %3481, %3436
  %3497 = phi i32 [ %3458, %3436 ], [ %3490, %3481 ]
  %3498 = phi i32 [ %3480, %3436 ], [ %3495, %3481 ]
  %3499 = ashr i32 %11, 1
  %3500 = ashr i32 %0, 1
  %3501 = ashr i32 %17, 1
  %3502 = ashr i32 %1, 1
  %3503 = load ptr, ptr getelementptr inbounds (i8, ptr @newframe, i64 8), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %22, ptr noundef %3503, i32 noundef signext %3499, i32 noundef signext %3501, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3500, i32 noundef signext %3502, i32 noundef signext %3497, i32 noundef signext %3498)
  %3504 = load ptr, ptr getelementptr inbounds (i8, ptr @newframe, i64 16), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %23, ptr noundef %3504, i32 noundef signext %3499, i32 noundef signext %3501, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3500, i32 noundef signext %3502, i32 noundef signext %3497, i32 noundef signext %3498)
  br label %3704

3505:                                             ; preds = %31
  %3506 = getelementptr inbounds [73 x [90 x i32]], ptr @MV, i64 0, i64 %24, i64 %25
  %3507 = load i32, ptr %3506, align 4, !tbaa !6
  %3508 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %24, i64 %25
  %3509 = load i32, ptr %3508, align 4, !tbaa !6
  %3510 = load ptr, ptr @newframe, align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %21, ptr noundef %3510, i32 noundef signext %11, i32 noundef signext %17, i32 noundef signext 16, i32 noundef signext 16, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %3507, i32 noundef signext %3509)
  %3511 = ashr i32 %11, 1
  %3512 = ashr i32 %0, 1
  %3513 = ashr i32 %17, 1
  %3514 = ashr i32 %1, 1
  %3515 = and i32 %3507, 3
  %3516 = icmp ne i32 %3515, 0
  %3517 = ashr i32 %3507, 1
  %3518 = zext i1 %3516 to i32
  %3519 = or i32 %3517, %3518
  %3520 = and i32 %3509, 3
  %3521 = icmp ne i32 %3520, 0
  %3522 = ashr i32 %3509, 1
  %3523 = zext i1 %3521 to i32
  %3524 = or i32 %3522, %3523
  %3525 = load ptr, ptr getelementptr inbounds (i8, ptr @newframe, i64 8), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %22, ptr noundef %3525, i32 noundef signext %3511, i32 noundef signext %3513, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3512, i32 noundef signext %3514, i32 noundef signext %3519, i32 noundef signext %3524)
  %3526 = load ptr, ptr getelementptr inbounds (i8, ptr @newframe, i64 16), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %23, ptr noundef %3526, i32 noundef signext %3511, i32 noundef signext %3513, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3512, i32 noundef signext %3514, i32 noundef signext %3519, i32 noundef signext %3524)
  br label %3704

3527:                                             ; preds = %16
  br i1 %30, label %3660, label %3528

3528:                                             ; preds = %3527
  %3529 = icmp eq i32 %27, 2
  %3530 = load i32, ptr @trb, align 4, !tbaa !6
  %3531 = load i32, ptr @trd, align 4, !tbaa !6
  %3532 = load ptr, ptr @bframe, align 8, !tbaa !10
  br i1 %3529, label %3533, label %3619

3533:                                             ; preds = %3528
  %3534 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 1, i64 %24, i64 %25
  %3535 = load i32, ptr %3534, align 4, !tbaa !6
  %3536 = mul nsw i32 %3535, %3530
  %3537 = sdiv i32 %3536, %3531
  %3538 = add nsw i32 %3537, %3
  %3539 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 1, i64 %24, i64 %25
  %3540 = load i32, ptr %3539, align 4, !tbaa !6
  %3541 = mul nsw i32 %3540, %3530
  %3542 = sdiv i32 %3541, %3531
  %3543 = add nsw i32 %3542, %4
  tail call fastcc void @recon_comp(ptr noundef %21, ptr noundef %3532, i32 noundef signext %11, i32 noundef signext %17, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %3538, i32 noundef signext %3543)
  %3544 = load i32, ptr @trb, align 4, !tbaa !6
  %3545 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 2, i64 %24, i64 %25
  %3546 = load i32, ptr %3545, align 4, !tbaa !6
  %3547 = mul nsw i32 %3546, %3544
  %3548 = load i32, ptr @trd, align 4, !tbaa !6
  %3549 = sdiv i32 %3547, %3548
  %3550 = add nsw i32 %3549, %3
  %3551 = add nsw i32 %3550, %3538
  %3552 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 2, i64 %24, i64 %25
  %3553 = load i32, ptr %3552, align 4, !tbaa !6
  %3554 = mul nsw i32 %3553, %3544
  %3555 = sdiv i32 %3554, %3548
  %3556 = add nsw i32 %3555, %4
  %3557 = add nsw i32 %3556, %3543
  %3558 = add nsw i32 %0, 8
  %3559 = load ptr, ptr @bframe, align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %21, ptr noundef %3559, i32 noundef signext %11, i32 noundef signext %17, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3558, i32 noundef signext %1, i32 noundef signext %3550, i32 noundef signext %3556)
  %3560 = load i32, ptr @trb, align 4, !tbaa !6
  %3561 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 3, i64 %24, i64 %25
  %3562 = load i32, ptr %3561, align 4, !tbaa !6
  %3563 = mul nsw i32 %3562, %3560
  %3564 = load i32, ptr @trd, align 4, !tbaa !6
  %3565 = sdiv i32 %3563, %3564
  %3566 = add nsw i32 %3565, %3
  %3567 = add nsw i32 %3566, %3551
  %3568 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 3, i64 %24, i64 %25
  %3569 = load i32, ptr %3568, align 4, !tbaa !6
  %3570 = mul nsw i32 %3569, %3560
  %3571 = sdiv i32 %3570, %3564
  %3572 = add nsw i32 %3571, %4
  %3573 = add nsw i32 %3572, %3557
  %3574 = add nsw i32 %1, 8
  %3575 = load ptr, ptr @bframe, align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %21, ptr noundef %3575, i32 noundef signext %11, i32 noundef signext %17, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %3574, i32 noundef signext %3566, i32 noundef signext %3572)
  %3576 = load i32, ptr @trb, align 4, !tbaa !6
  %3577 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr @MV, i64 0, i64 4, i64 %24, i64 %25
  %3578 = load i32, ptr %3577, align 4, !tbaa !6
  %3579 = mul nsw i32 %3578, %3576
  %3580 = load i32, ptr @trd, align 4, !tbaa !6
  %3581 = sdiv i32 %3579, %3580
  %3582 = add nsw i32 %3581, %3
  %3583 = add nsw i32 %3582, %3567
  %3584 = getelementptr inbounds [5 x [73 x [90 x i32]]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 4, i64 %24, i64 %25
  %3585 = load i32, ptr %3584, align 4, !tbaa !6
  %3586 = mul nsw i32 %3585, %3576
  %3587 = sdiv i32 %3586, %3580
  %3588 = add nsw i32 %3587, %4
  %3589 = add nsw i32 %3588, %3573
  %3590 = load ptr, ptr @bframe, align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %21, ptr noundef %3590, i32 noundef signext %11, i32 noundef signext %17, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3558, i32 noundef signext %3574, i32 noundef signext %3582, i32 noundef signext %3588)
  %3591 = tail call i32 @llvm.abs.i32(i32 %3583, i1 true)
  %3592 = and i32 %3591, 15
  %3593 = zext nneg i32 %3592 to i64
  %3594 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %3593
  %3595 = load i32, ptr %3594, align 4, !tbaa !6
  %3596 = lshr i32 %3591, 3
  %3597 = and i32 %3596, 268435454
  %3598 = add nsw i32 %3595, %3597
  %3599 = sub nsw i32 0, %3598
  %3600 = icmp slt i32 %3583, 0
  %3601 = select i1 %3600, i32 %3599, i32 %3598
  %3602 = tail call i32 @llvm.abs.i32(i32 %3589, i1 true)
  %3603 = and i32 %3602, 15
  %3604 = zext nneg i32 %3603 to i64
  %3605 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %3604
  %3606 = load i32, ptr %3605, align 4, !tbaa !6
  %3607 = lshr i32 %3602, 3
  %3608 = and i32 %3607, 268435454
  %3609 = add nsw i32 %3606, %3608
  %3610 = sub nsw i32 0, %3609
  %3611 = icmp slt i32 %3589, 0
  %3612 = select i1 %3611, i32 %3610, i32 %3609
  %3613 = ashr i32 %11, 1
  %3614 = ashr i32 %0, 1
  %3615 = ashr i32 %17, 1
  %3616 = ashr i32 %1, 1
  %3617 = load ptr, ptr getelementptr inbounds (i8, ptr @bframe, i64 8), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %22, ptr noundef %3617, i32 noundef signext %3613, i32 noundef signext %3615, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3614, i32 noundef signext %3616, i32 noundef signext %3601, i32 noundef signext %3612)
  %3618 = load ptr, ptr getelementptr inbounds (i8, ptr @bframe, i64 16), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %23, ptr noundef %3618, i32 noundef signext %3613, i32 noundef signext %3615, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3614, i32 noundef signext %3616, i32 noundef signext %3601, i32 noundef signext %3612)
  br label %3704

3619:                                             ; preds = %3528
  %3620 = getelementptr inbounds [73 x [90 x i32]], ptr @MV, i64 0, i64 %24, i64 %25
  %3621 = load i32, ptr %3620, align 4, !tbaa !6
  %3622 = mul nsw i32 %3621, %3530
  %3623 = sdiv i32 %3622, %3531
  %3624 = add nsw i32 %3623, %3
  %3625 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %24, i64 %25
  %3626 = load i32, ptr %3625, align 4, !tbaa !6
  %3627 = mul nsw i32 %3626, %3530
  %3628 = sdiv i32 %3627, %3531
  %3629 = add nsw i32 %3628, %4
  tail call fastcc void @recon_comp(ptr noundef %21, ptr noundef %3532, i32 noundef signext %11, i32 noundef signext %17, i32 noundef signext 16, i32 noundef signext 16, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %3624, i32 noundef signext %3629)
  %3630 = ashr i32 %11, 1
  %3631 = ashr i32 %0, 1
  %3632 = ashr i32 %17, 1
  %3633 = ashr i32 %1, 1
  %3634 = shl nsw i32 %3624, 2
  %3635 = shl nsw i32 %3629, 2
  %3636 = tail call i32 @llvm.abs.i32(i32 %3634, i1 true)
  %3637 = and i32 %3636, 12
  %3638 = zext nneg i32 %3637 to i64
  %3639 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %3638
  %3640 = load i32, ptr %3639, align 4, !tbaa !6
  %3641 = lshr i32 %3636, 3
  %3642 = and i32 %3641, 268435454
  %3643 = add nsw i32 %3640, %3642
  %3644 = sub nsw i32 0, %3643
  %3645 = icmp slt i32 %3624, 0
  %3646 = select i1 %3645, i32 %3644, i32 %3643
  %3647 = tail call i32 @llvm.abs.i32(i32 %3635, i1 true)
  %3648 = and i32 %3647, 12
  %3649 = zext nneg i32 %3648 to i64
  %3650 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %3649
  %3651 = load i32, ptr %3650, align 4, !tbaa !6
  %3652 = lshr i32 %3647, 3
  %3653 = and i32 %3652, 268435454
  %3654 = add nsw i32 %3653, %3651
  %3655 = sub nsw i32 0, %3654
  %3656 = icmp slt i32 %3629, 0
  %3657 = select i1 %3656, i32 %3655, i32 %3654
  %3658 = load ptr, ptr getelementptr inbounds (i8, ptr @bframe, i64 8), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %22, ptr noundef %3658, i32 noundef signext %3630, i32 noundef signext %3632, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3631, i32 noundef signext %3633, i32 noundef signext %3646, i32 noundef signext %3657)
  %3659 = load ptr, ptr getelementptr inbounds (i8, ptr @bframe, i64 16), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %23, ptr noundef %3659, i32 noundef signext %3630, i32 noundef signext %3632, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3631, i32 noundef signext %3633, i32 noundef signext %3646, i32 noundef signext %3657)
  br label %3704

3660:                                             ; preds = %3527
  %3661 = load i32, ptr @trb, align 4, !tbaa !6
  %3662 = getelementptr inbounds [73 x [90 x i32]], ptr @MV, i64 0, i64 %24, i64 %25
  %3663 = load i32, ptr %3662, align 4, !tbaa !6
  %3664 = mul nsw i32 %3663, %3661
  %3665 = load i32, ptr @trd, align 4, !tbaa !6
  %3666 = sdiv i32 %3664, %3665
  %3667 = add nsw i32 %3666, %3
  %3668 = getelementptr inbounds [73 x [90 x i32]], ptr getelementptr inbounds (i8, ptr @MV, i64 131400), i64 0, i64 %24, i64 %25
  %3669 = load i32, ptr %3668, align 4, !tbaa !6
  %3670 = mul nsw i32 %3669, %3661
  %3671 = sdiv i32 %3670, %3665
  %3672 = add nsw i32 %3671, %4
  %3673 = load ptr, ptr @bframe, align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %21, ptr noundef %3673, i32 noundef signext %11, i32 noundef signext %17, i32 noundef signext 16, i32 noundef signext 16, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %3667, i32 noundef signext %3672)
  %3674 = ashr i32 %11, 1
  %3675 = ashr i32 %0, 1
  %3676 = ashr i32 %17, 1
  %3677 = ashr i32 %1, 1
  %3678 = shl nsw i32 %3667, 2
  %3679 = shl nsw i32 %3672, 2
  %3680 = tail call i32 @llvm.abs.i32(i32 %3678, i1 true)
  %3681 = and i32 %3680, 12
  %3682 = zext nneg i32 %3681 to i64
  %3683 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %3682
  %3684 = load i32, ptr %3683, align 4, !tbaa !6
  %3685 = lshr i32 %3680, 3
  %3686 = and i32 %3685, 268435454
  %3687 = add nsw i32 %3684, %3686
  %3688 = sub nsw i32 0, %3687
  %3689 = icmp slt i32 %3667, 0
  %3690 = select i1 %3689, i32 %3688, i32 %3687
  %3691 = tail call i32 @llvm.abs.i32(i32 %3679, i1 true)
  %3692 = and i32 %3691, 12
  %3693 = zext nneg i32 %3692 to i64
  %3694 = getelementptr inbounds [16 x i32], ptr @roundtab, i64 0, i64 %3693
  %3695 = load i32, ptr %3694, align 4, !tbaa !6
  %3696 = lshr i32 %3691, 3
  %3697 = and i32 %3696, 268435454
  %3698 = add nsw i32 %3697, %3695
  %3699 = sub nsw i32 0, %3698
  %3700 = icmp slt i32 %3672, 0
  %3701 = select i1 %3700, i32 %3699, i32 %3698
  %3702 = load ptr, ptr getelementptr inbounds (i8, ptr @bframe, i64 8), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %22, ptr noundef %3702, i32 noundef signext %3674, i32 noundef signext %3676, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3675, i32 noundef signext %3677, i32 noundef signext %3690, i32 noundef signext %3701)
  %3703 = load ptr, ptr getelementptr inbounds (i8, ptr @bframe, i64 16), align 8, !tbaa !10
  tail call fastcc void @recon_comp(ptr noundef %23, ptr noundef %3703, i32 noundef signext %3674, i32 noundef signext %3676, i32 noundef signext 8, i32 noundef signext 8, i32 noundef signext %3675, i32 noundef signext %3677, i32 noundef signext %3690, i32 noundef signext %3701)
  br label %3704

3704:                                             ; preds = %3660, %3619, %3533, %3496, %3505
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @recon_comp(ptr noundef readonly %0, ptr noundef writeonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9) unnamed_addr #3 {
  %11 = ashr i32 %8, 1
  %12 = ashr i32 %9, 1
  %13 = and i32 %9, 1
  %14 = add nsw i32 %12, %7
  %15 = mul nsw i32 %14, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = sext i32 %6 to i64
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = sext i32 %11 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = mul nsw i32 %7, %2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 %18
  %26 = icmp ne i32 %13, 0
  %27 = or i32 %9, %8
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %125

30:                                               ; preds = %10
  %31 = icmp eq i32 %4, 8
  %32 = icmp sgt i32 %5, 0
  br i1 %31, label %91, label %33

33:                                               ; preds = %30
  br i1 %32, label %34, label %971

34:                                               ; preds = %33
  %35 = sext i32 %3 to i64
  %36 = sext i32 %2 to i64
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ 0, %34 ], [ %89, %37 ]
  %39 = phi ptr [ %21, %34 ], [ %87, %37 ]
  %40 = phi ptr [ %25, %34 ], [ %88, %37 ]
  %41 = load i8, ptr %39, align 1, !tbaa !12
  store i8 %41, ptr %40, align 1, !tbaa !12
  %42 = getelementptr inbounds i8, ptr %39, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !12
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 %43, ptr %44, align 1, !tbaa !12
  %45 = getelementptr inbounds i8, ptr %39, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !12
  %47 = getelementptr inbounds i8, ptr %40, i64 2
  store i8 %46, ptr %47, align 1, !tbaa !12
  %48 = getelementptr inbounds i8, ptr %39, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !12
  %50 = getelementptr inbounds i8, ptr %40, i64 3
  store i8 %49, ptr %50, align 1, !tbaa !12
  %51 = getelementptr inbounds i8, ptr %39, i64 4
  %52 = load i8, ptr %51, align 1, !tbaa !12
  %53 = getelementptr inbounds i8, ptr %40, i64 4
  store i8 %52, ptr %53, align 1, !tbaa !12
  %54 = getelementptr inbounds i8, ptr %39, i64 5
  %55 = load i8, ptr %54, align 1, !tbaa !12
  %56 = getelementptr inbounds i8, ptr %40, i64 5
  store i8 %55, ptr %56, align 1, !tbaa !12
  %57 = getelementptr inbounds i8, ptr %39, i64 6
  %58 = load i8, ptr %57, align 1, !tbaa !12
  %59 = getelementptr inbounds i8, ptr %40, i64 6
  store i8 %58, ptr %59, align 1, !tbaa !12
  %60 = getelementptr inbounds i8, ptr %39, i64 7
  %61 = load i8, ptr %60, align 1, !tbaa !12
  %62 = getelementptr inbounds i8, ptr %40, i64 7
  store i8 %61, ptr %62, align 1, !tbaa !12
  %63 = getelementptr inbounds i8, ptr %39, i64 8
  %64 = load i8, ptr %63, align 1, !tbaa !12
  %65 = getelementptr inbounds i8, ptr %40, i64 8
  store i8 %64, ptr %65, align 1, !tbaa !12
  %66 = getelementptr inbounds i8, ptr %39, i64 9
  %67 = load i8, ptr %66, align 1, !tbaa !12
  %68 = getelementptr inbounds i8, ptr %40, i64 9
  store i8 %67, ptr %68, align 1, !tbaa !12
  %69 = getelementptr inbounds i8, ptr %39, i64 10
  %70 = load i8, ptr %69, align 1, !tbaa !12
  %71 = getelementptr inbounds i8, ptr %40, i64 10
  store i8 %70, ptr %71, align 1, !tbaa !12
  %72 = getelementptr inbounds i8, ptr %39, i64 11
  %73 = load i8, ptr %72, align 1, !tbaa !12
  %74 = getelementptr inbounds i8, ptr %40, i64 11
  store i8 %73, ptr %74, align 1, !tbaa !12
  %75 = getelementptr inbounds i8, ptr %39, i64 12
  %76 = load i8, ptr %75, align 1, !tbaa !12
  %77 = getelementptr inbounds i8, ptr %40, i64 12
  store i8 %76, ptr %77, align 1, !tbaa !12
  %78 = getelementptr inbounds i8, ptr %39, i64 13
  %79 = load i8, ptr %78, align 1, !tbaa !12
  %80 = getelementptr inbounds i8, ptr %40, i64 13
  store i8 %79, ptr %80, align 1, !tbaa !12
  %81 = getelementptr inbounds i8, ptr %39, i64 14
  %82 = load i8, ptr %81, align 1, !tbaa !12
  %83 = getelementptr inbounds i8, ptr %40, i64 14
  store i8 %82, ptr %83, align 1, !tbaa !12
  %84 = getelementptr inbounds i8, ptr %39, i64 15
  %85 = load i8, ptr %84, align 1, !tbaa !12
  %86 = getelementptr inbounds i8, ptr %40, i64 15
  store i8 %85, ptr %86, align 1, !tbaa !12
  %87 = getelementptr inbounds i8, ptr %39, i64 %35
  %88 = getelementptr inbounds i8, ptr %40, i64 %36
  %89 = add nuw nsw i32 %38, 1
  %90 = icmp eq i32 %89, %5
  br i1 %90, label %971, label %37

91:                                               ; preds = %30
  br i1 %32, label %92, label %971

92:                                               ; preds = %91
  %93 = sext i32 %3 to i64
  %94 = sext i32 %2 to i64
  br label %95

95:                                               ; preds = %95, %92
  %96 = phi i32 [ 0, %92 ], [ %123, %95 ]
  %97 = phi ptr [ %21, %92 ], [ %121, %95 ]
  %98 = phi ptr [ %25, %92 ], [ %122, %95 ]
  %99 = load i8, ptr %97, align 1, !tbaa !12
  store i8 %99, ptr %98, align 1, !tbaa !12
  %100 = getelementptr inbounds i8, ptr %97, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !12
  %102 = getelementptr inbounds i8, ptr %98, i64 1
  store i8 %101, ptr %102, align 1, !tbaa !12
  %103 = getelementptr inbounds i8, ptr %97, i64 2
  %104 = load i8, ptr %103, align 1, !tbaa !12
  %105 = getelementptr inbounds i8, ptr %98, i64 2
  store i8 %104, ptr %105, align 1, !tbaa !12
  %106 = getelementptr inbounds i8, ptr %97, i64 3
  %107 = load i8, ptr %106, align 1, !tbaa !12
  %108 = getelementptr inbounds i8, ptr %98, i64 3
  store i8 %107, ptr %108, align 1, !tbaa !12
  %109 = getelementptr inbounds i8, ptr %97, i64 4
  %110 = load i8, ptr %109, align 1, !tbaa !12
  %111 = getelementptr inbounds i8, ptr %98, i64 4
  store i8 %110, ptr %111, align 1, !tbaa !12
  %112 = getelementptr inbounds i8, ptr %97, i64 5
  %113 = load i8, ptr %112, align 1, !tbaa !12
  %114 = getelementptr inbounds i8, ptr %98, i64 5
  store i8 %113, ptr %114, align 1, !tbaa !12
  %115 = getelementptr inbounds i8, ptr %97, i64 6
  %116 = load i8, ptr %115, align 1, !tbaa !12
  %117 = getelementptr inbounds i8, ptr %98, i64 6
  store i8 %116, ptr %117, align 1, !tbaa !12
  %118 = getelementptr inbounds i8, ptr %97, i64 7
  %119 = load i8, ptr %118, align 1, !tbaa !12
  %120 = getelementptr inbounds i8, ptr %98, i64 7
  store i8 %119, ptr %120, align 1, !tbaa !12
  %121 = getelementptr inbounds i8, ptr %97, i64 %93
  %122 = getelementptr inbounds i8, ptr %98, i64 %94
  %123 = add nuw nsw i32 %96, 1
  %124 = icmp eq i32 %123, %5
  br i1 %124, label %971, label %95

125:                                              ; preds = %10
  %126 = and i32 %8, 1
  %127 = icmp eq i32 %126, 0
  %128 = and i1 %127, %26
  br i1 %128, label %129, label %413

129:                                              ; preds = %125
  %130 = icmp eq i32 %4, 8
  %131 = sext i32 %3 to i64
  %132 = icmp sgt i32 %5, 0
  br i1 %130, label %317, label %133

133:                                              ; preds = %129
  br i1 %132, label %134, label %971

134:                                              ; preds = %133
  %135 = sext i32 %2 to i64
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi i32 [ 0, %134 ], [ %315, %136 ]
  %138 = phi ptr [ %21, %134 ], [ %140, %136 ]
  %139 = phi ptr [ %25, %134 ], [ %314, %136 ]
  %140 = getelementptr i8, ptr %138, i64 %131
  %141 = load i8, ptr %138, align 1, !tbaa !12
  %142 = zext i8 %141 to i16
  %143 = load i8, ptr %140, align 1, !tbaa !12
  %144 = zext i8 %143 to i16
  %145 = add nuw nsw i16 %142, 1
  %146 = add nuw nsw i16 %145, %144
  %147 = lshr i16 %146, 1
  %148 = trunc nuw i16 %147 to i8
  store i8 %148, ptr %139, align 1, !tbaa !12
  %149 = getelementptr inbounds i8, ptr %138, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !12
  %151 = zext i8 %150 to i16
  %152 = getelementptr inbounds i8, ptr %140, i64 1
  %153 = load i8, ptr %152, align 1, !tbaa !12
  %154 = zext i8 %153 to i16
  %155 = add nuw nsw i16 %151, 1
  %156 = add nuw nsw i16 %155, %154
  %157 = lshr i16 %156, 1
  %158 = trunc nuw i16 %157 to i8
  %159 = getelementptr inbounds i8, ptr %139, i64 1
  store i8 %158, ptr %159, align 1, !tbaa !12
  %160 = getelementptr inbounds i8, ptr %138, i64 2
  %161 = load i8, ptr %160, align 1, !tbaa !12
  %162 = zext i8 %161 to i16
  %163 = getelementptr inbounds i8, ptr %140, i64 2
  %164 = load i8, ptr %163, align 1, !tbaa !12
  %165 = zext i8 %164 to i16
  %166 = add nuw nsw i16 %162, 1
  %167 = add nuw nsw i16 %166, %165
  %168 = lshr i16 %167, 1
  %169 = trunc nuw i16 %168 to i8
  %170 = getelementptr inbounds i8, ptr %139, i64 2
  store i8 %169, ptr %170, align 1, !tbaa !12
  %171 = getelementptr inbounds i8, ptr %138, i64 3
  %172 = load i8, ptr %171, align 1, !tbaa !12
  %173 = zext i8 %172 to i16
  %174 = getelementptr inbounds i8, ptr %140, i64 3
  %175 = load i8, ptr %174, align 1, !tbaa !12
  %176 = zext i8 %175 to i16
  %177 = add nuw nsw i16 %173, 1
  %178 = add nuw nsw i16 %177, %176
  %179 = lshr i16 %178, 1
  %180 = trunc nuw i16 %179 to i8
  %181 = getelementptr inbounds i8, ptr %139, i64 3
  store i8 %180, ptr %181, align 1, !tbaa !12
  %182 = getelementptr inbounds i8, ptr %138, i64 4
  %183 = load i8, ptr %182, align 1, !tbaa !12
  %184 = zext i8 %183 to i16
  %185 = getelementptr inbounds i8, ptr %140, i64 4
  %186 = load i8, ptr %185, align 1, !tbaa !12
  %187 = zext i8 %186 to i16
  %188 = add nuw nsw i16 %184, 1
  %189 = add nuw nsw i16 %188, %187
  %190 = lshr i16 %189, 1
  %191 = trunc nuw i16 %190 to i8
  %192 = getelementptr inbounds i8, ptr %139, i64 4
  store i8 %191, ptr %192, align 1, !tbaa !12
  %193 = getelementptr inbounds i8, ptr %138, i64 5
  %194 = load i8, ptr %193, align 1, !tbaa !12
  %195 = zext i8 %194 to i16
  %196 = getelementptr inbounds i8, ptr %140, i64 5
  %197 = load i8, ptr %196, align 1, !tbaa !12
  %198 = zext i8 %197 to i16
  %199 = add nuw nsw i16 %195, 1
  %200 = add nuw nsw i16 %199, %198
  %201 = lshr i16 %200, 1
  %202 = trunc nuw i16 %201 to i8
  %203 = getelementptr inbounds i8, ptr %139, i64 5
  store i8 %202, ptr %203, align 1, !tbaa !12
  %204 = getelementptr inbounds i8, ptr %138, i64 6
  %205 = load i8, ptr %204, align 1, !tbaa !12
  %206 = zext i8 %205 to i16
  %207 = getelementptr inbounds i8, ptr %140, i64 6
  %208 = load i8, ptr %207, align 1, !tbaa !12
  %209 = zext i8 %208 to i16
  %210 = add nuw nsw i16 %206, 1
  %211 = add nuw nsw i16 %210, %209
  %212 = lshr i16 %211, 1
  %213 = trunc nuw i16 %212 to i8
  %214 = getelementptr inbounds i8, ptr %139, i64 6
  store i8 %213, ptr %214, align 1, !tbaa !12
  %215 = getelementptr inbounds i8, ptr %138, i64 7
  %216 = load i8, ptr %215, align 1, !tbaa !12
  %217 = zext i8 %216 to i16
  %218 = getelementptr inbounds i8, ptr %140, i64 7
  %219 = load i8, ptr %218, align 1, !tbaa !12
  %220 = zext i8 %219 to i16
  %221 = add nuw nsw i16 %217, 1
  %222 = add nuw nsw i16 %221, %220
  %223 = lshr i16 %222, 1
  %224 = trunc nuw i16 %223 to i8
  %225 = getelementptr inbounds i8, ptr %139, i64 7
  store i8 %224, ptr %225, align 1, !tbaa !12
  %226 = getelementptr inbounds i8, ptr %138, i64 8
  %227 = load i8, ptr %226, align 1, !tbaa !12
  %228 = zext i8 %227 to i16
  %229 = getelementptr inbounds i8, ptr %140, i64 8
  %230 = load i8, ptr %229, align 1, !tbaa !12
  %231 = zext i8 %230 to i16
  %232 = add nuw nsw i16 %228, 1
  %233 = add nuw nsw i16 %232, %231
  %234 = lshr i16 %233, 1
  %235 = trunc nuw i16 %234 to i8
  %236 = getelementptr inbounds i8, ptr %139, i64 8
  store i8 %235, ptr %236, align 1, !tbaa !12
  %237 = getelementptr inbounds i8, ptr %138, i64 9
  %238 = load i8, ptr %237, align 1, !tbaa !12
  %239 = zext i8 %238 to i16
  %240 = getelementptr inbounds i8, ptr %140, i64 9
  %241 = load i8, ptr %240, align 1, !tbaa !12
  %242 = zext i8 %241 to i16
  %243 = add nuw nsw i16 %239, 1
  %244 = add nuw nsw i16 %243, %242
  %245 = lshr i16 %244, 1
  %246 = trunc nuw i16 %245 to i8
  %247 = getelementptr inbounds i8, ptr %139, i64 9
  store i8 %246, ptr %247, align 1, !tbaa !12
  %248 = getelementptr inbounds i8, ptr %138, i64 10
  %249 = load i8, ptr %248, align 1, !tbaa !12
  %250 = zext i8 %249 to i16
  %251 = getelementptr inbounds i8, ptr %140, i64 10
  %252 = load i8, ptr %251, align 1, !tbaa !12
  %253 = zext i8 %252 to i16
  %254 = add nuw nsw i16 %250, 1
  %255 = add nuw nsw i16 %254, %253
  %256 = lshr i16 %255, 1
  %257 = trunc nuw i16 %256 to i8
  %258 = getelementptr inbounds i8, ptr %139, i64 10
  store i8 %257, ptr %258, align 1, !tbaa !12
  %259 = getelementptr inbounds i8, ptr %138, i64 11
  %260 = load i8, ptr %259, align 1, !tbaa !12
  %261 = zext i8 %260 to i16
  %262 = getelementptr inbounds i8, ptr %140, i64 11
  %263 = load i8, ptr %262, align 1, !tbaa !12
  %264 = zext i8 %263 to i16
  %265 = add nuw nsw i16 %261, 1
  %266 = add nuw nsw i16 %265, %264
  %267 = lshr i16 %266, 1
  %268 = trunc nuw i16 %267 to i8
  %269 = getelementptr inbounds i8, ptr %139, i64 11
  store i8 %268, ptr %269, align 1, !tbaa !12
  %270 = getelementptr inbounds i8, ptr %138, i64 12
  %271 = load i8, ptr %270, align 1, !tbaa !12
  %272 = zext i8 %271 to i16
  %273 = getelementptr inbounds i8, ptr %140, i64 12
  %274 = load i8, ptr %273, align 1, !tbaa !12
  %275 = zext i8 %274 to i16
  %276 = add nuw nsw i16 %272, 1
  %277 = add nuw nsw i16 %276, %275
  %278 = lshr i16 %277, 1
  %279 = trunc nuw i16 %278 to i8
  %280 = getelementptr inbounds i8, ptr %139, i64 12
  store i8 %279, ptr %280, align 1, !tbaa !12
  %281 = getelementptr inbounds i8, ptr %138, i64 13
  %282 = load i8, ptr %281, align 1, !tbaa !12
  %283 = zext i8 %282 to i16
  %284 = getelementptr inbounds i8, ptr %140, i64 13
  %285 = load i8, ptr %284, align 1, !tbaa !12
  %286 = zext i8 %285 to i16
  %287 = add nuw nsw i16 %283, 1
  %288 = add nuw nsw i16 %287, %286
  %289 = lshr i16 %288, 1
  %290 = trunc nuw i16 %289 to i8
  %291 = getelementptr inbounds i8, ptr %139, i64 13
  store i8 %290, ptr %291, align 1, !tbaa !12
  %292 = getelementptr inbounds i8, ptr %138, i64 14
  %293 = load i8, ptr %292, align 1, !tbaa !12
  %294 = zext i8 %293 to i16
  %295 = getelementptr inbounds i8, ptr %140, i64 14
  %296 = load i8, ptr %295, align 1, !tbaa !12
  %297 = zext i8 %296 to i16
  %298 = add nuw nsw i16 %294, 1
  %299 = add nuw nsw i16 %298, %297
  %300 = lshr i16 %299, 1
  %301 = trunc nuw i16 %300 to i8
  %302 = getelementptr inbounds i8, ptr %139, i64 14
  store i8 %301, ptr %302, align 1, !tbaa !12
  %303 = getelementptr inbounds i8, ptr %138, i64 15
  %304 = load i8, ptr %303, align 1, !tbaa !12
  %305 = zext i8 %304 to i16
  %306 = getelementptr inbounds i8, ptr %140, i64 15
  %307 = load i8, ptr %306, align 1, !tbaa !12
  %308 = zext i8 %307 to i16
  %309 = add nuw nsw i16 %305, 1
  %310 = add nuw nsw i16 %309, %308
  %311 = lshr i16 %310, 1
  %312 = trunc nuw i16 %311 to i8
  %313 = getelementptr inbounds i8, ptr %139, i64 15
  store i8 %312, ptr %313, align 1, !tbaa !12
  %314 = getelementptr inbounds i8, ptr %139, i64 %135
  %315 = add nuw nsw i32 %137, 1
  %316 = icmp eq i32 %315, %5
  br i1 %316, label %971, label %136

317:                                              ; preds = %129
  br i1 %132, label %318, label %971

318:                                              ; preds = %317
  %319 = sext i32 %2 to i64
  br label %320

320:                                              ; preds = %320, %318
  %321 = phi i32 [ 0, %318 ], [ %411, %320 ]
  %322 = phi ptr [ %21, %318 ], [ %324, %320 ]
  %323 = phi ptr [ %25, %318 ], [ %410, %320 ]
  %324 = getelementptr i8, ptr %322, i64 %131
  %325 = load i8, ptr %322, align 1, !tbaa !12
  %326 = zext i8 %325 to i16
  %327 = load i8, ptr %324, align 1, !tbaa !12
  %328 = zext i8 %327 to i16
  %329 = add nuw nsw i16 %326, 1
  %330 = add nuw nsw i16 %329, %328
  %331 = lshr i16 %330, 1
  %332 = trunc nuw i16 %331 to i8
  store i8 %332, ptr %323, align 1, !tbaa !12
  %333 = getelementptr inbounds i8, ptr %322, i64 1
  %334 = load i8, ptr %333, align 1, !tbaa !12
  %335 = zext i8 %334 to i16
  %336 = getelementptr inbounds i8, ptr %324, i64 1
  %337 = load i8, ptr %336, align 1, !tbaa !12
  %338 = zext i8 %337 to i16
  %339 = add nuw nsw i16 %335, 1
  %340 = add nuw nsw i16 %339, %338
  %341 = lshr i16 %340, 1
  %342 = trunc nuw i16 %341 to i8
  %343 = getelementptr inbounds i8, ptr %323, i64 1
  store i8 %342, ptr %343, align 1, !tbaa !12
  %344 = getelementptr inbounds i8, ptr %322, i64 2
  %345 = load i8, ptr %344, align 1, !tbaa !12
  %346 = zext i8 %345 to i16
  %347 = getelementptr inbounds i8, ptr %324, i64 2
  %348 = load i8, ptr %347, align 1, !tbaa !12
  %349 = zext i8 %348 to i16
  %350 = add nuw nsw i16 %346, 1
  %351 = add nuw nsw i16 %350, %349
  %352 = lshr i16 %351, 1
  %353 = trunc nuw i16 %352 to i8
  %354 = getelementptr inbounds i8, ptr %323, i64 2
  store i8 %353, ptr %354, align 1, !tbaa !12
  %355 = getelementptr inbounds i8, ptr %322, i64 3
  %356 = load i8, ptr %355, align 1, !tbaa !12
  %357 = zext i8 %356 to i16
  %358 = getelementptr inbounds i8, ptr %324, i64 3
  %359 = load i8, ptr %358, align 1, !tbaa !12
  %360 = zext i8 %359 to i16
  %361 = add nuw nsw i16 %357, 1
  %362 = add nuw nsw i16 %361, %360
  %363 = lshr i16 %362, 1
  %364 = trunc nuw i16 %363 to i8
  %365 = getelementptr inbounds i8, ptr %323, i64 3
  store i8 %364, ptr %365, align 1, !tbaa !12
  %366 = getelementptr inbounds i8, ptr %322, i64 4
  %367 = load i8, ptr %366, align 1, !tbaa !12
  %368 = zext i8 %367 to i16
  %369 = getelementptr inbounds i8, ptr %324, i64 4
  %370 = load i8, ptr %369, align 1, !tbaa !12
  %371 = zext i8 %370 to i16
  %372 = add nuw nsw i16 %368, 1
  %373 = add nuw nsw i16 %372, %371
  %374 = lshr i16 %373, 1
  %375 = trunc nuw i16 %374 to i8
  %376 = getelementptr inbounds i8, ptr %323, i64 4
  store i8 %375, ptr %376, align 1, !tbaa !12
  %377 = getelementptr inbounds i8, ptr %322, i64 5
  %378 = load i8, ptr %377, align 1, !tbaa !12
  %379 = zext i8 %378 to i16
  %380 = getelementptr inbounds i8, ptr %324, i64 5
  %381 = load i8, ptr %380, align 1, !tbaa !12
  %382 = zext i8 %381 to i16
  %383 = add nuw nsw i16 %379, 1
  %384 = add nuw nsw i16 %383, %382
  %385 = lshr i16 %384, 1
  %386 = trunc nuw i16 %385 to i8
  %387 = getelementptr inbounds i8, ptr %323, i64 5
  store i8 %386, ptr %387, align 1, !tbaa !12
  %388 = getelementptr inbounds i8, ptr %322, i64 6
  %389 = load i8, ptr %388, align 1, !tbaa !12
  %390 = zext i8 %389 to i16
  %391 = getelementptr inbounds i8, ptr %324, i64 6
  %392 = load i8, ptr %391, align 1, !tbaa !12
  %393 = zext i8 %392 to i16
  %394 = add nuw nsw i16 %390, 1
  %395 = add nuw nsw i16 %394, %393
  %396 = lshr i16 %395, 1
  %397 = trunc nuw i16 %396 to i8
  %398 = getelementptr inbounds i8, ptr %323, i64 6
  store i8 %397, ptr %398, align 1, !tbaa !12
  %399 = getelementptr inbounds i8, ptr %322, i64 7
  %400 = load i8, ptr %399, align 1, !tbaa !12
  %401 = zext i8 %400 to i16
  %402 = getelementptr inbounds i8, ptr %324, i64 7
  %403 = load i8, ptr %402, align 1, !tbaa !12
  %404 = zext i8 %403 to i16
  %405 = add nuw nsw i16 %401, 1
  %406 = add nuw nsw i16 %405, %404
  %407 = lshr i16 %406, 1
  %408 = trunc nuw i16 %407 to i8
  %409 = getelementptr inbounds i8, ptr %323, i64 7
  store i8 %408, ptr %409, align 1, !tbaa !12
  %410 = getelementptr inbounds i8, ptr %323, i64 %319
  %411 = add nuw nsw i32 %321, 1
  %412 = icmp eq i32 %411, %5
  br i1 %412, label %971, label %320

413:                                              ; preds = %125
  %414 = or i1 %127, %26
  %415 = icmp eq i32 %4, 8
  br i1 %414, label %632, label %416

416:                                              ; preds = %413
  %417 = icmp sgt i32 %5, 0
  br i1 %415, label %557, label %418

418:                                              ; preds = %416
  br i1 %417, label %419, label %971

419:                                              ; preds = %418
  %420 = sext i32 %3 to i64
  %421 = sext i32 %2 to i64
  br label %422

422:                                              ; preds = %422, %419
  %423 = phi ptr [ %25, %419 ], [ %554, %422 ]
  %424 = phi ptr [ %21, %419 ], [ %553, %422 ]
  %425 = phi i32 [ 0, %419 ], [ %555, %422 ]
  %426 = load i8, ptr %424, align 1, !tbaa !12
  %427 = zext i8 %426 to i32
  %428 = getelementptr inbounds i8, ptr %424, i64 1
  %429 = load i8, ptr %428, align 1, !tbaa !12
  %430 = zext i8 %429 to i32
  %431 = add nuw nsw i32 %430, 1
  %432 = add nuw nsw i32 %431, %427
  %433 = lshr i32 %432, 1
  %434 = trunc nuw i32 %433 to i8
  store i8 %434, ptr %423, align 1, !tbaa !12
  %435 = getelementptr inbounds i8, ptr %424, i64 2
  %436 = load i8, ptr %435, align 1, !tbaa !12
  %437 = zext i8 %436 to i32
  %438 = add nuw nsw i32 %431, %437
  %439 = lshr i32 %438, 1
  %440 = trunc nuw i32 %439 to i8
  %441 = getelementptr inbounds i8, ptr %423, i64 1
  store i8 %440, ptr %441, align 1, !tbaa !12
  %442 = getelementptr inbounds i8, ptr %424, i64 3
  %443 = load i8, ptr %442, align 1, !tbaa !12
  %444 = zext i8 %443 to i32
  %445 = add nuw nsw i32 %444, 1
  %446 = add nuw nsw i32 %445, %437
  %447 = lshr i32 %446, 1
  %448 = trunc nuw i32 %447 to i8
  %449 = getelementptr inbounds i8, ptr %423, i64 2
  store i8 %448, ptr %449, align 1, !tbaa !12
  %450 = getelementptr inbounds i8, ptr %424, i64 4
  %451 = load i8, ptr %450, align 1, !tbaa !12
  %452 = zext i8 %451 to i32
  %453 = add nuw nsw i32 %445, %452
  %454 = lshr i32 %453, 1
  %455 = trunc nuw i32 %454 to i8
  %456 = getelementptr inbounds i8, ptr %423, i64 3
  store i8 %455, ptr %456, align 1, !tbaa !12
  %457 = getelementptr inbounds i8, ptr %424, i64 5
  %458 = load i8, ptr %457, align 1, !tbaa !12
  %459 = zext i8 %458 to i32
  %460 = add nuw nsw i32 %452, 1
  %461 = add nuw nsw i32 %460, %459
  %462 = lshr i32 %461, 1
  %463 = trunc nuw i32 %462 to i8
  %464 = getelementptr inbounds i8, ptr %423, i64 4
  store i8 %463, ptr %464, align 1, !tbaa !12
  %465 = getelementptr inbounds i8, ptr %424, i64 6
  %466 = load i8, ptr %465, align 1, !tbaa !12
  %467 = zext i8 %466 to i32
  %468 = add nuw nsw i32 %459, 1
  %469 = add nuw nsw i32 %468, %467
  %470 = lshr i32 %469, 1
  %471 = trunc nuw i32 %470 to i8
  %472 = getelementptr inbounds i8, ptr %423, i64 5
  store i8 %471, ptr %472, align 1, !tbaa !12
  %473 = getelementptr inbounds i8, ptr %424, i64 7
  %474 = load i8, ptr %473, align 1, !tbaa !12
  %475 = zext i8 %474 to i32
  %476 = add nuw nsw i32 %467, 1
  %477 = add nuw nsw i32 %476, %475
  %478 = lshr i32 %477, 1
  %479 = trunc nuw i32 %478 to i8
  %480 = getelementptr inbounds i8, ptr %423, i64 6
  store i8 %479, ptr %480, align 1, !tbaa !12
  %481 = getelementptr inbounds i8, ptr %424, i64 8
  %482 = load i8, ptr %481, align 1, !tbaa !12
  %483 = zext i8 %482 to i32
  %484 = add nuw nsw i32 %475, 1
  %485 = add nuw nsw i32 %484, %483
  %486 = lshr i32 %485, 1
  %487 = trunc nuw i32 %486 to i8
  %488 = getelementptr inbounds i8, ptr %423, i64 7
  store i8 %487, ptr %488, align 1, !tbaa !12
  %489 = getelementptr inbounds i8, ptr %424, i64 9
  %490 = load i8, ptr %489, align 1, !tbaa !12
  %491 = zext i8 %490 to i32
  %492 = add nuw nsw i32 %483, 1
  %493 = add nuw nsw i32 %492, %491
  %494 = lshr i32 %493, 1
  %495 = trunc nuw i32 %494 to i8
  %496 = getelementptr inbounds i8, ptr %423, i64 8
  store i8 %495, ptr %496, align 1, !tbaa !12
  %497 = getelementptr inbounds i8, ptr %424, i64 10
  %498 = load i8, ptr %497, align 1, !tbaa !12
  %499 = zext i8 %498 to i32
  %500 = add nuw nsw i32 %491, 1
  %501 = add nuw nsw i32 %500, %499
  %502 = lshr i32 %501, 1
  %503 = trunc nuw i32 %502 to i8
  %504 = getelementptr inbounds i8, ptr %423, i64 9
  store i8 %503, ptr %504, align 1, !tbaa !12
  %505 = getelementptr inbounds i8, ptr %424, i64 11
  %506 = load i8, ptr %505, align 1, !tbaa !12
  %507 = zext i8 %506 to i32
  %508 = add nuw nsw i32 %499, 1
  %509 = add nuw nsw i32 %508, %507
  %510 = lshr i32 %509, 1
  %511 = trunc nuw i32 %510 to i8
  %512 = getelementptr inbounds i8, ptr %423, i64 10
  store i8 %511, ptr %512, align 1, !tbaa !12
  %513 = getelementptr inbounds i8, ptr %424, i64 12
  %514 = load i8, ptr %513, align 1, !tbaa !12
  %515 = zext i8 %514 to i32
  %516 = add nuw nsw i32 %507, 1
  %517 = add nuw nsw i32 %516, %515
  %518 = lshr i32 %517, 1
  %519 = trunc nuw i32 %518 to i8
  %520 = getelementptr inbounds i8, ptr %423, i64 11
  store i8 %519, ptr %520, align 1, !tbaa !12
  %521 = getelementptr inbounds i8, ptr %424, i64 13
  %522 = load i8, ptr %521, align 1, !tbaa !12
  %523 = zext i8 %522 to i32
  %524 = add nuw nsw i32 %515, 1
  %525 = add nuw nsw i32 %524, %523
  %526 = lshr i32 %525, 1
  %527 = trunc nuw i32 %526 to i8
  %528 = getelementptr inbounds i8, ptr %423, i64 12
  store i8 %527, ptr %528, align 1, !tbaa !12
  %529 = getelementptr inbounds i8, ptr %424, i64 14
  %530 = load i8, ptr %529, align 1, !tbaa !12
  %531 = zext i8 %530 to i32
  %532 = add nuw nsw i32 %523, 1
  %533 = add nuw nsw i32 %532, %531
  %534 = lshr i32 %533, 1
  %535 = trunc nuw i32 %534 to i8
  %536 = getelementptr inbounds i8, ptr %423, i64 13
  store i8 %535, ptr %536, align 1, !tbaa !12
  %537 = getelementptr inbounds i8, ptr %424, i64 15
  %538 = load i8, ptr %537, align 1, !tbaa !12
  %539 = zext i8 %538 to i32
  %540 = add nuw nsw i32 %531, 1
  %541 = add nuw nsw i32 %540, %539
  %542 = lshr i32 %541, 1
  %543 = trunc nuw i32 %542 to i8
  %544 = getelementptr inbounds i8, ptr %423, i64 14
  store i8 %543, ptr %544, align 1, !tbaa !12
  %545 = getelementptr inbounds i8, ptr %424, i64 16
  %546 = load i8, ptr %545, align 1, !tbaa !12
  %547 = zext i8 %546 to i32
  %548 = add nuw nsw i32 %539, 1
  %549 = add nuw nsw i32 %548, %547
  %550 = lshr i32 %549, 1
  %551 = trunc nuw i32 %550 to i8
  %552 = getelementptr inbounds i8, ptr %423, i64 15
  store i8 %551, ptr %552, align 1, !tbaa !12
  %553 = getelementptr inbounds i8, ptr %424, i64 %420
  %554 = getelementptr inbounds i8, ptr %423, i64 %421
  %555 = add nuw nsw i32 %425, 1
  %556 = icmp eq i32 %555, %5
  br i1 %556, label %971, label %422

557:                                              ; preds = %416
  br i1 %417, label %558, label %971

558:                                              ; preds = %557
  %559 = sext i32 %3 to i64
  %560 = sext i32 %2 to i64
  br label %561

561:                                              ; preds = %561, %558
  %562 = phi ptr [ %25, %558 ], [ %629, %561 ]
  %563 = phi ptr [ %21, %558 ], [ %628, %561 ]
  %564 = phi i32 [ 0, %558 ], [ %630, %561 ]
  %565 = load i8, ptr %563, align 1, !tbaa !12
  %566 = zext i8 %565 to i32
  %567 = getelementptr inbounds i8, ptr %563, i64 1
  %568 = load i8, ptr %567, align 1, !tbaa !12
  %569 = zext i8 %568 to i32
  %570 = add nuw nsw i32 %569, 1
  %571 = add nuw nsw i32 %570, %566
  %572 = lshr i32 %571, 1
  %573 = trunc nuw i32 %572 to i8
  store i8 %573, ptr %562, align 1, !tbaa !12
  %574 = getelementptr inbounds i8, ptr %563, i64 2
  %575 = load i8, ptr %574, align 1, !tbaa !12
  %576 = zext i8 %575 to i32
  %577 = add nuw nsw i32 %570, %576
  %578 = lshr i32 %577, 1
  %579 = trunc nuw i32 %578 to i8
  %580 = getelementptr inbounds i8, ptr %562, i64 1
  store i8 %579, ptr %580, align 1, !tbaa !12
  %581 = getelementptr inbounds i8, ptr %563, i64 3
  %582 = load i8, ptr %581, align 1, !tbaa !12
  %583 = zext i8 %582 to i32
  %584 = add nuw nsw i32 %583, 1
  %585 = add nuw nsw i32 %584, %576
  %586 = lshr i32 %585, 1
  %587 = trunc nuw i32 %586 to i8
  %588 = getelementptr inbounds i8, ptr %562, i64 2
  store i8 %587, ptr %588, align 1, !tbaa !12
  %589 = getelementptr inbounds i8, ptr %563, i64 4
  %590 = load i8, ptr %589, align 1, !tbaa !12
  %591 = zext i8 %590 to i32
  %592 = add nuw nsw i32 %584, %591
  %593 = lshr i32 %592, 1
  %594 = trunc nuw i32 %593 to i8
  %595 = getelementptr inbounds i8, ptr %562, i64 3
  store i8 %594, ptr %595, align 1, !tbaa !12
  %596 = getelementptr inbounds i8, ptr %563, i64 5
  %597 = load i8, ptr %596, align 1, !tbaa !12
  %598 = zext i8 %597 to i32
  %599 = add nuw nsw i32 %591, 1
  %600 = add nuw nsw i32 %599, %598
  %601 = lshr i32 %600, 1
  %602 = trunc nuw i32 %601 to i8
  %603 = getelementptr inbounds i8, ptr %562, i64 4
  store i8 %602, ptr %603, align 1, !tbaa !12
  %604 = getelementptr inbounds i8, ptr %563, i64 6
  %605 = load i8, ptr %604, align 1, !tbaa !12
  %606 = zext i8 %605 to i32
  %607 = add nuw nsw i32 %598, 1
  %608 = add nuw nsw i32 %607, %606
  %609 = lshr i32 %608, 1
  %610 = trunc nuw i32 %609 to i8
  %611 = getelementptr inbounds i8, ptr %562, i64 5
  store i8 %610, ptr %611, align 1, !tbaa !12
  %612 = getelementptr inbounds i8, ptr %563, i64 7
  %613 = load i8, ptr %612, align 1, !tbaa !12
  %614 = zext i8 %613 to i32
  %615 = add nuw nsw i32 %606, 1
  %616 = add nuw nsw i32 %615, %614
  %617 = lshr i32 %616, 1
  %618 = trunc nuw i32 %617 to i8
  %619 = getelementptr inbounds i8, ptr %562, i64 6
  store i8 %618, ptr %619, align 1, !tbaa !12
  %620 = getelementptr inbounds i8, ptr %563, i64 8
  %621 = load i8, ptr %620, align 1, !tbaa !12
  %622 = zext i8 %621 to i32
  %623 = add nuw nsw i32 %614, 1
  %624 = add nuw nsw i32 %623, %622
  %625 = lshr i32 %624, 1
  %626 = trunc nuw i32 %625 to i8
  %627 = getelementptr inbounds i8, ptr %562, i64 7
  store i8 %626, ptr %627, align 1, !tbaa !12
  %628 = getelementptr inbounds i8, ptr %563, i64 %559
  %629 = getelementptr inbounds i8, ptr %562, i64 %560
  %630 = add nuw nsw i32 %564, 1
  %631 = icmp eq i32 %630, %5
  br i1 %631, label %971, label %561

632:                                              ; preds = %413
  %633 = sext i32 %3 to i64
  %634 = icmp sgt i32 %5, 0
  br i1 %415, label %855, label %635

635:                                              ; preds = %632
  br i1 %634, label %636, label %971

636:                                              ; preds = %635
  %637 = sext i32 %2 to i64
  br label %638

638:                                              ; preds = %638, %636
  %639 = phi ptr [ %25, %636 ], [ %852, %638 ]
  %640 = phi ptr [ %21, %636 ], [ %642, %638 ]
  %641 = phi i32 [ 0, %636 ], [ %853, %638 ]
  %642 = getelementptr i8, ptr %640, i64 %633
  %643 = load i8, ptr %640, align 1, !tbaa !12
  %644 = zext i8 %643 to i32
  %645 = load i8, ptr %642, align 1, !tbaa !12
  %646 = zext i8 %645 to i32
  %647 = getelementptr inbounds i8, ptr %640, i64 1
  %648 = load i8, ptr %647, align 1, !tbaa !12
  %649 = zext i8 %648 to i32
  %650 = getelementptr inbounds i8, ptr %642, i64 1
  %651 = load i8, ptr %650, align 1, !tbaa !12
  %652 = zext i8 %651 to i32
  %653 = add nuw nsw i32 %649, 2
  %654 = add nuw nsw i32 %653, %652
  %655 = add nuw nsw i32 %654, %644
  %656 = add nuw nsw i32 %655, %646
  %657 = lshr i32 %656, 2
  %658 = trunc nuw i32 %657 to i8
  store i8 %658, ptr %639, align 1, !tbaa !12
  %659 = getelementptr inbounds i8, ptr %640, i64 2
  %660 = load i8, ptr %659, align 1, !tbaa !12
  %661 = zext i8 %660 to i32
  %662 = getelementptr inbounds i8, ptr %642, i64 2
  %663 = load i8, ptr %662, align 1, !tbaa !12
  %664 = zext i8 %663 to i32
  %665 = add nuw nsw i32 %654, %661
  %666 = add nuw nsw i32 %665, %664
  %667 = lshr i32 %666, 2
  %668 = trunc nuw i32 %667 to i8
  %669 = getelementptr inbounds i8, ptr %639, i64 1
  store i8 %668, ptr %669, align 1, !tbaa !12
  %670 = getelementptr inbounds i8, ptr %640, i64 3
  %671 = load i8, ptr %670, align 1, !tbaa !12
  %672 = zext i8 %671 to i32
  %673 = getelementptr inbounds i8, ptr %642, i64 3
  %674 = load i8, ptr %673, align 1, !tbaa !12
  %675 = zext i8 %674 to i32
  %676 = add nuw nsw i32 %664, %661
  %677 = add nuw nsw i32 %676, 2
  %678 = add nuw nsw i32 %677, %672
  %679 = add nuw nsw i32 %678, %675
  %680 = lshr i32 %679, 2
  %681 = trunc nuw i32 %680 to i8
  %682 = getelementptr inbounds i8, ptr %639, i64 2
  store i8 %681, ptr %682, align 1, !tbaa !12
  %683 = getelementptr inbounds i8, ptr %640, i64 4
  %684 = load i8, ptr %683, align 1, !tbaa !12
  %685 = zext i8 %684 to i32
  %686 = getelementptr inbounds i8, ptr %642, i64 4
  %687 = load i8, ptr %686, align 1, !tbaa !12
  %688 = zext i8 %687 to i32
  %689 = add nuw nsw i32 %672, 2
  %690 = add nuw nsw i32 %689, %675
  %691 = add nuw nsw i32 %690, %685
  %692 = add nuw nsw i32 %691, %688
  %693 = lshr i32 %692, 2
  %694 = trunc nuw i32 %693 to i8
  %695 = getelementptr inbounds i8, ptr %639, i64 3
  store i8 %694, ptr %695, align 1, !tbaa !12
  %696 = getelementptr inbounds i8, ptr %640, i64 5
  %697 = load i8, ptr %696, align 1, !tbaa !12
  %698 = zext i8 %697 to i32
  %699 = getelementptr inbounds i8, ptr %642, i64 5
  %700 = load i8, ptr %699, align 1, !tbaa !12
  %701 = zext i8 %700 to i32
  %702 = add nuw nsw i32 %685, 2
  %703 = add nuw nsw i32 %702, %688
  %704 = add nuw nsw i32 %703, %698
  %705 = add nuw nsw i32 %704, %701
  %706 = lshr i32 %705, 2
  %707 = trunc nuw i32 %706 to i8
  %708 = getelementptr inbounds i8, ptr %639, i64 4
  store i8 %707, ptr %708, align 1, !tbaa !12
  %709 = getelementptr inbounds i8, ptr %640, i64 6
  %710 = load i8, ptr %709, align 1, !tbaa !12
  %711 = zext i8 %710 to i32
  %712 = getelementptr inbounds i8, ptr %642, i64 6
  %713 = load i8, ptr %712, align 1, !tbaa !12
  %714 = zext i8 %713 to i32
  %715 = add nuw nsw i32 %698, 2
  %716 = add nuw nsw i32 %715, %701
  %717 = add nuw nsw i32 %716, %711
  %718 = add nuw nsw i32 %717, %714
  %719 = lshr i32 %718, 2
  %720 = trunc nuw i32 %719 to i8
  %721 = getelementptr inbounds i8, ptr %639, i64 5
  store i8 %720, ptr %721, align 1, !tbaa !12
  %722 = getelementptr inbounds i8, ptr %640, i64 7
  %723 = load i8, ptr %722, align 1, !tbaa !12
  %724 = zext i8 %723 to i32
  %725 = getelementptr inbounds i8, ptr %642, i64 7
  %726 = load i8, ptr %725, align 1, !tbaa !12
  %727 = zext i8 %726 to i32
  %728 = add nuw nsw i32 %711, 2
  %729 = add nuw nsw i32 %728, %714
  %730 = add nuw nsw i32 %729, %724
  %731 = add nuw nsw i32 %730, %727
  %732 = lshr i32 %731, 2
  %733 = trunc nuw i32 %732 to i8
  %734 = getelementptr inbounds i8, ptr %639, i64 6
  store i8 %733, ptr %734, align 1, !tbaa !12
  %735 = getelementptr inbounds i8, ptr %640, i64 8
  %736 = load i8, ptr %735, align 1, !tbaa !12
  %737 = zext i8 %736 to i32
  %738 = getelementptr inbounds i8, ptr %642, i64 8
  %739 = load i8, ptr %738, align 1, !tbaa !12
  %740 = zext i8 %739 to i32
  %741 = add nuw nsw i32 %724, 2
  %742 = add nuw nsw i32 %741, %727
  %743 = add nuw nsw i32 %742, %737
  %744 = add nuw nsw i32 %743, %740
  %745 = lshr i32 %744, 2
  %746 = trunc nuw i32 %745 to i8
  %747 = getelementptr inbounds i8, ptr %639, i64 7
  store i8 %746, ptr %747, align 1, !tbaa !12
  %748 = getelementptr inbounds i8, ptr %640, i64 9
  %749 = load i8, ptr %748, align 1, !tbaa !12
  %750 = zext i8 %749 to i32
  %751 = getelementptr inbounds i8, ptr %642, i64 9
  %752 = load i8, ptr %751, align 1, !tbaa !12
  %753 = zext i8 %752 to i32
  %754 = add nuw nsw i32 %737, 2
  %755 = add nuw nsw i32 %754, %740
  %756 = add nuw nsw i32 %755, %750
  %757 = add nuw nsw i32 %756, %753
  %758 = lshr i32 %757, 2
  %759 = trunc nuw i32 %758 to i8
  %760 = getelementptr inbounds i8, ptr %639, i64 8
  store i8 %759, ptr %760, align 1, !tbaa !12
  %761 = getelementptr inbounds i8, ptr %640, i64 10
  %762 = load i8, ptr %761, align 1, !tbaa !12
  %763 = zext i8 %762 to i32
  %764 = getelementptr inbounds i8, ptr %642, i64 10
  %765 = load i8, ptr %764, align 1, !tbaa !12
  %766 = zext i8 %765 to i32
  %767 = add nuw nsw i32 %750, 2
  %768 = add nuw nsw i32 %767, %753
  %769 = add nuw nsw i32 %768, %763
  %770 = add nuw nsw i32 %769, %766
  %771 = lshr i32 %770, 2
  %772 = trunc nuw i32 %771 to i8
  %773 = getelementptr inbounds i8, ptr %639, i64 9
  store i8 %772, ptr %773, align 1, !tbaa !12
  %774 = getelementptr inbounds i8, ptr %640, i64 11
  %775 = load i8, ptr %774, align 1, !tbaa !12
  %776 = zext i8 %775 to i32
  %777 = getelementptr inbounds i8, ptr %642, i64 11
  %778 = load i8, ptr %777, align 1, !tbaa !12
  %779 = zext i8 %778 to i32
  %780 = add nuw nsw i32 %763, 2
  %781 = add nuw nsw i32 %780, %766
  %782 = add nuw nsw i32 %781, %776
  %783 = add nuw nsw i32 %782, %779
  %784 = lshr i32 %783, 2
  %785 = trunc nuw i32 %784 to i8
  %786 = getelementptr inbounds i8, ptr %639, i64 10
  store i8 %785, ptr %786, align 1, !tbaa !12
  %787 = getelementptr inbounds i8, ptr %640, i64 12
  %788 = load i8, ptr %787, align 1, !tbaa !12
  %789 = zext i8 %788 to i32
  %790 = getelementptr inbounds i8, ptr %642, i64 12
  %791 = load i8, ptr %790, align 1, !tbaa !12
  %792 = zext i8 %791 to i32
  %793 = add nuw nsw i32 %776, 2
  %794 = add nuw nsw i32 %793, %779
  %795 = add nuw nsw i32 %794, %789
  %796 = add nuw nsw i32 %795, %792
  %797 = lshr i32 %796, 2
  %798 = trunc nuw i32 %797 to i8
  %799 = getelementptr inbounds i8, ptr %639, i64 11
  store i8 %798, ptr %799, align 1, !tbaa !12
  %800 = getelementptr inbounds i8, ptr %640, i64 13
  %801 = load i8, ptr %800, align 1, !tbaa !12
  %802 = zext i8 %801 to i32
  %803 = getelementptr inbounds i8, ptr %642, i64 13
  %804 = load i8, ptr %803, align 1, !tbaa !12
  %805 = zext i8 %804 to i32
  %806 = add nuw nsw i32 %789, 2
  %807 = add nuw nsw i32 %806, %792
  %808 = add nuw nsw i32 %807, %802
  %809 = add nuw nsw i32 %808, %805
  %810 = lshr i32 %809, 2
  %811 = trunc nuw i32 %810 to i8
  %812 = getelementptr inbounds i8, ptr %639, i64 12
  store i8 %811, ptr %812, align 1, !tbaa !12
  %813 = getelementptr inbounds i8, ptr %640, i64 14
  %814 = load i8, ptr %813, align 1, !tbaa !12
  %815 = zext i8 %814 to i32
  %816 = getelementptr inbounds i8, ptr %642, i64 14
  %817 = load i8, ptr %816, align 1, !tbaa !12
  %818 = zext i8 %817 to i32
  %819 = add nuw nsw i32 %802, 2
  %820 = add nuw nsw i32 %819, %805
  %821 = add nuw nsw i32 %820, %815
  %822 = add nuw nsw i32 %821, %818
  %823 = lshr i32 %822, 2
  %824 = trunc nuw i32 %823 to i8
  %825 = getelementptr inbounds i8, ptr %639, i64 13
  store i8 %824, ptr %825, align 1, !tbaa !12
  %826 = getelementptr inbounds i8, ptr %640, i64 15
  %827 = load i8, ptr %826, align 1, !tbaa !12
  %828 = zext i8 %827 to i32
  %829 = getelementptr inbounds i8, ptr %642, i64 15
  %830 = load i8, ptr %829, align 1, !tbaa !12
  %831 = zext i8 %830 to i32
  %832 = add nuw nsw i32 %815, 2
  %833 = add nuw nsw i32 %832, %818
  %834 = add nuw nsw i32 %833, %828
  %835 = add nuw nsw i32 %834, %831
  %836 = lshr i32 %835, 2
  %837 = trunc nuw i32 %836 to i8
  %838 = getelementptr inbounds i8, ptr %639, i64 14
  store i8 %837, ptr %838, align 1, !tbaa !12
  %839 = getelementptr inbounds i8, ptr %640, i64 16
  %840 = load i8, ptr %839, align 1, !tbaa !12
  %841 = zext i8 %840 to i32
  %842 = getelementptr inbounds i8, ptr %642, i64 16
  %843 = load i8, ptr %842, align 1, !tbaa !12
  %844 = zext i8 %843 to i32
  %845 = add nuw nsw i32 %828, 2
  %846 = add nuw nsw i32 %845, %831
  %847 = add nuw nsw i32 %846, %841
  %848 = add nuw nsw i32 %847, %844
  %849 = lshr i32 %848, 2
  %850 = trunc nuw i32 %849 to i8
  %851 = getelementptr inbounds i8, ptr %639, i64 15
  store i8 %850, ptr %851, align 1, !tbaa !12
  %852 = getelementptr inbounds i8, ptr %639, i64 %637
  %853 = add nuw nsw i32 %641, 1
  %854 = icmp eq i32 %853, %5
  br i1 %854, label %971, label %638

855:                                              ; preds = %632
  br i1 %634, label %856, label %971

856:                                              ; preds = %855
  %857 = sext i32 %2 to i64
  br label %858

858:                                              ; preds = %858, %856
  %859 = phi ptr [ %25, %856 ], [ %968, %858 ]
  %860 = phi ptr [ %21, %856 ], [ %862, %858 ]
  %861 = phi i32 [ 0, %856 ], [ %969, %858 ]
  %862 = getelementptr i8, ptr %860, i64 %633
  %863 = load i8, ptr %860, align 1, !tbaa !12
  %864 = zext i8 %863 to i32
  %865 = load i8, ptr %862, align 1, !tbaa !12
  %866 = zext i8 %865 to i32
  %867 = getelementptr inbounds i8, ptr %860, i64 1
  %868 = load i8, ptr %867, align 1, !tbaa !12
  %869 = zext i8 %868 to i32
  %870 = getelementptr inbounds i8, ptr %862, i64 1
  %871 = load i8, ptr %870, align 1, !tbaa !12
  %872 = zext i8 %871 to i32
  %873 = add nuw nsw i32 %869, 2
  %874 = add nuw nsw i32 %873, %872
  %875 = add nuw nsw i32 %874, %864
  %876 = add nuw nsw i32 %875, %866
  %877 = lshr i32 %876, 2
  %878 = trunc nuw i32 %877 to i8
  store i8 %878, ptr %859, align 1, !tbaa !12
  %879 = getelementptr inbounds i8, ptr %860, i64 2
  %880 = load i8, ptr %879, align 1, !tbaa !12
  %881 = zext i8 %880 to i32
  %882 = getelementptr inbounds i8, ptr %862, i64 2
  %883 = load i8, ptr %882, align 1, !tbaa !12
  %884 = zext i8 %883 to i32
  %885 = add nuw nsw i32 %874, %881
  %886 = add nuw nsw i32 %885, %884
  %887 = lshr i32 %886, 2
  %888 = trunc nuw i32 %887 to i8
  %889 = getelementptr inbounds i8, ptr %859, i64 1
  store i8 %888, ptr %889, align 1, !tbaa !12
  %890 = getelementptr inbounds i8, ptr %860, i64 3
  %891 = load i8, ptr %890, align 1, !tbaa !12
  %892 = zext i8 %891 to i32
  %893 = getelementptr inbounds i8, ptr %862, i64 3
  %894 = load i8, ptr %893, align 1, !tbaa !12
  %895 = zext i8 %894 to i32
  %896 = add nuw nsw i32 %884, %881
  %897 = add nuw nsw i32 %896, 2
  %898 = add nuw nsw i32 %897, %892
  %899 = add nuw nsw i32 %898, %895
  %900 = lshr i32 %899, 2
  %901 = trunc nuw i32 %900 to i8
  %902 = getelementptr inbounds i8, ptr %859, i64 2
  store i8 %901, ptr %902, align 1, !tbaa !12
  %903 = getelementptr inbounds i8, ptr %860, i64 4
  %904 = load i8, ptr %903, align 1, !tbaa !12
  %905 = zext i8 %904 to i32
  %906 = getelementptr inbounds i8, ptr %862, i64 4
  %907 = load i8, ptr %906, align 1, !tbaa !12
  %908 = zext i8 %907 to i32
  %909 = add nuw nsw i32 %892, 2
  %910 = add nuw nsw i32 %909, %895
  %911 = add nuw nsw i32 %910, %905
  %912 = add nuw nsw i32 %911, %908
  %913 = lshr i32 %912, 2
  %914 = trunc nuw i32 %913 to i8
  %915 = getelementptr inbounds i8, ptr %859, i64 3
  store i8 %914, ptr %915, align 1, !tbaa !12
  %916 = getelementptr inbounds i8, ptr %860, i64 5
  %917 = load i8, ptr %916, align 1, !tbaa !12
  %918 = zext i8 %917 to i32
  %919 = getelementptr inbounds i8, ptr %862, i64 5
  %920 = load i8, ptr %919, align 1, !tbaa !12
  %921 = zext i8 %920 to i32
  %922 = add nuw nsw i32 %905, 2
  %923 = add nuw nsw i32 %922, %908
  %924 = add nuw nsw i32 %923, %918
  %925 = add nuw nsw i32 %924, %921
  %926 = lshr i32 %925, 2
  %927 = trunc nuw i32 %926 to i8
  %928 = getelementptr inbounds i8, ptr %859, i64 4
  store i8 %927, ptr %928, align 1, !tbaa !12
  %929 = getelementptr inbounds i8, ptr %860, i64 6
  %930 = load i8, ptr %929, align 1, !tbaa !12
  %931 = zext i8 %930 to i32
  %932 = getelementptr inbounds i8, ptr %862, i64 6
  %933 = load i8, ptr %932, align 1, !tbaa !12
  %934 = zext i8 %933 to i32
  %935 = add nuw nsw i32 %918, 2
  %936 = add nuw nsw i32 %935, %921
  %937 = add nuw nsw i32 %936, %931
  %938 = add nuw nsw i32 %937, %934
  %939 = lshr i32 %938, 2
  %940 = trunc nuw i32 %939 to i8
  %941 = getelementptr inbounds i8, ptr %859, i64 5
  store i8 %940, ptr %941, align 1, !tbaa !12
  %942 = getelementptr inbounds i8, ptr %860, i64 7
  %943 = load i8, ptr %942, align 1, !tbaa !12
  %944 = zext i8 %943 to i32
  %945 = getelementptr inbounds i8, ptr %862, i64 7
  %946 = load i8, ptr %945, align 1, !tbaa !12
  %947 = zext i8 %946 to i32
  %948 = add nuw nsw i32 %931, 2
  %949 = add nuw nsw i32 %948, %934
  %950 = add nuw nsw i32 %949, %944
  %951 = add nuw nsw i32 %950, %947
  %952 = lshr i32 %951, 2
  %953 = trunc nuw i32 %952 to i8
  %954 = getelementptr inbounds i8, ptr %859, i64 6
  store i8 %953, ptr %954, align 1, !tbaa !12
  %955 = getelementptr inbounds i8, ptr %860, i64 8
  %956 = load i8, ptr %955, align 1, !tbaa !12
  %957 = zext i8 %956 to i32
  %958 = getelementptr inbounds i8, ptr %862, i64 8
  %959 = load i8, ptr %958, align 1, !tbaa !12
  %960 = zext i8 %959 to i32
  %961 = add nuw nsw i32 %944, 2
  %962 = add nuw nsw i32 %961, %947
  %963 = add nuw nsw i32 %962, %957
  %964 = add nuw nsw i32 %963, %960
  %965 = lshr i32 %964, 2
  %966 = trunc nuw i32 %965 to i8
  %967 = getelementptr inbounds i8, ptr %859, i64 7
  store i8 %966, ptr %967, align 1, !tbaa !12
  %968 = getelementptr inbounds i8, ptr %859, i64 %857
  %969 = add nuw nsw i32 %861, 1
  %970 = icmp eq i32 %969, %5
  br i1 %970, label %971, label %858

971:                                              ; preds = %422, %561, %638, %858, %136, %320, %37, %95, %855, %635, %557, %418, %317, %133, %91, %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }

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
