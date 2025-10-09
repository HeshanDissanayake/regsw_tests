; ModuleID = 'jdmarker.c'
source_filename = "jdmarker.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@jpeg_natural_order = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @jpeg_resync_to_restart(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 540
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 121, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds i8, ptr %5, i64 44
  store i32 %4, ptr %7, align 4, !tbaa !18
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %8, i64 48
  store i32 %1, ptr %9, align 4, !tbaa !18
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = getelementptr inbounds i8, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %12(ptr noundef nonnull %0, i32 noundef signext -1) #7
  %13 = add nsw i32 %1, 1
  %14 = and i32 %13, 7
  %15 = or disjoint i32 %14, 208
  %16 = add nsw i32 %1, 2
  %17 = and i32 %16, 7
  %18 = or disjoint i32 %17, 208
  %19 = add i32 %1, 7
  %20 = and i32 %19, 7
  %21 = or disjoint i32 %20, 208
  %22 = add i32 %1, 6
  %23 = and i32 %22, 7
  %24 = or disjoint i32 %23, 208
  br label %25

25:                                               ; preds = %68, %2
  %26 = phi i32 [ %4, %2 ], [ %69, %68 ]
  %27 = icmp slt i32 %26, 192
  br i1 %27, label %57, label %28

28:                                               ; preds = %25
  %29 = add nsw i32 %26, -216
  %30 = icmp ult i32 %29, -8
  %31 = icmp eq i32 %26, %15
  %32 = select i1 %30, i1 true, i1 %31
  %33 = icmp eq i32 %26, %18
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = icmp eq i32 %26, %21
  %37 = icmp eq i32 %26, %24
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %57, label %48

39:                                               ; preds = %28
  %40 = load ptr, ptr %0, align 8, !tbaa !14
  %41 = getelementptr inbounds i8, ptr %40, i64 40
  store i32 97, ptr %41, align 8, !tbaa !15
  %42 = getelementptr inbounds i8, ptr %40, i64 44
  store i32 %26, ptr %42, align 4, !tbaa !18
  %43 = load ptr, ptr %0, align 8, !tbaa !14
  %44 = getelementptr inbounds i8, ptr %43, i64 48
  store i32 3, ptr %44, align 4, !tbaa !18
  %45 = load ptr, ptr %0, align 8, !tbaa !14
  %46 = getelementptr inbounds i8, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8, !tbaa !19
  tail call void %47(ptr noundef nonnull %0, i32 noundef signext 4) #7
  br label %70

48:                                               ; preds = %35
  %49 = load ptr, ptr %0, align 8, !tbaa !14
  %50 = getelementptr inbounds i8, ptr %49, i64 40
  store i32 97, ptr %50, align 8, !tbaa !15
  %51 = getelementptr inbounds i8, ptr %49, i64 44
  store i32 %26, ptr %51, align 4, !tbaa !18
  %52 = load ptr, ptr %0, align 8, !tbaa !14
  %53 = getelementptr inbounds i8, ptr %52, i64 48
  store i32 1, ptr %53, align 4, !tbaa !18
  %54 = load ptr, ptr %0, align 8, !tbaa !14
  %55 = getelementptr inbounds i8, ptr %54, i64 8
  %56 = load ptr, ptr %55, align 8, !tbaa !19
  tail call void %56(ptr noundef nonnull %0, i32 noundef signext 4) #7
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %70

57:                                               ; preds = %25, %35
  %58 = load ptr, ptr %0, align 8, !tbaa !14
  %59 = getelementptr inbounds i8, ptr %58, i64 40
  store i32 97, ptr %59, align 8, !tbaa !15
  %60 = getelementptr inbounds i8, ptr %58, i64 44
  store i32 %26, ptr %60, align 4, !tbaa !18
  %61 = load ptr, ptr %0, align 8, !tbaa !14
  %62 = getelementptr inbounds i8, ptr %61, i64 48
  store i32 2, ptr %62, align 4, !tbaa !18
  %63 = load ptr, ptr %0, align 8, !tbaa !14
  %64 = getelementptr inbounds i8, ptr %63, i64 8
  %65 = load ptr, ptr %64, align 8, !tbaa !19
  tail call void %65(ptr noundef nonnull %0, i32 noundef signext 4) #7
  %66 = tail call fastcc signext i32 @next_marker(ptr noundef nonnull %0)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  %69 = load i32, ptr %3, align 4, !tbaa !6
  br label %25

