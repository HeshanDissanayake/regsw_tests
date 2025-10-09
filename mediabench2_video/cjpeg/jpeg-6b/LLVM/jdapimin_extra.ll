; ModuleID = 'jdapimin.c'
source_filename = "jdapimin.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jpeg_CreateDecompress(ptr noundef %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr null, ptr %4, align 8, !tbaa !6
  %5 = icmp eq i32 %1, 62
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 12, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %7, i64 44
  store i32 62, ptr %9, align 4, !tbaa !18
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = getelementptr inbounds i8, ptr %10, i64 48
  store i32 %1, ptr %11, align 4, !tbaa !18
  %12 = load ptr, ptr %0, align 8, !tbaa !14
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  tail call void %13(ptr noundef nonnull %0) #3
  br label %14

14:                                               ; preds = %6, %3
  %15 = icmp eq i64 %2, 632
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !14
  %18 = getelementptr inbounds i8, ptr %17, i64 40
  store i32 21, ptr %18, align 8, !tbaa !15
  %19 = getelementptr inbounds i8, ptr %17, i64 44
  store i32 632, ptr %19, align 4, !tbaa !18
  %20 = trunc i64 %2 to i32
  %21 = load ptr, ptr %0, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, ptr %21, i64 48
  store i32 %20, ptr %22, align 4, !tbaa !18
  %23 = load ptr, ptr %0, align 8, !tbaa !14
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  tail call void %24(ptr noundef nonnull %0) #3
  br label %25

25:                                               ; preds = %16, %14
  %26 = load ptr, ptr %0, align 8, !tbaa !14
  %27 = getelementptr inbounds i8, ptr %0, i64 24
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(632) %29, i8 0, i64 624, i1 false)
  store ptr %26, ptr %0, align 8, !tbaa !14
  store ptr %28, ptr %27, align 8, !tbaa !20
  %30 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 1, ptr %30, align 8, !tbaa !21
  tail call void @jinit_memory_mgr(ptr noundef nonnull %0) #3
  %31 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %31, align 8, !tbaa !22
  %32 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr null, ptr %32, align 8, !tbaa !23
  %33 = getelementptr inbounds i8, ptr %0, i64 200
  %34 = getelementptr inbounds i8, ptr %0, i64 400
  store ptr null, ptr %34, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %33, i8 0, i64 96, i1 false)
  tail call void @jinit_marker_reader(ptr noundef nonnull %0) #3
  tail call void @jinit_input_controller(ptr noundef nonnull %0) #3
  %35 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 200, ptr %35, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @jinit_memory_mgr(ptr noundef) local_unnamed_addr #2

declare dso_local void @jinit_marker_reader(ptr noundef) local_unnamed_addr #2

declare dso_local void @jinit_input_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @jpeg_destroy_decompress(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @jpeg_destroy(ptr noundef %0) #3
  ret void
}

declare dso_local void @jpeg_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @jpeg_abort_decompress(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @jpeg_abort(ptr noundef %0) #3
  ret void
}

declare dso_local void @jpeg_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext i32 @jpeg_read_header(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 36
  %4 = load i32, ptr %3, align 4, !tbaa !25
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 200
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 20, ptr %9, align 8, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 %4, ptr %10, align 4, !tbaa !18
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %12(ptr noundef nonnull %0) #3
  br label %13

13:                                               ; preds = %2, %7
  %14 = tail call signext i32 @jpeg_consume_input(ptr noundef nonnull %0)
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 8, !tbaa !14
  %20 = getelementptr inbounds i8, ptr %19, i64 40
  store i32 51, ptr %20, align 8, !tbaa !15
  %21 = load ptr, ptr %19, align 8, !tbaa !19
  tail call void %21(ptr noundef nonnull %0) #3
  br label %22

22:                                               ; preds = %18, %16
  tail call void @jpeg_abort(ptr noundef nonnull %0) #3
  br label %23

23:                                               ; preds = %13, %22
  ret i32 %14
}

