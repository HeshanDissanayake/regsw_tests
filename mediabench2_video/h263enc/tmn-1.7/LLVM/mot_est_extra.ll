; ModuleID = 'mot_est.c'
source_filename = "mot_est.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.motionvector = type { i32, i32, i32, i32, i32, i32 }

@pels = external dso_local local_unnamed_addr global i32, align 4
@lines = external dso_local local_unnamed_addr global i32, align 4
@long_vectors = external dso_local local_unnamed_addr global i32, align 4
@mv_outside_frame = external dso_local local_unnamed_addr global i32, align 4
@advanced = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @MotionEstimation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca [5 x i32], align 4
  %11 = alloca [5 x %struct.motionvector], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %11) #11
  %12 = load i32, ptr @pels, align 4, !tbaa !6
  %13 = load i32, ptr @lines, align 4, !tbaa !6
  %14 = load i32, ptr @long_vectors, align 4, !tbaa !6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = tail call i32 @llvm.smin.i32(i32 %6, i32 15)
  br label %24

18:                                               ; preds = %9
  %19 = tail call i32 @llvm.smin.i32(i32 %6, i32 14)
  %20 = tail call i32 @llvm.smax.i32(i32 %4, i32 -16)
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 16)
  %22 = tail call i32 @llvm.smax.i32(i32 %5, i32 -16)
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 16)
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %19, %18 ], [ %17, %16 ]
  %26 = phi i32 [ %23, %18 ], [ %5, %16 ]
  %27 = phi i32 [ %21, %18 ], [ %4, %16 ]
  %28 = load i32, ptr @mv_outside_frame, align 4, !tbaa !6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = select i1 %15, i32 32, i32 64
  %32 = add nsw i32 %31, %12
  %33 = add nsw i32 %27, %2
  %34 = sub nsw i32 %33, %25
  %35 = add nsw i32 %33, %25
  %36 = add nsw i32 %26, %3
  %37 = sub nsw i32 %36, %25
  %38 = add nsw i32 %36, %25
  br label %52

39:                                               ; preds = %24
  %40 = add nsw i32 %27, %2
  %41 = sub nsw i32 %40, %25
  %42 = add nsw i32 %40, %25
  %43 = add nsw i32 %26, %3
  %44 = sub nsw i32 %43, %25
  %45 = add nsw i32 %43, %25
  %46 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  %47 = add nsw i32 %12, -16
  %48 = tail call i32 @llvm.smin.i32(i32 %42, i32 %47)
  %49 = tail call i32 @llvm.smax.i32(i32 %44, i32 0)
  %50 = add nsw i32 %13, -16
  %51 = tail call i32 @llvm.smin.i32(i32 %45, i32 %50)
  br label %52

52:                                               ; preds = %30, %39
  %53 = phi i32 [ %36, %30 ], [ %43, %39 ]
  %54 = phi i32 [ %33, %30 ], [ %40, %39 ]
  %55 = phi i32 [ %32, %30 ], [ %12, %39 ]
  %56 = phi i32 [ %38, %30 ], [ %51, %39 ]
  %57 = phi i32 [ %37, %30 ], [ %49, %39 ]
  %58 = phi i32 [ %34, %30 ], [ %46, %39 ]
  %59 = phi i32 [ %35, %30 ], [ %48, %39 ]
  %60 = sub nsw i32 %59, %58
  %61 = sub nsw i32 %56, %57
  %62 = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #12
  %63 = mul nsw i32 %12, %3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %0, i64 %64
  %66 = sext i32 %2 to i64
  %67 = getelementptr inbounds i8, ptr %65, i64 %66
  %68 = sext i32 %12 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %62, ptr noundef nonnull align 1 dereferenceable(16) %67, i64 16, i1 false), !tbaa !10
  %69 = getelementptr i8, ptr %67, i64 16
  %70 = getelementptr i8, ptr %62, i64 16
  %71 = getelementptr i8, ptr %69, i64 %68
  %72 = getelementptr i8, ptr %71, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %70, ptr noundef nonnull align 1 dereferenceable(16) %72, i64 16, i1 false), !tbaa !10
  %73 = getelementptr i8, ptr %62, i64 32
  %74 = getelementptr i8, ptr %71, i64 %68
  %75 = getelementptr i8, ptr %74, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %73, ptr noundef nonnull align 1 dereferenceable(16) %75, i64 16, i1 false), !tbaa !10
  %76 = getelementptr i8, ptr %62, i64 48
  %77 = getelementptr i8, ptr %74, i64 %68
  %78 = getelementptr i8, ptr %77, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %76, ptr noundef nonnull align 1 dereferenceable(16) %78, i64 16, i1 false), !tbaa !10
  %79 = getelementptr i8, ptr %62, i64 64
  %80 = getelementptr i8, ptr %77, i64 %68
  %81 = getelementptr i8, ptr %80, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %79, ptr noundef nonnull align 1 dereferenceable(16) %81, i64 16, i1 false), !tbaa !10
  %82 = getelementptr i8, ptr %62, i64 80
  %83 = getelementptr i8, ptr %80, i64 %68
  %84 = getelementptr i8, ptr %83, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %82, ptr noundef nonnull align 1 dereferenceable(16) %84, i64 16, i1 false), !tbaa !10
  %85 = getelementptr i8, ptr %62, i64 96
  %86 = getelementptr i8, ptr %83, i64 %68
  %87 = getelementptr i8, ptr %86, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %85, ptr noundef nonnull align 1 dereferenceable(16) %87, i64 16, i1 false), !tbaa !10
  %88 = getelementptr i8, ptr %62, i64 112
  %89 = getelementptr i8, ptr %86, i64 %68
  %90 = getelementptr i8, ptr %89, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %88, ptr noundef nonnull align 1 dereferenceable(16) %90, i64 16, i1 false), !tbaa !10
  %91 = getelementptr i8, ptr %62, i64 128
  %92 = getelementptr i8, ptr %89, i64 %68
  %93 = getelementptr i8, ptr %92, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %91, ptr noundef nonnull align 1 dereferenceable(16) %93, i64 16, i1 false), !tbaa !10
  %94 = getelementptr i8, ptr %62, i64 144
  %95 = getelementptr i8, ptr %92, i64 %68
  %96 = getelementptr i8, ptr %95, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %94, ptr noundef nonnull align 1 dereferenceable(16) %96, i64 16, i1 false), !tbaa !10
  %97 = getelementptr i8, ptr %62, i64 160
  %98 = getelementptr i8, ptr %95, i64 %68
  %99 = getelementptr i8, ptr %98, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %97, ptr noundef nonnull align 1 dereferenceable(16) %99, i64 16, i1 false), !tbaa !10
  %100 = getelementptr i8, ptr %62, i64 176
  %101 = getelementptr i8, ptr %98, i64 %68
  %102 = getelementptr i8, ptr %101, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %100, ptr noundef nonnull align 1 dereferenceable(16) %102, i64 16, i1 false), !tbaa !10
  %103 = getelementptr i8, ptr %62, i64 192
  %104 = getelementptr i8, ptr %101, i64 %68
  %105 = getelementptr i8, ptr %104, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %103, ptr noundef nonnull align 1 dereferenceable(16) %105, i64 16, i1 false), !tbaa !10
  %106 = getelementptr i8, ptr %62, i64 208
  %107 = getelementptr i8, ptr %104, i64 %68
  %108 = getelementptr i8, ptr %107, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %106, ptr noundef nonnull align 1 dereferenceable(16) %108, i64 16, i1 false), !tbaa !10
  %109 = getelementptr i8, ptr %62, i64 224
  %110 = getelementptr i8, ptr %107, i64 %68
  %111 = getelementptr i8, ptr %110, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %109, ptr noundef nonnull align 1 dereferenceable(16) %111, i64 16, i1 false), !tbaa !10
  %112 = getelementptr i8, ptr %62, i64 240
  %113 = getelementptr i8, ptr %110, i64 %68
  %114 = getelementptr i8, ptr %113, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %112, ptr noundef nonnull align 1 dereferenceable(16) %114, i64 16, i1 false), !tbaa !10
  %115 = add nsw i32 %60, 16
  %116 = add nsw i32 %61, 16
  %117 = sext i32 %115 to i64
  %118 = sext i32 %116 to i64
  %119 = mul nsw i64 %117, %118
  %120 = tail call noalias ptr @malloc(i64 noundef %119) #12
  %121 = icmp eq i32 %116, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %52
  %123 = icmp eq i32 %115, 0
  %124 = sub nsw i32 %55, %115
  %125 = sext i32 %124 to i64
  br i1 %123, label %142, label %126

126:                                              ; preds = %122
  %127 = mul nsw i32 %57, %55
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %1, i64 %128
  %130 = sext i32 %58 to i64
  %131 = getelementptr inbounds i8, ptr %129, i64 %130
  %132 = zext i32 %115 to i64
  br label %133

133:                                              ; preds = %133, %126
  %134 = phi i32 [ %137, %133 ], [ %116, %126 ]
  %135 = phi ptr [ %139, %133 ], [ %120, %126 ]
  %136 = phi ptr [ %140, %133 ], [ %131, %126 ]
  %137 = add nsw i32 %134, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %135, ptr align 1 %136, i64 %132, i1 false), !tbaa !10
  %138 = getelementptr i8, ptr %136, i64 %132
  %139 = getelementptr i8, ptr %135, i64 %132
  %140 = getelementptr inbounds i8, ptr %138, i64 %125
  %141 = icmp eq i32 %137, 0
  br i1 %141, label %142, label %133

142:                                              ; preds = %133, %52, %122
  store i32 2147483647, ptr %10, align 4, !tbaa !6
  %143 = getelementptr inbounds i8, ptr %11, i64 4
  %144 = getelementptr inbounds i8, ptr %10, i64 4
  %145 = getelementptr inbounds i8, ptr %11, i64 8
  store i64 0, ptr %145, align 4
  store i32 2147483647, ptr %144, align 4, !tbaa !6
  %146 = getelementptr inbounds i8, ptr %11, i64 24
  %147 = getelementptr inbounds i8, ptr %11, i64 28
  %148 = getelementptr inbounds i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %146, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %148, align 4, !tbaa !6
  %149 = getelementptr inbounds i8, ptr %11, i64 48
  %150 = getelementptr inbounds i8, ptr %11, i64 52
  %151 = getelementptr inbounds i8, ptr %10, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %149, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %151, align 4, !tbaa !6
  %152 = getelementptr inbounds i8, ptr %11, i64 72
  %153 = getelementptr inbounds i8, ptr %11, i64 76
  %154 = getelementptr inbounds i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %152, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %154, align 4, !tbaa !6
  %155 = getelementptr inbounds i8, ptr %11, i64 96
  %156 = getelementptr inbounds i8, ptr %11, i64 100
  %157 = sub nsw i32 %2, %58
  %158 = icmp slt i32 %157, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %155, i8 0, i64 16, i1 false)
  br i1 %158, label %166, label %159

