; ModuleID = 'sha.c'
source_filename = "sha.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@.str.1 = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @sha_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i64 1732584193, ptr %0, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 4023233417, ptr %2, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 2562383102, ptr %3, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store i64 271733878, ptr %4, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 3285377520, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %6, i8 0, i64 144, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree nounwind
define dso_local void @sha_update(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i32 noundef signext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = sext i32 %2 to i64
  %7 = shl nsw i64 %6, 3
  %8 = xor i64 %5, -1
  %9 = icmp ugt i64 %7, %8
  %10 = getelementptr inbounds i8, ptr %0, i64 48
  %11 = load i64, ptr %10, align 8, !tbaa !12
  %12 = zext i1 %9 to i64
  %13 = add i64 %11, %12
  %14 = add i64 %5, %7
  store i64 %14, ptr %4, align 8, !tbaa !10
  %15 = lshr i64 %6, 29
  %16 = getelementptr inbounds i8, ptr %0, i64 48
  %17 = add i64 %13, %15
  store i64 %17, ptr %16, align 8, !tbaa !12
  %18 = icmp sgt i32 %2, 127
  br i1 %18, label %19, label %23

19:                                               ; preds = %3, %19
  %20 = phi i32 [ %21, %19 ], [ %2, %3 ]
  tail call fastcc void @sha_transform(ptr noundef %0)
  %21 = add nsw i32 %20, -128
  %22 = icmp ugt i32 %20, 255
  br i1 %22, label %19, label %23, !llvm.loop !13

23:                                               ; preds = %19, %3
  %24 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal fastcc void @sha_transform(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = alloca [80 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !tbaa !6
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 16, %1 ], [ %22, %4 ]
  %6 = add nsw i64 %5, -3
  %7 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !6
  %9 = add nsw i64 %5, -8
  %10 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !6
  %12 = xor i64 %11, %8
  %13 = add nsw i64 %5, -14
  %14 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !6
  %16 = xor i64 %12, %15
  %17 = add nsw i64 %5, -16
  %18 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !6
  %20 = xor i64 %16, %19
  %21 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %5
  store i64 %20, ptr %21, align 8, !tbaa !6
  %22 = add nuw nsw i64 %5, 1
  %23 = icmp eq i64 %22, 80
  br i1 %23, label %24, label %4, !llvm.loop !15

24:                                               ; preds = %4
  %25 = load i64, ptr %0, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %0, i64 16
  %29 = load i64, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %0, i64 24
  %31 = load i64, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %0, i64 32
  %33 = load i64, ptr %32, align 8, !tbaa !6
  br label %34

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %57, %34 ]
  %36 = phi i64 [ %33, %24 ], [ %37, %34 ]
  %37 = phi i64 [ %31, %24 ], [ %38, %34 ]
  %38 = phi i64 [ %29, %24 ], [ %56, %34 ]
  %39 = phi i64 [ %27, %24 ], [ %40, %34 ]
  %40 = phi i64 [ %25, %24 ], [ %53, %34 ]
  %41 = shl i64 %40, 5
  %42 = lshr i64 %40, 27
  %43 = or i64 %41, %42
  %44 = and i64 %38, %39
  %45 = xor i64 %39, -1
  %46 = and i64 %37, %45
  %47 = or i64 %46, %44
  %48 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %35
  %49 = load i64, ptr %48, align 8, !tbaa !6
  %50 = add i64 %43, 1518500249
  %51 = add i64 %50, %36
  %52 = add i64 %51, %47
  %53 = add i64 %52, %49
  %54 = shl i64 %39, 30
  %55 = lshr i64 %39, 2
  %56 = or i64 %54, %55
  %57 = add nuw nsw i64 %35, 1
  %58 = icmp eq i64 %57, 20
  br i1 %58, label %59, label %34, !llvm.loop !16

59:                                               ; preds = %34, %59
  %60 = phi i64 [ %80, %59 ], [ 20, %34 ]
  %61 = phi i64 [ %62, %59 ], [ %37, %34 ]
  %62 = phi i64 [ %63, %59 ], [ %38, %34 ]
  %63 = phi i64 [ %79, %59 ], [ %56, %34 ]
  %64 = phi i64 [ %65, %59 ], [ %40, %34 ]
  %65 = phi i64 [ %76, %59 ], [ %53, %34 ]
  %66 = shl i64 %65, 5
  %67 = lshr i64 %65, 27
  %68 = or i64 %66, %67
  %69 = xor i64 %63, %64
  %70 = xor i64 %69, %62
  %71 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %60
  %72 = load i64, ptr %71, align 8, !tbaa !6
  %73 = add i64 %68, 1859775393
  %74 = add i64 %73, %70
  %75 = add i64 %74, %61
  %76 = add i64 %75, %72
  %77 = shl i64 %64, 30
  %78 = lshr i64 %64, 2
  %79 = or i64 %77, %78
  %80 = add nuw nsw i64 %60, 1
  %81 = icmp eq i64 %80, 40
  br i1 %81, label %82, label %59, !llvm.loop !17

82:                                               ; preds = %59, %82
  %83 = phi i64 [ %105, %82 ], [ 40, %59 ]
  %84 = phi i64 [ %85, %82 ], [ %62, %59 ]
  %85 = phi i64 [ %86, %82 ], [ %63, %59 ]
  %86 = phi i64 [ %104, %82 ], [ %79, %59 ]
  %87 = phi i64 [ %88, %82 ], [ %65, %59 ]
  %88 = phi i64 [ %101, %82 ], [ %76, %59 ]
  %89 = shl i64 %88, 5
  %90 = lshr i64 %88, 27
  %91 = or i64 %89, %90
  %92 = or i64 %85, %86
  %93 = and i64 %92, %87
  %94 = and i64 %85, %86
  %95 = or i64 %93, %94
  %96 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %83
  %97 = load i64, ptr %96, align 8, !tbaa !6
  %98 = add i64 %91, 2400959708
  %99 = add i64 %98, %84
  %100 = add i64 %99, %95
  %101 = add i64 %100, %97
  %102 = shl i64 %87, 30
  %103 = lshr i64 %87, 2
  %104 = or i64 %102, %103
  %105 = add nuw nsw i64 %83, 1
  %106 = icmp eq i64 %105, 60
  br i1 %106, label %107, label %82, !llvm.loop !18

107:                                              ; preds = %82, %107
  %108 = phi i64 [ %128, %107 ], [ 60, %82 ]
  %109 = phi i64 [ %110, %107 ], [ %85, %82 ]
  %110 = phi i64 [ %111, %107 ], [ %86, %82 ]
  %111 = phi i64 [ %127, %107 ], [ %104, %82 ]
  %112 = phi i64 [ %113, %107 ], [ %88, %82 ]
  %113 = phi i64 [ %124, %107 ], [ %101, %82 ]
  %114 = shl i64 %113, 5
  %115 = lshr i64 %113, 27
  %116 = or i64 %114, %115
  %117 = xor i64 %111, %112
  %118 = xor i64 %117, %110
  %119 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %108
  %120 = load i64, ptr %119, align 8, !tbaa !6
  %121 = add i64 %116, 3395469782
  %122 = add i64 %121, %118
  %123 = add i64 %122, %109
  %124 = add i64 %123, %120
  %125 = shl i64 %112, 30
  %126 = lshr i64 %112, 2
  %127 = or i64 %125, %126
  %128 = add nuw nsw i64 %108, 1
  %129 = icmp eq i64 %128, 80
  br i1 %129, label %130, label %107, !llvm.loop !19

130:                                              ; preds = %107
  %131 = add i64 %124, %25
  store i64 %131, ptr %0, align 8, !tbaa !6
  %132 = add i64 %113, %27
  store i64 %132, ptr %26, align 8, !tbaa !6
  %133 = add i64 %127, %29
  store i64 %133, ptr %28, align 8, !tbaa !6
  %134 = add i64 %111, %31
  store i64 %134, ptr %30, align 8, !tbaa !6
  %135 = add i64 %110, %33
  store i64 %135, ptr %32, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @sha_final(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %0, i64 48
  %5 = load i64, ptr %4, align 8, !tbaa !12
  %6 = trunc i64 %3 to i32
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 63
  %9 = getelementptr inbounds i8, ptr %0, i64 56
  %10 = zext nneg i32 %8 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  store i8 -128, ptr %11, align 1, !tbaa !20
  %12 = icmp ugt i32 %8, 55
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr inbounds i8, ptr %9, i64 %13
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  br i1 %12, label %16, label %19

16:                                               ; preds = %1
  %17 = xor i32 %8, 63
  %18 = zext nneg i32 %17 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %15, i8 0, i64 %18, i1 false)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  br label %22

19:                                               ; preds = %1
  %20 = sub nuw nsw i32 55, %8
  %21 = zext nneg i32 %20 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %15, i8 0, i64 %21, i1 false)
  br label %22

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds i8, ptr %0, i64 168
  store i64 %5, ptr %23, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %0, i64 176
  store i64 %3, ptr %24, align 8, !tbaa !6
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
define dso_local void @sha_stream(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca [80 x i64], align 8
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %5 = trunc i64 %4 to i32
  store i64 1732584193, ptr %0, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 4023233417, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 2562383102, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  store i64 271733878, ptr %8, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 3285377520, ptr %9, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 8 dereferenceable(144) %10, i8 0, i64 144, i1 false)
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %0, i64 56
  store i8 -128, ptr %13, align 1, !tbaa !20
  %14 = getelementptr inbounds i8, ptr %0, i64 57
  br label %190

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %0, i64 48
  %17 = getelementptr inbounds i8, ptr %0, i64 56
  br label %18

