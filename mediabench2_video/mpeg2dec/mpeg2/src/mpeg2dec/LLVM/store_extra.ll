; ModuleID = 'store.c'
source_filename = "store.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.layer_data = type { i32, [2048 x i8], ptr, [16 x i8], i32, ptr, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@progressive_sequence = external dso_local local_unnamed_addr global i32, align 4
@progressive_frame = external dso_local local_unnamed_addr global i32, align 4
@Frame_Store_Flag = external dso_local local_unnamed_addr global i32, align 4
@Output_Picture_Filename = external dso_local local_unnamed_addr global ptr, align 8
@Coded_Picture_Width = external dso_local local_unnamed_addr global i32, align 4
@vertical_size = external dso_local local_unnamed_addr global i32, align 4
@Output_Type = external dso_local local_unnamed_addr global i32, align 4
@horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@Quiet_Flag = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"saving %s\0A\00", align 1
@outfile = internal unnamed_addr global i32 0, align 4
@Error_Text = external dso_local global [256 x i8], align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Couldn't create %s\0A\00", align 1
@obfr = internal global [4096 x i8] zeroinitializer, align 1
@optr = internal unnamed_addr global ptr null, align 8
@store_sif.u422 = internal unnamed_addr global ptr null, align 8
@store_sif.v422 = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"4:4:4 not supported for SIF format\00", align 1
@Coded_Picture_Height = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".SIF\00", align 1
@Clip = external dso_local local_unnamed_addr global ptr, align 8
@store_ppm_tga.u422 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.v422 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.u444 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.v444 = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".ppm\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1
@Inverse_Table_6_9 = external dso_local local_unnamed_addr global [8 x [4 x i32]], align 4
@matrix_coefficients = external dso_local local_unnamed_addr global i32, align 4
@base = external dso_local local_unnamed_addr global %struct.layer_data, align 8

; Function Attrs: nounwind
define dso_local void @Write_Frame(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #10
  %4 = load i32, ptr @progressive_sequence, align 4, !tbaa !6
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @progressive_frame, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i32, ptr @Frame_Store_Flag, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = load ptr, ptr @Output_Picture_Filename, align 8, !tbaa !10
  br i1 %11, label %13, label %17

13:                                               ; preds = %2
  %14 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %12, i32 noundef signext %1, i32 noundef signext 102) #10
  %15 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %16 = load i32, ptr @vertical_size, align 4, !tbaa !6
  call fastcc void @store_one(ptr noundef nonnull %3, ptr noundef %0, i32 noundef signext 0, i32 noundef signext %15, i32 noundef signext %16)
  br label %29

17:                                               ; preds = %2
  %18 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %12, i32 noundef signext %1, i32 noundef signext 97) #10
  %19 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %20 = shl i32 %19, 1
  %21 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %22 = ashr i32 %21, 1
  call fastcc void @store_one(ptr noundef nonnull %3, ptr noundef %0, i32 noundef signext 0, i32 noundef signext %20, i32 noundef signext %22)
  %23 = load ptr, ptr @Output_Picture_Filename, align 8, !tbaa !10
  %24 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %23, i32 noundef signext %1, i32 noundef signext 98) #10
  %25 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %26 = shl i32 %25, 1
  %27 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %28 = ashr i32 %27, 1
  call fastcc void @store_one(ptr noundef nonnull %3, ptr noundef %0, i32 noundef signext %25, i32 noundef signext %26, i32 noundef signext %28)
  br label %29

29:                                               ; preds = %17, %13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @store_one(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) unnamed_addr #0 {
  %6 = alloca [256 x i8], align 1
  %7 = load i32, ptr @Output_Type, align 4, !tbaa !6
  switch i32 %7, label %179 [
    i32 0, label %8
    i32 1, label %27
    i32 2, label %177
    i32 3, label %178
  ]

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #10
  %9 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %10 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0) #10
  %11 = load ptr, ptr %1, align 8, !tbaa !10
  call fastcc void @store_yuv1(ptr noundef nonnull %6, ptr noundef %11, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %9, i32 noundef signext %4)
  %12 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %13 = icmp ne i32 %12, 3
  %14 = zext i1 %13 to i32
  %15 = ashr i32 %2, %14
  %16 = ashr i32 %3, %14
  %17 = ashr i32 %9, %14
  %18 = icmp eq i32 %12, 1
  %19 = zext i1 %18 to i32
  %20 = ashr i32 %4, %19
  %21 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0) #10
  %22 = getelementptr inbounds i8, ptr %1, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  call fastcc void @store_yuv1(ptr noundef nonnull %6, ptr noundef %23, i32 noundef signext %15, i32 noundef signext %16, i32 noundef signext %17, i32 noundef signext %20)
  %24 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %0) #10
  %25 = getelementptr inbounds i8, ptr %1, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  call fastcc void @store_yuv1(ptr noundef nonnull %6, ptr noundef %26, i32 noundef signext %15, i32 noundef signext %16, i32 noundef signext %17, i32 noundef signext %20)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #10
  br label %179

27:                                               ; preds = %5
  %28 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  tail call void @Error(ptr noundef nonnull @.str.5) #10
  %31 = load i32, ptr @chroma_format, align 4, !tbaa !6
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ %28, %27 ]
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %1, i64 8
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  store ptr %37, ptr @store_sif.u422, align 8, !tbaa !10
  %38 = getelementptr inbounds i8, ptr %1, i64 16
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  store ptr %39, ptr @store_sif.v422, align 8, !tbaa !10
  br label %69

40:                                               ; preds = %32
  %41 = load ptr, ptr @store_sif.u422, align 8, !tbaa !10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %45 = ashr i32 %44, 1
  %46 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = tail call noalias ptr @malloc(i64 noundef %48) #11
  store ptr %49, ptr @store_sif.u422, align 8, !tbaa !10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %52 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %53 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %54 = ashr i32 %52, 1
  %55 = mul nsw i32 %54, %53
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %51, %43
  %58 = phi i64 [ %56, %51 ], [ %48, %43 ]
  %59 = tail call noalias ptr @malloc(i64 noundef %58) #11
  store ptr %59, ptr @store_sif.v422, align 8, !tbaa !10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  br label %62

62:                                               ; preds = %61, %57, %40
  %63 = getelementptr inbounds i8, ptr %1, i64 8
  %64 = load ptr, ptr %63, align 8, !tbaa !10
  %65 = load ptr, ptr @store_sif.u422, align 8, !tbaa !10
  tail call fastcc void @conv420to422(ptr noundef %64, ptr noundef %65)
  %66 = getelementptr inbounds i8, ptr %1, i64 16
  %67 = load ptr, ptr %66, align 8, !tbaa !10
  %68 = load ptr, ptr @store_sif.v422, align 8, !tbaa !10
  tail call fastcc void @conv420to422(ptr noundef %67, ptr noundef %68)
  br label %69

69:                                               ; preds = %62, %35
  %70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %71 = getelementptr inbounds i8, ptr %0, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %71, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %72 = load i32, ptr @Quiet_Flag, align 4, !tbaa !6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load ptr, ptr @stderr, align 8, !tbaa !10
  %76 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #12
  br label %77

77:                                               ; preds = %74, %69
  %78 = tail call signext i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef signext 577, i32 noundef signext 438) #10
  store i32 %78, ptr @outfile, align 4, !tbaa !6
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #10
  tail call void @Error(ptr noundef nonnull @Error_Text) #10
  br label %82

82:                                               ; preds = %80, %77
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  %83 = icmp sgt i32 %4, 0
  br i1 %83, label %84, label %164

