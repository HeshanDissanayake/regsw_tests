; ModuleID = 'rdswitch.c'
source_filename = "rdswitch.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open table file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Too many tables in file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid table data in file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Non-numeric data in file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't open scan definition file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Too many scans defined in file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Too many components in one scan in file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid scan entry format in file %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"JPEG quantization tables are numbered 0..%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%d%c%d%c\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"JPEG sampling factors must be 1..4\0A\00", align 1

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @read_quant_tables(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #7
  %8 = tail call ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = call fastcc signext i32 @read_text_integer(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %85, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr @stderr, align 8, !tbaa !6
  %15 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef %1) #8
  br label %94

16:                                               ; preds = %10, %81
  %17 = phi i32 [ %82, %81 ], [ 0, %10 ]
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !6
  %21 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef %1) #8
  %22 = call signext i32 @fclose(ptr noundef nonnull %8)
  br label %94

23:                                               ; preds = %16
  %24 = load i64, ptr %6, align 8, !tbaa !10
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr %7, align 4, !tbaa !12
  br label %26

26:                                               ; preds = %23, %76
  %27 = phi i64 [ 1, %23 ], [ %79, %76 ]
  br label %28

28:                                               ; preds = %26, %36
  %29 = call signext i32 @getc(ptr noundef nonnull %8)
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %31
  %32 = call signext i32 @getc(ptr noundef nonnull %8)
  switch i32 %32, label %31 [
    i32 -1, label %33
    i32 10, label %33
  ]

33:                                               ; preds = %31, %31, %28
  %34 = phi i32 [ %29, %28 ], [ %32, %31 ], [ %32, %31 ]
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %72, label %36

36:                                               ; preds = %33
  %37 = tail call ptr @__ctype_b_loc() #9
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = sext i32 %34 to i64
  %40 = getelementptr inbounds i16, ptr %38, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !14
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 8192
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %28, !llvm.loop !16

45:                                               ; preds = %36
  %46 = and i32 %42, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %45
  %49 = add nsw i32 %34, -48
  %50 = sext i32 %49 to i64
  br label %51

51:                                               ; preds = %67, %48
  %52 = phi i64 [ %50, %48 ], [ %71, %67 ]
  %53 = call signext i32 @getc(ptr noundef nonnull %8)
  %54 = icmp eq i32 %53, 35
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %55
  %56 = call signext i32 @getc(ptr noundef nonnull %8)
  switch i32 %56, label %55 [
    i32 -1, label %57
    i32 10, label %57
  ]

57:                                               ; preds = %55, %55, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %55 ], [ %56, %55 ]
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %76, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %37, align 8, !tbaa !6
  %62 = sext i32 %58 to i64
  %63 = getelementptr inbounds i16, ptr %61, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !14
  %65 = and i16 %64, 2048
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %60
  %68 = mul nsw i64 %52, 10
  %69 = add nsw i32 %58, -48
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  br label %51, !llvm.loop !18

72:                                               ; preds = %45, %33
  %73 = load ptr, ptr @stderr, align 8, !tbaa !6
  %74 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.3, ptr noundef %1) #8
  %75 = call signext i32 @fclose(ptr noundef nonnull %8)
  br label %94

76:                                               ; preds = %60, %57
  %77 = trunc i64 %52 to i32
  %78 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %27
  store i32 %77, ptr %78, align 4, !tbaa !12
  %79 = add nuw nsw i64 %27, 1
  %80 = icmp eq i64 %79, 64
  br i1 %80, label %81, label %26, !llvm.loop !19

81:                                               ; preds = %76
  store i64 %52, ptr %6, align 8, !tbaa !10
  store i32 %58, ptr %5, align 4, !tbaa !12
  call void @jpeg_add_quant_table(ptr noundef %0, i32 noundef signext %17, ptr noundef nonnull %7, i32 noundef signext %2, i32 noundef signext %3) #7
  %82 = add nuw nsw i32 %17, 1
  %83 = call fastcc signext i32 @read_text_integer(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %16, !llvm.loop !20

85:                                               ; preds = %81, %10
  %86 = load i32, ptr %5, align 4, !tbaa !12
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr @stderr, align 8, !tbaa !6
  %90 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.4, ptr noundef %1) #8
  %91 = call signext i32 @fclose(ptr noundef nonnull %8)
  br label %94

