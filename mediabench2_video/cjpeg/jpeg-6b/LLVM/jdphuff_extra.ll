; ModuleID = 'jdphuff.c'
source_filename = "jdphuff.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.bitread_working_state = type { ptr, i64, i64, i32, ptr }
%struct.savable_state = type { i32, [4 x i32] }

@extend_test = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 4
@extend_offset = internal unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 4
@jpeg_natural_order = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind
define dso_local void @jinit_phuff_decoder(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 104) #6
  %6 = getelementptr inbounds i8, ptr %0, i64 592
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @start_pass_phuff_decoder, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %5, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !23
  %8 = load ptr, ptr %2, align 8, !tbaa !6
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds i8, ptr %0, i64 56
  %11 = load i32, ptr %10, align 8, !tbaa !24
  %12 = shl nsw i32 %11, 6
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %9(ptr noundef %0, i32 noundef signext 1, i64 noundef %14) #6
  %16 = getelementptr inbounds i8, ptr %0, i64 192
  store ptr %15, ptr %16, align 8, !tbaa !25
  %17 = load i32, ptr %10, align 8, !tbaa !24
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1, %19
  %20 = phi i32 [ %23, %19 ], [ 0, %1 ]
  %21 = phi ptr [ %22, %19 ], [ %15, %1 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %21, i8 -1, i64 256, i1 false), !tbaa !26
  %22 = getelementptr i8, ptr %21, i64 256
  %23 = add nuw nsw i32 %20, 1
  %24 = load i32, ptr %10, align 8, !tbaa !24
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %19, label %26, !llvm.loop !27

26:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @start_pass_phuff_decoder(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 592
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %0, i64 524
  %5 = load i32, ptr %4, align 4, !tbaa !29
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds i8, ptr %0, i64 528
  %8 = load i32, ptr %7, align 8, !tbaa !30
  br i1 %6, label %9, label %11

9:                                                ; preds = %1
  %10 = icmp ne i32 %8, 0
  br label %19

11:                                               ; preds = %1
  %12 = icmp sgt i32 %5, %8
  %13 = icmp sgt i32 %8, 63
  %14 = or i1 %12, %13
  %15 = getelementptr inbounds i8, ptr %0, i64 432
  %16 = load i32, ptr %15, align 8, !tbaa !31
  %17 = icmp ne i32 %16, 1
  %18 = select i1 %17, i1 true, i1 %14
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi i1 [ %10, %9 ], [ %18, %11 ]
  %21 = getelementptr inbounds i8, ptr %0, i64 532
  %22 = load i32, ptr %21, align 4, !tbaa !32
  %23 = icmp ne i32 %22, 0
  %24 = getelementptr inbounds i8, ptr %0, i64 536
  %25 = load i32, ptr %24, align 8, !tbaa !33
  %26 = add nsw i32 %22, -1
  %27 = icmp ne i32 %25, %26
  %28 = select i1 %23, i1 %27, i1 false
  %29 = getelementptr inbounds i8, ptr %0, i64 536
  %30 = icmp sgt i32 %25, 13
  %31 = select i1 %30, i1 true, i1 %28
  %32 = select i1 %31, i1 true, i1 %20
  br i1 %32, label %33, label %49

33:                                               ; preds = %19
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %34, i64 40
  store i32 16, ptr %35, align 8, !tbaa !35
  %36 = getelementptr inbounds i8, ptr %34, i64 44
  store i32 %5, ptr %36, align 4, !tbaa !37
  %37 = getelementptr inbounds i8, ptr %0, i64 528
  %38 = load i32, ptr %37, align 8, !tbaa !30
  %39 = load ptr, ptr %0, align 8, !tbaa !34
  %40 = getelementptr inbounds i8, ptr %39, i64 48
  store i32 %38, ptr %40, align 4, !tbaa !37
  %41 = load i32, ptr %21, align 4, !tbaa !32
  %42 = load ptr, ptr %0, align 8, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %42, i64 52
  store i32 %41, ptr %43, align 4, !tbaa !37
  %44 = load i32, ptr %29, align 8, !tbaa !33
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %45, i64 56
  store i32 %44, ptr %46, align 4, !tbaa !37
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = load ptr, ptr %47, align 8, !tbaa !38
  tail call void %48(ptr noundef nonnull %0) #6
  br label %49

49:                                               ; preds = %33, %19
  %50 = getelementptr inbounds i8, ptr %0, i64 432
  %51 = load i32, ptr %50, align 8, !tbaa !31
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %161

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %0, i64 440
  %55 = getelementptr inbounds i8, ptr %0, i64 192
  %56 = getelementptr inbounds i8, ptr %0, i64 528
  br i1 %6, label %57, label %107

57:                                               ; preds = %53
  %58 = load i32, ptr %4, align 4, !tbaa !29
  %59 = load i32, ptr %56, align 8, !tbaa !30
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %165, label %61

61:                                               ; preds = %57, %101
  %62 = phi i32 [ %102, %101 ], [ %51, %57 ]
  %63 = phi i32 [ %103, %101 ], [ %59, %57 ]
  %64 = phi i64 [ %104, %101 ], [ 0, %57 ]
  %65 = getelementptr inbounds [4 x ptr], ptr %54, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !23
  %67 = getelementptr inbounds i8, ptr %66, i64 4
  %68 = load i32, ptr %67, align 4, !tbaa !39
  %69 = load ptr, ptr %55, align 8, !tbaa !25
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds [64 x i32], ptr %69, i64 %70
  %72 = load i32, ptr %4, align 4, !tbaa !29
  %73 = icmp sgt i32 %72, %63
  br i1 %73, label %101, label %74

74:                                               ; preds = %61
  %75 = sext i32 %72 to i64
  br label %76

76:                                               ; preds = %74, %93
  %77 = phi i64 [ %75, %74 ], [ %95, %93 ]
  %78 = getelementptr inbounds i32, ptr %71, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !26
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 0)
  %81 = load i32, ptr %21, align 4, !tbaa !32
  %82 = icmp eq i32 %81, %80
  br i1 %82, label %93, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr %0, align 8, !tbaa !34
  %85 = getelementptr inbounds i8, ptr %84, i64 40
  store i32 115, ptr %85, align 8, !tbaa !35
  %86 = getelementptr inbounds i8, ptr %84, i64 44
  store i32 %68, ptr %86, align 4, !tbaa !37
  %87 = load ptr, ptr %0, align 8, !tbaa !34
  %88 = getelementptr inbounds i8, ptr %87, i64 48
  %89 = trunc nsw i64 %77 to i32
  store i32 %89, ptr %88, align 4, !tbaa !37
  %90 = load ptr, ptr %0, align 8, !tbaa !34
  %91 = getelementptr inbounds i8, ptr %90, i64 8
  %92 = load ptr, ptr %91, align 8, !tbaa !41
  tail call void %92(ptr noundef nonnull %0, i32 noundef signext -1) #6
  br label %93

93:                                               ; preds = %83, %76
  %94 = load i32, ptr %29, align 8, !tbaa !33
  store i32 %94, ptr %78, align 4, !tbaa !26
  %95 = add nsw i64 %77, 1
  %96 = load i32, ptr %56, align 8, !tbaa !30
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %77, %97
  br i1 %98, label %76, label %99, !llvm.loop !42

99:                                               ; preds = %93
  %100 = load i32, ptr %50, align 8, !tbaa !31
  br label %101

101:                                              ; preds = %99, %61
  %102 = phi i32 [ %100, %99 ], [ %62, %61 ]
  %103 = phi i32 [ %96, %99 ], [ %63, %61 ]
  %104 = add nuw nsw i64 %64, 1
  %105 = sext i32 %102 to i64
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %61, label %161, !llvm.loop !43

