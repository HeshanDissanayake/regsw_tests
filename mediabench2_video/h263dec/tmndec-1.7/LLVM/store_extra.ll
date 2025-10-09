; ModuleID = 'store.c'
source_filename = "store.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@outputname = external dso_local local_unnamed_addr global ptr, align 8
@coded_picture_width = external dso_local local_unnamed_addr global i32, align 4
@vertical_size = external dso_local local_unnamed_addr global i32, align 4
@outtype = external dso_local local_unnamed_addr global i32, align 4
@horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@outfile = internal unnamed_addr global i32 0, align 4
@errortext = external dso_local global [256 x i8], align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Couldn't append to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Couldn't create %s\0A\00", align 1
@quiet = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"saving %s\0A\00", align 1
@obfr = internal global [4096 x i8] zeroinitializer, align 1
@optr = internal unnamed_addr global ptr null, align 8
@store_sif.u422 = internal unnamed_addr global ptr null, align 8
@store_sif.v422 = internal unnamed_addr global ptr null, align 8
@coded_picture_height = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".SIF\00", align 1
@clp = external dso_local local_unnamed_addr global ptr, align 8
@store_ppm_tga.u422 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.v422 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.u444 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.v444 = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".ppm\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1
@convmat = external dso_local local_unnamed_addr global [8 x [4 x i32]], align 4
@matrix_coefficients = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @storeframe(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 1
  %4 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  %5 = load ptr, ptr @outputname, align 8, !tbaa !6
  %6 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5, i32 noundef signext %1, i32 noundef signext 102) #10
  %7 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %8 = load i32, ptr @vertical_size, align 4, !tbaa !10
  %9 = load i32, ptr @outtype, align 4, !tbaa !10
  switch i32 %9, label %164 [
    i32 0, label %10
    i32 5, label %23
    i32 1, label %33
    i32 2, label %162
    i32 3, label %163
  ]

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %11 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %12 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %4) #10
  %13 = load ptr, ptr %0, align 8, !tbaa !6
  call fastcc void @store_yuv1(ptr noundef nonnull %3, ptr noundef %13, i32 noundef signext %7, i32 noundef signext %11, i32 noundef signext %8, i32 noundef signext 0)
  %14 = ashr i32 %7, 1
  %15 = ashr i32 %11, 1
  %16 = ashr i32 %8, 1
  %17 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %4) #10
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  call fastcc void @store_yuv1(ptr noundef nonnull %3, ptr noundef %19, i32 noundef signext %14, i32 noundef signext %15, i32 noundef signext %16, i32 noundef signext 0)
  %20 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %4) #10
  %21 = getelementptr inbounds i8, ptr %0, i64 16
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  call fastcc void @store_yuv1(ptr noundef nonnull %3, ptr noundef %22, i32 noundef signext %14, i32 noundef signext %15, i32 noundef signext %16, i32 noundef signext 0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %164

23:                                               ; preds = %2
  %24 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  call fastcc void @store_yuv1(ptr noundef nonnull %4, ptr noundef %25, i32 noundef signext %7, i32 noundef signext %24, i32 noundef signext %8, i32 noundef signext 1)
  %26 = ashr i32 %7, 1
  %27 = ashr i32 %24, 1
  %28 = ashr i32 %8, 1
  %29 = getelementptr inbounds i8, ptr %0, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  call fastcc void @store_yuv1(ptr noundef nonnull %4, ptr noundef %30, i32 noundef signext %26, i32 noundef signext %27, i32 noundef signext %28, i32 noundef signext 1)
  %31 = getelementptr inbounds i8, ptr %0, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  call fastcc void @store_yuv1(ptr noundef nonnull %4, ptr noundef %32, i32 noundef signext %26, i32 noundef signext %27, i32 noundef signext %28, i32 noundef signext 1)
  br label %164

33:                                               ; preds = %2
  %34 = load ptr, ptr @store_sif.u422, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = ashr i32 %7, 1
  %38 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  %39 = mul nsw i32 %38, %37
  %40 = sext i32 %39 to i64
  %41 = tail call noalias ptr @malloc(i64 noundef %40) #11
  store ptr %41, ptr @store_sif.u422, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  tail call void @error(ptr noundef nonnull @.str.6) #10
  %44 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %45 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  %46 = ashr i32 %44, 1
  %47 = mul nsw i32 %46, %45
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %43, %36
  %50 = phi i64 [ %48, %43 ], [ %40, %36 ]
  %51 = tail call noalias ptr @malloc(i64 noundef %50) #11
  store ptr %51, ptr @store_sif.v422, align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void @error(ptr noundef nonnull @.str.6) #10
  br label %54

54:                                               ; preds = %53, %49, %33
  %55 = getelementptr inbounds i8, ptr %0, i64 8
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = load ptr, ptr @store_sif.u422, align 8, !tbaa !6
  tail call fastcc void @conv420to422(ptr noundef %56, ptr noundef %57)
  %58 = getelementptr inbounds i8, ptr %0, i64 16
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = load ptr, ptr @store_sif.v422, align 8, !tbaa !6
  tail call fastcc void @conv420to422(ptr noundef %59, ptr noundef %60)
  %61 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %62 = getelementptr inbounds i8, ptr %4, i64 %61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %62, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %63 = load i32, ptr @quiet, align 4, !tbaa !10
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load ptr, ptr @stderr, align 8, !tbaa !6
  %67 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #12
  br label %68

68:                                               ; preds = %65, %54
  %69 = call signext i32 (ptr, i32, ...) @open(ptr noundef nonnull %4, i32 noundef signext 577, i32 noundef signext 438) #10
  store i32 %69, ptr @outfile, align 4, !tbaa !10
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %4) #10
  call void @error(ptr noundef nonnull @errortext) #10
  br label %73

