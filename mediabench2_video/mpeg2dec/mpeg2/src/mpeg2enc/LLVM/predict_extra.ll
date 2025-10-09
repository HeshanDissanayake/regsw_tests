; ModuleID = 'predict.c'
source_filename = "predict.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.mbinfo = type { i32, i32, i32, i32, i32, i32, [2 x [2 x [2 x i32]]], [2 x [2 x i32]], [2 x i32], double, i32 }

@height2 = external dso_local local_unnamed_addr global i32, align 4
@width = external dso_local local_unnamed_addr global i32, align 4
@pict_type = external dso_local local_unnamed_addr global i32, align 4
@pict_struct = external dso_local local_unnamed_addr global i32, align 4
@quiet = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid motion_type\0A\00", align 1
@width2 = external dso_local local_unnamed_addr global i32, align 4
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@chrom_width = external dso_local local_unnamed_addr global i32, align 4
@chrom_width2 = external dso_local local_unnamed_addr global i32, align 4
@topfirst = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nofree nounwind
define dso_local void @predict(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [2 x [2 x i32]], align 4
  %7 = load i32, ptr @height2, align 4, !tbaa !6
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %333

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %2, i64 8
  %11 = getelementptr inbounds i8, ptr %2, i64 16
  %12 = icmp ne i32 %3, 0
  %13 = select i1 %12, ptr %1, ptr %0
  %14 = getelementptr inbounds i8, ptr %6, i64 4
  %15 = getelementptr inbounds i8, ptr %6, i64 8
  %16 = getelementptr inbounds i8, ptr %6, i64 12
  %17 = load i32, ptr @width, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %333

19:                                               ; preds = %9, %327
  %20 = phi i32 [ %328, %327 ], [ %7, %9 ]
  %21 = phi i32 [ %329, %327 ], [ %17, %9 ]
  %22 = phi i32 [ %330, %327 ], [ 0, %9 ]
  %23 = phi i32 [ %331, %327 ], [ 0, %9 ]
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %25, label %327

25:                                               ; preds = %19
  %26 = or disjoint i32 %23, 8
  %27 = lshr exact i32 %23, 1
  %28 = sext i32 %22 to i64
  br label %29

29:                                               ; preds = %25, %318
  %30 = phi i64 [ 0, %25 ], [ %320, %318 ]
  %31 = phi i64 [ %28, %25 ], [ %319, %318 ]
  %32 = phi i32 [ %21, %25 ], [ %321, %318 ]
  %33 = load i32, ptr @pict_type, align 4, !tbaa !6
  %34 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %35 = getelementptr inbounds %struct.mbinfo, ptr %4, i64 %31
  %36 = load i32, ptr %35, align 8, !tbaa !10
  %37 = getelementptr inbounds i8, ptr %35, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa !13
  %39 = getelementptr inbounds i8, ptr %35, i64 24
  %40 = getelementptr inbounds i8, ptr %35, i64 56
  %41 = getelementptr inbounds i8, ptr %35, i64 72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %42 = and i32 %36, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %151, label %44

44:                                               ; preds = %29
  %45 = load ptr, ptr %2, align 8, !tbaa !14
  %46 = icmp eq i32 %34, 2
  %47 = select i1 %46, i32 %32, i32 0
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %45, i64 %48
  %50 = getelementptr inbounds i8, ptr %49, i64 %30
  %51 = load i32, ptr @width2, align 4, !tbaa !6
  %52 = mul nsw i32 %51, %23
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %54, i8 -128, i64 16, i1 false), !tbaa !16
  %55 = load i32, ptr @width2, align 4, !tbaa !6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %57, i8 -128, i64 16, i1 false), !tbaa !16
  %58 = load i32, ptr @width2, align 4, !tbaa !6
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %60, i8 -128, i64 16, i1 false), !tbaa !16
  %61 = load i32, ptr @width2, align 4, !tbaa !6
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %63, i8 -128, i64 16, i1 false), !tbaa !16
  %64 = load i32, ptr @width2, align 4, !tbaa !6
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %63, i64 %65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %66, i8 -128, i64 16, i1 false), !tbaa !16
  %67 = load i32, ptr @width2, align 4, !tbaa !6
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %69, i8 -128, i64 16, i1 false), !tbaa !16
  %70 = load i32, ptr @width2, align 4, !tbaa !6
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %72, i8 -128, i64 16, i1 false), !tbaa !16
  %73 = load i32, ptr @width2, align 4, !tbaa !6
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %72, i64 %74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %75, i8 -128, i64 16, i1 false), !tbaa !16
  %76 = load i32, ptr @width2, align 4, !tbaa !6
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %75, i64 %77
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %78, i8 -128, i64 16, i1 false), !tbaa !16
  %79 = load i32, ptr @width2, align 4, !tbaa !6
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %78, i64 %80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %81, i8 -128, i64 16, i1 false), !tbaa !16
  %82 = load i32, ptr @width2, align 4, !tbaa !6
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %81, i64 %83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %84, i8 -128, i64 16, i1 false), !tbaa !16
  %85 = load i32, ptr @width2, align 4, !tbaa !6
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %84, i64 %86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %87, i8 -128, i64 16, i1 false), !tbaa !16
  %88 = load i32, ptr @width2, align 4, !tbaa !6
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %90, i8 -128, i64 16, i1 false), !tbaa !16
  %91 = load i32, ptr @width2, align 4, !tbaa !6
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %90, i64 %92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %93, i8 -128, i64 16, i1 false), !tbaa !16
  %94 = load i32, ptr @width2, align 4, !tbaa !6
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %96, i8 -128, i64 16, i1 false), !tbaa !16
  %97 = load i32, ptr @width2, align 4, !tbaa !6
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %96, i64 %98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %99, i8 -128, i64 16, i1 false), !tbaa !16
  %100 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %101 = icmp ne i32 %100, 3
  %102 = zext i1 %101 to i32
  %103 = trunc nuw nsw i64 %30 to i32
  %104 = lshr exact i32 %103, %102
  %105 = select i1 %101, i64 8, i64 16
  %106 = icmp eq i32 %100, 1
  %107 = zext i1 %106 to i32
  %108 = lshr exact i32 %23, %107
  %109 = select i1 %106, i32 8, i32 16
  %110 = load ptr, ptr %10, align 8, !tbaa !14
  %111 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %112 = icmp eq i32 %111, 2
  %113 = load i32, ptr @chrom_width, align 4
  %114 = select i1 %112, i32 %113, i32 0
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %110, i64 %115
  %117 = zext nneg i32 %104 to i64
  %118 = getelementptr inbounds i8, ptr %116, i64 %117
  %119 = load i32, ptr @chrom_width2, align 4, !tbaa !6
  %120 = mul nsw i32 %119, %108
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %118, i64 %121
  br label %123

