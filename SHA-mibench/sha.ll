; ModuleID = 'sha.c'
source_filename = "sha.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-unknown"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@.str = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly
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
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree nosync nounwind
define dso_local void @sha_update(%struct.SHA_INFO* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef signext %2) local_unnamed_addr #1 {
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
  %18 = icmp sgt i32 %2, 63
  br i1 %18, label %19, label %100

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  %21 = bitcast i64* %20 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = getelementptr inbounds i8, i8* %21, i64 2
  %24 = getelementptr inbounds i8, i8* %21, i64 3
  %25 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 1
  %26 = bitcast i64* %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = getelementptr inbounds i8, i8* %26, i64 2
  %29 = getelementptr inbounds i8, i8* %26, i64 3
  %30 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 2
  %31 = bitcast i64* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = getelementptr inbounds i8, i8* %31, i64 2
  %34 = getelementptr inbounds i8, i8* %31, i64 3
  %35 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 3
  %36 = bitcast i64* %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = getelementptr inbounds i8, i8* %36, i64 2
  %39 = getelementptr inbounds i8, i8* %36, i64 3
  %40 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 4
  %41 = bitcast i64* %40 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = getelementptr inbounds i8, i8* %41, i64 2
  %44 = getelementptr inbounds i8, i8* %41, i64 3
  %45 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 5
  %46 = bitcast i64* %45 to i8*
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = getelementptr inbounds i8, i8* %46, i64 2
  %49 = getelementptr inbounds i8, i8* %46, i64 3
  %50 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 6
  %51 = bitcast i64* %50 to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = getelementptr inbounds i8, i8* %51, i64 2
  %54 = getelementptr inbounds i8, i8* %51, i64 3
  %55 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 7
  %56 = bitcast i64* %55 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = getelementptr inbounds i8, i8* %56, i64 2
  %59 = getelementptr inbounds i8, i8* %56, i64 3
  br label %60

60:                                               ; preds = %19, %60
  %61 = phi i32 [ %2, %19 ], [ %96, %60 ]
  %62 = phi i8* [ %1, %19 ], [ %95, %60 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %21, i8* noundef nonnull align 1 dereferenceable(64) %62, i64 64, i1 false)
  %63 = load i8, i8* %21, align 1, !tbaa !11
  %64 = load i8, i8* %22, align 1, !tbaa !11
  %65 = load i8, i8* %23, align 1, !tbaa !11
  %66 = load i8, i8* %24, align 1, !tbaa !11
  store i8 %66, i8* %21, align 1, !tbaa !11
  store i8 %65, i8* %22, align 1, !tbaa !11
  store i8 %64, i8* %23, align 1, !tbaa !11
  store i8 %63, i8* %24, align 1, !tbaa !11
  %67 = load i8, i8* %26, align 1, !tbaa !11
  %68 = load i8, i8* %27, align 1, !tbaa !11
  %69 = load i8, i8* %28, align 1, !tbaa !11
  %70 = load i8, i8* %29, align 1, !tbaa !11
  store i8 %70, i8* %26, align 1, !tbaa !11
  store i8 %69, i8* %27, align 1, !tbaa !11
  store i8 %68, i8* %28, align 1, !tbaa !11
  store i8 %67, i8* %29, align 1, !tbaa !11
  %71 = load i8, i8* %31, align 1, !tbaa !11
  %72 = load i8, i8* %32, align 1, !tbaa !11
  %73 = load i8, i8* %33, align 1, !tbaa !11
  %74 = load i8, i8* %34, align 1, !tbaa !11
  store i8 %74, i8* %31, align 1, !tbaa !11
  store i8 %73, i8* %32, align 1, !tbaa !11
  store i8 %72, i8* %33, align 1, !tbaa !11
  store i8 %71, i8* %34, align 1, !tbaa !11
  %75 = load i8, i8* %36, align 1, !tbaa !11
  %76 = load i8, i8* %37, align 1, !tbaa !11
  %77 = load i8, i8* %38, align 1, !tbaa !11
  %78 = load i8, i8* %39, align 1, !tbaa !11
  store i8 %78, i8* %36, align 1, !tbaa !11
  store i8 %77, i8* %37, align 1, !tbaa !11
  store i8 %76, i8* %38, align 1, !tbaa !11
  store i8 %75, i8* %39, align 1, !tbaa !11
  %79 = load i8, i8* %41, align 1, !tbaa !11
  %80 = load i8, i8* %42, align 1, !tbaa !11
  %81 = load i8, i8* %43, align 1, !tbaa !11
  %82 = load i8, i8* %44, align 1, !tbaa !11
  store i8 %82, i8* %41, align 1, !tbaa !11
  store i8 %81, i8* %42, align 1, !tbaa !11
  store i8 %80, i8* %43, align 1, !tbaa !11
  store i8 %79, i8* %44, align 1, !tbaa !11
  %83 = load i8, i8* %46, align 1, !tbaa !11
  %84 = load i8, i8* %47, align 1, !tbaa !11
  %85 = load i8, i8* %48, align 1, !tbaa !11
  %86 = load i8, i8* %49, align 1, !tbaa !11
  store i8 %86, i8* %46, align 1, !tbaa !11
  store i8 %85, i8* %47, align 1, !tbaa !11
  store i8 %84, i8* %48, align 1, !tbaa !11
  store i8 %83, i8* %49, align 1, !tbaa !11
  %87 = load i8, i8* %51, align 1, !tbaa !11
  %88 = load i8, i8* %52, align 1, !tbaa !11
  %89 = load i8, i8* %53, align 1, !tbaa !11
  %90 = load i8, i8* %54, align 1, !tbaa !11
  store i8 %90, i8* %51, align 1, !tbaa !11
  store i8 %89, i8* %52, align 1, !tbaa !11
  store i8 %88, i8* %53, align 1, !tbaa !11
  store i8 %87, i8* %54, align 1, !tbaa !11
  %91 = load i8, i8* %56, align 1, !tbaa !11
  %92 = load i8, i8* %57, align 1, !tbaa !11
  %93 = load i8, i8* %58, align 1, !tbaa !11
  %94 = load i8, i8* %59, align 1, !tbaa !11
  store i8 %94, i8* %56, align 1, !tbaa !11
  store i8 %93, i8* %57, align 1, !tbaa !11
  store i8 %92, i8* %58, align 1, !tbaa !11
  store i8 %91, i8* %59, align 1, !tbaa !11
  tail call fastcc void @sha_transform(%struct.SHA_INFO* noundef nonnull %0)
  %95 = getelementptr inbounds i8, i8* %62, i64 64
  %96 = add nsw i32 %61, -64
  %97 = icmp ugt i32 %61, 127
  br i1 %97, label %60, label %98, !llvm.loop !12