159:                                              ; preds = %142
  %160 = sub nsw i32 %3, %57
  %161 = icmp slt i32 %160, 0
  %162 = icmp slt i32 %59, %2
  %163 = select i1 %161, i1 true, i1 %162
  %164 = icmp slt i32 %56, %3
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %166, label %221

166:                                              ; preds = %159, %142
  %167 = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #12
  %168 = mul nsw i32 %55, %3
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %1, i64 %169
  %171 = getelementptr inbounds i8, ptr %170, i64 %66
  %172 = sext i32 %55 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %167, ptr noundef nonnull align 1 dereferenceable(16) %171, i64 16, i1 false), !tbaa !10
  %173 = getelementptr i8, ptr %171, i64 16
  %174 = getelementptr i8, ptr %167, i64 16
  %175 = getelementptr i8, ptr %173, i64 %172
  %176 = getelementptr i8, ptr %175, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %174, ptr noundef nonnull align 1 dereferenceable(16) %176, i64 16, i1 false), !tbaa !10
  %177 = getelementptr i8, ptr %167, i64 32
  %178 = getelementptr i8, ptr %175, i64 %172
  %179 = getelementptr i8, ptr %178, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %177, ptr noundef nonnull align 1 dereferenceable(16) %179, i64 16, i1 false), !tbaa !10
  %180 = getelementptr i8, ptr %167, i64 48
  %181 = getelementptr i8, ptr %178, i64 %172
  %182 = getelementptr i8, ptr %181, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %180, ptr noundef nonnull align 1 dereferenceable(16) %182, i64 16, i1 false), !tbaa !10
  %183 = getelementptr i8, ptr %167, i64 64
  %184 = getelementptr i8, ptr %181, i64 %172
  %185 = getelementptr i8, ptr %184, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %183, ptr noundef nonnull align 1 dereferenceable(16) %185, i64 16, i1 false), !tbaa !10
  %186 = getelementptr i8, ptr %167, i64 80
  %187 = getelementptr i8, ptr %184, i64 %172
  %188 = getelementptr i8, ptr %187, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %186, ptr noundef nonnull align 1 dereferenceable(16) %188, i64 16, i1 false), !tbaa !10
  %189 = getelementptr i8, ptr %167, i64 96
  %190 = getelementptr i8, ptr %187, i64 %172
  %191 = getelementptr i8, ptr %190, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %189, ptr noundef nonnull align 1 dereferenceable(16) %191, i64 16, i1 false), !tbaa !10
  %192 = getelementptr i8, ptr %167, i64 112
  %193 = getelementptr i8, ptr %190, i64 %172
  %194 = getelementptr i8, ptr %193, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %192, ptr noundef nonnull align 1 dereferenceable(16) %194, i64 16, i1 false), !tbaa !10
  %195 = getelementptr i8, ptr %167, i64 128
  %196 = getelementptr i8, ptr %193, i64 %172
  %197 = getelementptr i8, ptr %196, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %195, ptr noundef nonnull align 1 dereferenceable(16) %197, i64 16, i1 false), !tbaa !10
  %198 = getelementptr i8, ptr %167, i64 144
  %199 = getelementptr i8, ptr %196, i64 %172
  %200 = getelementptr i8, ptr %199, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %198, ptr noundef nonnull align 1 dereferenceable(16) %200, i64 16, i1 false), !tbaa !10
  %201 = getelementptr i8, ptr %167, i64 160
  %202 = getelementptr i8, ptr %199, i64 %172
  %203 = getelementptr i8, ptr %202, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %201, ptr noundef nonnull align 1 dereferenceable(16) %203, i64 16, i1 false), !tbaa !10
  %204 = getelementptr i8, ptr %167, i64 176
  %205 = getelementptr i8, ptr %202, i64 %172
  %206 = getelementptr i8, ptr %205, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %204, ptr noundef nonnull align 1 dereferenceable(16) %206, i64 16, i1 false), !tbaa !10
  %207 = getelementptr i8, ptr %167, i64 192
  %208 = getelementptr i8, ptr %205, i64 %172
  %209 = getelementptr i8, ptr %208, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %207, ptr noundef nonnull align 1 dereferenceable(16) %209, i64 16, i1 false), !tbaa !10
  %210 = getelementptr i8, ptr %167, i64 208
  %211 = getelementptr i8, ptr %208, i64 %172
  %212 = getelementptr i8, ptr %211, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %210, ptr noundef nonnull align 1 dereferenceable(16) %212, i64 16, i1 false), !tbaa !10
  %213 = getelementptr i8, ptr %167, i64 224
  %214 = getelementptr i8, ptr %211, i64 %172
  %215 = getelementptr i8, ptr %214, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %213, ptr noundef nonnull align 1 dereferenceable(16) %215, i64 16, i1 false), !tbaa !10
  %216 = getelementptr i8, ptr %167, i64 240
  %217 = getelementptr i8, ptr %214, i64 %172
  %218 = getelementptr i8, ptr %217, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %216, ptr noundef nonnull align 1 dereferenceable(16) %218, i64 16, i1 false), !tbaa !10
  %219 = tail call signext i32 @SAD_Macroblock(ptr noundef %167, ptr noundef %62, i32 noundef signext 16, i32 noundef signext 2147483647)
  %220 = add nsw i32 %219, -100
  store i32 %220, ptr %8, align 4, !tbaa !6
  tail call void @free(ptr noundef %167) #11
  br label %229

221:                                              ; preds = %159
  %222 = zext nneg i32 %157 to i64
  %223 = getelementptr inbounds i8, ptr %120, i64 %222
  %224 = mul nsw i32 %115, %160
  %225 = zext nneg i32 %224 to i64
  %226 = getelementptr inbounds i8, ptr %223, i64 %225
  %227 = tail call signext i32 @SAD_Macroblock(ptr noundef %226, ptr noundef %62, i32 noundef signext %115, i32 noundef signext 2147483647)
  %228 = add nsw i32 %227, -100
  store i32 %228, ptr %8, align 4, !tbaa !6
  br label %229

229:                                              ; preds = %221, %166
  %230 = phi i32 [ %228, %221 ], [ %220, %166 ]
  %231 = or i32 %27, %26
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %229
  %234 = sub nsw i32 %54, %58
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, ptr %120, i64 %235
  %237 = sub nsw i32 %53, %57
  %238 = mul nsw i32 %115, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, ptr %236, i64 %239
  %241 = tail call signext i32 @SAD_Macroblock(ptr noundef %240, ptr noundef %62, i32 noundef signext %115, i32 noundef signext 2147483647)
  br label %242

242:                                              ; preds = %229, %233
  %243 = phi i32 [ %241, %233 ], [ %230, %229 ]
  %244 = phi i32 [ %27, %233 ], [ 0, %229 ]
  %245 = phi i32 [ %26, %233 ], [ 0, %229 ]
  store i32 %245, ptr %143, align 4
  %246 = icmp slt i32 %25, 1
  br i1 %246, label %465, label %247

247:                                              ; preds = %242, %460
  %248 = phi i32 [ %462, %460 ], [ 8, %242 ]
  %249 = phi i32 [ %439, %460 ], [ %245, %242 ]
  %250 = phi i32 [ %461, %460 ], [ 1, %242 ]
  %251 = phi i32 [ %441, %460 ], [ %243, %242 ]
  %252 = phi i32 [ %440, %460 ], [ %244, %242 ]
  %253 = sub nsw i32 %54, %250
  %254 = sub nsw i32 %53, %250
  %255 = shl nuw nsw i32 %250, 1
  %256 = shl nsw i32 %250, 2
  %257 = mul nuw nsw i32 %250, 6
  br label %258

258:                                              ; preds = %247, %455
  %259 = phi i32 [ %249, %247 ], [ %439, %455 ]
  %260 = phi i32 [ %253, %247 ], [ %457, %455 ]
  %261 = phi i32 [ 0, %247 ], [ %458, %455 ]
  %262 = phi i32 [ %254, %247 ], [ %456, %455 ]
  %263 = phi i32 [ %251, %247 ], [ %441, %455 ]
  %264 = phi i32 [ %252, %247 ], [ %440, %455 ]
  %265 = icmp slt i32 %260, %58
  %266 = icmp sgt i32 %260, %59
  %267 = select i1 %265, i1 true, i1 %266
  %268 = icmp slt i32 %262, %57
  %269 = select i1 %267, i1 true, i1 %268
  %270 = icmp sgt i32 %262, %56
  %271 = select i1 %269, i1 true, i1 %270
  br i1 %271, label %438, label %272

272:                                              ; preds = %258
  %273 = sub nsw i32 %260, %58
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, ptr %120, i64 %274
  %276 = sub nsw i32 %262, %57
  %277 = mul nsw i32 %276, %115
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, ptr %275, i64 %278
  br label %280

280:                                              ; preds = %286, %272
  %281 = phi ptr [ %279, %272 ], [ %430, %286 ]
  %282 = phi i32 [ 16, %272 ], [ %287, %286 ]
  %283 = phi i32 [ 0, %272 ], [ %429, %286 ]
  %284 = phi ptr [ %62, %272 ], [ %431, %286 ]
  %285 = icmp eq i32 %282, 0
  br i1 %285, label %433, label %286