107:                                              ; preds = %53, %156
  %108 = phi i64 [ %157, %156 ], [ 0, %53 ]
  %109 = getelementptr inbounds [4 x ptr], ptr %54, i64 0, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !23
  %111 = getelementptr inbounds i8, ptr %110, i64 4
  %112 = load i32, ptr %111, align 4, !tbaa !39
  %113 = load ptr, ptr %55, align 8, !tbaa !25
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [64 x i32], ptr %113, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !26
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %107
  %119 = load ptr, ptr %0, align 8, !tbaa !34
  %120 = getelementptr inbounds i8, ptr %119, i64 40
  store i32 115, ptr %120, align 8, !tbaa !35
  %121 = getelementptr inbounds i8, ptr %119, i64 44
  store i32 %112, ptr %121, align 4, !tbaa !37
  %122 = load ptr, ptr %0, align 8, !tbaa !34
  %123 = getelementptr inbounds i8, ptr %122, i64 48
  store i32 0, ptr %123, align 4, !tbaa !37
  %124 = load ptr, ptr %0, align 8, !tbaa !34
  %125 = getelementptr inbounds i8, ptr %124, i64 8
  %126 = load ptr, ptr %125, align 8, !tbaa !41
  tail call void %126(ptr noundef nonnull %0, i32 noundef signext -1) #6
  br label %127

127:                                              ; preds = %118, %107
  %128 = load i32, ptr %4, align 4, !tbaa !29
  %129 = load i32, ptr %56, align 8, !tbaa !30
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %156, label %131

131:                                              ; preds = %127
  %132 = sext i32 %128 to i64
  br label %133

133:                                              ; preds = %131, %150
  %134 = phi i64 [ %132, %131 ], [ %152, %150 ]
  %135 = getelementptr inbounds i32, ptr %115, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !26
  %137 = tail call i32 @llvm.smax.i32(i32 %136, i32 0)
  %138 = load i32, ptr %21, align 4, !tbaa !32
  %139 = icmp eq i32 %138, %137
  br i1 %139, label %150, label %140

140:                                              ; preds = %133
  %141 = load ptr, ptr %0, align 8, !tbaa !34
  %142 = getelementptr inbounds i8, ptr %141, i64 40
  store i32 115, ptr %142, align 8, !tbaa !35
  %143 = getelementptr inbounds i8, ptr %141, i64 44
  store i32 %112, ptr %143, align 4, !tbaa !37
  %144 = load ptr, ptr %0, align 8, !tbaa !34
  %145 = getelementptr inbounds i8, ptr %144, i64 48
  %146 = trunc nsw i64 %134 to i32
  store i32 %146, ptr %145, align 4, !tbaa !37
  %147 = load ptr, ptr %0, align 8, !tbaa !34
  %148 = getelementptr inbounds i8, ptr %147, i64 8
  %149 = load ptr, ptr %148, align 8, !tbaa !41
  tail call void %149(ptr noundef nonnull %0, i32 noundef signext -1) #6
  br label %150

150:                                              ; preds = %140, %133
  %151 = load i32, ptr %29, align 8, !tbaa !33
  store i32 %151, ptr %135, align 4, !tbaa !26
  %152 = add nsw i64 %134, 1
  %153 = load i32, ptr %56, align 8, !tbaa !30
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %134, %154
  br i1 %155, label %133, label %156, !llvm.loop !42

156:                                              ; preds = %150, %127
  %157 = add nuw nsw i64 %108, 1
  %158 = load i32, ptr %50, align 8, !tbaa !31
  %159 = sext i32 %158 to i64
  %160 = icmp slt i64 %157, %159
  br i1 %160, label %107, label %161, !llvm.loop !45

161:                                              ; preds = %156, %101, %49
  %162 = phi i32 [ %51, %49 ], [ %102, %101 ], [ %158, %156 ]
  %163 = load i32, ptr %21, align 4, !tbaa !32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %171

165:                                              ; preds = %57
  %166 = load i32, ptr %21, align 4, !tbaa !32
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %167, ptr @decode_mcu_DC_first, ptr @decode_mcu_DC_refine
  br label %173

169:                                              ; preds = %161
  %170 = select i1 %6, ptr @decode_mcu_DC_first, ptr @decode_mcu_AC_first
  br label %173

171:                                              ; preds = %161
  %172 = select i1 %6, ptr @decode_mcu_DC_refine, ptr @decode_mcu_AC_refine
  br label %173

173:                                              ; preds = %171, %169, %165
  %174 = phi ptr [ %170, %169 ], [ %168, %165 ], [ %172, %171 ]
  %175 = phi i32 [ %162, %169 ], [ %51, %165 ], [ %162, %171 ]
  %176 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %174, ptr %176, align 8, !tbaa !46
  %177 = icmp sgt i32 %175, 0
  br i1 %177, label %178, label %214

178:                                              ; preds = %173
  %179 = getelementptr inbounds i8, ptr %0, i64 440
  %180 = getelementptr inbounds i8, ptr %3, i64 64
  %181 = getelementptr inbounds i8, ptr %3, i64 96
  %182 = getelementptr inbounds i8, ptr %3, i64 44
  br i1 %6, label %183, label %200

183:                                              ; preds = %178, %194
  %184 = phi i64 [ %196, %194 ], [ 0, %178 ]
  %185 = load i32, ptr %21, align 4, !tbaa !32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = getelementptr inbounds [4 x ptr], ptr %179, i64 0, i64 %184
  %189 = load ptr, ptr %188, align 8, !tbaa !23
  %190 = getelementptr inbounds i8, ptr %189, i64 20
  %191 = load i32, ptr %190, align 4, !tbaa !47
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [4 x ptr], ptr %180, i64 0, i64 %192
  tail call void @jpeg_make_d_derived_tbl(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %191, ptr noundef nonnull %193) #6
  br label %194

194:                                              ; preds = %187, %183
  %195 = getelementptr inbounds [4 x i32], ptr %182, i64 0, i64 %184
  store i32 0, ptr %195, align 4, !tbaa !26
  %196 = add nuw nsw i64 %184, 1
  %197 = load i32, ptr %50, align 8, !tbaa !31
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %196, %198
  br i1 %199, label %183, label %214, !llvm.loop !48

200:                                              ; preds = %178, %200
  %201 = phi i64 [ %210, %200 ], [ 0, %178 ]
  %202 = getelementptr inbounds [4 x ptr], ptr %179, i64 0, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !23
  %204 = getelementptr inbounds i8, ptr %203, i64 24
  %205 = load i32, ptr %204, align 8, !tbaa !49
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x ptr], ptr %180, i64 0, i64 %206
  tail call void @jpeg_make_d_derived_tbl(ptr noundef nonnull %0, i32 noundef signext 0, i32 noundef signext %205, ptr noundef nonnull %207) #6
  %208 = load ptr, ptr %207, align 8, !tbaa !23
  store ptr %208, ptr %181, align 8, !tbaa !50
  %209 = getelementptr inbounds [4 x i32], ptr %182, i64 0, i64 %201
  store i32 0, ptr %209, align 4, !tbaa !26
  %210 = add nuw nsw i64 %201, 1
  %211 = load i32, ptr %50, align 8, !tbaa !31
  %212 = sext i32 %211 to i64
  %213 = icmp slt i64 %210, %212
  br i1 %213, label %200, label %214, !llvm.loop !48

214:                                              ; preds = %200, %194, %173
  %215 = getelementptr inbounds i8, ptr %3, i64 24
  %216 = getelementptr inbounds i8, ptr %3, i64 32
  store i32 0, ptr %216, align 8, !tbaa !51
  store i64 0, ptr %215, align 8, !tbaa !52
  %217 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 0, ptr %217, align 8, !tbaa !53
  %218 = getelementptr inbounds i8, ptr %3, i64 40
  store i32 0, ptr %218, align 8, !tbaa !54
  %219 = getelementptr inbounds i8, ptr %0, i64 368
  %220 = load i32, ptr %219, align 8, !tbaa !55
  %221 = getelementptr inbounds i8, ptr %3, i64 60
  store i32 %220, ptr %221, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal noundef signext i32 @decode_mcu_DC_first(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = alloca %struct.savable_state, align 4
  %5 = getelementptr inbounds i8, ptr %0, i64 592
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %0, i64 536
  %8 = load i32, ptr %7, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  %9 = getelementptr inbounds i8, ptr %0, i64 368
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %6, i64 60
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %6, i64 32
  %18 = load i32, ptr %17, align 8, !tbaa !51
  %19 = sdiv i32 %18, 8
  %20 = getelementptr inbounds i8, ptr %0, i64 584
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds i8, ptr %21, i64 36
  %23 = load i32, ptr %22, align 4, !tbaa !58
  %24 = add i32 %23, %19
  store i32 %24, ptr %22, align 4, !tbaa !58
  store i32 0, ptr %17, align 8, !tbaa !51
  %25 = getelementptr inbounds i8, ptr %21, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = tail call signext i32 %26(ptr noundef nonnull %0) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %186, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds i8, ptr %0, i64 432
  %31 = load i32, ptr %30, align 8, !tbaa !31
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %6, i64 44
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %38, %35 ]
  %37 = getelementptr inbounds [4 x i32], ptr %34, i64 0, i64 %36
  store i32 0, ptr %37, align 4, !tbaa !26
  %38 = add nuw nsw i64 %36, 1
  %39 = load i32, ptr %30, align 8, !tbaa !31
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %35, label %42, !llvm.loop !61

