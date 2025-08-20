; ModuleID = 'jdcoefct.c'
source_filename = "jdcoefct.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jinit_d_coef_controller(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef signext 1, i64 noundef 224) #5
  %7 = getelementptr inbounds i8, ptr %0, i64 560
  store ptr %6, ptr %7, align 8, !tbaa !17
  store ptr @start_input_pass, ptr %6, align 8, !tbaa !18
  %8 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr @start_output_pass, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds i8, ptr %6, i64 216
  store ptr null, ptr %9, align 8, !tbaa !22
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %58, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %0, i64 56
  %13 = load i32, ptr %12, align 8, !tbaa !23
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 304
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = getelementptr inbounds i8, ptr %0, i64 312
  %19 = getelementptr inbounds i8, ptr %6, i64 136
  br label %20

20:                                               ; preds = %15, %20
  %21 = phi i64 [ 0, %15 ], [ %49, %20 ]
  %22 = phi ptr [ %17, %15 ], [ %50, %20 ]
  %23 = getelementptr inbounds i8, ptr %22, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !25
  %25 = load i32, ptr %18, align 8, !tbaa !27
  %26 = icmp eq i32 %25, 0
  %27 = mul nsw i32 %24, 3
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = load ptr, ptr %3, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 40
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = getelementptr inbounds i8, ptr %22, i64 28
  %33 = load i32, ptr %32, align 4, !tbaa !29
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %22, i64 8
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = sext i32 %36 to i64
  %38 = tail call i64 @jround_up(i64 noundef %34, i64 noundef %37) #5
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds i8, ptr %22, i64 32
  %41 = load i32, ptr %40, align 8, !tbaa !31
  %42 = zext i32 %41 to i64
  %43 = load i32, ptr %23, align 4, !tbaa !25
  %44 = sext i32 %43 to i64
  %45 = tail call i64 @jround_up(i64 noundef %42, i64 noundef %44) #5
  %46 = trunc i64 %45 to i32
  %47 = tail call ptr %31(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %39, i32 noundef signext %46, i32 noundef signext %28) #5
  %48 = getelementptr inbounds [10 x ptr], ptr %19, i64 0, i64 %21
  store ptr %47, ptr %48, align 8, !tbaa !32
  %49 = add nuw nsw i64 %21, 1
  %50 = getelementptr inbounds i8, ptr %22, i64 96
  %51 = load i32, ptr %12, align 8, !tbaa !23
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %20, label %54, !llvm.loop !33

54:                                               ; preds = %20, %11
  %55 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr @consume_data, ptr %55, align 8, !tbaa !35
  %56 = getelementptr inbounds i8, ptr %6, i64 24
  store ptr @decompress_data, ptr %56, align 8, !tbaa !36
  %57 = getelementptr inbounds i8, ptr %6, i64 136
  br label %84

58:                                               ; preds = %2
  %59 = load ptr, ptr %3, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %59, i64 8
  %61 = load ptr, ptr %60, align 8, !tbaa !37
  %62 = tail call ptr %61(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 1280) #5
  %63 = getelementptr inbounds i8, ptr %6, i64 56
  store ptr %62, ptr %63, align 8, !tbaa !32
  %64 = getelementptr inbounds i8, ptr %62, i64 128
  %65 = getelementptr inbounds i8, ptr %6, i64 64
  store ptr %64, ptr %65, align 8, !tbaa !32
  %66 = getelementptr inbounds i8, ptr %62, i64 256
  %67 = getelementptr inbounds i8, ptr %6, i64 72
  store ptr %66, ptr %67, align 8, !tbaa !32
  %68 = getelementptr inbounds i8, ptr %62, i64 384
  %69 = getelementptr inbounds i8, ptr %6, i64 80
  store ptr %68, ptr %69, align 8, !tbaa !32
  %70 = getelementptr inbounds i8, ptr %62, i64 512
  %71 = getelementptr inbounds i8, ptr %6, i64 88
  store ptr %70, ptr %71, align 8, !tbaa !32
  %72 = getelementptr inbounds i8, ptr %62, i64 640
  %73 = getelementptr inbounds i8, ptr %6, i64 96
  store ptr %72, ptr %73, align 8, !tbaa !32
  %74 = getelementptr inbounds i8, ptr %62, i64 768
  %75 = getelementptr inbounds i8, ptr %6, i64 104
  store ptr %74, ptr %75, align 8, !tbaa !32
  %76 = getelementptr inbounds i8, ptr %62, i64 896
  %77 = getelementptr inbounds i8, ptr %6, i64 112
  store ptr %76, ptr %77, align 8, !tbaa !32
  %78 = getelementptr inbounds i8, ptr %62, i64 1024
  %79 = getelementptr inbounds i8, ptr %6, i64 120
  store ptr %78, ptr %79, align 8, !tbaa !32
  %80 = getelementptr inbounds i8, ptr %62, i64 1152
  %81 = getelementptr inbounds i8, ptr %6, i64 128
  store ptr %80, ptr %81, align 8, !tbaa !32
  %82 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr @dummy_consume_data, ptr %82, align 8, !tbaa !35
  %83 = getelementptr inbounds i8, ptr %6, i64 24
  store ptr @decompress_onepass, ptr %83, align 8, !tbaa !36
  br label %84

