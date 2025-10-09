; ModuleID = 'src/memalloc.c'
source_filename = "src/memalloc.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@.str = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgTopField\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgBotField\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"get_mem2Dpel: array2D\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"get_mem3Dpel: array3D\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"free_mem2Dpel: trying to free unused memory\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"free_mem3Dpel: trying to free unused memory\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"get_mem2D: array2D\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"get_mem2Dint: array2D\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"get_mem2Dint64: array2D\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"get_mem3D: array3D\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"get_mem3Dint: array3D\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"get_mem3Dint64: array3D\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"get_mem4Dint: array4D\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"get_mem5Dint: array5D\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"free_mem2D: trying to free unused memory\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"free_mem2Dint: trying to free unused memory\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"free_mem2Dint64: trying to free unused memory\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"free_mem3D: trying to free unused memory\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"free_mem3Dint: trying to free unused memory\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"free_mem3Dint64: trying to free unused memory\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"free_mem4Dint: trying to free unused memory\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"free_mem5Dint: trying to free unused memory\00", align 1
@errortext = external dso_local global [300 x i8], align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Could not allocate memory: %s\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"get_mem2Dshort: array2D\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"get_mem3Dshort: array3D\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"get_mem4Dshort: array4D\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"get_mem5Dshort: array5D\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"get_mem6Dshort: array6D\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"free_mem2Dshort: trying to free unused memory\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"free_mem3Dshort: trying to free unused memory\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"free_mem4Dshort: trying to free unused memory\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"free_mem5Dshort: trying to free unused memory\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"free_mem6Dshort: trying to free unused memory\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"get_mem2Ddouble: array2D\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"free_mem2Ddouble: trying to free unused memory\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"free_mem2Ddb_offset: trying to free unused memory\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"free_mem2Dint_offset: trying to free unused memory\00", align 1

; Function Attrs: nounwind
define dso_local noundef signext i32 @init_top_bot_planes(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = sdiv i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef 8) #6
  store ptr %8, ptr %3, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %12

12:                                               ; preds = %10, %5
  %13 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef 8) #6
  store ptr %13, ptr %4, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %17

17:                                               ; preds = %15, %12
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %35

19:                                               ; preds = %17
  %20 = zext nneg i32 %6 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %33, %21 ]
  %23 = shl nuw nsw i64 %22, 1
  %24 = getelementptr inbounds ptr, ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load ptr, ptr %3, align 8, !tbaa !6
  %27 = getelementptr inbounds ptr, ptr %26, i64 %22
  store ptr %25, ptr %27, align 8, !tbaa !6
  %28 = or disjoint i64 %23, 1
  %29 = getelementptr inbounds ptr, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load ptr, ptr %4, align 8, !tbaa !6
  %32 = getelementptr inbounds ptr, ptr %31, i64 %22
  store ptr %30, ptr %32, align 8, !tbaa !6
  %33 = add nuw nsw i64 %22, 1
  %34 = icmp eq i64 %33, %20
  br i1 %34, label %35, label %21

35:                                               ; preds = %21, %17
  %36 = shl i32 %1, 3
  ret i32 %36
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @no_mem_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef %0) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @free_top_bot_planes(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  tail call void @free(ptr noundef %0) #7
  tail call void @free(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @get_mem2Dpel(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 8) #6
  store ptr %5, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 2) #6
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr i8, ptr %26, i64 -8
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds i16, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23

32:                                               ; preds = %23, %18
  %33 = shl i32 %12, 1
  ret i32 %33
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @get_mem3Dpel(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 8) #6
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = zext nneg i32 %1 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %19, %14 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = tail call signext i32 @get_mem2Dpel(ptr noundef %17, i32 noundef signext %2, i32 noundef signext %3)
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %10
  %22 = shl i32 %1, 1
  %23 = mul i32 %22, %2
  %24 = mul i32 %23, %3
  ret i32 %24
}

; Function Attrs: nounwind
define dso_local void @free_mem2Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #7
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef signext 100) #7
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #7
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @free_mem3Dpel(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %20
  %9 = phi i64 [ 0, %6 ], [ %21, %20 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %14) #7
  br label %18

17:                                               ; preds = %13
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %17, %16
  tail call void @free(ptr noundef nonnull %11) #7
  br label %20

19:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef signext 100) #7
  br label %20

