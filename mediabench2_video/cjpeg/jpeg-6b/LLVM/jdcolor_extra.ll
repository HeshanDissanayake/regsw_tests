; ModuleID = 'jdcolor.c'
source_filename = "jdcolor.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind
define dso_local void @jinit_color_deconverter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 48) #4
  %6 = getelementptr inbounds i8, ptr %0, i64 616
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @start_pass_dcolor, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %0, i64 60
  %8 = load i32, ptr %7, align 4, !tbaa !21
  switch i32 %8, label %21 [
    i32 1, label %9
    i32 2, label %13
    i32 3, label %13
    i32 4, label %17
    i32 5, label %17
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %0, i64 56
  %11 = load i32, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %29, label %25

13:                                               ; preds = %1, %1
  %14 = getelementptr inbounds i8, ptr %0, i64 56
  %15 = load i32, ptr %14, align 8, !tbaa !22
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %29, label %25

17:                                               ; preds = %1, %1
  %18 = getelementptr inbounds i8, ptr %0, i64 56
  %19 = load i32, ptr %18, align 8, !tbaa !22
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %29, label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds i8, ptr %0, i64 56
  %23 = load i32, ptr %22, align 8, !tbaa !22
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %17, %13, %9
  %26 = load ptr, ptr %0, align 8, !tbaa !23
  %27 = getelementptr inbounds i8, ptr %26, i64 40
  store i32 10, ptr %27, align 8, !tbaa !24
  %28 = load ptr, ptr %26, align 8, !tbaa !26
  tail call void %28(ptr noundef nonnull %0) #4
  br label %29

29:                                               ; preds = %25, %21, %17, %13, %9
  %30 = getelementptr inbounds i8, ptr %0, i64 64
  %31 = load i32, ptr %30, align 8, !tbaa !27
  switch i32 %31, label %159 [
    i32 1, label %32
    i32 2, label %53
    i32 4, label %107
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %0, i64 144
  store i32 1, ptr %33, align 8, !tbaa !28
  %34 = load i32, ptr %7, align 4, !tbaa !21
  switch i32 %34, label %49 [
    i32 1, label %35
    i32 3, label %35
  ]

35:                                               ; preds = %32, %32
  %36 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @grayscale_convert, ptr %36, align 8, !tbaa !29
  %37 = getelementptr inbounds i8, ptr %0, i64 56
  %38 = load i32, ptr %37, align 8, !tbaa !22
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %171

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %0, i64 304
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = zext nneg i32 %38 to i64
  br label %44

44:                                               ; preds = %40, %44
  %45 = phi i64 [ 1, %40 ], [ %47, %44 ]
  %46 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 %45, i32 12
  store i32 0, ptr %46, align 8, !tbaa !31
  %47 = add nuw nsw i64 %45, 1
  %48 = icmp eq i64 %47, %43
  br i1 %48, label %171, label %44

49:                                               ; preds = %32
  %50 = load ptr, ptr %0, align 8, !tbaa !23
  %51 = getelementptr inbounds i8, ptr %50, i64 40
  store i32 27, ptr %51, align 8, !tbaa !24
  %52 = load ptr, ptr %50, align 8, !tbaa !26
  tail call void %52(ptr noundef nonnull %0) #4
  br label %171

53:                                               ; preds = %29
  %54 = getelementptr inbounds i8, ptr %0, i64 144
  store i32 3, ptr %54, align 8, !tbaa !28
  %55 = load i32, ptr %7, align 4, !tbaa !21
  switch i32 %55, label %103 [
    i32 3, label %56
    i32 1, label %99
    i32 2, label %101
  ]

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @ycc_rgb_convert, ptr %57, align 8, !tbaa !29
  %58 = load ptr, ptr %6, align 8, !tbaa !17
  %59 = load ptr, ptr %2, align 8, !tbaa !6
  %60 = load ptr, ptr %59, align 8, !tbaa !14
  %61 = tail call ptr %60(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 1024) #4
  %62 = getelementptr inbounds i8, ptr %58, i64 16
  store ptr %61, ptr %62, align 8, !tbaa !33
  %63 = load ptr, ptr %2, align 8, !tbaa !6
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = tail call ptr %64(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 1024) #4
  %66 = getelementptr inbounds i8, ptr %58, i64 24
  store ptr %65, ptr %66, align 8, !tbaa !34
  %67 = load ptr, ptr %2, align 8, !tbaa !6
  %68 = load ptr, ptr %67, align 8, !tbaa !14
  %69 = tail call ptr %68(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 2048) #4
  %70 = getelementptr inbounds i8, ptr %58, i64 32
  store ptr %69, ptr %70, align 8, !tbaa !35
  %71 = load ptr, ptr %2, align 8, !tbaa !6
  %72 = load ptr, ptr %71, align 8, !tbaa !14
  %73 = tail call ptr %72(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 2048) #4
  %74 = getelementptr inbounds i8, ptr %58, i64 40
  store ptr %73, ptr %74, align 8, !tbaa !36
  %75 = load ptr, ptr %62, align 8, !tbaa !33
  %76 = load ptr, ptr %66, align 8, !tbaa !34
  %77 = load ptr, ptr %70, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %78, %56
  %79 = phi i64 [ 0, %56 ], [ %96, %78 ]
  %80 = phi i64 [ -128, %56 ], [ %97, %78 ]
  %81 = mul nsw i64 %80, 91881
  %82 = add nsw i64 %81, 32768
  %83 = lshr i64 %82, 16
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds i32, ptr %75, i64 %79
  store i32 %84, ptr %85, align 4, !tbaa !37
  %86 = mul nsw i64 %80, 116130
  %87 = add nsw i64 %86, 32768
  %88 = lshr i64 %87, 16
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds i32, ptr %76, i64 %79
  store i32 %89, ptr %90, align 4, !tbaa !37
  %91 = mul nsw i64 %80, -46802
  %92 = getelementptr inbounds i64, ptr %77, i64 %79
  store i64 %91, ptr %92, align 8, !tbaa !38
  %93 = mul nsw i64 %80, -22554
  %94 = add nsw i64 %93, 32768
  %95 = getelementptr inbounds i64, ptr %73, i64 %79
  store i64 %94, ptr %95, align 8, !tbaa !38
  %96 = add nuw nsw i64 %79, 1
  %97 = add nsw i64 %80, 1
  %98 = icmp eq i64 %96, 256
  br i1 %98, label %171, label %78

99:                                               ; preds = %53
  %100 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @gray_rgb_convert, ptr %100, align 8, !tbaa !29
  br label %171

101:                                              ; preds = %53
  %102 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @null_convert, ptr %102, align 8, !tbaa !29
  br label %171

103:                                              ; preds = %53
  %104 = load ptr, ptr %0, align 8, !tbaa !23
  %105 = getelementptr inbounds i8, ptr %104, i64 40
  store i32 27, ptr %105, align 8, !tbaa !24
  %106 = load ptr, ptr %104, align 8, !tbaa !26
  tail call void %106(ptr noundef nonnull %0) #4
  br label %171

107:                                              ; preds = %29
  %108 = getelementptr inbounds i8, ptr %0, i64 144
  store i32 4, ptr %108, align 8, !tbaa !28
  %109 = load i32, ptr %7, align 4, !tbaa !21
  switch i32 %109, label %155 [
    i32 5, label %110
    i32 4, label %153
  ]

110:                                              ; preds = %107
  %111 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @ycck_cmyk_convert, ptr %111, align 8, !tbaa !29
  %112 = load ptr, ptr %6, align 8, !tbaa !17
  %113 = load ptr, ptr %2, align 8, !tbaa !6
  %114 = load ptr, ptr %113, align 8, !tbaa !14
  %115 = tail call ptr %114(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 1024) #4
  %116 = getelementptr inbounds i8, ptr %112, i64 16
  store ptr %115, ptr %116, align 8, !tbaa !33
  %117 = load ptr, ptr %2, align 8, !tbaa !6
  %118 = load ptr, ptr %117, align 8, !tbaa !14
  %119 = tail call ptr %118(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 1024) #4
  %120 = getelementptr inbounds i8, ptr %112, i64 24
  store ptr %119, ptr %120, align 8, !tbaa !34
  %121 = load ptr, ptr %2, align 8, !tbaa !6
  %122 = load ptr, ptr %121, align 8, !tbaa !14
  %123 = tail call ptr %122(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 2048) #4
  %124 = getelementptr inbounds i8, ptr %112, i64 32
  store ptr %123, ptr %124, align 8, !tbaa !35
  %125 = load ptr, ptr %2, align 8, !tbaa !6
  %126 = load ptr, ptr %125, align 8, !tbaa !14
  %127 = tail call ptr %126(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 2048) #4
  %128 = getelementptr inbounds i8, ptr %112, i64 40
  store ptr %127, ptr %128, align 8, !tbaa !36
  %129 = load ptr, ptr %116, align 8, !tbaa !33
  %130 = load ptr, ptr %120, align 8, !tbaa !34
  %131 = load ptr, ptr %124, align 8, !tbaa !35
  br label %132

132:                                              ; preds = %132, %110
  %133 = phi i64 [ 0, %110 ], [ %150, %132 ]
  %134 = phi i64 [ -128, %110 ], [ %151, %132 ]
  %135 = mul nsw i64 %134, 91881
  %136 = add nsw i64 %135, 32768
  %137 = lshr i64 %136, 16
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds i32, ptr %129, i64 %133
  store i32 %138, ptr %139, align 4, !tbaa !37
  %140 = mul nsw i64 %134, 116130
  %141 = add nsw i64 %140, 32768
  %142 = lshr i64 %141, 16
  %143 = trunc i64 %142 to i32
  %144 = getelementptr inbounds i32, ptr %130, i64 %133
  store i32 %143, ptr %144, align 4, !tbaa !37
  %145 = mul nsw i64 %134, -46802
  %146 = getelementptr inbounds i64, ptr %131, i64 %133
  store i64 %145, ptr %146, align 8, !tbaa !38
  %147 = mul nsw i64 %134, -22554
  %148 = add nsw i64 %147, 32768
  %149 = getelementptr inbounds i64, ptr %127, i64 %133
  store i64 %148, ptr %149, align 8, !tbaa !38
  %150 = add nuw nsw i64 %133, 1
  %151 = add nsw i64 %134, 1
  %152 = icmp eq i64 %150, 256
  br i1 %152, label %171, label %132

153:                                              ; preds = %107
  %154 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @null_convert, ptr %154, align 8, !tbaa !29
  br label %171

155:                                              ; preds = %107
  %156 = load ptr, ptr %0, align 8, !tbaa !23
  %157 = getelementptr inbounds i8, ptr %156, i64 40
  store i32 27, ptr %157, align 8, !tbaa !24
  %158 = load ptr, ptr %156, align 8, !tbaa !26
  tail call void %158(ptr noundef nonnull %0) #4
  br label %171

159:                                              ; preds = %29
  %160 = load i32, ptr %7, align 4, !tbaa !21
  %161 = icmp eq i32 %31, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = getelementptr inbounds i8, ptr %0, i64 56
  %164 = load i32, ptr %163, align 8, !tbaa !22
  %165 = getelementptr inbounds i8, ptr %0, i64 144
  store i32 %164, ptr %165, align 8, !tbaa !28
  %166 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @null_convert, ptr %166, align 8, !tbaa !29
  br label %171

167:                                              ; preds = %159
  %168 = load ptr, ptr %0, align 8, !tbaa !23
  %169 = getelementptr inbounds i8, ptr %168, i64 40
  store i32 27, ptr %169, align 8, !tbaa !24
  %170 = load ptr, ptr %168, align 8, !tbaa !26
  tail call void %170(ptr noundef nonnull %0) #4
  br label %171

171:                                              ; preds = %132, %78, %44, %35, %162, %167, %155, %153, %101, %103, %99, %49
  %172 = getelementptr inbounds i8, ptr %0, i64 108
  %173 = load i32, ptr %172, align 4, !tbaa !39
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8, ptr %0, i64 144
  %177 = load i32, ptr %176, align 8, !tbaa !28
  br label %178

178:                                              ; preds = %171, %175
  %179 = phi i32 [ %177, %175 ], [ 1, %171 ]
  %180 = getelementptr inbounds i8, ptr %0, i64 148
  store i32 %179, ptr %180, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal void @start_pass_dcolor(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: nounwind
define internal void @grayscale_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, ptr noundef %3, i32 noundef signext %4) #0 {
  %6 = load ptr, ptr %1, align 8, !tbaa !40
  %7 = getelementptr inbounds i8, ptr %0, i64 136
  %8 = load i32, ptr %7, align 8, !tbaa !41
  tail call void @jcopy_sample_rows(ptr noundef %6, i32 noundef signext %2, ptr noundef %3, i32 noundef signext 0, i32 noundef signext %4, i32 noundef signext %8) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @ycc_rgb_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 616
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds i8, ptr %0, i64 136
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds i8, ptr %0, i64 424
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds i8, ptr %7, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = getelementptr inbounds i8, ptr %7, i64 24
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %7, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds i8, ptr %7, i64 40
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = icmp sgt i32 %4, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %5
  %22 = getelementptr inbounds i8, ptr %1, i64 8
  %23 = getelementptr inbounds i8, ptr %1, i64 16
  %24 = icmp eq i32 %9, 0
  br i1 %24, label %87, label %25

25:                                               ; preds = %21
  %26 = zext i32 %9 to i64
  br label %27

27:                                               ; preds = %25, %84
  %28 = phi i32 [ %31, %84 ], [ %4, %25 ]
  %29 = phi i32 [ %42, %84 ], [ %2, %25 ]
  %30 = phi ptr [ %85, %84 ], [ %3, %25 ]
  %31 = add nsw i32 %28, -1
  %32 = load ptr, ptr %1, align 8, !tbaa !40
  %33 = zext i32 %29 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = load ptr, ptr %22, align 8, !tbaa !40
  %37 = getelementptr inbounds ptr, ptr %36, i64 %33
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  %39 = load ptr, ptr %23, align 8, !tbaa !40
  %40 = getelementptr inbounds ptr, ptr %39, i64 %33
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = add i32 %29, 1
  %43 = load ptr, ptr %30, align 8, !tbaa !40
  br label %44

44:                                               ; preds = %27, %44
  %45 = phi i64 [ 0, %27 ], [ %82, %44 ]
  %46 = phi ptr [ %43, %27 ], [ %81, %44 ]
  %47 = getelementptr inbounds i8, ptr %35, i64 %45
  %48 = load i8, ptr %47, align 1, !tbaa !43
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 %45
  %51 = load i8, ptr %50, align 1, !tbaa !43
  %52 = getelementptr inbounds i8, ptr %41, i64 %45
  %53 = load i8, ptr %52, align 1, !tbaa !43
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i32, ptr %13, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !37
  %57 = add nsw i32 %56, %49
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %11, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !43
  store i8 %60, ptr %46, align 1, !tbaa !43
  %61 = zext i8 %51 to i64
  %62 = getelementptr inbounds i64, ptr %19, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !38
  %64 = getelementptr inbounds i64, ptr %17, i64 %54
  %65 = load i64, ptr %64, align 8, !tbaa !38
  %66 = add nsw i64 %65, %63
  %67 = lshr i64 %66, 16
  %68 = trunc i64 %67 to i32
  %69 = add nsw i32 %68, %49
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %11, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !43
  %73 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %72, ptr %73, align 1, !tbaa !43
  %74 = getelementptr inbounds i32, ptr %15, i64 %61
  %75 = load i32, ptr %74, align 4, !tbaa !37
  %76 = add nsw i32 %75, %49
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %11, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !43
  %80 = getelementptr inbounds i8, ptr %46, i64 2
  store i8 %79, ptr %80, align 1, !tbaa !43
  %81 = getelementptr inbounds i8, ptr %46, i64 3
  %82 = add nuw nsw i64 %45, 1
  %83 = icmp eq i64 %82, %26
  br i1 %83, label %84, label %44

84:                                               ; preds = %44
  %85 = getelementptr inbounds i8, ptr %30, i64 8
  %86 = icmp sgt i32 %28, 1
  br i1 %86, label %27, label %87

87:                                               ; preds = %84, %21, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @gray_rgb_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 136
  %7 = load i32, ptr %6, align 8, !tbaa !41
  %8 = icmp slt i32 %4, 1
  %9 = icmp eq i32 %7, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %37, label %11

11:                                               ; preds = %5
  %12 = zext i32 %7 to i64
  br label %13

13:                                               ; preds = %11, %33
  %14 = phi i32 [ %17, %33 ], [ %4, %11 ]
  %15 = phi i32 [ %34, %33 ], [ %2, %11 ]
  %16 = phi ptr [ %35, %33 ], [ %3, %11 ]
  %17 = add nsw i32 %14, -1
  %18 = load ptr, ptr %1, align 8, !tbaa !40
  %19 = zext i32 %15 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = load ptr, ptr %16, align 8, !tbaa !40
  br label %23

23:                                               ; preds = %13, %23
  %24 = phi i64 [ 0, %13 ], [ %31, %23 ]
  %25 = phi ptr [ %22, %13 ], [ %30, %23 ]
  %26 = getelementptr inbounds i8, ptr %21, i64 %24
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 %27, ptr %28, align 1, !tbaa !43
  %29 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %27, ptr %29, align 1, !tbaa !43
  store i8 %27, ptr %25, align 1, !tbaa !43
  %30 = getelementptr inbounds i8, ptr %25, i64 3
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %33, label %23

33:                                               ; preds = %23
  %34 = add i32 %15, 1
  %35 = getelementptr inbounds i8, ptr %16, i64 8
  %36 = icmp sgt i32 %14, 1
  br i1 %36, label %13, label %37

37:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @null_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 56
  %7 = load i32, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds i8, ptr %0, i64 136
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %5
  %12 = icmp slt i32 %7, 1
  %13 = sext i32 %7 to i64
  %14 = icmp eq i32 %9, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %48, label %16

16:                                               ; preds = %11
  %17 = zext nneg i32 %7 to i64
  br label %18

18:                                               ; preds = %16, %44
  %19 = phi i32 [ %22, %44 ], [ %4, %16 ]
  %20 = phi i32 [ %45, %44 ], [ %2, %16 ]
  %21 = phi ptr [ %46, %44 ], [ %3, %16 ]
  %22 = add nsw i32 %19, -1
  %23 = zext i32 %20 to i64
  br label %24

24:                                               ; preds = %18, %41
  %25 = phi i64 [ 0, %18 ], [ %42, %41 ]
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  %30 = load ptr, ptr %21, align 8, !tbaa !40
  %31 = getelementptr inbounds i8, ptr %30, i64 %25
  br label %32

32:                                               ; preds = %32, %24
  %33 = phi i32 [ %9, %24 ], [ %39, %32 ]
  %34 = phi ptr [ %31, %24 ], [ %38, %32 ]
  %35 = phi ptr [ %29, %24 ], [ %36, %32 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load i8, ptr %35, align 1, !tbaa !43
  store i8 %37, ptr %34, align 1, !tbaa !43
  %38 = getelementptr inbounds i8, ptr %34, i64 %13
  %39 = add i32 %33, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %32

41:                                               ; preds = %32
  %42 = add nuw nsw i64 %25, 1
  %43 = icmp eq i64 %42, %17
  br i1 %43, label %44, label %24

44:                                               ; preds = %41
  %45 = add i32 %20, 1
  %46 = getelementptr inbounds i8, ptr %21, i64 8
  %47 = icmp sgt i32 %19, 1
  br i1 %47, label %18, label %48

48:                                               ; preds = %44, %11, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @ycck_cmyk_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) #2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 616
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds i8, ptr %0, i64 136
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds i8, ptr %0, i64 424
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds i8, ptr %7, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = getelementptr inbounds i8, ptr %7, i64 24
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %7, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds i8, ptr %7, i64 40
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = icmp sgt i32 %4, 0
  br i1 %20, label %21, label %95

21:                                               ; preds = %5
  %22 = getelementptr inbounds i8, ptr %1, i64 8
  %23 = getelementptr inbounds i8, ptr %1, i64 16
  %24 = getelementptr inbounds i8, ptr %1, i64 24
  %25 = icmp eq i32 %9, 0
  br i1 %25, label %95, label %26

26:                                               ; preds = %21
  %27 = zext i32 %9 to i64
  br label %28

28:                                               ; preds = %26, %92
  %29 = phi i32 [ %32, %92 ], [ %4, %26 ]
  %30 = phi i32 [ %46, %92 ], [ %2, %26 ]
  %31 = phi ptr [ %93, %92 ], [ %3, %26 ]
  %32 = add nsw i32 %29, -1
  %33 = load ptr, ptr %1, align 8, !tbaa !40
  %34 = zext i32 %30 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  %37 = load ptr, ptr %22, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 %34
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = load ptr, ptr %23, align 8, !tbaa !40
  %41 = getelementptr inbounds ptr, ptr %40, i64 %34
  %42 = load ptr, ptr %41, align 8, !tbaa !40
  %43 = load ptr, ptr %24, align 8, !tbaa !40
  %44 = getelementptr inbounds ptr, ptr %43, i64 %34
  %45 = load ptr, ptr %44, align 8, !tbaa !40
  %46 = add i32 %30, 1
  %47 = load ptr, ptr %31, align 8, !tbaa !40
  br label %48

48:                                               ; preds = %28, %48
  %49 = phi i64 [ 0, %28 ], [ %90, %48 ]
  %50 = phi ptr [ %47, %28 ], [ %89, %48 ]
  %51 = getelementptr inbounds i8, ptr %36, i64 %49
  %52 = load i8, ptr %51, align 1, !tbaa !43
  %53 = getelementptr inbounds i8, ptr %39, i64 %49
  %54 = load i8, ptr %53, align 1, !tbaa !43
  %55 = getelementptr inbounds i8, ptr %42, i64 %49
  %56 = load i8, ptr %55, align 1, !tbaa !43
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i32, ptr %13, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !37
  %60 = xor i8 %52, -1
  %61 = zext i8 %60 to i32
  %62 = sub i32 %61, %59
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %11, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !43
  store i8 %65, ptr %50, align 1, !tbaa !43
  %66 = zext i8 %54 to i64
  %67 = getelementptr inbounds i64, ptr %19, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !38
  %69 = getelementptr inbounds i64, ptr %17, i64 %57
  %70 = load i64, ptr %69, align 8, !tbaa !38
  %71 = add nsw i64 %70, %68
  %72 = lshr i64 %71, 16
  %73 = trunc i64 %72 to i32
  %74 = sub i32 %61, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %11, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !43
  %78 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 %77, ptr %78, align 1, !tbaa !43
  %79 = getelementptr inbounds i32, ptr %15, i64 %66
  %80 = load i32, ptr %79, align 4, !tbaa !37
  %81 = sub i32 %61, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %11, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !43
  %85 = getelementptr inbounds i8, ptr %50, i64 2
  store i8 %84, ptr %85, align 1, !tbaa !43
  %86 = getelementptr inbounds i8, ptr %45, i64 %49
  %87 = load i8, ptr %86, align 1, !tbaa !43
  %88 = getelementptr inbounds i8, ptr %50, i64 3
  store i8 %87, ptr %88, align 1, !tbaa !43
  %89 = getelementptr inbounds i8, ptr %50, i64 4
  %90 = add nuw nsw i64 %49, 1
  %91 = icmp eq i64 %90, %27
  br i1 %91, label %92, label %48

92:                                               ; preds = %48
  %93 = getelementptr inbounds i8, ptr %31, i64 8
  %94 = icmp sgt i32 %29, 1
  br i1 %94, label %28, label %95

95:                                               ; preds = %92, %21, %5
  ret void
}

declare dso_local void @jcopy_sample_rows(ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!17 = !{!7, !8, i64 616}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!20 = !{!"jpeg_color_deconverter", !8, i64 0, !8, i64 8}
!21 = !{!7, !11, i64 60}
!22 = !{!7, !11, i64 56}
!23 = !{!7, !8, i64 0}
!24 = !{!25, !11, i64 40}
!25 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!26 = !{!25, !8, i64 0}
!27 = !{!7, !11, i64 64}
!28 = !{!7, !11, i64 144}
!29 = !{!19, !8, i64 8}
!30 = !{!7, !8, i64 304}
!31 = !{!32, !11, i64 48}
!32 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!33 = !{!19, !8, i64 16}
!34 = !{!19, !8, i64 24}
!35 = !{!19, !8, i64 32}
!36 = !{!19, !8, i64 40}
!37 = !{!11, !11, i64 0}
!38 = !{!16, !16, i64 0}
!39 = !{!7, !11, i64 108}
!40 = !{!8, !8, i64 0}
!41 = !{!7, !11, i64 136}
!42 = !{!7, !8, i64 424}
!43 = !{!9, !9, i64 0}