70:                                               ; preds = %57, %39, %48
  %71 = phi i32 [ 1, %48 ], [ 1, %39 ], [ 0, %57 ]
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal fastcc signext range(i32 0, 2) i32 @next_marker(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds i8, ptr %3, i64 24
  %8 = getelementptr inbounds i8, ptr %0, i64 584
  br label %9

9:                                                ; preds = %69, %1
  %10 = phi ptr [ %4, %1 ], [ %67, %69 ]
  %11 = phi i64 [ %6, %1 ], [ %66, %69 ]
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !24
  %15 = tail call signext i32 %14(ptr noundef nonnull %0) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %93, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8, !tbaa !21
  %19 = load i64, ptr %5, align 8, !tbaa !23
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi ptr [ %18, %17 ], [ %10, %9 ]
  %22 = phi i64 [ %19, %17 ], [ %11, %9 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = add i64 %22, -1
  %25 = load i8, ptr %21, align 1, !tbaa !18
  %26 = icmp eq i8 %25, -1
  br i1 %26, label %49, label %27

27:                                               ; preds = %20, %42
  %28 = phi i64 [ %46, %42 ], [ %24, %20 ]
  %29 = phi ptr [ %45, %42 ], [ %23, %20 ]
  %30 = load ptr, ptr %8, align 8, !tbaa !25
  %31 = getelementptr inbounds i8, ptr %30, i64 36
  %32 = load i32, ptr %31, align 4, !tbaa !26
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !26
  store ptr %29, ptr %3, align 8, !tbaa !21
  store i64 %28, ptr %5, align 8, !tbaa !23
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load ptr, ptr %7, align 8, !tbaa !24
  %37 = tail call signext i32 %36(ptr noundef nonnull %0) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %93, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %3, align 8, !tbaa !21
  %41 = load i64, ptr %5, align 8, !tbaa !23
  br label %42

42:                                               ; preds = %39, %27
  %43 = phi ptr [ %40, %39 ], [ %29, %27 ]
  %44 = phi i64 [ %41, %39 ], [ %28, %27 ]
  %45 = getelementptr inbounds i8, ptr %43, i64 1
  %46 = add i64 %44, -1
  %47 = load i8, ptr %43, align 1, !tbaa !18
  %48 = icmp eq i8 %47, -1
  br i1 %48, label %49, label %27

49:                                               ; preds = %42, %20
  %50 = phi ptr [ %23, %20 ], [ %45, %42 ]
  %51 = phi i64 [ %24, %20 ], [ %46, %42 ]
  br label %52

52:                                               ; preds = %49, %63
  %53 = phi ptr [ %67, %63 ], [ %50, %49 ]
  %54 = phi i64 [ %66, %63 ], [ %51, %49 ]
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load ptr, ptr %7, align 8, !tbaa !24
  %58 = tail call signext i32 %57(ptr noundef %0) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %93, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %3, align 8, !tbaa !21
  %62 = load i64, ptr %5, align 8, !tbaa !23
  br label %63

63:                                               ; preds = %60, %52
  %64 = phi ptr [ %61, %60 ], [ %53, %52 ]
  %65 = phi i64 [ %62, %60 ], [ %54, %52 ]
  %66 = add i64 %65, -1
  %67 = getelementptr inbounds i8, ptr %64, i64 1
  %68 = load i8, ptr %64, align 1, !tbaa !18
  switch i8 %68, label %74 [
    i8 -1, label %52
    i8 0, label %69
  ]

69:                                               ; preds = %63
  %70 = load ptr, ptr %8, align 8, !tbaa !25
  %71 = getelementptr inbounds i8, ptr %70, i64 36
  %72 = load i32, ptr %71, align 4, !tbaa !26
  %73 = add i32 %72, 2
  store i32 %73, ptr %71, align 4, !tbaa !26
  store ptr %67, ptr %3, align 8, !tbaa !21
  store i64 %66, ptr %5, align 8, !tbaa !23
  br label %9

74:                                               ; preds = %63
  %75 = zext i8 %68 to i32
  %76 = load ptr, ptr %8, align 8, !tbaa !25
  %77 = getelementptr inbounds i8, ptr %76, i64 36
  %78 = load i32, ptr %77, align 4, !tbaa !26
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %74
  %81 = load ptr, ptr %0, align 8, !tbaa !14
  %82 = getelementptr inbounds i8, ptr %81, i64 40
  store i32 116, ptr %82, align 8, !tbaa !15
  %83 = getelementptr inbounds i8, ptr %81, i64 44
  store i32 %78, ptr %83, align 4, !tbaa !18
  %84 = load ptr, ptr %0, align 8, !tbaa !14
  %85 = getelementptr inbounds i8, ptr %84, i64 48
  store i32 %75, ptr %85, align 4, !tbaa !18
  %86 = load ptr, ptr %0, align 8, !tbaa !14
  %87 = getelementptr inbounds i8, ptr %86, i64 8
  %88 = load ptr, ptr %87, align 8, !tbaa !19
  tail call void %88(ptr noundef nonnull %0, i32 noundef signext -1) #7
  %89 = load ptr, ptr %8, align 8, !tbaa !25
  %90 = getelementptr inbounds i8, ptr %89, i64 36
  store i32 0, ptr %90, align 4, !tbaa !26
  br label %91

91:                                               ; preds = %80, %74
  %92 = getelementptr inbounds i8, ptr %0, i64 540
  store i32 %75, ptr %92, align 4, !tbaa !6
  store ptr %67, ptr %3, align 8, !tbaa !21
  store i64 %66, ptr %5, align 8, !tbaa !23
  br label %93

93:                                               ; preds = %13, %35, %56, %91
  %94 = phi i32 [ 1, %91 ], [ 0, %56 ], [ 0, %35 ], [ 0, %13 ]
  ret i32 %94
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @jinit_marker_reader(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 0, i64 noundef 264) #7
  %6 = getelementptr inbounds i8, ptr %0, i64 584
  store ptr %5, ptr %6, align 8, !tbaa !25
  store ptr @reset_marker_reader, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @read_markers, ptr %7, align 8, !tbaa !33
  %8 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @read_restart_marker, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 40
  store ptr @skip_variable, ptr %9, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %5, i64 176
  store i32 0, ptr %10, align 8, !tbaa !36
  %11 = getelementptr inbounds i8, ptr %5, i64 48
  %12 = getelementptr inbounds i8, ptr %5, i64 180
  store i32 0, ptr %12, align 4, !tbaa !37
  %13 = getelementptr inbounds i8, ptr %5, i64 56
  store ptr @skip_variable, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds i8, ptr %5, i64 184
  store i32 0, ptr %14, align 4, !tbaa !37
  %15 = getelementptr inbounds i8, ptr %5, i64 64
  store ptr @skip_variable, ptr %15, align 8, !tbaa !38
  %16 = getelementptr inbounds i8, ptr %5, i64 188
  store i32 0, ptr %16, align 4, !tbaa !37
  %17 = getelementptr inbounds i8, ptr %5, i64 72
  store ptr @skip_variable, ptr %17, align 8, !tbaa !38
  %18 = getelementptr inbounds i8, ptr %5, i64 192
  store i32 0, ptr %18, align 4, !tbaa !37
  %19 = getelementptr inbounds i8, ptr %5, i64 80
  store ptr @skip_variable, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds i8, ptr %5, i64 196
  store i32 0, ptr %20, align 4, !tbaa !37
  %21 = getelementptr inbounds i8, ptr %5, i64 88
  store ptr @skip_variable, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds i8, ptr %5, i64 200
  store i32 0, ptr %22, align 4, !tbaa !37
  %23 = getelementptr inbounds i8, ptr %5, i64 96
  store ptr @skip_variable, ptr %23, align 8, !tbaa !38
  %24 = getelementptr inbounds i8, ptr %5, i64 204
  store i32 0, ptr %24, align 4, !tbaa !37
  %25 = getelementptr inbounds i8, ptr %5, i64 104
  store ptr @skip_variable, ptr %25, align 8, !tbaa !38
  %26 = getelementptr inbounds i8, ptr %5, i64 208
  store i32 0, ptr %26, align 4, !tbaa !37
  %27 = getelementptr inbounds i8, ptr %5, i64 112
  store ptr @skip_variable, ptr %27, align 8, !tbaa !38
  %28 = getelementptr inbounds i8, ptr %5, i64 212
  store i32 0, ptr %28, align 4, !tbaa !37
  %29 = getelementptr inbounds i8, ptr %5, i64 120
  store ptr @skip_variable, ptr %29, align 8, !tbaa !38
  %30 = getelementptr inbounds i8, ptr %5, i64 216
  store i32 0, ptr %30, align 4, !tbaa !37
  %31 = getelementptr inbounds i8, ptr %5, i64 128
  store ptr @skip_variable, ptr %31, align 8, !tbaa !38
  %32 = getelementptr inbounds i8, ptr %5, i64 220
  store i32 0, ptr %32, align 4, !tbaa !37
  %33 = getelementptr inbounds i8, ptr %5, i64 136
  store ptr @skip_variable, ptr %33, align 8, !tbaa !38
  %34 = getelementptr inbounds i8, ptr %5, i64 224
  store i32 0, ptr %34, align 4, !tbaa !37
  %35 = getelementptr inbounds i8, ptr %5, i64 144
  store ptr @skip_variable, ptr %35, align 8, !tbaa !38
  %36 = getelementptr inbounds i8, ptr %5, i64 228
  store i32 0, ptr %36, align 4, !tbaa !37
  %37 = getelementptr inbounds i8, ptr %5, i64 152
  store ptr @skip_variable, ptr %37, align 8, !tbaa !38
  %38 = getelementptr inbounds i8, ptr %5, i64 232
  store i32 0, ptr %38, align 4, !tbaa !37
  %39 = getelementptr inbounds i8, ptr %5, i64 236
  store i32 0, ptr %39, align 4, !tbaa !37
  %40 = getelementptr inbounds i8, ptr %5, i64 168
  store ptr @skip_variable, ptr %40, align 8, !tbaa !38
  %41 = getelementptr inbounds i8, ptr %5, i64 240
  store i32 0, ptr %41, align 4, !tbaa !37
  store ptr @get_interesting_appn, ptr %11, align 8, !tbaa !38
  %42 = getelementptr inbounds i8, ptr %5, i64 160
  store ptr @get_interesting_appn, ptr %42, align 8, !tbaa !38
  %43 = load ptr, ptr %6, align 8, !tbaa !25
  %44 = getelementptr inbounds i8, ptr %0, i64 304
  store ptr null, ptr %44, align 8, !tbaa !39
  %45 = getelementptr inbounds i8, ptr %0, i64 172
  store i32 0, ptr %45, align 4, !tbaa !40
  %46 = getelementptr inbounds i8, ptr %0, i64 540
  store i32 0, ptr %46, align 4, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %43, i64 24
  store i32 0, ptr %47, align 8, !tbaa !41
  %48 = getelementptr inbounds i8, ptr %43, i64 28
  store i32 0, ptr %48, align 4, !tbaa !42
  %49 = getelementptr inbounds i8, ptr %43, i64 36
  store i32 0, ptr %49, align 4, !tbaa !43
  %50 = getelementptr inbounds i8, ptr %43, i64 248
  store ptr null, ptr %50, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define internal void @reset_marker_reader(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 584
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds i8, ptr %0, i64 304
  store ptr null, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 172
  store i32 0, ptr %5, align 4, !tbaa !40
  %6 = getelementptr inbounds i8, ptr %0, i64 540
  store i32 0, ptr %6, align 4, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 0, ptr %7, align 8, !tbaa !41
  %8 = getelementptr inbounds i8, ptr %3, i64 28
  store i32 0, ptr %8, align 4, !tbaa !42
  %9 = getelementptr inbounds i8, ptr %3, i64 36
  store i32 0, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds i8, ptr %3, i64 248
  store ptr null, ptr %10, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind
define internal signext range(i32 0, 3) i32 @read_markers(ptr noundef %0) #0 {
  %2 = alloca [256 x i8], align 1
  %3 = getelementptr inbounds i8, ptr %0, i64 540
  %4 = getelementptr inbounds i8, ptr %0, i64 584
  %5 = getelementptr inbounds i8, ptr %0, i64 40
  %6 = getelementptr inbounds i8, ptr %0, i64 368
  %7 = getelementptr inbounds i8, ptr %0, i64 200
  %8 = getelementptr inbounds i8, ptr %0, i64 264
  %9 = getelementptr inbounds i8, ptr %0, i64 232
  %10 = getelementptr inbounds i8, ptr %0, i64 320
  %11 = getelementptr inbounds i8, ptr %0, i64 336
  %12 = getelementptr inbounds i8, ptr %0, i64 352
  %13 = getelementptr inbounds i8, ptr %0, i64 60
  %14 = getelementptr inbounds i8, ptr %0, i64 392
  %15 = getelementptr inbounds i8, ptr %0, i64 372
  %16 = getelementptr inbounds i8, ptr %0, i64 376
  %17 = getelementptr inbounds i8, ptr %0, i64 377
  %18 = getelementptr inbounds i8, ptr %0, i64 378
  %19 = getelementptr inbounds i8, ptr %0, i64 380
  %20 = getelementptr inbounds i8, ptr %0, i64 382
  %21 = getelementptr inbounds i8, ptr %0, i64 384
  %22 = getelementptr inbounds i8, ptr %0, i64 388
  %23 = load i32, ptr %3, align 4, !tbaa !6
  br label %24

24:                                               ; preds = %1239, %1
  %25 = phi i32 [ 0, %1239 ], [ %23, %1 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %24
  %28 = load ptr, ptr %4, align 8, !tbaa !25
  %29 = getelementptr inbounds i8, ptr %28, i64 24
  %30 = load i32, ptr %29, align 8, !tbaa !45
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %27
  %33 = load ptr, ptr %5, align 8, !tbaa !20
  %34 = getelementptr inbounds i8, ptr %33, i64 8
  %35 = load i64, ptr %34, align 8, !tbaa !23
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %33, i64 24
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = tail call signext i32 %39(ptr noundef nonnull %0) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %1240, label %42

42:                                               ; preds = %37
  %43 = load i64, ptr %34, align 8, !tbaa !23
  br label %44

44:                                               ; preds = %42, %32
  %45 = phi i64 [ %43, %42 ], [ %35, %32 ]
  %46 = load ptr, ptr %33, align 8, !tbaa !21
  %47 = add i64 %45, -1
  %48 = getelementptr inbounds i8, ptr %46, i64 1
  %49 = load i8, ptr %46, align 1, !tbaa !18
  %50 = zext i8 %49 to i32
  %51 = icmp eq i64 %47, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = getelementptr inbounds i8, ptr %33, i64 24
  %54 = load ptr, ptr %53, align 8, !tbaa !24
  %55 = tail call signext i32 %54(ptr noundef nonnull %0) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %1240, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %33, align 8, !tbaa !21
  %59 = load i64, ptr %34, align 8, !tbaa !23
  br label %60

60:                                               ; preds = %57, %44
  %61 = phi ptr [ %58, %57 ], [ %48, %44 ]
  %62 = phi i64 [ %59, %57 ], [ %47, %44 ]
  %63 = add i64 %62, -1
  %64 = getelementptr inbounds i8, ptr %61, i64 1
  %65 = load i8, ptr %61, align 1, !tbaa !18
  %66 = zext i8 %65 to i32
  %67 = icmp ne i8 %49, -1
  %68 = icmp ne i8 %65, -40
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load ptr, ptr %0, align 8, !tbaa !14
  %72 = getelementptr inbounds i8, ptr %71, i64 40
  store i32 53, ptr %72, align 8, !tbaa !15
  %73 = getelementptr inbounds i8, ptr %71, i64 44
  store i32 %50, ptr %73, align 4, !tbaa !18
  %74 = load ptr, ptr %0, align 8, !tbaa !14
  %75 = getelementptr inbounds i8, ptr %74, i64 48
  store i32 %66, ptr %75, align 4, !tbaa !18
  %76 = load ptr, ptr %0, align 8, !tbaa !14
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  tail call void %77(ptr noundef nonnull %0) #7
  br label %78

78:                                               ; preds = %60, %70
  store i32 %66, ptr %3, align 4, !tbaa !6
  store ptr %64, ptr %33, align 8, !tbaa !21
  store i64 %63, ptr %34, align 8, !tbaa !23
  br label %84

79:                                               ; preds = %27
  %80 = tail call fastcc signext i32 @next_marker(ptr noundef nonnull %0)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %1240, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %3, align 4, !tbaa !6
  br label %84

84:                                               ; preds = %82, %78, %24
  %85 = phi i32 [ %83, %82 ], [ %66, %78 ], [ %25, %24 ]
  switch i32 %85, label %1233 [
    i32 216, label %86
    i32 192, label %103
    i32 193, label %103
    i32 194, label %106
    i32 201, label %109
    i32 202, label %112
    i32 195, label %115
    i32 197, label %115
    i32 198, label %115
    i32 199, label %115
    i32 200, label %115
    i32 203, label %115
    i32 205, label %115
    i32 206, label %115
    i32 207, label %115
    i32 218, label %121
    i32 217, label %361
    i32 204, label %366
    i32 196, label %419
    i32 219, label %853
    i32 221, label %1075
    i32 224, label %1158
    i32 225, label %1158
    i32 226, label %1158
    i32 227, label %1158
    i32 228, label %1158
    i32 229, label %1158
    i32 230, label %1158
    i32 231, label %1158
    i32 232, label %1158
    i32 233, label %1158
    i32 234, label %1158
    i32 235, label %1158
    i32 236, label %1158
    i32 237, label %1158
    i32 238, label %1158
    i32 239, label %1158
    i32 254, label %1167
    i32 208, label %1173
    i32 209, label %1173
    i32 210, label %1173
    i32 211, label %1173
    i32 212, label %1173
    i32 213, label %1173
    i32 214, label %1173
    i32 215, label %1173
    i32 1, label %1173
    i32 220, label %1180
  ]

86:                                               ; preds = %84
  %87 = load ptr, ptr %0, align 8, !tbaa !14
  %88 = getelementptr inbounds i8, ptr %87, i64 40
  store i32 102, ptr %88, align 8, !tbaa !15
  %89 = getelementptr inbounds i8, ptr %87, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !19
  tail call void %90(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %91 = load ptr, ptr %4, align 8, !tbaa !25
  %92 = getelementptr inbounds i8, ptr %91, i64 24
  %93 = load i32, ptr %92, align 8, !tbaa !45
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %86
  %96 = load ptr, ptr %0, align 8, !tbaa !14
  %97 = getelementptr inbounds i8, ptr %96, i64 40
  store i32 61, ptr %97, align 8, !tbaa !15
  %98 = load ptr, ptr %96, align 8, !tbaa !46
  tail call void %98(ptr noundef nonnull %0) #7
  %99 = load ptr, ptr %4, align 8, !tbaa !25
  br label %100

100:                                              ; preds = %86, %95
  %101 = phi ptr [ %99, %95 ], [ %91, %86 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %10, i8 0, i64 16, i1 false), !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %11, i8 1, i64 16, i1 false), !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %12, i8 5, i64 16, i1 false), !tbaa !18
  store i32 0, ptr %6, align 8, !tbaa !47
  store i32 0, ptr %13, align 4, !tbaa !48
  store i32 0, ptr %14, align 8, !tbaa !49
  store i32 0, ptr %15, align 4, !tbaa !50
  store i8 1, ptr %16, align 8, !tbaa !51
  store i8 1, ptr %17, align 1, !tbaa !52
  store i8 0, ptr %18, align 2, !tbaa !53
  store i16 1, ptr %19, align 4, !tbaa !54
  store i16 1, ptr %20, align 2, !tbaa !55
  store i32 0, ptr %21, align 8, !tbaa !56
  store i8 0, ptr %22, align 4, !tbaa !57
  %102 = getelementptr inbounds i8, ptr %101, i64 24
  store i32 1, ptr %102, align 8, !tbaa !45
  br label %1239

103:                                              ; preds = %84, %84
  %104 = tail call fastcc signext i32 @get_sof(ptr noundef nonnull %0, i32 noundef signext 0, i32 noundef signext 0)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %1240, label %1239

106:                                              ; preds = %84
  %107 = tail call fastcc signext i32 @get_sof(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 0)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %1240, label %1239

109:                                              ; preds = %84
  %110 = tail call fastcc signext i32 @get_sof(ptr noundef nonnull %0, i32 noundef signext 0, i32 noundef signext 1)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %1240, label %1239

112:                                              ; preds = %84
  %113 = tail call fastcc signext i32 @get_sof(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext 1)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %1240, label %1239

115:                                              ; preds = %84, %84, %84, %84, %84, %84, %84, %84, %84
  %116 = load ptr, ptr %0, align 8, !tbaa !14
  %117 = getelementptr inbounds i8, ptr %116, i64 40
  store i32 60, ptr %117, align 8, !tbaa !15
  %118 = getelementptr inbounds i8, ptr %116, i64 44
  store i32 %85, ptr %118, align 4, !tbaa !18
  %119 = load ptr, ptr %0, align 8, !tbaa !14
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  tail call void %120(ptr noundef nonnull %0) #7
  br label %1239

121:                                              ; preds = %84
  %122 = load ptr, ptr %5, align 8, !tbaa !20
  %123 = load ptr, ptr %122, align 8, !tbaa !21
  %124 = getelementptr inbounds i8, ptr %122, i64 8
  %125 = load i64, ptr %124, align 8, !tbaa !23
  %126 = load ptr, ptr %4, align 8, !tbaa !25
  %127 = getelementptr inbounds i8, ptr %126, i64 28
  %128 = load i32, ptr %127, align 4, !tbaa !58
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load ptr, ptr %0, align 8, !tbaa !14
  %132 = getelementptr inbounds i8, ptr %131, i64 40
  store i32 62, ptr %132, align 8, !tbaa !15
  %133 = load ptr, ptr %131, align 8, !tbaa !46
  tail call void %133(ptr noundef nonnull %0) #7
  br label %134

134:                                              ; preds = %130, %121
  %135 = icmp eq i64 %125, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %134
  %137 = getelementptr inbounds i8, ptr %122, i64 24
  %138 = load ptr, ptr %137, align 8, !tbaa !24
  %139 = tail call signext i32 %138(ptr noundef nonnull %0) #7
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %1240, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %122, align 8, !tbaa !21
  %143 = load i64, ptr %124, align 8, !tbaa !23
  br label %144

144:                                              ; preds = %141, %134
  %145 = phi ptr [ %142, %141 ], [ %123, %134 ]
  %146 = phi i64 [ %143, %141 ], [ %125, %134 ]
  %147 = add i64 %146, -1
  %148 = getelementptr inbounds i8, ptr %145, i64 1
  %149 = load i8, ptr %145, align 1, !tbaa !18
  %150 = zext i8 %149 to i64
  %151 = shl nuw nsw i64 %150, 8
  %152 = icmp eq i64 %147, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %144
  %154 = getelementptr inbounds i8, ptr %122, i64 24
  %155 = load ptr, ptr %154, align 8, !tbaa !24
  %156 = tail call signext i32 %155(ptr noundef nonnull %0) #7
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %1240, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr %122, align 8, !tbaa !21
  %160 = load i64, ptr %124, align 8, !tbaa !23
  br label %161

161:                                              ; preds = %158, %144
  %162 = phi ptr [ %159, %158 ], [ %148, %144 ]
  %163 = phi i64 [ %160, %158 ], [ %147, %144 ]
  %164 = add i64 %163, -1
  %165 = getelementptr inbounds i8, ptr %162, i64 1
  %166 = load i8, ptr %162, align 1, !tbaa !18
  %167 = zext i8 %166 to i64
  %168 = or disjoint i64 %151, %167
  %169 = icmp eq i64 %164, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %161
  %171 = getelementptr inbounds i8, ptr %122, i64 24
  %172 = load ptr, ptr %171, align 8, !tbaa !24
  %173 = tail call signext i32 %172(ptr noundef nonnull %0) #7
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %1240, label %175

175:                                              ; preds = %170
  %176 = load ptr, ptr %122, align 8, !tbaa !21
  %177 = load i64, ptr %124, align 8, !tbaa !23
  br label %178

178:                                              ; preds = %175, %161
  %179 = phi ptr [ %176, %175 ], [ %165, %161 ]
  %180 = phi i64 [ %177, %175 ], [ %164, %161 ]
  %181 = load i8, ptr %179, align 1, !tbaa !18
  %182 = zext i8 %181 to i32
  %183 = load ptr, ptr %0, align 8, !tbaa !14
  %184 = getelementptr inbounds i8, ptr %183, i64 40
  store i32 103, ptr %184, align 8, !tbaa !15
  %185 = getelementptr inbounds i8, ptr %183, i64 44
  store i32 %182, ptr %185, align 4, !tbaa !18
  %186 = load ptr, ptr %0, align 8, !tbaa !14
  %187 = getelementptr inbounds i8, ptr %186, i64 8
  %188 = load ptr, ptr %187, align 8, !tbaa !19
  tail call void %188(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %189 = shl nuw nsw i32 %182, 1
  %190 = add nuw nsw i32 %189, 6
  %191 = zext nneg i32 %190 to i64
  %192 = icmp ne i64 %168, %191
  %193 = add i8 %181, -5
  %194 = icmp ult i8 %193, -4
  %195 = select i1 %192, i1 true, i1 %194
  br i1 %195, label %200, label %196

196:                                              ; preds = %178
  %197 = getelementptr inbounds i8, ptr %0, i64 432
  store i32 %182, ptr %197, align 8, !tbaa !59
  %198 = getelementptr inbounds i8, ptr %179, i64 1
  %199 = add i64 %180, -1
  br label %208

200:                                              ; preds = %178
  %201 = load ptr, ptr %0, align 8, !tbaa !14
  %202 = getelementptr inbounds i8, ptr %201, i64 40
  store i32 11, ptr %202, align 8, !tbaa !15
  %203 = load ptr, ptr %201, align 8, !tbaa !46
  tail call void %203(ptr noundef nonnull %0) #7
  %204 = getelementptr inbounds i8, ptr %0, i64 432
  store i32 %182, ptr %204, align 8, !tbaa !59
  %205 = getelementptr inbounds i8, ptr %179, i64 1
  %206 = add i64 %180, -1
  %207 = icmp eq i8 %181, 0
  br i1 %207, label %287, label %208

208:                                              ; preds = %200, %196
  %209 = phi i64 [ %199, %196 ], [ %206, %200 ]
  %210 = phi ptr [ %198, %196 ], [ %205, %200 ]
  %211 = getelementptr inbounds i8, ptr %122, i64 24
  %212 = getelementptr inbounds i8, ptr %0, i64 304
  %213 = getelementptr inbounds i8, ptr %0, i64 56
  %214 = getelementptr inbounds i8, ptr %0, i64 440
  %215 = zext i8 %181 to i64
  br label %216

216:                                              ; preds = %267, %208
  %217 = phi i64 [ 0, %208 ], [ %283, %267 ]
  %218 = phi i64 [ %209, %208 ], [ %285, %267 ]
  %219 = phi ptr [ %210, %208 ], [ %284, %267 ]
  %220 = icmp eq i64 %218, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load ptr, ptr %211, align 8, !tbaa !24
  %223 = tail call signext i32 %222(ptr noundef nonnull %0) #7
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %1240, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %122, align 8, !tbaa !21
  %227 = load i64, ptr %124, align 8, !tbaa !23
  br label %228

228:                                              ; preds = %225, %216
  %229 = phi ptr [ %226, %225 ], [ %219, %216 ]
  %230 = phi i64 [ %227, %225 ], [ %218, %216 ]
  %231 = add i64 %230, -1
  %232 = getelementptr inbounds i8, ptr %229, i64 1
  %233 = load i8, ptr %229, align 1, !tbaa !18
  %234 = zext i8 %233 to i32
  %235 = icmp eq i64 %231, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %228
  %237 = load ptr, ptr %211, align 8, !tbaa !24
  %238 = tail call signext i32 %237(ptr noundef nonnull %0) #7
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %1240, label %240

240:                                              ; preds = %236
  %241 = load ptr, ptr %122, align 8, !tbaa !21
  %242 = load i64, ptr %124, align 8, !tbaa !23
  br label %243

243:                                              ; preds = %240, %228
  %244 = phi ptr [ %241, %240 ], [ %232, %228 ]
  %245 = phi i64 [ %242, %240 ], [ %231, %228 ]
  %246 = load i8, ptr %244, align 1, !tbaa !18
  %247 = zext i8 %246 to i32
  %248 = load ptr, ptr %212, align 8, !tbaa !39
  %249 = load i32, ptr %213, align 8, !tbaa !60
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %243, %256
  %252 = phi ptr [ %258, %256 ], [ %248, %243 ]
  %253 = phi i32 [ %257, %256 ], [ 0, %243 ]
  %254 = load i32, ptr %252, align 8, !tbaa !61
  %255 = icmp eq i32 %254, %234
  br i1 %255, label %267, label %256

256:                                              ; preds = %251
  %257 = add nuw nsw i32 %253, 1
  %258 = getelementptr inbounds i8, ptr %252, i64 96
  %259 = icmp eq i32 %257, %249
  br i1 %259, label %260, label %251

260:                                              ; preds = %256, %243
  %261 = phi ptr [ %248, %243 ], [ %258, %256 ]
  %262 = load ptr, ptr %0, align 8, !tbaa !14
  %263 = getelementptr inbounds i8, ptr %262, i64 40
  store i32 5, ptr %263, align 8, !tbaa !15
  %264 = getelementptr inbounds i8, ptr %262, i64 44
  store i32 %234, ptr %264, align 4, !tbaa !18
  %265 = load ptr, ptr %0, align 8, !tbaa !14
  %266 = load ptr, ptr %265, align 8, !tbaa !46
  tail call void %266(ptr noundef nonnull %0) #7
  br label %267

267:                                              ; preds = %251, %260
  %268 = phi ptr [ %261, %260 ], [ %252, %251 ]
  %269 = getelementptr inbounds [4 x ptr], ptr %214, i64 0, i64 %217
  store ptr %268, ptr %269, align 8, !tbaa !38
  %270 = lshr i32 %247, 4
  %271 = getelementptr inbounds i8, ptr %268, i64 20
  store i32 %270, ptr %271, align 4, !tbaa !63
  %272 = and i32 %247, 15
  %273 = getelementptr inbounds i8, ptr %268, i64 24
  store i32 %272, ptr %273, align 8, !tbaa !64
  %274 = load ptr, ptr %0, align 8, !tbaa !14
  %275 = getelementptr inbounds i8, ptr %274, i64 44
  store i32 %234, ptr %275, align 4, !tbaa !37
  %276 = load i32, ptr %271, align 4, !tbaa !63
  %277 = getelementptr inbounds i8, ptr %274, i64 48
  store i32 %276, ptr %277, align 4, !tbaa !37
  %278 = load i32, ptr %273, align 8, !tbaa !64
  %279 = getelementptr inbounds i8, ptr %274, i64 52
  store i32 %278, ptr %279, align 4, !tbaa !37
  %280 = getelementptr inbounds i8, ptr %274, i64 40
  store i32 104, ptr %280, align 8, !tbaa !15
  %281 = getelementptr inbounds i8, ptr %274, i64 8
  %282 = load ptr, ptr %281, align 8, !tbaa !19
  tail call void %282(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %283 = add nuw nsw i64 %217, 1
  %284 = getelementptr inbounds i8, ptr %244, i64 1
  %285 = add i64 %245, -1
  %286 = icmp eq i64 %283, %215
  br i1 %286, label %287, label %216

287:                                              ; preds = %267, %200
  %288 = phi ptr [ %205, %200 ], [ %284, %267 ]
  %289 = phi i64 [ %206, %200 ], [ %285, %267 ]
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %287
  %292 = getelementptr inbounds i8, ptr %122, i64 24
  %293 = load ptr, ptr %292, align 8, !tbaa !24
  %294 = tail call signext i32 %293(ptr noundef nonnull %0) #7
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %1240, label %296

296:                                              ; preds = %291
  %297 = load ptr, ptr %122, align 8, !tbaa !21
  %298 = load i64, ptr %124, align 8, !tbaa !23
  br label %299

299:                                              ; preds = %296, %287
  %300 = phi ptr [ %297, %296 ], [ %288, %287 ]
  %301 = phi i64 [ %298, %296 ], [ %289, %287 ]
  %302 = add i64 %301, -1
  %303 = getelementptr inbounds i8, ptr %300, i64 1
  %304 = load i8, ptr %300, align 1, !tbaa !18
  %305 = zext i8 %304 to i32
  %306 = getelementptr inbounds i8, ptr %0, i64 524
  store i32 %305, ptr %306, align 4, !tbaa !65
  %307 = icmp eq i64 %302, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %299
  %309 = getelementptr inbounds i8, ptr %122, i64 24
  %310 = load ptr, ptr %309, align 8, !tbaa !24
  %311 = tail call signext i32 %310(ptr noundef nonnull %0) #7
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %1240, label %313

313:                                              ; preds = %308
  %314 = load ptr, ptr %122, align 8, !tbaa !21
  %315 = load i64, ptr %124, align 8, !tbaa !23
  br label %316

316:                                              ; preds = %313, %299
  %317 = phi ptr [ %314, %313 ], [ %303, %299 ]
  %318 = phi i64 [ %315, %313 ], [ %302, %299 ]
  %319 = add i64 %318, -1
  %320 = getelementptr inbounds i8, ptr %317, i64 1
  %321 = load i8, ptr %317, align 1, !tbaa !18
  %322 = zext i8 %321 to i32
  %323 = getelementptr inbounds i8, ptr %0, i64 528
  store i32 %322, ptr %323, align 8, !tbaa !66
  %324 = icmp eq i64 %319, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %316
  %326 = getelementptr inbounds i8, ptr %122, i64 24
  %327 = load ptr, ptr %326, align 8, !tbaa !24
  %328 = tail call signext i32 %327(ptr noundef nonnull %0) #7
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %1240, label %330

330:                                              ; preds = %325
  %331 = load ptr, ptr %122, align 8, !tbaa !21
  %332 = load i64, ptr %124, align 8, !tbaa !23
  br label %333

333:                                              ; preds = %330, %316
  %334 = phi ptr [ %331, %330 ], [ %320, %316 ]
  %335 = phi i64 [ %332, %330 ], [ %319, %316 ]
  %336 = add i64 %335, -1
  %337 = getelementptr inbounds i8, ptr %334, i64 1
  %338 = load i8, ptr %334, align 1, !tbaa !18
  %339 = zext i8 %338 to i32
  %340 = lshr i32 %339, 4
  %341 = getelementptr inbounds i8, ptr %0, i64 532
  store i32 %340, ptr %341, align 4, !tbaa !67
  %342 = and i32 %339, 15
  %343 = getelementptr inbounds i8, ptr %0, i64 536
  store i32 %342, ptr %343, align 8, !tbaa !68
  %344 = load ptr, ptr %0, align 8, !tbaa !14
  %345 = getelementptr inbounds i8, ptr %344, i64 44
  %346 = load i32, ptr %306, align 4, !tbaa !65
  store i32 %346, ptr %345, align 4, !tbaa !37
  %347 = load i32, ptr %323, align 8, !tbaa !66
  %348 = getelementptr inbounds i8, ptr %344, i64 48
  store i32 %347, ptr %348, align 4, !tbaa !37
  %349 = load i32, ptr %341, align 4, !tbaa !67
  %350 = getelementptr inbounds i8, ptr %344, i64 52
  store i32 %349, ptr %350, align 4, !tbaa !37
  %351 = load i32, ptr %343, align 8, !tbaa !68
  %352 = getelementptr inbounds i8, ptr %344, i64 56
  store i32 %351, ptr %352, align 4, !tbaa !37
  %353 = getelementptr inbounds i8, ptr %344, i64 40
  store i32 105, ptr %353, align 8, !tbaa !15
  %354 = getelementptr inbounds i8, ptr %344, i64 8
  %355 = load ptr, ptr %354, align 8, !tbaa !19
  tail call void %355(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %356 = load ptr, ptr %4, align 8, !tbaa !25
  %357 = getelementptr inbounds i8, ptr %356, i64 32
  store i32 0, ptr %357, align 8, !tbaa !69
  %358 = getelementptr inbounds i8, ptr %0, i64 172
  %359 = load i32, ptr %358, align 4, !tbaa !40
  %360 = add nsw i32 %359, 1
  store i32 %360, ptr %358, align 4, !tbaa !40
  store ptr %337, ptr %122, align 8, !tbaa !21
  store i64 %336, ptr %124, align 8, !tbaa !23
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %1240

361:                                              ; preds = %84
  %362 = load ptr, ptr %0, align 8, !tbaa !14
  %363 = getelementptr inbounds i8, ptr %362, i64 40
  store i32 85, ptr %363, align 8, !tbaa !15
  %364 = getelementptr inbounds i8, ptr %362, i64 8
  %365 = load ptr, ptr %364, align 8, !tbaa !19
  tail call void %365(ptr noundef nonnull %0, i32 noundef signext 1) #7
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %1240

366:                                              ; preds = %84
  %367 = load ptr, ptr %5, align 8, !tbaa !20
  %368 = getelementptr inbounds i8, ptr %367, i64 8
  %369 = load i64, ptr %368, align 8, !tbaa !23
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %366
  %372 = getelementptr inbounds i8, ptr %367, i64 24
  %373 = load ptr, ptr %372, align 8, !tbaa !24
  %374 = tail call signext i32 %373(ptr noundef nonnull %0) #7
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %1240, label %376

376:                                              ; preds = %371
  %377 = load i64, ptr %368, align 8, !tbaa !23
  br label %378

378:                                              ; preds = %376, %366
  %379 = phi i64 [ %377, %376 ], [ %369, %366 ]
  %380 = load ptr, ptr %367, align 8, !tbaa !21
  %381 = add i64 %379, -1
  %382 = getelementptr inbounds i8, ptr %380, i64 1
  %383 = load i8, ptr %380, align 1, !tbaa !18
  %384 = zext i8 %383 to i64
  %385 = shl nuw nsw i64 %384, 8
  %386 = icmp eq i64 %381, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %378
  %388 = getelementptr inbounds i8, ptr %367, i64 24
  %389 = load ptr, ptr %388, align 8, !tbaa !24
  %390 = tail call signext i32 %389(ptr noundef nonnull %0) #7
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %1240, label %392

392:                                              ; preds = %387
  %393 = load ptr, ptr %367, align 8, !tbaa !21
  %394 = load i64, ptr %368, align 8, !tbaa !23
  br label %395

395:                                              ; preds = %392, %378
  %396 = phi ptr [ %393, %392 ], [ %382, %378 ]
  %397 = phi i64 [ %394, %392 ], [ %381, %378 ]
  %398 = add i64 %397, -1
  %399 = getelementptr inbounds i8, ptr %396, i64 1
  %400 = load i8, ptr %396, align 1, !tbaa !18
  %401 = zext i8 %400 to i64
  %402 = or disjoint i64 %385, %401
  %403 = add nsw i64 %402, -2
  %404 = load ptr, ptr %0, align 8, !tbaa !14
  %405 = getelementptr inbounds i8, ptr %404, i64 40
  store i32 91, ptr %405, align 8, !tbaa !15
  %406 = load i32, ptr %3, align 4, !tbaa !6
  %407 = getelementptr inbounds i8, ptr %404, i64 44
  store i32 %406, ptr %407, align 4, !tbaa !18
  %408 = trunc nsw i64 %403 to i32
  %409 = load ptr, ptr %0, align 8, !tbaa !14
  %410 = getelementptr inbounds i8, ptr %409, i64 48
  store i32 %408, ptr %410, align 4, !tbaa !18
  %411 = load ptr, ptr %0, align 8, !tbaa !14
  %412 = getelementptr inbounds i8, ptr %411, i64 8
  %413 = load ptr, ptr %412, align 8, !tbaa !19
  tail call void %413(ptr noundef nonnull %0, i32 noundef signext 1) #7
  store ptr %399, ptr %367, align 8, !tbaa !21
  store i64 %398, ptr %368, align 8, !tbaa !23
  %414 = icmp ugt i64 %402, 2
  br i1 %414, label %415, label %1239

415:                                              ; preds = %395
  %416 = load ptr, ptr %5, align 8, !tbaa !20
  %417 = getelementptr inbounds i8, ptr %416, i64 32
  %418 = load ptr, ptr %417, align 8, !tbaa !70
  tail call void %418(ptr noundef nonnull %0, i64 noundef %403) #7
  br label %1239

419:                                              ; preds = %84
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #7
  %420 = load ptr, ptr %5, align 8, !tbaa !20
  %421 = getelementptr inbounds i8, ptr %420, i64 8
  %422 = load i64, ptr %421, align 8, !tbaa !23
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %419
  %425 = getelementptr inbounds i8, ptr %420, i64 24
  %426 = load ptr, ptr %425, align 8, !tbaa !24
  %427 = tail call signext i32 %426(ptr noundef nonnull %0) #7
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %851, label %429

429:                                              ; preds = %424
  %430 = load i64, ptr %421, align 8, !tbaa !23
  br label %431

431:                                              ; preds = %429, %419
  %432 = phi i64 [ %430, %429 ], [ %422, %419 ]
  %433 = load ptr, ptr %420, align 8, !tbaa !21
  %434 = add i64 %432, -1
  %435 = getelementptr inbounds i8, ptr %433, i64 1
  %436 = load i8, ptr %433, align 1, !tbaa !18
  %437 = zext i8 %436 to i64
  %438 = shl nuw nsw i64 %437, 8
  %439 = icmp eq i64 %434, 0
  br i1 %439, label %440, label %448

440:                                              ; preds = %431
  %441 = getelementptr inbounds i8, ptr %420, i64 24
  %442 = load ptr, ptr %441, align 8, !tbaa !24
  %443 = tail call signext i32 %442(ptr noundef nonnull %0) #7
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %851, label %445

445:                                              ; preds = %440
  %446 = load ptr, ptr %420, align 8, !tbaa !21
  %447 = load i64, ptr %421, align 8, !tbaa !23
  br label %448

448:                                              ; preds = %445, %431
  %449 = phi ptr [ %446, %445 ], [ %435, %431 ]
  %450 = phi i64 [ %447, %445 ], [ %434, %431 ]
  %451 = add i64 %450, -1
  %452 = getelementptr inbounds i8, ptr %449, i64 1
  %453 = load i8, ptr %449, align 1, !tbaa !18
  %454 = zext i8 %453 to i64
  %455 = or disjoint i64 %438, %454
  %456 = add nsw i64 %455, -2
  %457 = icmp ugt i64 %455, 18
  br i1 %457, label %458, label %842

458:                                              ; preds = %448
  %459 = getelementptr inbounds i8, ptr %420, i64 24
  br label %460

460:                                              ; preds = %821, %458
  %461 = phi i64 [ %456, %458 ], [ %799, %821 ]
  %462 = phi i64 [ %451, %458 ], [ %798, %821 ]
  %463 = phi ptr [ %452, %458 ], [ %797, %821 ]
  %464 = icmp eq i64 %462, 0
  br i1 %464, label %465, label %472

465:                                              ; preds = %460
  %466 = load ptr, ptr %459, align 8, !tbaa !24
  %467 = tail call signext i32 %466(ptr noundef %0) #7
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %851, label %469

469:                                              ; preds = %465
  %470 = load ptr, ptr %420, align 8, !tbaa !21
  %471 = load i64, ptr %421, align 8, !tbaa !23
  br label %472

472:                                              ; preds = %469, %460
  %473 = phi ptr [ %470, %469 ], [ %463, %460 ]
  %474 = phi i64 [ %471, %469 ], [ %462, %460 ]
  %475 = load i8, ptr %473, align 1, !tbaa !18
  %476 = zext i8 %475 to i32
  %477 = load ptr, ptr %0, align 8, !tbaa !14
  %478 = getelementptr inbounds i8, ptr %477, i64 40
  store i32 80, ptr %478, align 8, !tbaa !15
  %479 = getelementptr inbounds i8, ptr %477, i64 44
  store i32 %476, ptr %479, align 4, !tbaa !18
  %480 = load ptr, ptr %0, align 8, !tbaa !14
  %481 = getelementptr inbounds i8, ptr %480, i64 8
  %482 = load ptr, ptr %481, align 8, !tbaa !19
  tail call void %482(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %483 = getelementptr inbounds i8, ptr %473, i64 1
  %484 = add i64 %474, -1
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %493

486:                                              ; preds = %472
  %487 = load ptr, ptr %459, align 8, !tbaa !24
  %488 = tail call signext i32 %487(ptr noundef nonnull %0) #7
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %851, label %490

490:                                              ; preds = %486
  %491 = load ptr, ptr %420, align 8, !tbaa !21
  %492 = load i64, ptr %421, align 8, !tbaa !23
  br label %493

493:                                              ; preds = %490, %472
  %494 = phi ptr [ %491, %490 ], [ %483, %472 ]
  %495 = phi i64 [ %492, %490 ], [ %484, %472 ]
  %496 = load i8, ptr %494, align 1, !tbaa !18
  %497 = zext i8 %496 to i32
  %498 = getelementptr inbounds i8, ptr %494, i64 1
  %499 = add i64 %495, -1
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %501, label %508

501:                                              ; preds = %493
  %502 = load ptr, ptr %459, align 8, !tbaa !24
  %503 = tail call signext i32 %502(ptr noundef nonnull %0) #7
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %851, label %505

505:                                              ; preds = %501
  %506 = load ptr, ptr %420, align 8, !tbaa !21
  %507 = load i64, ptr %421, align 8, !tbaa !23
  br label %508

508:                                              ; preds = %505, %493
  %509 = phi ptr [ %506, %505 ], [ %498, %493 ]
  %510 = phi i64 [ %507, %505 ], [ %499, %493 ]
  %511 = load i8, ptr %509, align 1, !tbaa !18
  %512 = zext i8 %511 to i32
  %513 = add nuw nsw i32 %512, %497
  %514 = getelementptr inbounds i8, ptr %509, i64 1
  %515 = add i64 %510, -1
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %517, label %524

517:                                              ; preds = %508
  %518 = load ptr, ptr %459, align 8, !tbaa !24
  %519 = tail call signext i32 %518(ptr noundef nonnull %0) #7
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %851, label %521

521:                                              ; preds = %517
  %522 = load ptr, ptr %420, align 8, !tbaa !21
  %523 = load i64, ptr %421, align 8, !tbaa !23
  br label %524

524:                                              ; preds = %521, %508
  %525 = phi ptr [ %522, %521 ], [ %514, %508 ]
  %526 = phi i64 [ %523, %521 ], [ %515, %508 ]
  %527 = load i8, ptr %525, align 1, !tbaa !18
  %528 = zext i8 %527 to i32
  %529 = add nuw nsw i32 %513, %528
  %530 = getelementptr inbounds i8, ptr %525, i64 1
  %531 = add i64 %526, -1
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %533, label %540

533:                                              ; preds = %524
  %534 = load ptr, ptr %459, align 8, !tbaa !24
  %535 = tail call signext i32 %534(ptr noundef nonnull %0) #7
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %851, label %537

537:                                              ; preds = %533
  %538 = load ptr, ptr %420, align 8, !tbaa !21
  %539 = load i64, ptr %421, align 8, !tbaa !23
  br label %540

540:                                              ; preds = %537, %524
  %541 = phi ptr [ %538, %537 ], [ %530, %524 ]
  %542 = phi i64 [ %539, %537 ], [ %531, %524 ]
  %543 = load i8, ptr %541, align 1, !tbaa !18
  %544 = zext i8 %543 to i32
  %545 = add nuw nsw i32 %529, %544
  %546 = getelementptr inbounds i8, ptr %541, i64 1
  %547 = add i64 %542, -1
  %548 = icmp eq i64 %547, 0
  br i1 %548, label %549, label %556

549:                                              ; preds = %540
  %550 = load ptr, ptr %459, align 8, !tbaa !24
  %551 = tail call signext i32 %550(ptr noundef nonnull %0) #7
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %851, label %553

553:                                              ; preds = %549
  %554 = load ptr, ptr %420, align 8, !tbaa !21
  %555 = load i64, ptr %421, align 8, !tbaa !23
  br label %556

556:                                              ; preds = %553, %540
  %557 = phi ptr [ %554, %553 ], [ %546, %540 ]
  %558 = phi i64 [ %555, %553 ], [ %547, %540 ]
  %559 = load i8, ptr %557, align 1, !tbaa !18
  %560 = zext i8 %559 to i32
  %561 = add nuw nsw i32 %545, %560
  %562 = getelementptr inbounds i8, ptr %557, i64 1
  %563 = add i64 %558, -1
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %565, label %572

565:                                              ; preds = %556
  %566 = load ptr, ptr %459, align 8, !tbaa !24
  %567 = tail call signext i32 %566(ptr noundef nonnull %0) #7
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %851, label %569

569:                                              ; preds = %565
  %570 = load ptr, ptr %420, align 8, !tbaa !21
  %571 = load i64, ptr %421, align 8, !tbaa !23
  br label %572

572:                                              ; preds = %569, %556
  %573 = phi ptr [ %570, %569 ], [ %562, %556 ]
  %574 = phi i64 [ %571, %569 ], [ %563, %556 ]
  %575 = load i8, ptr %573, align 1, !tbaa !18
  %576 = zext i8 %575 to i32
  %577 = add nuw nsw i32 %561, %576
  %578 = getelementptr inbounds i8, ptr %573, i64 1
  %579 = add i64 %574, -1
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %581, label %588

581:                                              ; preds = %572
  %582 = load ptr, ptr %459, align 8, !tbaa !24
  %583 = tail call signext i32 %582(ptr noundef nonnull %0) #7
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %851, label %585

585:                                              ; preds = %581
  %586 = load ptr, ptr %420, align 8, !tbaa !21
  %587 = load i64, ptr %421, align 8, !tbaa !23
  br label %588

588:                                              ; preds = %585, %572
  %589 = phi ptr [ %586, %585 ], [ %578, %572 ]
  %590 = phi i64 [ %587, %585 ], [ %579, %572 ]
  %591 = load i8, ptr %589, align 1, !tbaa !18
  %592 = zext i8 %591 to i32
  %593 = add nuw nsw i32 %577, %592
  %594 = getelementptr inbounds i8, ptr %589, i64 1
  %595 = add i64 %590, -1
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %597, label %604

597:                                              ; preds = %588
  %598 = load ptr, ptr %459, align 8, !tbaa !24
  %599 = tail call signext i32 %598(ptr noundef nonnull %0) #7
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %851, label %601

601:                                              ; preds = %597
  %602 = load ptr, ptr %420, align 8, !tbaa !21
  %603 = load i64, ptr %421, align 8, !tbaa !23
  br label %604

604:                                              ; preds = %601, %588
  %605 = phi ptr [ %602, %601 ], [ %594, %588 ]
  %606 = phi i64 [ %603, %601 ], [ %595, %588 ]
  %607 = load i8, ptr %605, align 1, !tbaa !18
  %608 = zext i8 %607 to i32
  %609 = add nuw nsw i32 %593, %608
  %610 = getelementptr inbounds i8, ptr %605, i64 1
  %611 = add i64 %606, -1
  %612 = icmp eq i64 %611, 0
  br i1 %612, label %613, label %620

613:                                              ; preds = %604
  %614 = load ptr, ptr %459, align 8, !tbaa !24
  %615 = tail call signext i32 %614(ptr noundef nonnull %0) #7
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %851, label %617

617:                                              ; preds = %613
  %618 = load ptr, ptr %420, align 8, !tbaa !21
  %619 = load i64, ptr %421, align 8, !tbaa !23
  br label %620

620:                                              ; preds = %617, %604
  %621 = phi ptr [ %618, %617 ], [ %610, %604 ]
  %622 = phi i64 [ %619, %617 ], [ %611, %604 ]
  %623 = load i8, ptr %621, align 1, !tbaa !18
  %624 = zext i8 %623 to i32
  %625 = add nuw nsw i32 %609, %624
  %626 = getelementptr inbounds i8, ptr %621, i64 1
  %627 = add i64 %622, -1
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %629, label %636

629:                                              ; preds = %620
  %630 = load ptr, ptr %459, align 8, !tbaa !24
  %631 = tail call signext i32 %630(ptr noundef nonnull %0) #7
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %851, label %633

633:                                              ; preds = %629
  %634 = load ptr, ptr %420, align 8, !tbaa !21
  %635 = load i64, ptr %421, align 8, !tbaa !23
  br label %636

636:                                              ; preds = %633, %620
  %637 = phi ptr [ %634, %633 ], [ %626, %620 ]
  %638 = phi i64 [ %635, %633 ], [ %627, %620 ]
  %639 = load i8, ptr %637, align 1, !tbaa !18
  %640 = zext i8 %639 to i32
  %641 = add nuw nsw i32 %625, %640
  %642 = getelementptr inbounds i8, ptr %637, i64 1
  %643 = add i64 %638, -1
  %644 = icmp eq i64 %643, 0
  br i1 %644, label %645, label %652

645:                                              ; preds = %636
  %646 = load ptr, ptr %459, align 8, !tbaa !24
  %647 = tail call signext i32 %646(ptr noundef nonnull %0) #7
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %851, label %649

649:                                              ; preds = %645
  %650 = load ptr, ptr %420, align 8, !tbaa !21
  %651 = load i64, ptr %421, align 8, !tbaa !23
  br label %652

652:                                              ; preds = %649, %636
  %653 = phi ptr [ %650, %649 ], [ %642, %636 ]
  %654 = phi i64 [ %651, %649 ], [ %643, %636 ]
  %655 = load i8, ptr %653, align 1, !tbaa !18
  %656 = zext i8 %655 to i32
  %657 = add nuw nsw i32 %641, %656
  %658 = getelementptr inbounds i8, ptr %653, i64 1
  %659 = add i64 %654, -1
  %660 = icmp eq i64 %659, 0
  br i1 %660, label %661, label %668

661:                                              ; preds = %652
  %662 = load ptr, ptr %459, align 8, !tbaa !24
  %663 = tail call signext i32 %662(ptr noundef nonnull %0) #7
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %851, label %665

665:                                              ; preds = %661
  %666 = load ptr, ptr %420, align 8, !tbaa !21
  %667 = load i64, ptr %421, align 8, !tbaa !23
  br label %668

668:                                              ; preds = %665, %652
  %669 = phi ptr [ %666, %665 ], [ %658, %652 ]
  %670 = phi i64 [ %667, %665 ], [ %659, %652 ]
  %671 = load i8, ptr %669, align 1, !tbaa !18
  %672 = zext i8 %671 to i32
  %673 = add nuw nsw i32 %657, %672
  %674 = getelementptr inbounds i8, ptr %669, i64 1
  %675 = add i64 %670, -1
  %676 = icmp eq i64 %675, 0
  br i1 %676, label %677, label %684

677:                                              ; preds = %668
  %678 = load ptr, ptr %459, align 8, !tbaa !24
  %679 = tail call signext i32 %678(ptr noundef nonnull %0) #7
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %851, label %681

681:                                              ; preds = %677
  %682 = load ptr, ptr %420, align 8, !tbaa !21
  %683 = load i64, ptr %421, align 8, !tbaa !23
  br label %684

684:                                              ; preds = %681, %668
  %685 = phi ptr [ %682, %681 ], [ %674, %668 ]
  %686 = phi i64 [ %683, %681 ], [ %675, %668 ]
  %687 = load i8, ptr %685, align 1, !tbaa !18
  %688 = zext i8 %687 to i32
  %689 = add nuw nsw i32 %673, %688
  %690 = getelementptr inbounds i8, ptr %685, i64 1
  %691 = add i64 %686, -1
  %692 = icmp eq i64 %691, 0
  br i1 %692, label %693, label %700

693:                                              ; preds = %684
  %694 = load ptr, ptr %459, align 8, !tbaa !24
  %695 = tail call signext i32 %694(ptr noundef nonnull %0) #7
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %851, label %697

697:                                              ; preds = %693
  %698 = load ptr, ptr %420, align 8, !tbaa !21
  %699 = load i64, ptr %421, align 8, !tbaa !23
  br label %700

700:                                              ; preds = %697, %684
  %701 = phi ptr [ %698, %697 ], [ %690, %684 ]
  %702 = phi i64 [ %699, %697 ], [ %691, %684 ]
  %703 = load i8, ptr %701, align 1, !tbaa !18
  %704 = zext i8 %703 to i32
  %705 = add nuw nsw i32 %689, %704
  %706 = getelementptr inbounds i8, ptr %701, i64 1
  %707 = add i64 %702, -1
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %709, label %716

709:                                              ; preds = %700
  %710 = load ptr, ptr %459, align 8, !tbaa !24
  %711 = tail call signext i32 %710(ptr noundef nonnull %0) #7
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %851, label %713

713:                                              ; preds = %709
  %714 = load ptr, ptr %420, align 8, !tbaa !21
  %715 = load i64, ptr %421, align 8, !tbaa !23
  br label %716

716:                                              ; preds = %713, %700
  %717 = phi ptr [ %714, %713 ], [ %706, %700 ]
  %718 = phi i64 [ %715, %713 ], [ %707, %700 ]
  %719 = load i8, ptr %717, align 1, !tbaa !18
  %720 = zext i8 %719 to i32
  %721 = add nuw nsw i32 %705, %720
  %722 = getelementptr inbounds i8, ptr %717, i64 1
  %723 = add i64 %718, -1
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %725, label %732

725:                                              ; preds = %716
  %726 = load ptr, ptr %459, align 8, !tbaa !24
  %727 = tail call signext i32 %726(ptr noundef nonnull %0) #7
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %851, label %729

729:                                              ; preds = %725
  %730 = load ptr, ptr %420, align 8, !tbaa !21
  %731 = load i64, ptr %421, align 8, !tbaa !23
  br label %732

732:                                              ; preds = %729, %716
  %733 = phi ptr [ %730, %729 ], [ %722, %716 ]
  %734 = phi i64 [ %731, %729 ], [ %723, %716 ]
  %735 = load i8, ptr %733, align 1, !tbaa !18
  %736 = zext i8 %735 to i32
  %737 = add nuw nsw i32 %721, %736
  %738 = getelementptr inbounds i8, ptr %733, i64 1
  %739 = add i64 %734, -1
  %740 = add nsw i64 %461, -17
  %741 = load ptr, ptr %0, align 8, !tbaa !14
  %742 = getelementptr inbounds i8, ptr %741, i64 44
  store i32 %497, ptr %742, align 4, !tbaa !37
  %743 = getelementptr inbounds i8, ptr %741, i64 48
  store i32 %512, ptr %743, align 4, !tbaa !37
  %744 = getelementptr inbounds i8, ptr %741, i64 52
  store i32 %528, ptr %744, align 4, !tbaa !37
  %745 = getelementptr inbounds i8, ptr %741, i64 56
  store i32 %544, ptr %745, align 4, !tbaa !37
  %746 = getelementptr inbounds i8, ptr %741, i64 60
  store i32 %560, ptr %746, align 4, !tbaa !37
  %747 = getelementptr inbounds i8, ptr %741, i64 64
  store i32 %576, ptr %747, align 4, !tbaa !37
  %748 = getelementptr inbounds i8, ptr %741, i64 68
  store i32 %592, ptr %748, align 4, !tbaa !37
  %749 = getelementptr inbounds i8, ptr %741, i64 72
  store i32 %608, ptr %749, align 4, !tbaa !37
  %750 = getelementptr inbounds i8, ptr %741, i64 40
  store i32 86, ptr %750, align 8, !tbaa !15
  %751 = getelementptr inbounds i8, ptr %741, i64 8
  %752 = load ptr, ptr %751, align 8, !tbaa !19
  tail call void %752(ptr noundef nonnull %0, i32 noundef signext 2) #7
  %753 = load ptr, ptr %0, align 8, !tbaa !14
  %754 = getelementptr inbounds i8, ptr %753, i64 44
  store i32 %624, ptr %754, align 4, !tbaa !37
  %755 = getelementptr inbounds i8, ptr %753, i64 48
  store i32 %640, ptr %755, align 4, !tbaa !37
  %756 = getelementptr inbounds i8, ptr %753, i64 52
  store i32 %656, ptr %756, align 4, !tbaa !37
  %757 = getelementptr inbounds i8, ptr %753, i64 56
  store i32 %672, ptr %757, align 4, !tbaa !37
  %758 = getelementptr inbounds i8, ptr %753, i64 60
  store i32 %688, ptr %758, align 4, !tbaa !37
  %759 = getelementptr inbounds i8, ptr %753, i64 64
  store i32 %704, ptr %759, align 4, !tbaa !37
  %760 = getelementptr inbounds i8, ptr %753, i64 68
  store i32 %720, ptr %760, align 4, !tbaa !37
  %761 = getelementptr inbounds i8, ptr %753, i64 72
  store i32 %736, ptr %761, align 4, !tbaa !37
  %762 = getelementptr inbounds i8, ptr %753, i64 40
  store i32 86, ptr %762, align 8, !tbaa !15
  %763 = getelementptr inbounds i8, ptr %753, i64 8
  %764 = load ptr, ptr %763, align 8, !tbaa !19
  tail call void %764(ptr noundef nonnull %0, i32 noundef signext 2) #7
  %765 = icmp ugt i32 %737, 256
  %766 = zext nneg i32 %737 to i64
  %767 = icmp ult i64 %740, %766
  %768 = select i1 %765, i1 true, i1 %767
  br i1 %768, label %769, label %773

769:                                              ; preds = %732
  %770 = load ptr, ptr %0, align 8, !tbaa !14
  %771 = getelementptr inbounds i8, ptr %770, i64 40
  store i32 8, ptr %771, align 8, !tbaa !15
  %772 = load ptr, ptr %770, align 8, !tbaa !46
  tail call void %772(ptr noundef nonnull %0) #7
  br label %773

773:                                              ; preds = %769, %732
  %774 = icmp eq i32 %737, 0
  br i1 %774, label %796, label %775

775:                                              ; preds = %773, %787
  %776 = phi i64 [ %794, %787 ], [ 0, %773 ]
  %777 = phi i64 [ %790, %787 ], [ %739, %773 ]
  %778 = phi ptr [ %791, %787 ], [ %738, %773 ]
  %779 = icmp eq i64 %777, 0
  br i1 %779, label %780, label %787

780:                                              ; preds = %775
  %781 = load ptr, ptr %459, align 8, !tbaa !24
  %782 = tail call signext i32 %781(ptr noundef nonnull %0) #7
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %851, label %784

784:                                              ; preds = %780
  %785 = load ptr, ptr %420, align 8, !tbaa !21
  %786 = load i64, ptr %421, align 8, !tbaa !23
  br label %787

787:                                              ; preds = %784, %775
  %788 = phi ptr [ %785, %784 ], [ %778, %775 ]
  %789 = phi i64 [ %786, %784 ], [ %777, %775 ]
  %790 = add i64 %789, -1
  %791 = getelementptr inbounds i8, ptr %788, i64 1
  %792 = load i8, ptr %788, align 1, !tbaa !18
  %793 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %776
  store i8 %792, ptr %793, align 1, !tbaa !18
  %794 = add nuw nsw i64 %776, 1
  %795 = icmp eq i64 %794, %766
  br i1 %795, label %796, label %775

796:                                              ; preds = %787, %773
  %797 = phi ptr [ %738, %773 ], [ %791, %787 ]
  %798 = phi i64 [ %739, %773 ], [ %790, %787 ]
  %799 = sub nsw i64 %740, %766
  %800 = and i32 %476, 16
  %801 = icmp eq i32 %800, 0
  %802 = add nsw i32 %476, -16
  %803 = zext nneg i32 %802 to i64
  %804 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 %803
  %805 = zext i8 %475 to i64
  %806 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 %805
  %807 = select i1 %801, i32 %476, i32 %802
  %808 = select i1 %801, ptr %806, ptr %804
  %809 = icmp sgt i32 %807, 3
  br i1 %809, label %810, label %816

810:                                              ; preds = %796
  %811 = load ptr, ptr %0, align 8, !tbaa !14
  %812 = getelementptr inbounds i8, ptr %811, i64 40
  store i32 30, ptr %812, align 8, !tbaa !15
  %813 = getelementptr inbounds i8, ptr %811, i64 44
  store i32 %807, ptr %813, align 4, !tbaa !18
  %814 = load ptr, ptr %0, align 8, !tbaa !14
  %815 = load ptr, ptr %814, align 8, !tbaa !46
  tail call void %815(ptr noundef nonnull %0) #7
  br label %816

816:                                              ; preds = %810, %796
  %817 = load ptr, ptr %808, align 8, !tbaa !38
  %818 = icmp eq ptr %817, null
  br i1 %818, label %819, label %821

819:                                              ; preds = %816
  %820 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #7
  store ptr %820, ptr %808, align 8, !tbaa !38
  br label %821

821:                                              ; preds = %819, %816
  %822 = phi ptr [ %820, %819 ], [ %817, %816 ]
  store i8 0, ptr %822, align 4
  %823 = getelementptr inbounds i8, ptr %822, i64 1
  store i8 %496, ptr %823, align 1
  %824 = getelementptr inbounds i8, ptr %822, i64 2
  store i8 %511, ptr %824, align 2
  %825 = getelementptr inbounds i8, ptr %822, i64 3
  store i8 %527, ptr %825, align 1
  %826 = getelementptr inbounds i8, ptr %822, i64 4
  store i8 %543, ptr %826, align 4
  %827 = getelementptr inbounds i8, ptr %822, i64 5
  store i8 %559, ptr %827, align 1
  %828 = getelementptr inbounds i8, ptr %822, i64 6
  store i8 %575, ptr %828, align 2
  %829 = getelementptr inbounds i8, ptr %822, i64 7
  store i8 %591, ptr %829, align 1
  %830 = getelementptr inbounds i8, ptr %822, i64 8
  store i8 %607, ptr %830, align 4
  %831 = getelementptr inbounds i8, ptr %822, i64 9
  store i8 %623, ptr %831, align 1
  %832 = getelementptr inbounds i8, ptr %822, i64 10
  store i8 %639, ptr %832, align 2
  %833 = getelementptr inbounds i8, ptr %822, i64 11
  store i8 %655, ptr %833, align 1
  %834 = getelementptr inbounds i8, ptr %822, i64 12
  store i8 %671, ptr %834, align 4
  %835 = getelementptr inbounds i8, ptr %822, i64 13
  store i8 %687, ptr %835, align 1
  %836 = getelementptr inbounds i8, ptr %822, i64 14
  store i8 %703, ptr %836, align 2
  %837 = getelementptr inbounds i8, ptr %822, i64 15
  store i8 %719, ptr %837, align 1
  %838 = getelementptr inbounds i8, ptr %822, i64 16
  store i8 %735, ptr %838, align 4
  %839 = load ptr, ptr %808, align 8, !tbaa !38
  %840 = getelementptr inbounds i8, ptr %839, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %840, ptr noundef nonnull align 1 dereferenceable(256) %2, i64 256, i1 false)
  %841 = icmp sgt i64 %799, 16
  br i1 %841, label %460, label %842

842:                                              ; preds = %821, %448
  %843 = phi ptr [ %452, %448 ], [ %797, %821 ]
  %844 = phi i64 [ %451, %448 ], [ %798, %821 ]
  %845 = phi i64 [ %456, %448 ], [ %799, %821 ]
  %846 = icmp eq i64 %845, 0
  br i1 %846, label %852, label %847

847:                                              ; preds = %842
  %848 = load ptr, ptr %0, align 8, !tbaa !14
  %849 = getelementptr inbounds i8, ptr %848, i64 40
  store i32 11, ptr %849, align 8, !tbaa !15
  %850 = load ptr, ptr %848, align 8, !tbaa !46
  tail call void %850(ptr noundef nonnull %0) #7
  br label %852

851:                                              ; preds = %424, %440, %725, %709, %693, %677, %661, %645, %629, %613, %597, %581, %565, %549, %533, %517, %501, %486, %465, %780
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #7
  br label %1240

852:                                              ; preds = %842, %847
  store ptr %843, ptr %420, align 8, !tbaa !21
  store i64 %844, ptr %421, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #7
  br label %1239

853:                                              ; preds = %84
  %854 = load ptr, ptr %5, align 8, !tbaa !20
  %855 = getelementptr inbounds i8, ptr %854, i64 8
  %856 = load i64, ptr %855, align 8, !tbaa !23
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %858, label %865

858:                                              ; preds = %853
  %859 = getelementptr inbounds i8, ptr %854, i64 24
  %860 = load ptr, ptr %859, align 8, !tbaa !24
  %861 = tail call signext i32 %860(ptr noundef nonnull %0) #7
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %1240, label %863

863:                                              ; preds = %858
  %864 = load i64, ptr %855, align 8, !tbaa !23
  br label %865

865:                                              ; preds = %863, %853
  %866 = phi i64 [ %864, %863 ], [ %856, %853 ]
  %867 = load ptr, ptr %854, align 8, !tbaa !21
  %868 = add i64 %866, -1
  %869 = getelementptr inbounds i8, ptr %867, i64 1
  %870 = load i8, ptr %867, align 1, !tbaa !18
  %871 = zext i8 %870 to i64
  %872 = shl nuw nsw i64 %871, 8
  %873 = icmp eq i64 %868, 0
  br i1 %873, label %874, label %882

874:                                              ; preds = %865
  %875 = getelementptr inbounds i8, ptr %854, i64 24
  %876 = load ptr, ptr %875, align 8, !tbaa !24
  %877 = tail call signext i32 %876(ptr noundef nonnull %0) #7
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %1240, label %879

879:                                              ; preds = %874
  %880 = load ptr, ptr %854, align 8, !tbaa !21
  %881 = load i64, ptr %855, align 8, !tbaa !23
  br label %882

882:                                              ; preds = %879, %865
  %883 = phi ptr [ %880, %879 ], [ %869, %865 ]
  %884 = phi i64 [ %881, %879 ], [ %868, %865 ]
  %885 = add i64 %884, -1
  %886 = getelementptr inbounds i8, ptr %883, i64 1
  %887 = load i8, ptr %883, align 1, !tbaa !18
  %888 = zext i8 %887 to i64
  %889 = or disjoint i64 %872, %888
  %890 = add nsw i64 %889, -2
  %891 = icmp ugt i64 %889, 2
  br i1 %891, label %892, label %1065

892:                                              ; preds = %882
  %893 = getelementptr inbounds i8, ptr %854, i64 24
  br label %894

894:                                              ; preds = %1061, %892
  %895 = phi i64 [ %885, %892 ], [ %1008, %1061 ]
  %896 = phi ptr [ %886, %892 ], [ %1009, %1061 ]
  %897 = phi i64 [ %890, %892 ], [ %1063, %1061 ]
  %898 = icmp eq i64 %895, 0
  br i1 %898, label %899, label %906

899:                                              ; preds = %894
  %900 = load ptr, ptr %893, align 8, !tbaa !24
  %901 = tail call signext i32 %900(ptr noundef nonnull %0) #7
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %1240, label %903

903:                                              ; preds = %899
  %904 = load ptr, ptr %854, align 8, !tbaa !21
  %905 = load i64, ptr %855, align 8, !tbaa !23
  br label %906

906:                                              ; preds = %903, %894
  %907 = phi ptr [ %904, %903 ], [ %896, %894 ]
  %908 = phi i64 [ %905, %903 ], [ %895, %894 ]
  %909 = load i8, ptr %907, align 1, !tbaa !18
  %910 = zext i8 %909 to i32
  %911 = lshr i32 %910, 4
  %912 = and i32 %910, 15
  %913 = load ptr, ptr %0, align 8, !tbaa !14
  %914 = getelementptr inbounds i8, ptr %913, i64 40
  store i32 81, ptr %914, align 8, !tbaa !15
  %915 = getelementptr inbounds i8, ptr %913, i64 44
  store i32 %912, ptr %915, align 4, !tbaa !18
  %916 = load ptr, ptr %0, align 8, !tbaa !14
  %917 = getelementptr inbounds i8, ptr %916, i64 48
  store i32 %911, ptr %917, align 4, !tbaa !18
  %918 = load ptr, ptr %0, align 8, !tbaa !14
  %919 = getelementptr inbounds i8, ptr %918, i64 8
  %920 = load ptr, ptr %919, align 8, !tbaa !19
  tail call void %920(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %921 = icmp ugt i32 %912, 3
  br i1 %921, label %922, label %928

922:                                              ; preds = %906
  %923 = load ptr, ptr %0, align 8, !tbaa !14
  %924 = getelementptr inbounds i8, ptr %923, i64 40
  store i32 31, ptr %924, align 8, !tbaa !15
  %925 = getelementptr inbounds i8, ptr %923, i64 44
  store i32 %912, ptr %925, align 4, !tbaa !18
  %926 = load ptr, ptr %0, align 8, !tbaa !14
  %927 = load ptr, ptr %926, align 8, !tbaa !46
  tail call void %927(ptr noundef nonnull %0) #7
  br label %928

928:                                              ; preds = %922, %906
  %929 = zext nneg i32 %912 to i64
  %930 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %929
  %931 = load ptr, ptr %930, align 8, !tbaa !38
  %932 = icmp eq ptr %931, null
  br i1 %932, label %933, label %935

933:                                              ; preds = %928
  %934 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %0) #7
  store ptr %934, ptr %930, align 8, !tbaa !38
  br label %935

935:                                              ; preds = %933, %928
  %936 = phi ptr [ %934, %933 ], [ %931, %928 ]
  %937 = icmp ult i8 %909, 16
  %938 = add i64 %908, -1
  %939 = getelementptr inbounds i8, ptr %907, i64 1
  br i1 %937, label %940, label %965

940:                                              ; preds = %935, %952
  %941 = phi i64 [ %961, %952 ], [ 0, %935 ]
  %942 = phi ptr [ %963, %952 ], [ %939, %935 ]
  %943 = phi i64 [ %962, %952 ], [ %938, %935 ]
  %944 = icmp eq i64 %943, 0
  br i1 %944, label %945, label %952

945:                                              ; preds = %940
  %946 = load ptr, ptr %893, align 8, !tbaa !24
  %947 = tail call signext i32 %946(ptr noundef nonnull %0) #7
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %1240, label %949

949:                                              ; preds = %945
  %950 = load ptr, ptr %854, align 8, !tbaa !21
  %951 = load i64, ptr %855, align 8, !tbaa !23
  br label %952

952:                                              ; preds = %949, %940
  %953 = phi ptr [ %950, %949 ], [ %942, %940 ]
  %954 = phi i64 [ %951, %949 ], [ %943, %940 ]
  %955 = load i8, ptr %953, align 1, !tbaa !18
  %956 = zext i8 %955 to i16
  %957 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %941
  %958 = load i32, ptr %957, align 4, !tbaa !37
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %959
  store i16 %956, ptr %960, align 2, !tbaa !71
  %961 = add nuw nsw i64 %941, 1
  %962 = add i64 %954, -1
  %963 = getelementptr inbounds i8, ptr %953, i64 1
  %964 = icmp eq i64 %961, 64
  br i1 %964, label %1007, label %940

965:                                              ; preds = %935, %993
  %966 = phi i64 [ %1003, %993 ], [ 0, %935 ]
  %967 = phi ptr [ %1005, %993 ], [ %939, %935 ]
  %968 = phi i64 [ %1004, %993 ], [ %938, %935 ]
  %969 = icmp eq i64 %968, 0
  br i1 %969, label %970, label %977

970:                                              ; preds = %965
  %971 = load ptr, ptr %893, align 8, !tbaa !24
  %972 = tail call signext i32 %971(ptr noundef nonnull %0) #7
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %1240, label %974

974:                                              ; preds = %970
  %975 = load ptr, ptr %854, align 8, !tbaa !21
  %976 = load i64, ptr %855, align 8, !tbaa !23
  br label %977

977:                                              ; preds = %974, %965
  %978 = phi ptr [ %975, %974 ], [ %967, %965 ]
  %979 = phi i64 [ %976, %974 ], [ %968, %965 ]
  %980 = add i64 %979, -1
  %981 = getelementptr inbounds i8, ptr %978, i64 1
  %982 = load i8, ptr %978, align 1, !tbaa !18
  %983 = zext i8 %982 to i16
  %984 = shl nuw i16 %983, 8
  %985 = icmp eq i64 %980, 0
  br i1 %985, label %986, label %993

986:                                              ; preds = %977
  %987 = load ptr, ptr %893, align 8, !tbaa !24
  %988 = tail call signext i32 %987(ptr noundef nonnull %0) #7
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %1240, label %990

990:                                              ; preds = %986
  %991 = load ptr, ptr %854, align 8, !tbaa !21
  %992 = load i64, ptr %855, align 8, !tbaa !23
  br label %993

993:                                              ; preds = %990, %977
  %994 = phi ptr [ %991, %990 ], [ %981, %977 ]
  %995 = phi i64 [ %992, %990 ], [ %980, %977 ]
  %996 = load i8, ptr %994, align 1, !tbaa !18
  %997 = zext i8 %996 to i16
  %998 = or disjoint i16 %984, %997
  %999 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %966
  %1000 = load i32, ptr %999, align 4, !tbaa !37
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %1001
  store i16 %998, ptr %1002, align 2, !tbaa !71
  %1003 = add nuw nsw i64 %966, 1
  %1004 = add i64 %995, -1
  %1005 = getelementptr inbounds i8, ptr %994, i64 1
  %1006 = icmp eq i64 %1003, 64
  br i1 %1006, label %1007, label %965

1007:                                             ; preds = %993, %952
  %1008 = phi i64 [ %962, %952 ], [ %1004, %993 ]
  %1009 = phi ptr [ %963, %952 ], [ %1005, %993 ]
  %1010 = load ptr, ptr %0, align 8, !tbaa !14
  %1011 = getelementptr inbounds i8, ptr %1010, i64 124
  %1012 = load i32, ptr %1011, align 4, !tbaa !72
  %1013 = icmp sgt i32 %1012, 1
  br i1 %1013, label %1014, label %1061

1014:                                             ; preds = %1007, %1014
  %1015 = phi i64 [ %1059, %1014 ], [ 0, %1007 ]
  %1016 = load ptr, ptr %0, align 8, !tbaa !14
  %1017 = getelementptr inbounds i8, ptr %1016, i64 44
  %1018 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %1015
  %1019 = load i16, ptr %1018, align 2, !tbaa !71
  %1020 = zext i16 %1019 to i32
  store i32 %1020, ptr %1017, align 4, !tbaa !37
  %1021 = or disjoint i64 %1015, 1
  %1022 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %1021
  %1023 = load i16, ptr %1022, align 2, !tbaa !71
  %1024 = zext i16 %1023 to i32
  %1025 = getelementptr inbounds i8, ptr %1016, i64 48
  store i32 %1024, ptr %1025, align 4, !tbaa !37
  %1026 = or disjoint i64 %1015, 2
  %1027 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %1026
  %1028 = load i16, ptr %1027, align 2, !tbaa !71
  %1029 = zext i16 %1028 to i32
  %1030 = getelementptr inbounds i8, ptr %1016, i64 52
  store i32 %1029, ptr %1030, align 4, !tbaa !37
  %1031 = or disjoint i64 %1015, 3
  %1032 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %1031
  %1033 = load i16, ptr %1032, align 2, !tbaa !71
  %1034 = zext i16 %1033 to i32
  %1035 = getelementptr inbounds i8, ptr %1016, i64 56
  store i32 %1034, ptr %1035, align 4, !tbaa !37
  %1036 = or disjoint i64 %1015, 4
  %1037 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %1036
  %1038 = load i16, ptr %1037, align 2, !tbaa !71
  %1039 = zext i16 %1038 to i32
  %1040 = getelementptr inbounds i8, ptr %1016, i64 60
  store i32 %1039, ptr %1040, align 4, !tbaa !37
  %1041 = or disjoint i64 %1015, 5
  %1042 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %1041
  %1043 = load i16, ptr %1042, align 2, !tbaa !71
  %1044 = zext i16 %1043 to i32
  %1045 = getelementptr inbounds i8, ptr %1016, i64 64
  store i32 %1044, ptr %1045, align 4, !tbaa !37
  %1046 = or disjoint i64 %1015, 6
  %1047 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %1046
  %1048 = load i16, ptr %1047, align 2, !tbaa !71
  %1049 = zext i16 %1048 to i32
  %1050 = getelementptr inbounds i8, ptr %1016, i64 68
  store i32 %1049, ptr %1050, align 4, !tbaa !37
  %1051 = or disjoint i64 %1015, 7
  %1052 = getelementptr inbounds [64 x i16], ptr %936, i64 0, i64 %1051
  %1053 = load i16, ptr %1052, align 2, !tbaa !71
  %1054 = zext i16 %1053 to i32
  %1055 = getelementptr inbounds i8, ptr %1016, i64 72
  store i32 %1054, ptr %1055, align 4, !tbaa !37
  %1056 = getelementptr inbounds i8, ptr %1016, i64 40
  store i32 93, ptr %1056, align 8, !tbaa !15
  %1057 = getelementptr inbounds i8, ptr %1016, i64 8
  %1058 = load ptr, ptr %1057, align 8, !tbaa !19
  tail call void %1058(ptr noundef nonnull %0, i32 noundef signext 2) #7
  %1059 = add nuw nsw i64 %1015, 8
  %1060 = icmp ult i64 %1015, 56
  br i1 %1060, label %1014, label %1061

1061:                                             ; preds = %1014, %1007
  %1062 = select i1 %937, i64 -65, i64 -129
  %1063 = add nsw i64 %1062, %897
  %1064 = icmp sgt i64 %1063, 0
  br i1 %1064, label %894, label %1065

1065:                                             ; preds = %1061, %882
  %1066 = phi i64 [ %890, %882 ], [ %1063, %1061 ]
  %1067 = phi ptr [ %886, %882 ], [ %1009, %1061 ]
  %1068 = phi i64 [ %885, %882 ], [ %1008, %1061 ]
  %1069 = icmp eq i64 %1066, 0
  br i1 %1069, label %1074, label %1070

1070:                                             ; preds = %1065
  %1071 = load ptr, ptr %0, align 8, !tbaa !14
  %1072 = getelementptr inbounds i8, ptr %1071, i64 40
  store i32 11, ptr %1072, align 8, !tbaa !15
  %1073 = load ptr, ptr %1071, align 8, !tbaa !46
  tail call void %1073(ptr noundef nonnull %0) #7
  br label %1074

1074:                                             ; preds = %1065, %1070
  store ptr %1067, ptr %854, align 8, !tbaa !21
  store i64 %1068, ptr %855, align 8, !tbaa !23
  br label %1239

1075:                                             ; preds = %84
  %1076 = load ptr, ptr %5, align 8, !tbaa !20
  %1077 = getelementptr inbounds i8, ptr %1076, i64 8
  %1078 = load i64, ptr %1077, align 8, !tbaa !23
  %1079 = icmp eq i64 %1078, 0
  br i1 %1079, label %1080, label %1087

1080:                                             ; preds = %1075
  %1081 = getelementptr inbounds i8, ptr %1076, i64 24
  %1082 = load ptr, ptr %1081, align 8, !tbaa !24
  %1083 = tail call signext i32 %1082(ptr noundef nonnull %0) #7
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1240, label %1085

1085:                                             ; preds = %1080
  %1086 = load i64, ptr %1077, align 8, !tbaa !23
  br label %1087

1087:                                             ; preds = %1085, %1075
  %1088 = phi i64 [ %1086, %1085 ], [ %1078, %1075 ]
  %1089 = load ptr, ptr %1076, align 8, !tbaa !21
  %1090 = add i64 %1088, -1
  %1091 = getelementptr inbounds i8, ptr %1089, i64 1
  %1092 = load i8, ptr %1089, align 1, !tbaa !18
  %1093 = zext i8 %1092 to i64
  %1094 = shl nuw nsw i64 %1093, 8
  %1095 = icmp eq i64 %1090, 0
  br i1 %1095, label %1096, label %1104

1096:                                             ; preds = %1087
  %1097 = getelementptr inbounds i8, ptr %1076, i64 24
  %1098 = load ptr, ptr %1097, align 8, !tbaa !24
  %1099 = tail call signext i32 %1098(ptr noundef nonnull %0) #7
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1240, label %1101

1101:                                             ; preds = %1096
  %1102 = load ptr, ptr %1076, align 8, !tbaa !21
  %1103 = load i64, ptr %1077, align 8, !tbaa !23
  br label %1104

1104:                                             ; preds = %1101, %1087
  %1105 = phi ptr [ %1102, %1101 ], [ %1091, %1087 ]
  %1106 = phi i64 [ %1103, %1101 ], [ %1090, %1087 ]
  %1107 = add i64 %1106, -1
  %1108 = getelementptr inbounds i8, ptr %1105, i64 1
  %1109 = load i8, ptr %1105, align 1, !tbaa !18
  %1110 = zext i8 %1109 to i64
  %1111 = or disjoint i64 %1094, %1110
  %1112 = icmp eq i64 %1111, 4
  br i1 %1112, label %1117, label %1113

1113:                                             ; preds = %1104
  %1114 = load ptr, ptr %0, align 8, !tbaa !14
  %1115 = getelementptr inbounds i8, ptr %1114, i64 40
  store i32 11, ptr %1115, align 8, !tbaa !15
  %1116 = load ptr, ptr %1114, align 8, !tbaa !46
  tail call void %1116(ptr noundef nonnull %0) #7
  br label %1117

1117:                                             ; preds = %1113, %1104
  %1118 = icmp eq i64 %1107, 0
  br i1 %1118, label %1119, label %1127

1119:                                             ; preds = %1117
  %1120 = getelementptr inbounds i8, ptr %1076, i64 24
  %1121 = load ptr, ptr %1120, align 8, !tbaa !24
  %1122 = tail call signext i32 %1121(ptr noundef nonnull %0) #7
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1240, label %1124

1124:                                             ; preds = %1119
  %1125 = load ptr, ptr %1076, align 8, !tbaa !21
  %1126 = load i64, ptr %1077, align 8, !tbaa !23
  br label %1127

1127:                                             ; preds = %1124, %1117
  %1128 = phi ptr [ %1125, %1124 ], [ %1108, %1117 ]
  %1129 = phi i64 [ %1126, %1124 ], [ %1107, %1117 ]
  %1130 = add i64 %1129, -1
  %1131 = getelementptr inbounds i8, ptr %1128, i64 1
  %1132 = load i8, ptr %1128, align 1, !tbaa !18
  %1133 = zext i8 %1132 to i32
  %1134 = shl nuw nsw i32 %1133, 8
  %1135 = icmp eq i64 %1130, 0
  br i1 %1135, label %1136, label %1144

1136:                                             ; preds = %1127
  %1137 = getelementptr inbounds i8, ptr %1076, i64 24
  %1138 = load ptr, ptr %1137, align 8, !tbaa !24
  %1139 = tail call signext i32 %1138(ptr noundef nonnull %0) #7
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1240, label %1141

1141:                                             ; preds = %1136
  %1142 = load ptr, ptr %1076, align 8, !tbaa !21
  %1143 = load i64, ptr %1077, align 8, !tbaa !23
  br label %1144

1144:                                             ; preds = %1127, %1141
  %1145 = phi ptr [ %1142, %1141 ], [ %1131, %1127 ]
  %1146 = phi i64 [ %1143, %1141 ], [ %1130, %1127 ]
  %1147 = add i64 %1146, -1
  %1148 = getelementptr inbounds i8, ptr %1145, i64 1
  %1149 = load i8, ptr %1145, align 1, !tbaa !18
  %1150 = zext i8 %1149 to i32
  %1151 = or disjoint i32 %1134, %1150
  %1152 = load ptr, ptr %0, align 8, !tbaa !14
  %1153 = getelementptr inbounds i8, ptr %1152, i64 40
  store i32 82, ptr %1153, align 8, !tbaa !15
  %1154 = getelementptr inbounds i8, ptr %1152, i64 44
  store i32 %1151, ptr %1154, align 4, !tbaa !18
  %1155 = load ptr, ptr %0, align 8, !tbaa !14
  %1156 = getelementptr inbounds i8, ptr %1155, i64 8
  %1157 = load ptr, ptr %1156, align 8, !tbaa !19
  tail call void %1157(ptr noundef nonnull %0, i32 noundef signext 1) #7
  store i32 %1151, ptr %6, align 8, !tbaa !47
  store ptr %1148, ptr %1076, align 8, !tbaa !21
  store i64 %1147, ptr %1077, align 8, !tbaa !23
  br label %1239

1158:                                             ; preds = %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84
  %1159 = load ptr, ptr %4, align 8, !tbaa !25
  %1160 = getelementptr inbounds i8, ptr %1159, i64 48
  %1161 = add nsw i32 %85, -224
  %1162 = zext nneg i32 %1161 to i64
  %1163 = getelementptr inbounds [16 x ptr], ptr %1160, i64 0, i64 %1162
  %1164 = load ptr, ptr %1163, align 8, !tbaa !38
  %1165 = tail call signext i32 %1164(ptr noundef nonnull %0) #7
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1240, label %1239

1167:                                             ; preds = %84
  %1168 = load ptr, ptr %4, align 8, !tbaa !25
  %1169 = getelementptr inbounds i8, ptr %1168, i64 40
  %1170 = load ptr, ptr %1169, align 8, !tbaa !35
  %1171 = tail call signext i32 %1170(ptr noundef nonnull %0) #7
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1240, label %1239

1173:                                             ; preds = %84, %84, %84, %84, %84, %84, %84, %84, %84
  %1174 = load ptr, ptr %0, align 8, !tbaa !14
  %1175 = getelementptr inbounds i8, ptr %1174, i64 40
  store i32 92, ptr %1175, align 8, !tbaa !15
  %1176 = getelementptr inbounds i8, ptr %1174, i64 44
  store i32 %85, ptr %1176, align 4, !tbaa !18
  %1177 = load ptr, ptr %0, align 8, !tbaa !14
  %1178 = getelementptr inbounds i8, ptr %1177, i64 8
  %1179 = load ptr, ptr %1178, align 8, !tbaa !19
  tail call void %1179(ptr noundef nonnull %0, i32 noundef signext 1) #7
  br label %1239

1180:                                             ; preds = %84
  %1181 = load ptr, ptr %5, align 8, !tbaa !20
  %1182 = getelementptr inbounds i8, ptr %1181, i64 8
  %1183 = load i64, ptr %1182, align 8, !tbaa !23
  %1184 = icmp eq i64 %1183, 0
  br i1 %1184, label %1185, label %1192

1185:                                             ; preds = %1180
  %1186 = getelementptr inbounds i8, ptr %1181, i64 24
  %1187 = load ptr, ptr %1186, align 8, !tbaa !24
  %1188 = tail call signext i32 %1187(ptr noundef nonnull %0) #7
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1240, label %1190

1190:                                             ; preds = %1185
  %1191 = load i64, ptr %1182, align 8, !tbaa !23
  br label %1192

1192:                                             ; preds = %1190, %1180
  %1193 = phi i64 [ %1191, %1190 ], [ %1183, %1180 ]
  %1194 = load ptr, ptr %1181, align 8, !tbaa !21
  %1195 = add i64 %1193, -1
  %1196 = getelementptr inbounds i8, ptr %1194, i64 1
  %1197 = load i8, ptr %1194, align 1, !tbaa !18
  %1198 = zext i8 %1197 to i64
  %1199 = shl nuw nsw i64 %1198, 8
  %1200 = icmp eq i64 %1195, 0
  br i1 %1200, label %1201, label %1209

1201:                                             ; preds = %1192
  %1202 = getelementptr inbounds i8, ptr %1181, i64 24
  %1203 = load ptr, ptr %1202, align 8, !tbaa !24
  %1204 = tail call signext i32 %1203(ptr noundef nonnull %0) #7
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1240, label %1206

1206:                                             ; preds = %1201
  %1207 = load ptr, ptr %1181, align 8, !tbaa !21
  %1208 = load i64, ptr %1182, align 8, !tbaa !23
  br label %1209

1209:                                             ; preds = %1206, %1192
  %1210 = phi ptr [ %1207, %1206 ], [ %1196, %1192 ]
  %1211 = phi i64 [ %1208, %1206 ], [ %1195, %1192 ]
  %1212 = add i64 %1211, -1
  %1213 = getelementptr inbounds i8, ptr %1210, i64 1
  %1214 = load i8, ptr %1210, align 1, !tbaa !18
  %1215 = zext i8 %1214 to i64
  %1216 = or disjoint i64 %1199, %1215
  %1217 = add nsw i64 %1216, -2
  %1218 = load ptr, ptr %0, align 8, !tbaa !14
  %1219 = getelementptr inbounds i8, ptr %1218, i64 40
  store i32 91, ptr %1219, align 8, !tbaa !15
  %1220 = load i32, ptr %3, align 4, !tbaa !6
  %1221 = getelementptr inbounds i8, ptr %1218, i64 44
  store i32 %1220, ptr %1221, align 4, !tbaa !18
  %1222 = trunc nsw i64 %1217 to i32
  %1223 = load ptr, ptr %0, align 8, !tbaa !14
  %1224 = getelementptr inbounds i8, ptr %1223, i64 48
  store i32 %1222, ptr %1224, align 4, !tbaa !18
  %1225 = load ptr, ptr %0, align 8, !tbaa !14
  %1226 = getelementptr inbounds i8, ptr %1225, i64 8
  %1227 = load ptr, ptr %1226, align 8, !tbaa !19
  tail call void %1227(ptr noundef nonnull %0, i32 noundef signext 1) #7
  store ptr %1213, ptr %1181, align 8, !tbaa !21
  store i64 %1212, ptr %1182, align 8, !tbaa !23
  %1228 = icmp ugt i64 %1216, 2
  br i1 %1228, label %1229, label %1239

1229:                                             ; preds = %1209
  %1230 = load ptr, ptr %5, align 8, !tbaa !20
  %1231 = getelementptr inbounds i8, ptr %1230, i64 32
  %1232 = load ptr, ptr %1231, align 8, !tbaa !70
  tail call void %1232(ptr noundef nonnull %0, i64 noundef %1217) #7
  br label %1239

1233:                                             ; preds = %84
  %1234 = load ptr, ptr %0, align 8, !tbaa !14
  %1235 = getelementptr inbounds i8, ptr %1234, i64 40
  store i32 68, ptr %1235, align 8, !tbaa !15
  %1236 = getelementptr inbounds i8, ptr %1234, i64 44
  store i32 %85, ptr %1236, align 4, !tbaa !18
  %1237 = load ptr, ptr %0, align 8, !tbaa !14
  %1238 = load ptr, ptr %1237, align 8, !tbaa !46
  tail call void %1238(ptr noundef nonnull %0) #7
  br label %1239

1239:                                             ; preds = %1229, %1209, %1144, %1074, %852, %415, %395, %100, %1167, %1158, %112, %109, %106, %103, %1233, %1173, %115
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %24

1240:                                             ; preds = %1201, %1185, %1136, %1119, %1096, %1080, %874, %858, %387, %371, %52, %37, %1167, %1158, %112, %109, %106, %103, %79, %899, %970, %986, %945, %236, %221, %325, %308, %291, %170, %153, %136, %851, %361, %333
  %1241 = phi i32 [ 2, %361 ], [ 1, %333 ], [ 0, %851 ], [ 0, %136 ], [ 0, %153 ], [ 0, %170 ], [ 0, %291 ], [ 0, %308 ], [ 0, %325 ], [ 0, %221 ], [ 0, %236 ], [ 0, %945 ], [ 0, %986 ], [ 0, %970 ], [ 0, %899 ], [ 0, %79 ], [ 0, %103 ], [ 0, %106 ], [ 0, %109 ], [ 0, %112 ], [ 0, %1158 ], [ 0, %1167 ], [ 0, %37 ], [ 0, %52 ], [ 0, %371 ], [ 0, %387 ], [ 0, %858 ], [ 0, %874 ], [ 0, %1080 ], [ 0, %1096 ], [ 0, %1119 ], [ 0, %1136 ], [ 0, %1185 ], [ 0, %1201 ]
  ret i32 %1241
}

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @read_restart_marker(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 540
  %3 = load i32, ptr %2, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc signext i32 @next_marker(ptr noundef nonnull %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %2, align 4, !tbaa !6
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %3, %1 ]
  %12 = getelementptr inbounds i8, ptr %0, i64 584
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds i8, ptr %13, i64 32
  %15 = load i32, ptr %14, align 8, !tbaa !69
  %16 = add nsw i32 %15, 208
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load ptr, ptr %0, align 8, !tbaa !14
  %20 = getelementptr inbounds i8, ptr %19, i64 40
  store i32 98, ptr %20, align 8, !tbaa !15
  %21 = getelementptr inbounds i8, ptr %19, i64 44
  store i32 %15, ptr %21, align 4, !tbaa !18
  %22 = load ptr, ptr %0, align 8, !tbaa !14
  %23 = getelementptr inbounds i8, ptr %22, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  tail call void %24(ptr noundef nonnull %0, i32 noundef signext 3) #7
  store i32 0, ptr %2, align 4, !tbaa !6
  br label %32

25:                                               ; preds = %10
  %26 = getelementptr inbounds i8, ptr %0, i64 40
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = getelementptr inbounds i8, ptr %27, i64 40
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = tail call signext i32 %29(ptr noundef nonnull %0, i32 noundef signext %15) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %25, %18
  %33 = load ptr, ptr %12, align 8, !tbaa !25
  %34 = getelementptr inbounds i8, ptr %33, i64 32
  %35 = load i32, ptr %34, align 8, !tbaa !69
  %36 = add nsw i32 %35, 1
  %37 = and i32 %36, 7
  store i32 %37, ptr %34, align 8, !tbaa !69
  br label %38

38:                                               ; preds = %25, %5, %32
  %39 = phi i32 [ 1, %32 ], [ 0, %5 ], [ 0, %25 ]
  ret i32 %39
}

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @skip_variable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !23
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %3, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = tail call signext i32 %9(ptr noundef nonnull %0) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %56, label %12

12:                                               ; preds = %7
  %13 = load i64, ptr %4, align 8, !tbaa !23
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i64 [ %13, %12 ], [ %5, %1 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !21
  %17 = add i64 %15, -1
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  %19 = load i8, ptr %16, align 1, !tbaa !18
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 8
  %22 = icmp eq i64 %17, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = getelementptr inbounds i8, ptr %3, i64 24
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = tail call signext i32 %25(ptr noundef nonnull %0) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8, !tbaa !21
  %30 = load i64, ptr %4, align 8, !tbaa !23
  br label %31

31:                                               ; preds = %28, %14
  %32 = phi ptr [ %29, %28 ], [ %18, %14 ]
  %33 = phi i64 [ %30, %28 ], [ %17, %14 ]
  %34 = add i64 %33, -1
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  %36 = load i8, ptr %32, align 1, !tbaa !18
  %37 = zext i8 %36 to i64
  %38 = or disjoint i64 %21, %37
  %39 = add nsw i64 %38, -2
  %40 = load ptr, ptr %0, align 8, !tbaa !14
  %41 = getelementptr inbounds i8, ptr %40, i64 40
  store i32 91, ptr %41, align 8, !tbaa !15
  %42 = getelementptr inbounds i8, ptr %0, i64 540
  %43 = load i32, ptr %42, align 4, !tbaa !6
  %44 = getelementptr inbounds i8, ptr %40, i64 44
  store i32 %43, ptr %44, align 4, !tbaa !18
  %45 = trunc nsw i64 %39 to i32
  %46 = load ptr, ptr %0, align 8, !tbaa !14
  %47 = getelementptr inbounds i8, ptr %46, i64 48
  store i32 %45, ptr %47, align 4, !tbaa !18
  %48 = load ptr, ptr %0, align 8, !tbaa !14
  %49 = getelementptr inbounds i8, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8, !tbaa !19
  tail call void %50(ptr noundef nonnull %0, i32 noundef signext 1) #7
  store ptr %35, ptr %3, align 8, !tbaa !21
  store i64 %34, ptr %4, align 8, !tbaa !23
  %51 = icmp ugt i64 %38, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %31
  %53 = load ptr, ptr %2, align 8, !tbaa !20
  %54 = getelementptr inbounds i8, ptr %53, i64 32
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  tail call void %55(ptr noundef nonnull %0, i64 noundef %39) #7
  br label %56

56:                                               ; preds = %31, %52, %23, %7
  %57 = phi i32 [ 0, %7 ], [ 0, %23 ], [ 1, %52 ], [ 1, %31 ]
  ret i32 %57
}

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @get_interesting_appn(ptr noundef %0) #0 {
  %2 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #7
  %3 = getelementptr inbounds i8, ptr %0, i64 40
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !23
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %4, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = tail call signext i32 %10(ptr noundef nonnull %0) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %159, label %13

13:                                               ; preds = %8
  %14 = load i64, ptr %5, align 8, !tbaa !23
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i64 [ %14, %13 ], [ %6, %1 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !21
  %18 = add i64 %16, -1
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load i8, ptr %17, align 1, !tbaa !18
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = getelementptr inbounds i8, ptr %4, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !24
  %27 = tail call signext i32 %26(ptr noundef nonnull %0) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %159, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !tbaa !21
  %31 = load i64, ptr %5, align 8, !tbaa !23
  br label %32

32:                                               ; preds = %29, %15
  %33 = phi ptr [ %30, %29 ], [ %19, %15 ]
  %34 = phi i64 [ %31, %29 ], [ %18, %15 ]
  %35 = load i8, ptr %33, align 1, !tbaa !18
  %36 = zext i8 %35 to i64
  %37 = or disjoint i64 %22, %36
  %38 = add nsw i64 %37, -2
  %39 = icmp ugt i64 %37, 15
  %40 = icmp ugt i64 %37, 2
  %41 = trunc nuw nsw i64 %38 to i32
  %42 = select i1 %40, i32 %41, i32 0
  %43 = select i1 %39, i32 14, i32 %42
  %44 = getelementptr inbounds i8, ptr %33, i64 1
  %45 = add i64 %34, -1
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %32
  %48 = getelementptr inbounds i8, ptr %4, i64 24
  %49 = zext i32 %43 to i64
  br label %50

50:                                               ; preds = %47, %62
  %51 = phi i64 [ 0, %47 ], [ %67, %62 ]
  %52 = phi i64 [ %45, %47 ], [ %69, %62 ]
  %53 = phi ptr [ %44, %47 ], [ %68, %62 ]
  %54 = icmp eq i64 %52, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load ptr, ptr %48, align 8, !tbaa !24
  %57 = tail call signext i32 %56(ptr noundef %0) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %159, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %4, align 8, !tbaa !21
  %61 = load i64, ptr %5, align 8, !tbaa !23
  br label %62

62:                                               ; preds = %59, %50
  %63 = phi ptr [ %60, %59 ], [ %53, %50 ]
  %64 = phi i64 [ %61, %59 ], [ %52, %50 ]
  %65 = load i8, ptr %63, align 1, !tbaa !18
  %66 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 %51
  store i8 %65, ptr %66, align 1, !tbaa !18
  %67 = add nuw nsw i64 %51, 1
  %68 = getelementptr inbounds i8, ptr %63, i64 1
  %69 = add i64 %64, -1
  %70 = icmp eq i64 %67, %49
  br i1 %70, label %71, label %50

71:                                               ; preds = %62, %32
  %72 = phi i64 [ 0, %32 ], [ %49, %62 ]
  %73 = phi ptr [ %44, %32 ], [ %68, %62 ]
  %74 = phi i64 [ %45, %32 ], [ %69, %62 ]
  %75 = sub nsw i64 %38, %72
  %76 = getelementptr inbounds i8, ptr %0, i64 540
  %77 = load i32, ptr %76, align 4, !tbaa !6
  switch i32 %77, label %147 [
    i32 224, label %78
    i32 238, label %79
  ]

78:                                               ; preds = %71
  call fastcc void @examine_app0(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef signext %43, i64 noundef %75)
  br label %153

79:                                               ; preds = %71
  %80 = icmp ugt i32 %43, 11
  %81 = load i8, ptr %2, align 1
  %82 = icmp eq i8 %81, 65
  %83 = select i1 %80, i1 %82, i1 false
  %84 = getelementptr inbounds i8, ptr %2, i64 1
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 100
  %87 = select i1 %83, i1 %86, i1 false
  %88 = getelementptr inbounds i8, ptr %2, i64 2
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, 111
  %91 = select i1 %87, i1 %90, i1 false
  %92 = getelementptr inbounds i8, ptr %2, i64 3
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, 98
  %95 = select i1 %91, i1 %94, i1 false
  %96 = getelementptr inbounds i8, ptr %2, i64 4
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, 101
  %99 = select i1 %95, i1 %98, i1 false
  br i1 %99, label %100, label %138

100:                                              ; preds = %79
  %101 = getelementptr inbounds i8, ptr %2, i64 5
  %102 = load i8, ptr %101, align 1, !tbaa !18
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = getelementptr inbounds i8, ptr %2, i64 6
  %106 = load i8, ptr %105, align 1, !tbaa !18
  %107 = zext i8 %106 to i32
  %108 = or disjoint i32 %104, %107
  %109 = getelementptr inbounds i8, ptr %2, i64 7
  %110 = load i8, ptr %109, align 1, !tbaa !18
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = getelementptr inbounds i8, ptr %2, i64 8
  %114 = load i8, ptr %113, align 1, !tbaa !18
  %115 = zext i8 %114 to i32
  %116 = or disjoint i32 %112, %115
  %117 = getelementptr inbounds i8, ptr %2, i64 9
  %118 = load i8, ptr %117, align 1, !tbaa !18
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 8
  %121 = getelementptr inbounds i8, ptr %2, i64 10
  %122 = load i8, ptr %121, align 1, !tbaa !18
  %123 = zext i8 %122 to i32
  %124 = or disjoint i32 %120, %123
  %125 = getelementptr inbounds i8, ptr %2, i64 11
  %126 = load i8, ptr %125, align 1, !tbaa !18
  %127 = zext i8 %126 to i32
  %128 = load ptr, ptr %0, align 8, !tbaa !14
  %129 = getelementptr inbounds i8, ptr %128, i64 44
  store i32 %108, ptr %129, align 4, !tbaa !37
  %130 = getelementptr inbounds i8, ptr %128, i64 48
  store i32 %116, ptr %130, align 4, !tbaa !37
  %131 = getelementptr inbounds i8, ptr %128, i64 52
  store i32 %124, ptr %131, align 4, !tbaa !37
  %132 = getelementptr inbounds i8, ptr %128, i64 56
  store i32 %127, ptr %132, align 4, !tbaa !37
  %133 = getelementptr inbounds i8, ptr %128, i64 40
  store i32 76, ptr %133, align 8, !tbaa !15
  %134 = getelementptr inbounds i8, ptr %128, i64 8
  %135 = load ptr, ptr %134, align 8, !tbaa !19
  tail call void %135(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %136 = getelementptr inbounds i8, ptr %0, i64 384
  store i32 1, ptr %136, align 8, !tbaa !56
  %137 = getelementptr inbounds i8, ptr %0, i64 388
  store i8 %126, ptr %137, align 4, !tbaa !57
  br label %153

138:                                              ; preds = %79
  %139 = load ptr, ptr %0, align 8, !tbaa !14
  %140 = getelementptr inbounds i8, ptr %139, i64 40
  store i32 78, ptr %140, align 8, !tbaa !15
  %141 = trunc i64 %75 to i32
  %142 = add i32 %43, %141
  %143 = getelementptr inbounds i8, ptr %139, i64 44
  store i32 %142, ptr %143, align 4, !tbaa !18
  %144 = load ptr, ptr %0, align 8, !tbaa !14
  %145 = getelementptr inbounds i8, ptr %144, i64 8
  %146 = load ptr, ptr %145, align 8, !tbaa !19
  tail call void %146(ptr noundef nonnull %0, i32 noundef signext 1) #7
  br label %153

147:                                              ; preds = %71
  %148 = load ptr, ptr %0, align 8, !tbaa !14
  %149 = getelementptr inbounds i8, ptr %148, i64 40
  store i32 68, ptr %149, align 8, !tbaa !15
  %150 = getelementptr inbounds i8, ptr %148, i64 44
  store i32 %77, ptr %150, align 4, !tbaa !18
  %151 = load ptr, ptr %0, align 8, !tbaa !14
  %152 = load ptr, ptr %151, align 8, !tbaa !46
  tail call void %152(ptr noundef nonnull %0) #7
  br label %153

153:                                              ; preds = %138, %100, %147, %78
  store ptr %73, ptr %4, align 8, !tbaa !21
  store i64 %74, ptr %5, align 8, !tbaa !23
  %154 = icmp sgt i64 %75, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %153
  %156 = load ptr, ptr %3, align 8, !tbaa !20
  %157 = getelementptr inbounds i8, ptr %156, i64 32
  %158 = load ptr, ptr %157, align 8, !tbaa !70
  tail call void %158(ptr noundef nonnull %0, i64 noundef %75) #7
  br label %159

159:                                              ; preds = %55, %153, %155, %24, %8
  %160 = phi i32 [ 0, %8 ], [ 0, %24 ], [ 1, %155 ], [ 1, %153 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #7
  ret i32 %160
}

; Function Attrs: nounwind
define dso_local void @jpeg_save_markers(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 584
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds i8, ptr %7, i64 96
  %9 = load i64, ptr %8, align 8, !tbaa !74
  %10 = add i64 %9, -32
  %11 = zext i32 %2 to i64
  %12 = icmp slt i64 %10, %11
  %13 = trunc i64 %10 to i32
  %14 = select i1 %12, i32 %13, i32 %2
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq i32 %1, 224
  br i1 %15, label %24, label %17

17:                                               ; preds = %3
  %18 = icmp ult i32 %14, 14
  %19 = and i1 %16, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  %21 = icmp eq i32 %1, 238
  %22 = tail call i32 @llvm.umax.i32(i32 %14, i32 12)
  %23 = select i1 %21, i32 %22, i32 %14
  br label %28

24:                                               ; preds = %3
  %25 = icmp eq i32 %1, 238
  %26 = or i1 %16, %25
  %27 = select i1 %26, ptr @get_interesting_appn, ptr @skip_variable
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %23, %20 ], [ 0, %24 ]
  %30 = phi ptr [ @save_marker, %20 ], [ %27, %24 ]
  %31 = icmp eq i32 %1, 254
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %5, i64 40
  store ptr %30, ptr %33, align 8, !tbaa !35
  %34 = getelementptr inbounds i8, ptr %5, i64 176
  store i32 %29, ptr %34, align 8, !tbaa !36
  br label %53

35:                                               ; preds = %28
  %36 = and i32 %1, -16
  %37 = icmp eq i32 %36, 224
  br i1 %37, label %38, label %47

38:                                               ; preds = %17, %35
  %39 = phi i32 [ %29, %35 ], [ 14, %17 ]
  %40 = phi ptr [ %30, %35 ], [ @save_marker, %17 ]
  %41 = getelementptr inbounds i8, ptr %5, i64 48
  %42 = add nsw i32 %1, -224
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [16 x ptr], ptr %41, i64 0, i64 %43
  store ptr %40, ptr %44, align 8, !tbaa !38
  %45 = getelementptr inbounds i8, ptr %5, i64 180
  %46 = getelementptr inbounds [16 x i32], ptr %45, i64 0, i64 %43
  store i32 %39, ptr %46, align 4, !tbaa !37
  br label %53

47:                                               ; preds = %35
  %48 = load ptr, ptr %0, align 8, !tbaa !14
  %49 = getelementptr inbounds i8, ptr %48, i64 40
  store i32 68, ptr %49, align 8, !tbaa !15
  %50 = getelementptr inbounds i8, ptr %48, i64 44
  store i32 %1, ptr %50, align 4, !tbaa !18
  %51 = load ptr, ptr %0, align 8, !tbaa !14
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  tail call void %52(ptr noundef nonnull %0) #7
  br label %53

53:                                               ; preds = %38, %47, %32
  ret void
}

; Function Attrs: nounwind
define internal signext range(i32 0, 2) i32 @save_marker(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 584
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds i8, ptr %3, i64 248
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !23
  %11 = icmp eq ptr %5, null
  br i1 %11, label %12, label %77

12:                                               ; preds = %1
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %7, i64 24
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = tail call signext i32 %16(ptr noundef nonnull %0) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %247, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %7, align 8, !tbaa !21
  %21 = load i64, ptr %9, align 8, !tbaa !23
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi ptr [ %20, %19 ], [ %8, %12 ]
  %24 = phi i64 [ %21, %19 ], [ %10, %12 ]
  %25 = add i64 %24, -1
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  %27 = load i8, ptr %23, align 1, !tbaa !18
  %28 = zext i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 8
  %30 = icmp eq i64 %25, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = getelementptr inbounds i8, ptr %7, i64 24
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = tail call signext i32 %33(ptr noundef nonnull %0) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %247, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %7, align 8, !tbaa !21
  %38 = load i64, ptr %9, align 8, !tbaa !23
  br label %39

39:                                               ; preds = %36, %22
  %40 = phi ptr [ %37, %36 ], [ %26, %22 ]
  %41 = phi i64 [ %38, %36 ], [ %25, %22 ]
  %42 = add i64 %41, -1
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  %44 = load i8, ptr %40, align 1, !tbaa !18
  %45 = zext i8 %44 to i64
  %46 = or disjoint i64 %29, %45
  %47 = add nsw i64 %46, -2
  %48 = icmp ugt i64 %46, 1
  br i1 %48, label %49, label %153

49:                                               ; preds = %39
  %50 = getelementptr inbounds i8, ptr %0, i64 540
  %51 = load i32, ptr %50, align 4, !tbaa !6
  %52 = icmp eq i32 %51, 254
  %53 = getelementptr inbounds i8, ptr %3, i64 176
  %54 = getelementptr inbounds i8, ptr %3, i64 180
  %55 = add nsw i32 %51, -224
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [16 x i32], ptr %54, i64 0, i64 %56
  %58 = select i1 %52, ptr %53, ptr %57
  %59 = load i32, ptr %58, align 4, !tbaa !37
  %60 = trunc nuw nsw i64 %47 to i32
  %61 = tail call i32 @llvm.umin.i32(i32 %59, i32 %60)
  %62 = getelementptr inbounds i8, ptr %0, i64 8
  %63 = load ptr, ptr %62, align 8, !tbaa !28
  %64 = getelementptr inbounds i8, ptr %63, i64 8
  %65 = load ptr, ptr %64, align 8, !tbaa !75
  %66 = zext nneg i32 %61 to i64
  %67 = add nuw nsw i64 %66, 32
  %68 = tail call ptr %65(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %67) #7
  store ptr null, ptr %68, align 8, !tbaa !76
  %69 = load i32, ptr %50, align 4, !tbaa !6
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %68, i64 8
  store i8 %70, ptr %71, align 8, !tbaa !78
  %72 = getelementptr inbounds i8, ptr %68, i64 12
  store i32 %60, ptr %72, align 4, !tbaa !79
  %73 = getelementptr inbounds i8, ptr %68, i64 16
  store i32 %61, ptr %73, align 8, !tbaa !80
  %74 = getelementptr inbounds i8, ptr %68, i64 32
  %75 = getelementptr inbounds i8, ptr %68, i64 24
  store ptr %74, ptr %75, align 8, !tbaa !81
  store ptr %68, ptr %4, align 8, !tbaa !44
  %76 = getelementptr inbounds i8, ptr %3, i64 256
  store i32 0, ptr %76, align 8, !tbaa !82
  br label %86

77:                                               ; preds = %1
  %78 = getelementptr inbounds i8, ptr %3, i64 256
  %79 = load i32, ptr %78, align 8, !tbaa !82
  %80 = getelementptr inbounds i8, ptr %5, i64 16
  %81 = load i32, ptr %80, align 8, !tbaa !80
  %82 = getelementptr inbounds i8, ptr %5, i64 24
  %83 = load ptr, ptr %82, align 8, !tbaa !81
  %84 = zext i32 %79 to i64
  %85 = getelementptr inbounds i8, ptr %83, i64 %84
  br label %86

86:                                               ; preds = %49, %77
  %87 = phi ptr [ %68, %49 ], [ %5, %77 ]
  %88 = phi i32 [ 0, %49 ], [ %79, %77 ]
  %89 = phi i32 [ %61, %49 ], [ %81, %77 ]
  %90 = phi ptr [ %74, %49 ], [ %85, %77 ]
  %91 = phi ptr [ %43, %49 ], [ %8, %77 ]
  %92 = phi i64 [ %42, %49 ], [ %10, %77 ]
  %93 = icmp ult i32 %88, %89
  br i1 %93, label %94, label %135

94:                                               ; preds = %86
  %95 = getelementptr inbounds i8, ptr %3, i64 256
  %96 = getelementptr inbounds i8, ptr %7, i64 24
  br label %103

97:                                               ; preds = %122, %116
  %98 = phi i32 [ %107, %116 ], [ %131, %122 ]
  %99 = phi ptr [ %106, %116 ], [ %129, %122 ]
  %100 = phi ptr [ %117, %116 ], [ %127, %122 ]
  %101 = phi i64 [ %118, %116 ], [ %130, %122 ]
  %102 = icmp ult i32 %98, %89
  br i1 %102, label %103, label %135

103:                                              ; preds = %94, %97
  %104 = phi i64 [ %92, %94 ], [ %101, %97 ]
  %105 = phi ptr [ %91, %94 ], [ %100, %97 ]
  %106 = phi ptr [ %90, %94 ], [ %99, %97 ]
  %107 = phi i32 [ %88, %94 ], [ %98, %97 ]
  store ptr %105, ptr %7, align 8, !tbaa !21
  store i64 %104, ptr %9, align 8, !tbaa !23
  store i32 %107, ptr %95, align 8, !tbaa !82
  %108 = icmp eq i64 %104, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load ptr, ptr %96, align 8, !tbaa !24
  %111 = tail call signext i32 %110(ptr noundef %0) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %247, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %7, align 8, !tbaa !21
  %115 = load i64, ptr %9, align 8, !tbaa !23
  br label %116

116:                                              ; preds = %113, %103
  %117 = phi ptr [ %114, %113 ], [ %105, %103 ]
  %118 = phi i64 [ %115, %113 ], [ %104, %103 ]
  %119 = icmp ult i32 %107, %89
  %120 = icmp ne i64 %118, 0
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %97

122:                                              ; preds = %116, %122
  %123 = phi i64 [ %130, %122 ], [ %118, %116 ]
  %124 = phi ptr [ %127, %122 ], [ %117, %116 ]
  %125 = phi ptr [ %129, %122 ], [ %106, %116 ]
  %126 = phi i32 [ %131, %122 ], [ %107, %116 ]
  %127 = getelementptr inbounds i8, ptr %124, i64 1
  %128 = load i8, ptr %124, align 1, !tbaa !18
  %129 = getelementptr inbounds i8, ptr %125, i64 1
  store i8 %128, ptr %125, align 1, !tbaa !18
  %130 = add i64 %123, -1
  %131 = add nuw i32 %126, 1
  %132 = icmp ult i32 %131, %89
  %133 = icmp ne i64 %130, 0
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %122, label %97

135:                                              ; preds = %97, %86
  %136 = phi i64 [ %92, %86 ], [ %101, %97 ]
  %137 = phi ptr [ %91, %86 ], [ %100, %97 ]
  %138 = getelementptr inbounds i8, ptr %0, i64 400
  %139 = load ptr, ptr %138, align 8, !tbaa !83
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %135, %141
  %142 = phi ptr [ %143, %141 ], [ %139, %135 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !76
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %141

145:                                              ; preds = %141, %135
  %146 = phi ptr [ %138, %135 ], [ %142, %141 ]
  store ptr %87, ptr %146, align 8, !tbaa !38
  %147 = getelementptr inbounds i8, ptr %87, i64 24
  %148 = load ptr, ptr %147, align 8, !tbaa !81
  %149 = getelementptr inbounds i8, ptr %87, i64 12
  %150 = load i32, ptr %149, align 4, !tbaa !79
  %151 = sub i32 %150, %89
  %152 = zext i32 %151 to i64
  br label %153

153:                                              ; preds = %39, %145
  %154 = phi i64 [ %136, %145 ], [ %42, %39 ]
  %155 = phi ptr [ %137, %145 ], [ %43, %39 ]
  %156 = phi i32 [ %89, %145 ], [ 0, %39 ]
  %157 = phi ptr [ %148, %145 ], [ null, %39 ]
  %158 = phi i64 [ %152, %145 ], [ %47, %39 ]
  store ptr null, ptr %4, align 8, !tbaa !44
  %159 = getelementptr inbounds i8, ptr %0, i64 540
  %160 = load i32, ptr %159, align 4, !tbaa !6
  switch i32 %160, label %230 [
    i32 224, label %161
    i32 238, label %162
  ]

161:                                              ; preds = %153
  tail call fastcc void @examine_app0(ptr noundef nonnull %0, ptr noundef %157, i32 noundef signext %156, i64 noundef %158)
  br label %241

162:                                              ; preds = %153
  %163 = icmp ugt i32 %156, 11
  br i1 %163, label %164, label %221

164:                                              ; preds = %162
  %165 = load i8, ptr %157, align 1, !tbaa !18
  %166 = icmp eq i8 %165, 65
  br i1 %166, label %167, label %221

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %157, i64 1
  %169 = load i8, ptr %168, align 1, !tbaa !18
  %170 = icmp eq i8 %169, 100
  br i1 %170, label %171, label %221

171:                                              ; preds = %167
  %172 = getelementptr inbounds i8, ptr %157, i64 2
  %173 = load i8, ptr %172, align 1, !tbaa !18
  %174 = icmp eq i8 %173, 111
  br i1 %174, label %175, label %221

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8, ptr %157, i64 3
  %177 = load i8, ptr %176, align 1, !tbaa !18
  %178 = icmp eq i8 %177, 98
  br i1 %178, label %179, label %221

179:                                              ; preds = %175
  %180 = getelementptr inbounds i8, ptr %157, i64 4
  %181 = load i8, ptr %180, align 1, !tbaa !18
  %182 = icmp eq i8 %181, 101
  br i1 %182, label %183, label %221

183:                                              ; preds = %179
  %184 = getelementptr inbounds i8, ptr %157, i64 5
  %185 = load i8, ptr %184, align 1, !tbaa !18
  %186 = zext i8 %185 to i32
  %187 = shl nuw nsw i32 %186, 8
  %188 = getelementptr inbounds i8, ptr %157, i64 6
  %189 = load i8, ptr %188, align 1, !tbaa !18
  %190 = zext i8 %189 to i32
  %191 = or disjoint i32 %187, %190
  %192 = getelementptr inbounds i8, ptr %157, i64 7
  %193 = load i8, ptr %192, align 1, !tbaa !18
  %194 = zext i8 %193 to i32
  %195 = shl nuw nsw i32 %194, 8
  %196 = getelementptr inbounds i8, ptr %157, i64 8
  %197 = load i8, ptr %196, align 1, !tbaa !18
  %198 = zext i8 %197 to i32
  %199 = or disjoint i32 %195, %198
  %200 = getelementptr inbounds i8, ptr %157, i64 9
  %201 = load i8, ptr %200, align 1, !tbaa !18
  %202 = zext i8 %201 to i32
  %203 = shl nuw nsw i32 %202, 8
  %204 = getelementptr inbounds i8, ptr %157, i64 10
  %205 = load i8, ptr %204, align 1, !tbaa !18
  %206 = zext i8 %205 to i32
  %207 = or disjoint i32 %203, %206
  %208 = getelementptr inbounds i8, ptr %157, i64 11
  %209 = load i8, ptr %208, align 1, !tbaa !18
  %210 = zext i8 %209 to i32
  %211 = load ptr, ptr %0, align 8, !tbaa !14
  %212 = getelementptr inbounds i8, ptr %211, i64 44
  store i32 %191, ptr %212, align 4, !tbaa !37
  %213 = getelementptr inbounds i8, ptr %211, i64 48
  store i32 %199, ptr %213, align 4, !tbaa !37
  %214 = getelementptr inbounds i8, ptr %211, i64 52
  store i32 %207, ptr %214, align 4, !tbaa !37
  %215 = getelementptr inbounds i8, ptr %211, i64 56
  store i32 %210, ptr %215, align 4, !tbaa !37
  %216 = getelementptr inbounds i8, ptr %211, i64 40
  store i32 76, ptr %216, align 8, !tbaa !15
  %217 = getelementptr inbounds i8, ptr %211, i64 8
  %218 = load ptr, ptr %217, align 8, !tbaa !19
  tail call void %218(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %219 = getelementptr inbounds i8, ptr %0, i64 384
  store i32 1, ptr %219, align 8, !tbaa !56
  %220 = getelementptr inbounds i8, ptr %0, i64 388
  store i8 %209, ptr %220, align 4, !tbaa !57
  br label %241

221:                                              ; preds = %179, %175, %171, %167, %164, %162
  %222 = load ptr, ptr %0, align 8, !tbaa !14
  %223 = getelementptr inbounds i8, ptr %222, i64 40
  store i32 78, ptr %223, align 8, !tbaa !15
  %224 = trunc i64 %158 to i32
  %225 = add i32 %156, %224
  %226 = getelementptr inbounds i8, ptr %222, i64 44
  store i32 %225, ptr %226, align 4, !tbaa !18
  %227 = load ptr, ptr %0, align 8, !tbaa !14
  %228 = getelementptr inbounds i8, ptr %227, i64 8
  %229 = load ptr, ptr %228, align 8, !tbaa !19
  tail call void %229(ptr noundef nonnull %0, i32 noundef signext 1) #7
  br label %241

230:                                              ; preds = %153
  %231 = load ptr, ptr %0, align 8, !tbaa !14
  %232 = getelementptr inbounds i8, ptr %231, i64 40
  store i32 91, ptr %232, align 8, !tbaa !15
  %233 = getelementptr inbounds i8, ptr %231, i64 44
  store i32 %160, ptr %233, align 4, !tbaa !18
  %234 = trunc i64 %158 to i32
  %235 = add i32 %156, %234
  %236 = load ptr, ptr %0, align 8, !tbaa !14
  %237 = getelementptr inbounds i8, ptr %236, i64 48
  store i32 %235, ptr %237, align 4, !tbaa !18
  %238 = load ptr, ptr %0, align 8, !tbaa !14
  %239 = getelementptr inbounds i8, ptr %238, i64 8
  %240 = load ptr, ptr %239, align 8, !tbaa !19
  tail call void %240(ptr noundef nonnull %0, i32 noundef signext 1) #7
  br label %241

241:                                              ; preds = %221, %183, %230, %161
  store ptr %155, ptr %7, align 8, !tbaa !21
  store i64 %154, ptr %9, align 8, !tbaa !23
  %242 = icmp sgt i64 %158, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %241
  %244 = load ptr, ptr %6, align 8, !tbaa !20
  %245 = getelementptr inbounds i8, ptr %244, i64 32
  %246 = load ptr, ptr %245, align 8, !tbaa !70
  tail call void %246(ptr noundef nonnull %0, i64 noundef %158) #7
  br label %247

247:                                              ; preds = %109, %241, %243, %31, %14
  %248 = phi i32 [ 0, %14 ], [ 0, %31 ], [ 1, %243 ], [ 1, %241 ], [ 0, %109 ]
  ret i32 %248
}

; Function Attrs: nounwind
define dso_local void @jpeg_set_marker_processor(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 584
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq i32 %1, 254
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i64 40
  store ptr %2, ptr %8, align 8, !tbaa !35
  br label %23

9:                                                ; preds = %3
  %10 = and i32 %1, -16
  %11 = icmp eq i32 %10, 224
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %5, i64 48
  %14 = add nsw i32 %1, -224
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [16 x ptr], ptr %13, i64 0, i64 %15
  store ptr %2, ptr %16, align 8, !tbaa !38
  br label %23

17:                                               ; preds = %9
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  store i32 68, ptr %19, align 8, !tbaa !15
  %20 = getelementptr inbounds i8, ptr %18, i64 44
  store i32 %1, ptr %20, align 4, !tbaa !18
  %21 = load ptr, ptr %0, align 8, !tbaa !14
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void %22(ptr noundef nonnull %0) #7
  br label %23

23:                                               ; preds = %12, %17, %7
  ret void
}

; Function Attrs: nounwind
define internal fastcc signext range(i32 0, 2) i32 @get_sof(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 40
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !23
  %9 = getelementptr inbounds i8, ptr %0, i64 312
  store i32 %1, ptr %9, align 8, !tbaa !84
  %10 = getelementptr inbounds i8, ptr %0, i64 316
  store i32 %2, ptr %10, align 4, !tbaa !85
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %5, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = tail call signext i32 %14(ptr noundef nonnull %0) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %296, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !tbaa !21
  %19 = load i64, ptr %7, align 8, !tbaa !23
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi ptr [ %18, %17 ], [ %6, %3 ]
  %22 = phi i64 [ %19, %17 ], [ %8, %3 ]
  %23 = add i64 %22, -1
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  %25 = load i8, ptr %21, align 1, !tbaa !18
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 8
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %5, i64 24
  %31 = load ptr, ptr %30, align 8, !tbaa !24
  %32 = tail call signext i32 %31(ptr noundef nonnull %0) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %296, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %5, align 8, !tbaa !21
  %36 = load i64, ptr %7, align 8, !tbaa !23
  br label %37

37:                                               ; preds = %34, %20
  %38 = phi ptr [ %35, %34 ], [ %24, %20 ]
  %39 = phi i64 [ %36, %34 ], [ %23, %20 ]
  %40 = add i64 %39, -1
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i8, ptr %38, align 1, !tbaa !18
  %43 = zext i8 %42 to i64
  %44 = or disjoint i64 %27, %43
  %45 = icmp eq i64 %40, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = getelementptr inbounds i8, ptr %5, i64 24
  %48 = load ptr, ptr %47, align 8, !tbaa !24
  %49 = tail call signext i32 %48(ptr noundef nonnull %0) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %296, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %5, align 8, !tbaa !21
  %53 = load i64, ptr %7, align 8, !tbaa !23
  br label %54

54:                                               ; preds = %51, %37
  %55 = phi ptr [ %52, %51 ], [ %41, %37 ]
  %56 = phi i64 [ %53, %51 ], [ %40, %37 ]
  %57 = add i64 %56, -1
  %58 = getelementptr inbounds i8, ptr %55, i64 1
  %59 = load i8, ptr %55, align 1, !tbaa !18
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds i8, ptr %0, i64 296
  store i32 %60, ptr %61, align 8, !tbaa !86
  %62 = icmp eq i64 %57, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = getelementptr inbounds i8, ptr %5, i64 24
  %65 = load ptr, ptr %64, align 8, !tbaa !24
  %66 = tail call signext i32 %65(ptr noundef nonnull %0) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %296, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %5, align 8, !tbaa !21
  %70 = load i64, ptr %7, align 8, !tbaa !23
  br label %71

71:                                               ; preds = %68, %54
  %72 = phi ptr [ %69, %68 ], [ %58, %54 ]
  %73 = phi i64 [ %70, %68 ], [ %57, %54 ]
  %74 = add i64 %73, -1
  %75 = getelementptr inbounds i8, ptr %72, i64 1
  %76 = load i8, ptr %72, align 1, !tbaa !18
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %78, ptr %79, align 4, !tbaa !87
  %80 = icmp eq i64 %74, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %71
  %82 = getelementptr inbounds i8, ptr %5, i64 24
  %83 = load ptr, ptr %82, align 8, !tbaa !24
  %84 = tail call signext i32 %83(ptr noundef nonnull %0) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %296, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %5, align 8, !tbaa !21
  %88 = load i64, ptr %7, align 8, !tbaa !23
  %89 = load i32, ptr %79, align 4, !tbaa !87
  br label %90

90:                                               ; preds = %86, %71
  %91 = phi i32 [ %89, %86 ], [ %78, %71 ]
  %92 = phi ptr [ %87, %86 ], [ %75, %71 ]
  %93 = phi i64 [ %88, %86 ], [ %74, %71 ]
  %94 = add i64 %93, -1
  %95 = getelementptr inbounds i8, ptr %92, i64 1
  %96 = load i8, ptr %92, align 1, !tbaa !18
  %97 = zext i8 %96 to i32
  %98 = add i32 %91, %97
  store i32 %98, ptr %79, align 4, !tbaa !87
  %99 = icmp eq i64 %94, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %90
  %101 = getelementptr inbounds i8, ptr %5, i64 24
  %102 = load ptr, ptr %101, align 8, !tbaa !24
  %103 = tail call signext i32 %102(ptr noundef nonnull %0) #7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %296, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr %5, align 8, !tbaa !21
  %107 = load i64, ptr %7, align 8, !tbaa !23
  br label %108

108:                                              ; preds = %105, %90
  %109 = phi ptr [ %106, %105 ], [ %95, %90 ]
  %110 = phi i64 [ %107, %105 ], [ %94, %90 ]
  %111 = add i64 %110, -1
  %112 = getelementptr inbounds i8, ptr %109, i64 1
  %113 = load i8, ptr %109, align 1, !tbaa !18
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %115, ptr %116, align 8, !tbaa !88
  %117 = icmp eq i64 %111, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %108
  %119 = getelementptr inbounds i8, ptr %5, i64 24
  %120 = load ptr, ptr %119, align 8, !tbaa !24
  %121 = tail call signext i32 %120(ptr noundef nonnull %0) #7
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %296, label %123

123:                                              ; preds = %118
  %124 = load ptr, ptr %5, align 8, !tbaa !21
  %125 = load i64, ptr %7, align 8, !tbaa !23
  %126 = load i32, ptr %116, align 8, !tbaa !88
  br label %127

127:                                              ; preds = %123, %108
  %128 = phi i32 [ %126, %123 ], [ %115, %108 ]
  %129 = phi ptr [ %124, %123 ], [ %112, %108 ]
  %130 = phi i64 [ %125, %123 ], [ %111, %108 ]
  %131 = add i64 %130, -1
  %132 = getelementptr inbounds i8, ptr %129, i64 1
  %133 = load i8, ptr %129, align 1, !tbaa !18
  %134 = zext i8 %133 to i32
  %135 = add i32 %128, %134
  store i32 %135, ptr %116, align 8, !tbaa !88
  %136 = icmp eq i64 %131, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %127
  %138 = getelementptr inbounds i8, ptr %5, i64 24
  %139 = load ptr, ptr %138, align 8, !tbaa !24
  %140 = tail call signext i32 %139(ptr noundef nonnull %0) #7
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %296, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %5, align 8, !tbaa !21
  %144 = load i64, ptr %7, align 8, !tbaa !23
  br label %145

145:                                              ; preds = %142, %127
  %146 = phi ptr [ %143, %142 ], [ %132, %127 ]
  %147 = phi i64 [ %144, %142 ], [ %131, %127 ]
  %148 = load i8, ptr %146, align 1, !tbaa !18
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %149, ptr %150, align 8, !tbaa !60
  %151 = add nsw i64 %44, -8
  %152 = load ptr, ptr %0, align 8, !tbaa !14
  %153 = getelementptr inbounds i8, ptr %152, i64 44
  %154 = getelementptr inbounds i8, ptr %0, i64 540
  %155 = load i32, ptr %154, align 4, !tbaa !6
  store i32 %155, ptr %153, align 4, !tbaa !37
  %156 = load i32, ptr %116, align 8, !tbaa !88
  %157 = getelementptr inbounds i8, ptr %152, i64 48
  store i32 %156, ptr %157, align 4, !tbaa !37
  %158 = load i32, ptr %79, align 4, !tbaa !87
  %159 = getelementptr inbounds i8, ptr %152, i64 52
  store i32 %158, ptr %159, align 4, !tbaa !37
  %160 = load i32, ptr %150, align 8, !tbaa !60
  %161 = getelementptr inbounds i8, ptr %152, i64 56
  store i32 %160, ptr %161, align 4, !tbaa !37
  %162 = getelementptr inbounds i8, ptr %152, i64 40
  store i32 100, ptr %162, align 8, !tbaa !15
  %163 = getelementptr inbounds i8, ptr %152, i64 8
  %164 = load ptr, ptr %163, align 8, !tbaa !19
  tail call void %164(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %165 = getelementptr inbounds i8, ptr %0, i64 584
  %166 = load ptr, ptr %165, align 8, !tbaa !25
  %167 = getelementptr inbounds i8, ptr %166, i64 28
  %168 = load i32, ptr %167, align 4, !tbaa !58
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %145
  %171 = load ptr, ptr %0, align 8, !tbaa !14
  %172 = getelementptr inbounds i8, ptr %171, i64 40
  store i32 58, ptr %172, align 8, !tbaa !15
  %173 = load ptr, ptr %171, align 8, !tbaa !46
  tail call void %173(ptr noundef nonnull %0) #7
  br label %174

174:                                              ; preds = %170, %145
  %175 = load i32, ptr %79, align 4, !tbaa !87
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = load i32, ptr %116, align 8, !tbaa !88
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %150, align 8, !tbaa !60
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %188

183:                                              ; preds = %180, %177, %174
  %184 = load ptr, ptr %0, align 8, !tbaa !14
  %185 = getelementptr inbounds i8, ptr %184, i64 40
  store i32 32, ptr %185, align 8, !tbaa !15
  %186 = load ptr, ptr %184, align 8, !tbaa !46
  tail call void %186(ptr noundef nonnull %0) #7
  %187 = load i32, ptr %150, align 8, !tbaa !60
  br label %188

188:                                              ; preds = %183, %180
  %189 = phi i32 [ %187, %183 ], [ %181, %180 ]
  %190 = mul nsw i32 %189, 3
  %191 = sext i32 %190 to i64
  %192 = icmp eq i64 %151, %191
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load ptr, ptr %0, align 8, !tbaa !14
  %195 = getelementptr inbounds i8, ptr %194, i64 40
  store i32 11, ptr %195, align 8, !tbaa !15
  %196 = load ptr, ptr %194, align 8, !tbaa !46
  tail call void %196(ptr noundef nonnull %0) #7
  %197 = load i32, ptr %150, align 8, !tbaa !60
  br label %198

198:                                              ; preds = %193, %188
  %199 = phi i32 [ %197, %193 ], [ %189, %188 ]
  %200 = getelementptr inbounds i8, ptr %0, i64 304
  %201 = load ptr, ptr %200, align 8, !tbaa !39
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = getelementptr inbounds i8, ptr %0, i64 8
  %205 = load ptr, ptr %204, align 8, !tbaa !28
  %206 = load ptr, ptr %205, align 8, !tbaa !29
  %207 = sext i32 %199 to i64
  %208 = mul nsw i64 %207, 96
  %209 = tail call ptr %206(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %208) #7
  store ptr %209, ptr %200, align 8, !tbaa !39
  %210 = load i32, ptr %150, align 8, !tbaa !60
  br label %211

211:                                              ; preds = %203, %198
  %212 = phi ptr [ %209, %203 ], [ %201, %198 ]
  %213 = phi i32 [ %210, %203 ], [ %199, %198 ]
  %214 = getelementptr inbounds i8, ptr %146, i64 1
  %215 = add i64 %147, -1
  %216 = icmp sgt i32 %213, 0
  br i1 %216, label %217, label %291

217:                                              ; preds = %211
  %218 = getelementptr inbounds i8, ptr %5, i64 24
  br label %219

219:                                              ; preds = %217, %267
  %220 = phi i64 [ %215, %217 ], [ %288, %267 ]
  %221 = phi ptr [ %214, %217 ], [ %287, %267 ]
  %222 = phi i32 [ 0, %217 ], [ %285, %267 ]
  %223 = phi ptr [ %212, %217 ], [ %286, %267 ]
  %224 = getelementptr inbounds i8, ptr %223, i64 4
  store i32 %222, ptr %224, align 4, !tbaa !89
  %225 = icmp eq i64 %220, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %219
  %227 = load ptr, ptr %218, align 8, !tbaa !24
  %228 = tail call signext i32 %227(ptr noundef nonnull %0) #7
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %296, label %230

230:                                              ; preds = %226
  %231 = load ptr, ptr %5, align 8, !tbaa !21
  %232 = load i64, ptr %7, align 8, !tbaa !23
  br label %233

233:                                              ; preds = %230, %219
  %234 = phi ptr [ %231, %230 ], [ %221, %219 ]
  %235 = phi i64 [ %232, %230 ], [ %220, %219 ]
  %236 = add i64 %235, -1
  %237 = getelementptr inbounds i8, ptr %234, i64 1
  %238 = load i8, ptr %234, align 1, !tbaa !18
  %239 = zext i8 %238 to i32
  store i32 %239, ptr %223, align 8, !tbaa !61
  %240 = icmp eq i64 %236, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %233
  %242 = load ptr, ptr %218, align 8, !tbaa !24
  %243 = tail call signext i32 %242(ptr noundef nonnull %0) #7
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %296, label %245

245:                                              ; preds = %241
  %246 = load ptr, ptr %5, align 8, !tbaa !21
  %247 = load i64, ptr %7, align 8, !tbaa !23
  br label %248

248:                                              ; preds = %245, %233
  %249 = phi ptr [ %246, %245 ], [ %237, %233 ]
  %250 = phi i64 [ %247, %245 ], [ %236, %233 ]
  %251 = add i64 %250, -1
  %252 = getelementptr inbounds i8, ptr %249, i64 1
  %253 = load i8, ptr %249, align 1, !tbaa !18
  %254 = zext i8 %253 to i32
  %255 = lshr i32 %254, 4
  %256 = getelementptr inbounds i8, ptr %223, i64 8
  store i32 %255, ptr %256, align 8, !tbaa !90
  %257 = and i32 %254, 15
  %258 = getelementptr inbounds i8, ptr %223, i64 12
  store i32 %257, ptr %258, align 4, !tbaa !91
  %259 = icmp eq i64 %251, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %248
  %261 = load ptr, ptr %218, align 8, !tbaa !24
  %262 = tail call signext i32 %261(ptr noundef nonnull %0) #7
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %296, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr %5, align 8, !tbaa !21
  %266 = load i64, ptr %7, align 8, !tbaa !23
  br label %267

267:                                              ; preds = %264, %248
  %268 = phi ptr [ %265, %264 ], [ %252, %248 ]
  %269 = phi i64 [ %266, %264 ], [ %251, %248 ]
  %270 = load i8, ptr %268, align 1, !tbaa !18
  %271 = zext i8 %270 to i32
  %272 = getelementptr inbounds i8, ptr %223, i64 16
  store i32 %271, ptr %272, align 8, !tbaa !92
  %273 = load ptr, ptr %0, align 8, !tbaa !14
  %274 = getelementptr inbounds i8, ptr %273, i64 44
  %275 = load i32, ptr %223, align 8, !tbaa !61
  store i32 %275, ptr %274, align 4, !tbaa !37
  %276 = load i32, ptr %256, align 8, !tbaa !90
  %277 = getelementptr inbounds i8, ptr %273, i64 48
  store i32 %276, ptr %277, align 4, !tbaa !37
  %278 = load i32, ptr %258, align 4, !tbaa !91
  %279 = getelementptr inbounds i8, ptr %273, i64 52
  store i32 %278, ptr %279, align 4, !tbaa !37
  %280 = load i32, ptr %272, align 8, !tbaa !92
  %281 = getelementptr inbounds i8, ptr %273, i64 56
  store i32 %280, ptr %281, align 4, !tbaa !37
  %282 = getelementptr inbounds i8, ptr %273, i64 40
  store i32 101, ptr %282, align 8, !tbaa !15
  %283 = getelementptr inbounds i8, ptr %273, i64 8
  %284 = load ptr, ptr %283, align 8, !tbaa !19
  tail call void %284(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %285 = add nuw nsw i32 %222, 1
  %286 = getelementptr inbounds i8, ptr %223, i64 96
  %287 = getelementptr inbounds i8, ptr %268, i64 1
  %288 = add i64 %269, -1
  %289 = load i32, ptr %150, align 8, !tbaa !60
  %290 = icmp slt i32 %285, %289
  br i1 %290, label %219, label %291

291:                                              ; preds = %267, %211
  %292 = phi ptr [ %214, %211 ], [ %287, %267 ]
  %293 = phi i64 [ %215, %211 ], [ %288, %267 ]
  %294 = load ptr, ptr %165, align 8, !tbaa !25
  %295 = getelementptr inbounds i8, ptr %294, i64 28
  store i32 1, ptr %295, align 4, !tbaa !58
  store ptr %292, ptr %5, align 8, !tbaa !21
  store i64 %293, ptr %7, align 8, !tbaa !23
  br label %296

296:                                              ; preds = %260, %241, %226, %137, %118, %100, %81, %63, %46, %29, %12, %291
  %297 = phi i32 [ 1, %291 ], [ 0, %12 ], [ 0, %29 ], [ 0, %46 ], [ 0, %63 ], [ 0, %81 ], [ 0, %100 ], [ 0, %118 ], [ 0, %137 ], [ 0, %226 ], [ 0, %241 ], [ 0, %260 ]
  ret i32 %297
}

declare dso_local ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define internal fastcc void @examine_app0(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i64 noundef %3) unnamed_addr #0 {
  %5 = zext i32 %2 to i64
  %6 = add nsw i64 %5, %3
  %7 = icmp ugt i32 %2, 13
  br i1 %7, label %8, label %129

8:                                                ; preds = %4
  %9 = load i8, ptr %1, align 1, !tbaa !18
  %10 = icmp eq i8 %9, 74
  br i1 %10, label %11, label %171

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !18
  %14 = icmp eq i8 %13, 70
  br i1 %14, label %15, label %134

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !18
  %18 = icmp eq i8 %17, 73
  br i1 %18, label %19, label %134

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %1, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !18
  %22 = icmp eq i8 %21, 70
  br i1 %22, label %23, label %134

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %1, i64 4
  %25 = load i8, ptr %24, align 1, !tbaa !18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %134

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %0, i64 372
  store i32 1, ptr %28, align 4, !tbaa !50
  %29 = getelementptr inbounds i8, ptr %1, i64 5
  %30 = load i8, ptr %29, align 1, !tbaa !18
  %31 = getelementptr inbounds i8, ptr %0, i64 376
  store i8 %30, ptr %31, align 8, !tbaa !51
  %32 = getelementptr inbounds i8, ptr %1, i64 6
  %33 = load i8, ptr %32, align 1, !tbaa !18
  %34 = getelementptr inbounds i8, ptr %0, i64 377
  store i8 %33, ptr %34, align 1, !tbaa !52
  %35 = getelementptr inbounds i8, ptr %1, i64 7
  %36 = load i8, ptr %35, align 1, !tbaa !18
  %37 = getelementptr inbounds i8, ptr %0, i64 378
  store i8 %36, ptr %37, align 2, !tbaa !53
  %38 = getelementptr inbounds i8, ptr %1, i64 8
  %39 = load i8, ptr %38, align 1, !tbaa !18
  %40 = zext i8 %39 to i16
  %41 = shl nuw i16 %40, 8
  %42 = getelementptr inbounds i8, ptr %1, i64 9
  %43 = load i8, ptr %42, align 1, !tbaa !18
  %44 = zext i8 %43 to i16
  %45 = or disjoint i16 %41, %44
  %46 = getelementptr inbounds i8, ptr %0, i64 380
  store i16 %45, ptr %46, align 4, !tbaa !54
  %47 = getelementptr inbounds i8, ptr %1, i64 10
  %48 = load i8, ptr %47, align 1, !tbaa !18
  %49 = zext i8 %48 to i16
  %50 = shl nuw i16 %49, 8
  %51 = getelementptr inbounds i8, ptr %1, i64 11
  %52 = load i8, ptr %51, align 1, !tbaa !18
  %53 = zext i8 %52 to i16
  %54 = or disjoint i16 %50, %53
  %55 = getelementptr inbounds i8, ptr %0, i64 382
  store i16 %54, ptr %55, align 2, !tbaa !55
  %56 = icmp eq i8 %30, 1
  br i1 %56, label %75, label %57

57:                                               ; preds = %27
  %58 = load ptr, ptr %0, align 8, !tbaa !14
  %59 = getelementptr inbounds i8, ptr %58, i64 40
  store i32 119, ptr %59, align 8, !tbaa !15
  %60 = zext i8 %30 to i32
  %61 = getelementptr inbounds i8, ptr %58, i64 44
  store i32 %60, ptr %61, align 4, !tbaa !18
  %62 = load i8, ptr %34, align 1, !tbaa !52
  %63 = zext i8 %62 to i32
  %64 = load ptr, ptr %0, align 8, !tbaa !14
  %65 = getelementptr inbounds i8, ptr %64, i64 48
  store i32 %63, ptr %65, align 4, !tbaa !18
  %66 = load ptr, ptr %0, align 8, !tbaa !14
  %67 = getelementptr inbounds i8, ptr %66, i64 8
  %68 = load ptr, ptr %67, align 8, !tbaa !19
  tail call void %68(ptr noundef nonnull %0, i32 noundef signext -1) #7
  %69 = load i8, ptr %31, align 8, !tbaa !51
  %70 = load i8, ptr %34, align 1, !tbaa !52
  %71 = load i16, ptr %46, align 4, !tbaa !54
  %72 = load i16, ptr %55, align 2, !tbaa !55
  %73 = load i8, ptr %37, align 2, !tbaa !53
  %74 = zext i8 %69 to i32
  br label %75

75:                                               ; preds = %27, %57
  %76 = phi i8 [ %36, %27 ], [ %73, %57 ]
  %77 = phi i16 [ %54, %27 ], [ %72, %57 ]
  %78 = phi i16 [ %45, %27 ], [ %71, %57 ]
  %79 = phi i8 [ %33, %27 ], [ %70, %57 ]
  %80 = phi i32 [ 1, %27 ], [ %74, %57 ]
  %81 = load ptr, ptr %0, align 8, !tbaa !14
  %82 = getelementptr inbounds i8, ptr %81, i64 44
  store i32 %80, ptr %82, align 4, !tbaa !37
  %83 = zext i8 %79 to i32
  %84 = getelementptr inbounds i8, ptr %81, i64 48
  store i32 %83, ptr %84, align 4, !tbaa !37
  %85 = zext i16 %78 to i32
  %86 = getelementptr inbounds i8, ptr %81, i64 52
  store i32 %85, ptr %86, align 4, !tbaa !37
  %87 = zext i16 %77 to i32
  %88 = getelementptr inbounds i8, ptr %81, i64 56
  store i32 %87, ptr %88, align 4, !tbaa !37
  %89 = zext i8 %76 to i32
  %90 = getelementptr inbounds i8, ptr %81, i64 60
  store i32 %89, ptr %90, align 4, !tbaa !37
  %91 = getelementptr inbounds i8, ptr %81, i64 40
  store i32 87, ptr %91, align 8, !tbaa !15
  %92 = getelementptr inbounds i8, ptr %81, i64 8
  %93 = load ptr, ptr %92, align 8, !tbaa !19
  tail call void %93(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %94 = getelementptr inbounds i8, ptr %1, i64 12
  %95 = load i8, ptr %94, align 1, !tbaa !18
  %96 = getelementptr inbounds i8, ptr %1, i64 13
  %97 = load i8, ptr %96, align 1, !tbaa !18
  %98 = or i8 %97, %95
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %75
  %101 = load ptr, ptr %0, align 8, !tbaa !14
  %102 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 90, ptr %102, align 8, !tbaa !15
  %103 = load i8, ptr %94, align 1, !tbaa !18
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %101, i64 44
  store i32 %104, ptr %105, align 4, !tbaa !18
  %106 = load i8, ptr %96, align 1, !tbaa !18
  %107 = zext i8 %106 to i32
  %108 = load ptr, ptr %0, align 8, !tbaa !14
  %109 = getelementptr inbounds i8, ptr %108, i64 48
  store i32 %107, ptr %109, align 4, !tbaa !18
  %110 = load ptr, ptr %0, align 8, !tbaa !14
  %111 = getelementptr inbounds i8, ptr %110, i64 8
  %112 = load ptr, ptr %111, align 8, !tbaa !19
  tail call void %112(ptr noundef nonnull %0, i32 noundef signext 1) #7
  %113 = load i8, ptr %94, align 1, !tbaa !18
  %114 = load i8, ptr %96, align 1, !tbaa !18
  br label %115

115:                                              ; preds = %100, %75
  %116 = phi i8 [ %114, %100 ], [ %97, %75 ]
  %117 = phi i8 [ %113, %100 ], [ %95, %75 ]
  %118 = add nsw i64 %6, -14
  %119 = zext i8 %117 to i64
  %120 = zext i8 %116 to i64
  %121 = mul nuw nsw i64 %119, 3
  %122 = mul nuw nsw i64 %121, %120
  %123 = icmp eq i64 %118, %122
  br i1 %123, label %180, label %124

124:                                              ; preds = %115
  %125 = load ptr, ptr %0, align 8, !tbaa !14
  %126 = getelementptr inbounds i8, ptr %125, i64 40
  store i32 88, ptr %126, align 8, !tbaa !15
  %127 = trunc i64 %118 to i32
  %128 = getelementptr inbounds i8, ptr %125, i64 44
  store i32 %127, ptr %128, align 4, !tbaa !18
  br label %176

129:                                              ; preds = %4
  %130 = icmp ugt i32 %2, 5
  br i1 %130, label %131, label %171

131:                                              ; preds = %129
  %132 = load i8, ptr %1, align 1, !tbaa !18
  %133 = icmp eq i8 %132, 74
  br i1 %133, label %134, label %171

134:                                              ; preds = %23, %19, %15, %11, %131
  %135 = getelementptr inbounds i8, ptr %1, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !18
  %137 = icmp eq i8 %136, 70
  br i1 %137, label %138, label %171

138:                                              ; preds = %134
  %139 = getelementptr inbounds i8, ptr %1, i64 2
  %140 = load i8, ptr %139, align 1, !tbaa !18
  %141 = icmp eq i8 %140, 88
  br i1 %141, label %142, label %171

142:                                              ; preds = %138
  %143 = getelementptr inbounds i8, ptr %1, i64 3
  %144 = load i8, ptr %143, align 1, !tbaa !18
  %145 = icmp eq i8 %144, 88
  br i1 %145, label %146, label %171

146:                                              ; preds = %142
  %147 = getelementptr inbounds i8, ptr %1, i64 4
  %148 = load i8, ptr %147, align 1, !tbaa !18
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %146
  %151 = getelementptr inbounds i8, ptr %1, i64 5
  %152 = load i8, ptr %151, align 1, !tbaa !18
  %153 = load ptr, ptr %0, align 8, !tbaa !14
  %154 = getelementptr inbounds i8, ptr %153, i64 40
  switch i8 %152, label %164 [
    i8 16, label %155
    i8 17, label %158
    i8 19, label %161
  ]

155:                                              ; preds = %150
  store i32 108, ptr %154, align 8, !tbaa !15
  %156 = trunc i64 %6 to i32
  %157 = getelementptr inbounds i8, ptr %153, i64 44
  store i32 %156, ptr %157, align 4, !tbaa !18
  br label %176

158:                                              ; preds = %150
  store i32 109, ptr %154, align 8, !tbaa !15
  %159 = trunc i64 %6 to i32
  %160 = getelementptr inbounds i8, ptr %153, i64 44
  store i32 %159, ptr %160, align 4, !tbaa !18
  br label %176

161:                                              ; preds = %150
  store i32 110, ptr %154, align 8, !tbaa !15
  %162 = trunc i64 %6 to i32
  %163 = getelementptr inbounds i8, ptr %153, i64 44
  store i32 %162, ptr %163, align 4, !tbaa !18
  br label %176

164:                                              ; preds = %150
  store i32 89, ptr %154, align 8, !tbaa !15
  %165 = load i8, ptr %151, align 1, !tbaa !18
  %166 = zext i8 %165 to i32
  %167 = getelementptr inbounds i8, ptr %153, i64 44
  store i32 %166, ptr %167, align 4, !tbaa !18
  %168 = trunc i64 %6 to i32
  %169 = load ptr, ptr %0, align 8, !tbaa !14
  %170 = getelementptr inbounds i8, ptr %169, i64 48
  store i32 %168, ptr %170, align 4, !tbaa !18
  br label %176

171:                                              ; preds = %8, %146, %142, %138, %134, %131, %129
  %172 = load ptr, ptr %0, align 8, !tbaa !14
  %173 = getelementptr inbounds i8, ptr %172, i64 40
  store i32 77, ptr %173, align 8, !tbaa !15
  %174 = trunc i64 %6 to i32
  %175 = getelementptr inbounds i8, ptr %172, i64 44
  store i32 %174, ptr %175, align 4, !tbaa !18
  br label %176

176:                                              ; preds = %124, %155, %158, %161, %164, %171
  %177 = load ptr, ptr %0, align 8, !tbaa !14
  %178 = getelementptr inbounds i8, ptr %177, i64 8
  %179 = load ptr, ptr %178, align 8, !tbaa !19
  tail call void %179(ptr noundef nonnull %0, i32 noundef signext 1) #7
  br label %180

180:                                              ; preds = %176, %115
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !11, i64 540}
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
!19 = !{!16, !8, i64 8}
!20 = !{!7, !8, i64 40}
!21 = !{!22, !8, i64 0}
!22 = !{!"jpeg_source_mgr", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!23 = !{!22, !17, i64 8}
!24 = !{!22, !8, i64 24}
!25 = !{!7, !8, i64 584}
!26 = !{!27, !11, i64 36}
!27 = !{!"jpeg_marker_reader", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!28 = !{!7, !8, i64 8}
!29 = !{!30, !8, i64 0}
!30 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !17, i64 88, !17, i64 96}
!31 = !{!32, !8, i64 0}
!32 = !{!"", !27, i64 0, !8, i64 40, !9, i64 48, !11, i64 176, !9, i64 180, !8, i64 248, !11, i64 256}
!33 = !{!32, !8, i64 8}
!34 = !{!32, !8, i64 16}
!35 = !{!32, !8, i64 40}
!36 = !{!32, !11, i64 176}
!37 = !{!11, !11, i64 0}
!38 = !{!8, !8, i64 0}
!39 = !{!7, !8, i64 304}
!40 = !{!7, !11, i64 172}
!41 = !{!32, !11, i64 24}
!42 = !{!32, !11, i64 28}
!43 = !{!32, !11, i64 36}
!44 = !{!32, !8, i64 248}
!45 = !{!27, !11, i64 24}
!46 = !{!16, !8, i64 0}
!47 = !{!7, !11, i64 368}
!48 = !{!7, !11, i64 60}
!49 = !{!7, !11, i64 392}
!50 = !{!7, !11, i64 372}
!51 = !{!7, !9, i64 376}
!52 = !{!7, !9, i64 377}
!53 = !{!7, !9, i64 378}
!54 = !{!7, !13, i64 380}
!55 = !{!7, !13, i64 382}
!56 = !{!7, !11, i64 384}
!57 = !{!7, !9, i64 388}
!58 = !{!27, !11, i64 28}
!59 = !{!7, !11, i64 432}
!60 = !{!7, !11, i64 56}
!61 = !{!62, !11, i64 0}
!62 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!63 = !{!62, !11, i64 20}
!64 = !{!62, !11, i64 24}
!65 = !{!7, !11, i64 524}
!66 = !{!7, !11, i64 528}
!67 = !{!7, !11, i64 532}
!68 = !{!7, !11, i64 536}
!69 = !{!27, !11, i64 32}
!70 = !{!22, !8, i64 32}
!71 = !{!13, !13, i64 0}
!72 = !{!16, !11, i64 124}
!73 = !{!22, !8, i64 40}
!74 = !{!30, !17, i64 96}
!75 = !{!30, !8, i64 8}
!76 = !{!77, !8, i64 0}
!77 = !{!"jpeg_marker_struct", !8, i64 0, !9, i64 8, !11, i64 12, !11, i64 16, !8, i64 24}
!78 = !{!77, !9, i64 8}
!79 = !{!77, !11, i64 12}
!80 = !{!77, !11, i64 16}
!81 = !{!77, !8, i64 24}
!82 = !{!32, !11, i64 256}
!83 = !{!7, !8, i64 400}
!84 = !{!7, !11, i64 312}
!85 = !{!7, !11, i64 316}
!86 = !{!7, !11, i64 296}
!87 = !{!7, !11, i64 52}
!88 = !{!7, !11, i64 48}
!89 = !{!62, !11, i64 4}
!90 = !{!62, !11, i64 8}
!91 = !{!62, !11, i64 12}
!92 = !{!62, !11, i64 16}