123:                                              ; preds = %123, %44
  %124 = phi ptr [ %122, %44 ], [ %128, %123 ]
  %125 = phi i32 [ 0, %44 ], [ %129, %123 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %124, i8 -128, i64 %105, i1 false), !tbaa !16
  %126 = load i32, ptr @chrom_width2, align 4, !tbaa !6
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %124, i64 %127
  %129 = add nuw nsw i32 %125, 1
  %130 = icmp eq i32 %129, %109
  br i1 %130, label %131, label %123

131:                                              ; preds = %123
  %132 = load ptr, ptr %11, align 8, !tbaa !14
  %133 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %134 = icmp eq i32 %133, 2
  %135 = load i32, ptr @chrom_width, align 4
  %136 = select i1 %134, i32 %135, i32 0
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %132, i64 %137
  %139 = getelementptr inbounds i8, ptr %138, i64 %117
  %140 = mul nsw i32 %126, %108
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %139, i64 %141
  br label %143

143:                                              ; preds = %143, %131
  %144 = phi ptr [ %142, %131 ], [ %148, %143 ]
  %145 = phi i32 [ 0, %131 ], [ %149, %143 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %144, i8 -128, i64 %105, i1 false), !tbaa !16
  %146 = load i32, ptr @chrom_width2, align 4, !tbaa !6
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %144, i64 %147
  %149 = add nuw nsw i32 %145, 1
  %150 = icmp eq i32 %149, %109
  br i1 %150, label %318, label %143

151:                                              ; preds = %29
  %152 = and i32 %36, 8
  %153 = icmp ne i32 %152, 0
  %154 = icmp eq i32 %33, 2
  %155 = or i1 %154, %153
  br i1 %155, label %156, label %254

156:                                              ; preds = %151
  %157 = icmp eq i32 %34, 3
  br i1 %157, label %158, label %202

158:                                              ; preds = %156
  %159 = icmp ne i32 %38, 2
  %160 = and i1 %159, %153
  br i1 %160, label %166, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr %39, align 4, !tbaa !6
  %163 = getelementptr inbounds i8, ptr %35, i64 28
  %164 = load i32, ptr %163, align 4, !tbaa !6
  %165 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef readonly %0, i32 noundef signext 0, ptr noundef readonly %2, i32 noundef signext 0, i32 noundef signext %32, i32 noundef signext 16, i32 noundef signext %165, i32 noundef signext %23, i32 noundef signext %162, i32 noundef signext %164, i32 noundef signext 0)
  br label %254

166:                                              ; preds = %158
  switch i32 %38, label %196 [
    i32 1, label %167
    i32 3, label %182
  ]

167:                                              ; preds = %166
  %168 = load i32, ptr %40, align 4, !tbaa !6
  %169 = shl i32 %32, 1
  %170 = load i32, ptr %39, align 4, !tbaa !6
  %171 = getelementptr inbounds i8, ptr %35, i64 28
  %172 = load i32, ptr %171, align 4, !tbaa !6
  %173 = ashr i32 %172, 1
  %174 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef readonly %0, i32 noundef signext %168, ptr noundef readonly %2, i32 noundef signext 0, i32 noundef signext %169, i32 noundef signext 8, i32 noundef signext %174, i32 noundef signext %27, i32 noundef signext %170, i32 noundef signext %173, i32 noundef signext 0)
  %175 = getelementptr inbounds i8, ptr %35, i64 64
  %176 = load i32, ptr %175, align 4, !tbaa !6
  %177 = getelementptr inbounds i8, ptr %35, i64 40
  %178 = load i32, ptr %177, align 4, !tbaa !6
  %179 = getelementptr inbounds i8, ptr %35, i64 44
  %180 = load i32, ptr %179, align 4, !tbaa !6
  %181 = ashr i32 %180, 1
  tail call fastcc void @pred(ptr noundef readonly %0, i32 noundef signext %176, ptr noundef readonly %2, i32 noundef signext 1, i32 noundef signext %169, i32 noundef signext 8, i32 noundef signext %174, i32 noundef signext %27, i32 noundef signext %178, i32 noundef signext %181, i32 noundef signext 0)
  br label %254

182:                                              ; preds = %166
  %183 = load i32, ptr %39, align 4, !tbaa !6
  %184 = getelementptr inbounds i8, ptr %35, i64 28
  %185 = load i32, ptr %184, align 4, !tbaa !6
  %186 = ashr i32 %185, 1
  call fastcc void @calc_DMV(ptr noundef nonnull %6, ptr noundef nonnull readonly %41, i32 noundef signext %183, i32 noundef signext %186)
  %187 = shl i32 %32, 1
  %188 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef readonly %0, i32 noundef signext 0, ptr noundef readonly %2, i32 noundef signext 0, i32 noundef signext %187, i32 noundef signext 8, i32 noundef signext %188, i32 noundef signext %27, i32 noundef signext %183, i32 noundef signext %186, i32 noundef signext 0)
  %189 = load i32, ptr %39, align 4, !tbaa !6
  %190 = load i32, ptr %184, align 4, !tbaa !6
  %191 = ashr i32 %190, 1
  tail call fastcc void @pred(ptr noundef readonly %0, i32 noundef signext 1, ptr noundef readonly %2, i32 noundef signext 1, i32 noundef signext %187, i32 noundef signext 8, i32 noundef signext %188, i32 noundef signext %27, i32 noundef signext %189, i32 noundef signext %191, i32 noundef signext 0)
  %192 = load i32, ptr %6, align 4, !tbaa !6
  %193 = load i32, ptr %14, align 4, !tbaa !6
  tail call fastcc void @pred(ptr noundef readonly %0, i32 noundef signext 1, ptr noundef readonly %2, i32 noundef signext 0, i32 noundef signext %187, i32 noundef signext 8, i32 noundef signext %188, i32 noundef signext %27, i32 noundef signext %192, i32 noundef signext %193, i32 noundef signext 1)
  %194 = load i32, ptr %15, align 4, !tbaa !6
  %195 = load i32, ptr %16, align 4, !tbaa !6
  tail call fastcc void @pred(ptr noundef readonly %0, i32 noundef signext 0, ptr noundef readonly %2, i32 noundef signext 1, i32 noundef signext %187, i32 noundef signext 8, i32 noundef signext %188, i32 noundef signext %27, i32 noundef signext %194, i32 noundef signext %195, i32 noundef signext 1)
  br label %254

