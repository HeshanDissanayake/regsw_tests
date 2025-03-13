; ModuleID = 'sha.c'
source_filename = "sha.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@k = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @sha256_transform(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #5
  br label %6

4:                                                ; preds = %6
  %5 = load i32, ptr %3, align 4, !tbaa !6
  br label %34

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %31, %6 ]
  %8 = phi i64 [ 0, %2 ], [ %32, %6 ]
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = or disjoint i64 %8, 1
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or disjoint i32 %17, %12
  %19 = or disjoint i64 %8, 2
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or disjoint i32 %18, %23
  %25 = or disjoint i64 %8, 3
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !10
  %28 = zext i8 %27 to i32
  %29 = or disjoint i32 %24, %28
  %30 = getelementptr inbounds nuw [64 x i32], ptr %3, i64 0, i64 %7
  store i32 %29, ptr %30, align 4, !tbaa !6
  %31 = add nuw nsw i64 %7, 1
  %32 = add nuw nsw i64 %8, 4
  %33 = icmp eq i64 %31, 16
  br i1 %33, label %4, label %6, !llvm.loop !11

34:                                               ; preds = %4, %34
  %35 = phi i32 [ %5, %4 ], [ %51, %34 ]
  %36 = phi i64 [ 16, %4 ], [ %60, %34 ]
  %37 = add nsw i64 %36, -2
  %38 = getelementptr inbounds nuw [64 x i32], ptr %3, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !6
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 15)
  %41 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %42 = xor i32 %40, %41
  %43 = lshr i32 %39, 10
  %44 = xor i32 %42, %43
  %45 = add nsw i64 %36, -7
  %46 = getelementptr inbounds nuw [64 x i32], ptr %3, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !6
  %48 = add i32 %44, %47
  %49 = add nsw i64 %36, -15
  %50 = getelementptr inbounds nuw [64 x i32], ptr %3, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !6
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 25)
  %53 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 14)
  %54 = xor i32 %52, %53
  %55 = lshr i32 %51, 3
  %56 = xor i32 %54, %55
  %57 = add i32 %48, %35
  %58 = add i32 %57, %56
  %59 = getelementptr inbounds nuw [64 x i32], ptr %3, i64 0, i64 %36
  store i32 %58, ptr %59, align 4, !tbaa !6
  %60 = add nuw nsw i64 %36, 1
  %61 = icmp eq i64 %60, 64
  br i1 %61, label %62, label %34, !llvm.loop !13

62:                                               ; preds = %34
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %64 = load i32, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %66 = load i32, ptr %65, align 4, !tbaa !6
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %68 = load i32, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %70 = load i32, ptr %69, align 4, !tbaa !6
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %72 = load i32, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %74 = load i32, ptr %73, align 4, !tbaa !6
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %76 = load i32, ptr %75, align 8, !tbaa !6
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %78 = load i32, ptr %77, align 4, !tbaa !6
  br label %79

79:                                               ; preds = %62, %79
  %80 = phi i64 [ 0, %62 ], [ %118, %79 ]
  %81 = phi i32 [ %64, %62 ], [ %117, %79 ]
  %82 = phi i32 [ %66, %62 ], [ %81, %79 ]
  %83 = phi i32 [ %78, %62 ], [ %84, %79 ]
  %84 = phi i32 [ %76, %62 ], [ %85, %79 ]
  %85 = phi i32 [ %74, %62 ], [ %86, %79 ]
  %86 = phi i32 [ %72, %62 ], [ %116, %79 ]
  %87 = phi i32 [ %70, %62 ], [ %88, %79 ]
  %88 = phi i32 [ %68, %62 ], [ %82, %79 ]
  %89 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 26)
  %90 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 21)
  %91 = xor i32 %89, %90
  %92 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 7)
  %93 = xor i32 %91, %92
  %94 = add i32 %83, %93
  %95 = and i32 %85, %86
  %96 = xor i32 %86, -1
  %97 = and i32 %84, %96
  %98 = or i32 %97, %95
  %99 = add i32 %94, %98
  %100 = getelementptr inbounds nuw [64 x i32], ptr @k, i64 0, i64 %80
  %101 = load i32, ptr %100, align 4, !tbaa !6
  %102 = add i32 %99, %101
  %103 = getelementptr inbounds nuw [64 x i32], ptr %3, i64 0, i64 %80
  %104 = load i32, ptr %103, align 4, !tbaa !6
  %105 = add i32 %102, %104
  %106 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 30)
  %107 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 19)
  %108 = xor i32 %106, %107
  %109 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 10)
  %110 = xor i32 %108, %109
  %111 = xor i32 %82, %88
  %112 = and i32 %81, %111
  %113 = and i32 %82, %88
  %114 = xor i32 %112, %113
  %115 = add i32 %110, %114
  %116 = add i32 %105, %87
  %117 = add i32 %115, %105
  %118 = add nuw nsw i64 %80, 1
  %119 = icmp eq i64 %118, 64
  br i1 %119, label %120, label %79, !llvm.loop !14

