; ModuleID = 'jquant2.c'
source_filename = "jquant2.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.box = type { i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: nounwind
define dso_local void @jinit_2pass_quantizer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 88) #8
  %6 = getelementptr inbounds i8, ptr %0, i64 624
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @start_pass_2_quant, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  store ptr @new_color_map_2_quant, ptr %7, align 8, !tbaa !21
  %8 = getelementptr inbounds i8, ptr %5, i64 64
  store ptr null, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds i8, ptr %5, i64 80
  store ptr null, ptr %9, align 8, !tbaa !23
  %10 = getelementptr inbounds i8, ptr %0, i64 144
  %11 = load i32, ptr %10, align 8, !tbaa !24
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !25
  %15 = getelementptr inbounds i8, ptr %14, i64 40
  store i32 47, ptr %15, align 8, !tbaa !26
  %16 = load ptr, ptr %14, align 8, !tbaa !28
  tail call void %16(ptr noundef nonnull %0) #8
  br label %17

17:                                               ; preds = %13, %1
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = tail call ptr %19(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 256) #8
  %21 = getelementptr inbounds i8, ptr %5, i64 48
  store ptr %20, ptr %21, align 8, !tbaa !29
  br label %22

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %30, %22 ]
  %24 = load ptr, ptr %2, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  %27 = tail call ptr %26(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 4096) #8
  %28 = load ptr, ptr %21, align 8, !tbaa !29
  %29 = getelementptr inbounds ptr, ptr %28, i64 %23
  store ptr %27, ptr %29, align 8, !tbaa !31
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %22

32:                                               ; preds = %22
  %33 = getelementptr inbounds i8, ptr %5, i64 56
  store i32 1, ptr %33, align 8, !tbaa !32
  %34 = getelementptr inbounds i8, ptr %0, i64 132
  %35 = load i32, ptr %34, align 4, !tbaa !33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %0, i64 120
  %39 = load i32, ptr %38, align 8, !tbaa !34
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = icmp ugt i32 %39, 256
  br i1 %42, label %43, label %51

43:                                               ; preds = %41, %37
  %44 = phi i32 [ 56, %37 ], [ 57, %41 ]
  %45 = phi i32 [ 8, %37 ], [ 256, %41 ]
  %46 = load ptr, ptr %0, align 8, !tbaa !25
  %47 = getelementptr inbounds i8, ptr %46, i64 40
  store i32 %44, ptr %47, align 8, !tbaa !26
  %48 = getelementptr inbounds i8, ptr %46, i64 44
  store i32 %45, ptr %48, align 4, !tbaa !35
  %49 = load ptr, ptr %0, align 8, !tbaa !25
  %50 = load ptr, ptr %49, align 8, !tbaa !28
  tail call void %50(ptr noundef nonnull %0) #8
  br label %51

51:                                               ; preds = %43, %41
  %52 = load ptr, ptr %2, align 8, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %52, i64 16
  %54 = load ptr, ptr %53, align 8, !tbaa !36
  %55 = tail call ptr %54(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %39, i32 noundef signext 3) #8
  %56 = getelementptr inbounds i8, ptr %5, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 %39, ptr %57, align 8, !tbaa !38
  br label %60

58:                                               ; preds = %32
  %59 = getelementptr inbounds i8, ptr %5, i64 32
  store ptr null, ptr %59, align 8, !tbaa !37
  br label %60

60:                                               ; preds = %58, %51
  %61 = getelementptr inbounds i8, ptr %0, i64 112
  %62 = load i32, ptr %61, align 8, !tbaa !39
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  store i32 2, ptr %61, align 8, !tbaa !39
  %65 = load ptr, ptr %2, align 8, !tbaa !6
  %66 = getelementptr inbounds i8, ptr %65, i64 8
  %67 = load ptr, ptr %66, align 8, !tbaa !30
  %68 = getelementptr inbounds i8, ptr %0, i64 136
  %69 = load i32, ptr %68, align 8, !tbaa !40
  %70 = add i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = mul nuw nsw i64 %71, 6
  %73 = tail call ptr %67(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %72) #8
  store ptr %73, ptr %8, align 8, !tbaa !22
  tail call fastcc void @init_error_limit(ptr noundef nonnull %0)
  br label %74

74:                                               ; preds = %60, %64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @start_pass_2_quant(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 624
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %4, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds i8, ptr %0, i64 112
  %8 = load i32, ptr %7, align 8, !tbaa !39
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %17, label %14

12:                                               ; preds = %2
  store i32 2, ptr %7, align 8, !tbaa !39
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @prescan_quantize, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr @finish_pass1, ptr %16, align 8, !tbaa !42
  br label %58

17:                                               ; preds = %10, %12
  %18 = phi ptr [ @pass2_fs_dither, %12 ], [ @pass2_no_dither, %10 ]
  %19 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr @finish_pass2, ptr %20, align 8, !tbaa !42
  %21 = getelementptr inbounds i8, ptr %0, i64 156
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = icmp ugt i32 %22, 256
  br i1 %25, label %26, label %34

26:                                               ; preds = %24, %17
  %27 = phi i32 [ 56, %17 ], [ 57, %24 ]
  %28 = phi i32 [ 1, %17 ], [ 256, %24 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !25
  %30 = getelementptr inbounds i8, ptr %29, i64 40
  store i32 %27, ptr %30, align 8, !tbaa !26
  %31 = getelementptr inbounds i8, ptr %29, i64 44
  store i32 %28, ptr %31, align 4, !tbaa !35
  %32 = load ptr, ptr %0, align 8, !tbaa !25
  %33 = load ptr, ptr %32, align 8, !tbaa !28
  tail call void %33(ptr noundef nonnull %0) #8
  br label %34

34:                                               ; preds = %26, %24
  %35 = load i32, ptr %7, align 8, !tbaa !39
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %0, i64 136
  %39 = load i32, ptr %38, align 8, !tbaa !40
  %40 = add i32 %39, 2
  %41 = zext i32 %40 to i64
  %42 = mul nuw nsw i64 %41, 6
  %43 = getelementptr inbounds i8, ptr %4, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = getelementptr inbounds i8, ptr %0, i64 8
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8, !tbaa !30
  %51 = tail call ptr %50(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %42) #8
  store ptr %51, ptr %43, align 8, !tbaa !22
  br label %52

52:                                               ; preds = %46, %37
  %53 = phi ptr [ %51, %46 ], [ %44, %37 ]
  tail call void @jzero_far(ptr noundef %53, i64 noundef %42) #8
  %54 = getelementptr inbounds i8, ptr %4, i64 80
  %55 = load ptr, ptr %54, align 8, !tbaa !23
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  tail call fastcc void @init_error_limit(ptr noundef nonnull %0)
  br label %58

58:                                               ; preds = %52, %57, %14
  %59 = phi i64 [ 56, %14 ], [ 72, %57 ], [ 72, %52 ]
  %60 = phi i32 [ 1, %14 ], [ 0, %57 ], [ 0, %52 ]
  %61 = getelementptr inbounds i8, ptr %4, i64 %59
  store i32 %60, ptr %61, align 8, !tbaa !44
  br label %62

62:                                               ; preds = %58, %34
  %63 = getelementptr inbounds i8, ptr %4, i64 56
  %64 = load i32, ptr %63, align 8, !tbaa !32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %130, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %6, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %67, i64 noundef 4096) #8
  %68 = getelementptr inbounds i8, ptr %6, i64 8
  %69 = load ptr, ptr %68, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %69, i64 noundef 4096) #8
  %70 = getelementptr inbounds i8, ptr %6, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %71, i64 noundef 4096) #8
  %72 = getelementptr inbounds i8, ptr %6, i64 24
  %73 = load ptr, ptr %72, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %73, i64 noundef 4096) #8
  %74 = getelementptr inbounds i8, ptr %6, i64 32
  %75 = load ptr, ptr %74, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %75, i64 noundef 4096) #8
  %76 = getelementptr inbounds i8, ptr %6, i64 40
  %77 = load ptr, ptr %76, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %77, i64 noundef 4096) #8
  %78 = getelementptr inbounds i8, ptr %6, i64 48
  %79 = load ptr, ptr %78, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %79, i64 noundef 4096) #8
  %80 = getelementptr inbounds i8, ptr %6, i64 56
  %81 = load ptr, ptr %80, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %81, i64 noundef 4096) #8
  %82 = getelementptr inbounds i8, ptr %6, i64 64
  %83 = load ptr, ptr %82, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %83, i64 noundef 4096) #8
  %84 = getelementptr inbounds i8, ptr %6, i64 72
  %85 = load ptr, ptr %84, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %85, i64 noundef 4096) #8
  %86 = getelementptr inbounds i8, ptr %6, i64 80
  %87 = load ptr, ptr %86, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %87, i64 noundef 4096) #8
  %88 = getelementptr inbounds i8, ptr %6, i64 88
  %89 = load ptr, ptr %88, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %89, i64 noundef 4096) #8
  %90 = getelementptr inbounds i8, ptr %6, i64 96
  %91 = load ptr, ptr %90, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %91, i64 noundef 4096) #8
  %92 = getelementptr inbounds i8, ptr %6, i64 104
  %93 = load ptr, ptr %92, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %93, i64 noundef 4096) #8
  %94 = getelementptr inbounds i8, ptr %6, i64 112
  %95 = load ptr, ptr %94, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %95, i64 noundef 4096) #8
  %96 = getelementptr inbounds i8, ptr %6, i64 120
  %97 = load ptr, ptr %96, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %97, i64 noundef 4096) #8
  %98 = getelementptr inbounds i8, ptr %6, i64 128
  %99 = load ptr, ptr %98, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %99, i64 noundef 4096) #8
  %100 = getelementptr inbounds i8, ptr %6, i64 136
  %101 = load ptr, ptr %100, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %101, i64 noundef 4096) #8
  %102 = getelementptr inbounds i8, ptr %6, i64 144
  %103 = load ptr, ptr %102, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %103, i64 noundef 4096) #8
  %104 = getelementptr inbounds i8, ptr %6, i64 152
  %105 = load ptr, ptr %104, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %105, i64 noundef 4096) #8
  %106 = getelementptr inbounds i8, ptr %6, i64 160
  %107 = load ptr, ptr %106, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %107, i64 noundef 4096) #8
  %108 = getelementptr inbounds i8, ptr %6, i64 168
  %109 = load ptr, ptr %108, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %109, i64 noundef 4096) #8
  %110 = getelementptr inbounds i8, ptr %6, i64 176
  %111 = load ptr, ptr %110, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %111, i64 noundef 4096) #8
  %112 = getelementptr inbounds i8, ptr %6, i64 184
  %113 = load ptr, ptr %112, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %113, i64 noundef 4096) #8
  %114 = getelementptr inbounds i8, ptr %6, i64 192
  %115 = load ptr, ptr %114, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %115, i64 noundef 4096) #8
  %116 = getelementptr inbounds i8, ptr %6, i64 200
  %117 = load ptr, ptr %116, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %117, i64 noundef 4096) #8
  %118 = getelementptr inbounds i8, ptr %6, i64 208
  %119 = load ptr, ptr %118, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %119, i64 noundef 4096) #8
  %120 = getelementptr inbounds i8, ptr %6, i64 216
  %121 = load ptr, ptr %120, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %121, i64 noundef 4096) #8
  %122 = getelementptr inbounds i8, ptr %6, i64 224
  %123 = load ptr, ptr %122, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %123, i64 noundef 4096) #8
  %124 = getelementptr inbounds i8, ptr %6, i64 232
  %125 = load ptr, ptr %124, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %125, i64 noundef 4096) #8
  %126 = getelementptr inbounds i8, ptr %6, i64 240
  %127 = load ptr, ptr %126, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %127, i64 noundef 4096) #8
  %128 = getelementptr inbounds i8, ptr %6, i64 248
  %129 = load ptr, ptr %128, align 8, !tbaa !31
  tail call void @jzero_far(ptr noundef %129, i64 noundef 4096) #8
  store i32 0, ptr %63, align 8, !tbaa !32
  br label %130