196:                                              ; preds = %166
  %197 = load i32, ptr @quiet, align 4, !tbaa !6
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %254

199:                                              ; preds = %196
  %200 = load ptr, ptr @stderr, align 8, !tbaa !14
  %201 = tail call i64 @fwrite(ptr nonnull @.str, i64 20, i64 1, ptr %200) #7
  br label %254

202:                                              ; preds = %156
  %203 = icmp eq i32 %34, 2
  %204 = zext i1 %203 to i32
  %205 = and i1 %12, %154
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, ptr %40, align 4, !tbaa !6
  %208 = icmp eq i32 %207, %204
  br i1 %208, label %209, label %210

209:                                              ; preds = %206, %202
  br label %210

210:                                              ; preds = %209, %206
  %211 = phi ptr [ %0, %209 ], [ %1, %206 ]
  %212 = icmp ne i32 %38, 1
  %213 = and i1 %212, %153
  br i1 %213, label %221, label %214

214:                                              ; preds = %210
  %215 = load i32, ptr %40, align 4, !tbaa !6
  %216 = shl i32 %32, 1
  %217 = load i32, ptr %39, align 4, !tbaa !6
  %218 = getelementptr inbounds i8, ptr %35, i64 28
  %219 = load i32, ptr %218, align 4, !tbaa !6
  %220 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef %211, i32 noundef signext %215, ptr noundef readonly %2, i32 noundef signext %204, i32 noundef signext %216, i32 noundef signext 16, i32 noundef signext %220, i32 noundef signext %23, i32 noundef signext %217, i32 noundef signext %219, i32 noundef signext 0)
  br label %254

221:                                              ; preds = %210
  switch i32 %38, label %248 [
    i32 2, label %222
    i32 3, label %238
  ]

222:                                              ; preds = %221
  %223 = load i32, ptr %40, align 4, !tbaa !6
  %224 = shl i32 %32, 1
  %225 = load i32, ptr %39, align 4, !tbaa !6
  %226 = getelementptr inbounds i8, ptr %35, i64 28
  %227 = load i32, ptr %226, align 4, !tbaa !6
  %228 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef %211, i32 noundef signext %223, ptr noundef readonly %2, i32 noundef signext %204, i32 noundef signext %224, i32 noundef signext 8, i32 noundef signext %228, i32 noundef signext %23, i32 noundef signext %225, i32 noundef signext %227, i32 noundef signext 0)
  %229 = getelementptr inbounds i8, ptr %35, i64 64
  %230 = load i32, ptr %229, align 4, !tbaa !6
  %231 = icmp eq i32 %230, %204
  %232 = select i1 %231, ptr %0, ptr %1
  %233 = select i1 %205, ptr %232, ptr %0
  %234 = getelementptr inbounds i8, ptr %35, i64 40
  %235 = load i32, ptr %234, align 4, !tbaa !6
  %236 = getelementptr inbounds i8, ptr %35, i64 44
  %237 = load i32, ptr %236, align 4, !tbaa !6
  tail call fastcc void @pred(ptr noundef %233, i32 noundef signext %230, ptr noundef readonly %2, i32 noundef signext %204, i32 noundef signext %224, i32 noundef signext 8, i32 noundef signext %228, i32 noundef signext %26, i32 noundef signext %235, i32 noundef signext %237, i32 noundef signext 0)
  br label %254

238:                                              ; preds = %221
  %239 = load i32, ptr %39, align 4, !tbaa !6
  %240 = getelementptr inbounds i8, ptr %35, i64 28
  %241 = load i32, ptr %240, align 4, !tbaa !6
  call fastcc void @calc_DMV(ptr noundef nonnull %6, ptr noundef nonnull readonly %41, i32 noundef signext %239, i32 noundef signext %241)
  %242 = shl i32 %32, 1
  %243 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef readonly %0, i32 noundef signext %204, ptr noundef readonly %2, i32 noundef signext %204, i32 noundef signext %242, i32 noundef signext 16, i32 noundef signext %243, i32 noundef signext %23, i32 noundef signext %239, i32 noundef signext %241, i32 noundef signext 0)
  %244 = xor i1 %203, true
  %245 = zext i1 %244 to i32
  %246 = load i32, ptr %6, align 4, !tbaa !6
  %247 = load i32, ptr %14, align 4, !tbaa !6
  tail call fastcc void @pred(ptr noundef %13, i32 noundef signext %245, ptr noundef readonly %2, i32 noundef signext %204, i32 noundef signext %242, i32 noundef signext 16, i32 noundef signext %243, i32 noundef signext %23, i32 noundef signext %246, i32 noundef signext %247, i32 noundef signext 1)
  br label %254

248:                                              ; preds = %221
  %249 = load i32, ptr @quiet, align 4, !tbaa !6
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load ptr, ptr @stderr, align 8, !tbaa !14
  %253 = tail call i64 @fwrite(ptr nonnull @.str, i64 20, i64 1, ptr %252) #7
  br label %254

254:                                              ; preds = %251, %248, %238, %222, %214, %199, %196, %182, %167, %161, %151
  %255 = phi i32 [ 0, %151 ], [ 1, %214 ], [ 1, %238 ], [ 1, %251 ], [ 1, %248 ], [ 1, %222 ], [ 1, %161 ], [ 1, %182 ], [ 1, %199 ], [ 1, %196 ], [ 1, %167 ]
  %256 = and i32 %36, 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %318, label %258

