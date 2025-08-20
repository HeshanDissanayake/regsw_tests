; ModuleID = 'jidctred.c'
source_filename = "jidctred.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @jpeg_idct_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [32 x i32], align 4
  %7 = getelementptr inbounds i8, ptr %0, i64 424
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #3
  %9 = getelementptr inbounds i8, ptr %1, i64 88
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  br label %14

11:                                               ; preds = %137
  %12 = getelementptr inbounds i8, ptr %8, i64 128
  %13 = zext i32 %4 to i64
  br label %143

14:                                               ; preds = %5, %137
  %15 = phi i32 [ 8, %5 ], [ %141, %137 ]
  %16 = phi ptr [ %6, %5 ], [ %140, %137 ]
  %17 = phi ptr [ %10, %5 ], [ %139, %137 ]
  %18 = phi ptr [ %2, %5 ], [ %138, %137 ]
  %19 = icmp eq i32 %15, 4
  br i1 %19, label %137, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %18, i64 16
  %22 = load i16, ptr %21, align 2, !tbaa !16
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds i8, ptr %18, i64 32
  %25 = load i16, ptr %24, align 2, !tbaa !16
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %23, i1 %26, i1 false
  br i1 %27, label %28, label %52

28:                                               ; preds = %20
  %29 = getelementptr inbounds i8, ptr %18, i64 48
  %30 = load i16, ptr %29, align 2, !tbaa !16
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %18, i64 80
  %34 = load i16, ptr %33, align 2, !tbaa !16
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %18, i64 96
  %38 = load i16, ptr %37, align 2, !tbaa !16
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %18, i64 112
  %42 = load i16, ptr %41, align 2, !tbaa !16
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i16, ptr %18, align 2, !tbaa !16
  %46 = sext i16 %45 to i32
  %47 = load i32, ptr %17, align 4, !tbaa !17
  %48 = shl nsw i32 %46, 2
  %49 = mul i32 %48, %47
  store i32 %49, ptr %16, align 4, !tbaa !17
  %50 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 %49, ptr %50, align 4, !tbaa !17
  %51 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 %49, ptr %51, align 4, !tbaa !17
  br label %133

52:                                               ; preds = %20, %40, %36, %32, %28
  %53 = phi i16 [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ %25, %20 ]
  %54 = load i16, ptr %18, align 2, !tbaa !16
  %55 = sext i16 %54 to i32
  %56 = load i32, ptr %17, align 4, !tbaa !17
  %57 = mul nsw i32 %56, %55
  %58 = sext i32 %57 to i64
  %59 = shl nsw i64 %58, 14
  %60 = sext i16 %53 to i32
  %61 = getelementptr inbounds i8, ptr %17, i64 64
  %62 = load i32, ptr %61, align 4, !tbaa !17
  %63 = mul nsw i32 %62, %60
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %18, i64 96
  %66 = load i16, ptr %65, align 2, !tbaa !16
  %67 = sext i16 %66 to i32
  %68 = getelementptr inbounds i8, ptr %17, i64 192
  %69 = load i32, ptr %68, align 4, !tbaa !17
  %70 = mul nsw i32 %69, %67
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %64, 15137
  %73 = mul nsw i64 %71, -6270
  %74 = add nsw i64 %73, %72
  %75 = add nsw i64 %74, %59
  %76 = sub nsw i64 %59, %74
  %77 = getelementptr inbounds i8, ptr %18, i64 112
  %78 = load i16, ptr %77, align 2, !tbaa !16
  %79 = sext i16 %78 to i32
  %80 = getelementptr inbounds i8, ptr %17, i64 224
  %81 = load i32, ptr %80, align 4, !tbaa !17
  %82 = mul nsw i32 %81, %79
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %18, i64 80
  %85 = load i16, ptr %84, align 2, !tbaa !16
  %86 = sext i16 %85 to i32
  %87 = getelementptr inbounds i8, ptr %17, i64 160
  %88 = load i32, ptr %87, align 4, !tbaa !17
  %89 = mul nsw i32 %88, %86
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %18, i64 48
  %92 = load i16, ptr %91, align 2, !tbaa !16
  %93 = sext i16 %92 to i32
  %94 = getelementptr inbounds i8, ptr %17, i64 96
  %95 = load i32, ptr %94, align 4, !tbaa !17
  %96 = mul nsw i32 %95, %93
  %97 = sext i32 %96 to i64
  %98 = sext i16 %22 to i32
  %99 = getelementptr inbounds i8, ptr %17, i64 32
  %100 = load i32, ptr %99, align 4, !tbaa !17
  %101 = mul nsw i32 %100, %98
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %83, -1730
  %104 = mul nsw i64 %90, 11893
  %105 = add nsw i64 %104, %103
  %106 = mul nsw i64 %97, -17799
  %107 = add nsw i64 %105, %106
  %108 = mul nsw i64 %102, 8697
  %109 = add nsw i64 %107, %108
  %110 = mul nsw i64 %83, -4176
  %111 = mul nsw i64 %90, -4926
  %112 = add nsw i64 %111, %110
  %113 = mul nsw i64 %97, 7373
  %114 = add nsw i64 %112, %113
  %115 = mul nsw i64 %102, 20995
  %116 = add nsw i64 %114, %115
  %117 = add nsw i64 %75, 2048
  %118 = add nsw i64 %117, %116
  %119 = lshr i64 %118, 12
  %120 = trunc i64 %119 to i32
  store i32 %120, ptr %16, align 4, !tbaa !17
  %121 = sub nsw i64 %117, %116
  %122 = lshr i64 %121, 12
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds i8, ptr %16, i64 96
  store i32 %123, ptr %124, align 4, !tbaa !17
  %125 = add nsw i64 %76, 2048
  %126 = add nsw i64 %125, %109
  %127 = lshr i64 %126, 12
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds i8, ptr %16, i64 32
  store i32 %128, ptr %129, align 4, !tbaa !17
  %130 = sub nsw i64 %125, %109
  %131 = lshr i64 %130, 12
  %132 = trunc i64 %131 to i32
  br label %133

