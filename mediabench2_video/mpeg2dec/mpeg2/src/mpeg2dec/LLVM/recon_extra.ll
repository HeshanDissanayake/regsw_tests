; ModuleID = 'recon.c'
source_filename = "recon.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@picture_coding_type = external dso_local local_unnamed_addr global i32, align 4
@picture_structure = external dso_local local_unnamed_addr global i32, align 4
@forward_reference_frame = external dso_local global [3 x ptr], align 8
@current_frame = external dso_local local_unnamed_addr global [3 x ptr], align 8
@Coded_Picture_Width = external dso_local local_unnamed_addr global i32, align 4
@Second_Field = external dso_local local_unnamed_addr global i32, align 4
@backward_reference_frame = external dso_local global [3 x ptr], align 8
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@str.2 = private unnamed_addr constant [20 x i8] c"invalid motion_type\00", align 1

; Function Attrs: nounwind
define dso_local void @form_predictions(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6, i32 noundef signext %7) local_unnamed_addr #0 {
  %9 = alloca [2 x [2 x i32]], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5
  %10 = sdiv i32 %7, 3
  %11 = mul i32 %10, 3
  %12 = sub i32 %7, %11
  %13 = and i32 %2, 8
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr @picture_coding_type, align 4
  %16 = icmp eq i32 %15, 2
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %169

18:                                               ; preds = %8
  %19 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %100

21:                                               ; preds = %18
  %22 = icmp ne i32 %3, 2
  %23 = and i1 %22, %14
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = icmp slt i32 %12, 2
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %28 = shl i32 %27, 1
  %29 = load i32, ptr %4, align 4, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %4, i64 4
  %31 = load i32, ptr %30, align 4, !tbaa !6
  tail call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %27, i32 noundef signext %28, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %29, i32 noundef signext %31, i32 noundef signext %12)
  br label %32

32:                                               ; preds = %26, %24
  %33 = icmp slt i32 %7, 6
  br i1 %33, label %34, label %169

34:                                               ; preds = %32
  %35 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %36 = shl i32 %35, 1
  %37 = load i32, ptr %4, align 4, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %4, i64 4
  %39 = load i32, ptr %38, align 4, !tbaa !6
  tail call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %35, i32 noundef signext %36, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %37, i32 noundef signext %39, i32 noundef signext %10)
  br label %169

40:                                               ; preds = %21
  switch i32 %3, label %98 [
    i32 1, label %41
    i32 3, label %65
  ]

41:                                               ; preds = %40
  %42 = icmp slt i32 %12, 2
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = load i32, ptr %5, align 4, !tbaa !6
  %45 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %46 = shl i32 %45, 1
  %47 = ashr i32 %1, 1
  %48 = load i32, ptr %4, align 4, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %4, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !6
  %51 = ashr i32 %50, 1
  tail call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef signext %44, i32 noundef signext 0, i32 noundef signext %46, i32 noundef signext %46, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %47, i32 noundef signext %48, i32 noundef signext %51, i32 noundef signext %12)
  br label %52

52:                                               ; preds = %43, %41
  %53 = icmp slt i32 %7, 6
  br i1 %53, label %54, label %169

54:                                               ; preds = %52
  %55 = getelementptr inbounds i8, ptr %5, i64 8
  %56 = load i32, ptr %55, align 4, !tbaa !6
  %57 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %58 = shl i32 %57, 1
  %59 = ashr i32 %1, 1
  %60 = getelementptr inbounds i8, ptr %4, i64 16
  %61 = load i32, ptr %60, align 4, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %4, i64 20
  %63 = load i32, ptr %62, align 4, !tbaa !6
  %64 = ashr i32 %63, 1
  tail call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef signext %56, i32 noundef signext 1, i32 noundef signext %58, i32 noundef signext %58, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %59, i32 noundef signext %61, i32 noundef signext %64, i32 noundef signext %10)
  br label %169

65:                                               ; preds = %40
  %66 = load i32, ptr %4, align 4, !tbaa !6
  %67 = getelementptr inbounds i8, ptr %4, i64 4
  %68 = load i32, ptr %67, align 4, !tbaa !6
  %69 = ashr i32 %68, 1
  call void @Dual_Prime_Arithmetic(ptr noundef nonnull %9, ptr noundef %6, i32 noundef signext %66, i32 noundef signext %69) #5
  %70 = icmp slt i32 %12, 2
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %73 = shl i32 %72, 1
  %74 = ashr i32 %1, 1
  %75 = load i32, ptr %4, align 4, !tbaa !6
  %76 = load i32, ptr %67, align 4, !tbaa !6
  %77 = ashr i32 %76, 1
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %73, i32 noundef signext %73, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %74, i32 noundef signext %75, i32 noundef signext %77, i32 noundef signext 0)
  %78 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %79 = shl i32 %78, 1
  %80 = load i32, ptr %9, align 4, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %9, i64 4
  %82 = load i32, ptr %81, align 4, !tbaa !6
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %79, i32 noundef signext %79, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %74, i32 noundef signext %80, i32 noundef signext %82, i32 noundef signext 1)
  br label %83

