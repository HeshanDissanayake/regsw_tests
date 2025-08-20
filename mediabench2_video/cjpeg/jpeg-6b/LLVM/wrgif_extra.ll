; ModuleID = 'wrgif.c'
source_filename = "wrgif.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: nounwind
define dso_local noundef ptr @jinit_write_gif(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 352) #5
  %6 = getelementptr inbounds i8, ptr %5, i64 48
  store ptr %0, ptr %6, align 8, !tbaa !17
  store ptr @start_output_gif, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @put_pixel_rows, ptr %7, align 8, !tbaa !21
  %8 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @finish_output_gif, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds i8, ptr %0, i64 64
  %10 = load i32, ptr %9, align 8, !tbaa !23
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !24
  %15 = getelementptr inbounds i8, ptr %14, i64 40
  store i32 1014, ptr %15, align 8, !tbaa !25
  %16 = load ptr, ptr %14, align 8, !tbaa !27
  tail call void %16(ptr noundef nonnull %0) #5
  %17 = load i32, ptr %9, align 8, !tbaa !23
  br label %18

18:                                               ; preds = %1, %13
  %19 = phi i32 [ %10, %1 ], [ %17, %13 ]
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %0, i64 296
  %23 = load i32, ptr %22, align 8, !tbaa !28
  %24 = icmp sgt i32 %23, 8
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %18
  %26 = getelementptr inbounds i8, ptr %0, i64 108
  store i32 1, ptr %26, align 4, !tbaa !29
  %27 = getelementptr inbounds i8, ptr %0, i64 120
  %28 = load i32, ptr %27, align 8, !tbaa !30
  %29 = icmp sgt i32 %28, 256
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 256, ptr %27, align 8, !tbaa !30
  br label %31

31:                                               ; preds = %25, %30, %21
  tail call void @jpeg_calc_output_dimensions(ptr noundef nonnull %0) #5
  %32 = getelementptr inbounds i8, ptr %0, i64 148
  %33 = load i32, ptr %32, align 4, !tbaa !31
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 8, !tbaa !24
  %37 = getelementptr inbounds i8, ptr %36, i64 40
  store i32 1012, ptr %37, align 8, !tbaa !25
  %38 = load ptr, ptr %36, align 8, !tbaa !27
  tail call void %38(ptr noundef nonnull %0) #5
  br label %39

39:                                               ; preds = %35, %31
  %40 = load ptr, ptr %2, align 8, !tbaa !6
  %41 = getelementptr inbounds i8, ptr %40, i64 16
  %42 = load ptr, ptr %41, align 8, !tbaa !32
  %43 = getelementptr inbounds i8, ptr %0, i64 136
  %44 = load i32, ptr %43, align 8, !tbaa !33
  %45 = tail call ptr %42(ptr noundef nonnull %0, i32 noundef signext 1, i32 noundef signext %44, i32 noundef signext 1) #5
  %46 = getelementptr inbounds i8, ptr %5, i64 32
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = getelementptr inbounds i8, ptr %5, i64 40
  store i32 1, ptr %47, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: nounwind