20:                                               ; preds = %18, %19
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %21, %7
  br i1 %22, label %23, label %8

23:                                               ; preds = %20, %4
  tail call void @free(ptr noundef nonnull %0) #7
  br label %25

24:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef signext 100) #7
  br label %25

25:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem2D(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 8) #6
  store ptr %5, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 1) #6
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr i8, ptr %26, i64 -8
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23

32:                                               ; preds = %23, %18
  ret i32 %12
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem2Dint(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 8) #6
  store ptr %5, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.7) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 4) #6
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.7) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr i8, ptr %26, i64 -8
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds i32, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23

32:                                               ; preds = %23, %18
  %33 = shl i32 %12, 2
  ret i32 %33
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem2Dint64(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 8) #6
  store ptr %5, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.8) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #6
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.8) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr i8, ptr %26, i64 -8
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds i64, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23

32:                                               ; preds = %23, %18
  %33 = shl i32 %12, 3
  ret i32 %33
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem3D(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 8) #6
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = zext nneg i32 %1 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %19, %14 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = tail call signext i32 @get_mem2D(ptr noundef %17, i32 noundef signext %2, i32 noundef signext %3)
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %10
  %22 = mul nsw i32 %2, %1
  %23 = mul nsw i32 %22, %3
  ret i32 %23
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @get_mem3Dint(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 8) #6
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = zext nneg i32 %1 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %19, %14 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = tail call signext i32 @get_mem2Dint(ptr noundef %17, i32 noundef signext %2, i32 noundef signext %3)
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %10
  %22 = shl i32 %1, 2
  %23 = mul i32 %22, %2
  %24 = mul i32 %23, %3
  ret i32 %24
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @get_mem3Dint64(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 8) #6
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.11) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = zext nneg i32 %1 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %19, %14 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = tail call signext i32 @get_mem2Dint64(ptr noundef %17, i32 noundef signext %2, i32 noundef signext %3)
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %10
  %22 = shl i32 %1, 3
  %23 = mul i32 %22, %2
  %24 = mul i32 %23, %3
  ret i32 %24
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @get_mem4Dint(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 8) #6
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.12) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %11

11:                                               ; preds = %9, %5
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %11
  %14 = sext i32 %2 to i64
  %15 = icmp sgt i32 %2, 0
  %16 = zext nneg i32 %2 to i64
  %17 = zext nneg i32 %1 to i64
  br label %18

18:                                               ; preds = %13, %34
  %19 = phi i64 [ 0, %13 ], [ %35, %34 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #6
  store ptr %22, ptr %21, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %26

26:                                               ; preds = %24, %18
  br i1 %15, label %27, label %34

27:                                               ; preds = %26, %27
  %28 = phi i64 [ %32, %27 ], [ 0, %26 ]
  %29 = load ptr, ptr %21, align 8, !tbaa !6
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = tail call signext i32 @get_mem2Dint(ptr noundef %30, i32 noundef signext %3, i32 noundef signext %4)
  %32 = add nuw nsw i64 %28, 1
  %33 = icmp eq i64 %32, %16
  br i1 %33, label %34, label %27

34:                                               ; preds = %27, %26
  %35 = add nuw nsw i64 %19, 1
  %36 = icmp eq i64 %35, %17
  br i1 %36, label %37, label %18

37:                                               ; preds = %34, %11
  %38 = shl i32 %1, 2
  %39 = mul i32 %38, %2
  %40 = mul i32 %39, %3
  %41 = mul i32 %40, %4
  ret i32 %41
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @get_mem5Dint(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef 8) #6
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %12

12:                                               ; preds = %10, %6
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = zext nneg i32 %1 to i64
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ 0, %14 ], [ %21, %16 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !6
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = tail call signext i32 @get_mem4Dint(ptr noundef %19, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5)
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %12
  %24 = shl i32 %1, 2
  %25 = mul i32 %24, %2
  %26 = mul i32 %25, %3
  %27 = mul i32 %26, %4
  %28 = mul i32 %27, %5
  ret i32 %28
}

