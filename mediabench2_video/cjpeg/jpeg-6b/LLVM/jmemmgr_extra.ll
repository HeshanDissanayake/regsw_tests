; ModuleID = 'jmemmgr.c'
source_filename = "jmemmgr.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@.str = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@first_pool_slop = internal unnamed_addr constant [2 x i64] [i64 1600, i64 16000], align 8
@extra_pool_slop = internal unnamed_addr constant [2 x i64] [i64 0, i64 5000], align 8

; Function Attrs: nounwind
define dso_local void @jinit_memory_mgr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr null, ptr %4, align 8, !tbaa !6
  %5 = tail call i64 @jpeg_mem_init(ptr noundef %0) #6
  store i64 %5, ptr %2, align 8, !tbaa !12
  %6 = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef 168) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  tail call void @jpeg_mem_term(ptr noundef nonnull %0) #6
  %9 = load ptr, ptr %0, align 8, !tbaa !14
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  store i32 54, ptr %10, align 8, !tbaa !15
  %11 = getelementptr inbounds i8, ptr %9, i64 44
  store i32 0, ptr %11, align 4, !tbaa !17
  %12 = load ptr, ptr %0, align 8, !tbaa !14
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %0) #6
  br label %14

14:                                               ; preds = %8, %1
  store ptr @alloc_small, ptr %6, align 8, !tbaa !19
  %15 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr @alloc_large, ptr %15, align 8, !tbaa !22
  %16 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr @alloc_sarray, ptr %16, align 8, !tbaa !23
  %17 = getelementptr inbounds i8, ptr %6, i64 24
  store ptr @alloc_barray, ptr %17, align 8, !tbaa !24
  %18 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr @request_virt_sarray, ptr %18, align 8, !tbaa !25
  %19 = getelementptr inbounds i8, ptr %6, i64 40
  store ptr @request_virt_barray, ptr %19, align 8, !tbaa !26
  %20 = getelementptr inbounds i8, ptr %6, i64 48
  store ptr @realize_virt_arrays, ptr %20, align 8, !tbaa !27
  %21 = getelementptr inbounds i8, ptr %6, i64 56
  store ptr @access_virt_sarray, ptr %21, align 8, !tbaa !28
  %22 = getelementptr inbounds i8, ptr %6, i64 64
  store ptr @access_virt_barray, ptr %22, align 8, !tbaa !29
  %23 = getelementptr inbounds i8, ptr %6, i64 72
  store ptr @free_pool, ptr %23, align 8, !tbaa !30
  %24 = getelementptr inbounds i8, ptr %6, i64 80
  store ptr @self_destruct, ptr %24, align 8, !tbaa !31
  %25 = getelementptr inbounds i8, ptr %6, i64 96
  store i64 1000000000, ptr %25, align 8, !tbaa !32
  %26 = getelementptr inbounds i8, ptr %6, i64 88
  store i64 %5, ptr %26, align 8, !tbaa !33
  %27 = getelementptr inbounds i8, ptr %6, i64 104
  %28 = getelementptr inbounds i8, ptr %6, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %27, i8 0, i64 48, i1 false)
  store i64 168, ptr %28, align 8, !tbaa !34
  store ptr %6, ptr %4, align 8, !tbaa !6
  %29 = tail call ptr @getenv(ptr noundef nonnull @.str) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 120, ptr %3, align 1, !tbaa !17
  %32 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %29, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8, ptr %3, align 1
  %36 = and i8 %35, -33
  %37 = icmp eq i8 %36, 77
  %38 = load i64, ptr %2, align 8, !tbaa !12
  %39 = mul nsw i64 %38, 1000
  %40 = select i1 %37, i64 %39, i64 %38
  %41 = mul nsw i64 %40, 1000
  store i64 %41, ptr %26, align 8, !tbaa !33
  br label %42

42:                                               ; preds = %34, %31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br label %43

43:                                               ; preds = %42, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local i64 @jpeg_mem_init(ptr noundef) local_unnamed_addr #2

declare dso_local ptr @jpeg_get_small(ptr noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @jpeg_mem_term(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal ptr @alloc_small(ptr noundef %0, i32 noundef signext %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp ugt i64 %2, 999999976
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 54, ptr %9, align 8, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 1, ptr %10, align 4, !tbaa !17
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  tail call void %12(ptr noundef nonnull %0) #6
  br label %13

13:                                               ; preds = %7, %3
  %14 = add i64 %2, 7
  %15 = and i64 %14, -8
  %16 = icmp ugt i32 %1, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  store i32 14, ptr %19, align 8, !tbaa !15
  %20 = getelementptr inbounds i8, ptr %18, i64 44
  store i32 %1, ptr %20, align 4, !tbaa !17
  %21 = load ptr, ptr %0, align 8, !tbaa !14
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  tail call void %22(ptr noundef nonnull %0) #6
  br label %23

23:                                               ; preds = %13, %17
  %24 = getelementptr inbounds i8, ptr %5, i64 104
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds [2 x ptr], ptr %24, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %32

29:                                               ; preds = %32
  %30 = load ptr, ptr %33, align 8, !tbaa !17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !llvm.loop !35

32:                                               ; preds = %23, %29
  %33 = phi ptr [ %30, %29 ], [ %27, %23 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 16
  %35 = load i64, ptr %34, align 8, !tbaa !17
  %36 = icmp ult i64 %35, %15
  br i1 %36, label %29, label %73, !llvm.loop !35

37:                                               ; preds = %29, %23
  %38 = phi ptr [ null, %23 ], [ %33, %29 ]
  %39 = add i64 %15, 24
  %40 = icmp eq ptr %38, null
  %41 = select i1 %40, ptr @first_pool_slop, ptr @extra_pool_slop
  %42 = getelementptr inbounds [2 x i64], ptr %41, i64 0, i64 %25
  %43 = load i64, ptr %42, align 8, !tbaa !12
  %44 = sub i64 999999976, %15
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44)
  %46 = add i64 %39, %45
  %47 = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef %46) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %37, %59
  %50 = phi i64 [ %51, %59 ], [ %45, %37 ]
  %51 = lshr i64 %50, 1
  %52 = icmp ult i64 %50, 100
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 8, !tbaa !14
  %55 = getelementptr inbounds i8, ptr %54, i64 40
  store i32 54, ptr %55, align 8, !tbaa !15
  %56 = getelementptr inbounds i8, ptr %54, i64 44
  store i32 2, ptr %56, align 4, !tbaa !17
  %57 = load ptr, ptr %0, align 8, !tbaa !14
  %58 = load ptr, ptr %57, align 8, !tbaa !18
  tail call void %58(ptr noundef nonnull %0) #6
  br label %59

59:                                               ; preds = %53, %49
  %60 = add i64 %39, %51
  %61 = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef %60) #6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %49, label %63

63:                                               ; preds = %59, %37
  %64 = phi i64 [ %45, %37 ], [ %51, %59 ]
  %65 = phi i64 [ %46, %37 ], [ %60, %59 ]
  %66 = phi ptr [ %47, %37 ], [ %61, %59 ]
  %67 = getelementptr inbounds i8, ptr %5, i64 152
  %68 = load i64, ptr %67, align 8, !tbaa !34
  %69 = add i64 %68, %65
  store i64 %69, ptr %67, align 8, !tbaa !34
  %70 = add i64 %64, %15
  %71 = getelementptr inbounds i8, ptr %66, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  store i64 %70, ptr %71, align 8, !tbaa !17
  %72 = select i1 %40, ptr %26, ptr %38
  store ptr %66, ptr %72, align 8, !tbaa !17
  br label %73

73:                                               ; preds = %32, %63
  %74 = phi ptr [ %66, %63 ], [ %33, %32 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 24
  %76 = getelementptr inbounds i8, ptr %74, i64 8
  %77 = load i64, ptr %76, align 8, !tbaa !17
  %78 = getelementptr inbounds i8, ptr %75, i64 %77
  %79 = add i64 %77, %15
  store i64 %79, ptr %76, align 8, !tbaa !17
  %80 = getelementptr inbounds i8, ptr %74, i64 16
  %81 = load i64, ptr %80, align 8, !tbaa !17
  %82 = sub i64 %81, %15
  store i64 %82, ptr %80, align 8, !tbaa !17
  ret ptr %78
}

; Function Attrs: nounwind
define internal ptr @alloc_large(ptr noundef %0, i32 noundef signext %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp ugt i64 %2, 999999976
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 54, ptr %9, align 8, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 3, ptr %10, align 4, !tbaa !17
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  tail call void %12(ptr noundef nonnull %0) #6
  br label %13

13:                                               ; preds = %7, %3
  %14 = add i64 %2, 7
  %15 = and i64 %14, -8
  %16 = icmp ugt i32 %1, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  store i32 14, ptr %19, align 8, !tbaa !15
  %20 = getelementptr inbounds i8, ptr %18, i64 44
  store i32 %1, ptr %20, align 4, !tbaa !17
  %21 = load ptr, ptr %0, align 8, !tbaa !14
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  tail call void %22(ptr noundef nonnull %0) #6
  br label %23

23:                                               ; preds = %13, %17
  %24 = add i64 %15, 24
  %25 = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %24) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !14
  %29 = getelementptr inbounds i8, ptr %28, i64 40
  store i32 54, ptr %29, align 8, !tbaa !15
  %30 = getelementptr inbounds i8, ptr %28, i64 44
  store i32 4, ptr %30, align 4, !tbaa !17
  %31 = load ptr, ptr %0, align 8, !tbaa !14
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  tail call void %32(ptr noundef nonnull %0) #6
  br label %33

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds i8, ptr %5, i64 152
  %35 = load i64, ptr %34, align 8, !tbaa !34
  %36 = add i64 %35, %24
  store i64 %36, ptr %34, align 8, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %5, i64 120
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds [2 x ptr], ptr %37, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !37
  store ptr %40, ptr %25, align 8, !tbaa !17
  %41 = getelementptr inbounds i8, ptr %25, i64 8
  store i64 %15, ptr %41, align 8, !tbaa !17
  %42 = getelementptr inbounds i8, ptr %25, i64 16
  store i64 0, ptr %42, align 8, !tbaa !17
  store ptr %25, ptr %39, align 8, !tbaa !37
  %43 = getelementptr inbounds i8, ptr %25, i64 24
  ret ptr %43
}