98:                                               ; preds = %60
  %99 = zext i32 %96 to i64
  br label %100

100:                                              ; preds = %3, %98
  %101 = phi i64 [ %99, %98 ], [ %6, %3 ]
  %102 = phi i8* [ %95, %98 ], [ %1, %3 ]
  %103 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 0
  %104 = bitcast i64* %103 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %104, i8* align 1 %102, i64 %101, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind
define internal fastcc void @sha_transform(%struct.SHA_INFO* nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca [80 x i64], align 8
  %3 = bitcast [80 x i64]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %3) #7
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
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %3) #7
  ret void
}

; Function Attrs: nofree nosync nounwind
define dso_local void @sha_final(%struct.SHA_INFO* nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !8
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 2
  %5 = load i64, i64* %4, align 8, !tbaa !10
  %6 = trunc i64 %3 to i32
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 63
  %9 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3
  %10 = bitcast [16 x i64]* %9 to i8*
  %11 = add nuw nsw i32 %8, 1
  %12 = zext i32 %8 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8 -128, i8* %13, align 1, !tbaa !11
  %14 = icmp ugt i32 %8, 55
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds i8, i8* %10, i64 %15
  br i1 %14, label %17, label %90

17:                                               ; preds = %1
  %18 = xor i32 %8, 63
  %19 = zext i32 %18 to i64
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %16, i8 0, i64 %19, i1 false)
  %20 = load i8, i8* %10, align 1, !tbaa !11
  %21 = getelementptr inbounds i8, i8* %10, i64 1
  %22 = load i8, i8* %21, align 1, !tbaa !11
  %23 = getelementptr inbounds i8, i8* %10, i64 2
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %25 = getelementptr inbounds i8, i8* %10, i64 3
  %26 = load i8, i8* %25, align 1, !tbaa !11
  store i8 %26, i8* %10, align 1, !tbaa !11
  store i8 %24, i8* %21, align 1, !tbaa !11
  store i8 %22, i8* %23, align 1, !tbaa !11
  store i8 %20, i8* %25, align 1, !tbaa !11
  %27 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 1
  %28 = bitcast i64* %27 to i8*
  %29 = load i8, i8* %28, align 1, !tbaa !11
  %30 = getelementptr inbounds i8, i8* %28, i64 1
  %31 = load i8, i8* %30, align 1, !tbaa !11
  %32 = getelementptr inbounds i8, i8* %28, i64 2
  %33 = load i8, i8* %32, align 1, !tbaa !11
  %34 = getelementptr inbounds i8, i8* %28, i64 3
  %35 = load i8, i8* %34, align 1, !tbaa !11
  store i8 %35, i8* %28, align 1, !tbaa !11
  store i8 %33, i8* %30, align 1, !tbaa !11
  store i8 %31, i8* %32, align 1, !tbaa !11
  store i8 %29, i8* %34, align 1, !tbaa !11
  %36 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 2
  %37 = bitcast i64* %36 to i8*
  %38 = load i8, i8* %37, align 1, !tbaa !11
  %39 = getelementptr inbounds i8, i8* %37, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !11
  %41 = getelementptr inbounds i8, i8* %37, i64 2
  %42 = load i8, i8* %41, align 1, !tbaa !11
  %43 = getelementptr inbounds i8, i8* %37, i64 3
  %44 = load i8, i8* %43, align 1, !tbaa !11
  store i8 %44, i8* %37, align 1, !tbaa !11
  store i8 %42, i8* %39, align 1, !tbaa !11
  store i8 %40, i8* %41, align 1, !tbaa !11
  store i8 %38, i8* %43, align 1, !tbaa !11
  %45 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 3
  %46 = bitcast i64* %45 to i8*
  %47 = load i8, i8* %46, align 1, !tbaa !11
  %48 = getelementptr inbounds i8, i8* %46, i64 1
  %49 = load i8, i8* %48, align 1, !tbaa !11
  %50 = getelementptr inbounds i8, i8* %46, i64 2
  %51 = load i8, i8* %50, align 1, !tbaa !11
  %52 = getelementptr inbounds i8, i8* %46, i64 3
  %53 = load i8, i8* %52, align 1, !tbaa !11
  store i8 %53, i8* %46, align 1, !tbaa !11
  store i8 %51, i8* %48, align 1, !tbaa !11
  store i8 %49, i8* %50, align 1, !tbaa !11
  store i8 %47, i8* %52, align 1, !tbaa !11
  %54 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 4
  %55 = bitcast i64* %54 to i8*
  %56 = load i8, i8* %55, align 1, !tbaa !11
  %57 = getelementptr inbounds i8, i8* %55, i64 1
  %58 = load i8, i8* %57, align 1, !tbaa !11
  %59 = getelementptr inbounds i8, i8* %55, i64 2
  %60 = load i8, i8* %59, align 1, !tbaa !11
  %61 = getelementptr inbounds i8, i8* %55, i64 3
  %62 = load i8, i8* %61, align 1, !tbaa !11
  store i8 %62, i8* %55, align 1, !tbaa !11
  store i8 %60, i8* %57, align 1, !tbaa !11
  store i8 %58, i8* %59, align 1, !tbaa !11
  store i8 %56, i8* %61, align 1, !tbaa !11
  %63 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 5
  %64 = bitcast i64* %63 to i8*
  %65 = load i8, i8* %64, align 1, !tbaa !11
  %66 = getelementptr inbounds i8, i8* %64, i64 1
  %67 = load i8, i8* %66, align 1, !tbaa !11
  %68 = getelementptr inbounds i8, i8* %64, i64 2
  %69 = load i8, i8* %68, align 1, !tbaa !11
  %70 = getelementptr inbounds i8, i8* %64, i64 3
  %71 = load i8, i8* %70, align 1, !tbaa !11
  store i8 %71, i8* %64, align 1, !tbaa !11
  store i8 %69, i8* %66, align 1, !tbaa !11
  store i8 %67, i8* %68, align 1, !tbaa !11
  store i8 %65, i8* %70, align 1, !tbaa !11
  %72 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 6
  %73 = bitcast i64* %72 to i8*
  %74 = load i8, i8* %73, align 1, !tbaa !11
  %75 = getelementptr inbounds i8, i8* %73, i64 1
  %76 = load i8, i8* %75, align 1, !tbaa !11
  %77 = getelementptr inbounds i8, i8* %73, i64 2
  %78 = load i8, i8* %77, align 1, !tbaa !11
  %79 = getelementptr inbounds i8, i8* %73, i64 3
  %80 = load i8, i8* %79, align 1, !tbaa !11
  store i8 %80, i8* %73, align 1, !tbaa !11
  store i8 %78, i8* %75, align 1, !tbaa !11
  store i8 %76, i8* %77, align 1, !tbaa !11
  store i8 %74, i8* %79, align 1, !tbaa !11
  %81 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 7
  %82 = bitcast i64* %81 to i8*
  %83 = load i8, i8* %82, align 1, !tbaa !11
  %84 = getelementptr inbounds i8, i8* %82, i64 1
  %85 = load i8, i8* %84, align 1, !tbaa !11
  %86 = getelementptr inbounds i8, i8* %82, i64 2
  %87 = load i8, i8* %86, align 1, !tbaa !11
  %88 = getelementptr inbounds i8, i8* %82, i64 3
  %89 = load i8, i8* %88, align 1, !tbaa !11
  store i8 %89, i8* %82, align 1, !tbaa !11
  store i8 %87, i8* %84, align 1, !tbaa !11
  store i8 %85, i8* %86, align 1, !tbaa !11
  store i8 %83, i8* %88, align 1, !tbaa !11
  tail call fastcc void @sha_transform(%struct.SHA_INFO* noundef nonnull %0)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  br label %154