133:                                              ; preds = %44, %52
  %134 = phi i64 [ 64, %52 ], [ 96, %44 ]
  %135 = phi i32 [ %132, %52 ], [ %49, %44 ]
  %136 = getelementptr inbounds i8, ptr %16, i64 %134
  store i32 %135, ptr %136, align 4, !tbaa !17
  br label %137

137:                                              ; preds = %133, %14
  %138 = getelementptr inbounds i8, ptr %18, i64 2
  %139 = getelementptr inbounds i8, ptr %17, i64 4
  %140 = getelementptr inbounds i8, ptr %16, i64 4
  %141 = add nsw i32 %15, -1
  %142 = icmp ugt i32 %15, 1
  br i1 %142, label %14, label %11, !llvm.loop !18

143:                                              ; preds = %11, %244
  %144 = phi i64 [ 0, %11 ], [ %249, %244 ]
  %145 = phi ptr [ %6, %11 ], [ %248, %244 ]
  %146 = getelementptr inbounds ptr, ptr %3, i64 %144
  %147 = load ptr, ptr %146, align 8, !tbaa !20
  %148 = getelementptr inbounds i8, ptr %147, i64 %13
  %149 = getelementptr inbounds i8, ptr %145, i64 4
  %150 = load i32, ptr %149, align 4, !tbaa !17
  %151 = icmp eq i32 %150, 0
  %152 = getelementptr inbounds i8, ptr %145, i64 8
  %153 = load i32, ptr %152, align 4, !tbaa !17
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %151, i1 %154, i1 false
  br i1 %155, label %156, label %182

156:                                              ; preds = %143
  %157 = getelementptr inbounds i8, ptr %145, i64 12
  %158 = load i32, ptr %157, align 4, !tbaa !17
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %156
  %161 = getelementptr inbounds i8, ptr %145, i64 20
  %162 = load i32, ptr %161, align 4, !tbaa !17
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %160
  %165 = getelementptr inbounds i8, ptr %145, i64 24
  %166 = load i32, ptr %165, align 4, !tbaa !17
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %164
  %169 = getelementptr inbounds i8, ptr %145, i64 28
  %170 = load i32, ptr %169, align 4, !tbaa !17
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %168
  %173 = load i32, ptr %145, align 4, !tbaa !17
  %174 = add i32 %173, 16
  %175 = lshr i32 %174, 5
  %176 = and i32 %175, 1023
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds i8, ptr %12, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !21
  store i8 %179, ptr %148, align 1, !tbaa !21
  %180 = getelementptr inbounds i8, ptr %148, i64 1
  store i8 %179, ptr %180, align 1, !tbaa !21
  %181 = getelementptr inbounds i8, ptr %148, i64 2
  store i8 %179, ptr %181, align 1, !tbaa !21
  br label %244

