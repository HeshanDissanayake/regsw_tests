; ModuleID = 'putpic.c'
source_filename = "putpic.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.mbinfo = type { i32, i32, i32, i32, i32, i32, [2 x [2 x [2 x i32]]], [2 x [2 x i32]], [2 x i32], double, i32 }

@mpeg1 = external dso_local local_unnamed_addr global i32, align 4
@mb_height2 = external dso_local local_unnamed_addr global i32, align 4
@mb_width = external dso_local local_unnamed_addr global i32, align 4
@vertical_size = external dso_local local_unnamed_addr global i32, align 4
@q_scale_type = external dso_local local_unnamed_addr global i32, align 4
@map_non_linear_mquant = external dso_local local_unnamed_addr global [113 x i8], align 1
@dc_dct_pred = external dso_local local_unnamed_addr global [3 x i32], align 4
@mbinfo = external dso_local local_unnamed_addr global ptr, align 8
@block_count = external dso_local local_unnamed_addr global i32, align 4
@blocks = external dso_local local_unnamed_addr global ptr, align 8
@dc_prec = external dso_local local_unnamed_addr global i32, align 4
@intra_q = external dso_local global [64 x i8], align 1
@inter_q = external dso_local global [64 x i8], align 1
@pict_type = external dso_local local_unnamed_addr global i32, align 4
@pict_struct = external dso_local local_unnamed_addr global i32, align 4
@frame_pred_dct = external dso_local local_unnamed_addr global i32, align 4
@forw_hor_f_code = external dso_local local_unnamed_addr global i32, align 4
@forw_vert_f_code = external dso_local local_unnamed_addr global i32, align 4
@back_hor_f_code = external dso_local local_unnamed_addr global i32, align 4
@back_vert_f_code = external dso_local local_unnamed_addr global i32, align 4
@chroma_format = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @putpict(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x [2 x [2 x i32]]], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #4
  tail call void @rc_init_pict(ptr noundef %0) #4
  tail call void @putpicthdr() #4
  %3 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @putpictcodext() #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = tail call signext i32 @rc_start_mb() #4
  %8 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %465

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %2, i64 4
  %12 = getelementptr inbounds i8, ptr %2, i64 8
  %13 = getelementptr inbounds i8, ptr %2, i64 12
  %14 = load i32, ptr @mb_width, align 4, !tbaa !6
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %465

16:                                               ; preds = %10, %457
  %17 = phi i32 [ %458, %457 ], [ %8, %10 ]
  %18 = phi i32 [ %459, %457 ], [ %14, %10 ]
  %19 = phi i32 [ %462, %457 ], [ undef, %10 ]
  %20 = phi i32 [ %461, %457 ], [ %7, %10 ]
  %21 = phi i32 [ %460, %457 ], [ 0, %10 ]
  %22 = phi i32 [ %463, %457 ], [ 0, %10 ]
  %23 = icmp sgt i32 %18, 0
  br i1 %23, label %24, label %457

24:                                               ; preds = %16
  %25 = and i32 %22, 127
  %26 = add nuw nsw i32 %25, 257
  %27 = lshr i32 %22, 7
  %28 = add nuw i32 %22, 257
  %29 = sext i32 %21 to i64
  br label %30

30:                                               ; preds = %24, %447
  %31 = phi i64 [ %29, %24 ], [ %450, %447 ]
  %32 = phi i32 [ %19, %24 ], [ %449, %447 ]
  %33 = phi i32 [ %20, %24 ], [ %448, %447 ]
  %34 = phi i32 [ 0, %24 ], [ %451, %447 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  tail call void @alignbits() #4
  %37 = load i32, ptr @mpeg1, align 4, !tbaa !6
  %38 = icmp ne i32 %37, 0
  %39 = load i32, ptr @vertical_size, align 4
  %40 = icmp slt i32 %39, 2801
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  tail call void @putbits(i32 noundef signext %28, i32 noundef signext 32) #4
  br label %44

43:                                               ; preds = %36
  tail call void @putbits(i32 noundef signext %26, i32 noundef signext 32) #4
  tail call void @putbits(i32 noundef signext %27, i32 noundef signext 3) #4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, ptr @q_scale_type, align 4, !tbaa !6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = sext i32 %33 to i64
  %49 = getelementptr inbounds [113 x i8], ptr @map_non_linear_mquant, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !10
  %51 = zext i8 %50 to i32
  br label %54

52:                                               ; preds = %44
  %53 = ashr i32 %33, 1
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %51, %47 ], [ %53, %52 ]
  tail call void @putbits(i32 noundef signext %55, i32 noundef signext 5) #4
  tail call void @putbits(i32 noundef signext 0, i32 noundef signext 1) #4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @dc_dct_pred, i8 0, i64 12, i1 false), !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %56

56:                                               ; preds = %54, %30
  %57 = phi i32 [ 1, %54 ], [ %32, %30 ]
  %58 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.mbinfo, ptr %58, i64 %31
  %60 = load i32, ptr %59, align 8, !tbaa !13
  %61 = trunc nsw i64 %31 to i32
  %62 = tail call signext i32 @rc_calc_mquant(i32 noundef signext %61) #4
  %63 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %64 = getelementptr inbounds %struct.mbinfo, ptr %63, i64 %31, i32 3
  store i32 %62, ptr %64, align 4, !tbaa !16
  %65 = and i32 %60, 1
  %66 = icmp eq i32 %65, 0
  %67 = load i32, ptr @block_count, align 4, !tbaa !6
  %68 = icmp sgt i32 %67, 0
  br i1 %66, label %70, label %69