; Function Attrs: nounwind
define internal ptr @alloc_sarray(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = zext i32 %2 to i64
  %8 = udiv i32 999999976, %2
  %9 = icmp ugt i32 %2, 999999976
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = getelementptr inbounds i8, ptr %11, i64 40
  store i32 70, ptr %12, align 8, !tbaa !15
  %13 = load ptr, ptr %11, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %0) #6
  br label %14

14:                                               ; preds = %10, %4
  %15 = zext i32 %3 to i64
  %16 = tail call i32 @llvm.umin.i32(i32 %8, i32 %3)
  %17 = getelementptr inbounds i8, ptr %6, i64 160
  store i32 %16, ptr %17, align 8, !tbaa !38
  %18 = shl nuw nsw i64 %15, 3
  %19 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef signext %1, i64 noundef %18)
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %83, label %21

21:                                               ; preds = %14
  %22 = icmp ugt i32 %1, 1
  %23 = sext i32 %1 to i64
  br label %27

24:                                               ; preds = %73, %61
  %25 = phi i32 [ %28, %61 ], [ %77, %73 ]
  %26 = icmp ult i32 %25, %3
  br i1 %26, label %27, label %83, !llvm.loop !39

27:                                               ; preds = %21, %24
  %28 = phi i32 [ 0, %21 ], [ %25, %24 ]
  %29 = phi i32 [ %16, %21 ], [ %31, %24 ]
  %30 = sub i32 %3, %28
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 %30)
  %32 = zext nneg i32 %31 to i64
  %33 = mul nuw nsw i64 %32, %7
  %34 = load ptr, ptr %5, align 8, !tbaa !6
  %35 = icmp ugt i64 %33, 999999976
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load ptr, ptr %0, align 8, !tbaa !14
  %38 = getelementptr inbounds i8, ptr %37, i64 40
  store i32 54, ptr %38, align 8, !tbaa !15
  %39 = getelementptr inbounds i8, ptr %37, i64 44
  store i32 3, ptr %39, align 4, !tbaa !17
  %40 = load ptr, ptr %0, align 8, !tbaa !14
  %41 = load ptr, ptr %40, align 8, !tbaa !18
  tail call void %41(ptr noundef nonnull %0) #6
  br label %42

42:                                               ; preds = %36, %27
  %43 = add nuw nsw i64 %33, 7
  %44 = and i64 %43, 9223372036854775800
  br i1 %22, label %45, label %51

45:                                               ; preds = %42
  %46 = load ptr, ptr %0, align 8, !tbaa !14
  %47 = getelementptr inbounds i8, ptr %46, i64 40
  store i32 14, ptr %47, align 8, !tbaa !15
  %48 = getelementptr inbounds i8, ptr %46, i64 44
  store i32 %1, ptr %48, align 4, !tbaa !17
  %49 = load ptr, ptr %0, align 8, !tbaa !14
  %50 = load ptr, ptr %49, align 8, !tbaa !18
  tail call void %50(ptr noundef nonnull %0) #6
  br label %51

51:                                               ; preds = %45, %42
  %52 = add nuw nsw i64 %44, 24
  %53 = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %52) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load ptr, ptr %0, align 8, !tbaa !14
  %57 = getelementptr inbounds i8, ptr %56, i64 40
  store i32 54, ptr %57, align 8, !tbaa !15
  %58 = getelementptr inbounds i8, ptr %56, i64 44
  store i32 4, ptr %58, align 4, !tbaa !17
  %59 = load ptr, ptr %0, align 8, !tbaa !14
  %60 = load ptr, ptr %59, align 8, !tbaa !18
  tail call void %60(ptr noundef nonnull %0) #6
  br label %61

61:                                               ; preds = %51, %55
  %62 = getelementptr inbounds i8, ptr %34, i64 152
  %63 = load i64, ptr %62, align 8, !tbaa !34
  %64 = add i64 %63, %52
  store i64 %64, ptr %62, align 8, !tbaa !34
  %65 = getelementptr inbounds i8, ptr %34, i64 120
  %66 = getelementptr inbounds [2 x ptr], ptr %65, i64 0, i64 %23
  %67 = load ptr, ptr %66, align 8, !tbaa !37
  store ptr %67, ptr %53, align 8, !tbaa !17
  %68 = getelementptr inbounds i8, ptr %53, i64 8
  store i64 %44, ptr %68, align 8, !tbaa !17
  %69 = getelementptr inbounds i8, ptr %53, i64 16
  store i64 0, ptr %69, align 8, !tbaa !17
  store ptr %53, ptr %66, align 8, !tbaa !37
  %70 = icmp eq i32 %31, 0
  br i1 %70, label %24, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds i8, ptr %53, i64 24
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi ptr [ %80, %73 ], [ %72, %71 ]
  %75 = phi i32 [ %81, %73 ], [ %31, %71 ]
  %76 = phi i32 [ %77, %73 ], [ %28, %71 ]
  %77 = add i32 %76, 1
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds ptr, ptr %19, i64 %78
  store ptr %74, ptr %79, align 8, !tbaa !37
  %80 = getelementptr inbounds i8, ptr %74, i64 %7
  %81 = add i32 %75, -1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %24, label %73, !llvm.loop !40

83:                                               ; preds = %24, %14
  ret ptr %19
}

; Function Attrs: nounwind
define internal ptr @alloc_barray(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = zext i32 %2 to i64
  %8 = shl nuw nsw i64 %7, 7
  %9 = udiv i64 999999976, %8
  %10 = icmp ugt i32 %2, 7812499
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !14
  %13 = getelementptr inbounds i8, ptr %12, i64 40
  store i32 70, ptr %13, align 8, !tbaa !15
  %14 = load ptr, ptr %12, align 8, !tbaa !18
  tail call void %14(ptr noundef nonnull %0) #6
  br label %15

15:                                               ; preds = %11, %4
  %16 = zext i32 %3 to i64
  %17 = icmp ult i64 %9, %16
  %18 = trunc nuw nsw i64 %9 to i32
  %19 = select i1 %17, i32 %18, i32 %3
  %20 = getelementptr inbounds i8, ptr %6, i64 160
  store i32 %19, ptr %20, align 8, !tbaa !38
  %21 = shl nuw nsw i64 %16, 3
  %22 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef signext %1, i64 noundef %21)
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %84, label %24