; Function Attrs: nounwind
define dso_local void @free_mem2D(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #7
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.14, i32 noundef signext 100) #7
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #7
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.14, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem2Dint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #7
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef signext 100) #7
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #7
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem2Dint64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #7
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.16, i32 noundef signext 100) #7
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #7
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.16, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem3D(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %20
  %9 = phi i64 [ 0, %6 ], [ %21, %20 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %14) #7
  br label %18

17:                                               ; preds = %13
  tail call void @error(ptr noundef nonnull @.str.14, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %17, %16
  tail call void @free(ptr noundef nonnull %11) #7
  br label %20

19:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.14, i32 noundef signext 100) #7
  br label %20

20:                                               ; preds = %18, %19
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %21, %7
  br i1 %22, label %23, label %8

23:                                               ; preds = %20, %4
  tail call void @free(ptr noundef nonnull %0) #7
  br label %25

24:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.17, i32 noundef signext 100) #7
  br label %25

25:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem3Dint(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %20
  %9 = phi i64 [ 0, %6 ], [ %21, %20 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %14) #7
  br label %18

17:                                               ; preds = %13
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %17, %16
  tail call void @free(ptr noundef nonnull %11) #7
  br label %20

19:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef signext 100) #7
  br label %20

20:                                               ; preds = %18, %19
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %21, %7
  br i1 %22, label %23, label %8

23:                                               ; preds = %20, %4
  tail call void @free(ptr noundef nonnull %0) #7
  br label %25

24:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.18, i32 noundef signext 100) #7
  br label %25

25:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem3Dint64(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %20
  %9 = phi i64 [ 0, %6 ], [ %21, %20 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %14) #7
  br label %18

17:                                               ; preds = %13
  tail call void @error(ptr noundef nonnull @.str.16, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %17, %16
  tail call void @free(ptr noundef nonnull %11) #7
  br label %20

19:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.16, i32 noundef signext 100) #7
  br label %20

20:                                               ; preds = %18, %19
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %21, %7
  br i1 %22, label %23, label %8

23:                                               ; preds = %20, %4
  tail call void @free(ptr noundef nonnull %0) #7
  br label %25

24:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.19, i32 noundef signext 100) #7
  br label %25

25:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem4Dint(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %13, %9 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  tail call void @free_mem3Dint(ptr noundef %12, i32 noundef signext %2)
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %5
  tail call void @free(ptr noundef nonnull %0) #7
  br label %17

16:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.20, i32 noundef signext 100) #7
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem5Dint(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %6
  %9 = icmp sgt i32 %2, 0
  %10 = zext nneg i32 %2 to i64
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %8, %26
  %13 = phi i64 [ 0, %8 ], [ %27, %26 ]
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  br i1 %9, label %18, label %24

18:                                               ; preds = %17, %18
  %19 = phi i64 [ %22, %18 ], [ 0, %17 ]
  %20 = getelementptr inbounds ptr, ptr %15, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  tail call void @free_mem3Dint(ptr noundef %21, i32 noundef signext %3)
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %17
  tail call void @free(ptr noundef nonnull %15) #7
  br label %26

25:                                               ; preds = %12
  tail call void @error(ptr noundef nonnull @.str.20, i32 noundef signext 100) #7
  br label %26

26:                                               ; preds = %24, %25
  %27 = add nuw nsw i64 %13, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %12

29:                                               ; preds = %26, %6
  tail call void @free(ptr noundef %0) #7
  br label %31

30:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.21, i32 noundef signext 100) #7
  br label %31

31:                                               ; preds = %30, %29
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
define dso_local signext i32 @get_mem2Dshort(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 8) #6
  store ptr %5, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 2) #6
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr i8, ptr %26, i64 -8
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds i16, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23

32:                                               ; preds = %23, %18
  %33 = shl i32 %12, 1
  ret i32 %33
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @get_mem3Dshort(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 8) #6
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = zext nneg i32 %1 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %19, %14 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = tail call signext i32 @get_mem2Dshort(ptr noundef %17, i32 noundef signext %2, i32 noundef signext %3)
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %10
  %22 = shl i32 %1, 1
  %23 = mul i32 %22, %2
  %24 = mul i32 %23, %3
  ret i32 %24
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @get_mem4Dshort(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 8) #6
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %11