18:                                               ; preds = %15, %172
  %19 = phi i32 [ 0, %15 ], [ %174, %172 ]
  %20 = sub nsw i32 %5, %19
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 8192)
  %22 = sext i32 %21 to i64
  %23 = load i64, ptr %10, align 8, !tbaa !10
  %24 = shl nsw i64 %22, 3
  %25 = xor i64 %23, -1
  %26 = icmp ugt i64 %24, %25
  %27 = load i64, ptr %16, align 8, !tbaa !12
  %28 = zext i1 %26 to i64
  %29 = add i64 %23, %24
  store i64 %29, ptr %10, align 8, !tbaa !10
  %30 = lshr i64 %22, 29
  %31 = add i64 %27, %30
  %32 = add i64 %31, %28
  store i64 %32, ptr %16, align 8, !tbaa !12
  %33 = icmp sgt i32 %20, 127
  br i1 %33, label %34, label %172

34:                                               ; preds = %18
  %35 = load i64, ptr %0, align 8, !tbaa !6
  %36 = load i64, ptr %6, align 8, !tbaa !6
  %37 = load i64, ptr %7, align 8, !tbaa !6
  %38 = load i64, ptr %8, align 8, !tbaa !6
  %39 = load i64, ptr %9, align 8, !tbaa !6
  br label %40