84:                                               ; preds = %82
  %85 = sext i32 %2 to i64
  %86 = ashr i32 %2, 1
  %87 = sext i32 %86 to i64
  %88 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %164

90:                                               ; preds = %84
  %91 = ashr i32 %3, 1
  %92 = sext i32 %3 to i64
  %93 = sext i32 %91 to i64
  %94 = zext nneg i32 %4 to i64
  br label %95

95:                                               ; preds = %159, %90
  %96 = phi ptr [ @obfr, %90 ], [ %160, %159 ]
  %97 = phi i32 [ %88, %90 ], [ %161, %159 ]
  %98 = phi i64 [ 0, %90 ], [ %162, %159 ]
  %99 = icmp sgt i32 %97, 0
  br i1 %99, label %100, label %159

100:                                              ; preds = %95
  %101 = load ptr, ptr @store_sif.v422, align 8, !tbaa !10
  %102 = getelementptr inbounds i8, ptr %101, i64 %87
  %103 = mul nsw i64 %98, %93
  %104 = getelementptr inbounds i8, ptr %102, i64 %103
  %105 = load ptr, ptr @store_sif.u422, align 8, !tbaa !10
  %106 = getelementptr inbounds i8, ptr %105, i64 %87
  %107 = getelementptr inbounds i8, ptr %106, i64 %103
  %108 = load ptr, ptr %1, align 8, !tbaa !10
  %109 = getelementptr inbounds i8, ptr %108, i64 %85
  %110 = mul nsw i64 %98, %92
  %111 = getelementptr inbounds i8, ptr %109, i64 %110
  br label %112

112:                                              ; preds = %154, %100
  %113 = phi ptr [ %155, %154 ], [ %96, %100 ]
  %114 = phi ptr [ %138, %154 ], [ %104, %100 ]
  %115 = phi ptr [ %118, %154 ], [ %107, %100 ]
  %116 = phi ptr [ %147, %154 ], [ %111, %100 ]
  %117 = phi i32 [ %156, %154 ], [ 0, %100 ]
  %118 = getelementptr inbounds i8, ptr %115, i64 1
  %119 = load i8, ptr %115, align 1, !tbaa !12
  %120 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %120, ptr @optr, align 8, !tbaa !10
  store i8 %119, ptr %113, align 1, !tbaa !12
  %121 = icmp eq ptr %120, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %121, label %124, label %122

122:                                              ; preds = %112
  %123 = load ptr, ptr @optr, align 8, !tbaa !10
  br label %127

124:                                              ; preds = %112
  %125 = load i32, ptr @outfile, align 4, !tbaa !6
  %126 = tail call signext i32 @write(i32 noundef signext %125, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi ptr [ %123, %122 ], [ @obfr, %124 ]
  %129 = getelementptr inbounds i8, ptr %116, i64 1
  %130 = load i8, ptr %116, align 1, !tbaa !12
  %131 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %131, ptr @optr, align 8, !tbaa !10
  store i8 %130, ptr %128, align 1, !tbaa !12
  %132 = icmp eq ptr %131, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, ptr @outfile, align 4, !tbaa !6
  %135 = tail call signext i32 @write(i32 noundef signext %134, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %136

136:                                              ; preds = %133, %127
  %137 = phi ptr [ %131, %127 ], [ @obfr, %133 ]
  %138 = getelementptr inbounds i8, ptr %114, i64 1
  %139 = load i8, ptr %114, align 1, !tbaa !12
  %140 = getelementptr inbounds i8, ptr %137, i64 1
  store ptr %140, ptr @optr, align 8, !tbaa !10
  store i8 %139, ptr %137, align 1, !tbaa !12
  %141 = icmp eq ptr %140, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i32, ptr @outfile, align 4, !tbaa !6
  %144 = tail call signext i32 @write(i32 noundef signext %143, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %145

145:                                              ; preds = %142, %136
  %146 = phi ptr [ %140, %136 ], [ @obfr, %142 ]
  %147 = getelementptr inbounds i8, ptr %116, i64 2
  %148 = load i8, ptr %129, align 1, !tbaa !12
  %149 = getelementptr inbounds i8, ptr %146, i64 1
  store ptr %149, ptr @optr, align 8, !tbaa !10
  store i8 %148, ptr %146, align 1, !tbaa !12
  %150 = icmp eq ptr %149, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, ptr @outfile, align 4, !tbaa !6
  %153 = tail call signext i32 @write(i32 noundef signext %152, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  br label %154

154:                                              ; preds = %151, %145
  %155 = phi ptr [ %149, %145 ], [ @obfr, %151 ]
  %156 = add nuw nsw i32 %117, 2
  %157 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %112, label %159

159:                                              ; preds = %154, %95
  %160 = phi ptr [ %96, %95 ], [ %155, %154 ]
  %161 = phi i32 [ %97, %95 ], [ %157, %154 ]
  %162 = add nuw nsw i64 %98, 1
  %163 = icmp eq i64 %162, %94
  br i1 %163, label %166, label %95, !llvm.loop !13

164:                                              ; preds = %84, %82
  %165 = load i32, ptr @outfile, align 4, !tbaa !6
  br label %174

166:                                              ; preds = %159
  %167 = icmp eq ptr %160, @obfr
  %168 = load i32, ptr @outfile, align 4, !tbaa !6
  br i1 %167, label %174, label %169

169:                                              ; preds = %166
  %170 = ptrtoint ptr %160 to i64
  %171 = sub i64 %170, ptrtoint (ptr @obfr to i64)
  %172 = tail call signext i32 @write(i32 noundef signext %168, ptr noundef nonnull @obfr, i64 noundef %171) #10
  %173 = load i32, ptr @outfile, align 4, !tbaa !6
  br label %174

174:                                              ; preds = %164, %166, %169
  %175 = phi i32 [ %173, %169 ], [ %168, %166 ], [ %165, %164 ]
  %176 = tail call signext i32 @close(i32 noundef signext %175) #10
  br label %179

177:                                              ; preds = %5
  tail call fastcc void @store_ppm_tga(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext 1)
  br label %179

178:                                              ; preds = %5
  tail call fastcc void @store_ppm_tga(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext 0)
  br label %179

179:                                              ; preds = %5, %178, %177, %174, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal fastcc void @store_ppm_tga(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) unnamed_addr #0 {
  %7 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #10
  %8 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  store ptr %12, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  %13 = getelementptr inbounds i8, ptr %1, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  store ptr %14, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  br label %78

15:                                               ; preds = %6
  %16 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %62

18:                                               ; preds = %15
  %19 = icmp eq i32 %8, 1
  %20 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %21 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  br i1 %19, label %22, label %43

22:                                               ; preds = %18
  %23 = ashr i32 %20, 1
  %24 = mul nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #11
  store ptr %26, ptr @store_ppm_tga.u422, align 8, !tbaa !10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %29 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %30 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %31 = ashr i32 %29, 1
  %32 = mul nsw i32 %31, %30
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i64 [ %33, %28 ], [ %25, %22 ]
  %36 = phi i32 [ %30, %28 ], [ %21, %22 ]
  %37 = phi i32 [ %29, %28 ], [ %20, %22 ]
  %38 = tail call noalias ptr @malloc(i64 noundef %35) #11
  store ptr %38, ptr @store_ppm_tga.v422, align 8, !tbaa !10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %41 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %42 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  br label %43

43:                                               ; preds = %34, %40, %18
  %44 = phi i32 [ %36, %34 ], [ %42, %40 ], [ %21, %18 ]
  %45 = phi i32 [ %37, %34 ], [ %41, %40 ], [ %20, %18 ]
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = tail call noalias ptr @malloc(i64 noundef %47) #11
  store ptr %48, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %51 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %52 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %53 = mul nsw i32 %52, %51
  %54 = sext i32 %53 to i64
  br label %55

55:                                               ; preds = %50, %43
  %56 = phi i64 [ %54, %50 ], [ %47, %43 ]
  %57 = tail call noalias ptr @malloc(i64 noundef %56) #11
  store ptr %57, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, ptr @chroma_format, align 4, !tbaa !6
  br label %62

62:                                               ; preds = %60, %15
  %63 = phi i32 [ %61, %60 ], [ %8, %15 ]
  %64 = icmp eq i32 %63, 1
  %65 = getelementptr inbounds i8, ptr %1, i64 8
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  %67 = getelementptr inbounds i8, ptr %1, i64 16
  br i1 %64, label %68, label %74

68:                                               ; preds = %62
  %69 = load ptr, ptr @store_ppm_tga.u422, align 8, !tbaa !10
  tail call fastcc void @conv420to422(ptr noundef %66, ptr noundef %69)
  %70 = load ptr, ptr %67, align 8, !tbaa !10
  %71 = load ptr, ptr @store_ppm_tga.v422, align 8, !tbaa !10
  tail call fastcc void @conv420to422(ptr noundef %70, ptr noundef %71)
  %72 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  tail call fastcc void @conv422to444(ptr noundef %69, ptr noundef %72)
  %73 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  tail call fastcc void @conv422to444(ptr noundef %71, ptr noundef %73)
  br label %78

74:                                               ; preds = %62
  %75 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  tail call fastcc void @conv422to444(ptr noundef %66, ptr noundef %75)
  %76 = load ptr, ptr %67, align 8, !tbaa !10
  %77 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  tail call fastcc void @conv422to444(ptr noundef %76, ptr noundef %77)
  br label %78

78:                                               ; preds = %68, %74, %10
  %79 = icmp eq i32 %5, 0
  %80 = select i1 %79, ptr @.str.9, ptr @.str.8
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %82 = getelementptr inbounds i8, ptr %0, i64 %81
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %82, ptr noundef nonnull align 1 dereferenceable(5) %80, i64 5, i1 false)
  %83 = load i32, ptr @Quiet_Flag, align 4, !tbaa !6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load ptr, ptr @stderr, align 8, !tbaa !10
  %87 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #12
  br label %88

88:                                               ; preds = %85, %78
  %89 = tail call signext i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef signext 577, i32 noundef signext 438) #10
  store i32 %89, ptr @outfile, align 4, !tbaa !6
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #10
  tail call void @Error(ptr noundef nonnull @Error_Text) #10
  br label %93

93:                                               ; preds = %91, %88
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  br i1 %79, label %102, label %94

94:                                               ; preds = %93
  store i8 0, ptr @obfr, align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 1), align 1, !tbaa !12
  store i8 2, ptr getelementptr inbounds (i8, ptr @obfr, i64 2), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 3), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 4), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 5), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 6), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 7), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 8), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 9), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 10), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (i8, ptr @obfr, i64 11), align 1, !tbaa !12
  %95 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %96 = trunc i32 %95 to i8
  store i8 %96, ptr getelementptr inbounds (i8, ptr @obfr, i64 12), align 1, !tbaa !12
  %97 = lshr i32 %95, 8
  %98 = trunc i32 %97 to i8
  store i8 %98, ptr getelementptr inbounds (i8, ptr @obfr, i64 13), align 1, !tbaa !12
  %99 = trunc i32 %4 to i8
  store i8 %99, ptr getelementptr inbounds (i8, ptr @obfr, i64 14), align 1, !tbaa !12
  %100 = lshr i32 %4, 8
  %101 = trunc i32 %100 to i8
  store i8 %101, ptr getelementptr inbounds (i8, ptr @obfr, i64 15), align 1, !tbaa !12
  store i8 24, ptr getelementptr inbounds (i8, ptr @obfr, i64 16), align 1, !tbaa !12
  store ptr getelementptr inbounds (i8, ptr @obfr, i64 18), ptr @optr, align 8, !tbaa !10
  store i8 32, ptr getelementptr inbounds (i8, ptr @obfr, i64 17), align 1, !tbaa !12
  br label %124

