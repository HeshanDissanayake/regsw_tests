; ModuleID = 'sha.c'
source_filename = "sha.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-unknown"

%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@.str.1 = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind willreturn writeonly
define dso_local void @sha_init(%struct.SHA_INFO* nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 0
  store i64 1732584193, i64* %2, align 8, !tbaa !4
  %3 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 1
  store i64 4023233417, i64* %3, align 8, !tbaa !4
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 2
  store i64 2562383102, i64* %4, align 8, !tbaa !4
  %5 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 3
  store i64 271733878, i64* %5, align 8, !tbaa !4
  %6 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %6, align 8, !tbaa !4
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  %8 = bitcast i64* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %8, i8 0, i64 144, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree nounwind
define dso_local void @sha_update(%struct.SHA_INFO* nocapture noundef %0, i8* nocapture noundef readnone %1, i32 noundef signext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !8
  %6 = sext i32 %2 to i64
  %7 = shl nsw i64 %6, 3
  %8 = xor i64 %5, -1
  %9 = icmp ugt i64 %7, %8
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 2
  %11 = load i64, i64* %10, align 8, !tbaa !10
  %12 = zext i1 %9 to i64
  %13 = add i64 %11, %12
  %14 = add i64 %5, %7
  store i64 %14, i64* %4, align 8, !tbaa !8
  %15 = lshr i64 %6, 29
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 2
  %17 = add i64 %13, %15
  store i64 %17, i64* %16, align 8, !tbaa !10
  %18 = icmp sgt i32 %2, 127
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i32 [ %2, %19 ], [ %23, %21 ]
  tail call fastcc void @byte_reverse(i64* noundef nonnull %20)
  tail call fastcc void @sha_transform(%struct.SHA_INFO* noundef %0)
  %23 = add nsw i32 %22, -128
  %24 = icmp ugt i32 %22, 255
  br i1 %24, label %21, label %25, !llvm.loop !11

25:                                               ; preds = %21, %3
  %26 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind
define internal fastcc void @byte_reverse(i64* nocapture noundef %0) unnamed_addr #3 {
  %2 = bitcast i64* %0 to i8*
  %3 = load i8, i8* %2, align 1, !tbaa !13
  %4 = getelementptr inbounds i8, i8* %2, i64 1
  %5 = load i8, i8* %4, align 1, !tbaa !13
  %6 = getelementptr inbounds i8, i8* %2, i64 2
  %7 = load i8, i8* %6, align 1, !tbaa !13
  %8 = getelementptr inbounds i8, i8* %2, i64 3
  %9 = load i8, i8* %8, align 1, !tbaa !13
  store i8 %9, i8* %2, align 1, !tbaa !13
  store i8 %7, i8* %4, align 1, !tbaa !13
  store i8 %5, i8* %6, align 1, !tbaa !13
  store i8 %3, i8* %8, align 1, !tbaa !13
  %10 = getelementptr inbounds i64, i64* %0, i64 1
  %11 = bitcast i64* %10 to i8*
  %12 = load i8, i8* %11, align 1, !tbaa !13
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %15 = getelementptr inbounds i8, i8* %11, i64 2
  %16 = load i8, i8* %15, align 1, !tbaa !13
  %17 = getelementptr inbounds i8, i8* %11, i64 3
  %18 = load i8, i8* %17, align 1, !tbaa !13
  store i8 %18, i8* %11, align 1, !tbaa !13
  store i8 %16, i8* %13, align 1, !tbaa !13
  store i8 %14, i8* %15, align 1, !tbaa !13
  store i8 %12, i8* %17, align 1, !tbaa !13
  %19 = getelementptr inbounds i64, i64* %0, i64 2
  %20 = bitcast i64* %19 to i8*
  %21 = load i8, i8* %20, align 1, !tbaa !13
  %22 = getelementptr inbounds i8, i8* %20, i64 1
  %23 = load i8, i8* %22, align 1, !tbaa !13
  %24 = getelementptr inbounds i8, i8* %20, i64 2
  %25 = load i8, i8* %24, align 1, !tbaa !13
  %26 = getelementptr inbounds i8, i8* %20, i64 3
  %27 = load i8, i8* %26, align 1, !tbaa !13
  store i8 %27, i8* %20, align 1, !tbaa !13
  store i8 %25, i8* %22, align 1, !tbaa !13
  store i8 %23, i8* %24, align 1, !tbaa !13
  store i8 %21, i8* %26, align 1, !tbaa !13
  %28 = getelementptr inbounds i64, i64* %0, i64 3
  %29 = bitcast i64* %28 to i8*
  %30 = load i8, i8* %29, align 1, !tbaa !13
  %31 = getelementptr inbounds i8, i8* %29, i64 1
  %32 = load i8, i8* %31, align 1, !tbaa !13
  %33 = getelementptr inbounds i8, i8* %29, i64 2
  %34 = load i8, i8* %33, align 1, !tbaa !13
  %35 = getelementptr inbounds i8, i8* %29, i64 3
  %36 = load i8, i8* %35, align 1, !tbaa !13
  store i8 %36, i8* %29, align 1, !tbaa !13
  store i8 %34, i8* %31, align 1, !tbaa !13
  store i8 %32, i8* %33, align 1, !tbaa !13
  store i8 %30, i8* %35, align 1, !tbaa !13
  %37 = getelementptr inbounds i64, i64* %0, i64 4
  %38 = bitcast i64* %37 to i8*
  %39 = load i8, i8* %38, align 1, !tbaa !13
  %40 = getelementptr inbounds i8, i8* %38, i64 1
  %41 = load i8, i8* %40, align 1, !tbaa !13
  %42 = getelementptr inbounds i8, i8* %38, i64 2
  %43 = load i8, i8* %42, align 1, !tbaa !13
  %44 = getelementptr inbounds i8, i8* %38, i64 3
  %45 = load i8, i8* %44, align 1, !tbaa !13
  store i8 %45, i8* %38, align 1, !tbaa !13
  store i8 %43, i8* %40, align 1, !tbaa !13
  store i8 %41, i8* %42, align 1, !tbaa !13
  store i8 %39, i8* %44, align 1, !tbaa !13
  %46 = getelementptr inbounds i64, i64* %0, i64 5
  %47 = bitcast i64* %46 to i8*
  %48 = load i8, i8* %47, align 1, !tbaa !13
  %49 = getelementptr inbounds i8, i8* %47, i64 1
  %50 = load i8, i8* %49, align 1, !tbaa !13
  %51 = getelementptr inbounds i8, i8* %47, i64 2
  %52 = load i8, i8* %51, align 1, !tbaa !13
  %53 = getelementptr inbounds i8, i8* %47, i64 3
  %54 = load i8, i8* %53, align 1, !tbaa !13
  store i8 %54, i8* %47, align 1, !tbaa !13
  store i8 %52, i8* %49, align 1, !tbaa !13
  store i8 %50, i8* %51, align 1, !tbaa !13
  store i8 %48, i8* %53, align 1, !tbaa !13
  %55 = getelementptr inbounds i64, i64* %0, i64 6
  %56 = bitcast i64* %55 to i8*
  %57 = load i8, i8* %56, align 1, !tbaa !13
  %58 = getelementptr inbounds i8, i8* %56, i64 1
  %59 = load i8, i8* %58, align 1, !tbaa !13
  %60 = getelementptr inbounds i8, i8* %56, i64 2
  %61 = load i8, i8* %60, align 1, !tbaa !13
  %62 = getelementptr inbounds i8, i8* %56, i64 3
  %63 = load i8, i8* %62, align 1, !tbaa !13
  store i8 %63, i8* %56, align 1, !tbaa !13
  store i8 %61, i8* %58, align 1, !tbaa !13
  store i8 %59, i8* %60, align 1, !tbaa !13
  store i8 %57, i8* %62, align 1, !tbaa !13
  %64 = getelementptr inbounds i64, i64* %0, i64 7
  %65 = bitcast i64* %64 to i8*
  %66 = load i8, i8* %65, align 1, !tbaa !13
  %67 = getelementptr inbounds i8, i8* %65, i64 1
  %68 = load i8, i8* %67, align 1, !tbaa !13
  %69 = getelementptr inbounds i8, i8* %65, i64 2
  %70 = load i8, i8* %69, align 1, !tbaa !13
  %71 = getelementptr inbounds i8, i8* %65, i64 3
  %72 = load i8, i8* %71, align 1, !tbaa !13
  store i8 %72, i8* %65, align 1, !tbaa !13
  store i8 %70, i8* %67, align 1, !tbaa !13
  store i8 %68, i8* %69, align 1, !tbaa !13
  store i8 %66, i8* %71, align 1, !tbaa !13
  %73 = getelementptr inbounds i64, i64* %0, i64 8
  %74 = bitcast i64* %73 to i8*
  %75 = load i8, i8* %74, align 1, !tbaa !13
  %76 = getelementptr inbounds i8, i8* %74, i64 1
  %77 = load i8, i8* %76, align 1, !tbaa !13
  %78 = getelementptr inbounds i8, i8* %74, i64 2
  %79 = load i8, i8* %78, align 1, !tbaa !13
  %80 = getelementptr inbounds i8, i8* %74, i64 3
  %81 = load i8, i8* %80, align 1, !tbaa !13
  store i8 %81, i8* %74, align 1, !tbaa !13
  store i8 %79, i8* %76, align 1, !tbaa !13
  store i8 %77, i8* %78, align 1, !tbaa !13
  store i8 %75, i8* %80, align 1, !tbaa !13
  %82 = getelementptr inbounds i64, i64* %0, i64 9
  %83 = bitcast i64* %82 to i8*
  %84 = load i8, i8* %83, align 1, !tbaa !13
  %85 = getelementptr inbounds i8, i8* %83, i64 1
  %86 = load i8, i8* %85, align 1, !tbaa !13
  %87 = getelementptr inbounds i8, i8* %83, i64 2
  %88 = load i8, i8* %87, align 1, !tbaa !13
  %89 = getelementptr inbounds i8, i8* %83, i64 3
  %90 = load i8, i8* %89, align 1, !tbaa !13
  store i8 %90, i8* %83, align 1, !tbaa !13
  store i8 %88, i8* %85, align 1, !tbaa !13
  store i8 %86, i8* %87, align 1, !tbaa !13
  store i8 %84, i8* %89, align 1, !tbaa !13
  %91 = getelementptr inbounds i64, i64* %0, i64 10
  %92 = bitcast i64* %91 to i8*
  %93 = load i8, i8* %92, align 1, !tbaa !13
  %94 = getelementptr inbounds i8, i8* %92, i64 1
  %95 = load i8, i8* %94, align 1, !tbaa !13
  %96 = getelementptr inbounds i8, i8* %92, i64 2
  %97 = load i8, i8* %96, align 1, !tbaa !13
  %98 = getelementptr inbounds i8, i8* %92, i64 3
  %99 = load i8, i8* %98, align 1, !tbaa !13
  store i8 %99, i8* %92, align 1, !tbaa !13
  store i8 %97, i8* %94, align 1, !tbaa !13
  store i8 %95, i8* %96, align 1, !tbaa !13
  store i8 %93, i8* %98, align 1, !tbaa !13
  %100 = getelementptr inbounds i64, i64* %0, i64 11
  %101 = bitcast i64* %100 to i8*
  %102 = load i8, i8* %101, align 1, !tbaa !13
  %103 = getelementptr inbounds i8, i8* %101, i64 1
  %104 = load i8, i8* %103, align 1, !tbaa !13
  %105 = getelementptr inbounds i8, i8* %101, i64 2
  %106 = load i8, i8* %105, align 1, !tbaa !13
  %107 = getelementptr inbounds i8, i8* %101, i64 3
  %108 = load i8, i8* %107, align 1, !tbaa !13
  store i8 %108, i8* %101, align 1, !tbaa !13
  store i8 %106, i8* %103, align 1, !tbaa !13
  store i8 %104, i8* %105, align 1, !tbaa !13
  store i8 %102, i8* %107, align 1, !tbaa !13
  %109 = getelementptr inbounds i64, i64* %0, i64 12
  %110 = bitcast i64* %109 to i8*
  %111 = load i8, i8* %110, align 1, !tbaa !13
  %112 = getelementptr inbounds i8, i8* %110, i64 1
  %113 = load i8, i8* %112, align 1, !tbaa !13
  %114 = getelementptr inbounds i8, i8* %110, i64 2
  %115 = load i8, i8* %114, align 1, !tbaa !13
  %116 = getelementptr inbounds i8, i8* %110, i64 3
  %117 = load i8, i8* %116, align 1, !tbaa !13
  store i8 %117, i8* %110, align 1, !tbaa !13
  store i8 %115, i8* %112, align 1, !tbaa !13
  store i8 %113, i8* %114, align 1, !tbaa !13
  store i8 %111, i8* %116, align 1, !tbaa !13
  %118 = getelementptr inbounds i64, i64* %0, i64 13
  %119 = bitcast i64* %118 to i8*
  %120 = load i8, i8* %119, align 1, !tbaa !13
  %121 = getelementptr inbounds i8, i8* %119, i64 1
  %122 = load i8, i8* %121, align 1, !tbaa !13
  %123 = getelementptr inbounds i8, i8* %119, i64 2
  %124 = load i8, i8* %123, align 1, !tbaa !13
  %125 = getelementptr inbounds i8, i8* %119, i64 3
  %126 = load i8, i8* %125, align 1, !tbaa !13
  store i8 %126, i8* %119, align 1, !tbaa !13
  store i8 %124, i8* %121, align 1, !tbaa !13
  store i8 %122, i8* %123, align 1, !tbaa !13
  store i8 %120, i8* %125, align 1, !tbaa !13
  %127 = getelementptr inbounds i64, i64* %0, i64 14
  %128 = bitcast i64* %127 to i8*
  %129 = load i8, i8* %128, align 1, !tbaa !13
  %130 = getelementptr inbounds i8, i8* %128, i64 1
  %131 = load i8, i8* %130, align 1, !tbaa !13
  %132 = getelementptr inbounds i8, i8* %128, i64 2
  %133 = load i8, i8* %132, align 1, !tbaa !13
  %134 = getelementptr inbounds i8, i8* %128, i64 3
  %135 = load i8, i8* %134, align 1, !tbaa !13
  store i8 %135, i8* %128, align 1, !tbaa !13
  store i8 %133, i8* %130, align 1, !tbaa !13
  store i8 %131, i8* %132, align 1, !tbaa !13
  store i8 %129, i8* %134, align 1, !tbaa !13
  %136 = getelementptr inbounds i64, i64* %0, i64 15
  %137 = bitcast i64* %136 to i8*
  %138 = load i8, i8* %137, align 1, !tbaa !13
  %139 = getelementptr inbounds i8, i8* %137, i64 1
  %140 = load i8, i8* %139, align 1, !tbaa !13
  %141 = getelementptr inbounds i8, i8* %137, i64 2
  %142 = load i8, i8* %141, align 1, !tbaa !13
  %143 = getelementptr inbounds i8, i8* %137, i64 3
  %144 = load i8, i8* %143, align 1, !tbaa !13
  store i8 %144, i8* %137, align 1, !tbaa !13
  store i8 %142, i8* %139, align 1, !tbaa !13
  store i8 %140, i8* %141, align 1, !tbaa !13
  store i8 %138, i8* %143, align 1, !tbaa !13
  ret void
}

; Function Attrs: nofree nosync nounwind
define internal fastcc void @sha_transform(%struct.SHA_INFO* nocapture noundef %0) unnamed_addr #4 {
  %2 = alloca [80 x i64], align 8
  %3 = bitcast [80 x i64]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %3) #10
  %4 = getelementptr %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  %5 = bitcast i64* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %3, i8* noundef nonnull align 8 dereferenceable(128) %5, i64 128, i1 false), !tbaa !4
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 16, %1 ], [ %24, %6 ]
  %8 = add nsw i64 %7, -3
  %9 = getelementptr inbounds [80 x i64], [80 x i64]* %2, i64 0, i64 %8
  %10 = load i64, i64* %9, align 8, !tbaa !4
  %11 = add nsw i64 %7, -8
  %12 = getelementptr inbounds [80 x i64], [80 x i64]* %2, i64 0, i64 %11
  %13 = load i64, i64* %12, align 8, !tbaa !4
  %14 = xor i64 %13, %10
  %15 = add nsw i64 %7, -14
  %16 = getelementptr inbounds [80 x i64], [80 x i64]* %2, i64 0, i64 %15
  %17 = load i64, i64* %16, align 8, !tbaa !4
  %18 = xor i64 %14, %17
  %19 = add nsw i64 %7, -16
  %20 = getelementptr inbounds [80 x i64], [80 x i64]* %2, i64 0, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !4
  %22 = xor i64 %18, %21
  %23 = getelementptr inbounds [80 x i64], [80 x i64]* %2, i64 0, i64 %7
  store i64 %22, i64* %23, align 8, !tbaa !4
  %24 = add nuw nsw i64 %7, 1
  %25 = icmp eq i64 %24, 80
  br i1 %25, label %26, label %6, !llvm.loop !14

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 0
  %28 = load i64, i64* %27, align 8, !tbaa !4
  %29 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 1
  %30 = load i64, i64* %29, align 8, !tbaa !4
  %31 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 2
  %32 = load i64, i64* %31, align 8, !tbaa !4
  %33 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 3
  %34 = load i64, i64* %33, align 8, !tbaa !4
  %35 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 4
  %36 = load i64, i64* %35, align 8, !tbaa !4
  br label %37