84:                                               ; preds = %58, %54
  %85 = phi ptr [ null, %58 ], [ %57, %54 ]
  %86 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %85, ptr %86, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @start_input_pass(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 176
  store i32 0, ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 560
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %0, i64 432
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %4, i64 48
  store i32 1, ptr %9, align 8, !tbaa !41
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %0, i64 420
  %12 = load i32, ptr %11, align 4, !tbaa !42
  %13 = icmp eq i32 %12, 1
  %14 = getelementptr inbounds i8, ptr %0, i64 440
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  %16 = getelementptr inbounds i8, ptr %4, i64 48
  br i1 %13, label %20, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds i8, ptr %15, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !25
  store i32 %19, ptr %16, align 8, !tbaa !41
  br label %23

20:                                               ; preds = %10
  %21 = getelementptr inbounds i8, ptr %15, i64 72
  %22 = load i32, ptr %21, align 8, !tbaa !43
  store i32 %22, ptr %16, align 8, !tbaa !41
  br label %23

23:                                               ; preds = %8, %17, %20
  %24 = getelementptr inbounds i8, ptr %4, i64 40
  store i32 0, ptr %24, align 8, !tbaa !44
  %25 = getelementptr inbounds i8, ptr %4, i64 44
  store i32 0, ptr %25, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind
define internal void @start_output_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 560
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %114, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 104
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %110, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i64 312
  %13 = load i32, ptr %12, align 8, !tbaa !27
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %110, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 192
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %110, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %3, i64 216
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 8
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = getelementptr inbounds i8, ptr %0, i64 56
  %28 = load i32, ptr %27, align 8, !tbaa !23
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, 24
  %31 = tail call ptr %26(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %30) #5
  store ptr %31, ptr %20, align 8, !tbaa !22
  br label %32

32:                                               ; preds = %23, %19
  %33 = phi ptr [ %31, %23 ], [ %21, %19 ]
  %34 = getelementptr inbounds i8, ptr %0, i64 56
  %35 = load i32, ptr %34, align 8, !tbaa !23
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %110

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %0, i64 304
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  br label %40

40:                                               ; preds = %76, %37
  %41 = phi i64 [ 0, %37 ], [ %103, %76 ]
  %42 = phi ptr [ %33, %37 ], [ %102, %76 ]
  %43 = phi i32 [ 0, %37 ], [ %101, %76 ]
  %44 = phi ptr [ %39, %37 ], [ %104, %76 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 80
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br i1 %47, label %110, label %48

48:                                               ; preds = %40
  %49 = load i16, ptr %46, align 4, !tbaa !49
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %110, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %46, i64 2
  %53 = load i16, ptr %52, align 2, !tbaa !49
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %110, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %46, i64 16
  %57 = load i16, ptr %56, align 4, !tbaa !49
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %110, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %46, i64 32
  %61 = load i16, ptr %60, align 4, !tbaa !49
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %110, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %46, i64 18
  %65 = load i16, ptr %64, align 2, !tbaa !49
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %110, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %46, i64 4
  %69 = load i16, ptr %68, align 4, !tbaa !49
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %110, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %16, align 8, !tbaa !47
  %73 = getelementptr inbounds [64 x i32], ptr %72, i64 %41
  %74 = load i32, ptr %73, align 4, !tbaa !50
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %110, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, ptr %73, i64 4
  %78 = load i32, ptr %77, align 4, !tbaa !50
  %79 = getelementptr inbounds i8, ptr %42, i64 4
  store i32 %78, ptr %79, align 4, !tbaa !50
  %80 = icmp eq i32 %78, 0
  %81 = getelementptr inbounds i8, ptr %73, i64 8
  %82 = load i32, ptr %81, align 4, !tbaa !50
  %83 = getelementptr inbounds i8, ptr %42, i64 8
  store i32 %82, ptr %83, align 4, !tbaa !50
  %84 = icmp eq i32 %82, 0
  %85 = getelementptr inbounds i8, ptr %73, i64 12
  %86 = load i32, ptr %85, align 4, !tbaa !50
  %87 = getelementptr inbounds i8, ptr %42, i64 12
  store i32 %86, ptr %87, align 4, !tbaa !50
  %88 = icmp eq i32 %86, 0
  %89 = getelementptr inbounds i8, ptr %73, i64 16
  %90 = load i32, ptr %89, align 4, !tbaa !50
  %91 = getelementptr inbounds i8, ptr %42, i64 16
  store i32 %90, ptr %91, align 4, !tbaa !50
  %92 = icmp eq i32 %90, 0
  %93 = getelementptr inbounds i8, ptr %73, i64 20
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = getelementptr inbounds i8, ptr %42, i64 20
  store i32 %94, ptr %95, align 4, !tbaa !50
  %96 = icmp eq i32 %94, 0
  %97 = select i1 %96, i1 %92, i1 false
  %98 = select i1 %97, i1 %88, i1 false
  %99 = select i1 %98, i1 %84, i1 false
  %100 = select i1 %99, i1 %80, i1 false
  %101 = select i1 %100, i32 %43, i32 1
  %102 = getelementptr inbounds i8, ptr %42, i64 24
  %103 = add nuw nsw i64 %41, 1
  %104 = getelementptr inbounds i8, ptr %44, i64 96
  %105 = load i32, ptr %34, align 8, !tbaa !23
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %40, label %108, !llvm.loop !51

108:                                              ; preds = %76
  %109 = icmp eq i32 %101, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %71, %48, %51, %55, %59, %63, %67, %40, %32, %11, %15, %108, %7
  br label %111

111:                                              ; preds = %108, %110
  %112 = phi ptr [ @decompress_data, %110 ], [ @decompress_smooth_data, %108 ]
  %113 = getelementptr inbounds i8, ptr %3, i64 24
  store ptr %112, ptr %113, align 8, !tbaa !36
  br label %114

114:                                              ; preds = %111, %1
  %115 = getelementptr inbounds i8, ptr %0, i64 184
  store i32 0, ptr %115, align 8, !tbaa !52
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define internal signext range(i32 0, 5) i32 @consume_data(ptr noundef %0) #0 {
  %2 = alloca [4 x ptr], align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 560
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  %5 = getelementptr inbounds i8, ptr %0, i64 432
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 440
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  %11 = getelementptr inbounds i8, ptr %4, i64 136
  %12 = getelementptr inbounds i8, ptr %0, i64 176
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %31, %13 ]
  %15 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = load ptr, ptr %10, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 64
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = getelementptr inbounds i8, ptr %16, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !54
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x ptr], ptr %11, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  %25 = load i32, ptr %12, align 8, !tbaa !39
  %26 = getelementptr inbounds i8, ptr %16, i64 12
  %27 = load i32, ptr %26, align 4, !tbaa !25
  %28 = mul i32 %27, %25
  %29 = tail call ptr %19(ptr noundef nonnull %0, ptr noundef %24, i32 noundef signext %28, i32 noundef signext %27, i32 noundef signext 1) #5
  %30 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %14
  store ptr %29, ptr %30, align 8, !tbaa !32
  %31 = add nuw nsw i64 %14, 1
  %32 = load i32, ptr %5, align 8, !tbaa !40
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %13, label %35, !llvm.loop !55

35:                                               ; preds = %13, %1
  %36 = getelementptr inbounds i8, ptr %4, i64 44
  %37 = load i32, ptr %36, align 4, !tbaa !45
  %38 = getelementptr inbounds i8, ptr %4, i64 48
  %39 = load i32, ptr %38, align 8, !tbaa !41
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %124

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, ptr %4, i64 40
  %43 = getelementptr inbounds i8, ptr %0, i64 472
  %44 = getelementptr inbounds i8, ptr %0, i64 440
  %45 = getelementptr inbounds i8, ptr %4, i64 56
  %46 = getelementptr inbounds i8, ptr %0, i64 592
  %47 = sext i32 %37 to i64
  %48 = load i32, ptr %42, align 8, !tbaa !44
  %49 = load i32, ptr %43, align 8, !tbaa !56
  br label %50

50:                                               ; preds = %41, %118
  %51 = phi i32 [ %39, %41 ], [ %119, %118 ]
  %52 = phi i32 [ %49, %41 ], [ %120, %118 ]
  %53 = phi i32 [ %48, %41 ], [ 0, %118 ]
  %54 = phi i64 [ %47, %41 ], [ %121, %118 ]
  %55 = icmp ult i32 %53, %52
  br i1 %55, label %56, label %118

56:                                               ; preds = %50, %112
  %57 = phi i32 [ %113, %112 ], [ %53, %50 ]
  %58 = load i32, ptr %5, align 8, !tbaa !40
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %56
  %61 = zext nneg i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %100
  %63 = phi i64 [ 0, %60 ], [ %102, %100 ]
  %64 = phi i32 [ 0, %60 ], [ %101, %100 ]
  %65 = getelementptr inbounds [4 x ptr], ptr %44, i64 0, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !32
  %67 = getelementptr inbounds i8, ptr %66, i64 52
  %68 = load i32, ptr %67, align 4, !tbaa !57
  %69 = getelementptr inbounds i8, ptr %66, i64 56
  %70 = load i32, ptr %69, align 8, !tbaa !58
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %62
  %73 = mul i32 %68, %57
  %74 = zext i32 %73 to i64
  %75 = icmp sgt i32 %68, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %63
  %78 = load ptr, ptr %77, align 8, !tbaa !32
  %79 = zext nneg i32 %70 to i64
  %80 = getelementptr ptr, ptr %78, i64 %54
  br label %81

81:                                               ; preds = %76, %97
  %82 = phi i64 [ 0, %76 ], [ %98, %97 ]
  %83 = phi i32 [ %64, %76 ], [ %88, %97 ]
  %84 = getelementptr ptr, ptr %80, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !32
  %86 = getelementptr inbounds [64 x i16], ptr %85, i64 %74
  %87 = sext i32 %83 to i64
  %88 = add i32 %68, %83
  br label %89

89:                                               ; preds = %81, %89
  %90 = phi i64 [ %87, %81 ], [ %93, %89 ]
  %91 = phi ptr [ %86, %81 ], [ %92, %89 ]
  %92 = getelementptr inbounds i8, ptr %91, i64 128
  %93 = add nsw i64 %90, 1
  %94 = getelementptr inbounds [10 x ptr], ptr %45, i64 0, i64 %90
  store ptr %91, ptr %94, align 8, !tbaa !32
  %95 = trunc i64 %93 to i32
  %96 = icmp eq i32 %88, %95
  br i1 %96, label %97, label %89, !llvm.loop !59