182:                                              ; preds = %143, %168, %164, %160, %156
  %183 = phi i32 [ 0, %168 ], [ 0, %164 ], [ 0, %160 ], [ 0, %156 ], [ %153, %143 ]
  %184 = load i32, ptr %145, align 4, !tbaa !17
  %185 = sext i32 %184 to i64
  %186 = shl nsw i64 %185, 14
  %187 = zext i32 %183 to i64
  %188 = mul nuw nsw i64 %187, 15137
  %189 = getelementptr inbounds i8, ptr %145, i64 24
  %190 = load i32, ptr %189, align 4, !tbaa !17
  %191 = zext i32 %190 to i64
  %192 = mul nsw i64 %191, -6270
  %193 = add nsw i64 %192, %188
  %194 = add nsw i64 %193, %186
  %195 = sub nsw i64 %186, %193
  %196 = getelementptr inbounds i8, ptr %145, i64 28
  %197 = load i32, ptr %196, align 4, !tbaa !17
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i8, ptr %145, i64 20
  %200 = load i32, ptr %199, align 4, !tbaa !17
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %145, i64 12
  %203 = load i32, ptr %202, align 4, !tbaa !17
  %204 = zext i32 %203 to i64
  %205 = zext i32 %150 to i64
  %206 = mul nsw i64 %198, -1730
  %207 = mul nuw nsw i64 %201, 11893
  %208 = mul nsw i64 %204, -17799
  %209 = mul nuw nsw i64 %205, 8697
  %210 = add nsw i64 %206, %209
  %211 = add nsw i64 %210, %207
  %212 = add nsw i64 %211, %208
  %213 = mul nsw i64 %198, -4176
  %214 = mul nsw i64 %201, -4926
  %215 = mul nuw nsw i64 %204, 7373
  %216 = mul nuw nsw i64 %205, 20995
  %217 = add nsw i64 %213, %216
  %218 = add nsw i64 %217, %214
  %219 = add nsw i64 %218, %215
  %220 = add nsw i64 %194, 262144
  %221 = add nsw i64 %220, %219
  %222 = lshr i64 %221, 19
  %223 = and i64 %222, 1023
  %224 = getelementptr inbounds i8, ptr %12, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !21
  store i8 %225, ptr %148, align 1, !tbaa !21
  %226 = sub nsw i64 %220, %219
  %227 = lshr i64 %226, 19
  %228 = and i64 %227, 1023
  %229 = getelementptr inbounds i8, ptr %12, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !21
  %231 = getelementptr inbounds i8, ptr %148, i64 3
  store i8 %230, ptr %231, align 1, !tbaa !21
  %232 = add nsw i64 %195, 262144
  %233 = add nsw i64 %232, %212
  %234 = lshr i64 %233, 19
  %235 = and i64 %234, 1023
  %236 = getelementptr inbounds i8, ptr %12, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !21
  %238 = getelementptr inbounds i8, ptr %148, i64 1
  store i8 %237, ptr %238, align 1, !tbaa !21
  %239 = sub nsw i64 %232, %212
  %240 = lshr i64 %239, 19
  %241 = and i64 %240, 1023
  %242 = getelementptr inbounds i8, ptr %12, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !21
  br label %244

244:                                              ; preds = %182, %172
  %245 = phi i64 [ 2, %182 ], [ 3, %172 ]
  %246 = phi i8 [ %243, %182 ], [ %179, %172 ]
  %247 = getelementptr inbounds i8, ptr %148, i64 %245
  store i8 %246, ptr %247, align 1, !tbaa !21
  %248 = getelementptr inbounds i8, ptr %145, i64 32
  %249 = add nuw nsw i64 %144, 1
  %250 = icmp eq i64 %249, 4
  br i1 %250, label %251, label %143, !llvm.loop !22

251:                                              ; preds = %244
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @jpeg_idct_2x2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 424
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %1, i64 88
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds i8, ptr %2, i64 16
  %11 = load i16, ptr %10, align 2, !tbaa !16
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds i8, ptr %2, i64 48
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = getelementptr inbounds i8, ptr %2, i64 80
  %19 = load i16, ptr %18, align 2, !tbaa !16
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %2, i64 112
  %23 = load i16, ptr %22, align 2, !tbaa !16
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i16, ptr %2, align 2, !tbaa !16
  %27 = sext i16 %26 to i32
  %28 = load i32, ptr %9, align 4, !tbaa !17
  %29 = shl nsw i32 %27, 2
  %30 = mul i32 %29, %28
  br label %77