37:                                               ; preds = %26, %37
  %38 = phi i64 [ 0, %26 ], [ %60, %37 ]
  %39 = phi i64 [ %36, %26 ], [ %40, %37 ]
  %40 = phi i64 [ %34, %26 ], [ %41, %37 ]
  %41 = phi i64 [ %32, %26 ], [ %59, %37 ]
  %42 = phi i64 [ %30, %26 ], [ %43, %37 ]
  %43 = phi i64 [ %28, %26 ], [ %56, %37 ]
  %44 = shl i64 %43, 5
  %45 = lshr i64 %43, 27
  %46 = or i64 %44, %45
  %47 = and i64 %41, %42
  %48 = xor i64 %42, -1
  %49 = and i64 %40, %48
  %50 = getelementptr inbounds [80 x i64], [80 x i64]* %2, i64 0, i64 %38
  %51 = load i64, i64* %50, align 8, !tbaa !4
  %52 = add i64 %46, 1518500249
  %53 = add i64 %52, %47
  %54 = add i64 %53, %49
  %55 = add i64 %54, %39
  %56 = add i64 %55, %51
  %57 = shl i64 %42, 30
  %58 = lshr i64 %42, 2
  %59 = or i64 %57, %58
  %60 = add nuw nsw i64 %38, 1
  %61 = icmp eq i64 %60, 20
  br i1 %61, label %62, label %37, !llvm.loop !15