286:                                              ; preds = %280
  %287 = add nsw i32 %282, -1
  %288 = load i8, ptr %281, align 1, !tbaa !10
  %289 = zext i8 %288 to i32
  %290 = load i8, ptr %284, align 1, !tbaa !10
  %291 = zext i8 %290 to i32
  %292 = sub nsw i32 %289, %291
  %293 = tail call i32 @llvm.abs.i32(i32 %292, i1 true)
  %294 = getelementptr inbounds i8, ptr %281, i64 1
  %295 = load i8, ptr %294, align 1, !tbaa !10
  %296 = zext i8 %295 to i32
  %297 = getelementptr inbounds i8, ptr %284, i64 1
  %298 = load i8, ptr %297, align 1, !tbaa !10
  %299 = zext i8 %298 to i32
  %300 = sub nsw i32 %296, %299
  %301 = tail call i32 @llvm.abs.i32(i32 %300, i1 true)
  %302 = getelementptr inbounds i8, ptr %281, i64 2
  %303 = load i8, ptr %302, align 1, !tbaa !10
  %304 = zext i8 %303 to i32
  %305 = getelementptr inbounds i8, ptr %284, i64 2
  %306 = load i8, ptr %305, align 1, !tbaa !10
  %307 = zext i8 %306 to i32
  %308 = sub nsw i32 %304, %307
  %309 = tail call i32 @llvm.abs.i32(i32 %308, i1 true)
  %310 = getelementptr inbounds i8, ptr %281, i64 3
  %311 = load i8, ptr %310, align 1, !tbaa !10
  %312 = zext i8 %311 to i32
  %313 = getelementptr inbounds i8, ptr %284, i64 3
  %314 = load i8, ptr %313, align 1, !tbaa !10
  %315 = zext i8 %314 to i32
  %316 = sub nsw i32 %312, %315
  %317 = tail call i32 @llvm.abs.i32(i32 %316, i1 true)
  %318 = getelementptr inbounds i8, ptr %281, i64 4
  %319 = load i8, ptr %318, align 1, !tbaa !10
  %320 = zext i8 %319 to i32
  %321 = getelementptr inbounds i8, ptr %284, i64 4
  %322 = load i8, ptr %321, align 1, !tbaa !10
  %323 = zext i8 %322 to i32
  %324 = sub nsw i32 %320, %323
  %325 = tail call i32 @llvm.abs.i32(i32 %324, i1 true)
  %326 = getelementptr inbounds i8, ptr %281, i64 5
  %327 = load i8, ptr %326, align 1, !tbaa !10
  %328 = zext i8 %327 to i32
  %329 = getelementptr inbounds i8, ptr %284, i64 5
  %330 = load i8, ptr %329, align 1, !tbaa !10
  %331 = zext i8 %330 to i32
  %332 = sub nsw i32 %328, %331
  %333 = tail call i32 @llvm.abs.i32(i32 %332, i1 true)
  %334 = getelementptr inbounds i8, ptr %281, i64 6
  %335 = load i8, ptr %334, align 1, !tbaa !10
  %336 = zext i8 %335 to i32
  %337 = getelementptr inbounds i8, ptr %284, i64 6
  %338 = load i8, ptr %337, align 1, !tbaa !10
  %339 = zext i8 %338 to i32
  %340 = sub nsw i32 %336, %339
  %341 = tail call i32 @llvm.abs.i32(i32 %340, i1 true)
  %342 = getelementptr inbounds i8, ptr %281, i64 7
  %343 = load i8, ptr %342, align 1, !tbaa !10
  %344 = zext i8 %343 to i32
  %345 = getelementptr inbounds i8, ptr %284, i64 7
  %346 = load i8, ptr %345, align 1, !tbaa !10
  %347 = zext i8 %346 to i32
  %348 = sub nsw i32 %344, %347
  %349 = tail call i32 @llvm.abs.i32(i32 %348, i1 true)
  %350 = getelementptr inbounds i8, ptr %281, i64 8
  %351 = load i8, ptr %350, align 1, !tbaa !10
  %352 = zext i8 %351 to i32
  %353 = getelementptr inbounds i8, ptr %284, i64 8
  %354 = load i8, ptr %353, align 1, !tbaa !10
  %355 = zext i8 %354 to i32
  %356 = sub nsw i32 %352, %355
  %357 = tail call i32 @llvm.abs.i32(i32 %356, i1 true)
  %358 = getelementptr inbounds i8, ptr %281, i64 9
  %359 = load i8, ptr %358, align 1, !tbaa !10
  %360 = zext i8 %359 to i32
  %361 = getelementptr inbounds i8, ptr %284, i64 9
  %362 = load i8, ptr %361, align 1, !tbaa !10
  %363 = zext i8 %362 to i32
  %364 = sub nsw i32 %360, %363
  %365 = tail call i32 @llvm.abs.i32(i32 %364, i1 true)
  %366 = getelementptr inbounds i8, ptr %281, i64 10
  %367 = load i8, ptr %366, align 1, !tbaa !10
  %368 = zext i8 %367 to i32
  %369 = getelementptr inbounds i8, ptr %284, i64 10
  %370 = load i8, ptr %369, align 1, !tbaa !10
  %371 = zext i8 %370 to i32
  %372 = sub nsw i32 %368, %371
  %373 = tail call i32 @llvm.abs.i32(i32 %372, i1 true)
  %374 = getelementptr inbounds i8, ptr %281, i64 11
  %375 = load i8, ptr %374, align 1, !tbaa !10
  %376 = zext i8 %375 to i32
  %377 = getelementptr inbounds i8, ptr %284, i64 11
  %378 = load i8, ptr %377, align 1, !tbaa !10
  %379 = zext i8 %378 to i32
  %380 = sub nsw i32 %376, %379
  %381 = tail call i32 @llvm.abs.i32(i32 %380, i1 true)
  %382 = getelementptr inbounds i8, ptr %281, i64 12
  %383 = load i8, ptr %382, align 1, !tbaa !10
  %384 = zext i8 %383 to i32
  %385 = getelementptr inbounds i8, ptr %284, i64 12
  %386 = load i8, ptr %385, align 1, !tbaa !10
  %387 = zext i8 %386 to i32
  %388 = sub nsw i32 %384, %387
  %389 = tail call i32 @llvm.abs.i32(i32 %388, i1 true)
  %390 = getelementptr inbounds i8, ptr %281, i64 13
  %391 = load i8, ptr %390, align 1, !tbaa !10
  %392 = zext i8 %391 to i32
  %393 = getelementptr inbounds i8, ptr %284, i64 13
  %394 = load i8, ptr %393, align 1, !tbaa !10
  %395 = zext i8 %394 to i32
  %396 = sub nsw i32 %392, %395
  %397 = tail call i32 @llvm.abs.i32(i32 %396, i1 true)
  %398 = getelementptr inbounds i8, ptr %281, i64 14
  %399 = load i8, ptr %398, align 1, !tbaa !10
  %400 = zext i8 %399 to i32
  %401 = getelementptr inbounds i8, ptr %284, i64 14
  %402 = load i8, ptr %401, align 1, !tbaa !10
  %403 = zext i8 %402 to i32
  %404 = sub nsw i32 %400, %403
  %405 = tail call i32 @llvm.abs.i32(i32 %404, i1 true)
  %406 = getelementptr inbounds i8, ptr %281, i64 15
  %407 = load i8, ptr %406, align 1, !tbaa !10
  %408 = zext i8 %407 to i32
  %409 = getelementptr inbounds i8, ptr %284, i64 15
  %410 = load i8, ptr %409, align 1, !tbaa !10
  %411 = zext i8 %410 to i32
  %412 = sub nsw i32 %408, %411
  %413 = tail call i32 @llvm.abs.i32(i32 %412, i1 true)
  %414 = add i32 %293, %283
  %415 = add i32 %414, %301
  %416 = add i32 %415, %309
  %417 = add i32 %416, %317
  %418 = add i32 %417, %325
  %419 = add i32 %418, %333
  %420 = add i32 %419, %341
  %421 = add i32 %420, %349
  %422 = add i32 %421, %357
  %423 = add i32 %422, %365
  %424 = add i32 %423, %373
  %425 = add i32 %424, %381
  %426 = add i32 %425, %389
  %427 = add i32 %426, %397
  %428 = add i32 %427, %405
  %429 = add i32 %428, %413
  %430 = getelementptr inbounds i8, ptr %281, i64 %117
  %431 = getelementptr inbounds i8, ptr %284, i64 16
  %432 = icmp sgt i32 %429, %263
  br i1 %432, label %438, label %280

433:                                              ; preds = %280
  %434 = icmp slt i32 %283, %263
  br i1 %434, label %435, label %438

435:                                              ; preds = %433
  %436 = sub nsw i32 %260, %2
  %437 = sub nsw i32 %262, %3
  br label %438

438:                                              ; preds = %286, %433, %435, %258
  %439 = phi i32 [ %259, %433 ], [ %437, %435 ], [ %259, %258 ], [ %259, %286 ]
  %440 = phi i32 [ %264, %433 ], [ %436, %435 ], [ %264, %258 ], [ %264, %286 ]
  %441 = phi i32 [ %263, %433 ], [ %283, %435 ], [ %263, %258 ], [ %263, %286 ]
  %442 = icmp ult i32 %261, %255
  br i1 %442, label %443, label %445

443:                                              ; preds = %438
  %444 = add nsw i32 %260, 1
  br label %455

445:                                              ; preds = %438
  %446 = icmp ult i32 %261, %256
  br i1 %446, label %447, label %449

447:                                              ; preds = %445
  %448 = add nsw i32 %262, 1
  br label %455

449:                                              ; preds = %445
  %450 = icmp ult i32 %261, %257
  br i1 %450, label %451, label %453

451:                                              ; preds = %449
  %452 = add nsw i32 %260, -1
  br label %455

453:                                              ; preds = %449
  %454 = add nsw i32 %262, -1
  br label %455

455:                                              ; preds = %443, %451, %453, %447
  %456 = phi i32 [ %262, %443 ], [ %448, %447 ], [ %262, %451 ], [ %454, %453 ]
  %457 = phi i32 [ %444, %443 ], [ %260, %447 ], [ %452, %451 ], [ %260, %453 ]
  %458 = add nuw nsw i32 %261, 1
  %459 = icmp eq i32 %458, %248
  br i1 %459, label %460, label %258

460:                                              ; preds = %455
  %461 = add nuw nsw i32 %250, 1
  %462 = add nuw nsw i32 %248, 8
  %463 = icmp eq i32 %250, %25
  br i1 %463, label %464, label %247

464:                                              ; preds = %460
  store i32 %439, ptr %143, align 4, !tbaa !11
  br label %465

465:                                              ; preds = %464, %242
  %466 = phi i32 [ %439, %464 ], [ %245, %242 ]
  %467 = phi i32 [ %440, %464 ], [ %244, %242 ]
  %468 = phi i32 [ %441, %464 ], [ %243, %242 ]
  store i32 %468, ptr %10, align 4, !tbaa !6
  store i32 %467, ptr %11, align 4, !tbaa !13
  %469 = load i32, ptr @advanced, align 4, !tbaa !6
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %481

