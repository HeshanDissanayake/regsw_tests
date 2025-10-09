; ModuleID = 'src/leaky_bucket.c'
source_filename = "src/leaky_bucket.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@total_frame_buffer = dso_local local_unnamed_addr global i64 0, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errortext = external dso_local global [300 x i8], align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Error open file lk %s  \0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c" Number Leaky Buckets: %ld \0A     Rmin     Bmin     Fmin \0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" %8ld %8ld %8ld \0A\00", align 1
@stdout = external dso_local local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c" Total Frames:  %ld (%d) \0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"init_buffer: Rmin\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"init_buffer: Bmin\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"init_buffer: Fmin\00", align 1
@Bit_Buffer = dso_local local_unnamed_addr global [10000 x i64] zeroinitializer, align 8
@img = external dso_local local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [90 x i8] c" Leaky BucketRateFile does not have valid entries.\0A Using rate calculated from avg. rate \00", align 1
@str.14 = private unnamed_addr constant [76 x i8] c" LeakyBucketRate File does not exist. Using rate calculated from avg. rate \00", align 1

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @get_LeakyBucketRate(i64 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = load ptr, ptr @input, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 3152
  %6 = tail call ptr @fopen64(ptr noundef nonnull %5, ptr noundef nonnull @.str) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = icmp eq i64 %0, 0
  br i1 %9, label %24, label %12

10:                                               ; preds = %2
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  br label %26

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %22, %19 ], [ 0, %8 ]
  %14 = call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #9
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %18 = call signext i32 @fclose(ptr noundef nonnull %6)
  br label %26

19:                                               ; preds = %12
  %20 = load i64, ptr %3, align 8, !tbaa !10
  %21 = getelementptr inbounds i64, ptr %1, i64 %13
  store i64 %20, ptr %21, align 8, !tbaa !10
  %22 = add nuw i64 %13, 1
  %23 = icmp eq i64 %22, %0
  br i1 %23, label %24, label %12

24:                                               ; preds = %19, %8
  %25 = call signext i32 @fclose(ptr noundef nonnull %6)
  br label %26

26:                                               ; preds = %24, %16, %10
  %27 = phi i32 [ 0, %10 ], [ 0, %16 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local ptr @fopen64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare dso_local signext i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
define dso_local void @PutBigDoubleWord(i64 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = trunc i64 %0 to i32
  %4 = lshr i32 %3, 24
  %5 = tail call signext i32 @fputc(i32 noundef signext %4, ptr noundef %1)
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = tail call signext i32 @fputc(i32 noundef signext %7, ptr noundef %1)
  %9 = lshr i32 %3, 8
  %10 = and i32 %9, 255
  %11 = tail call signext i32 @fputc(i32 noundef signext %10, ptr noundef %1)
  %12 = and i32 %3, 255
  %13 = tail call signext i32 @fputc(i32 noundef signext %12, ptr noundef %1)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fputc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @write_buffer(i64 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @input, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 3352
  %7 = tail call ptr @fopen64(ptr noundef nonnull %6, ptr noundef nonnull @.str.4) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load ptr, ptr @input, align 8, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %10, i64 3352
  %12 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.5, ptr noundef nonnull %11) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 1) #9
  br label %13

13:                                               ; preds = %9, %4
  %14 = trunc i64 %0 to i32
  %15 = lshr i32 %14, 24
  %16 = tail call signext i32 @fputc(i32 noundef signext %15, ptr noundef %7)
  %17 = lshr i32 %14, 16
  %18 = and i32 %17, 255
  %19 = tail call signext i32 @fputc(i32 noundef signext %18, ptr noundef %7)
  %20 = lshr i32 %14, 8
  %21 = and i32 %20, 255
  %22 = tail call signext i32 @fputc(i32 noundef signext %21, ptr noundef %7)
  %23 = and i32 %14, 255
  %24 = tail call signext i32 @fputc(i32 noundef signext %23, ptr noundef %7)
  %25 = load ptr, ptr @input, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 3904
  %27 = load i32, ptr %26, align 8, !tbaa !12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %13
  %30 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %0)
  br label %31