83:                                               ; preds = %71, %65
  %84 = icmp slt i32 %7, 6
  br i1 %84, label %85, label %169

85:                                               ; preds = %83
  %86 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %87 = shl i32 %86, 1
  %88 = ashr i32 %1, 1
  %89 = load i32, ptr %4, align 4, !tbaa !6
  %90 = load i32, ptr %67, align 4, !tbaa !6
  %91 = ashr i32 %90, 1
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %87, i32 noundef signext %87, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %88, i32 noundef signext %89, i32 noundef signext %91, i32 noundef signext 0)
  %92 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %93 = shl i32 %92, 1
  %94 = getelementptr inbounds i8, ptr %9, i64 8
  %95 = load i32, ptr %94, align 4, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %9, i64 12
  %97 = load i32, ptr %96, align 4, !tbaa !6
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef signext 0, i32 noundef signext 1, i32 noundef signext %93, i32 noundef signext %93, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %88, i32 noundef signext %95, i32 noundef signext %97, i32 noundef signext 1)
  br label %169

98:                                               ; preds = %40
  %99 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %169

100:                                              ; preds = %18
  %101 = icmp eq i32 %19, 2
  %102 = zext i1 %101 to i32
  %103 = load i32, ptr @Second_Field, align 4
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %16, i1 %104, i1 false
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, ptr %5, align 4, !tbaa !6
  %108 = icmp eq i32 %107, %102
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %100
  br label %110

110:                                              ; preds = %106, %109
  %111 = phi ptr [ @forward_reference_frame, %109 ], [ @backward_reference_frame, %106 ]
  %112 = icmp ne i32 %3, 1
  %113 = and i1 %112, %14
  br i1 %113, label %123, label %114

114:                                              ; preds = %110
  %115 = icmp slt i32 %12, 2
  br i1 %115, label %116, label %169

116:                                              ; preds = %114
  %117 = load i32, ptr %5, align 4, !tbaa !6
  %118 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %119 = shl i32 %118, 1
  %120 = load i32, ptr %4, align 4, !tbaa !6
  %121 = getelementptr inbounds i8, ptr %4, i64 4
  %122 = load i32, ptr %121, align 4, !tbaa !6
  tail call fastcc void @form_prediction(ptr noundef nonnull %111, i32 noundef signext %117, i32 noundef signext 0, i32 noundef signext %119, i32 noundef signext %119, i32 noundef signext 16, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %120, i32 noundef signext %122, i32 noundef signext %12)
  br label %169

123:                                              ; preds = %110
  switch i32 %3, label %167 [
    i32 2, label %124
    i32 3, label %150
  ]

124:                                              ; preds = %123
  %125 = icmp slt i32 %12, 2
  br i1 %125, label %126, label %169

126:                                              ; preds = %124
  %127 = load i32, ptr %5, align 4, !tbaa !6
  %128 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %129 = shl i32 %128, 1
  %130 = load i32, ptr %4, align 4, !tbaa !6
  %131 = getelementptr inbounds i8, ptr %4, i64 4
  %132 = load i32, ptr %131, align 4, !tbaa !6
  tail call fastcc void @form_prediction(ptr noundef nonnull %111, i32 noundef signext %127, i32 noundef signext 0, i32 noundef signext %129, i32 noundef signext %129, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %130, i32 noundef signext %132, i32 noundef signext %12)
  %133 = load i32, ptr @picture_coding_type, align 4, !tbaa !6
  %134 = icmp eq i32 %133, 2
  %135 = load i32, ptr @Second_Field, align 4
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %134, i1 %136, i1 false
  %138 = getelementptr inbounds i8, ptr %5, i64 8
  %139 = load i32, ptr %138, align 4, !tbaa !6
  %140 = icmp eq i32 %139, %102
  %141 = select i1 %140, ptr @forward_reference_frame, ptr @backward_reference_frame
  %142 = select i1 %137, ptr %141, ptr @forward_reference_frame
  %143 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %144 = shl i32 %143, 1
  %145 = add nsw i32 %1, 8
  %146 = getelementptr inbounds i8, ptr %4, i64 16
  %147 = load i32, ptr %146, align 4, !tbaa !6
  %148 = getelementptr inbounds i8, ptr %4, i64 20
  %149 = load i32, ptr %148, align 4, !tbaa !6
  tail call fastcc void @form_prediction(ptr noundef nonnull %142, i32 noundef signext %139, i32 noundef signext 0, i32 noundef signext %144, i32 noundef signext %144, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %145, i32 noundef signext %147, i32 noundef signext %149, i32 noundef signext %12)
  br label %169