92:                                               ; preds = %85
  %93 = call signext i32 @fclose(ptr noundef nonnull %8)
  br label %94

94:                                               ; preds = %92, %88, %72, %19, %13
  %95 = phi i32 [ 0, %13 ], [ 0, %19 ], [ 0, %72 ], [ 0, %88 ], [ 1, %92 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %95
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
define internal fastcc signext range(i32 0, 2) i32 @read_text_integer(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  br label %4

4:                                                ; preds = %12, %3
  %5 = tail call signext i32 @getc(ptr noundef %0)
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %7
  %8 = tail call signext i32 @getc(ptr noundef %0)
  switch i32 %8, label %7 [
    i32 -1, label %9
    i32 10, label %9
  ]

9:                                                ; preds = %7, %7, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %7 ], [ %8, %7 ]
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %49, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @__ctype_b_loc() #9
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds i16, ptr %14, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !14
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 8192
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %4, !llvm.loop !16

21:                                               ; preds = %12
  %22 = and i32 %18, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %21
  %25 = add nsw i32 %10, -48
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %43, %24
  %28 = phi i64 [ %26, %24 ], [ %47, %43 ]
  %29 = tail call signext i32 @getc(ptr noundef %0)
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %31
  %32 = tail call signext i32 @getc(ptr noundef %0)
  switch i32 %32, label %31 [
    i32 -1, label %33
    i32 10, label %33
  ]

33:                                               ; preds = %31, %31, %27
  %34 = phi i32 [ %29, %27 ], [ %32, %31 ], [ %32, %31 ]
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %13, align 8, !tbaa !6
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds i16, ptr %37, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !14
  %41 = and i16 %40, 2048
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = mul nsw i64 %28, 10
  %45 = add nsw i32 %34, -48
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  br label %27, !llvm.loop !18

48:                                               ; preds = %36, %33
  store i64 %28, ptr %1, align 8, !tbaa !10
  br label %49

49:                                               ; preds = %9, %21, %48
  %50 = phi i32 [ %34, %48 ], [ %10, %21 ], [ -1, %9 ]
  %51 = phi i32 [ 1, %48 ], [ 0, %21 ], [ 0, %9 ]
  store i32 %50, ptr %2, align 4, !tbaa !12
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

declare dso_local void @jpeg_add_quant_table(ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @read_scan_script(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [100 x %struct.jpeg_scan_info], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 3600, ptr nonnull %5) #7
  %6 = tail call ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call fastcc signext i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %179, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !6
  %13 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef %1) #8
  br label %197

14:                                               ; preds = %8, %171
  %15 = phi ptr [ %172, %171 ], [ %5, %8 ]
  %16 = phi i32 [ %173, %171 ], [ 0, %8 ]
  %17 = icmp eq i32 %16, 100
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !6
  %20 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef %1) #8
  %21 = tail call signext i32 @fclose(ptr noundef nonnull %6)
  br label %197

22:                                               ; preds = %14
  %23 = load i64, ptr %4, align 8, !tbaa !10
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds i8, ptr %15, i64 4
  store i32 %24, ptr %25, align 4, !tbaa !12
  %26 = load i32, ptr %3, align 4, !tbaa !12
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %120

28:                                               ; preds = %22, %112
  %29 = phi i64 [ %116, %112 ], [ 1, %22 ]
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load ptr, ptr @stderr, align 8, !tbaa !6
  %33 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.7, ptr noundef %1) #8
  %34 = tail call signext i32 @fclose(ptr noundef nonnull %6)
  br label %197

35:                                               ; preds = %28, %43
  %36 = tail call signext i32 @getc(ptr noundef nonnull %6)
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %38
  %39 = tail call signext i32 @getc(ptr noundef nonnull %6)
  switch i32 %39, label %38 [
    i32 -1, label %40
    i32 10, label %40
  ]

40:                                               ; preds = %38, %38, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %38 ], [ %39, %38 ]
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %167, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @__ctype_b_loc() #9
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds i16, ptr %45, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !14
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 8192
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %35, !llvm.loop !16

52:                                               ; preds = %43
  %53 = and i32 %49, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %167, label %55

55:                                               ; preds = %52
  %56 = add nsw i32 %41, -48
  %57 = sext i32 %56 to i64
  br label %58