42:                                               ; preds = %35, %29
  %43 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 0, ptr %43, align 8, !tbaa !54
  %44 = load i32, ptr %9, align 8, !tbaa !55
  store i32 %44, ptr %13, align 4, !tbaa !56
  %45 = getelementptr inbounds i8, ptr %0, i64 540
  %46 = load i32, ptr %45, align 4, !tbaa !62
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds i8, ptr %6, i64 16
  store i32 0, ptr %49, align 8, !tbaa !53
  br label %50

50:                                               ; preds = %42, %48, %12, %2
  %51 = getelementptr inbounds i8, ptr %6, i64 16
  %52 = load i32, ptr %51, align 8, !tbaa !53
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %182

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %3, i64 32
  store ptr %0, ptr %55, align 8, !tbaa !63
  %56 = getelementptr inbounds i8, ptr %0, i64 40
  %57 = load ptr, ptr %56, align 8, !tbaa !65
  %58 = load ptr, ptr %57, align 8, !tbaa !66
  store ptr %58, ptr %3, align 8, !tbaa !68
  %59 = getelementptr inbounds i8, ptr %57, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !69
  %61 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %60, ptr %61, align 8, !tbaa !70
  %62 = getelementptr inbounds i8, ptr %6, i64 24
  %63 = load i64, ptr %62, align 8, !tbaa !52
  %64 = getelementptr inbounds i8, ptr %6, i64 32
  %65 = load i32, ptr %64, align 8, !tbaa !51
  %66 = getelementptr inbounds i8, ptr %6, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(20) %66, i64 20, i1 false), !tbaa.struct !71
  %67 = getelementptr inbounds i8, ptr %0, i64 480
  %68 = load i32, ptr %67, align 8, !tbaa !72
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %175

70:                                               ; preds = %54
  %71 = getelementptr inbounds i8, ptr %0, i64 484
  %72 = getelementptr inbounds i8, ptr %0, i64 440
  %73 = getelementptr inbounds i8, ptr %6, i64 64
  %74 = getelementptr inbounds i8, ptr %3, i64 16
  %75 = getelementptr inbounds i8, ptr %3, i64 24
  %76 = getelementptr inbounds i8, ptr %4, i64 4
  br label %77

77:                                               ; preds = %70, %158
  %78 = phi i64 [ 0, %70 ], [ %167, %158 ]
  %79 = phi i32 [ %65, %70 ], [ %160, %158 ]
  %80 = phi i64 [ %63, %70 ], [ %159, %158 ]
  %81 = getelementptr inbounds ptr, ptr %1, i64 %78
  %82 = load ptr, ptr %81, align 8, !tbaa !23
  %83 = getelementptr inbounds [10 x i32], ptr %71, i64 0, i64 %78
  %84 = load i32, ptr %83, align 4, !tbaa !26
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x ptr], ptr %72, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !23
  %88 = getelementptr inbounds i8, ptr %87, i64 20
  %89 = load i32, ptr %88, align 4, !tbaa !47
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x ptr], ptr %73, i64 0, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !23
  %93 = icmp slt i32 %79, 8
  br i1 %93, label %94, label %101

94:                                               ; preds = %77
  %95 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %80, i32 noundef signext %79, i32 noundef signext 0) #6
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %186, label %97

97:                                               ; preds = %94
  %98 = load i64, ptr %74, align 8, !tbaa !73
  %99 = load i32, ptr %75, align 8, !tbaa !74
  %100 = icmp slt i32 %99, 8
  br i1 %100, label %118, label %101

101:                                              ; preds = %97, %77
  %102 = phi i64 [ %98, %97 ], [ %80, %77 ]
  %103 = phi i32 [ %99, %97 ], [ %79, %77 ]
  %104 = add nsw i32 %103, -8
  %105 = zext nneg i32 %104 to i64
  %106 = ashr i64 %102, %105
  %107 = and i64 %106, 255
  %108 = getelementptr inbounds i8, ptr %92, i64 288
  %109 = getelementptr inbounds [256 x i32], ptr %108, i64 0, i64 %107
  %110 = load i32, ptr %109, align 4, !tbaa !26
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %101
  %113 = sub nsw i32 %103, %110
  %114 = getelementptr inbounds i8, ptr %92, i64 1312
  %115 = getelementptr inbounds [256 x i8], ptr %114, i64 0, i64 %107
  %116 = load i8, ptr %115, align 1, !tbaa !37
  %117 = zext i8 %116 to i32
  br label %127

118:                                              ; preds = %101, %97
  %119 = phi i64 [ %98, %97 ], [ %102, %101 ]
  %120 = phi i32 [ %99, %97 ], [ %103, %101 ]
  %121 = phi i32 [ 1, %97 ], [ 9, %101 ]
  %122 = call signext i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %119, i32 noundef signext %120, ptr noundef %92, i32 noundef signext %121) #6
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %186, label %124

124:                                              ; preds = %118
  %125 = load i64, ptr %74, align 8, !tbaa !73
  %126 = load i32, ptr %75, align 8, !tbaa !74
  br label %127

127:                                              ; preds = %124, %112
  %128 = phi i64 [ %102, %112 ], [ %125, %124 ]
  %129 = phi i32 [ %113, %112 ], [ %126, %124 ]
  %130 = phi i32 [ %117, %112 ], [ %122, %124 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %158, label %132

132:                                              ; preds = %127
  %133 = icmp slt i32 %129, %130
  br i1 %133, label %134, label %140

134:                                              ; preds = %132
  %135 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %128, i32 noundef signext %129, i32 noundef signext %130) #6
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %186, label %137

137:                                              ; preds = %134
  %138 = load i64, ptr %74, align 8, !tbaa !73
  %139 = load i32, ptr %75, align 8, !tbaa !74
  br label %140

140:                                              ; preds = %137, %132
  %141 = phi i64 [ %138, %137 ], [ %128, %132 ]
  %142 = phi i32 [ %139, %137 ], [ %129, %132 ]
  %143 = sub nsw i32 %142, %130
  %144 = zext nneg i32 %143 to i64
  %145 = ashr i64 %141, %144
  %146 = trunc i64 %145 to i32
  %147 = shl nsw i32 -1, %130
  %148 = xor i32 %147, -1
  %149 = and i32 %146, %148
  %150 = zext nneg i32 %130 to i64
  %151 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !26
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %140
  %155 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %150
  %156 = load i32, ptr %155, align 4, !tbaa !26
  %157 = add nsw i32 %156, %149
  br label %158

158:                                              ; preds = %154, %140, %127
  %159 = phi i64 [ %128, %127 ], [ %141, %140 ], [ %141, %154 ]
  %160 = phi i32 [ %129, %127 ], [ %143, %140 ], [ %143, %154 ]
  %161 = phi i32 [ 0, %127 ], [ %149, %140 ], [ %157, %154 ]
  %162 = getelementptr inbounds [4 x i32], ptr %76, i64 0, i64 %85
  %163 = load i32, ptr %162, align 4, !tbaa !26
  %164 = add nsw i32 %163, %161
  store i32 %164, ptr %162, align 4, !tbaa !26
  %165 = shl i32 %164, %8
  %166 = trunc i32 %165 to i16
  store i16 %166, ptr %82, align 2, !tbaa !75
  %167 = add nuw nsw i64 %78, 1
  %168 = load i32, ptr %67, align 8, !tbaa !72
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %77, label %171, !llvm.loop !76