102:                                              ; preds = %93
  %103 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %104 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef signext %103, i32 noundef signext %4) #10
  %105 = load i8, ptr %7, align 1, !tbaa !12
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %102
  %108 = load ptr, ptr @optr, align 8, !tbaa !10
  br label %109

109:                                              ; preds = %107, %118
  %110 = phi ptr [ %108, %107 ], [ %119, %118 ]
  %111 = phi i64 [ 0, %107 ], [ %120, %118 ]
  %112 = phi i8 [ %105, %107 ], [ %122, %118 ]
  %113 = getelementptr inbounds i8, ptr %110, i64 1
  store ptr %113, ptr @optr, align 8, !tbaa !10
  store i8 %112, ptr %110, align 1, !tbaa !12
  %114 = icmp eq ptr %113, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, ptr @outfile, align 4, !tbaa !6
  %117 = tail call signext i32 @write(i32 noundef signext %116, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  br label %118

118:                                              ; preds = %109, %115
  %119 = phi ptr [ %113, %109 ], [ @obfr, %115 ]
  %120 = add nuw nsw i64 %111, 1
  %121 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !12
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %109

124:                                              ; preds = %118, %94, %102
  %125 = load i32, ptr @matrix_coefficients, align 4, !tbaa !6
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8 x [4 x i32]], ptr @Inverse_Table_6_9, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %127, i64 4
  %130 = load i32, ptr %129, align 4, !tbaa !6
  %131 = icmp sgt i32 %4, 0
  br i1 %131, label %132, label %299

132:                                              ; preds = %124
  %133 = getelementptr inbounds i8, ptr %127, i64 12
  %134 = load i32, ptr %133, align 4, !tbaa !6
  %135 = getelementptr inbounds i8, ptr %127, i64 8
  %136 = load i32, ptr %135, align 4, !tbaa !6
  %137 = sext i32 %2 to i64
  %138 = sub i32 0, %136
  %139 = sub i32 0, %134
  %140 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %299

142:                                              ; preds = %132
  %143 = sext i32 %3 to i64
  %144 = zext nneg i32 %4 to i64
  br label %145

145:                                              ; preds = %142, %295
  %146 = phi i32 [ %140, %142 ], [ %296, %295 ]
  %147 = phi i64 [ 0, %142 ], [ %297, %295 ]
  %148 = icmp sgt i32 %146, 0
  br i1 %148, label %149, label %295

149:                                              ; preds = %145
  %150 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  %151 = getelementptr inbounds i8, ptr %150, i64 %137
  %152 = mul nsw i64 %147, %143
  %153 = getelementptr inbounds i8, ptr %151, i64 %152
  %154 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  %155 = getelementptr inbounds i8, ptr %154, i64 %137
  %156 = getelementptr inbounds i8, ptr %155, i64 %152
  %157 = load ptr, ptr %1, align 8, !tbaa !10
  %158 = getelementptr inbounds i8, ptr %157, i64 %137
  %159 = getelementptr inbounds i8, ptr %158, i64 %152
  %160 = load ptr, ptr @optr, align 8, !tbaa !10
  br i1 %79, label %161, label %228