24:                                               ; preds = %15
  %25 = icmp ugt i32 %1, 1
  %26 = sext i32 %1 to i64
  br label %30

27:                                               ; preds = %74, %62
  %28 = phi i32 [ %31, %62 ], [ %78, %74 ]
  %29 = icmp ult i32 %28, %3
  br i1 %29, label %30, label %84, !llvm.loop !41

30:                                               ; preds = %24, %27
  %31 = phi i32 [ 0, %24 ], [ %28, %27 ]
  %32 = phi i32 [ %19, %24 ], [ %34, %27 ]
  %33 = sub i32 %3, %31
  %34 = tail call i32 @llvm.umin.i32(i32 %32, i32 %33)
  %35 = zext i32 %34 to i64
  %36 = mul i64 %8, %35
  %37 = load ptr, ptr %5, align 8, !tbaa !6
  %38 = icmp ugt i64 %36, 999999976
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load ptr, ptr %0, align 8, !tbaa !14
  %41 = getelementptr inbounds i8, ptr %40, i64 40
  store i32 54, ptr %41, align 8, !tbaa !15
  %42 = getelementptr inbounds i8, ptr %40, i64 44
  store i32 3, ptr %42, align 4, !tbaa !17
  %43 = load ptr, ptr %0, align 8, !tbaa !14
  %44 = load ptr, ptr %43, align 8, !tbaa !18
  tail call void %44(ptr noundef nonnull %0) #6
  br label %45

45:                                               ; preds = %39, %30
  br i1 %25, label %46, label %52

46:                                               ; preds = %45
  %47 = load ptr, ptr %0, align 8, !tbaa !14
  %48 = getelementptr inbounds i8, ptr %47, i64 40
  store i32 14, ptr %48, align 8, !tbaa !15
  %49 = getelementptr inbounds i8, ptr %47, i64 44
  store i32 %1, ptr %49, align 4, !tbaa !17
  %50 = load ptr, ptr %0, align 8, !tbaa !14
  %51 = load ptr, ptr %50, align 8, !tbaa !18
  tail call void %51(ptr noundef nonnull %0) #6
  br label %52

52:                                               ; preds = %46, %45
  %53 = or disjoint i64 %36, 24
  %54 = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %53) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8, !tbaa !14
  %58 = getelementptr inbounds i8, ptr %57, i64 40
  store i32 54, ptr %58, align 8, !tbaa !15
  %59 = getelementptr inbounds i8, ptr %57, i64 44
  store i32 4, ptr %59, align 4, !tbaa !17
  %60 = load ptr, ptr %0, align 8, !tbaa !14
  %61 = load ptr, ptr %60, align 8, !tbaa !18
  tail call void %61(ptr noundef nonnull %0) #6
  br label %62

62:                                               ; preds = %52, %56
  %63 = getelementptr inbounds i8, ptr %37, i64 152
  %64 = load i64, ptr %63, align 8, !tbaa !34
  %65 = add i64 %64, %53
  store i64 %65, ptr %63, align 8, !tbaa !34
  %66 = getelementptr inbounds i8, ptr %37, i64 120
  %67 = getelementptr inbounds [2 x ptr], ptr %66, i64 0, i64 %26
  %68 = load ptr, ptr %67, align 8, !tbaa !37
  store ptr %68, ptr %54, align 8, !tbaa !17
  %69 = getelementptr inbounds i8, ptr %54, i64 8
  store i64 %36, ptr %69, align 8, !tbaa !17
  %70 = getelementptr inbounds i8, ptr %54, i64 16
  store i64 0, ptr %70, align 8, !tbaa !17
  store ptr %54, ptr %67, align 8, !tbaa !37
  %71 = icmp eq i32 %34, 0
  br i1 %71, label %27, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds i8, ptr %54, i64 24
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi ptr [ %81, %74 ], [ %73, %72 ]
  %76 = phi i32 [ %82, %74 ], [ %34, %72 ]
  %77 = phi i32 [ %78, %74 ], [ %31, %72 ]
  %78 = add i32 %77, 1
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds ptr, ptr %22, i64 %79
  store ptr %75, ptr %80, align 8, !tbaa !37
  %81 = getelementptr inbounds [64 x i16], ptr %75, i64 %7
  %82 = add i32 %76, -1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %27, label %74, !llvm.loop !42

84:                                               ; preds = %27, %15
  ret ptr %22
}

; Function Attrs: nounwind
define internal noundef ptr @request_virt_sarray(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) #0 {
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = getelementptr inbounds i8, ptr %11, i64 40
  store i32 14, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds i8, ptr %11, i64 44
  store i32 %1, ptr %13, align 4, !tbaa !17
  %14 = load ptr, ptr %0, align 8, !tbaa !14
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void %15(ptr noundef nonnull %0) #6
  br label %16

16:                                               ; preds = %6, %10
  %17 = phi i32 [ %1, %10 ], [ 1, %6 ]
  %18 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef signext %17, i64 noundef 152)
  store ptr null, ptr %18, align 8, !tbaa !43
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  store i32 %4, ptr %19, align 8, !tbaa !46
  %20 = getelementptr inbounds i8, ptr %18, i64 12
  store i32 %3, ptr %20, align 4, !tbaa !47
  %21 = getelementptr inbounds i8, ptr %18, i64 16
  store i32 %5, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds i8, ptr %18, i64 36
  store i32 %2, ptr %22, align 4, !tbaa !49
  %23 = getelementptr inbounds i8, ptr %18, i64 44
  store i32 0, ptr %23, align 4, !tbaa !50
  %24 = getelementptr inbounds i8, ptr %8, i64 136
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = getelementptr inbounds i8, ptr %18, i64 48
  store ptr %25, ptr %26, align 8, !tbaa !52
  store ptr %18, ptr %24, align 8, !tbaa !51
  ret ptr %18
}

; Function Attrs: nounwind
define internal noundef ptr @request_virt_barray(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) #0 {
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = getelementptr inbounds i8, ptr %11, i64 40
  store i32 14, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds i8, ptr %11, i64 44
  store i32 %1, ptr %13, align 4, !tbaa !17
  %14 = load ptr, ptr %0, align 8, !tbaa !14
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void %15(ptr noundef nonnull %0) #6
  br label %16

16:                                               ; preds = %6, %10
  %17 = phi i32 [ %1, %10 ], [ 1, %6 ]
  %18 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef signext %17, i64 noundef 152)
  store ptr null, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  store i32 %4, ptr %19, align 8, !tbaa !55
  %20 = getelementptr inbounds i8, ptr %18, i64 12
  store i32 %3, ptr %20, align 4, !tbaa !56
  %21 = getelementptr inbounds i8, ptr %18, i64 16
  store i32 %5, ptr %21, align 8, !tbaa !57
  %22 = getelementptr inbounds i8, ptr %18, i64 36
  store i32 %2, ptr %22, align 4, !tbaa !58
  %23 = getelementptr inbounds i8, ptr %18, i64 44
  store i32 0, ptr %23, align 4, !tbaa !59
  %24 = getelementptr inbounds i8, ptr %8, i64 144
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = getelementptr inbounds i8, ptr %18, i64 48
  store ptr %25, ptr %26, align 8, !tbaa !61
  store ptr %18, ptr %24, align 8, !tbaa !60
  ret ptr %18
}