58:                                               ; preds = %74, %55
  %59 = phi i64 [ %57, %55 ], [ %78, %74 ]
  %60 = tail call signext i32 @getc(ptr noundef nonnull %6)
  %61 = icmp eq i32 %60, 35
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %62
  %63 = tail call signext i32 @getc(ptr noundef nonnull %6)
  switch i32 %63, label %62 [
    i32 -1, label %64
    i32 10, label %64
  ]

64:                                               ; preds = %62, %62, %58
  %65 = phi i32 [ %60, %58 ], [ %63, %62 ], [ %63, %62 ]
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %95, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %44, align 8, !tbaa !6
  %69 = sext i32 %65 to i64
  %70 = getelementptr inbounds i16, ptr %68, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !14
  %72 = and i16 %71, 2048
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = mul nsw i64 %59, 10
  %76 = add nsw i32 %65, -48
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  br label %58, !llvm.loop !18

79:                                               ; preds = %67, %92
  %80 = phi i32 [ %93, %92 ], [ %65, %67 ]
  %81 = load ptr, ptr %44, align 8, !tbaa !6
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i16, ptr %81, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !14
  %85 = and i16 %84, 8192
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = tail call signext i32 @getc(ptr noundef nonnull %6)
  %89 = icmp eq i32 %88, 35
  br i1 %89, label %90, label %92

90:                                               ; preds = %87, %90
  %91 = tail call signext i32 @getc(ptr noundef nonnull %6)
  switch i32 %91, label %90 [
    i32 -1, label %92
    i32 10, label %92
  ]

92:                                               ; preds = %90, %90, %87
  %93 = phi i32 [ %88, %87 ], [ %91, %90 ], [ %91, %90 ]
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %79, !llvm.loop !21

95:                                               ; preds = %64, %92, %79
  %96 = phi i32 [ %80, %79 ], [ -1, %92 ], [ -1, %64 ]
  %97 = phi i1 [ true, %79 ], [ %86, %92 ], [ false, %64 ]
  %98 = load ptr, ptr %44, align 8, !tbaa !6
  %99 = sext i32 %96 to i64
  %100 = getelementptr inbounds i16, ptr %98, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !14
  %102 = and i16 %101, 2048
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %95
  %105 = tail call signext i32 @ungetc(i32 noundef signext %96, ptr noundef nonnull %6)
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %167, label %112

107:                                              ; preds = %95
  %108 = add i32 %96, -60
  %109 = icmp ult i32 %108, -2
  %110 = and i1 %97, %109
  %111 = select i1 %110, i32 32, i32 %96
  br label %112

112:                                              ; preds = %107, %104
  %113 = phi i32 [ 32, %104 ], [ %111, %107 ]
  %114 = trunc i64 %59 to i32
  %115 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %29
  store i32 %114, ptr %115, align 4, !tbaa !12
  %116 = add nuw nsw i64 %29, 1
  %117 = icmp eq i32 %113, 32
  br i1 %117, label %28, label %118, !llvm.loop !22

118:                                              ; preds = %112
  %119 = trunc nuw nsw i64 %116 to i32
  br label %120

120:                                              ; preds = %118, %22
  %121 = phi i64 [ %23, %22 ], [ %59, %118 ]
  %122 = phi i32 [ %26, %22 ], [ %113, %118 ]
  %123 = phi i32 [ 1, %22 ], [ %119, %118 ]
  store i32 %122, ptr %3, align 4, !tbaa !12
  store i64 %121, ptr %4, align 8, !tbaa !10
  store i32 %123, ptr %15, align 4, !tbaa !23
  %124 = icmp eq i32 %122, 58
  br i1 %124, label %125, label %160

125:                                              ; preds = %120
  %126 = call fastcc signext i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %127 = icmp eq i32 %126, 0
  %128 = load i32, ptr %3, align 4
  %129 = icmp ne i32 %128, 32
  %130 = select i1 %127, i1 true, i1 %129
  br i1 %130, label %167, label %131

131:                                              ; preds = %125
  %132 = load i64, ptr %4, align 8, !tbaa !10
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds i8, ptr %15, i64 20
  store i32 %133, ptr %134, align 4, !tbaa !25
  %135 = call fastcc signext i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %136 = icmp eq i32 %135, 0
  %137 = load i32, ptr %3, align 4
  %138 = icmp ne i32 %137, 32
  %139 = select i1 %136, i1 true, i1 %138
  br i1 %139, label %167, label %140

