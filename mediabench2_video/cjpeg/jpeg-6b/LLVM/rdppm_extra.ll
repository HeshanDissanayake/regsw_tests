; ModuleID = 'rdppm.c'
source_filename = "rdppm.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local noundef ptr @jinit_read_ppm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 80) #3
  store ptr @start_input_ppm, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @finish_input_ppm, ptr %6, align 8, !tbaa !20
  ret ptr %5
}

; Function Attrs: nounwind
define internal void @start_input_ppm(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = tail call signext i32 @getc(ptr noundef %4)
  %6 = icmp eq i32 %5, 80
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !22
  %9 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 1027, ptr %9, align 8, !tbaa !23
  %10 = load ptr, ptr %8, align 8, !tbaa !25
  tail call void %10(ptr noundef %0) #3
  br label %11

11:                                               ; preds = %7, %2
  %12 = load ptr, ptr %3, align 8, !tbaa !21
  %13 = tail call signext i32 @getc(ptr noundef %12)
  switch i32 %13, label %14 [
    i32 50, label %18
    i32 51, label %18
    i32 53, label %18
    i32 54, label %18
  ]

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !22
  %16 = getelementptr inbounds i8, ptr %15, i64 40
  store i32 1027, ptr %16, align 8, !tbaa !23
  %17 = load ptr, ptr %15, align 8, !tbaa !25
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %11, %11, %11, %11, %14
  %19 = load ptr, ptr %3, align 8, !tbaa !21
  %20 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef %0, ptr noundef %19)
  %21 = load ptr, ptr %3, align 8, !tbaa !21
  %22 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef %0, ptr noundef %21)
  %23 = load ptr, ptr %3, align 8, !tbaa !21
  %24 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef %0, ptr noundef %23)
  %25 = icmp eq i32 %20, 0
  %26 = icmp eq i32 %22, 0
  %27 = select i1 %25, i1 true, i1 %26
  %28 = icmp eq i32 %24, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load ptr, ptr %0, align 8, !tbaa !22
  %32 = getelementptr inbounds i8, ptr %31, i64 40
  store i32 1027, ptr %32, align 8, !tbaa !23
  %33 = load ptr, ptr %31, align 8, !tbaa !25
  tail call void %33(ptr noundef nonnull %0) #3
  br label %34

34:                                               ; preds = %18, %30
  %35 = getelementptr inbounds i8, ptr %0, i64 72
  store i32 8, ptr %35, align 8, !tbaa !26
  %36 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %20, ptr %36, align 8, !tbaa !27
  %37 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %22, ptr %37, align 4, !tbaa !28
  switch i32 %13, label %77 [
    i32 50, label %94
    i32 51, label %38
    i32 53, label %39
    i32 54, label %58
  ]

38:                                               ; preds = %34
  br label %94

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 1, ptr %40, align 8, !tbaa !29
  %41 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 1, ptr %41, align 4, !tbaa !30
  %42 = load ptr, ptr %0, align 8, !tbaa !22
  %43 = getelementptr inbounds i8, ptr %42, i64 40
  store i32 1028, ptr %43, align 8, !tbaa !23
  %44 = getelementptr inbounds i8, ptr %42, i64 44
  store i32 %20, ptr %44, align 4, !tbaa !31
  %45 = load ptr, ptr %0, align 8, !tbaa !22
  %46 = getelementptr inbounds i8, ptr %45, i64 48
  store i32 %22, ptr %46, align 4, !tbaa !31
  %47 = load ptr, ptr %0, align 8, !tbaa !22
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  %49 = load ptr, ptr %48, align 8, !tbaa !32
  tail call void %49(ptr noundef nonnull %0, i32 noundef signext 1) #3
  %50 = icmp ugt i32 %24, 255
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr @get_word_gray_row, ptr %52, align 8, !tbaa !33
  br label %77

53:                                               ; preds = %39
  %54 = icmp eq i32 %24, 255
  %55 = getelementptr inbounds i8, ptr %1, i64 8
  br i1 %54, label %56, label %57

56:                                               ; preds = %53
  store ptr @get_raw_row, ptr %55, align 8, !tbaa !33
  br label %77

57:                                               ; preds = %53
  store ptr @get_scaled_gray_row, ptr %55, align 8, !tbaa !33
  br label %77