471:                                              ; preds = %465
  %472 = sdiv i32 %2, 16
  %473 = add nsw i32 %472, 1
  %474 = sdiv i32 %3, 16
  %475 = add nsw i32 %474, 1
  %476 = sext i32 %475 to i64
  %477 = sext i32 %473 to i64
  %478 = getelementptr inbounds [73 x [90 x ptr]], ptr %7, i64 0, i64 %476, i64 %477
  %479 = load ptr, ptr %478, align 8, !tbaa !14
  store i32 %467, ptr %479, align 4, !tbaa !13
  %480 = getelementptr inbounds i8, ptr %479, i64 4
  store i32 %466, ptr %480, align 4, !tbaa !11
  br label %687

481:                                              ; preds = %465
  %482 = load i32, ptr @long_vectors, align 4, !tbaa !6
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %489

484:                                              ; preds = %481
  %485 = tail call i32 @llvm.smin.i32(i32 %467, i32 15)
  %486 = tail call i32 @llvm.smin.i32(i32 %466, i32 15)
  %487 = tail call i32 @llvm.smax.i32(i32 %485, i32 -15)
  %488 = tail call i32 @llvm.smax.i32(i32 %486, i32 -15)
  br label %489

489:                                              ; preds = %484, %481
  %490 = phi i32 [ %467, %481 ], [ %487, %484 ]
  %491 = phi i32 [ %466, %481 ], [ %488, %484 ]
  %492 = add nsw i32 %490, %2
  %493 = add nsw i32 %491, %3
  %494 = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #12
  %495 = mul nsw i32 %493, %55
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, ptr %1, i64 %496
  %498 = sext i32 %492 to i64
  %499 = getelementptr inbounds i8, ptr %497, i64 %498
  %500 = sext i32 %55 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %494, ptr noundef nonnull align 1 dereferenceable(16) %499, i64 16, i1 false), !tbaa !10
  %501 = getelementptr i8, ptr %499, i64 16
  %502 = getelementptr i8, ptr %494, i64 16
  %503 = getelementptr i8, ptr %501, i64 %500
  %504 = getelementptr i8, ptr %503, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %502, ptr noundef nonnull align 1 dereferenceable(16) %504, i64 16, i1 false), !tbaa !10
  %505 = getelementptr i8, ptr %494, i64 32
  %506 = getelementptr i8, ptr %503, i64 %500
  %507 = getelementptr i8, ptr %506, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %505, ptr noundef nonnull align 1 dereferenceable(16) %507, i64 16, i1 false), !tbaa !10
  %508 = getelementptr i8, ptr %494, i64 48
  %509 = getelementptr i8, ptr %506, i64 %500
  %510 = getelementptr i8, ptr %509, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %508, ptr noundef nonnull align 1 dereferenceable(16) %510, i64 16, i1 false), !tbaa !10
  %511 = getelementptr i8, ptr %494, i64 64
  %512 = getelementptr i8, ptr %509, i64 %500
  %513 = getelementptr i8, ptr %512, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %511, ptr noundef nonnull align 1 dereferenceable(16) %513, i64 16, i1 false), !tbaa !10
  %514 = getelementptr i8, ptr %494, i64 80
  %515 = getelementptr i8, ptr %512, i64 %500
  %516 = getelementptr i8, ptr %515, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %514, ptr noundef nonnull align 1 dereferenceable(16) %516, i64 16, i1 false), !tbaa !10
  %517 = getelementptr i8, ptr %494, i64 96
  %518 = getelementptr i8, ptr %515, i64 %500
  %519 = getelementptr i8, ptr %518, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %517, ptr noundef nonnull align 1 dereferenceable(16) %519, i64 16, i1 false), !tbaa !10
  %520 = getelementptr i8, ptr %494, i64 112
  %521 = getelementptr i8, ptr %518, i64 %500
  %522 = getelementptr i8, ptr %521, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %520, ptr noundef nonnull align 1 dereferenceable(16) %522, i64 16, i1 false), !tbaa !10
  %523 = getelementptr i8, ptr %494, i64 128
  %524 = getelementptr i8, ptr %521, i64 %500
  %525 = getelementptr i8, ptr %524, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %523, ptr noundef nonnull align 1 dereferenceable(16) %525, i64 16, i1 false), !tbaa !10
  %526 = getelementptr i8, ptr %494, i64 144
  %527 = getelementptr i8, ptr %524, i64 %500
  %528 = getelementptr i8, ptr %527, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %526, ptr noundef nonnull align 1 dereferenceable(16) %528, i64 16, i1 false), !tbaa !10
  %529 = getelementptr i8, ptr %494, i64 160
  %530 = getelementptr i8, ptr %527, i64 %500
  %531 = getelementptr i8, ptr %530, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %529, ptr noundef nonnull align 1 dereferenceable(16) %531, i64 16, i1 false), !tbaa !10
  %532 = getelementptr i8, ptr %494, i64 176
  %533 = getelementptr i8, ptr %530, i64 %500
  %534 = getelementptr i8, ptr %533, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %532, ptr noundef nonnull align 1 dereferenceable(16) %534, i64 16, i1 false), !tbaa !10
  %535 = getelementptr i8, ptr %494, i64 192
  %536 = getelementptr i8, ptr %533, i64 %500
  %537 = getelementptr i8, ptr %536, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %535, ptr noundef nonnull align 1 dereferenceable(16) %537, i64 16, i1 false), !tbaa !10
  %538 = getelementptr i8, ptr %494, i64 208
  %539 = getelementptr i8, ptr %536, i64 %500
  %540 = getelementptr i8, ptr %539, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %538, ptr noundef nonnull align 1 dereferenceable(16) %540, i64 16, i1 false), !tbaa !10
  %541 = getelementptr i8, ptr %494, i64 224
  %542 = getelementptr i8, ptr %539, i64 %500
  %543 = getelementptr i8, ptr %542, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %541, ptr noundef nonnull align 1 dereferenceable(16) %543, i64 16, i1 false), !tbaa !10
  %544 = getelementptr i8, ptr %494, i64 240
  %545 = getelementptr i8, ptr %542, i64 %500
  %546 = getelementptr i8, ptr %545, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %544, ptr noundef nonnull align 1 dereferenceable(16) %546, i64 16, i1 false), !tbaa !10
  br label %547

547:                                              ; preds = %489, %641
  %548 = phi i64 [ 0, %489 ], [ %557, %641 ]
  %549 = shl i64 %548, 3
  %550 = and i64 %549, 8
  %551 = getelementptr inbounds i8, ptr %494, i64 %550
  %552 = shl i64 %548, 6
  %553 = and i64 %552, 128
  %554 = getelementptr inbounds i8, ptr %551, i64 %553
  %555 = getelementptr inbounds i8, ptr %62, i64 %550
  %556 = getelementptr inbounds i8, ptr %555, i64 %553
  %557 = add nuw nsw i64 %548, 1
  %558 = getelementptr inbounds [5 x i32], ptr %10, i64 0, i64 %557
  %559 = load i32, ptr %558, align 4, !tbaa !6
  br label %560

560:                                              ; preds = %566, %547
  %561 = phi ptr [ %554, %547 ], [ %638, %566 ]
  %562 = phi i32 [ 8, %547 ], [ %567, %566 ]
  %563 = phi i32 [ 0, %547 ], [ %637, %566 ]
  %564 = phi ptr [ %556, %547 ], [ %639, %566 ]
  %565 = icmp eq i32 %562, 0
  br i1 %565, label %641, label %566

566:                                              ; preds = %560
  %567 = add nsw i32 %562, -1
  %568 = load i8, ptr %561, align 1, !tbaa !10
  %569 = zext i8 %568 to i32
  %570 = load i8, ptr %564, align 1, !tbaa !10
  %571 = zext i8 %570 to i32
  %572 = sub nsw i32 %569, %571
  %573 = tail call i32 @llvm.abs.i32(i32 %572, i1 true)
  %574 = getelementptr inbounds i8, ptr %561, i64 1
  %575 = load i8, ptr %574, align 1, !tbaa !10
  %576 = zext i8 %575 to i32
  %577 = getelementptr inbounds i8, ptr %564, i64 1
  %578 = load i8, ptr %577, align 1, !tbaa !10
  %579 = zext i8 %578 to i32
  %580 = sub nsw i32 %576, %579
  %581 = tail call i32 @llvm.abs.i32(i32 %580, i1 true)
  %582 = getelementptr inbounds i8, ptr %561, i64 2
  %583 = load i8, ptr %582, align 1, !tbaa !10
  %584 = zext i8 %583 to i32
  %585 = getelementptr inbounds i8, ptr %564, i64 2
  %586 = load i8, ptr %585, align 1, !tbaa !10
  %587 = zext i8 %586 to i32
  %588 = sub nsw i32 %584, %587
  %589 = tail call i32 @llvm.abs.i32(i32 %588, i1 true)
  %590 = getelementptr inbounds i8, ptr %561, i64 3
  %591 = load i8, ptr %590, align 1, !tbaa !10
  %592 = zext i8 %591 to i32
  %593 = getelementptr inbounds i8, ptr %564, i64 3
  %594 = load i8, ptr %593, align 1, !tbaa !10
  %595 = zext i8 %594 to i32
  %596 = sub nsw i32 %592, %595
  %597 = tail call i32 @llvm.abs.i32(i32 %596, i1 true)
  %598 = getelementptr inbounds i8, ptr %561, i64 4
  %599 = load i8, ptr %598, align 1, !tbaa !10
  %600 = zext i8 %599 to i32
  %601 = getelementptr inbounds i8, ptr %564, i64 4
  %602 = load i8, ptr %601, align 1, !tbaa !10
  %603 = zext i8 %602 to i32
  %604 = sub nsw i32 %600, %603
  %605 = tail call i32 @llvm.abs.i32(i32 %604, i1 true)
  %606 = getelementptr inbounds i8, ptr %561, i64 5
  %607 = load i8, ptr %606, align 1, !tbaa !10
  %608 = zext i8 %607 to i32
  %609 = getelementptr inbounds i8, ptr %564, i64 5
  %610 = load i8, ptr %609, align 1, !tbaa !10
  %611 = zext i8 %610 to i32
  %612 = sub nsw i32 %608, %611
  %613 = tail call i32 @llvm.abs.i32(i32 %612, i1 true)
  %614 = getelementptr inbounds i8, ptr %561, i64 6
  %615 = load i8, ptr %614, align 1, !tbaa !10
  %616 = zext i8 %615 to i32
  %617 = getelementptr inbounds i8, ptr %564, i64 6
  %618 = load i8, ptr %617, align 1, !tbaa !10
  %619 = zext i8 %618 to i32
  %620 = sub nsw i32 %616, %619
  %621 = tail call i32 @llvm.abs.i32(i32 %620, i1 true)
  %622 = getelementptr inbounds i8, ptr %561, i64 7
  %623 = load i8, ptr %622, align 1, !tbaa !10
  %624 = zext i8 %623 to i32
  %625 = getelementptr inbounds i8, ptr %564, i64 7
  %626 = load i8, ptr %625, align 1, !tbaa !10
  %627 = zext i8 %626 to i32
  %628 = sub nsw i32 %624, %627
  %629 = tail call i32 @llvm.abs.i32(i32 %628, i1 true)
  %630 = add i32 %573, %563
  %631 = add i32 %630, %581
  %632 = add i32 %631, %589
  %633 = add i32 %632, %597
  %634 = add i32 %633, %605
  %635 = add i32 %634, %613
  %636 = add i32 %635, %621
  %637 = add i32 %636, %629
  %638 = getelementptr inbounds i8, ptr %561, i64 16
  %639 = getelementptr inbounds i8, ptr %564, i64 16
  %640 = icmp sgt i32 %637, %559
  br i1 %640, label %641, label %560