97:                                               ; preds = %89
  %98 = add nuw nsw i64 %82, 1
  %99 = icmp eq i64 %98, %79
  br i1 %99, label %100, label %81, !llvm.loop !60

100:                                              ; preds = %97, %72, %62
  %101 = phi i32 [ %64, %62 ], [ %64, %72 ], [ %88, %97 ]
  %102 = add nuw nsw i64 %63, 1
  %103 = icmp eq i64 %102, %61
  br i1 %103, label %104, label %62, !llvm.loop !61

104:                                              ; preds = %100, %56
  %105 = load ptr, ptr %46, align 8, !tbaa !62
  %106 = getelementptr inbounds i8, ptr %105, i64 8
  %107 = load ptr, ptr %106, align 8, !tbaa !63
  %108 = tail call signext i32 %107(ptr noundef nonnull %0, ptr noundef nonnull %45) #5
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = trunc nsw i64 %54 to i32
  store i32 %111, ptr %36, align 4, !tbaa !45
  store i32 %57, ptr %42, align 8, !tbaa !44
  br label %157

112:                                              ; preds = %104
  %113 = add nuw i32 %57, 1
  %114 = load i32, ptr %43, align 8, !tbaa !56
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %56, label %116, !llvm.loop !65

116:                                              ; preds = %112
  %117 = load i32, ptr %38, align 8, !tbaa !41
  br label %118

118:                                              ; preds = %116, %50
  %119 = phi i32 [ %117, %116 ], [ %51, %50 ]
  %120 = phi i32 [ %114, %116 ], [ %52, %50 ]
  store i32 0, ptr %42, align 8, !tbaa !44
  %121 = add nsw i64 %54, 1
  %122 = sext i32 %119 to i64
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %50, label %124, !llvm.loop !66

124:                                              ; preds = %118, %35
  %125 = getelementptr inbounds i8, ptr %0, i64 176
  %126 = load i32, ptr %125, align 8, !tbaa !39
  %127 = add i32 %126, 1
  store i32 %127, ptr %125, align 8, !tbaa !39
  %128 = getelementptr inbounds i8, ptr %0, i64 420
  %129 = load i32, ptr %128, align 4, !tbaa !42
  %130 = icmp ult i32 %127, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %124
  %132 = load ptr, ptr %3, align 8, !tbaa !17
  %133 = load i32, ptr %5, align 8, !tbaa !40
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = getelementptr inbounds i8, ptr %132, i64 48
  store i32 1, ptr %136, align 8, !tbaa !41
  br label %149

137:                                              ; preds = %131
  %138 = add i32 %129, -1
  %139 = icmp ult i32 %127, %138
  %140 = getelementptr inbounds i8, ptr %0, i64 440
  %141 = load ptr, ptr %140, align 8, !tbaa !32
  %142 = getelementptr inbounds i8, ptr %132, i64 48
  br i1 %139, label %143, label %146

143:                                              ; preds = %137
  %144 = getelementptr inbounds i8, ptr %141, i64 12
  %145 = load i32, ptr %144, align 4, !tbaa !25
  store i32 %145, ptr %142, align 8, !tbaa !41
  br label %149

146:                                              ; preds = %137
  %147 = getelementptr inbounds i8, ptr %141, i64 72
  %148 = load i32, ptr %147, align 8, !tbaa !43
  store i32 %148, ptr %142, align 8, !tbaa !41
  br label %149

149:                                              ; preds = %135, %143, %146
  %150 = getelementptr inbounds i8, ptr %132, i64 40
  store i32 0, ptr %150, align 8, !tbaa !44
  %151 = getelementptr inbounds i8, ptr %132, i64 44
  store i32 0, ptr %151, align 4, !tbaa !45
  br label %157

152:                                              ; preds = %124
  %153 = getelementptr inbounds i8, ptr %0, i64 576
  %154 = load ptr, ptr %153, align 8, !tbaa !67
  %155 = getelementptr inbounds i8, ptr %154, i64 24
  %156 = load ptr, ptr %155, align 8, !tbaa !68
  tail call void %156(ptr noundef nonnull %0) #5
  br label %157

157:                                              ; preds = %152, %149, %110
  %158 = phi i32 [ 0, %110 ], [ 3, %149 ], [ 4, %152 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret i32 %158
}