140:                                              ; preds = %131
  %141 = load i64, ptr %4, align 8, !tbaa !10
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds i8, ptr %15, i64 24
  store i32 %142, ptr %143, align 4, !tbaa !26
  %144 = call fastcc signext i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %145 = icmp eq i32 %144, 0
  %146 = load i32, ptr %3, align 4
  %147 = icmp ne i32 %146, 32
  %148 = select i1 %145, i1 true, i1 %147
  br i1 %148, label %167, label %149

149:                                              ; preds = %140
  %150 = load i64, ptr %4, align 8, !tbaa !10
  %151 = trunc i64 %150 to i32
  %152 = getelementptr inbounds i8, ptr %15, i64 28
  store i32 %151, ptr %152, align 4, !tbaa !27
  %153 = call fastcc signext i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %149
  %156 = load i64, ptr %4, align 8, !tbaa !10
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds i8, ptr %15, i64 32
  store i32 %157, ptr %158, align 4, !tbaa !28
  %159 = load i32, ptr %3, align 4
  br label %165

160:                                              ; preds = %120
  %161 = getelementptr inbounds i8, ptr %15, i64 20
  store i32 0, ptr %161, align 4, !tbaa !25
  %162 = getelementptr inbounds i8, ptr %15, i64 24
  store i32 63, ptr %162, align 4, !tbaa !26
  %163 = getelementptr inbounds i8, ptr %15, i64 28
  store i32 0, ptr %163, align 4, !tbaa !27
  %164 = getelementptr inbounds i8, ptr %15, i64 32
  store i32 0, ptr %164, align 4, !tbaa !28
  br label %165

165:                                              ; preds = %160, %155
  %166 = phi i32 [ %122, %160 ], [ %159, %155 ]
  switch i32 %166, label %167 [
    i32 -1, label %171
    i32 59, label %171
  ]

167:                                              ; preds = %165, %149, %140, %131, %125, %104, %52, %40
  %168 = load ptr, ptr @stderr, align 8, !tbaa !6
  %169 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str.8, ptr noundef %1) #8
  %170 = tail call signext i32 @fclose(ptr noundef nonnull %6)
  br label %197

171:                                              ; preds = %165, %165
  %172 = getelementptr inbounds i8, ptr %15, i64 36
  %173 = add nuw nsw i32 %16, 1
  %174 = call fastcc signext i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %14, !llvm.loop !29

176:                                              ; preds = %171
  %177 = load i32, ptr %3, align 4, !tbaa !12
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %186, label %182

179:                                              ; preds = %8
  %180 = load i32, ptr %3, align 4, !tbaa !12
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %195, label %182

182:                                              ; preds = %179, %176
  %183 = load ptr, ptr @stderr, align 8, !tbaa !6
  %184 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.4, ptr noundef %1) #8
  %185 = tail call signext i32 @fclose(ptr noundef nonnull %6)
  br label %197

186:                                              ; preds = %176
  %187 = getelementptr inbounds i8, ptr %0, i64 8
  %188 = load ptr, ptr %187, align 8, !tbaa !30
  %189 = load ptr, ptr %188, align 8, !tbaa !33
  %190 = zext nneg i32 %173 to i64
  %191 = mul nuw nsw i64 %190, 36
  %192 = tail call ptr %189(ptr noundef %0, i32 noundef signext 1, i64 noundef %191) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %192, ptr noundef nonnull align 4 dereferenceable(1) %5, i64 %191, i1 false)
  %193 = getelementptr inbounds i8, ptr %0, i64 248
  store ptr %192, ptr %193, align 8, !tbaa !35
  %194 = getelementptr inbounds i8, ptr %0, i64 240
  store i32 %173, ptr %194, align 8, !tbaa !36
  br label %195

195:                                              ; preds = %179, %186
  %196 = tail call signext i32 @fclose(ptr noundef nonnull %6)
  br label %197

197:                                              ; preds = %195, %182, %167, %31, %18, %11
  %198 = phi i32 [ 0, %11 ], [ 0, %18 ], [ 0, %31 ], [ 0, %167 ], [ 0, %182 ], [ 1, %195 ]
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %198
}