62:                                               ; preds = %37, %62
  %63 = phi i64 [ %83, %62 ], [ 20, %37 ]
  %64 = phi i64 [ %65, %62 ], [ %40, %37 ]
  %65 = phi i64 [ %66, %62 ], [ %41, %37 ]
  %66 = phi i64 [ %82, %62 ], [ %59, %37 ]
  %67 = phi i64 [ %68, %62 ], [ %43, %37 ]
  %68 = phi i64 [ %79, %62 ], [ %56, %37 ]
  %69 = shl i64 %68, 5
  %70 = lshr i64 %68, 27
  %71 = or i64 %69, %70
  %72 = xor i64 %66, %67
  %73 = xor i64 %72, %65
  %74 = getelementptr inbounds [80 x i64], [80 x i64]* %2, i64 0, i64 %63
  %75 = load i64, i64* %74, align 8, !tbaa !4
  %76 = add i64 %71, 1859775393
  %77 = add i64 %76, %73
  %78 = add i64 %77, %64
  %79 = add i64 %78, %75
  %80 = shl i64 %67, 30
  %81 = lshr i64 %67, 2
  %82 = or i64 %80, %81
  %83 = add nuw nsw i64 %63, 1
  %84 = icmp eq i64 %83, 40
  br i1 %84, label %85, label %62, !llvm.loop !16