258:                                              ; preds = %254
  %259 = icmp eq i32 %34, 3
  br i1 %259, label %260, label %285

260:                                              ; preds = %258
  %261 = icmp eq i32 %38, 2
  br i1 %261, label %262, label %268

262:                                              ; preds = %260
  %263 = getelementptr inbounds i8, ptr %35, i64 32
  %264 = load i32, ptr %263, align 4, !tbaa !6
  %265 = getelementptr inbounds i8, ptr %35, i64 36
  %266 = load i32, ptr %265, align 4, !tbaa !6
  %267 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef readonly %1, i32 noundef signext 0, ptr noundef readonly %2, i32 noundef signext 0, i32 noundef signext %32, i32 noundef signext 16, i32 noundef signext %267, i32 noundef signext %23, i32 noundef signext %264, i32 noundef signext %266, i32 noundef signext %255)
  br label %318

268:                                              ; preds = %260
  %269 = getelementptr inbounds i8, ptr %35, i64 60
  %270 = load i32, ptr %269, align 4, !tbaa !6
  %271 = shl i32 %32, 1
  %272 = getelementptr inbounds i8, ptr %35, i64 32
  %273 = load i32, ptr %272, align 4, !tbaa !6
  %274 = getelementptr inbounds i8, ptr %35, i64 36
  %275 = load i32, ptr %274, align 4, !tbaa !6
  %276 = ashr i32 %275, 1
  %277 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef readonly %1, i32 noundef signext %270, ptr noundef readonly %2, i32 noundef signext 0, i32 noundef signext %271, i32 noundef signext 8, i32 noundef signext %277, i32 noundef signext %27, i32 noundef signext %273, i32 noundef signext %276, i32 noundef signext %255)
  %278 = getelementptr inbounds i8, ptr %35, i64 68
  %279 = load i32, ptr %278, align 4, !tbaa !6
  %280 = getelementptr inbounds i8, ptr %35, i64 48
  %281 = load i32, ptr %280, align 4, !tbaa !6
  %282 = getelementptr inbounds i8, ptr %35, i64 52
  %283 = load i32, ptr %282, align 4, !tbaa !6
  %284 = ashr i32 %283, 1
  tail call fastcc void @pred(ptr noundef readonly %1, i32 noundef signext %279, ptr noundef readonly %2, i32 noundef signext 1, i32 noundef signext %271, i32 noundef signext 8, i32 noundef signext %277, i32 noundef signext %27, i32 noundef signext %281, i32 noundef signext %284, i32 noundef signext %255)
  br label %318

285:                                              ; preds = %258
  %286 = icmp eq i32 %34, 2
  %287 = zext i1 %286 to i32
  switch i32 %38, label %312 [
    i32 1, label %288
    i32 2, label %297
  ]

288:                                              ; preds = %285
  %289 = getelementptr inbounds i8, ptr %35, i64 60
  %290 = load i32, ptr %289, align 4, !tbaa !6
  %291 = shl i32 %32, 1
  %292 = getelementptr inbounds i8, ptr %35, i64 32
  %293 = load i32, ptr %292, align 4, !tbaa !6
  %294 = getelementptr inbounds i8, ptr %35, i64 36
  %295 = load i32, ptr %294, align 4, !tbaa !6
  %296 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef readonly %1, i32 noundef signext %290, ptr noundef readonly %2, i32 noundef signext %287, i32 noundef signext %291, i32 noundef signext 16, i32 noundef signext %296, i32 noundef signext %23, i32 noundef signext %293, i32 noundef signext %295, i32 noundef signext %255)
  br label %318

297:                                              ; preds = %285
  %298 = getelementptr inbounds i8, ptr %35, i64 60
  %299 = load i32, ptr %298, align 4, !tbaa !6
  %300 = shl i32 %32, 1
  %301 = getelementptr inbounds i8, ptr %35, i64 32
  %302 = load i32, ptr %301, align 4, !tbaa !6
  %303 = getelementptr inbounds i8, ptr %35, i64 36
  %304 = load i32, ptr %303, align 4, !tbaa !6
  %305 = trunc nuw nsw i64 %30 to i32
  tail call fastcc void @pred(ptr noundef readonly %1, i32 noundef signext %299, ptr noundef readonly %2, i32 noundef signext %287, i32 noundef signext %300, i32 noundef signext 8, i32 noundef signext %305, i32 noundef signext %23, i32 noundef signext %302, i32 noundef signext %304, i32 noundef signext %255)
  %306 = getelementptr inbounds i8, ptr %35, i64 68
  %307 = load i32, ptr %306, align 4, !tbaa !6
  %308 = getelementptr inbounds i8, ptr %35, i64 48
  %309 = load i32, ptr %308, align 4, !tbaa !6
  %310 = getelementptr inbounds i8, ptr %35, i64 52
  %311 = load i32, ptr %310, align 4, !tbaa !6
  tail call fastcc void @pred(ptr noundef readonly %1, i32 noundef signext %307, ptr noundef readonly %2, i32 noundef signext %287, i32 noundef signext %300, i32 noundef signext 8, i32 noundef signext %305, i32 noundef signext %26, i32 noundef signext %309, i32 noundef signext %311, i32 noundef signext %255)
  br label %318

312:                                              ; preds = %285
  %313 = load i32, ptr @quiet, align 4, !tbaa !6
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load ptr, ptr @stderr, align 8, !tbaa !14
  %317 = tail call i64 @fwrite(ptr nonnull @.str, i64 20, i64 1, ptr %316) #7
  br label %318

318:                                              ; preds = %143, %254, %262, %268, %288, %297, %312, %315
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %319 = add nsw i64 %31, 1
  %320 = add nuw nsw i64 %30, 16
  %321 = load i32, ptr @width, align 4
  %322 = trunc nuw i64 %320 to i32
  %323 = icmp sgt i32 %321, %322
  br i1 %323, label %29, label %324

324:                                              ; preds = %318
  %325 = trunc nsw i64 %319 to i32
  %326 = load i32, ptr @height2, align 4, !tbaa !6
  br label %327