; Function Attrs: nofree nounwind
define internal fastcc signext range(i32 0, 2) i32 @read_scan_integer(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = tail call fastcc signext i32 @read_text_integer(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4, !tbaa !12
  %8 = icmp eq i32 %7, -1
  %9 = tail call ptr @__ctype_b_loc() #9
  br i1 %8, label %26, label %10

10:                                               ; preds = %6, %23
  %11 = phi i32 [ %24, %23 ], [ %7, %6 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !6
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !14
  %16 = and i16 %15, 8192
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = tail call signext i32 @getc(ptr noundef %0)
  %20 = icmp eq i32 %19, 35
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %21
  %22 = tail call signext i32 @getc(ptr noundef %0)
  switch i32 %22, label %21 [
    i32 -1, label %23
    i32 10, label %23
  ]

23:                                               ; preds = %21, %21, %18
  %24 = phi i32 [ %19, %18 ], [ %22, %21 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %10, !llvm.loop !21

26:                                               ; preds = %10, %23, %6
  %27 = phi i32 [ -1, %6 ], [ -1, %23 ], [ %11, %10 ]
  %28 = phi i1 [ false, %6 ], [ %17, %23 ], [ true, %10 ]
  %29 = load ptr, ptr %9, align 8, !tbaa !6
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds i16, ptr %29, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !14
  %33 = and i16 %32, 2048
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = tail call signext i32 @ungetc(i32 noundef signext %27, ptr noundef %0)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %45, label %43

38:                                               ; preds = %26
  %39 = add i32 %27, -60
  %40 = icmp ult i32 %39, -2
  %41 = and i1 %28, %40
  %42 = select i1 %41, i32 32, i32 %27
  br label %43

43:                                               ; preds = %35, %38
  %44 = phi i32 [ %42, %38 ], [ 32, %35 ]
  store i32 %44, ptr %2, align 4, !tbaa !12
  br label %45

45:                                               ; preds = %35, %3, %43
  %46 = phi i32 [ 1, %43 ], [ 0, %3 ], [ 0, %35 ]
  ret i32 %46
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @set_quant_slots(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  %5 = getelementptr inbounds i8, ptr %0, i64 88
  br label %6

6:                                                ; preds = %2, %37
  %7 = phi i64 [ 0, %2 ], [ %39, %37 ]
  %8 = phi ptr [ %1, %2 ], [ %38, %37 ]
  %9 = load i8, ptr %8, align 1, !tbaa !37
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  store i8 44, ptr %4, align 1, !tbaa !37
  %12 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %13 = icmp sgt i32 %12, 0
  %14 = load i8, ptr %4, align 1
  %15 = icmp eq i8 %14, 44
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load i32, ptr %3, align 4
  %19 = icmp ugt i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !6
  %22 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef signext 3) #8
  br label %41

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 %7, i32 4
  store i32 %18, ptr %25, align 8, !tbaa !39
  br label %26

26:                                               ; preds = %30, %23
  %27 = phi ptr [ %8, %23 ], [ %31, %30 ]
  %28 = load i8, ptr %27, align 1, !tbaa !37
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  %32 = icmp eq i8 %28, 44
  br i1 %32, label %37, label %26, !llvm.loop !41

33:                                               ; preds = %6
  %34 = load i32, ptr %3, align 4, !tbaa !12
  %35 = load ptr, ptr %5, align 8, !tbaa !38
  %36 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i64 %7, i32 4
  store i32 %34, ptr %36, align 8, !tbaa !39
  br label %37

37:                                               ; preds = %26, %30, %33
  %38 = phi ptr [ %8, %33 ], [ %27, %26 ], [ %31, %30 ]
  %39 = add nuw nsw i64 %7, 1
  %40 = icmp eq i64 %39, 10
  br i1 %40, label %41, label %6, !llvm.loop !42

41:                                               ; preds = %37, %11, %20
  %42 = phi i32 [ 0, %20 ], [ 1, %37 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %42
}

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @set_sample_factors(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  %7 = getelementptr inbounds i8, ptr %0, i64 88
  br label %8

8:                                                ; preds = %2, %50
  %9 = phi i64 [ 0, %2 ], [ %52, %50 ]
  %10 = phi ptr [ %1, %2 ], [ %51, %50 ]
  %11 = load i8, ptr %10, align 1, !tbaa !37
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %8
  store i8 44, ptr %6, align 1, !tbaa !37
  %14 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %10, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #7
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %54, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %5, align 1
  %18 = and i8 %17, -33
  %19 = icmp ne i8 %18, 88
  %20 = load i8, ptr %6, align 1
  %21 = icmp ne i8 %20, 44
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %54, label %23

23:                                               ; preds = %16
  %24 = load i32, ptr %3, align 4
  %25 = add i32 %24, -5
  %26 = icmp ult i32 %25, -4
  %27 = load i32, ptr %4, align 4
  %28 = add i32 %27, -5
  %29 = icmp ult i32 %28, -4
  %30 = select i1 %26, i1 true, i1 %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load ptr, ptr @stderr, align 8, !tbaa !6
  %33 = call i64 @fwrite(ptr nonnull @.str.12, i64 35, i64 1, ptr %32) #10
  br label %54

34:                                               ; preds = %23
  %35 = load ptr, ptr %7, align 8, !tbaa !38
  %36 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i64 %9, i32 2
  store i32 %24, ptr %36, align 8, !tbaa !43
  %37 = load i32, ptr %4, align 4, !tbaa !12
  %38 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i64 %9, i32 3
  store i32 %37, ptr %38, align 4, !tbaa !44
  br label %39

39:                                               ; preds = %43, %34
  %40 = phi ptr [ %10, %34 ], [ %44, %43 ]
  %41 = load i8, ptr %40, align 1, !tbaa !37
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  %45 = icmp eq i8 %41, 44
  br i1 %45, label %50, label %39, !llvm.loop !45

46:                                               ; preds = %8
  %47 = load ptr, ptr %7, align 8, !tbaa !38
  %48 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i64 %9, i32 2
  store i32 1, ptr %48, align 8, !tbaa !43
  %49 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i64 %9, i32 3
  store i32 1, ptr %49, align 4, !tbaa !44
  br label %50

50:                                               ; preds = %39, %43, %46
  %51 = phi ptr [ %10, %46 ], [ %40, %39 ], [ %44, %43 ]
  %52 = add nuw nsw i64 %9, 1
  %53 = icmp eq i64 %52, 10
  br i1 %53, label %54, label %8, !llvm.loop !46

54:                                               ; preds = %50, %16, %13, %31
  %55 = phi i32 [ 0, %31 ], [ 1, %50 ], [ 0, %16 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %55
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @ungetc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { cold }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{!24, !13, i64 0}
!24 = !{!"", !13, i64 0, !8, i64 4, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32}
!25 = !{!24, !13, i64 20}
!26 = !{!24, !13, i64 24}
!27 = !{!24, !13, i64 28}
!28 = !{!24, !13, i64 32}
!29 = distinct !{!29, !17}
!30 = !{!31, !7, i64 8}
!31 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32, !13, i64 36, !7, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !32, i64 64, !13, i64 72, !13, i64 76, !13, i64 80, !7, i64 88, !8, i64 96, !8, i64 128, !8, i64 160, !8, i64 192, !8, i64 208, !8, i64 224, !13, i64 240, !7, i64 248, !13, i64 256, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !13, i64 276, !13, i64 280, !13, i64 284, !13, i64 288, !8, i64 292, !8, i64 293, !8, i64 294, !15, i64 296, !15, i64 298, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 312, !13, i64 316, !13, i64 320, !13, i64 324, !8, i64 328, !13, i64 360, !13, i64 364, !13, i64 368, !8, i64 372, !13, i64 412, !13, i64 416, !13, i64 420, !13, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488, !7, i64 496, !7, i64 504, !13, i64 512}
!32 = !{!"double", !8, i64 0}
!33 = !{!34, !7, i64 0}
!34 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !11, i64 88, !11, i64 96}
!35 = !{!31, !7, i64 248}
!36 = !{!31, !13, i64 240}
!37 = !{!8, !8, i64 0}
!38 = !{!31, !7, i64 88}
!39 = !{!40, !13, i64 16}
!40 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !7, i64 80, !7, i64 88}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = !{!40, !13, i64 8}
!44 = !{!40, !13, i64 12}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