58:                                               ; preds = %34
  %59 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 3, ptr %59, align 8, !tbaa !29
  %60 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 2, ptr %60, align 4, !tbaa !30
  %61 = load ptr, ptr %0, align 8, !tbaa !22
  %62 = getelementptr inbounds i8, ptr %61, i64 40
  store i32 1030, ptr %62, align 8, !tbaa !23
  %63 = getelementptr inbounds i8, ptr %61, i64 44
  store i32 %20, ptr %63, align 4, !tbaa !31
  %64 = load ptr, ptr %0, align 8, !tbaa !22
  %65 = getelementptr inbounds i8, ptr %64, i64 48
  store i32 %22, ptr %65, align 4, !tbaa !31
  %66 = load ptr, ptr %0, align 8, !tbaa !22
  %67 = getelementptr inbounds i8, ptr %66, i64 8
  %68 = load ptr, ptr %67, align 8, !tbaa !32
  tail call void %68(ptr noundef nonnull %0, i32 noundef signext 1) #3
  %69 = icmp ugt i32 %24, 255
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr @get_word_rgb_row, ptr %71, align 8, !tbaa !33
  br label %77

72:                                               ; preds = %58
  %73 = icmp eq i32 %24, 255
  %74 = getelementptr inbounds i8, ptr %1, i64 8
  br i1 %73, label %75, label %76

75:                                               ; preds = %72
  store ptr @get_raw_row, ptr %74, align 8, !tbaa !33
  br label %77

76:                                               ; preds = %72
  store ptr @get_scaled_rgb_row, ptr %74, align 8, !tbaa !33
  br label %77

77:                                               ; preds = %57, %56, %51, %76, %75, %70, %34
  %78 = phi i1 [ true, %57 ], [ false, %56 ], [ true, %51 ], [ true, %76 ], [ false, %75 ], [ true, %70 ], [ true, %34 ]
  %79 = phi i1 [ false, %57 ], [ true, %56 ], [ false, %51 ], [ false, %76 ], [ true, %75 ], [ false, %70 ], [ false, %34 ]
  %80 = zext i32 %20 to i64
  %81 = getelementptr inbounds i8, ptr %0, i64 56
  %82 = load i32, ptr %81, align 8, !tbaa !29
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, %80
  %85 = icmp ugt i32 %24, 255
  %86 = zext i1 %85 to i64
  %87 = shl i64 %84, %86
  %88 = getelementptr inbounds i8, ptr %1, i64 64
  store i64 %87, ptr %88, align 8, !tbaa !34
  %89 = getelementptr inbounds i8, ptr %0, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = load ptr, ptr %90, align 8, !tbaa !14
  %92 = tail call ptr %91(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %87) #3
  %93 = getelementptr inbounds i8, ptr %1, i64 48
  store ptr %92, ptr %93, align 8, !tbaa !35
  br i1 %78, label %110, label %122

94:                                               ; preds = %34, %38
  %95 = phi i32 [ 3, %38 ], [ 1, %34 ]
  %96 = phi i32 [ 2, %38 ], [ 1, %34 ]
  %97 = phi i32 [ 1031, %38 ], [ 1029, %34 ]
  %98 = phi ptr [ @get_text_rgb_row, %38 ], [ @get_text_gray_row, %34 ]
  %99 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %95, ptr %99, align 8, !tbaa !29
  %100 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 %96, ptr %100, align 4, !tbaa !30
  %101 = load ptr, ptr %0, align 8, !tbaa !22
  %102 = getelementptr inbounds i8, ptr %101, i64 40
  store i32 %97, ptr %102, align 8, !tbaa !23
  %103 = getelementptr inbounds i8, ptr %101, i64 44
  store i32 %20, ptr %103, align 4, !tbaa !31
  %104 = load ptr, ptr %0, align 8, !tbaa !22
  %105 = getelementptr inbounds i8, ptr %104, i64 48
  store i32 %22, ptr %105, align 4, !tbaa !31
  %106 = load ptr, ptr %0, align 8, !tbaa !22
  %107 = getelementptr inbounds i8, ptr %106, i64 8
  %108 = load ptr, ptr %107, align 8, !tbaa !32
  tail call void %108(ptr noundef nonnull %0, i32 noundef signext 1) #3
  %109 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr %98, ptr %109, align 8, !tbaa !33
  br label %110