641:                                              ; preds = %560, %566
  %642 = phi i32 [ 2147483647, %566 ], [ %563, %560 ]
  store i32 %642, ptr %558, align 4, !tbaa !6
  %643 = getelementptr inbounds [5 x %struct.motionvector], ptr %11, i64 0, i64 %557
  store i32 %467, ptr %643, align 4, !tbaa !13
  %644 = getelementptr inbounds i8, ptr %643, i64 4
  store i32 %466, ptr %644, align 4, !tbaa !11
  %645 = icmp eq i64 %557, 4
  br i1 %645, label %646, label %547

646:                                              ; preds = %641
  %647 = sdiv i32 %2, 16
  %648 = add nsw i32 %647, 1
  %649 = sdiv i32 %3, 16
  %650 = add nsw i32 %649, 1
  %651 = sext i32 %650 to i64
  %652 = sext i32 %648 to i64
  %653 = load i32, ptr %11, align 4, !tbaa !13
  %654 = getelementptr inbounds [73 x [90 x ptr]], ptr %7, i64 0, i64 %651, i64 %652
  %655 = load ptr, ptr %654, align 8, !tbaa !14
  store i32 %653, ptr %655, align 4, !tbaa !13
  %656 = load i32, ptr %143, align 4, !tbaa !11
  %657 = getelementptr inbounds i8, ptr %655, i64 4
  store i32 %656, ptr %657, align 4, !tbaa !11
  %658 = load i32, ptr %10, align 4, !tbaa !6
  %659 = getelementptr inbounds i8, ptr %655, i64 16
  store i32 %658, ptr %659, align 4, !tbaa !16
  %660 = load i32, ptr %146, align 4, !tbaa !13
  %661 = getelementptr inbounds [73 x [90 x ptr]], ptr %7, i64 1, i64 %651, i64 %652
  %662 = load ptr, ptr %661, align 8, !tbaa !14
  store i32 %660, ptr %662, align 4, !tbaa !13
  %663 = load i32, ptr %147, align 4, !tbaa !11
  %664 = getelementptr inbounds i8, ptr %662, i64 4
  store i32 %663, ptr %664, align 4, !tbaa !11
  %665 = load i32, ptr %144, align 4, !tbaa !6
  %666 = getelementptr inbounds i8, ptr %662, i64 16
  store i32 %665, ptr %666, align 4, !tbaa !16
  %667 = load i32, ptr %149, align 4, !tbaa !13
  %668 = getelementptr inbounds [73 x [90 x ptr]], ptr %7, i64 2, i64 %651, i64 %652
  %669 = load ptr, ptr %668, align 8, !tbaa !14
  store i32 %667, ptr %669, align 4, !tbaa !13
  %670 = load i32, ptr %150, align 4, !tbaa !11
  %671 = getelementptr inbounds i8, ptr %669, i64 4
  store i32 %670, ptr %671, align 4, !tbaa !11
  %672 = load i32, ptr %148, align 4, !tbaa !6
  %673 = getelementptr inbounds i8, ptr %669, i64 16
  store i32 %672, ptr %673, align 4, !tbaa !16
  %674 = load i32, ptr %152, align 4, !tbaa !13
  %675 = getelementptr inbounds [73 x [90 x ptr]], ptr %7, i64 3, i64 %651, i64 %652
  %676 = load ptr, ptr %675, align 8, !tbaa !14
  store i32 %674, ptr %676, align 4, !tbaa !13
  %677 = load i32, ptr %153, align 4, !tbaa !11
  %678 = getelementptr inbounds i8, ptr %676, i64 4
  store i32 %677, ptr %678, align 4, !tbaa !11
  %679 = load i32, ptr %151, align 4, !tbaa !6
  %680 = getelementptr inbounds i8, ptr %676, i64 16
  store i32 %679, ptr %680, align 4, !tbaa !16
  %681 = load i32, ptr %155, align 4, !tbaa !13
  %682 = getelementptr inbounds [73 x [90 x ptr]], ptr %7, i64 4, i64 %651, i64 %652
  %683 = load ptr, ptr %682, align 8, !tbaa !14
  store i32 %681, ptr %683, align 4, !tbaa !13
  %684 = load i32, ptr %156, align 4, !tbaa !11
  %685 = getelementptr inbounds i8, ptr %683, i64 4
  store i32 %684, ptr %685, align 4, !tbaa !11
  %686 = load i32, ptr %154, align 4, !tbaa !6
  br label %687

687:                                              ; preds = %646, %471
  %688 = phi ptr [ %683, %646 ], [ %479, %471 ]
  %689 = phi i32 [ %686, %646 ], [ %468, %471 ]
  %690 = phi ptr [ %494, %646 ], [ null, %471 ]
  %691 = getelementptr inbounds i8, ptr %688, i64 16
  store i32 %689, ptr %691, align 4, !tbaa !16
  tail call void @free(ptr noundef %62) #11
  tail call void @free(ptr noundef %120) #11
  %692 = load i32, ptr @advanced, align 4, !tbaa !6
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %695, label %694

694:                                              ; preds = %687
  tail call void @free(ptr noundef %690) #11
  br label %695

695:                                              ; preds = %694, %687
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
define dso_local noalias noundef ptr @LoadArea(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) local_unnamed_addr #2 {
  %7 = sext i32 %3 to i64
  %8 = sext i32 %4 to i64
  %9 = mul nsw i64 %8, %7
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #12
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %6
  %13 = icmp eq i32 %3, 0
  %14 = sub nsw i32 %5, %3
  %15 = sext i32 %14 to i64
  br i1 %13, label %33, label %16

16:                                               ; preds = %12
  %17 = mul nsw i32 %5, %2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = zext i32 %3 to i64
  %23 = zext i32 %3 to i64
  br label %24

24:                                               ; preds = %16, %24
  %25 = phi i32 [ %28, %24 ], [ %4, %16 ]
  %26 = phi ptr [ %30, %24 ], [ %10, %16 ]
  %27 = phi ptr [ %31, %24 ], [ %21, %16 ]
  %28 = add nsw i32 %25, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %27, i64 %22, i1 false), !tbaa !10
  %29 = getelementptr i8, ptr %27, i64 %23
  %30 = getelementptr i8, ptr %26, i64 %23
  %31 = getelementptr inbounds i8, ptr %29, i64 %15
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %33, label %24

33:                                               ; preds = %24, %12, %6
  ret ptr %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext i32 @SAD_Macroblock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #3 {
  %5 = sext i32 %2 to i64
  br label %6