31:                                               ; preds = %29, %13
  %32 = icmp eq i64 %0, 0
  br i1 %32, label %86, label %33

33:                                               ; preds = %31, %83
  %34 = phi i64 [ %84, %83 ], [ 0, %31 ]
  %35 = getelementptr inbounds i64, ptr %1, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !10
  %37 = trunc i64 %36 to i32
  %38 = lshr i32 %37, 24
  %39 = tail call signext i32 @fputc(i32 noundef signext %38, ptr noundef %7)
  %40 = lshr i32 %37, 16
  %41 = and i32 %40, 255
  %42 = tail call signext i32 @fputc(i32 noundef signext %41, ptr noundef %7)
  %43 = lshr i32 %37, 8
  %44 = and i32 %43, 255
  %45 = tail call signext i32 @fputc(i32 noundef signext %44, ptr noundef %7)
  %46 = and i32 %37, 255
  %47 = tail call signext i32 @fputc(i32 noundef signext %46, ptr noundef %7)
  %48 = getelementptr inbounds i64, ptr %2, i64 %34
  %49 = load i64, ptr %48, align 8, !tbaa !10
  %50 = trunc i64 %49 to i32
  %51 = lshr i32 %50, 24
  %52 = tail call signext i32 @fputc(i32 noundef signext %51, ptr noundef %7)
  %53 = lshr i32 %50, 16
  %54 = and i32 %53, 255
  %55 = tail call signext i32 @fputc(i32 noundef signext %54, ptr noundef %7)
  %56 = lshr i32 %50, 8
  %57 = and i32 %56, 255
  %58 = tail call signext i32 @fputc(i32 noundef signext %57, ptr noundef %7)
  %59 = and i32 %50, 255
  %60 = tail call signext i32 @fputc(i32 noundef signext %59, ptr noundef %7)
  %61 = getelementptr inbounds i64, ptr %3, i64 %34
  %62 = load i64, ptr %61, align 8, !tbaa !10
  %63 = trunc i64 %62 to i32
  %64 = lshr i32 %63, 24
  %65 = tail call signext i32 @fputc(i32 noundef signext %64, ptr noundef %7)
  %66 = lshr i32 %63, 16
  %67 = and i32 %66, 255
  %68 = tail call signext i32 @fputc(i32 noundef signext %67, ptr noundef %7)
  %69 = lshr i32 %63, 8
  %70 = and i32 %69, 255
  %71 = tail call signext i32 @fputc(i32 noundef signext %70, ptr noundef %7)
  %72 = and i32 %63, 255
  %73 = tail call signext i32 @fputc(i32 noundef signext %72, ptr noundef %7)
  %74 = load ptr, ptr @input, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %74, i64 3904
  %76 = load i32, ptr %75, align 8, !tbaa !12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %33
  %79 = load i64, ptr %35, align 8, !tbaa !10
  %80 = load i64, ptr %48, align 8, !tbaa !10
  %81 = load i64, ptr %61, align 8, !tbaa !10
  %82 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %79, i64 noundef %80, i64 noundef %81)
  br label %83

83:                                               ; preds = %33, %78
  %84 = add nuw i64 %34, 1
  %85 = icmp eq i64 %84, %0
  br i1 %85, label %86, label %33