69:                                               ; preds = %56
  br i1 %68, label %73, label %91

70:                                               ; preds = %56
  br i1 %68, label %97, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.mbinfo, ptr %63, i64 %31, i32 4
  store i32 0, ptr %72, align 8, !tbaa !17
  br label %133

73:                                               ; preds = %69, %73
  %74 = phi i32 [ %87, %73 ], [ %67, %69 ]
  %75 = phi i32 [ %86, %73 ], [ 0, %69 ]
  %76 = load ptr, ptr @blocks, align 8, !tbaa !11
  %77 = mul nsw i32 %74, %61
  %78 = add nsw i32 %77, %75
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [64 x i16], ptr %76, i64 %79
  %81 = load i32, ptr @dc_prec, align 4, !tbaa !6
  %82 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %83 = getelementptr inbounds %struct.mbinfo, ptr %82, i64 %31, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !16
  %85 = tail call signext i32 @quant_intra(ptr noundef %80, ptr noundef %80, i32 noundef signext %81, ptr noundef nonnull @intra_q, i32 noundef signext %84) #4
  %86 = add nuw nsw i32 %75, 1
  %87 = load i32, ptr @block_count, align 4, !tbaa !6
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %73, label %89

89:                                               ; preds = %73
  %90 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  br label %91

91:                                               ; preds = %89, %69
  %92 = phi ptr [ %63, %69 ], [ %90, %89 ]
  %93 = phi i32 [ %67, %69 ], [ %87, %89 ]
  %94 = shl nsw i32 -1, %93
  %95 = xor i32 %94, -1
  %96 = getelementptr inbounds %struct.mbinfo, ptr %92, i64 %31, i32 4
  store i32 %95, ptr %96, align 8, !tbaa !17
  br label %122

97:                                               ; preds = %70, %97
  %98 = phi i32 [ %114, %97 ], [ %67, %70 ]
  %99 = phi i32 [ %112, %97 ], [ 0, %70 ]
  %100 = phi i32 [ %113, %97 ], [ 0, %70 ]
  %101 = shl i32 %99, 1
  %102 = load ptr, ptr @blocks, align 8, !tbaa !11
  %103 = mul nsw i32 %98, %61
  %104 = add nsw i32 %103, %100
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [64 x i16], ptr %102, i64 %105
  %107 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %108 = getelementptr inbounds %struct.mbinfo, ptr %107, i64 %31, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !16
  %110 = tail call signext i32 @quant_non_intra(ptr noundef %106, ptr noundef %106, ptr noundef nonnull @inter_q, i32 noundef signext %109) #4
  %111 = freeze i32 %110
  %112 = or i32 %111, %101
  %113 = add nuw nsw i32 %100, 1
  %114 = load i32, ptr @block_count, align 4, !tbaa !6
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %97, label %116

116:                                              ; preds = %97
  %117 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %118 = getelementptr inbounds %struct.mbinfo, ptr %117, i64 %31, i32 4
  store i32 %112, ptr %118, align 8, !tbaa !17
  %119 = icmp eq i32 %112, 0
  %120 = or i32 %60, 2
  %121 = select i1 %119, i32 %60, i32 %120
  br label %122

122:                                              ; preds = %116, %91
  %123 = phi ptr [ %92, %91 ], [ %117, %116 ]
  %124 = phi i32 [ %60, %91 ], [ %121, %116 ]
  %125 = phi i32 [ %95, %91 ], [ %112, %116 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.mbinfo, ptr %123, i64 %31, i32 3
  %129 = load i32, ptr %128, align 4, !tbaa !16
  %130 = icmp eq i32 %33, %129
  %131 = or i32 %124, 16
  %132 = select i1 %130, i32 %124, i32 %131
  br label %133

133:                                              ; preds = %71, %127, %122
  %134 = phi i1 [ false, %122 ], [ true, %127 ], [ false, %71 ]
  %135 = phi i32 [ 0, %122 ], [ %125, %127 ], [ 0, %71 ]
  %136 = phi ptr [ %123, %122 ], [ %123, %127 ], [ %63, %71 ]
  %137 = phi i32 [ %124, %122 ], [ %132, %127 ], [ %60, %71 ]
  br i1 %35, label %249, label %138

138:                                              ; preds = %133
  %139 = load i32, ptr @mb_width, align 4, !tbaa !6
  %140 = add nsw i32 %139, -1
  %141 = icmp eq i32 %34, %140
  %142 = or i1 %134, %141
  br i1 %142, label %249, label %143

143:                                              ; preds = %138
  %144 = load i32, ptr @pict_type, align 4, !tbaa !6
  %145 = icmp eq i32 %144, 2
  %146 = and i32 %137, 8
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %145, i1 %147, i1 false
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @dc_dct_pred, i8 0, i64 12, i1 false), !tbaa !6
  %150 = getelementptr inbounds %struct.mbinfo, ptr %136, i64 %31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  store i32 %137, ptr %150, align 8, !tbaa !13
  %151 = getelementptr inbounds %struct.mbinfo, ptr %136, i64 %31, i32 5
  store i32 1, ptr %151, align 4, !tbaa !18
  %152 = add nsw i32 %57, 1
  br label %447