define internal void @start_output_gif(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 108
  %4 = load i32, ptr %3, align 4, !tbaa !29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 156
  %8 = load i32, ptr %7, align 4, !tbaa !36
  %9 = getelementptr inbounds i8, ptr %0, i64 160
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  tail call fastcc void @emit_header(ptr noundef %1, i32 noundef signext %8, ptr noundef %10)
  br label %12

11:                                               ; preds = %2
  tail call fastcc void @emit_header(ptr noundef %1, i32 noundef signext 256, ptr noundef null)
  br label %12

12:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: nounwind
define internal void @put_pixel_rows(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 signext %2) #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 136
  %5 = load i32, ptr %4, align 8, !tbaa !33
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %133, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %1, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds i8, ptr %1, i64 72
  %12 = getelementptr inbounds i8, ptr %1, i64 64
  %13 = getelementptr inbounds i8, ptr %1, i64 56
  %14 = getelementptr inbounds i8, ptr %1, i64 92
  %15 = getelementptr inbounds i8, ptr %1, i64 88
  %16 = getelementptr inbounds i8, ptr %1, i64 24
  %17 = getelementptr inbounds i8, ptr %1, i64 48
  %18 = getelementptr inbounds i8, ptr %1, i64 84
  %19 = getelementptr inbounds i8, ptr %1, i64 60
  %20 = getelementptr inbounds i8, ptr %1, i64 76
  %21 = load i32, ptr %11, align 8, !tbaa !39
  %22 = load i64, ptr %12, align 8, !tbaa !40
  br label %23

23:                                               ; preds = %7, %127
  %24 = phi i64 [ %22, %7 ], [ %128, %127 ]
  %25 = phi i32 [ %21, %7 ], [ %129, %127 ]
  %26 = phi i32 [ %5, %7 ], [ %131, %127 ]
  %27 = phi ptr [ %10, %7 ], [ %28, %127 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %27, align 1, !tbaa !41
  %30 = zext i8 %29 to i64
  %31 = zext nneg i32 %25 to i64
  %32 = shl i64 %30, %31
  %33 = or i64 %32, %24
  store i64 %33, ptr %12, align 8, !tbaa !40
  %34 = load i32, ptr %13, align 8, !tbaa !42
  %35 = add nsw i32 %34, %25
  store i32 %35, ptr %11, align 8, !tbaa !39
  %36 = icmp sgt i32 %35, 7
  br i1 %36, label %37, label %70

37:                                               ; preds = %23
  %38 = load i32, ptr %15, align 8, !tbaa !43
  br label %39

39:                                               ; preds = %63, %37
  %40 = phi i32 [ %38, %37 ], [ %64, %63 ]
  %41 = phi i64 [ %33, %37 ], [ %66, %63 ]
  %42 = trunc i64 %41 to i8
  %43 = add nsw i32 %40, 1
  store i32 %43, ptr %15, align 8, !tbaa !43
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %44
  store i8 %42, ptr %45, align 1, !tbaa !41
  %46 = load i32, ptr %15, align 8, !tbaa !43
  %47 = icmp sgt i32 %46, 254
  br i1 %47, label %48, label %63

48:                                               ; preds = %39
  %49 = add nuw nsw i32 %46, 1
  store i32 %49, ptr %15, align 8, !tbaa !43
  %50 = trunc i32 %46 to i8
  store i8 %50, ptr %14, align 4, !tbaa !41
  %51 = zext nneg i32 %49 to i64
  %52 = load ptr, ptr %16, align 8, !tbaa !44
  %53 = tail call i64 @fwrite(ptr noundef nonnull %14, i64 noundef 1, i64 noundef %51, ptr noundef %52)
  %54 = load i32, ptr %15, align 8, !tbaa !43
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %48
  %58 = load ptr, ptr %17, align 8, !tbaa !17
  %59 = load ptr, ptr %58, align 8, !tbaa !24
  %60 = getelementptr inbounds i8, ptr %59, i64 40
  store i32 37, ptr %60, align 8, !tbaa !25
  %61 = load ptr, ptr %59, align 8, !tbaa !27
  tail call void %61(ptr noundef nonnull %58) #5
  br label %62

62:                                               ; preds = %57, %48
  store i32 0, ptr %15, align 8, !tbaa !43
  br label %63

63:                                               ; preds = %62, %39
  %64 = phi i32 [ 0, %62 ], [ %46, %39 ]
  %65 = load i64, ptr %12, align 8, !tbaa !40
  %66 = ashr i64 %65, 8
  store i64 %66, ptr %12, align 8, !tbaa !40
  %67 = load i32, ptr %11, align 8, !tbaa !39
  %68 = add nsw i32 %67, -8
  store i32 %68, ptr %11, align 8, !tbaa !39
  %69 = icmp sgt i32 %67, 15
  br i1 %69, label %39, label %70, !llvm.loop !45

70:                                               ; preds = %63, %23
  %71 = phi i64 [ %33, %23 ], [ %66, %63 ]
  %72 = phi i32 [ %35, %23 ], [ %68, %63 ]
  %73 = load i32, ptr %18, align 4, !tbaa !47
  %74 = load i32, ptr %19, align 4, !tbaa !48
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = add nsw i32 %73, 1
  br label %127

78:                                               ; preds = %70
  %79 = load i32, ptr %20, align 4, !tbaa !49
  %80 = sext i32 %79 to i64
  %81 = zext nneg i32 %72 to i64
  %82 = shl i64 %80, %81
  %83 = or i64 %82, %71
  store i64 %83, ptr %12, align 8, !tbaa !40
  %84 = load i32, ptr %13, align 8, !tbaa !42
  %85 = add nsw i32 %84, %72
  store i32 %85, ptr %11, align 8, !tbaa !39
  %86 = icmp sgt i32 %85, 7
  br i1 %86, label %87, label %122

87:                                               ; preds = %78
  %88 = load i32, ptr %15, align 8, !tbaa !43
  br label %89

89:                                               ; preds = %113, %87
  %90 = phi i32 [ %88, %87 ], [ %114, %113 ]
  %91 = phi i64 [ %83, %87 ], [ %116, %113 ]
  %92 = trunc i64 %91 to i8
  %93 = add nsw i32 %90, 1
  store i32 %93, ptr %15, align 8, !tbaa !43
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %94
  store i8 %92, ptr %95, align 1, !tbaa !41
  %96 = load i32, ptr %15, align 8, !tbaa !43
  %97 = icmp sgt i32 %96, 254
  br i1 %97, label %98, label %113

98:                                               ; preds = %89
  %99 = add nuw nsw i32 %96, 1
  store i32 %99, ptr %15, align 8, !tbaa !43
  %100 = trunc i32 %96 to i8
  store i8 %100, ptr %14, align 4, !tbaa !41
  %101 = zext nneg i32 %99 to i64
  %102 = load ptr, ptr %16, align 8, !tbaa !44
  %103 = tail call i64 @fwrite(ptr noundef nonnull %14, i64 noundef 1, i64 noundef %101, ptr noundef %102)
  %104 = load i32, ptr %15, align 8, !tbaa !43
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %98
  %108 = load ptr, ptr %17, align 8, !tbaa !17
  %109 = load ptr, ptr %108, align 8, !tbaa !24
  %110 = getelementptr inbounds i8, ptr %109, i64 40
  store i32 37, ptr %110, align 8, !tbaa !25
  %111 = load ptr, ptr %109, align 8, !tbaa !27
  tail call void %111(ptr noundef nonnull %108) #5
  br label %112

112:                                              ; preds = %107, %98
  store i32 0, ptr %15, align 8, !tbaa !43
  br label %113

113:                                              ; preds = %112, %89
  %114 = phi i32 [ 0, %112 ], [ %96, %89 ]
  %115 = load i64, ptr %12, align 8, !tbaa !40
  %116 = ashr i64 %115, 8
  store i64 %116, ptr %12, align 8, !tbaa !40
  %117 = load i32, ptr %11, align 8, !tbaa !39
  %118 = add nsw i32 %117, -8
  store i32 %118, ptr %11, align 8, !tbaa !39
  %119 = icmp sgt i32 %117, 15
  br i1 %119, label %89, label %120, !llvm.loop !45

120:                                              ; preds = %113
  %121 = load i32, ptr %20, align 4, !tbaa !49
  br label %122

122:                                              ; preds = %120, %78
  %123 = phi i64 [ %116, %120 ], [ %83, %78 ]
  %124 = phi i32 [ %118, %120 ], [ %85, %78 ]
  %125 = phi i32 [ %121, %120 ], [ %79, %78 ]
  %126 = add nsw i32 %125, 2
  br label %127

127:                                              ; preds = %76, %122
  %128 = phi i64 [ %123, %122 ], [ %71, %76 ]
  %129 = phi i32 [ %124, %122 ], [ %72, %76 ]
  %130 = phi i32 [ %126, %122 ], [ %77, %76 ]
  store i32 %130, ptr %18, align 4, !tbaa !47
  %131 = add i32 %26, -1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %23, !llvm.loop !50

133:                                              ; preds = %127, %3
  ret void
}

; Function Attrs: nounwind
define internal void @finish_output_gif(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 80
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 72
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = zext nneg i32 %7 to i64
  %9 = shl i64 %5, %8
  %10 = getelementptr inbounds i8, ptr %1, i64 64
  %11 = load i64, ptr %10, align 8, !tbaa !40
  %12 = or i64 %9, %11
  store i64 %12, ptr %10, align 8, !tbaa !40
  %13 = getelementptr inbounds i8, ptr %1, i64 56
  %14 = load i32, ptr %13, align 8, !tbaa !42
  %15 = add nsw i32 %14, %7
  store i32 %15, ptr %6, align 8, !tbaa !39
  %16 = icmp sgt i32 %15, 7
  br i1 %16, label %17, label %54

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, ptr %1, i64 92
  %19 = getelementptr inbounds i8, ptr %1, i64 88
  %20 = getelementptr inbounds i8, ptr %1, i64 24
  %21 = getelementptr inbounds i8, ptr %1, i64 48
  %22 = load i32, ptr %19, align 8, !tbaa !43
  br label %23

23:                                               ; preds = %47, %17
  %24 = phi i32 [ %22, %17 ], [ %48, %47 ]
  %25 = phi i64 [ %12, %17 ], [ %50, %47 ]
  %26 = trunc i64 %25 to i8
  %27 = add nsw i32 %24, 1
  store i32 %27, ptr %19, align 8, !tbaa !43
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 %28
  store i8 %26, ptr %29, align 1, !tbaa !41
  %30 = load i32, ptr %19, align 8, !tbaa !43
  %31 = icmp sgt i32 %30, 254
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = add nuw nsw i32 %30, 1
  store i32 %33, ptr %19, align 8, !tbaa !43
  %34 = trunc i32 %30 to i8
  store i8 %34, ptr %18, align 4, !tbaa !41
  %35 = zext nneg i32 %33 to i64
  %36 = load ptr, ptr %20, align 8, !tbaa !44
  %37 = tail call i64 @fwrite(ptr noundef nonnull %18, i64 noundef 1, i64 noundef %35, ptr noundef %36)
  %38 = load i32, ptr %19, align 8, !tbaa !43
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load ptr, ptr %21, align 8, !tbaa !17
  %43 = load ptr, ptr %42, align 8, !tbaa !24
  %44 = getelementptr inbounds i8, ptr %43, i64 40
  store i32 37, ptr %44, align 8, !tbaa !25
  %45 = load ptr, ptr %43, align 8, !tbaa !27
  tail call void %45(ptr noundef nonnull %42) #5
  br label %46

46:                                               ; preds = %41, %32
  store i32 0, ptr %19, align 8, !tbaa !43
  br label %47

47:                                               ; preds = %46, %23
  %48 = phi i32 [ 0, %46 ], [ %30, %23 ]
  %49 = load i64, ptr %10, align 8, !tbaa !40
  %50 = ashr i64 %49, 8
  store i64 %50, ptr %10, align 8, !tbaa !40
  %51 = load i32, ptr %6, align 8, !tbaa !39
  %52 = add nsw i32 %51, -8
  store i32 %52, ptr %6, align 8, !tbaa !39
  %53 = icmp sgt i32 %51, 15
  br i1 %53, label %23, label %54, !llvm.loop !45

54:                                               ; preds = %47, %2
  %55 = phi i64 [ %12, %2 ], [ %50, %47 ]
  %56 = phi i32 [ %15, %2 ], [ %52, %47 ]
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %1, i64 88
  %60 = load i32, ptr %59, align 8, !tbaa !43
  br label %81

61:                                               ; preds = %54
  %62 = trunc i64 %55 to i8
  %63 = getelementptr inbounds i8, ptr %1, i64 92
  %64 = getelementptr inbounds i8, ptr %1, i64 88
  %65 = load i32, ptr %64, align 8, !tbaa !43
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %64, align 8, !tbaa !43
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [256 x i8], ptr %63, i64 0, i64 %67
  store i8 %62, ptr %68, align 1, !tbaa !41
  %69 = load i32, ptr %64, align 8, !tbaa !43
  %70 = icmp sgt i32 %69, 254
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = add nuw nsw i32 %69, 1
  store i32 %72, ptr %64, align 8, !tbaa !43
  %73 = trunc i32 %69 to i8
  store i8 %73, ptr %63, align 4, !tbaa !41
  %74 = zext nneg i32 %72 to i64
  %75 = getelementptr inbounds i8, ptr %1, i64 24
  %76 = load ptr, ptr %75, align 8, !tbaa !44
  %77 = tail call i64 @fwrite(ptr noundef nonnull %63, i64 noundef 1, i64 noundef %74, ptr noundef %76)
  %78 = load i32, ptr %64, align 8, !tbaa !43
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %103, label %96

81:                                               ; preds = %61, %58
  %82 = phi i32 [ %60, %58 ], [ %69, %61 ]
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %81
  %85 = getelementptr inbounds i8, ptr %1, i64 88
  %86 = add nuw nsw i32 %82, 1
  store i32 %86, ptr %85, align 8, !tbaa !43
  %87 = trunc i32 %82 to i8
  %88 = getelementptr inbounds i8, ptr %1, i64 92
  store i8 %87, ptr %88, align 4, !tbaa !41
  %89 = zext nneg i32 %86 to i64
  %90 = getelementptr inbounds i8, ptr %1, i64 24
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = tail call i64 @fwrite(ptr noundef nonnull %88, i64 noundef 1, i64 noundef %89, ptr noundef %91)
  %93 = load i32, ptr %85, align 8, !tbaa !43
  %94 = sext i32 %93 to i64
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %84, %71
  %97 = phi ptr [ %64, %71 ], [ %85, %84 ]
  %98 = getelementptr inbounds i8, ptr %1, i64 48
  %99 = load ptr, ptr %98, align 8, !tbaa !17
  %100 = load ptr, ptr %99, align 8, !tbaa !24
  %101 = getelementptr inbounds i8, ptr %100, i64 40
  store i32 37, ptr %101, align 8, !tbaa !25
  %102 = load ptr, ptr %100, align 8, !tbaa !27
  tail call void %102(ptr noundef nonnull %99) #5
  br label %103

103:                                              ; preds = %96, %84, %71
  %104 = phi ptr [ %64, %71 ], [ %85, %84 ], [ %97, %96 ]
  store i32 0, ptr %104, align 8, !tbaa !43
  br label %105

105:                                              ; preds = %81, %103
  %106 = getelementptr inbounds i8, ptr %1, i64 24
  %107 = load ptr, ptr %106, align 8, !tbaa !44
  %108 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %107)
  %109 = load ptr, ptr %106, align 8, !tbaa !44
  %110 = tail call signext i32 @putc(i32 noundef signext 59, ptr noundef %109)
  %111 = load ptr, ptr %106, align 8, !tbaa !44
  %112 = tail call signext i32 @fflush(ptr noundef %111)
  %113 = load ptr, ptr %106, align 8, !tbaa !44
  %114 = tail call signext i32 @ferror(ptr noundef %113) #5
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %105
  %117 = load ptr, ptr %0, align 8, !tbaa !24
  %118 = getelementptr inbounds i8, ptr %117, i64 40
  store i32 37, ptr %118, align 8, !tbaa !25
  %119 = load ptr, ptr %117, align 8, !tbaa !27
  tail call void %119(ptr noundef nonnull %0) #5
  br label %120

120:                                              ; preds = %116, %105
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define internal fastcc void @emit_header(ptr nocapture noundef %0, i32 noundef signext %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds i8, ptr %5, i64 296
  %7 = load i32, ptr %6, align 8, !tbaa !28
  %8 = add nsw i32 %7, -8
  %9 = icmp sgt i32 %1, 256
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !tbaa !24
  %12 = getelementptr inbounds i8, ptr %11, i64 40
  store i32 1039, ptr %12, align 8, !tbaa !25
  %13 = getelementptr inbounds i8, ptr %11, i64 44
  store i32 %1, ptr %13, align 4, !tbaa !41
  %14 = load ptr, ptr %4, align 8, !tbaa !17
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  tail call void %16(ptr noundef nonnull %14) #5
  br label %17

17:                                               ; preds = %10, %3
  br label %18

18:                                               ; preds = %17, %18
  %19 = phi i32 [ %22, %18 ], [ 1, %17 ]
  %20 = shl nuw i32 1, %19
  %21 = icmp slt i32 %20, %1
  %22 = add nuw nsw i32 %19, 1
  br i1 %21, label %18, label %23, !llvm.loop !52

23:                                               ; preds = %18
  %24 = tail call i32 @llvm.umax.i32(i32 %19, i32 2)
  %25 = getelementptr inbounds i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = tail call signext i32 @putc(i32 noundef signext 71, ptr noundef %26)
  %28 = load ptr, ptr %25, align 8, !tbaa !44
  %29 = tail call signext i32 @putc(i32 noundef signext 73, ptr noundef %28)
  %30 = load ptr, ptr %25, align 8, !tbaa !44
  %31 = tail call signext i32 @putc(i32 noundef signext 70, ptr noundef %30)
  %32 = load ptr, ptr %25, align 8, !tbaa !44
  %33 = tail call signext i32 @putc(i32 noundef signext 56, ptr noundef %32)
  %34 = load ptr, ptr %25, align 8, !tbaa !44
  %35 = tail call signext i32 @putc(i32 noundef signext 55, ptr noundef %34)
  %36 = load ptr, ptr %25, align 8, !tbaa !44
  %37 = tail call signext i32 @putc(i32 noundef signext 97, ptr noundef %36)
  %38 = load ptr, ptr %4, align 8, !tbaa !17
  %39 = getelementptr inbounds i8, ptr %38, i64 136
  %40 = load i32, ptr %39, align 8, !tbaa !33
  %41 = and i32 %40, 255
  %42 = load ptr, ptr %25, align 8, !tbaa !44
  %43 = tail call signext i32 @putc(i32 noundef signext %41, ptr noundef %42)
  %44 = lshr i32 %40, 8
  %45 = and i32 %44, 255
  %46 = load ptr, ptr %25, align 8, !tbaa !44
  %47 = tail call signext i32 @putc(i32 noundef signext %45, ptr noundef %46)
  %48 = load ptr, ptr %4, align 8, !tbaa !17
  %49 = getelementptr inbounds i8, ptr %48, i64 140
  %50 = load i32, ptr %49, align 4, !tbaa !53
  %51 = and i32 %50, 255
  %52 = load ptr, ptr %25, align 8, !tbaa !44
  %53 = tail call signext i32 @putc(i32 noundef signext %51, ptr noundef %52)
  %54 = lshr i32 %50, 8
  %55 = and i32 %54, 255
  %56 = load ptr, ptr %25, align 8, !tbaa !44
  %57 = tail call signext i32 @putc(i32 noundef signext %55, ptr noundef %56)
  %58 = add nsw i32 %19, -1
  %59 = shl i32 %58, 4
  %60 = or i32 %58, %59
  %61 = or i32 %60, 128
  %62 = load ptr, ptr %25, align 8, !tbaa !44
  %63 = tail call signext i32 @putc(i32 noundef signext %61, ptr noundef %62)
  %64 = load ptr, ptr %25, align 8, !tbaa !44
  %65 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %64)
  %66 = load ptr, ptr %25, align 8, !tbaa !44
  %67 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %66)
  %68 = icmp eq i32 %19, 31
  br i1 %68, label %140, label %69