86:                                               ; preds = %83, %31
  %87 = tail call signext i32 @fclose(ptr noundef %7)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local void @Sort(i64 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = add i64 %0, -1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %23, label %7

5:                                                ; preds = %20, %7
  %6 = icmp eq i64 %9, %3
  br i1 %6, label %23, label %7

7:                                                ; preds = %2, %5
  %8 = phi i64 [ %9, %5 ], [ 0, %2 ]
  %9 = add nuw i64 %8, 1
  %10 = icmp ult i64 %9, %0
  br i1 %10, label %11, label %5

11:                                               ; preds = %7
  %12 = getelementptr inbounds i64, ptr %1, i64 %8
  br label %13

13:                                               ; preds = %11, %20
  %14 = phi i64 [ %9, %11 ], [ %21, %20 ]
  %15 = load i64, ptr %12, align 8, !tbaa !10
  %16 = getelementptr inbounds i64, ptr %1, i64 %14
  %17 = load i64, ptr %16, align 8, !tbaa !10
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i64 %17, ptr %12, align 8, !tbaa !10
  store i64 %15, ptr %16, align 8, !tbaa !10
  br label %20

20:                                               ; preds = %13, %19
  %21 = add nuw i64 %14, 1
  %22 = icmp eq i64 %21, %0
  br i1 %22, label %5, label %13

23:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind
define dso_local void @calc_buffer() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stdout, align 8, !tbaa !6
  %2 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 80, i64 1, ptr %1)
  %3 = load i64, ptr @total_frame_buffer, align 8, !tbaa !10
  %4 = load ptr, ptr @input, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !16
  %7 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i64 noundef %3, i32 noundef signext %6)
  %8 = load ptr, ptr @input, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 3148
  %10 = load i32, ptr %9, align 4, !tbaa !17
  %11 = sext i32 %10 to i64
  %12 = tail call noalias ptr @calloc(i64 noundef %11, i64 noundef 8) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #9
  br label %15

15:                                               ; preds = %14, %0
  %16 = tail call noalias ptr @calloc(i64 noundef %11, i64 noundef 8) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #9
  br label %19

19:                                               ; preds = %18, %15
  %20 = tail call noalias ptr @calloc(i64 noundef %11, i64 noundef 8) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #9
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i64, ptr @total_frame_buffer, align 8, !tbaa !10
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %31, %26 ], [ 0, %23 ]
  %28 = phi i64 [ %32, %26 ], [ 0, %23 ]
  %29 = getelementptr inbounds [10000 x i64], ptr @Bit_Buffer, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !10
  %31 = add i64 %30, %27
  %32 = add nuw i64 %28, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %26

34:                                               ; preds = %26
  %35 = uitofp i64 %31 to float
  br label %36

36:                                               ; preds = %34, %23
  %37 = phi float [ 0.000000e+00, %23 ], [ %35, %34 ]
  %38 = uitofp i64 %24 to float
  %39 = fdiv float %37, %38
  %40 = fptoui float %39 to i64
  %41 = tail call signext i32 @get_LeakyBucketRate(i64 noundef %11, ptr noundef %12)
  %42 = icmp eq i32 %41, 0
  %43 = icmp ne i32 %10, 0
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %36
  %46 = uitofp i64 %40 to float
  %47 = load ptr, ptr @input, align 8
  %48 = getelementptr inbounds i8, ptr %47, i64 20
  %49 = load ptr, ptr @img, align 8
  %50 = getelementptr inbounds i8, ptr %49, i64 48
  %51 = load float, ptr %50, align 8, !tbaa !18
  %52 = fmul float %51, %46
  %53 = fptoui float %52 to i64
  %54 = load i32, ptr %48, align 4, !tbaa !22
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %53, %56
  store i64 %57, ptr %12, align 8, !tbaa !10
  %58 = icmp eq i32 %10, 1
  br i1 %58, label %99, label %59

59:                                               ; preds = %45
  %60 = lshr i64 %40, 2
  %61 = uitofp nneg i64 %60 to float
  %62 = fmul float %51, %61
  %63 = add nsw i32 %54, 1
  %64 = sitofp i32 %63 to float
  %65 = fdiv float %62, %64
  %66 = load i64, ptr %12, align 8
  br label %67

67:                                               ; preds = %59, %67
  %68 = phi i64 [ %66, %59 ], [ %73, %67 ]
  %69 = phi i64 [ 1, %59 ], [ %74, %67 ]
  %70 = getelementptr i64, ptr %12, i64 %69
  %71 = uitofp i64 %68 to float
  %72 = fadd float %65, %71
  %73 = fptoui float %72 to i64
  store i64 %73, ptr %70, align 8, !tbaa !10
  %74 = add nuw i64 %69, 1
  %75 = icmp eq i64 %74, %11
  br i1 %75, label %76, label %67, !llvm.loop !23