153:                                              ; preds = %143
  %154 = icmp eq i32 %144, 3
  %155 = load i32, ptr @pict_struct, align 4
  %156 = icmp eq i32 %155, 3
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %196

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.mbinfo, ptr %136, i64 %31
  %160 = getelementptr inbounds i8, ptr %159, i64 4
  %161 = load i32, ptr %160, align 4, !tbaa !19
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %249

163:                                              ; preds = %158
  %164 = getelementptr i8, ptr %159, i64 -96
  %165 = load i32, ptr %164, align 8, !tbaa !13
  %166 = xor i32 %165, %137
  %167 = and i32 %166, 12
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %249

169:                                              ; preds = %163
  br i1 %147, label %180, label %170

170:                                              ; preds = %169
  %171 = load i32, ptr %2, align 4, !tbaa !6
  %172 = getelementptr inbounds i8, ptr %159, i64 24
  %173 = load i32, ptr %172, align 8, !tbaa !6
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %249

175:                                              ; preds = %170
  %176 = load i32, ptr %11, align 4, !tbaa !6
  %177 = getelementptr inbounds i8, ptr %159, i64 28
  %178 = load i32, ptr %177, align 4, !tbaa !6
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %249

180:                                              ; preds = %175, %169
  %181 = and i32 %137, 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %180
  %184 = load i32, ptr %12, align 4, !tbaa !6
  %185 = getelementptr inbounds %struct.mbinfo, ptr %136, i64 %31, i32 6, i64 0, i64 1
  %186 = load i32, ptr %185, align 8, !tbaa !6
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %249

188:                                              ; preds = %183
  %189 = load i32, ptr %13, align 4, !tbaa !6
  %190 = getelementptr inbounds i8, ptr %185, i64 4
  %191 = load i32, ptr %190, align 4, !tbaa !6
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %193, label %249

193:                                              ; preds = %188, %180
  store i32 %137, ptr %159, align 8, !tbaa !13
  %194 = getelementptr inbounds %struct.mbinfo, ptr %136, i64 %31, i32 5
  store i32 1, ptr %194, align 4, !tbaa !18
  %195 = add nsw i32 %57, 1
  br label %447

196:                                              ; preds = %153
  %197 = icmp ne i32 %155, 3
  %198 = select i1 %154, i1 %197, i1 false
  br i1 %198, label %199, label %249

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.mbinfo, ptr %136, i64 %31
  %201 = getelementptr inbounds i8, ptr %200, i64 4
  %202 = load i32, ptr %201, align 4, !tbaa !19
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %249

204:                                              ; preds = %199
  %205 = getelementptr i8, ptr %200, i64 -96
  %206 = load i32, ptr %205, align 8, !tbaa !13
  %207 = xor i32 %206, %137
  %208 = and i32 %207, 12
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %249

210:                                              ; preds = %204
  br i1 %147, label %227, label %211

211:                                              ; preds = %210
  %212 = load i32, ptr %2, align 4, !tbaa !6
  %213 = getelementptr inbounds i8, ptr %200, i64 24
  %214 = load i32, ptr %213, align 8, !tbaa !6
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %249

216:                                              ; preds = %211
  %217 = load i32, ptr %11, align 4, !tbaa !6
  %218 = getelementptr inbounds i8, ptr %200, i64 28
  %219 = load i32, ptr %218, align 4, !tbaa !6
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %249

221:                                              ; preds = %216
  %222 = getelementptr inbounds i8, ptr %200, i64 56
  %223 = load i32, ptr %222, align 8, !tbaa !6
  %224 = icmp eq i32 %155, 2
  %225 = zext i1 %224 to i32
  %226 = icmp eq i32 %223, %225
  br i1 %226, label %227, label %249

227:                                              ; preds = %221, %210
  %228 = and i32 %137, 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %246, label %230

230:                                              ; preds = %227
  %231 = load i32, ptr %12, align 4, !tbaa !6
  %232 = getelementptr inbounds i8, ptr %200, i64 32
  %233 = load i32, ptr %232, align 8, !tbaa !6
  %234 = icmp eq i32 %231, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %230
  %236 = load i32, ptr %13, align 4, !tbaa !6
  %237 = getelementptr inbounds i8, ptr %200, i64 36
  %238 = load i32, ptr %237, align 4, !tbaa !6
  %239 = icmp eq i32 %236, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %235
  %241 = getelementptr inbounds i8, ptr %200, i64 60
  %242 = load i32, ptr %241, align 4, !tbaa !6
  %243 = icmp eq i32 %155, 2
  %244 = zext i1 %243 to i32
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %240, %227
  store i32 %137, ptr %200, align 8, !tbaa !13
  %247 = getelementptr inbounds %struct.mbinfo, ptr %136, i64 %31, i32 5
  store i32 1, ptr %247, align 4, !tbaa !18
  %248 = add nsw i32 %57, 1
  br label %447

249:                                              ; preds = %158, %163, %170, %175, %183, %188, %196, %199, %204, %211, %216, %221, %230, %235, %240, %138, %133
  %250 = getelementptr inbounds %struct.mbinfo, ptr %136, i64 %31, i32 5
  store i32 0, ptr %250, align 4, !tbaa !18
  %251 = load i32, ptr @pict_type, align 4, !tbaa !6
  %252 = icmp ne i32 %251, 2
  %253 = or i1 %134, %252
  %254 = and i32 %137, 8
  %255 = icmp ne i32 %254, 0
  %256 = select i1 %253, i1 true, i1 %255
  %257 = or disjoint i32 %137, 8
  %258 = select i1 %256, i32 %137, i32 %257
  tail call void @putaddrinc(i32 noundef signext %57) #4
  %259 = load i32, ptr @pict_type, align 4, !tbaa !6
  tail call void @putmbtype(i32 noundef signext %259, i32 noundef signext %258) #4
  %260 = and i32 %258, 12
  %261 = icmp eq i32 %260, 0
  %262 = load i32, ptr @frame_pred_dct, align 4
  %263 = icmp ne i32 %262, 0
  %264 = select i1 %261, i1 true, i1 %263
  br i1 %264, label %270, label %265