90:                                               ; preds = %1
  %91 = sub nuw nsw i32 55, %8
  %92 = zext i32 %91 to i64
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %16, i8 0, i64 %92, i1 false)
  %93 = load i8, i8* %10, align 1, !tbaa !11
  %94 = getelementptr inbounds i8, i8* %10, i64 1
  %95 = load i8, i8* %94, align 1, !tbaa !11
  %96 = getelementptr inbounds i8, i8* %10, i64 2
  %97 = load i8, i8* %96, align 1, !tbaa !11
  %98 = getelementptr inbounds i8, i8* %10, i64 3
  %99 = load i8, i8* %98, align 1, !tbaa !11
  %100 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 1
  %101 = bitcast i64* %100 to i8*
  %102 = load i8, i8* %101, align 1, !tbaa !11
  %103 = getelementptr inbounds i8, i8* %101, i64 1
  %104 = load i8, i8* %103, align 1, !tbaa !11
  %105 = getelementptr inbounds i8, i8* %101, i64 2
  %106 = load i8, i8* %105, align 1, !tbaa !11
  %107 = getelementptr inbounds i8, i8* %101, i64 3
  %108 = load i8, i8* %107, align 1, !tbaa !11
  %109 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 2
  %110 = bitcast i64* %109 to i8*
  %111 = load i8, i8* %110, align 1, !tbaa !11
  %112 = getelementptr inbounds i8, i8* %110, i64 1
  %113 = load i8, i8* %112, align 1, !tbaa !11
  %114 = getelementptr inbounds i8, i8* %110, i64 2
  %115 = load i8, i8* %114, align 1, !tbaa !11
  %116 = getelementptr inbounds i8, i8* %110, i64 3
  %117 = load i8, i8* %116, align 1, !tbaa !11
  %118 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 3
  %119 = bitcast i64* %118 to i8*
  %120 = load i8, i8* %119, align 1, !tbaa !11
  %121 = getelementptr inbounds i8, i8* %119, i64 1
  %122 = load i8, i8* %121, align 1, !tbaa !11
  %123 = getelementptr inbounds i8, i8* %119, i64 2
  %124 = load i8, i8* %123, align 1, !tbaa !11
  %125 = getelementptr inbounds i8, i8* %119, i64 3
  %126 = load i8, i8* %125, align 1, !tbaa !11
  %127 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 4
  %128 = bitcast i64* %127 to i8*
  %129 = load i8, i8* %128, align 1, !tbaa !11
  %130 = getelementptr inbounds i8, i8* %128, i64 1
  %131 = load i8, i8* %130, align 1, !tbaa !11
  %132 = getelementptr inbounds i8, i8* %128, i64 2
  %133 = load i8, i8* %132, align 1, !tbaa !11
  %134 = getelementptr inbounds i8, i8* %128, i64 3
  %135 = load i8, i8* %134, align 1, !tbaa !11
  %136 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 5
  %137 = bitcast i64* %136 to i8*
  %138 = load i8, i8* %137, align 1, !tbaa !11
  %139 = getelementptr inbounds i8, i8* %137, i64 1
  %140 = load i8, i8* %139, align 1, !tbaa !11
  %141 = getelementptr inbounds i8, i8* %137, i64 2
  %142 = load i8, i8* %141, align 1, !tbaa !11
  %143 = getelementptr inbounds i8, i8* %137, i64 3
  %144 = load i8, i8* %143, align 1, !tbaa !11
  %145 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 6
  %146 = bitcast i64* %145 to i8*
  %147 = load i8, i8* %146, align 1, !tbaa !11
  %148 = getelementptr inbounds i8, i8* %146, i64 1
  %149 = load i8, i8* %148, align 1, !tbaa !11
  %150 = getelementptr inbounds i8, i8* %146, i64 2
  %151 = load i8, i8* %150, align 1, !tbaa !11
  %152 = getelementptr inbounds i8, i8* %146, i64 3
  %153 = load i8, i8* %152, align 1, !tbaa !11
  br label %154