76:                                               ; preds = %67, %36
  %77 = add nsw i64 %11, -1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %97, label %81

79:                                               ; preds = %94, %81
  %80 = icmp eq i64 %83, %77
  br i1 %80, label %97, label %81

81:                                               ; preds = %76, %79
  %82 = phi i64 [ %83, %79 ], [ 0, %76 ]
  %83 = add nuw i64 %82, 1
  %84 = icmp ult i64 %83, %11
  br i1 %84, label %85, label %79

85:                                               ; preds = %81
  %86 = getelementptr inbounds i64, ptr %12, i64 %82
  br label %87

87:                                               ; preds = %94, %85
  %88 = phi i64 [ %83, %85 ], [ %95, %94 ]
  %89 = load i64, ptr %86, align 8, !tbaa !10
  %90 = getelementptr inbounds i64, ptr %12, i64 %88
  %91 = load i64, ptr %90, align 8, !tbaa !10
  %92 = icmp ugt i64 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i64 %91, ptr %86, align 8, !tbaa !10
  store i64 %89, ptr %90, align 8, !tbaa !10
  br label %94

94:                                               ; preds = %93, %87
  %95 = add nuw i64 %88, 1
  %96 = icmp eq i64 %95, %11
  br i1 %96, label %79, label %87

97:                                               ; preds = %79, %76
  %98 = icmp eq i32 %10, 0
  br i1 %98, label %162, label %99

99:                                               ; preds = %45, %97
  %100 = mul i64 %40, 20
  %101 = load ptr, ptr @input, align 8, !tbaa !6
  %102 = getelementptr inbounds i8, ptr %101, i64 20
  %103 = load i32, ptr %102, align 4, !tbaa !22
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = load ptr, ptr @img, align 8, !tbaa !6
  %107 = getelementptr inbounds i8, ptr %106, i64 48
  %108 = load float, ptr %107, align 8, !tbaa !18
  %109 = load i64, ptr @total_frame_buffer, align 8, !tbaa !10
  %110 = icmp eq i64 %109, 0
  %111 = load i64, ptr @Bit_Buffer, align 8, !tbaa !10
  br label %112

112:                                              ; preds = %99, %156
  %113 = phi i64 [ 0, %99 ], [ %160, %156 ]
  %114 = phi i64 [ 0, %99 ], [ %137, %156 ]
  %115 = getelementptr inbounds i64, ptr %12, i64 %113
  %116 = load i64, ptr %115, align 8, !tbaa !10
  %117 = mul i64 %116, %105
  %118 = uitofp i64 %117 to float
  %119 = fdiv float %118, %108
  %120 = fptosi float %119 to i64
  br i1 %110, label %136, label %121

121:                                              ; preds = %112, %121
  %122 = phi i64 [ %134, %121 ], [ %100, %112 ]
  %123 = phi i64 [ %131, %121 ], [ %100, %112 ]
  %124 = phi i64 [ %133, %121 ], [ 0, %112 ]
  %125 = phi i64 [ %130, %121 ], [ %114, %112 ]
  %126 = getelementptr inbounds [10000 x i64], ptr @Bit_Buffer, i64 0, i64 %124
  %127 = load i64, ptr %126, align 8, !tbaa !10
  %128 = sub nsw i64 %122, %127
  %129 = icmp slt i64 %128, %123
  %130 = select i1 %129, i64 %124, i64 %125
  %131 = tail call i64 @llvm.smin.i64(i64 %128, i64 %123)
  %132 = add nsw i64 %128, %120
  %133 = add nuw i64 %124, 1
  %134 = tail call i64 @llvm.smin.i64(i64 %132, i64 %100)
  %135 = icmp eq i64 %133, %109
  br i1 %135, label %136, label %121

136:                                              ; preds = %121, %112
  %137 = phi i64 [ %114, %112 ], [ %130, %121 ]
  %138 = phi i64 [ %100, %112 ], [ %131, %121 ]
  %139 = sub nsw i64 %100, %138
  %140 = add i64 %137, 1
  br label %141