171:                                              ; preds = %158
  %172 = load ptr, ptr %3, align 8, !tbaa !68
  %173 = load ptr, ptr %56, align 8, !tbaa !65
  %174 = load i64, ptr %61, align 8, !tbaa !70
  br label %175

175:                                              ; preds = %171, %54
  %176 = phi i64 [ %60, %54 ], [ %174, %171 ]
  %177 = phi ptr [ %57, %54 ], [ %173, %171 ]
  %178 = phi ptr [ %58, %54 ], [ %172, %171 ]
  %179 = phi i64 [ %63, %54 ], [ %159, %171 ]
  %180 = phi i32 [ %65, %54 ], [ %160, %171 ]
  store ptr %178, ptr %177, align 8, !tbaa !66
  %181 = getelementptr inbounds i8, ptr %177, i64 8
  store i64 %176, ptr %181, align 8, !tbaa !69
  store i64 %179, ptr %62, align 8, !tbaa !52
  store i32 %180, ptr %64, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %66, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !71
  br label %182

182:                                              ; preds = %175, %50
  %183 = getelementptr inbounds i8, ptr %6, i64 60
  %184 = load i32, ptr %183, align 4, !tbaa !56
  %185 = add i32 %184, -1
  store i32 %185, ptr %183, align 4, !tbaa !56
  br label %186

186:                                              ; preds = %94, %118, %134, %16, %182
  %187 = phi i32 [ 1, %182 ], [ 0, %16 ], [ 0, %134 ], [ 0, %118 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  ret i32 %187
}

; Function Attrs: nounwind
define internal noundef signext i32 @decode_mcu_AC_first(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 592
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds i8, ptr %0, i64 528
  %7 = load i32, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds i8, ptr %0, i64 536
  %9 = load i32, ptr %8, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  %10 = getelementptr inbounds i8, ptr %0, i64 368
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %5, i64 60
  %15 = load i32, ptr %14, align 4, !tbaa !56
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %5, i64 32
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = sdiv i32 %19, 8
  %21 = getelementptr inbounds i8, ptr %0, i64 584
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = getelementptr inbounds i8, ptr %22, i64 36
  %24 = load i32, ptr %23, align 4, !tbaa !58
  %25 = add i32 %24, %20
  store i32 %25, ptr %23, align 4, !tbaa !58
  store i32 0, ptr %18, align 8, !tbaa !51
  %26 = getelementptr inbounds i8, ptr %22, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = tail call signext i32 %27(ptr noundef nonnull %0) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %213, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds i8, ptr %0, i64 432
  %32 = load i32, ptr %31, align 8, !tbaa !31
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %5, i64 44
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i64 [ 0, %34 ], [ %39, %36 ]
  %38 = getelementptr inbounds [4 x i32], ptr %35, i64 0, i64 %37
  store i32 0, ptr %38, align 4, !tbaa !26
  %39 = add nuw nsw i64 %37, 1
  %40 = load i32, ptr %31, align 8, !tbaa !31
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %36, label %43, !llvm.loop !61

43:                                               ; preds = %36, %30
  %44 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 0, ptr %44, align 8, !tbaa !54
  %45 = load i32, ptr %10, align 8, !tbaa !55
  store i32 %45, ptr %14, align 4, !tbaa !56
  %46 = getelementptr inbounds i8, ptr %0, i64 540
  %47 = load i32, ptr %46, align 4, !tbaa !62
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 0, ptr %50, align 8, !tbaa !53
  br label %51

51:                                               ; preds = %43, %49, %13, %2
  %52 = getelementptr inbounds i8, ptr %5, i64 16
  %53 = load i32, ptr %52, align 8, !tbaa !53
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %209

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %5, i64 40
  %57 = load i32, ptr %56, align 8, !tbaa !54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = add i32 %57, -1
  br label %207

61:                                               ; preds = %55
  %62 = getelementptr inbounds i8, ptr %3, i64 32
  store ptr %0, ptr %62, align 8, !tbaa !63
  %63 = getelementptr inbounds i8, ptr %0, i64 40
  %64 = load ptr, ptr %63, align 8, !tbaa !65
  %65 = load ptr, ptr %64, align 8, !tbaa !66
  store ptr %65, ptr %3, align 8, !tbaa !68
  %66 = getelementptr inbounds i8, ptr %64, i64 8
  %67 = load i64, ptr %66, align 8, !tbaa !69
  %68 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %67, ptr %68, align 8, !tbaa !70
  %69 = getelementptr inbounds i8, ptr %5, i64 24
  %70 = load i64, ptr %69, align 8, !tbaa !52
  %71 = getelementptr inbounds i8, ptr %5, i64 32
  %72 = load i32, ptr %71, align 8, !tbaa !51
  %73 = load ptr, ptr %1, align 8, !tbaa !23
  %74 = getelementptr inbounds i8, ptr %5, i64 96
  %75 = load ptr, ptr %74, align 8, !tbaa !50
  %76 = getelementptr inbounds i8, ptr %0, i64 524
  %77 = load i32, ptr %76, align 4, !tbaa !29
  %78 = icmp sgt i32 %77, %7
  br i1 %78, label %199, label %79

79:                                               ; preds = %61
  %80 = getelementptr inbounds i8, ptr %3, i64 16
  %81 = getelementptr inbounds i8, ptr %3, i64 24
  %82 = getelementptr inbounds i8, ptr %75, i64 288
  %83 = getelementptr inbounds i8, ptr %75, i64 1312
  br label %84

84:                                               ; preds = %79, %193
  %85 = phi i32 [ %72, %79 ], [ %196, %193 ]
  %86 = phi i64 [ %70, %79 ], [ %195, %193 ]
  %87 = phi i32 [ %77, %79 ], [ %197, %193 ]
  %88 = icmp slt i32 %85, 8
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %86, i32 noundef signext %85, i32 noundef signext 0) #6
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %213, label %92

92:                                               ; preds = %89
  %93 = load i64, ptr %80, align 8, !tbaa !73
  %94 = load i32, ptr %81, align 8, !tbaa !74
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %111, label %96

96:                                               ; preds = %92, %84
  %97 = phi i64 [ %93, %92 ], [ %86, %84 ]
  %98 = phi i32 [ %94, %92 ], [ %85, %84 ]
  %99 = add nsw i32 %98, -8
  %100 = zext nneg i32 %99 to i64
  %101 = ashr i64 %97, %100
  %102 = and i64 %101, 255
  %103 = getelementptr inbounds [256 x i32], ptr %82, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !26
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %96
  %107 = sub nsw i32 %98, %104
  %108 = getelementptr inbounds [256 x i8], ptr %83, i64 0, i64 %102
  %109 = load i8, ptr %108, align 1, !tbaa !37
  %110 = zext i8 %109 to i32
  br label %120

111:                                              ; preds = %96, %92
  %112 = phi i64 [ %93, %92 ], [ %97, %96 ]
  %113 = phi i32 [ %94, %92 ], [ %98, %96 ]
  %114 = phi i32 [ 1, %92 ], [ 9, %96 ]
  %115 = call signext i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %112, i32 noundef signext %113, ptr noundef %75, i32 noundef signext %114) #6
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %213, label %117

117:                                              ; preds = %111
  %118 = load i64, ptr %80, align 8, !tbaa !73
  %119 = load i32, ptr %81, align 8, !tbaa !74
  br label %120

120:                                              ; preds = %117, %106
  %121 = phi i64 [ %97, %106 ], [ %118, %117 ]
  %122 = phi i32 [ %107, %106 ], [ %119, %117 ]
  %123 = phi i32 [ %110, %106 ], [ %115, %117 ]
  %124 = lshr i32 %123, 4
  %125 = and i32 %123, 15
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %163, label %127

127:                                              ; preds = %120
  %128 = add nsw i32 %124, %87
  %129 = icmp slt i32 %122, %125
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %121, i32 noundef signext %122, i32 noundef signext %125) #6
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %213, label %133

133:                                              ; preds = %130
  %134 = load i64, ptr %80, align 8, !tbaa !73
  %135 = load i32, ptr %81, align 8, !tbaa !74
  br label %136