31:                                               ; preds = %5, %21, %17
  %32 = phi i16 [ 0, %21 ], [ 0, %17 ], [ %14, %5 ]
  %33 = load i16, ptr %2, align 2, !tbaa !16
  %34 = sext i16 %33 to i32
  %35 = load i32, ptr %9, align 4, !tbaa !17
  %36 = mul nsw i32 %35, %34
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 15
  %39 = getelementptr inbounds i8, ptr %2, i64 112
  %40 = load i16, ptr %39, align 2, !tbaa !16
  %41 = sext i16 %40 to i32
  %42 = getelementptr inbounds i8, ptr %9, i64 224
  %43 = load i32, ptr %42, align 4, !tbaa !17
  %44 = mul nsw i32 %43, %41
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, -5906
  %47 = getelementptr inbounds i8, ptr %2, i64 80
  %48 = load i16, ptr %47, align 2, !tbaa !16
  %49 = sext i16 %48 to i32
  %50 = getelementptr inbounds i8, ptr %9, i64 160
  %51 = load i32, ptr %50, align 4, !tbaa !17
  %52 = mul nsw i32 %51, %49
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, 6967
  %55 = add nsw i64 %54, %46
  %56 = sext i16 %32 to i32
  %57 = getelementptr inbounds i8, ptr %9, i64 96
  %58 = load i32, ptr %57, align 4, !tbaa !17
  %59 = mul nsw i32 %58, %56
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %60, -10426
  %62 = add nsw i64 %55, %61
  %63 = sext i16 %11 to i32
  %64 = getelementptr inbounds i8, ptr %9, i64 32
  %65 = load i32, ptr %64, align 4, !tbaa !17
  %66 = mul nsw i32 %65, %63
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, 29692
  %69 = add nsw i64 %62, %68
  %70 = or disjoint i64 %38, 4096
  %71 = add nsw i64 %70, %69
  %72 = lshr i64 %71, 13
  %73 = trunc i64 %72 to i32
  %74 = sub nsw i64 %70, %69
  %75 = lshr i64 %74, 13
  %76 = trunc i64 %75 to i32
  br label %77

77:                                               ; preds = %25, %31
  %78 = phi i32 [ %30, %25 ], [ %76, %31 ]
  %79 = phi i32 [ %30, %25 ], [ %73, %31 ]
  %80 = getelementptr inbounds i8, ptr %2, i64 2
  %81 = getelementptr inbounds i8, ptr %9, i64 4
  %82 = getelementptr inbounds i8, ptr %2, i64 18
  %83 = load i16, ptr %82, align 2, !tbaa !16
  %84 = icmp eq i16 %83, 0
  %85 = getelementptr inbounds i8, ptr %2, i64 50
  %86 = load i16, ptr %85, align 2, !tbaa !16
  %87 = icmp eq i16 %86, 0
  %88 = select i1 %84, i1 %87, i1 false
  br i1 %88, label %89, label %97

89:                                               ; preds = %77
  %90 = getelementptr inbounds i8, ptr %2, i64 82
  %91 = load i16, ptr %90, align 2, !tbaa !16
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = getelementptr inbounds i8, ptr %2, i64 114
  %95 = load i16, ptr %94, align 2, !tbaa !16
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %143, label %97

97:                                               ; preds = %77, %93, %89
  %98 = phi i16 [ 0, %93 ], [ 0, %89 ], [ %86, %77 ]
  %99 = load i16, ptr %80, align 2, !tbaa !16
  %100 = sext i16 %99 to i32
  %101 = load i32, ptr %81, align 4, !tbaa !17
  %102 = mul nsw i32 %101, %100
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 15
  %105 = getelementptr inbounds i8, ptr %2, i64 114
  %106 = load i16, ptr %105, align 2, !tbaa !16
  %107 = sext i16 %106 to i32
  %108 = getelementptr inbounds i8, ptr %9, i64 228
  %109 = load i32, ptr %108, align 4, !tbaa !17
  %110 = mul nsw i32 %109, %107
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, -5906
  %113 = getelementptr inbounds i8, ptr %2, i64 82
  %114 = load i16, ptr %113, align 2, !tbaa !16
  %115 = sext i16 %114 to i32
  %116 = getelementptr inbounds i8, ptr %9, i64 164
  %117 = load i32, ptr %116, align 4, !tbaa !17
  %118 = mul nsw i32 %117, %115
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %119, 6967
  %121 = add nsw i64 %120, %112
  %122 = sext i16 %98 to i32
  %123 = getelementptr inbounds i8, ptr %9, i64 100
  %124 = load i32, ptr %123, align 4, !tbaa !17
  %125 = mul nsw i32 %124, %122
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, -10426
  %128 = add nsw i64 %121, %127
  %129 = sext i16 %83 to i32
  %130 = getelementptr inbounds i8, ptr %9, i64 36
  %131 = load i32, ptr %130, align 4, !tbaa !17
  %132 = mul nsw i32 %131, %129
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, 29692
  %135 = add nsw i64 %128, %134
  %136 = or disjoint i64 %104, 4096
  %137 = add nsw i64 %136, %135
  %138 = lshr i64 %137, 13
  %139 = trunc i64 %138 to i32
  %140 = sub nsw i64 %136, %135
  %141 = lshr i64 %140, 13
  %142 = trunc i64 %141 to i32
  br label %149

