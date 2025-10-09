; ModuleID = 'jdapistd.c'
source_filename = "jdapistd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local noundef signext i32 @jpeg_start_decompress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !6
  switch i32 %3, label %50 [
    i32 202, label %4
    i32 203, label %9
    i32 204, label %64
  ]

4:                                                ; preds = %1
  tail call void @jinit_master_decompress(ptr noundef nonnull %0) #4
  %5 = getelementptr inbounds i8, ptr %0, i64 88
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %114

8:                                                ; preds = %4
  store i32 203, ptr %2, align 4, !tbaa !6
  br label %9

9:                                                ; preds = %1, %8
  %10 = getelementptr inbounds i8, ptr %0, i64 576
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds i8, ptr %11, i64 32
  %13 = load i32, ptr %12, align 8, !tbaa !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %0, i64 16
  %17 = getelementptr inbounds i8, ptr %0, i64 420
  %18 = load ptr, ptr %16, align 8, !tbaa !18
  br label %19

19:                                               ; preds = %34, %15
  %20 = phi ptr [ %18, %15 ], [ %29, %34 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 8, !tbaa !19
  tail call void %23(ptr noundef nonnull %0) #4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr %10, align 8, !tbaa !15
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = tail call signext i32 %26(ptr noundef nonnull %0) #4
  switch i32 %27, label %28 [
    i32 0, label %116
    i32 2, label %46
  ]

28:                                               ; preds = %24
  %29 = load ptr, ptr %16, align 8, !tbaa !18
  %30 = icmp ne ptr %29, null
  %31 = and i32 %27, -3
  %32 = icmp eq i32 %31, 1
  %33 = and i1 %32, %30
  br i1 %33, label %35, label %34

34:                                               ; preds = %28, %42, %35
  br label %19

35:                                               ; preds = %28
  %36 = getelementptr inbounds i8, ptr %29, i64 8
  %37 = load i64, ptr %36, align 8, !tbaa !23
  %38 = add nsw i64 %37, 1
  store i64 %38, ptr %36, align 8, !tbaa !23
  %39 = getelementptr inbounds i8, ptr %29, i64 16
  %40 = load i64, ptr %39, align 8, !tbaa !24
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %34, label %42

42:                                               ; preds = %35
  %43 = load i32, ptr %17, align 4, !tbaa !25
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  store i64 %45, ptr %39, align 8, !tbaa !24
  br label %34

46:                                               ; preds = %24, %9
  %47 = getelementptr inbounds i8, ptr %0, i64 172
  %48 = load i32, ptr %47, align 4, !tbaa !26
  %49 = getelementptr inbounds i8, ptr %0, i64 180
  store i32 %48, ptr %49, align 4, !tbaa !27
  br label %56

50:                                               ; preds = %1
  %51 = load ptr, ptr %0, align 8, !tbaa !28
  %52 = getelementptr inbounds i8, ptr %51, i64 40
  store i32 20, ptr %52, align 8, !tbaa !29
  %53 = getelementptr inbounds i8, ptr %51, i64 44
  store i32 %3, ptr %53, align 4, !tbaa !31
  %54 = load ptr, ptr %0, align 8, !tbaa !28
  %55 = load ptr, ptr %54, align 8, !tbaa !32
  tail call void %55(ptr noundef nonnull %0) #4
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i32, ptr %2, align 4, !tbaa !6
  %58 = icmp eq i32 %57, 204
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %0, i64 544
  %61 = load ptr, ptr %60, align 8, !tbaa !33
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  tail call void %62(ptr noundef nonnull %0) #4
  %63 = getelementptr inbounds i8, ptr %0, i64 168
  store i32 0, ptr %63, align 8, !tbaa !36
  store i32 204, ptr %2, align 4, !tbaa !6
  br label %64

64:                                               ; preds = %1, %59, %56
  %65 = getelementptr inbounds i8, ptr %0, i64 544
  %66 = load ptr, ptr %65, align 8, !tbaa !33
  %67 = getelementptr inbounds i8, ptr %66, i64 16
  %68 = load i32, ptr %67, align 8, !tbaa !37
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %109, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds i8, ptr %0, i64 168
  %72 = getelementptr inbounds i8, ptr %0, i64 140
  %73 = getelementptr inbounds i8, ptr %0, i64 16
  %74 = getelementptr inbounds i8, ptr %0, i64 552
  %75 = load i32, ptr %71, align 8, !tbaa !36
  br label %76

76:                                               ; preds = %97, %70
  %77 = phi i32 [ %75, %70 ], [ %98, %97 ]
  %78 = load i32, ptr %72, align 4, !tbaa !38
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load ptr, ptr %73, align 8, !tbaa !18
  %82 = icmp eq ptr %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = zext i32 %77 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 8
  store i64 %84, ptr %85, align 8, !tbaa !23
  %86 = zext i32 %78 to i64
  %87 = getelementptr inbounds i8, ptr %81, i64 16
  store i64 %86, ptr %87, align 8, !tbaa !24
  %88 = load ptr, ptr %81, align 8, !tbaa !19
  tail call void %88(ptr noundef nonnull %0) #4
  %89 = load i32, ptr %71, align 8, !tbaa !36
  br label %90

90:                                               ; preds = %83, %80
  %91 = phi i32 [ %89, %83 ], [ %77, %80 ]
  %92 = load ptr, ptr %74, align 8, !tbaa !39
  %93 = getelementptr inbounds i8, ptr %92, i64 8
  %94 = load ptr, ptr %93, align 8, !tbaa !40
  tail call void %94(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %71, i32 noundef signext 0) #4
  %95 = load i32, ptr %71, align 8, !tbaa !36
  %96 = icmp eq i32 %95, %91
  br i1 %96, label %116, label %97

97:                                               ; preds = %90, %99
  %98 = phi i32 [ %95, %90 ], [ 0, %99 ]
  br label %76

99:                                               ; preds = %76
  %100 = load ptr, ptr %65, align 8, !tbaa !33
  %101 = getelementptr inbounds i8, ptr %100, i64 8
  %102 = load ptr, ptr %101, align 8, !tbaa !42
  tail call void %102(ptr noundef nonnull %0) #4
  %103 = load ptr, ptr %65, align 8, !tbaa !33
  %104 = load ptr, ptr %103, align 8, !tbaa !34
  tail call void %104(ptr noundef nonnull %0) #4
  store i32 0, ptr %71, align 8, !tbaa !36
  %105 = load ptr, ptr %65, align 8, !tbaa !33
  %106 = getelementptr inbounds i8, ptr %105, i64 16
  %107 = load i32, ptr %106, align 8, !tbaa !37
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %97

109:                                              ; preds = %99, %64
  %110 = getelementptr inbounds i8, ptr %0, i64 92
  %111 = load i32, ptr %110, align 4, !tbaa !43
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 205, i32 206
  br label %114

114:                                              ; preds = %4, %109
  %115 = phi i32 [ %113, %109 ], [ 207, %4 ]
  store i32 %115, ptr %2, align 4, !tbaa !6
  br label %116

116:                                              ; preds = %24, %90, %114
  %117 = phi i32 [ 1, %114 ], [ 0, %90 ], [ %27, %24 ]
  ret i32 %117
}