85:                                               ; preds = %62, %85
  %86 = phi i64 [ %108, %85 ], [ 40, %62 ]
  %87 = phi i64 [ %88, %85 ], [ %65, %62 ]
  %88 = phi i64 [ %89, %85 ], [ %66, %62 ]
  %89 = phi i64 [ %107, %85 ], [ %82, %62 ]
  %90 = phi i64 [ %91, %85 ], [ %68, %62 ]
  %91 = phi i64 [ %104, %85 ], [ %79, %62 ]
  %92 = shl i64 %91, 5
  %93 = lshr i64 %91, 27
  %94 = or i64 %92, %93
  %95 = or i64 %88, %89
  %96 = and i64 %95, %90
  %97 = and i64 %88, %89
  %98 = or i64 %96, %97
  %99 = getelementptr inbounds [80 x i64], [80 x i64]* %2, i64 0, i64 %86
  %100 = load i64, i64* %99, align 8, !tbaa !4
  %101 = add i64 %94, 2400959708
  %102 = add i64 %101, %87
  %103 = add i64 %102, %98
  %104 = add i64 %103, %100
  %105 = shl i64 %90, 30
  %106 = lshr i64 %90, 2
  %107 = or i64 %105, %106
  %108 = add nuw nsw i64 %86, 1
  %109 = icmp eq i64 %108, 60
  br i1 %109, label %110, label %85, !llvm.loop !17

110:                                              ; preds = %85, %110
  %111 = phi i64 [ %131, %110 ], [ 60, %85 ]
  %112 = phi i64 [ %113, %110 ], [ %88, %85 ]
  %113 = phi i64 [ %114, %110 ], [ %89, %85 ]
  %114 = phi i64 [ %130, %110 ], [ %107, %85 ]
  %115 = phi i64 [ %116, %110 ], [ %91, %85 ]
  %116 = phi i64 [ %127, %110 ], [ %104, %85 ]
  %117 = shl i64 %116, 5
  %118 = lshr i64 %116, 27
  %119 = or i64 %117, %118
  %120 = xor i64 %114, %115
  %121 = xor i64 %120, %113
  %122 = getelementptr inbounds [80 x i64], [80 x i64]* %2, i64 0, i64 %111
  %123 = load i64, i64* %122, align 8, !tbaa !4
  %124 = add i64 %119, 3395469782
  %125 = add i64 %124, %121
  %126 = add i64 %125, %112
  %127 = add i64 %126, %123
  %128 = shl i64 %115, 30
  %129 = lshr i64 %115, 2
  %130 = or i64 %128, %129
  %131 = add nuw nsw i64 %111, 1
  %132 = icmp eq i64 %131, 80
  br i1 %132, label %133, label %110, !llvm.loop !18

133:                                              ; preds = %110
  %134 = add i64 %127, %28
  store i64 %134, i64* %27, align 8, !tbaa !4
  %135 = add i64 %116, %30
  store i64 %135, i64* %29, align 8, !tbaa !4
  %136 = add i64 %130, %32
  store i64 %136, i64* %31, align 8, !tbaa !4
  %137 = add i64 %114, %34
  store i64 %137, i64* %33, align 8, !tbaa !4
  %138 = add i64 %113, %36
  store i64 %138, i64* %35, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %3) #10
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind
define dso_local void @sha_final(%struct.SHA_INFO* nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !8
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 2
  %5 = load i64, i64* %4, align 8, !tbaa !10
  %6 = trunc i64 %3 to i32
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 63
  %9 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3
  %10 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %11 = bitcast [16 x i64]* %9 to i8*
  %12 = add nuw nsw i32 %8, 1
  %13 = zext i32 %8 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8 -128, i8* %14, align 1, !tbaa !13
  %15 = icmp ugt i32 %8, 55
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds i8, i8* %11, i64 %16
  br i1 %15, label %18, label %21

18:                                               ; preds = %1
  %19 = xor i32 %8, 63
  %20 = zext i32 %19 to i64
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %17, i8 0, i64 %20, i1 false)
  tail call fastcc void @byte_reverse(i64* noundef nonnull %10)
  tail call fastcc void @sha_transform(%struct.SHA_INFO* noundef nonnull %0)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  br label %24