143:                                              ; preds = %93
  %144 = load i16, ptr %80, align 2, !tbaa !16
  %145 = sext i16 %144 to i32
  %146 = load i32, ptr %81, align 4, !tbaa !17
  %147 = shl nsw i32 %145, 2
  %148 = mul i32 %147, %146
  br label %149

149:                                              ; preds = %143, %97
  %150 = phi i32 [ %148, %143 ], [ %142, %97 ]
  %151 = phi i32 [ %148, %143 ], [ %139, %97 ]
  %152 = getelementptr inbounds i8, ptr %2, i64 6
  %153 = getelementptr inbounds i8, ptr %9, i64 12
  %154 = getelementptr inbounds i8, ptr %2, i64 22
  %155 = load i16, ptr %154, align 2, !tbaa !16
  %156 = icmp eq i16 %155, 0
  %157 = getelementptr inbounds i8, ptr %2, i64 54
  %158 = load i16, ptr %157, align 2, !tbaa !16
  %159 = icmp eq i16 %158, 0
  %160 = select i1 %156, i1 %159, i1 false
  br i1 %160, label %161, label %169

161:                                              ; preds = %149
  %162 = getelementptr inbounds i8, ptr %2, i64 86
  %163 = load i16, ptr %162, align 2, !tbaa !16
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = getelementptr inbounds i8, ptr %2, i64 118
  %167 = load i16, ptr %166, align 2, !tbaa !16
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %215, label %169

169:                                              ; preds = %149, %165, %161
  %170 = phi i16 [ 0, %165 ], [ 0, %161 ], [ %158, %149 ]
  %171 = load i16, ptr %152, align 2, !tbaa !16
  %172 = sext i16 %171 to i32
  %173 = load i32, ptr %153, align 4, !tbaa !17
  %174 = mul nsw i32 %173, %172
  %175 = sext i32 %174 to i64
  %176 = shl nsw i64 %175, 15
  %177 = getelementptr inbounds i8, ptr %2, i64 118
  %178 = load i16, ptr %177, align 2, !tbaa !16
  %179 = sext i16 %178 to i32
  %180 = getelementptr inbounds i8, ptr %9, i64 236
  %181 = load i32, ptr %180, align 4, !tbaa !17
  %182 = mul nsw i32 %181, %179
  %183 = sext i32 %182 to i64
  %184 = mul nsw i64 %183, -5906
  %185 = getelementptr inbounds i8, ptr %2, i64 86
  %186 = load i16, ptr %185, align 2, !tbaa !16
  %187 = sext i16 %186 to i32
  %188 = getelementptr inbounds i8, ptr %9, i64 172
  %189 = load i32, ptr %188, align 4, !tbaa !17
  %190 = mul nsw i32 %189, %187
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %191, 6967
  %193 = add nsw i64 %192, %184
  %194 = sext i16 %170 to i32
  %195 = getelementptr inbounds i8, ptr %9, i64 108
  %196 = load i32, ptr %195, align 4, !tbaa !17
  %197 = mul nsw i32 %196, %194
  %198 = sext i32 %197 to i64
  %199 = mul nsw i64 %198, -10426
  %200 = add nsw i64 %193, %199
  %201 = sext i16 %155 to i32
  %202 = getelementptr inbounds i8, ptr %9, i64 44
  %203 = load i32, ptr %202, align 4, !tbaa !17
  %204 = mul nsw i32 %203, %201
  %205 = sext i32 %204 to i64
  %206 = mul nsw i64 %205, 29692
  %207 = add nsw i64 %200, %206
  %208 = or disjoint i64 %176, 4096
  %209 = add nsw i64 %208, %207
  %210 = lshr i64 %209, 13
  %211 = trunc i64 %210 to i32
  %212 = sub nsw i64 %208, %207
  %213 = lshr i64 %212, 13
  %214 = trunc i64 %213 to i32
  br label %221

215:                                              ; preds = %165
  %216 = load i16, ptr %152, align 2, !tbaa !16
  %217 = sext i16 %216 to i32
  %218 = load i32, ptr %153, align 4, !tbaa !17
  %219 = shl nsw i32 %217, 2
  %220 = mul i32 %219, %218
  br label %221