327:                                              ; preds = %324, %19
  %328 = phi i32 [ %20, %19 ], [ %326, %324 ]
  %329 = phi i32 [ %21, %19 ], [ %321, %324 ]
  %330 = phi i32 [ %22, %19 ], [ %325, %324 ]
  %331 = add nuw nsw i32 %23, 16
  %332 = icmp slt i32 %331, %328
  br i1 %332, label %19, label %333, !llvm.loop !17

333:                                              ; preds = %327, %9, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @pred(ptr nocapture noundef readonly %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10) unnamed_addr #2 {
  %12 = icmp eq i32 %1, 0
  %13 = icmp eq i32 %3, 0
  %14 = icmp eq i32 %10, 0
  br label %15

15:                                               ; preds = %11, %358
  %16 = phi i64 [ 0, %11 ], [ %359, %358 ]
  %17 = phi i32 [ %4, %11 ], [ %46, %358 ]
  %18 = phi i32 [ %9, %11 ], [ %45, %358 ]
  %19 = phi i32 [ %8, %11 ], [ %44, %358 ]
  %20 = phi i32 [ %7, %11 ], [ %43, %358 ]
  %21 = phi i32 [ %6, %11 ], [ %42, %358 ]
  %22 = phi i32 [ %5, %11 ], [ %41, %358 ]
  %23 = phi i32 [ 16, %11 ], [ %40, %358 ]
  %24 = icmp eq i64 %16, 1
  br i1 %24, label %25, label %39

25:                                               ; preds = %15
  %26 = load i32, ptr @chroma_format, align 4, !tbaa !6
  switch i32 %26, label %31 [
    i32 1, label %27
    i32 3, label %39
  ]

27:                                               ; preds = %25
  %28 = ashr i32 %22, 1
  %29 = ashr i32 %20, 1
  %30 = sdiv i32 %18, 2
  br label %31

31:                                               ; preds = %25, %27
  %32 = phi i32 [ %30, %27 ], [ %18, %25 ]
  %33 = phi i32 [ %29, %27 ], [ %20, %25 ]
  %34 = phi i32 [ %28, %27 ], [ %22, %25 ]
  %35 = ashr i32 %23, 1
  %36 = ashr i32 %21, 1
  %37 = sdiv i32 %19, 2
  %38 = ashr i32 %17, 1
  br label %39

39:                                               ; preds = %25, %31, %15
  %40 = phi i32 [ %35, %31 ], [ %23, %15 ], [ %23, %25 ]
  %41 = phi i32 [ %34, %31 ], [ %22, %15 ], [ %22, %25 ]
  %42 = phi i32 [ %36, %31 ], [ %21, %15 ], [ %21, %25 ]
  %43 = phi i32 [ %33, %31 ], [ %20, %15 ], [ %20, %25 ]
  %44 = phi i32 [ %37, %31 ], [ %19, %15 ], [ %19, %25 ]
  %45 = phi i32 [ %32, %31 ], [ %18, %15 ], [ %18, %25 ]
  %46 = phi i32 [ %38, %31 ], [ %17, %15 ], [ %17, %25 ]
  %47 = getelementptr inbounds ptr, ptr %0, i64 %16
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = ashr i32 %46, 1
  %50 = select i1 %12, i32 0, i32 %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = getelementptr inbounds ptr, ptr %2, i64 %16
  %54 = load ptr, ptr %53, align 8, !tbaa !14
  %55 = select i1 %13, i32 0, i32 %49
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  %58 = ashr i32 %44, 1
  %59 = ashr i32 %45, 1
  %60 = and i32 %45, 1
  %61 = add nsw i32 %59, %43
  %62 = mul nsw i32 %61, %46
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %52, i64 %63
  %65 = add nsw i32 %58, %42
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %64, i64 %66
  %68 = mul nsw i32 %46, %43
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %57, i64 %69
  %71 = sext i32 %42 to i64
  %72 = getelementptr inbounds i8, ptr %70, i64 %71
  %73 = icmp ne i32 %60, 0
  %74 = or i32 %45, %44
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %130

77:                                               ; preds = %39
  %78 = icmp sgt i32 %41, 0
  br i1 %14, label %108, label %79

79:                                               ; preds = %77
  br i1 %78, label %80, label %358

80:                                               ; preds = %79
  %81 = icmp sgt i32 %40, 0
  %82 = sext i32 %46 to i64
  br i1 %81, label %83, label %358

83:                                               ; preds = %80
  %84 = zext nneg i32 %40 to i64
  br label %85

85:                                               ; preds = %103, %83
  %86 = phi ptr [ %105, %103 ], [ %72, %83 ]
  %87 = phi ptr [ %104, %103 ], [ %67, %83 ]
  %88 = phi i32 [ %106, %103 ], [ 0, %83 ]
  br label %89

89:                                               ; preds = %89, %85
  %90 = phi i64 [ 0, %85 ], [ %101, %89 ]
  %91 = getelementptr inbounds i8, ptr %86, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !16
  %93 = zext i8 %92 to i16
  %94 = getelementptr inbounds i8, ptr %87, i64 %90
  %95 = load i8, ptr %94, align 1, !tbaa !16
  %96 = zext i8 %95 to i16
  %97 = add nuw nsw i16 %93, 1
  %98 = add nuw nsw i16 %97, %96
  %99 = lshr i16 %98, 1
  %100 = trunc nuw i16 %99 to i8
  store i8 %100, ptr %91, align 1, !tbaa !16
  %101 = add nuw nsw i64 %90, 1
  %102 = icmp eq i64 %101, %84
  br i1 %102, label %103, label %89

103:                                              ; preds = %89
  %104 = getelementptr inbounds i8, ptr %87, i64 %82
  %105 = getelementptr inbounds i8, ptr %86, i64 %82
  %106 = add nuw nsw i32 %88, 1
  %107 = icmp eq i32 %106, %41
  br i1 %107, label %358, label %85

108:                                              ; preds = %77
  br i1 %78, label %109, label %358

109:                                              ; preds = %108
  %110 = icmp sgt i32 %40, 0
  %111 = sext i32 %46 to i64
  br i1 %110, label %112, label %358

112:                                              ; preds = %109
  %113 = zext nneg i32 %40 to i64
  br label %114