141:                                              ; preds = %146, %136
  %142 = phi i64 [ %111, %136 ], [ %153, %146 ]
  %143 = phi i64 [ %111, %136 ], [ %152, %146 ]
  %144 = phi i64 [ 0, %136 ], [ %154, %146 ]
  %145 = icmp eq i64 %144, %140
  br i1 %145, label %156, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds [10000 x i64], ptr @Bit_Buffer, i64 0, i64 %144
  %148 = load i64, ptr %147, align 8, !tbaa !10
  %149 = sub nsw i64 %142, %148
  %150 = tail call i64 @llvm.smax.i64(i64 %149, i64 0)
  %151 = tail call i64 @llvm.smin.i64(i64 %149, i64 0)
  %152 = sub nsw i64 %143, %151
  %153 = add nsw i64 %150, %120
  %154 = add i64 %144, 1
  %155 = icmp sgt i64 %153, %139
  br i1 %155, label %156, label %141

156:                                              ; preds = %146, %141
  %157 = phi i64 [ %152, %146 ], [ %143, %141 ]
  %158 = getelementptr inbounds i64, ptr %16, i64 %113
  store i64 %139, ptr %158, align 8, !tbaa !10
  %159 = getelementptr inbounds i64, ptr %20, i64 %113
  store i64 %157, ptr %159, align 8, !tbaa !10
  %160 = add nuw i64 %113, 1
  %161 = icmp eq i64 %160, %11
  br i1 %161, label %162, label %112