221:                                              ; preds = %215, %169
  %222 = phi i32 [ %220, %215 ], [ %214, %169 ]
  %223 = phi i32 [ %220, %215 ], [ %211, %169 ]
  %224 = getelementptr inbounds i8, ptr %2, i64 10
  %225 = getelementptr inbounds i8, ptr %9, i64 20
  %226 = getelementptr inbounds i8, ptr %2, i64 26
  %227 = load i16, ptr %226, align 2, !tbaa !16
  %228 = icmp eq i16 %227, 0
  %229 = getelementptr inbounds i8, ptr %2, i64 58
  %230 = load i16, ptr %229, align 2, !tbaa !16
  %231 = icmp eq i16 %230, 0
  %232 = select i1 %228, i1 %231, i1 false
  br i1 %232, label %233, label %241

233:                                              ; preds = %221
  %234 = getelementptr inbounds i8, ptr %2, i64 90
  %235 = load i16, ptr %234, align 2, !tbaa !16
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = getelementptr inbounds i8, ptr %2, i64 122
  %239 = load i16, ptr %238, align 2, !tbaa !16
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %287, label %241

241:                                              ; preds = %221, %237, %233
  %242 = phi i16 [ 0, %237 ], [ 0, %233 ], [ %230, %221 ]
  %243 = load i16, ptr %224, align 2, !tbaa !16
  %244 = sext i16 %243 to i32
  %245 = load i32, ptr %225, align 4, !tbaa !17
  %246 = mul nsw i32 %245, %244
  %247 = sext i32 %246 to i64
  %248 = shl nsw i64 %247, 15
  %249 = getelementptr inbounds i8, ptr %2, i64 122
  %250 = load i16, ptr %249, align 2, !tbaa !16
  %251 = sext i16 %250 to i32
  %252 = getelementptr inbounds i8, ptr %9, i64 244
  %253 = load i32, ptr %252, align 4, !tbaa !17
  %254 = mul nsw i32 %253, %251
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %255, -5906
  %257 = getelementptr inbounds i8, ptr %2, i64 90
  %258 = load i16, ptr %257, align 2, !tbaa !16
  %259 = sext i16 %258 to i32
  %260 = getelementptr inbounds i8, ptr %9, i64 180
  %261 = load i32, ptr %260, align 4, !tbaa !17
  %262 = mul nsw i32 %261, %259
  %263 = sext i32 %262 to i64
  %264 = mul nsw i64 %263, 6967
  %265 = add nsw i64 %264, %256
  %266 = sext i16 %242 to i32
  %267 = getelementptr inbounds i8, ptr %9, i64 116
  %268 = load i32, ptr %267, align 4, !tbaa !17
  %269 = mul nsw i32 %268, %266
  %270 = sext i32 %269 to i64
  %271 = mul nsw i64 %270, -10426
  %272 = add nsw i64 %265, %271
  %273 = sext i16 %227 to i32
  %274 = getelementptr inbounds i8, ptr %9, i64 52
  %275 = load i32, ptr %274, align 4, !tbaa !17
  %276 = mul nsw i32 %275, %273
  %277 = sext i32 %276 to i64
  %278 = mul nsw i64 %277, 29692
  %279 = add nsw i64 %272, %278
  %280 = or disjoint i64 %248, 4096
  %281 = add nsw i64 %280, %279
  %282 = lshr i64 %281, 13
  %283 = trunc i64 %282 to i32
  %284 = sub nsw i64 %280, %279
  %285 = lshr i64 %284, 13
  %286 = trunc i64 %285 to i32
  br label %293

287:                                              ; preds = %237
  %288 = load i16, ptr %224, align 2, !tbaa !16
  %289 = sext i16 %288 to i32
  %290 = load i32, ptr %225, align 4, !tbaa !17
  %291 = shl nsw i32 %289, 2
  %292 = mul i32 %291, %290
  br label %293

293:                                              ; preds = %287, %241
  %294 = phi i32 [ %292, %287 ], [ %286, %241 ]
  %295 = phi i32 [ %292, %287 ], [ %283, %241 ]
  %296 = getelementptr inbounds i8, ptr %2, i64 14
  %297 = getelementptr inbounds i8, ptr %9, i64 28
  %298 = getelementptr inbounds i8, ptr %2, i64 30
  %299 = load i16, ptr %298, align 2, !tbaa !16
  %300 = icmp eq i16 %299, 0
  %301 = getelementptr inbounds i8, ptr %2, i64 62
  %302 = load i16, ptr %301, align 2, !tbaa !16
  %303 = icmp eq i16 %302, 0
  %304 = select i1 %300, i1 %303, i1 false
  br i1 %304, label %305, label %313