40:                                               ; preds = %34, %163
  %41 = phi i64 [ %168, %163 ], [ %39, %34 ]
  %42 = phi i64 [ %167, %163 ], [ %38, %34 ]
  %43 = phi i64 [ %166, %163 ], [ %37, %34 ]
  %44 = phi i64 [ %165, %163 ], [ %36, %34 ]
  %45 = phi i64 [ %164, %163 ], [ %35, %34 ]
  %46 = phi i32 [ %169, %163 ], [ %21, %34 ]
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %17, i64 128, i1 false), !tbaa !6
  br label %47

47:                                               ; preds = %47, %40
  %48 = phi i64 [ 16, %40 ], [ %65, %47 ]
  %49 = add nsw i64 %48, -3
  %50 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !6
  %52 = add nsw i64 %48, -8
  %53 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !6
  %55 = xor i64 %54, %51
  %56 = add nsw i64 %48, -14
  %57 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !6
  %59 = xor i64 %55, %58
  %60 = add nsw i64 %48, -16
  %61 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !6
  %63 = xor i64 %59, %62
  %64 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %48
  store i64 %63, ptr %64, align 8, !tbaa !6
  %65 = add nuw nsw i64 %48, 1
  %66 = icmp eq i64 %65, 80
  br i1 %66, label %67, label %47, !llvm.loop !15