265:                                              ; preds = %249
  %266 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %267 = getelementptr inbounds %struct.mbinfo, ptr %266, i64 %31, i32 1
  %268 = load i32, ptr %267, align 4, !tbaa !19
  tail call void @putbits(i32 noundef signext %268, i32 noundef signext 2) #4
  %269 = load i32, ptr @frame_pred_dct, align 4
  br label %270

270:                                              ; preds = %265, %249
  %271 = phi i32 [ %269, %265 ], [ %262, %249 ]
  %272 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %273 = icmp eq i32 %272, 3
  %274 = and i1 %134, %273
  %275 = icmp eq i32 %271, 0
  %276 = select i1 %274, i1 %275, i1 false
  br i1 %276, label %277, label %281

277:                                              ; preds = %270
  %278 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %279 = getelementptr inbounds %struct.mbinfo, ptr %278, i64 %31, i32 2
  %280 = load i32, ptr %279, align 8, !tbaa !20
  tail call void @putbits(i32 noundef signext %280, i32 noundef signext 1) #4
  br label %281

281:                                              ; preds = %277, %270
  %282 = and i32 %258, 16
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %302, label %284

284:                                              ; preds = %281
  %285 = load i32, ptr @q_scale_type, align 4, !tbaa !6
  %286 = icmp eq i32 %285, 0
  %287 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %288 = getelementptr inbounds %struct.mbinfo, ptr %287, i64 %31, i32 3
  %289 = load i32, ptr %288, align 4, !tbaa !16
  br i1 %286, label %295, label %290

290:                                              ; preds = %284
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds [113 x i8], ptr @map_non_linear_mquant, i64 0, i64 %291
  %293 = load i8, ptr %292, align 1, !tbaa !10
  %294 = zext i8 %293 to i32
  br label %297

295:                                              ; preds = %284
  %296 = ashr i32 %289, 1
  br label %297

297:                                              ; preds = %295, %290
  %298 = phi i32 [ %294, %290 ], [ %296, %295 ]
  tail call void @putbits(i32 noundef signext %298, i32 noundef signext 5) #4
  %299 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %300 = getelementptr inbounds %struct.mbinfo, ptr %299, i64 %31, i32 3
  %301 = load i32, ptr %300, align 4, !tbaa !16
  br label %302

302:                                              ; preds = %297, %281
  %303 = phi i32 [ %301, %297 ], [ %33, %281 ]
  %304 = and i32 %258, 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %302
  %307 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %308 = getelementptr inbounds %struct.mbinfo, ptr %307, i64 %31
  %309 = getelementptr inbounds i8, ptr %308, i64 24
  %310 = getelementptr inbounds i8, ptr %308, i64 56
  %311 = getelementptr inbounds i8, ptr %308, i64 72
  %312 = getelementptr inbounds i8, ptr %308, i64 4
  %313 = load i32, ptr %312, align 4, !tbaa !19
  %314 = load i32, ptr @forw_hor_f_code, align 4, !tbaa !6
  %315 = load i32, ptr @forw_vert_f_code, align 4, !tbaa !6
  call fastcc void @putmvs(ptr noundef nonnull %309, ptr noundef nonnull %2, ptr noundef nonnull %310, ptr noundef nonnull %311, i32 noundef signext 0, i32 noundef signext %313, i32 noundef signext %314, i32 noundef signext %315)
  br label %316

316:                                              ; preds = %306, %302
  %317 = and i32 %258, 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %329, label %319

319:                                              ; preds = %316
  %320 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %321 = getelementptr inbounds %struct.mbinfo, ptr %320, i64 %31
  %322 = getelementptr inbounds i8, ptr %321, i64 24
  %323 = getelementptr inbounds i8, ptr %321, i64 56
  %324 = getelementptr inbounds i8, ptr %321, i64 72
  %325 = getelementptr inbounds i8, ptr %321, i64 4
  %326 = load i32, ptr %325, align 4, !tbaa !19
  %327 = load i32, ptr @back_hor_f_code, align 4, !tbaa !6
  %328 = load i32, ptr @back_vert_f_code, align 4, !tbaa !6
  call fastcc void @putmvs(ptr noundef nonnull %322, ptr noundef nonnull %2, ptr noundef nonnull %323, ptr noundef nonnull %324, i32 noundef signext 1, i32 noundef signext %326, i32 noundef signext %327, i32 noundef signext %328)
  br label %329

329:                                              ; preds = %319, %316
  %330 = and i32 %258, 2
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %342, label %332

332:                                              ; preds = %329
  %333 = load i32, ptr @block_count, align 4, !tbaa !6
  %334 = add nsw i32 %333, -6
  %335 = ashr i32 %135, %334
  %336 = and i32 %335, 63
  tail call void @putcbp(i32 noundef signext %336) #4
  %337 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %338 = icmp eq i32 %337, 1
  br i1 %338, label %342, label %339