154:                                              ; preds = %90, %17
  %155 = phi i8* [ %146, %90 ], [ %73, %17 ]
  %156 = phi i8* [ %137, %90 ], [ %64, %17 ]
  %157 = phi i8* [ %128, %90 ], [ %55, %17 ]
  %158 = phi i8* [ %119, %90 ], [ %46, %17 ]
  %159 = phi i8* [ %110, %90 ], [ %37, %17 ]
  %160 = phi i8* [ %101, %90 ], [ %28, %17 ]
  %161 = phi i8 [ %153, %90 ], [ 0, %17 ]
  %162 = phi i8 [ %151, %90 ], [ 0, %17 ]
  %163 = phi i8 [ %149, %90 ], [ 0, %17 ]
  %164 = phi i8 [ %147, %90 ], [ 0, %17 ]
  %165 = phi i8 [ %144, %90 ], [ 0, %17 ]
  %166 = phi i8 [ %142, %90 ], [ 0, %17 ]
  %167 = phi i8 [ %140, %90 ], [ 0, %17 ]
  %168 = phi i8 [ %138, %90 ], [ 0, %17 ]
  %169 = phi i8 [ %135, %90 ], [ 0, %17 ]
  %170 = phi i8 [ %133, %90 ], [ 0, %17 ]
  %171 = phi i8 [ %131, %90 ], [ 0, %17 ]
  %172 = phi i8 [ %129, %90 ], [ 0, %17 ]
  %173 = phi i8 [ %126, %90 ], [ 0, %17 ]
  %174 = phi i8 [ %124, %90 ], [ 0, %17 ]
  %175 = phi i8 [ %122, %90 ], [ 0, %17 ]
  %176 = phi i8 [ %120, %90 ], [ 0, %17 ]
  %177 = phi i8 [ %117, %90 ], [ 0, %17 ]
  %178 = phi i8 [ %115, %90 ], [ 0, %17 ]
  %179 = phi i8 [ %113, %90 ], [ 0, %17 ]
  %180 = phi i8 [ %111, %90 ], [ 0, %17 ]
  %181 = phi i8 [ %108, %90 ], [ 0, %17 ]
  %182 = phi i8 [ %106, %90 ], [ 0, %17 ]
  %183 = phi i8 [ %104, %90 ], [ 0, %17 ]
  %184 = phi i8 [ %102, %90 ], [ 0, %17 ]
  %185 = phi i8 [ %99, %90 ], [ 0, %17 ]
  %186 = phi i8 [ %97, %90 ], [ 0, %17 ]
  %187 = phi i8 [ %95, %90 ], [ 0, %17 ]
  %188 = phi i8 [ %93, %90 ], [ 0, %17 ]
  %189 = getelementptr inbounds i8, i8* %10, i64 1
  %190 = getelementptr inbounds i8, i8* %10, i64 2
  %191 = getelementptr inbounds i8, i8* %10, i64 3
  store i8 %185, i8* %10, align 1, !tbaa !11
  store i8 %186, i8* %189, align 1, !tbaa !11
  store i8 %187, i8* %190, align 1, !tbaa !11
  store i8 %188, i8* %191, align 1, !tbaa !11
  %192 = getelementptr inbounds i8, i8* %160, i64 1
  %193 = getelementptr inbounds i8, i8* %160, i64 2
  %194 = getelementptr inbounds i8, i8* %160, i64 3
  store i8 %181, i8* %160, align 1, !tbaa !11
  store i8 %182, i8* %192, align 1, !tbaa !11
  store i8 %183, i8* %193, align 1, !tbaa !11
  store i8 %184, i8* %194, align 1, !tbaa !11
  %195 = getelementptr inbounds i8, i8* %159, i64 1
  %196 = getelementptr inbounds i8, i8* %159, i64 2
  %197 = getelementptr inbounds i8, i8* %159, i64 3
  store i8 %177, i8* %159, align 1, !tbaa !11
  store i8 %178, i8* %195, align 1, !tbaa !11
  store i8 %179, i8* %196, align 1, !tbaa !11
  store i8 %180, i8* %197, align 1, !tbaa !11
  %198 = getelementptr inbounds i8, i8* %158, i64 1
  %199 = getelementptr inbounds i8, i8* %158, i64 2
  %200 = getelementptr inbounds i8, i8* %158, i64 3
  store i8 %173, i8* %158, align 1, !tbaa !11
  store i8 %174, i8* %198, align 1, !tbaa !11
  store i8 %175, i8* %199, align 1, !tbaa !11
  store i8 %176, i8* %200, align 1, !tbaa !11
  %201 = getelementptr inbounds i8, i8* %157, i64 1
  %202 = getelementptr inbounds i8, i8* %157, i64 2
  %203 = getelementptr inbounds i8, i8* %157, i64 3
  store i8 %169, i8* %157, align 1, !tbaa !11
  store i8 %170, i8* %201, align 1, !tbaa !11
  store i8 %171, i8* %202, align 1, !tbaa !11
  store i8 %172, i8* %203, align 1, !tbaa !11
  %204 = getelementptr inbounds i8, i8* %156, i64 1
  %205 = getelementptr inbounds i8, i8* %156, i64 2
  %206 = getelementptr inbounds i8, i8* %156, i64 3
  store i8 %165, i8* %156, align 1, !tbaa !11
  store i8 %166, i8* %204, align 1, !tbaa !11
  store i8 %167, i8* %205, align 1, !tbaa !11
  store i8 %168, i8* %206, align 1, !tbaa !11
  %207 = getelementptr inbounds i8, i8* %155, i64 1
  %208 = getelementptr inbounds i8, i8* %155, i64 2
  %209 = getelementptr inbounds i8, i8* %155, i64 3
  store i8 %161, i8* %155, align 1, !tbaa !11
  store i8 %162, i8* %207, align 1, !tbaa !11
  store i8 %163, i8* %208, align 1, !tbaa !11
  store i8 %164, i8* %209, align 1, !tbaa !11
  %210 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 7
  %211 = bitcast i64* %210 to i8*
  %212 = load i8, i8* %211, align 1, !tbaa !11
  %213 = getelementptr inbounds i8, i8* %211, i64 1
  %214 = load i8, i8* %213, align 1, !tbaa !11
  %215 = getelementptr inbounds i8, i8* %211, i64 2
  %216 = load i8, i8* %215, align 1, !tbaa !11
  %217 = getelementptr inbounds i8, i8* %211, i64 3
  %218 = load i8, i8* %217, align 1, !tbaa !11
  store i8 %218, i8* %211, align 1, !tbaa !11
  store i8 %216, i8* %213, align 1, !tbaa !11
  store i8 %214, i8* %215, align 1, !tbaa !11
  store i8 %212, i8* %217, align 1, !tbaa !11
  %219 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 14
  store i64 %5, i64* %219, align 8, !tbaa !4
  %220 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 3, i64 15
  store i64 %3, i64* %220, align 8, !tbaa !4
  tail call fastcc void @sha_transform(%struct.SHA_INFO* noundef nonnull %0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nounwind
define dso_local void @sha_stream(%struct.SHA_INFO* nocapture noundef %0, %struct._IO_FILE* nocapture noundef %1) local_unnamed_addr #5 {
  %3 = alloca [8192 x i8], align 1
  %4 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %4) #7
  %5 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 0
  store i64 1732584193, i64* %5, align 8, !tbaa !4
  %6 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 1
  store i64 4023233417, i64* %6, align 8, !tbaa !4
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 2
  store i64 2562383102, i64* %7, align 8, !tbaa !4
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 3
  store i64 271733878, i64* %8, align 8, !tbaa !4
  %9 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %9, align 8, !tbaa !4
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i64 0, i32 1
  %11 = bitcast i64* %10 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false) #7
  %12 = call i64 @fread(i8* noundef nonnull %4, i64 noundef 1, i64 noundef 8192, %struct._IO_FILE* noundef %1)
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2, %15
  %16 = phi i32 [ %18, %15 ], [ %13, %2 ]
  call void @sha_update(%struct.SHA_INFO* noundef %0, i8* noundef nonnull %4, i32 noundef signext %16)
  %17 = call i64 @fread(i8* noundef nonnull %4, i64 noundef 1, i64 noundef 8192, %struct._IO_FILE* noundef %1)
  %18 = trunc i64 %17 to i32
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %15, label %20, !llvm.loop !19