67:                                               ; preds = %47, %67
  %68 = phi i64 [ %90, %67 ], [ 0, %47 ]
  %69 = phi i64 [ %70, %67 ], [ %41, %47 ]
  %70 = phi i64 [ %71, %67 ], [ %42, %47 ]
  %71 = phi i64 [ %89, %67 ], [ %43, %47 ]
  %72 = phi i64 [ %73, %67 ], [ %44, %47 ]
  %73 = phi i64 [ %86, %67 ], [ %45, %47 ]
  %74 = shl i64 %73, 5
  %75 = lshr i64 %73, 27
  %76 = or i64 %74, %75
  %77 = and i64 %72, %71
  %78 = xor i64 %72, -1
  %79 = and i64 %70, %78
  %80 = or i64 %79, %77
  %81 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %68
  %82 = load i64, ptr %81, align 8, !tbaa !6
  %83 = add i64 %69, 1518500249
  %84 = add i64 %83, %80
  %85 = add i64 %84, %82
  %86 = add i64 %85, %76
  %87 = shl i64 %72, 30
  %88 = lshr i64 %72, 2
  %89 = or i64 %87, %88
  %90 = add nuw nsw i64 %68, 1
  %91 = icmp eq i64 %90, 20
  br i1 %91, label %92, label %67, !llvm.loop !16

92:                                               ; preds = %67, %92
  %93 = phi i64 [ %113, %92 ], [ 20, %67 ]
  %94 = phi i64 [ %95, %92 ], [ %70, %67 ]
  %95 = phi i64 [ %96, %92 ], [ %71, %67 ]
  %96 = phi i64 [ %112, %92 ], [ %89, %67 ]
  %97 = phi i64 [ %98, %92 ], [ %73, %67 ]
  %98 = phi i64 [ %109, %92 ], [ %86, %67 ]
  %99 = shl i64 %98, 5
  %100 = lshr i64 %98, 27
  %101 = or i64 %99, %100
  %102 = xor i64 %96, %95
  %103 = xor i64 %102, %97
  %104 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %93
  %105 = load i64, ptr %104, align 8, !tbaa !6
  %106 = add i64 %94, 1859775393
  %107 = add i64 %106, %103
  %108 = add i64 %107, %105
  %109 = add i64 %108, %101
  %110 = shl i64 %97, 30
  %111 = lshr i64 %97, 2
  %112 = or i64 %110, %111
  %113 = add nuw nsw i64 %93, 1
  %114 = icmp eq i64 %113, 40
  br i1 %114, label %115, label %92, !llvm.loop !17

115:                                              ; preds = %92, %115
  %116 = phi i64 [ %138, %115 ], [ 40, %92 ]
  %117 = phi i64 [ %118, %115 ], [ %95, %92 ]
  %118 = phi i64 [ %119, %115 ], [ %96, %92 ]
  %119 = phi i64 [ %137, %115 ], [ %112, %92 ]
  %120 = phi i64 [ %121, %115 ], [ %98, %92 ]
  %121 = phi i64 [ %134, %115 ], [ %109, %92 ]
  %122 = shl i64 %121, 5
  %123 = lshr i64 %121, 27
  %124 = or i64 %122, %123
  %125 = or i64 %119, %118
  %126 = and i64 %125, %120
  %127 = and i64 %119, %118
  %128 = or i64 %126, %127
  %129 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %116
  %130 = load i64, ptr %129, align 8, !tbaa !6
  %131 = add i64 %117, 2400959708
  %132 = add i64 %131, %128
  %133 = add i64 %132, %130
  %134 = add i64 %133, %124
  %135 = shl i64 %120, 30
  %136 = lshr i64 %120, 2
  %137 = or i64 %135, %136
  %138 = add nuw nsw i64 %116, 1
  %139 = icmp eq i64 %138, 60
  br i1 %139, label %140, label %115, !llvm.loop !18