305:                                              ; preds = %293
  %306 = getelementptr inbounds i8, ptr %2, i64 94
  %307 = load i16, ptr %306, align 2, !tbaa !16
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = getelementptr inbounds i8, ptr %2, i64 126
  %311 = load i16, ptr %310, align 2, !tbaa !16
  %312 = icmp eq i16 %311, 0
  br i1 %312, label %359, label %313

313:                                              ; preds = %293, %309, %305
  %314 = phi i16 [ 0, %309 ], [ 0, %305 ], [ %302, %293 ]
  %315 = load i16, ptr %296, align 2, !tbaa !16
  %316 = sext i16 %315 to i32
  %317 = load i32, ptr %297, align 4, !tbaa !17
  %318 = mul nsw i32 %317, %316
  %319 = sext i32 %318 to i64
  %320 = shl nsw i64 %319, 15
  %321 = getelementptr inbounds i8, ptr %2, i64 126
  %322 = load i16, ptr %321, align 2, !tbaa !16
  %323 = sext i16 %322 to i32
  %324 = getelementptr inbounds i8, ptr %9, i64 252
  %325 = load i32, ptr %324, align 4, !tbaa !17
  %326 = mul nsw i32 %325, %323
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, -5906
  %329 = getelementptr inbounds i8, ptr %2, i64 94
  %330 = load i16, ptr %329, align 2, !tbaa !16
  %331 = sext i16 %330 to i32
  %332 = getelementptr inbounds i8, ptr %9, i64 188
  %333 = load i32, ptr %332, align 4, !tbaa !17
  %334 = mul nsw i32 %333, %331
  %335 = sext i32 %334 to i64
  %336 = mul nsw i64 %335, 6967
  %337 = add nsw i64 %336, %328
  %338 = sext i16 %314 to i32
  %339 = getelementptr inbounds i8, ptr %9, i64 124
  %340 = load i32, ptr %339, align 4, !tbaa !17
  %341 = mul nsw i32 %340, %338
  %342 = sext i32 %341 to i64
  %343 = mul nsw i64 %342, -10426
  %344 = add nsw i64 %337, %343
  %345 = sext i16 %299 to i32
  %346 = getelementptr inbounds i8, ptr %9, i64 60
  %347 = load i32, ptr %346, align 4, !tbaa !17
  %348 = mul nsw i32 %347, %345
  %349 = sext i32 %348 to i64
  %350 = mul nsw i64 %349, 29692
  %351 = add nsw i64 %344, %350
  %352 = or disjoint i64 %320, 4096
  %353 = add nsw i64 %352, %351
  %354 = lshr i64 %353, 13
  %355 = trunc i64 %354 to i32
  %356 = sub nsw i64 %352, %351
  %357 = lshr i64 %356, 13
  %358 = trunc i64 %357 to i32
  br label %365

359:                                              ; preds = %309
  %360 = load i16, ptr %296, align 2, !tbaa !16
  %361 = sext i16 %360 to i32
  %362 = load i32, ptr %297, align 4, !tbaa !17
  %363 = shl nsw i32 %361, 2
  %364 = mul i32 %363, %362
  br label %365

365:                                              ; preds = %359, %313
  %366 = phi i32 [ %364, %359 ], [ %358, %313 ]
  %367 = phi i32 [ %364, %359 ], [ %355, %313 ]
  %368 = getelementptr inbounds i8, ptr %7, i64 128
  %369 = zext i32 %4 to i64
  %370 = load ptr, ptr %3, align 8, !tbaa !20
  %371 = getelementptr inbounds i8, ptr %370, i64 %369
  %372 = icmp eq i32 %151, 0
  %373 = icmp eq i32 %223, 0
  %374 = select i1 %372, i1 %373, i1 false
  %375 = icmp eq i32 %295, 0
  %376 = select i1 %374, i1 %375, i1 false
  %377 = icmp eq i32 %367, 0
  %378 = select i1 %376, i1 %377, i1 false
  br i1 %378, label %379, label %386

379:                                              ; preds = %365
  %380 = add i32 %79, 16
  %381 = lshr i32 %380, 5
  %382 = and i32 %381, 1023
  %383 = zext nneg i32 %382 to i64
  %384 = getelementptr inbounds i8, ptr %368, i64 %383
  %385 = load i8, ptr %384, align 1, !tbaa !21
  store i8 %385, ptr %371, align 1, !tbaa !21
  br label %411