136:                                              ; preds = %133, %127
  %137 = phi i64 [ %134, %133 ], [ %121, %127 ]
  %138 = phi i32 [ %135, %133 ], [ %122, %127 ]
  %139 = sub nsw i32 %138, %125
  %140 = zext nneg i32 %139 to i64
  %141 = ashr i64 %137, %140
  %142 = trunc i64 %141 to i32
  %143 = shl nsw i32 -1, %125
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  %146 = zext nneg i32 %125 to i64
  %147 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !26
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %136
  %151 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %146
  %152 = load i32, ptr %151, align 4, !tbaa !26
  %153 = add nsw i32 %152, %145
  br label %154

154:                                              ; preds = %136, %150
  %155 = phi i32 [ %153, %150 ], [ %145, %136 ]
  %156 = shl i32 %155, %9
  %157 = trunc i32 %156 to i16
  %158 = sext i32 %128 to i64
  %159 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !26
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [64 x i16], ptr %73, i64 0, i64 %161
  store i16 %157, ptr %162, align 2, !tbaa !75
  br label %193

163:                                              ; preds = %120
  %164 = icmp eq i32 %124, 15
  br i1 %164, label %165, label %167

165:                                              ; preds = %163
  %166 = add nsw i32 %87, 15
  br label %193

167:                                              ; preds = %163
  %168 = shl nuw i32 1, %124
  %169 = icmp ult i32 %123, 16
  br i1 %169, label %188, label %170

170:                                              ; preds = %167
  %171 = icmp slt i32 %122, %124
  br i1 %171, label %172, label %178

172:                                              ; preds = %170
  %173 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %121, i32 noundef signext %122, i32 noundef signext %124) #6
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %213, label %175

175:                                              ; preds = %172
  %176 = load i64, ptr %80, align 8, !tbaa !73
  %177 = load i32, ptr %81, align 8, !tbaa !74
  br label %178

178:                                              ; preds = %175, %170
  %179 = phi i64 [ %176, %175 ], [ %121, %170 ]
  %180 = phi i32 [ %177, %175 ], [ %122, %170 ]
  %181 = sub nsw i32 %180, %124
  %182 = zext nneg i32 %181 to i64
  %183 = ashr i64 %179, %182
  %184 = trunc i64 %183 to i32
  %185 = add nsw i32 %168, -1
  %186 = and i32 %185, %184
  %187 = add i32 %186, %168
  br label %188

188:                                              ; preds = %178, %167
  %189 = phi i32 [ %187, %178 ], [ %168, %167 ]
  %190 = phi i64 [ %179, %178 ], [ %121, %167 ]
  %191 = phi i32 [ %181, %178 ], [ %122, %167 ]
  %192 = add i32 %189, -1
  br label %199

193:                                              ; preds = %154, %165
  %194 = phi i32 [ %128, %154 ], [ %166, %165 ]
  %195 = phi i64 [ %137, %154 ], [ %121, %165 ]
  %196 = phi i32 [ %139, %154 ], [ %122, %165 ]
  %197 = add nsw i32 %194, 1
  %198 = icmp slt i32 %194, %7
  br i1 %198, label %84, label %199, !llvm.loop !77

199:                                              ; preds = %193, %61, %188
  %200 = phi i32 [ %192, %188 ], [ 0, %61 ], [ 0, %193 ]
  %201 = phi i64 [ %190, %188 ], [ %70, %61 ], [ %195, %193 ]
  %202 = phi i32 [ %191, %188 ], [ %72, %61 ], [ %196, %193 ]
  %203 = load ptr, ptr %3, align 8, !tbaa !68
  %204 = load ptr, ptr %63, align 8, !tbaa !65
  store ptr %203, ptr %204, align 8, !tbaa !66
  %205 = load i64, ptr %68, align 8, !tbaa !70
  %206 = getelementptr inbounds i8, ptr %204, i64 8
  store i64 %205, ptr %206, align 8, !tbaa !69
  store i64 %201, ptr %69, align 8, !tbaa !52
  store i32 %202, ptr %71, align 8, !tbaa !51
  br label %207

207:                                              ; preds = %199, %59
  %208 = phi i32 [ %60, %59 ], [ %200, %199 ]
  store i32 %208, ptr %56, align 8, !tbaa !54
  br label %209

209:                                              ; preds = %207, %51
  %210 = getelementptr inbounds i8, ptr %5, i64 60
  %211 = load i32, ptr %210, align 4, !tbaa !56
  %212 = add i32 %211, -1
  store i32 %212, ptr %210, align 4, !tbaa !56
  br label %213

213:                                              ; preds = %89, %111, %130, %17, %172, %209
  %214 = phi i32 [ 1, %209 ], [ 0, %172 ], [ 0, %17 ], [ 0, %130 ], [ 0, %111 ], [ 0, %89 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  ret i32 %214
}

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @decode_mcu_DC_refine(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 592
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds i8, ptr %0, i64 536
  %7 = load i32, ptr %6, align 8, !tbaa !33
  %8 = shl nuw i32 1, %7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  %9 = getelementptr inbounds i8, ptr %0, i64 368
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %5, i64 60
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %5, i64 32
  %18 = load i32, ptr %17, align 8, !tbaa !51
  %19 = sdiv i32 %18, 8
  %20 = getelementptr inbounds i8, ptr %0, i64 584
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds i8, ptr %21, i64 36
  %23 = load i32, ptr %22, align 4, !tbaa !58
  %24 = add i32 %23, %19
  store i32 %24, ptr %22, align 4, !tbaa !58
  store i32 0, ptr %17, align 8, !tbaa !51
  %25 = getelementptr inbounds i8, ptr %21, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = tail call signext i32 %26(ptr noundef nonnull %0) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %112, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds i8, ptr %0, i64 432
  %31 = load i32, ptr %30, align 8, !tbaa !31
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %5, i64 44
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %38, %35 ]
  %37 = getelementptr inbounds [4 x i32], ptr %34, i64 0, i64 %36
  store i32 0, ptr %37, align 4, !tbaa !26
  %38 = add nuw nsw i64 %36, 1
  %39 = load i32, ptr %30, align 8, !tbaa !31
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %35, label %42, !llvm.loop !61

42:                                               ; preds = %35, %29
  %43 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 0, ptr %43, align 8, !tbaa !54
  %44 = load i32, ptr %9, align 8, !tbaa !55
  store i32 %44, ptr %13, align 4, !tbaa !56
  %45 = getelementptr inbounds i8, ptr %0, i64 540
  %46 = load i32, ptr %45, align 4, !tbaa !62
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 0, ptr %49, align 8, !tbaa !53
  br label %50

50:                                               ; preds = %42, %48, %12, %2
  %51 = getelementptr inbounds i8, ptr %3, i64 32
  store ptr %0, ptr %51, align 8, !tbaa !63
  %52 = getelementptr inbounds i8, ptr %0, i64 40
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  %54 = load ptr, ptr %53, align 8, !tbaa !66
  store ptr %54, ptr %3, align 8, !tbaa !68
  %55 = getelementptr inbounds i8, ptr %53, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !69
  %57 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %56, ptr %57, align 8, !tbaa !70
  %58 = getelementptr inbounds i8, ptr %5, i64 24
  %59 = load i64, ptr %58, align 8, !tbaa !52
  %60 = getelementptr inbounds i8, ptr %5, i64 32
  %61 = load i32, ptr %60, align 8, !tbaa !51
  %62 = getelementptr inbounds i8, ptr %0, i64 480
  %63 = load i32, ptr %62, align 8, !tbaa !72
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %50
  %66 = getelementptr inbounds i8, ptr %3, i64 16
  %67 = getelementptr inbounds i8, ptr %3, i64 24
  %68 = trunc i32 %8 to i16
  br label %69

69:                                               ; preds = %65, %93
  %70 = phi i64 [ 0, %65 ], [ %94, %93 ]
  %71 = phi i32 [ %61, %65 ], [ %85, %93 ]
  %72 = phi i64 [ %59, %65 ], [ %83, %93 ]
  %73 = getelementptr inbounds ptr, ptr %1, i64 %70
  %74 = load ptr, ptr %73, align 8, !tbaa !23
  %75 = icmp slt i32 %71, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %72, i32 noundef signext %71, i32 noundef signext 1) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %76
  %80 = load i64, ptr %66, align 8, !tbaa !73
  %81 = load i32, ptr %67, align 8, !tbaa !74
  br label %82