21:                                               ; preds = %1
  %22 = sub nuw nsw i32 55, %8
  %23 = zext i32 %22 to i64
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %17, i8 0, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %21, %18
  tail call fastcc void @byte_reverse(i64* noundef nonnull %10)
  %25 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 14
  store i64 %5, i64* %25, align 8, !tbaa !4
  %26 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 15
  store i64 %3, i64* %26, align 8, !tbaa !4
  tail call fastcc void @sha_transform(%struct.SHA_INFO* noundef nonnull %0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nounwind
define dso_local void @sha_stream(%struct.SHA_INFO* noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca [80 x i64], align 8
  %4 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #11
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 0
  store i64 1732584193, i64* %6, align 8, !tbaa !4
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 1
  store i64 4023233417, i64* %7, align 8, !tbaa !4
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 2
  store i64 2562383102, i64* %8, align 8, !tbaa !4
  %9 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 3
  store i64 271733878, i64* %9, align 8, !tbaa !4
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %10, align 8, !tbaa !4
  %11 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  %12 = bitcast i64* %11 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %12, i8 0, i64 144, i1 false) #10
  %13 = icmp sgt i32 %5, 0
  br i1 %13, label %14, label %312

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  %17 = bitcast i64* %16 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = getelementptr inbounds i8, i8* %17, i64 2
  %20 = getelementptr inbounds i8, i8* %17, i64 3
  %21 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 1
  %22 = bitcast i64* %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = getelementptr inbounds i8, i8* %22, i64 2
  %25 = getelementptr inbounds i8, i8* %22, i64 3
  %26 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 2
  %27 = bitcast i64* %26 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = getelementptr inbounds i8, i8* %27, i64 2
  %30 = getelementptr inbounds i8, i8* %27, i64 3
  %31 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 3
  %32 = bitcast i64* %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = getelementptr inbounds i8, i8* %32, i64 2
  %35 = getelementptr inbounds i8, i8* %32, i64 3
  %36 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 4
  %37 = bitcast i64* %36 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = getelementptr inbounds i8, i8* %37, i64 2
  %40 = getelementptr inbounds i8, i8* %37, i64 3
  %41 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 5
  %42 = bitcast i64* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = getelementptr inbounds i8, i8* %42, i64 2
  %45 = getelementptr inbounds i8, i8* %42, i64 3
  %46 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 6
  %47 = bitcast i64* %46 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = getelementptr inbounds i8, i8* %47, i64 2
  %50 = getelementptr inbounds i8, i8* %47, i64 3
  %51 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 7
  %52 = bitcast i64* %51 to i8*
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = getelementptr inbounds i8, i8* %52, i64 2
  %55 = getelementptr inbounds i8, i8* %52, i64 3
  %56 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 8
  %57 = bitcast i64* %56 to i8*
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = getelementptr inbounds i8, i8* %57, i64 2
  %60 = getelementptr inbounds i8, i8* %57, i64 3
  %61 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 9
  %62 = bitcast i64* %61 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = getelementptr inbounds i8, i8* %62, i64 2
  %65 = getelementptr inbounds i8, i8* %62, i64 3
  %66 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 10
  %67 = bitcast i64* %66 to i8*
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = getelementptr inbounds i8, i8* %67, i64 2
  %70 = getelementptr inbounds i8, i8* %67, i64 3
  %71 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 11
  %72 = bitcast i64* %71 to i8*
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = getelementptr inbounds i8, i8* %72, i64 2
  %75 = getelementptr inbounds i8, i8* %72, i64 3
  %76 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 12
  %77 = bitcast i64* %76 to i8*
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = getelementptr inbounds i8, i8* %77, i64 2
  %80 = getelementptr inbounds i8, i8* %77, i64 3
  %81 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 13
  %82 = bitcast i64* %81 to i8*
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = getelementptr inbounds i8, i8* %82, i64 2
  %85 = getelementptr inbounds i8, i8* %82, i64 3
  %86 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 14
  %87 = bitcast i64* %86 to i8*
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = getelementptr inbounds i8, i8* %87, i64 2
  %90 = getelementptr inbounds i8, i8* %87, i64 3
  %91 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 15
  %92 = bitcast i64* %91 to i8*
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = getelementptr inbounds i8, i8* %92, i64 2
  %95 = getelementptr inbounds i8, i8* %92, i64 3
  %96 = bitcast [80 x i64]* %3 to i8*
  br label %97

97:                                               ; preds = %306, %14
  %98 = phi i64 [ 0, %14 ], [ %311, %306 ]
  %99 = phi i64 [ 0, %14 ], [ %310, %306 ]
  %100 = phi i32 [ 0, %14 ], [ %308, %306 ]
  %101 = sub nsw i32 %5, %100
  %102 = icmp slt i32 %101, 128
  %103 = select i1 %102, i32 %101, i32 128
  %104 = sext i32 %103 to i64
  %105 = shl nsw i64 %104, 3
  %106 = xor i64 %99, -1
  %107 = icmp ugt i64 %105, %106
  %108 = zext i1 %107 to i64
  %109 = add i64 %99, %105
  store i64 %109, i64* %11, align 8, !tbaa !8
  %110 = lshr i64 %104, 29
  %111 = add i64 %98, %110
  %112 = add i64 %111, %108
  store i64 %112, i64* %15, align 8, !tbaa !10
  %113 = icmp sgt i32 %103, 127
  br i1 %113, label %114, label %306

114:                                              ; preds = %97
  %115 = load i64, i64* %6, align 8, !tbaa !4
  %116 = load i64, i64* %7, align 8, !tbaa !4
  %117 = load i64, i64* %8, align 8, !tbaa !4
  %118 = load i64, i64* %9, align 8, !tbaa !4
  %119 = load i64, i64* %10, align 8, !tbaa !4
  %120 = load i8, i8* %17, align 1, !tbaa !13
  %121 = load i8, i8* %18, align 1, !tbaa !13
  %122 = load i8, i8* %19, align 1, !tbaa !13
  %123 = load i8, i8* %20, align 1, !tbaa !13
  store i8 %123, i8* %17, align 1, !tbaa !13
  store i8 %122, i8* %18, align 1, !tbaa !13
  store i8 %121, i8* %19, align 1, !tbaa !13
  store i8 %120, i8* %20, align 1, !tbaa !13
  %124 = load i8, i8* %22, align 1, !tbaa !13
  %125 = load i8, i8* %23, align 1, !tbaa !13
  %126 = load i8, i8* %24, align 1, !tbaa !13
  %127 = load i8, i8* %25, align 1, !tbaa !13
  store i8 %127, i8* %22, align 1, !tbaa !13
  store i8 %126, i8* %23, align 1, !tbaa !13
  store i8 %125, i8* %24, align 1, !tbaa !13
  store i8 %124, i8* %25, align 1, !tbaa !13
  %128 = load i8, i8* %27, align 1, !tbaa !13
  %129 = load i8, i8* %28, align 1, !tbaa !13
  %130 = load i8, i8* %29, align 1, !tbaa !13
  %131 = load i8, i8* %30, align 1, !tbaa !13
  store i8 %131, i8* %27, align 1, !tbaa !13
  store i8 %130, i8* %28, align 1, !tbaa !13
  store i8 %129, i8* %29, align 1, !tbaa !13
  store i8 %128, i8* %30, align 1, !tbaa !13
  %132 = load i8, i8* %32, align 1, !tbaa !13
  %133 = load i8, i8* %33, align 1, !tbaa !13
  %134 = load i8, i8* %34, align 1, !tbaa !13
  %135 = load i8, i8* %35, align 1, !tbaa !13
  store i8 %135, i8* %32, align 1, !tbaa !13
  store i8 %134, i8* %33, align 1, !tbaa !13
  store i8 %133, i8* %34, align 1, !tbaa !13
  store i8 %132, i8* %35, align 1, !tbaa !13
  %136 = load i8, i8* %37, align 1, !tbaa !13
  %137 = load i8, i8* %38, align 1, !tbaa !13
  %138 = load i8, i8* %39, align 1, !tbaa !13
  %139 = load i8, i8* %40, align 1, !tbaa !13
  store i8 %139, i8* %37, align 1, !tbaa !13
  store i8 %138, i8* %38, align 1, !tbaa !13
  store i8 %137, i8* %39, align 1, !tbaa !13
  store i8 %136, i8* %40, align 1, !tbaa !13
  %140 = load i8, i8* %42, align 1, !tbaa !13
  %141 = load i8, i8* %43, align 1, !tbaa !13
  %142 = load i8, i8* %44, align 1, !tbaa !13
  %143 = load i8, i8* %45, align 1, !tbaa !13
  store i8 %143, i8* %42, align 1, !tbaa !13
  store i8 %142, i8* %43, align 1, !tbaa !13
  store i8 %141, i8* %44, align 1, !tbaa !13
  store i8 %140, i8* %45, align 1, !tbaa !13
  %144 = load i8, i8* %47, align 1, !tbaa !13
  %145 = load i8, i8* %48, align 1, !tbaa !13
  %146 = load i8, i8* %49, align 1, !tbaa !13
  %147 = load i8, i8* %50, align 1, !tbaa !13
  store i8 %147, i8* %47, align 1, !tbaa !13
  store i8 %146, i8* %48, align 1, !tbaa !13
  store i8 %145, i8* %49, align 1, !tbaa !13
  store i8 %144, i8* %50, align 1, !tbaa !13
  %148 = load i8, i8* %52, align 1, !tbaa !13
  %149 = load i8, i8* %53, align 1, !tbaa !13
  %150 = load i8, i8* %54, align 1, !tbaa !13
  %151 = load i8, i8* %55, align 1, !tbaa !13
  store i8 %151, i8* %52, align 1, !tbaa !13
  store i8 %150, i8* %53, align 1, !tbaa !13
  store i8 %149, i8* %54, align 1, !tbaa !13
  store i8 %148, i8* %55, align 1, !tbaa !13
  %152 = load i8, i8* %57, align 1, !tbaa !13
  %153 = load i8, i8* %58, align 1, !tbaa !13
  %154 = load i8, i8* %59, align 1, !tbaa !13
  %155 = load i8, i8* %60, align 1, !tbaa !13
  store i8 %155, i8* %57, align 1, !tbaa !13
  store i8 %154, i8* %58, align 1, !tbaa !13
  store i8 %153, i8* %59, align 1, !tbaa !13
  store i8 %152, i8* %60, align 1, !tbaa !13
  %156 = load i8, i8* %62, align 1, !tbaa !13
  %157 = load i8, i8* %63, align 1, !tbaa !13
  %158 = load i8, i8* %64, align 1, !tbaa !13
  %159 = load i8, i8* %65, align 1, !tbaa !13
  store i8 %159, i8* %62, align 1, !tbaa !13
  store i8 %158, i8* %63, align 1, !tbaa !13
  store i8 %157, i8* %64, align 1, !tbaa !13
  store i8 %156, i8* %65, align 1, !tbaa !13
  %160 = load i8, i8* %67, align 1, !tbaa !13
  %161 = load i8, i8* %68, align 1, !tbaa !13
  %162 = load i8, i8* %69, align 1, !tbaa !13
  %163 = load i8, i8* %70, align 1, !tbaa !13
  store i8 %163, i8* %67, align 1, !tbaa !13
  store i8 %162, i8* %68, align 1, !tbaa !13
  store i8 %161, i8* %69, align 1, !tbaa !13
  store i8 %160, i8* %70, align 1, !tbaa !13
  %164 = load i8, i8* %72, align 1, !tbaa !13
  %165 = load i8, i8* %73, align 1, !tbaa !13
  %166 = load i8, i8* %74, align 1, !tbaa !13
  %167 = load i8, i8* %75, align 1, !tbaa !13
  store i8 %167, i8* %72, align 1, !tbaa !13
  store i8 %166, i8* %73, align 1, !tbaa !13
  store i8 %165, i8* %74, align 1, !tbaa !13
  store i8 %164, i8* %75, align 1, !tbaa !13
  %168 = load i8, i8* %77, align 1, !tbaa !13
  %169 = load i8, i8* %78, align 1, !tbaa !13
  %170 = load i8, i8* %79, align 1, !tbaa !13
  %171 = load i8, i8* %80, align 1, !tbaa !13
  store i8 %171, i8* %77, align 1, !tbaa !13
  store i8 %170, i8* %78, align 1, !tbaa !13
  store i8 %169, i8* %79, align 1, !tbaa !13
  store i8 %168, i8* %80, align 1, !tbaa !13
  %172 = load i8, i8* %82, align 1, !tbaa !13
  %173 = load i8, i8* %83, align 1, !tbaa !13
  %174 = load i8, i8* %84, align 1, !tbaa !13
  %175 = load i8, i8* %85, align 1, !tbaa !13
  store i8 %175, i8* %82, align 1, !tbaa !13
  store i8 %174, i8* %83, align 1, !tbaa !13
  store i8 %173, i8* %84, align 1, !tbaa !13
  store i8 %172, i8* %85, align 1, !tbaa !13
  %176 = load i8, i8* %87, align 1, !tbaa !13
  %177 = load i8, i8* %88, align 1, !tbaa !13
  %178 = load i8, i8* %89, align 1, !tbaa !13
  %179 = load i8, i8* %90, align 1, !tbaa !13
  store i8 %179, i8* %87, align 1, !tbaa !13
  store i8 %178, i8* %88, align 1, !tbaa !13
  store i8 %177, i8* %89, align 1, !tbaa !13
  store i8 %176, i8* %90, align 1, !tbaa !13
  %180 = load i8, i8* %92, align 1, !tbaa !13
  %181 = load i8, i8* %93, align 1, !tbaa !13
  %182 = load i8, i8* %94, align 1, !tbaa !13
  %183 = load i8, i8* %95, align 1, !tbaa !13
  store i8 %183, i8* %92, align 1, !tbaa !13
  store i8 %182, i8* %93, align 1, !tbaa !13
  store i8 %181, i8* %94, align 1, !tbaa !13
  store i8 %180, i8* %95, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %96) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %96, i8* noundef nonnull align 8 dereferenceable(128) %17, i64 128, i1 false) #10, !tbaa !4
  br label %184