69:                                               ; preds = %23
  %70 = icmp eq ptr %2, null
  %71 = getelementptr inbounds i8, ptr %2, i64 8
  %72 = getelementptr inbounds i8, ptr %2, i64 16
  %73 = add nsw i32 %1, -1
  %74 = sdiv i32 %73, 2
  br i1 %70, label %79, label %75

75:                                               ; preds = %69
  %76 = sext i32 %1 to i64
  %77 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  %78 = zext nneg i32 %77 to i64
  br label %98

79:                                               ; preds = %69
  %80 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %81

81:                                               ; preds = %79, %88
  %82 = phi i32 [ %96, %88 ], [ 0, %79 ]
  %83 = icmp slt i32 %82, %1
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = mul nuw nsw i32 %82, 255
  %86 = add nsw i32 %85, %74
  %87 = sdiv i32 %86, %73
  br label %88

88:                                               ; preds = %81, %84
  %89 = phi i32 [ %87, %84 ], [ 0, %81 ]
  %90 = load ptr, ptr %25, align 8, !tbaa !44
  %91 = tail call signext i32 @putc(i32 noundef signext %89, ptr noundef %90)
  %92 = load ptr, ptr %25, align 8, !tbaa !44
  %93 = tail call signext i32 @putc(i32 noundef signext %89, ptr noundef %92)
  %94 = load ptr, ptr %25, align 8, !tbaa !44
  %95 = tail call signext i32 @putc(i32 noundef signext %89, ptr noundef %94)
  %96 = add nuw nsw i32 %82, 1
  %97 = icmp eq i32 %96, %80
  br i1 %97, label %140, label %81, !llvm.loop !54