11:                                               ; preds = %9, %5
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %11
  %14 = sext i32 %2 to i64
  %15 = icmp sgt i32 %2, 0
  %16 = zext nneg i32 %2 to i64
  %17 = zext nneg i32 %1 to i64
  br label %18

18:                                               ; preds = %13, %34
  %19 = phi i64 [ 0, %13 ], [ %35, %34 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #6
  store ptr %22, ptr %21, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %26

26:                                               ; preds = %24, %18
  br i1 %15, label %27, label %34

27:                                               ; preds = %26, %27
  %28 = phi i64 [ %32, %27 ], [ 0, %26 ]
  %29 = load ptr, ptr %21, align 8, !tbaa !6
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = tail call signext i32 @get_mem2Dshort(ptr noundef %30, i32 noundef signext %3, i32 noundef signext %4)
  %32 = add nuw nsw i64 %28, 1
  %33 = icmp eq i64 %32, %16
  br i1 %33, label %34, label %27

34:                                               ; preds = %27, %26
  %35 = add nuw nsw i64 %19, 1
  %36 = icmp eq i64 %35, %17
  br i1 %36, label %37, label %18

37:                                               ; preds = %34, %11
  %38 = shl i32 %1, 1
  %39 = mul i32 %38, %2
  %40 = mul i32 %39, %3
  %41 = mul i32 %40, %4
  ret i32 %41
}

; Function Attrs: nounwind
define dso_local noundef signext i32 @get_mem5Dshort(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef 8) #6
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %12

12:                                               ; preds = %10, %6
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = zext nneg i32 %1 to i64
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ 0, %14 ], [ %21, %16 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !6
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = tail call signext i32 @get_mem4Dshort(ptr noundef %19, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5)
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %12
  %24 = shl i32 %1, 1
  %25 = mul i32 %24, %2
  %26 = mul i32 %25, %3
  %27 = mul i32 %26, %4
  %28 = mul i32 %27, %5
  ret i32 %28
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem6Dshort(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #6
  store ptr %9, ptr %0, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %13

13:                                               ; preds = %11, %7
  %14 = icmp sgt i32 %1, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %13
  %16 = sext i32 %2 to i64
  %17 = icmp sgt i32 %2, 0
  %18 = zext nneg i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %15, %36
  %21 = phi i64 [ 0, %15 ], [ %37, %36 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = tail call noalias ptr @calloc(i64 noundef %16, i64 noundef 8) #6
  store ptr %24, ptr %23, align 8, !tbaa !6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %28

28:                                               ; preds = %26, %20
  br i1 %17, label %29, label %36

29:                                               ; preds = %28, %29
  %30 = phi i64 [ %34, %29 ], [ 0, %28 ]
  %31 = load ptr, ptr %23, align 8, !tbaa !6
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = tail call signext i32 @get_mem4Dshort(ptr noundef %32, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6)
  %34 = add nuw nsw i64 %30, 1
  %35 = icmp eq i64 %34, %18
  br i1 %35, label %36, label %29

36:                                               ; preds = %29, %28
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, %19
  br i1 %38, label %39, label %20

39:                                               ; preds = %36, %13
  %40 = shl i32 %1, 1
  %41 = mul i32 %40, %2
  %42 = mul i32 %41, %3
  %43 = mul i32 %42, %4
  %44 = mul i32 %43, %5
  %45 = mul i32 %44, %6
  ret i32 %45
}

; Function Attrs: nounwind
define dso_local void @free_mem2Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #7
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef signext 100) #7
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #7
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem3Dshort(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %20
  %9 = phi i64 [ 0, %6 ], [ %21, %20 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %14) #7
  br label %18

17:                                               ; preds = %13
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %17, %16
  tail call void @free(ptr noundef nonnull %11) #7
  br label %20

19:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef signext 100) #7
  br label %20

20:                                               ; preds = %18, %19
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %21, %7
  br i1 %22, label %23, label %8

23:                                               ; preds = %20, %4
  tail call void @free(ptr noundef nonnull %0) #7
  br label %25

24:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.29, i32 noundef signext 100) #7
  br label %25

25:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem4Dshort(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %13, %9 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  tail call void @free_mem3Dshort(ptr noundef %12, i32 noundef signext %2)
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %5
  tail call void @free(ptr noundef nonnull %0) #7
  br label %17

16:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef signext 100) #7
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem5Dshort(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %6
  %9 = icmp sgt i32 %2, 0
  %10 = zext nneg i32 %2 to i64
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %8, %26
  %13 = phi i64 [ 0, %8 ], [ %27, %26 ]
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  br i1 %9, label %18, label %24

18:                                               ; preds = %17, %18
  %19 = phi i64 [ %22, %18 ], [ 0, %17 ]
  %20 = getelementptr inbounds ptr, ptr %15, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  tail call void @free_mem3Dshort(ptr noundef %21, i32 noundef signext %3)
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %17
  tail call void @free(ptr noundef nonnull %15) #7
  br label %26

25:                                               ; preds = %12
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef signext 100) #7
  br label %26

26:                                               ; preds = %24, %25
  %27 = add nuw nsw i64 %13, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %12

29:                                               ; preds = %26, %6
  tail call void @free(ptr noundef %0) #7
  br label %31

30:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef signext 100) #7
  br label %31

31:                                               ; preds = %30, %29
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem6Dshort(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %15, %11 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  tail call void @free_mem5Dshort(ptr noundef %14, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4)
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, %10
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %7
  tail call void @free(ptr noundef nonnull %0) #7
  br label %19

18:                                               ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.32, i32 noundef signext 100) #7
  br label %19

19:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem2Ddouble(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 8) #6
  store ptr %5, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #6
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr i8, ptr %26, i64 -8
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds double, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23

32:                                               ; preds = %23, %18
  %33 = shl i32 %12, 3
  ret i32 %33
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem2Ddb_offset(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 8) #6
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #6
  store ptr %15, ptr %12, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %19

19:                                               ; preds = %17, %11
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds double, ptr %21, i64 %22
  store ptr %23, ptr %20, align 8, !tbaa !6
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = sext i32 %2 to i64
  %27 = zext nneg i32 %1 to i64
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 1, %25 ], [ %35, %28 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !6
  %31 = getelementptr ptr, ptr %30, i64 %29
  %32 = getelementptr i8, ptr %31, i64 -8
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds double, ptr %33, i64 %26
  store ptr %34, ptr %31, align 8, !tbaa !6
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %27
  br i1 %36, label %37, label %28

37:                                               ; preds = %28, %19
  %38 = shl i32 %13, 3
  ret i32 %38
}

; Function Attrs: nounwind
define dso_local void @free_mem2Ddouble(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #7
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.34, i32 noundef signext 100) #7
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #7
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.34, i32 noundef signext 100) #7
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_mem2Ddb_offset(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef nonnull %0) #7
  br label %7

6:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.35, i32 noundef signext 100) #7
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @get_mem2Dint_offset(ptr nocapture noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 8) #6
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.7) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 4) #6
  store ptr %15, ptr %12, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.7) #7
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 100) #7
  br label %19

19:                                               ; preds = %17, %11
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  store ptr %23, ptr %20, align 8, !tbaa !6
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = sext i32 %2 to i64
  %27 = zext nneg i32 %1 to i64
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 1, %25 ], [ %35, %28 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !6
  %31 = getelementptr ptr, ptr %30, i64 %29
  %32 = getelementptr i8, ptr %31, i64 -8
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds i32, ptr %33, i64 %26
  store ptr %34, ptr %31, align 8, !tbaa !6
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %27
  br i1 %36, label %37, label %28

37:                                               ; preds = %28, %19
  %38 = shl i32 %13, 2
  ret i32 %38
}

; Function Attrs: nounwind
define dso_local void @free_mem2Dint_offset(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef nonnull %0) #7
  br label %7

6:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.36, i32 noundef signext 100) #7
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { nounwind }

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