20:                                               ; preds = %15, %2
  tail call void @sha_final(%struct.SHA_INFO* noundef %0)
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %4) #7
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
define dso_local void @sha_print(%struct.SHA_INFO* nocapture noundef readonly %0) local_unnamed_addr #5 {
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
  %12 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
define dso_local signext i32 @main(i32 noundef signext %0, i8** nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca [80 x i64], align 8
  %4 = alloca [8192 x i8], align 1
  %5 = alloca [8192 x i8], align 1
  %6 = alloca %struct.SHA_INFO, align 8
  %7 = bitcast %struct.SHA_INFO* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 184, i8* nonnull %7) #7
  %8 = icmp slt i32 %0, 2
  br i1 %8, label %61, label %9

9:                                                ; preds = %2
  %10 = add nsw i32 %0, -1
  %11 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %12 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 0
  %13 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 1
  %14 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 2
  %15 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 3
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 4
  %17 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 1
  %18 = bitcast i64* %17 to i8*
  %19 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 2
  %20 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 3, i64 0
  %21 = bitcast i64* %20 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = getelementptr inbounds i8, i8* %21, i64 2
  %24 = getelementptr inbounds i8, i8* %21, i64 3
  %25 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 3, i64 1
  %26 = bitcast i64* %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = getelementptr inbounds i8, i8* %26, i64 2
  %29 = getelementptr inbounds i8, i8* %26, i64 3
  %30 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 3, i64 2
  %31 = bitcast i64* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = getelementptr inbounds i8, i8* %31, i64 2
  %34 = getelementptr inbounds i8, i8* %31, i64 3
  %35 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 3, i64 3
  %36 = bitcast i64* %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = getelementptr inbounds i8, i8* %36, i64 2
  %39 = getelementptr inbounds i8, i8* %36, i64 3
  %40 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 3, i64 4
  %41 = bitcast i64* %40 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = getelementptr inbounds i8, i8* %41, i64 2
  %44 = getelementptr inbounds i8, i8* %41, i64 3
  %45 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 3, i64 5
  %46 = bitcast i64* %45 to i8*
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = getelementptr inbounds i8, i8* %46, i64 2
  %49 = getelementptr inbounds i8, i8* %46, i64 3
  %50 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 3, i64 6
  %51 = bitcast i64* %50 to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = getelementptr inbounds i8, i8* %51, i64 2
  %54 = getelementptr inbounds i8, i8* %51, i64 3
  %55 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 3, i64 7
  %56 = bitcast i64* %55 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = getelementptr inbounds i8, i8* %56, i64 2
  %59 = getelementptr inbounds i8, i8* %56, i64 3
  %60 = bitcast [80 x i64]* %3 to i8*
  br label %86