98:                                               ; preds = %75, %134
  %99 = phi i64 [ 0, %75 ], [ %138, %134 ]
  %100 = icmp slt i64 %99, %76
  br i1 %100, label %101, label %129

101:                                              ; preds = %98
  %102 = load ptr, ptr %4, align 8, !tbaa !17
  %103 = getelementptr inbounds i8, ptr %102, i64 64
  %104 = load i32, ptr %103, align 8, !tbaa !23
  %105 = icmp eq i32 %104, 2
  %106 = load ptr, ptr %2, align 8, !tbaa !38
  %107 = getelementptr inbounds i8, ptr %106, i64 %99
  %108 = load i8, ptr %107, align 1, !tbaa !41
  %109 = zext i8 %108 to i32
  %110 = lshr i32 %109, %8
  %111 = load ptr, ptr %25, align 8, !tbaa !44
  %112 = tail call signext i32 @putc(i32 noundef signext %110, ptr noundef %111)
  br i1 %105, label %113, label %126

113:                                              ; preds = %101
  %114 = load ptr, ptr %71, align 8, !tbaa !38
  %115 = getelementptr inbounds i8, ptr %114, i64 %99
  %116 = load i8, ptr %115, align 1, !tbaa !41
  %117 = zext i8 %116 to i32
  %118 = lshr i32 %117, %8
  %119 = load ptr, ptr %25, align 8, !tbaa !44
  %120 = tail call signext i32 @putc(i32 noundef signext %118, ptr noundef %119)
  %121 = load ptr, ptr %72, align 8, !tbaa !38
  %122 = getelementptr inbounds i8, ptr %121, i64 %99
  %123 = load i8, ptr %122, align 1, !tbaa !41
  %124 = zext i8 %123 to i32
  %125 = lshr i32 %124, %8
  br label %134