161:                                              ; preds = %149, %223
  %162 = phi ptr [ %224, %223 ], [ %160, %149 ]
  %163 = phi ptr [ %171, %223 ], [ %153, %149 ]
  %164 = phi ptr [ %167, %223 ], [ %156, %149 ]
  %165 = phi ptr [ %175, %223 ], [ %159, %149 ]
  %166 = phi i32 [ %225, %223 ], [ 0, %149 ]
  %167 = getelementptr inbounds i8, ptr %164, i64 1
  %168 = load i8, ptr %164, align 1, !tbaa !12
  %169 = zext i8 %168 to i32
  %170 = add nsw i32 %169, -128
  %171 = getelementptr inbounds i8, ptr %163, i64 1
  %172 = load i8, ptr %163, align 1, !tbaa !12
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %173, -128
  %175 = getelementptr inbounds i8, ptr %165, i64 1
  %176 = load i8, ptr %165, align 1, !tbaa !12
  %177 = zext i8 %176 to i32
  %178 = mul nuw nsw i32 %177, 76309
  %179 = add nsw i32 %178, -1220944
  %180 = load ptr, ptr @Clip, align 8, !tbaa !10
  %181 = mul nsw i32 %174, %128
  %182 = add i32 %181, 32768
  %183 = add i32 %182, %179
  %184 = ashr i32 %183, 16
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, ptr %180, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !12
  %188 = mul i32 %170, %138
  %189 = mul i32 %174, %139
  %190 = add i32 %189, %188
  %191 = add nsw i32 %178, -1188176
  %192 = add i32 %191, %190
  %193 = ashr i32 %192, 16
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %180, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !12
  %197 = mul nsw i32 %170, %130
  %198 = add i32 %197, 32786
  %199 = add i32 %198, %179
  %200 = ashr i32 %199, 16
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %180, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !12
  %204 = getelementptr inbounds i8, ptr %162, i64 1
  store ptr %204, ptr @optr, align 8, !tbaa !10
  store i8 %187, ptr %162, align 1, !tbaa !12
  %205 = icmp eq ptr %204, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %205, label %206, label %209