130:                                              ; preds = %66, %62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define internal void @new_color_map_2_quant(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 624
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %3, i64 56
  store i32 1, ptr %4, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal fastcc void @init_error_limit(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 624
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef signext 1, i64 noundef 2044) #8
  %8 = getelementptr inbounds i8, ptr %7, i64 1020
  %9 = getelementptr inbounds i8, ptr %3, i64 80
  store ptr %8, ptr %9, align 8, !tbaa !23
  store i32 0, ptr %8, align 4, !tbaa !44
  %10 = getelementptr inbounds i8, ptr %7, i64 1024
  store i32 1, ptr %10, align 4, !tbaa !44
  %11 = getelementptr inbounds i8, ptr %7, i64 1016
  store i32 -1, ptr %11, align 4, !tbaa !44
  %12 = getelementptr inbounds i8, ptr %7, i64 1028
  store i32 2, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds i8, ptr %7, i64 1012
  store i32 -2, ptr %13, align 4, !tbaa !44
  %14 = getelementptr inbounds i8, ptr %7, i64 1032
  store i32 3, ptr %14, align 4, !tbaa !44
  %15 = getelementptr inbounds i8, ptr %7, i64 1008
  store i32 -3, ptr %15, align 4, !tbaa !44
  %16 = getelementptr inbounds i8, ptr %7, i64 1036
  store i32 4, ptr %16, align 4, !tbaa !44
  %17 = getelementptr inbounds i8, ptr %7, i64 1004
  store i32 -4, ptr %17, align 4, !tbaa !44
  %18 = getelementptr inbounds i8, ptr %7, i64 1040
  store i32 5, ptr %18, align 4, !tbaa !44
  %19 = getelementptr inbounds i8, ptr %7, i64 1000
  store i32 -5, ptr %19, align 4, !tbaa !44
  %20 = getelementptr inbounds i8, ptr %7, i64 1044
  store i32 6, ptr %20, align 4, !tbaa !44
  %21 = getelementptr inbounds i8, ptr %7, i64 996
  store i32 -6, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds i8, ptr %7, i64 1048
  store i32 7, ptr %22, align 4, !tbaa !44
  %23 = getelementptr inbounds i8, ptr %7, i64 992
  store i32 -7, ptr %23, align 4, !tbaa !44
  %24 = getelementptr inbounds i8, ptr %7, i64 1052
  store i32 8, ptr %24, align 4, !tbaa !44
  %25 = getelementptr inbounds i8, ptr %7, i64 988
  store i32 -8, ptr %25, align 4, !tbaa !44
  %26 = getelementptr inbounds i8, ptr %7, i64 1056
  store i32 9, ptr %26, align 4, !tbaa !44
  %27 = getelementptr inbounds i8, ptr %7, i64 984
  store i32 -9, ptr %27, align 4, !tbaa !44
  %28 = getelementptr inbounds i8, ptr %7, i64 1060
  store i32 10, ptr %28, align 4, !tbaa !44
  %29 = getelementptr inbounds i8, ptr %7, i64 980
  store i32 -10, ptr %29, align 4, !tbaa !44
  %30 = getelementptr inbounds i8, ptr %7, i64 1064
  store i32 11, ptr %30, align 4, !tbaa !44
  %31 = getelementptr inbounds i8, ptr %7, i64 976
  store i32 -11, ptr %31, align 4, !tbaa !44
  %32 = getelementptr inbounds i8, ptr %7, i64 1068
  store i32 12, ptr %32, align 4, !tbaa !44
  %33 = getelementptr inbounds i8, ptr %7, i64 972
  store i32 -12, ptr %33, align 4, !tbaa !44
  %34 = getelementptr inbounds i8, ptr %7, i64 1072
  store i32 13, ptr %34, align 4, !tbaa !44
  %35 = getelementptr inbounds i8, ptr %7, i64 968
  store i32 -13, ptr %35, align 4, !tbaa !44
  %36 = getelementptr inbounds i8, ptr %7, i64 1076
  store i32 14, ptr %36, align 4, !tbaa !44
  %37 = getelementptr inbounds i8, ptr %7, i64 964
  store i32 -14, ptr %37, align 4, !tbaa !44
  %38 = getelementptr inbounds i8, ptr %7, i64 1080
  store i32 15, ptr %38, align 4, !tbaa !44
  %39 = getelementptr inbounds i8, ptr %7, i64 960
  store i32 -15, ptr %39, align 4, !tbaa !44
  %40 = getelementptr inbounds i8, ptr %7, i64 1084
  store i32 16, ptr %40, align 4, !tbaa !44
  %41 = getelementptr inbounds i8, ptr %7, i64 956
  store i32 -16, ptr %41, align 4, !tbaa !44
  %42 = getelementptr inbounds i8, ptr %7, i64 1088
  store i32 16, ptr %42, align 4, !tbaa !44
  %43 = getelementptr inbounds i8, ptr %7, i64 952
  store i32 -16, ptr %43, align 4, !tbaa !44
  %44 = getelementptr inbounds i8, ptr %7, i64 1092
  store i32 17, ptr %44, align 4, !tbaa !44
  %45 = getelementptr inbounds i8, ptr %7, i64 948
  store i32 -17, ptr %45, align 4, !tbaa !44
  %46 = getelementptr inbounds i8, ptr %7, i64 1096
  store i32 17, ptr %46, align 4, !tbaa !44
  %47 = getelementptr inbounds i8, ptr %7, i64 944
  store i32 -17, ptr %47, align 4, !tbaa !44
  %48 = getelementptr inbounds i8, ptr %7, i64 1100
  store i32 18, ptr %48, align 4, !tbaa !44
  %49 = getelementptr inbounds i8, ptr %7, i64 940
  store i32 -18, ptr %49, align 4, !tbaa !44
  %50 = getelementptr inbounds i8, ptr %7, i64 1104
  store i32 18, ptr %50, align 4, !tbaa !44
  %51 = getelementptr inbounds i8, ptr %7, i64 936
  store i32 -18, ptr %51, align 4, !tbaa !44
  %52 = getelementptr inbounds i8, ptr %7, i64 1108
  store i32 19, ptr %52, align 4, !tbaa !44
  %53 = getelementptr inbounds i8, ptr %7, i64 932
  store i32 -19, ptr %53, align 4, !tbaa !44
  %54 = getelementptr inbounds i8, ptr %7, i64 1112
  store i32 19, ptr %54, align 4, !tbaa !44
  %55 = getelementptr inbounds i8, ptr %7, i64 928
  store i32 -19, ptr %55, align 4, !tbaa !44
  %56 = getelementptr inbounds i8, ptr %7, i64 1116
  store i32 20, ptr %56, align 4, !tbaa !44
  %57 = getelementptr inbounds i8, ptr %7, i64 924
  store i32 -20, ptr %57, align 4, !tbaa !44
  %58 = getelementptr inbounds i8, ptr %7, i64 1120
  store i32 20, ptr %58, align 4, !tbaa !44
  %59 = getelementptr inbounds i8, ptr %7, i64 920
  store i32 -20, ptr %59, align 4, !tbaa !44
  %60 = getelementptr inbounds i8, ptr %7, i64 1124
  store i32 21, ptr %60, align 4, !tbaa !44
  %61 = getelementptr inbounds i8, ptr %7, i64 916
  store i32 -21, ptr %61, align 4, !tbaa !44
  %62 = getelementptr inbounds i8, ptr %7, i64 1128
  store i32 21, ptr %62, align 4, !tbaa !44
  %63 = getelementptr inbounds i8, ptr %7, i64 912
  store i32 -21, ptr %63, align 4, !tbaa !44
  %64 = getelementptr inbounds i8, ptr %7, i64 1132
  store i32 22, ptr %64, align 4, !tbaa !44
  %65 = getelementptr inbounds i8, ptr %7, i64 908
  store i32 -22, ptr %65, align 4, !tbaa !44
  %66 = getelementptr inbounds i8, ptr %7, i64 1136
  store i32 22, ptr %66, align 4, !tbaa !44
  %67 = getelementptr inbounds i8, ptr %7, i64 904
  store i32 -22, ptr %67, align 4, !tbaa !44
  %68 = getelementptr inbounds i8, ptr %7, i64 1140
  store i32 23, ptr %68, align 4, !tbaa !44
  %69 = getelementptr inbounds i8, ptr %7, i64 900
  store i32 -23, ptr %69, align 4, !tbaa !44
  %70 = getelementptr inbounds i8, ptr %7, i64 1144
  store i32 23, ptr %70, align 4, !tbaa !44
  %71 = getelementptr inbounds i8, ptr %7, i64 896
  store i32 -23, ptr %71, align 4, !tbaa !44
  %72 = getelementptr inbounds i8, ptr %7, i64 1148
  store i32 24, ptr %72, align 4, !tbaa !44
  %73 = getelementptr inbounds i8, ptr %7, i64 892
  store i32 -24, ptr %73, align 4, !tbaa !44
  %74 = getelementptr inbounds i8, ptr %7, i64 1152
  store i32 24, ptr %74, align 4, !tbaa !44
  %75 = getelementptr inbounds i8, ptr %7, i64 888
  store i32 -24, ptr %75, align 4, !tbaa !44
  %76 = getelementptr inbounds i8, ptr %7, i64 1156
  store i32 25, ptr %76, align 4, !tbaa !44
  %77 = getelementptr inbounds i8, ptr %7, i64 884
  store i32 -25, ptr %77, align 4, !tbaa !44
  %78 = getelementptr inbounds i8, ptr %7, i64 1160
  store i32 25, ptr %78, align 4, !tbaa !44
  %79 = getelementptr inbounds i8, ptr %7, i64 880
  store i32 -25, ptr %79, align 4, !tbaa !44
  %80 = getelementptr inbounds i8, ptr %7, i64 1164
  store i32 26, ptr %80, align 4, !tbaa !44
  %81 = getelementptr inbounds i8, ptr %7, i64 876
  store i32 -26, ptr %81, align 4, !tbaa !44
  %82 = getelementptr inbounds i8, ptr %7, i64 1168
  store i32 26, ptr %82, align 4, !tbaa !44
  %83 = getelementptr inbounds i8, ptr %7, i64 872
  store i32 -26, ptr %83, align 4, !tbaa !44
  %84 = getelementptr inbounds i8, ptr %7, i64 1172
  store i32 27, ptr %84, align 4, !tbaa !44
  %85 = getelementptr inbounds i8, ptr %7, i64 868
  store i32 -27, ptr %85, align 4, !tbaa !44
  %86 = getelementptr inbounds i8, ptr %7, i64 1176
  store i32 27, ptr %86, align 4, !tbaa !44
  %87 = getelementptr inbounds i8, ptr %7, i64 864
  store i32 -27, ptr %87, align 4, !tbaa !44
  %88 = getelementptr inbounds i8, ptr %7, i64 1180
  store i32 28, ptr %88, align 4, !tbaa !44
  %89 = getelementptr inbounds i8, ptr %7, i64 860
  store i32 -28, ptr %89, align 4, !tbaa !44
  %90 = getelementptr inbounds i8, ptr %7, i64 1184
  store i32 28, ptr %90, align 4, !tbaa !44
  %91 = getelementptr inbounds i8, ptr %7, i64 856
  store i32 -28, ptr %91, align 4, !tbaa !44
  %92 = getelementptr inbounds i8, ptr %7, i64 1188
  store i32 29, ptr %92, align 4, !tbaa !44
  %93 = getelementptr inbounds i8, ptr %7, i64 852
  store i32 -29, ptr %93, align 4, !tbaa !44
  %94 = getelementptr inbounds i8, ptr %7, i64 1192
  store i32 29, ptr %94, align 4, !tbaa !44
  %95 = getelementptr inbounds i8, ptr %7, i64 848
  store i32 -29, ptr %95, align 4, !tbaa !44
  %96 = getelementptr inbounds i8, ptr %7, i64 1196
  store i32 30, ptr %96, align 4, !tbaa !44
  %97 = getelementptr inbounds i8, ptr %7, i64 844
  store i32 -30, ptr %97, align 4, !tbaa !44
  %98 = getelementptr inbounds i8, ptr %7, i64 1200
  store i32 30, ptr %98, align 4, !tbaa !44
  %99 = getelementptr inbounds i8, ptr %7, i64 840
  store i32 -30, ptr %99, align 4, !tbaa !44
  %100 = getelementptr inbounds i8, ptr %7, i64 1204
  store i32 31, ptr %100, align 4, !tbaa !44
  %101 = getelementptr inbounds i8, ptr %7, i64 836
  store i32 -31, ptr %101, align 4, !tbaa !44
  %102 = getelementptr inbounds i8, ptr %7, i64 1208
  store i32 31, ptr %102, align 4, !tbaa !44
  %103 = getelementptr inbounds i8, ptr %7, i64 832
  store i32 -31, ptr %103, align 4, !tbaa !44
  br label %104

104:                                              ; preds = %1, %104
  %105 = phi i64 [ 48, %1 ], [ %109, %104 ]
  %106 = getelementptr inbounds i32, ptr %8, i64 %105
  store i32 32, ptr %106, align 4, !tbaa !44
  %107 = sub nsw i64 0, %105
  %108 = getelementptr inbounds i32, ptr %8, i64 %107
  store i32 -32, ptr %108, align 4, !tbaa !44
  %109 = add nuw nsw i64 %105, 1
  %110 = icmp eq i64 %109, 256
  br i1 %110, label %111, label %104

111:                                              ; preds = %104
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @prescan_quantize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, i32 noundef signext %3) #3 {
  %5 = getelementptr inbounds i8, ptr %0, i64 624
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 48
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds i8, ptr %0, i64 136
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = icmp slt i32 %3, 1
  %12 = icmp eq i32 %10, 0
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %47, label %14

14:                                               ; preds = %4
  %15 = zext nneg i32 %3 to i64
  br label %16

16:                                               ; preds = %14, %44
  %17 = phi i64 [ 0, %14 ], [ %45, %44 ]
  %18 = getelementptr inbounds ptr, ptr %1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %19, %16 ], [ %41, %20 ]
  %22 = phi i32 [ %10, %16 ], [ %42, %20 ]
  %23 = load i8, ptr %21, align 1, !tbaa !35
  %24 = lshr i8 %23, 3
  %25 = zext nneg i8 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %8, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !35
  %30 = lshr i8 %29, 2
  %31 = zext nneg i8 %30 to i64
  %32 = getelementptr inbounds i8, ptr %21, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !35
  %34 = lshr i8 %33, 3
  %35 = zext nneg i8 %34 to i64
  %36 = getelementptr inbounds [32 x i16], ptr %27, i64 %31, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !45
  %38 = add i16 %37, 1
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, i16 %37, i16 %38
  store i16 %40, ptr %36, align 2, !tbaa !45
  %41 = getelementptr inbounds i8, ptr %21, i64 3
  %42 = add i32 %22, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %20

44:                                               ; preds = %20
  %45 = add nuw nsw i64 %17, 1
  %46 = icmp eq i64 %45, %15
  br i1 %46, label %47, label %16

47:                                               ; preds = %44, %4
  ret void
}

