; ModuleID = 'getbits.c'
source_filename = "getbits.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@ld = external dso_local local_unnamed_addr global ptr, align 8
@System_Stream_Flag = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @Initialize_Buffer() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2096
  store i32 0, ptr %2, align 8, !tbaa !10
  %3 = getelementptr inbounds i8, ptr %1, i64 2052
  %4 = getelementptr inbounds i8, ptr %1, i64 2056
  store ptr %3, ptr %4, align 8, !tbaa !13
  %5 = getelementptr inbounds i8, ptr %1, i64 2088
  store ptr %3, ptr %5, align 8, !tbaa !14
  %6 = getelementptr inbounds i8, ptr %1, i64 2080
  store i32 0, ptr %6, align 8, !tbaa !15
  tail call void @Flush_Buffer(i32 noundef signext 0)
  ret void
}

; Function Attrs: nounwind
define dso_local void @Flush_Buffer(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 2080
  %4 = load i32, ptr %3, align 8, !tbaa !15
  %5 = shl i32 %4, %0
  store i32 %5, ptr %3, align 8, !tbaa !15
  %6 = getelementptr inbounds i8, ptr %2, i64 2096
  %7 = load i32, ptr %6, align 8, !tbaa !10
  %8 = sub nsw i32 %7, %0
  store i32 %8, ptr %6, align 8, !tbaa !10
  %9 = icmp slt i32 %8, 25
  br i1 %9, label %10, label %160

10:                                               ; preds = %1
  %11 = load i32, ptr @System_Stream_Flag, align 4, !tbaa !16
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds i8, ptr %2, i64 2056
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  br i1 %12, label %66, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %2, i64 2088
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = getelementptr inbounds i8, ptr %17, i64 -4
  %19 = icmp ult ptr %14, %18
  br i1 %19, label %66, label %20

20:                                               ; preds = %15, %52
  %21 = phi ptr [ %53, %52 ], [ %2, %15 ]
  %22 = phi i32 [ %64, %52 ], [ %8, %15 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 2056
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = getelementptr inbounds i8, ptr %21, i64 2088
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  tail call void @Next_Packet() #4
  %29 = load ptr, ptr @ld, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 2056
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  br label %32

32:                                               ; preds = %28, %20
  %33 = phi ptr [ %29, %28 ], [ %21, %20 ]
  %34 = phi ptr [ %31, %28 ], [ %24, %20 ]
  %35 = getelementptr inbounds i8, ptr %33, i64 2056
  %36 = getelementptr inbounds i8, ptr %33, i64 2052
  %37 = icmp ult ptr %34, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %32, %38
  %39 = phi ptr [ %43, %38 ], [ %33, %32 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 4
  %41 = load i32, ptr %39, align 8, !tbaa !17
  %42 = tail call signext i32 @read(i32 noundef signext %41, ptr noundef nonnull %40, i32 noundef signext 2048) #4
  %43 = load ptr, ptr @ld, align 8, !tbaa !6
  %44 = getelementptr inbounds i8, ptr %43, i64 2056
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  %46 = getelementptr inbounds i8, ptr %45, i64 -2048
  store ptr %46, ptr %44, align 8, !tbaa !13
  %47 = getelementptr inbounds i8, ptr %43, i64 2088
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = getelementptr inbounds i8, ptr %48, i64 -2048
  store ptr %49, ptr %47, align 8, !tbaa !14
  %50 = getelementptr inbounds i8, ptr %43, i64 2052
  %51 = icmp ult ptr %46, %50
  br i1 %51, label %52, label %38

52:                                               ; preds = %38, %32
  %53 = phi ptr [ %33, %32 ], [ %43, %38 ]
  %54 = phi ptr [ %35, %32 ], [ %44, %38 ]
  %55 = phi ptr [ %34, %32 ], [ %46, %38 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %56, ptr %54, align 8, !tbaa !13
  %57 = load i8, ptr %55, align 1, !tbaa !18
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 24, %22
  %60 = shl i32 %58, %59
  %61 = getelementptr inbounds i8, ptr %53, i64 2080
  %62 = load i32, ptr %61, align 8, !tbaa !15
  %63 = or i32 %62, %60
  store i32 %63, ptr %61, align 8, !tbaa !15
  %64 = add nsw i32 %22, 8
  %65 = icmp slt i32 %22, 17
  br i1 %65, label %20, label %156

66:                                               ; preds = %10, %15
  %67 = getelementptr inbounds i8, ptr %2, i64 2056
  %68 = getelementptr inbounds i8, ptr %2, i64 2048
  %69 = icmp ult ptr %14, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66, %70
  %71 = phi i32 [ %79, %70 ], [ %5, %66 ]
  %72 = phi ptr [ %74, %70 ], [ %14, %66 ]
  %73 = phi i32 [ %80, %70 ], [ %8, %66 ]
  %74 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %74, ptr %67, align 8, !tbaa !13
  %75 = load i8, ptr %72, align 1, !tbaa !18
  %76 = zext i8 %75 to i32
  %77 = sub nsw i32 24, %73
  %78 = shl i32 %76, %77
  %79 = or i32 %78, %71
  store i32 %79, ptr %3, align 8, !tbaa !15
  %80 = add nsw i32 %73, 8
  %81 = icmp slt i32 %73, 17
  br i1 %81, label %70, label %156

82:                                               ; preds = %66, %142
  %83 = phi ptr [ %146, %142 ], [ %14, %66 ]
  %84 = phi ptr [ %143, %142 ], [ %2, %66 ]
  %85 = phi i32 [ %154, %142 ], [ %8, %66 ]
  %86 = getelementptr inbounds i8, ptr %84, i64 2052
  %87 = icmp ult ptr %83, %86
  br i1 %87, label %142, label %88

88:                                               ; preds = %82
  %89 = load i32, ptr %84, align 8, !tbaa !17
  %90 = getelementptr inbounds i8, ptr %84, i64 4
  %91 = tail call signext i32 @read(i32 noundef signext %89, ptr noundef nonnull %90, i32 noundef signext 2048) #4
  %92 = load ptr, ptr @ld, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %92, i64 4
  %94 = getelementptr inbounds i8, ptr %92, i64 2056
  store ptr %93, ptr %94, align 8, !tbaa !13
  %95 = load i32, ptr @System_Stream_Flag, align 4, !tbaa !16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = getelementptr inbounds i8, ptr %92, i64 2088
  %99 = load ptr, ptr %98, align 8, !tbaa !14
  %100 = getelementptr inbounds i8, ptr %99, i64 -2048
  store ptr %100, ptr %98, align 8, !tbaa !14
  br label %101

101:                                              ; preds = %97, %88
  %102 = icmp slt i32 %91, 2048
  br i1 %102, label %103, label %142

103:                                              ; preds = %101
  %104 = tail call i32 @llvm.smax.i32(i32 %91, i32 0)
  %105 = and i32 %104, 3
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = zext nneg i32 %104 to i64
  br label %114

109:                                              ; preds = %114
  %110 = icmp ult i64 %115, 2047
  br i1 %110, label %111, label %142

111:                                              ; preds = %109, %103
  %112 = phi i32 [ %120, %109 ], [ %104, %103 ]
  %113 = zext nneg i32 %112 to i64
  br label %123

114:                                              ; preds = %114, %107
  %115 = phi i64 [ %108, %107 ], [ %118, %114 ]
  %116 = load ptr, ptr @ld, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %116, i64 4
  %118 = add nuw nsw i64 %115, 1
  %119 = getelementptr inbounds [2048 x i8], ptr %117, i64 0, i64 %115
  store i8 0, ptr %119, align 1, !tbaa !18
  %120 = trunc nuw i64 %118 to i32
  %121 = and i32 %120, 3
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %109, label %114

123:                                              ; preds = %123, %111
  %124 = phi i64 [ %113, %111 ], [ %139, %123 ]
  %125 = load ptr, ptr @ld, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %125, i64 4
  %127 = add nuw nsw i64 %124, 1
  %128 = getelementptr inbounds [2048 x i8], ptr %126, i64 0, i64 %124
  store i8 0, ptr %128, align 1, !tbaa !18
  %129 = load ptr, ptr @ld, align 8, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %129, i64 4
  %131 = add nuw nsw i64 %124, 2
  %132 = getelementptr inbounds [2048 x i8], ptr %130, i64 0, i64 %127
  store i8 0, ptr %132, align 1, !tbaa !18
  %133 = load ptr, ptr @ld, align 8, !tbaa !6
  %134 = getelementptr inbounds i8, ptr %133, i64 4
  %135 = add nuw nsw i64 %124, 3
  %136 = getelementptr inbounds [2048 x i8], ptr %134, i64 0, i64 %131
  store i8 1, ptr %136, align 1, !tbaa !18
  %137 = load ptr, ptr @ld, align 8, !tbaa !6
  %138 = getelementptr inbounds i8, ptr %137, i64 4
  %139 = add nuw nsw i64 %124, 4
  %140 = getelementptr inbounds [2048 x i8], ptr %138, i64 0, i64 %135
  store i8 -73, ptr %140, align 1, !tbaa !18
  %141 = icmp ult i64 %124, 2044
  br i1 %141, label %123, label %142

142:                                              ; preds = %123, %109, %101, %82
  %143 = load ptr, ptr @ld, align 8, !tbaa !6
  %144 = getelementptr inbounds i8, ptr %143, i64 2056
  %145 = load ptr, ptr %144, align 8, !tbaa !13
  %146 = getelementptr inbounds i8, ptr %145, i64 1
  store ptr %146, ptr %144, align 8, !tbaa !13
  %147 = load i8, ptr %145, align 1, !tbaa !18
  %148 = zext i8 %147 to i32
  %149 = sub nsw i32 24, %85
  %150 = shl i32 %148, %149
  %151 = getelementptr inbounds i8, ptr %143, i64 2080
  %152 = load i32, ptr %151, align 8, !tbaa !15
  %153 = or i32 %150, %152
  store i32 %153, ptr %151, align 8, !tbaa !15
  %154 = add nsw i32 %85, 8
  %155 = icmp slt i32 %85, 17
  br i1 %155, label %82, label %156

156:                                              ; preds = %52, %142, %70
  %157 = phi ptr [ %2, %70 ], [ %143, %142 ], [ %53, %52 ]
  %158 = phi i32 [ %80, %70 ], [ %154, %142 ], [ %64, %52 ]
  %159 = getelementptr inbounds i8, ptr %157, i64 2096
  store i32 %158, ptr %159, align 8, !tbaa !10
  br label %160

160:                                              ; preds = %156, %1
  ret void
}

; Function Attrs: nounwind
define dso_local void @Fill_Buffer() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = load i32, ptr %1, align 8, !tbaa !17
  %3 = getelementptr inbounds i8, ptr %1, i64 4
  %4 = tail call signext i32 @read(i32 noundef signext %2, ptr noundef nonnull %3, i32 noundef signext 2048) #4
  %5 = load ptr, ptr @ld, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 4
  %7 = getelementptr inbounds i8, ptr %5, i64 2056
  store ptr %6, ptr %7, align 8, !tbaa !13
  %8 = load i32, ptr @System_Stream_Flag, align 4, !tbaa !16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds i8, ptr %5, i64 2088
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds i8, ptr %12, i64 -2048
  store ptr %13, ptr %11, align 8, !tbaa !14
  br label %14

14:                                               ; preds = %10, %0
  %15 = icmp slt i32 %4, 2048
  br i1 %15, label %16, label %55

16:                                               ; preds = %14
  %17 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = zext nneg i32 %17 to i64
  br label %27

22:                                               ; preds = %27
  %23 = icmp ult i64 %28, 2047
  br i1 %23, label %24, label %55

24:                                               ; preds = %16, %22
  %25 = phi i32 [ %33, %22 ], [ %17, %16 ]
  %26 = zext nneg i32 %25 to i64
  br label %36

27:                                               ; preds = %20, %27
  %28 = phi i64 [ %21, %20 ], [ %31, %27 ]
  %29 = load ptr, ptr @ld, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 4
  %31 = add nuw nsw i64 %28, 1
  %32 = getelementptr inbounds [2048 x i8], ptr %30, i64 0, i64 %28
  store i8 0, ptr %32, align 1, !tbaa !18
  %33 = trunc nuw i64 %31 to i32
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %22, label %27

36:                                               ; preds = %24, %36
  %37 = phi i64 [ %26, %24 ], [ %52, %36 ]
  %38 = load ptr, ptr @ld, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 4
  %40 = add nuw nsw i64 %37, 1
  %41 = getelementptr inbounds [2048 x i8], ptr %39, i64 0, i64 %37
  store i8 0, ptr %41, align 1, !tbaa !18
  %42 = load ptr, ptr @ld, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 4
  %44 = add nuw nsw i64 %37, 2
  %45 = getelementptr inbounds [2048 x i8], ptr %43, i64 0, i64 %40
  store i8 0, ptr %45, align 1, !tbaa !18
  %46 = load ptr, ptr @ld, align 8, !tbaa !6
  %47 = getelementptr inbounds i8, ptr %46, i64 4
  %48 = add nuw nsw i64 %37, 3
  %49 = getelementptr inbounds [2048 x i8], ptr %47, i64 0, i64 %44
  store i8 1, ptr %49, align 1, !tbaa !18
  %50 = load ptr, ptr @ld, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 4
  %52 = add nuw nsw i64 %37, 4
  %53 = getelementptr inbounds [2048 x i8], ptr %51, i64 0, i64 %48
  store i8 -73, ptr %53, align 1, !tbaa !18
  %54 = icmp ult i64 %37, 2044
  br i1 %54, label %36, label %55

55:                                               ; preds = %36, %22, %14
  ret void
}

declare dso_local signext i32 @read(...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local signext range(i32 0, 256) i32 @Get_Byte() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2056
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = getelementptr inbounds i8, ptr %1, i64 2052
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %11, %6 ], [ %1, %0 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 4
  %9 = load i32, ptr %7, align 8, !tbaa !17
  %10 = tail call signext i32 @read(i32 noundef signext %9, ptr noundef nonnull %8, i32 noundef signext 2048) #4
  %11 = load ptr, ptr @ld, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 2056
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds i8, ptr %13, i64 -2048
  store ptr %14, ptr %12, align 8, !tbaa !13
  %15 = getelementptr inbounds i8, ptr %11, i64 2088
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = getelementptr inbounds i8, ptr %16, i64 -2048
  store ptr %17, ptr %15, align 8, !tbaa !14
  %18 = getelementptr inbounds i8, ptr %11, i64 2052
  %19 = icmp ult ptr %14, %18
  br i1 %19, label %20, label %6

20:                                               ; preds = %6, %0
  %21 = phi ptr [ %2, %0 ], [ %12, %6 ]
  %22 = phi ptr [ %3, %0 ], [ %14, %6 ]
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %23, ptr %21, align 8, !tbaa !13
  %24 = load i8, ptr %22, align 1, !tbaa !18
  %25 = zext i8 %24 to i32
  ret i32 %25
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, 65536) i32 @Get_Word() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2056
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = getelementptr inbounds i8, ptr %1, i64 2052
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %11, %6 ], [ %1, %0 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 4
  %9 = load i32, ptr %7, align 8, !tbaa !17
  %10 = tail call signext i32 @read(i32 noundef signext %9, ptr noundef nonnull %8, i32 noundef signext 2048) #4
  %11 = load ptr, ptr @ld, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 2056
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds i8, ptr %13, i64 -2048
  store ptr %14, ptr %12, align 8, !tbaa !13
  %15 = getelementptr inbounds i8, ptr %11, i64 2088
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = getelementptr inbounds i8, ptr %16, i64 -2048
  store ptr %17, ptr %15, align 8, !tbaa !14
  %18 = getelementptr inbounds i8, ptr %11, i64 2052
  %19 = icmp ult ptr %14, %18
  br i1 %19, label %20, label %6

20:                                               ; preds = %6, %0
  %21 = phi ptr [ %1, %0 ], [ %11, %6 ]
  %22 = phi ptr [ %2, %0 ], [ %12, %6 ]
  %23 = phi ptr [ %3, %0 ], [ %14, %6 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %24, ptr %22, align 8, !tbaa !13
  %25 = load i8, ptr %23, align 1, !tbaa !18
  %26 = getelementptr inbounds i8, ptr %21, i64 2056
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  %28 = getelementptr inbounds i8, ptr %21, i64 2052
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %44, label %30

30:                                               ; preds = %20, %30
  %31 = phi ptr [ %35, %30 ], [ %21, %20 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 4
  %33 = load i32, ptr %31, align 8, !tbaa !17
  %34 = tail call signext i32 @read(i32 noundef signext %33, ptr noundef nonnull %32, i32 noundef signext 2048) #4
  %35 = load ptr, ptr @ld, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 2056
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = getelementptr inbounds i8, ptr %37, i64 -2048
  store ptr %38, ptr %36, align 8, !tbaa !13
  %39 = getelementptr inbounds i8, ptr %35, i64 2088
  %40 = load ptr, ptr %39, align 8, !tbaa !14
  %41 = getelementptr inbounds i8, ptr %40, i64 -2048
  store ptr %41, ptr %39, align 8, !tbaa !14
  %42 = getelementptr inbounds i8, ptr %35, i64 2052
  %43 = icmp ult ptr %38, %42
  br i1 %43, label %44, label %30

44:                                               ; preds = %30, %20
  %45 = phi ptr [ %26, %20 ], [ %36, %30 ]
  %46 = phi ptr [ %27, %20 ], [ %38, %30 ]
  %47 = zext i8 %25 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %49, ptr %45, align 8, !tbaa !13
  %50 = load i8, ptr %46, align 1, !tbaa !18
  %51 = zext i8 %50 to i32
  %52 = or disjoint i32 %48, %51
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext i32 @Show_Bits(i32 noundef signext %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 2080
  %4 = load i32, ptr %3, align 8, !tbaa !15
  %5 = sub nsw i32 32, %0
  %6 = lshr i32 %4, %5
  ret i32 %6
}

; Function Attrs: nounwind
define dso_local signext i32 @Get_Bits1() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2080
  %3 = load i32, ptr %2, align 8, !tbaa !15
  %4 = lshr i32 %3, 31
  tail call void @Flush_Buffer(i32 noundef signext 1)
  ret i32 %4
}

; Function Attrs: nounwind
define dso_local signext i32 @Get_Bits(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 2080
  %4 = load i32, ptr %3, align 8, !tbaa !15
  %5 = sub nsw i32 32, %0
  %6 = lshr i32 %4, %5
  tail call void @Flush_Buffer(i32 noundef signext %0)
  ret i32 %6
}

declare dso_local void @Next_Packet() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 2096}
!11 = !{!"layer_data", !12, i64 0, !8, i64 4, !7, i64 2056, !8, i64 2064, !12, i64 2080, !7, i64 2088, !12, i64 2096, !12, i64 2100, !8, i64 2104, !8, i64 2360, !8, i64 2616, !8, i64 2872, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !12, i64 3152, !12, i64 3156, !12, i64 3160, !12, i64 3164, !12, i64 3168, !12, i64 3172, !8, i64 3176}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !7, i64 2056}
!14 = !{!11, !7, i64 2088}
!15 = !{!11, !12, i64 2080}
!16 = !{!12, !12, i64 0}
!17 = !{!11, !12, i64 0}
!18 = !{!8, !8, i64 0}