6:                                                ; preds = %12, %4
  %7 = phi ptr [ %0, %4 ], [ %156, %12 ]
  %8 = phi i32 [ 16, %4 ], [ %13, %12 ]
  %9 = phi i32 [ 0, %4 ], [ %155, %12 ]
  %10 = phi ptr [ %1, %4 ], [ %157, %12 ]
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %159, label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %8, -1
  %14 = load i8, ptr %7, align 1, !tbaa !10
  %15 = zext i8 %14 to i32
  %16 = load i8, ptr %10, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %15, %17
  %19 = tail call i32 @llvm.abs.i32(i32 %18, i1 true)
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %10, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !10
  %25 = zext i8 %24 to i32
  %26 = sub nsw i32 %22, %25
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %28 = getelementptr inbounds i8, ptr %7, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !10
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds i8, ptr %10, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !10
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = tail call i32 @llvm.abs.i32(i32 %34, i1 true)
  %36 = getelementptr inbounds i8, ptr %7, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %10, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %38, %41
  %43 = tail call i32 @llvm.abs.i32(i32 %42, i1 true)
  %44 = getelementptr inbounds i8, ptr %7, i64 4
  %45 = load i8, ptr %44, align 1, !tbaa !10
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %10, i64 4
  %48 = load i8, ptr %47, align 1, !tbaa !10
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %46, %49
  %51 = tail call i32 @llvm.abs.i32(i32 %50, i1 true)
  %52 = getelementptr inbounds i8, ptr %7, i64 5
  %53 = load i8, ptr %52, align 1, !tbaa !10
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds i8, ptr %10, i64 5
  %56 = load i8, ptr %55, align 1, !tbaa !10
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %54, %57
  %59 = tail call i32 @llvm.abs.i32(i32 %58, i1 true)
  %60 = getelementptr inbounds i8, ptr %7, i64 6
  %61 = load i8, ptr %60, align 1, !tbaa !10
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds i8, ptr %10, i64 6
  %64 = load i8, ptr %63, align 1, !tbaa !10
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 %62, %65
  %67 = tail call i32 @llvm.abs.i32(i32 %66, i1 true)
  %68 = getelementptr inbounds i8, ptr %7, i64 7
  %69 = load i8, ptr %68, align 1, !tbaa !10
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds i8, ptr %10, i64 7
  %72 = load i8, ptr %71, align 1, !tbaa !10
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %70, %73
  %75 = tail call i32 @llvm.abs.i32(i32 %74, i1 true)
  %76 = getelementptr inbounds i8, ptr %7, i64 8
  %77 = load i8, ptr %76, align 1, !tbaa !10
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds i8, ptr %10, i64 8
  %80 = load i8, ptr %79, align 1, !tbaa !10
  %81 = zext i8 %80 to i32
  %82 = sub nsw i32 %78, %81
  %83 = tail call i32 @llvm.abs.i32(i32 %82, i1 true)
  %84 = getelementptr inbounds i8, ptr %7, i64 9
  %85 = load i8, ptr %84, align 1, !tbaa !10
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds i8, ptr %10, i64 9
  %88 = load i8, ptr %87, align 1, !tbaa !10
  %89 = zext i8 %88 to i32
  %90 = sub nsw i32 %86, %89
  %91 = tail call i32 @llvm.abs.i32(i32 %90, i1 true)
  %92 = getelementptr inbounds i8, ptr %7, i64 10
  %93 = load i8, ptr %92, align 1, !tbaa !10
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds i8, ptr %10, i64 10
  %96 = load i8, ptr %95, align 1, !tbaa !10
  %97 = zext i8 %96 to i32
  %98 = sub nsw i32 %94, %97
  %99 = tail call i32 @llvm.abs.i32(i32 %98, i1 true)
  %100 = getelementptr inbounds i8, ptr %7, i64 11
  %101 = load i8, ptr %100, align 1, !tbaa !10
  %102 = zext i8 %101 to i32
  %103 = getelementptr inbounds i8, ptr %10, i64 11
  %104 = load i8, ptr %103, align 1, !tbaa !10
  %105 = zext i8 %104 to i32
  %106 = sub nsw i32 %102, %105
  %107 = tail call i32 @llvm.abs.i32(i32 %106, i1 true)
  %108 = getelementptr inbounds i8, ptr %7, i64 12
  %109 = load i8, ptr %108, align 1, !tbaa !10
  %110 = zext i8 %109 to i32
  %111 = getelementptr inbounds i8, ptr %10, i64 12
  %112 = load i8, ptr %111, align 1, !tbaa !10
  %113 = zext i8 %112 to i32
  %114 = sub nsw i32 %110, %113
  %115 = tail call i32 @llvm.abs.i32(i32 %114, i1 true)
  %116 = getelementptr inbounds i8, ptr %7, i64 13
  %117 = load i8, ptr %116, align 1, !tbaa !10
  %118 = zext i8 %117 to i32
  %119 = getelementptr inbounds i8, ptr %10, i64 13
  %120 = load i8, ptr %119, align 1, !tbaa !10
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %118, %121
  %123 = tail call i32 @llvm.abs.i32(i32 %122, i1 true)
  %124 = getelementptr inbounds i8, ptr %7, i64 14
  %125 = load i8, ptr %124, align 1, !tbaa !10
  %126 = zext i8 %125 to i32
  %127 = getelementptr inbounds i8, ptr %10, i64 14
  %128 = load i8, ptr %127, align 1, !tbaa !10
  %129 = zext i8 %128 to i32
  %130 = sub nsw i32 %126, %129
  %131 = tail call i32 @llvm.abs.i32(i32 %130, i1 true)
  %132 = getelementptr inbounds i8, ptr %7, i64 15
  %133 = load i8, ptr %132, align 1, !tbaa !10
  %134 = zext i8 %133 to i32
  %135 = getelementptr inbounds i8, ptr %10, i64 15
  %136 = load i8, ptr %135, align 1, !tbaa !10
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 %134, %137
  %139 = tail call i32 @llvm.abs.i32(i32 %138, i1 true)
  %140 = add i32 %19, %9
  %141 = add i32 %140, %27
  %142 = add i32 %141, %35
  %143 = add i32 %142, %43
  %144 = add i32 %143, %51
  %145 = add i32 %144, %59
  %146 = add i32 %145, %67
  %147 = add i32 %146, %75
  %148 = add i32 %147, %83
  %149 = add i32 %148, %91
  %150 = add i32 %149, %99
  %151 = add i32 %150, %107
  %152 = add i32 %151, %115
  %153 = add i32 %152, %123
  %154 = add i32 %153, %131
  %155 = add i32 %154, %139
  %156 = getelementptr inbounds i8, ptr %7, i64 %5
  %157 = getelementptr inbounds i8, ptr %10, i64 16
  %158 = icmp sgt i32 %155, %3
  br i1 %158, label %159, label %6

159:                                              ; preds = %6, %12
  %160 = phi i32 [ 2147483647, %12 ], [ %9, %6 ]
  ret i32 %160
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext i32 @SAD_Block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #3 {
  %5 = sext i32 %2 to i64
  br label %6

6:                                                ; preds = %12, %4
  %7 = phi ptr [ %0, %4 ], [ %84, %12 ]
  %8 = phi i32 [ 8, %4 ], [ %13, %12 ]
  %9 = phi i32 [ 0, %4 ], [ %83, %12 ]
  %10 = phi ptr [ %1, %4 ], [ %85, %12 ]
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %87, label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %8, -1
  %14 = load i8, ptr %7, align 1, !tbaa !10
  %15 = zext i8 %14 to i32
  %16 = load i8, ptr %10, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %15, %17
  %19 = tail call i32 @llvm.abs.i32(i32 %18, i1 true)
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %10, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !10
  %25 = zext i8 %24 to i32
  %26 = sub nsw i32 %22, %25
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %28 = getelementptr inbounds i8, ptr %7, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !10
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds i8, ptr %10, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !10
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = tail call i32 @llvm.abs.i32(i32 %34, i1 true)
  %36 = getelementptr inbounds i8, ptr %7, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %10, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %38, %41
  %43 = tail call i32 @llvm.abs.i32(i32 %42, i1 true)
  %44 = getelementptr inbounds i8, ptr %7, i64 4
  %45 = load i8, ptr %44, align 1, !tbaa !10
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %10, i64 4
  %48 = load i8, ptr %47, align 1, !tbaa !10
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %46, %49
  %51 = tail call i32 @llvm.abs.i32(i32 %50, i1 true)
  %52 = getelementptr inbounds i8, ptr %7, i64 5
  %53 = load i8, ptr %52, align 1, !tbaa !10
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds i8, ptr %10, i64 5
  %56 = load i8, ptr %55, align 1, !tbaa !10
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %54, %57
  %59 = tail call i32 @llvm.abs.i32(i32 %58, i1 true)
  %60 = getelementptr inbounds i8, ptr %7, i64 6
  %61 = load i8, ptr %60, align 1, !tbaa !10
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds i8, ptr %10, i64 6
  %64 = load i8, ptr %63, align 1, !tbaa !10
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 %62, %65
  %67 = tail call i32 @llvm.abs.i32(i32 %66, i1 true)
  %68 = getelementptr inbounds i8, ptr %7, i64 7
  %69 = load i8, ptr %68, align 1, !tbaa !10
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds i8, ptr %10, i64 7
  %72 = load i8, ptr %71, align 1, !tbaa !10
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %70, %73
  %75 = tail call i32 @llvm.abs.i32(i32 %74, i1 true)
  %76 = add i32 %19, %9
  %77 = add i32 %76, %27
  %78 = add i32 %77, %35
  %79 = add i32 %78, %43
  %80 = add i32 %79, %51
  %81 = add i32 %80, %59
  %82 = add i32 %81, %67
  %83 = add i32 %82, %75
  %84 = getelementptr inbounds i8, ptr %7, i64 %5
  %85 = getelementptr inbounds i8, ptr %10, i64 16
  %86 = icmp sgt i32 %83, %3
  br i1 %86, label %87, label %6