61:                                               ; preds = %2
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !20
  %63 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %63) #7
  %64 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 0
  store i64 1732584193, i64* %64, align 8, !tbaa !4
  %65 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 1
  store i64 4023233417, i64* %65, align 8, !tbaa !4
  %66 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 2
  store i64 2562383102, i64* %66, align 8, !tbaa !4
  %67 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 3
  store i64 271733878, i64* %67, align 8, !tbaa !4
  %68 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %68, align 8, !tbaa !4
  %69 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i64 0, i32 1
  %70 = bitcast i64* %69 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8 0, i64 16, i1 false) #7
  %71 = call i64 @fread(i8* noundef nonnull %63, i64 noundef 1, i64 noundef 8192, %struct._IO_FILE* noundef %62) #7
  %72 = trunc i64 %71 to i32
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %61, %74
  %75 = phi i32 [ %77, %74 ], [ %72, %61 ]
  call void @sha_update(%struct.SHA_INFO* noundef nonnull %6, i8* noundef nonnull %63, i32 noundef signext %75) #7
  %76 = call i64 @fread(i8* noundef nonnull %63, i64 noundef 1, i64 noundef 8192, %struct._IO_FILE* noundef %62) #7
  %77 = trunc i64 %76 to i32
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %74, label %79, !llvm.loop !19

79:                                               ; preds = %74, %61
  call void @sha_final(%struct.SHA_INFO* noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %63) #7
  %80 = load i64, i64* %64, align 8, !tbaa !4
  %81 = load i64, i64* %65, align 8, !tbaa !4
  %82 = load i64, i64* %66, align 8, !tbaa !4
  %83 = load i64, i64* %67, align 8, !tbaa !4
  %84 = load i64, i64* %68, align 8, !tbaa !4
  %85 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 noundef %80, i64 noundef %81, i64 noundef %82, i64 noundef %83, i64 noundef %84) #7
  br label %304

86:                                               ; preds = %9, %301
  %87 = phi i32 [ %10, %9 ], [ %302, %301 ]
  %88 = phi i8** [ %1, %9 ], [ %89, %301 ]
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  %90 = load i8*, i8** %89, align 8, !tbaa !20
  %91 = tail call noalias %struct._IO_FILE* @fopen(i8* noundef %90, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp eq %struct._IO_FILE* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i8*, i8** %89, align 8, !tbaa !20
  %95 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* noundef %94)
  br label %301

96:                                               ; preds = %86
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %11) #7
  store i64 1732584193, i64* %12, align 8, !tbaa !4
  store i64 4023233417, i64* %13, align 8, !tbaa !4
  store i64 2562383102, i64* %14, align 8, !tbaa !4
  store i64 271733878, i64* %15, align 8, !tbaa !4
  store i64 3285377520, i64* %16, align 8, !tbaa !4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false) #7
  %97 = call i64 @fread(i8* noundef nonnull %11, i64 noundef 1, i64 noundef 8192, %struct._IO_FILE* noundef nonnull %91) #7
  %98 = trunc i64 %97 to i32
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %293

100:                                              ; preds = %96, %287
  %101 = phi i32 [ %291, %287 ], [ %98, %96 ]
  %102 = load i64, i64* %17, align 8, !tbaa !8
  %103 = zext i32 %101 to i64
  %104 = shl nuw nsw i64 %103, 3
  %105 = xor i64 %102, -1
  %106 = icmp ugt i64 %104, %105
  %107 = load i64, i64* %19, align 8, !tbaa !10
  %108 = zext i1 %106 to i64
  %109 = add i64 %104, %102
  store i64 %109, i64* %17, align 8, !tbaa !8
  %110 = lshr i64 %103, 29
  %111 = add i64 %110, %107
  %112 = add i64 %111, %108
  store i64 %112, i64* %19, align 8, !tbaa !10
  %113 = icmp ugt i32 %101, 63
  br i1 %113, label %114, label %287

114:                                              ; preds = %100
  %115 = load i64, i64* %12, align 8, !tbaa !4
  %116 = load i64, i64* %13, align 8, !tbaa !4
  %117 = load i64, i64* %14, align 8, !tbaa !4
  %118 = load i64, i64* %15, align 8, !tbaa !4
  %119 = load i64, i64* %16, align 8, !tbaa !4
  br label %120