126:                                              ; preds = %101
  %127 = load ptr, ptr %25, align 8, !tbaa !44
  %128 = tail call signext i32 @putc(i32 noundef signext %110, ptr noundef %127)
  br label %134

129:                                              ; preds = %98
  %130 = load ptr, ptr %25, align 8, !tbaa !44
  %131 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %130)
  %132 = load ptr, ptr %25, align 8, !tbaa !44
  %133 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %132)
  br label %134

134:                                              ; preds = %129, %113, %126
  %135 = phi i32 [ 0, %129 ], [ %125, %113 ], [ %110, %126 ]
  %136 = load ptr, ptr %25, align 8, !tbaa !44
  %137 = tail call signext i32 @putc(i32 noundef signext %135, ptr noundef %136)
  %138 = add nuw nsw i64 %99, 1
  %139 = icmp eq i64 %138, %78
  br i1 %139, label %140, label %98, !llvm.loop !54

140:                                              ; preds = %134, %88, %23
  %141 = load ptr, ptr %25, align 8, !tbaa !44
  %142 = tail call signext i32 @putc(i32 noundef signext 44, ptr noundef %141)
  %143 = load ptr, ptr %25, align 8, !tbaa !44
  %144 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %143)
  %145 = load ptr, ptr %25, align 8, !tbaa !44
  %146 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %145)
  %147 = load ptr, ptr %25, align 8, !tbaa !44
  %148 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %147)
  %149 = load ptr, ptr %25, align 8, !tbaa !44
  %150 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %149)
  %151 = load ptr, ptr %4, align 8, !tbaa !17
  %152 = getelementptr inbounds i8, ptr %151, i64 136
  %153 = load i32, ptr %152, align 8, !tbaa !33
  %154 = and i32 %153, 255
  %155 = load ptr, ptr %25, align 8, !tbaa !44
  %156 = tail call signext i32 @putc(i32 noundef signext %154, ptr noundef %155)
  %157 = lshr i32 %153, 8
  %158 = and i32 %157, 255
  %159 = load ptr, ptr %25, align 8, !tbaa !44
  %160 = tail call signext i32 @putc(i32 noundef signext %158, ptr noundef %159)
  %161 = load ptr, ptr %4, align 8, !tbaa !17
  %162 = getelementptr inbounds i8, ptr %161, i64 140
  %163 = load i32, ptr %162, align 4, !tbaa !53
  %164 = and i32 %163, 255
  %165 = load ptr, ptr %25, align 8, !tbaa !44
  %166 = tail call signext i32 @putc(i32 noundef signext %164, ptr noundef %165)
  %167 = lshr i32 %163, 8
  %168 = and i32 %167, 255
  %169 = load ptr, ptr %25, align 8, !tbaa !44
  %170 = tail call signext i32 @putc(i32 noundef signext %168, ptr noundef %169)
  %171 = load ptr, ptr %25, align 8, !tbaa !44
  %172 = tail call signext i32 @putc(i32 noundef signext 0, ptr noundef %171)
  %173 = load ptr, ptr %25, align 8, !tbaa !44
  %174 = tail call signext i32 @putc(i32 noundef signext %24, ptr noundef %173)
  %175 = add nuw nsw i32 %24, 1
  %176 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %175, ptr %176, align 8, !tbaa !42
  %177 = shl nsw i32 -2, %24
  %178 = xor i32 %177, -1
  %179 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 %178, ptr %179, align 4, !tbaa !48
  %180 = shl nuw i32 1, %24
  %181 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 %180, ptr %181, align 4, !tbaa !49
  %182 = add nuw nsw i32 %180, 1
  %183 = getelementptr inbounds i8, ptr %0, i64 80
  store i32 %182, ptr %183, align 8, !tbaa !51
  %184 = add nuw nsw i32 %180, 2
  %185 = getelementptr inbounds i8, ptr %0, i64 84
  store i32 %184, ptr %185, align 4, !tbaa !47
  %186 = getelementptr inbounds i8, ptr %0, i64 88
  store i32 0, ptr %186, align 8, !tbaa !43
  %187 = getelementptr inbounds i8, ptr %0, i64 64
  %188 = getelementptr inbounds i8, ptr %0, i64 72
  %189 = sext i32 %180 to i64
  store i64 %189, ptr %187, align 8, !tbaa !40
  store i32 %175, ptr %188, align 8, !tbaa !39
  %190 = icmp ugt i32 %19, 6
  br i1 %190, label %191, label %224