declare dso_local void @jinit_master_decompress(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local signext i32 @jpeg_read_scanlines(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %5 = getelementptr inbounds i8, ptr %0, i64 36
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp eq i32 %6, 205
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !28
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  store i32 20, ptr %10, align 8, !tbaa !29
  %11 = getelementptr inbounds i8, ptr %9, i64 44
  store i32 %6, ptr %11, align 4, !tbaa !31
  %12 = load ptr, ptr %0, align 8, !tbaa !28
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  tail call void %13(ptr noundef nonnull %0) #4
  br label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds i8, ptr %0, i64 168
  %16 = load i32, ptr %15, align 8, !tbaa !36
  %17 = getelementptr inbounds i8, ptr %0, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !38
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8, !tbaa !28
  %22 = getelementptr inbounds i8, ptr %21, i64 40
  store i32 123, ptr %22, align 8, !tbaa !29
  %23 = getelementptr inbounds i8, ptr %21, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  tail call void %24(ptr noundef nonnull %0, i32 noundef signext -1) #4
  br label %43

25:                                               ; preds = %14
  %26 = getelementptr inbounds i8, ptr %0, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = zext i32 %16 to i64
  %31 = getelementptr inbounds i8, ptr %27, i64 8
  store i64 %30, ptr %31, align 8, !tbaa !23
  %32 = zext i32 %18 to i64
  %33 = getelementptr inbounds i8, ptr %27, i64 16
  store i64 %32, ptr %33, align 8, !tbaa !24
  %34 = load ptr, ptr %27, align 8, !tbaa !19
  tail call void %34(ptr noundef nonnull %0) #4
  br label %35

35:                                               ; preds = %29, %25
  store i32 0, ptr %4, align 4, !tbaa !45
  %36 = getelementptr inbounds i8, ptr %0, i64 552
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = getelementptr inbounds i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  call void %39(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef signext %2) #4
  %40 = load i32, ptr %4, align 4, !tbaa !45
  %41 = load i32, ptr %15, align 8, !tbaa !36
  %42 = add i32 %41, %40
  store i32 %42, ptr %15, align 8, !tbaa !36
  br label %43

43:                                               ; preds = %35, %20
  %44 = phi i32 [ 0, %20 ], [ %40, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %44
}

; Function Attrs: nounwind
define dso_local signext i32 @jpeg_read_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 36
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 206
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !28
  %9 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 20, ptr %9, align 8, !tbaa !29
  %10 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 %5, ptr %10, align 4, !tbaa !31
  %11 = load ptr, ptr %0, align 8, !tbaa !28
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  tail call void %12(ptr noundef nonnull %0) #4
  br label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds i8, ptr %0, i64 168
  %15 = load i32, ptr %14, align 8, !tbaa !36
  %16 = getelementptr inbounds i8, ptr %0, i64 140
  %17 = load i32, ptr %16, align 4, !tbaa !38
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !28
  %21 = getelementptr inbounds i8, ptr %20, i64 40
  store i32 123, ptr %21, align 8, !tbaa !29
  %22 = getelementptr inbounds i8, ptr %20, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  tail call void %23(ptr noundef nonnull %0, i32 noundef signext -1) #4
  br label %55

24:                                               ; preds = %13
  %25 = getelementptr inbounds i8, ptr %0, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = zext i32 %15 to i64
  %30 = getelementptr inbounds i8, ptr %26, i64 8
  store i64 %29, ptr %30, align 8, !tbaa !23
  %31 = zext i32 %17 to i64
  %32 = getelementptr inbounds i8, ptr %26, i64 16
  store i64 %31, ptr %32, align 8, !tbaa !24
  %33 = load ptr, ptr %26, align 8, !tbaa !19
  tail call void %33(ptr noundef nonnull %0) #4
  br label %34

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds i8, ptr %0, i64 412
  %36 = load i32, ptr %35, align 4, !tbaa !46
  %37 = getelementptr inbounds i8, ptr %0, i64 416
  %38 = load i32, ptr %37, align 8, !tbaa !47
  %39 = mul nsw i32 %38, %36
  %40 = icmp ugt i32 %39, %2
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load ptr, ptr %0, align 8, !tbaa !28
  %43 = getelementptr inbounds i8, ptr %42, i64 40
  store i32 23, ptr %43, align 8, !tbaa !29
  %44 = load ptr, ptr %42, align 8, !tbaa !32
  tail call void %44(ptr noundef nonnull %0) #4
  br label %45

45:                                               ; preds = %41, %34
  %46 = getelementptr inbounds i8, ptr %0, i64 560
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = getelementptr inbounds i8, ptr %47, i64 24
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = tail call signext i32 %49(ptr noundef nonnull %0, ptr noundef %1) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, ptr %14, align 8, !tbaa !36
  %54 = add i32 %53, %39
  store i32 %54, ptr %14, align 8, !tbaa !36
  br label %55

55:                                               ; preds = %45, %52, %19
  %56 = phi i32 [ 0, %19 ], [ %39, %52 ], [ 0, %45 ]
  ret i32 %56
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @jpeg_start_output(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 36
  %4 = load i32, ptr %3, align 4, !tbaa !6
  switch i32 %4, label %5 [
    i32 207, label %11
    i32 204, label %11
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !28
  %7 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 20, ptr %7, align 8, !tbaa !29
  %8 = getelementptr inbounds i8, ptr %6, i64 44
  store i32 %4, ptr %8, align 4, !tbaa !31
  %9 = load ptr, ptr %0, align 8, !tbaa !28
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  tail call void %10(ptr noundef nonnull %0) #4
  br label %11

11:                                               ; preds = %2, %2, %5
  %12 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %13 = getelementptr inbounds i8, ptr %0, i64 576
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds i8, ptr %14, i64 36
  %16 = load i32, ptr %15, align 4, !tbaa !51
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, ptr %0, i64 172
  %20 = load i32, ptr %19, align 4, !tbaa !26
  %21 = tail call i32 @llvm.smin.i32(i32 %12, i32 %20)
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %12, %11 ], [ %21, %18 ]
  %24 = getelementptr inbounds i8, ptr %0, i64 180
  store i32 %23, ptr %24, align 4, !tbaa !27
  %25 = load i32, ptr %3, align 4, !tbaa !6
  %26 = icmp eq i32 %25, 204
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, ptr %0, i64 544
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  tail call void %30(ptr noundef nonnull %0) #4
  %31 = getelementptr inbounds i8, ptr %0, i64 168
  store i32 0, ptr %31, align 8, !tbaa !36
  store i32 204, ptr %3, align 4, !tbaa !6
  br label %32

32:                                               ; preds = %27, %22
  %33 = getelementptr inbounds i8, ptr %0, i64 544
  %34 = load ptr, ptr %33, align 8, !tbaa !33
  %35 = getelementptr inbounds i8, ptr %34, i64 16
  %36 = load i32, ptr %35, align 8, !tbaa !37
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %77, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds i8, ptr %0, i64 168
  %40 = getelementptr inbounds i8, ptr %0, i64 140
  %41 = getelementptr inbounds i8, ptr %0, i64 16
  %42 = getelementptr inbounds i8, ptr %0, i64 552
  %43 = load i32, ptr %39, align 8, !tbaa !36
  br label %44

44:                                               ; preds = %65, %38
  %45 = phi i32 [ %43, %38 ], [ %66, %65 ]
  %46 = load i32, ptr %40, align 4, !tbaa !38
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load ptr, ptr %41, align 8, !tbaa !18
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = zext i32 %45 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 8
  store i64 %52, ptr %53, align 8, !tbaa !23
  %54 = zext i32 %46 to i64
  %55 = getelementptr inbounds i8, ptr %49, i64 16
  store i64 %54, ptr %55, align 8, !tbaa !24
  %56 = load ptr, ptr %49, align 8, !tbaa !19
  tail call void %56(ptr noundef nonnull %0) #4
  %57 = load i32, ptr %39, align 8, !tbaa !36
  br label %58

58:                                               ; preds = %51, %48
  %59 = phi i32 [ %57, %51 ], [ %45, %48 ]
  %60 = load ptr, ptr %42, align 8, !tbaa !39
  %61 = getelementptr inbounds i8, ptr %60, i64 8
  %62 = load ptr, ptr %61, align 8, !tbaa !40
  tail call void %62(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %39, i32 noundef signext 0) #4
  %63 = load i32, ptr %39, align 8, !tbaa !36
  %64 = icmp eq i32 %63, %59
  br i1 %64, label %82, label %65

65:                                               ; preds = %58, %67
  %66 = phi i32 [ %63, %58 ], [ 0, %67 ]
  br label %44

67:                                               ; preds = %44
  %68 = load ptr, ptr %33, align 8, !tbaa !33
  %69 = getelementptr inbounds i8, ptr %68, i64 8
  %70 = load ptr, ptr %69, align 8, !tbaa !42
  tail call void %70(ptr noundef nonnull %0) #4
  %71 = load ptr, ptr %33, align 8, !tbaa !33
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  tail call void %72(ptr noundef nonnull %0) #4
  store i32 0, ptr %39, align 8, !tbaa !36
  %73 = load ptr, ptr %33, align 8, !tbaa !33
  %74 = getelementptr inbounds i8, ptr %73, i64 16
  %75 = load i32, ptr %74, align 8, !tbaa !37
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %65

77:                                               ; preds = %67, %32
  %78 = getelementptr inbounds i8, ptr %0, i64 92
  %79 = load i32, ptr %78, align 4, !tbaa !43
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 205, i32 206
  store i32 %81, ptr %3, align 4, !tbaa !6
  br label %82

82:                                               ; preds = %58, %77
  %83 = phi i32 [ 1, %77 ], [ 0, %58 ]
  ret i32 %83
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @jpeg_finish_output(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !6
  %4 = add i32 %3, -205
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 88
  %8 = load i32, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 544
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = getelementptr inbounds i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  tail call void %14(ptr noundef nonnull %0) #4
  store i32 208, ptr %2, align 4, !tbaa !6
  br label %23

15:                                               ; preds = %1
  %16 = icmp eq i32 %3, 208
  br i1 %16, label %23, label %17

17:                                               ; preds = %6, %15
  %18 = load ptr, ptr %0, align 8, !tbaa !28
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  store i32 20, ptr %19, align 8, !tbaa !29
  %20 = getelementptr inbounds i8, ptr %18, i64 44
  store i32 %3, ptr %20, align 4, !tbaa !31
  %21 = load ptr, ptr %0, align 8, !tbaa !28
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  tail call void %22(ptr noundef nonnull %0) #4
  br label %23

23:                                               ; preds = %15, %17, %10
  %24 = getelementptr inbounds i8, ptr %0, i64 172
  %25 = getelementptr inbounds i8, ptr %0, i64 180
  %26 = getelementptr inbounds i8, ptr %0, i64 576
  br label %27

27:                                               ; preds = %36, %23
  %28 = load i32, ptr %24, align 4, !tbaa !26
  %29 = load i32, ptr %25, align 4, !tbaa !27
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %26, align 8, !tbaa !15
  %33 = getelementptr inbounds i8, ptr %32, i64 36
  %34 = load i32, ptr %33, align 4, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 8, !tbaa !22
  %38 = tail call signext i32 %37(ptr noundef nonnull %0) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %27

40:                                               ; preds = %27, %31
  store i32 207, ptr %2, align 4, !tbaa !6
  br label %41

41:                                               ; preds = %36, %40
  %42 = phi i32 [ 1, %40 ], [ 0, %36 ]
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !11, i64 36}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!7, !11, i64 88}
!15 = !{!7, !8, i64 576}
!16 = !{!17, !11, i64 32}
!17 = !{!"jpeg_input_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36}
!18 = !{!7, !8, i64 16}
!19 = !{!20, !8, i64 0}
!20 = !{!"jpeg_progress_mgr", !8, i64 0, !21, i64 8, !21, i64 16, !11, i64 24, !11, i64 28}
!21 = !{!"long", !9, i64 0}
!22 = !{!17, !8, i64 0}
!23 = !{!20, !21, i64 8}
!24 = !{!20, !21, i64 16}
!25 = !{!7, !11, i64 420}
!26 = !{!7, !11, i64 172}
!27 = !{!7, !11, i64 180}
!28 = !{!7, !8, i64 0}
!29 = !{!30, !11, i64 40}
!30 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !21, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!31 = !{!9, !9, i64 0}
!32 = !{!30, !8, i64 0}
!33 = !{!7, !8, i64 544}
!34 = !{!35, !8, i64 0}
!35 = !{!"jpeg_decomp_master", !8, i64 0, !8, i64 8, !11, i64 16}
!36 = !{!7, !11, i64 168}
!37 = !{!35, !11, i64 16}
!38 = !{!7, !11, i64 140}
!39 = !{!7, !8, i64 552}
!40 = !{!41, !8, i64 8}
!41 = !{!"jpeg_d_main_controller", !8, i64 0, !8, i64 8}
!42 = !{!35, !8, i64 8}
!43 = !{!7, !11, i64 92}
!44 = !{!30, !8, i64 8}
!45 = !{!11, !11, i64 0}
!46 = !{!7, !11, i64 412}
!47 = !{!7, !11, i64 416}
!48 = !{!7, !8, i64 560}
!49 = !{!50, !8, i64 24}
!50 = !{!"jpeg_d_coef_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!51 = !{!17, !11, i64 36}