87:                                               ; preds = %6, %12
  %88 = phi i32 [ 2147483647, %12 ], [ %9, %6 ]
  ret i32 %88
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext i32 @SAD_MB_Bidir(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #3 {
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %14, %5
  %8 = phi ptr [ %0, %5 ], [ %237, %14 ]
  %9 = phi i32 [ 16, %5 ], [ %15, %14 ]
  %10 = phi i32 [ 0, %5 ], [ %236, %14 ]
  %11 = phi ptr [ %2, %5 ], [ %239, %14 ]
  %12 = phi ptr [ %1, %5 ], [ %238, %14 ]
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %241, label %14

14:                                               ; preds = %7
  %15 = add nsw i32 %9, -1
  %16 = load i8, ptr %8, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = load i8, ptr %12, align 1, !tbaa !10
  %19 = zext i8 %18 to i32
  %20 = load i8, ptr %11, align 1, !tbaa !10
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, %19
  %23 = lshr i32 %22, 1
  %24 = sub nsw i32 %17, %23
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = getelementptr inbounds i8, ptr %8, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !10
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds i8, ptr %12, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !10
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds i8, ptr %11, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !10
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %34, %31
  %36 = lshr i32 %35, 1
  %37 = sub nsw i32 %28, %36
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 true)
  %39 = getelementptr inbounds i8, ptr %8, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %12, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !10
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %11, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !10
  %47 = zext i8 %46 to i32
  %48 = add nuw nsw i32 %47, %44
  %49 = lshr i32 %48, 1
  %50 = sub nsw i32 %41, %49
  %51 = tail call i32 @llvm.abs.i32(i32 %50, i1 true)
  %52 = getelementptr inbounds i8, ptr %8, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !10
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds i8, ptr %12, i64 3
  %56 = load i8, ptr %55, align 1, !tbaa !10
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds i8, ptr %11, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !10
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %60, %57
  %62 = lshr i32 %61, 1
  %63 = sub nsw i32 %54, %62
  %64 = tail call i32 @llvm.abs.i32(i32 %63, i1 true)
  %65 = getelementptr inbounds i8, ptr %8, i64 4
  %66 = load i8, ptr %65, align 1, !tbaa !10
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds i8, ptr %12, i64 4
  %69 = load i8, ptr %68, align 1, !tbaa !10
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds i8, ptr %11, i64 4
  %72 = load i8, ptr %71, align 1, !tbaa !10
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %73, %70
  %75 = lshr i32 %74, 1
  %76 = sub nsw i32 %67, %75
  %77 = tail call i32 @llvm.abs.i32(i32 %76, i1 true)
  %78 = getelementptr inbounds i8, ptr %8, i64 5
  %79 = load i8, ptr %78, align 1, !tbaa !10
  %80 = zext i8 %79 to i32
  %81 = getelementptr inbounds i8, ptr %12, i64 5
  %82 = load i8, ptr %81, align 1, !tbaa !10
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds i8, ptr %11, i64 5
  %85 = load i8, ptr %84, align 1, !tbaa !10
  %86 = zext i8 %85 to i32
  %87 = add nuw nsw i32 %86, %83
  %88 = lshr i32 %87, 1
  %89 = sub nsw i32 %80, %88
  %90 = tail call i32 @llvm.abs.i32(i32 %89, i1 true)
  %91 = getelementptr inbounds i8, ptr %8, i64 6
  %92 = load i8, ptr %91, align 1, !tbaa !10
  %93 = zext i8 %92 to i32
  %94 = getelementptr inbounds i8, ptr %12, i64 6
  %95 = load i8, ptr %94, align 1, !tbaa !10
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds i8, ptr %11, i64 6
  %98 = load i8, ptr %97, align 1, !tbaa !10
  %99 = zext i8 %98 to i32
  %100 = add nuw nsw i32 %99, %96
  %101 = lshr i32 %100, 1
  %102 = sub nsw i32 %93, %101
  %103 = tail call i32 @llvm.abs.i32(i32 %102, i1 true)
  %104 = getelementptr inbounds i8, ptr %8, i64 7
  %105 = load i8, ptr %104, align 1, !tbaa !10
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds i8, ptr %12, i64 7
  %108 = load i8, ptr %107, align 1, !tbaa !10
  %109 = zext i8 %108 to i32
  %110 = getelementptr inbounds i8, ptr %11, i64 7
  %111 = load i8, ptr %110, align 1, !tbaa !10
  %112 = zext i8 %111 to i32
  %113 = add nuw nsw i32 %112, %109
  %114 = lshr i32 %113, 1
  %115 = sub nsw i32 %106, %114
  %116 = tail call i32 @llvm.abs.i32(i32 %115, i1 true)
  %117 = getelementptr inbounds i8, ptr %8, i64 8
  %118 = load i8, ptr %117, align 1, !tbaa !10
  %119 = zext i8 %118 to i32
  %120 = getelementptr inbounds i8, ptr %12, i64 8
  %121 = load i8, ptr %120, align 1, !tbaa !10
  %122 = zext i8 %121 to i32
  %123 = getelementptr inbounds i8, ptr %11, i64 8
  %124 = load i8, ptr %123, align 1, !tbaa !10
  %125 = zext i8 %124 to i32
  %126 = add nuw nsw i32 %125, %122
  %127 = lshr i32 %126, 1
  %128 = sub nsw i32 %119, %127
  %129 = tail call i32 @llvm.abs.i32(i32 %128, i1 true)
  %130 = getelementptr inbounds i8, ptr %8, i64 9
  %131 = load i8, ptr %130, align 1, !tbaa !10
  %132 = zext i8 %131 to i32
  %133 = getelementptr inbounds i8, ptr %12, i64 9
  %134 = load i8, ptr %133, align 1, !tbaa !10
  %135 = zext i8 %134 to i32
  %136 = getelementptr inbounds i8, ptr %11, i64 9
  %137 = load i8, ptr %136, align 1, !tbaa !10
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %138, %135
  %140 = lshr i32 %139, 1
  %141 = sub nsw i32 %132, %140
  %142 = tail call i32 @llvm.abs.i32(i32 %141, i1 true)
  %143 = getelementptr inbounds i8, ptr %8, i64 10
  %144 = load i8, ptr %143, align 1, !tbaa !10
  %145 = zext i8 %144 to i32
  %146 = getelementptr inbounds i8, ptr %12, i64 10
  %147 = load i8, ptr %146, align 1, !tbaa !10
  %148 = zext i8 %147 to i32
  %149 = getelementptr inbounds i8, ptr %11, i64 10
  %150 = load i8, ptr %149, align 1, !tbaa !10
  %151 = zext i8 %150 to i32
  %152 = add nuw nsw i32 %151, %148
  %153 = lshr i32 %152, 1
  %154 = sub nsw i32 %145, %153
  %155 = tail call i32 @llvm.abs.i32(i32 %154, i1 true)
  %156 = getelementptr inbounds i8, ptr %8, i64 11
  %157 = load i8, ptr %156, align 1, !tbaa !10
  %158 = zext i8 %157 to i32
  %159 = getelementptr inbounds i8, ptr %12, i64 11
  %160 = load i8, ptr %159, align 1, !tbaa !10
  %161 = zext i8 %160 to i32
  %162 = getelementptr inbounds i8, ptr %11, i64 11
  %163 = load i8, ptr %162, align 1, !tbaa !10
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %164, %161
  %166 = lshr i32 %165, 1
  %167 = sub nsw i32 %158, %166
  %168 = tail call i32 @llvm.abs.i32(i32 %167, i1 true)
  %169 = getelementptr inbounds i8, ptr %8, i64 12
  %170 = load i8, ptr %169, align 1, !tbaa !10
  %171 = zext i8 %170 to i32
  %172 = getelementptr inbounds i8, ptr %12, i64 12
  %173 = load i8, ptr %172, align 1, !tbaa !10
  %174 = zext i8 %173 to i32
  %175 = getelementptr inbounds i8, ptr %11, i64 12
  %176 = load i8, ptr %175, align 1, !tbaa !10
  %177 = zext i8 %176 to i32
  %178 = add nuw nsw i32 %177, %174
  %179 = lshr i32 %178, 1
  %180 = sub nsw i32 %171, %179
  %181 = tail call i32 @llvm.abs.i32(i32 %180, i1 true)
  %182 = getelementptr inbounds i8, ptr %8, i64 13
  %183 = load i8, ptr %182, align 1, !tbaa !10
  %184 = zext i8 %183 to i32
  %185 = getelementptr inbounds i8, ptr %12, i64 13
  %186 = load i8, ptr %185, align 1, !tbaa !10
  %187 = zext i8 %186 to i32
  %188 = getelementptr inbounds i8, ptr %11, i64 13
  %189 = load i8, ptr %188, align 1, !tbaa !10
  %190 = zext i8 %189 to i32
  %191 = add nuw nsw i32 %190, %187
  %192 = lshr i32 %191, 1
  %193 = sub nsw i32 %184, %192
  %194 = tail call i32 @llvm.abs.i32(i32 %193, i1 true)
  %195 = getelementptr inbounds i8, ptr %8, i64 14
  %196 = load i8, ptr %195, align 1, !tbaa !10
  %197 = zext i8 %196 to i32
  %198 = getelementptr inbounds i8, ptr %12, i64 14
  %199 = load i8, ptr %198, align 1, !tbaa !10
  %200 = zext i8 %199 to i32
  %201 = getelementptr inbounds i8, ptr %11, i64 14
  %202 = load i8, ptr %201, align 1, !tbaa !10
  %203 = zext i8 %202 to i32
  %204 = add nuw nsw i32 %203, %200
  %205 = lshr i32 %204, 1
  %206 = sub nsw i32 %197, %205
  %207 = tail call i32 @llvm.abs.i32(i32 %206, i1 true)
  %208 = getelementptr inbounds i8, ptr %8, i64 15
  %209 = load i8, ptr %208, align 1, !tbaa !10
  %210 = zext i8 %209 to i32
  %211 = getelementptr inbounds i8, ptr %12, i64 15
  %212 = load i8, ptr %211, align 1, !tbaa !10
  %213 = zext i8 %212 to i32
  %214 = getelementptr inbounds i8, ptr %11, i64 15
  %215 = load i8, ptr %214, align 1, !tbaa !10
  %216 = zext i8 %215 to i32
  %217 = add nuw nsw i32 %216, %213
  %218 = lshr i32 %217, 1
  %219 = sub nsw i32 %210, %218
  %220 = tail call i32 @llvm.abs.i32(i32 %219, i1 true)
  %221 = add i32 %25, %10
  %222 = add i32 %221, %38
  %223 = add i32 %222, %51
  %224 = add i32 %223, %64
  %225 = add i32 %224, %77
  %226 = add i32 %225, %90
  %227 = add i32 %226, %103
  %228 = add i32 %227, %116
  %229 = add i32 %228, %129
  %230 = add i32 %229, %142
  %231 = add i32 %230, %155
  %232 = add i32 %231, %168
  %233 = add i32 %232, %181
  %234 = add i32 %233, %194
  %235 = add i32 %234, %207
  %236 = add i32 %235, %220
  %237 = getelementptr inbounds i8, ptr %8, i64 %6
  %238 = getelementptr inbounds i8, ptr %12, i64 %6
  %239 = getelementptr inbounds i8, ptr %11, i64 %6
  %240 = icmp sgt i32 %236, %4
  br i1 %240, label %241, label %7

241:                                              ; preds = %7, %14
  %242 = phi i32 [ 2147483647, %14 ], [ %10, %7 ]
  ret i32 %242
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext range(i32 0, -2147483648) i32 @SAD_MB_integer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #3 {
  %5 = sext i32 %2 to i64
  br label %6