150:                                              ; preds = %123
  %151 = icmp eq i32 %103, 0
  %152 = select i1 %151, ptr @forward_reference_frame, ptr @backward_reference_frame
  %153 = load i32, ptr %4, align 4, !tbaa !6
  %154 = getelementptr inbounds i8, ptr %4, i64 4
  %155 = load i32, ptr %154, align 4, !tbaa !6
  call void @Dual_Prime_Arithmetic(ptr noundef nonnull %9, ptr noundef %6, i32 noundef signext %153, i32 noundef signext %155) #5
  %156 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %157 = shl i32 %156, 1
  %158 = load i32, ptr %4, align 4, !tbaa !6
  %159 = load i32, ptr %154, align 4, !tbaa !6
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef signext %102, i32 noundef signext 0, i32 noundef signext %157, i32 noundef signext %157, i32 noundef signext 16, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %158, i32 noundef signext %159, i32 noundef signext 0)
  %160 = xor i1 %101, true
  %161 = zext i1 %160 to i32
  %162 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %163 = shl i32 %162, 1
  %164 = load i32, ptr %9, align 4, !tbaa !6
  %165 = getelementptr inbounds i8, ptr %9, i64 4
  %166 = load i32, ptr %165, align 4, !tbaa !6
  call fastcc void @form_prediction(ptr noundef nonnull %152, i32 noundef signext %161, i32 noundef signext 0, i32 noundef signext %163, i32 noundef signext %163, i32 noundef signext 16, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %164, i32 noundef signext %166, i32 noundef signext 1)
  br label %169

167:                                              ; preds = %123
  %168 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %169

169:                                              ; preds = %54, %52, %83, %85, %98, %32, %34, %126, %124, %167, %150, %114, %116, %8
  %170 = phi i32 [ %12, %8 ], [ 1, %116 ], [ 1, %114 ], [ 1, %150 ], [ 1, %167 ], [ 1, %124 ], [ 1, %126 ], [ 1, %34 ], [ 1, %32 ], [ 1, %98 ], [ 1, %85 ], [ 1, %83 ], [ 1, %52 ], [ 1, %54 ]
  %171 = phi i32 [ %10, %8 ], [ 1, %116 ], [ 1, %114 ], [ 1, %150 ], [ 1, %167 ], [ 1, %124 ], [ 1, %126 ], [ 1, %34 ], [ 1, %32 ], [ 1, %98 ], [ 1, %85 ], [ 1, %83 ], [ 1, %52 ], [ 1, %54 ]
  %172 = and i32 %2, 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %252, label %174

174:                                              ; preds = %169
  %175 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %176 = icmp eq i32 %175, 3
  br i1 %176, label %177, label %222

177:                                              ; preds = %174
  %178 = icmp eq i32 %3, 2
  %179 = icmp slt i32 %170, 2
  br i1 %178, label %180, label %197

180:                                              ; preds = %177
  br i1 %179, label %181, label %188

181:                                              ; preds = %180
  %182 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %183 = shl i32 %182, 1
  %184 = getelementptr inbounds i8, ptr %4, i64 8
  %185 = load i32, ptr %184, align 4, !tbaa !6
  %186 = getelementptr inbounds i8, ptr %4, i64 12
  %187 = load i32, ptr %186, align 4, !tbaa !6
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %182, i32 noundef signext %183, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %185, i32 noundef signext %187, i32 noundef signext %170)
  br label %188

188:                                              ; preds = %181, %180
  %189 = icmp slt i32 %171, 2
  br i1 %189, label %190, label %252

190:                                              ; preds = %188
  %191 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %192 = shl i32 %191, 1
  %193 = getelementptr inbounds i8, ptr %4, i64 8
  %194 = load i32, ptr %193, align 4, !tbaa !6
  %195 = getelementptr inbounds i8, ptr %4, i64 12
  %196 = load i32, ptr %195, align 4, !tbaa !6
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %191, i32 noundef signext %192, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %194, i32 noundef signext %196, i32 noundef signext %171)
  br label %252

197:                                              ; preds = %177
  br i1 %179, label %198, label %209

198:                                              ; preds = %197
  %199 = getelementptr inbounds i8, ptr %5, i64 4
  %200 = load i32, ptr %199, align 4, !tbaa !6
  %201 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %202 = shl i32 %201, 1
  %203 = ashr i32 %1, 1
  %204 = getelementptr inbounds i8, ptr %4, i64 8
  %205 = load i32, ptr %204, align 4, !tbaa !6
  %206 = getelementptr inbounds i8, ptr %4, i64 12
  %207 = load i32, ptr %206, align 4, !tbaa !6
  %208 = ashr i32 %207, 1
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef signext %200, i32 noundef signext 0, i32 noundef signext %202, i32 noundef signext %202, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %203, i32 noundef signext %205, i32 noundef signext %208, i32 noundef signext %170)
  br label %209