82:                                               ; preds = %79, %69
  %83 = phi i64 [ %80, %79 ], [ %72, %69 ]
  %84 = phi i32 [ %81, %79 ], [ %71, %69 ]
  %85 = add nsw i32 %84, -1
  %86 = zext nneg i32 %85 to i64
  %87 = shl nuw i64 1, %86
  %88 = and i64 %87, %83
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i16, ptr %74, align 2, !tbaa !75
  %92 = or i16 %91, %68
  store i16 %92, ptr %74, align 2, !tbaa !75
  br label %93

93:                                               ; preds = %82, %90
  %94 = add nuw nsw i64 %70, 1
  %95 = load i32, ptr %62, align 8, !tbaa !72
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %69, label %98, !llvm.loop !78

98:                                               ; preds = %93
  %99 = load ptr, ptr %3, align 8, !tbaa !68
  %100 = load ptr, ptr %52, align 8, !tbaa !65
  %101 = load i64, ptr %57, align 8, !tbaa !70
  br label %102

102:                                              ; preds = %98, %50
  %103 = phi i64 [ %56, %50 ], [ %101, %98 ]
  %104 = phi ptr [ %53, %50 ], [ %100, %98 ]
  %105 = phi ptr [ %54, %50 ], [ %99, %98 ]
  %106 = phi i64 [ %59, %50 ], [ %83, %98 ]
  %107 = phi i32 [ %61, %50 ], [ %85, %98 ]
  store ptr %105, ptr %104, align 8, !tbaa !66
  %108 = getelementptr inbounds i8, ptr %104, i64 8
  store i64 %103, ptr %108, align 8, !tbaa !69
  store i64 %106, ptr %58, align 8, !tbaa !52
  store i32 %107, ptr %60, align 8, !tbaa !51
  %109 = getelementptr inbounds i8, ptr %5, i64 60
  %110 = load i32, ptr %109, align 4, !tbaa !56
  %111 = add i32 %110, -1
  store i32 %111, ptr %109, align 4, !tbaa !56
  br label %112

112:                                              ; preds = %76, %16, %102
  %113 = phi i32 [ 1, %102 ], [ 0, %16 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  ret i32 %113
}

; Function Attrs: nounwind
define internal noundef signext i32 @decode_mcu_AC_refine(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = alloca [64 x i32], align 4
  %5 = getelementptr inbounds i8, ptr %0, i64 592
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %0, i64 528
  %8 = load i32, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds i8, ptr %0, i64 536
  %10 = load i32, ptr %9, align 8, !tbaa !33
  %11 = shl nuw i32 1, %10
  %12 = shl nsw i32 -1, %10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #6
  %13 = getelementptr inbounds i8, ptr %0, i64 368
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %6, i64 60
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %6, i64 32
  %22 = load i32, ptr %21, align 8, !tbaa !51
  %23 = sdiv i32 %22, 8
  %24 = getelementptr inbounds i8, ptr %0, i64 584
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds i8, ptr %25, i64 36
  %27 = load i32, ptr %26, align 4, !tbaa !58
  %28 = add i32 %27, %23
  store i32 %28, ptr %26, align 4, !tbaa !58
  store i32 0, ptr %21, align 8, !tbaa !51
  %29 = getelementptr inbounds i8, ptr %25, i64 16
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = tail call signext i32 %30(ptr noundef nonnull %0) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %339, label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds i8, ptr %0, i64 432
  %35 = load i32, ptr %34, align 8, !tbaa !31
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %6, i64 44
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  %41 = getelementptr inbounds [4 x i32], ptr %38, i64 0, i64 %40
  store i32 0, ptr %41, align 4, !tbaa !26
  %42 = add nuw nsw i64 %40, 1
  %43 = load i32, ptr %34, align 8, !tbaa !31
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %39, label %46, !llvm.loop !61

46:                                               ; preds = %39, %33
  %47 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 0, ptr %47, align 8, !tbaa !54
  %48 = load i32, ptr %13, align 8, !tbaa !55
  store i32 %48, ptr %17, align 4, !tbaa !56
  %49 = getelementptr inbounds i8, ptr %0, i64 540
  %50 = load i32, ptr %49, align 4, !tbaa !62
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, ptr %6, i64 16
  store i32 0, ptr %53, align 8, !tbaa !53
  br label %54

54:                                               ; preds = %46, %52, %16, %2
  %55 = getelementptr inbounds i8, ptr %6, i64 16
  %56 = load i32, ptr %55, align 8, !tbaa !53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %322

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %3, i64 32
  store ptr %0, ptr %59, align 8, !tbaa !63
  %60 = getelementptr inbounds i8, ptr %0, i64 40
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = load ptr, ptr %61, align 8, !tbaa !66
  store ptr %62, ptr %3, align 8, !tbaa !68
  %63 = getelementptr inbounds i8, ptr %61, i64 8
  %64 = load i64, ptr %63, align 8, !tbaa !69
  %65 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %64, ptr %65, align 8, !tbaa !70
  %66 = getelementptr inbounds i8, ptr %6, i64 24
  %67 = load i64, ptr %66, align 8, !tbaa !52
  %68 = getelementptr inbounds i8, ptr %6, i64 32
  %69 = load i32, ptr %68, align 8, !tbaa !51
  %70 = getelementptr inbounds i8, ptr %6, i64 40
  %71 = load i32, ptr %70, align 8, !tbaa !54
  %72 = load ptr, ptr %1, align 8, !tbaa !23
  %73 = getelementptr inbounds i8, ptr %6, i64 96
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  %75 = getelementptr inbounds i8, ptr %0, i64 524
  %76 = load i32, ptr %75, align 4, !tbaa !29
  %77 = icmp ne i32 %71, 0
  %78 = icmp sgt i32 %76, %8
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %249, label %80

80:                                               ; preds = %58
  %81 = getelementptr inbounds i8, ptr %3, i64 16
  %82 = getelementptr inbounds i8, ptr %3, i64 24
  %83 = getelementptr inbounds i8, ptr %74, i64 288
  %84 = getelementptr inbounds i8, ptr %74, i64 1312
  br label %85

85:                                               ; preds = %80, %245
  %86 = phi i32 [ 0, %80 ], [ %246, %245 ]
  %87 = phi i32 [ %76, %80 ], [ %247, %245 ]
  %88 = phi i32 [ %69, %80 ], [ %232, %245 ]
  %89 = phi i64 [ %67, %80 ], [ %231, %245 ]
  %90 = icmp slt i32 %88, 8
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %89, i32 noundef signext %88, i32 noundef signext 0) #6
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %326, label %94

94:                                               ; preds = %91
  %95 = load i64, ptr %81, align 8, !tbaa !73
  %96 = load i32, ptr %82, align 8, !tbaa !74
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %113, label %98

98:                                               ; preds = %94, %85
  %99 = phi i64 [ %95, %94 ], [ %89, %85 ]
  %100 = phi i32 [ %96, %94 ], [ %88, %85 ]
  %101 = add nsw i32 %100, -8
  %102 = zext nneg i32 %101 to i64
  %103 = ashr i64 %99, %102
  %104 = and i64 %103, 255
  %105 = getelementptr inbounds [256 x i32], ptr %83, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !26
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %98
  %109 = sub nsw i32 %100, %106
  %110 = getelementptr inbounds [256 x i8], ptr %84, i64 0, i64 %104
  %111 = load i8, ptr %110, align 1, !tbaa !37
  %112 = zext i8 %111 to i32
  br label %122

113:                                              ; preds = %98, %94
  %114 = phi i64 [ %95, %94 ], [ %99, %98 ]
  %115 = phi i32 [ %96, %94 ], [ %100, %98 ]
  %116 = phi i32 [ 1, %94 ], [ 9, %98 ]
  %117 = call signext i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %114, i32 noundef signext %115, ptr noundef %74, i32 noundef signext %116) #6
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %326, label %119

119:                                              ; preds = %113
  %120 = load i64, ptr %81, align 8, !tbaa !73
  %121 = load i32, ptr %82, align 8, !tbaa !74
  br label %122