184:                                              ; preds = %184, %114
  %185 = phi i64 [ 16, %114 ], [ %202, %184 ]
  %186 = add nsw i64 %185, -3
  %187 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %186
  %188 = load i64, i64* %187, align 8, !tbaa !4
  %189 = add nsw i64 %185, -8
  %190 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %189
  %191 = load i64, i64* %190, align 8, !tbaa !4
  %192 = xor i64 %191, %188
  %193 = add nsw i64 %185, -14
  %194 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %193
  %195 = load i64, i64* %194, align 8, !tbaa !4
  %196 = xor i64 %192, %195
  %197 = add nsw i64 %185, -16
  %198 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %197
  %199 = load i64, i64* %198, align 8, !tbaa !4
  %200 = xor i64 %196, %199
  %201 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %185
  store i64 %200, i64* %201, align 8, !tbaa !4
  %202 = add nuw nsw i64 %185, 1
  %203 = icmp eq i64 %202, 80
  br i1 %203, label %204, label %184, !llvm.loop !14

204:                                              ; preds = %184, %204
  %205 = phi i64 [ %227, %204 ], [ 0, %184 ]
  %206 = phi i64 [ %207, %204 ], [ %119, %184 ]
  %207 = phi i64 [ %208, %204 ], [ %118, %184 ]
  %208 = phi i64 [ %226, %204 ], [ %117, %184 ]
  %209 = phi i64 [ %210, %204 ], [ %116, %184 ]
  %210 = phi i64 [ %223, %204 ], [ %115, %184 ]
  %211 = shl i64 %210, 5
  %212 = lshr i64 %210, 27
  %213 = or i64 %211, %212
  %214 = and i64 %209, %208
  %215 = xor i64 %209, -1
  %216 = and i64 %207, %215
  %217 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %205
  %218 = load i64, i64* %217, align 8, !tbaa !4
  %219 = add i64 %206, 1518500249
  %220 = add i64 %219, %214
  %221 = add i64 %220, %216
  %222 = add i64 %221, %218
  %223 = add i64 %222, %213
  %224 = shl i64 %209, 30
  %225 = lshr i64 %209, 2
  %226 = or i64 %224, %225
  %227 = add nuw nsw i64 %205, 1
  %228 = icmp eq i64 %227, 20
  br i1 %228, label %229, label %204, !llvm.loop !15