339:                                              ; preds = %332
  %340 = load i32, ptr @block_count, align 4, !tbaa !6
  %341 = add nsw i32 %340, -6
  tail call void @putbits(i32 noundef signext %135, i32 noundef signext %341) #4
  br label %342

342:                                              ; preds = %332, %339, %329
  %343 = load i32, ptr @block_count, align 4, !tbaa !6
  %344 = icmp sgt i32 %343, 0
  %345 = and i32 %258, 1
  br i1 %344, label %346, label %437

346:                                              ; preds = %342
  %347 = icmp eq i32 %345, 0
  %348 = add nsw i32 %343, -1
  %349 = shl nuw i32 1, %348
  %350 = and i32 %349, %135
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %359, label %352

352:                                              ; preds = %346
  %353 = load ptr, ptr @blocks, align 8, !tbaa !11
  %354 = mul nsw i32 %343, %61
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [64 x i16], ptr %353, i64 %355
  br i1 %347, label %358, label %357

357:                                              ; preds = %352
  tail call void @putintrablk(ptr noundef %356, i32 noundef signext 0) #4
  br label %359

358:                                              ; preds = %352
  tail call void @putnonintrablk(ptr noundef %356) #4
  br label %359

359:                                              ; preds = %358, %357, %346
  %360 = load i32, ptr @block_count, align 4, !tbaa !6
  %361 = icmp sgt i32 %360, 1
  br i1 %361, label %362, label %437

362:                                              ; preds = %359
  %363 = add nsw i32 %360, -2
  %364 = shl nuw i32 1, %363
  %365 = and i32 %364, %135
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %375, label %367

367:                                              ; preds = %362
  %368 = load ptr, ptr @blocks, align 8, !tbaa !11
  %369 = mul nsw i32 %360, %61
  %370 = sext i32 %369 to i64
  %371 = getelementptr [64 x i16], ptr %368, i64 %370
  %372 = getelementptr i8, ptr %371, i64 128
  br i1 %347, label %374, label %373

373:                                              ; preds = %367
  tail call void @putintrablk(ptr noundef %372, i32 noundef signext 0) #4
  br label %375

374:                                              ; preds = %367
  tail call void @putnonintrablk(ptr noundef %372) #4
  br label %375

375:                                              ; preds = %374, %373, %362
  %376 = load i32, ptr @block_count, align 4, !tbaa !6
  %377 = icmp sgt i32 %376, 2
  br i1 %377, label %378, label %437

378:                                              ; preds = %375
  %379 = add nsw i32 %376, -3
  %380 = shl nuw i32 1, %379
  %381 = and i32 %380, %135
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %378
  %384 = load ptr, ptr @blocks, align 8, !tbaa !11
  %385 = mul nsw i32 %376, %61
  %386 = sext i32 %385 to i64
  %387 = getelementptr [64 x i16], ptr %384, i64 %386
  %388 = getelementptr i8, ptr %387, i64 256
  br i1 %347, label %390, label %389

389:                                              ; preds = %383
  tail call void @putintrablk(ptr noundef %388, i32 noundef signext 0) #4
  br label %391

390:                                              ; preds = %383
  tail call void @putnonintrablk(ptr noundef %388) #4
  br label %391

391:                                              ; preds = %390, %389, %378
  %392 = load i32, ptr @block_count, align 4, !tbaa !6
  %393 = icmp sgt i32 %392, 3
  br i1 %393, label %394, label %437

394:                                              ; preds = %391
  %395 = add nsw i32 %392, -4
  %396 = shl nuw i32 1, %395
  %397 = and i32 %396, %135
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %407, label %399

399:                                              ; preds = %394
  %400 = load ptr, ptr @blocks, align 8, !tbaa !11
  %401 = mul nsw i32 %392, %61
  %402 = sext i32 %401 to i64
  %403 = getelementptr [64 x i16], ptr %400, i64 %402
  %404 = getelementptr i8, ptr %403, i64 384
  br i1 %347, label %406, label %405

405:                                              ; preds = %399
  tail call void @putintrablk(ptr noundef %404, i32 noundef signext 0) #4
  br label %407

406:                                              ; preds = %399
  tail call void @putnonintrablk(ptr noundef %404) #4
  br label %407

407:                                              ; preds = %406, %405, %394
  %408 = load i32, ptr @block_count, align 4, !tbaa !6
  %409 = icmp sgt i32 %408, 4
  br i1 %409, label %410, label %437

410:                                              ; preds = %407, %433
  %411 = phi i32 [ %435, %433 ], [ %408, %407 ]
  %412 = phi i32 [ %434, %433 ], [ 4, %407 ]
  %413 = xor i32 %412, -1
  %414 = add i32 %411, %413
  %415 = shl nuw i32 1, %414
  %416 = and i32 %415, %135
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %433, label %418

418:                                              ; preds = %410
  br i1 %347, label %427, label %419

419:                                              ; preds = %418
  %420 = and i32 %412, 1
  %421 = add nuw nsw i32 %420, 1
  %422 = load ptr, ptr @blocks, align 8, !tbaa !11
  %423 = mul nsw i32 %411, %61
  %424 = add nsw i32 %423, %412
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [64 x i16], ptr %422, i64 %425
  tail call void @putintrablk(ptr noundef %426, i32 noundef signext %421) #4
  br label %433