122:                                              ; preds = %119, %108
  %123 = phi i64 [ %99, %108 ], [ %120, %119 ]
  %124 = phi i32 [ %109, %108 ], [ %121, %119 ]
  %125 = phi i32 [ %112, %108 ], [ %117, %119 ]
  %126 = lshr i32 %125, 4
  %127 = and i32 %125, 15
  switch i32 %127, label %128 [
    i32 0, label %150
    i32 1, label %133
  ]

128:                                              ; preds = %122
  %129 = load ptr, ptr %0, align 8, !tbaa !34
  %130 = getelementptr inbounds i8, ptr %129, i64 40
  store i32 118, ptr %130, align 8, !tbaa !35
  %131 = getelementptr inbounds i8, ptr %129, i64 8
  %132 = load ptr, ptr %131, align 8, !tbaa !41
  call void %132(ptr noundef nonnull %0, i32 noundef signext -1) #6
  br label %133

133:                                              ; preds = %122, %128
  %134 = icmp slt i32 %124, 1
  br i1 %134, label %135, label %141

135:                                              ; preds = %133
  %136 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %123, i32 noundef signext %124, i32 noundef signext 1) #6
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %326, label %138

138:                                              ; preds = %135
  %139 = load i64, ptr %81, align 8, !tbaa !73
  %140 = load i32, ptr %82, align 8, !tbaa !74
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi i64 [ %139, %138 ], [ %123, %133 ]
  %143 = phi i32 [ %140, %138 ], [ %124, %133 ]
  %144 = add nsw i32 %143, -1
  %145 = zext nneg i32 %144 to i64
  %146 = shl nuw i64 1, %145
  %147 = and i64 %146, %142
  %148 = icmp eq i64 %147, 0
  %149 = select i1 %148, i32 %12, i32 %11
  br label %173

150:                                              ; preds = %122
  %151 = icmp eq i32 %126, 15
  br i1 %151, label %173, label %152

152:                                              ; preds = %150
  %153 = shl nuw i32 1, %126
  %154 = icmp ult i32 %125, 16
  br i1 %154, label %256, label %155

155:                                              ; preds = %152
  %156 = icmp slt i32 %124, %126
  br i1 %156, label %157, label %163

157:                                              ; preds = %155
  %158 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %123, i32 noundef signext %124, i32 noundef signext %126) #6
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %326, label %160

160:                                              ; preds = %157
  %161 = load i64, ptr %81, align 8, !tbaa !73
  %162 = load i32, ptr %82, align 8, !tbaa !74
  br label %163

163:                                              ; preds = %160, %155
  %164 = phi i64 [ %161, %160 ], [ %123, %155 ]
  %165 = phi i32 [ %162, %160 ], [ %124, %155 ]
  %166 = sub nsw i32 %165, %126
  %167 = zext nneg i32 %166 to i64
  %168 = ashr i64 %164, %167
  %169 = trunc i64 %168 to i32
  %170 = add nsw i32 %153, -1
  %171 = and i32 %170, %169
  %172 = add i32 %171, %153
  br label %249

173:                                              ; preds = %141, %150
  %174 = phi i64 [ %123, %150 ], [ %142, %141 ]
  %175 = phi i32 [ %124, %150 ], [ %144, %141 ]
  %176 = phi i32 [ 0, %150 ], [ %149, %141 ]
  %177 = sext i32 %87 to i64
  %178 = call i32 @llvm.smax.i32(i32 %87, i32 %8)
  %179 = add i32 %178, 1
  %180 = call i32 @llvm.smax.i32(i32 %87, i32 %8)
  %181 = sext i32 %180 to i64
  br label %182

182:                                              ; preds = %222, %173
  %183 = phi i64 [ %226, %222 ], [ %177, %173 ]
  %184 = phi i32 [ %223, %222 ], [ %126, %173 ]
  %185 = phi i64 [ %224, %222 ], [ %174, %173 ]
  %186 = phi i32 [ %225, %222 ], [ %175, %173 ]
  %187 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %183
  %188 = load i32, ptr %187, align 4, !tbaa !26
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i16, ptr %72, i64 %189
  %191 = load i16, ptr %190, align 2, !tbaa !75
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %219, label %193

193:                                              ; preds = %182
  %194 = icmp slt i32 %186, 1
  br i1 %194, label %195, label %201

195:                                              ; preds = %193
  %196 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %185, i32 noundef signext %186, i32 noundef signext 1) #6
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %326, label %198

198:                                              ; preds = %195
  %199 = load i64, ptr %81, align 8, !tbaa !73
  %200 = load i32, ptr %82, align 8, !tbaa !74
  br label %201

201:                                              ; preds = %198, %193
  %202 = phi i64 [ %199, %198 ], [ %185, %193 ]
  %203 = phi i32 [ %200, %198 ], [ %186, %193 ]
  %204 = add nsw i32 %203, -1
  %205 = zext nneg i32 %204 to i64
  %206 = shl nuw i64 1, %205
  %207 = and i64 %206, %202
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %222, label %209

209:                                              ; preds = %201
  %210 = load i16, ptr %190, align 2, !tbaa !75
  %211 = sext i16 %210 to i32
  %212 = and i32 %11, %211
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %209
  %215 = icmp slt i16 %210, 0
  %216 = select i1 %215, i32 %12, i32 %11
  %217 = trunc i32 %216 to i16
  %218 = add i16 %210, %217
  store i16 %218, ptr %190, align 2, !tbaa !75
  br label %222

219:                                              ; preds = %182
  %220 = add nsw i32 %184, -1
  %221 = icmp slt i32 %184, 1
  br i1 %221, label %228, label %222

222:                                              ; preds = %214, %219, %201, %209
  %223 = phi i32 [ %184, %209 ], [ %184, %201 ], [ %220, %219 ], [ %184, %214 ]
  %224 = phi i64 [ %202, %209 ], [ %202, %201 ], [ %185, %219 ], [ %202, %214 ]
  %225 = phi i32 [ %204, %209 ], [ %204, %201 ], [ %186, %219 ], [ %204, %214 ]
  %226 = add nsw i64 %183, 1
  %227 = icmp eq i64 %183, %181
  br i1 %227, label %230, label %182, !llvm.loop !79

228:                                              ; preds = %219
  %229 = trunc nsw i64 %183 to i32
  br label %230

230:                                              ; preds = %222, %228
  %231 = phi i64 [ %185, %228 ], [ %224, %222 ]
  %232 = phi i32 [ %186, %228 ], [ %225, %222 ]
  %233 = phi i32 [ %229, %228 ], [ %179, %222 ]
  %234 = icmp eq i32 %176, 0
  br i1 %234, label %245, label %235

235:                                              ; preds = %230
  %236 = sext i32 %233 to i64
  %237 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !26
  %239 = trunc i32 %176 to i16
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds [64 x i16], ptr %72, i64 0, i64 %240
  store i16 %239, ptr %241, align 2, !tbaa !75
  %242 = add nsw i32 %86, 1
  %243 = sext i32 %86 to i64
  %244 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %243
  store i32 %238, ptr %244, align 4, !tbaa !26
  br label %245

245:                                              ; preds = %230, %235
  %246 = phi i32 [ %242, %235 ], [ %86, %230 ]
  %247 = add nsw i32 %233, 1
  %248 = icmp slt i32 %233, %8
  br i1 %248, label %85, label %314, !llvm.loop !80

249:                                              ; preds = %163, %58
  %250 = phi i32 [ %172, %163 ], [ %71, %58 ]
  %251 = phi i64 [ %164, %163 ], [ %67, %58 ]
  %252 = phi i32 [ %166, %163 ], [ %69, %58 ]
  %253 = phi i32 [ %87, %163 ], [ %76, %58 ]
  %254 = phi i32 [ %86, %163 ], [ 0, %58 ]
  %255 = icmp eq i32 %250, 0
  br i1 %255, label %314, label %256

256:                                              ; preds = %152, %249
  %257 = phi i32 [ %254, %249 ], [ %86, %152 ]
  %258 = phi i32 [ %253, %249 ], [ %87, %152 ]
  %259 = phi i32 [ %252, %249 ], [ %124, %152 ]
  %260 = phi i64 [ %251, %249 ], [ %123, %152 ]
  %261 = phi i32 [ %250, %249 ], [ %153, %152 ]
  %262 = icmp sgt i32 %258, %8
  br i1 %262, label %310, label %263