229:                                              ; preds = %204, %229
  %230 = phi i64 [ %250, %229 ], [ 20, %204 ]
  %231 = phi i64 [ %232, %229 ], [ %207, %204 ]
  %232 = phi i64 [ %233, %229 ], [ %208, %204 ]
  %233 = phi i64 [ %249, %229 ], [ %226, %204 ]
  %234 = phi i64 [ %235, %229 ], [ %210, %204 ]
  %235 = phi i64 [ %246, %229 ], [ %223, %204 ]
  %236 = shl i64 %235, 5
  %237 = lshr i64 %235, 27
  %238 = or i64 %236, %237
  %239 = xor i64 %233, %232
  %240 = xor i64 %239, %234
  %241 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %230
  %242 = load i64, i64* %241, align 8, !tbaa !4
  %243 = add i64 %231, 1859775393
  %244 = add i64 %243, %240
  %245 = add i64 %244, %242
  %246 = add i64 %245, %238
  %247 = shl i64 %234, 30
  %248 = lshr i64 %234, 2
  %249 = or i64 %247, %248
  %250 = add nuw nsw i64 %230, 1
  %251 = icmp eq i64 %250, 40
  br i1 %251, label %252, label %229, !llvm.loop !16

252:                                              ; preds = %229, %252
  %253 = phi i64 [ %275, %252 ], [ 40, %229 ]
  %254 = phi i64 [ %255, %252 ], [ %232, %229 ]
  %255 = phi i64 [ %256, %252 ], [ %233, %229 ]
  %256 = phi i64 [ %274, %252 ], [ %249, %229 ]
  %257 = phi i64 [ %258, %252 ], [ %235, %229 ]
  %258 = phi i64 [ %271, %252 ], [ %246, %229 ]
  %259 = shl i64 %258, 5
  %260 = lshr i64 %258, 27
  %261 = or i64 %259, %260
  %262 = or i64 %256, %255
  %263 = and i64 %262, %257
  %264 = and i64 %256, %255
  %265 = or i64 %263, %264
  %266 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %253
  %267 = load i64, i64* %266, align 8, !tbaa !4
  %268 = add i64 %254, 2400959708
  %269 = add i64 %268, %265
  %270 = add i64 %269, %267
  %271 = add i64 %270, %261
  %272 = shl i64 %257, 30
  %273 = lshr i64 %257, 2
  %274 = or i64 %272, %273
  %275 = add nuw nsw i64 %253, 1
  %276 = icmp eq i64 %275, 60
  br i1 %276, label %277, label %252, !llvm.loop !17