427:                                              ; preds = %418
  %428 = load ptr, ptr @blocks, align 8, !tbaa !11
  %429 = mul nsw i32 %411, %61
  %430 = add nsw i32 %429, %412
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [64 x i16], ptr %428, i64 %431
  tail call void @putnonintrablk(ptr noundef %432) #4
  br label %433

433:                                              ; preds = %410, %427, %419
  %434 = add nuw nsw i32 %412, 1
  %435 = load i32, ptr @block_count, align 4, !tbaa !6
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %410, label %437, !llvm.loop !21

437:                                              ; preds = %433, %342, %359, %375, %391, %407
  %438 = icmp eq i32 %345, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @dc_dct_pred, i8 0, i64 12, i1 false), !tbaa !6
  %440 = load i32, ptr @pict_type, align 4, !tbaa !6
  %441 = icmp ne i32 %440, 2
  %442 = or i1 %305, %441
  br i1 %442, label %444, label %443

443:                                              ; preds = %437, %439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %444

444:                                              ; preds = %439, %443
  %445 = load ptr, ptr @mbinfo, align 8, !tbaa !11
  %446 = getelementptr inbounds %struct.mbinfo, ptr %445, i64 %31
  store i32 %258, ptr %446, align 8, !tbaa !13
  br label %447

447:                                              ; preds = %444, %246, %193, %149
  %448 = phi i32 [ %303, %444 ], [ %33, %193 ], [ %33, %246 ], [ %33, %149 ]
  %449 = phi i32 [ 1, %444 ], [ %195, %193 ], [ %248, %246 ], [ %152, %149 ]
  %450 = add nsw i64 %31, 1
  %451 = add nuw nsw i32 %34, 1
  %452 = load i32, ptr @mb_width, align 4, !tbaa !6
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %30, label %454

454:                                              ; preds = %447
  %455 = trunc nsw i64 %450 to i32
  %456 = load i32, ptr @mb_height2, align 4, !tbaa !6
  br label %457

457:                                              ; preds = %454, %16
  %458 = phi i32 [ %17, %16 ], [ %456, %454 ]
  %459 = phi i32 [ %18, %16 ], [ %452, %454 ]
  %460 = phi i32 [ %21, %16 ], [ %455, %454 ]
  %461 = phi i32 [ %20, %16 ], [ %448, %454 ]
  %462 = phi i32 [ %19, %16 ], [ %449, %454 ]
  %463 = add nuw nsw i32 %22, 1
  %464 = icmp slt i32 %463, %458
  br i1 %464, label %16, label %465, !llvm.loop !23

465:                                              ; preds = %457, %10, %6
  tail call void @rc_update_pict() #4
  tail call void @vbv_end_of_picture() #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local void @rc_init_pict(ptr noundef) local_unnamed_addr #2

declare dso_local void @putpicthdr() local_unnamed_addr #2

declare dso_local void @putpictcodext() local_unnamed_addr #2

declare dso_local signext i32 @rc_start_mb() local_unnamed_addr #2

declare dso_local void @alignbits() local_unnamed_addr #2