; Function Attrs: nounwind
define internal void @realize_virt_arrays(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 136
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %1, %27
  %8 = phi ptr [ %31, %27 ], [ %5, %1 ]
  %9 = phi i64 [ %29, %27 ], [ 0, %1 ]
  %10 = phi i64 [ %28, %27 ], [ 0, %1 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %8, i64 16
  %15 = load i32, ptr %14, align 8, !tbaa !48
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %8, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !47
  %19 = zext i32 %18 to i64
  %20 = mul nuw nsw i64 %19, %16
  %21 = add i64 %20, %9
  %22 = getelementptr inbounds i8, ptr %8, i64 8
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = zext i32 %23 to i64
  %25 = mul nuw nsw i64 %24, %19
  %26 = add i64 %25, %10
  br label %27

27:                                               ; preds = %7, %13
  %28 = phi i64 [ %26, %13 ], [ %10, %7 ]
  %29 = phi i64 [ %21, %13 ], [ %9, %7 ]
  %30 = getelementptr inbounds i8, ptr %8, i64 48
  %31 = load ptr, ptr %30, align 8, !tbaa !37
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !62

33:                                               ; preds = %27, %1
  %34 = phi i64 [ 0, %1 ], [ %28, %27 ]
  %35 = phi i64 [ 0, %1 ], [ %29, %27 ]
  %36 = getelementptr inbounds i8, ptr %3, i64 144
  %37 = load ptr, ptr %36, align 8, !tbaa !37
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %33, %61
  %40 = phi ptr [ %65, %61 ], [ %37, %33 ]
  %41 = phi i64 [ %63, %61 ], [ %35, %33 ]
  %42 = phi i64 [ %62, %61 ], [ %34, %33 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !53
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = getelementptr inbounds i8, ptr %40, i64 16
  %47 = load i32, ptr %46, align 8, !tbaa !57
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %40, i64 12
  %50 = load i32, ptr %49, align 4, !tbaa !56
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %48, 7
  %53 = mul i64 %52, %51
  %54 = add i64 %53, %41
  %55 = getelementptr inbounds i8, ptr %40, i64 8
  %56 = load i32, ptr %55, align 8, !tbaa !55
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %51, 7
  %59 = mul i64 %58, %57
  %60 = add i64 %59, %42
  br label %61

61:                                               ; preds = %39, %45
  %62 = phi i64 [ %60, %45 ], [ %42, %39 ]
  %63 = phi i64 [ %54, %45 ], [ %41, %39 ]
  %64 = getelementptr inbounds i8, ptr %40, i64 48
  %65 = load ptr, ptr %64, align 8, !tbaa !37
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %39, !llvm.loop !63

67:                                               ; preds = %61, %33
  %68 = phi i64 [ %34, %33 ], [ %62, %61 ]
  %69 = phi i64 [ %35, %33 ], [ %63, %61 ]
  %70 = icmp slt i64 %69, 1
  br i1 %70, label %173, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %3, i64 152
  %73 = load i64, ptr %72, align 8, !tbaa !34
  %74 = tail call i64 @jpeg_mem_available(ptr noundef %0, i64 noundef %69, i64 noundef %68, i64 noundef %73) #6
  %75 = icmp slt i64 %74, %68
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = sdiv i64 %74, %69
  %78 = tail call i64 @llvm.smax.i64(i64 %77, i64 1)
  br label %79

79:                                               ; preds = %71, %76
  %80 = phi i64 [ %78, %76 ], [ 1000000000, %71 ]
  %81 = load ptr, ptr %4, align 8, !tbaa !37
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = trunc i64 %80 to i32
  %85 = getelementptr inbounds i8, ptr %3, i64 160
  br label %92

86:                                               ; preds = %128, %79
  %87 = load ptr, ptr %36, align 8, !tbaa !37
  %88 = icmp eq ptr %87, null
  br i1 %88, label %173, label %89

89:                                               ; preds = %86
  %90 = trunc i64 %80 to i32
  %91 = getelementptr inbounds i8, ptr %3, i64 160
  br label %132

92:                                               ; preds = %83, %128
  %93 = phi ptr [ %81, %83 ], [ %130, %128 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !43
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %128

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %93, i64 8
  %98 = load i32, ptr %97, align 8, !tbaa !46
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %99, -1
  %101 = getelementptr inbounds i8, ptr %93, i64 16
  %102 = load i32, ptr %101, align 8, !tbaa !48
  %103 = zext i32 %102 to i64
  %104 = sdiv i64 %100, %103
  %105 = icmp slt i64 %104, %80
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = getelementptr inbounds i8, ptr %93, i64 20
  store i32 %98, ptr %107, align 4, !tbaa !64
  br label %118

108:                                              ; preds = %96
  %109 = mul i32 %102, %84
  %110 = getelementptr inbounds i8, ptr %93, i64 20
  store i32 %109, ptr %110, align 4, !tbaa !64
  %111 = getelementptr inbounds i8, ptr %93, i64 56
  %112 = getelementptr inbounds i8, ptr %93, i64 12
  %113 = load i32, ptr %112, align 4, !tbaa !47
  %114 = zext i32 %113 to i64
  %115 = mul nuw nsw i64 %114, %99
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %111, i64 noundef %115) #6
  %116 = getelementptr inbounds i8, ptr %93, i64 44
  store i32 1, ptr %116, align 4, !tbaa !50
  %117 = load i32, ptr %110, align 4, !tbaa !64
  br label %118

118:                                              ; preds = %108, %106
  %119 = phi i32 [ %117, %108 ], [ %98, %106 ]
  %120 = getelementptr inbounds i8, ptr %93, i64 12
  %121 = load i32, ptr %120, align 4, !tbaa !47
  %122 = tail call ptr @alloc_sarray(ptr noundef %0, i32 noundef signext 1, i32 noundef signext %121, i32 noundef signext %119)
  store ptr %122, ptr %93, align 8, !tbaa !43
  %123 = load i32, ptr %85, align 8, !tbaa !38
  %124 = getelementptr inbounds i8, ptr %93, i64 24
  store i32 %123, ptr %124, align 8, !tbaa !65
  %125 = getelementptr inbounds i8, ptr %93, i64 28
  store i32 0, ptr %125, align 4, !tbaa !66
  %126 = getelementptr inbounds i8, ptr %93, i64 32
  store i32 0, ptr %126, align 8, !tbaa !67
  %127 = getelementptr inbounds i8, ptr %93, i64 40
  store i32 0, ptr %127, align 8, !tbaa !68
  br label %128

128:                                              ; preds = %92, %118
  %129 = getelementptr inbounds i8, ptr %93, i64 48
  %130 = load ptr, ptr %129, align 8, !tbaa !37
  %131 = icmp eq ptr %130, null
  br i1 %131, label %86, label %92, !llvm.loop !69

132:                                              ; preds = %89, %169
  %133 = phi ptr [ %87, %89 ], [ %171, %169 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !53
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %169

136:                                              ; preds = %132
  %137 = getelementptr inbounds i8, ptr %133, i64 8
  %138 = load i32, ptr %137, align 8, !tbaa !55
  %139 = zext i32 %138 to i64
  %140 = add nsw i64 %139, -1
  %141 = getelementptr inbounds i8, ptr %133, i64 16
  %142 = load i32, ptr %141, align 8, !tbaa !57
  %143 = zext i32 %142 to i64
  %144 = sdiv i64 %140, %143
  %145 = icmp slt i64 %144, %80
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = getelementptr inbounds i8, ptr %133, i64 20
  store i32 %138, ptr %147, align 4, !tbaa !70
  br label %159

148:                                              ; preds = %136
  %149 = mul i32 %142, %90
  %150 = getelementptr inbounds i8, ptr %133, i64 20
  store i32 %149, ptr %150, align 4, !tbaa !70
  %151 = getelementptr inbounds i8, ptr %133, i64 56
  %152 = getelementptr inbounds i8, ptr %133, i64 12
  %153 = load i32, ptr %152, align 4, !tbaa !56
  %154 = zext i32 %153 to i64
  %155 = shl nuw nsw i64 %139, 7
  %156 = mul i64 %155, %154
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %151, i64 noundef %156) #6
  %157 = getelementptr inbounds i8, ptr %133, i64 44
  store i32 1, ptr %157, align 4, !tbaa !59
  %158 = load i32, ptr %150, align 4, !tbaa !70
  br label %159

159:                                              ; preds = %148, %146
  %160 = phi i32 [ %158, %148 ], [ %138, %146 ]
  %161 = getelementptr inbounds i8, ptr %133, i64 12
  %162 = load i32, ptr %161, align 4, !tbaa !56
  %163 = tail call ptr @alloc_barray(ptr noundef %0, i32 noundef signext 1, i32 noundef signext %162, i32 noundef signext %160)
  store ptr %163, ptr %133, align 8, !tbaa !53
  %164 = load i32, ptr %91, align 8, !tbaa !38
  %165 = getelementptr inbounds i8, ptr %133, i64 24
  store i32 %164, ptr %165, align 8, !tbaa !71
  %166 = getelementptr inbounds i8, ptr %133, i64 28
  store i32 0, ptr %166, align 4, !tbaa !72
  %167 = getelementptr inbounds i8, ptr %133, i64 32
  store i32 0, ptr %167, align 8, !tbaa !73
  %168 = getelementptr inbounds i8, ptr %133, i64 40
  store i32 0, ptr %168, align 8, !tbaa !74
  br label %169

169:                                              ; preds = %132, %159
  %170 = getelementptr inbounds i8, ptr %133, i64 48
  %171 = load ptr, ptr %170, align 8, !tbaa !37
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %132, !llvm.loop !75

173:                                              ; preds = %169, %86, %67
  ret void
}

; Function Attrs: nounwind
define internal ptr @access_virt_sarray(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) #0 {
  %6 = add i32 %3, %2
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %10, %5
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  store i32 22, ptr %19, align 8, !tbaa !15
  %20 = load ptr, ptr %18, align 8, !tbaa !18
  tail call void %20(ptr noundef nonnull %0) #6
  br label %21

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds i8, ptr %1, i64 28
  %23 = load i32, ptr %22, align 4, !tbaa !66
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4, !tbaa !64
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %6, %28
  br i1 %29, label %30, label %156

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds i8, ptr %1, i64 44
  %32 = load i32, ptr %31, align 4, !tbaa !50
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !14
  %36 = getelementptr inbounds i8, ptr %35, i64 40
  store i32 69, ptr %36, align 8, !tbaa !15
  %37 = load ptr, ptr %35, align 8, !tbaa !18
  tail call void %37(ptr noundef nonnull %0) #6
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds i8, ptr %1, i64 40
  %40 = load i32, ptr %39, align 8, !tbaa !68
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %93, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %1, i64 12
  %44 = load i32, ptr %43, align 4, !tbaa !47
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %1, i64 24
  %47 = getelementptr inbounds i8, ptr %1, i64 20
  %48 = load i32, ptr %47, align 4, !tbaa !64
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %92, label %50

50:                                               ; preds = %42
  %51 = zext i32 %48 to i64
  %52 = load i32, ptr %22, align 4, !tbaa !66
  %53 = zext i32 %52 to i64
  %54 = mul nuw nsw i64 %53, %45
  %55 = getelementptr inbounds i8, ptr %1, i64 32
  %56 = getelementptr inbounds i8, ptr %1, i64 56
  %57 = getelementptr inbounds i8, ptr %1, i64 64
  %58 = load i32, ptr %46, align 8, !tbaa !65
  br label %59

59:                                               ; preds = %79, %50
  %60 = phi i32 [ %86, %79 ], [ %58, %50 ]
  %61 = phi i64 [ %90, %79 ], [ %51, %50 ]
  %62 = phi i64 [ %88, %79 ], [ 0, %50 ]
  %63 = phi i64 [ %85, %79 ], [ %54, %50 ]
  %64 = zext i32 %60 to i64
  %65 = sub nsw i64 %61, %62
  %66 = tail call i64 @llvm.smin.i64(i64 %65, i64 %64)
  %67 = load i32, ptr %22, align 4, !tbaa !66
  %68 = zext i32 %67 to i64
  %69 = add nuw nsw i64 %62, %68
  %70 = load i32, ptr %55, align 8, !tbaa !67
  %71 = zext i32 %70 to i64
  %72 = sub nsw i64 %71, %69
  %73 = tail call i64 @llvm.smin.i64(i64 %66, i64 %72)
  %74 = load i32, ptr %7, align 8, !tbaa !46
  %75 = zext i32 %74 to i64
  %76 = sub nsw i64 %75, %69
  %77 = tail call i64 @llvm.smin.i64(i64 %73, i64 %76)
  %78 = icmp slt i64 %77, 1
  br i1 %78, label %92, label %79

79:                                               ; preds = %59
  %80 = mul nuw nsw i64 %77, %45
  %81 = load ptr, ptr %57, align 8, !tbaa !76
  %82 = load ptr, ptr %1, align 8, !tbaa !43
  %83 = getelementptr inbounds ptr, ptr %82, i64 %62
  %84 = load ptr, ptr %83, align 8, !tbaa !37
  tail call void %81(ptr noundef %0, ptr noundef nonnull %56, ptr noundef %84, i64 noundef %63, i64 noundef %80) #6
  %85 = add nuw nsw i64 %80, %63
  %86 = load i32, ptr %46, align 8, !tbaa !65
  %87 = zext i32 %86 to i64
  %88 = add nuw nsw i64 %62, %87
  %89 = load i32, ptr %47, align 4, !tbaa !64
  %90 = zext i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %59, label %92, !llvm.loop !77

92:                                               ; preds = %59, %79, %42
  store i32 0, ptr %39, align 8, !tbaa !68
  br label %93

93:                                               ; preds = %92, %38
  %94 = load i32, ptr %22, align 4, !tbaa !66
  %95 = icmp ult i32 %94, %2
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, ptr %1, i64 20
  %98 = load i32, ptr %97, align 4, !tbaa !64
  br label %107

99:                                               ; preds = %93
  %100 = zext i32 %6 to i64
  %101 = getelementptr inbounds i8, ptr %1, i64 20
  %102 = load i32, ptr %101, align 4, !tbaa !64
  %103 = zext i32 %102 to i64
  %104 = sub nsw i64 %100, %103
  %105 = tail call i64 @llvm.smax.i64(i64 %104, i64 0)
  %106 = trunc nuw i64 %105 to i32
  br label %107

107:                                              ; preds = %96, %99
  %108 = phi i32 [ %102, %99 ], [ %98, %96 ]
  %109 = phi i32 [ %106, %99 ], [ %2, %96 ]
  store i32 %109, ptr %22, align 4, !tbaa !66
  %110 = getelementptr inbounds i8, ptr %1, i64 12
  %111 = load i32, ptr %110, align 4, !tbaa !47
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %1, i64 24
  %114 = getelementptr inbounds i8, ptr %1, i64 20
  %115 = icmp eq i32 %108, 0
  br i1 %115, label %156, label %116

116:                                              ; preds = %107
  %117 = zext i32 %108 to i64
  %118 = zext i32 %109 to i64
  %119 = mul nuw nsw i64 %112, %118
  %120 = getelementptr inbounds i8, ptr %1, i64 32
  %121 = getelementptr inbounds i8, ptr %1, i64 56
  %122 = load i32, ptr %113, align 8, !tbaa !65
  br label %123

123:                                              ; preds = %143, %116
  %124 = phi i32 [ %150, %143 ], [ %122, %116 ]
  %125 = phi i64 [ %154, %143 ], [ %117, %116 ]
  %126 = phi i64 [ %152, %143 ], [ 0, %116 ]
  %127 = phi i64 [ %149, %143 ], [ %119, %116 ]
  %128 = zext i32 %124 to i64
  %129 = sub nsw i64 %125, %126
  %130 = tail call i64 @llvm.smin.i64(i64 %129, i64 %128)
  %131 = load i32, ptr %22, align 4, !tbaa !66
  %132 = zext i32 %131 to i64
  %133 = add nuw nsw i64 %126, %132
  %134 = load i32, ptr %120, align 8, !tbaa !67
  %135 = zext i32 %134 to i64
  %136 = sub nsw i64 %135, %133
  %137 = tail call i64 @llvm.smin.i64(i64 %130, i64 %136)
  %138 = load i32, ptr %7, align 8, !tbaa !46
  %139 = zext i32 %138 to i64
  %140 = sub nsw i64 %139, %133
  %141 = tail call i64 @llvm.smin.i64(i64 %137, i64 %140)
  %142 = icmp slt i64 %141, 1
  br i1 %142, label %156, label %143

143:                                              ; preds = %123
  %144 = mul nuw nsw i64 %141, %112
  %145 = load ptr, ptr %121, align 8, !tbaa !78
  %146 = load ptr, ptr %1, align 8, !tbaa !43
  %147 = getelementptr inbounds ptr, ptr %146, i64 %126
  %148 = load ptr, ptr %147, align 8, !tbaa !37
  tail call void %145(ptr noundef %0, ptr noundef nonnull %121, ptr noundef %148, i64 noundef %127, i64 noundef %144) #6
  %149 = add nuw nsw i64 %144, %127
  %150 = load i32, ptr %113, align 8, !tbaa !65
  %151 = zext i32 %150 to i64
  %152 = add nuw nsw i64 %126, %151
  %153 = load i32, ptr %114, align 4, !tbaa !64
  %154 = zext i32 %153 to i64
  %155 = icmp ult i64 %152, %154
  br i1 %155, label %123, label %156, !llvm.loop !77

156:                                              ; preds = %143, %123, %107, %25
  %157 = getelementptr inbounds i8, ptr %1, i64 32
  %158 = load i32, ptr %157, align 8, !tbaa !67
  %159 = icmp ult i32 %158, %6
  br i1 %159, label %160, label %205

160:                                              ; preds = %156
  %161 = icmp ult i32 %158, %2
  %162 = icmp eq i32 %4, 0
  br i1 %161, label %163, label %168

163:                                              ; preds = %160
  br i1 %162, label %178, label %164

164:                                              ; preds = %163
  %165 = load ptr, ptr %0, align 8, !tbaa !14
  %166 = getelementptr inbounds i8, ptr %165, i64 40
  store i32 22, ptr %166, align 8, !tbaa !15
  %167 = load ptr, ptr %165, align 8, !tbaa !18
  tail call void %167(ptr noundef nonnull %0) #6
  br label %173

168:                                              ; preds = %160
  br i1 %162, label %169, label %173

169:                                              ; preds = %168
  %170 = getelementptr inbounds i8, ptr %1, i64 36
  %171 = load i32, ptr %170, align 4, !tbaa !49
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %201, label %182

173:                                              ; preds = %168, %164
  %174 = phi i32 [ %2, %164 ], [ %158, %168 ]
  store i32 %6, ptr %157, align 8, !tbaa !67
  %175 = getelementptr inbounds i8, ptr %1, i64 36
  %176 = load i32, ptr %175, align 4, !tbaa !49
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %207, label %182

178:                                              ; preds = %163
  %179 = getelementptr inbounds i8, ptr %1, i64 36
  %180 = load i32, ptr %179, align 4, !tbaa !49
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %201, label %182

182:                                              ; preds = %173, %178, %169
  %183 = phi i32 [ %2, %178 ], [ %158, %169 ], [ %174, %173 ]
  %184 = getelementptr inbounds i8, ptr %1, i64 12
  %185 = load i32, ptr %184, align 4, !tbaa !47
  %186 = zext i32 %185 to i64
  %187 = load i32, ptr %22, align 4, !tbaa !66
  %188 = sub i32 %183, %187
  %189 = sub i32 %6, %187
  %190 = icmp ult i32 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %182
  %192 = zext i32 %188 to i64
  br label %193

193:                                              ; preds = %191, %193
  %194 = phi i64 [ %192, %191 ], [ %198, %193 ]
  %195 = load ptr, ptr %1, align 8, !tbaa !43
  %196 = getelementptr inbounds ptr, ptr %195, i64 %194
  %197 = load ptr, ptr %196, align 8, !tbaa !37
  tail call void @jzero_far(ptr noundef %197, i64 noundef %186) #6
  %198 = add nuw nsw i64 %194, 1
  %199 = trunc i64 %198 to i32
  %200 = icmp eq i32 %189, %199
  br i1 %200, label %205, label %193, !llvm.loop !79

201:                                              ; preds = %178, %169
  %202 = load ptr, ptr %0, align 8, !tbaa !14
  %203 = getelementptr inbounds i8, ptr %202, i64 40
  store i32 22, ptr %203, align 8, !tbaa !15
  %204 = load ptr, ptr %202, align 8, !tbaa !18
  tail call void %204(ptr noundef nonnull %0) #6
  br label %209

205:                                              ; preds = %193, %182, %156
  %206 = icmp eq i32 %4, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %173, %205
  %208 = getelementptr inbounds i8, ptr %1, i64 40
  store i32 1, ptr %208, align 8, !tbaa !68
  br label %209

209:                                              ; preds = %201, %207, %205
  %210 = load ptr, ptr %1, align 8, !tbaa !43
  %211 = load i32, ptr %22, align 4, !tbaa !66
  %212 = sub i32 %2, %211
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds ptr, ptr %210, i64 %213
  ret ptr %214
}

; Function Attrs: nounwind
define internal ptr @access_virt_barray(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) #0 {
  %6 = add i32 %3, %2
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  %12 = load i32, ptr %11, align 8, !tbaa !57
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %10, %5
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  store i32 22, ptr %19, align 8, !tbaa !15
  %20 = load ptr, ptr %18, align 8, !tbaa !18
  tail call void %20(ptr noundef nonnull %0) #6
  br label %21

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds i8, ptr %1, i64 28
  %23 = load i32, ptr %22, align 4, !tbaa !72
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4, !tbaa !70
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %6, %28
  br i1 %29, label %30, label %158

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds i8, ptr %1, i64 44
  %32 = load i32, ptr %31, align 4, !tbaa !59
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !14
  %36 = getelementptr inbounds i8, ptr %35, i64 40
  store i32 69, ptr %36, align 8, !tbaa !15
  %37 = load ptr, ptr %35, align 8, !tbaa !18
  tail call void %37(ptr noundef nonnull %0) #6
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds i8, ptr %1, i64 40
  %40 = load i32, ptr %39, align 8, !tbaa !74
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %94, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %1, i64 12
  %44 = load i32, ptr %43, align 4, !tbaa !56
  %45 = zext i32 %44 to i64
  %46 = shl nuw nsw i64 %45, 7
  %47 = getelementptr inbounds i8, ptr %1, i64 24
  %48 = getelementptr inbounds i8, ptr %1, i64 20
  %49 = load i32, ptr %48, align 4, !tbaa !70
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %93, label %51

51:                                               ; preds = %42
  %52 = zext i32 %49 to i64
  %53 = load i32, ptr %22, align 4, !tbaa !72
  %54 = zext i32 %53 to i64
  %55 = mul nuw nsw i64 %46, %54
  %56 = getelementptr inbounds i8, ptr %1, i64 32
  %57 = getelementptr inbounds i8, ptr %1, i64 56
  %58 = getelementptr inbounds i8, ptr %1, i64 64
  %59 = load i32, ptr %47, align 8, !tbaa !71
  br label %60

60:                                               ; preds = %80, %51
  %61 = phi i32 [ %87, %80 ], [ %59, %51 ]
  %62 = phi i64 [ %91, %80 ], [ %52, %51 ]
  %63 = phi i64 [ %89, %80 ], [ 0, %51 ]
  %64 = phi i64 [ %86, %80 ], [ %55, %51 ]
  %65 = zext i32 %61 to i64
  %66 = sub nsw i64 %62, %63
  %67 = tail call i64 @llvm.smin.i64(i64 %66, i64 %65)
  %68 = load i32, ptr %22, align 4, !tbaa !72
  %69 = zext i32 %68 to i64
  %70 = add nuw nsw i64 %63, %69
  %71 = load i32, ptr %56, align 8, !tbaa !73
  %72 = zext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = tail call i64 @llvm.smin.i64(i64 %67, i64 %73)
  %75 = load i32, ptr %7, align 8, !tbaa !55
  %76 = zext i32 %75 to i64
  %77 = sub nsw i64 %76, %70
  %78 = tail call i64 @llvm.smin.i64(i64 %74, i64 %77)
  %79 = icmp slt i64 %78, 1
  br i1 %79, label %93, label %80

80:                                               ; preds = %60
  %81 = mul nuw nsw i64 %78, %46
  %82 = load ptr, ptr %58, align 8, !tbaa !80
  %83 = load ptr, ptr %1, align 8, !tbaa !53
  %84 = getelementptr inbounds ptr, ptr %83, i64 %63
  %85 = load ptr, ptr %84, align 8, !tbaa !37
  tail call void %82(ptr noundef %0, ptr noundef nonnull %57, ptr noundef %85, i64 noundef %64, i64 noundef %81) #6
  %86 = add nuw nsw i64 %81, %64
  %87 = load i32, ptr %47, align 8, !tbaa !71
  %88 = zext i32 %87 to i64
  %89 = add nuw nsw i64 %63, %88
  %90 = load i32, ptr %48, align 4, !tbaa !70
  %91 = zext i32 %90 to i64
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %60, label %93, !llvm.loop !81

93:                                               ; preds = %60, %80, %42
  store i32 0, ptr %39, align 8, !tbaa !74
  br label %94

94:                                               ; preds = %93, %38
  %95 = load i32, ptr %22, align 4, !tbaa !72
  %96 = icmp ult i32 %95, %2
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds i8, ptr %1, i64 20
  %99 = load i32, ptr %98, align 4, !tbaa !70
  br label %108

100:                                              ; preds = %94
  %101 = zext i32 %6 to i64
  %102 = getelementptr inbounds i8, ptr %1, i64 20
  %103 = load i32, ptr %102, align 4, !tbaa !70
  %104 = zext i32 %103 to i64
  %105 = sub nsw i64 %101, %104
  %106 = tail call i64 @llvm.smax.i64(i64 %105, i64 0)
  %107 = trunc nuw i64 %106 to i32
  br label %108

108:                                              ; preds = %97, %100
  %109 = phi i32 [ %103, %100 ], [ %99, %97 ]
  %110 = phi i32 [ %107, %100 ], [ %2, %97 ]
  store i32 %110, ptr %22, align 4, !tbaa !72
  %111 = getelementptr inbounds i8, ptr %1, i64 12
  %112 = load i32, ptr %111, align 4, !tbaa !56
  %113 = zext i32 %112 to i64
  %114 = shl nuw nsw i64 %113, 7
  %115 = getelementptr inbounds i8, ptr %1, i64 24
  %116 = getelementptr inbounds i8, ptr %1, i64 20
  %117 = icmp eq i32 %109, 0
  br i1 %117, label %158, label %118

118:                                              ; preds = %108
  %119 = zext i32 %109 to i64
  %120 = zext i32 %110 to i64
  %121 = mul nuw nsw i64 %114, %120
  %122 = getelementptr inbounds i8, ptr %1, i64 32
  %123 = getelementptr inbounds i8, ptr %1, i64 56
  %124 = load i32, ptr %115, align 8, !tbaa !71
  br label %125

125:                                              ; preds = %145, %118
  %126 = phi i32 [ %152, %145 ], [ %124, %118 ]
  %127 = phi i64 [ %156, %145 ], [ %119, %118 ]
  %128 = phi i64 [ %154, %145 ], [ 0, %118 ]
  %129 = phi i64 [ %151, %145 ], [ %121, %118 ]
  %130 = zext i32 %126 to i64
  %131 = sub nsw i64 %127, %128
  %132 = tail call i64 @llvm.smin.i64(i64 %131, i64 %130)
  %133 = load i32, ptr %22, align 4, !tbaa !72
  %134 = zext i32 %133 to i64
  %135 = add nuw nsw i64 %128, %134
  %136 = load i32, ptr %122, align 8, !tbaa !73
  %137 = zext i32 %136 to i64
  %138 = sub nsw i64 %137, %135
  %139 = tail call i64 @llvm.smin.i64(i64 %132, i64 %138)
  %140 = load i32, ptr %7, align 8, !tbaa !55
  %141 = zext i32 %140 to i64
  %142 = sub nsw i64 %141, %135
  %143 = tail call i64 @llvm.smin.i64(i64 %139, i64 %142)
  %144 = icmp slt i64 %143, 1
  br i1 %144, label %158, label %145

145:                                              ; preds = %125
  %146 = mul nuw nsw i64 %143, %114
  %147 = load ptr, ptr %123, align 8, !tbaa !82
  %148 = load ptr, ptr %1, align 8, !tbaa !53
  %149 = getelementptr inbounds ptr, ptr %148, i64 %128
  %150 = load ptr, ptr %149, align 8, !tbaa !37
  tail call void %147(ptr noundef %0, ptr noundef nonnull %123, ptr noundef %150, i64 noundef %129, i64 noundef %146) #6
  %151 = add nuw nsw i64 %146, %129
  %152 = load i32, ptr %115, align 8, !tbaa !71
  %153 = zext i32 %152 to i64
  %154 = add nuw nsw i64 %128, %153
  %155 = load i32, ptr %116, align 4, !tbaa !70
  %156 = zext i32 %155 to i64
  %157 = icmp ult i64 %154, %156
  br i1 %157, label %125, label %158, !llvm.loop !81

158:                                              ; preds = %145, %125, %108, %25
  %159 = getelementptr inbounds i8, ptr %1, i64 32
  %160 = load i32, ptr %159, align 8, !tbaa !73
  %161 = icmp ult i32 %160, %6
  br i1 %161, label %162, label %208

162:                                              ; preds = %158
  %163 = icmp ult i32 %160, %2
  %164 = icmp eq i32 %4, 0
  br i1 %163, label %165, label %170

165:                                              ; preds = %162
  br i1 %164, label %180, label %166

166:                                              ; preds = %165
  %167 = load ptr, ptr %0, align 8, !tbaa !14
  %168 = getelementptr inbounds i8, ptr %167, i64 40
  store i32 22, ptr %168, align 8, !tbaa !15
  %169 = load ptr, ptr %167, align 8, !tbaa !18
  tail call void %169(ptr noundef nonnull %0) #6
  br label %175

170:                                              ; preds = %162
  br i1 %164, label %171, label %175

171:                                              ; preds = %170
  %172 = getelementptr inbounds i8, ptr %1, i64 36
  %173 = load i32, ptr %172, align 4, !tbaa !58
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %204, label %184

175:                                              ; preds = %170, %166
  %176 = phi i32 [ %2, %166 ], [ %160, %170 ]
  store i32 %6, ptr %159, align 8, !tbaa !73
  %177 = getelementptr inbounds i8, ptr %1, i64 36
  %178 = load i32, ptr %177, align 4, !tbaa !58
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %210, label %184

180:                                              ; preds = %165
  %181 = getelementptr inbounds i8, ptr %1, i64 36
  %182 = load i32, ptr %181, align 4, !tbaa !58
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %204, label %184

184:                                              ; preds = %175, %180, %171
  %185 = phi i32 [ %2, %180 ], [ %160, %171 ], [ %176, %175 ]
  %186 = getelementptr inbounds i8, ptr %1, i64 12
  %187 = load i32, ptr %186, align 4, !tbaa !56
  %188 = zext i32 %187 to i64
  %189 = shl nuw nsw i64 %188, 7
  %190 = load i32, ptr %22, align 4, !tbaa !72
  %191 = sub i32 %185, %190
  %192 = sub i32 %6, %190
  %193 = icmp ult i32 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %184
  %195 = zext i32 %191 to i64
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi i64 [ %195, %194 ], [ %201, %196 ]
  %198 = load ptr, ptr %1, align 8, !tbaa !53
  %199 = getelementptr inbounds ptr, ptr %198, i64 %197
  %200 = load ptr, ptr %199, align 8, !tbaa !37
  tail call void @jzero_far(ptr noundef %200, i64 noundef %189) #6
  %201 = add nuw nsw i64 %197, 1
  %202 = trunc i64 %201 to i32
  %203 = icmp eq i32 %192, %202
  br i1 %203, label %208, label %196, !llvm.loop !83

204:                                              ; preds = %180, %171
  %205 = load ptr, ptr %0, align 8, !tbaa !14
  %206 = getelementptr inbounds i8, ptr %205, i64 40
  store i32 22, ptr %206, align 8, !tbaa !15
  %207 = load ptr, ptr %205, align 8, !tbaa !18
  tail call void %207(ptr noundef nonnull %0) #6
  br label %212

208:                                              ; preds = %196, %184, %158
  %209 = icmp eq i32 %4, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %175, %208
  %211 = getelementptr inbounds i8, ptr %1, i64 40
  store i32 1, ptr %211, align 8, !tbaa !74
  br label %212

212:                                              ; preds = %204, %210, %208
  %213 = load ptr, ptr %1, align 8, !tbaa !53
  %214 = load i32, ptr %22, align 4, !tbaa !72
  %215 = sub i32 %2, %214
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %213, i64 %216
  ret ptr %217
}