263:                                              ; preds = %256
  %264 = getelementptr inbounds i8, ptr %3, i64 16
  %265 = getelementptr inbounds i8, ptr %3, i64 24
  %266 = sext i32 %258 to i64
  %267 = add i32 %8, 1
  br label %268

268:                                              ; preds = %263, %304
  %269 = phi i64 [ %266, %263 ], [ %307, %304 ]
  %270 = phi i32 [ %259, %263 ], [ %306, %304 ]
  %271 = phi i64 [ %260, %263 ], [ %305, %304 ]
  %272 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %269
  %273 = load i32, ptr %272, align 4, !tbaa !26
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i16, ptr %72, i64 %274
  %276 = load i16, ptr %275, align 2, !tbaa !75
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %304, label %278

278:                                              ; preds = %268
  %279 = icmp slt i32 %270, 1
  br i1 %279, label %280, label %286

280:                                              ; preds = %278
  %281 = call signext i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %271, i32 noundef signext %270, i32 noundef signext 1) #6
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %326, label %283

283:                                              ; preds = %280
  %284 = load i64, ptr %264, align 8, !tbaa !73
  %285 = load i32, ptr %265, align 8, !tbaa !74
  br label %286

286:                                              ; preds = %283, %278
  %287 = phi i64 [ %284, %283 ], [ %271, %278 ]
  %288 = phi i32 [ %285, %283 ], [ %270, %278 ]
  %289 = add nsw i32 %288, -1
  %290 = zext nneg i32 %289 to i64
  %291 = shl nuw i64 1, %290
  %292 = and i64 %291, %287
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %304, label %294

294:                                              ; preds = %286
  %295 = load i16, ptr %275, align 2, !tbaa !75
  %296 = sext i16 %295 to i32
  %297 = and i32 %11, %296
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  %300 = icmp slt i16 %295, 0
  %301 = select i1 %300, i32 %12, i32 %11
  %302 = trunc i32 %301 to i16
  %303 = add i16 %295, %302
  store i16 %303, ptr %275, align 2, !tbaa !75
  br label %304

304:                                              ; preds = %299, %268, %294, %286
  %305 = phi i64 [ %287, %294 ], [ %287, %286 ], [ %271, %268 ], [ %287, %299 ]
  %306 = phi i32 [ %289, %294 ], [ %289, %286 ], [ %270, %268 ], [ %289, %299 ]
  %307 = add nsw i64 %269, 1
  %308 = trunc i64 %307 to i32
  %309 = icmp eq i32 %267, %308
  br i1 %309, label %310, label %268, !llvm.loop !81

310:                                              ; preds = %304, %256
  %311 = phi i64 [ %260, %256 ], [ %305, %304 ]
  %312 = phi i32 [ %259, %256 ], [ %306, %304 ]
  %313 = add i32 %261, -1
  br label %314

314:                                              ; preds = %245, %310, %249
  %315 = phi i32 [ %313, %310 ], [ 0, %249 ], [ 0, %245 ]
  %316 = phi i64 [ %311, %310 ], [ %251, %249 ], [ %231, %245 ]
  %317 = phi i32 [ %312, %310 ], [ %252, %249 ], [ %232, %245 ]
  %318 = load ptr, ptr %3, align 8, !tbaa !68
  %319 = load ptr, ptr %60, align 8, !tbaa !65
  store ptr %318, ptr %319, align 8, !tbaa !66
  %320 = load i64, ptr %65, align 8, !tbaa !70
  %321 = getelementptr inbounds i8, ptr %319, i64 8
  store i64 %320, ptr %321, align 8, !tbaa !69
  store i64 %316, ptr %66, align 8, !tbaa !52
  store i32 %317, ptr %68, align 8, !tbaa !51
  store i32 %315, ptr %70, align 8, !tbaa !54
  br label %322

322:                                              ; preds = %314, %54
  %323 = getelementptr inbounds i8, ptr %6, i64 60
  %324 = load i32, ptr %323, align 4, !tbaa !56
  %325 = add i32 %324, -1
  store i32 %325, ptr %323, align 4, !tbaa !56
  br label %339

326:                                              ; preds = %91, %113, %135, %195, %280, %157
  %327 = phi i32 [ %86, %157 ], [ %257, %280 ], [ %86, %195 ], [ %86, %135 ], [ %86, %113 ], [ %86, %91 ]
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %339

329:                                              ; preds = %326
  %330 = zext nneg i32 %327 to i64
  br label %331

331:                                              ; preds = %329, %331
  %332 = phi i64 [ %330, %329 ], [ %333, %331 ]
  %333 = add nsw i64 %332, -1
  %334 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !26
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [64 x i16], ptr %72, i64 0, i64 %336
  store i16 0, ptr %337, align 2, !tbaa !75
  %338 = icmp ugt i64 %332, 1
  br i1 %338, label %331, label %339, !llvm.loop !82

339:                                              ; preds = %331, %326, %20, %322
  %340 = phi i32 [ 1, %322 ], [ 0, %20 ], [ 0, %326 ], [ 0, %331 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  ret i32 %340
}

declare dso_local void @jpeg_make_d_derived_tbl(ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local signext i32 @jpeg_fill_bit_buffer(ptr noundef, i64 noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @jpeg_huff_decode(ptr noundef, i64 noundef, i32 noundef signext, ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!17 = !{!7, !8, i64 592}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !21, i64 24, !22, i64 40, !11, i64 60, !9, i64 64, !8, i64 96}
!20 = !{!"jpeg_entropy_decoder", !8, i64 0, !8, i64 8, !11, i64 16}
!21 = !{!"", !16, i64 0, !11, i64 8}
!22 = !{!"", !11, i64 0, !9, i64 4}
!23 = !{!8, !8, i64 0}
!24 = !{!7, !11, i64 56}
!25 = !{!7, !8, i64 192}
!26 = !{!11, !11, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!7, !11, i64 524}
!30 = !{!7, !11, i64 528}
!31 = !{!7, !11, i64 432}
!32 = !{!7, !11, i64 532}
!33 = !{!7, !11, i64 536}
!34 = !{!7, !8, i64 0}
!35 = !{!36, !11, i64 40}
!36 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!37 = !{!9, !9, i64 0}
!38 = !{!36, !8, i64 0}
!39 = !{!40, !11, i64 4}
!40 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!41 = !{!36, !8, i64 8}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28, !44}
!44 = !{!"llvm.loop.unswitch.partial.disable"}
!45 = distinct !{!45, !28}
!46 = !{!19, !8, i64 8}
!47 = !{!40, !11, i64 20}
!48 = distinct !{!48, !28}
!49 = !{!40, !11, i64 24}
!50 = !{!19, !8, i64 96}
!51 = !{!19, !11, i64 32}
!52 = !{!19, !16, i64 24}
!53 = !{!19, !11, i64 16}
!54 = !{!19, !11, i64 40}
!55 = !{!7, !11, i64 368}
!56 = !{!19, !11, i64 60}
!57 = !{!7, !8, i64 584}
!58 = !{!59, !11, i64 36}
!59 = !{!"jpeg_marker_reader", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!60 = !{!59, !8, i64 16}
!61 = distinct !{!61, !28}
!62 = !{!7, !11, i64 540}
!63 = !{!64, !8, i64 32}
!64 = !{!"", !8, i64 0, !16, i64 8, !16, i64 16, !11, i64 24, !8, i64 32}
!65 = !{!7, !8, i64 40}
!66 = !{!67, !8, i64 0}
!67 = !{!"jpeg_source_mgr", !8, i64 0, !16, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!68 = !{!64, !8, i64 0}
!69 = !{!67, !16, i64 8}
!70 = !{!64, !16, i64 8}
!71 = !{i64 0, i64 4, !26, i64 4, i64 16, !37}
!72 = !{!7, !11, i64 480}
!73 = !{!64, !16, i64 16}
!74 = !{!64, !11, i64 24}
!75 = !{!13, !13, i64 0}
!76 = distinct !{!76, !28}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !28}
!79 = distinct !{!79, !28}
!80 = distinct !{!80, !28}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