206:                                              ; preds = %161
  %207 = load i32, ptr @outfile, align 4, !tbaa !6
  %208 = tail call signext i32 @write(i32 noundef signext %207, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %209

209:                                              ; preds = %206, %161
  %210 = phi ptr [ @obfr, %206 ], [ %204, %161 ]
  %211 = getelementptr inbounds i8, ptr %210, i64 1
  store ptr %211, ptr @optr, align 8, !tbaa !10
  store i8 %196, ptr %210, align 1, !tbaa !12
  %212 = icmp eq ptr %211, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32, ptr @outfile, align 4, !tbaa !6
  %215 = tail call signext i32 @write(i32 noundef signext %214, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %216

216:                                              ; preds = %213, %209
  %217 = phi ptr [ @obfr, %213 ], [ %211, %209 ]
  %218 = getelementptr inbounds i8, ptr %217, i64 1
  store ptr %218, ptr @optr, align 8, !tbaa !10
  store i8 %203, ptr %217, align 1, !tbaa !12
  %219 = icmp eq ptr %218, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i32, ptr @outfile, align 4, !tbaa !6
  %222 = tail call signext i32 @write(i32 noundef signext %221, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  br label %223

223:                                              ; preds = %220, %216
  %224 = phi ptr [ @obfr, %220 ], [ %218, %216 ]
  %225 = add nuw nsw i32 %166, 1
  %226 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %161, label %295

228:                                              ; preds = %149, %290
  %229 = phi ptr [ %291, %290 ], [ %160, %149 ]
  %230 = phi ptr [ %238, %290 ], [ %153, %149 ]
  %231 = phi ptr [ %234, %290 ], [ %156, %149 ]
  %232 = phi ptr [ %242, %290 ], [ %159, %149 ]
  %233 = phi i32 [ %292, %290 ], [ 0, %149 ]
  %234 = getelementptr inbounds i8, ptr %231, i64 1
  %235 = load i8, ptr %231, align 1, !tbaa !12
  %236 = zext i8 %235 to i32
  %237 = add nsw i32 %236, -128
  %238 = getelementptr inbounds i8, ptr %230, i64 1
  %239 = load i8, ptr %230, align 1, !tbaa !12
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %240, -128
  %242 = getelementptr inbounds i8, ptr %232, i64 1
  %243 = load i8, ptr %232, align 1, !tbaa !12
  %244 = zext i8 %243 to i32
  %245 = mul nuw nsw i32 %244, 76309
  %246 = add nsw i32 %245, -1220944
  %247 = load ptr, ptr @Clip, align 8, !tbaa !10
  %248 = mul nsw i32 %241, %128
  %249 = add i32 %248, 32768
  %250 = add i32 %249, %246
  %251 = ashr i32 %250, 16
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %247, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !12
  %255 = mul i32 %237, %138
  %256 = mul i32 %241, %139
  %257 = add i32 %256, %255
  %258 = add nsw i32 %245, -1188176
  %259 = add i32 %258, %257
  %260 = ashr i32 %259, 16
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, ptr %247, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !12
  %264 = mul nsw i32 %237, %130
  %265 = add i32 %264, 32786
  %266 = add i32 %265, %246
  %267 = ashr i32 %266, 16
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %247, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !12
  %271 = getelementptr inbounds i8, ptr %229, i64 1
  store ptr %271, ptr @optr, align 8, !tbaa !10
  store i8 %270, ptr %229, align 1, !tbaa !12
  %272 = icmp eq ptr %271, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %272, label %273, label %276

273:                                              ; preds = %228
  %274 = load i32, ptr @outfile, align 4, !tbaa !6
  %275 = tail call signext i32 @write(i32 noundef signext %274, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %276

276:                                              ; preds = %228, %273
  %277 = phi ptr [ %271, %228 ], [ @obfr, %273 ]
  %278 = getelementptr inbounds i8, ptr %277, i64 1
  store ptr %278, ptr @optr, align 8, !tbaa !10
  store i8 %263, ptr %277, align 1, !tbaa !12
  %279 = icmp eq ptr %278, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load i32, ptr @outfile, align 4, !tbaa !6
  %282 = tail call signext i32 @write(i32 noundef signext %281, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %283

283:                                              ; preds = %276, %280
  %284 = phi ptr [ %278, %276 ], [ @obfr, %280 ]
  %285 = getelementptr inbounds i8, ptr %284, i64 1
  store ptr %285, ptr @optr, align 8, !tbaa !10
  store i8 %254, ptr %284, align 1, !tbaa !12
  %286 = icmp eq ptr %285, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = load i32, ptr @outfile, align 4, !tbaa !6
  %289 = tail call signext i32 @write(i32 noundef signext %288, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  br label %290

290:                                              ; preds = %287, %283
  %291 = phi ptr [ @obfr, %287 ], [ %285, %283 ]
  %292 = add nuw nsw i32 %233, 1
  %293 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %228, label %295

295:                                              ; preds = %290, %223, %145
  %296 = phi i32 [ %146, %145 ], [ %226, %223 ], [ %293, %290 ]
  %297 = add nuw nsw i64 %147, 1
  %298 = icmp eq i64 %297, %144
  br i1 %298, label %299, label %145, !llvm.loop !15

299:                                              ; preds = %295, %132, %124
  %300 = load ptr, ptr @optr, align 8, !tbaa !10
  %301 = icmp eq ptr %300, @obfr
  %302 = load i32, ptr @outfile, align 4, !tbaa !6
  br i1 %301, label %308, label %303

303:                                              ; preds = %299
  %304 = ptrtoint ptr %300 to i64
  %305 = sub i64 %304, ptrtoint (ptr @obfr to i64)
  %306 = tail call signext i32 @write(i32 noundef signext %302, ptr noundef nonnull @obfr, i64 noundef %305) #10
  %307 = load i32, ptr @outfile, align 4, !tbaa !6
  br label %308

308:                                              ; preds = %303, %299
  %309 = phi i32 [ %307, %303 ], [ %302, %299 ]
  %310 = tail call signext i32 @close(i32 noundef signext %309) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #10
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @store_yuv1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) unnamed_addr #0 {
  %7 = load i32, ptr @Quiet_Flag, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !10
  %11 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef %0) #12
  br label %12

12:                                               ; preds = %9, %6
  %13 = tail call signext i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef signext 577, i32 noundef signext 438) #10
  store i32 %13, ptr @outfile, align 4, !tbaa !6
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %0) #10
  tail call void @Error(ptr noundef nonnull @Error_Text) #10
  br label %17

17:                                               ; preds = %15, %12
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  %18 = icmp sgt i32 %5, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = icmp sgt i32 %4, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = sext i32 %3 to i64
  %25 = zext nneg i32 %5 to i64
  br label %26

26:                                               ; preds = %23, %48
  %27 = phi i64 [ 0, %23 ], [ %45, %48 ]
  %28 = phi i64 [ 0, %23 ], [ %49, %48 ]
  %29 = mul nsw i64 %28, %24
  %30 = getelementptr inbounds i8, ptr %21, i64 %29
  br label %31

31:                                               ; preds = %26, %44
  %32 = phi i64 [ %27, %26 ], [ %45, %44 ]
  %33 = phi ptr [ %30, %26 ], [ %36, %44 ]
  %34 = phi i32 [ 0, %26 ], [ %46, %44 ]
  %35 = getelementptr inbounds i8, ptr @obfr, i64 %32
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = load i8, ptr %33, align 1, !tbaa !12
  %38 = add nsw i64 %32, 1
  %39 = getelementptr inbounds i8, ptr @obfr, i64 %38
  store ptr %39, ptr @optr, align 8, !tbaa !10
  store i8 %37, ptr %35, align 1, !tbaa !12
  %40 = icmp eq i64 %38, 4096
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, ptr @outfile, align 4, !tbaa !6
  %43 = tail call signext i32 @write(i32 noundef signext %42, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  br label %44

44:                                               ; preds = %41, %31
  %45 = phi i64 [ 0, %41 ], [ %38, %31 ]
  %46 = add nuw nsw i32 %34, 1
  %47 = icmp eq i32 %46, %4
  br i1 %47, label %48, label %31

48:                                               ; preds = %44
  %49 = add nuw nsw i64 %28, 1
  %50 = icmp eq i64 %49, %25
  br i1 %50, label %53, label %26

51:                                               ; preds = %17, %19
  %52 = load i32, ptr @outfile, align 4, !tbaa !6
  br label %59

53:                                               ; preds = %48
  %54 = icmp eq i64 %45, 0
  %55 = load i32, ptr @outfile, align 4, !tbaa !6
  br i1 %54, label %59, label %56

56:                                               ; preds = %53
  %57 = tail call signext i32 @write(i32 noundef signext %55, ptr noundef nonnull @obfr, i64 noundef %45) #10
  %58 = load i32, ptr @outfile, align 4, !tbaa !6
  br label %59

59:                                               ; preds = %51, %56, %53
  %60 = phi i32 [ %58, %56 ], [ %55, %53 ], [ %52, %51 ]
  %61 = tail call signext i32 @close(i32 noundef signext %60) #10
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree
declare dso_local noundef signext i32 @open(ptr nocapture noundef readonly, i32 noundef signext, ...) local_unnamed_addr #3

declare dso_local void @Error(ptr noundef) local_unnamed_addr #4

declare dso_local signext i32 @write(...) local_unnamed_addr #4

declare dso_local signext i32 @close(...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @conv420to422(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %4 = ashr i32 %3, 1
  %5 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %6 = ashr i32 %5, 1
  %7 = load i32, ptr @progressive_frame, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  %9 = icmp sgt i32 %4, 0
  br i1 %8, label %134, label %10

10:                                               ; preds = %2
  br i1 %9, label %11, label %379

11:                                               ; preds = %10
  %12 = icmp sgt i32 %6, 0
  %13 = add nsw i32 %6, -1
  br i1 %12, label %14, label %379

14:                                               ; preds = %11
  %15 = add nsw i32 %6, -3
  %16 = add nsw i32 %6, -2
  %17 = zext nneg i32 %4 to i64
  %18 = zext nneg i32 %13 to i64
  %19 = sext i32 %16 to i64
  %20 = sext i32 %15 to i64
  %21 = zext nneg i32 %6 to i64
  br label %22

22:                                               ; preds = %14, %129
  %23 = phi ptr [ %130, %129 ], [ %0, %14 ]
  %24 = phi ptr [ %131, %129 ], [ %1, %14 ]
  %25 = phi i32 [ %132, %129 ], [ 0, %14 ]
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ 0, %22 ], [ %34, %26 ]
  %28 = shl nuw i64 %27, 1
  %29 = trunc nuw nsw i64 %27 to i32
  %30 = tail call i32 @llvm.usub.sat.i32(i32 %29, i32 3)
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %29, i32 2)
  %32 = tail call i32 @llvm.usub.sat.i32(i32 %29, i32 1)
  %33 = icmp ult i64 %27, %18
  %34 = add nuw nsw i64 %27, 1
  %35 = trunc nuw nsw i64 %34 to i32
  %36 = select i1 %33, i32 %35, i32 %13
  %37 = icmp slt i64 %27, %19
  %38 = trunc i64 %27 to i32
  %39 = add i32 %38, 2
  %40 = select i1 %37, i32 %39, i32 %13
  %41 = icmp slt i64 %27, %20
  %42 = trunc i64 %27 to i32
  %43 = add i32 %42, 3
  %44 = select i1 %41, i32 %43, i32 %13
  %45 = load ptr, ptr @Clip, align 8, !tbaa !10
  %46 = mul nuw nsw i32 %30, %4
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %23, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !12
  %50 = zext i8 %49 to i32
  %51 = mul nuw nsw i32 %50, 3
  %52 = mul nuw nsw i32 %31, %4
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %23, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !12
  %56 = zext i8 %55 to i32
  %57 = mul nuw nsw i32 %32, %4
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %23, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !12
  %61 = zext i8 %60 to i32
  %62 = mul nuw nsw i32 %61, 67
  %63 = mul nuw nsw i64 %27, %17
  %64 = getelementptr inbounds i8, ptr %23, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !12
  %66 = zext i8 %65 to i32
  %67 = mul nuw nsw i32 %66, 227
  %68 = mul nsw i32 %36, %4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %23, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !12
  %72 = zext i8 %71 to i32
  %73 = mul nsw i32 %40, %4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %23, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !12
  %77 = zext i8 %76 to i32
  %78 = mul nuw nsw i32 %77, 7
  %79 = add nuw nsw i32 %51, 128
  %80 = shl nuw nsw i32 %56, 4
  %81 = sub nsw i32 %79, %80
  %82 = add nsw i32 %81, %62
  %83 = add nsw i32 %82, %67
  %84 = shl nuw nsw i32 %72, 5
  %85 = sub nsw i32 %83, %84
  %86 = add nsw i32 %85, %78
  %87 = ashr i32 %86, 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %45, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !12
  %91 = mul nsw i64 %28, %17
  %92 = getelementptr inbounds i8, ptr %24, i64 %91
  store i8 %90, ptr %92, align 1, !tbaa !12
  %93 = load ptr, ptr @Clip, align 8, !tbaa !10
  %94 = mul nsw i32 %44, %4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %23, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !12
  %98 = zext i8 %97 to i32
  %99 = mul nuw nsw i32 %98, 3
  %100 = load i8, ptr %75, align 1, !tbaa !12
  %101 = zext i8 %100 to i32
  %102 = load i8, ptr %70, align 1, !tbaa !12
  %103 = zext i8 %102 to i32
  %104 = mul nuw nsw i32 %103, 67
  %105 = load i8, ptr %64, align 1, !tbaa !12
  %106 = zext i8 %105 to i32
  %107 = mul nuw nsw i32 %106, 227
  %108 = load i8, ptr %59, align 1, !tbaa !12
  %109 = zext i8 %108 to i32
  %110 = load i8, ptr %54, align 1, !tbaa !12
  %111 = zext i8 %110 to i32
  %112 = mul nuw nsw i32 %111, 7
  %113 = add nuw nsw i32 %99, 128
  %114 = shl nuw nsw i32 %101, 4
  %115 = sub nsw i32 %113, %114
  %116 = add nsw i32 %115, %104
  %117 = add nsw i32 %116, %107
  %118 = shl nuw nsw i32 %109, 5
  %119 = sub nsw i32 %117, %118
  %120 = add nsw i32 %119, %112
  %121 = ashr i32 %120, 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %93, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !12
  %125 = or disjoint i64 %28, 1
  %126 = mul nsw i64 %125, %17
  %127 = getelementptr inbounds i8, ptr %24, i64 %126
  store i8 %124, ptr %127, align 1, !tbaa !12
  %128 = icmp eq i64 %34, %21
  br i1 %128, label %129, label %26

129:                                              ; preds = %26
  %130 = getelementptr inbounds i8, ptr %23, i64 1
  %131 = getelementptr inbounds i8, ptr %24, i64 1
  %132 = add nuw nsw i32 %25, 1
  %133 = icmp eq i32 %132, %4
  br i1 %133, label %379, label %22

134:                                              ; preds = %2
  br i1 %9, label %135, label %379

135:                                              ; preds = %134
  %136 = icmp sgt i32 %6, 0
  %137 = add nsw i32 %6, -2
  %138 = add nsw i32 %6, -1
  br i1 %136, label %139, label %379

139:                                              ; preds = %135
  %140 = add nsw i32 %6, -7
  %141 = add nsw i32 %6, -5
  %142 = add nsw i32 %6, -3
  %143 = add nsw i32 %6, -6
  %144 = add nsw i32 %6, -4
  %145 = zext nneg i32 %4 to i64
  %146 = sext i32 %137 to i64
  %147 = zext nneg i32 %6 to i64
  %148 = sext i32 %144 to i64
  %149 = sext i32 %143 to i64
  %150 = zext nneg i32 %138 to i64
  %151 = sext i32 %142 to i64
  %152 = sext i32 %141 to i64
  %153 = sext i32 %140 to i64
  br label %154

154:                                              ; preds = %139, %374
  %155 = phi ptr [ %375, %374 ], [ %0, %139 ]
  %156 = phi ptr [ %376, %374 ], [ %1, %139 ]
  %157 = phi i32 [ %377, %374 ], [ 0, %139 ]
  br label %158

158:                                              ; preds = %154, %158
  %159 = phi i64 [ 0, %154 ], [ %169, %158 ]
  %160 = shl nuw i64 %159, 1
  %161 = trunc nuw nsw i64 %159 to i32
  %162 = tail call i32 @llvm.usub.sat.i32(i32 %161, i32 6)
  %163 = tail call i32 @llvm.usub.sat.i32(i32 %161, i32 4)
  %164 = icmp eq i64 %159, 0
  %165 = trunc i64 %159 to i32
  %166 = add i32 %165, -2
  %167 = select i1 %164, i32 0, i32 %166
  %168 = icmp slt i64 %159, %146
  %169 = add nuw nsw i64 %159, 2
  %170 = trunc nuw nsw i64 %169 to i32
  %171 = select i1 %168, i32 %170, i32 %137
  %172 = icmp slt i64 %159, %148
  %173 = trunc i64 %159 to i32
  %174 = add i32 %173, 4
  %175 = select i1 %172, i32 %174, i32 %137
  %176 = icmp slt i64 %159, %149
  %177 = trunc i64 %159 to i32
  %178 = add i32 %177, 6
  %179 = select i1 %176, i32 %178, i32 %137
  %180 = load ptr, ptr @Clip, align 8, !tbaa !10
  %181 = mul nuw nsw i32 %162, %4
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds i8, ptr %155, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !12
  %185 = zext i8 %184 to i32
  %186 = mul nuw nsw i32 %163, %4
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds i8, ptr %155, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !12
  %190 = zext i8 %189 to i32
  %191 = mul nsw i32 %190, -7
  %192 = mul nsw i32 %167, %4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %155, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !12
  %196 = zext i8 %195 to i32
  %197 = mul nuw nsw i32 %196, 30
  %198 = mul nuw nsw i64 %159, %145
  %199 = getelementptr inbounds i8, ptr %155, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !12
  %201 = zext i8 %200 to i32
  %202 = mul nuw nsw i32 %201, 248
  %203 = mul nsw i32 %171, %4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %155, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !12
  %207 = zext i8 %206 to i32
  %208 = mul nsw i32 %207, -21
  %209 = mul nsw i32 %175, %4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, ptr %155, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !12
  %213 = zext i8 %212 to i32
  %214 = mul nuw nsw i32 %213, 5
  %215 = add nuw nsw i32 %185, 128
  %216 = add nsw i32 %215, %191
  %217 = add nsw i32 %216, %197
  %218 = add nsw i32 %217, %202
  %219 = add nsw i32 %218, %208
  %220 = add nsw i32 %219, %214
  %221 = ashr i32 %220, 8
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, ptr %180, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !12
  %225 = mul nsw i64 %160, %145
  %226 = getelementptr inbounds i8, ptr %156, i64 %225
  store i8 %224, ptr %226, align 1, !tbaa !12
  %227 = load ptr, ptr @Clip, align 8, !tbaa !10
  %228 = load i8, ptr %188, align 1, !tbaa !12
  %229 = zext i8 %228 to i32
  %230 = mul nuw nsw i32 %229, 7
  %231 = load i8, ptr %194, align 1, !tbaa !12
  %232 = zext i8 %231 to i32
  %233 = mul nsw i32 %232, -35
  %234 = load i8, ptr %199, align 1, !tbaa !12
  %235 = zext i8 %234 to i32
  %236 = mul nuw nsw i32 %235, 194
  %237 = load i8, ptr %205, align 1, !tbaa !12
  %238 = zext i8 %237 to i32
  %239 = mul nuw nsw i32 %238, 110
  %240 = load i8, ptr %211, align 1, !tbaa !12
  %241 = zext i8 %240 to i32
  %242 = mul nsw i32 %241, -24
  %243 = mul nsw i32 %179, %4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, ptr %155, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !12
  %247 = zext i8 %246 to i32
  %248 = shl nuw nsw i32 %247, 2
  %249 = add nuw nsw i32 %230, 128
  %250 = add nsw i32 %249, %233
  %251 = add nsw i32 %250, %236
  %252 = add nsw i32 %251, %239
  %253 = add nsw i32 %252, %242
  %254 = add nsw i32 %253, %248
  %255 = ashr i32 %254, 8
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, ptr %227, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !12
  %259 = or disjoint i64 %160, 2
  %260 = mul nsw i64 %259, %145
  %261 = getelementptr inbounds i8, ptr %156, i64 %260
  store i8 %258, ptr %261, align 1, !tbaa !12
  %262 = icmp ult i64 %159, 5
  %263 = trunc i64 %159 to i32
  %264 = add i32 %263, -5
  %265 = select i1 %262, i32 1, i32 %264
  %266 = icmp ult i64 %159, 3
  %267 = trunc i64 %159 to i32
  %268 = add i32 %267, -3
  %269 = select i1 %266, i32 1, i32 %268
  %270 = trunc i64 %159 to i32
  %271 = add i32 %270, -1
  %272 = select i1 %164, i32 1, i32 %271
  %273 = icmp ult i64 %159, %150
  %274 = trunc i64 %159 to i32
  %275 = or disjoint i32 %274, 1
  %276 = select i1 %273, i32 %275, i32 %138
  %277 = icmp slt i64 %159, %151
  %278 = trunc i64 %159 to i32
  %279 = add i32 %278, 3
  %280 = select i1 %277, i32 %279, i32 %138
  %281 = icmp slt i64 %159, %152
  %282 = trunc i64 %159 to i32
  %283 = add i32 %282, 5
  %284 = select i1 %281, i32 %283, i32 %138
  %285 = icmp slt i64 %159, %153
  %286 = trunc i64 %159 to i32
  %287 = add i32 %286, 7
  %288 = select i1 %285, i32 %287, i32 %138
  %289 = load ptr, ptr @Clip, align 8, !tbaa !10
  %290 = mul nsw i32 %284, %4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, ptr %155, i64 %291
  %293 = load i8, ptr %292, align 1, !tbaa !12
  %294 = zext i8 %293 to i32
  %295 = mul nuw nsw i32 %294, 7
  %296 = mul nsw i32 %280, %4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, ptr %155, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !12
  %300 = zext i8 %299 to i32
  %301 = mul nsw i32 %300, -35
  %302 = mul nsw i32 %276, %4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, ptr %155, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !12
  %306 = zext i8 %305 to i32
  %307 = mul nuw nsw i32 %306, 194
  %308 = mul nsw i32 %272, %4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, ptr %155, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !12
  %312 = zext i8 %311 to i32
  %313 = mul nuw nsw i32 %312, 110
  %314 = mul nsw i32 %269, %4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %155, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !12
  %318 = zext i8 %317 to i32
  %319 = mul nsw i32 %318, -24
  %320 = mul nsw i32 %265, %4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, ptr %155, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !12
  %324 = zext i8 %323 to i32
  %325 = shl nuw nsw i32 %324, 2
  %326 = add nuw nsw i32 %295, 128
  %327 = add nsw i32 %326, %301
  %328 = add nsw i32 %327, %307
  %329 = add nsw i32 %328, %313
  %330 = add nsw i32 %329, %319
  %331 = add nsw i32 %330, %325
  %332 = ashr i32 %331, 8
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, ptr %289, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !12
  %336 = or disjoint i64 %160, 1
  %337 = mul nsw i64 %336, %145
  %338 = getelementptr inbounds i8, ptr %156, i64 %337
  store i8 %335, ptr %338, align 1, !tbaa !12
  %339 = load ptr, ptr @Clip, align 8, !tbaa !10
  %340 = mul nsw i32 %288, %4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, ptr %155, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !12
  %344 = zext i8 %343 to i32
  %345 = load i8, ptr %292, align 1, !tbaa !12
  %346 = zext i8 %345 to i32
  %347 = mul nsw i32 %346, -7
  %348 = load i8, ptr %298, align 1, !tbaa !12
  %349 = zext i8 %348 to i32
  %350 = mul nuw nsw i32 %349, 30
  %351 = load i8, ptr %304, align 1, !tbaa !12
  %352 = zext i8 %351 to i32
  %353 = mul nuw nsw i32 %352, 248
  %354 = load i8, ptr %310, align 1, !tbaa !12
  %355 = zext i8 %354 to i32
  %356 = mul nsw i32 %355, -21
  %357 = load i8, ptr %316, align 1, !tbaa !12
  %358 = zext i8 %357 to i32
  %359 = mul nuw nsw i32 %358, 5
  %360 = add nuw nsw i32 %344, 128
  %361 = add nsw i32 %360, %347
  %362 = add nsw i32 %361, %350
  %363 = add nsw i32 %362, %353
  %364 = add nsw i32 %363, %356
  %365 = add nsw i32 %364, %359
  %366 = ashr i32 %365, 8
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, ptr %339, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !12
  %370 = or disjoint i64 %160, 3
  %371 = mul nsw i64 %370, %145
  %372 = getelementptr inbounds i8, ptr %156, i64 %371
  store i8 %369, ptr %372, align 1, !tbaa !12
  %373 = icmp ult i64 %169, %147
  br i1 %373, label %158, label %374

374:                                              ; preds = %158
  %375 = getelementptr inbounds i8, ptr %155, i64 1
  %376 = getelementptr inbounds i8, ptr %156, i64 1
  %377 = add nuw nsw i32 %157, 1
  %378 = icmp eq i32 %377, %4
  br i1 %378, label %379, label %154

379:                                              ; preds = %129, %374, %135, %11, %10, %134
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @conv422to444(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %4 = ashr i32 %3, 1
  %5 = load i32, ptr getelementptr inbounds (i8, ptr @base, i64 3144), align 8, !tbaa !16
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %8 = icmp sgt i32 %7, 0
  br i1 %6, label %92, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %210

10:                                               ; preds = %9
  %11 = icmp sgt i32 %4, 0
  %12 = add nsw i32 %4, -1
  %13 = sext i32 %4 to i64
  br i1 %11, label %14, label %210

14:                                               ; preds = %10
  %15 = add nsw i32 %4, -3
  %16 = add nsw i32 %4, -2
  %17 = zext nneg i32 %12 to i64
  %18 = sext i32 %16 to i64
  %19 = sext i32 %15 to i64
  %20 = zext nneg i32 %4 to i64
  br label %21

21:                                               ; preds = %14, %84
  %22 = phi ptr [ %85, %84 ], [ %0, %14 ]
  %23 = phi i32 [ %89, %84 ], [ 0, %14 ]
  %24 = phi ptr [ %88, %84 ], [ %1, %14 ]
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ 0, %21 ], [ %32, %25 ]
  %27 = shl nuw i64 %26, 1
  %28 = trunc nuw nsw i64 %26 to i32
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %28, i32 2)
  %30 = tail call i32 @llvm.usub.sat.i32(i32 %28, i32 1)
  %31 = icmp ult i64 %26, %17
  %32 = add nuw nsw i64 %26, 1
  %33 = trunc nuw nsw i64 %32 to i32
  %34 = select i1 %31, i32 %33, i32 %12
  %35 = icmp slt i64 %26, %18
  %36 = trunc i64 %26 to i32
  %37 = add i32 %36, 2
  %38 = select i1 %35, i32 %37, i32 %12
  %39 = icmp slt i64 %26, %19
  %40 = trunc i64 %26 to i32
  %41 = add i32 %40, 3
  %42 = select i1 %39, i32 %41, i32 %12
  %43 = getelementptr inbounds i8, ptr %22, i64 %26
  %44 = load i8, ptr %43, align 1, !tbaa !12
  %45 = getelementptr inbounds i8, ptr %24, i64 %27
  store i8 %44, ptr %45, align 1, !tbaa !12
  %46 = load ptr, ptr @Clip, align 8, !tbaa !10
  %47 = zext nneg i32 %29 to i64
  %48 = getelementptr inbounds i8, ptr %22, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !12
  %50 = zext i8 %49 to i32
  %51 = sext i32 %42 to i64
  %52 = getelementptr inbounds i8, ptr %22, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !12
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %54, %50
  %56 = mul nuw nsw i32 %55, 21
  %57 = zext nneg i32 %30 to i64
  %58 = getelementptr inbounds i8, ptr %22, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !12
  %60 = zext i8 %59 to i32
  %61 = sext i32 %38 to i64
  %62 = getelementptr inbounds i8, ptr %22, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !12
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %64, %60
  %66 = mul nsw i32 %65, -52
  %67 = zext i8 %44 to i32
  %68 = sext i32 %34 to i64
  %69 = getelementptr inbounds i8, ptr %22, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !12
  %71 = zext i8 %70 to i32
  %72 = add nuw nsw i32 %71, %67
  %73 = mul nuw nsw i32 %72, 159
  %74 = add nuw nsw i32 %56, 128
  %75 = add nsw i32 %74, %66
  %76 = add nsw i32 %75, %73
  %77 = ashr i32 %76, 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %46, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !12
  %81 = or disjoint i64 %27, 1
  %82 = getelementptr inbounds i8, ptr %24, i64 %81
  store i8 %80, ptr %82, align 1, !tbaa !12
  %83 = icmp eq i64 %32, %20
  br i1 %83, label %84, label %25

84:                                               ; preds = %25
  %85 = getelementptr inbounds i8, ptr %22, i64 %13
  %86 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %24, i64 %87
  %89 = add nuw nsw i32 %23, 1
  %90 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %21, label %210

92:                                               ; preds = %2
  br i1 %8, label %93, label %210

93:                                               ; preds = %92
  %94 = icmp sgt i32 %4, 0
  %95 = add nsw i32 %4, -1
  %96 = sext i32 %4 to i64
  br i1 %94, label %97, label %210

97:                                               ; preds = %93
  %98 = add nsw i32 %4, -3
  %99 = add nsw i32 %4, -2
  %100 = zext nneg i32 %95 to i64
  %101 = sext i32 %99 to i64
  %102 = sext i32 %98 to i64
  %103 = zext nneg i32 %4 to i64
  br label %104

104:                                              ; preds = %97, %202
  %105 = phi ptr [ %203, %202 ], [ %0, %97 ]
  %106 = phi i32 [ %207, %202 ], [ 0, %97 ]
  %107 = phi ptr [ %206, %202 ], [ %1, %97 ]
  br label %108

108:                                              ; preds = %104, %108
  %109 = phi i64 [ 0, %104 ], [ %116, %108 ]
  %110 = shl nuw i64 %109, 1
  %111 = trunc nuw nsw i64 %109 to i32
  %112 = tail call i32 @llvm.usub.sat.i32(i32 %111, i32 3)
  %113 = tail call i32 @llvm.usub.sat.i32(i32 %111, i32 2)
  %114 = tail call i32 @llvm.usub.sat.i32(i32 %111, i32 1)
  %115 = icmp ult i64 %109, %100
  %116 = add nuw nsw i64 %109, 1
  %117 = trunc nuw nsw i64 %116 to i32
  %118 = select i1 %115, i32 %117, i32 %95
  %119 = icmp slt i64 %109, %101
  %120 = trunc i64 %109 to i32
  %121 = add i32 %120, 2
  %122 = select i1 %119, i32 %121, i32 %95
  %123 = icmp slt i64 %109, %102
  %124 = trunc i64 %109 to i32
  %125 = add i32 %124, 3
  %126 = select i1 %123, i32 %125, i32 %95
  %127 = load ptr, ptr @Clip, align 8, !tbaa !10
  %128 = zext nneg i32 %112 to i64
  %129 = getelementptr inbounds i8, ptr %105, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !12
  %131 = zext i8 %130 to i32
  %132 = mul nuw nsw i32 %131, 5
  %133 = zext nneg i32 %113 to i64
  %134 = getelementptr inbounds i8, ptr %105, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !12
  %136 = zext i8 %135 to i32
  %137 = mul nsw i32 %136, -21
  %138 = zext nneg i32 %114 to i64
  %139 = getelementptr inbounds i8, ptr %105, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !12
  %141 = zext i8 %140 to i32
  %142 = mul nuw nsw i32 %141, 70
  %143 = getelementptr inbounds i8, ptr %105, i64 %109
  %144 = load i8, ptr %143, align 1, !tbaa !12
  %145 = zext i8 %144 to i32
  %146 = mul nuw nsw i32 %145, 228
  %147 = sext i32 %118 to i64
  %148 = getelementptr inbounds i8, ptr %105, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !12
  %150 = zext i8 %149 to i32
  %151 = mul nsw i32 %150, -37
  %152 = sext i32 %122 to i64
  %153 = getelementptr inbounds i8, ptr %105, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !12
  %155 = zext i8 %154 to i32
  %156 = mul nuw nsw i32 %155, 11
  %157 = add nuw nsw i32 %132, 128
  %158 = add nsw i32 %157, %137
  %159 = add nsw i32 %158, %142
  %160 = add nsw i32 %159, %146
  %161 = add nsw i32 %160, %151
  %162 = add nsw i32 %161, %156
  %163 = ashr i32 %162, 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, ptr %127, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !12
  %167 = getelementptr inbounds i8, ptr %107, i64 %110
  store i8 %166, ptr %167, align 1, !tbaa !12
  %168 = load ptr, ptr @Clip, align 8, !tbaa !10
  %169 = sext i32 %126 to i64
  %170 = getelementptr inbounds i8, ptr %105, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !12
  %172 = zext i8 %171 to i32
  %173 = mul nuw nsw i32 %172, 5
  %174 = load i8, ptr %153, align 1, !tbaa !12
  %175 = zext i8 %174 to i32
  %176 = mul nsw i32 %175, -21
  %177 = load i8, ptr %148, align 1, !tbaa !12
  %178 = zext i8 %177 to i32
  %179 = mul nuw nsw i32 %178, 70
  %180 = load i8, ptr %143, align 1, !tbaa !12
  %181 = zext i8 %180 to i32
  %182 = mul nuw nsw i32 %181, 228
  %183 = load i8, ptr %139, align 1, !tbaa !12
  %184 = zext i8 %183 to i32
  %185 = mul nsw i32 %184, -37
  %186 = load i8, ptr %134, align 1, !tbaa !12
  %187 = zext i8 %186 to i32
  %188 = mul nuw nsw i32 %187, 11
  %189 = add nuw nsw i32 %173, 128
  %190 = add nsw i32 %189, %176
  %191 = add nsw i32 %190, %179
  %192 = add nsw i32 %191, %182
  %193 = add nsw i32 %192, %185
  %194 = add nsw i32 %193, %188
  %195 = ashr i32 %194, 8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %168, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !12
  %199 = or disjoint i64 %110, 1
  %200 = getelementptr inbounds i8, ptr %107, i64 %199
  store i8 %198, ptr %200, align 1, !tbaa !12
  %201 = icmp eq i64 %116, %103
  br i1 %201, label %202, label %108

202:                                              ; preds = %108
  %203 = getelementptr inbounds i8, ptr %105, i64 %96
  %204 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !6
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %107, i64 %205
  %207 = add nuw nsw i32 %106, 1
  %208 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !6
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %104, label %210

210:                                              ; preds = %84, %202, %93, %10, %9, %92
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unswitch.partial.disable"}
!15 = distinct !{!15, !14}
!16 = !{!17, !7, i64 3144}
!17 = !{!"layer_data", !7, i64 0, !8, i64 4, !11, i64 2056, !8, i64 2064, !7, i64 2080, !11, i64 2088, !7, i64 2096, !7, i64 2100, !8, i64 2104, !8, i64 2360, !8, i64 2616, !8, i64 2872, !7, i64 3128, !7, i64 3132, !7, i64 3136, !7, i64 3140, !7, i64 3144, !7, i64 3148, !7, i64 3152, !7, i64 3156, !7, i64 3160, !7, i64 3164, !7, i64 3168, !7, i64 3172, !8, i64 3176}