209:                                              ; preds = %198, %197
  %210 = icmp slt i32 %171, 2
  br i1 %210, label %211, label %252

211:                                              ; preds = %209
  %212 = getelementptr inbounds i8, ptr %5, i64 12
  %213 = load i32, ptr %212, align 4, !tbaa !6
  %214 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %215 = shl i32 %214, 1
  %216 = ashr i32 %1, 1
  %217 = getelementptr inbounds i8, ptr %4, i64 24
  %218 = load i32, ptr %217, align 4, !tbaa !6
  %219 = getelementptr inbounds i8, ptr %4, i64 28
  %220 = load i32, ptr %219, align 4, !tbaa !6
  %221 = ashr i32 %220, 1
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef signext %213, i32 noundef signext 1, i32 noundef signext %215, i32 noundef signext %215, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %216, i32 noundef signext %218, i32 noundef signext %221, i32 noundef signext %171)
  br label %252

222:                                              ; preds = %174
  switch i32 %3, label %250 [
    i32 1, label %223
    i32 2, label %232
  ]

223:                                              ; preds = %222
  %224 = getelementptr inbounds i8, ptr %5, i64 4
  %225 = load i32, ptr %224, align 4, !tbaa !6
  %226 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %227 = shl i32 %226, 1
  %228 = getelementptr inbounds i8, ptr %4, i64 8
  %229 = load i32, ptr %228, align 4, !tbaa !6
  %230 = getelementptr inbounds i8, ptr %4, i64 12
  %231 = load i32, ptr %230, align 4, !tbaa !6
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef signext %225, i32 noundef signext 0, i32 noundef signext %227, i32 noundef signext %227, i32 noundef signext 16, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %229, i32 noundef signext %231, i32 noundef signext %170)
  br label %252

232:                                              ; preds = %222
  %233 = getelementptr inbounds i8, ptr %5, i64 4
  %234 = load i32, ptr %233, align 4, !tbaa !6
  %235 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %236 = shl i32 %235, 1
  %237 = getelementptr inbounds i8, ptr %4, i64 8
  %238 = load i32, ptr %237, align 4, !tbaa !6
  %239 = getelementptr inbounds i8, ptr %4, i64 12
  %240 = load i32, ptr %239, align 4, !tbaa !6
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef signext %234, i32 noundef signext 0, i32 noundef signext %236, i32 noundef signext %236, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %238, i32 noundef signext %240, i32 noundef signext %170)
  %241 = getelementptr inbounds i8, ptr %5, i64 12
  %242 = load i32, ptr %241, align 4, !tbaa !6
  %243 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %244 = shl i32 %243, 1
  %245 = add nsw i32 %1, 8
  %246 = getelementptr inbounds i8, ptr %4, i64 24
  %247 = load i32, ptr %246, align 4, !tbaa !6
  %248 = getelementptr inbounds i8, ptr %4, i64 28
  %249 = load i32, ptr %248, align 4, !tbaa !6
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef signext %242, i32 noundef signext 0, i32 noundef signext %244, i32 noundef signext %244, i32 noundef signext 8, i32 noundef signext %0, i32 noundef signext %245, i32 noundef signext %247, i32 noundef signext %249, i32 noundef signext %170)
  br label %252

250:                                              ; preds = %222
  %251 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %252

252:                                              ; preds = %209, %211, %188, %190, %232, %250, %223, %169
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @form_prediction(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10) unnamed_addr #2 {
  %12 = load ptr, ptr %0, align 8, !tbaa !10
  %13 = icmp eq i32 %1, 0
  %14 = ashr i32 %4, 1
  %15 = select i1 %13, i32 0, i32 %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %12, i64 %16
  %18 = load ptr, ptr @current_frame, align 8, !tbaa !10
  %19 = icmp eq i32 %2, 0
  %20 = select i1 %19, i32 0, i32 %14
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  tail call fastcc void @form_component_prediction(ptr noundef %17, ptr noundef %22, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext 16, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10)
  %23 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %34, label %25

25:                                               ; preds = %11
  %26 = ashr i32 %3, 1
  %27 = ashr i32 %6, 1
  %28 = sdiv i32 %8, 2
  %29 = icmp eq i32 %23, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = lshr i32 %5, 1
  %32 = ashr i32 %7, 1
  %33 = sdiv i32 %9, 2
  br label %34