120:                                              ; preds = %276, %114
  %121 = phi i64 [ %119, %114 ], [ %281, %276 ]
  %122 = phi i64 [ %118, %114 ], [ %280, %276 ]
  %123 = phi i64 [ %117, %114 ], [ %279, %276 ]
  %124 = phi i64 [ %116, %114 ], [ %278, %276 ]
  %125 = phi i64 [ %115, %114 ], [ %277, %276 ]
  %126 = phi i32 [ %101, %114 ], [ %283, %276 ]
  %127 = phi i8* [ %11, %114 ], [ %282, %276 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %21, i8* noundef nonnull align 1 dereferenceable(64) %127, i64 64, i1 false) #7
  %128 = load i8, i8* %21, align 8, !tbaa !11
  %129 = load i8, i8* %22, align 1, !tbaa !11
  %130 = load i8, i8* %23, align 2, !tbaa !11
  %131 = load i8, i8* %24, align 1, !tbaa !11
  store i8 %131, i8* %21, align 8, !tbaa !11
  store i8 %130, i8* %22, align 1, !tbaa !11
  store i8 %129, i8* %23, align 2, !tbaa !11
  store i8 %128, i8* %24, align 1, !tbaa !11
  %132 = load i8, i8* %26, align 8, !tbaa !11
  %133 = load i8, i8* %27, align 1, !tbaa !11
  %134 = load i8, i8* %28, align 2, !tbaa !11
  %135 = load i8, i8* %29, align 1, !tbaa !11
  store i8 %135, i8* %26, align 8, !tbaa !11
  store i8 %134, i8* %27, align 1, !tbaa !11
  store i8 %133, i8* %28, align 2, !tbaa !11
  store i8 %132, i8* %29, align 1, !tbaa !11
  %136 = load i8, i8* %31, align 8, !tbaa !11
  %137 = load i8, i8* %32, align 1, !tbaa !11
  %138 = load i8, i8* %33, align 2, !tbaa !11
  %139 = load i8, i8* %34, align 1, !tbaa !11
  store i8 %139, i8* %31, align 8, !tbaa !11
  store i8 %138, i8* %32, align 1, !tbaa !11
  store i8 %137, i8* %33, align 2, !tbaa !11
  store i8 %136, i8* %34, align 1, !tbaa !11
  %140 = load i8, i8* %36, align 8, !tbaa !11
  %141 = load i8, i8* %37, align 1, !tbaa !11
  %142 = load i8, i8* %38, align 2, !tbaa !11
  %143 = load i8, i8* %39, align 1, !tbaa !11
  store i8 %143, i8* %36, align 8, !tbaa !11
  store i8 %142, i8* %37, align 1, !tbaa !11
  store i8 %141, i8* %38, align 2, !tbaa !11
  store i8 %140, i8* %39, align 1, !tbaa !11
  %144 = load i8, i8* %41, align 8, !tbaa !11
  %145 = load i8, i8* %42, align 1, !tbaa !11
  %146 = load i8, i8* %43, align 2, !tbaa !11
  %147 = load i8, i8* %44, align 1, !tbaa !11
  store i8 %147, i8* %41, align 8, !tbaa !11
  store i8 %146, i8* %42, align 1, !tbaa !11
  store i8 %145, i8* %43, align 2, !tbaa !11
  store i8 %144, i8* %44, align 1, !tbaa !11
  %148 = load i8, i8* %46, align 8, !tbaa !11
  %149 = load i8, i8* %47, align 1, !tbaa !11
  %150 = load i8, i8* %48, align 2, !tbaa !11
  %151 = load i8, i8* %49, align 1, !tbaa !11
  store i8 %151, i8* %46, align 8, !tbaa !11
  store i8 %150, i8* %47, align 1, !tbaa !11
  store i8 %149, i8* %48, align 2, !tbaa !11
  store i8 %148, i8* %49, align 1, !tbaa !11
  %152 = load i8, i8* %51, align 8, !tbaa !11
  %153 = load i8, i8* %52, align 1, !tbaa !11
  %154 = load i8, i8* %53, align 2, !tbaa !11
  %155 = load i8, i8* %54, align 1, !tbaa !11
  store i8 %155, i8* %51, align 8, !tbaa !11
  store i8 %154, i8* %52, align 1, !tbaa !11
  store i8 %153, i8* %53, align 2, !tbaa !11
  store i8 %152, i8* %54, align 1, !tbaa !11
  %156 = load i8, i8* %56, align 8, !tbaa !11
  %157 = load i8, i8* %57, align 1, !tbaa !11
  %158 = load i8, i8* %58, align 2, !tbaa !11
  %159 = load i8, i8* %59, align 1, !tbaa !11
  store i8 %159, i8* %56, align 8, !tbaa !11
  store i8 %158, i8* %57, align 1, !tbaa !11
  store i8 %157, i8* %58, align 2, !tbaa !11
  store i8 %156, i8* %59, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %60) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %60, i8* noundef nonnull align 8 dereferenceable(128) %21, i64 128, i1 false) #7, !tbaa !4
  br label %160

160:                                              ; preds = %160, %120
  %161 = phi i64 [ 16, %120 ], [ %178, %160 ]
  %162 = add nsw i64 %161, -3
  %163 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %162
  %164 = load i64, i64* %163, align 8, !tbaa !4
  %165 = add nsw i64 %161, -8
  %166 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %165
  %167 = load i64, i64* %166, align 8, !tbaa !4
  %168 = xor i64 %167, %164
  %169 = add nsw i64 %161, -14
  %170 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %169
  %171 = load i64, i64* %170, align 8, !tbaa !4
  %172 = xor i64 %168, %171
  %173 = add nsw i64 %161, -16
  %174 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %173
  %175 = load i64, i64* %174, align 8, !tbaa !4
  %176 = xor i64 %172, %175
  %177 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %161
  store i64 %176, i64* %177, align 8, !tbaa !4
  %178 = add nuw nsw i64 %161, 1
  %179 = icmp eq i64 %178, 80
  br i1 %179, label %180, label %160, !llvm.loop !14

180:                                              ; preds = %160, %180
  %181 = phi i64 [ %203, %180 ], [ 0, %160 ]
  %182 = phi i64 [ %183, %180 ], [ %121, %160 ]
  %183 = phi i64 [ %184, %180 ], [ %122, %160 ]
  %184 = phi i64 [ %202, %180 ], [ %123, %160 ]
  %185 = phi i64 [ %186, %180 ], [ %124, %160 ]
  %186 = phi i64 [ %199, %180 ], [ %125, %160 ]
  %187 = shl i64 %186, 5
  %188 = lshr i64 %186, 27
  %189 = or i64 %187, %188
  %190 = and i64 %185, %184
  %191 = xor i64 %185, -1
  %192 = and i64 %183, %191
  %193 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %181
  %194 = load i64, i64* %193, align 8, !tbaa !4
  %195 = add i64 %182, 1518500249
  %196 = add i64 %195, %190
  %197 = add i64 %196, %192
  %198 = add i64 %197, %194
  %199 = add i64 %198, %189
  %200 = shl i64 %185, 30
  %201 = lshr i64 %185, 2
  %202 = or i64 %200, %201
  %203 = add nuw nsw i64 %181, 1
  %204 = icmp eq i64 %203, 20
  br i1 %204, label %205, label %180, !llvm.loop !15