162:                                              ; preds = %156, %97
  tail call void @write_buffer(i64 noundef %11, ptr noundef %12, ptr noundef %16, ptr noundef %20)
  tail call void @free(ptr noundef %12) #9
  tail call void @free(ptr noundef %16) #9
  tail call void @free(ptr noundef %20) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }

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
!12 = !{!13, !14, i64 3904}
!13 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !8, i64 84, !8, i64 148, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !14, i64 1228, !14, i64 1232, !14, i64 1236, !14, i64 1240, !14, i64 1244, !14, i64 1248, !14, i64 1252, !14, i64 1256, !14, i64 1260, !14, i64 1264, !14, i64 1268, !14, i64 1272, !14, i64 1276, !14, i64 1280, !14, i64 1284, !14, i64 1288, !14, i64 1292, !14, i64 1296, !14, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !14, i64 1904, !14, i64 1908, !14, i64 1912, !14, i64 1916, !14, i64 1920, !14, i64 1924, !14, i64 1928, !14, i64 1932, !14, i64 1936, !14, i64 1940, !14, i64 1944, !14, i64 1948, !8, i64 1952, !14, i64 2976, !14, i64 2980, !14, i64 2984, !14, i64 2988, !14, i64 2992, !14, i64 2996, !14, i64 3000, !14, i64 3004, !14, i64 3008, !14, i64 3012, !14, i64 3016, !14, i64 3020, !14, i64 3024, !14, i64 3028, !14, i64 3032, !14, i64 3036, !14, i64 3040, !14, i64 3044, !14, i64 3048, !14, i64 3052, !15, i64 3056, !14, i64 3064, !14, i64 3068, !14, i64 3072, !14, i64 3076, !14, i64 3080, !14, i64 3084, !14, i64 3088, !14, i64 3092, !14, i64 3096, !14, i64 3100, !14, i64 3104, !14, i64 3108, !14, i64 3112, !14, i64 3116, !14, i64 3120, !14, i64 3124, !14, i64 3128, !14, i64 3132, !14, i64 3136, !14, i64 3140, !14, i64 3144, !14, i64 3148, !8, i64 3152, !8, i64 3352, !14, i64 3552, !14, i64 3556, !14, i64 3560, !14, i64 3564, !14, i64 3568, !14, i64 3572, !14, i64 3576, !14, i64 3580, !14, i64 3584, !14, i64 3588, !14, i64 3592, !14, i64 3596, !14, i64 3600, !14, i64 3604, !14, i64 3608, !14, i64 3612, !14, i64 3616, !14, i64 3620, !8, i64 3624, !14, i64 3824, !14, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !14, i64 3864, !14, i64 3868, !14, i64 3872, !14, i64 3876, !14, i64 3880, !14, i64 3884, !14, i64 3888, !14, i64 3892, !14, i64 3896, !14, i64 3900, !14, i64 3904, !14, i64 3908, !14, i64 3912, !14, i64 3916, !14, i64 3920, !14, i64 3924, !14, i64 3928, !8, i64 3932, !14, i64 3964, !14, i64 3968, !14, i64 3972, !14, i64 3976, !14, i64 3980, !14, i64 3984, !14, i64 3988, !14, i64 3992, !14, i64 3996, !14, i64 4000, !14, i64 4004, !8, i64 4008, !8, i64 4056, !14, i64 4256, !14, i64 4260, !14, i64 4264, !14, i64 4268, !8, i64 4272, !14, i64 4312, !14, i64 4316, !14, i64 4320, !14, i64 4324}
!14 = !{!"int", !8, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!13, !14, i64 8}
!17 = !{!13, !14, i64 3148}
!18 = !{!19, !20, i64 48}
!19 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !20, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !7, i64 104, !7, i64 112, !14, i64 120, !7, i64 128, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !14, i64 152, !14, i64 156, !14, i64 160, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !14, i64 89200, !14, i64 89204, !14, i64 89208, !14, i64 89212, !8, i64 89216, !14, i64 89280, !14, i64 89284, !14, i64 89288, !14, i64 89292, !14, i64 89296, !15, i64 89304, !14, i64 89312, !14, i64 89316, !14, i64 89320, !14, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !14, i64 89392, !14, i64 89396, !14, i64 89400, !14, i64 89404, !14, i64 89408, !14, i64 89412, !14, i64 89416, !14, i64 89420, !8, i64 89424, !14, i64 90192, !14, i64 90196, !14, i64 90200, !14, i64 90204, !14, i64 90208, !14, i64 90212, !14, i64 90216, !14, i64 90220, !14, i64 90224, !14, i64 90228, !14, i64 90232, !14, i64 90236, !14, i64 90240, !8, i64 90244, !14, i64 90248, !14, i64 90252, !8, i64 90256, !14, i64 90264, !14, i64 90268, !14, i64 90272, !14, i64 90276, !14, i64 90280, !14, i64 90284, !14, i64 90288, !14, i64 90292, !14, i64 90296, !14, i64 90300, !14, i64 90304, !14, i64 90308, !14, i64 90312, !14, i64 90316, !14, i64 90320, !14, i64 90324, !14, i64 90328, !7, i64 90336, !14, i64 90344, !14, i64 90348, !14, i64 90352, !14, i64 90356, !14, i64 90360, !15, i64 90368, !14, i64 90376, !14, i64 90380, !14, i64 90384, !14, i64 90388, !14, i64 90392, !14, i64 90396, !14, i64 90400, !7, i64 90408, !14, i64 90416, !14, i64 90420, !14, i64 90424, !14, i64 90428, !14, i64 90432, !14, i64 90436, !14, i64 90440, !14, i64 90444, !14, i64 90448, !14, i64 90452, !14, i64 90456, !14, i64 90460, !14, i64 90464, !14, i64 90468, !14, i64 90472, !14, i64 90476, !14, i64 90480, !14, i64 90484, !14, i64 90488, !14, i64 90492, !14, i64 90496, !14, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !14, i64 90528, !14, i64 90532, !14, i64 90536, !14, i64 90540, !14, i64 90544, !14, i64 90548, !14, i64 90552, !14, i64 90556, !14, i64 90560, !8, i64 90564, !14, i64 90572, !14, i64 90576, !14, i64 90580, !21, i64 90584, !14, i64 90588, !14, i64 90592}
!20 = !{!"float", !8, i64 0}
!21 = !{!"short", !8, i64 0}
!22 = !{!13, !14, i64 20}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