34:                                               ; preds = %11, %30, %25
  %35 = phi i32 [ %26, %30 ], [ %26, %25 ], [ %3, %11 ]
  %36 = phi i32 [ %28, %30 ], [ %28, %25 ], [ %8, %11 ]
  %37 = phi i32 [ %27, %30 ], [ %27, %25 ], [ %6, %11 ]
  %38 = phi i32 [ 8, %30 ], [ 8, %25 ], [ 16, %11 ]
  %39 = phi i32 [ %14, %30 ], [ %14, %25 ], [ %4, %11 ]
  %40 = phi i32 [ %31, %30 ], [ %5, %25 ], [ %5, %11 ]
  %41 = phi i32 [ %32, %30 ], [ %7, %25 ], [ %7, %11 ]
  %42 = phi i32 [ %33, %30 ], [ %9, %25 ], [ %9, %11 ]
  %43 = getelementptr inbounds i8, ptr %0, i64 8
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = ashr i32 %39, 1
  %46 = select i1 %13, i32 0, i32 %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = load ptr, ptr getelementptr inbounds (i8, ptr @current_frame, i64 8), align 8, !tbaa !10
  %50 = select i1 %19, i32 0, i32 %45
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  tail call fastcc void @form_component_prediction(ptr noundef %48, ptr noundef %52, i32 noundef signext %35, i32 noundef signext %39, i32 noundef signext %38, i32 noundef signext %40, i32 noundef signext %37, i32 noundef signext %41, i32 noundef signext %36, i32 noundef signext %42, i32 noundef signext %10)
  %53 = getelementptr inbounds i8, ptr %0, i64 16
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  %55 = getelementptr inbounds i8, ptr %54, i64 %47
  %56 = load ptr, ptr getelementptr inbounds (i8, ptr @current_frame, i64 16), align 8, !tbaa !10
  %57 = getelementptr inbounds i8, ptr %56, i64 %51
  tail call fastcc void @form_component_prediction(ptr noundef %55, ptr noundef %57, i32 noundef signext %35, i32 noundef signext %39, i32 noundef signext %38, i32 noundef signext %40, i32 noundef signext %37, i32 noundef signext %41, i32 noundef signext %36, i32 noundef signext %42, i32 noundef signext %10)
  ret void
}