191:                                              ; preds = %140
  %192 = getelementptr inbounds i8, ptr %0, i64 92
  br label %193

193:                                              ; preds = %217, %191
  %194 = phi i32 [ 0, %191 ], [ %218, %217 ]
  %195 = phi i64 [ %189, %191 ], [ %220, %217 ]
  %196 = trunc i64 %195 to i8
  %197 = add nsw i32 %194, 1
  store i32 %197, ptr %186, align 8, !tbaa !43
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [256 x i8], ptr %192, i64 0, i64 %198
  store i8 %196, ptr %199, align 1, !tbaa !41
  %200 = load i32, ptr %186, align 8, !tbaa !43
  %201 = icmp sgt i32 %200, 254
  br i1 %201, label %202, label %217

202:                                              ; preds = %193
  %203 = add nuw nsw i32 %200, 1
  store i32 %203, ptr %186, align 8, !tbaa !43
  %204 = trunc i32 %200 to i8
  store i8 %204, ptr %192, align 4, !tbaa !41
  %205 = zext nneg i32 %203 to i64
  %206 = load ptr, ptr %25, align 8, !tbaa !44
  %207 = tail call i64 @fwrite(ptr noundef nonnull %192, i64 noundef 1, i64 noundef %205, ptr noundef %206)
  %208 = load i32, ptr %186, align 8, !tbaa !43
  %209 = sext i32 %208 to i64
  %210 = icmp eq i64 %207, %209
  br i1 %210, label %216, label %211