110:                                              ; preds = %94, %77
  %111 = phi i1 [ %79, %77 ], [ false, %94 ]
  %112 = getelementptr inbounds i8, ptr %0, i64 8
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = getelementptr inbounds i8, ptr %113, i64 16
  %115 = load ptr, ptr %114, align 8, !tbaa !36
  %116 = getelementptr inbounds i8, ptr %0, i64 56
  %117 = load i32, ptr %116, align 8, !tbaa !29
  %118 = mul i32 %117, %20
  %119 = tail call ptr %115(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %118, i32 noundef signext 1) #3
  %120 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr %119, ptr %120, align 8, !tbaa !37
  %121 = getelementptr inbounds i8, ptr %1, i64 40
  store i32 1, ptr %121, align 8, !tbaa !38
  br i1 %111, label %146, label %126

122:                                              ; preds = %77
  %123 = getelementptr inbounds i8, ptr %1, i64 56
  store ptr %92, ptr %123, align 8, !tbaa !39
  %124 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr %123, ptr %124, align 8, !tbaa !37
  %125 = getelementptr inbounds i8, ptr %1, i64 40
  store i32 1, ptr %125, align 8, !tbaa !38
  br i1 %79, label %146, label %126

126:                                              ; preds = %110, %122
  %127 = getelementptr inbounds i8, ptr %0, i64 8
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = load ptr, ptr %128, align 8, !tbaa !14
  %130 = zext i32 %24 to i64
  %131 = add nuw nsw i64 %130, 1
  %132 = tail call ptr %129(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef %131) #3
  %133 = getelementptr inbounds i8, ptr %1, i64 72
  store ptr %132, ptr %133, align 8, !tbaa !40
  %134 = lshr i32 %24, 1
  %135 = zext nneg i32 %134 to i64
  br label %136

136:                                              ; preds = %126, %136
  %137 = phi i64 [ 0, %126 ], [ %144, %136 ]
  %138 = mul nuw nsw i64 %137, 255
  %139 = add nuw nsw i64 %138, %135
  %140 = udiv i64 %139, %130
  %141 = trunc i64 %140 to i8
  %142 = load ptr, ptr %133, align 8, !tbaa !40
  %143 = getelementptr inbounds i8, ptr %142, i64 %137
  store i8 %141, ptr %143, align 1, !tbaa !31
  %144 = add nuw nsw i64 %137, 1
  %145 = icmp eq i64 %137, %130
  br i1 %145, label %146, label %136

146:                                              ; preds = %136, %110, %122
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal void @finish_input_ppm(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 {
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc signext i32 @read_pbm_integer(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = tail call signext i32 @getc(ptr noundef %1)
  %5 = icmp eq i32 %4, 35
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %6
  %7 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %7, label %6 [
    i32 -1, label %8
    i32 10, label %8
  ]

8:                                                ; preds = %6, %6, %3
  %9 = phi i32 [ %4, %3 ], [ %7, %6 ], [ %7, %6 ]
  switch i32 %9, label %15 [
    i32 -1, label %11
    i32 32, label %10
    i32 13, label %10
    i32 10, label %10
    i32 9, label %10
  ]

10:                                               ; preds = %8, %8, %8, %8
  br label %3

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !22
  %13 = getelementptr inbounds i8, ptr %12, i64 40
  store i32 43, ptr %13, align 8, !tbaa !23
  %14 = load ptr, ptr %12, align 8, !tbaa !25
  tail call void %14(ptr noundef nonnull %0) #3
  br label %18

15:                                               ; preds = %8
  %16 = add i32 %9, -58
  %17 = icmp ult i32 %16, -10
  br i1 %17, label %18, label %22

18:                                               ; preds = %11, %15
  %19 = load ptr, ptr %0, align 8, !tbaa !22
  %20 = getelementptr inbounds i8, ptr %19, i64 40
  store i32 1026, ptr %20, align 8, !tbaa !23
  %21 = load ptr, ptr %19, align 8, !tbaa !25
  tail call void %21(ptr noundef nonnull %0) #3
  br label %22

22:                                               ; preds = %15, %18
  %23 = add nsw i32 %9, -48
  br label %24

24:                                               ; preds = %34, %22
  %25 = phi i32 [ %23, %22 ], [ %36, %34 ]
  %26 = tail call signext i32 @getc(ptr noundef %1)
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %28
  %29 = tail call signext i32 @getc(ptr noundef %1)
  switch i32 %29, label %28 [
    i32 -1, label %30
    i32 10, label %30
  ]

30:                                               ; preds = %28, %28, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %28 ], [ %29, %28 ]
  %32 = add i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = mul i32 %25, 10
  %36 = add i32 %32, %35
  br label %24

37:                                               ; preds = %30
  ret i32 %25
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_text_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = getelementptr inbounds i8, ptr %1, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds i8, ptr %0, i64 48
  %8 = load i32, ptr %7, align 8, !tbaa !27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %1, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %22, %14 ], [ %8, %10 ]
  %16 = phi ptr [ %21, %14 ], [ %13, %10 ]
  %17 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4)
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !31
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %20, ptr %16, align 1, !tbaa !31
  %22 = add i32 %15, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %14

24:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_text_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = getelementptr inbounds i8, ptr %1, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds i8, ptr %0, i64 48
  %8 = load i32, ptr %7, align 8, !tbaa !27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %1, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %32, %14 ], [ %8, %10 ]
  %16 = phi ptr [ %31, %14 ], [ %13, %10 ]
  %17 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4)
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !31
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %20, ptr %16, align 1, !tbaa !31
  %22 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4)
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %6, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !31
  %26 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %25, ptr %21, align 1, !tbaa !31
  %27 = tail call fastcc signext i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4)
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %6, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !31
  %31 = getelementptr inbounds i8, ptr %16, i64 3
  store i8 %30, ptr %26, align 1, !tbaa !31
  %32 = add i32 %15, -1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %14

34:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_word_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 72
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds i8, ptr %1, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %1, i64 64
  %8 = load i64, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %1, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10)
  %12 = load i64, ptr %7, align 8, !tbaa !34
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !22
  %16 = getelementptr inbounds i8, ptr %15, i64 40
  store i32 43, ptr %16, align 8, !tbaa !23
  %17 = load ptr, ptr %15, align 8, !tbaa !25
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds i8, ptr %0, i64 48
  %20 = load i32, ptr %19, align 8, !tbaa !27
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !35
  %24 = getelementptr inbounds i8, ptr %1, i64 32
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %41, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %42, %27 ], [ %20, %22 ]
  %30 = phi ptr [ %34, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !31
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %30, i64 2
  %35 = load i8, ptr %31, align 1, !tbaa !31
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 8
  %38 = or disjoint i64 %37, %33
  %39 = getelementptr inbounds i8, ptr %4, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !31
  %41 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %40, ptr %28, align 1, !tbaa !31
  %42 = add i32 %29, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %27

44:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_raw_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 48
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %1, i64 64
  %6 = load i64, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %1, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = tail call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef %6, ptr noundef %8)
  %10 = load i64, ptr %5, align 8, !tbaa !34
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !22
  %14 = getelementptr inbounds i8, ptr %13, i64 40
  store i32 43, ptr %14, align 8, !tbaa !23
  %15 = load ptr, ptr %13, align 8, !tbaa !25
  tail call void %15(ptr noundef nonnull %0) #3
  br label %16

16:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_scaled_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 72
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds i8, ptr %1, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %1, i64 64
  %8 = load i64, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %1, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10)
  %12 = load i64, ptr %7, align 8, !tbaa !34
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !22
  %16 = getelementptr inbounds i8, ptr %15, i64 40
  store i32 43, ptr %16, align 8, !tbaa !23
  %17 = load ptr, ptr %15, align 8, !tbaa !25
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds i8, ptr %0, i64 48
  %20 = load i32, ptr %19, align 8, !tbaa !27
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !35
  %24 = getelementptr inbounds i8, ptr %1, i64 32
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i32 [ %37, %27 ], [ %20, %22 ]
  %29 = phi ptr [ %36, %27 ], [ %26, %22 ]
  %30 = phi ptr [ %31, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !31
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !31
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %35, ptr %29, align 1, !tbaa !31
  %37 = add i32 %28, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %27

39:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_word_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 72
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds i8, ptr %1, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %1, i64 64
  %8 = load i64, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %1, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10)
  %12 = load i64, ptr %7, align 8, !tbaa !34
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !22
  %16 = getelementptr inbounds i8, ptr %15, i64 40
  store i32 43, ptr %16, align 8, !tbaa !23
  %17 = load ptr, ptr %15, align 8, !tbaa !25
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds i8, ptr %0, i64 48
  %20 = load i32, ptr %19, align 8, !tbaa !27
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !35
  %24 = getelementptr inbounds i8, ptr %1, i64 32
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %63, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %64, %27 ], [ %20, %22 ]
  %30 = phi ptr [ %56, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !31
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %30, i64 2
  %35 = load i8, ptr %31, align 1, !tbaa !31
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 8
  %38 = or disjoint i64 %37, %33
  %39 = getelementptr inbounds i8, ptr %4, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !31
  %41 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %40, ptr %28, align 1, !tbaa !31
  %42 = getelementptr inbounds i8, ptr %30, i64 3
  %43 = load i8, ptr %34, align 1, !tbaa !31
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, ptr %30, i64 4
  %46 = load i8, ptr %42, align 1, !tbaa !31
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 8
  %49 = or disjoint i64 %48, %44
  %50 = getelementptr inbounds i8, ptr %4, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !31
  %52 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 %51, ptr %41, align 1, !tbaa !31
  %53 = getelementptr inbounds i8, ptr %30, i64 5
  %54 = load i8, ptr %45, align 1, !tbaa !31
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i8, ptr %30, i64 6
  %57 = load i8, ptr %53, align 1, !tbaa !31
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 8
  %60 = or disjoint i64 %59, %55
  %61 = getelementptr inbounds i8, ptr %4, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !31
  %63 = getelementptr inbounds i8, ptr %28, i64 3
  store i8 %62, ptr %52, align 1, !tbaa !31
  %64 = add i32 %29, -1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %27

66:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind
define internal noundef signext i32 @get_scaled_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 72
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds i8, ptr %1, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %1, i64 64
  %8 = load i64, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %1, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10)
  %12 = load i64, ptr %7, align 8, !tbaa !34
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !22
  %16 = getelementptr inbounds i8, ptr %15, i64 40
  store i32 43, ptr %16, align 8, !tbaa !23
  %17 = load ptr, ptr %15, align 8, !tbaa !25
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds i8, ptr %0, i64 48
  %20 = load i32, ptr %19, align 8, !tbaa !27
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !35
  %24 = getelementptr inbounds i8, ptr %1, i64 32
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i32 [ %49, %27 ], [ %20, %22 ]
  %29 = phi ptr [ %48, %27 ], [ %26, %22 ]
  %30 = phi ptr [ %43, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !31
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !31
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %35, ptr %29, align 1, !tbaa !31
  %37 = getelementptr inbounds i8, ptr %30, i64 2
  %38 = load i8, ptr %31, align 1, !tbaa !31
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, ptr %4, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !31
  %42 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %41, ptr %36, align 1, !tbaa !31
  %43 = getelementptr inbounds i8, ptr %30, i64 3
  %44 = load i8, ptr %37, align 1, !tbaa !31
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i8, ptr %4, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !31
  %48 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %47, ptr %42, align 1, !tbaa !31
  %49 = add i32 %28, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %27

51:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !8, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 48, !8, i64 56, !16, i64 64, !8, i64 72}
!19 = !{!"cjpeg_source_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40}
!20 = !{!18, !8, i64 16}
!21 = !{!18, !8, i64 24}
!22 = !{!7, !8, i64 0}
!23 = !{!24, !11, i64 40}
!24 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!25 = !{!24, !8, i64 0}
!26 = !{!7, !11, i64 72}
!27 = !{!7, !11, i64 48}
!28 = !{!7, !11, i64 52}
!29 = !{!7, !11, i64 56}
!30 = !{!7, !11, i64 60}
!31 = !{!9, !9, i64 0}
!32 = !{!24, !8, i64 8}
!33 = !{!18, !8, i64 8}
!34 = !{!18, !16, i64 64}
!35 = !{!18, !8, i64 48}
!36 = !{!15, !8, i64 16}
!37 = !{!18, !8, i64 32}
!38 = !{!18, !11, i64 40}
!39 = !{!18, !8, i64 56}
!40 = !{!18, !8, i64 72}
!41 = !{!8, !8, i64 0}