declare dso_local void @Dual_Prime_Arithmetic(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @form_component_prediction(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10) unnamed_addr #2 {
  %12 = ashr i32 %8, 1
  %13 = ashr i32 %9, 1
  %14 = and i32 %9, 1
  %15 = add nsw i32 %13, %7
  %16 = mul nsw i32 %15, %2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = sext i32 %6 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = mul nsw i32 %7, %2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 %19
  %27 = icmp ne i32 %14, 0
  %28 = or i32 %9, %8
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %11
  %32 = icmp eq i32 %10, 0
  %33 = icmp sgt i32 %5, 0
  br i1 %32, label %63, label %34

34:                                               ; preds = %31
  br i1 %33, label %35, label %319

35:                                               ; preds = %34
  %36 = icmp sgt i32 %4, 0
  %37 = sext i32 %3 to i64
  br i1 %36, label %38, label %319

38:                                               ; preds = %35
  %39 = zext nneg i32 %4 to i64
  br label %40

40:                                               ; preds = %38, %58
  %41 = phi ptr [ %60, %58 ], [ %26, %38 ]
  %42 = phi ptr [ %59, %58 ], [ %22, %38 ]
  %43 = phi i32 [ %61, %58 ], [ 0, %38 ]
  br label %44

44:                                               ; preds = %40, %44
  %45 = phi i64 [ 0, %40 ], [ %56, %44 ]
  %46 = getelementptr inbounds i8, ptr %41, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !12
  %48 = zext i8 %47 to i16
  %49 = getelementptr inbounds i8, ptr %42, i64 %45
  %50 = load i8, ptr %49, align 1, !tbaa !12
  %51 = zext i8 %50 to i16
  %52 = add nuw nsw i16 %48, 1
  %53 = add nuw nsw i16 %52, %51
  %54 = lshr i16 %53, 1
  %55 = trunc nuw i16 %54 to i8
  store i8 %55, ptr %46, align 1, !tbaa !12
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, %39
  br i1 %57, label %58, label %44

58:                                               ; preds = %44
  %59 = getelementptr inbounds i8, ptr %42, i64 %37
  %60 = getelementptr inbounds i8, ptr %41, i64 %37
  %61 = add nuw nsw i32 %43, 1
  %62 = icmp eq i32 %61, %5
  br i1 %62, label %319, label %40

63:                                               ; preds = %31
  br i1 %33, label %64, label %319

64:                                               ; preds = %63
  %65 = icmp sgt i32 %4, 0
  %66 = sext i32 %3 to i64
  br i1 %65, label %67, label %319

67:                                               ; preds = %64
  %68 = zext nneg i32 %4 to i64
  br label %69

69:                                               ; preds = %67, %80
  %70 = phi ptr [ %82, %80 ], [ %26, %67 ]
  %71 = phi ptr [ %81, %80 ], [ %22, %67 ]
  %72 = phi i32 [ %83, %80 ], [ 0, %67 ]
  br label %73

73:                                               ; preds = %69, %73
  %74 = phi i64 [ 0, %69 ], [ %78, %73 ]
  %75 = getelementptr inbounds i8, ptr %71, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !12
  %77 = getelementptr inbounds i8, ptr %70, i64 %74
  store i8 %76, ptr %77, align 1, !tbaa !12
  %78 = add nuw nsw i64 %74, 1
  %79 = icmp eq i64 %78, %68
  br i1 %79, label %80, label %73

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, ptr %71, i64 %66
  %82 = getelementptr inbounds i8, ptr %70, i64 %66
  %83 = add nuw nsw i32 %72, 1
  %84 = icmp eq i32 %83, %5
  br i1 %84, label %319, label %69

85:                                               ; preds = %11
  %86 = and i32 %8, 1
  %87 = icmp eq i32 %86, 0
  %88 = and i1 %87, %27
  br i1 %88, label %89, label %161

89:                                               ; preds = %85
  %90 = icmp eq i32 %10, 0
  %91 = icmp sgt i32 %5, 0
  br i1 %90, label %129, label %92

92:                                               ; preds = %89
  br i1 %91, label %93, label %319

93:                                               ; preds = %92
  %94 = icmp sgt i32 %4, 0
  %95 = sext i32 %3 to i64
  br i1 %94, label %96, label %319

96:                                               ; preds = %93
  %97 = sext i32 %2 to i64
  %98 = zext nneg i32 %4 to i64
  br label %99

99:                                               ; preds = %96, %124
  %100 = phi ptr [ %126, %124 ], [ %26, %96 ]
  %101 = phi ptr [ %125, %124 ], [ %22, %96 ]
  %102 = phi i32 [ %127, %124 ], [ 0, %96 ]
  br label %103

103:                                              ; preds = %99, %103
  %104 = phi i64 [ 0, %99 ], [ %122, %103 ]
  %105 = getelementptr inbounds i8, ptr %100, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !12
  %107 = zext i8 %106 to i16
  %108 = getelementptr inbounds i8, ptr %101, i64 %104
  %109 = load i8, ptr %108, align 1, !tbaa !12
  %110 = zext i8 %109 to i16
  %111 = add nsw i64 %104, %97
  %112 = getelementptr inbounds i8, ptr %101, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !12
  %114 = zext i8 %113 to i16
  %115 = add nuw nsw i16 %110, 1
  %116 = add nuw nsw i16 %115, %114
  %117 = lshr i16 %116, 1
  %118 = add nuw nsw i16 %107, 1
  %119 = add nuw nsw i16 %118, %117
  %120 = lshr i16 %119, 1
  %121 = trunc nuw i16 %120 to i8
  store i8 %121, ptr %105, align 1, !tbaa !12
  %122 = add nuw nsw i64 %104, 1
  %123 = icmp eq i64 %122, %98
  br i1 %123, label %124, label %103

124:                                              ; preds = %103
  %125 = getelementptr inbounds i8, ptr %101, i64 %95
  %126 = getelementptr inbounds i8, ptr %100, i64 %95
  %127 = add nuw nsw i32 %102, 1
  %128 = icmp eq i32 %127, %5
  br i1 %128, label %319, label %99

129:                                              ; preds = %89
  br i1 %91, label %130, label %319

130:                                              ; preds = %129
  %131 = icmp sgt i32 %4, 0
  %132 = sext i32 %3 to i64
  br i1 %131, label %133, label %319

133:                                              ; preds = %130
  %134 = sext i32 %2 to i64
  %135 = zext nneg i32 %4 to i64
  br label %136

136:                                              ; preds = %133, %156
  %137 = phi ptr [ %158, %156 ], [ %26, %133 ]
  %138 = phi ptr [ %157, %156 ], [ %22, %133 ]
  %139 = phi i32 [ %159, %156 ], [ 0, %133 ]
  br label %140

140:                                              ; preds = %136, %140
  %141 = phi i64 [ 0, %136 ], [ %154, %140 ]
  %142 = getelementptr inbounds i8, ptr %138, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !12
  %144 = zext i8 %143 to i16
  %145 = add nsw i64 %141, %134
  %146 = getelementptr inbounds i8, ptr %138, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !12
  %148 = zext i8 %147 to i16
  %149 = add nuw nsw i16 %144, 1
  %150 = add nuw nsw i16 %149, %148
  %151 = lshr i16 %150, 1
  %152 = trunc nuw i16 %151 to i8
  %153 = getelementptr inbounds i8, ptr %137, i64 %141
  store i8 %152, ptr %153, align 1, !tbaa !12
  %154 = add nuw nsw i64 %141, 1
  %155 = icmp eq i64 %154, %135
  br i1 %155, label %156, label %140

156:                                              ; preds = %140
  %157 = getelementptr inbounds i8, ptr %138, i64 %132
  %158 = getelementptr inbounds i8, ptr %137, i64 %132
  %159 = add nuw nsw i32 %139, 1
  %160 = icmp eq i32 %159, %5
  br i1 %160, label %319, label %136

161:                                              ; preds = %85
  %162 = or i1 %87, %27
  %163 = icmp eq i32 %10, 0
  %164 = icmp sgt i32 %5, 0
  br i1 %162, label %231, label %165

165:                                              ; preds = %161
  br i1 %163, label %201, label %166

166:                                              ; preds = %165
  br i1 %164, label %167, label %319

167:                                              ; preds = %166
  %168 = icmp sgt i32 %4, 0
  %169 = sext i32 %3 to i64
  br i1 %168, label %170, label %319

170:                                              ; preds = %167
  %171 = zext nneg i32 %4 to i64
  br label %172

172:                                              ; preds = %170, %196
  %173 = phi ptr [ %198, %196 ], [ %26, %170 ]
  %174 = phi ptr [ %197, %196 ], [ %22, %170 ]
  %175 = phi i32 [ %199, %196 ], [ 0, %170 ]
  br label %176

176:                                              ; preds = %172, %176
  %177 = phi i64 [ 0, %172 ], [ %184, %176 ]
  %178 = getelementptr inbounds i8, ptr %173, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !12
  %180 = zext i8 %179 to i16
  %181 = getelementptr inbounds i8, ptr %174, i64 %177
  %182 = load i8, ptr %181, align 1, !tbaa !12
  %183 = zext i8 %182 to i16
  %184 = add nuw nsw i64 %177, 1
  %185 = getelementptr inbounds i8, ptr %174, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !12
  %187 = zext i8 %186 to i16
  %188 = add nuw nsw i16 %183, 1
  %189 = add nuw nsw i16 %188, %187
  %190 = lshr i16 %189, 1
  %191 = add nuw nsw i16 %180, 1
  %192 = add nuw nsw i16 %191, %190
  %193 = lshr i16 %192, 1
  %194 = trunc nuw i16 %193 to i8
  store i8 %194, ptr %178, align 1, !tbaa !12
  %195 = icmp eq i64 %184, %171
  br i1 %195, label %196, label %176

196:                                              ; preds = %176
  %197 = getelementptr inbounds i8, ptr %174, i64 %169
  %198 = getelementptr inbounds i8, ptr %173, i64 %169
  %199 = add nuw nsw i32 %175, 1
  %200 = icmp eq i32 %199, %5
  br i1 %200, label %319, label %172

201:                                              ; preds = %165
  br i1 %164, label %202, label %319

202:                                              ; preds = %201
  %203 = icmp sgt i32 %4, 0
  %204 = sext i32 %3 to i64
  br i1 %203, label %205, label %319

205:                                              ; preds = %202
  %206 = zext nneg i32 %4 to i64
  br label %207

207:                                              ; preds = %205, %226
  %208 = phi ptr [ %228, %226 ], [ %26, %205 ]
  %209 = phi ptr [ %227, %226 ], [ %22, %205 ]
  %210 = phi i32 [ %229, %226 ], [ 0, %205 ]
  br label %211

211:                                              ; preds = %207, %211
  %212 = phi i64 [ 0, %207 ], [ %216, %211 ]
  %213 = getelementptr inbounds i8, ptr %209, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !12
  %215 = zext i8 %214 to i16
  %216 = add nuw nsw i64 %212, 1
  %217 = getelementptr inbounds i8, ptr %209, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !12
  %219 = zext i8 %218 to i16
  %220 = add nuw nsw i16 %215, 1
  %221 = add nuw nsw i16 %220, %219
  %222 = lshr i16 %221, 1
  %223 = trunc nuw i16 %222 to i8
  %224 = getelementptr inbounds i8, ptr %208, i64 %212
  store i8 %223, ptr %224, align 1, !tbaa !12
  %225 = icmp eq i64 %216, %206
  br i1 %225, label %226, label %211

226:                                              ; preds = %211
  %227 = getelementptr inbounds i8, ptr %209, i64 %204
  %228 = getelementptr inbounds i8, ptr %208, i64 %204
  %229 = add nuw nsw i32 %210, 1
  %230 = icmp eq i32 %229, %5
  br i1 %230, label %319, label %207

231:                                              ; preds = %161
  br i1 %163, label %278, label %232

232:                                              ; preds = %231
  br i1 %164, label %233, label %319

233:                                              ; preds = %232
  %234 = icmp sgt i32 %4, 0
  %235 = sext i32 %3 to i64
  br i1 %234, label %236, label %319

236:                                              ; preds = %233
  %237 = sext i32 %2 to i64
  %238 = zext nneg i32 %4 to i64
  br label %239

239:                                              ; preds = %236, %273
  %240 = phi ptr [ %275, %273 ], [ %26, %236 ]
  %241 = phi ptr [ %274, %273 ], [ %22, %236 ]
  %242 = phi i32 [ %276, %273 ], [ 0, %236 ]
  br label %243

243:                                              ; preds = %239, %243
  %244 = phi i64 [ 0, %239 ], [ %251, %243 ]
  %245 = getelementptr inbounds i8, ptr %240, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !12
  %247 = zext i8 %246 to i32
  %248 = getelementptr inbounds i8, ptr %241, i64 %244
  %249 = load i8, ptr %248, align 1, !tbaa !12
  %250 = zext i8 %249 to i32
  %251 = add nuw nsw i64 %244, 1
  %252 = getelementptr inbounds i8, ptr %241, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !12
  %254 = zext i8 %253 to i32
  %255 = add nsw i64 %244, %237
  %256 = getelementptr inbounds i8, ptr %241, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !12
  %258 = zext i8 %257 to i32
  %259 = add nsw i64 %255, 1
  %260 = getelementptr inbounds i8, ptr %241, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !12
  %262 = zext i8 %261 to i32
  %263 = add nuw nsw i32 %250, 2
  %264 = add nuw nsw i32 %263, %254
  %265 = add nuw nsw i32 %264, %258
  %266 = add nuw nsw i32 %265, %262
  %267 = lshr i32 %266, 2
  %268 = add nuw nsw i32 %247, 1
  %269 = add nuw nsw i32 %268, %267
  %270 = lshr i32 %269, 1
  %271 = trunc nuw i32 %270 to i8
  store i8 %271, ptr %245, align 1, !tbaa !12
  %272 = icmp eq i64 %251, %238
  br i1 %272, label %273, label %243

273:                                              ; preds = %243
  %274 = getelementptr inbounds i8, ptr %241, i64 %235
  %275 = getelementptr inbounds i8, ptr %240, i64 %235
  %276 = add nuw nsw i32 %242, 1
  %277 = icmp eq i32 %276, %5
  br i1 %277, label %319, label %239

278:                                              ; preds = %231
  br i1 %164, label %279, label %319

279:                                              ; preds = %278
  %280 = icmp sgt i32 %4, 0
  %281 = sext i32 %3 to i64
  br i1 %280, label %282, label %319

282:                                              ; preds = %279
  %283 = sext i32 %2 to i64
  %284 = zext nneg i32 %4 to i64
  br label %285

285:                                              ; preds = %282, %314
  %286 = phi ptr [ %316, %314 ], [ %26, %282 ]
  %287 = phi ptr [ %315, %314 ], [ %22, %282 ]
  %288 = phi i32 [ %317, %314 ], [ 0, %282 ]
  br label %289

289:                                              ; preds = %285, %289
  %290 = phi i64 [ 0, %285 ], [ %294, %289 ]
  %291 = getelementptr inbounds i8, ptr %287, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !12
  %293 = zext i8 %292 to i16
  %294 = add nuw nsw i64 %290, 1
  %295 = getelementptr inbounds i8, ptr %287, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !12
  %297 = zext i8 %296 to i16
  %298 = add nsw i64 %290, %283
  %299 = getelementptr inbounds i8, ptr %287, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !12
  %301 = zext i8 %300 to i16
  %302 = add nsw i64 %298, 1
  %303 = getelementptr inbounds i8, ptr %287, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !12
  %305 = zext i8 %304 to i16
  %306 = add nuw nsw i16 %293, 2
  %307 = add nuw nsw i16 %306, %297
  %308 = add nuw nsw i16 %307, %301
  %309 = add nuw nsw i16 %308, %305
  %310 = lshr i16 %309, 2
  %311 = trunc nuw i16 %310 to i8
  %312 = getelementptr inbounds i8, ptr %286, i64 %290
  store i8 %311, ptr %312, align 1, !tbaa !12
  %313 = icmp eq i64 %294, %284
  br i1 %313, label %314, label %289

314:                                              ; preds = %289
  %315 = getelementptr inbounds i8, ptr %287, i64 %281
  %316 = getelementptr inbounds i8, ptr %286, i64 %281
  %317 = add nuw nsw i32 %288, 1
  %318 = icmp eq i32 %317, %5
  br i1 %318, label %319, label %285

319:                                              ; preds = %196, %226, %273, %314, %124, %156, %58, %80, %279, %233, %202, %167, %130, %93, %64, %35, %166, %201, %232, %278, %92, %129, %34, %63
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