114:                                              ; preds = %125, %112
  %115 = phi ptr [ %127, %125 ], [ %72, %112 ]
  %116 = phi ptr [ %126, %125 ], [ %67, %112 ]
  %117 = phi i32 [ %128, %125 ], [ 0, %112 ]
  br label %118

118:                                              ; preds = %118, %114
  %119 = phi i64 [ 0, %114 ], [ %123, %118 ]
  %120 = getelementptr inbounds i8, ptr %116, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !16
  %122 = getelementptr inbounds i8, ptr %115, i64 %119
  store i8 %121, ptr %122, align 1, !tbaa !16
  %123 = add nuw nsw i64 %119, 1
  %124 = icmp eq i64 %123, %113
  br i1 %124, label %125, label %118

125:                                              ; preds = %118
  %126 = getelementptr inbounds i8, ptr %116, i64 %111
  %127 = getelementptr inbounds i8, ptr %115, i64 %111
  %128 = add nuw nsw i32 %117, 1
  %129 = icmp eq i32 %128, %41
  br i1 %129, label %358, label %114

130:                                              ; preds = %39
  %131 = and i32 %44, 1
  %132 = icmp eq i32 %131, 0
  %133 = and i1 %132, %73
  br i1 %133, label %134, label %203

134:                                              ; preds = %130
  %135 = icmp sgt i32 %41, 0
  br i1 %14, label %172, label %136

136:                                              ; preds = %134
  br i1 %135, label %137, label %358

137:                                              ; preds = %136
  %138 = icmp sgt i32 %40, 0
  %139 = sext i32 %46 to i64
  br i1 %138, label %140, label %358

140:                                              ; preds = %137
  %141 = zext nneg i32 %40 to i64
  br label %142

142:                                              ; preds = %167, %140
  %143 = phi ptr [ %169, %167 ], [ %72, %140 ]
  %144 = phi ptr [ %168, %167 ], [ %67, %140 ]
  %145 = phi i32 [ %170, %167 ], [ 0, %140 ]
  br label %146

146:                                              ; preds = %146, %142
  %147 = phi i64 [ 0, %142 ], [ %165, %146 ]
  %148 = getelementptr inbounds i8, ptr %143, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !16
  %150 = zext i8 %149 to i16
  %151 = getelementptr inbounds i8, ptr %144, i64 %147
  %152 = load i8, ptr %151, align 1, !tbaa !16
  %153 = zext i8 %152 to i16
  %154 = add nsw i64 %147, %139
  %155 = getelementptr inbounds i8, ptr %144, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !16
  %157 = zext i8 %156 to i16
  %158 = add nuw nsw i16 %153, 1
  %159 = add nuw nsw i16 %158, %157
  %160 = lshr i16 %159, 1
  %161 = add nuw nsw i16 %150, 1
  %162 = add nuw nsw i16 %161, %160
  %163 = lshr i16 %162, 1
  %164 = trunc nuw i16 %163 to i8
  store i8 %164, ptr %148, align 1, !tbaa !16
  %165 = add nuw nsw i64 %147, 1
  %166 = icmp eq i64 %165, %141
  br i1 %166, label %167, label %146

167:                                              ; preds = %146
  %168 = getelementptr inbounds i8, ptr %144, i64 %139
  %169 = getelementptr inbounds i8, ptr %143, i64 %139
  %170 = add nuw nsw i32 %145, 1
  %171 = icmp eq i32 %170, %41
  br i1 %171, label %358, label %142

172:                                              ; preds = %134
  br i1 %135, label %173, label %358

173:                                              ; preds = %172
  %174 = icmp sgt i32 %40, 0
  %175 = sext i32 %46 to i64
  br i1 %174, label %176, label %358

176:                                              ; preds = %173
  %177 = zext nneg i32 %40 to i64
  br label %178

178:                                              ; preds = %198, %176
  %179 = phi ptr [ %200, %198 ], [ %72, %176 ]
  %180 = phi ptr [ %199, %198 ], [ %67, %176 ]
  %181 = phi i32 [ %201, %198 ], [ 0, %176 ]
  br label %182

182:                                              ; preds = %182, %178
  %183 = phi i64 [ 0, %178 ], [ %196, %182 ]
  %184 = getelementptr inbounds i8, ptr %180, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !16
  %186 = zext i8 %185 to i16
  %187 = add nsw i64 %183, %175
  %188 = getelementptr inbounds i8, ptr %180, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !16
  %190 = zext i8 %189 to i16
  %191 = add nuw nsw i16 %186, 1
  %192 = add nuw nsw i16 %191, %190
  %193 = lshr i16 %192, 1
  %194 = trunc nuw i16 %193 to i8
  %195 = getelementptr inbounds i8, ptr %179, i64 %183
  store i8 %194, ptr %195, align 1, !tbaa !16
  %196 = add nuw nsw i64 %183, 1
  %197 = icmp eq i64 %196, %177
  br i1 %197, label %198, label %182

198:                                              ; preds = %182
  %199 = getelementptr inbounds i8, ptr %180, i64 %175
  %200 = getelementptr inbounds i8, ptr %179, i64 %175
  %201 = add nuw nsw i32 %181, 1
  %202 = icmp eq i32 %201, %41
  br i1 %202, label %358, label %178

203:                                              ; preds = %130
  %204 = or i1 %132, %73
  %205 = icmp sgt i32 %41, 0
  br i1 %204, label %272, label %206

206:                                              ; preds = %203
  br i1 %14, label %242, label %207

207:                                              ; preds = %206
  br i1 %205, label %208, label %358

208:                                              ; preds = %207
  %209 = icmp sgt i32 %40, 0
  %210 = sext i32 %46 to i64
  br i1 %209, label %211, label %358

211:                                              ; preds = %208
  %212 = zext nneg i32 %40 to i64
  br label %213

213:                                              ; preds = %237, %211
  %214 = phi ptr [ %239, %237 ], [ %72, %211 ]
  %215 = phi ptr [ %238, %237 ], [ %67, %211 ]
  %216 = phi i32 [ %240, %237 ], [ 0, %211 ]
  br label %217