; Function Attrs: nounwind
define internal void @finish_pass1(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 624
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = getelementptr inbounds i8, ptr %0, i64 160
  store ptr %5, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds i8, ptr %3, i64 40
  %8 = load i32, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = sext i32 %8 to i64
  %13 = mul nsw i64 %12, 40
  %14 = tail call ptr %11(ptr noundef %0, i32 noundef signext 1, i64 noundef %13) #8
  store i32 0, ptr %14, align 8, !tbaa !47
  %15 = getelementptr inbounds i8, ptr %14, i64 4
  store i32 31, ptr %15, align 4, !tbaa !49
  %16 = getelementptr inbounds i8, ptr %14, i64 8
  store i32 0, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds i8, ptr %14, i64 12
  store i32 63, ptr %17, align 4, !tbaa !51
  %18 = getelementptr inbounds i8, ptr %14, i64 16
  store i32 0, ptr %18, align 8, !tbaa !52
  %19 = getelementptr inbounds i8, ptr %14, i64 20
  store i32 31, ptr %19, align 4, !tbaa !53
  %20 = load ptr, ptr %2, align 8, !tbaa !17
  %21 = getelementptr i8, ptr %20, i64 48
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  tail call fastcc void @update_box(ptr %22, ptr noundef nonnull %14)
  %23 = icmp sgt i32 %8, 1
  br i1 %23, label %24, label %122

24:                                               ; preds = %1
  %25 = zext nneg i32 %8 to i64
  br label %26

26:                                               ; preds = %105, %24
  %27 = phi i64 [ 1, %24 ], [ %115, %105 ]
  %28 = shl nuw nsw i64 %27, 1
  %29 = icmp ugt i64 %28, %25
  br i1 %29, label %50, label %30

30:                                               ; preds = %26, %44
  %31 = phi i64 [ %47, %44 ], [ 0, %26 ]
  %32 = phi ptr [ %46, %44 ], [ null, %26 ]
  %33 = phi i64 [ %45, %44 ], [ 0, %26 ]
  %34 = phi ptr [ %48, %44 ], [ %14, %26 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 32
  %36 = load i64, ptr %35, align 8, !tbaa !54
  %37 = icmp sgt i64 %36, %33
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = getelementptr inbounds i8, ptr %34, i64 24
  %40 = load i64, ptr %39, align 8, !tbaa !55
  %41 = icmp sgt i64 %40, 0
  %42 = select i1 %41, i64 %36, i64 %33
  %43 = select i1 %41, ptr %34, ptr %32
  br label %44

44:                                               ; preds = %38, %30
  %45 = phi i64 [ %33, %30 ], [ %42, %38 ]
  %46 = phi ptr [ %32, %30 ], [ %43, %38 ]
  %47 = add nuw nsw i64 %31, 1
  %48 = getelementptr inbounds i8, ptr %34, i64 40
  %49 = icmp eq i64 %27, %47
  br i1 %49, label %63, label %30

50:                                               ; preds = %26, %50
  %51 = phi i64 [ %60, %50 ], [ 0, %26 ]
  %52 = phi ptr [ %59, %50 ], [ null, %26 ]
  %53 = phi i64 [ %58, %50 ], [ 0, %26 ]
  %54 = phi ptr [ %61, %50 ], [ %14, %26 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 24
  %56 = load i64, ptr %55, align 8, !tbaa !55
  %57 = icmp sgt i64 %56, %53
  %58 = tail call i64 @llvm.smax.i64(i64 %56, i64 %53)
  %59 = select i1 %57, ptr %54, ptr %52
  %60 = add nuw nsw i64 %51, 1
  %61 = getelementptr inbounds i8, ptr %54, i64 40
  %62 = icmp eq i64 %27, %60
  br i1 %62, label %63, label %50

63:                                               ; preds = %44, %50
  %64 = phi ptr [ %59, %50 ], [ %46, %44 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %117, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.box, ptr %14, i64 %27
  %68 = getelementptr inbounds i8, ptr %64, i64 4
  %69 = load i32, ptr %68, align 4, !tbaa !49
  %70 = getelementptr inbounds i8, ptr %67, i64 4
  store i32 %69, ptr %70, align 4, !tbaa !49
  %71 = getelementptr inbounds i8, ptr %64, i64 12
  %72 = load i32, ptr %71, align 4, !tbaa !51
  %73 = getelementptr inbounds i8, ptr %67, i64 12
  store i32 %72, ptr %73, align 4, !tbaa !51
  %74 = getelementptr inbounds i8, ptr %64, i64 20
  %75 = load i32, ptr %74, align 4, !tbaa !53
  %76 = getelementptr inbounds i8, ptr %67, i64 20
  store i32 %75, ptr %76, align 4, !tbaa !53
  %77 = load i32, ptr %64, align 8, !tbaa !47
  store i32 %77, ptr %67, align 8, !tbaa !47
  %78 = getelementptr inbounds i8, ptr %64, i64 8
  %79 = load i32, ptr %78, align 8, !tbaa !50
  %80 = getelementptr inbounds i8, ptr %67, i64 8
  store i32 %79, ptr %80, align 8, !tbaa !50
  %81 = getelementptr inbounds i8, ptr %64, i64 16
  %82 = load i32, ptr %81, align 8, !tbaa !52
  %83 = getelementptr inbounds i8, ptr %67, i64 16
  store i32 %82, ptr %83, align 8, !tbaa !52
  %84 = sub nsw i32 %69, %77
  %85 = shl i32 %84, 4
  %86 = sub nsw i32 %72, %79
  %87 = mul i32 %86, 12
  %88 = sub nsw i32 %75, %82
  %89 = shl i32 %88, 3
  %90 = icmp sle i32 %85, %87
  %91 = zext i1 %90 to i32
  %92 = tail call i32 @llvm.smax.i32(i32 %85, i32 %87)
  %93 = icmp sgt i32 %89, %92
  %94 = select i1 %93, i32 2, i32 %91
  switch i32 %94, label %104 [
    i32 0, label %95
    i32 1, label %98
    i32 2, label %101
  ]

95:                                               ; preds = %66
  %96 = add nsw i32 %77, %69
  %97 = sdiv i32 %96, 2
  store i32 %97, ptr %68, align 4, !tbaa !49
  br label %105

98:                                               ; preds = %66
  %99 = add nsw i32 %79, %72
  %100 = sdiv i32 %99, 2
  store i32 %100, ptr %71, align 4, !tbaa !51
  br label %105

101:                                              ; preds = %66
  %102 = add nsw i32 %82, %75
  %103 = sdiv i32 %102, 2
  store i32 %103, ptr %74, align 4, !tbaa !53
  br label %105

104:                                              ; preds = %66
  unreachable

105:                                              ; preds = %101, %98, %95
  %106 = phi i32 [ %103, %101 ], [ %100, %98 ], [ %97, %95 ]
  %107 = phi ptr [ %83, %101 ], [ %80, %98 ], [ %67, %95 ]
  %108 = add nsw i32 %106, 1
  store i32 %108, ptr %107, align 8, !tbaa !44
  %109 = load ptr, ptr %2, align 8, !tbaa !17
  %110 = getelementptr i8, ptr %109, i64 48
  %111 = load ptr, ptr %110, align 8, !tbaa !29
  tail call fastcc void @update_box(ptr %111, ptr noundef nonnull %64)
  %112 = load ptr, ptr %2, align 8, !tbaa !17
  %113 = getelementptr i8, ptr %112, i64 48
  %114 = load ptr, ptr %113, align 8, !tbaa !29
  tail call fastcc void @update_box(ptr %114, ptr noundef nonnull %67)
  %115 = add nuw nsw i64 %27, 1
  %116 = icmp eq i64 %115, %25
  br i1 %116, label %119, label %26

117:                                              ; preds = %63
  %118 = trunc nuw nsw i64 %27 to i32
  br label %119

119:                                              ; preds = %105, %117
  %120 = phi i32 [ %118, %117 ], [ %8, %105 ]
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %244

122:                                              ; preds = %119, %1
  %123 = phi i32 [ %120, %119 ], [ 1, %1 ]
  %124 = zext nneg i32 %123 to i64
  br label %125

125:                                              ; preds = %216, %122
  %126 = phi i64 [ 0, %122 ], [ %242, %216 ]
  %127 = getelementptr inbounds %struct.box, ptr %14, i64 %126
  %128 = load ptr, ptr %2, align 8, !tbaa !17
  %129 = getelementptr inbounds i8, ptr %128, i64 48
  %130 = load ptr, ptr %129, align 8, !tbaa !29
  %131 = load i32, ptr %127, align 8, !tbaa !47
  %132 = getelementptr inbounds i8, ptr %127, i64 4
  %133 = load i32, ptr %132, align 4, !tbaa !49
  %134 = getelementptr inbounds i8, ptr %127, i64 8
  %135 = load i32, ptr %134, align 8, !tbaa !50
  %136 = getelementptr inbounds i8, ptr %127, i64 12
  %137 = load i32, ptr %136, align 4, !tbaa !51
  %138 = getelementptr inbounds i8, ptr %127, i64 20
  %139 = load i32, ptr %138, align 4, !tbaa !53
  %140 = icmp sgt i32 %131, %133
  br i1 %140, label %216, label %141

141:                                              ; preds = %125
  %142 = getelementptr inbounds i8, ptr %127, i64 16
  %143 = load i32, ptr %142, align 8, !tbaa !52
  %144 = icmp sgt i32 %135, %137
  %145 = sext i32 %143 to i64
  %146 = icmp sgt i32 %143, %139
  %147 = select i1 %144, i1 true, i1 %146
  br i1 %147, label %216, label %148

148:                                              ; preds = %141
  %149 = add i32 %139, 1
  %150 = sext i32 %135 to i64
  %151 = add i32 %137, 1
  %152 = sext i32 %131 to i64
  %153 = add i32 %133, 1
  br label %154

154:                                              ; preds = %212, %148
  %155 = phi i64 [ %152, %148 ], [ %213, %212 ]
  %156 = phi i64 [ 0, %148 ], [ %204, %212 ]
  %157 = phi i64 [ 0, %148 ], [ %203, %212 ]
  %158 = phi i64 [ 0, %148 ], [ %202, %212 ]
  %159 = phi i64 [ 0, %148 ], [ %201, %212 ]
  %160 = getelementptr inbounds ptr, ptr %130, i64 %155
  %161 = load ptr, ptr %160, align 8, !tbaa !31
  %162 = trunc nsw i64 %155 to i32
  %163 = shl i32 %162, 3
  %164 = or disjoint i32 %163, 4
  %165 = sext i32 %164 to i64
  br label %166

166:                                              ; preds = %208, %154
  %167 = phi i64 [ %150, %154 ], [ %209, %208 ]
  %168 = phi i64 [ %156, %154 ], [ %204, %208 ]
  %169 = phi i64 [ %157, %154 ], [ %203, %208 ]
  %170 = phi i64 [ %158, %154 ], [ %202, %208 ]
  %171 = phi i64 [ %159, %154 ], [ %201, %208 ]
  %172 = getelementptr inbounds [32 x i16], ptr %161, i64 %167, i64 %145
  %173 = trunc nsw i64 %167 to i32
  %174 = shl i32 %173, 2
  %175 = or disjoint i32 %174, 2
  %176 = sext i32 %175 to i64
  br label %177

177:                                              ; preds = %200, %166
  %178 = phi i64 [ %145, %166 ], [ %205, %200 ]
  %179 = phi i64 [ %168, %166 ], [ %204, %200 ]
  %180 = phi i64 [ %169, %166 ], [ %203, %200 ]
  %181 = phi i64 [ %170, %166 ], [ %202, %200 ]
  %182 = phi i64 [ %171, %166 ], [ %201, %200 ]
  %183 = phi ptr [ %172, %166 ], [ %184, %200 ]
  %184 = getelementptr inbounds i8, ptr %183, i64 2
  %185 = load i16, ptr %183, align 2, !tbaa !45
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %177
  %188 = zext i16 %185 to i64
  %189 = add nsw i64 %182, %188
  %190 = mul nsw i64 %188, %165
  %191 = add nsw i64 %190, %181
  %192 = mul nsw i64 %188, %176
  %193 = add nsw i64 %192, %180
  %194 = trunc nsw i64 %178 to i32
  %195 = shl i32 %194, 3
  %196 = or disjoint i32 %195, 4
  %197 = sext i32 %196 to i64
  %198 = mul nsw i64 %188, %197
  %199 = add nsw i64 %198, %179
  br label %200

200:                                              ; preds = %187, %177
  %201 = phi i64 [ %189, %187 ], [ %182, %177 ]
  %202 = phi i64 [ %191, %187 ], [ %181, %177 ]
  %203 = phi i64 [ %193, %187 ], [ %180, %177 ]
  %204 = phi i64 [ %199, %187 ], [ %179, %177 ]
  %205 = add nsw i64 %178, 1
  %206 = trunc i64 %205 to i32
  %207 = icmp eq i32 %149, %206
  br i1 %207, label %208, label %177

208:                                              ; preds = %200
  %209 = add nsw i64 %167, 1
  %210 = trunc i64 %209 to i32
  %211 = icmp eq i32 %151, %210
  br i1 %211, label %212, label %166

212:                                              ; preds = %208
  %213 = add nsw i64 %155, 1
  %214 = trunc i64 %213 to i32
  %215 = icmp eq i32 %153, %214
  br i1 %215, label %216, label %154

216:                                              ; preds = %212, %141, %125
  %217 = phi i64 [ 0, %125 ], [ 0, %141 ], [ %201, %212 ]
  %218 = phi i64 [ 0, %125 ], [ 0, %141 ], [ %202, %212 ]
  %219 = phi i64 [ 0, %125 ], [ 0, %141 ], [ %203, %212 ]
  %220 = phi i64 [ 0, %125 ], [ 0, %141 ], [ %204, %212 ]
  %221 = ashr i64 %217, 1
  %222 = add nsw i64 %218, %221
  %223 = sdiv i64 %222, %217
  %224 = trunc i64 %223 to i8
  %225 = load ptr, ptr %6, align 8, !tbaa !46
  %226 = load ptr, ptr %225, align 8, !tbaa !31
  %227 = getelementptr inbounds i8, ptr %226, i64 %126
  store i8 %224, ptr %227, align 1, !tbaa !35
  %228 = add nsw i64 %219, %221
  %229 = sdiv i64 %228, %217
  %230 = trunc i64 %229 to i8
  %231 = load ptr, ptr %6, align 8, !tbaa !46
  %232 = getelementptr inbounds i8, ptr %231, i64 8
  %233 = load ptr, ptr %232, align 8, !tbaa !31
  %234 = getelementptr inbounds i8, ptr %233, i64 %126
  store i8 %230, ptr %234, align 1, !tbaa !35
  %235 = add nsw i64 %220, %221
  %236 = sdiv i64 %235, %217
  %237 = trunc i64 %236 to i8
  %238 = load ptr, ptr %6, align 8, !tbaa !46
  %239 = getelementptr inbounds i8, ptr %238, i64 16
  %240 = load ptr, ptr %239, align 8, !tbaa !31
  %241 = getelementptr inbounds i8, ptr %240, i64 %126
  store i8 %237, ptr %241, align 1, !tbaa !35
  %242 = add nuw nsw i64 %126, 1
  %243 = icmp eq i64 %242, %124
  br i1 %243, label %244, label %125

244:                                              ; preds = %216, %119
  %245 = phi i32 [ %120, %119 ], [ %123, %216 ]
  %246 = getelementptr inbounds i8, ptr %0, i64 156
  store i32 %245, ptr %246, align 4, !tbaa !43
  %247 = load ptr, ptr %0, align 8, !tbaa !25
  %248 = getelementptr inbounds i8, ptr %247, i64 40
  store i32 96, ptr %248, align 8, !tbaa !26
  %249 = getelementptr inbounds i8, ptr %247, i64 44
  store i32 %245, ptr %249, align 4, !tbaa !35
  %250 = load ptr, ptr %0, align 8, !tbaa !25
  %251 = getelementptr inbounds i8, ptr %250, i64 8
  %252 = load ptr, ptr %251, align 8, !tbaa !56
  tail call void %252(ptr noundef nonnull %0, i32 noundef signext 1) #8
  %253 = getelementptr inbounds i8, ptr %3, i64 56
  store i32 1, ptr %253, align 8, !tbaa !32
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @pass2_fs_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) #3 {
  %5 = getelementptr inbounds i8, ptr %0, i64 624
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 48
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds i8, ptr %0, i64 136
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = getelementptr inbounds i8, ptr %0, i64 424
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds i8, ptr %6, i64 80
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds i8, ptr %0, i64 160
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = getelementptr inbounds i8, ptr %16, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = getelementptr inbounds i8, ptr %16, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %205

23:                                               ; preds = %4
  %24 = getelementptr inbounds i8, ptr %6, i64 72
  %25 = add i32 %10, -1
  %26 = mul i32 %25, 3
  %27 = zext i32 %26 to i64
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds i8, ptr %6, i64 64
  %30 = mul i32 %10, 3
  %31 = add i32 %30, 3
  %32 = zext i32 %31 to i64
  %33 = icmp eq i32 %10, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  %35 = zext nneg i32 %3 to i64
  br label %51

36:                                               ; preds = %23
  %37 = load i32, ptr %24, align 8, !tbaa !58
  %38 = load ptr, ptr %29, align 8, !tbaa !22
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i32 [ %37, %36 ], [ %43, %39 ]
  %41 = phi i32 [ 0, %36 ], [ %48, %39 ]
  %42 = icmp eq i32 %40, 0
  %43 = zext i1 %42 to i32
  %44 = select i1 %42, i64 0, i64 %32
  %45 = getelementptr inbounds i16, ptr %38, i64 %44
  store i16 0, ptr %45, align 2, !tbaa !45
  %46 = getelementptr inbounds i8, ptr %45, i64 2
  store i16 0, ptr %46, align 2, !tbaa !45
  %47 = getelementptr inbounds i8, ptr %45, i64 4
  store i16 0, ptr %47, align 2, !tbaa !45
  %48 = add nuw nsw i32 %41, 1
  %49 = icmp eq i32 %48, %3
  br i1 %49, label %50, label %39

50:                                               ; preds = %39
  store i32 %43, ptr %24, align 8, !tbaa !58
  br label %205

51:                                               ; preds = %34, %197
  %52 = phi i64 [ 0, %34 ], [ %203, %197 ]
  %53 = getelementptr inbounds ptr, ptr %1, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = getelementptr inbounds ptr, ptr %2, i64 %52
  %56 = load ptr, ptr %55, align 8, !tbaa !31
  %57 = load i32, ptr %24, align 8, !tbaa !58
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds i8, ptr %54, i64 %27
  %61 = getelementptr inbounds i8, ptr %56, i64 %28
  %62 = load ptr, ptr %29, align 8, !tbaa !22
  %63 = getelementptr inbounds i16, ptr %62, i64 %32
  br label %66

64:                                               ; preds = %51
  %65 = load ptr, ptr %29, align 8, !tbaa !22
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi i32 [ 1, %64 ], [ 0, %59 ]
  %68 = phi ptr [ %54, %64 ], [ %60, %59 ]
  %69 = phi ptr [ %56, %64 ], [ %61, %59 ]
  %70 = phi ptr [ %65, %64 ], [ %63, %59 ]
  %71 = phi i64 [ 1, %64 ], [ -1, %59 ]
  %72 = phi i32 [ 3, %64 ], [ -3, %59 ]
  store i32 %67, ptr %24, align 8, !tbaa !58
  %73 = sext i32 %72 to i64
  %74 = add nsw i32 %72, 1
  %75 = sext i32 %74 to i64
  %76 = add nsw i32 %72, 2
  %77 = sext i32 %76 to i64
  br label %78

78:                                               ; preds = %66, %155
  %79 = phi i32 [ 0, %66 ], [ %178, %155 ]
  %80 = phi i32 [ 0, %66 ], [ %185, %155 ]
  %81 = phi i32 [ 0, %66 ], [ %192, %155 ]
  %82 = phi i32 [ 0, %66 ], [ %164, %155 ]
  %83 = phi i32 [ 0, %66 ], [ %168, %155 ]
  %84 = phi i32 [ 0, %66 ], [ %172, %155 ]
  %85 = phi i32 [ 0, %66 ], [ %177, %155 ]
  %86 = phi i32 [ 0, %66 ], [ %184, %155 ]
  %87 = phi i32 [ 0, %66 ], [ %191, %155 ]
  %88 = phi i32 [ %10, %66 ], [ %195, %155 ]
  %89 = phi ptr [ %70, %66 ], [ %92, %155 ]
  %90 = phi ptr [ %69, %66 ], [ %194, %155 ]
  %91 = phi ptr [ %68, %66 ], [ %193, %155 ]
  %92 = getelementptr inbounds i16, ptr %89, i64 %73
  %93 = load i16, ptr %92, align 2, !tbaa !45
  %94 = sext i16 %93 to i32
  %95 = add nsw i32 %79, 8
  %96 = add nsw i32 %95, %94
  %97 = ashr i32 %96, 4
  %98 = getelementptr inbounds i16, ptr %89, i64 %75
  %99 = load i16, ptr %98, align 2, !tbaa !45
  %100 = sext i16 %99 to i32
  %101 = add nsw i32 %80, 8
  %102 = add nsw i32 %101, %100
  %103 = ashr i32 %102, 4
  %104 = getelementptr inbounds i16, ptr %89, i64 %77
  %105 = load i16, ptr %104, align 2, !tbaa !45
  %106 = sext i16 %105 to i32
  %107 = add nsw i32 %81, 8
  %108 = add nsw i32 %107, %106
  %109 = ashr i32 %108, 4
  %110 = sext i32 %97 to i64
  %111 = getelementptr inbounds i32, ptr %14, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !44
  %113 = sext i32 %103 to i64
  %114 = getelementptr inbounds i32, ptr %14, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !44
  %116 = sext i32 %109 to i64
  %117 = getelementptr inbounds i32, ptr %14, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !44
  %119 = load i8, ptr %91, align 1, !tbaa !35
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %112, %120
  %122 = getelementptr inbounds i8, ptr %91, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !35
  %124 = zext i8 %123 to i32
  %125 = add nsw i32 %115, %124
  %126 = getelementptr inbounds i8, ptr %91, i64 2
  %127 = load i8, ptr %126, align 1, !tbaa !35
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 %118, %128
  %130 = sext i32 %121 to i64
  %131 = getelementptr inbounds i8, ptr %12, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !35
  %133 = zext i8 %132 to i32
  %134 = sext i32 %125 to i64
  %135 = getelementptr inbounds i8, ptr %12, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !35
  %137 = zext i8 %136 to i32
  %138 = sext i32 %129 to i64
  %139 = getelementptr inbounds i8, ptr %12, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !35
  %141 = zext i8 %140 to i32
  %142 = lshr i32 %133, 3
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %8, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !31
  %146 = lshr i32 %137, 2
  %147 = zext nneg i32 %146 to i64
  %148 = lshr i32 %141, 3
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds [32 x i16], ptr %145, i64 %147, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !45
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %78
  tail call fastcc void @fill_inverse_cmap(ptr noundef %0, i32 noundef signext %142, i32 noundef signext %146, i32 noundef signext %148)
  %154 = load i16, ptr %150, align 2, !tbaa !45
  br label %155

155:                                              ; preds = %153, %78
  %156 = phi i16 [ %154, %153 ], [ %151, %78 ]
  %157 = zext i16 %156 to i32
  %158 = add nsw i32 %157, -1
  %159 = trunc i32 %158 to i8
  store i8 %159, ptr %90, align 1, !tbaa !35
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, ptr %17, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !35
  %163 = zext i8 %162 to i32
  %164 = sub nsw i32 %133, %163
  %165 = getelementptr inbounds i8, ptr %19, i64 %160
  %166 = load i8, ptr %165, align 1, !tbaa !35
  %167 = zext i8 %166 to i32
  %168 = sub nsw i32 %137, %167
  %169 = getelementptr inbounds i8, ptr %21, i64 %160
  %170 = load i8, ptr %169, align 1, !tbaa !35
  %171 = zext i8 %170 to i32
  %172 = sub nsw i32 %141, %171
  %173 = mul nsw i32 %164, 3
  %174 = add nsw i32 %173, %85
  %175 = trunc nsw i32 %174 to i16
  store i16 %175, ptr %89, align 2, !tbaa !45
  %176 = mul nsw i32 %164, 5
  %177 = add nsw i32 %176, %82
  %178 = mul nsw i32 %164, 7
  %179 = mul nsw i32 %168, 3
  %180 = add nsw i32 %179, %86
  %181 = trunc nsw i32 %180 to i16
  %182 = getelementptr inbounds i8, ptr %89, i64 2
  store i16 %181, ptr %182, align 2, !tbaa !45
  %183 = mul nsw i32 %168, 5
  %184 = add nsw i32 %183, %83
  %185 = mul nsw i32 %168, 7
  %186 = mul nsw i32 %172, 3
  %187 = add nsw i32 %186, %87
  %188 = trunc nsw i32 %187 to i16
  %189 = getelementptr inbounds i8, ptr %89, i64 4
  store i16 %188, ptr %189, align 2, !tbaa !45
  %190 = mul nsw i32 %172, 5
  %191 = add nsw i32 %190, %84
  %192 = mul nsw i32 %172, 7
  %193 = getelementptr inbounds i8, ptr %91, i64 %73
  %194 = getelementptr inbounds i8, ptr %90, i64 %71
  %195 = add i32 %88, -1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %78

197:                                              ; preds = %155
  %198 = trunc nsw i32 %177 to i16
  store i16 %198, ptr %92, align 2, !tbaa !45
  %199 = trunc nsw i32 %184 to i16
  %200 = getelementptr inbounds i8, ptr %92, i64 2
  store i16 %199, ptr %200, align 2, !tbaa !45
  %201 = trunc nsw i32 %191 to i16
  %202 = getelementptr inbounds i8, ptr %92, i64 4
  store i16 %201, ptr %202, align 2, !tbaa !45
  %203 = add nuw nsw i64 %52, 1
  %204 = icmp eq i64 %203, %35
  br i1 %204, label %205, label %51

205:                                              ; preds = %197, %50, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @pass2_no_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3) #3 {
  %5 = getelementptr inbounds i8, ptr %0, i64 624
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 48
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds i8, ptr %0, i64 136
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = icmp slt i32 %3, 1
  %12 = icmp eq i32 %10, 0
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %59, label %14

14:                                               ; preds = %4
  %15 = zext nneg i32 %3 to i64
  br label %16

16:                                               ; preds = %14, %56
  %17 = phi i64 [ 0, %14 ], [ %57, %56 ]
  %18 = getelementptr inbounds ptr, ptr %1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = getelementptr inbounds ptr, ptr %2, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  br label %22

22:                                               ; preds = %16, %50
  %23 = phi ptr [ %19, %16 ], [ %32, %50 ]
  %24 = phi i32 [ %10, %16 ], [ %54, %50 ]
  %25 = phi ptr [ %21, %16 ], [ %53, %50 ]
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  %27 = load i8, ptr %23, align 1, !tbaa !35
  %28 = lshr i8 %27, 3
  %29 = getelementptr inbounds i8, ptr %23, i64 2
  %30 = load i8, ptr %26, align 1, !tbaa !35
  %31 = lshr i8 %30, 2
  %32 = getelementptr inbounds i8, ptr %23, i64 3
  %33 = load i8, ptr %29, align 1, !tbaa !35
  %34 = lshr i8 %33, 3
  %35 = zext nneg i8 %28 to i64
  %36 = getelementptr inbounds ptr, ptr %8, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  %38 = zext nneg i8 %31 to i64
  %39 = zext nneg i8 %34 to i64
  %40 = getelementptr inbounds [32 x i16], ptr %37, i64 %38, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !45
  %42 = icmp eq i16 %41, 0
  %43 = trunc i16 %41 to i8
  br i1 %42, label %44, label %50

44:                                               ; preds = %22
  %45 = zext nneg i8 %34 to i32
  %46 = zext nneg i8 %31 to i32
  %47 = zext nneg i8 %28 to i32
  tail call fastcc void @fill_inverse_cmap(ptr noundef %0, i32 noundef signext %47, i32 noundef signext %46, i32 noundef signext %45)
  %48 = load i16, ptr %40, align 2, !tbaa !45
  %49 = trunc i16 %48 to i8
  br label %50

50:                                               ; preds = %44, %22
  %51 = phi i8 [ %49, %44 ], [ %43, %22 ]
  %52 = add i8 %51, -1
  %53 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %52, ptr %25, align 1, !tbaa !35
  %54 = add i32 %24, -1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %22

56:                                               ; preds = %50
  %57 = add nuw nsw i64 %17, 1
  %58 = icmp eq i64 %57, %15
  br i1 %58, label %59, label %16

59:                                               ; preds = %56, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal void @finish_pass2(ptr nocapture readnone %0) #4 {
  ret void
}

declare dso_local void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define internal fastcc void @update_box(ptr nocapture readonly %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %1, align 8, !tbaa !47
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds i8, ptr %1, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds i8, ptr %1, i64 16
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds i8, ptr %1, i64 20
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = icmp sgt i32 %5, %3
  br i1 %14, label %15, label %52

15:                                               ; preds = %2
  %16 = icmp sgt i32 %7, %9
  %17 = sext i32 %11 to i64
  %18 = icmp sgt i32 %11, %13
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = sext i32 %7 to i64
  %22 = add i32 %9, 1
  %23 = sext i32 %3 to i64
  %24 = tail call i32 @llvm.smax.i32(i32 %5, i32 %3)
  %25 = add i32 %24, 1
  br label %26

26:                                               ; preds = %20, %48
  %27 = phi i64 [ %23, %20 ], [ %49, %48 ]
  %28 = getelementptr inbounds ptr, ptr %0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  br label %30

30:                                               ; preds = %26, %44
  %31 = phi i64 [ %21, %26 ], [ %45, %44 ]
  %32 = getelementptr inbounds [32 x i16], ptr %29, i64 %31, i64 %17
  br label %33

33:                                               ; preds = %30, %40
  %34 = phi ptr [ %32, %30 ], [ %41, %40 ]
  %35 = phi i32 [ %11, %30 ], [ %42, %40 ]
  %36 = load i16, ptr %34, align 2, !tbaa !45
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = trunc nsw i64 %27 to i32
  store i32 %39, ptr %1, align 8, !tbaa !47
  br label %52

40:                                               ; preds = %33
  %41 = getelementptr inbounds i8, ptr %34, i64 2
  %42 = add i32 %35, 1
  %43 = icmp eq i32 %35, %13
  br i1 %43, label %44, label %33

44:                                               ; preds = %40
  %45 = add nsw i64 %31, 1
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i32 %22, %46
  br i1 %47, label %48, label %30

48:                                               ; preds = %44
  %49 = add nsw i64 %27, 1
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %25, %50
  br i1 %51, label %52, label %26

52:                                               ; preds = %48, %15, %2, %38
  %53 = phi i32 [ %39, %38 ], [ %3, %2 ], [ %3, %15 ], [ %3, %48 ]
  %54 = icmp sgt i32 %5, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %52
  %56 = icmp sgt i32 %7, %9
  %57 = sext i32 %11 to i64
  %58 = icmp sgt i32 %11, %13
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %90, label %60

60:                                               ; preds = %55
  %61 = sext i32 %7 to i64
  %62 = add i32 %9, 1
  %63 = sext i32 %5 to i64
  %64 = sext i32 %53 to i64
  br label %65

65:                                               ; preds = %60, %87
  %66 = phi i64 [ %63, %60 ], [ %88, %87 ]
  %67 = getelementptr inbounds ptr, ptr %0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !31
  br label %69

69:                                               ; preds = %65, %83
  %70 = phi i64 [ %61, %65 ], [ %84, %83 ]
  %71 = getelementptr inbounds [32 x i16], ptr %68, i64 %70, i64 %57
  br label %72

72:                                               ; preds = %69, %79
  %73 = phi ptr [ %71, %69 ], [ %80, %79 ]
  %74 = phi i32 [ %11, %69 ], [ %81, %79 ]
  %75 = load i16, ptr %73, align 2, !tbaa !45
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = trunc nsw i64 %66 to i32
  store i32 %78, ptr %4, align 4, !tbaa !49
  br label %90

79:                                               ; preds = %72
  %80 = getelementptr inbounds i8, ptr %73, i64 2
  %81 = add i32 %74, 1
  %82 = icmp eq i32 %74, %13
  br i1 %82, label %83, label %72

83:                                               ; preds = %79
  %84 = add nsw i64 %70, 1
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %62, %85
  br i1 %86, label %87, label %69

87:                                               ; preds = %83
  %88 = add nsw i64 %66, -1
  %89 = icmp sgt i64 %66, %64
  br i1 %89, label %65, label %90

90:                                               ; preds = %87, %55, %52, %77
  %91 = phi i32 [ %78, %77 ], [ %5, %52 ], [ %5, %55 ], [ %5, %87 ]
  %92 = icmp sgt i32 %9, %7
  br i1 %92, label %93, label %130

93:                                               ; preds = %90
  %94 = icmp sgt i32 %53, %91
  %95 = sext i32 %11 to i64
  %96 = icmp sgt i32 %11, %13
  %97 = select i1 %94, i1 true, i1 %96
  br i1 %97, label %130, label %98

98:                                               ; preds = %93
  %99 = sext i32 %53 to i64
  %100 = add i32 %91, 1
  %101 = sext i32 %7 to i64
  %102 = tail call i32 @llvm.smax.i32(i32 %7, i32 %9)
  %103 = add i32 %102, 1
  br label %104

104:                                              ; preds = %98, %126
  %105 = phi i64 [ %101, %98 ], [ %127, %126 ]
  br label %106

106:                                              ; preds = %104, %122
  %107 = phi i64 [ %99, %104 ], [ %123, %122 ]
  %108 = getelementptr inbounds ptr, ptr %0, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !31
  %110 = getelementptr inbounds [32 x i16], ptr %109, i64 %105, i64 %95
  br label %111

111:                                              ; preds = %106, %118
  %112 = phi ptr [ %110, %106 ], [ %119, %118 ]
  %113 = phi i32 [ %11, %106 ], [ %120, %118 ]
  %114 = load i16, ptr %112, align 2, !tbaa !45
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = trunc nsw i64 %105 to i32
  store i32 %117, ptr %6, align 8, !tbaa !50
  br label %130

118:                                              ; preds = %111
  %119 = getelementptr inbounds i8, ptr %112, i64 2
  %120 = add i32 %113, 1
  %121 = icmp eq i32 %113, %13
  br i1 %121, label %122, label %111

122:                                              ; preds = %118
  %123 = add nsw i64 %107, 1
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %100, %124
  br i1 %125, label %126, label %106

126:                                              ; preds = %122
  %127 = add nsw i64 %105, 1
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %103, %128
  br i1 %129, label %130, label %104

130:                                              ; preds = %126, %93, %90, %116
  %131 = phi i32 [ %117, %116 ], [ %7, %90 ], [ %7, %93 ], [ %7, %126 ]
  %132 = icmp sgt i32 %9, %131
  br i1 %132, label %133, label %168

133:                                              ; preds = %130
  %134 = icmp sgt i32 %53, %91
  %135 = sext i32 %11 to i64
  %136 = icmp sgt i32 %11, %13
  %137 = select i1 %134, i1 true, i1 %136
  br i1 %137, label %168, label %138

138:                                              ; preds = %133
  %139 = sext i32 %53 to i64
  %140 = add i32 %91, 1
  %141 = sext i32 %9 to i64
  %142 = sext i32 %131 to i64
  br label %143

143:                                              ; preds = %138, %165
  %144 = phi i64 [ %141, %138 ], [ %166, %165 ]
  br label %145

145:                                              ; preds = %143, %161
  %146 = phi i64 [ %139, %143 ], [ %162, %161 ]
  %147 = getelementptr inbounds ptr, ptr %0, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !31
  %149 = getelementptr inbounds [32 x i16], ptr %148, i64 %144, i64 %135
  br label %150

150:                                              ; preds = %145, %157
  %151 = phi ptr [ %149, %145 ], [ %158, %157 ]
  %152 = phi i32 [ %11, %145 ], [ %159, %157 ]
  %153 = load i16, ptr %151, align 2, !tbaa !45
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %150
  %156 = trunc nsw i64 %144 to i32
  store i32 %156, ptr %8, align 4, !tbaa !51
  br label %168

157:                                              ; preds = %150
  %158 = getelementptr inbounds i8, ptr %151, i64 2
  %159 = add i32 %152, 1
  %160 = icmp eq i32 %152, %13
  br i1 %160, label %161, label %150

161:                                              ; preds = %157
  %162 = add nsw i64 %146, 1
  %163 = trunc i64 %162 to i32
  %164 = icmp eq i32 %140, %163
  br i1 %164, label %165, label %145

165:                                              ; preds = %161
  %166 = add nsw i64 %144, -1
  %167 = icmp sgt i64 %144, %142
  br i1 %167, label %143, label %168

168:                                              ; preds = %165, %133, %130, %155
  %169 = phi i32 [ %156, %155 ], [ %9, %130 ], [ %9, %133 ], [ %9, %165 ]
  %170 = icmp sgt i32 %13, %11
  br i1 %170, label %171, label %208

171:                                              ; preds = %168
  %172 = icmp sgt i32 %53, %91
  %173 = sext i32 %131 to i64
  %174 = icmp sgt i32 %131, %169
  %175 = select i1 %172, i1 true, i1 %174
  br i1 %175, label %208, label %176

176:                                              ; preds = %171
  %177 = sext i32 %53 to i64
  %178 = add i32 %91, 1
  %179 = sext i32 %11 to i64
  %180 = tail call i32 @llvm.smax.i32(i32 %11, i32 %13)
  %181 = add i32 %180, 1
  br label %182

182:                                              ; preds = %176, %204
  %183 = phi i64 [ %179, %176 ], [ %205, %204 ]
  br label %184

184:                                              ; preds = %182, %200
  %185 = phi i64 [ %177, %182 ], [ %201, %200 ]
  %186 = getelementptr inbounds ptr, ptr %0, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !31
  %188 = getelementptr inbounds [32 x i16], ptr %187, i64 %173, i64 %183
  br label %189

189:                                              ; preds = %184, %196
  %190 = phi ptr [ %188, %184 ], [ %198, %196 ]
  %191 = phi i32 [ %131, %184 ], [ %197, %196 ]
  %192 = load i16, ptr %190, align 2, !tbaa !45
  %193 = icmp eq i16 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %189
  %195 = trunc nsw i64 %183 to i32
  store i32 %195, ptr %10, align 8, !tbaa !52
  br label %208

196:                                              ; preds = %189
  %197 = add i32 %191, 1
  %198 = getelementptr inbounds i8, ptr %190, i64 64
  %199 = icmp eq i32 %191, %169
  br i1 %199, label %200, label %189

200:                                              ; preds = %196
  %201 = add nsw i64 %185, 1
  %202 = trunc i64 %201 to i32
  %203 = icmp eq i32 %178, %202
  br i1 %203, label %204, label %184

204:                                              ; preds = %200
  %205 = add nsw i64 %183, 1
  %206 = trunc i64 %205 to i32
  %207 = icmp eq i32 %181, %206
  br i1 %207, label %208, label %182

208:                                              ; preds = %204, %171, %168, %194
  %209 = phi i32 [ %195, %194 ], [ %11, %168 ], [ %11, %171 ], [ %11, %204 ]
  %210 = icmp sgt i32 %13, %209
  br i1 %210, label %211, label %246

211:                                              ; preds = %208
  %212 = icmp sgt i32 %53, %91
  %213 = sext i32 %131 to i64
  %214 = icmp sgt i32 %131, %169
  %215 = select i1 %212, i1 true, i1 %214
  br i1 %215, label %246, label %216

216:                                              ; preds = %211
  %217 = sext i32 %53 to i64
  %218 = add i32 %91, 1
  %219 = sext i32 %13 to i64
  %220 = sext i32 %209 to i64
  br label %221

221:                                              ; preds = %216, %243
  %222 = phi i64 [ %219, %216 ], [ %244, %243 ]
  br label %223

223:                                              ; preds = %221, %239
  %224 = phi i64 [ %217, %221 ], [ %240, %239 ]
  %225 = getelementptr inbounds ptr, ptr %0, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !31
  %227 = getelementptr inbounds [32 x i16], ptr %226, i64 %213, i64 %222
  br label %228

228:                                              ; preds = %223, %235
  %229 = phi ptr [ %227, %223 ], [ %237, %235 ]
  %230 = phi i32 [ %131, %223 ], [ %236, %235 ]
  %231 = load i16, ptr %229, align 2, !tbaa !45
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %228
  %234 = trunc nsw i64 %222 to i32
  store i32 %234, ptr %12, align 4, !tbaa !53
  br label %246

235:                                              ; preds = %228
  %236 = add i32 %230, 1
  %237 = getelementptr inbounds i8, ptr %229, i64 64
  %238 = icmp eq i32 %230, %169
  br i1 %238, label %239, label %228

239:                                              ; preds = %235
  %240 = add nsw i64 %224, 1
  %241 = trunc i64 %240 to i32
  %242 = icmp eq i32 %218, %241
  br i1 %242, label %243, label %223

243:                                              ; preds = %239
  %244 = add nsw i64 %222, -1
  %245 = icmp sgt i64 %222, %220
  br i1 %245, label %221, label %246

246:                                              ; preds = %243, %211, %208, %233
  %247 = phi i32 [ %234, %233 ], [ %13, %208 ], [ %13, %211 ], [ %13, %243 ]
  %248 = sub nsw i32 %91, %53
  %249 = shl i32 %248, 4
  %250 = sext i32 %249 to i64
  %251 = sub nsw i32 %169, %131
  %252 = mul i32 %251, 12
  %253 = sext i32 %252 to i64
  %254 = sub nsw i32 %247, %209
  %255 = shl i32 %254, 3
  %256 = sext i32 %255 to i64
  %257 = mul nsw i64 %250, %250
  %258 = mul nsw i64 %253, %253
  %259 = add nuw nsw i64 %258, %257
  %260 = mul nsw i64 %256, %256
  %261 = add nuw nsw i64 %259, %260
  %262 = getelementptr inbounds i8, ptr %1, i64 24
  store i64 %261, ptr %262, align 8, !tbaa !55
  %263 = icmp sgt i32 %53, %91
  br i1 %263, label %302, label %264

264:                                              ; preds = %246
  %265 = icmp sgt i32 %131, %169
  %266 = sext i32 %209 to i64
  %267 = icmp sgt i32 %209, %247
  br i1 %265, label %302, label %268

268:                                              ; preds = %264
  %269 = sext i32 %131 to i64
  %270 = add i32 %169, 1
  %271 = sext i32 %53 to i64
  %272 = add i32 %91, 1
  br label %273

273:                                              ; preds = %268, %297
  %274 = phi i64 [ %271, %268 ], [ %299, %297 ]
  %275 = phi i64 [ 0, %268 ], [ %298, %297 ]
  %276 = getelementptr inbounds ptr, ptr %0, i64 %274
  %277 = load ptr, ptr %276, align 8, !tbaa !31
  br i1 %267, label %297, label %278

278:                                              ; preds = %273, %293
  %279 = phi i64 [ %294, %293 ], [ %269, %273 ]
  %280 = phi i64 [ %289, %293 ], [ %275, %273 ]
  %281 = getelementptr inbounds [32 x i16], ptr %277, i64 %279, i64 %266
  br label %282

282:                                              ; preds = %278, %282
  %283 = phi i64 [ %280, %278 ], [ %289, %282 ]
  %284 = phi ptr [ %281, %278 ], [ %291, %282 ]
  %285 = phi i32 [ %209, %278 ], [ %290, %282 ]
  %286 = load i16, ptr %284, align 2, !tbaa !45
  %287 = icmp ne i16 %286, 0
  %288 = zext i1 %287 to i64
  %289 = add nsw i64 %283, %288
  %290 = add i32 %285, 1
  %291 = getelementptr inbounds i8, ptr %284, i64 2
  %292 = icmp eq i32 %285, %247
  br i1 %292, label %293, label %282

293:                                              ; preds = %282
  %294 = add nsw i64 %279, 1
  %295 = trunc i64 %294 to i32
  %296 = icmp eq i32 %270, %295
  br i1 %296, label %297, label %278

297:                                              ; preds = %293, %273
  %298 = phi i64 [ %275, %273 ], [ %289, %293 ]
  %299 = add nsw i64 %274, 1
  %300 = trunc i64 %299 to i32
  %301 = icmp eq i32 %272, %300
  br i1 %301, label %302, label %273

302:                                              ; preds = %297, %264, %246
  %303 = phi i64 [ 0, %246 ], [ 0, %264 ], [ %298, %297 ]
  %304 = getelementptr inbounds i8, ptr %1, i64 32
  store i64 %303, ptr %304, align 8, !tbaa !54
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @fill_inverse_cmap(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) unnamed_addr #3 {
  %5 = alloca [128 x i64], align 8
  %6 = alloca [256 x i64], align 8
  %7 = alloca [256 x i8], align 1
  %8 = alloca [128 x i8], align 1
  %9 = getelementptr inbounds i8, ptr %0, i64 624
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds i8, ptr %10, i64 48
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #8
  %13 = shl i32 %1, 3
  %14 = and i32 %13, -32
  %15 = or disjoint i32 %14, 4
  %16 = shl i32 %2, 2
  %17 = and i32 %16, -32
  %18 = or disjoint i32 %17, 2
  %19 = shl i32 %3, 3
  %20 = and i32 %19, -32
  %21 = or disjoint i32 %20, 4
  %22 = getelementptr inbounds i8, ptr %0, i64 156
  %23 = load i32, ptr %22, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #8
  %24 = or i32 %13, 28
  %25 = add nuw nsw i32 %15, %24
  %26 = lshr exact i32 %25, 1
  %27 = or i32 %16, 30
  %28 = add nuw nsw i32 %18, %27
  %29 = lshr exact i32 %28, 1
  %30 = or i32 %19, 28
  %31 = add nuw nsw i32 %21, %30
  %32 = lshr exact i32 %31, 1
  %33 = icmp sgt i32 %23, 0
  br i1 %33, label %34, label %182

34:                                               ; preds = %4
  %35 = getelementptr inbounds i8, ptr %0, i64 160
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  %38 = getelementptr inbounds i8, ptr %36, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !31
  %40 = getelementptr inbounds i8, ptr %36, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !31
  %42 = zext nneg i32 %23 to i64
  br label %43

43:                                               ; preds = %159, %34
  %44 = phi i64 [ 0, %34 ], [ %165, %159 ]
  %45 = phi i64 [ 2147483647, %34 ], [ %164, %159 ]
  %46 = getelementptr inbounds i8, ptr %37, i64 %44
  %47 = load i8, ptr %46, align 1, !tbaa !35
  %48 = zext i8 %47 to i32
  %49 = icmp sgt i32 %15, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = sub nsw i32 %48, %15
  %52 = shl nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, %53
  %55 = sub nsw i32 %48, %24
  %56 = shl nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, %57
  br label %82

59:                                               ; preds = %43
  %60 = icmp slt i32 %24, %48
  br i1 %60, label %61, label %70

61:                                               ; preds = %59
  %62 = sub nsw i32 %48, %24
  %63 = shl nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, %64
  %66 = sub nsw i32 %48, %15
  %67 = shl nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %68, %68
  br label %82

70:                                               ; preds = %59
  %71 = icmp ult i32 %26, %48
  br i1 %71, label %77, label %72

72:                                               ; preds = %70
  %73 = sub nsw i32 %48, %24
  %74 = shl nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, %75
  br label %82

77:                                               ; preds = %70
  %78 = sub nsw i32 %48, %15
  %79 = shl nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %80, %80
  br label %82

82:                                               ; preds = %77, %72, %61, %50
  %83 = phi i64 [ %54, %50 ], [ %65, %61 ], [ 0, %72 ], [ 0, %77 ]
  %84 = phi i64 [ %58, %50 ], [ %69, %61 ], [ %76, %72 ], [ %81, %77 ]
  %85 = getelementptr inbounds i8, ptr %39, i64 %44
  %86 = load i8, ptr %85, align 1, !tbaa !35
  %87 = zext i8 %86 to i32
  %88 = icmp sgt i32 %18, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = sub nsw i32 %87, %18
  %91 = mul nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, %92
  %94 = add nuw nsw i64 %93, %83
  %95 = sub nsw i32 %87, %27
  %96 = mul nsw i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %97, %97
  br label %123

99:                                               ; preds = %82
  %100 = icmp slt i32 %27, %87
  br i1 %100, label %101, label %111

101:                                              ; preds = %99
  %102 = sub nsw i32 %87, %27
  %103 = mul nsw i32 %102, 3
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %104
  %106 = add nuw nsw i64 %105, %83
  %107 = sub nsw i32 %87, %18
  %108 = mul nsw i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = mul nsw i64 %109, %109
  br label %123

111:                                              ; preds = %99
  %112 = icmp ult i32 %29, %87
  br i1 %112, label %118, label %113

113:                                              ; preds = %111
  %114 = sub nsw i32 %87, %27
  %115 = mul nsw i32 %114, 3
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %116, %116
  br label %123

118:                                              ; preds = %111
  %119 = sub nsw i32 %87, %18
  %120 = mul nsw i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = mul nsw i64 %121, %121
  br label %123

123:                                              ; preds = %118, %113, %101, %89
  %124 = phi i64 [ %94, %89 ], [ %106, %101 ], [ %83, %113 ], [ %83, %118 ]
  %125 = phi i64 [ %98, %89 ], [ %110, %101 ], [ %117, %113 ], [ %122, %118 ]
  %126 = add nuw nsw i64 %125, %84
  %127 = getelementptr inbounds i8, ptr %41, i64 %44
  %128 = load i8, ptr %127, align 1, !tbaa !35
  %129 = zext i8 %128 to i32
  %130 = icmp sgt i32 %21, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = sub nsw i32 %129, %21
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, %133
  %135 = add nsw i64 %134, %124
  %136 = sub nsw i32 %129, %30
  %137 = sext i32 %136 to i64
  %138 = mul nsw i64 %137, %137
  br label %159

139:                                              ; preds = %123
  %140 = icmp slt i32 %30, %129
  br i1 %140, label %141, label %149

141:                                              ; preds = %139
  %142 = sub nsw i32 %129, %30
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, %143
  %145 = add nsw i64 %144, %124
  %146 = sub nsw i32 %129, %21
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %147, %147
  br label %159

149:                                              ; preds = %139
  %150 = icmp ult i32 %32, %129
  br i1 %150, label %155, label %151

151:                                              ; preds = %149
  %152 = sub nsw i32 %129, %30
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, %153
  br label %159

155:                                              ; preds = %149
  %156 = sub nsw i32 %129, %21
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %157, %157
  br label %159

159:                                              ; preds = %155, %151, %141, %131
  %160 = phi i64 [ %135, %131 ], [ %145, %141 ], [ %124, %151 ], [ %124, %155 ]
  %161 = phi i64 [ %138, %131 ], [ %148, %141 ], [ %154, %151 ], [ %158, %155 ]
  %162 = add nuw nsw i64 %126, %161
  %163 = getelementptr inbounds [256 x i64], ptr %6, i64 0, i64 %44
  store i64 %160, ptr %163, align 8, !tbaa !59
  %164 = tail call i64 @llvm.smin.i64(i64 %162, i64 %45)
  %165 = add nuw nsw i64 %44, 1
  %166 = icmp eq i64 %165, %42
  br i1 %166, label %167, label %43

167:                                              ; preds = %159, %178
  %168 = phi i64 [ %180, %178 ], [ 0, %159 ]
  %169 = phi i32 [ %179, %178 ], [ 0, %159 ]
  %170 = getelementptr inbounds [256 x i64], ptr %6, i64 0, i64 %168
  %171 = load i64, ptr %170, align 8, !tbaa !59
  %172 = icmp sgt i64 %171, %164
  br i1 %172, label %178, label %173

173:                                              ; preds = %167
  %174 = trunc i64 %168 to i8
  %175 = add nsw i32 %169, 1
  %176 = sext i32 %169 to i64
  %177 = getelementptr inbounds i8, ptr %7, i64 %176
  store i8 %174, ptr %177, align 1, !tbaa !35
  br label %178

178:                                              ; preds = %173, %167
  %179 = phi i32 [ %175, %173 ], [ %169, %167 ]
  %180 = add nuw nsw i64 %168, 1
  %181 = icmp eq i64 %180, %42
  br i1 %181, label %182, label %167

182:                                              ; preds = %178, %4
  %183 = phi i32 [ 0, %4 ], [ %179, %178 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #8
  %184 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 2147483647, ptr %5, align 8, !tbaa !59
  %185 = getelementptr inbounds i8, ptr %5, i64 16
  store i64 2147483647, ptr %184, align 8, !tbaa !59
  %186 = getelementptr inbounds i8, ptr %5, i64 24
  store i64 2147483647, ptr %185, align 8, !tbaa !59
  %187 = getelementptr inbounds i8, ptr %5, i64 32
  store i64 2147483647, ptr %186, align 8, !tbaa !59
  %188 = getelementptr inbounds i8, ptr %5, i64 40
  store i64 2147483647, ptr %187, align 8, !tbaa !59
  %189 = getelementptr inbounds i8, ptr %5, i64 48
  store i64 2147483647, ptr %188, align 8, !tbaa !59
  %190 = getelementptr inbounds i8, ptr %5, i64 56
  store i64 2147483647, ptr %189, align 8, !tbaa !59
  %191 = getelementptr inbounds i8, ptr %5, i64 64
  store i64 2147483647, ptr %190, align 8, !tbaa !59
  %192 = getelementptr inbounds i8, ptr %5, i64 72
  store i64 2147483647, ptr %191, align 8, !tbaa !59
  %193 = getelementptr inbounds i8, ptr %5, i64 80
  store i64 2147483647, ptr %192, align 8, !tbaa !59
  %194 = getelementptr inbounds i8, ptr %5, i64 88
  store i64 2147483647, ptr %193, align 8, !tbaa !59
  %195 = getelementptr inbounds i8, ptr %5, i64 96
  store i64 2147483647, ptr %194, align 8, !tbaa !59
  %196 = getelementptr inbounds i8, ptr %5, i64 104
  store i64 2147483647, ptr %195, align 8, !tbaa !59
  %197 = getelementptr inbounds i8, ptr %5, i64 112
  store i64 2147483647, ptr %196, align 8, !tbaa !59
  %198 = getelementptr inbounds i8, ptr %5, i64 120
  store i64 2147483647, ptr %197, align 8, !tbaa !59
  %199 = getelementptr inbounds i8, ptr %5, i64 128
  store i64 2147483647, ptr %198, align 8, !tbaa !59
  %200 = getelementptr inbounds i8, ptr %5, i64 136
  store i64 2147483647, ptr %199, align 8, !tbaa !59
  %201 = getelementptr inbounds i8, ptr %5, i64 144
  store i64 2147483647, ptr %200, align 8, !tbaa !59
  %202 = getelementptr inbounds i8, ptr %5, i64 152
  store i64 2147483647, ptr %201, align 8, !tbaa !59
  %203 = getelementptr inbounds i8, ptr %5, i64 160
  store i64 2147483647, ptr %202, align 8, !tbaa !59
  %204 = getelementptr inbounds i8, ptr %5, i64 168
  store i64 2147483647, ptr %203, align 8, !tbaa !59
  %205 = getelementptr inbounds i8, ptr %5, i64 176
  store i64 2147483647, ptr %204, align 8, !tbaa !59
  %206 = getelementptr inbounds i8, ptr %5, i64 184
  store i64 2147483647, ptr %205, align 8, !tbaa !59
  %207 = getelementptr inbounds i8, ptr %5, i64 192
  store i64 2147483647, ptr %206, align 8, !tbaa !59
  %208 = getelementptr inbounds i8, ptr %5, i64 200
  store i64 2147483647, ptr %207, align 8, !tbaa !59
  %209 = getelementptr inbounds i8, ptr %5, i64 208
  store i64 2147483647, ptr %208, align 8, !tbaa !59
  %210 = getelementptr inbounds i8, ptr %5, i64 216
  store i64 2147483647, ptr %209, align 8, !tbaa !59
  %211 = getelementptr inbounds i8, ptr %5, i64 224
  store i64 2147483647, ptr %210, align 8, !tbaa !59
  %212 = getelementptr inbounds i8, ptr %5, i64 232
  store i64 2147483647, ptr %211, align 8, !tbaa !59
  %213 = getelementptr inbounds i8, ptr %5, i64 240
  store i64 2147483647, ptr %212, align 8, !tbaa !59
  %214 = getelementptr inbounds i8, ptr %5, i64 248
  store i64 2147483647, ptr %213, align 8, !tbaa !59
  %215 = getelementptr inbounds i8, ptr %5, i64 256
  store i64 2147483647, ptr %214, align 8, !tbaa !59
  %216 = getelementptr inbounds i8, ptr %5, i64 264
  store i64 2147483647, ptr %215, align 8, !tbaa !59
  %217 = getelementptr inbounds i8, ptr %5, i64 272
  store i64 2147483647, ptr %216, align 8, !tbaa !59
  %218 = getelementptr inbounds i8, ptr %5, i64 280
  store i64 2147483647, ptr %217, align 8, !tbaa !59
  %219 = getelementptr inbounds i8, ptr %5, i64 288
  store i64 2147483647, ptr %218, align 8, !tbaa !59
  %220 = getelementptr inbounds i8, ptr %5, i64 296
  store i64 2147483647, ptr %219, align 8, !tbaa !59
  %221 = getelementptr inbounds i8, ptr %5, i64 304
  store i64 2147483647, ptr %220, align 8, !tbaa !59
  %222 = getelementptr inbounds i8, ptr %5, i64 312
  store i64 2147483647, ptr %221, align 8, !tbaa !59
  %223 = getelementptr inbounds i8, ptr %5, i64 320
  store i64 2147483647, ptr %222, align 8, !tbaa !59
  %224 = getelementptr inbounds i8, ptr %5, i64 328
  store i64 2147483647, ptr %223, align 8, !tbaa !59
  %225 = getelementptr inbounds i8, ptr %5, i64 336
  store i64 2147483647, ptr %224, align 8, !tbaa !59
  %226 = getelementptr inbounds i8, ptr %5, i64 344
  store i64 2147483647, ptr %225, align 8, !tbaa !59
  %227 = getelementptr inbounds i8, ptr %5, i64 352
  store i64 2147483647, ptr %226, align 8, !tbaa !59
  %228 = getelementptr inbounds i8, ptr %5, i64 360
  store i64 2147483647, ptr %227, align 8, !tbaa !59
  %229 = getelementptr inbounds i8, ptr %5, i64 368
  store i64 2147483647, ptr %228, align 8, !tbaa !59
  %230 = getelementptr inbounds i8, ptr %5, i64 376
  store i64 2147483647, ptr %229, align 8, !tbaa !59
  %231 = getelementptr inbounds i8, ptr %5, i64 384
  store i64 2147483647, ptr %230, align 8, !tbaa !59
  %232 = getelementptr inbounds i8, ptr %5, i64 392
  store i64 2147483647, ptr %231, align 8, !tbaa !59
  %233 = getelementptr inbounds i8, ptr %5, i64 400
  store i64 2147483647, ptr %232, align 8, !tbaa !59
  %234 = getelementptr inbounds i8, ptr %5, i64 408
  store i64 2147483647, ptr %233, align 8, !tbaa !59
  %235 = getelementptr inbounds i8, ptr %5, i64 416
  store i64 2147483647, ptr %234, align 8, !tbaa !59
  %236 = getelementptr inbounds i8, ptr %5, i64 424
  store i64 2147483647, ptr %235, align 8, !tbaa !59
  %237 = getelementptr inbounds i8, ptr %5, i64 432
  store i64 2147483647, ptr %236, align 8, !tbaa !59
  %238 = getelementptr inbounds i8, ptr %5, i64 440
  store i64 2147483647, ptr %237, align 8, !tbaa !59
  %239 = getelementptr inbounds i8, ptr %5, i64 448
  store i64 2147483647, ptr %238, align 8, !tbaa !59
  %240 = getelementptr inbounds i8, ptr %5, i64 456
  store i64 2147483647, ptr %239, align 8, !tbaa !59
  %241 = getelementptr inbounds i8, ptr %5, i64 464
  store i64 2147483647, ptr %240, align 8, !tbaa !59
  %242 = getelementptr inbounds i8, ptr %5, i64 472
  store i64 2147483647, ptr %241, align 8, !tbaa !59
  %243 = getelementptr inbounds i8, ptr %5, i64 480
  store i64 2147483647, ptr %242, align 8, !tbaa !59
  %244 = getelementptr inbounds i8, ptr %5, i64 488
  store i64 2147483647, ptr %243, align 8, !tbaa !59
  %245 = getelementptr inbounds i8, ptr %5, i64 496
  store i64 2147483647, ptr %244, align 8, !tbaa !59
  %246 = getelementptr inbounds i8, ptr %5, i64 504
  store i64 2147483647, ptr %245, align 8, !tbaa !59
  %247 = getelementptr inbounds i8, ptr %5, i64 512
  store i64 2147483647, ptr %246, align 8, !tbaa !59
  %248 = getelementptr inbounds i8, ptr %5, i64 520
  store i64 2147483647, ptr %247, align 8, !tbaa !59
  %249 = getelementptr inbounds i8, ptr %5, i64 528
  store i64 2147483647, ptr %248, align 8, !tbaa !59
  %250 = getelementptr inbounds i8, ptr %5, i64 536
  store i64 2147483647, ptr %249, align 8, !tbaa !59
  %251 = getelementptr inbounds i8, ptr %5, i64 544
  store i64 2147483647, ptr %250, align 8, !tbaa !59
  %252 = getelementptr inbounds i8, ptr %5, i64 552
  store i64 2147483647, ptr %251, align 8, !tbaa !59
  %253 = getelementptr inbounds i8, ptr %5, i64 560
  store i64 2147483647, ptr %252, align 8, !tbaa !59
  %254 = getelementptr inbounds i8, ptr %5, i64 568
  store i64 2147483647, ptr %253, align 8, !tbaa !59
  %255 = getelementptr inbounds i8, ptr %5, i64 576
  store i64 2147483647, ptr %254, align 8, !tbaa !59
  %256 = getelementptr inbounds i8, ptr %5, i64 584
  store i64 2147483647, ptr %255, align 8, !tbaa !59
  %257 = getelementptr inbounds i8, ptr %5, i64 592
  store i64 2147483647, ptr %256, align 8, !tbaa !59
  %258 = getelementptr inbounds i8, ptr %5, i64 600
  store i64 2147483647, ptr %257, align 8, !tbaa !59
  %259 = getelementptr inbounds i8, ptr %5, i64 608
  store i64 2147483647, ptr %258, align 8, !tbaa !59
  %260 = getelementptr inbounds i8, ptr %5, i64 616
  store i64 2147483647, ptr %259, align 8, !tbaa !59
  %261 = getelementptr inbounds i8, ptr %5, i64 624
  store i64 2147483647, ptr %260, align 8, !tbaa !59
  %262 = getelementptr inbounds i8, ptr %5, i64 632
  store i64 2147483647, ptr %261, align 8, !tbaa !59
  %263 = getelementptr inbounds i8, ptr %5, i64 640
  store i64 2147483647, ptr %262, align 8, !tbaa !59
  %264 = getelementptr inbounds i8, ptr %5, i64 648
  store i64 2147483647, ptr %263, align 8, !tbaa !59
  %265 = getelementptr inbounds i8, ptr %5, i64 656
  store i64 2147483647, ptr %264, align 8, !tbaa !59
  %266 = getelementptr inbounds i8, ptr %5, i64 664
  store i64 2147483647, ptr %265, align 8, !tbaa !59
  %267 = getelementptr inbounds i8, ptr %5, i64 672
  store i64 2147483647, ptr %266, align 8, !tbaa !59
  %268 = getelementptr inbounds i8, ptr %5, i64 680
  store i64 2147483647, ptr %267, align 8, !tbaa !59
  %269 = getelementptr inbounds i8, ptr %5, i64 688
  store i64 2147483647, ptr %268, align 8, !tbaa !59
  %270 = getelementptr inbounds i8, ptr %5, i64 696
  store i64 2147483647, ptr %269, align 8, !tbaa !59
  %271 = getelementptr inbounds i8, ptr %5, i64 704
  store i64 2147483647, ptr %270, align 8, !tbaa !59
  %272 = getelementptr inbounds i8, ptr %5, i64 712
  store i64 2147483647, ptr %271, align 8, !tbaa !59
  %273 = getelementptr inbounds i8, ptr %5, i64 720
  store i64 2147483647, ptr %272, align 8, !tbaa !59
  %274 = getelementptr inbounds i8, ptr %5, i64 728
  store i64 2147483647, ptr %273, align 8, !tbaa !59
  %275 = getelementptr inbounds i8, ptr %5, i64 736
  store i64 2147483647, ptr %274, align 8, !tbaa !59
  %276 = getelementptr inbounds i8, ptr %5, i64 744
  store i64 2147483647, ptr %275, align 8, !tbaa !59
  %277 = getelementptr inbounds i8, ptr %5, i64 752
  store i64 2147483647, ptr %276, align 8, !tbaa !59
  %278 = getelementptr inbounds i8, ptr %5, i64 760
  store i64 2147483647, ptr %277, align 8, !tbaa !59
  %279 = getelementptr inbounds i8, ptr %5, i64 768
  store i64 2147483647, ptr %278, align 8, !tbaa !59
  %280 = getelementptr inbounds i8, ptr %5, i64 776
  store i64 2147483647, ptr %279, align 8, !tbaa !59
  %281 = getelementptr inbounds i8, ptr %5, i64 784
  store i64 2147483647, ptr %280, align 8, !tbaa !59
  %282 = getelementptr inbounds i8, ptr %5, i64 792
  store i64 2147483647, ptr %281, align 8, !tbaa !59
  %283 = getelementptr inbounds i8, ptr %5, i64 800
  store i64 2147483647, ptr %282, align 8, !tbaa !59
  %284 = getelementptr inbounds i8, ptr %5, i64 808
  store i64 2147483647, ptr %283, align 8, !tbaa !59
  %285 = getelementptr inbounds i8, ptr %5, i64 816
  store i64 2147483647, ptr %284, align 8, !tbaa !59
  %286 = getelementptr inbounds i8, ptr %5, i64 824
  store i64 2147483647, ptr %285, align 8, !tbaa !59
  %287 = getelementptr inbounds i8, ptr %5, i64 832
  store i64 2147483647, ptr %286, align 8, !tbaa !59
  %288 = getelementptr inbounds i8, ptr %5, i64 840
  store i64 2147483647, ptr %287, align 8, !tbaa !59
  %289 = getelementptr inbounds i8, ptr %5, i64 848
  store i64 2147483647, ptr %288, align 8, !tbaa !59
  %290 = getelementptr inbounds i8, ptr %5, i64 856
  store i64 2147483647, ptr %289, align 8, !tbaa !59
  %291 = getelementptr inbounds i8, ptr %5, i64 864
  store i64 2147483647, ptr %290, align 8, !tbaa !59
  %292 = getelementptr inbounds i8, ptr %5, i64 872
  store i64 2147483647, ptr %291, align 8, !tbaa !59
  %293 = getelementptr inbounds i8, ptr %5, i64 880
  store i64 2147483647, ptr %292, align 8, !tbaa !59
  %294 = getelementptr inbounds i8, ptr %5, i64 888
  store i64 2147483647, ptr %293, align 8, !tbaa !59
  %295 = getelementptr inbounds i8, ptr %5, i64 896
  store i64 2147483647, ptr %294, align 8, !tbaa !59
  %296 = getelementptr inbounds i8, ptr %5, i64 904
  store i64 2147483647, ptr %295, align 8, !tbaa !59
  %297 = getelementptr inbounds i8, ptr %5, i64 912
  store i64 2147483647, ptr %296, align 8, !tbaa !59
  %298 = getelementptr inbounds i8, ptr %5, i64 920
  store i64 2147483647, ptr %297, align 8, !tbaa !59
  %299 = getelementptr inbounds i8, ptr %5, i64 928
  store i64 2147483647, ptr %298, align 8, !tbaa !59
  %300 = getelementptr inbounds i8, ptr %5, i64 936
  store i64 2147483647, ptr %299, align 8, !tbaa !59
  %301 = getelementptr inbounds i8, ptr %5, i64 944
  store i64 2147483647, ptr %300, align 8, !tbaa !59
  %302 = getelementptr inbounds i8, ptr %5, i64 952
  store i64 2147483647, ptr %301, align 8, !tbaa !59
  %303 = getelementptr inbounds i8, ptr %5, i64 960
  store i64 2147483647, ptr %302, align 8, !tbaa !59
  %304 = getelementptr inbounds i8, ptr %5, i64 968
  store i64 2147483647, ptr %303, align 8, !tbaa !59
  %305 = getelementptr inbounds i8, ptr %5, i64 976
  store i64 2147483647, ptr %304, align 8, !tbaa !59
  %306 = getelementptr inbounds i8, ptr %5, i64 984
  store i64 2147483647, ptr %305, align 8, !tbaa !59
  %307 = getelementptr inbounds i8, ptr %5, i64 992
  store i64 2147483647, ptr %306, align 8, !tbaa !59
  %308 = getelementptr inbounds i8, ptr %5, i64 1000
  store i64 2147483647, ptr %307, align 8, !tbaa !59
  %309 = getelementptr inbounds i8, ptr %5, i64 1008
  store i64 2147483647, ptr %308, align 8, !tbaa !59
  %310 = getelementptr inbounds i8, ptr %5, i64 1016
  store i64 2147483647, ptr %309, align 8, !tbaa !59
  store i64 2147483647, ptr %310, align 8, !tbaa !59
  %311 = icmp sgt i32 %183, 0
  br i1 %311, label %312, label %598

312:                                              ; preds = %182
  %313 = getelementptr inbounds i8, ptr %0, i64 160
  %314 = zext nneg i32 %183 to i64
  %315 = load ptr, ptr %313, align 8, !tbaa !46
  %316 = getelementptr inbounds i8, ptr %315, i64 8
  %317 = load ptr, ptr %316, align 8, !tbaa !31
  %318 = getelementptr inbounds i8, ptr %315, i64 16
  %319 = load ptr, ptr %318, align 8, !tbaa !31
  br label %320

320:                                              ; preds = %595, %312
  %321 = phi i64 [ 0, %312 ], [ %596, %595 ]
  %322 = getelementptr inbounds i8, ptr %7, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !35
  %324 = load ptr, ptr %315, align 8, !tbaa !31
  %325 = zext i8 %323 to i64
  %326 = getelementptr inbounds i8, ptr %324, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !35
  %328 = zext i8 %327 to i32
  %329 = sub nsw i32 %15, %328
  %330 = shl nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = mul nsw i64 %331, %331
  %333 = getelementptr inbounds i8, ptr %317, i64 %325
  %334 = load i8, ptr %333, align 1, !tbaa !35
  %335 = zext i8 %334 to i32
  %336 = sub nsw i32 %18, %335
  %337 = mul nsw i32 %336, 3
  %338 = sext i32 %337 to i64
  %339 = mul nsw i64 %338, %338
  %340 = add nuw nsw i64 %339, %332
  %341 = getelementptr inbounds i8, ptr %319, i64 %325
  %342 = load i8, ptr %341, align 1, !tbaa !35
  %343 = zext i8 %342 to i32
  %344 = sub nsw i32 %21, %343
  %345 = sext i32 %344 to i64
  %346 = mul nsw i64 %345, %345
  %347 = add nuw nsw i64 %340, %346
  %348 = shl nsw i64 %331, 5
  %349 = add nsw i64 %348, 256
  %350 = mul nsw i64 %338, 24
  %351 = add nsw i64 %350, 144
  %352 = shl nsw i64 %345, 4
  %353 = add nsw i64 %352, 64
  %354 = add nsw i64 %352, 192
  %355 = add nsw i64 %352, 320
  %356 = add nsw i64 %350, 432
  %357 = add nsw i64 %350, 720
  %358 = add nsw i64 %350, 1008
  %359 = add nsw i64 %350, 1296
  %360 = add nsw i64 %350, 1584
  %361 = add nsw i64 %350, 1872
  br label %362

362:                                              ; preds = %588, %320
  %363 = phi i32 [ 3, %320 ], [ %593, %588 ]
  %364 = phi i64 [ %349, %320 ], [ %592, %588 ]
  %365 = phi i64 [ %347, %320 ], [ %591, %588 ]
  %366 = phi ptr [ %8, %320 ], [ %590, %588 ]
  %367 = phi ptr [ %5, %320 ], [ %589, %588 ]
  %368 = load i64, ptr %367, align 8, !tbaa !59
  %369 = icmp slt i64 %365, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %362
  store i64 %365, ptr %367, align 8, !tbaa !59
  store i8 %323, ptr %366, align 1, !tbaa !35
  br label %371

371:                                              ; preds = %370, %362
  %372 = add nsw i64 %365, %353
  %373 = getelementptr inbounds i8, ptr %367, i64 8
  %374 = load i64, ptr %373, align 8, !tbaa !59
  %375 = icmp slt i64 %372, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %371
  %377 = getelementptr inbounds i8, ptr %366, i64 1
  store i64 %372, ptr %373, align 8, !tbaa !59
  store i8 %323, ptr %377, align 1, !tbaa !35
  br label %378

378:                                              ; preds = %376, %371
  %379 = add nsw i64 %372, %354
  %380 = getelementptr inbounds i8, ptr %367, i64 16
  %381 = load i64, ptr %380, align 8, !tbaa !59
  %382 = icmp slt i64 %379, %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %378
  %384 = getelementptr inbounds i8, ptr %366, i64 2
  store i64 %379, ptr %380, align 8, !tbaa !59
  store i8 %323, ptr %384, align 1, !tbaa !35
  br label %385

385:                                              ; preds = %383, %378
  %386 = add nsw i64 %379, %355
  %387 = getelementptr inbounds i8, ptr %367, i64 24
  %388 = load i64, ptr %387, align 8, !tbaa !59
  %389 = icmp slt i64 %386, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %385
  %391 = getelementptr inbounds i8, ptr %366, i64 3
  store i64 %386, ptr %387, align 8, !tbaa !59
  store i8 %323, ptr %391, align 1, !tbaa !35
  br label %392

392:                                              ; preds = %390, %385
  %393 = getelementptr inbounds i8, ptr %367, i64 32
  %394 = add nsw i64 %351, %365
  %395 = load i64, ptr %393, align 8, !tbaa !59
  %396 = icmp slt i64 %394, %395
  br i1 %396, label %397, label %399

397:                                              ; preds = %392
  %398 = getelementptr inbounds i8, ptr %366, i64 4
  store i64 %394, ptr %393, align 8, !tbaa !59
  store i8 %323, ptr %398, align 1, !tbaa !35
  br label %399

399:                                              ; preds = %397, %392
  %400 = add nsw i64 %394, %353
  %401 = getelementptr inbounds i8, ptr %367, i64 40
  %402 = load i64, ptr %401, align 8, !tbaa !59
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %404, label %406

404:                                              ; preds = %399
  %405 = getelementptr inbounds i8, ptr %366, i64 5
  store i64 %400, ptr %401, align 8, !tbaa !59
  store i8 %323, ptr %405, align 1, !tbaa !35
  br label %406

406:                                              ; preds = %404, %399
  %407 = add nsw i64 %400, %354
  %408 = getelementptr inbounds i8, ptr %367, i64 48
  %409 = load i64, ptr %408, align 8, !tbaa !59
  %410 = icmp slt i64 %407, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %406
  %412 = getelementptr inbounds i8, ptr %366, i64 6
  store i64 %407, ptr %408, align 8, !tbaa !59
  store i8 %323, ptr %412, align 1, !tbaa !35
  br label %413

413:                                              ; preds = %411, %406
  %414 = add nsw i64 %407, %355
  %415 = getelementptr inbounds i8, ptr %367, i64 56
  %416 = load i64, ptr %415, align 8, !tbaa !59
  %417 = icmp slt i64 %414, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %413
  %419 = getelementptr inbounds i8, ptr %366, i64 7
  store i64 %414, ptr %415, align 8, !tbaa !59
  store i8 %323, ptr %419, align 1, !tbaa !35
  br label %420

420:                                              ; preds = %418, %413
  %421 = getelementptr inbounds i8, ptr %367, i64 64
  %422 = add nsw i64 %356, %394
  %423 = load i64, ptr %421, align 8, !tbaa !59
  %424 = icmp slt i64 %422, %423
  br i1 %424, label %425, label %427

425:                                              ; preds = %420
  %426 = getelementptr inbounds i8, ptr %366, i64 8
  store i64 %422, ptr %421, align 8, !tbaa !59
  store i8 %323, ptr %426, align 1, !tbaa !35
  br label %427

427:                                              ; preds = %425, %420
  %428 = add nsw i64 %422, %353
  %429 = getelementptr inbounds i8, ptr %367, i64 72
  %430 = load i64, ptr %429, align 8, !tbaa !59
  %431 = icmp slt i64 %428, %430
  br i1 %431, label %432, label %434

432:                                              ; preds = %427
  %433 = getelementptr inbounds i8, ptr %366, i64 9
  store i64 %428, ptr %429, align 8, !tbaa !59
  store i8 %323, ptr %433, align 1, !tbaa !35
  br label %434

434:                                              ; preds = %432, %427
  %435 = add nsw i64 %428, %354
  %436 = getelementptr inbounds i8, ptr %367, i64 80
  %437 = load i64, ptr %436, align 8, !tbaa !59
  %438 = icmp slt i64 %435, %437
  br i1 %438, label %439, label %441

439:                                              ; preds = %434
  %440 = getelementptr inbounds i8, ptr %366, i64 10
  store i64 %435, ptr %436, align 8, !tbaa !59
  store i8 %323, ptr %440, align 1, !tbaa !35
  br label %441

441:                                              ; preds = %439, %434
  %442 = add nsw i64 %435, %355
  %443 = getelementptr inbounds i8, ptr %367, i64 88
  %444 = load i64, ptr %443, align 8, !tbaa !59
  %445 = icmp slt i64 %442, %444
  br i1 %445, label %446, label %448

446:                                              ; preds = %441
  %447 = getelementptr inbounds i8, ptr %366, i64 11
  store i64 %442, ptr %443, align 8, !tbaa !59
  store i8 %323, ptr %447, align 1, !tbaa !35
  br label %448

448:                                              ; preds = %446, %441
  %449 = getelementptr inbounds i8, ptr %367, i64 96
  %450 = add nsw i64 %357, %422
  %451 = load i64, ptr %449, align 8, !tbaa !59
  %452 = icmp slt i64 %450, %451
  br i1 %452, label %453, label %455

453:                                              ; preds = %448
  %454 = getelementptr inbounds i8, ptr %366, i64 12
  store i64 %450, ptr %449, align 8, !tbaa !59
  store i8 %323, ptr %454, align 1, !tbaa !35
  br label %455

455:                                              ; preds = %453, %448
  %456 = add nsw i64 %450, %353
  %457 = getelementptr inbounds i8, ptr %367, i64 104
  %458 = load i64, ptr %457, align 8, !tbaa !59
  %459 = icmp slt i64 %456, %458
  br i1 %459, label %460, label %462

460:                                              ; preds = %455
  %461 = getelementptr inbounds i8, ptr %366, i64 13
  store i64 %456, ptr %457, align 8, !tbaa !59
  store i8 %323, ptr %461, align 1, !tbaa !35
  br label %462

462:                                              ; preds = %460, %455
  %463 = add nsw i64 %456, %354
  %464 = getelementptr inbounds i8, ptr %367, i64 112
  %465 = load i64, ptr %464, align 8, !tbaa !59
  %466 = icmp slt i64 %463, %465
  br i1 %466, label %467, label %469

467:                                              ; preds = %462
  %468 = getelementptr inbounds i8, ptr %366, i64 14
  store i64 %463, ptr %464, align 8, !tbaa !59
  store i8 %323, ptr %468, align 1, !tbaa !35
  br label %469

469:                                              ; preds = %467, %462
  %470 = add nsw i64 %463, %355
  %471 = getelementptr inbounds i8, ptr %367, i64 120
  %472 = load i64, ptr %471, align 8, !tbaa !59
  %473 = icmp slt i64 %470, %472
  br i1 %473, label %474, label %476

474:                                              ; preds = %469
  %475 = getelementptr inbounds i8, ptr %366, i64 15
  store i64 %470, ptr %471, align 8, !tbaa !59
  store i8 %323, ptr %475, align 1, !tbaa !35
  br label %476

476:                                              ; preds = %474, %469
  %477 = getelementptr inbounds i8, ptr %367, i64 128
  %478 = add nsw i64 %358, %450
  %479 = load i64, ptr %477, align 8, !tbaa !59
  %480 = icmp slt i64 %478, %479
  br i1 %480, label %481, label %483

481:                                              ; preds = %476
  %482 = getelementptr inbounds i8, ptr %366, i64 16
  store i64 %478, ptr %477, align 8, !tbaa !59
  store i8 %323, ptr %482, align 1, !tbaa !35
  br label %483

483:                                              ; preds = %481, %476
  %484 = add nsw i64 %478, %353
  %485 = getelementptr inbounds i8, ptr %367, i64 136
  %486 = load i64, ptr %485, align 8, !tbaa !59
  %487 = icmp slt i64 %484, %486
  br i1 %487, label %488, label %490

488:                                              ; preds = %483
  %489 = getelementptr inbounds i8, ptr %366, i64 17
  store i64 %484, ptr %485, align 8, !tbaa !59
  store i8 %323, ptr %489, align 1, !tbaa !35
  br label %490

490:                                              ; preds = %488, %483
  %491 = add nsw i64 %484, %354
  %492 = getelementptr inbounds i8, ptr %367, i64 144
  %493 = load i64, ptr %492, align 8, !tbaa !59
  %494 = icmp slt i64 %491, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %490
  %496 = getelementptr inbounds i8, ptr %366, i64 18
  store i64 %491, ptr %492, align 8, !tbaa !59
  store i8 %323, ptr %496, align 1, !tbaa !35
  br label %497

497:                                              ; preds = %495, %490
  %498 = add nsw i64 %491, %355
  %499 = getelementptr inbounds i8, ptr %367, i64 152
  %500 = load i64, ptr %499, align 8, !tbaa !59
  %501 = icmp slt i64 %498, %500
  br i1 %501, label %502, label %504

502:                                              ; preds = %497
  %503 = getelementptr inbounds i8, ptr %366, i64 19
  store i64 %498, ptr %499, align 8, !tbaa !59
  store i8 %323, ptr %503, align 1, !tbaa !35
  br label %504

504:                                              ; preds = %502, %497
  %505 = getelementptr inbounds i8, ptr %367, i64 160
  %506 = add nsw i64 %359, %478
  %507 = load i64, ptr %505, align 8, !tbaa !59
  %508 = icmp slt i64 %506, %507
  br i1 %508, label %509, label %511

509:                                              ; preds = %504
  %510 = getelementptr inbounds i8, ptr %366, i64 20
  store i64 %506, ptr %505, align 8, !tbaa !59
  store i8 %323, ptr %510, align 1, !tbaa !35
  br label %511

511:                                              ; preds = %509, %504
  %512 = add nsw i64 %506, %353
  %513 = getelementptr inbounds i8, ptr %367, i64 168
  %514 = load i64, ptr %513, align 8, !tbaa !59
  %515 = icmp slt i64 %512, %514
  br i1 %515, label %516, label %518

516:                                              ; preds = %511
  %517 = getelementptr inbounds i8, ptr %366, i64 21
  store i64 %512, ptr %513, align 8, !tbaa !59
  store i8 %323, ptr %517, align 1, !tbaa !35
  br label %518

518:                                              ; preds = %516, %511
  %519 = add nsw i64 %512, %354
  %520 = getelementptr inbounds i8, ptr %367, i64 176
  %521 = load i64, ptr %520, align 8, !tbaa !59
  %522 = icmp slt i64 %519, %521
  br i1 %522, label %523, label %525

523:                                              ; preds = %518
  %524 = getelementptr inbounds i8, ptr %366, i64 22
  store i64 %519, ptr %520, align 8, !tbaa !59
  store i8 %323, ptr %524, align 1, !tbaa !35
  br label %525

525:                                              ; preds = %523, %518
  %526 = add nsw i64 %519, %355
  %527 = getelementptr inbounds i8, ptr %367, i64 184
  %528 = load i64, ptr %527, align 8, !tbaa !59
  %529 = icmp slt i64 %526, %528
  br i1 %529, label %530, label %532

530:                                              ; preds = %525
  %531 = getelementptr inbounds i8, ptr %366, i64 23
  store i64 %526, ptr %527, align 8, !tbaa !59
  store i8 %323, ptr %531, align 1, !tbaa !35
  br label %532

532:                                              ; preds = %530, %525
  %533 = getelementptr inbounds i8, ptr %367, i64 192
  %534 = add nsw i64 %360, %506
  %535 = load i64, ptr %533, align 8, !tbaa !59
  %536 = icmp slt i64 %534, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %532
  %538 = getelementptr inbounds i8, ptr %366, i64 24
  store i64 %534, ptr %533, align 8, !tbaa !59
  store i8 %323, ptr %538, align 1, !tbaa !35
  br label %539

539:                                              ; preds = %537, %532
  %540 = add nsw i64 %534, %353
  %541 = getelementptr inbounds i8, ptr %367, i64 200
  %542 = load i64, ptr %541, align 8, !tbaa !59
  %543 = icmp slt i64 %540, %542
  br i1 %543, label %544, label %546

544:                                              ; preds = %539
  %545 = getelementptr inbounds i8, ptr %366, i64 25
  store i64 %540, ptr %541, align 8, !tbaa !59
  store i8 %323, ptr %545, align 1, !tbaa !35
  br label %546

546:                                              ; preds = %544, %539
  %547 = add nsw i64 %540, %354
  %548 = getelementptr inbounds i8, ptr %367, i64 208
  %549 = load i64, ptr %548, align 8, !tbaa !59
  %550 = icmp slt i64 %547, %549
  br i1 %550, label %551, label %553

551:                                              ; preds = %546
  %552 = getelementptr inbounds i8, ptr %366, i64 26
  store i64 %547, ptr %548, align 8, !tbaa !59
  store i8 %323, ptr %552, align 1, !tbaa !35
  br label %553

553:                                              ; preds = %551, %546
  %554 = add nsw i64 %547, %355
  %555 = getelementptr inbounds i8, ptr %367, i64 216
  %556 = load i64, ptr %555, align 8, !tbaa !59
  %557 = icmp slt i64 %554, %556
  br i1 %557, label %558, label %560

558:                                              ; preds = %553
  %559 = getelementptr inbounds i8, ptr %366, i64 27
  store i64 %554, ptr %555, align 8, !tbaa !59
  store i8 %323, ptr %559, align 1, !tbaa !35
  br label %560

560:                                              ; preds = %558, %553
  %561 = getelementptr inbounds i8, ptr %367, i64 224
  %562 = add nsw i64 %361, %534
  %563 = load i64, ptr %561, align 8, !tbaa !59
  %564 = icmp slt i64 %562, %563
  br i1 %564, label %565, label %567

565:                                              ; preds = %560
  %566 = getelementptr inbounds i8, ptr %366, i64 28
  store i64 %562, ptr %561, align 8, !tbaa !59
  store i8 %323, ptr %566, align 1, !tbaa !35
  br label %567

567:                                              ; preds = %565, %560
  %568 = add nsw i64 %562, %353
  %569 = getelementptr inbounds i8, ptr %367, i64 232
  %570 = load i64, ptr %569, align 8, !tbaa !59
  %571 = icmp slt i64 %568, %570
  br i1 %571, label %572, label %574

572:                                              ; preds = %567
  %573 = getelementptr inbounds i8, ptr %366, i64 29
  store i64 %568, ptr %569, align 8, !tbaa !59
  store i8 %323, ptr %573, align 1, !tbaa !35
  br label %574

574:                                              ; preds = %572, %567
  %575 = add nsw i64 %568, %354
  %576 = getelementptr inbounds i8, ptr %367, i64 240
  %577 = load i64, ptr %576, align 8, !tbaa !59
  %578 = icmp slt i64 %575, %577
  br i1 %578, label %579, label %581

579:                                              ; preds = %574
  %580 = getelementptr inbounds i8, ptr %366, i64 30
  store i64 %575, ptr %576, align 8, !tbaa !59
  store i8 %323, ptr %580, align 1, !tbaa !35
  br label %581

581:                                              ; preds = %579, %574
  %582 = add nsw i64 %575, %355
  %583 = getelementptr inbounds i8, ptr %367, i64 248
  %584 = load i64, ptr %583, align 8, !tbaa !59
  %585 = icmp slt i64 %582, %584
  br i1 %585, label %586, label %588

586:                                              ; preds = %581
  %587 = getelementptr inbounds i8, ptr %366, i64 31
  store i64 %582, ptr %583, align 8, !tbaa !59
  store i8 %323, ptr %587, align 1, !tbaa !35
  br label %588

588:                                              ; preds = %586, %581
  %589 = getelementptr inbounds i8, ptr %367, i64 256
  %590 = getelementptr inbounds i8, ptr %366, i64 32
  %591 = add nsw i64 %365, %364
  %592 = add nsw i64 %364, 512
  %593 = add nsw i32 %363, -1
  %594 = icmp eq i32 %363, 0
  br i1 %594, label %595, label %362

595:                                              ; preds = %588
  %596 = add nuw nsw i64 %321, 1
  %597 = icmp eq i64 %596, %314
  br i1 %597, label %598, label %320

598:                                              ; preds = %595, %182
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #8
  %599 = and i32 %1, -4
  %600 = and i32 %2, -8
  %601 = and i32 %3, -4
  %602 = zext nneg i32 %601 to i64
  %603 = sext i32 %600 to i64
  %604 = sext i32 %599 to i64
  %605 = or disjoint i64 %603, 1
  %606 = or disjoint i64 %603, 2
  %607 = or disjoint i64 %603, 3
  %608 = or disjoint i64 %603, 4
  %609 = or disjoint i64 %603, 5
  %610 = or disjoint i64 %603, 6
  %611 = or disjoint i64 %603, 7
  br label %612

612:                                              ; preds = %598, %612
  %613 = phi i64 [ 0, %598 ], [ %778, %612 ]
  %614 = phi ptr [ %8, %598 ], [ %774, %612 ]
  %615 = or disjoint i64 %613, %604
  %616 = getelementptr inbounds ptr, ptr %12, i64 %615
  %617 = load ptr, ptr %616, align 8, !tbaa !31
  %618 = getelementptr inbounds [32 x i16], ptr %617, i64 %603, i64 %602
  %619 = getelementptr inbounds i8, ptr %614, i64 1
  %620 = load i8, ptr %614, align 1, !tbaa !35
  %621 = zext i8 %620 to i16
  %622 = add nuw nsw i16 %621, 1
  %623 = getelementptr inbounds i8, ptr %618, i64 2
  store i16 %622, ptr %618, align 2, !tbaa !45
  %624 = getelementptr inbounds i8, ptr %614, i64 2
  %625 = load i8, ptr %619, align 1, !tbaa !35
  %626 = zext i8 %625 to i16
  %627 = add nuw nsw i16 %626, 1
  %628 = getelementptr inbounds i8, ptr %618, i64 4
  store i16 %627, ptr %623, align 2, !tbaa !45
  %629 = getelementptr inbounds i8, ptr %614, i64 3
  %630 = load i8, ptr %624, align 1, !tbaa !35
  %631 = zext i8 %630 to i16
  %632 = add nuw nsw i16 %631, 1
  %633 = getelementptr inbounds i8, ptr %618, i64 6
  store i16 %632, ptr %628, align 2, !tbaa !45
  %634 = getelementptr inbounds i8, ptr %614, i64 4
  %635 = load i8, ptr %629, align 1, !tbaa !35
  %636 = zext i8 %635 to i16
  %637 = add nuw nsw i16 %636, 1
  store i16 %637, ptr %633, align 2, !tbaa !45
  %638 = getelementptr inbounds [32 x i16], ptr %617, i64 %605, i64 %602
  %639 = getelementptr inbounds i8, ptr %614, i64 5
  %640 = load i8, ptr %634, align 1, !tbaa !35
  %641 = zext i8 %640 to i16
  %642 = add nuw nsw i16 %641, 1
  %643 = getelementptr inbounds i8, ptr %638, i64 2
  store i16 %642, ptr %638, align 2, !tbaa !45
  %644 = getelementptr inbounds i8, ptr %614, i64 6
  %645 = load i8, ptr %639, align 1, !tbaa !35
  %646 = zext i8 %645 to i16
  %647 = add nuw nsw i16 %646, 1
  %648 = getelementptr inbounds i8, ptr %638, i64 4
  store i16 %647, ptr %643, align 2, !tbaa !45
  %649 = getelementptr inbounds i8, ptr %614, i64 7
  %650 = load i8, ptr %644, align 1, !tbaa !35
  %651 = zext i8 %650 to i16
  %652 = add nuw nsw i16 %651, 1
  %653 = getelementptr inbounds i8, ptr %638, i64 6
  store i16 %652, ptr %648, align 2, !tbaa !45
  %654 = getelementptr inbounds i8, ptr %614, i64 8
  %655 = load i8, ptr %649, align 1, !tbaa !35
  %656 = zext i8 %655 to i16
  %657 = add nuw nsw i16 %656, 1
  store i16 %657, ptr %653, align 2, !tbaa !45
  %658 = getelementptr inbounds [32 x i16], ptr %617, i64 %606, i64 %602
  %659 = getelementptr inbounds i8, ptr %614, i64 9
  %660 = load i8, ptr %654, align 1, !tbaa !35
  %661 = zext i8 %660 to i16
  %662 = add nuw nsw i16 %661, 1
  %663 = getelementptr inbounds i8, ptr %658, i64 2
  store i16 %662, ptr %658, align 2, !tbaa !45
  %664 = getelementptr inbounds i8, ptr %614, i64 10
  %665 = load i8, ptr %659, align 1, !tbaa !35
  %666 = zext i8 %665 to i16
  %667 = add nuw nsw i16 %666, 1
  %668 = getelementptr inbounds i8, ptr %658, i64 4
  store i16 %667, ptr %663, align 2, !tbaa !45
  %669 = getelementptr inbounds i8, ptr %614, i64 11
  %670 = load i8, ptr %664, align 1, !tbaa !35
  %671 = zext i8 %670 to i16
  %672 = add nuw nsw i16 %671, 1
  %673 = getelementptr inbounds i8, ptr %658, i64 6
  store i16 %672, ptr %668, align 2, !tbaa !45
  %674 = getelementptr inbounds i8, ptr %614, i64 12
  %675 = load i8, ptr %669, align 1, !tbaa !35
  %676 = zext i8 %675 to i16
  %677 = add nuw nsw i16 %676, 1
  store i16 %677, ptr %673, align 2, !tbaa !45
  %678 = getelementptr inbounds [32 x i16], ptr %617, i64 %607, i64 %602
  %679 = getelementptr inbounds i8, ptr %614, i64 13
  %680 = load i8, ptr %674, align 1, !tbaa !35
  %681 = zext i8 %680 to i16
  %682 = add nuw nsw i16 %681, 1
  %683 = getelementptr inbounds i8, ptr %678, i64 2
  store i16 %682, ptr %678, align 2, !tbaa !45
  %684 = getelementptr inbounds i8, ptr %614, i64 14
  %685 = load i8, ptr %679, align 1, !tbaa !35
  %686 = zext i8 %685 to i16
  %687 = add nuw nsw i16 %686, 1
  %688 = getelementptr inbounds i8, ptr %678, i64 4
  store i16 %687, ptr %683, align 2, !tbaa !45
  %689 = getelementptr inbounds i8, ptr %614, i64 15
  %690 = load i8, ptr %684, align 1, !tbaa !35
  %691 = zext i8 %690 to i16
  %692 = add nuw nsw i16 %691, 1
  %693 = getelementptr inbounds i8, ptr %678, i64 6
  store i16 %692, ptr %688, align 2, !tbaa !45
  %694 = getelementptr inbounds i8, ptr %614, i64 16
  %695 = load i8, ptr %689, align 1, !tbaa !35
  %696 = zext i8 %695 to i16
  %697 = add nuw nsw i16 %696, 1
  store i16 %697, ptr %693, align 2, !tbaa !45
  %698 = getelementptr inbounds [32 x i16], ptr %617, i64 %608, i64 %602
  %699 = getelementptr inbounds i8, ptr %614, i64 17
  %700 = load i8, ptr %694, align 1, !tbaa !35
  %701 = zext i8 %700 to i16
  %702 = add nuw nsw i16 %701, 1
  %703 = getelementptr inbounds i8, ptr %698, i64 2
  store i16 %702, ptr %698, align 2, !tbaa !45
  %704 = getelementptr inbounds i8, ptr %614, i64 18
  %705 = load i8, ptr %699, align 1, !tbaa !35
  %706 = zext i8 %705 to i16
  %707 = add nuw nsw i16 %706, 1
  %708 = getelementptr inbounds i8, ptr %698, i64 4
  store i16 %707, ptr %703, align 2, !tbaa !45
  %709 = getelementptr inbounds i8, ptr %614, i64 19
  %710 = load i8, ptr %704, align 1, !tbaa !35
  %711 = zext i8 %710 to i16
  %712 = add nuw nsw i16 %711, 1
  %713 = getelementptr inbounds i8, ptr %698, i64 6
  store i16 %712, ptr %708, align 2, !tbaa !45
  %714 = getelementptr inbounds i8, ptr %614, i64 20
  %715 = load i8, ptr %709, align 1, !tbaa !35
  %716 = zext i8 %715 to i16
  %717 = add nuw nsw i16 %716, 1
  store i16 %717, ptr %713, align 2, !tbaa !45
  %718 = getelementptr inbounds [32 x i16], ptr %617, i64 %609, i64 %602
  %719 = getelementptr inbounds i8, ptr %614, i64 21
  %720 = load i8, ptr %714, align 1, !tbaa !35
  %721 = zext i8 %720 to i16
  %722 = add nuw nsw i16 %721, 1
  %723 = getelementptr inbounds i8, ptr %718, i64 2
  store i16 %722, ptr %718, align 2, !tbaa !45
  %724 = getelementptr inbounds i8, ptr %614, i64 22
  %725 = load i8, ptr %719, align 1, !tbaa !35
  %726 = zext i8 %725 to i16
  %727 = add nuw nsw i16 %726, 1
  %728 = getelementptr inbounds i8, ptr %718, i64 4
  store i16 %727, ptr %723, align 2, !tbaa !45
  %729 = getelementptr inbounds i8, ptr %614, i64 23
  %730 = load i8, ptr %724, align 1, !tbaa !35
  %731 = zext i8 %730 to i16
  %732 = add nuw nsw i16 %731, 1
  %733 = getelementptr inbounds i8, ptr %718, i64 6
  store i16 %732, ptr %728, align 2, !tbaa !45
  %734 = getelementptr inbounds i8, ptr %614, i64 24
  %735 = load i8, ptr %729, align 1, !tbaa !35
  %736 = zext i8 %735 to i16
  %737 = add nuw nsw i16 %736, 1
  store i16 %737, ptr %733, align 2, !tbaa !45
  %738 = getelementptr inbounds [32 x i16], ptr %617, i64 %610, i64 %602
  %739 = getelementptr inbounds i8, ptr %614, i64 25
  %740 = load i8, ptr %734, align 1, !tbaa !35
  %741 = zext i8 %740 to i16
  %742 = add nuw nsw i16 %741, 1
  %743 = getelementptr inbounds i8, ptr %738, i64 2
  store i16 %742, ptr %738, align 2, !tbaa !45
  %744 = getelementptr inbounds i8, ptr %614, i64 26
  %745 = load i8, ptr %739, align 1, !tbaa !35
  %746 = zext i8 %745 to i16
  %747 = add nuw nsw i16 %746, 1
  %748 = getelementptr inbounds i8, ptr %738, i64 4
  store i16 %747, ptr %743, align 2, !tbaa !45
  %749 = getelementptr inbounds i8, ptr %614, i64 27
  %750 = load i8, ptr %744, align 1, !tbaa !35
  %751 = zext i8 %750 to i16
  %752 = add nuw nsw i16 %751, 1
  %753 = getelementptr inbounds i8, ptr %738, i64 6
  store i16 %752, ptr %748, align 2, !tbaa !45
  %754 = getelementptr inbounds i8, ptr %614, i64 28
  %755 = load i8, ptr %749, align 1, !tbaa !35
  %756 = zext i8 %755 to i16
  %757 = add nuw nsw i16 %756, 1
  store i16 %757, ptr %753, align 2, !tbaa !45
  %758 = getelementptr inbounds [32 x i16], ptr %617, i64 %611, i64 %602
  %759 = getelementptr inbounds i8, ptr %614, i64 29
  %760 = load i8, ptr %754, align 1, !tbaa !35
  %761 = zext i8 %760 to i16
  %762 = add nuw nsw i16 %761, 1
  %763 = getelementptr inbounds i8, ptr %758, i64 2
  store i16 %762, ptr %758, align 2, !tbaa !45
  %764 = getelementptr inbounds i8, ptr %614, i64 30
  %765 = load i8, ptr %759, align 1, !tbaa !35
  %766 = zext i8 %765 to i16
  %767 = add nuw nsw i16 %766, 1
  %768 = getelementptr inbounds i8, ptr %758, i64 4
  store i16 %767, ptr %763, align 2, !tbaa !45
  %769 = getelementptr inbounds i8, ptr %614, i64 31
  %770 = load i8, ptr %764, align 1, !tbaa !35
  %771 = zext i8 %770 to i16
  %772 = add nuw nsw i16 %771, 1
  %773 = getelementptr inbounds i8, ptr %758, i64 6
  store i16 %772, ptr %768, align 2, !tbaa !45
  %774 = getelementptr inbounds i8, ptr %614, i64 32
  %775 = load i8, ptr %769, align 1, !tbaa !35
  %776 = zext i8 %775 to i16
  %777 = add nuw nsw i16 %776, 1
  store i16 %777, ptr %773, align 2, !tbaa !45
  %778 = add nuw nsw i64 %613, 1
  %779 = icmp eq i64 %778, 4
  br i1 %779, label %780, label %612

780:                                              ; preds = %612
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!17 = !{!7, !8, i64 624}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !8, i64 32, !11, i64 40, !8, i64 48, !11, i64 56, !8, i64 64, !11, i64 72, !8, i64 80}
!20 = !{!"jpeg_color_quantizer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!21 = !{!19, !8, i64 24}
!22 = !{!19, !8, i64 64}
!23 = !{!19, !8, i64 80}
!24 = !{!7, !11, i64 144}
!25 = !{!7, !8, i64 0}
!26 = !{!27, !11, i64 40}
!27 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!28 = !{!27, !8, i64 0}
!29 = !{!19, !8, i64 48}
!30 = !{!15, !8, i64 8}
!31 = !{!8, !8, i64 0}
!32 = !{!19, !11, i64 56}
!33 = !{!7, !11, i64 132}
!34 = !{!7, !11, i64 120}
!35 = !{!9, !9, i64 0}
!36 = !{!15, !8, i64 16}
!37 = !{!19, !8, i64 32}
!38 = !{!19, !11, i64 40}
!39 = !{!7, !11, i64 112}
!40 = !{!7, !11, i64 136}
!41 = !{!19, !8, i64 8}
!42 = !{!19, !8, i64 16}
!43 = !{!7, !11, i64 156}
!44 = !{!11, !11, i64 0}
!45 = !{!13, !13, i64 0}
!46 = !{!7, !8, i64 160}
!47 = !{!48, !11, i64 0}
!48 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !16, i64 24, !16, i64 32}
!49 = !{!48, !11, i64 4}
!50 = !{!48, !11, i64 8}
!51 = !{!48, !11, i64 12}
!52 = !{!48, !11, i64 16}
!53 = !{!48, !11, i64 20}
!54 = !{!48, !16, i64 32}
!55 = !{!48, !16, i64 24}
!56 = !{!27, !8, i64 8}
!57 = !{!7, !8, i64 424}
!58 = !{!19, !11, i64 72}
!59 = !{!16, !16, i64 0}