6:                                                ; preds = %12, %4
  %7 = phi ptr [ %0, %4 ], [ %124, %12 ]
  %8 = phi i32 [ 16, %4 ], [ %13, %12 ]
  %9 = phi i32 [ 0, %4 ], [ %123, %12 ]
  %10 = phi ptr [ %1, %4 ], [ %125, %12 ]
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %127, label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %8, -1
  %14 = load i32, ptr %7, align 4, !tbaa !6
  %15 = load i32, ptr %10, align 4, !tbaa !6
  %16 = sub nsw i32 %14, %15
  %17 = tail call i32 @llvm.abs.i32(i32 %16, i1 true)
  %18 = getelementptr inbounds i8, ptr %7, i64 4
  %19 = load i32, ptr %18, align 4, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %10, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = sub nsw i32 %19, %21
  %23 = tail call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = getelementptr inbounds i8, ptr %7, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %10, i64 8
  %27 = load i32, ptr %26, align 4, !tbaa !6
  %28 = sub nsw i32 %25, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = getelementptr inbounds i8, ptr %7, i64 12
  %31 = load i32, ptr %30, align 4, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %10, i64 12
  %33 = load i32, ptr %32, align 4, !tbaa !6
  %34 = sub nsw i32 %31, %33
  %35 = tail call i32 @llvm.abs.i32(i32 %34, i1 true)
  %36 = getelementptr inbounds i8, ptr %7, i64 16
  %37 = load i32, ptr %36, align 4, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %10, i64 16
  %39 = load i32, ptr %38, align 4, !tbaa !6
  %40 = sub nsw i32 %37, %39
  %41 = tail call i32 @llvm.abs.i32(i32 %40, i1 true)
  %42 = getelementptr inbounds i8, ptr %7, i64 20
  %43 = load i32, ptr %42, align 4, !tbaa !6
  %44 = getelementptr inbounds i8, ptr %10, i64 20
  %45 = load i32, ptr %44, align 4, !tbaa !6
  %46 = sub nsw i32 %43, %45
  %47 = tail call i32 @llvm.abs.i32(i32 %46, i1 true)
  %48 = getelementptr inbounds i8, ptr %7, i64 24
  %49 = load i32, ptr %48, align 4, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %10, i64 24
  %51 = load i32, ptr %50, align 4, !tbaa !6
  %52 = sub nsw i32 %49, %51
  %53 = tail call i32 @llvm.abs.i32(i32 %52, i1 true)
  %54 = getelementptr inbounds i8, ptr %7, i64 28
  %55 = load i32, ptr %54, align 4, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %10, i64 28
  %57 = load i32, ptr %56, align 4, !tbaa !6
  %58 = sub nsw i32 %55, %57
  %59 = tail call i32 @llvm.abs.i32(i32 %58, i1 true)
  %60 = getelementptr inbounds i8, ptr %7, i64 32
  %61 = load i32, ptr %60, align 4, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %10, i64 32
  %63 = load i32, ptr %62, align 4, !tbaa !6
  %64 = sub nsw i32 %61, %63
  %65 = tail call i32 @llvm.abs.i32(i32 %64, i1 true)
  %66 = getelementptr inbounds i8, ptr %7, i64 36
  %67 = load i32, ptr %66, align 4, !tbaa !6
  %68 = getelementptr inbounds i8, ptr %10, i64 36
  %69 = load i32, ptr %68, align 4, !tbaa !6
  %70 = sub nsw i32 %67, %69
  %71 = tail call i32 @llvm.abs.i32(i32 %70, i1 true)
  %72 = getelementptr inbounds i8, ptr %7, i64 40
  %73 = load i32, ptr %72, align 4, !tbaa !6
  %74 = getelementptr inbounds i8, ptr %10, i64 40
  %75 = load i32, ptr %74, align 4, !tbaa !6
  %76 = sub nsw i32 %73, %75
  %77 = tail call i32 @llvm.abs.i32(i32 %76, i1 true)
  %78 = getelementptr inbounds i8, ptr %7, i64 44
  %79 = load i32, ptr %78, align 4, !tbaa !6
  %80 = getelementptr inbounds i8, ptr %10, i64 44
  %81 = load i32, ptr %80, align 4, !tbaa !6
  %82 = sub nsw i32 %79, %81
  %83 = tail call i32 @llvm.abs.i32(i32 %82, i1 true)
  %84 = getelementptr inbounds i8, ptr %7, i64 48
  %85 = load i32, ptr %84, align 4, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %10, i64 48
  %87 = load i32, ptr %86, align 4, !tbaa !6
  %88 = sub nsw i32 %85, %87
  %89 = tail call i32 @llvm.abs.i32(i32 %88, i1 true)
  %90 = getelementptr inbounds i8, ptr %7, i64 52
  %91 = load i32, ptr %90, align 4, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %10, i64 52
  %93 = load i32, ptr %92, align 4, !tbaa !6
  %94 = sub nsw i32 %91, %93
  %95 = tail call i32 @llvm.abs.i32(i32 %94, i1 true)
  %96 = getelementptr inbounds i8, ptr %7, i64 56
  %97 = load i32, ptr %96, align 4, !tbaa !6
  %98 = getelementptr inbounds i8, ptr %10, i64 56
  %99 = load i32, ptr %98, align 4, !tbaa !6
  %100 = sub nsw i32 %97, %99
  %101 = tail call i32 @llvm.abs.i32(i32 %100, i1 true)
  %102 = getelementptr inbounds i8, ptr %7, i64 60
  %103 = load i32, ptr %102, align 4, !tbaa !6
  %104 = getelementptr inbounds i8, ptr %10, i64 60
  %105 = load i32, ptr %104, align 4, !tbaa !6
  %106 = sub nsw i32 %103, %105
  %107 = tail call i32 @llvm.abs.i32(i32 %106, i1 true)
  %108 = add nuw nsw i32 %17, %9
  %109 = add nuw nsw i32 %108, %23
  %110 = add nuw nsw i32 %109, %29
  %111 = add nuw nsw i32 %110, %35
  %112 = add nuw nsw i32 %111, %41
  %113 = add nuw nsw i32 %112, %47
  %114 = add nuw nsw i32 %113, %53
  %115 = add nuw nsw i32 %114, %59
  %116 = add nuw nsw i32 %115, %65
  %117 = add nuw nsw i32 %116, %71
  %118 = add nuw nsw i32 %117, %77
  %119 = add nuw nsw i32 %118, %83
  %120 = add nuw nsw i32 %119, %89
  %121 = add nuw nsw i32 %120, %95
  %122 = add nuw nsw i32 %121, %101
  %123 = add nuw nsw i32 %122, %107
  %124 = getelementptr inbounds i32, ptr %7, i64 %5
  %125 = getelementptr inbounds i8, ptr %10, i64 64
  %126 = icmp sgt i32 %123, %3
  br i1 %126, label %127, label %6

127:                                              ; preds = %6, %12
  %128 = phi i32 [ 2147483647, %12 ], [ %9, %6 ]
  ret i32 %128
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @FindMB(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #7 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds i8, ptr %2, i64 %5
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 1
  %9 = getelementptr inbounds i8, ptr %6, i64 2
  %10 = getelementptr inbounds i8, ptr %6, i64 3
  %11 = getelementptr inbounds i8, ptr %6, i64 4
  %12 = getelementptr inbounds i8, ptr %6, i64 5
  %13 = getelementptr inbounds i8, ptr %6, i64 6
  %14 = getelementptr inbounds i8, ptr %6, i64 7
  %15 = getelementptr inbounds i8, ptr %6, i64 8
  %16 = getelementptr inbounds i8, ptr %6, i64 9
  %17 = getelementptr inbounds i8, ptr %6, i64 10
  %18 = getelementptr inbounds i8, ptr %6, i64 11
  %19 = getelementptr inbounds i8, ptr %6, i64 12
  %20 = getelementptr inbounds i8, ptr %6, i64 13
  %21 = getelementptr inbounds i8, ptr %6, i64 14
  %22 = getelementptr inbounds i8, ptr %6, i64 15
  br label %23

23:                                               ; preds = %4, %23
  %24 = phi i64 [ 0, %4 ], [ %138, %23 ]
  %25 = add nsw i64 %24, %7
  %26 = load i32, ptr @pels, align 4, !tbaa !6
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %25, %27
  %29 = getelementptr inbounds i8, ptr %6, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !10
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 0
  store i32 %31, ptr %32, align 4, !tbaa !6
  %33 = load i32, ptr @pels, align 4, !tbaa !6
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %25, %34
  %36 = getelementptr inbounds i8, ptr %8, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 1
  store i32 %38, ptr %39, align 4, !tbaa !6
  %40 = load i32, ptr @pels, align 4, !tbaa !6
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %25, %41
  %43 = getelementptr inbounds i8, ptr %9, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !10
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 2
  store i32 %45, ptr %46, align 4, !tbaa !6
  %47 = load i32, ptr @pels, align 4, !tbaa !6
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %25, %48
  %50 = getelementptr inbounds i8, ptr %10, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !10
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 3
  store i32 %52, ptr %53, align 4, !tbaa !6
  %54 = load i32, ptr @pels, align 4, !tbaa !6
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %25, %55
  %57 = getelementptr inbounds i8, ptr %11, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !10
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 4
  store i32 %59, ptr %60, align 4, !tbaa !6
  %61 = load i32, ptr @pels, align 4, !tbaa !6
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %25, %62
  %64 = getelementptr inbounds i8, ptr %12, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !10
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 5
  store i32 %66, ptr %67, align 4, !tbaa !6
  %68 = load i32, ptr @pels, align 4, !tbaa !6
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %25, %69
  %71 = getelementptr inbounds i8, ptr %13, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !10
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 6
  store i32 %73, ptr %74, align 4, !tbaa !6
  %75 = load i32, ptr @pels, align 4, !tbaa !6
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %25, %76
  %78 = getelementptr inbounds i8, ptr %14, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !10
  %80 = zext i8 %79 to i32
  %81 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 7
  store i32 %80, ptr %81, align 4, !tbaa !6
  %82 = load i32, ptr @pels, align 4, !tbaa !6
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %25, %83
  %85 = getelementptr inbounds i8, ptr %15, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !10
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 8
  store i32 %87, ptr %88, align 4, !tbaa !6
  %89 = load i32, ptr @pels, align 4, !tbaa !6
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %25, %90
  %92 = getelementptr inbounds i8, ptr %16, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !10
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 9
  store i32 %94, ptr %95, align 4, !tbaa !6
  %96 = load i32, ptr @pels, align 4, !tbaa !6
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %25, %97
  %99 = getelementptr inbounds i8, ptr %17, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !10
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 10
  store i32 %101, ptr %102, align 4, !tbaa !6
  %103 = load i32, ptr @pels, align 4, !tbaa !6
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %25, %104
  %106 = getelementptr inbounds i8, ptr %18, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !10
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 11
  store i32 %108, ptr %109, align 4, !tbaa !6
  %110 = load i32, ptr @pels, align 4, !tbaa !6
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %25, %111
  %113 = getelementptr inbounds i8, ptr %19, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !10
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 12
  store i32 %115, ptr %116, align 4, !tbaa !6
  %117 = load i32, ptr @pels, align 4, !tbaa !6
  %118 = sext i32 %117 to i64
  %119 = mul nsw i64 %25, %118
  %120 = getelementptr inbounds i8, ptr %20, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !10
  %122 = zext i8 %121 to i32
  %123 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 13
  store i32 %122, ptr %123, align 4, !tbaa !6
  %124 = load i32, ptr @pels, align 4, !tbaa !6
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %25, %125
  %127 = getelementptr inbounds i8, ptr %21, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !10
  %129 = zext i8 %128 to i32
  %130 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 14
  store i32 %129, ptr %130, align 4, !tbaa !6
  %131 = load i32, ptr @pels, align 4, !tbaa !6
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %25, %132
  %134 = getelementptr inbounds i8, ptr %22, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !10
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds [16 x i32], ptr %3, i64 %24, i64 15
  store i32 %136, ptr %137, align 4, !tbaa !6
  %138 = add nuw nsw i64 %24, 1
  %139 = icmp eq i64 %138, 16
  br i1 %139, label %140, label %23

140:                                              ; preds = %23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!11 = !{!12, !7, i64 4}
!12 = !{!"motionvector", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!13 = !{!12, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!12, !7, i64 16}