; Function Attrs: nounwind
define internal void @free_pool(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i32 %1, 1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 14, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %7, i64 44
  store i32 %1, ptr %9, align 4, !tbaa !17
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  tail call void %11(ptr noundef nonnull %0) #6
  br label %49

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %49

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %4, i64 136
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %14 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 44
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  store i32 0, ptr %20, align 4, !tbaa !50
  %24 = getelementptr inbounds i8, ptr %19, i64 56
  %25 = getelementptr inbounds i8, ptr %19, i64 72
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  tail call void %26(ptr noundef %0, ptr noundef nonnull %24) #6
  br label %27

27:                                               ; preds = %18, %23
  %28 = getelementptr inbounds i8, ptr %19, i64 48
  %29 = load ptr, ptr %28, align 8, !tbaa !37
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !85

31:                                               ; preds = %27, %14
  store ptr null, ptr %15, align 8, !tbaa !51
  %32 = getelementptr inbounds i8, ptr %4, i64 144
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %31, %44
  %36 = phi ptr [ %46, %44 ], [ %33, %31 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 44
  %38 = load i32, ptr %37, align 4, !tbaa !59
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  store i32 0, ptr %37, align 4, !tbaa !59
  %41 = getelementptr inbounds i8, ptr %36, i64 56
  %42 = getelementptr inbounds i8, ptr %36, i64 72
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  tail call void %43(ptr noundef %0, ptr noundef nonnull %41) #6
  br label %44

44:                                               ; preds = %35, %40
  %45 = getelementptr inbounds i8, ptr %36, i64 48
  %46 = load ptr, ptr %45, align 8, !tbaa !37
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %35, !llvm.loop !87

48:                                               ; preds = %44, %31
  store ptr null, ptr %32, align 8, !tbaa !60
  br label %49

49:                                               ; preds = %6, %48, %12
  %50 = getelementptr inbounds i8, ptr %4, i64 120
  %51 = sext i32 %1 to i64
  %52 = getelementptr inbounds [2 x ptr], ptr %50, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  store ptr null, ptr %52, align 8, !tbaa !37
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds i8, ptr %4, i64 152
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi ptr [ %53, %55 ], [ %59, %57 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !17
  %60 = getelementptr inbounds i8, ptr %58, i64 8
  %61 = load i64, ptr %60, align 8, !tbaa !17
  %62 = getelementptr inbounds i8, ptr %58, i64 16
  %63 = load i64, ptr %62, align 8, !tbaa !17
  %64 = add i64 %61, 24
  %65 = add i64 %64, %63
  tail call void @jpeg_free_large(ptr noundef %0, ptr noundef nonnull %58, i64 noundef %65) #6
  %66 = load i64, ptr %56, align 8, !tbaa !34
  %67 = sub i64 %66, %65
  store i64 %67, ptr %56, align 8, !tbaa !34
  %68 = icmp eq ptr %59, null
  br i1 %68, label %69, label %57, !llvm.loop !88

69:                                               ; preds = %57, %49
  %70 = getelementptr inbounds i8, ptr %4, i64 104
  %71 = getelementptr inbounds [2 x ptr], ptr %70, i64 0, i64 %51
  %72 = load ptr, ptr %71, align 8, !tbaa !37
  store ptr null, ptr %71, align 8, !tbaa !37
  %73 = icmp eq ptr %72, null
  br i1 %73, label %88, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, ptr %4, i64 152
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi ptr [ %72, %74 ], [ %78, %76 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !17
  %79 = getelementptr inbounds i8, ptr %77, i64 8
  %80 = load i64, ptr %79, align 8, !tbaa !17
  %81 = getelementptr inbounds i8, ptr %77, i64 16
  %82 = load i64, ptr %81, align 8, !tbaa !17
  %83 = add i64 %80, 24
  %84 = add i64 %83, %82
  tail call void @jpeg_free_small(ptr noundef %0, ptr noundef nonnull %77, i64 noundef %84) #6
  %85 = load i64, ptr %75, align 8, !tbaa !34
  %86 = sub i64 %85, %84
  store i64 %86, ptr %75, align 8, !tbaa !34
  %87 = icmp eq ptr %78, null
  br i1 %87, label %88, label %76, !llvm.loop !89

88:                                               ; preds = %76, %69
  ret void
}

; Function Attrs: nounwind
define internal void @self_destruct(ptr noundef %0) #0 {
  tail call void @free_pool(ptr noundef %0, i32 noundef signext 1)
  tail call void @free_pool(ptr noundef %0, i32 noundef signext 0)
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @jpeg_free_small(ptr noundef %0, ptr noundef %3, i64 noundef 168) #6
  store ptr null, ptr %2, align 8, !tbaa !6
  tail call void @jpeg_mem_term(ptr noundef %0) #6
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare dso_local noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local ptr @jpeg_get_large(ptr noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @jpeg_mem_available(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @jpeg_open_backing_store(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @jpeg_free_large(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @jpeg_free_small(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_common_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!7, !8, i64 0}
!15 = !{!16, !11, i64 40}
!16 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !13, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!17 = !{!9, !9, i64 0}
!18 = !{!16, !8, i64 0}
!19 = !{!20, !8, i64 0}
!20 = !{!"", !21, i64 0, !9, i64 104, !9, i64 120, !8, i64 136, !8, i64 144, !13, i64 152, !11, i64 160}
!21 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !13, i64 88, !13, i64 96}
!22 = !{!20, !8, i64 8}
!23 = !{!20, !8, i64 16}
!24 = !{!20, !8, i64 24}
!25 = !{!20, !8, i64 32}
!26 = !{!20, !8, i64 40}
!27 = !{!20, !8, i64 48}
!28 = !{!20, !8, i64 56}
!29 = !{!20, !8, i64 64}
!30 = !{!20, !8, i64 72}
!31 = !{!20, !8, i64 80}
!32 = !{!20, !13, i64 96}
!33 = !{!20, !13, i64 88}
!34 = !{!20, !13, i64 152}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!8, !8, i64 0}
!38 = !{!20, !11, i64 160}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !36}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
!43 = !{!44, !8, i64 0}
!44 = !{!"jvirt_sarray_control", !8, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !8, i64 48, !45, i64 56}
!45 = !{!"backing_store_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32}
!46 = !{!44, !11, i64 8}
!47 = !{!44, !11, i64 12}
!48 = !{!44, !11, i64 16}
!49 = !{!44, !11, i64 36}
!50 = !{!44, !11, i64 44}
!51 = !{!20, !8, i64 136}
!52 = !{!44, !8, i64 48}
!53 = !{!54, !8, i64 0}
!54 = !{!"jvirt_barray_control", !8, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !8, i64 48, !45, i64 56}
!55 = !{!54, !11, i64 8}
!56 = !{!54, !11, i64 12}
!57 = !{!54, !11, i64 16}
!58 = !{!54, !11, i64 36}
!59 = !{!54, !11, i64 44}
!60 = !{!20, !8, i64 144}
!61 = !{!54, !8, i64 48}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
!64 = !{!44, !11, i64 20}
!65 = !{!44, !11, i64 24}
!66 = !{!44, !11, i64 28}
!67 = !{!44, !11, i64 32}
!68 = !{!44, !11, i64 40}
!69 = distinct !{!69, !36}
!70 = !{!54, !11, i64 20}
!71 = !{!54, !11, i64 24}
!72 = !{!54, !11, i64 28}
!73 = !{!54, !11, i64 32}
!74 = !{!54, !11, i64 40}
!75 = distinct !{!75, !36}
!76 = !{!44, !8, i64 64}
!77 = distinct !{!77, !36}
!78 = !{!44, !8, i64 56}
!79 = distinct !{!79, !36}
!80 = !{!54, !8, i64 64}
!81 = distinct !{!81, !36}
!82 = !{!54, !8, i64 56}
!83 = distinct !{!83, !36}
!84 = !{!44, !8, i64 72}
!85 = distinct !{!85, !36}
!86 = !{!54, !8, i64 72}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
