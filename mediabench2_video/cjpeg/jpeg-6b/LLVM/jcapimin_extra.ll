; ModuleID = 'jcapimin.c'
source_filename = "jcapimin.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @jpeg_CreateCompress(ptr noundef %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #0 {
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
  tail call void %13(ptr noundef nonnull %0) #4
  br label %14

14:                                               ; preds = %6, %3
  %15 = icmp eq i64 %2, 520
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !14
  %18 = getelementptr inbounds i8, ptr %17, i64 40
  store i32 21, ptr %18, align 8, !tbaa !15
  %19 = getelementptr inbounds i8, ptr %17, i64 44
  store i32 520, ptr %19, align 4, !tbaa !18
  %20 = trunc i64 %2 to i32
  %21 = load ptr, ptr %0, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, ptr %21, i64 48
  store i32 %20, ptr %22, align 4, !tbaa !18
  %23 = load ptr, ptr %0, align 8, !tbaa !14
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  tail call void %24(ptr noundef nonnull %0) #4
  br label %25

25:                                               ; preds = %16, %14
  %26 = load ptr, ptr %0, align 8, !tbaa !14
  %27 = getelementptr inbounds i8, ptr %0, i64 24
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(520) %29, i8 0, i64 512, i1 false)
  store ptr %26, ptr %0, align 8, !tbaa !14
  store ptr %28, ptr %27, align 8, !tbaa !20
  tail call void @jinit_memory_mgr(ptr noundef nonnull %0) #4
  %30 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %30, align 8, !tbaa !21
  %31 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr null, ptr %31, align 8, !tbaa !22
  %32 = getelementptr inbounds i8, ptr %0, i64 88
  %33 = getelementptr inbounds i8, ptr %0, i64 504
  store ptr null, ptr %33, align 8, !tbaa !23
  %34 = getelementptr inbounds i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %32, i8 0, i64 104, i1 false)
  store double 1.000000e+00, ptr %34, align 8, !tbaa !24
  %35 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 100, ptr %35, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @jinit_memory_mgr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @jpeg_destroy_compress(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @jpeg_destroy(ptr noundef %0) #4
  ret void
}

declare dso_local void @jpeg_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @jpeg_abort_compress(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @jpeg_abort(ptr noundef %0) #4
  ret void
}

declare dso_local void @jpeg_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local void @jpeg_suppress_tables(ptr nocapture noundef readonly %0, i32 noundef signext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %0, i64 96
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %4, i64 128
  store i32 %1, ptr %7, align 4, !tbaa !27
  br label %8

8:                                                ; preds = %2, %6
  %9 = getelementptr inbounds i8, ptr %0, i64 104
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %10, i64 128
  store i32 %1, ptr %13, align 4, !tbaa !27
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds i8, ptr %0, i64 112
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %16, i64 128
  store i32 %1, ptr %19, align 4, !tbaa !27
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds i8, ptr %0, i64 120
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %22, i64 128
  store i32 %1, ptr %25, align 4, !tbaa !27
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds i8, ptr %0, i64 128
  %28 = getelementptr inbounds i8, ptr %0, i64 160
  %29 = load ptr, ptr %27, align 8, !tbaa !26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %29, i64 276
  store i32 %1, ptr %32, align 4, !tbaa !29
  br label %33

33:                                               ; preds = %31, %26
  %34 = load ptr, ptr %28, align 8, !tbaa !26
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %34, i64 276
  store i32 %1, ptr %37, align 4, !tbaa !29
  br label %38

38:                                               ; preds = %33, %36
  %39 = getelementptr inbounds i8, ptr %0, i64 136
  %40 = load ptr, ptr %39, align 8, !tbaa !26
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %40, i64 276
  store i32 %1, ptr %43, align 4, !tbaa !29
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds i8, ptr %0, i64 168
  %46 = load ptr, ptr %45, align 8, !tbaa !26
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %46, i64 276
  store i32 %1, ptr %49, align 4, !tbaa !29
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds i8, ptr %0, i64 144
  %52 = load ptr, ptr %51, align 8, !tbaa !26
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %52, i64 276
  store i32 %1, ptr %55, align 4, !tbaa !29
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds i8, ptr %0, i64 176
  %58 = load ptr, ptr %57, align 8, !tbaa !26
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %58, i64 276
  store i32 %1, ptr %61, align 4, !tbaa !29
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds i8, ptr %0, i64 152
  %64 = load ptr, ptr %63, align 8, !tbaa !26
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %64, i64 276
  store i32 %1, ptr %67, align 4, !tbaa !29
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds i8, ptr %0, i64 184
  %70 = load ptr, ptr %69, align 8, !tbaa !26
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %70, i64 276
  store i32 %1, ptr %73, align 4, !tbaa !29
  br label %74

74:                                               ; preds = %72, %68
  ret void
}