205:                                              ; preds = %180, %205
  %206 = phi i64 [ %226, %205 ], [ 20, %180 ]
  %207 = phi i64 [ %208, %205 ], [ %183, %180 ]
  %208 = phi i64 [ %209, %205 ], [ %184, %180 ]
  %209 = phi i64 [ %225, %205 ], [ %202, %180 ]
  %210 = phi i64 [ %211, %205 ], [ %186, %180 ]
  %211 = phi i64 [ %222, %205 ], [ %199, %180 ]
  %212 = shl i64 %211, 5
  %213 = lshr i64 %211, 27
  %214 = or i64 %212, %213
  %215 = xor i64 %209, %208
  %216 = xor i64 %215, %210
  %217 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %206
  %218 = load i64, i64* %217, align 8, !tbaa !4
  %219 = add i64 %207, 1859775393
  %220 = add i64 %219, %216
  %221 = add i64 %220, %218
  %222 = add i64 %221, %214
  %223 = shl i64 %210, 30
  %224 = lshr i64 %210, 2
  %225 = or i64 %223, %224
  %226 = add nuw nsw i64 %206, 1
  %227 = icmp eq i64 %226, 40
  br i1 %227, label %228, label %205, !llvm.loop !16

228:                                              ; preds = %205, %228
  %229 = phi i64 [ %251, %228 ], [ 40, %205 ]
  %230 = phi i64 [ %231, %228 ], [ %208, %205 ]
  %231 = phi i64 [ %232, %228 ], [ %209, %205 ]
  %232 = phi i64 [ %250, %228 ], [ %225, %205 ]
  %233 = phi i64 [ %234, %228 ], [ %211, %205 ]
  %234 = phi i64 [ %247, %228 ], [ %222, %205 ]
  %235 = shl i64 %234, 5
  %236 = lshr i64 %234, 27
  %237 = or i64 %235, %236
  %238 = or i64 %232, %231
  %239 = and i64 %238, %233
  %240 = and i64 %232, %231
  %241 = or i64 %239, %240
  %242 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %229
  %243 = load i64, i64* %242, align 8, !tbaa !4
  %244 = add i64 %230, 2400959708
  %245 = add i64 %244, %241
  %246 = add i64 %245, %243
  %247 = add i64 %246, %237
  %248 = shl i64 %233, 30
  %249 = lshr i64 %233, 2
  %250 = or i64 %248, %249
  %251 = add nuw nsw i64 %229, 1
  %252 = icmp eq i64 %251, 60
  br i1 %252, label %253, label %228, !llvm.loop !17

253:                                              ; preds = %228, %253
  %254 = phi i64 [ %274, %253 ], [ 60, %228 ]
  %255 = phi i64 [ %256, %253 ], [ %231, %228 ]
  %256 = phi i64 [ %257, %253 ], [ %232, %228 ]
  %257 = phi i64 [ %273, %253 ], [ %250, %228 ]
  %258 = phi i64 [ %259, %253 ], [ %234, %228 ]
  %259 = phi i64 [ %270, %253 ], [ %247, %228 ]
  %260 = shl i64 %259, 5
  %261 = lshr i64 %259, 27
  %262 = or i64 %260, %261
  %263 = xor i64 %257, %256
  %264 = xor i64 %263, %258
  %265 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %254
  %266 = load i64, i64* %265, align 8, !tbaa !4
  %267 = add i64 %255, 3395469782
  %268 = add i64 %267, %264
  %269 = add i64 %268, %266
  %270 = add i64 %269, %262
  %271 = shl i64 %258, 30
  %272 = lshr i64 %258, 2
  %273 = or i64 %271, %272
  %274 = add nuw nsw i64 %254, 1
  %275 = icmp eq i64 %274, 80
  br i1 %275, label %276, label %253, !llvm.loop !18

276:                                              ; preds = %253
  %277 = add i64 %270, %125
  %278 = add i64 %259, %124
  %279 = add i64 %273, %123
  %280 = add i64 %257, %122
  %281 = add i64 %256, %121
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %60) #7
  %282 = getelementptr inbounds i8, i8* %127, i64 64
  %283 = add nsw i32 %126, -64
  %284 = icmp ugt i32 %126, 127
  br i1 %284, label %120, label %285, !llvm.loop !12

285:                                              ; preds = %276
  store i64 %277, i64* %12, align 8, !tbaa !4
  store i64 %278, i64* %13, align 8, !tbaa !4
  store i64 %279, i64* %14, align 8, !tbaa !4
  store i64 %280, i64* %15, align 8, !tbaa !4
  store i64 %281, i64* %16, align 8, !tbaa !4
  %286 = zext i32 %283 to i64
  br label %287

287:                                              ; preds = %100, %285
  %288 = phi i64 [ %286, %285 ], [ %103, %100 ]
  %289 = phi i8* [ %282, %285 ], [ %11, %100 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %21, i8* align 1 %289, i64 %288, i1 false) #7
  %290 = call i64 @fread(i8* noundef nonnull %11, i64 noundef 1, i64 noundef 8192, %struct._IO_FILE* noundef nonnull %91) #7
  %291 = trunc i64 %290 to i32
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %100, label %293, !llvm.loop !19

293:                                              ; preds = %287, %96
  call void @sha_final(%struct.SHA_INFO* noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %11) #7
  %294 = load i64, i64* %12, align 8, !tbaa !4
  %295 = load i64, i64* %13, align 8, !tbaa !4
  %296 = load i64, i64* %14, align 8, !tbaa !4
  %297 = load i64, i64* %15, align 8, !tbaa !4
  %298 = load i64, i64* %16, align 8, !tbaa !4
  %299 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 noundef %294, i64 noundef %295, i64 noundef %296, i64 noundef %297, i64 noundef %298) #7
  %300 = tail call signext i32 @fclose(%struct._IO_FILE* noundef nonnull %91)
  br label %301

301:                                              ; preds = %293, %93
  %302 = add nsw i32 %87, -1
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %86, !llvm.loop !22

304:                                              ; preds = %301, %79
  call void @llvm.lifetime.end.p0i8(i64 184, i8* nonnull %7) #7
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+d,+f,+m" }
attributes #7 = { nounwind }

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
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = distinct !{!22, !13}