217:                                              ; preds = %217, %213
  %218 = phi i64 [ 0, %213 ], [ %225, %217 ]
  %219 = getelementptr inbounds i8, ptr %214, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !16
  %221 = zext i8 %220 to i16
  %222 = getelementptr inbounds i8, ptr %215, i64 %218
  %223 = load i8, ptr %222, align 1, !tbaa !16
  %224 = zext i8 %223 to i16
  %225 = add nuw nsw i64 %218, 1
  %226 = getelementptr inbounds i8, ptr %215, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !16
  %228 = zext i8 %227 to i16
  %229 = add nuw nsw i16 %224, 1
  %230 = add nuw nsw i16 %229, %228
  %231 = lshr i16 %230, 1
  %232 = add nuw nsw i16 %221, 1
  %233 = add nuw nsw i16 %232, %231
  %234 = lshr i16 %233, 1
  %235 = trunc nuw i16 %234 to i8
  store i8 %235, ptr %219, align 1, !tbaa !16
  %236 = icmp eq i64 %225, %212
  br i1 %236, label %237, label %217

237:                                              ; preds = %217
  %238 = getelementptr inbounds i8, ptr %215, i64 %210
  %239 = getelementptr inbounds i8, ptr %214, i64 %210
  %240 = add nuw nsw i32 %216, 1
  %241 = icmp eq i32 %240, %41
  br i1 %241, label %358, label %213

242:                                              ; preds = %206
  br i1 %205, label %243, label %358

243:                                              ; preds = %242
  %244 = icmp sgt i32 %40, 0
  %245 = sext i32 %46 to i64
  br i1 %244, label %246, label %358

246:                                              ; preds = %243
  %247 = zext nneg i32 %40 to i64
  br label %248

248:                                              ; preds = %267, %246
  %249 = phi ptr [ %269, %267 ], [ %72, %246 ]
  %250 = phi ptr [ %268, %267 ], [ %67, %246 ]
  %251 = phi i32 [ %270, %267 ], [ 0, %246 ]
  br label %252

252:                                              ; preds = %252, %248
  %253 = phi i64 [ 0, %248 ], [ %257, %252 ]
  %254 = getelementptr inbounds i8, ptr %250, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !16
  %256 = zext i8 %255 to i16
  %257 = add nuw nsw i64 %253, 1
  %258 = getelementptr inbounds i8, ptr %250, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !16
  %260 = zext i8 %259 to i16
  %261 = add nuw nsw i16 %256, 1
  %262 = add nuw nsw i16 %261, %260
  %263 = lshr i16 %262, 1
  %264 = trunc nuw i16 %263 to i8
  %265 = getelementptr inbounds i8, ptr %249, i64 %253
  store i8 %264, ptr %265, align 1, !tbaa !16
  %266 = icmp eq i64 %257, %247
  br i1 %266, label %267, label %252

267:                                              ; preds = %252
  %268 = getelementptr inbounds i8, ptr %250, i64 %245
  %269 = getelementptr inbounds i8, ptr %249, i64 %245
  %270 = add nuw nsw i32 %251, 1
  %271 = icmp eq i32 %270, %41
  br i1 %271, label %358, label %248

272:                                              ; preds = %203
  br i1 %14, label %318, label %273

273:                                              ; preds = %272
  br i1 %205, label %274, label %358

274:                                              ; preds = %273
  %275 = icmp sgt i32 %40, 0
  %276 = sext i32 %46 to i64
  br i1 %275, label %277, label %358

277:                                              ; preds = %274
  %278 = zext nneg i32 %40 to i64
  br label %279

279:                                              ; preds = %313, %277
  %280 = phi ptr [ %315, %313 ], [ %72, %277 ]
  %281 = phi ptr [ %314, %313 ], [ %67, %277 ]
  %282 = phi i32 [ %316, %313 ], [ 0, %277 ]
  br label %283

283:                                              ; preds = %283, %279
  %284 = phi i64 [ 0, %279 ], [ %291, %283 ]
  %285 = getelementptr inbounds i8, ptr %280, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !16
  %287 = zext i8 %286 to i32
  %288 = getelementptr inbounds i8, ptr %281, i64 %284
  %289 = load i8, ptr %288, align 1, !tbaa !16
  %290 = zext i8 %289 to i32
  %291 = add nuw nsw i64 %284, 1
  %292 = getelementptr inbounds i8, ptr %281, i64 %291
  %293 = load i8, ptr %292, align 1, !tbaa !16
  %294 = zext i8 %293 to i32
  %295 = add nsw i64 %284, %276
  %296 = getelementptr inbounds i8, ptr %281, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !16
  %298 = zext i8 %297 to i32
  %299 = add nsw i64 %295, 1
  %300 = getelementptr inbounds i8, ptr %281, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !16
  %302 = zext i8 %301 to i32
  %303 = add nuw nsw i32 %290, 2
  %304 = add nuw nsw i32 %303, %294
  %305 = add nuw nsw i32 %304, %298
  %306 = add nuw nsw i32 %305, %302
  %307 = lshr i32 %306, 2
  %308 = add nuw nsw i32 %287, 1
  %309 = add nuw nsw i32 %308, %307
  %310 = lshr i32 %309, 1
  %311 = trunc nuw i32 %310 to i8
  store i8 %311, ptr %285, align 1, !tbaa !16
  %312 = icmp eq i64 %291, %278
  br i1 %312, label %313, label %283

313:                                              ; preds = %283
  %314 = getelementptr inbounds i8, ptr %281, i64 %276
  %315 = getelementptr inbounds i8, ptr %280, i64 %276
  %316 = add nuw nsw i32 %282, 1
  %317 = icmp eq i32 %316, %41
  br i1 %317, label %358, label %279

318:                                              ; preds = %272
  br i1 %205, label %319, label %358

319:                                              ; preds = %318
  %320 = icmp sgt i32 %40, 0
  %321 = sext i32 %46 to i64
  br i1 %320, label %322, label %358

322:                                              ; preds = %319
  %323 = zext nneg i32 %40 to i64
  br label %324

324:                                              ; preds = %353, %322
  %325 = phi ptr [ %355, %353 ], [ %72, %322 ]
  %326 = phi ptr [ %354, %353 ], [ %67, %322 ]
  %327 = phi i32 [ %356, %353 ], [ 0, %322 ]
  br label %328