73:                                               ; preds = %71, %68
  store ptr @obfr, ptr @optr, align 8, !tbaa !6
  %74 = icmp sgt i32 %8, 0
  br i1 %74, label %75, label %149

75:                                               ; preds = %73
  %76 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %149

78:                                               ; preds = %75
  %79 = ashr i32 %7, 1
  %80 = sext i32 %7 to i64
  %81 = sext i32 %79 to i64
  %82 = zext nneg i32 %8 to i64
  br label %83

83:                                               ; preds = %144, %78
  %84 = phi ptr [ @obfr, %78 ], [ %145, %144 ]
  %85 = phi i32 [ %76, %78 ], [ %146, %144 ]
  %86 = phi i64 [ 0, %78 ], [ %147, %144 ]
  %87 = icmp sgt i32 %85, 0
  br i1 %87, label %88, label %144

88:                                               ; preds = %83
  %89 = load ptr, ptr @store_sif.v422, align 8, !tbaa !6
  %90 = mul nsw i64 %86, %81
  %91 = getelementptr inbounds i8, ptr %89, i64 %90
  %92 = load ptr, ptr @store_sif.u422, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %92, i64 %90
  %94 = load ptr, ptr %0, align 8, !tbaa !6
  %95 = mul nsw i64 %86, %80
  %96 = getelementptr inbounds i8, ptr %94, i64 %95
  br label %97

97:                                               ; preds = %139, %88
  %98 = phi ptr [ %140, %139 ], [ %84, %88 ]
  %99 = phi ptr [ %123, %139 ], [ %91, %88 ]
  %100 = phi ptr [ %103, %139 ], [ %93, %88 ]
  %101 = phi ptr [ %132, %139 ], [ %96, %88 ]
  %102 = phi i32 [ %141, %139 ], [ 0, %88 ]
  %103 = getelementptr inbounds i8, ptr %100, i64 1
  %104 = load i8, ptr %100, align 1, !tbaa !12
  %105 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %105, ptr @optr, align 8, !tbaa !6
  store i8 %104, ptr %98, align 1, !tbaa !12
  %106 = icmp eq ptr %105, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %106, label %109, label %107

107:                                              ; preds = %97
  %108 = load ptr, ptr @optr, align 8, !tbaa !6
  br label %112