140:                                              ; preds = %115, %140
  %141 = phi i64 [ %161, %140 ], [ 60, %115 ]
  %142 = phi i64 [ %143, %140 ], [ %118, %115 ]
  %143 = phi i64 [ %144, %140 ], [ %119, %115 ]
  %144 = phi i64 [ %160, %140 ], [ %137, %115 ]
  %145 = phi i64 [ %146, %140 ], [ %121, %115 ]
  %146 = phi i64 [ %157, %140 ], [ %134, %115 ]
  %147 = shl i64 %146, 5
  %148 = lshr i64 %146, 27
  %149 = or i64 %147, %148
  %150 = xor i64 %144, %143
  %151 = xor i64 %150, %145
  %152 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %141
  %153 = load i64, ptr %152, align 8, !tbaa !6
  %154 = add i64 %142, 3395469782
  %155 = add i64 %154, %151
  %156 = add i64 %155, %153
  %157 = add i64 %156, %149
  %158 = shl i64 %145, 30
  %159 = lshr i64 %145, 2
  %160 = or i64 %158, %159
  %161 = add nuw nsw i64 %141, 1
  %162 = icmp eq i64 %161, 80
  br i1 %162, label %163, label %140, !llvm.loop !19

163:                                              ; preds = %140
  %164 = add i64 %157, %45
  %165 = add i64 %146, %44
  %166 = add i64 %160, %43
  %167 = add i64 %144, %42
  %168 = add i64 %143, %41
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %3) #9
  %169 = add nsw i32 %46, -128
  %170 = icmp ugt i32 %46, 255
  br i1 %170, label %40, label %171, !llvm.loop !13

171:                                              ; preds = %163
  store i64 %164, ptr %0, align 8, !tbaa !6
  store i64 %165, ptr %6, align 8, !tbaa !6
  store i64 %166, ptr %7, align 8, !tbaa !6
  store i64 %167, ptr %8, align 8, !tbaa !6
  store i64 %168, ptr %9, align 8, !tbaa !6
  br label %172

172:                                              ; preds = %171, %18
  %173 = tail call i32 @putchar(i32 10)
  %174 = add nsw i32 %21, %19
  %175 = icmp slt i32 %174, %5
  br i1 %175, label %18, label %176, !llvm.loop !21

176:                                              ; preds = %172
  %177 = load i64, ptr %10, align 8, !tbaa !10
  %178 = load i64, ptr %16, align 8, !tbaa !12
  %179 = trunc i64 %177 to i32
  %180 = lshr i32 %179, 3
  %181 = and i32 %180, 63
  %182 = getelementptr inbounds i8, ptr %0, i64 56
  %183 = zext nneg i32 %181 to i64
  %184 = getelementptr inbounds i8, ptr %182, i64 %183
  store i8 -128, ptr %184, align 1, !tbaa !20
  %185 = icmp ugt i32 %181, 55
  %186 = getelementptr inbounds i8, ptr %184, i64 1
  br i1 %185, label %187, label %190

187:                                              ; preds = %176
  %188 = xor i32 %181, 63
  %189 = zext nneg i32 %188 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %186, i8 0, i64 %189, i1 false)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %182, i8 0, i64 56, i1 false)
  br label %197

190:                                              ; preds = %12, %176
  %191 = phi ptr [ %14, %12 ], [ %186, %176 ]
  %192 = phi i32 [ 0, %12 ], [ %181, %176 ]
  %193 = phi i64 [ 0, %12 ], [ %177, %176 ]
  %194 = phi i64 [ 0, %12 ], [ %178, %176 ]
  %195 = sub nuw nsw i32 55, %192
  %196 = zext nneg i32 %195 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %191, i8 0, i64 %196, i1 false)
  br label %197

197:                                              ; preds = %187, %190
  %198 = phi i64 [ %177, %187 ], [ %193, %190 ]
  %199 = phi i64 [ %178, %187 ], [ %194, %190 ]
  %200 = getelementptr inbounds i8, ptr %0, i64 168
  store i64 %199, ptr %200, align 8, !tbaa !6
  %201 = getelementptr inbounds i8, ptr %0, i64 176
  store i64 %198, ptr %201, align 8, !tbaa !6
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
define dso_local void @sha_print(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i64, ptr %0, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  %8 = load i64, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %0, i64 32
  %10 = load i64, ptr %9, align 8, !tbaa !6
  %11 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %2, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef signext) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 40}
!11 = !{!"", !8, i64 0, !7, i64 40, !7, i64 48, !8, i64 56}
!12 = !{!11, !7, i64 48}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = !{!8, !8, i64 0}
!21 = distinct !{!21, !14}