386:                                              ; preds = %365
  %387 = sext i32 %79 to i64
  %388 = shl nsw i64 %387, 15
  %389 = zext i32 %367 to i64
  %390 = mul nsw i64 %389, -5906
  %391 = zext i32 %295 to i64
  %392 = mul nuw nsw i64 %391, 6967
  %393 = zext i32 %223 to i64
  %394 = mul nsw i64 %393, -10426
  %395 = zext i32 %151 to i64
  %396 = mul nuw nsw i64 %395, 29692
  %397 = add nsw i64 %390, %396
  %398 = add nsw i64 %397, %392
  %399 = add nsw i64 %398, %394
  %400 = add nsw i64 %388, 524288
  %401 = add nsw i64 %400, %399
  %402 = lshr i64 %401, 20
  %403 = and i64 %402, 1023
  %404 = getelementptr inbounds i8, ptr %368, i64 %403
  %405 = load i8, ptr %404, align 1, !tbaa !21
  store i8 %405, ptr %371, align 1, !tbaa !21
  %406 = sub nsw i64 %400, %399
  %407 = lshr i64 %406, 20
  %408 = and i64 %407, 1023
  %409 = getelementptr inbounds i8, ptr %368, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !21
  br label %411

411:                                              ; preds = %386, %379
  %412 = phi i8 [ %410, %386 ], [ %385, %379 ]
  %413 = getelementptr inbounds i8, ptr %371, i64 1
  store i8 %412, ptr %413, align 1, !tbaa !21
  %414 = getelementptr inbounds i8, ptr %3, i64 8
  %415 = load ptr, ptr %414, align 8, !tbaa !20
  %416 = getelementptr inbounds i8, ptr %415, i64 %369
  %417 = icmp eq i32 %150, 0
  %418 = icmp eq i32 %222, 0
  %419 = select i1 %417, i1 %418, i1 false
  %420 = icmp eq i32 %294, 0
  %421 = select i1 %419, i1 %420, i1 false
  %422 = icmp eq i32 %366, 0
  %423 = select i1 %421, i1 %422, i1 false
  br i1 %423, label %449, label %424

424:                                              ; preds = %411
  %425 = sext i32 %78 to i64
  %426 = shl nsw i64 %425, 15
  %427 = zext i32 %366 to i64
  %428 = mul nsw i64 %427, -5906
  %429 = zext i32 %294 to i64
  %430 = mul nuw nsw i64 %429, 6967
  %431 = zext i32 %222 to i64
  %432 = mul nsw i64 %431, -10426
  %433 = zext i32 %150 to i64
  %434 = mul nuw nsw i64 %433, 29692
  %435 = add nsw i64 %428, %434
  %436 = add nsw i64 %435, %430
  %437 = add nsw i64 %436, %432
  %438 = add nsw i64 %426, 524288
  %439 = add nsw i64 %438, %437
  %440 = lshr i64 %439, 20
  %441 = and i64 %440, 1023
  %442 = getelementptr inbounds i8, ptr %368, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !21
  store i8 %443, ptr %416, align 1, !tbaa !21
  %444 = sub nsw i64 %438, %437
  %445 = lshr i64 %444, 20
  %446 = and i64 %445, 1023
  %447 = getelementptr inbounds i8, ptr %368, i64 %446
  %448 = load i8, ptr %447, align 1, !tbaa !21
  br label %456

449:                                              ; preds = %411
  %450 = add i32 %78, 16
  %451 = lshr i32 %450, 5
  %452 = and i32 %451, 1023
  %453 = zext nneg i32 %452 to i64
  %454 = getelementptr inbounds i8, ptr %368, i64 %453
  %455 = load i8, ptr %454, align 1, !tbaa !21
  store i8 %455, ptr %416, align 1, !tbaa !21
  br label %456

456:                                              ; preds = %449, %424
  %457 = phi i8 [ %455, %449 ], [ %448, %424 ]
  %458 = getelementptr inbounds i8, ptr %416, i64 1
  store i8 %457, ptr %458, align 1, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @jpeg_idct_1x1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 424
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 128
  %9 = getelementptr inbounds i8, ptr %1, i64 88
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = load i16, ptr %2, align 2, !tbaa !16
  %12 = zext i16 %11 to i32
  %13 = load i32, ptr %10, align 4, !tbaa !17
  %14 = mul i32 %13, %12
  %15 = add i32 %14, 4
  %16 = lshr i32 %15, 3
  %17 = and i32 %16, 1023
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %8, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !21
  %21 = load ptr, ptr %3, align 8, !tbaa !20
  %22 = zext i32 %4 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  store i8 %20, ptr %23, align 1, !tbaa !21
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }

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
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!8, !8, i64 0}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !19}