109:                                              ; preds = %97
  %110 = load i32, ptr @outfile, align 4, !tbaa !10
  %111 = call signext i32 @write(i32 noundef signext %110, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %112

112:                                              ; preds = %109, %107
  %113 = phi ptr [ %108, %107 ], [ @obfr, %109 ]
  %114 = getelementptr inbounds i8, ptr %101, i64 1
  %115 = load i8, ptr %101, align 1, !tbaa !12
  %116 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %116, ptr @optr, align 8, !tbaa !6
  store i8 %115, ptr %113, align 1, !tbaa !12
  %117 = icmp eq ptr %116, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, ptr @outfile, align 4, !tbaa !10
  %120 = call signext i32 @write(i32 noundef signext %119, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %121

121:                                              ; preds = %118, %112
  %122 = phi ptr [ %116, %112 ], [ @obfr, %118 ]
  %123 = getelementptr inbounds i8, ptr %99, i64 1
  %124 = load i8, ptr %99, align 1, !tbaa !12
  %125 = getelementptr inbounds i8, ptr %122, i64 1
  store ptr %125, ptr @optr, align 8, !tbaa !6
  store i8 %124, ptr %122, align 1, !tbaa !12
  %126 = icmp eq ptr %125, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, ptr @outfile, align 4, !tbaa !10
  %129 = call signext i32 @write(i32 noundef signext %128, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %130

130:                                              ; preds = %127, %121
  %131 = phi ptr [ %125, %121 ], [ @obfr, %127 ]
  %132 = getelementptr inbounds i8, ptr %101, i64 2
  %133 = load i8, ptr %114, align 1, !tbaa !12
  %134 = getelementptr inbounds i8, ptr %131, i64 1
  store ptr %134, ptr @optr, align 8, !tbaa !6
  store i8 %133, ptr %131, align 1, !tbaa !12
  %135 = icmp eq ptr %134, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, ptr @outfile, align 4, !tbaa !10
  %138 = call signext i32 @write(i32 noundef signext %137, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !6
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi ptr [ %134, %130 ], [ @obfr, %136 ]
  %141 = add nuw nsw i32 %102, 2
  %142 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %97, label %144

144:                                              ; preds = %139, %83
  %145 = phi ptr [ %84, %83 ], [ %140, %139 ]
  %146 = phi i32 [ %85, %83 ], [ %142, %139 ]
  %147 = add nuw nsw i64 %86, 1
  %148 = icmp eq i64 %147, %82
  br i1 %148, label %151, label %83, !llvm.loop !13

149:                                              ; preds = %75, %73
  %150 = load i32, ptr @outfile, align 4, !tbaa !10
  br label %159

151:                                              ; preds = %144
  %152 = icmp eq ptr %145, @obfr
  %153 = load i32, ptr @outfile, align 4, !tbaa !10
  br i1 %152, label %159, label %154

154:                                              ; preds = %151
  %155 = ptrtoint ptr %145 to i64
  %156 = sub i64 %155, ptrtoint (ptr @obfr to i64)
  %157 = call signext i32 @write(i32 noundef signext %153, ptr noundef nonnull @obfr, i64 noundef %156) #10
  %158 = load i32, ptr @outfile, align 4, !tbaa !10
  br label %159

159:                                              ; preds = %154, %151, %149
  %160 = phi i32 [ %158, %154 ], [ %153, %151 ], [ %150, %149 ]
  %161 = call signext i32 @close(i32 noundef signext %160) #10
  br label %164

162:                                              ; preds = %2
  call fastcc void @store_ppm_tga(ptr noundef nonnull %4, ptr noundef readonly %0, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext 1)
  br label %164

163:                                              ; preds = %2
  call fastcc void @store_ppm_tga(ptr noundef nonnull %4, ptr noundef readonly %0, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext 0)
  br label %164

164:                                              ; preds = %2, %10, %23, %159, %162, %163
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal fastcc void @store_ppm_tga(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) unnamed_addr #0 {
  %6 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %7 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %11 = ashr i32 %10, 1
  %12 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #11
  store ptr %15, ptr @store_ppm_tga.u422, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  tail call void @error(ptr noundef nonnull @.str.6) #10
  %18 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %19 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  %20 = ashr i32 %18, 1
  %21 = mul nsw i32 %20, %19
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i64 [ %22, %17 ], [ %14, %9 ]
  %25 = phi i32 [ %19, %17 ], [ %12, %9 ]
  %26 = phi i32 [ %18, %17 ], [ %10, %9 ]
  %27 = tail call noalias ptr @malloc(i64 noundef %24) #11
  store ptr %27, ptr @store_ppm_tga.v422, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  tail call void @error(ptr noundef nonnull @.str.6) #10
  %30 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %31 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i32 [ %31, %29 ], [ %25, %23 ]
  %34 = phi i32 [ %30, %29 ], [ %26, %23 ]
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #11
  store ptr %37, ptr @store_ppm_tga.u444, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  tail call void @error(ptr noundef nonnull @.str.6) #10
  %40 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %41 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  %42 = mul nsw i32 %41, %40
  %43 = sext i32 %42 to i64
  br label %44

44:                                               ; preds = %39, %32
  %45 = phi i64 [ %43, %39 ], [ %36, %32 ]
  %46 = tail call noalias ptr @malloc(i64 noundef %45) #11
  store ptr %46, ptr @store_ppm_tga.v444, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @error(ptr noundef nonnull @.str.6) #10
  br label %49

49:                                               ; preds = %44, %48, %5
  %50 = getelementptr inbounds i8, ptr %1, i64 8
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = load ptr, ptr @store_ppm_tga.u422, align 8, !tbaa !6
  tail call fastcc void @conv420to422(ptr noundef %51, ptr noundef %52)
  %53 = getelementptr inbounds i8, ptr %1, i64 16
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = load ptr, ptr @store_ppm_tga.v422, align 8, !tbaa !6
  tail call fastcc void @conv420to422(ptr noundef %54, ptr noundef %55)
  %56 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !6
  tail call fastcc void @conv422to444(ptr noundef %52, ptr noundef %56)
  %57 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !6
  tail call fastcc void @conv422to444(ptr noundef %55, ptr noundef %57)
  %58 = icmp eq i32 %4, 0
  %59 = select i1 %58, ptr @.str.9, ptr @.str.8
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %61, ptr noundef nonnull align 1 dereferenceable(5) %59, i64 5, i1 false)
  %62 = load i32, ptr @quiet, align 4, !tbaa !10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load ptr, ptr @stderr, align 8, !tbaa !6
  %66 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #12
  br label %67

67:                                               ; preds = %64, %49
  %68 = tail call signext i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef signext 577, i32 noundef signext 438) #10
  store i32 %68, ptr @outfile, align 4, !tbaa !10
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #10
  tail call void @error(ptr noundef nonnull @errortext) #10
  br label %72

72:                                               ; preds = %70, %67
  store ptr @obfr, ptr @optr, align 8, !tbaa !6
  br i1 %58, label %81, label %73

73:                                               ; preds = %72
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
  %74 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %75 = trunc i32 %74 to i8
  store i8 %75, ptr getelementptr inbounds (i8, ptr @obfr, i64 12), align 1, !tbaa !12
  %76 = lshr i32 %74, 8
  %77 = trunc i32 %76 to i8
  store i8 %77, ptr getelementptr inbounds (i8, ptr @obfr, i64 13), align 1, !tbaa !12
  %78 = trunc i32 %3 to i8
  store i8 %78, ptr getelementptr inbounds (i8, ptr @obfr, i64 14), align 1, !tbaa !12
  %79 = lshr i32 %3, 8
  %80 = trunc i32 %79 to i8
  store i8 %80, ptr getelementptr inbounds (i8, ptr @obfr, i64 15), align 1, !tbaa !12
  store i8 24, ptr getelementptr inbounds (i8, ptr @obfr, i64 16), align 1, !tbaa !12
  store ptr getelementptr inbounds (i8, ptr @obfr, i64 18), ptr @optr, align 8, !tbaa !6
  store i8 32, ptr getelementptr inbounds (i8, ptr @obfr, i64 17), align 1, !tbaa !12
  br label %103

81:                                               ; preds = %72
  %82 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %83 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef signext %82, i32 noundef signext %3) #10
  %84 = load i8, ptr %6, align 1, !tbaa !12
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr @optr, align 8, !tbaa !6
  br label %88

88:                                               ; preds = %86, %97
  %89 = phi ptr [ %87, %86 ], [ %98, %97 ]
  %90 = phi i64 [ 0, %86 ], [ %99, %97 ]
  %91 = phi i8 [ %84, %86 ], [ %101, %97 ]
  %92 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %92, ptr @optr, align 8, !tbaa !6
  store i8 %91, ptr %89, align 1, !tbaa !12
  %93 = icmp eq ptr %92, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, ptr @outfile, align 4, !tbaa !10
  %96 = tail call signext i32 @write(i32 noundef signext %95, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !6
  br label %97

97:                                               ; preds = %88, %94
  %98 = phi ptr [ %92, %88 ], [ @obfr, %94 ]
  %99 = add nuw nsw i64 %90, 1
  %100 = getelementptr inbounds [32 x i8], ptr %6, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !12
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %88

103:                                              ; preds = %97, %73, %81
  %104 = load i32, ptr @matrix_coefficients, align 4, !tbaa !10
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x [4 x i32]], ptr @convmat, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !10
  %108 = getelementptr inbounds i8, ptr %106, i64 4
  %109 = load i32, ptr %108, align 4, !tbaa !10
  %110 = icmp sgt i32 %3, 0
  br i1 %110, label %111, label %274

111:                                              ; preds = %103
  %112 = getelementptr inbounds i8, ptr %106, i64 12
  %113 = load i32, ptr %112, align 4, !tbaa !10
  %114 = getelementptr inbounds i8, ptr %106, i64 8
  %115 = load i32, ptr %114, align 4, !tbaa !10
  %116 = sub i32 0, %115
  %117 = sub i32 0, %113
  %118 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %274

120:                                              ; preds = %111
  %121 = sext i32 %2 to i64
  %122 = zext nneg i32 %3 to i64
  br label %123

123:                                              ; preds = %120, %270
  %124 = phi i32 [ %118, %120 ], [ %271, %270 ]
  %125 = phi i64 [ 0, %120 ], [ %272, %270 ]
  %126 = icmp sgt i32 %124, 0
  br i1 %126, label %127, label %270

127:                                              ; preds = %123
  %128 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !6
  %129 = mul nsw i64 %125, %121
  %130 = getelementptr inbounds i8, ptr %128, i64 %129
  %131 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !6
  %132 = getelementptr inbounds i8, ptr %131, i64 %129
  %133 = load ptr, ptr %1, align 8, !tbaa !6
  %134 = getelementptr inbounds i8, ptr %133, i64 %129
  %135 = load ptr, ptr @optr, align 8, !tbaa !6
  br i1 %58, label %136, label %203

136:                                              ; preds = %127, %198
  %137 = phi ptr [ %199, %198 ], [ %135, %127 ]
  %138 = phi ptr [ %146, %198 ], [ %130, %127 ]
  %139 = phi ptr [ %142, %198 ], [ %132, %127 ]
  %140 = phi ptr [ %150, %198 ], [ %134, %127 ]
  %141 = phi i32 [ %200, %198 ], [ 0, %127 ]
  %142 = getelementptr inbounds i8, ptr %139, i64 1
  %143 = load i8, ptr %139, align 1, !tbaa !12
  %144 = zext i8 %143 to i32
  %145 = add nsw i32 %144, -128
  %146 = getelementptr inbounds i8, ptr %138, i64 1
  %147 = load i8, ptr %138, align 1, !tbaa !12
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %148, -128
  %150 = getelementptr inbounds i8, ptr %140, i64 1
  %151 = load i8, ptr %140, align 1, !tbaa !12
  %152 = zext i8 %151 to i32
  %153 = mul nuw nsw i32 %152, 76309
  %154 = add nsw i32 %153, -1220944
  %155 = load ptr, ptr @clp, align 8, !tbaa !6
  %156 = mul nsw i32 %149, %107
  %157 = add i32 %156, 32768
  %158 = add i32 %157, %154
  %159 = ashr i32 %158, 16
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, ptr %155, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !12
  %163 = mul i32 %145, %116
  %164 = mul i32 %149, %117
  %165 = add i32 %164, %163
  %166 = add nsw i32 %153, -1188176
  %167 = add i32 %166, %165
  %168 = ashr i32 %167, 16
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %155, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !12
  %172 = mul nsw i32 %145, %109
  %173 = add i32 %172, 32786
  %174 = add i32 %173, %154
  %175 = ashr i32 %174, 16
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %155, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !12
  %179 = getelementptr inbounds i8, ptr %137, i64 1
  store ptr %179, ptr @optr, align 8, !tbaa !6
  store i8 %162, ptr %137, align 1, !tbaa !12
  %180 = icmp eq ptr %179, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %180, label %181, label %184

181:                                              ; preds = %136
  %182 = load i32, ptr @outfile, align 4, !tbaa !10
  %183 = tail call signext i32 @write(i32 noundef signext %182, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %184

184:                                              ; preds = %181, %136
  %185 = phi ptr [ @obfr, %181 ], [ %179, %136 ]
  %186 = getelementptr inbounds i8, ptr %185, i64 1
  store ptr %186, ptr @optr, align 8, !tbaa !6
  store i8 %171, ptr %185, align 1, !tbaa !12
  %187 = icmp eq ptr %186, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, ptr @outfile, align 4, !tbaa !10
  %190 = tail call signext i32 @write(i32 noundef signext %189, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %191

191:                                              ; preds = %188, %184
  %192 = phi ptr [ @obfr, %188 ], [ %186, %184 ]
  %193 = getelementptr inbounds i8, ptr %192, i64 1
  store ptr %193, ptr @optr, align 8, !tbaa !6
  store i8 %178, ptr %192, align 1, !tbaa !12
  %194 = icmp eq ptr %193, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, ptr @outfile, align 4, !tbaa !10
  %197 = tail call signext i32 @write(i32 noundef signext %196, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !6
  br label %198

198:                                              ; preds = %195, %191
  %199 = phi ptr [ @obfr, %195 ], [ %193, %191 ]
  %200 = add nuw nsw i32 %141, 1
  %201 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %136, label %270

203:                                              ; preds = %127, %265
  %204 = phi ptr [ %266, %265 ], [ %135, %127 ]
  %205 = phi ptr [ %213, %265 ], [ %130, %127 ]
  %206 = phi ptr [ %209, %265 ], [ %132, %127 ]
  %207 = phi ptr [ %217, %265 ], [ %134, %127 ]
  %208 = phi i32 [ %267, %265 ], [ 0, %127 ]
  %209 = getelementptr inbounds i8, ptr %206, i64 1
  %210 = load i8, ptr %206, align 1, !tbaa !12
  %211 = zext i8 %210 to i32
  %212 = add nsw i32 %211, -128
  %213 = getelementptr inbounds i8, ptr %205, i64 1
  %214 = load i8, ptr %205, align 1, !tbaa !12
  %215 = zext i8 %214 to i32
  %216 = add nsw i32 %215, -128
  %217 = getelementptr inbounds i8, ptr %207, i64 1
  %218 = load i8, ptr %207, align 1, !tbaa !12
  %219 = zext i8 %218 to i32
  %220 = mul nuw nsw i32 %219, 76309
  %221 = add nsw i32 %220, -1220944
  %222 = load ptr, ptr @clp, align 8, !tbaa !6
  %223 = mul nsw i32 %216, %107
  %224 = add i32 %223, 32768
  %225 = add i32 %224, %221
  %226 = ashr i32 %225, 16
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %222, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !12
  %230 = mul i32 %212, %116
  %231 = mul i32 %216, %117
  %232 = add i32 %231, %230
  %233 = add nsw i32 %220, -1188176
  %234 = add i32 %233, %232
  %235 = ashr i32 %234, 16
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %222, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !12
  %239 = mul nsw i32 %212, %109
  %240 = add i32 %239, 32786
  %241 = add i32 %240, %221
  %242 = ashr i32 %241, 16
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, ptr %222, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !12
  %246 = getelementptr inbounds i8, ptr %204, i64 1
  store ptr %246, ptr @optr, align 8, !tbaa !6
  store i8 %245, ptr %204, align 1, !tbaa !12
  %247 = icmp eq ptr %246, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %247, label %248, label %251

248:                                              ; preds = %203
  %249 = load i32, ptr @outfile, align 4, !tbaa !10
  %250 = tail call signext i32 @write(i32 noundef signext %249, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %251

251:                                              ; preds = %203, %248
  %252 = phi ptr [ %246, %203 ], [ @obfr, %248 ]
  %253 = getelementptr inbounds i8, ptr %252, i64 1
  store ptr %253, ptr @optr, align 8, !tbaa !6
  store i8 %238, ptr %252, align 1, !tbaa !12
  %254 = icmp eq ptr %253, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load i32, ptr @outfile, align 4, !tbaa !10
  %257 = tail call signext i32 @write(i32 noundef signext %256, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  br label %258

258:                                              ; preds = %251, %255
  %259 = phi ptr [ %253, %251 ], [ @obfr, %255 ]
  %260 = getelementptr inbounds i8, ptr %259, i64 1
  store ptr %260, ptr @optr, align 8, !tbaa !6
  store i8 %229, ptr %259, align 1, !tbaa !12
  %261 = icmp eq ptr %260, getelementptr inbounds (i8, ptr @obfr, i64 4096)
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = load i32, ptr @outfile, align 4, !tbaa !10
  %264 = tail call signext i32 @write(i32 noundef signext %263, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !6
  br label %265

265:                                              ; preds = %262, %258
  %266 = phi ptr [ @obfr, %262 ], [ %260, %258 ]
  %267 = add nuw nsw i32 %208, 1
  %268 = load i32, ptr @horizontal_size, align 4, !tbaa !10
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %203, label %270

270:                                              ; preds = %265, %198, %123
  %271 = phi i32 [ %124, %123 ], [ %201, %198 ], [ %268, %265 ]
  %272 = add nuw nsw i64 %125, 1
  %273 = icmp eq i64 %272, %122
  br i1 %273, label %274, label %123, !llvm.loop !15

274:                                              ; preds = %270, %111, %103
  %275 = load ptr, ptr @optr, align 8, !tbaa !6
  %276 = icmp eq ptr %275, @obfr
  %277 = load i32, ptr @outfile, align 4, !tbaa !10
  br i1 %276, label %283, label %278

278:                                              ; preds = %274
  %279 = ptrtoint ptr %275 to i64
  %280 = sub i64 %279, ptrtoint (ptr @obfr to i64)
  %281 = tail call signext i32 @write(i32 noundef signext %277, ptr noundef nonnull @obfr, i64 noundef %280) #10
  %282 = load i32, ptr @outfile, align 4, !tbaa !10
  br label %283

283:                                              ; preds = %278, %274
  %284 = phi i32 [ %282, %278 ], [ %277, %274 ]
  %285 = tail call signext i32 @close(i32 noundef signext %284) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @store_yuv1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) unnamed_addr #0 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = tail call signext i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef signext 1025, i32 noundef signext 438) #10
  store i32 %9, ptr @outfile, align 4, !tbaa !10
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %14, label %17

11:                                               ; preds = %6
  %12 = tail call signext i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef signext 577, i32 noundef signext 438) #10
  store i32 %12, ptr @outfile, align 4, !tbaa !10
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %8
  %15 = phi ptr [ @.str.3, %8 ], [ @.str.4, %11 ]
  %16 = tail call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @errortext, ptr noundef nonnull dereferenceable(1) %15, ptr noundef %0) #10
  tail call void @error(ptr noundef nonnull @errortext) #10
  br label %17

17:                                               ; preds = %14, %11, %8
  %18 = load i32, ptr @quiet, align 4, !tbaa !10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !6
  %22 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.5, ptr noundef %0) #12
  br label %23

23:                                               ; preds = %20, %17
  store ptr @obfr, ptr @optr, align 8, !tbaa !6
  %24 = icmp sgt i32 %4, 0
  %25 = icmp sgt i32 %3, 0
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = sext i32 %2 to i64
  %29 = zext nneg i32 %4 to i64
  br label %30

30:                                               ; preds = %27, %52
  %31 = phi i64 [ 0, %27 ], [ %49, %52 ]
  %32 = phi i64 [ 0, %27 ], [ %53, %52 ]
  %33 = mul nsw i64 %32, %28
  %34 = getelementptr inbounds i8, ptr %1, i64 %33
  br label %35

35:                                               ; preds = %30, %48
  %36 = phi i64 [ %31, %30 ], [ %49, %48 ]
  %37 = phi ptr [ %34, %30 ], [ %40, %48 ]
  %38 = phi i32 [ 0, %30 ], [ %50, %48 ]
  %39 = getelementptr inbounds i8, ptr @obfr, i64 %36
  %40 = getelementptr inbounds i8, ptr %37, i64 1
  %41 = load i8, ptr %37, align 1, !tbaa !12
  %42 = add nsw i64 %36, 1
  %43 = getelementptr inbounds i8, ptr @obfr, i64 %42
  store ptr %43, ptr @optr, align 8, !tbaa !6
  store i8 %41, ptr %39, align 1, !tbaa !12
  %44 = icmp eq i64 %42, 4096
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, ptr @outfile, align 4, !tbaa !10
  %47 = tail call signext i32 @write(i32 noundef signext %46, ptr noundef nonnull @obfr, i32 noundef signext 4096) #10
  store ptr @obfr, ptr @optr, align 8, !tbaa !6
  br label %48

48:                                               ; preds = %45, %35
  %49 = phi i64 [ 0, %45 ], [ %42, %35 ]
  %50 = add nuw nsw i32 %38, 1
  %51 = icmp eq i32 %50, %3
  br i1 %51, label %52, label %35

52:                                               ; preds = %48
  %53 = add nuw nsw i64 %32, 1
  %54 = icmp eq i64 %53, %29
  br i1 %54, label %57, label %30

55:                                               ; preds = %23
  %56 = load i32, ptr @outfile, align 4, !tbaa !10
  br label %63

57:                                               ; preds = %52
  %58 = icmp eq i64 %49, 0
  %59 = load i32, ptr @outfile, align 4, !tbaa !10
  br i1 %58, label %63, label %60

60:                                               ; preds = %57
  %61 = tail call signext i32 @write(i32 noundef signext %59, ptr noundef nonnull @obfr, i64 noundef %49) #10
  %62 = load i32, ptr @outfile, align 4, !tbaa !10
  br label %63

63:                                               ; preds = %55, %60, %57
  %64 = phi i32 [ %62, %60 ], [ %59, %57 ], [ %56, %55 ]
  %65 = tail call signext i32 @close(i32 noundef signext %64) #10
  ret void
}

; Function Attrs: nofree
declare dso_local noundef signext i32 @open(ptr nocapture noundef readonly, i32 noundef signext, ...) local_unnamed_addr #3

declare dso_local void @error(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local signext i32 @write(...) local_unnamed_addr #4

declare dso_local signext i32 @close(...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @conv420to422(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %4 = ashr i32 %3, 1
  %5 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  %6 = ashr i32 %5, 1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %131

8:                                                ; preds = %2
  %9 = icmp sgt i32 %6, 0
  %10 = add nsw i32 %6, -1
  br i1 %9, label %11, label %131

11:                                               ; preds = %8
  %12 = add nsw i32 %6, -3
  %13 = add nsw i32 %6, -2
  %14 = zext nneg i32 %4 to i64
  %15 = zext nneg i32 %10 to i64
  %16 = sext i32 %13 to i64
  %17 = sext i32 %12 to i64
  %18 = zext nneg i32 %6 to i64
  br label %19

19:                                               ; preds = %11, %126
  %20 = phi ptr [ %127, %126 ], [ %0, %11 ]
  %21 = phi ptr [ %128, %126 ], [ %1, %11 ]
  %22 = phi i32 [ %129, %126 ], [ 0, %11 ]
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %31, %23 ]
  %25 = shl nuw i64 %24, 1
  %26 = trunc nuw nsw i64 %24 to i32
  %27 = tail call i32 @llvm.usub.sat.i32(i32 %26, i32 3)
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %26, i32 2)
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %26, i32 1)
  %30 = icmp ult i64 %24, %15
  %31 = add nuw nsw i64 %24, 1
  %32 = trunc nuw nsw i64 %31 to i32
  %33 = select i1 %30, i32 %32, i32 %10
  %34 = icmp slt i64 %24, %16
  %35 = trunc i64 %24 to i32
  %36 = add i32 %35, 2
  %37 = select i1 %34, i32 %36, i32 %10
  %38 = icmp slt i64 %24, %17
  %39 = trunc i64 %24 to i32
  %40 = add i32 %39, 3
  %41 = select i1 %38, i32 %40, i32 %10
  %42 = load ptr, ptr @clp, align 8, !tbaa !6
  %43 = mul nuw nsw i32 %27, %4
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %20, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !12
  %47 = zext i8 %46 to i32
  %48 = mul nuw nsw i32 %47, 3
  %49 = mul nuw nsw i32 %28, %4
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %20, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !12
  %53 = zext i8 %52 to i32
  %54 = mul nuw nsw i32 %29, %4
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %20, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !12
  %58 = zext i8 %57 to i32
  %59 = mul nuw nsw i32 %58, 67
  %60 = mul nuw nsw i64 %24, %14
  %61 = getelementptr inbounds i8, ptr %20, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !12
  %63 = zext i8 %62 to i32
  %64 = mul nuw nsw i32 %63, 227
  %65 = mul nsw i32 %33, %4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %20, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !12
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %37, %4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %20, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !12
  %74 = zext i8 %73 to i32
  %75 = mul nuw nsw i32 %74, 7
  %76 = add nuw nsw i32 %48, 128
  %77 = shl nuw nsw i32 %53, 4
  %78 = sub nsw i32 %76, %77
  %79 = add nsw i32 %78, %59
  %80 = add nsw i32 %79, %64
  %81 = shl nuw nsw i32 %69, 5
  %82 = sub nsw i32 %80, %81
  %83 = add nsw i32 %82, %75
  %84 = ashr i32 %83, 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %42, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !12
  %88 = mul nsw i64 %25, %14
  %89 = getelementptr inbounds i8, ptr %21, i64 %88
  store i8 %87, ptr %89, align 1, !tbaa !12
  %90 = load ptr, ptr @clp, align 8, !tbaa !6
  %91 = mul nsw i32 %41, %4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %20, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !12
  %95 = zext i8 %94 to i32
  %96 = mul nuw nsw i32 %95, 3
  %97 = load i8, ptr %72, align 1, !tbaa !12
  %98 = zext i8 %97 to i32
  %99 = load i8, ptr %67, align 1, !tbaa !12
  %100 = zext i8 %99 to i32
  %101 = mul nuw nsw i32 %100, 67
  %102 = load i8, ptr %61, align 1, !tbaa !12
  %103 = zext i8 %102 to i32
  %104 = mul nuw nsw i32 %103, 227
  %105 = load i8, ptr %56, align 1, !tbaa !12
  %106 = zext i8 %105 to i32
  %107 = load i8, ptr %51, align 1, !tbaa !12
  %108 = zext i8 %107 to i32
  %109 = mul nuw nsw i32 %108, 7
  %110 = add nuw nsw i32 %96, 128
  %111 = shl nuw nsw i32 %98, 4
  %112 = sub nsw i32 %110, %111
  %113 = add nsw i32 %112, %101
  %114 = add nsw i32 %113, %104
  %115 = shl nuw nsw i32 %106, 5
  %116 = sub nsw i32 %114, %115
  %117 = add nsw i32 %116, %109
  %118 = ashr i32 %117, 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %90, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !12
  %122 = or disjoint i64 %25, 1
  %123 = mul nsw i64 %122, %14
  %124 = getelementptr inbounds i8, ptr %21, i64 %123
  store i8 %121, ptr %124, align 1, !tbaa !12
  %125 = icmp eq i64 %31, %18
  br i1 %125, label %126, label %23

126:                                              ; preds = %23
  %127 = getelementptr inbounds i8, ptr %20, i64 1
  %128 = getelementptr inbounds i8, ptr %21, i64 1
  %129 = add nuw nsw i32 %22, 1
  %130 = icmp eq i32 %129, %4
  br i1 %130, label %131, label %19

131:                                              ; preds = %126, %8, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @conv422to444(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %4 = ashr i32 %3, 1
  %5 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %124

7:                                                ; preds = %2
  %8 = icmp sgt i32 %4, 0
  %9 = add nsw i32 %4, -1
  %10 = sext i32 %4 to i64
  br i1 %8, label %11, label %124

11:                                               ; preds = %7
  %12 = add nsw i32 %4, -3
  %13 = add nsw i32 %4, -2
  %14 = zext nneg i32 %9 to i64
  %15 = sext i32 %13 to i64
  %16 = sext i32 %12 to i64
  %17 = zext nneg i32 %4 to i64
  br label %18

18:                                               ; preds = %11, %116
  %19 = phi ptr [ %117, %116 ], [ %0, %11 ]
  %20 = phi ptr [ %120, %116 ], [ %1, %11 ]
  %21 = phi i32 [ %121, %116 ], [ 0, %11 ]
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ 0, %18 ], [ %30, %22 ]
  %24 = shl nuw i64 %23, 1
  %25 = trunc nuw nsw i64 %23 to i32
  %26 = tail call i32 @llvm.usub.sat.i32(i32 %25, i32 3)
  %27 = tail call i32 @llvm.usub.sat.i32(i32 %25, i32 2)
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %25, i32 1)
  %29 = icmp ult i64 %23, %14
  %30 = add nuw nsw i64 %23, 1
  %31 = trunc nuw nsw i64 %30 to i32
  %32 = select i1 %29, i32 %31, i32 %9
  %33 = icmp slt i64 %23, %15
  %34 = trunc i64 %23 to i32
  %35 = add i32 %34, 2
  %36 = select i1 %33, i32 %35, i32 %9
  %37 = icmp slt i64 %23, %16
  %38 = trunc i64 %23 to i32
  %39 = add i32 %38, 3
  %40 = select i1 %37, i32 %39, i32 %9
  %41 = load ptr, ptr @clp, align 8, !tbaa !6
  %42 = zext nneg i32 %26 to i64
  %43 = getelementptr inbounds i8, ptr %19, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !12
  %45 = zext i8 %44 to i32
  %46 = mul nuw nsw i32 %45, 5
  %47 = zext nneg i32 %27 to i64
  %48 = getelementptr inbounds i8, ptr %19, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !12
  %50 = zext i8 %49 to i32
  %51 = mul nsw i32 %50, -21
  %52 = zext nneg i32 %28 to i64
  %53 = getelementptr inbounds i8, ptr %19, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !12
  %55 = zext i8 %54 to i32
  %56 = mul nuw nsw i32 %55, 70
  %57 = getelementptr inbounds i8, ptr %19, i64 %23
  %58 = load i8, ptr %57, align 1, !tbaa !12
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %59, 228
  %61 = sext i32 %32 to i64
  %62 = getelementptr inbounds i8, ptr %19, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !12
  %64 = zext i8 %63 to i32
  %65 = mul nsw i32 %64, -37
  %66 = sext i32 %36 to i64
  %67 = getelementptr inbounds i8, ptr %19, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !12
  %69 = zext i8 %68 to i32
  %70 = mul nuw nsw i32 %69, 11
  %71 = add nuw nsw i32 %46, 128
  %72 = add nsw i32 %71, %51
  %73 = add nsw i32 %72, %56
  %74 = add nsw i32 %73, %60
  %75 = add nsw i32 %74, %65
  %76 = add nsw i32 %75, %70
  %77 = ashr i32 %76, 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %41, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !12
  %81 = getelementptr inbounds i8, ptr %20, i64 %24
  store i8 %80, ptr %81, align 1, !tbaa !12
  %82 = load ptr, ptr @clp, align 8, !tbaa !6
  %83 = sext i32 %40 to i64
  %84 = getelementptr inbounds i8, ptr %19, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !12
  %86 = zext i8 %85 to i32
  %87 = mul nuw nsw i32 %86, 5
  %88 = load i8, ptr %67, align 1, !tbaa !12
  %89 = zext i8 %88 to i32
  %90 = mul nsw i32 %89, -21
  %91 = load i8, ptr %62, align 1, !tbaa !12
  %92 = zext i8 %91 to i32
  %93 = mul nuw nsw i32 %92, 70
  %94 = load i8, ptr %57, align 1, !tbaa !12
  %95 = zext i8 %94 to i32
  %96 = mul nuw nsw i32 %95, 228
  %97 = load i8, ptr %53, align 1, !tbaa !12
  %98 = zext i8 %97 to i32
  %99 = mul nsw i32 %98, -37
  %100 = load i8, ptr %48, align 1, !tbaa !12
  %101 = zext i8 %100 to i32
  %102 = mul nuw nsw i32 %101, 11
  %103 = add nuw nsw i32 %87, 128
  %104 = add nsw i32 %103, %90
  %105 = add nsw i32 %104, %93
  %106 = add nsw i32 %105, %96
  %107 = add nsw i32 %106, %99
  %108 = add nsw i32 %107, %102
  %109 = ashr i32 %108, 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %82, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !12
  %113 = or disjoint i64 %24, 1
  %114 = getelementptr inbounds i8, ptr %20, i64 %113
  store i8 %112, ptr %114, align 1, !tbaa !12
  %115 = icmp eq i64 %30, %17
  br i1 %115, label %116, label %22

116:                                              ; preds = %22
  %117 = getelementptr inbounds i8, ptr %19, i64 %10
  %118 = load i32, ptr @coded_picture_width, align 4, !tbaa !10
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %20, i64 %119
  %121 = add nuw nsw i32 %21, 1
  %122 = load i32, ptr @coded_picture_height, align 4, !tbaa !10
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %18, label %124

124:                                              ; preds = %116, %7, %2
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
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unswitch.partial.disable"}
!15 = distinct !{!15, !14}