; Function Attrs: nounwind
define dso_local void @jpeg_finish_compress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !25
  switch i32 %3, label %18 [
    i32 101, label %4
    i32 102, label %4
    i32 103, label %26
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds i8, ptr %0, i64 304
  %6 = load i32, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds i8, ptr %0, i64 52
  %8 = load i32, ptr %7, align 4, !tbaa !32
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = getelementptr inbounds i8, ptr %11, i64 40
  store i32 67, ptr %12, align 8, !tbaa !15
  %13 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %13(ptr noundef nonnull %0) #4
  br label %14

14:                                               ; preds = %10, %4
  %15 = getelementptr inbounds i8, ptr %0, i64 432
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = getelementptr inbounds i8, ptr %16, i64 16
  br label %23

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 8, !tbaa !14
  %20 = getelementptr inbounds i8, ptr %19, i64 40
  store i32 20, ptr %20, align 8, !tbaa !15
  %21 = getelementptr inbounds i8, ptr %19, i64 44
  store i32 %3, ptr %21, align 4, !tbaa !18
  %22 = load ptr, ptr %0, align 8, !tbaa !14
  br label %23

23:                                               ; preds = %14, %18
  %24 = phi ptr [ %22, %18 ], [ %17, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  tail call void %25(ptr noundef nonnull %0) #4
  br label %26

26:                                               ; preds = %23, %1
  %27 = getelementptr inbounds i8, ptr %0, i64 432
  %28 = load ptr, ptr %27, align 8, !tbaa !33
  %29 = getelementptr inbounds i8, ptr %28, i64 28
  %30 = load i32, ptr %29, align 4, !tbaa !34
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, ptr %0, i64 320
  %34 = getelementptr inbounds i8, ptr %0, i64 16
  %35 = getelementptr inbounds i8, ptr %0, i64 456
  br label %36

36:                                               ; preds = %32, %66
  %37 = phi ptr [ %28, %32 ], [ %70, %66 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !36
  tail call void %38(ptr noundef nonnull %0) #4
  %39 = load i32, ptr %33, align 8, !tbaa !37
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %36, %61
  %42 = phi i64 [ %62, %61 ], [ 0, %36 ]
  %43 = phi i32 [ %63, %61 ], [ %39, %36 ]
  %44 = load ptr, ptr %34, align 8, !tbaa !21
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, ptr %44, i64 8
  store i64 %42, ptr %47, align 8, !tbaa !38
  %48 = zext i32 %43 to i64
  %49 = getelementptr inbounds i8, ptr %44, i64 16
  store i64 %48, ptr %49, align 8, !tbaa !40
  %50 = load ptr, ptr %44, align 8, !tbaa !41
  tail call void %50(ptr noundef nonnull %0) #4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load ptr, ptr %35, align 8, !tbaa !42
  %53 = getelementptr inbounds i8, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = tail call signext i32 %54(ptr noundef nonnull %0, ptr noundef null) #4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load ptr, ptr %0, align 8, !tbaa !14
  %59 = getelementptr inbounds i8, ptr %58, i64 40
  store i32 24, ptr %59, align 8, !tbaa !15
  %60 = load ptr, ptr %58, align 8, !tbaa !19
  tail call void %60(ptr noundef nonnull %0) #4
  br label %61

61:                                               ; preds = %51, %57
  %62 = add nuw nsw i64 %42, 1
  %63 = load i32, ptr %33, align 8, !tbaa !37
  %64 = zext i32 %63 to i64
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %41, label %66, !llvm.loop !45

66:                                               ; preds = %61, %36
  %67 = load ptr, ptr %27, align 8, !tbaa !33
  %68 = getelementptr inbounds i8, ptr %67, i64 16
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  tail call void %69(ptr noundef nonnull %0) #4
  %70 = load ptr, ptr %27, align 8, !tbaa !33
  %71 = getelementptr inbounds i8, ptr %70, i64 28
  %72 = load i32, ptr %71, align 4, !tbaa !34
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %36, label %74, !llvm.loop !48

74:                                               ; preds = %66, %26
  %75 = getelementptr inbounds i8, ptr %0, i64 464
  %76 = load ptr, ptr %75, align 8, !tbaa !49
  %77 = getelementptr inbounds i8, ptr %76, i64 24
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  tail call void %78(ptr noundef nonnull %0) #4
  %79 = getelementptr inbounds i8, ptr %0, i64 40
  %80 = load ptr, ptr %79, align 8, !tbaa !22
  %81 = getelementptr inbounds i8, ptr %80, i64 32
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  tail call void %82(ptr noundef nonnull %0) #4
  tail call void @jpeg_abort(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: nounwind
define dso_local void @jpeg_write_marker(ptr noundef %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 304
  %6 = load i32, ptr %5, align 8, !tbaa !31
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds i8, ptr %0, i64 36
  %9 = load i32, ptr %8, align 4, !tbaa !25
  %10 = add i32 %9, -101
  %11 = icmp ult i32 %10, 3
  %12 = select i1 %7, i1 %11, i1 false
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %0, align 8, !tbaa !14
  %15 = getelementptr inbounds i8, ptr %14, i64 40
  store i32 20, ptr %15, align 8, !tbaa !15
  %16 = getelementptr inbounds i8, ptr %14, i64 44
  store i32 %9, ptr %16, align 4, !tbaa !18
  %17 = load ptr, ptr %0, align 8, !tbaa !14
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  tail call void %18(ptr noundef nonnull %0) #4
  br label %19

19:                                               ; preds = %4, %13
  %20 = getelementptr inbounds i8, ptr %0, i64 464
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = getelementptr inbounds i8, ptr %21, i64 40
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  tail call void %23(ptr noundef nonnull %0, i32 noundef signext %1, i32 noundef signext %3) #4
  %24 = load ptr, ptr %20, align 8, !tbaa !49
  %25 = getelementptr inbounds i8, ptr %24, i64 48
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = icmp eq i32 %3, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %19, %28
  %29 = phi ptr [ %34, %28 ], [ %2, %19 ]
  %30 = phi i32 [ %31, %28 ], [ %3, %19 ]
  %31 = add i32 %30, -1
  %32 = load i8, ptr %29, align 1, !tbaa !18
  %33 = zext i8 %32 to i32
  tail call void %26(ptr noundef %0, i32 noundef signext %33) #4
  %34 = getelementptr inbounds i8, ptr %29, i64 1
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %36, label %28, !llvm.loop !56

36:                                               ; preds = %28, %19
  ret void
}

; Function Attrs: nounwind
define dso_local void @jpeg_write_m_header(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 304
  %5 = load i32, ptr %4, align 8, !tbaa !31
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds i8, ptr %0, i64 36
  %8 = load i32, ptr %7, align 4, !tbaa !25
  %9 = add i32 %8, -101
  %10 = icmp ult i32 %9, 3
  %11 = select i1 %6, i1 %10, i1 false
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8, !tbaa !14
  %14 = getelementptr inbounds i8, ptr %13, i64 40
  store i32 20, ptr %14, align 8, !tbaa !15
  %15 = getelementptr inbounds i8, ptr %13, i64 44
  store i32 %8, ptr %15, align 4, !tbaa !18
  %16 = load ptr, ptr %0, align 8, !tbaa !14
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  tail call void %17(ptr noundef nonnull %0) #4
  br label %18

18:                                               ; preds = %3, %12
  %19 = getelementptr inbounds i8, ptr %0, i64 464
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds i8, ptr %20, i64 40
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  tail call void %22(ptr noundef nonnull %0, i32 noundef signext %1, i32 noundef signext %2) #4
  ret void
}

; Function Attrs: nounwind
define dso_local void @jpeg_write_m_byte(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 464
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds i8, ptr %4, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  tail call void %6(ptr noundef %0, i32 noundef signext %1) #4
  ret void
}

; Function Attrs: nounwind
define dso_local void @jpeg_write_tables(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !25
  %4 = icmp eq i32 %3, 100
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !14
  %7 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 20, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds i8, ptr %6, i64 44
  store i32 %3, ptr %8, align 4, !tbaa !18
  %9 = load ptr, ptr %0, align 8, !tbaa !14
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  tail call void %10(ptr noundef nonnull %0) #4
  br label %11

11:                                               ; preds = %5, %1
  %12 = load ptr, ptr %0, align 8, !tbaa !14
  %13 = getelementptr inbounds i8, ptr %12, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  tail call void %14(ptr noundef nonnull %0) #4
  %15 = getelementptr inbounds i8, ptr %0, i64 40
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds i8, ptr %16, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  tail call void %18(ptr noundef nonnull %0) #4
  tail call void @jinit_marker_writer(ptr noundef nonnull %0) #4
  %19 = getelementptr inbounds i8, ptr %0, i64 464
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds i8, ptr %20, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  tail call void %22(ptr noundef nonnull %0) #4
  %23 = load ptr, ptr %15, align 8, !tbaa !22
  %24 = getelementptr inbounds i8, ptr %23, i64 32
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  tail call void %25(ptr noundef nonnull %0) #4
  ret void
}

declare dso_local void @jinit_marker_writer(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
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
!21 = !{!7, !8, i64 16}
!22 = !{!7, !8, i64 40}
!23 = !{!7, !8, i64 504}
!24 = !{!7, !12, i64 64}
!25 = !{!7, !11, i64 36}
!26 = !{!8, !8, i64 0}
!27 = !{!28, !11, i64 128}
!28 = !{!"", !9, i64 0, !11, i64 128}
!29 = !{!30, !11, i64 276}
!30 = !{!"", !9, i64 0, !9, i64 17, !11, i64 276}
!31 = !{!7, !11, i64 304}
!32 = !{!7, !11, i64 52}
!33 = !{!7, !8, i64 432}
!34 = !{!35, !11, i64 28}
!35 = !{!"jpeg_comp_master", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28}
!36 = !{!35, !8, i64 0}
!37 = !{!7, !11, i64 320}
!38 = !{!39, !17, i64 8}
!39 = !{!"jpeg_progress_mgr", !8, i64 0, !17, i64 8, !17, i64 16, !11, i64 24, !11, i64 28}
!40 = !{!39, !17, i64 16}
!41 = !{!39, !8, i64 0}
!42 = !{!7, !8, i64 456}
!43 = !{!44, !8, i64 8}
!44 = !{!"jpeg_c_coef_controller", !8, i64 0, !8, i64 8}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!35, !8, i64 16}
!48 = distinct !{!48, !46}
!49 = !{!7, !8, i64 464}
!50 = !{!51, !8, i64 24}
!51 = !{!"jpeg_marker_writer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!52 = !{!53, !8, i64 32}
!53 = !{!"jpeg_destination_mgr", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!54 = !{!51, !8, i64 40}
!55 = !{!51, !8, i64 48}
!56 = distinct !{!56, !46}
!57 = !{!16, !8, i64 32}
!58 = !{!53, !8, i64 16}
!59 = !{!51, !8, i64 32}