; Function Attrs: nounwind
define internal signext range(i32 0, 5) i32 @decompress_data(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 560
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %0, i64 420
  %6 = load i32, ptr %5, align 4, !tbaa !42
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds i8, ptr %0, i64 172
  %9 = getelementptr inbounds i8, ptr %0, i64 180
  %10 = getelementptr inbounds i8, ptr %0, i64 176
  %11 = getelementptr inbounds i8, ptr %0, i64 184
  %12 = getelementptr inbounds i8, ptr %0, i64 576
  br label %13

13:                                               ; preds = %23, %2
  %14 = load i32, ptr %8, align 4, !tbaa !70
  %15 = load i32, ptr %9, align 4, !tbaa !71
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %14, %15
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = load i32, ptr %10, align 8, !tbaa !39
  %21 = load i32, ptr %11, align 8, !tbaa !52
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %13, %19
  %24 = load ptr, ptr %12, align 8, !tbaa !67
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = tail call signext i32 %25(ptr noundef nonnull %0) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %121, label %13, !llvm.loop !73

28:                                               ; preds = %17, %19
  %29 = getelementptr inbounds i8, ptr %0, i64 56
  %30 = load i32, ptr %29, align 8, !tbaa !23
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %115

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %0, i64 304
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = getelementptr inbounds i8, ptr %0, i64 8
  %36 = getelementptr inbounds i8, ptr %4, i64 136
  %37 = getelementptr inbounds i8, ptr %0, i64 600
  br label %38

38:                                               ; preds = %32, %109
  %39 = phi i64 [ 0, %32 ], [ %110, %109 ]
  %40 = phi ptr [ %34, %32 ], [ %111, %109 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 48
  %42 = load i32, ptr %41, align 8, !tbaa !74
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %109, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %35, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 64
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = getelementptr inbounds [10 x ptr], ptr %36, i64 0, i64 %39
  %49 = load ptr, ptr %48, align 8, !tbaa !32
  %50 = load i32, ptr %11, align 8, !tbaa !52
  %51 = getelementptr inbounds i8, ptr %40, i64 12
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = mul i32 %52, %50
  %54 = tail call ptr %47(ptr noundef nonnull %0, ptr noundef %49, i32 noundef signext %53, i32 noundef signext %52, i32 noundef signext 0) #5
  %55 = load i32, ptr %11, align 8, !tbaa !52
  %56 = icmp ult i32 %55, %7
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, ptr %51, align 4, !tbaa !25
  br label %66

59:                                               ; preds = %44
  %60 = getelementptr inbounds i8, ptr %40, i64 32
  %61 = load i32, ptr %60, align 8, !tbaa !31
  %62 = load i32, ptr %51, align 4, !tbaa !25
  %63 = urem i32 %61, %62
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 %62, i32 %63
  br label %66

66:                                               ; preds = %59, %57
  %67 = phi i32 [ %58, %57 ], [ %65, %59 ]
  %68 = load ptr, ptr %37, align 8, !tbaa !75
  %69 = getelementptr inbounds i8, ptr %68, i64 8
  %70 = getelementptr inbounds [10 x ptr], ptr %69, i64 0, i64 %39
  %71 = load ptr, ptr %70, align 8, !tbaa !32
  %72 = icmp sgt i32 %67, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %66
  %74 = getelementptr inbounds i8, ptr %40, i64 28
  %75 = getelementptr inbounds i8, ptr %40, i64 36
  %76 = load i32, ptr %74, align 4, !tbaa !29
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds ptr, ptr %1, i64 %39
  %80 = load ptr, ptr %79, align 8, !tbaa !32
  %81 = zext nneg i32 %67 to i64
  br label %82

82:                                               ; preds = %78, %102
  %83 = phi i32 [ 1, %78 ], [ %104, %102 ]
  %84 = phi i64 [ 0, %78 ], [ %107, %102 ]
  %85 = phi ptr [ %80, %78 ], [ %106, %102 ]
  %86 = icmp eq i32 %83, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, ptr %75, align 4, !tbaa !76
  br label %102

89:                                               ; preds = %82
  %90 = getelementptr inbounds ptr, ptr %54, i64 %84
  %91 = load ptr, ptr %90, align 8, !tbaa !32
  br label %92

92:                                               ; preds = %89, %92
  %93 = phi i32 [ %98, %92 ], [ 0, %89 ]
  %94 = phi ptr [ %96, %92 ], [ %91, %89 ]
  %95 = phi i32 [ %99, %92 ], [ 0, %89 ]
  tail call void %71(ptr noundef %0, ptr noundef nonnull %40, ptr noundef %94, ptr noundef %85, i32 noundef signext %93) #5
  %96 = getelementptr inbounds i8, ptr %94, i64 128
  %97 = load i32, ptr %75, align 4, !tbaa !76
  %98 = add i32 %97, %93
  %99 = add nuw i32 %95, 1
  %100 = load i32, ptr %74, align 4, !tbaa !29
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %92, label %102, !llvm.loop !77

102:                                              ; preds = %92, %87
  %103 = phi i32 [ %88, %87 ], [ %97, %92 ]
  %104 = phi i32 [ 0, %87 ], [ %100, %92 ]
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds ptr, ptr %85, i64 %105
  %107 = add nuw nsw i64 %84, 1
  %108 = icmp eq i64 %107, %81
  br i1 %108, label %109, label %82, !llvm.loop !78

109:                                              ; preds = %102, %73, %66, %38
  %110 = add nuw nsw i64 %39, 1
  %111 = getelementptr inbounds i8, ptr %40, i64 96
  %112 = load i32, ptr %29, align 8, !tbaa !23
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %38, label %115, !llvm.loop !80

115:                                              ; preds = %109, %28
  %116 = load i32, ptr %11, align 8, !tbaa !52
  %117 = add i32 %116, 1
  store i32 %117, ptr %11, align 8, !tbaa !52
  %118 = load i32, ptr %5, align 4, !tbaa !42
  %119 = icmp ult i32 %117, %118
  %120 = select i1 %119, i32 3, i32 4
  br label %121

121:                                              ; preds = %23, %115
  %122 = phi i32 [ %120, %115 ], [ 0, %23 ]
  ret i32 %122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef signext i32 @dummy_consume_data(ptr nocapture readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind
define internal signext range(i32 0, 5) i32 @decompress_onepass(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 560
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %0, i64 472
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds i8, ptr %0, i64 420
  %9 = load i32, ptr %8, align 4, !tbaa !42
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds i8, ptr %4, i64 44
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds i8, ptr %4, i64 48
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %150

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %4, i64 40
  %18 = getelementptr inbounds i8, ptr %4, i64 56
  %19 = getelementptr inbounds i8, ptr %0, i64 480
  %20 = getelementptr inbounds i8, ptr %0, i64 592
  %21 = getelementptr inbounds i8, ptr %0, i64 432
  %22 = getelementptr inbounds i8, ptr %0, i64 440
  %23 = getelementptr inbounds i8, ptr %0, i64 600
  %24 = getelementptr inbounds i8, ptr %0, i64 176
  %25 = load i32, ptr %17, align 8, !tbaa !44
  br label %26

26:                                               ; preds = %16, %144
  %27 = phi i32 [ %14, %16 ], [ %145, %144 ]
  %28 = phi i32 [ %25, %16 ], [ 0, %144 ]
  %29 = phi i32 [ %12, %16 ], [ %146, %144 ]
  %30 = icmp ugt i32 %28, %7
  br i1 %30, label %144, label %31

31:                                               ; preds = %26, %139
  %32 = phi i32 [ %140, %139 ], [ %28, %26 ]
  %33 = load ptr, ptr %18, align 8, !tbaa !32
  %34 = load i32, ptr %19, align 8, !tbaa !81
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 7
  tail call void @jzero_far(ptr noundef %33, i64 noundef %36) #5
  %37 = load ptr, ptr %20, align 8, !tbaa !62
  %38 = getelementptr inbounds i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = tail call signext i32 %39(ptr noundef %0, ptr noundef nonnull %18) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %31
  %43 = load i32, ptr %21, align 8, !tbaa !40
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %139

45:                                               ; preds = %42
  %46 = icmp ult i32 %32, %7
  br label %48

47:                                               ; preds = %31
  store i32 %29, ptr %11, align 4, !tbaa !45
  store i32 %32, ptr %17, align 8, !tbaa !44
  br label %186

48:                                               ; preds = %45, %133
  %49 = phi i32 [ %43, %45 ], [ %134, %133 ]
  %50 = phi i64 [ 0, %45 ], [ %136, %133 ]
  %51 = phi i32 [ 0, %45 ], [ %135, %133 ]
  %52 = getelementptr inbounds [4 x ptr], ptr %22, i64 0, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !32
  %54 = getelementptr inbounds i8, ptr %53, i64 48
  %55 = load i32, ptr %54, align 8, !tbaa !74
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = getelementptr inbounds i8, ptr %53, i64 60
  %59 = load i32, ptr %58, align 4, !tbaa !82
  %60 = add nsw i32 %59, %51
  br label %133

61:                                               ; preds = %48
  %62 = load ptr, ptr %23, align 8, !tbaa !75
  %63 = getelementptr inbounds i8, ptr %62, i64 8
  %64 = getelementptr inbounds i8, ptr %53, i64 4
  %65 = load i32, ptr %64, align 4, !tbaa !54
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10 x ptr], ptr %63, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !32
  %69 = getelementptr inbounds i8, ptr %53, i64 52
  %70 = getelementptr inbounds i8, ptr %53, i64 68
  %71 = select i1 %46, ptr %69, ptr %70
  %72 = load i32, ptr %71, align 4, !tbaa !50
  %73 = freeze i32 %72
  %74 = getelementptr inbounds i8, ptr %53, i64 36
  %75 = getelementptr inbounds i8, ptr %53, i64 64
  %76 = load i32, ptr %75, align 8, !tbaa !83
  %77 = mul i32 %76, %32
  %78 = getelementptr inbounds i8, ptr %53, i64 56
  %79 = load i32, ptr %78, align 8, !tbaa !58
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %133

81:                                               ; preds = %61
  %82 = getelementptr inbounds i8, ptr %53, i64 72
  %83 = icmp sgt i32 %73, 0
  br i1 %83, label %84, label %127

84:                                               ; preds = %81
  %85 = getelementptr inbounds ptr, ptr %1, i64 %66
  %86 = load ptr, ptr %85, align 8, !tbaa !32
  %87 = load i32, ptr %74, align 4, !tbaa !76
  %88 = mul nsw i32 %87, %29
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %86, i64 %89
  %91 = zext nneg i32 %73 to i64
  br label %92

92:                                               ; preds = %84, %108
  %93 = phi i32 [ %109, %108 ], [ %79, %84 ]
  %94 = phi i32 [ %110, %108 ], [ %87, %84 ]
  %95 = phi i32 [ %112, %108 ], [ %51, %84 ]
  %96 = phi ptr [ %114, %108 ], [ %90, %84 ]
  %97 = phi i32 [ %115, %108 ], [ 0, %84 ]
  %98 = load i32, ptr %24, align 8, !tbaa !39
  %99 = icmp ult i32 %98, %10
  br i1 %99, label %104, label %100

100:                                              ; preds = %92
  %101 = add nsw i32 %97, %29
  %102 = load i32, ptr %82, align 8, !tbaa !43
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100, %92
  %105 = sext i32 %95 to i64
  br label %117

106:                                              ; preds = %117
  %107 = load i32, ptr %78, align 8, !tbaa !58
  br label %108

108:                                              ; preds = %106, %100
  %109 = phi i32 [ %107, %106 ], [ %93, %100 ]
  %110 = phi i32 [ %123, %106 ], [ %94, %100 ]
  %111 = load i32, ptr %69, align 4, !tbaa !57
  %112 = add nsw i32 %111, %95
  %113 = sext i32 %110 to i64
  %114 = getelementptr inbounds ptr, ptr %96, i64 %113
  %115 = add nuw nsw i32 %97, 1
  %116 = icmp slt i32 %115, %109
  br i1 %116, label %92, label %131, !llvm.loop !84

117:                                              ; preds = %104, %117
  %118 = phi i64 [ 0, %104 ], [ %125, %117 ]
  %119 = phi i32 [ %77, %104 ], [ %124, %117 ]
  %120 = add nsw i64 %118, %105
  %121 = getelementptr inbounds [10 x ptr], ptr %18, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !32
  tail call void %68(ptr noundef %0, ptr noundef nonnull %53, ptr noundef %122, ptr noundef %96, i32 noundef signext %119) #5
  %123 = load i32, ptr %74, align 4, !tbaa !76
  %124 = add i32 %123, %119
  %125 = add nuw nsw i64 %118, 1
  %126 = icmp eq i64 %125, %91
  br i1 %126, label %106, label %117, !llvm.loop !85

127:                                              ; preds = %81
  %128 = load i32, ptr %69, align 4, !tbaa !57
  %129 = mul i32 %128, %79
  %130 = add i32 %51, %129
  br label %133

131:                                              ; preds = %108
  %132 = load i32, ptr %21, align 8, !tbaa !40
  br label %133

133:                                              ; preds = %127, %131, %61, %57
  %134 = phi i32 [ %49, %57 ], [ %49, %61 ], [ %132, %131 ], [ %49, %127 ]
  %135 = phi i32 [ %60, %57 ], [ %51, %61 ], [ %112, %131 ], [ %130, %127 ]
  %136 = add nuw nsw i64 %50, 1
  %137 = sext i32 %134 to i64
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %48, label %139, !llvm.loop !86

139:                                              ; preds = %133, %42
  %140 = add i32 %32, 1
  %141 = icmp ugt i32 %140, %7
  br i1 %141, label %142, label %31, !llvm.loop !87

142:                                              ; preds = %139
  %143 = load i32, ptr %13, align 8, !tbaa !41
  br label %144

144:                                              ; preds = %142, %26
  %145 = phi i32 [ %143, %142 ], [ %27, %26 ]
  store i32 0, ptr %17, align 8, !tbaa !44
  %146 = add nsw i32 %29, 1
  %147 = icmp slt i32 %146, %145
  br i1 %147, label %26, label %148, !llvm.loop !88

148:                                              ; preds = %144
  %149 = load i32, ptr %8, align 4, !tbaa !42
  br label %150

150:                                              ; preds = %148, %2
  %151 = phi i32 [ %149, %148 ], [ %9, %2 ]
  %152 = getelementptr inbounds i8, ptr %0, i64 184
  %153 = load i32, ptr %152, align 8, !tbaa !52
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 8, !tbaa !52
  %155 = getelementptr inbounds i8, ptr %0, i64 176
  %156 = load i32, ptr %155, align 8, !tbaa !39
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 8, !tbaa !39
  %158 = icmp ult i32 %157, %151
  br i1 %158, label %159, label %181

159:                                              ; preds = %150
  %160 = load ptr, ptr %3, align 8, !tbaa !17
  %161 = getelementptr inbounds i8, ptr %0, i64 432
  %162 = load i32, ptr %161, align 8, !tbaa !40
  %163 = icmp sgt i32 %162, 1
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = getelementptr inbounds i8, ptr %160, i64 48
  store i32 1, ptr %165, align 8, !tbaa !41
  br label %178

166:                                              ; preds = %159
  %167 = add i32 %151, -1
  %168 = icmp ult i32 %157, %167
  %169 = getelementptr inbounds i8, ptr %0, i64 440
  %170 = load ptr, ptr %169, align 8, !tbaa !32
  %171 = getelementptr inbounds i8, ptr %160, i64 48
  br i1 %168, label %172, label %175

172:                                              ; preds = %166
  %173 = getelementptr inbounds i8, ptr %170, i64 12
  %174 = load i32, ptr %173, align 4, !tbaa !25
  store i32 %174, ptr %171, align 8, !tbaa !41
  br label %178

175:                                              ; preds = %166
  %176 = getelementptr inbounds i8, ptr %170, i64 72
  %177 = load i32, ptr %176, align 8, !tbaa !43
  store i32 %177, ptr %171, align 8, !tbaa !41
  br label %178

178:                                              ; preds = %164, %172, %175
  %179 = getelementptr inbounds i8, ptr %160, i64 40
  store i32 0, ptr %179, align 8, !tbaa !44
  %180 = getelementptr inbounds i8, ptr %160, i64 44
  store i32 0, ptr %180, align 4, !tbaa !45
  br label %186

181:                                              ; preds = %150
  %182 = getelementptr inbounds i8, ptr %0, i64 576
  %183 = load ptr, ptr %182, align 8, !tbaa !67
  %184 = getelementptr inbounds i8, ptr %183, i64 24
  %185 = load ptr, ptr %184, align 8, !tbaa !68
  tail call void %185(ptr noundef nonnull %0) #5
  br label %186

186:                                              ; preds = %181, %178, %47
  %187 = phi i32 [ 0, %47 ], [ 3, %178 ], [ 4, %181 ]
  ret i32 %187
}

; Function Attrs: nounwind
define internal signext range(i32 0, 5) i32 @decompress_smooth_data(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i16], align 2
  %4 = getelementptr inbounds i8, ptr %0, i64 560
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds i8, ptr %0, i64 420
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = add i32 %7, -1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #5
  %9 = getelementptr inbounds i8, ptr %0, i64 172
  %10 = getelementptr inbounds i8, ptr %0, i64 180
  %11 = getelementptr inbounds i8, ptr %0, i64 576
  %12 = getelementptr inbounds i8, ptr %0, i64 524
  %13 = getelementptr inbounds i8, ptr %0, i64 176
  %14 = getelementptr inbounds i8, ptr %0, i64 184
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, ptr %9, align 4, !tbaa !70
  %17 = load i32, ptr %10, align 4, !tbaa !71
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %11, align 8, !tbaa !67
  %21 = getelementptr inbounds i8, ptr %20, i64 36
  %22 = load i32, ptr %21, align 4, !tbaa !89
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = icmp eq i32 %16, %17
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = load i32, ptr %12, align 4, !tbaa !90
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, ptr %13, align 8, !tbaa !39
  %31 = load i32, ptr %14, align 8, !tbaa !52
  %32 = add i32 %31, %29
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %26, %24
  %35 = load ptr, ptr %20, align 8, !tbaa !72
  %36 = tail call signext i32 %35(ptr noundef nonnull %0) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %413, label %15, !llvm.loop !91

38:                                               ; preds = %26, %15, %19
  %39 = getelementptr inbounds i8, ptr %0, i64 56
  %40 = load i32, ptr %39, align 8, !tbaa !23
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %407

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %0, i64 304
  %44 = load ptr, ptr %43, align 8, !tbaa !24
  %45 = getelementptr inbounds i8, ptr %0, i64 8
  %46 = getelementptr inbounds i8, ptr %5, i64 136
  %47 = getelementptr inbounds i8, ptr %5, i64 216
  %48 = getelementptr inbounds i8, ptr %0, i64 600
  %49 = getelementptr inbounds i8, ptr %3, i64 2
  %50 = getelementptr inbounds i8, ptr %3, i64 16
  %51 = getelementptr inbounds i8, ptr %3, i64 32
  %52 = getelementptr inbounds i8, ptr %3, i64 18
  %53 = getelementptr inbounds i8, ptr %3, i64 4
  br label %54

54:                                               ; preds = %42, %401
  %55 = phi i64 [ 0, %42 ], [ %402, %401 ]
  %56 = phi ptr [ %44, %42 ], [ %403, %401 ]
  %57 = getelementptr inbounds i8, ptr %56, i64 48
  %58 = load i32, ptr %57, align 8, !tbaa !74
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %401, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %14, align 8, !tbaa !52
  %62 = icmp uge i32 %61, %8
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, ptr %56, i64 12
  %65 = load i32, ptr %64, align 4, !tbaa !25
  %66 = shl nsw i32 %65, 1
  br label %75

67:                                               ; preds = %60
  %68 = getelementptr inbounds i8, ptr %56, i64 32
  %69 = load i32, ptr %68, align 8, !tbaa !31
  %70 = getelementptr inbounds i8, ptr %56, i64 12
  %71 = load i32, ptr %70, align 4, !tbaa !25
  %72 = urem i32 %69, %71
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 %71, i32 %72
  br label %75

75:                                               ; preds = %67, %63
  %76 = phi i32 [ %65, %63 ], [ %71, %67 ]
  %77 = phi i32 [ %66, %63 ], [ %74, %67 ]
  %78 = phi i32 [ %65, %63 ], [ %74, %67 ]
  %79 = icmp eq i32 %61, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %56, i64 12
  %82 = add nsw i32 %76, %77
  %83 = load ptr, ptr %45, align 8, !tbaa !6
  %84 = getelementptr inbounds i8, ptr %83, i64 64
  %85 = load ptr, ptr %84, align 8, !tbaa !53
  %86 = getelementptr inbounds [10 x ptr], ptr %46, i64 0, i64 %55
  %87 = load ptr, ptr %86, align 8, !tbaa !32
  %88 = add i32 %61, -1
  %89 = mul i32 %76, %88
  %90 = call ptr %85(ptr noundef nonnull %0, ptr noundef %87, i32 noundef signext %89, i32 noundef signext %82, i32 noundef signext 0) #5
  %91 = load i32, ptr %81, align 4, !tbaa !25
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92
  br label %101

94:                                               ; preds = %75
  %95 = load ptr, ptr %45, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %95, i64 64
  %97 = load ptr, ptr %96, align 8, !tbaa !53
  %98 = getelementptr inbounds [10 x ptr], ptr %46, i64 0, i64 %55
  %99 = load ptr, ptr %98, align 8, !tbaa !32
  %100 = call ptr %97(ptr noundef nonnull %0, ptr noundef %99, i32 noundef signext 0, i32 noundef signext %77, i32 noundef signext 0) #5
  br label %101

101:                                              ; preds = %94, %80
  %102 = phi ptr [ %93, %80 ], [ %100, %94 ]
  %103 = load ptr, ptr %48, align 8, !tbaa !75
  %104 = getelementptr inbounds i8, ptr %103, i64 8
  %105 = getelementptr inbounds [10 x ptr], ptr %104, i64 0, i64 %55
  %106 = load ptr, ptr %105, align 8, !tbaa !32
  %107 = icmp sgt i32 %78, 0
  br i1 %107, label %108, label %401

108:                                              ; preds = %101
  %109 = getelementptr inbounds ptr, ptr %1, i64 %55
  %110 = load ptr, ptr %109, align 8, !tbaa !32
  %111 = getelementptr inbounds i8, ptr %56, i64 80
  %112 = load ptr, ptr %111, align 8, !tbaa !48
  %113 = getelementptr inbounds i8, ptr %112, i64 4
  %114 = load i16, ptr %113, align 4, !tbaa !49
  %115 = zext i16 %114 to i64
  %116 = getelementptr inbounds i8, ptr %112, i64 18
  %117 = load i16, ptr %116, align 2, !tbaa !49
  %118 = zext i16 %117 to i64
  %119 = getelementptr inbounds i8, ptr %112, i64 32
  %120 = load i16, ptr %119, align 4, !tbaa !49
  %121 = zext i16 %120 to i64
  %122 = getelementptr inbounds i8, ptr %112, i64 16
  %123 = load i16, ptr %122, align 4, !tbaa !49
  %124 = zext i16 %123 to i64
  %125 = getelementptr inbounds i8, ptr %112, i64 2
  %126 = load i16, ptr %125, align 2, !tbaa !49
  %127 = zext i16 %126 to i64
  %128 = load i16, ptr %112, align 4, !tbaa !49
  %129 = zext i16 %128 to i64
  %130 = load ptr, ptr %47, align 8, !tbaa !22
  %131 = mul nuw nsw i64 %55, 6
  %132 = getelementptr inbounds i32, ptr %130, i64 %131
  %133 = add nsw i32 %78, -1
  %134 = getelementptr inbounds i8, ptr %56, i64 28
  %135 = getelementptr inbounds i8, ptr %132, i64 4
  %136 = mul nuw nsw i64 %129, 36
  %137 = shl nuw nsw i64 %127, 7
  %138 = shl nuw nsw i64 %127, 8
  %139 = getelementptr inbounds i8, ptr %132, i64 8
  %140 = shl nuw nsw i64 %124, 7
  %141 = shl nuw nsw i64 %124, 8
  %142 = getelementptr inbounds i8, ptr %132, i64 12
  %143 = mul nuw nsw i64 %129, 9
  %144 = shl nuw nsw i64 %121, 7
  %145 = shl nuw nsw i64 %121, 8
  %146 = getelementptr inbounds i8, ptr %132, i64 16
  %147 = mul nuw nsw i64 %129, 5
  %148 = shl nuw nsw i64 %118, 7
  %149 = shl nuw nsw i64 %118, 8
  %150 = getelementptr inbounds i8, ptr %132, i64 20
  %151 = shl nuw nsw i64 %115, 7
  %152 = shl nuw nsw i64 %115, 8
  %153 = getelementptr inbounds i8, ptr %56, i64 36
  %154 = zext nneg i32 %133 to i64
  %155 = zext nneg i32 %78 to i64
  br label %156

156:                                              ; preds = %108, %396
  %157 = phi i64 [ 0, %108 ], [ %399, %396 ]
  %158 = phi ptr [ %110, %108 ], [ %398, %396 ]
  %159 = getelementptr inbounds ptr, ptr %102, i64 %157
  %160 = load ptr, ptr %159, align 8, !tbaa !32
  %161 = trunc nuw nsw i64 %157 to i32
  %162 = or i32 %61, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %156
  %165 = add nsw i64 %157, -1
  %166 = getelementptr inbounds ptr, ptr %102, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !32
  br label %168

168:                                              ; preds = %156, %164
  %169 = phi ptr [ %167, %164 ], [ %160, %156 ]
  %170 = icmp eq i64 %157, %154
  %171 = select i1 %62, i1 %170, i1 false
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = add nuw nsw i64 %157, 1
  %174 = getelementptr inbounds ptr, ptr %102, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !32
  br label %176

176:                                              ; preds = %168, %172
  %177 = phi ptr [ %175, %172 ], [ %160, %168 ]
  %178 = load i16, ptr %169, align 2, !tbaa !49
  %179 = sext i16 %178 to i32
  %180 = load i16, ptr %160, align 2, !tbaa !49
  %181 = sext i16 %180 to i32
  %182 = load i16, ptr %177, align 2, !tbaa !49
  %183 = sext i16 %182 to i32
  %184 = load i32, ptr %134, align 4, !tbaa !29
  %185 = add i32 %184, -1
  br label %186

186:                                              ; preds = %176, %388
  %187 = phi i32 [ %183, %176 ], [ %212, %388 ]
  %188 = phi i32 [ %183, %176 ], [ %187, %388 ]
  %189 = phi i32 [ %181, %176 ], [ %211, %388 ]
  %190 = phi i32 [ %181, %176 ], [ %189, %388 ]
  %191 = phi i32 [ %179, %176 ], [ %210, %388 ]
  %192 = phi i32 [ %179, %176 ], [ %191, %388 ]
  %193 = phi i32 [ 0, %176 ], [ %394, %388 ]
  %194 = phi ptr [ %160, %176 ], [ %389, %388 ]
  %195 = phi ptr [ %169, %176 ], [ %390, %388 ]
  %196 = phi ptr [ %177, %176 ], [ %391, %388 ]
  %197 = phi i32 [ 0, %176 ], [ %393, %388 ]
  call void @jcopy_block_row(ptr noundef nonnull %194, ptr noundef nonnull %3, i32 noundef signext 1) #5
  %198 = icmp ult i32 %193, %185
  br i1 %198, label %199, label %209

199:                                              ; preds = %186
  %200 = getelementptr inbounds i8, ptr %195, i64 128
  %201 = load i16, ptr %200, align 2, !tbaa !49
  %202 = sext i16 %201 to i32
  %203 = getelementptr inbounds i8, ptr %194, i64 128
  %204 = load i16, ptr %203, align 2, !tbaa !49
  %205 = sext i16 %204 to i32
  %206 = getelementptr inbounds i8, ptr %196, i64 128
  %207 = load i16, ptr %206, align 2, !tbaa !49
  %208 = sext i16 %207 to i32
  br label %209

209:                                              ; preds = %199, %186
  %210 = phi i32 [ %202, %199 ], [ %191, %186 ]
  %211 = phi i32 [ %205, %199 ], [ %189, %186 ]
  %212 = phi i32 [ %208, %199 ], [ %187, %186 ]
  %213 = load i32, ptr %135, align 4, !tbaa !50
  %214 = icmp ne i32 %213, 0
  %215 = load i16, ptr %49, align 2
  %216 = icmp eq i16 %215, 0
  %217 = select i1 %214, i1 %216, i1 false
  br i1 %217, label %218, label %246

218:                                              ; preds = %209
  %219 = sub nsw i32 %190, %211
  %220 = sext i32 %219 to i64
  %221 = mul nsw i64 %136, %220
  %222 = icmp sgt i64 %221, -1
  %223 = icmp sgt i32 %213, 0
  br i1 %222, label %224, label %233

224:                                              ; preds = %218
  %225 = add nuw nsw i64 %221, %137
  %226 = udiv i64 %225, %138
  %227 = trunc i64 %226 to i32
  br i1 %223, label %228, label %243

228:                                              ; preds = %224
  %229 = shl nuw i32 1, %213
  %230 = icmp sgt i32 %229, %227
  %231 = add nsw i32 %229, -1
  %232 = select i1 %230, i32 %227, i32 %231
  br label %243

233:                                              ; preds = %218
  %234 = sub nsw i64 %137, %221
  %235 = udiv i64 %234, %138
  %236 = trunc i64 %235 to i32
  %237 = shl nuw i32 1, %213
  %238 = icmp sgt i32 %237, %236
  %239 = add nsw i32 %237, -1
  %240 = select i1 %238, i32 %236, i32 %239
  %241 = select i1 %223, i32 %240, i32 %236
  %242 = sub nsw i32 0, %241
  br label %243

243:                                              ; preds = %228, %224, %233
  %244 = phi i32 [ %227, %224 ], [ %242, %233 ], [ %232, %228 ]
  %245 = trunc i32 %244 to i16
  store i16 %245, ptr %49, align 2, !tbaa !49
  br label %246

246:                                              ; preds = %243, %209
  %247 = load i32, ptr %139, align 4, !tbaa !50
  %248 = icmp ne i32 %247, 0
  %249 = load i16, ptr %50, align 2
  %250 = icmp eq i16 %249, 0
  %251 = select i1 %248, i1 %250, i1 false
  br i1 %251, label %252, label %280

252:                                              ; preds = %246
  %253 = sub nsw i32 %191, %187
  %254 = sext i32 %253 to i64
  %255 = mul nsw i64 %136, %254
  %256 = icmp sgt i64 %255, -1
  %257 = icmp sgt i32 %247, 0
  br i1 %256, label %258, label %267

258:                                              ; preds = %252
  %259 = add nuw nsw i64 %255, %140
  %260 = udiv i64 %259, %141
  %261 = trunc i64 %260 to i32
  br i1 %257, label %262, label %277

262:                                              ; preds = %258
  %263 = shl nuw i32 1, %247
  %264 = icmp sgt i32 %263, %261
  %265 = add nsw i32 %263, -1
  %266 = select i1 %264, i32 %261, i32 %265
  br label %277

267:                                              ; preds = %252
  %268 = sub nsw i64 %140, %255
  %269 = udiv i64 %268, %141
  %270 = trunc i64 %269 to i32
  %271 = shl nuw i32 1, %247
  %272 = icmp sgt i32 %271, %270
  %273 = add nsw i32 %271, -1
  %274 = select i1 %272, i32 %270, i32 %273
  %275 = select i1 %257, i32 %274, i32 %270
  %276 = sub nsw i32 0, %275
  br label %277

277:                                              ; preds = %262, %258, %267
  %278 = phi i32 [ %261, %258 ], [ %276, %267 ], [ %266, %262 ]
  %279 = trunc i32 %278 to i16
  store i16 %279, ptr %50, align 2, !tbaa !49
  br label %280

280:                                              ; preds = %277, %246
  %281 = load i32, ptr %142, align 4, !tbaa !50
  %282 = icmp ne i32 %281, 0
  %283 = load i16, ptr %51, align 2
  %284 = icmp eq i16 %283, 0
  %285 = select i1 %282, i1 %284, i1 false
  br i1 %285, label %286, label %316

286:                                              ; preds = %280
  %287 = shl nsw i32 %189, 1
  %288 = sub i32 %191, %287
  %289 = add i32 %288, %187
  %290 = sext i32 %289 to i64
  %291 = mul nsw i64 %143, %290
  %292 = icmp sgt i64 %291, -1
  %293 = icmp sgt i32 %281, 0
  br i1 %292, label %294, label %303

294:                                              ; preds = %286
  %295 = add nuw nsw i64 %291, %144
  %296 = udiv i64 %295, %145
  %297 = trunc i64 %296 to i32
  br i1 %293, label %298, label %313

298:                                              ; preds = %294
  %299 = shl nuw i32 1, %281
  %300 = icmp sgt i32 %299, %297
  %301 = add nsw i32 %299, -1
  %302 = select i1 %300, i32 %297, i32 %301
  br label %313

303:                                              ; preds = %286
  %304 = sub nsw i64 %144, %291
  %305 = udiv i64 %304, %145
  %306 = trunc i64 %305 to i32
  %307 = shl nuw i32 1, %281
  %308 = icmp sgt i32 %307, %306
  %309 = add nsw i32 %307, -1
  %310 = select i1 %308, i32 %306, i32 %309
  %311 = select i1 %293, i32 %310, i32 %306
  %312 = sub nsw i32 0, %311
  br label %313

313:                                              ; preds = %298, %294, %303
  %314 = phi i32 [ %297, %294 ], [ %312, %303 ], [ %302, %298 ]
  %315 = trunc i32 %314 to i16
  store i16 %315, ptr %51, align 2, !tbaa !49
  br label %316

316:                                              ; preds = %313, %280
  %317 = load i32, ptr %146, align 4, !tbaa !50
  %318 = icmp ne i32 %317, 0
  %319 = load i16, ptr %52, align 2
  %320 = icmp eq i16 %319, 0
  %321 = select i1 %318, i1 %320, i1 false
  br i1 %321, label %322, label %352

322:                                              ; preds = %316
  %323 = add nsw i32 %188, %210
  %324 = sub nsw i32 %192, %323
  %325 = add nsw i32 %324, %212
  %326 = sext i32 %325 to i64
  %327 = mul nsw i64 %147, %326
  %328 = icmp sgt i64 %327, -1
  %329 = icmp sgt i32 %317, 0
  br i1 %328, label %330, label %339

330:                                              ; preds = %322
  %331 = add nuw nsw i64 %327, %148
  %332 = udiv i64 %331, %149
  %333 = trunc i64 %332 to i32
  br i1 %329, label %334, label %349

334:                                              ; preds = %330
  %335 = shl nuw i32 1, %317
  %336 = icmp sgt i32 %335, %333
  %337 = add nsw i32 %335, -1
  %338 = select i1 %336, i32 %333, i32 %337
  br label %349

339:                                              ; preds = %322
  %340 = sub nsw i64 %148, %327
  %341 = udiv i64 %340, %149
  %342 = trunc i64 %341 to i32
  %343 = shl nuw i32 1, %317
  %344 = icmp sgt i32 %343, %342
  %345 = add nsw i32 %343, -1
  %346 = select i1 %344, i32 %342, i32 %345
  %347 = select i1 %329, i32 %346, i32 %342
  %348 = sub nsw i32 0, %347
  br label %349

349:                                              ; preds = %334, %330, %339
  %350 = phi i32 [ %333, %330 ], [ %348, %339 ], [ %338, %334 ]
  %351 = trunc i32 %350 to i16
  store i16 %351, ptr %52, align 2, !tbaa !49
  br label %352

352:                                              ; preds = %349, %316
  %353 = load i32, ptr %150, align 4, !tbaa !50
  %354 = icmp ne i32 %353, 0
  %355 = load i16, ptr %53, align 2
  %356 = icmp eq i16 %355, 0
  %357 = select i1 %354, i1 %356, i1 false
  br i1 %357, label %358, label %388

358:                                              ; preds = %352
  %359 = shl nsw i32 %189, 1
  %360 = sub i32 %190, %359
  %361 = add i32 %360, %211
  %362 = sext i32 %361 to i64
  %363 = mul nsw i64 %143, %362
  %364 = icmp sgt i64 %363, -1
  %365 = icmp sgt i32 %353, 0
  br i1 %364, label %366, label %375

366:                                              ; preds = %358
  %367 = add nuw nsw i64 %363, %151
  %368 = udiv i64 %367, %152
  %369 = trunc i64 %368 to i32
  br i1 %365, label %370, label %385

370:                                              ; preds = %366
  %371 = shl nuw i32 1, %353
  %372 = icmp sgt i32 %371, %369
  %373 = add nsw i32 %371, -1
  %374 = select i1 %372, i32 %369, i32 %373
  br label %385

375:                                              ; preds = %358
  %376 = sub nsw i64 %151, %363
  %377 = udiv i64 %376, %152
  %378 = trunc i64 %377 to i32
  %379 = shl nuw i32 1, %353
  %380 = icmp sgt i32 %379, %378
  %381 = add nsw i32 %379, -1
  %382 = select i1 %380, i32 %378, i32 %381
  %383 = select i1 %365, i32 %382, i32 %378
  %384 = sub nsw i32 0, %383
  br label %385

385:                                              ; preds = %370, %366, %375
  %386 = phi i32 [ %369, %366 ], [ %384, %375 ], [ %374, %370 ]
  %387 = trunc i32 %386 to i16
  store i16 %387, ptr %53, align 2, !tbaa !49
  br label %388

388:                                              ; preds = %385, %352
  call void %106(ptr noundef %0, ptr noundef nonnull %56, ptr noundef nonnull %3, ptr noundef %158, i32 noundef signext %197) #5
  %389 = getelementptr inbounds i8, ptr %194, i64 128
  %390 = getelementptr inbounds i8, ptr %195, i64 128
  %391 = getelementptr inbounds i8, ptr %196, i64 128
  %392 = load i32, ptr %153, align 4, !tbaa !76
  %393 = add i32 %392, %197
  %394 = add i32 %193, 1
  %395 = icmp ugt i32 %394, %185
  br i1 %395, label %396, label %186, !llvm.loop !92

396:                                              ; preds = %388
  %397 = sext i32 %392 to i64
  %398 = getelementptr inbounds ptr, ptr %158, i64 %397
  %399 = add nuw nsw i64 %157, 1
  %400 = icmp eq i64 %399, %155
  br i1 %400, label %401, label %156, !llvm.loop !93

401:                                              ; preds = %396, %101, %54
  %402 = add nuw nsw i64 %55, 1
  %403 = getelementptr inbounds i8, ptr %56, i64 96
  %404 = load i32, ptr %39, align 8, !tbaa !23
  %405 = sext i32 %404 to i64
  %406 = icmp slt i64 %402, %405
  br i1 %406, label %54, label %407, !llvm.loop !94

407:                                              ; preds = %401, %38
  %408 = load i32, ptr %14, align 8, !tbaa !52
  %409 = add i32 %408, 1
  store i32 %409, ptr %14, align 8, !tbaa !52
  %410 = load i32, ptr %6, align 4, !tbaa !42
  %411 = icmp ult i32 %409, %410
  %412 = select i1 %411, i32 3, i32 4
  br label %413

413:                                              ; preds = %34, %407
  %414 = phi i32 [ %412, %407 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #5
  ret i32 %414
}

declare dso_local void @jcopy_block_row(ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 560}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !11, i64 40, !11, i64 44, !11, i64 48, !9, i64 56, !9, i64 136, !8, i64 216}
!20 = !{!"jpeg_d_coef_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!21 = !{!19, !8, i64 16}
!22 = !{!19, !8, i64 216}
!23 = !{!7, !11, i64 56}
!24 = !{!7, !8, i64 304}
!25 = !{!26, !11, i64 12}
!26 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!27 = !{!7, !11, i64 312}
!28 = !{!15, !8, i64 40}
!29 = !{!26, !11, i64 28}
!30 = !{!26, !11, i64 8}
!31 = !{!26, !11, i64 32}
!32 = !{!8, !8, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!19, !8, i64 8}
!36 = !{!19, !8, i64 24}
!37 = !{!15, !8, i64 8}
!38 = !{!19, !8, i64 32}
!39 = !{!7, !11, i64 176}
!40 = !{!7, !11, i64 432}
!41 = !{!19, !11, i64 48}
!42 = !{!7, !11, i64 420}
!43 = !{!26, !11, i64 72}
!44 = !{!19, !11, i64 40}
!45 = !{!19, !11, i64 44}
!46 = !{!7, !11, i64 104}
!47 = !{!7, !8, i64 192}
!48 = !{!26, !8, i64 80}
!49 = !{!13, !13, i64 0}
!50 = !{!11, !11, i64 0}
!51 = distinct !{!51, !34}
!52 = !{!7, !11, i64 184}
!53 = !{!15, !8, i64 64}
!54 = !{!26, !11, i64 4}
!55 = distinct !{!55, !34}
!56 = !{!7, !11, i64 472}
!57 = !{!26, !11, i64 52}
!58 = !{!26, !11, i64 56}
!59 = distinct !{!59, !34}
!60 = distinct !{!60, !34}
!61 = distinct !{!61, !34}
!62 = !{!7, !8, i64 592}
!63 = !{!64, !8, i64 8}
!64 = !{!"jpeg_entropy_decoder", !8, i64 0, !8, i64 8, !11, i64 16}
!65 = distinct !{!65, !34}
!66 = distinct !{!66, !34}
!67 = !{!7, !8, i64 576}
!68 = !{!69, !8, i64 24}
!69 = !{!"jpeg_input_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36}
!70 = !{!7, !11, i64 172}
!71 = !{!7, !11, i64 180}
!72 = !{!69, !8, i64 0}
!73 = distinct !{!73, !34}
!74 = !{!26, !11, i64 48}
!75 = !{!7, !8, i64 600}
!76 = !{!26, !11, i64 36}
!77 = distinct !{!77, !34}
!78 = distinct !{!78, !34, !79}
!79 = !{!"llvm.loop.unswitch.partial.disable"}
!80 = distinct !{!80, !34}
!81 = !{!7, !11, i64 480}
!82 = !{!26, !11, i64 60}
!83 = !{!26, !11, i64 64}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, !34}
!86 = distinct !{!86, !34}
!87 = distinct !{!87, !34}
!88 = distinct !{!88, !34}
!89 = !{!69, !11, i64 36}
!90 = !{!7, !11, i64 524}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, !34}