211:                                              ; preds = %202
  %212 = load ptr, ptr %4, align 8, !tbaa !17
  %213 = load ptr, ptr %212, align 8, !tbaa !24
  %214 = getelementptr inbounds i8, ptr %213, i64 40
  store i32 37, ptr %214, align 8, !tbaa !25
  %215 = load ptr, ptr %213, align 8, !tbaa !27
  tail call void %215(ptr noundef nonnull %212) #5
  br label %216

216:                                              ; preds = %211, %202
  store i32 0, ptr %186, align 8, !tbaa !43
  br label %217

217:                                              ; preds = %216, %193
  %218 = phi i32 [ 0, %216 ], [ %200, %193 ]
  %219 = load i64, ptr %187, align 8, !tbaa !40
  %220 = ashr i64 %219, 8
  store i64 %220, ptr %187, align 8, !tbaa !40
  %221 = load i32, ptr %188, align 8, !tbaa !39
  %222 = add nsw i32 %221, -8
  store i32 %222, ptr %188, align 8, !tbaa !39
  %223 = icmp sgt i32 %221, 15
  br i1 %223, label %193, label %224, !llvm.loop !45

224:                                              ; preds = %217, %140
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare dso_local noundef signext i32 @ferror(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!17 = !{!18, !8, i64 48}
!18 = !{!"", !19, i64 0, !8, i64 48, !11, i64 56, !11, i64 60, !16, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !9, i64 92}
!19 = !{!"djpeg_dest_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40}
!20 = !{!18, !8, i64 0}
!21 = !{!18, !8, i64 8}
!22 = !{!18, !8, i64 16}
!23 = !{!7, !11, i64 64}
!24 = !{!7, !8, i64 0}
!25 = !{!26, !11, i64 40}
!26 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!27 = !{!26, !8, i64 0}
!28 = !{!7, !11, i64 296}
!29 = !{!7, !11, i64 108}
!30 = !{!7, !11, i64 120}
!31 = !{!7, !11, i64 148}
!32 = !{!15, !8, i64 16}
!33 = !{!7, !11, i64 136}
!34 = !{!18, !8, i64 32}
!35 = !{!18, !11, i64 40}
!36 = !{!7, !11, i64 156}
!37 = !{!7, !8, i64 160}
!38 = !{!8, !8, i64 0}
!39 = !{!18, !11, i64 72}
!40 = !{!18, !16, i64 64}
!41 = !{!9, !9, i64 0}
!42 = !{!18, !11, i64 56}
!43 = !{!18, !11, i64 88}
!44 = !{!18, !8, i64 24}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!18, !11, i64 84}
!48 = !{!18, !11, i64 60}
!49 = !{!18, !11, i64 76}
!50 = distinct !{!50, !46}
!51 = !{!18, !11, i64 80}
!52 = distinct !{!52, !46}
!53 = !{!7, !11, i64 140}
!54 = distinct !{!54, !46}