328:                                              ; preds = %328, %324
  %329 = phi i64 [ 0, %324 ], [ %333, %328 ]
  %330 = getelementptr inbounds i8, ptr %326, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !16
  %332 = zext i8 %331 to i16
  %333 = add nuw nsw i64 %329, 1
  %334 = getelementptr inbounds i8, ptr %326, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !16
  %336 = zext i8 %335 to i16
  %337 = add nsw i64 %329, %321
  %338 = getelementptr inbounds i8, ptr %326, i64 %337
  %339 = load i8, ptr %338, align 1, !tbaa !16
  %340 = zext i8 %339 to i16
  %341 = add nsw i64 %337, 1
  %342 = getelementptr inbounds i8, ptr %326, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !16
  %344 = zext i8 %343 to i16
  %345 = add nuw nsw i16 %332, 2
  %346 = add nuw nsw i16 %345, %336
  %347 = add nuw nsw i16 %346, %340
  %348 = add nuw nsw i16 %347, %344
  %349 = lshr i16 %348, 2
  %350 = trunc nuw i16 %349 to i8
  %351 = getelementptr inbounds i8, ptr %325, i64 %329
  store i8 %350, ptr %351, align 1, !tbaa !16
  %352 = icmp eq i64 %333, %323
  br i1 %352, label %353, label %328

353:                                              ; preds = %328
  %354 = getelementptr inbounds i8, ptr %326, i64 %321
  %355 = getelementptr inbounds i8, ptr %325, i64 %321
  %356 = add nuw nsw i32 %327, 1
  %357 = icmp eq i32 %356, %41
  br i1 %357, label %358, label %324

358:                                              ; preds = %237, %267, %313, %353, %167, %198, %103, %125, %79, %80, %108, %109, %136, %137, %172, %173, %207, %208, %242, %243, %273, %274, %318, %319
  %359 = add nuw nsw i64 %16, 1
  %360 = icmp eq i64 %359, 3
  br i1 %360, label %361, label %15

361:                                              ; preds = %358
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define internal fastcc void @calc_DMV(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3) unnamed_addr #3 {
  %5 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %68

7:                                                ; preds = %4
  %8 = load i32, ptr @topfirst, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %7
  %11 = icmp sgt i32 %2, 0
  %12 = zext i1 %11 to i32
  %13 = add nsw i32 %12, %2
  %14 = ashr i32 %13, 1
  %15 = load i32, ptr %1, align 4, !tbaa !6
  %16 = add nsw i32 %15, %14
  store i32 %16, ptr %0, align 4, !tbaa !6
  %17 = icmp sgt i32 %3, 0
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %18, %3
  %20 = ashr i32 %19, 1
  %21 = getelementptr inbounds i8, ptr %1, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !6
  %23 = add nsw i32 %20, -1
  %24 = add i32 %23, %22
  %25 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %24, ptr %25, align 4, !tbaa !6
  %26 = mul nsw i32 %2, 3
  %27 = add nsw i32 %26, %12
  %28 = ashr i32 %27, 1
  %29 = load i32, ptr %1, align 4, !tbaa !6
  %30 = add nsw i32 %29, %28
  %31 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %30, ptr %31, align 4, !tbaa !6
  %32 = mul nsw i32 %3, 3
  %33 = add nsw i32 %32, %18
  %34 = ashr i32 %33, 1
  %35 = load i32, ptr %21, align 4, !tbaa !6
  %36 = add nsw i32 %34, 1
  %37 = add i32 %36, %35
  %38 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %37, ptr %38, align 4, !tbaa !6
  br label %89

39:                                               ; preds = %7
  %40 = mul nsw i32 %2, 3
  %41 = icmp sgt i32 %2, 0
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %40, %42
  %44 = ashr i32 %43, 1
  %45 = load i32, ptr %1, align 4, !tbaa !6
  %46 = add nsw i32 %45, %44
  store i32 %46, ptr %0, align 4, !tbaa !6
  %47 = mul nsw i32 %3, 3
  %48 = icmp sgt i32 %3, 0
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %47, %49
  %51 = ashr i32 %50, 1
  %52 = getelementptr inbounds i8, ptr %1, i64 4
  %53 = load i32, ptr %52, align 4, !tbaa !6
  %54 = add nsw i32 %51, -1
  %55 = add i32 %54, %53
  %56 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %55, ptr %56, align 4, !tbaa !6
  %57 = add nsw i32 %42, %2
  %58 = ashr i32 %57, 1
  %59 = load i32, ptr %1, align 4, !tbaa !6
  %60 = add nsw i32 %59, %58
  %61 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %60, ptr %61, align 4, !tbaa !6
  %62 = add nsw i32 %49, %3
  %63 = ashr i32 %62, 1
  %64 = load i32, ptr %52, align 4, !tbaa !6
  %65 = add nsw i32 %63, 1
  %66 = add i32 %65, %64
  %67 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %66, ptr %67, align 4, !tbaa !6
  br label %89

68:                                               ; preds = %4
  %69 = icmp sgt i32 %2, 0
  %70 = zext i1 %69 to i32
  %71 = add nsw i32 %70, %2
  %72 = ashr i32 %71, 1
  %73 = load i32, ptr %1, align 4, !tbaa !6
  %74 = add nsw i32 %73, %72
  store i32 %74, ptr %0, align 4, !tbaa !6
  %75 = icmp sgt i32 %3, 0
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %76, %3
  %78 = ashr i32 %77, 1
  %79 = getelementptr inbounds i8, ptr %1, i64 4
  %80 = load i32, ptr %79, align 4, !tbaa !6
  %81 = add nsw i32 %80, %78
  %82 = getelementptr inbounds i8, ptr %0, i64 4
  %83 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = add nsw i32 %81, -1
  store i32 %86, ptr %82, align 4, !tbaa !6
  br label %89

87:                                               ; preds = %68
  %88 = add nsw i32 %81, 1
  store i32 %88, ptr %82, align 4, !tbaa !6
  br label %89

89:                                               ; preds = %85, %87, %10, %39
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { cold }

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
!10 = !{!11, !7, i64 0}
!11 = !{!"mbinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 56, !8, i64 72, !12, i64 80, !7, i64 88}
!12 = !{!"double", !8, i64 0}
!13 = !{!11, !7, i64 4}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!8, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