declare dso_local void @putbits(i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @rc_calc_mquant(i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @quant_intra(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @quant_non_intra(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @putaddrinc(i32 noundef signext) local_unnamed_addr #2

declare dso_local void @putmbtype(i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @putmvs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7) unnamed_addr #0 {
  %9 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %10 = icmp eq i32 %9, 3
  %11 = zext nneg i32 %4 to i64
  br i1 %10, label %12, label %86

12:                                               ; preds = %8
  switch i32 %5, label %65 [
    i32 2, label %13
    i32 1, label %29
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %11
  %15 = load i32, ptr %14, align 4, !tbaa !6
  %16 = getelementptr inbounds [2 x [2 x i32]], ptr %1, i64 0, i64 %11
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = sub nsw i32 %15, %17
  tail call void @putmv(i32 noundef signext %18, i32 noundef signext %6) #4
  %19 = getelementptr inbounds i8, ptr %14, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %16, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !6
  %23 = sub nsw i32 %20, %22
  tail call void @putmv(i32 noundef signext %23, i32 noundef signext %7) #4
  %24 = load i32, ptr %14, align 4, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %1, i64 16
  %26 = getelementptr inbounds [2 x [2 x i32]], ptr %25, i64 0, i64 %11
  store i32 %24, ptr %26, align 4, !tbaa !6
  store i32 %24, ptr %16, align 4, !tbaa !6
  %27 = load i32, ptr %19, align 4, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %26, i64 4
  store i32 %27, ptr %28, align 4, !tbaa !6
  store i32 %27, ptr %21, align 4, !tbaa !6
  br label %156

29:                                               ; preds = %12
  %30 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %11
  %31 = load i32, ptr %30, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %31, i32 noundef signext 1) #4
  %32 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %11
  %33 = load i32, ptr %32, align 4, !tbaa !6
  %34 = getelementptr inbounds [2 x [2 x i32]], ptr %1, i64 0, i64 %11
  %35 = load i32, ptr %34, align 4, !tbaa !6
  %36 = sub nsw i32 %33, %35
  tail call void @putmv(i32 noundef signext %36, i32 noundef signext %6) #4
  %37 = getelementptr inbounds i8, ptr %32, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa !6
  %39 = ashr i32 %38, 1
  %40 = getelementptr inbounds i8, ptr %34, i64 4
  %41 = load i32, ptr %40, align 4, !tbaa !6
  %42 = ashr i32 %41, 1
  %43 = sub nsw i32 %39, %42
  tail call void @putmv(i32 noundef signext %43, i32 noundef signext %7) #4
  %44 = getelementptr inbounds i8, ptr %2, i64 8
  %45 = getelementptr inbounds [2 x i32], ptr %44, i64 0, i64 %11
  %46 = load i32, ptr %45, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %46, i32 noundef signext 1) #4
  %47 = getelementptr inbounds i8, ptr %0, i64 16
  %48 = getelementptr inbounds [2 x [2 x i32]], ptr %47, i64 0, i64 %11
  %49 = load i32, ptr %48, align 4, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %1, i64 16
  %51 = getelementptr inbounds [2 x [2 x i32]], ptr %50, i64 0, i64 %11
  %52 = load i32, ptr %51, align 4, !tbaa !6
  %53 = sub nsw i32 %49, %52
  tail call void @putmv(i32 noundef signext %53, i32 noundef signext %6) #4
  %54 = getelementptr inbounds i8, ptr %48, i64 4
  %55 = load i32, ptr %54, align 4, !tbaa !6
  %56 = ashr i32 %55, 1
  %57 = getelementptr inbounds i8, ptr %51, i64 4
  %58 = load i32, ptr %57, align 4, !tbaa !6
  %59 = ashr i32 %58, 1
  %60 = sub nsw i32 %56, %59
  tail call void @putmv(i32 noundef signext %60, i32 noundef signext %7) #4
  %61 = load i32, ptr %32, align 4, !tbaa !6
  store i32 %61, ptr %34, align 4, !tbaa !6
  %62 = load i32, ptr %37, align 4, !tbaa !6
  store i32 %62, ptr %40, align 4, !tbaa !6
  %63 = load i32, ptr %48, align 4, !tbaa !6
  store i32 %63, ptr %51, align 4, !tbaa !6
  %64 = load i32, ptr %54, align 4, !tbaa !6
  store i32 %64, ptr %57, align 4, !tbaa !6
  br label %156

65:                                               ; preds = %12
  %66 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %11
  %67 = load i32, ptr %66, align 4, !tbaa !6
  %68 = getelementptr inbounds [2 x [2 x i32]], ptr %1, i64 0, i64 %11
  %69 = load i32, ptr %68, align 4, !tbaa !6
  %70 = sub nsw i32 %67, %69
  tail call void @putmv(i32 noundef signext %70, i32 noundef signext %6) #4
  %71 = load i32, ptr %3, align 4, !tbaa !6
  tail call void @putdmv(i32 noundef signext %71) #4
  %72 = getelementptr inbounds i8, ptr %66, i64 4
  %73 = load i32, ptr %72, align 4, !tbaa !6
  %74 = ashr i32 %73, 1
  %75 = getelementptr inbounds i8, ptr %68, i64 4
  %76 = load i32, ptr %75, align 4, !tbaa !6
  %77 = ashr i32 %76, 1
  %78 = sub nsw i32 %74, %77
  tail call void @putmv(i32 noundef signext %78, i32 noundef signext %7) #4
  %79 = getelementptr inbounds i8, ptr %3, i64 4
  %80 = load i32, ptr %79, align 4, !tbaa !6
  tail call void @putdmv(i32 noundef signext %80) #4
  %81 = load i32, ptr %66, align 4, !tbaa !6
  %82 = getelementptr inbounds i8, ptr %1, i64 16
  %83 = getelementptr inbounds [2 x [2 x i32]], ptr %82, i64 0, i64 %11
  store i32 %81, ptr %83, align 4, !tbaa !6
  store i32 %81, ptr %68, align 4, !tbaa !6
  %84 = load i32, ptr %72, align 4, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %83, i64 4
  store i32 %84, ptr %85, align 4, !tbaa !6
  store i32 %84, ptr %75, align 4, !tbaa !6
  br label %156

86:                                               ; preds = %8
  switch i32 %5, label %137 [
    i32 1, label %87
    i32 2, label %105
  ]

87:                                               ; preds = %86
  %88 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %11
  %89 = load i32, ptr %88, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %89, i32 noundef signext 1) #4
  %90 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %11
  %91 = load i32, ptr %90, align 4, !tbaa !6
  %92 = getelementptr inbounds [2 x [2 x i32]], ptr %1, i64 0, i64 %11
  %93 = load i32, ptr %92, align 4, !tbaa !6
  %94 = sub nsw i32 %91, %93
  tail call void @putmv(i32 noundef signext %94, i32 noundef signext %6) #4
  %95 = getelementptr inbounds i8, ptr %90, i64 4
  %96 = load i32, ptr %95, align 4, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %92, i64 4
  %98 = load i32, ptr %97, align 4, !tbaa !6
  %99 = sub nsw i32 %96, %98
  tail call void @putmv(i32 noundef signext %99, i32 noundef signext %7) #4
  %100 = load i32, ptr %90, align 4, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %1, i64 16
  %102 = getelementptr inbounds [2 x [2 x i32]], ptr %101, i64 0, i64 %11
  store i32 %100, ptr %102, align 4, !tbaa !6
  store i32 %100, ptr %92, align 4, !tbaa !6
  %103 = load i32, ptr %95, align 4, !tbaa !6
  %104 = getelementptr inbounds i8, ptr %102, i64 4
  store i32 %103, ptr %104, align 4, !tbaa !6
  store i32 %103, ptr %97, align 4, !tbaa !6
  br label %156

105:                                              ; preds = %86
  %106 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %11
  %107 = load i32, ptr %106, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %107, i32 noundef signext 1) #4
  %108 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %11
  %109 = load i32, ptr %108, align 4, !tbaa !6
  %110 = getelementptr inbounds [2 x [2 x i32]], ptr %1, i64 0, i64 %11
  %111 = load i32, ptr %110, align 4, !tbaa !6
  %112 = sub nsw i32 %109, %111
  tail call void @putmv(i32 noundef signext %112, i32 noundef signext %6) #4
  %113 = getelementptr inbounds i8, ptr %108, i64 4
  %114 = load i32, ptr %113, align 4, !tbaa !6
  %115 = getelementptr inbounds i8, ptr %110, i64 4
  %116 = load i32, ptr %115, align 4, !tbaa !6
  %117 = sub nsw i32 %114, %116
  tail call void @putmv(i32 noundef signext %117, i32 noundef signext %7) #4
  %118 = getelementptr inbounds i8, ptr %2, i64 8
  %119 = getelementptr inbounds [2 x i32], ptr %118, i64 0, i64 %11
  %120 = load i32, ptr %119, align 4, !tbaa !6
  tail call void @putbits(i32 noundef signext %120, i32 noundef signext 1) #4
  %121 = getelementptr inbounds i8, ptr %0, i64 16
  %122 = getelementptr inbounds [2 x [2 x i32]], ptr %121, i64 0, i64 %11
  %123 = load i32, ptr %122, align 4, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %1, i64 16
  %125 = getelementptr inbounds [2 x [2 x i32]], ptr %124, i64 0, i64 %11
  %126 = load i32, ptr %125, align 4, !tbaa !6
  %127 = sub nsw i32 %123, %126
  tail call void @putmv(i32 noundef signext %127, i32 noundef signext %6) #4
  %128 = getelementptr inbounds i8, ptr %122, i64 4
  %129 = load i32, ptr %128, align 4, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %125, i64 4
  %131 = load i32, ptr %130, align 4, !tbaa !6
  %132 = sub nsw i32 %129, %131
  tail call void @putmv(i32 noundef signext %132, i32 noundef signext %7) #4
  %133 = load i32, ptr %108, align 4, !tbaa !6
  store i32 %133, ptr %110, align 4, !tbaa !6
  %134 = load i32, ptr %113, align 4, !tbaa !6
  store i32 %134, ptr %115, align 4, !tbaa !6
  %135 = load i32, ptr %122, align 4, !tbaa !6
  store i32 %135, ptr %125, align 4, !tbaa !6
  %136 = load i32, ptr %128, align 4, !tbaa !6
  store i32 %136, ptr %130, align 4, !tbaa !6
  br label %156

137:                                              ; preds = %86
  %138 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %11
  %139 = load i32, ptr %138, align 4, !tbaa !6
  %140 = getelementptr inbounds [2 x [2 x i32]], ptr %1, i64 0, i64 %11
  %141 = load i32, ptr %140, align 4, !tbaa !6
  %142 = sub nsw i32 %139, %141
  tail call void @putmv(i32 noundef signext %142, i32 noundef signext %6) #4
  %143 = load i32, ptr %3, align 4, !tbaa !6
  tail call void @putdmv(i32 noundef signext %143) #4
  %144 = getelementptr inbounds i8, ptr %138, i64 4
  %145 = load i32, ptr %144, align 4, !tbaa !6
  %146 = getelementptr inbounds i8, ptr %140, i64 4
  %147 = load i32, ptr %146, align 4, !tbaa !6
  %148 = sub nsw i32 %145, %147
  tail call void @putmv(i32 noundef signext %148, i32 noundef signext %7) #4
  %149 = getelementptr inbounds i8, ptr %3, i64 4
  %150 = load i32, ptr %149, align 4, !tbaa !6
  tail call void @putdmv(i32 noundef signext %150) #4
  %151 = load i32, ptr %138, align 4, !tbaa !6
  %152 = getelementptr inbounds i8, ptr %1, i64 16
  %153 = getelementptr inbounds [2 x [2 x i32]], ptr %152, i64 0, i64 %11
  store i32 %151, ptr %153, align 4, !tbaa !6
  store i32 %151, ptr %140, align 4, !tbaa !6
  %154 = load i32, ptr %144, align 4, !tbaa !6
  %155 = getelementptr inbounds i8, ptr %153, i64 4
  store i32 %154, ptr %155, align 4, !tbaa !6
  store i32 %154, ptr %146, align 4, !tbaa !6
  br label %156

156:                                              ; preds = %87, %137, %105, %13, %65, %29
  ret void
}

declare dso_local void @putcbp(i32 noundef signext) local_unnamed_addr #2

declare dso_local void @putintrablk(ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @putnonintrablk(ptr noundef) local_unnamed_addr #2

declare dso_local void @rc_update_pict() local_unnamed_addr #2

declare dso_local void @vbv_end_of_picture() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local void @putmv(i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @putdmv(i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"mbinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 56, !8, i64 72, !15, i64 80, !7, i64 88}
!15 = !{!"double", !8, i64 0}
!16 = !{!14, !7, i64 12}
!17 = !{!14, !7, i64 16}
!18 = !{!14, !7, i64 20}
!19 = !{!14, !7, i64 4}
!20 = !{!14, !7, i64 8}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.peeled.count", i32 4}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unswitch.partial.disable"}