277:                                              ; preds = %252, %277
  %278 = phi i64 [ %298, %277 ], [ 60, %252 ]
  %279 = phi i64 [ %280, %277 ], [ %255, %252 ]
  %280 = phi i64 [ %281, %277 ], [ %256, %252 ]
  %281 = phi i64 [ %297, %277 ], [ %274, %252 ]
  %282 = phi i64 [ %283, %277 ], [ %258, %252 ]
  %283 = phi i64 [ %294, %277 ], [ %271, %252 ]
  %284 = shl i64 %283, 5
  %285 = lshr i64 %283, 27
  %286 = or i64 %284, %285
  %287 = xor i64 %281, %280
  %288 = xor i64 %287, %282
  %289 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %278
  %290 = load i64, i64* %289, align 8, !tbaa !4
  %291 = add i64 %279, 3395469782
  %292 = add i64 %291, %288
  %293 = add i64 %292, %290
  %294 = add i64 %293, %286
  %295 = shl i64 %282, 30
  %296 = lshr i64 %282, 2
  %297 = or i64 %295, %296
  %298 = add nuw nsw i64 %278, 1
  %299 = icmp eq i64 %298, 80
  br i1 %299, label %300, label %277, !llvm.loop !18

300:                                              ; preds = %277
  %301 = add i64 %294, %115
  %302 = add i64 %283, %116
  %303 = add i64 %297, %117
  %304 = add i64 %281, %118
  %305 = add i64 %280, %119
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %96) #10
  store i64 %301, i64* %6, align 8, !tbaa !4
  store i64 %302, i64* %7, align 8, !tbaa !4
  store i64 %303, i64* %8, align 8, !tbaa !4
  store i64 %304, i64* %9, align 8, !tbaa !4
  store i64 %305, i64* %10, align 8, !tbaa !4
  br label %306

306:                                              ; preds = %300, %97
  %307 = tail call i32 @putchar(i32 10) #10
  %308 = add nsw i32 %103, %100
  %309 = icmp slt i32 %308, %5
  %310 = load i64, i64* %11, align 8, !tbaa !8
  %311 = load i64, i64* %15, align 8, !tbaa !10
  br i1 %309, label %97, label %312, !llvm.loop !19

312:                                              ; preds = %306, %2
  %313 = phi i64 [ 0, %2 ], [ %311, %306 ]
  %314 = phi i64 [ 0, %2 ], [ %310, %306 ]
  %315 = trunc i64 %314 to i32
  %316 = lshr i32 %315, 3
  %317 = and i32 %316, 63
  %318 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3
  %319 = getelementptr inbounds [16 x i64], [16 x i64]* %318, i64 0, i64 0
  %320 = bitcast [16 x i64]* %318 to i8*
  %321 = add nuw nsw i32 %317, 1
  %322 = zext i32 %317 to i64
  %323 = getelementptr inbounds i8, i8* %320, i64 %322
  store i8 -128, i8* %323, align 1, !tbaa !13
  %324 = icmp ugt i32 %317, 55
  %325 = zext i32 %321 to i64
  %326 = getelementptr inbounds i8, i8* %320, i64 %325
  br i1 %324, label %327, label %330

327:                                              ; preds = %312
  %328 = xor i32 %317, 63
  %329 = zext i32 %328 to i64
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %326, i8 0, i64 %329, i1 false) #10
  tail call fastcc void @byte_reverse(i64* noundef nonnull %319) #10
  tail call fastcc void @sha_transform(%struct.SHA_INFO* noundef nonnull %0) #10
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %320, i8 0, i64 56, i1 false) #10
  br label %333

330:                                              ; preds = %312
  %331 = sub nuw nsw i32 55, %317
  %332 = zext i32 %331 to i64
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %326, i8 0, i64 %332, i1 false) #10
  br label %333

333:                                              ; preds = %327, %330
  tail call fastcc void @byte_reverse(i64* noundef nonnull %319) #10
  %334 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 14
  store i64 %313, i64* %334, align 8, !tbaa !4
  %335 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 15
  store i64 %314, i64* %335, align 8, !tbaa !4
  tail call fastcc void @sha_transform(%struct.SHA_INFO* noundef nonnull %0) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
define dso_local void @sha_print(%struct.SHA_INFO* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 0
  %3 = load i64, i64* %2, align 8, !tbaa !4
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 1
  %5 = load i64, i64* %4, align 8, !tbaa !4
  %6 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 2
  %7 = load i64, i64* %6, align 8, !tbaa !4
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 3
  %9 = load i64, i64* %8, align 8, !tbaa !4
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 4
  %11 = load i64, i64* %10, align 8, !tbaa !4
  %12 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree nosync nounwind willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nofree nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #3 = { nofree norecurse nosync nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #4 = { nofree nosync nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 1, !"SmallDataLimit", i32 8}
!3 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 40}
!9 = !{!"", !6, i64 0, !5, i64 40, !5, i64 48, !6, i64 56}
!10 = !{!9, !5, i64 48}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