; Function Attrs: nounwind
define dso_local signext i32 @jpeg_consume_input(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !25
  switch i32 %3, label %112 [
    i32 200, label %4
    i32 201, label %13
    i32 202, label %118
    i32 203, label %107
    i32 204, label %107
    i32 205, label %107
    i32 206, label %107
    i32 207, label %107
    i32 208, label %107
    i32 210, label %107
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 576
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  tail call void %8(ptr noundef nonnull %0) #3
  %9 = getelementptr inbounds i8, ptr %0, i64 40
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = getelementptr inbounds i8, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  tail call void %12(ptr noundef nonnull %0) #3
  store i32 201, ptr %2, align 4, !tbaa !25
  br label %13

13:                                               ; preds = %1, %4
  %14 = getelementptr inbounds i8, ptr %0, i64 576
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = tail call signext i32 %16(ptr noundef nonnull %0) #3
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %118

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %0, i64 56
  %21 = load i32, ptr %20, align 8, !tbaa !32
  switch i32 %21, label %85 [
    i32 1, label %86
    i32 3, label %22
    i32 4, label %69
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %0, i64 372
  %24 = load i32, ptr %23, align 4, !tbaa !33
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %0, i64 384
  %28 = load i32, ptr %27, align 8, !tbaa !34
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %0, i64 388
  %32 = load i8, ptr %31, align 4, !tbaa !35
  switch i8 %32, label %34 [
    i8 0, label %86
    i8 1, label %33
  ]

33:                                               ; preds = %30
  br label %86

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !14
  %36 = getelementptr inbounds i8, ptr %35, i64 40
  store i32 114, ptr %36, align 8, !tbaa !15
  %37 = zext i8 %32 to i32
  %38 = getelementptr inbounds i8, ptr %35, i64 44
  store i32 %37, ptr %38, align 4, !tbaa !18
  %39 = load ptr, ptr %0, align 8, !tbaa !14
  %40 = getelementptr inbounds i8, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8, !tbaa !36
  tail call void %41(ptr noundef nonnull %0, i32 noundef signext -1) #3
  br label %86

42:                                               ; preds = %26
  %43 = getelementptr inbounds i8, ptr %0, i64 304
  %44 = load ptr, ptr %43, align 8, !tbaa !37
  %45 = load i32, ptr %44, align 8, !tbaa !38
  %46 = getelementptr inbounds i8, ptr %44, i64 96
  %47 = load i32, ptr %46, align 8, !tbaa !38
  %48 = getelementptr inbounds i8, ptr %44, i64 192
  %49 = load i32, ptr %48, align 8, !tbaa !38
  %50 = icmp eq i32 %45, 1
  %51 = icmp eq i32 %47, 2
  %52 = select i1 %50, i1 %51, i1 false
  %53 = icmp eq i32 %49, 3
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %86, label %55

55:                                               ; preds = %42
  %56 = icmp eq i32 %45, 82
  %57 = icmp eq i32 %47, 71
  %58 = select i1 %56, i1 %57, i1 false
  %59 = icmp eq i32 %49, 66
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %86, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %0, align 8, !tbaa !14
  %63 = getelementptr inbounds i8, ptr %62, i64 44
  store i32 %45, ptr %63, align 4, !tbaa !40
  %64 = getelementptr inbounds i8, ptr %62, i64 48
  store i32 %47, ptr %64, align 4, !tbaa !40
  %65 = getelementptr inbounds i8, ptr %62, i64 52
  store i32 %49, ptr %65, align 4, !tbaa !40
  %66 = getelementptr inbounds i8, ptr %62, i64 40
  store i32 111, ptr %66, align 8, !tbaa !15
  %67 = getelementptr inbounds i8, ptr %62, i64 8
  %68 = load ptr, ptr %67, align 8, !tbaa !36
  tail call void %68(ptr noundef nonnull %0, i32 noundef signext 1) #3
  br label %86

69:                                               ; preds = %19
  %70 = getelementptr inbounds i8, ptr %0, i64 384
  %71 = load i32, ptr %70, align 8, !tbaa !34
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %0, i64 388
  %75 = load i8, ptr %74, align 4, !tbaa !35
  switch i8 %75, label %77 [
    i8 0, label %86
    i8 2, label %76
  ]

76:                                               ; preds = %73
  br label %86

77:                                               ; preds = %73
  %78 = load ptr, ptr %0, align 8, !tbaa !14
  %79 = getelementptr inbounds i8, ptr %78, i64 40
  store i32 114, ptr %79, align 8, !tbaa !15
  %80 = zext i8 %75 to i32
  %81 = getelementptr inbounds i8, ptr %78, i64 44
  store i32 %80, ptr %81, align 4, !tbaa !18
  %82 = load ptr, ptr %0, align 8, !tbaa !14
  %83 = getelementptr inbounds i8, ptr %82, i64 8
  %84 = load ptr, ptr %83, align 8, !tbaa !36
  tail call void %84(ptr noundef nonnull %0, i32 noundef signext -1) #3
  br label %86

85:                                               ; preds = %19
  br label %86

86:                                               ; preds = %19, %22, %30, %33, %34, %42, %55, %61, %69, %73, %76, %77, %85
  %87 = phi i32 [ 0, %85 ], [ %21, %19 ], [ 3, %61 ], [ 3, %34 ], [ 3, %33 ], [ 3, %22 ], [ 2, %30 ], [ 3, %42 ], [ 2, %55 ], [ 5, %76 ], [ 5, %77 ], [ 4, %73 ], [ 4, %69 ]
  %88 = phi i32 [ 0, %85 ], [ %21, %19 ], [ 2, %61 ], [ 2, %34 ], [ 2, %33 ], [ 2, %22 ], [ 2, %30 ], [ 2, %42 ], [ 2, %55 ], [ 4, %76 ], [ 4, %77 ], [ 4, %73 ], [ 4, %69 ]
  %89 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 %87, ptr %89, align 4, !tbaa !41
  %90 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %88, ptr %90, align 8, !tbaa !42
  %91 = getelementptr inbounds i8, ptr %0, i64 68
  store i32 1, ptr %91, align 4, !tbaa !43
  %92 = getelementptr inbounds i8, ptr %0, i64 72
  store i32 1, ptr %92, align 8, !tbaa !44
  %93 = getelementptr inbounds i8, ptr %0, i64 80
  store double 1.000000e+00, ptr %93, align 8, !tbaa !45
  %94 = getelementptr inbounds i8, ptr %0, i64 88
  store i32 0, ptr %94, align 8, !tbaa !46
  %95 = getelementptr inbounds i8, ptr %0, i64 92
  store i32 0, ptr %95, align 4, !tbaa !47
  %96 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 0, ptr %96, align 8, !tbaa !48
  %97 = getelementptr inbounds i8, ptr %0, i64 100
  store i32 1, ptr %97, align 4, !tbaa !49
  %98 = getelementptr inbounds i8, ptr %0, i64 104
  store i32 1, ptr %98, align 8, !tbaa !50
  %99 = getelementptr inbounds i8, ptr %0, i64 108
  store i32 0, ptr %99, align 4, !tbaa !51
  %100 = getelementptr inbounds i8, ptr %0, i64 112
  store i32 2, ptr %100, align 8, !tbaa !52
  %101 = getelementptr inbounds i8, ptr %0, i64 116
  store i32 1, ptr %101, align 4, !tbaa !53
  %102 = getelementptr inbounds i8, ptr %0, i64 120
  store i32 256, ptr %102, align 8, !tbaa !54
  %103 = getelementptr inbounds i8, ptr %0, i64 160
  store ptr null, ptr %103, align 8, !tbaa !55
  %104 = getelementptr inbounds i8, ptr %0, i64 124
  store i32 0, ptr %104, align 4, !tbaa !56
  %105 = getelementptr inbounds i8, ptr %0, i64 128
  store i32 0, ptr %105, align 8, !tbaa !57
  %106 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 0, ptr %106, align 4, !tbaa !58
  store i32 202, ptr %2, align 4, !tbaa !25
  br label %118

107:                                              ; preds = %1, %1, %1, %1, %1, %1, %1
  %108 = getelementptr inbounds i8, ptr %0, i64 576
  %109 = load ptr, ptr %108, align 8, !tbaa !26
  %110 = load ptr, ptr %109, align 8, !tbaa !31
  %111 = tail call signext i32 %110(ptr noundef nonnull %0) #3
  br label %118

112:                                              ; preds = %1
  %113 = load ptr, ptr %0, align 8, !tbaa !14
  %114 = getelementptr inbounds i8, ptr %113, i64 40
  store i32 20, ptr %114, align 8, !tbaa !15
  %115 = getelementptr inbounds i8, ptr %113, i64 44
  store i32 %3, ptr %115, align 4, !tbaa !18
  %116 = load ptr, ptr %0, align 8, !tbaa !14
  %117 = load ptr, ptr %116, align 8, !tbaa !19
  tail call void %117(ptr noundef nonnull %0) #3
  br label %118

118:                                              ; preds = %1, %13, %86, %112, %107
  %119 = phi i32 [ 0, %112 ], [ %111, %107 ], [ 1, %86 ], [ %17, %13 ], [ 1, %1 ]
  ret i32 %119
}

; Function Attrs: nounwind
define dso_local signext i32 @jpeg_input_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !25
  %4 = add i32 %3, -211
  %5 = icmp ult i32 %4, -11
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 20, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %7, i64 44
  store i32 %3, ptr %9, align 4, !tbaa !18
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  tail call void %11(ptr noundef nonnull %0) #3
  br label %12

12:                                               ; preds = %1, %6
  %13 = getelementptr inbounds i8, ptr %0, i64 576
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  %15 = getelementptr inbounds i8, ptr %14, i64 36
  %16 = load i32, ptr %15, align 4, !tbaa !59
  ret i32 %16
}

; Function Attrs: nounwind
define dso_local signext i32 @jpeg_has_multiple_scans(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !25
  %4 = add i32 %3, -211
  %5 = icmp ult i32 %4, -9
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 20, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %7, i64 44
  store i32 %3, ptr %9, align 4, !tbaa !18
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  tail call void %11(ptr noundef nonnull %0) #3
  br label %12

12:                                               ; preds = %1, %6
  %13 = getelementptr inbounds i8, ptr %0, i64 576
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  %15 = getelementptr inbounds i8, ptr %14, i64 32
  %16 = load i32, ptr %15, align 8, !tbaa !60
  ret i32 %16
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @jpeg_finish_decompress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !25
  %4 = add i32 %3, -205
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 88
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 168
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = getelementptr inbounds i8, ptr %0, i64 140
  %14 = load i32, ptr %13, align 4, !tbaa !62
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 8, !tbaa !14
  %18 = getelementptr inbounds i8, ptr %17, i64 40
  store i32 67, ptr %18, align 8, !tbaa !15
  %19 = load ptr, ptr %17, align 8, !tbaa !19
  tail call void %19(ptr noundef nonnull %0) #3
  br label %20

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds i8, ptr %0, i64 544
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds i8, ptr %22, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  tail call void %24(ptr noundef nonnull %0) #3
  store i32 210, ptr %2, align 4, !tbaa !25
  br label %33

25:                                               ; preds = %1, %6
  switch i32 %3, label %27 [
    i32 207, label %26
    i32 210, label %33
  ]

26:                                               ; preds = %25
  store i32 210, ptr %2, align 4, !tbaa !25
  br label %33

27:                                               ; preds = %25
  %28 = load ptr, ptr %0, align 8, !tbaa !14
  %29 = getelementptr inbounds i8, ptr %28, i64 40
  store i32 20, ptr %29, align 8, !tbaa !15
  %30 = getelementptr inbounds i8, ptr %28, i64 44
  store i32 %3, ptr %30, align 4, !tbaa !18
  %31 = load ptr, ptr %0, align 8, !tbaa !14
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  tail call void %32(ptr noundef nonnull %0) #3
  br label %33

33:                                               ; preds = %25, %26, %27, %20
  %34 = getelementptr inbounds i8, ptr %0, i64 576
  br label %35

35:                                               ; preds = %40, %33
  %36 = load ptr, ptr %34, align 8, !tbaa !26
  %37 = getelementptr inbounds i8, ptr %36, i64 36
  %38 = load i32, ptr %37, align 4, !tbaa !59
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load ptr, ptr %36, align 8, !tbaa !31
  %42 = tail call signext i32 %41(ptr noundef nonnull %0) #3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %35

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, ptr %0, i64 40
  %46 = load ptr, ptr %45, align 8, !tbaa !23
  %47 = getelementptr inbounds i8, ptr %46, i64 48
  %48 = load ptr, ptr %47, align 8, !tbaa !66
  tail call void %48(ptr noundef nonnull %0) #3
  tail call void @jpeg_abort(ptr noundef nonnull %0) #3
  br label %49

49:                                               ; preds = %40, %44
  %50 = phi i32 [ 1, %44 ], [ 0, %40 ]
  ret i32 %50
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }

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
!14 = !{!7, !8, i64 0}
!15 = !{!16, !11, i64 40}
!16 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !17, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!17 = !{!"long", !9, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!16, !8, i64 0}
!20 = !{!7, !8, i64 24}
!21 = !{!7, !11, i64 32}
!22 = !{!7, !8, i64 16}
!23 = !{!7, !8, i64 40}
!24 = !{!7, !8, i64 400}
!25 = !{!7, !11, i64 36}
!26 = !{!7, !8, i64 576}
!27 = !{!28, !8, i64 8}
!28 = !{!"jpeg_input_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36}
!29 = !{!30, !8, i64 16}
!30 = !{!"jpeg_source_mgr", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!31 = !{!28, !8, i64 0}
!32 = !{!7, !11, i64 56}
!33 = !{!7, !11, i64 372}
!34 = !{!7, !11, i64 384}
!35 = !{!7, !9, i64 388}
!36 = !{!16, !8, i64 8}
!37 = !{!7, !8, i64 304}
!38 = !{!39, !11, i64 0}
!39 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!40 = !{!11, !11, i64 0}
!41 = !{!7, !11, i64 60}
!42 = !{!7, !11, i64 64}
!43 = !{!7, !11, i64 68}
!44 = !{!7, !11, i64 72}
!45 = !{!7, !12, i64 80}
!46 = !{!7, !11, i64 88}
!47 = !{!7, !11, i64 92}
!48 = !{!7, !11, i64 96}
!49 = !{!7, !11, i64 100}
!50 = !{!7, !11, i64 104}
!51 = !{!7, !11, i64 108}
!52 = !{!7, !11, i64 112}
!53 = !{!7, !11, i64 116}
!54 = !{!7, !11, i64 120}
!55 = !{!7, !8, i64 160}
!56 = !{!7, !11, i64 124}
!57 = !{!7, !11, i64 128}
!58 = !{!7, !11, i64 132}
!59 = !{!28, !11, i64 36}
!60 = !{!28, !11, i64 32}
!61 = !{!7, !11, i64 168}
!62 = !{!7, !11, i64 140}
!63 = !{!7, !8, i64 544}
!64 = !{!65, !8, i64 8}
!65 = !{!"jpeg_decomp_master", !8, i64 0, !8, i64 8, !11, i64 16}
!66 = !{!30, !8, i64 48}