120:                                              ; preds = %79
  %121 = add i32 %117, %64
  store i32 %121, ptr %63, align 8, !tbaa !6
  %122 = add i32 %81, %66
  store i32 %122, ptr %65, align 4, !tbaa !6
  %123 = add i32 %82, %68
  store i32 %123, ptr %67, align 8, !tbaa !6
  %124 = add i32 %88, %70
  store i32 %124, ptr %69, align 4, !tbaa !6
  %125 = add i32 %116, %72
  store i32 %125, ptr %71, align 8, !tbaa !6
  %126 = add i32 %86, %74
  store i32 %126, ptr %73, align 4, !tbaa !6
  %127 = add i32 %85, %76
  store i32 %127, ptr %75, align 8, !tbaa !6
  %128 = add i32 %84, %78
  store i32 %128, ptr %77, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @sha256_init(ptr noundef writeonly captures(none) initializes((64, 68), (72, 112)) %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %2, align 8, !tbaa !15
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %3, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1779033703, ptr %4, align 8, !tbaa !6
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1150833019, ptr %5, align 4, !tbaa !6
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1013904242, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -1521486534, ptr %7, align 4, !tbaa !6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1359893119, ptr %8, align 8, !tbaa !6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 -1694144372, ptr %9, align 4, !tbaa !6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 528734635, ptr %10, align 8, !tbaa !6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1541459225, ptr %11, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @sha256_update(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %8 = load i32, ptr %6, align 8, !tbaa !15
  br label %9

9:                                                ; preds = %5, %23
  %10 = phi i32 [ %8, %5 ], [ %24, %23 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %23 ]
  %12 = phi i32 [ 0, %5 ], [ %25, %23 ]
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !10
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds nuw [64 x i8], ptr %0, i64 0, i64 %15
  store i8 %14, ptr %16, align 1, !tbaa !10
  %17 = load i32, ptr %6, align 8, !tbaa !15
  %18 = add i32 %17, 1
  store i32 %18, ptr %6, align 8, !tbaa !15
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %21 = load i64, ptr %7, align 8, !tbaa !18
  %22 = add i64 %21, 512
  store i64 %22, ptr %7, align 8, !tbaa !18
  store i32 0, ptr %6, align 8, !tbaa !15
  br label %23

23:                                               ; preds = %9, %20
  %24 = phi i32 [ %18, %9 ], [ 0, %20 ]
  %25 = add i32 %12, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %2, %26
  br i1 %27, label %9, label %28, !llvm.loop !19

28:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @sha256_final(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %4 = load i32, ptr %3, align 8, !tbaa !15
  %5 = icmp ult i32 %4, 56
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds nuw [64 x i8], ptr %0, i64 0, i64 %6
  store i8 -128, ptr %7, align 1, !tbaa !10
  br i1 %5, label %8, label %15

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 55
  br i1 %9, label %25, label %10

10:                                               ; preds = %8
  %11 = getelementptr i8, ptr %0, i64 %6
  %12 = getelementptr i8, ptr %11, i64 1
  %13 = sub nsw i32 55, %4
  %14 = zext nneg i32 %13 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %12, i8 0, i64 %14, i1 false), !tbaa !10
  br label %25

15:                                               ; preds = %2
  %16 = add i32 %4, 1
  %17 = icmp ult i32 %16, 64
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = zext nneg i32 %16 to i64
  %20 = getelementptr i8, ptr %0, i64 %19
  %21 = sub nsw i32 62, %4
  %22 = zext nneg i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %20, i8 0, i64 %23, i1 false), !tbaa !10
  br label %24

24:                                               ; preds = %18, %15
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %25

25:                                               ; preds = %10, %8, %24
  %26 = load i32, ptr %3, align 8, !tbaa !15
  %27 = shl i32 %26, 3
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %30 = load i64, ptr %29, align 8, !tbaa !18
  %31 = add i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !18
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %32, ptr %33, align 1, !tbaa !10
  %34 = lshr i64 %31, 8
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i8 %35, ptr %36, align 2, !tbaa !10
  %37 = lshr i64 %31, 16
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %38, ptr %39, align 1, !tbaa !10
  %40 = lshr i64 %31, 24
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %41, ptr %42, align 4, !tbaa !10
  %43 = lshr i64 %31, 32
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %44, ptr %45, align 1, !tbaa !10
  %46 = lshr i64 %31, 40
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %47, ptr %48, align 2, !tbaa !10
  %49 = lshr i64 %31, 48
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %50, ptr %51, align 1, !tbaa !10
  %52 = lshr i64 %31, 56
  %53 = trunc nuw i64 %52 to i8
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %53, ptr %54, align 8, !tbaa !10
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %63 = load i32, ptr %55, align 8, !tbaa !6
  %64 = lshr i32 %63, 24
  %65 = trunc nuw i32 %64 to i8
  store i8 %65, ptr %1, align 1, !tbaa !10
  %66 = load i32, ptr %56, align 4, !tbaa !6
  %67 = lshr i32 %66, 24
  %68 = trunc nuw i32 %67 to i8
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %68, ptr %69, align 1, !tbaa !10
  %70 = load i32, ptr %57, align 8, !tbaa !6
  %71 = lshr i32 %70, 24
  %72 = trunc nuw i32 %71 to i8
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %72, ptr %73, align 1, !tbaa !10
  %74 = load i32, ptr %58, align 4, !tbaa !6
  %75 = lshr i32 %74, 24
  %76 = trunc nuw i32 %75 to i8
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %76, ptr %77, align 1, !tbaa !10
  %78 = load i32, ptr %59, align 8, !tbaa !6
  %79 = lshr i32 %78, 24
  %80 = trunc nuw i32 %79 to i8
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %80, ptr %81, align 1, !tbaa !10
  %82 = load i32, ptr %60, align 4, !tbaa !6
  %83 = lshr i32 %82, 24
  %84 = trunc nuw i32 %83 to i8
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %84, ptr %85, align 1, !tbaa !10
  %86 = load i32, ptr %61, align 8, !tbaa !6
  %87 = lshr i32 %86, 24
  %88 = trunc nuw i32 %87 to i8
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %88, ptr %89, align 1, !tbaa !10
  %90 = load i32, ptr %62, align 4, !tbaa !6
  %91 = lshr i32 %90, 24
  %92 = trunc nuw i32 %91 to i8
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %92, ptr %93, align 1, !tbaa !10
  %94 = load i32, ptr %55, align 8, !tbaa !6
  %95 = lshr i32 %94, 16
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %96, ptr %97, align 1, !tbaa !10
  %98 = load i32, ptr %56, align 4, !tbaa !6
  %99 = lshr i32 %98, 16
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %100, ptr %101, align 1, !tbaa !10
  %102 = load i32, ptr %57, align 8, !tbaa !6
  %103 = lshr i32 %102, 16
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %104, ptr %105, align 1, !tbaa !10
  %106 = load i32, ptr %58, align 4, !tbaa !6
  %107 = lshr i32 %106, 16
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %108, ptr %109, align 1, !tbaa !10
  %110 = load i32, ptr %59, align 8, !tbaa !6
  %111 = lshr i32 %110, 16
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %112, ptr %113, align 1, !tbaa !10
  %114 = load i32, ptr %60, align 4, !tbaa !6
  %115 = lshr i32 %114, 16
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %116, ptr %117, align 1, !tbaa !10
  %118 = load i32, ptr %61, align 8, !tbaa !6
  %119 = lshr i32 %118, 16
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %120, ptr %121, align 1, !tbaa !10
  %122 = load i32, ptr %62, align 4, !tbaa !6
  %123 = lshr i32 %122, 16
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %124, ptr %125, align 1, !tbaa !10
  %126 = load i32, ptr %55, align 8, !tbaa !6
  %127 = lshr i32 %126, 8
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %128, ptr %129, align 1, !tbaa !10
  %130 = load i32, ptr %56, align 4, !tbaa !6
  %131 = lshr i32 %130, 8
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %132, ptr %133, align 1, !tbaa !10
  %134 = load i32, ptr %57, align 8, !tbaa !6
  %135 = lshr i32 %134, 8
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %136, ptr %137, align 1, !tbaa !10
  %138 = load i32, ptr %58, align 4, !tbaa !6
  %139 = lshr i32 %138, 8
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %140, ptr %141, align 1, !tbaa !10
  %142 = load i32, ptr %59, align 8, !tbaa !6
  %143 = lshr i32 %142, 8
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %144, ptr %145, align 1, !tbaa !10
  %146 = load i32, ptr %60, align 4, !tbaa !6
  %147 = lshr i32 %146, 8
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %148, ptr %149, align 1, !tbaa !10
  %150 = load i32, ptr %61, align 8, !tbaa !6
  %151 = lshr i32 %150, 8
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %152, ptr %153, align 1, !tbaa !10
  %154 = load i32, ptr %62, align 4, !tbaa !6
  %155 = lshr i32 %154, 8
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %156, ptr %157, align 1, !tbaa !10
  %158 = load i32, ptr %55, align 8, !tbaa !6
  %159 = trunc i32 %158 to i8
  %160 = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %159, ptr %160, align 1, !tbaa !10
  %161 = load i32, ptr %56, align 4, !tbaa !6
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %162, ptr %163, align 1, !tbaa !10
  %164 = load i32, ptr %57, align 8, !tbaa !6
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %165, ptr %166, align 1, !tbaa !10
  %167 = load i32, ptr %58, align 4, !tbaa !6
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %168, ptr %169, align 1, !tbaa !10
  %170 = load i32, ptr %59, align 8, !tbaa !6
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %171, ptr %172, align 1, !tbaa !10
  %173 = load i32, ptr %60, align 4, !tbaa !6
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %174, ptr %175, align 1, !tbaa !10
  %176 = load i32, ptr %61, align 8, !tbaa !6
  %177 = trunc i32 %176 to i8
  %178 = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %177, ptr %178, align 1, !tbaa !10
  %179 = load i32, ptr %62, align 4, !tbaa !6
  %180 = trunc i32 %179 to i8
  %181 = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %180, ptr %181, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+relax,-a,-b,-c,-d,-e,-experimental-p,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqccmp,-experimental-xqcia,-experimental-xqciac,-experimental-xqcibm,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilia,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-f,-h,-m,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zicsr,-zifencei,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+relax,-a,-b,-c,-d,-e,-experimental-p,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqccmp,-experimental-xqcia,-experimental-xqciac,-experimental-xqcibm,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilia,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-f,-h,-m,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zicsr,-zifencei,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1"}
!4 = !{i32 8, !"SmallDataLimit", i32 0}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 634e25319e0e99affcb61cc9fba639c4d40cc420)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{!16, !7, i64 64}
!16 = !{!"", !8, i64 0, !7, i64 64, !17, i64 72, !8, i64 80}
!17 = !{!"long long", !8, i64 0}
!18 = !{!16, !17, i64 72}
!19 = distinct !{!19, !12}
