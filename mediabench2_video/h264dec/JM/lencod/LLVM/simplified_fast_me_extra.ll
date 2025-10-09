; ModuleID = 'src/simplified_fast_me.c'
source_filename = "src/simplified_fast_me.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SymmetricalCrossSearchThreshold1 = dso_local local_unnamed_addr global i16 0, align 2
@SymmetricalCrossSearchThreshold2 = dso_local local_unnamed_addr global i16 0, align 2
@ConvergeThreshold = dso_local local_unnamed_addr global i16 0, align 2
@SubPelThreshold1 = dso_local local_unnamed_addr global i16 0, align 2
@SubPelThreshold3 = dso_local local_unnamed_addr global i16 0, align 2
@img = external dso_local local_unnamed_addr global ptr, align 8
@simplified_flag_intra = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [46 x i8] c"simplified_get_mem_FME: simplified_flag_intra\00", align 1
@simplified_fastme_l0_cost = dso_local global ptr null, align 8
@simplified_fastme_l1_cost = dso_local global ptr null, align 8
@simplified_SearchState = dso_local global ptr null, align 8
@byte_abs = external dso_local local_unnamed_addr global ptr, align 8
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@get_line = internal unnamed_addr global ptr null, align 8
@listX = external dso_local local_unnamed_addr global [6 x ptr], align 8
@mvbits = external dso_local local_unnamed_addr global ptr, align 8
@block_type_shift_factor = internal unnamed_addr constant [8 x i16] [i16 0, i16 0, i16 1, i16 1, i16 2, i16 3, i16 3, i16 1], align 2
@Diamond_X = internal unnamed_addr constant [4 x i16] [i16 -1, i16 1, i16 0, i16 0], align 2
@Diamond_Y = internal unnamed_addr constant [4 x i16] [i16 0, i16 0, i16 -1, i16 1], align 2
@Hexagon_X = internal unnamed_addr constant [6 x i16] [i16 -2, i16 2, i16 -1, i16 1, i16 -1, i16 1], align 2
@Hexagon_Y = internal unnamed_addr constant [6 x i16] [i16 0, i16 0, i16 -2, i16 2, i16 2, i16 -2], align 2
@Big_Hexagon_X = internal unnamed_addr constant [16 x i16] [i16 -4, i16 4, i16 0, i16 0, i16 -4, i16 4, i16 -4, i16 4, i16 -4, i16 4, i16 -4, i16 4, i16 -2, i16 2, i16 -2, i16 2], align 2
@Big_Hexagon_Y = internal unnamed_addr constant [16 x i16] [i16 0, i16 0, i16 -4, i16 4, i16 -1, i16 1, i16 1, i16 -1, i16 -2, i16 2, i16 2, i16 -2, i16 -3, i16 3, i16 3, i16 -3], align 2
@simplified_pred_MV_uplayer_X = dso_local local_unnamed_addr global i16 0, align 2
@simplified_pred_MV_uplayer_Y = dso_local local_unnamed_addr global i16 0, align 2
@simplified_flag_intra_SAD = dso_local local_unnamed_addr global i32 0, align 4
@simplified_pred_SAD_uplayer = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @simplified_init_FME() local_unnamed_addr #0 {
  store i16 800, ptr @SymmetricalCrossSearchThreshold1, align 2, !tbaa !6
  store i16 7000, ptr @SymmetricalCrossSearchThreshold2, align 2, !tbaa !6
  store i16 1000, ptr @ConvergeThreshold, align 2, !tbaa !6
  store i16 1000, ptr @SubPelThreshold1, align 2, !tbaa !6
  store i16 400, ptr @SubPelThreshold3, align 2, !tbaa !6
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @simplified_get_mem_FME() local_unnamed_addr #1 {
  %1 = load ptr, ptr @img, align 8, !tbaa !10
  %2 = getelementptr inbounds i8, ptr %1, i64 52
  %3 = load i32, ptr %2, align 4, !tbaa !12
  %4 = ashr i32 %3, 4
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 1) #11
  store ptr %7, ptr @simplified_flag_intra, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #12
  %10 = load ptr, ptr @img, align 8, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %10, i64 52
  %12 = load i32, ptr %11, align 4, !tbaa !12
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi i32 [ %12, %9 ], [ %3, %0 ]
  %15 = phi ptr [ %10, %9 ], [ %1, %0 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 60
  %17 = load i32, ptr %16, align 4, !tbaa !17
  %18 = sdiv i32 %17, 4
  %19 = sdiv i32 %14, 4
  %20 = tail call signext i32 @get_mem3Dint(ptr noundef nonnull @simplified_fastme_l0_cost, i32 noundef signext 9, i32 noundef signext %18, i32 noundef signext %19) #12
  %21 = load ptr, ptr @img, align 8, !tbaa !10
  %22 = getelementptr inbounds i8, ptr %21, i64 60
  %23 = load i32, ptr %22, align 4, !tbaa !17
  %24 = sdiv i32 %23, 4
  %25 = getelementptr inbounds i8, ptr %21, i64 52
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = sdiv i32 %26, 4
  %28 = tail call signext i32 @get_mem3Dint(ptr noundef nonnull @simplified_fastme_l1_cost, i32 noundef signext 9, i32 noundef signext %24, i32 noundef signext %27) #12
  %29 = add nsw i32 %28, %20
  %30 = tail call signext i32 @get_mem2D(ptr noundef nonnull @simplified_SearchState, i32 noundef signext 7, i32 noundef signext 7) #12
  %31 = add nsw i32 %29, %30
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #4

declare dso_local signext i32 @get_mem3Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local signext i32 @get_mem2D(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local void @simplified_free_mem_FME() local_unnamed_addr #1 {
  %1 = load ptr, ptr @simplified_fastme_l0_cost, align 8, !tbaa !10
  tail call void @free_mem3Dint(ptr noundef %1, i32 noundef signext 9) #12
  %2 = load ptr, ptr @simplified_fastme_l1_cost, align 8, !tbaa !10
  tail call void @free_mem3Dint(ptr noundef %2, i32 noundef signext 9) #12
  %3 = load ptr, ptr @simplified_SearchState, align 8, !tbaa !10
  tail call void @free_mem2D(ptr noundef %3) #12
  %4 = load ptr, ptr @simplified_flag_intra, align 8, !tbaa !10
  tail call void @free(ptr noundef %4) #12
  ret void
}

declare dso_local void @free_mem3Dint(ptr noundef, i32 noundef signext) local_unnamed_addr #4

declare dso_local void @free_mem2D(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
define dso_local signext i32 @simplified_partial_SAD_calculate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10) local_unnamed_addr #1 {
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %84

13:                                               ; preds = %11
  %14 = icmp sgt i32 %6, 0
  br label %19

15:                                               ; preds = %81
  %16 = add i16 %21, 1
  %17 = zext i16 %16 to i32
  %18 = icmp slt i32 %17, %4
  br i1 %18, label %19, label %84

19:                                               ; preds = %13, %15
  %20 = phi i32 [ 0, %13 ], [ %17, %15 ]
  %21 = phi i16 [ 0, %13 ], [ %16, %15 ]
  %22 = phi i32 [ %7, %13 ], [ %82, %15 ]
  %23 = add nsw i32 %20, %10
  %24 = load ptr, ptr @img, align 8, !tbaa !10
  %25 = getelementptr inbounds i8, ptr %24, i64 52
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = tail call ptr %2(i32 noundef signext %5, ptr noundef %0, i32 noundef signext %23, i32 noundef signext %9, i32 noundef signext %3, i32 noundef signext %26) #12
  br i1 %14, label %28, label %81

28:                                               ; preds = %19
  %29 = zext i16 %21 to i64
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %33

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %27, %28 ], [ %71, %33 ]
  %35 = phi ptr [ %31, %28 ], [ %68, %33 ]
  %36 = phi i16 [ 0, %28 ], [ %78, %33 ]
  %37 = phi i32 [ %22, %28 ], [ %77, %33 ]
  %38 = getelementptr inbounds i8, ptr %35, i64 2
  %39 = load i16, ptr %35, align 2, !tbaa !6
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds i8, ptr %34, i64 2
  %42 = load i16, ptr %34, align 2, !tbaa !6
  %43 = zext i16 %42 to i64
  %44 = sub nsw i64 %40, %43
  %45 = getelementptr inbounds i32, ptr %32, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !18
  %47 = add i32 %46, %37
  %48 = getelementptr inbounds i8, ptr %35, i64 4
  %49 = load i16, ptr %38, align 2, !tbaa !6
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds i8, ptr %34, i64 4
  %52 = load i16, ptr %41, align 2, !tbaa !6
  %53 = zext i16 %52 to i64
  %54 = sub nsw i64 %50, %53
  %55 = getelementptr inbounds i32, ptr %32, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !18
  %57 = add i32 %47, %56
  %58 = getelementptr inbounds i8, ptr %35, i64 6
  %59 = load i16, ptr %48, align 2, !tbaa !6
  %60 = zext i16 %59 to i64
  %61 = getelementptr inbounds i8, ptr %34, i64 6
  %62 = load i16, ptr %51, align 2, !tbaa !6
  %63 = zext i16 %62 to i64
  %64 = sub nsw i64 %60, %63
  %65 = getelementptr inbounds i32, ptr %32, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !18
  %67 = add i32 %57, %66
  %68 = getelementptr inbounds i8, ptr %35, i64 8
  %69 = load i16, ptr %58, align 2, !tbaa !6
  %70 = zext i16 %69 to i64
  %71 = getelementptr inbounds i8, ptr %34, i64 8
  %72 = load i16, ptr %61, align 2, !tbaa !6
  %73 = zext i16 %72 to i64
  %74 = sub nsw i64 %70, %73
  %75 = getelementptr inbounds i32, ptr %32, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !18
  %77 = add i32 %67, %76
  %78 = add i16 %36, 1
  %79 = zext i16 %78 to i32
  %80 = icmp ult i32 %79, %6
  br i1 %80, label %33, label %81

81:                                               ; preds = %33, %19
  %82 = phi i32 [ %22, %19 ], [ %77, %33 ]
  %83 = icmp slt i32 %82, %8
  br i1 %83, label %15, label %84

84:                                               ; preds = %15, %81, %11
  %85 = phi i32 [ %7, %11 ], [ %82, %81 ], [ %82, %15 ]
  ret i32 %85
}

; Function Attrs: nounwind
define dso_local signext i32 @simplified_add_up_SAD_quarter_pel(i32 signext %0, i32 signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10, i32 noundef signext %11) local_unnamed_addr #1 {
  %13 = alloca [16 x i32], align 4
  %14 = alloca [256 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %14) #12
  %15 = icmp eq i32 %11, 3
  %16 = select i1 %15, i32 64, i32 128
  %17 = getelementptr inbounds i8, ptr %6, i64 6392
  %18 = load i32, ptr %17, align 8, !tbaa !19
  %19 = shl i32 %18, 2
  %20 = add i32 %19, 28
  %21 = getelementptr inbounds i8, ptr %6, i64 6396
  %22 = load i32, ptr %21, align 4, !tbaa !21
  %23 = shl i32 %22, 2
  %24 = add i32 %23, 28
  %25 = load ptr, ptr @active_pps, align 8, !tbaa !10
  %26 = getelementptr inbounds i8, ptr %25, i64 192
  %27 = load i32, ptr %26, align 8, !tbaa !22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %12
  %30 = load ptr, ptr @img, align 8, !tbaa !10
  %31 = getelementptr inbounds i8, ptr %30, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !24
  switch i32 %32, label %33 [
    i32 0, label %42
    i32 3, label %42
  ]

33:                                               ; preds = %29, %12
  %34 = getelementptr inbounds i8, ptr %25, i64 196
  %35 = load i32, ptr %34, align 4, !tbaa !25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @img, align 8, !tbaa !10
  %39 = getelementptr inbounds i8, ptr %38, i64 24
  %40 = load i32, ptr %39, align 8, !tbaa !24
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %29, %29, %37
  %43 = load ptr, ptr @input, align 8, !tbaa !10
  %44 = getelementptr inbounds i8, ptr %43, i64 1912
  %45 = load i32, ptr %44, align 8, !tbaa !26
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33, %42, %37
  br label %48

48:                                               ; preds = %42, %47
  %49 = phi i64 [ 6448, %47 ], [ 6456, %42 ]
  %50 = getelementptr inbounds i8, ptr %6, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !10
  %52 = icmp sgt i32 %3, 0
  br i1 %52, label %53, label %268

53:                                               ; preds = %48
  %54 = icmp sgt i32 %2, 0
  %55 = getelementptr inbounds i8, ptr %13, i64 4
  %56 = getelementptr inbounds i8, ptr %13, i64 8
  %57 = getelementptr inbounds i8, ptr %13, i64 12
  %58 = getelementptr inbounds i8, ptr %13, i64 16
  %59 = getelementptr inbounds i8, ptr %13, i64 20
  %60 = getelementptr inbounds i8, ptr %13, i64 24
  %61 = getelementptr inbounds i8, ptr %13, i64 28
  %62 = getelementptr inbounds i8, ptr %13, i64 32
  %63 = getelementptr inbounds i8, ptr %13, i64 36
  %64 = getelementptr inbounds i8, ptr %13, i64 40
  %65 = getelementptr inbounds i8, ptr %13, i64 44
  %66 = getelementptr inbounds i8, ptr %13, i64 48
  %67 = getelementptr inbounds i8, ptr %13, i64 52
  %68 = getelementptr inbounds i8, ptr %13, i64 56
  %69 = getelementptr inbounds i8, ptr %13, i64 60
  %70 = icmp eq i32 %10, 0
  br label %71

71:                                               ; preds = %53, %263
  %72 = phi i64 [ 0, %53 ], [ %265, %263 ]
  %73 = phi i32 [ %8, %53 ], [ %264, %263 ]
  %74 = icmp ugt i64 %72, 7
  %75 = select i1 %74, i32 %16, i32 0
  %76 = trunc nuw nsw i64 %72 to i32
  %77 = shl i32 %76, 2
  %78 = add nsw i32 %77, %5
  %79 = add nsw i32 %78, 4
  %80 = add nsw i32 %78, 8
  %81 = add nsw i32 %78, 12
  br i1 %54, label %82, label %263

82:                                               ; preds = %71
  %83 = or disjoint i64 %72, 3
  %84 = or disjoint i64 %72, 2
  %85 = or disjoint i64 %72, 1
  %86 = getelementptr inbounds ptr, ptr %7, i64 %72
  %87 = getelementptr inbounds ptr, ptr %7, i64 %85
  %88 = getelementptr inbounds ptr, ptr %7, i64 %84
  %89 = getelementptr inbounds ptr, ptr %7, i64 %83
  %90 = shl i32 %76, 3
  %91 = and i32 %90, 32
  %92 = trunc i64 %72 to i32
  %93 = shl i32 %92, 3
  %94 = and i32 %93, 32
  %95 = trunc i64 %72 to i32
  %96 = shl i32 %95, 3
  %97 = and i32 %96, 32
  %98 = trunc i64 %72 to i32
  %99 = shl i32 %98, 3
  %100 = and i32 %99, 32
  br label %101

101:                                              ; preds = %82, %258
  %102 = phi i64 [ 0, %82 ], [ %260, %258 ]
  %103 = phi i32 [ %73, %82 ], [ %259, %258 ]
  %104 = trunc nuw nsw i64 %102 to i32
  %105 = shl i32 %104, 2
  %106 = add nsw i32 %105, %4
  %107 = or disjoint i64 %102, 1
  %108 = or disjoint i64 %102, 2
  %109 = or disjoint i64 %102, 3
  %110 = load ptr, ptr %86, align 8, !tbaa !10
  %111 = load ptr, ptr @get_line, align 8, !tbaa !10
  %112 = call ptr %111(ptr noundef %51, i32 noundef signext %78, i32 noundef signext %106, i32 noundef signext %24, i32 noundef signext %20) #12, !callees !28
  %113 = getelementptr inbounds i16, ptr %110, i64 %102
  %114 = load i16, ptr %113, align 2, !tbaa !6
  %115 = zext i16 %114 to i32
  %116 = load i16, ptr %112, align 2, !tbaa !6
  %117 = zext i16 %116 to i32
  %118 = sub nsw i32 %115, %117
  store i32 %118, ptr %13, align 4, !tbaa !18
  %119 = getelementptr inbounds i16, ptr %110, i64 %107
  %120 = load i16, ptr %119, align 2, !tbaa !6
  %121 = zext i16 %120 to i32
  %122 = getelementptr inbounds i8, ptr %112, i64 8
  %123 = load i16, ptr %122, align 2, !tbaa !6
  %124 = zext i16 %123 to i32
  %125 = sub nsw i32 %121, %124
  store i32 %125, ptr %55, align 4, !tbaa !18
  %126 = getelementptr inbounds i16, ptr %110, i64 %108
  %127 = load i16, ptr %126, align 2, !tbaa !6
  %128 = zext i16 %127 to i32
  %129 = getelementptr inbounds i8, ptr %112, i64 16
  %130 = load i16, ptr %129, align 2, !tbaa !6
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 %128, %131
  store i32 %132, ptr %56, align 4, !tbaa !18
  %133 = getelementptr inbounds i16, ptr %110, i64 %109
  %134 = load i16, ptr %133, align 2, !tbaa !6
  %135 = zext i16 %134 to i32
  %136 = getelementptr inbounds i8, ptr %112, i64 24
  %137 = load i16, ptr %136, align 2, !tbaa !6
  %138 = zext i16 %137 to i32
  %139 = sub nsw i32 %135, %138
  store i32 %139, ptr %57, align 4, !tbaa !18
  %140 = load ptr, ptr %87, align 8, !tbaa !10
  %141 = load ptr, ptr @get_line, align 8, !tbaa !10
  %142 = call ptr %141(ptr noundef %51, i32 noundef signext %79, i32 noundef signext %106, i32 noundef signext %24, i32 noundef signext %20) #12, !callees !28
  %143 = getelementptr inbounds i16, ptr %140, i64 %102
  %144 = load i16, ptr %143, align 2, !tbaa !6
  %145 = zext i16 %144 to i32
  %146 = load i16, ptr %142, align 2, !tbaa !6
  %147 = zext i16 %146 to i32
  %148 = sub nsw i32 %145, %147
  store i32 %148, ptr %58, align 4, !tbaa !18
  %149 = getelementptr inbounds i16, ptr %140, i64 %107
  %150 = load i16, ptr %149, align 2, !tbaa !6
  %151 = zext i16 %150 to i32
  %152 = getelementptr inbounds i8, ptr %142, i64 8
  %153 = load i16, ptr %152, align 2, !tbaa !6
  %154 = zext i16 %153 to i32
  %155 = sub nsw i32 %151, %154
  store i32 %155, ptr %59, align 4, !tbaa !18
  %156 = getelementptr inbounds i16, ptr %140, i64 %108
  %157 = load i16, ptr %156, align 2, !tbaa !6
  %158 = zext i16 %157 to i32
  %159 = getelementptr inbounds i8, ptr %142, i64 16
  %160 = load i16, ptr %159, align 2, !tbaa !6
  %161 = zext i16 %160 to i32
  %162 = sub nsw i32 %158, %161
  store i32 %162, ptr %60, align 4, !tbaa !18
  %163 = getelementptr inbounds i16, ptr %140, i64 %109
  %164 = load i16, ptr %163, align 2, !tbaa !6
  %165 = zext i16 %164 to i32
  %166 = getelementptr inbounds i8, ptr %142, i64 24
  %167 = load i16, ptr %166, align 2, !tbaa !6
  %168 = zext i16 %167 to i32
  %169 = sub nsw i32 %165, %168
  store i32 %169, ptr %61, align 4, !tbaa !18
  %170 = load ptr, ptr %88, align 8, !tbaa !10
  %171 = load ptr, ptr @get_line, align 8, !tbaa !10
  %172 = call ptr %171(ptr noundef %51, i32 noundef signext %80, i32 noundef signext %106, i32 noundef signext %24, i32 noundef signext %20) #12, !callees !28
  %173 = getelementptr inbounds i16, ptr %170, i64 %102
  %174 = load i16, ptr %173, align 2, !tbaa !6
  %175 = zext i16 %174 to i32
  %176 = load i16, ptr %172, align 2, !tbaa !6
  %177 = zext i16 %176 to i32
  %178 = sub nsw i32 %175, %177
  store i32 %178, ptr %62, align 4, !tbaa !18
  %179 = getelementptr inbounds i16, ptr %170, i64 %107
  %180 = load i16, ptr %179, align 2, !tbaa !6
  %181 = zext i16 %180 to i32
  %182 = getelementptr inbounds i8, ptr %172, i64 8
  %183 = load i16, ptr %182, align 2, !tbaa !6
  %184 = zext i16 %183 to i32
  %185 = sub nsw i32 %181, %184
  store i32 %185, ptr %63, align 4, !tbaa !18
  %186 = getelementptr inbounds i16, ptr %170, i64 %108
  %187 = load i16, ptr %186, align 2, !tbaa !6
  %188 = zext i16 %187 to i32
  %189 = getelementptr inbounds i8, ptr %172, i64 16
  %190 = load i16, ptr %189, align 2, !tbaa !6
  %191 = zext i16 %190 to i32
  %192 = sub nsw i32 %188, %191
  store i32 %192, ptr %64, align 4, !tbaa !18
  %193 = getelementptr inbounds i16, ptr %170, i64 %109
  %194 = load i16, ptr %193, align 2, !tbaa !6
  %195 = zext i16 %194 to i32
  %196 = getelementptr inbounds i8, ptr %172, i64 24
  %197 = load i16, ptr %196, align 2, !tbaa !6
  %198 = zext i16 %197 to i32
  %199 = sub nsw i32 %195, %198
  store i32 %199, ptr %65, align 4, !tbaa !18
  %200 = load ptr, ptr %89, align 8, !tbaa !10
  %201 = load ptr, ptr @get_line, align 8, !tbaa !10
  %202 = call ptr %201(ptr noundef %51, i32 noundef signext %81, i32 noundef signext %106, i32 noundef signext %24, i32 noundef signext %20) #12, !callees !28
  %203 = getelementptr inbounds i16, ptr %200, i64 %102
  %204 = load i16, ptr %203, align 2, !tbaa !6
  %205 = zext i16 %204 to i32
  %206 = load i16, ptr %202, align 2, !tbaa !6
  %207 = zext i16 %206 to i32
  %208 = sub nsw i32 %205, %207
  store i32 %208, ptr %66, align 4, !tbaa !18
  %209 = getelementptr inbounds i16, ptr %200, i64 %107
  %210 = load i16, ptr %209, align 2, !tbaa !6
  %211 = zext i16 %210 to i32
  %212 = getelementptr inbounds i8, ptr %202, i64 8
  %213 = load i16, ptr %212, align 2, !tbaa !6
  %214 = zext i16 %213 to i32
  %215 = sub nsw i32 %211, %214
  store i32 %215, ptr %67, align 4, !tbaa !18
  %216 = getelementptr inbounds i16, ptr %200, i64 %108
  %217 = load i16, ptr %216, align 2, !tbaa !6
  %218 = zext i16 %217 to i32
  %219 = getelementptr inbounds i8, ptr %202, i64 16
  %220 = load i16, ptr %219, align 2, !tbaa !6
  %221 = zext i16 %220 to i32
  %222 = sub nsw i32 %218, %221
  store i32 %222, ptr %68, align 4, !tbaa !18
  %223 = getelementptr inbounds i16, ptr %200, i64 %109
  %224 = load i16, ptr %223, align 2, !tbaa !6
  %225 = zext i16 %224 to i32
  %226 = getelementptr inbounds i8, ptr %202, i64 24
  %227 = load i16, ptr %226, align 2, !tbaa !6
  %228 = zext i16 %227 to i32
  %229 = sub nsw i32 %225, %228
  store i32 %229, ptr %69, align 4, !tbaa !18
  br i1 %70, label %230, label %237

230:                                              ; preds = %101
  %231 = load ptr, ptr @input, align 8, !tbaa !10
  %232 = getelementptr inbounds i8, ptr %231, i64 24
  %233 = load i32, ptr %232, align 8, !tbaa !29
  %234 = call signext i32 @SATD(ptr noundef nonnull %13, i32 noundef signext %233) #12
  %235 = add nsw i32 %234, %103
  %236 = icmp slt i32 %235, %9
  br i1 %236, label %258, label %274

237:                                              ; preds = %101
  %238 = and i32 %104, 4
  %239 = icmp ugt i64 %102, 7
  %240 = select i1 %239, i32 64, i32 0
  %241 = or disjoint i32 %238, %75
  %242 = add nuw nsw i32 %241, %240
  %243 = or disjoint i32 %91, %242
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds [256 x i32], ptr %14, i64 0, i64 %244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %245, ptr noundef nonnull align 4 dereferenceable(16) %13, i64 16, i1 false)
  %246 = or disjoint i32 %94, %242
  %247 = or disjoint i32 %246, 8
  %248 = zext nneg i32 %247 to i64
  %249 = getelementptr inbounds [256 x i32], ptr %14, i64 0, i64 %248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %249, ptr noundef nonnull align 4 dereferenceable(16) %58, i64 16, i1 false)
  %250 = or disjoint i32 %97, %242
  %251 = or disjoint i32 %250, 16
  %252 = zext nneg i32 %251 to i64
  %253 = getelementptr inbounds [256 x i32], ptr %14, i64 0, i64 %252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %253, ptr noundef nonnull align 4 dereferenceable(16) %62, i64 16, i1 false)
  %254 = or disjoint i32 %100, %242
  %255 = or disjoint i32 %254, 24
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds [256 x i32], ptr %14, i64 0, i64 %256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %257, ptr noundef nonnull align 4 dereferenceable(16) %66, i64 16, i1 false)
  br label %258

258:                                              ; preds = %237, %230
  %259 = phi i32 [ %235, %230 ], [ %103, %237 ]
  %260 = add nuw nsw i64 %102, 4
  %261 = trunc nuw i64 %260 to i32
  %262 = icmp slt i32 %261, %2
  br i1 %262, label %101, label %263

263:                                              ; preds = %258, %71
  %264 = phi i32 [ %73, %71 ], [ %259, %258 ]
  %265 = add nuw nsw i64 %72, 4
  %266 = trunc nuw i64 %265 to i32
  %267 = icmp slt i32 %266, %3
  br i1 %267, label %71, label %268

268:                                              ; preds = %263, %48
  %269 = phi i32 [ %8, %48 ], [ %264, %263 ]
  %270 = icmp eq i32 %10, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = call signext i32 @find_SATD(ptr noundef nonnull %14, i32 noundef signext %11) #12
  %273 = add nsw i32 %272, %269
  br label %274

274:                                              ; preds = %230, %271, %268
  %275 = phi i32 [ %273, %271 ], [ %269, %268 ], [ %235, %230 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #12
  ret i32 %275
}

declare dso_local signext i32 @SATD(ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local signext i32 @find_SATD(ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local signext i32 @simplified_FastIntegerPelBlockMotionSearch(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7, ptr nocapture noundef %8, ptr nocapture noundef %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12) local_unnamed_addr #1 {
  %14 = load ptr, ptr @input, align 8, !tbaa !10
  %15 = getelementptr inbounds i8, ptr %14, i64 84
  %16 = sext i32 %5 to i64
  %17 = getelementptr inbounds [8 x [2 x i32]], ptr %15, i64 0, i64 %16
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  %19 = load i32, ptr %18, align 4, !tbaa !18
  %20 = load i32, ptr %17, align 4, !tbaa !18
  %21 = ashr i32 %20, 2
  %22 = shl i32 %3, 2
  %23 = sext i16 %6 to i32
  %24 = add nsw i32 %22, %23
  %25 = shl i32 %4, 2
  %26 = sext i16 %7 to i32
  %27 = add nsw i32 %25, %26
  %28 = load i16, ptr %8, align 2, !tbaa !6
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %29, %3
  %31 = load i16, ptr %9, align 2, !tbaa !6
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %32, %4
  %34 = load ptr, ptr @img, align 8, !tbaa !10
  %35 = getelementptr inbounds i8, ptr %34, i64 90220
  %36 = load i32, ptr %35, align 4, !tbaa !30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %13
  %39 = getelementptr inbounds i8, ptr %34, i64 31576
  %40 = load ptr, ptr %39, align 8, !tbaa !31
  %41 = getelementptr inbounds i8, ptr %34, i64 12
  %42 = load i32, ptr %41, align 4, !tbaa !32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.macroblock, ptr %40, i64 %43, i32 19
  %45 = load i32, ptr %44, align 8, !tbaa !33
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = and i32 %42, 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 2, i32 4
  %51 = getelementptr inbounds i8, ptr %34, i64 60
  %52 = load i32, ptr %51, align 4, !tbaa !17
  %53 = add nsw i32 %52, 1
  %54 = ashr i32 %53, 1
  br label %58

55:                                               ; preds = %13, %38
  %56 = getelementptr inbounds i8, ptr %34, i64 60
  %57 = load i32, ptr %56, align 4, !tbaa !17
  br label %58

58:                                               ; preds = %55, %47
  %59 = phi i32 [ %50, %47 ], [ 0, %55 ]
  %60 = phi i32 [ %54, %47 ], [ %57, %55 ]
  %61 = load ptr, ptr @active_pps, align 8, !tbaa !10
  %62 = getelementptr inbounds i8, ptr %61, i64 192
  %63 = load i32, ptr %62, align 8, !tbaa !22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds i8, ptr %34, i64 24
  %67 = load i32, ptr %66, align 8, !tbaa !24
  switch i32 %67, label %68 [
    i32 0, label %76
    i32 3, label %76
  ]

68:                                               ; preds = %65, %58
  %69 = getelementptr inbounds i8, ptr %61, i64 196
  %70 = load i32, ptr %69, align 4, !tbaa !25
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %34, i64 24
  %74 = load i32, ptr %73, align 8, !tbaa !24
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %65, %65, %72
  %77 = getelementptr inbounds i8, ptr %14, i64 1912
  %78 = load i32, ptr %77, align 8, !tbaa !26
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68, %76, %72
  br label %81

81:                                               ; preds = %76, %80
  %82 = phi i64 [ 6432, %80 ], [ 6440, %76 ]
  %83 = add nsw i32 %59, %2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !10
  %87 = sext i16 %1 to i64
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !10
  %90 = getelementptr inbounds i8, ptr %89, i64 %82
  %91 = load ptr, ptr %90, align 8, !tbaa !10
  %92 = icmp sgt i32 %30, %10
  br i1 %92, label %93, label %106

93:                                               ; preds = %81
  %94 = getelementptr inbounds i8, ptr %34, i64 52
  %95 = load i32, ptr %94, align 4, !tbaa !12
  %96 = xor i32 %10, -1
  %97 = sub i32 %96, %20
  %98 = add i32 %97, %95
  %99 = icmp slt i32 %30, %98
  %100 = icmp sgt i32 %33, %10
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = sub i32 %96, %19
  %104 = add i32 %103, %60
  %105 = icmp slt i32 %33, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %102, %93, %81
  br label %107

107:                                              ; preds = %102, %106
  %108 = phi ptr [ @UMVLineX, %106 ], [ @FastLineX, %102 ]
  %109 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %110 = shl i32 %30, 2
  %111 = sub nsw i32 %110, %24
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %109, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !18
  %115 = shl i32 %33, 2
  %116 = sub nsw i32 %115, %27
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %109, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !18
  %120 = add nsw i32 %119, %114
  %121 = mul nsw i32 %120, %12
  %122 = ashr i32 %121, 16
  %123 = icmp sgt i32 %19, 0
  br i1 %123, label %124, label %195

124:                                              ; preds = %107
  %125 = icmp sgt i32 %21, 0
  br label %130

126:                                              ; preds = %192
  %127 = add i16 %132, 1
  %128 = zext i16 %127 to i32
  %129 = icmp sgt i32 %19, %128
  br i1 %129, label %130, label %195

130:                                              ; preds = %126, %124
  %131 = phi i32 [ 0, %124 ], [ %128, %126 ]
  %132 = phi i16 [ 0, %124 ], [ %127, %126 ]
  %133 = phi i32 [ %122, %124 ], [ %193, %126 ]
  %134 = add nsw i32 %131, %33
  %135 = load ptr, ptr @img, align 8, !tbaa !10
  %136 = getelementptr inbounds i8, ptr %135, i64 52
  %137 = load i32, ptr %136, align 4, !tbaa !12
  %138 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %134, i32 noundef signext %30, i32 noundef signext %60, i32 noundef signext %137) #12
  br i1 %125, label %139, label %192

139:                                              ; preds = %130
  %140 = zext i16 %132 to i64
  %141 = getelementptr inbounds ptr, ptr %0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !10
  %143 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %144

144:                                              ; preds = %144, %139
  %145 = phi ptr [ %138, %139 ], [ %182, %144 ]
  %146 = phi ptr [ %142, %139 ], [ %179, %144 ]
  %147 = phi i16 [ 0, %139 ], [ %189, %144 ]
  %148 = phi i32 [ %133, %139 ], [ %188, %144 ]
  %149 = getelementptr inbounds i8, ptr %146, i64 2
  %150 = load i16, ptr %146, align 2, !tbaa !6
  %151 = zext i16 %150 to i64
  %152 = getelementptr inbounds i8, ptr %145, i64 2
  %153 = load i16, ptr %145, align 2, !tbaa !6
  %154 = zext i16 %153 to i64
  %155 = sub nsw i64 %151, %154
  %156 = getelementptr inbounds i32, ptr %143, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !18
  %158 = add i32 %157, %148
  %159 = getelementptr inbounds i8, ptr %146, i64 4
  %160 = load i16, ptr %149, align 2, !tbaa !6
  %161 = zext i16 %160 to i64
  %162 = getelementptr inbounds i8, ptr %145, i64 4
  %163 = load i16, ptr %152, align 2, !tbaa !6
  %164 = zext i16 %163 to i64
  %165 = sub nsw i64 %161, %164
  %166 = getelementptr inbounds i32, ptr %143, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !18
  %168 = add i32 %158, %167
  %169 = getelementptr inbounds i8, ptr %146, i64 6
  %170 = load i16, ptr %159, align 2, !tbaa !6
  %171 = zext i16 %170 to i64
  %172 = getelementptr inbounds i8, ptr %145, i64 6
  %173 = load i16, ptr %162, align 2, !tbaa !6
  %174 = zext i16 %173 to i64
  %175 = sub nsw i64 %171, %174
  %176 = getelementptr inbounds i32, ptr %143, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !18
  %178 = add i32 %168, %177
  %179 = getelementptr inbounds i8, ptr %146, i64 8
  %180 = load i16, ptr %169, align 2, !tbaa !6
  %181 = zext i16 %180 to i64
  %182 = getelementptr inbounds i8, ptr %145, i64 8
  %183 = load i16, ptr %172, align 2, !tbaa !6
  %184 = zext i16 %183 to i64
  %185 = sub nsw i64 %181, %184
  %186 = getelementptr inbounds i32, ptr %143, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !18
  %188 = add i32 %178, %187
  %189 = add i16 %147, 1
  %190 = zext i16 %189 to i32
  %191 = icmp ugt i32 %21, %190
  br i1 %191, label %144, label %192

192:                                              ; preds = %144, %130
  %193 = phi i32 [ %133, %130 ], [ %188, %144 ]
  %194 = icmp slt i32 %193, %11
  br i1 %194, label %126, label %195

195:                                              ; preds = %126, %192, %107
  %196 = phi i32 [ %122, %107 ], [ %193, %192 ], [ %193, %126 ]
  %197 = icmp slt i32 %196, %11
  %198 = select i1 %197, i32 %33, i32 0
  %199 = select i1 %197, i32 %30, i32 0
  %200 = tail call i32 @llvm.smin.i32(i32 %196, i32 %11)
  %201 = or i16 %7, %6
  %202 = icmp eq i16 %201, 0
  %203 = tail call i32 @llvm.abs.i32(i32 %29, i1 true)
  %204 = icmp sgt i32 %203, %10
  %205 = select i1 %202, i1 true, i1 %204
  %206 = tail call i32 @llvm.abs.i32(i32 %32, i1 true)
  %207 = icmp sgt i32 %206, %10
  %208 = select i1 %205, i1 true, i1 %207
  br i1 %208, label %297, label %209

209:                                              ; preds = %195
  %210 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %211 = sub nsw i32 0, %23
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, ptr %210, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !18
  %215 = sub nsw i32 0, %26
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, ptr %210, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !18
  %219 = add nsw i32 %218, %214
  %220 = mul nsw i32 %219, %12
  %221 = ashr i32 %220, 16
  br i1 %123, label %222, label %293

222:                                              ; preds = %209
  %223 = icmp sgt i32 %21, 0
  br label %228

224:                                              ; preds = %290
  %225 = add i16 %230, 1
  %226 = zext i16 %225 to i32
  %227 = icmp sgt i32 %19, %226
  br i1 %227, label %228, label %293

228:                                              ; preds = %224, %222
  %229 = phi i32 [ 0, %222 ], [ %226, %224 ]
  %230 = phi i16 [ 0, %222 ], [ %225, %224 ]
  %231 = phi i32 [ %221, %222 ], [ %291, %224 ]
  %232 = add nsw i32 %229, %4
  %233 = load ptr, ptr @img, align 8, !tbaa !10
  %234 = getelementptr inbounds i8, ptr %233, i64 52
  %235 = load i32, ptr %234, align 4, !tbaa !12
  %236 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %232, i32 noundef signext %3, i32 noundef signext %60, i32 noundef signext %235) #12
  br i1 %223, label %237, label %290

237:                                              ; preds = %228
  %238 = zext i16 %230 to i64
  %239 = getelementptr inbounds ptr, ptr %0, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !10
  %241 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %242

242:                                              ; preds = %242, %237
  %243 = phi ptr [ %236, %237 ], [ %280, %242 ]
  %244 = phi ptr [ %240, %237 ], [ %277, %242 ]
  %245 = phi i16 [ 0, %237 ], [ %287, %242 ]
  %246 = phi i32 [ %231, %237 ], [ %286, %242 ]
  %247 = getelementptr inbounds i8, ptr %244, i64 2
  %248 = load i16, ptr %244, align 2, !tbaa !6
  %249 = zext i16 %248 to i64
  %250 = getelementptr inbounds i8, ptr %243, i64 2
  %251 = load i16, ptr %243, align 2, !tbaa !6
  %252 = zext i16 %251 to i64
  %253 = sub nsw i64 %249, %252
  %254 = getelementptr inbounds i32, ptr %241, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !18
  %256 = add i32 %255, %246
  %257 = getelementptr inbounds i8, ptr %244, i64 4
  %258 = load i16, ptr %247, align 2, !tbaa !6
  %259 = zext i16 %258 to i64
  %260 = getelementptr inbounds i8, ptr %243, i64 4
  %261 = load i16, ptr %250, align 2, !tbaa !6
  %262 = zext i16 %261 to i64
  %263 = sub nsw i64 %259, %262
  %264 = getelementptr inbounds i32, ptr %241, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !18
  %266 = add i32 %256, %265
  %267 = getelementptr inbounds i8, ptr %244, i64 6
  %268 = load i16, ptr %257, align 2, !tbaa !6
  %269 = zext i16 %268 to i64
  %270 = getelementptr inbounds i8, ptr %243, i64 6
  %271 = load i16, ptr %260, align 2, !tbaa !6
  %272 = zext i16 %271 to i64
  %273 = sub nsw i64 %269, %272
  %274 = getelementptr inbounds i32, ptr %241, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !18
  %276 = add i32 %266, %275
  %277 = getelementptr inbounds i8, ptr %244, i64 8
  %278 = load i16, ptr %267, align 2, !tbaa !6
  %279 = zext i16 %278 to i64
  %280 = getelementptr inbounds i8, ptr %243, i64 8
  %281 = load i16, ptr %270, align 2, !tbaa !6
  %282 = zext i16 %281 to i64
  %283 = sub nsw i64 %279, %282
  %284 = getelementptr inbounds i32, ptr %241, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !18
  %286 = add i32 %276, %285
  %287 = add i16 %245, 1
  %288 = zext i16 %287 to i32
  %289 = icmp ugt i32 %21, %288
  br i1 %289, label %242, label %290

290:                                              ; preds = %242, %228
  %291 = phi i32 [ %231, %228 ], [ %286, %242 ]
  %292 = icmp slt i32 %291, %200
  br i1 %292, label %224, label %293

293:                                              ; preds = %224, %290, %209
  %294 = phi i32 [ %221, %209 ], [ %291, %290 ], [ %291, %224 ]
  %295 = icmp slt i32 %294, %200
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  br label %297

297:                                              ; preds = %296, %293, %195
  %298 = phi i32 [ %4, %296 ], [ %198, %293 ], [ %198, %195 ]
  %299 = phi i32 [ %3, %296 ], [ %199, %293 ], [ %199, %195 ]
  %300 = phi i32 [ %294, %296 ], [ %200, %293 ], [ %200, %195 ]
  %301 = load i16, ptr @ConvergeThreshold, align 2, !tbaa !6
  %302 = zext i16 %301 to i32
  %303 = getelementptr inbounds [8 x i16], ptr @block_type_shift_factor, i64 0, i64 %16
  %304 = load i16, ptr %303, align 2, !tbaa !6
  %305 = zext nneg i16 %304 to i32
  %306 = lshr i32 %302, %305
  %307 = icmp slt i32 %300, %306
  %308 = icmp sgt i32 %21, 0
  br i1 %307, label %309, label %423

309:                                              ; preds = %297, %417
  %310 = phi i64 [ %421, %417 ], [ 0, %297 ]
  %311 = phi i32 [ %420, %417 ], [ %300, %297 ]
  %312 = phi i32 [ %419, %417 ], [ %299, %297 ]
  %313 = phi i32 [ %418, %417 ], [ %298, %297 ]
  %314 = getelementptr inbounds [4 x i16], ptr @Diamond_X, i64 0, i64 %310
  %315 = load i16, ptr %314, align 2, !tbaa !6
  %316 = sext i16 %315 to i32
  %317 = add nsw i32 %199, %316
  %318 = getelementptr inbounds [4 x i16], ptr @Diamond_Y, i64 0, i64 %310
  %319 = load i16, ptr %318, align 2, !tbaa !6
  %320 = sext i16 %319 to i32
  %321 = add nsw i32 %198, %320
  %322 = sub nsw i32 %317, %30
  %323 = tail call i32 @llvm.abs.i32(i32 %322, i1 true)
  %324 = icmp sgt i32 %323, %10
  br i1 %324, label %417, label %325

325:                                              ; preds = %309
  %326 = sub nsw i32 %321, %33
  %327 = tail call i32 @llvm.abs.i32(i32 %326, i1 true)
  %328 = icmp ugt i32 %327, %10
  br i1 %328, label %417, label %329

329:                                              ; preds = %325
  %330 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %331 = shl i32 %317, 2
  %332 = sub nsw i32 %331, %24
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, ptr %330, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !18
  %336 = shl i32 %321, 2
  %337 = sub nsw i32 %336, %27
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, ptr %330, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !18
  %341 = add nsw i32 %340, %335
  %342 = mul nsw i32 %341, %12
  %343 = ashr i32 %342, 16
  br i1 %123, label %348, label %413

344:                                              ; preds = %410
  %345 = add i16 %350, 1
  %346 = zext i16 %345 to i32
  %347 = icmp sgt i32 %19, %346
  br i1 %347, label %348, label %413

348:                                              ; preds = %329, %344
  %349 = phi i32 [ %346, %344 ], [ 0, %329 ]
  %350 = phi i16 [ %345, %344 ], [ 0, %329 ]
  %351 = phi i32 [ %411, %344 ], [ %343, %329 ]
  %352 = add nsw i32 %349, %321
  %353 = load ptr, ptr @img, align 8, !tbaa !10
  %354 = getelementptr inbounds i8, ptr %353, i64 52
  %355 = load i32, ptr %354, align 4, !tbaa !12
  %356 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %352, i32 noundef signext %317, i32 noundef signext %60, i32 noundef signext %355) #12
  br i1 %308, label %357, label %410

357:                                              ; preds = %348
  %358 = zext i16 %350 to i64
  %359 = getelementptr inbounds ptr, ptr %0, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !10
  %361 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %362

362:                                              ; preds = %362, %357
  %363 = phi ptr [ %356, %357 ], [ %400, %362 ]
  %364 = phi ptr [ %360, %357 ], [ %397, %362 ]
  %365 = phi i16 [ 0, %357 ], [ %407, %362 ]
  %366 = phi i32 [ %351, %357 ], [ %406, %362 ]
  %367 = getelementptr inbounds i8, ptr %364, i64 2
  %368 = load i16, ptr %364, align 2, !tbaa !6
  %369 = zext i16 %368 to i64
  %370 = getelementptr inbounds i8, ptr %363, i64 2
  %371 = load i16, ptr %363, align 2, !tbaa !6
  %372 = zext i16 %371 to i64
  %373 = sub nsw i64 %369, %372
  %374 = getelementptr inbounds i32, ptr %361, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !18
  %376 = add i32 %375, %366
  %377 = getelementptr inbounds i8, ptr %364, i64 4
  %378 = load i16, ptr %367, align 2, !tbaa !6
  %379 = zext i16 %378 to i64
  %380 = getelementptr inbounds i8, ptr %363, i64 4
  %381 = load i16, ptr %370, align 2, !tbaa !6
  %382 = zext i16 %381 to i64
  %383 = sub nsw i64 %379, %382
  %384 = getelementptr inbounds i32, ptr %361, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !18
  %386 = add i32 %376, %385
  %387 = getelementptr inbounds i8, ptr %364, i64 6
  %388 = load i16, ptr %377, align 2, !tbaa !6
  %389 = zext i16 %388 to i64
  %390 = getelementptr inbounds i8, ptr %363, i64 6
  %391 = load i16, ptr %380, align 2, !tbaa !6
  %392 = zext i16 %391 to i64
  %393 = sub nsw i64 %389, %392
  %394 = getelementptr inbounds i32, ptr %361, i64 %393
  %395 = load i32, ptr %394, align 4, !tbaa !18
  %396 = add i32 %386, %395
  %397 = getelementptr inbounds i8, ptr %364, i64 8
  %398 = load i16, ptr %387, align 2, !tbaa !6
  %399 = zext i16 %398 to i64
  %400 = getelementptr inbounds i8, ptr %363, i64 8
  %401 = load i16, ptr %390, align 2, !tbaa !6
  %402 = zext i16 %401 to i64
  %403 = sub nsw i64 %399, %402
  %404 = getelementptr inbounds i32, ptr %361, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !18
  %406 = add i32 %396, %405
  %407 = add i16 %365, 1
  %408 = zext i16 %407 to i32
  %409 = icmp ugt i32 %21, %408
  br i1 %409, label %362, label %410

410:                                              ; preds = %362, %348
  %411 = phi i32 [ %351, %348 ], [ %406, %362 ]
  %412 = icmp slt i32 %411, %311
  br i1 %412, label %344, label %413

413:                                              ; preds = %344, %410, %329
  %414 = phi i32 [ %343, %329 ], [ %411, %410 ], [ %411, %344 ]
  %415 = icmp slt i32 %414, %311
  br i1 %415, label %416, label %417

416:                                              ; preds = %413
  br label %417

417:                                              ; preds = %309, %325, %416, %413
  %418 = phi i32 [ %321, %416 ], [ %313, %413 ], [ %313, %325 ], [ %313, %309 ]
  %419 = phi i32 [ %317, %416 ], [ %312, %413 ], [ %312, %325 ], [ %312, %309 ]
  %420 = phi i32 [ %414, %416 ], [ %311, %413 ], [ %311, %325 ], [ %311, %309 ]
  %421 = add nuw nsw i64 %310, 1
  %422 = icmp eq i64 %421, 4
  br i1 %422, label %1903, label %309

423:                                              ; preds = %297, %531
  %424 = phi i64 [ %535, %531 ], [ 0, %297 ]
  %425 = phi i32 [ %534, %531 ], [ %300, %297 ]
  %426 = phi i32 [ %533, %531 ], [ %299, %297 ]
  %427 = phi i32 [ %532, %531 ], [ %298, %297 ]
  %428 = getelementptr inbounds [4 x i16], ptr @Diamond_X, i64 0, i64 %424
  %429 = load i16, ptr %428, align 2, !tbaa !6
  %430 = sext i16 %429 to i32
  %431 = add nsw i32 %199, %430
  %432 = getelementptr inbounds [4 x i16], ptr @Diamond_Y, i64 0, i64 %424
  %433 = load i16, ptr %432, align 2, !tbaa !6
  %434 = sext i16 %433 to i32
  %435 = add nsw i32 %198, %434
  %436 = sub nsw i32 %431, %30
  %437 = tail call i32 @llvm.abs.i32(i32 %436, i1 true)
  %438 = icmp sgt i32 %437, %10
  br i1 %438, label %531, label %439

439:                                              ; preds = %423
  %440 = sub nsw i32 %435, %33
  %441 = tail call i32 @llvm.abs.i32(i32 %440, i1 true)
  %442 = icmp ugt i32 %441, %10
  br i1 %442, label %531, label %443

443:                                              ; preds = %439
  %444 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %445 = shl i32 %431, 2
  %446 = sub nsw i32 %445, %24
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, ptr %444, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !18
  %450 = shl i32 %435, 2
  %451 = sub nsw i32 %450, %27
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, ptr %444, i64 %452
  %454 = load i32, ptr %453, align 4, !tbaa !18
  %455 = add nsw i32 %454, %449
  %456 = mul nsw i32 %455, %12
  %457 = ashr i32 %456, 16
  br i1 %123, label %462, label %527

458:                                              ; preds = %524
  %459 = add i16 %464, 1
  %460 = zext i16 %459 to i32
  %461 = icmp sgt i32 %19, %460
  br i1 %461, label %462, label %527

462:                                              ; preds = %443, %458
  %463 = phi i32 [ %460, %458 ], [ 0, %443 ]
  %464 = phi i16 [ %459, %458 ], [ 0, %443 ]
  %465 = phi i32 [ %525, %458 ], [ %457, %443 ]
  %466 = add nsw i32 %463, %435
  %467 = load ptr, ptr @img, align 8, !tbaa !10
  %468 = getelementptr inbounds i8, ptr %467, i64 52
  %469 = load i32, ptr %468, align 4, !tbaa !12
  %470 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %466, i32 noundef signext %431, i32 noundef signext %60, i32 noundef signext %469) #12
  br i1 %308, label %471, label %524

471:                                              ; preds = %462
  %472 = zext i16 %464 to i64
  %473 = getelementptr inbounds ptr, ptr %0, i64 %472
  %474 = load ptr, ptr %473, align 8, !tbaa !10
  %475 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %476

476:                                              ; preds = %476, %471
  %477 = phi ptr [ %470, %471 ], [ %514, %476 ]
  %478 = phi ptr [ %474, %471 ], [ %511, %476 ]
  %479 = phi i16 [ 0, %471 ], [ %521, %476 ]
  %480 = phi i32 [ %465, %471 ], [ %520, %476 ]
  %481 = getelementptr inbounds i8, ptr %478, i64 2
  %482 = load i16, ptr %478, align 2, !tbaa !6
  %483 = zext i16 %482 to i64
  %484 = getelementptr inbounds i8, ptr %477, i64 2
  %485 = load i16, ptr %477, align 2, !tbaa !6
  %486 = zext i16 %485 to i64
  %487 = sub nsw i64 %483, %486
  %488 = getelementptr inbounds i32, ptr %475, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !18
  %490 = add i32 %489, %480
  %491 = getelementptr inbounds i8, ptr %478, i64 4
  %492 = load i16, ptr %481, align 2, !tbaa !6
  %493 = zext i16 %492 to i64
  %494 = getelementptr inbounds i8, ptr %477, i64 4
  %495 = load i16, ptr %484, align 2, !tbaa !6
  %496 = zext i16 %495 to i64
  %497 = sub nsw i64 %493, %496
  %498 = getelementptr inbounds i32, ptr %475, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !18
  %500 = add i32 %490, %499
  %501 = getelementptr inbounds i8, ptr %478, i64 6
  %502 = load i16, ptr %491, align 2, !tbaa !6
  %503 = zext i16 %502 to i64
  %504 = getelementptr inbounds i8, ptr %477, i64 6
  %505 = load i16, ptr %494, align 2, !tbaa !6
  %506 = zext i16 %505 to i64
  %507 = sub nsw i64 %503, %506
  %508 = getelementptr inbounds i32, ptr %475, i64 %507
  %509 = load i32, ptr %508, align 4, !tbaa !18
  %510 = add i32 %500, %509
  %511 = getelementptr inbounds i8, ptr %478, i64 8
  %512 = load i16, ptr %501, align 2, !tbaa !6
  %513 = zext i16 %512 to i64
  %514 = getelementptr inbounds i8, ptr %477, i64 8
  %515 = load i16, ptr %504, align 2, !tbaa !6
  %516 = zext i16 %515 to i64
  %517 = sub nsw i64 %513, %516
  %518 = getelementptr inbounds i32, ptr %475, i64 %517
  %519 = load i32, ptr %518, align 4, !tbaa !18
  %520 = add i32 %510, %519
  %521 = add i16 %479, 1
  %522 = zext i16 %521 to i32
  %523 = icmp ugt i32 %21, %522
  br i1 %523, label %476, label %524

524:                                              ; preds = %476, %462
  %525 = phi i32 [ %465, %462 ], [ %520, %476 ]
  %526 = icmp slt i32 %525, %425
  br i1 %526, label %458, label %527

527:                                              ; preds = %458, %524, %443
  %528 = phi i32 [ %457, %443 ], [ %525, %524 ], [ %525, %458 ]
  %529 = icmp slt i32 %528, %425
  br i1 %529, label %530, label %531

530:                                              ; preds = %527
  br label %531

531:                                              ; preds = %423, %439, %530, %527
  %532 = phi i32 [ %435, %530 ], [ %427, %527 ], [ %427, %439 ], [ %427, %423 ]
  %533 = phi i32 [ %431, %530 ], [ %426, %527 ], [ %426, %439 ], [ %426, %423 ]
  %534 = phi i32 [ %528, %530 ], [ %425, %527 ], [ %425, %439 ], [ %425, %423 ]
  %535 = add nuw nsw i64 %424, 1
  %536 = icmp eq i64 %535, 4
  br i1 %536, label %537, label %423

537:                                              ; preds = %531
  %538 = icmp eq i32 %5, 1
  br i1 %538, label %539, label %544

539:                                              ; preds = %537
  %540 = load i16, ptr @SymmetricalCrossSearchThreshold1, align 2, !tbaa !6
  %541 = zext i16 %540 to i32
  %542 = lshr i32 %541, %305
  %543 = icmp sgt i32 %534, %542
  br i1 %543, label %549, label %544

544:                                              ; preds = %539, %537
  %545 = load i16, ptr @SymmetricalCrossSearchThreshold2, align 2, !tbaa !6
  %546 = zext i16 %545 to i32
  %547 = lshr i32 %546, %305
  %548 = icmp sgt i32 %534, %547
  br i1 %548, label %549, label %1200

549:                                              ; preds = %544, %539
  %550 = sdiv i32 %10, 2
  %551 = icmp slt i32 %10, 2
  br i1 %551, label %565, label %552

552:                                              ; preds = %549
  %553 = sub nsw i32 %532, %33
  %554 = tail call i32 @llvm.abs.i32(i32 %553, i1 true)
  %555 = icmp ugt i32 %554, %10
  %556 = shl i32 %532, 2
  %557 = sub nsw i32 %556, %27
  %558 = sext i32 %557 to i64
  %559 = sub nsw i32 %533, %30
  %560 = tail call i32 @llvm.abs.i32(i32 %559, i1 true)
  %561 = icmp ugt i32 %560, %10
  %562 = shl i32 %533, 2
  %563 = sub nsw i32 %562, %24
  %564 = sext i32 %563 to i64
  br label %569

565:                                              ; preds = %950, %549
  %566 = phi i32 [ %532, %549 ], [ %951, %950 ]
  %567 = phi i32 [ %533, %549 ], [ %952, %950 ]
  %568 = phi i32 [ %534, %549 ], [ %953, %950 ]
  br label %960

569:                                              ; preds = %552, %950
  %570 = phi i32 [ 1, %552 ], [ %955, %950 ]
  %571 = phi i32 [ %534, %552 ], [ %953, %950 ]
  %572 = phi i32 [ %533, %552 ], [ %952, %950 ]
  %573 = phi i16 [ 1, %552 ], [ %954, %950 ]
  %574 = phi i32 [ %532, %552 ], [ %951, %950 ]
  %575 = shl nuw nsw i32 %570, 1
  %576 = add nsw i32 %575, -1
  %577 = add nsw i32 %576, %533
  %578 = sub nsw i32 %577, %30
  %579 = tail call i32 @llvm.abs.i32(i32 %578, i1 true)
  %580 = icmp sgt i32 %579, %10
  %581 = select i1 %580, i1 true, i1 %555
  br i1 %581, label %667, label %582

582:                                              ; preds = %569
  %583 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %584 = shl i32 %577, 2
  %585 = sub nsw i32 %584, %24
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, ptr %583, i64 %586
  %588 = load i32, ptr %587, align 4, !tbaa !18
  %589 = getelementptr inbounds i32, ptr %583, i64 %558
  %590 = load i32, ptr %589, align 4, !tbaa !18
  %591 = add nsw i32 %590, %588
  %592 = mul nsw i32 %591, %12
  %593 = ashr i32 %592, 16
  br i1 %123, label %598, label %663

594:                                              ; preds = %660
  %595 = add i16 %600, 1
  %596 = zext i16 %595 to i32
  %597 = icmp sgt i32 %19, %596
  br i1 %597, label %598, label %663

598:                                              ; preds = %582, %594
  %599 = phi i32 [ %596, %594 ], [ 0, %582 ]
  %600 = phi i16 [ %595, %594 ], [ 0, %582 ]
  %601 = phi i32 [ %661, %594 ], [ %593, %582 ]
  %602 = add nsw i32 %599, %532
  %603 = load ptr, ptr @img, align 8, !tbaa !10
  %604 = getelementptr inbounds i8, ptr %603, i64 52
  %605 = load i32, ptr %604, align 4, !tbaa !12
  %606 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %602, i32 noundef signext %577, i32 noundef signext %60, i32 noundef signext %605) #12
  br i1 %308, label %607, label %660

607:                                              ; preds = %598
  %608 = zext i16 %600 to i64
  %609 = getelementptr inbounds ptr, ptr %0, i64 %608
  %610 = load ptr, ptr %609, align 8, !tbaa !10
  %611 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %612

612:                                              ; preds = %612, %607
  %613 = phi ptr [ %606, %607 ], [ %650, %612 ]
  %614 = phi ptr [ %610, %607 ], [ %647, %612 ]
  %615 = phi i16 [ 0, %607 ], [ %657, %612 ]
  %616 = phi i32 [ %601, %607 ], [ %656, %612 ]
  %617 = getelementptr inbounds i8, ptr %614, i64 2
  %618 = load i16, ptr %614, align 2, !tbaa !6
  %619 = zext i16 %618 to i64
  %620 = getelementptr inbounds i8, ptr %613, i64 2
  %621 = load i16, ptr %613, align 2, !tbaa !6
  %622 = zext i16 %621 to i64
  %623 = sub nsw i64 %619, %622
  %624 = getelementptr inbounds i32, ptr %611, i64 %623
  %625 = load i32, ptr %624, align 4, !tbaa !18
  %626 = add i32 %625, %616
  %627 = getelementptr inbounds i8, ptr %614, i64 4
  %628 = load i16, ptr %617, align 2, !tbaa !6
  %629 = zext i16 %628 to i64
  %630 = getelementptr inbounds i8, ptr %613, i64 4
  %631 = load i16, ptr %620, align 2, !tbaa !6
  %632 = zext i16 %631 to i64
  %633 = sub nsw i64 %629, %632
  %634 = getelementptr inbounds i32, ptr %611, i64 %633
  %635 = load i32, ptr %634, align 4, !tbaa !18
  %636 = add i32 %626, %635
  %637 = getelementptr inbounds i8, ptr %614, i64 6
  %638 = load i16, ptr %627, align 2, !tbaa !6
  %639 = zext i16 %638 to i64
  %640 = getelementptr inbounds i8, ptr %613, i64 6
  %641 = load i16, ptr %630, align 2, !tbaa !6
  %642 = zext i16 %641 to i64
  %643 = sub nsw i64 %639, %642
  %644 = getelementptr inbounds i32, ptr %611, i64 %643
  %645 = load i32, ptr %644, align 4, !tbaa !18
  %646 = add i32 %636, %645
  %647 = getelementptr inbounds i8, ptr %614, i64 8
  %648 = load i16, ptr %637, align 2, !tbaa !6
  %649 = zext i16 %648 to i64
  %650 = getelementptr inbounds i8, ptr %613, i64 8
  %651 = load i16, ptr %640, align 2, !tbaa !6
  %652 = zext i16 %651 to i64
  %653 = sub nsw i64 %649, %652
  %654 = getelementptr inbounds i32, ptr %611, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !18
  %656 = add i32 %646, %655
  %657 = add i16 %615, 1
  %658 = zext i16 %657 to i32
  %659 = icmp ugt i32 %21, %658
  br i1 %659, label %612, label %660

660:                                              ; preds = %612, %598
  %661 = phi i32 [ %601, %598 ], [ %656, %612 ]
  %662 = icmp slt i32 %661, %571
  br i1 %662, label %594, label %663

663:                                              ; preds = %594, %660, %582
  %664 = phi i32 [ %593, %582 ], [ %661, %660 ], [ %661, %594 ]
  %665 = icmp slt i32 %664, %571
  br i1 %665, label %666, label %667

666:                                              ; preds = %663
  br label %667

667:                                              ; preds = %569, %663, %666
  %668 = phi i32 [ %532, %666 ], [ %574, %663 ], [ %574, %569 ]
  %669 = phi i32 [ %577, %666 ], [ %572, %663 ], [ %572, %569 ]
  %670 = phi i32 [ %664, %666 ], [ %571, %663 ], [ %571, %569 ]
  %671 = sub nsw i32 %533, %576
  %672 = sub nsw i32 %671, %30
  %673 = tail call i32 @llvm.abs.i32(i32 %672, i1 true)
  %674 = icmp sgt i32 %673, %10
  %675 = select i1 %674, i1 true, i1 %555
  br i1 %675, label %761, label %676

676:                                              ; preds = %667
  %677 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %678 = shl i32 %671, 2
  %679 = sub nsw i32 %678, %24
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i32, ptr %677, i64 %680
  %682 = load i32, ptr %681, align 4, !tbaa !18
  %683 = getelementptr inbounds i32, ptr %677, i64 %558
  %684 = load i32, ptr %683, align 4, !tbaa !18
  %685 = add nsw i32 %684, %682
  %686 = mul nsw i32 %685, %12
  %687 = ashr i32 %686, 16
  br i1 %123, label %692, label %757

688:                                              ; preds = %754
  %689 = add i16 %694, 1
  %690 = zext i16 %689 to i32
  %691 = icmp sgt i32 %19, %690
  br i1 %691, label %692, label %757

692:                                              ; preds = %676, %688
  %693 = phi i32 [ %690, %688 ], [ 0, %676 ]
  %694 = phi i16 [ %689, %688 ], [ 0, %676 ]
  %695 = phi i32 [ %755, %688 ], [ %687, %676 ]
  %696 = add nsw i32 %693, %532
  %697 = load ptr, ptr @img, align 8, !tbaa !10
  %698 = getelementptr inbounds i8, ptr %697, i64 52
  %699 = load i32, ptr %698, align 4, !tbaa !12
  %700 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %696, i32 noundef signext %671, i32 noundef signext %60, i32 noundef signext %699) #12
  br i1 %308, label %701, label %754

701:                                              ; preds = %692
  %702 = zext i16 %694 to i64
  %703 = getelementptr inbounds ptr, ptr %0, i64 %702
  %704 = load ptr, ptr %703, align 8, !tbaa !10
  %705 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %706

706:                                              ; preds = %706, %701
  %707 = phi ptr [ %700, %701 ], [ %744, %706 ]
  %708 = phi ptr [ %704, %701 ], [ %741, %706 ]
  %709 = phi i16 [ 0, %701 ], [ %751, %706 ]
  %710 = phi i32 [ %695, %701 ], [ %750, %706 ]
  %711 = getelementptr inbounds i8, ptr %708, i64 2
  %712 = load i16, ptr %708, align 2, !tbaa !6
  %713 = zext i16 %712 to i64
  %714 = getelementptr inbounds i8, ptr %707, i64 2
  %715 = load i16, ptr %707, align 2, !tbaa !6
  %716 = zext i16 %715 to i64
  %717 = sub nsw i64 %713, %716
  %718 = getelementptr inbounds i32, ptr %705, i64 %717
  %719 = load i32, ptr %718, align 4, !tbaa !18
  %720 = add i32 %719, %710
  %721 = getelementptr inbounds i8, ptr %708, i64 4
  %722 = load i16, ptr %711, align 2, !tbaa !6
  %723 = zext i16 %722 to i64
  %724 = getelementptr inbounds i8, ptr %707, i64 4
  %725 = load i16, ptr %714, align 2, !tbaa !6
  %726 = zext i16 %725 to i64
  %727 = sub nsw i64 %723, %726
  %728 = getelementptr inbounds i32, ptr %705, i64 %727
  %729 = load i32, ptr %728, align 4, !tbaa !18
  %730 = add i32 %720, %729
  %731 = getelementptr inbounds i8, ptr %708, i64 6
  %732 = load i16, ptr %721, align 2, !tbaa !6
  %733 = zext i16 %732 to i64
  %734 = getelementptr inbounds i8, ptr %707, i64 6
  %735 = load i16, ptr %724, align 2, !tbaa !6
  %736 = zext i16 %735 to i64
  %737 = sub nsw i64 %733, %736
  %738 = getelementptr inbounds i32, ptr %705, i64 %737
  %739 = load i32, ptr %738, align 4, !tbaa !18
  %740 = add i32 %730, %739
  %741 = getelementptr inbounds i8, ptr %708, i64 8
  %742 = load i16, ptr %731, align 2, !tbaa !6
  %743 = zext i16 %742 to i64
  %744 = getelementptr inbounds i8, ptr %707, i64 8
  %745 = load i16, ptr %734, align 2, !tbaa !6
  %746 = zext i16 %745 to i64
  %747 = sub nsw i64 %743, %746
  %748 = getelementptr inbounds i32, ptr %705, i64 %747
  %749 = load i32, ptr %748, align 4, !tbaa !18
  %750 = add i32 %740, %749
  %751 = add i16 %709, 1
  %752 = zext i16 %751 to i32
  %753 = icmp ugt i32 %21, %752
  br i1 %753, label %706, label %754

754:                                              ; preds = %706, %692
  %755 = phi i32 [ %695, %692 ], [ %750, %706 ]
  %756 = icmp slt i32 %755, %670
  br i1 %756, label %688, label %757

757:                                              ; preds = %688, %754, %676
  %758 = phi i32 [ %687, %676 ], [ %755, %754 ], [ %755, %688 ]
  %759 = icmp slt i32 %758, %670
  br i1 %759, label %760, label %761

760:                                              ; preds = %757
  br label %761

761:                                              ; preds = %667, %757, %760
  %762 = phi i32 [ %532, %760 ], [ %668, %757 ], [ %668, %667 ]
  %763 = phi i32 [ %671, %760 ], [ %669, %757 ], [ %669, %667 ]
  %764 = phi i32 [ %758, %760 ], [ %670, %757 ], [ %670, %667 ]
  %765 = add nsw i32 %576, %532
  br i1 %561, label %950, label %766

766:                                              ; preds = %761
  %767 = sub nsw i32 %765, %33
  %768 = tail call i32 @llvm.abs.i32(i32 %767, i1 true)
  %769 = icmp sgt i32 %768, %10
  br i1 %769, label %857, label %770

770:                                              ; preds = %766
  %771 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %772 = getelementptr inbounds i32, ptr %771, i64 %564
  %773 = load i32, ptr %772, align 4, !tbaa !18
  %774 = shl i32 %765, 2
  %775 = sub nsw i32 %774, %27
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i32, ptr %771, i64 %776
  %778 = load i32, ptr %777, align 4, !tbaa !18
  %779 = add nsw i32 %778, %773
  %780 = mul nsw i32 %779, %12
  %781 = ashr i32 %780, 16
  br i1 %123, label %786, label %851

782:                                              ; preds = %848
  %783 = add i16 %788, 1
  %784 = zext i16 %783 to i32
  %785 = icmp sgt i32 %19, %784
  br i1 %785, label %786, label %851

786:                                              ; preds = %770, %782
  %787 = phi i32 [ %784, %782 ], [ 0, %770 ]
  %788 = phi i16 [ %783, %782 ], [ 0, %770 ]
  %789 = phi i32 [ %849, %782 ], [ %781, %770 ]
  %790 = add nsw i32 %787, %765
  %791 = load ptr, ptr @img, align 8, !tbaa !10
  %792 = getelementptr inbounds i8, ptr %791, i64 52
  %793 = load i32, ptr %792, align 4, !tbaa !12
  %794 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %790, i32 noundef signext %533, i32 noundef signext %60, i32 noundef signext %793) #12
  br i1 %308, label %795, label %848

795:                                              ; preds = %786
  %796 = zext i16 %788 to i64
  %797 = getelementptr inbounds ptr, ptr %0, i64 %796
  %798 = load ptr, ptr %797, align 8, !tbaa !10
  %799 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %800

800:                                              ; preds = %800, %795
  %801 = phi ptr [ %794, %795 ], [ %838, %800 ]
  %802 = phi ptr [ %798, %795 ], [ %835, %800 ]
  %803 = phi i16 [ 0, %795 ], [ %845, %800 ]
  %804 = phi i32 [ %789, %795 ], [ %844, %800 ]
  %805 = getelementptr inbounds i8, ptr %802, i64 2
  %806 = load i16, ptr %802, align 2, !tbaa !6
  %807 = zext i16 %806 to i64
  %808 = getelementptr inbounds i8, ptr %801, i64 2
  %809 = load i16, ptr %801, align 2, !tbaa !6
  %810 = zext i16 %809 to i64
  %811 = sub nsw i64 %807, %810
  %812 = getelementptr inbounds i32, ptr %799, i64 %811
  %813 = load i32, ptr %812, align 4, !tbaa !18
  %814 = add i32 %813, %804
  %815 = getelementptr inbounds i8, ptr %802, i64 4
  %816 = load i16, ptr %805, align 2, !tbaa !6
  %817 = zext i16 %816 to i64
  %818 = getelementptr inbounds i8, ptr %801, i64 4
  %819 = load i16, ptr %808, align 2, !tbaa !6
  %820 = zext i16 %819 to i64
  %821 = sub nsw i64 %817, %820
  %822 = getelementptr inbounds i32, ptr %799, i64 %821
  %823 = load i32, ptr %822, align 4, !tbaa !18
  %824 = add i32 %814, %823
  %825 = getelementptr inbounds i8, ptr %802, i64 6
  %826 = load i16, ptr %815, align 2, !tbaa !6
  %827 = zext i16 %826 to i64
  %828 = getelementptr inbounds i8, ptr %801, i64 6
  %829 = load i16, ptr %818, align 2, !tbaa !6
  %830 = zext i16 %829 to i64
  %831 = sub nsw i64 %827, %830
  %832 = getelementptr inbounds i32, ptr %799, i64 %831
  %833 = load i32, ptr %832, align 4, !tbaa !18
  %834 = add i32 %824, %833
  %835 = getelementptr inbounds i8, ptr %802, i64 8
  %836 = load i16, ptr %825, align 2, !tbaa !6
  %837 = zext i16 %836 to i64
  %838 = getelementptr inbounds i8, ptr %801, i64 8
  %839 = load i16, ptr %828, align 2, !tbaa !6
  %840 = zext i16 %839 to i64
  %841 = sub nsw i64 %837, %840
  %842 = getelementptr inbounds i32, ptr %799, i64 %841
  %843 = load i32, ptr %842, align 4, !tbaa !18
  %844 = add i32 %834, %843
  %845 = add i16 %803, 1
  %846 = zext i16 %845 to i32
  %847 = icmp ugt i32 %21, %846
  br i1 %847, label %800, label %848

848:                                              ; preds = %800, %786
  %849 = phi i32 [ %789, %786 ], [ %844, %800 ]
  %850 = icmp slt i32 %849, %764
  br i1 %850, label %782, label %851

851:                                              ; preds = %782, %848, %770
  %852 = phi i32 [ %781, %770 ], [ %849, %848 ], [ %849, %782 ]
  %853 = icmp slt i32 %852, %764
  %854 = select i1 %853, i32 %765, i32 %762
  %855 = select i1 %853, i32 %533, i32 %763
  %856 = tail call i32 @llvm.smin.i32(i32 %852, i32 %764)
  br label %857

857:                                              ; preds = %851, %766
  %858 = phi i32 [ %856, %851 ], [ %764, %766 ]
  %859 = phi i32 [ %855, %851 ], [ %763, %766 ]
  %860 = phi i32 [ %854, %851 ], [ %762, %766 ]
  %861 = sub nsw i32 %532, %576
  %862 = sub nsw i32 %861, %33
  %863 = tail call i32 @llvm.abs.i32(i32 %862, i1 true)
  %864 = icmp sgt i32 %863, %10
  br i1 %864, label %950, label %865

865:                                              ; preds = %857
  %866 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %867 = getelementptr inbounds i32, ptr %866, i64 %564
  %868 = load i32, ptr %867, align 4, !tbaa !18
  %869 = shl i32 %861, 2
  %870 = sub nsw i32 %869, %27
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds i32, ptr %866, i64 %871
  %873 = load i32, ptr %872, align 4, !tbaa !18
  %874 = add nsw i32 %873, %868
  %875 = mul nsw i32 %874, %12
  %876 = ashr i32 %875, 16
  br i1 %123, label %881, label %946

877:                                              ; preds = %943
  %878 = add i16 %883, 1
  %879 = zext i16 %878 to i32
  %880 = icmp sgt i32 %19, %879
  br i1 %880, label %881, label %946

881:                                              ; preds = %865, %877
  %882 = phi i32 [ %879, %877 ], [ 0, %865 ]
  %883 = phi i16 [ %878, %877 ], [ 0, %865 ]
  %884 = phi i32 [ %944, %877 ], [ %876, %865 ]
  %885 = add nsw i32 %882, %861
  %886 = load ptr, ptr @img, align 8, !tbaa !10
  %887 = getelementptr inbounds i8, ptr %886, i64 52
  %888 = load i32, ptr %887, align 4, !tbaa !12
  %889 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %885, i32 noundef signext %533, i32 noundef signext %60, i32 noundef signext %888) #12
  br i1 %308, label %890, label %943

890:                                              ; preds = %881
  %891 = zext i16 %883 to i64
  %892 = getelementptr inbounds ptr, ptr %0, i64 %891
  %893 = load ptr, ptr %892, align 8, !tbaa !10
  %894 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %895

895:                                              ; preds = %895, %890
  %896 = phi ptr [ %889, %890 ], [ %933, %895 ]
  %897 = phi ptr [ %893, %890 ], [ %930, %895 ]
  %898 = phi i16 [ 0, %890 ], [ %940, %895 ]
  %899 = phi i32 [ %884, %890 ], [ %939, %895 ]
  %900 = getelementptr inbounds i8, ptr %897, i64 2
  %901 = load i16, ptr %897, align 2, !tbaa !6
  %902 = zext i16 %901 to i64
  %903 = getelementptr inbounds i8, ptr %896, i64 2
  %904 = load i16, ptr %896, align 2, !tbaa !6
  %905 = zext i16 %904 to i64
  %906 = sub nsw i64 %902, %905
  %907 = getelementptr inbounds i32, ptr %894, i64 %906
  %908 = load i32, ptr %907, align 4, !tbaa !18
  %909 = add i32 %908, %899
  %910 = getelementptr inbounds i8, ptr %897, i64 4
  %911 = load i16, ptr %900, align 2, !tbaa !6
  %912 = zext i16 %911 to i64
  %913 = getelementptr inbounds i8, ptr %896, i64 4
  %914 = load i16, ptr %903, align 2, !tbaa !6
  %915 = zext i16 %914 to i64
  %916 = sub nsw i64 %912, %915
  %917 = getelementptr inbounds i32, ptr %894, i64 %916
  %918 = load i32, ptr %917, align 4, !tbaa !18
  %919 = add i32 %909, %918
  %920 = getelementptr inbounds i8, ptr %897, i64 6
  %921 = load i16, ptr %910, align 2, !tbaa !6
  %922 = zext i16 %921 to i64
  %923 = getelementptr inbounds i8, ptr %896, i64 6
  %924 = load i16, ptr %913, align 2, !tbaa !6
  %925 = zext i16 %924 to i64
  %926 = sub nsw i64 %922, %925
  %927 = getelementptr inbounds i32, ptr %894, i64 %926
  %928 = load i32, ptr %927, align 4, !tbaa !18
  %929 = add i32 %919, %928
  %930 = getelementptr inbounds i8, ptr %897, i64 8
  %931 = load i16, ptr %920, align 2, !tbaa !6
  %932 = zext i16 %931 to i64
  %933 = getelementptr inbounds i8, ptr %896, i64 8
  %934 = load i16, ptr %923, align 2, !tbaa !6
  %935 = zext i16 %934 to i64
  %936 = sub nsw i64 %932, %935
  %937 = getelementptr inbounds i32, ptr %894, i64 %936
  %938 = load i32, ptr %937, align 4, !tbaa !18
  %939 = add i32 %929, %938
  %940 = add i16 %898, 1
  %941 = zext i16 %940 to i32
  %942 = icmp ugt i32 %21, %941
  br i1 %942, label %895, label %943

943:                                              ; preds = %895, %881
  %944 = phi i32 [ %884, %881 ], [ %939, %895 ]
  %945 = icmp slt i32 %944, %858
  br i1 %945, label %877, label %946

946:                                              ; preds = %877, %943, %865
  %947 = phi i32 [ %876, %865 ], [ %944, %943 ], [ %944, %877 ]
  %948 = icmp slt i32 %947, %858
  br i1 %948, label %949, label %950

949:                                              ; preds = %946
  br label %950

950:                                              ; preds = %761, %857, %949, %946
  %951 = phi i32 [ %861, %949 ], [ %860, %946 ], [ %860, %857 ], [ %762, %761 ]
  %952 = phi i32 [ %533, %949 ], [ %859, %946 ], [ %859, %857 ], [ %763, %761 ]
  %953 = phi i32 [ %947, %949 ], [ %858, %946 ], [ %858, %857 ], [ %764, %761 ]
  %954 = add i16 %573, 1
  %955 = zext i16 %954 to i32
  %956 = icmp slt i32 %550, %955
  br i1 %956, label %565, label %569

957:                                              ; preds = %1068
  %958 = sdiv i32 %10, 4
  %959 = icmp slt i32 %10, 4
  br i1 %959, label %1200, label %1074

960:                                              ; preds = %565, %1068
  %961 = phi i64 [ 0, %565 ], [ %1072, %1068 ]
  %962 = phi i32 [ %568, %565 ], [ %1071, %1068 ]
  %963 = phi i32 [ %567, %565 ], [ %1070, %1068 ]
  %964 = phi i32 [ %566, %565 ], [ %1069, %1068 ]
  %965 = getelementptr inbounds [6 x i16], ptr @Hexagon_X, i64 0, i64 %961
  %966 = load i16, ptr %965, align 2, !tbaa !6
  %967 = sext i16 %966 to i32
  %968 = add nsw i32 %567, %967
  %969 = getelementptr inbounds [6 x i16], ptr @Hexagon_Y, i64 0, i64 %961
  %970 = load i16, ptr %969, align 2, !tbaa !6
  %971 = sext i16 %970 to i32
  %972 = add nsw i32 %566, %971
  %973 = sub nsw i32 %968, %30
  %974 = tail call i32 @llvm.abs.i32(i32 %973, i1 true)
  %975 = icmp sgt i32 %974, %10
  br i1 %975, label %1068, label %976

976:                                              ; preds = %960
  %977 = sub nsw i32 %972, %33
  %978 = tail call i32 @llvm.abs.i32(i32 %977, i1 true)
  %979 = icmp ugt i32 %978, %10
  br i1 %979, label %1068, label %980

980:                                              ; preds = %976
  %981 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %982 = shl i32 %968, 2
  %983 = sub nsw i32 %982, %24
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds i32, ptr %981, i64 %984
  %986 = load i32, ptr %985, align 4, !tbaa !18
  %987 = shl i32 %972, 2
  %988 = sub nsw i32 %987, %27
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds i32, ptr %981, i64 %989
  %991 = load i32, ptr %990, align 4, !tbaa !18
  %992 = add nsw i32 %991, %986
  %993 = mul nsw i32 %992, %12
  %994 = ashr i32 %993, 16
  br i1 %123, label %999, label %1064

995:                                              ; preds = %1061
  %996 = add i16 %1001, 1
  %997 = zext i16 %996 to i32
  %998 = icmp sgt i32 %19, %997
  br i1 %998, label %999, label %1064

999:                                              ; preds = %980, %995
  %1000 = phi i32 [ %997, %995 ], [ 0, %980 ]
  %1001 = phi i16 [ %996, %995 ], [ 0, %980 ]
  %1002 = phi i32 [ %1062, %995 ], [ %994, %980 ]
  %1003 = add nsw i32 %1000, %972
  %1004 = load ptr, ptr @img, align 8, !tbaa !10
  %1005 = getelementptr inbounds i8, ptr %1004, i64 52
  %1006 = load i32, ptr %1005, align 4, !tbaa !12
  %1007 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %1003, i32 noundef signext %968, i32 noundef signext %60, i32 noundef signext %1006) #12
  br i1 %308, label %1008, label %1061

1008:                                             ; preds = %999
  %1009 = zext i16 %1001 to i64
  %1010 = getelementptr inbounds ptr, ptr %0, i64 %1009
  %1011 = load ptr, ptr %1010, align 8, !tbaa !10
  %1012 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %1013

1013:                                             ; preds = %1013, %1008
  %1014 = phi ptr [ %1007, %1008 ], [ %1051, %1013 ]
  %1015 = phi ptr [ %1011, %1008 ], [ %1048, %1013 ]
  %1016 = phi i16 [ 0, %1008 ], [ %1058, %1013 ]
  %1017 = phi i32 [ %1002, %1008 ], [ %1057, %1013 ]
  %1018 = getelementptr inbounds i8, ptr %1015, i64 2
  %1019 = load i16, ptr %1015, align 2, !tbaa !6
  %1020 = zext i16 %1019 to i64
  %1021 = getelementptr inbounds i8, ptr %1014, i64 2
  %1022 = load i16, ptr %1014, align 2, !tbaa !6
  %1023 = zext i16 %1022 to i64
  %1024 = sub nsw i64 %1020, %1023
  %1025 = getelementptr inbounds i32, ptr %1012, i64 %1024
  %1026 = load i32, ptr %1025, align 4, !tbaa !18
  %1027 = add i32 %1026, %1017
  %1028 = getelementptr inbounds i8, ptr %1015, i64 4
  %1029 = load i16, ptr %1018, align 2, !tbaa !6
  %1030 = zext i16 %1029 to i64
  %1031 = getelementptr inbounds i8, ptr %1014, i64 4
  %1032 = load i16, ptr %1021, align 2, !tbaa !6
  %1033 = zext i16 %1032 to i64
  %1034 = sub nsw i64 %1030, %1033
  %1035 = getelementptr inbounds i32, ptr %1012, i64 %1034
  %1036 = load i32, ptr %1035, align 4, !tbaa !18
  %1037 = add i32 %1027, %1036
  %1038 = getelementptr inbounds i8, ptr %1015, i64 6
  %1039 = load i16, ptr %1028, align 2, !tbaa !6
  %1040 = zext i16 %1039 to i64
  %1041 = getelementptr inbounds i8, ptr %1014, i64 6
  %1042 = load i16, ptr %1031, align 2, !tbaa !6
  %1043 = zext i16 %1042 to i64
  %1044 = sub nsw i64 %1040, %1043
  %1045 = getelementptr inbounds i32, ptr %1012, i64 %1044
  %1046 = load i32, ptr %1045, align 4, !tbaa !18
  %1047 = add i32 %1037, %1046
  %1048 = getelementptr inbounds i8, ptr %1015, i64 8
  %1049 = load i16, ptr %1038, align 2, !tbaa !6
  %1050 = zext i16 %1049 to i64
  %1051 = getelementptr inbounds i8, ptr %1014, i64 8
  %1052 = load i16, ptr %1041, align 2, !tbaa !6
  %1053 = zext i16 %1052 to i64
  %1054 = sub nsw i64 %1050, %1053
  %1055 = getelementptr inbounds i32, ptr %1012, i64 %1054
  %1056 = load i32, ptr %1055, align 4, !tbaa !18
  %1057 = add i32 %1047, %1056
  %1058 = add i16 %1016, 1
  %1059 = zext i16 %1058 to i32
  %1060 = icmp ugt i32 %21, %1059
  br i1 %1060, label %1013, label %1061

1061:                                             ; preds = %1013, %999
  %1062 = phi i32 [ %1002, %999 ], [ %1057, %1013 ]
  %1063 = icmp slt i32 %1062, %962
  br i1 %1063, label %995, label %1064

1064:                                             ; preds = %995, %1061, %980
  %1065 = phi i32 [ %994, %980 ], [ %1062, %1061 ], [ %1062, %995 ]
  %1066 = icmp slt i32 %1065, %962
  br i1 %1066, label %1067, label %1068

1067:                                             ; preds = %1064
  br label %1068

1068:                                             ; preds = %960, %976, %1067, %1064
  %1069 = phi i32 [ %972, %1067 ], [ %964, %1064 ], [ %964, %976 ], [ %964, %960 ]
  %1070 = phi i32 [ %968, %1067 ], [ %963, %1064 ], [ %963, %976 ], [ %963, %960 ]
  %1071 = phi i32 [ %1065, %1067 ], [ %962, %1064 ], [ %962, %976 ], [ %962, %960 ]
  %1072 = add nuw nsw i64 %961, 1
  %1073 = icmp eq i64 %1072, 6
  br i1 %1073, label %957, label %960

1074:                                             ; preds = %957, %1196
  %1075 = phi i32 [ %1198, %1196 ], [ 1, %957 ]
  %1076 = phi i32 [ %1193, %1196 ], [ %1071, %957 ]
  %1077 = phi i32 [ %1192, %1196 ], [ %1070, %957 ]
  %1078 = phi i16 [ %1197, %1196 ], [ 1, %957 ]
  %1079 = phi i32 [ %1191, %1196 ], [ %1069, %957 ]
  br label %1080

1080:                                             ; preds = %1074, %1190
  %1081 = phi i64 [ 0, %1074 ], [ %1194, %1190 ]
  %1082 = phi i32 [ %1076, %1074 ], [ %1193, %1190 ]
  %1083 = phi i32 [ %1077, %1074 ], [ %1192, %1190 ]
  %1084 = phi i32 [ %1079, %1074 ], [ %1191, %1190 ]
  %1085 = getelementptr inbounds [16 x i16], ptr @Big_Hexagon_X, i64 0, i64 %1081
  %1086 = load i16, ptr %1085, align 2, !tbaa !6
  %1087 = sext i16 %1086 to i32
  %1088 = mul nsw i32 %1075, %1087
  %1089 = add nsw i32 %1088, %1070
  %1090 = getelementptr inbounds [16 x i16], ptr @Big_Hexagon_Y, i64 0, i64 %1081
  %1091 = load i16, ptr %1090, align 2, !tbaa !6
  %1092 = sext i16 %1091 to i32
  %1093 = mul nsw i32 %1075, %1092
  %1094 = add nsw i32 %1093, %1069
  %1095 = sub nsw i32 %1089, %30
  %1096 = tail call i32 @llvm.abs.i32(i32 %1095, i1 true)
  %1097 = icmp sgt i32 %1096, %10
  br i1 %1097, label %1190, label %1098

1098:                                             ; preds = %1080
  %1099 = sub nsw i32 %1094, %33
  %1100 = tail call i32 @llvm.abs.i32(i32 %1099, i1 true)
  %1101 = icmp ugt i32 %1100, %10
  br i1 %1101, label %1190, label %1102

1102:                                             ; preds = %1098
  %1103 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %1104 = shl i32 %1089, 2
  %1105 = sub nsw i32 %1104, %24
  %1106 = sext i32 %1105 to i64
  %1107 = getelementptr inbounds i32, ptr %1103, i64 %1106
  %1108 = load i32, ptr %1107, align 4, !tbaa !18
  %1109 = shl i32 %1094, 2
  %1110 = sub nsw i32 %1109, %27
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds i32, ptr %1103, i64 %1111
  %1113 = load i32, ptr %1112, align 4, !tbaa !18
  %1114 = add nsw i32 %1113, %1108
  %1115 = mul nsw i32 %1114, %12
  %1116 = ashr i32 %1115, 16
  br i1 %123, label %1121, label %1186

1117:                                             ; preds = %1183
  %1118 = add i16 %1123, 1
  %1119 = zext i16 %1118 to i32
  %1120 = icmp sgt i32 %19, %1119
  br i1 %1120, label %1121, label %1186

1121:                                             ; preds = %1102, %1117
  %1122 = phi i32 [ %1119, %1117 ], [ 0, %1102 ]
  %1123 = phi i16 [ %1118, %1117 ], [ 0, %1102 ]
  %1124 = phi i32 [ %1184, %1117 ], [ %1116, %1102 ]
  %1125 = add nsw i32 %1122, %1094
  %1126 = load ptr, ptr @img, align 8, !tbaa !10
  %1127 = getelementptr inbounds i8, ptr %1126, i64 52
  %1128 = load i32, ptr %1127, align 4, !tbaa !12
  %1129 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %1125, i32 noundef signext %1089, i32 noundef signext %60, i32 noundef signext %1128) #12
  br i1 %308, label %1130, label %1183

1130:                                             ; preds = %1121
  %1131 = zext i16 %1123 to i64
  %1132 = getelementptr inbounds ptr, ptr %0, i64 %1131
  %1133 = load ptr, ptr %1132, align 8, !tbaa !10
  %1134 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %1135

1135:                                             ; preds = %1135, %1130
  %1136 = phi ptr [ %1129, %1130 ], [ %1173, %1135 ]
  %1137 = phi ptr [ %1133, %1130 ], [ %1170, %1135 ]
  %1138 = phi i16 [ 0, %1130 ], [ %1180, %1135 ]
  %1139 = phi i32 [ %1124, %1130 ], [ %1179, %1135 ]
  %1140 = getelementptr inbounds i8, ptr %1137, i64 2
  %1141 = load i16, ptr %1137, align 2, !tbaa !6
  %1142 = zext i16 %1141 to i64
  %1143 = getelementptr inbounds i8, ptr %1136, i64 2
  %1144 = load i16, ptr %1136, align 2, !tbaa !6
  %1145 = zext i16 %1144 to i64
  %1146 = sub nsw i64 %1142, %1145
  %1147 = getelementptr inbounds i32, ptr %1134, i64 %1146
  %1148 = load i32, ptr %1147, align 4, !tbaa !18
  %1149 = add i32 %1148, %1139
  %1150 = getelementptr inbounds i8, ptr %1137, i64 4
  %1151 = load i16, ptr %1140, align 2, !tbaa !6
  %1152 = zext i16 %1151 to i64
  %1153 = getelementptr inbounds i8, ptr %1136, i64 4
  %1154 = load i16, ptr %1143, align 2, !tbaa !6
  %1155 = zext i16 %1154 to i64
  %1156 = sub nsw i64 %1152, %1155
  %1157 = getelementptr inbounds i32, ptr %1134, i64 %1156
  %1158 = load i32, ptr %1157, align 4, !tbaa !18
  %1159 = add i32 %1149, %1158
  %1160 = getelementptr inbounds i8, ptr %1137, i64 6
  %1161 = load i16, ptr %1150, align 2, !tbaa !6
  %1162 = zext i16 %1161 to i64
  %1163 = getelementptr inbounds i8, ptr %1136, i64 6
  %1164 = load i16, ptr %1153, align 2, !tbaa !6
  %1165 = zext i16 %1164 to i64
  %1166 = sub nsw i64 %1162, %1165
  %1167 = getelementptr inbounds i32, ptr %1134, i64 %1166
  %1168 = load i32, ptr %1167, align 4, !tbaa !18
  %1169 = add i32 %1159, %1168
  %1170 = getelementptr inbounds i8, ptr %1137, i64 8
  %1171 = load i16, ptr %1160, align 2, !tbaa !6
  %1172 = zext i16 %1171 to i64
  %1173 = getelementptr inbounds i8, ptr %1136, i64 8
  %1174 = load i16, ptr %1163, align 2, !tbaa !6
  %1175 = zext i16 %1174 to i64
  %1176 = sub nsw i64 %1172, %1175
  %1177 = getelementptr inbounds i32, ptr %1134, i64 %1176
  %1178 = load i32, ptr %1177, align 4, !tbaa !18
  %1179 = add i32 %1169, %1178
  %1180 = add i16 %1138, 1
  %1181 = zext i16 %1180 to i32
  %1182 = icmp ugt i32 %21, %1181
  br i1 %1182, label %1135, label %1183

1183:                                             ; preds = %1135, %1121
  %1184 = phi i32 [ %1124, %1121 ], [ %1179, %1135 ]
  %1185 = icmp slt i32 %1184, %1082
  br i1 %1185, label %1117, label %1186

1186:                                             ; preds = %1117, %1183, %1102
  %1187 = phi i32 [ %1116, %1102 ], [ %1184, %1183 ], [ %1184, %1117 ]
  %1188 = icmp slt i32 %1187, %1082
  br i1 %1188, label %1189, label %1190

1189:                                             ; preds = %1186
  br label %1190

1190:                                             ; preds = %1080, %1098, %1189, %1186
  %1191 = phi i32 [ %1094, %1189 ], [ %1084, %1186 ], [ %1084, %1098 ], [ %1084, %1080 ]
  %1192 = phi i32 [ %1089, %1189 ], [ %1083, %1186 ], [ %1083, %1098 ], [ %1083, %1080 ]
  %1193 = phi i32 [ %1187, %1189 ], [ %1082, %1186 ], [ %1082, %1098 ], [ %1082, %1080 ]
  %1194 = add nuw nsw i64 %1081, 1
  %1195 = icmp eq i64 %1194, 16
  br i1 %1195, label %1196, label %1080

1196:                                             ; preds = %1190
  %1197 = add i16 %1078, 1
  %1198 = zext i16 %1197 to i32
  %1199 = icmp slt i32 %958, %1198
  br i1 %1199, label %1200, label %1074

1200:                                             ; preds = %1196, %957, %544
  %1201 = phi i32 [ %532, %544 ], [ %1069, %957 ], [ %1191, %1196 ]
  %1202 = phi i32 [ %533, %544 ], [ %1070, %957 ], [ %1192, %1196 ]
  %1203 = phi i32 [ %534, %544 ], [ %1071, %957 ], [ %1193, %1196 ]
  %1204 = icmp sgt i32 %5, 1
  br i1 %1204, label %1205, label %1309

1205:                                             ; preds = %1200
  %1206 = load i16, ptr @simplified_pred_MV_uplayer_X, align 2, !tbaa !6
  %1207 = sdiv i16 %1206, 4
  %1208 = sext i16 %1207 to i32
  %1209 = add nsw i32 %1208, %3
  %1210 = load i16, ptr @simplified_pred_MV_uplayer_Y, align 2, !tbaa !6
  %1211 = sdiv i16 %1210, 4
  %1212 = sext i16 %1211 to i32
  %1213 = add nsw i32 %1212, %4
  %1214 = sub nsw i32 %1208, %29
  %1215 = tail call i32 @llvm.abs.i32(i32 %1214, i1 true)
  %1216 = icmp sgt i32 %1215, %10
  br i1 %1216, label %1309, label %1217

1217:                                             ; preds = %1205
  %1218 = sub nsw i32 %1212, %32
  %1219 = tail call i32 @llvm.abs.i32(i32 %1218, i1 true)
  %1220 = icmp ugt i32 %1219, %10
  br i1 %1220, label %1309, label %1221

1221:                                             ; preds = %1217
  %1222 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %1223 = shl i32 %1209, 2
  %1224 = sub nsw i32 %1223, %24
  %1225 = sext i32 %1224 to i64
  %1226 = getelementptr inbounds i32, ptr %1222, i64 %1225
  %1227 = load i32, ptr %1226, align 4, !tbaa !18
  %1228 = shl i32 %1213, 2
  %1229 = sub nsw i32 %1228, %27
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds i32, ptr %1222, i64 %1230
  %1232 = load i32, ptr %1231, align 4, !tbaa !18
  %1233 = add nsw i32 %1232, %1227
  %1234 = mul nsw i32 %1233, %12
  %1235 = ashr i32 %1234, 16
  br i1 %123, label %1240, label %1305

1236:                                             ; preds = %1302
  %1237 = add i16 %1242, 1
  %1238 = zext i16 %1237 to i32
  %1239 = icmp sgt i32 %19, %1238
  br i1 %1239, label %1240, label %1305

1240:                                             ; preds = %1221, %1236
  %1241 = phi i32 [ %1238, %1236 ], [ 0, %1221 ]
  %1242 = phi i16 [ %1237, %1236 ], [ 0, %1221 ]
  %1243 = phi i32 [ %1303, %1236 ], [ %1235, %1221 ]
  %1244 = add nsw i32 %1241, %1213
  %1245 = load ptr, ptr @img, align 8, !tbaa !10
  %1246 = getelementptr inbounds i8, ptr %1245, i64 52
  %1247 = load i32, ptr %1246, align 4, !tbaa !12
  %1248 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %1244, i32 noundef signext %1209, i32 noundef signext %60, i32 noundef signext %1247) #12
  br i1 %308, label %1249, label %1302

1249:                                             ; preds = %1240
  %1250 = zext i16 %1242 to i64
  %1251 = getelementptr inbounds ptr, ptr %0, i64 %1250
  %1252 = load ptr, ptr %1251, align 8, !tbaa !10
  %1253 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %1254

1254:                                             ; preds = %1254, %1249
  %1255 = phi ptr [ %1248, %1249 ], [ %1292, %1254 ]
  %1256 = phi ptr [ %1252, %1249 ], [ %1289, %1254 ]
  %1257 = phi i16 [ 0, %1249 ], [ %1299, %1254 ]
  %1258 = phi i32 [ %1243, %1249 ], [ %1298, %1254 ]
  %1259 = getelementptr inbounds i8, ptr %1256, i64 2
  %1260 = load i16, ptr %1256, align 2, !tbaa !6
  %1261 = zext i16 %1260 to i64
  %1262 = getelementptr inbounds i8, ptr %1255, i64 2
  %1263 = load i16, ptr %1255, align 2, !tbaa !6
  %1264 = zext i16 %1263 to i64
  %1265 = sub nsw i64 %1261, %1264
  %1266 = getelementptr inbounds i32, ptr %1253, i64 %1265
  %1267 = load i32, ptr %1266, align 4, !tbaa !18
  %1268 = add i32 %1267, %1258
  %1269 = getelementptr inbounds i8, ptr %1256, i64 4
  %1270 = load i16, ptr %1259, align 2, !tbaa !6
  %1271 = zext i16 %1270 to i64
  %1272 = getelementptr inbounds i8, ptr %1255, i64 4
  %1273 = load i16, ptr %1262, align 2, !tbaa !6
  %1274 = zext i16 %1273 to i64
  %1275 = sub nsw i64 %1271, %1274
  %1276 = getelementptr inbounds i32, ptr %1253, i64 %1275
  %1277 = load i32, ptr %1276, align 4, !tbaa !18
  %1278 = add i32 %1268, %1277
  %1279 = getelementptr inbounds i8, ptr %1256, i64 6
  %1280 = load i16, ptr %1269, align 2, !tbaa !6
  %1281 = zext i16 %1280 to i64
  %1282 = getelementptr inbounds i8, ptr %1255, i64 6
  %1283 = load i16, ptr %1272, align 2, !tbaa !6
  %1284 = zext i16 %1283 to i64
  %1285 = sub nsw i64 %1281, %1284
  %1286 = getelementptr inbounds i32, ptr %1253, i64 %1285
  %1287 = load i32, ptr %1286, align 4, !tbaa !18
  %1288 = add i32 %1278, %1287
  %1289 = getelementptr inbounds i8, ptr %1256, i64 8
  %1290 = load i16, ptr %1279, align 2, !tbaa !6
  %1291 = zext i16 %1290 to i64
  %1292 = getelementptr inbounds i8, ptr %1255, i64 8
  %1293 = load i16, ptr %1282, align 2, !tbaa !6
  %1294 = zext i16 %1293 to i64
  %1295 = sub nsw i64 %1291, %1294
  %1296 = getelementptr inbounds i32, ptr %1253, i64 %1295
  %1297 = load i32, ptr %1296, align 4, !tbaa !18
  %1298 = add i32 %1288, %1297
  %1299 = add i16 %1257, 1
  %1300 = zext i16 %1299 to i32
  %1301 = icmp ugt i32 %21, %1300
  br i1 %1301, label %1254, label %1302

1302:                                             ; preds = %1254, %1240
  %1303 = phi i32 [ %1243, %1240 ], [ %1298, %1254 ]
  %1304 = icmp slt i32 %1303, %1203
  br i1 %1304, label %1236, label %1305

1305:                                             ; preds = %1236, %1302, %1221
  %1306 = phi i32 [ %1235, %1221 ], [ %1303, %1302 ], [ %1303, %1236 ]
  %1307 = icmp slt i32 %1306, %1203
  br i1 %1307, label %1308, label %1309

1308:                                             ; preds = %1305
  br label %1309

1309:                                             ; preds = %1205, %1217, %1308, %1305, %1200
  %1310 = phi i32 [ %1213, %1308 ], [ %1201, %1305 ], [ %1201, %1217 ], [ %1201, %1205 ], [ %1201, %1200 ]
  %1311 = phi i32 [ %1209, %1308 ], [ %1202, %1305 ], [ %1202, %1217 ], [ %1202, %1205 ], [ %1202, %1200 ]
  %1312 = phi i32 [ %1306, %1308 ], [ %1203, %1305 ], [ %1203, %1217 ], [ %1203, %1205 ], [ %1203, %1200 ]
  %1313 = icmp eq i16 %28, 0
  %1314 = icmp eq i16 %31, 0
  %1315 = select i1 %1313, i1 %1314, i1 false
  br i1 %1315, label %1522, label %1316

1316:                                             ; preds = %1309
  %1317 = select i1 %204, i1 true, i1 %207
  br i1 %1317, label %1404, label %1318

1318:                                             ; preds = %1316
  %1319 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %1320 = sub nsw i32 0, %23
  %1321 = sext i32 %1320 to i64
  %1322 = getelementptr inbounds i32, ptr %1319, i64 %1321
  %1323 = load i32, ptr %1322, align 4, !tbaa !18
  %1324 = sub nsw i32 0, %26
  %1325 = sext i32 %1324 to i64
  %1326 = getelementptr inbounds i32, ptr %1319, i64 %1325
  %1327 = load i32, ptr %1326, align 4, !tbaa !18
  %1328 = add nsw i32 %1327, %1323
  %1329 = mul nsw i32 %1328, %12
  %1330 = ashr i32 %1329, 16
  br i1 %123, label %1335, label %1400

1331:                                             ; preds = %1397
  %1332 = add i16 %1337, 1
  %1333 = zext i16 %1332 to i32
  %1334 = icmp sgt i32 %19, %1333
  br i1 %1334, label %1335, label %1400

1335:                                             ; preds = %1318, %1331
  %1336 = phi i32 [ %1333, %1331 ], [ 0, %1318 ]
  %1337 = phi i16 [ %1332, %1331 ], [ 0, %1318 ]
  %1338 = phi i32 [ %1398, %1331 ], [ %1330, %1318 ]
  %1339 = add nsw i32 %1336, %4
  %1340 = load ptr, ptr @img, align 8, !tbaa !10
  %1341 = getelementptr inbounds i8, ptr %1340, i64 52
  %1342 = load i32, ptr %1341, align 4, !tbaa !12
  %1343 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %1339, i32 noundef signext %3, i32 noundef signext %60, i32 noundef signext %1342) #12
  br i1 %308, label %1344, label %1397

1344:                                             ; preds = %1335
  %1345 = zext i16 %1337 to i64
  %1346 = getelementptr inbounds ptr, ptr %0, i64 %1345
  %1347 = load ptr, ptr %1346, align 8, !tbaa !10
  %1348 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %1349

1349:                                             ; preds = %1349, %1344
  %1350 = phi ptr [ %1343, %1344 ], [ %1387, %1349 ]
  %1351 = phi ptr [ %1347, %1344 ], [ %1384, %1349 ]
  %1352 = phi i16 [ 0, %1344 ], [ %1394, %1349 ]
  %1353 = phi i32 [ %1338, %1344 ], [ %1393, %1349 ]
  %1354 = getelementptr inbounds i8, ptr %1351, i64 2
  %1355 = load i16, ptr %1351, align 2, !tbaa !6
  %1356 = zext i16 %1355 to i64
  %1357 = getelementptr inbounds i8, ptr %1350, i64 2
  %1358 = load i16, ptr %1350, align 2, !tbaa !6
  %1359 = zext i16 %1358 to i64
  %1360 = sub nsw i64 %1356, %1359
  %1361 = getelementptr inbounds i32, ptr %1348, i64 %1360
  %1362 = load i32, ptr %1361, align 4, !tbaa !18
  %1363 = add i32 %1362, %1353
  %1364 = getelementptr inbounds i8, ptr %1351, i64 4
  %1365 = load i16, ptr %1354, align 2, !tbaa !6
  %1366 = zext i16 %1365 to i64
  %1367 = getelementptr inbounds i8, ptr %1350, i64 4
  %1368 = load i16, ptr %1357, align 2, !tbaa !6
  %1369 = zext i16 %1368 to i64
  %1370 = sub nsw i64 %1366, %1369
  %1371 = getelementptr inbounds i32, ptr %1348, i64 %1370
  %1372 = load i32, ptr %1371, align 4, !tbaa !18
  %1373 = add i32 %1363, %1372
  %1374 = getelementptr inbounds i8, ptr %1351, i64 6
  %1375 = load i16, ptr %1364, align 2, !tbaa !6
  %1376 = zext i16 %1375 to i64
  %1377 = getelementptr inbounds i8, ptr %1350, i64 6
  %1378 = load i16, ptr %1367, align 2, !tbaa !6
  %1379 = zext i16 %1378 to i64
  %1380 = sub nsw i64 %1376, %1379
  %1381 = getelementptr inbounds i32, ptr %1348, i64 %1380
  %1382 = load i32, ptr %1381, align 4, !tbaa !18
  %1383 = add i32 %1373, %1382
  %1384 = getelementptr inbounds i8, ptr %1351, i64 8
  %1385 = load i16, ptr %1374, align 2, !tbaa !6
  %1386 = zext i16 %1385 to i64
  %1387 = getelementptr inbounds i8, ptr %1350, i64 8
  %1388 = load i16, ptr %1377, align 2, !tbaa !6
  %1389 = zext i16 %1388 to i64
  %1390 = sub nsw i64 %1386, %1389
  %1391 = getelementptr inbounds i32, ptr %1348, i64 %1390
  %1392 = load i32, ptr %1391, align 4, !tbaa !18
  %1393 = add i32 %1383, %1392
  %1394 = add i16 %1352, 1
  %1395 = zext i16 %1394 to i32
  %1396 = icmp ugt i32 %21, %1395
  br i1 %1396, label %1349, label %1397

1397:                                             ; preds = %1349, %1335
  %1398 = phi i32 [ %1338, %1335 ], [ %1393, %1349 ]
  %1399 = icmp slt i32 %1398, %1312
  br i1 %1399, label %1331, label %1400

1400:                                             ; preds = %1331, %1397, %1318
  %1401 = phi i32 [ %1330, %1318 ], [ %1398, %1397 ], [ %1398, %1331 ]
  %1402 = icmp slt i32 %1401, %1312
  br i1 %1402, label %1403, label %1404

1403:                                             ; preds = %1400
  br label %1404

1404:                                             ; preds = %1400, %1403, %1316
  %1405 = phi i32 [ %4, %1403 ], [ %1310, %1400 ], [ %1310, %1316 ]
  %1406 = phi i32 [ %3, %1403 ], [ %1311, %1400 ], [ %1311, %1316 ]
  %1407 = phi i32 [ %1401, %1403 ], [ %1312, %1400 ], [ %1312, %1316 ]
  br label %1408

1408:                                             ; preds = %1404, %1516
  %1409 = phi i64 [ 0, %1404 ], [ %1520, %1516 ]
  %1410 = phi i32 [ %1407, %1404 ], [ %1519, %1516 ]
  %1411 = phi i32 [ %1406, %1404 ], [ %1518, %1516 ]
  %1412 = phi i32 [ %1405, %1404 ], [ %1517, %1516 ]
  %1413 = getelementptr inbounds [4 x i16], ptr @Diamond_X, i64 0, i64 %1409
  %1414 = load i16, ptr %1413, align 2, !tbaa !6
  %1415 = sext i16 %1414 to i32
  %1416 = add nsw i32 %1406, %1415
  %1417 = getelementptr inbounds [4 x i16], ptr @Diamond_Y, i64 0, i64 %1409
  %1418 = load i16, ptr %1417, align 2, !tbaa !6
  %1419 = sext i16 %1418 to i32
  %1420 = add nsw i32 %1405, %1419
  %1421 = sub nsw i32 %1416, %30
  %1422 = tail call i32 @llvm.abs.i32(i32 %1421, i1 true)
  %1423 = icmp sgt i32 %1422, %10
  br i1 %1423, label %1516, label %1424

1424:                                             ; preds = %1408
  %1425 = sub nsw i32 %1420, %33
  %1426 = tail call i32 @llvm.abs.i32(i32 %1425, i1 true)
  %1427 = icmp ugt i32 %1426, %10
  br i1 %1427, label %1516, label %1428

1428:                                             ; preds = %1424
  %1429 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %1430 = shl i32 %1416, 2
  %1431 = sub nsw i32 %1430, %24
  %1432 = sext i32 %1431 to i64
  %1433 = getelementptr inbounds i32, ptr %1429, i64 %1432
  %1434 = load i32, ptr %1433, align 4, !tbaa !18
  %1435 = shl i32 %1420, 2
  %1436 = sub nsw i32 %1435, %27
  %1437 = sext i32 %1436 to i64
  %1438 = getelementptr inbounds i32, ptr %1429, i64 %1437
  %1439 = load i32, ptr %1438, align 4, !tbaa !18
  %1440 = add nsw i32 %1439, %1434
  %1441 = mul nsw i32 %1440, %12
  %1442 = ashr i32 %1441, 16
  br i1 %123, label %1447, label %1512

1443:                                             ; preds = %1509
  %1444 = add i16 %1449, 1
  %1445 = zext i16 %1444 to i32
  %1446 = icmp sgt i32 %19, %1445
  br i1 %1446, label %1447, label %1512

1447:                                             ; preds = %1428, %1443
  %1448 = phi i32 [ %1445, %1443 ], [ 0, %1428 ]
  %1449 = phi i16 [ %1444, %1443 ], [ 0, %1428 ]
  %1450 = phi i32 [ %1510, %1443 ], [ %1442, %1428 ]
  %1451 = add nsw i32 %1448, %1420
  %1452 = load ptr, ptr @img, align 8, !tbaa !10
  %1453 = getelementptr inbounds i8, ptr %1452, i64 52
  %1454 = load i32, ptr %1453, align 4, !tbaa !12
  %1455 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %1451, i32 noundef signext %1416, i32 noundef signext %60, i32 noundef signext %1454) #12
  br i1 %308, label %1456, label %1509

1456:                                             ; preds = %1447
  %1457 = zext i16 %1449 to i64
  %1458 = getelementptr inbounds ptr, ptr %0, i64 %1457
  %1459 = load ptr, ptr %1458, align 8, !tbaa !10
  %1460 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %1461

1461:                                             ; preds = %1461, %1456
  %1462 = phi ptr [ %1455, %1456 ], [ %1499, %1461 ]
  %1463 = phi ptr [ %1459, %1456 ], [ %1496, %1461 ]
  %1464 = phi i16 [ 0, %1456 ], [ %1506, %1461 ]
  %1465 = phi i32 [ %1450, %1456 ], [ %1505, %1461 ]
  %1466 = getelementptr inbounds i8, ptr %1463, i64 2
  %1467 = load i16, ptr %1463, align 2, !tbaa !6
  %1468 = zext i16 %1467 to i64
  %1469 = getelementptr inbounds i8, ptr %1462, i64 2
  %1470 = load i16, ptr %1462, align 2, !tbaa !6
  %1471 = zext i16 %1470 to i64
  %1472 = sub nsw i64 %1468, %1471
  %1473 = getelementptr inbounds i32, ptr %1460, i64 %1472
  %1474 = load i32, ptr %1473, align 4, !tbaa !18
  %1475 = add i32 %1474, %1465
  %1476 = getelementptr inbounds i8, ptr %1463, i64 4
  %1477 = load i16, ptr %1466, align 2, !tbaa !6
  %1478 = zext i16 %1477 to i64
  %1479 = getelementptr inbounds i8, ptr %1462, i64 4
  %1480 = load i16, ptr %1469, align 2, !tbaa !6
  %1481 = zext i16 %1480 to i64
  %1482 = sub nsw i64 %1478, %1481
  %1483 = getelementptr inbounds i32, ptr %1460, i64 %1482
  %1484 = load i32, ptr %1483, align 4, !tbaa !18
  %1485 = add i32 %1475, %1484
  %1486 = getelementptr inbounds i8, ptr %1463, i64 6
  %1487 = load i16, ptr %1476, align 2, !tbaa !6
  %1488 = zext i16 %1487 to i64
  %1489 = getelementptr inbounds i8, ptr %1462, i64 6
  %1490 = load i16, ptr %1479, align 2, !tbaa !6
  %1491 = zext i16 %1490 to i64
  %1492 = sub nsw i64 %1488, %1491
  %1493 = getelementptr inbounds i32, ptr %1460, i64 %1492
  %1494 = load i32, ptr %1493, align 4, !tbaa !18
  %1495 = add i32 %1485, %1494
  %1496 = getelementptr inbounds i8, ptr %1463, i64 8
  %1497 = load i16, ptr %1486, align 2, !tbaa !6
  %1498 = zext i16 %1497 to i64
  %1499 = getelementptr inbounds i8, ptr %1462, i64 8
  %1500 = load i16, ptr %1489, align 2, !tbaa !6
  %1501 = zext i16 %1500 to i64
  %1502 = sub nsw i64 %1498, %1501
  %1503 = getelementptr inbounds i32, ptr %1460, i64 %1502
  %1504 = load i32, ptr %1503, align 4, !tbaa !18
  %1505 = add i32 %1495, %1504
  %1506 = add i16 %1464, 1
  %1507 = zext i16 %1506 to i32
  %1508 = icmp ugt i32 %21, %1507
  br i1 %1508, label %1461, label %1509

1509:                                             ; preds = %1461, %1447
  %1510 = phi i32 [ %1450, %1447 ], [ %1505, %1461 ]
  %1511 = icmp slt i32 %1510, %1410
  br i1 %1511, label %1443, label %1512

1512:                                             ; preds = %1443, %1509, %1428
  %1513 = phi i32 [ %1442, %1428 ], [ %1510, %1509 ], [ %1510, %1443 ]
  %1514 = icmp slt i32 %1513, %1410
  br i1 %1514, label %1515, label %1516

1515:                                             ; preds = %1512
  br label %1516

1516:                                             ; preds = %1408, %1424, %1515, %1512
  %1517 = phi i32 [ %1420, %1515 ], [ %1412, %1512 ], [ %1412, %1424 ], [ %1412, %1408 ]
  %1518 = phi i32 [ %1416, %1515 ], [ %1411, %1512 ], [ %1411, %1424 ], [ %1411, %1408 ]
  %1519 = phi i32 [ %1513, %1515 ], [ %1410, %1512 ], [ %1410, %1424 ], [ %1410, %1408 ]
  %1520 = add nuw nsw i64 %1409, 1
  %1521 = icmp eq i64 %1520, 4
  br i1 %1521, label %1522, label %1408

1522:                                             ; preds = %1516, %1309
  %1523 = phi i32 [ %1310, %1309 ], [ %1517, %1516 ]
  %1524 = phi i32 [ %1311, %1309 ], [ %1518, %1516 ]
  %1525 = phi i32 [ %1312, %1309 ], [ %1519, %1516 ]
  %1526 = load i16, ptr @ConvergeThreshold, align 2, !tbaa !6
  %1527 = zext i16 %1526 to i32
  %1528 = lshr i32 %1527, %305
  %1529 = icmp slt i32 %1525, %1528
  br i1 %1529, label %1532, label %1530

1530:                                             ; preds = %1522
  %1531 = icmp sgt i32 %10, 0
  br i1 %1531, label %1650, label %1903

1532:                                             ; preds = %1522, %1640
  %1533 = phi i64 [ %1644, %1640 ], [ 0, %1522 ]
  %1534 = phi i32 [ %1643, %1640 ], [ %1525, %1522 ]
  %1535 = phi i32 [ %1642, %1640 ], [ %1524, %1522 ]
  %1536 = phi i32 [ %1641, %1640 ], [ %1523, %1522 ]
  %1537 = getelementptr inbounds [4 x i16], ptr @Diamond_X, i64 0, i64 %1533
  %1538 = load i16, ptr %1537, align 2, !tbaa !6
  %1539 = sext i16 %1538 to i32
  %1540 = add nsw i32 %1524, %1539
  %1541 = getelementptr inbounds [4 x i16], ptr @Diamond_Y, i64 0, i64 %1533
  %1542 = load i16, ptr %1541, align 2, !tbaa !6
  %1543 = sext i16 %1542 to i32
  %1544 = add nsw i32 %1523, %1543
  %1545 = sub nsw i32 %1540, %30
  %1546 = tail call i32 @llvm.abs.i32(i32 %1545, i1 true)
  %1547 = icmp sgt i32 %1546, %10
  br i1 %1547, label %1640, label %1548

1548:                                             ; preds = %1532
  %1549 = sub nsw i32 %1544, %33
  %1550 = tail call i32 @llvm.abs.i32(i32 %1549, i1 true)
  %1551 = icmp ugt i32 %1550, %10
  br i1 %1551, label %1640, label %1552

1552:                                             ; preds = %1548
  %1553 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %1554 = shl i32 %1540, 2
  %1555 = sub nsw i32 %1554, %24
  %1556 = sext i32 %1555 to i64
  %1557 = getelementptr inbounds i32, ptr %1553, i64 %1556
  %1558 = load i32, ptr %1557, align 4, !tbaa !18
  %1559 = shl i32 %1544, 2
  %1560 = sub nsw i32 %1559, %27
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds i32, ptr %1553, i64 %1561
  %1563 = load i32, ptr %1562, align 4, !tbaa !18
  %1564 = add nsw i32 %1563, %1558
  %1565 = mul nsw i32 %1564, %12
  %1566 = ashr i32 %1565, 16
  br i1 %123, label %1571, label %1636

1567:                                             ; preds = %1633
  %1568 = add i16 %1573, 1
  %1569 = zext i16 %1568 to i32
  %1570 = icmp sgt i32 %19, %1569
  br i1 %1570, label %1571, label %1636

1571:                                             ; preds = %1552, %1567
  %1572 = phi i32 [ %1569, %1567 ], [ 0, %1552 ]
  %1573 = phi i16 [ %1568, %1567 ], [ 0, %1552 ]
  %1574 = phi i32 [ %1634, %1567 ], [ %1566, %1552 ]
  %1575 = add nsw i32 %1572, %1544
  %1576 = load ptr, ptr @img, align 8, !tbaa !10
  %1577 = getelementptr inbounds i8, ptr %1576, i64 52
  %1578 = load i32, ptr %1577, align 4, !tbaa !12
  %1579 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %1575, i32 noundef signext %1540, i32 noundef signext %60, i32 noundef signext %1578) #12
  br i1 %308, label %1580, label %1633

1580:                                             ; preds = %1571
  %1581 = zext i16 %1573 to i64
  %1582 = getelementptr inbounds ptr, ptr %0, i64 %1581
  %1583 = load ptr, ptr %1582, align 8, !tbaa !10
  %1584 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %1585

1585:                                             ; preds = %1585, %1580
  %1586 = phi ptr [ %1579, %1580 ], [ %1623, %1585 ]
  %1587 = phi ptr [ %1583, %1580 ], [ %1620, %1585 ]
  %1588 = phi i16 [ 0, %1580 ], [ %1630, %1585 ]
  %1589 = phi i32 [ %1574, %1580 ], [ %1629, %1585 ]
  %1590 = getelementptr inbounds i8, ptr %1587, i64 2
  %1591 = load i16, ptr %1587, align 2, !tbaa !6
  %1592 = zext i16 %1591 to i64
  %1593 = getelementptr inbounds i8, ptr %1586, i64 2
  %1594 = load i16, ptr %1586, align 2, !tbaa !6
  %1595 = zext i16 %1594 to i64
  %1596 = sub nsw i64 %1592, %1595
  %1597 = getelementptr inbounds i32, ptr %1584, i64 %1596
  %1598 = load i32, ptr %1597, align 4, !tbaa !18
  %1599 = add i32 %1598, %1589
  %1600 = getelementptr inbounds i8, ptr %1587, i64 4
  %1601 = load i16, ptr %1590, align 2, !tbaa !6
  %1602 = zext i16 %1601 to i64
  %1603 = getelementptr inbounds i8, ptr %1586, i64 4
  %1604 = load i16, ptr %1593, align 2, !tbaa !6
  %1605 = zext i16 %1604 to i64
  %1606 = sub nsw i64 %1602, %1605
  %1607 = getelementptr inbounds i32, ptr %1584, i64 %1606
  %1608 = load i32, ptr %1607, align 4, !tbaa !18
  %1609 = add i32 %1599, %1608
  %1610 = getelementptr inbounds i8, ptr %1587, i64 6
  %1611 = load i16, ptr %1600, align 2, !tbaa !6
  %1612 = zext i16 %1611 to i64
  %1613 = getelementptr inbounds i8, ptr %1586, i64 6
  %1614 = load i16, ptr %1603, align 2, !tbaa !6
  %1615 = zext i16 %1614 to i64
  %1616 = sub nsw i64 %1612, %1615
  %1617 = getelementptr inbounds i32, ptr %1584, i64 %1616
  %1618 = load i32, ptr %1617, align 4, !tbaa !18
  %1619 = add i32 %1609, %1618
  %1620 = getelementptr inbounds i8, ptr %1587, i64 8
  %1621 = load i16, ptr %1610, align 2, !tbaa !6
  %1622 = zext i16 %1621 to i64
  %1623 = getelementptr inbounds i8, ptr %1586, i64 8
  %1624 = load i16, ptr %1613, align 2, !tbaa !6
  %1625 = zext i16 %1624 to i64
  %1626 = sub nsw i64 %1622, %1625
  %1627 = getelementptr inbounds i32, ptr %1584, i64 %1626
  %1628 = load i32, ptr %1627, align 4, !tbaa !18
  %1629 = add i32 %1619, %1628
  %1630 = add i16 %1588, 1
  %1631 = zext i16 %1630 to i32
  %1632 = icmp ugt i32 %21, %1631
  br i1 %1632, label %1585, label %1633

1633:                                             ; preds = %1585, %1571
  %1634 = phi i32 [ %1574, %1571 ], [ %1629, %1585 ]
  %1635 = icmp slt i32 %1634, %1534
  br i1 %1635, label %1567, label %1636

1636:                                             ; preds = %1567, %1633, %1552
  %1637 = phi i32 [ %1566, %1552 ], [ %1634, %1633 ], [ %1634, %1567 ]
  %1638 = icmp slt i32 %1637, %1534
  br i1 %1638, label %1639, label %1640

1639:                                             ; preds = %1636
  br label %1640

1640:                                             ; preds = %1532, %1548, %1639, %1636
  %1641 = phi i32 [ %1544, %1639 ], [ %1536, %1636 ], [ %1536, %1548 ], [ %1536, %1532 ]
  %1642 = phi i32 [ %1540, %1639 ], [ %1535, %1636 ], [ %1535, %1548 ], [ %1535, %1532 ]
  %1643 = phi i32 [ %1637, %1639 ], [ %1534, %1636 ], [ %1534, %1548 ], [ %1534, %1532 ]
  %1644 = add nuw nsw i64 %1533, 1
  %1645 = icmp eq i64 %1644, 4
  br i1 %1645, label %1903, label %1532

1646:                                             ; preds = %1769
  %1647 = add i16 %1653, 1
  %1648 = zext i16 %1647 to i32
  %1649 = icmp slt i32 %1648, %10
  br i1 %1649, label %1650, label %1773

1650:                                             ; preds = %1530, %1646
  %1651 = phi i32 [ %1766, %1646 ], [ %1525, %1530 ]
  %1652 = phi i32 [ %1765, %1646 ], [ %1524, %1530 ]
  %1653 = phi i16 [ %1647, %1646 ], [ 0, %1530 ]
  %1654 = phi i32 [ %1764, %1646 ], [ %1523, %1530 ]
  br label %1655

1655:                                             ; preds = %1650, %1763
  %1656 = phi i64 [ 0, %1650 ], [ %1767, %1763 ]
  %1657 = phi i32 [ %1651, %1650 ], [ %1766, %1763 ]
  %1658 = phi i32 [ %1652, %1650 ], [ %1765, %1763 ]
  %1659 = phi i32 [ %1654, %1650 ], [ %1764, %1763 ]
  %1660 = getelementptr inbounds [6 x i16], ptr @Hexagon_X, i64 0, i64 %1656
  %1661 = load i16, ptr %1660, align 2, !tbaa !6
  %1662 = sext i16 %1661 to i32
  %1663 = add nsw i32 %1652, %1662
  %1664 = getelementptr inbounds [6 x i16], ptr @Hexagon_Y, i64 0, i64 %1656
  %1665 = load i16, ptr %1664, align 2, !tbaa !6
  %1666 = sext i16 %1665 to i32
  %1667 = add nsw i32 %1654, %1666
  %1668 = sub nsw i32 %1663, %30
  %1669 = tail call i32 @llvm.abs.i32(i32 %1668, i1 true)
  %1670 = icmp sgt i32 %1669, %10
  br i1 %1670, label %1763, label %1671

1671:                                             ; preds = %1655
  %1672 = sub nsw i32 %1667, %33
  %1673 = tail call i32 @llvm.abs.i32(i32 %1672, i1 true)
  %1674 = icmp ugt i32 %1673, %10
  br i1 %1674, label %1763, label %1675

1675:                                             ; preds = %1671
  %1676 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %1677 = shl i32 %1663, 2
  %1678 = sub nsw i32 %1677, %24
  %1679 = sext i32 %1678 to i64
  %1680 = getelementptr inbounds i32, ptr %1676, i64 %1679
  %1681 = load i32, ptr %1680, align 4, !tbaa !18
  %1682 = shl i32 %1667, 2
  %1683 = sub nsw i32 %1682, %27
  %1684 = sext i32 %1683 to i64
  %1685 = getelementptr inbounds i32, ptr %1676, i64 %1684
  %1686 = load i32, ptr %1685, align 4, !tbaa !18
  %1687 = add nsw i32 %1686, %1681
  %1688 = mul nsw i32 %1687, %12
  %1689 = ashr i32 %1688, 16
  br i1 %123, label %1694, label %1759

1690:                                             ; preds = %1756
  %1691 = add i16 %1696, 1
  %1692 = zext i16 %1691 to i32
  %1693 = icmp sgt i32 %19, %1692
  br i1 %1693, label %1694, label %1759

1694:                                             ; preds = %1675, %1690
  %1695 = phi i32 [ %1692, %1690 ], [ 0, %1675 ]
  %1696 = phi i16 [ %1691, %1690 ], [ 0, %1675 ]
  %1697 = phi i32 [ %1757, %1690 ], [ %1689, %1675 ]
  %1698 = add nsw i32 %1695, %1667
  %1699 = load ptr, ptr @img, align 8, !tbaa !10
  %1700 = getelementptr inbounds i8, ptr %1699, i64 52
  %1701 = load i32, ptr %1700, align 4, !tbaa !12
  %1702 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %1698, i32 noundef signext %1663, i32 noundef signext %60, i32 noundef signext %1701) #12
  br i1 %308, label %1703, label %1756

1703:                                             ; preds = %1694
  %1704 = zext i16 %1696 to i64
  %1705 = getelementptr inbounds ptr, ptr %0, i64 %1704
  %1706 = load ptr, ptr %1705, align 8, !tbaa !10
  %1707 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %1708

1708:                                             ; preds = %1708, %1703
  %1709 = phi ptr [ %1702, %1703 ], [ %1746, %1708 ]
  %1710 = phi ptr [ %1706, %1703 ], [ %1743, %1708 ]
  %1711 = phi i16 [ 0, %1703 ], [ %1753, %1708 ]
  %1712 = phi i32 [ %1697, %1703 ], [ %1752, %1708 ]
  %1713 = getelementptr inbounds i8, ptr %1710, i64 2
  %1714 = load i16, ptr %1710, align 2, !tbaa !6
  %1715 = zext i16 %1714 to i64
  %1716 = getelementptr inbounds i8, ptr %1709, i64 2
  %1717 = load i16, ptr %1709, align 2, !tbaa !6
  %1718 = zext i16 %1717 to i64
  %1719 = sub nsw i64 %1715, %1718
  %1720 = getelementptr inbounds i32, ptr %1707, i64 %1719
  %1721 = load i32, ptr %1720, align 4, !tbaa !18
  %1722 = add i32 %1721, %1712
  %1723 = getelementptr inbounds i8, ptr %1710, i64 4
  %1724 = load i16, ptr %1713, align 2, !tbaa !6
  %1725 = zext i16 %1724 to i64
  %1726 = getelementptr inbounds i8, ptr %1709, i64 4
  %1727 = load i16, ptr %1716, align 2, !tbaa !6
  %1728 = zext i16 %1727 to i64
  %1729 = sub nsw i64 %1725, %1728
  %1730 = getelementptr inbounds i32, ptr %1707, i64 %1729
  %1731 = load i32, ptr %1730, align 4, !tbaa !18
  %1732 = add i32 %1722, %1731
  %1733 = getelementptr inbounds i8, ptr %1710, i64 6
  %1734 = load i16, ptr %1723, align 2, !tbaa !6
  %1735 = zext i16 %1734 to i64
  %1736 = getelementptr inbounds i8, ptr %1709, i64 6
  %1737 = load i16, ptr %1726, align 2, !tbaa !6
  %1738 = zext i16 %1737 to i64
  %1739 = sub nsw i64 %1735, %1738
  %1740 = getelementptr inbounds i32, ptr %1707, i64 %1739
  %1741 = load i32, ptr %1740, align 4, !tbaa !18
  %1742 = add i32 %1732, %1741
  %1743 = getelementptr inbounds i8, ptr %1710, i64 8
  %1744 = load i16, ptr %1733, align 2, !tbaa !6
  %1745 = zext i16 %1744 to i64
  %1746 = getelementptr inbounds i8, ptr %1709, i64 8
  %1747 = load i16, ptr %1736, align 2, !tbaa !6
  %1748 = zext i16 %1747 to i64
  %1749 = sub nsw i64 %1745, %1748
  %1750 = getelementptr inbounds i32, ptr %1707, i64 %1749
  %1751 = load i32, ptr %1750, align 4, !tbaa !18
  %1752 = add i32 %1742, %1751
  %1753 = add i16 %1711, 1
  %1754 = zext i16 %1753 to i32
  %1755 = icmp ugt i32 %21, %1754
  br i1 %1755, label %1708, label %1756

1756:                                             ; preds = %1708, %1694
  %1757 = phi i32 [ %1697, %1694 ], [ %1752, %1708 ]
  %1758 = icmp slt i32 %1757, %1657
  br i1 %1758, label %1690, label %1759

1759:                                             ; preds = %1690, %1756, %1675
  %1760 = phi i32 [ %1689, %1675 ], [ %1757, %1756 ], [ %1757, %1690 ]
  %1761 = icmp slt i32 %1760, %1657
  br i1 %1761, label %1762, label %1763

1762:                                             ; preds = %1759
  br label %1763

1763:                                             ; preds = %1655, %1671, %1762, %1759
  %1764 = phi i32 [ %1667, %1762 ], [ %1659, %1759 ], [ %1659, %1671 ], [ %1659, %1655 ]
  %1765 = phi i32 [ %1663, %1762 ], [ %1658, %1759 ], [ %1658, %1671 ], [ %1658, %1655 ]
  %1766 = phi i32 [ %1760, %1762 ], [ %1657, %1759 ], [ %1657, %1671 ], [ %1657, %1655 ]
  %1767 = add nuw nsw i64 %1656, 1
  %1768 = icmp eq i64 %1767, 6
  br i1 %1768, label %1769, label %1655

1769:                                             ; preds = %1763
  %1770 = icmp eq i32 %1765, %1652
  %1771 = icmp eq i32 %1764, %1654
  %1772 = select i1 %1770, i1 %1771, i1 false
  br i1 %1772, label %1773, label %1646

1773:                                             ; preds = %1646, %1769
  %1774 = phi i32 [ %1654, %1769 ], [ %1764, %1646 ]
  %1775 = phi i32 [ %1652, %1769 ], [ %1765, %1646 ]
  br i1 %1531, label %1780, label %1903

1776:                                             ; preds = %1899
  %1777 = add i16 %1783, 1
  %1778 = zext i16 %1777 to i32
  %1779 = icmp slt i32 %1778, %10
  br i1 %1779, label %1780, label %1903

1780:                                             ; preds = %1773, %1776
  %1781 = phi i32 [ %1896, %1776 ], [ %1766, %1773 ]
  %1782 = phi i32 [ %1895, %1776 ], [ %1775, %1773 ]
  %1783 = phi i16 [ %1777, %1776 ], [ 0, %1773 ]
  %1784 = phi i32 [ %1894, %1776 ], [ %1774, %1773 ]
  br label %1785

1785:                                             ; preds = %1780, %1893
  %1786 = phi i64 [ 0, %1780 ], [ %1897, %1893 ]
  %1787 = phi i32 [ %1781, %1780 ], [ %1896, %1893 ]
  %1788 = phi i32 [ %1782, %1780 ], [ %1895, %1893 ]
  %1789 = phi i32 [ %1784, %1780 ], [ %1894, %1893 ]
  %1790 = getelementptr inbounds [4 x i16], ptr @Diamond_X, i64 0, i64 %1786
  %1791 = load i16, ptr %1790, align 2, !tbaa !6
  %1792 = sext i16 %1791 to i32
  %1793 = add nsw i32 %1782, %1792
  %1794 = getelementptr inbounds [4 x i16], ptr @Diamond_Y, i64 0, i64 %1786
  %1795 = load i16, ptr %1794, align 2, !tbaa !6
  %1796 = sext i16 %1795 to i32
  %1797 = add nsw i32 %1784, %1796
  %1798 = sub nsw i32 %1793, %30
  %1799 = tail call i32 @llvm.abs.i32(i32 %1798, i1 true)
  %1800 = icmp sgt i32 %1799, %10
  br i1 %1800, label %1893, label %1801

1801:                                             ; preds = %1785
  %1802 = sub nsw i32 %1797, %33
  %1803 = tail call i32 @llvm.abs.i32(i32 %1802, i1 true)
  %1804 = icmp ugt i32 %1803, %10
  br i1 %1804, label %1893, label %1805

1805:                                             ; preds = %1801
  %1806 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %1807 = shl i32 %1793, 2
  %1808 = sub nsw i32 %1807, %24
  %1809 = sext i32 %1808 to i64
  %1810 = getelementptr inbounds i32, ptr %1806, i64 %1809
  %1811 = load i32, ptr %1810, align 4, !tbaa !18
  %1812 = shl i32 %1797, 2
  %1813 = sub nsw i32 %1812, %27
  %1814 = sext i32 %1813 to i64
  %1815 = getelementptr inbounds i32, ptr %1806, i64 %1814
  %1816 = load i32, ptr %1815, align 4, !tbaa !18
  %1817 = add nsw i32 %1816, %1811
  %1818 = mul nsw i32 %1817, %12
  %1819 = ashr i32 %1818, 16
  br i1 %123, label %1824, label %1889

1820:                                             ; preds = %1886
  %1821 = add i16 %1826, 1
  %1822 = zext i16 %1821 to i32
  %1823 = icmp sgt i32 %19, %1822
  br i1 %1823, label %1824, label %1889

1824:                                             ; preds = %1805, %1820
  %1825 = phi i32 [ %1822, %1820 ], [ 0, %1805 ]
  %1826 = phi i16 [ %1821, %1820 ], [ 0, %1805 ]
  %1827 = phi i32 [ %1887, %1820 ], [ %1819, %1805 ]
  %1828 = add nsw i32 %1825, %1797
  %1829 = load ptr, ptr @img, align 8, !tbaa !10
  %1830 = getelementptr inbounds i8, ptr %1829, i64 52
  %1831 = load i32, ptr %1830, align 4, !tbaa !12
  %1832 = tail call ptr %108(i32 noundef signext %20, ptr noundef %91, i32 noundef signext %1828, i32 noundef signext %1793, i32 noundef signext %60, i32 noundef signext %1831) #12
  br i1 %308, label %1833, label %1886

1833:                                             ; preds = %1824
  %1834 = zext i16 %1826 to i64
  %1835 = getelementptr inbounds ptr, ptr %0, i64 %1834
  %1836 = load ptr, ptr %1835, align 8, !tbaa !10
  %1837 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %1838

1838:                                             ; preds = %1838, %1833
  %1839 = phi ptr [ %1832, %1833 ], [ %1876, %1838 ]
  %1840 = phi ptr [ %1836, %1833 ], [ %1873, %1838 ]
  %1841 = phi i16 [ 0, %1833 ], [ %1883, %1838 ]
  %1842 = phi i32 [ %1827, %1833 ], [ %1882, %1838 ]
  %1843 = getelementptr inbounds i8, ptr %1840, i64 2
  %1844 = load i16, ptr %1840, align 2, !tbaa !6
  %1845 = zext i16 %1844 to i64
  %1846 = getelementptr inbounds i8, ptr %1839, i64 2
  %1847 = load i16, ptr %1839, align 2, !tbaa !6
  %1848 = zext i16 %1847 to i64
  %1849 = sub nsw i64 %1845, %1848
  %1850 = getelementptr inbounds i32, ptr %1837, i64 %1849
  %1851 = load i32, ptr %1850, align 4, !tbaa !18
  %1852 = add i32 %1851, %1842
  %1853 = getelementptr inbounds i8, ptr %1840, i64 4
  %1854 = load i16, ptr %1843, align 2, !tbaa !6
  %1855 = zext i16 %1854 to i64
  %1856 = getelementptr inbounds i8, ptr %1839, i64 4
  %1857 = load i16, ptr %1846, align 2, !tbaa !6
  %1858 = zext i16 %1857 to i64
  %1859 = sub nsw i64 %1855, %1858
  %1860 = getelementptr inbounds i32, ptr %1837, i64 %1859
  %1861 = load i32, ptr %1860, align 4, !tbaa !18
  %1862 = add i32 %1852, %1861
  %1863 = getelementptr inbounds i8, ptr %1840, i64 6
  %1864 = load i16, ptr %1853, align 2, !tbaa !6
  %1865 = zext i16 %1864 to i64
  %1866 = getelementptr inbounds i8, ptr %1839, i64 6
  %1867 = load i16, ptr %1856, align 2, !tbaa !6
  %1868 = zext i16 %1867 to i64
  %1869 = sub nsw i64 %1865, %1868
  %1870 = getelementptr inbounds i32, ptr %1837, i64 %1869
  %1871 = load i32, ptr %1870, align 4, !tbaa !18
  %1872 = add i32 %1862, %1871
  %1873 = getelementptr inbounds i8, ptr %1840, i64 8
  %1874 = load i16, ptr %1863, align 2, !tbaa !6
  %1875 = zext i16 %1874 to i64
  %1876 = getelementptr inbounds i8, ptr %1839, i64 8
  %1877 = load i16, ptr %1866, align 2, !tbaa !6
  %1878 = zext i16 %1877 to i64
  %1879 = sub nsw i64 %1875, %1878
  %1880 = getelementptr inbounds i32, ptr %1837, i64 %1879
  %1881 = load i32, ptr %1880, align 4, !tbaa !18
  %1882 = add i32 %1872, %1881
  %1883 = add i16 %1841, 1
  %1884 = zext i16 %1883 to i32
  %1885 = icmp ugt i32 %21, %1884
  br i1 %1885, label %1838, label %1886

1886:                                             ; preds = %1838, %1824
  %1887 = phi i32 [ %1827, %1824 ], [ %1882, %1838 ]
  %1888 = icmp slt i32 %1887, %1787
  br i1 %1888, label %1820, label %1889

1889:                                             ; preds = %1820, %1886, %1805
  %1890 = phi i32 [ %1819, %1805 ], [ %1887, %1886 ], [ %1887, %1820 ]
  %1891 = icmp slt i32 %1890, %1787
  br i1 %1891, label %1892, label %1893

1892:                                             ; preds = %1889
  br label %1893

1893:                                             ; preds = %1785, %1801, %1892, %1889
  %1894 = phi i32 [ %1797, %1892 ], [ %1789, %1889 ], [ %1789, %1801 ], [ %1789, %1785 ]
  %1895 = phi i32 [ %1793, %1892 ], [ %1788, %1889 ], [ %1788, %1801 ], [ %1788, %1785 ]
  %1896 = phi i32 [ %1890, %1892 ], [ %1787, %1889 ], [ %1787, %1801 ], [ %1787, %1785 ]
  %1897 = add nuw nsw i64 %1786, 1
  %1898 = icmp eq i64 %1897, 4
  br i1 %1898, label %1899, label %1785

1899:                                             ; preds = %1893
  %1900 = icmp eq i32 %1895, %1782
  %1901 = icmp eq i32 %1894, %1784
  %1902 = select i1 %1900, i1 %1901, i1 false
  br i1 %1902, label %1903, label %1776

1903:                                             ; preds = %1899, %1776, %1640, %417, %1773, %1530
  %1904 = phi i32 [ %1775, %1773 ], [ %1524, %1530 ], [ %419, %417 ], [ %1642, %1640 ], [ %1895, %1776 ], [ %1782, %1899 ]
  %1905 = phi i32 [ %1774, %1773 ], [ %1523, %1530 ], [ %418, %417 ], [ %1641, %1640 ], [ %1894, %1776 ], [ %1784, %1899 ]
  %1906 = phi i32 [ %1766, %1773 ], [ %1525, %1530 ], [ %420, %417 ], [ %1643, %1640 ], [ %1896, %1776 ], [ %1896, %1899 ]
  %1907 = sub nsw i32 %1904, %3
  %1908 = trunc i32 %1907 to i16
  store i16 %1908, ptr %8, align 2, !tbaa !6
  %1909 = sub nsw i32 %1905, %4
  %1910 = trunc i32 %1909 to i16
  store i16 %1910, ptr %9, align 2, !tbaa !6
  ret i32 %1906
}

declare dso_local ptr @FastLineX(i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local ptr @UMVLineX(i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local signext i32 @simplified_FastSubPelBlockMotionSearch(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7, ptr nocapture noundef %8, ptr nocapture noundef %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12, i32 noundef signext %13, i32 noundef signext %14) local_unnamed_addr #1 {
  %16 = load ptr, ptr @img, align 8, !tbaa !10
  %17 = getelementptr inbounds i8, ptr %16, i64 90220
  %18 = load i32, ptr %17, align 4, !tbaa !30
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %16, i64 31576
  %22 = load ptr, ptr %21, align 8, !tbaa !31
  %23 = getelementptr inbounds i8, ptr %16, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %25, i32 19
  %27 = load i32, ptr %26, align 8, !tbaa !33
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = and i32 %24, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 2, i32 4
  br label %33

33:                                               ; preds = %15, %20, %29
  %34 = phi i32 [ %32, %29 ], [ 0, %20 ], [ 0, %15 ]
  %35 = add nsw i32 %34, %2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  %39 = sext i16 %1 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  %42 = load ptr, ptr @input, align 8, !tbaa !10
  %43 = getelementptr inbounds i8, ptr %42, i64 84
  %44 = sext i32 %5 to i64
  %45 = getelementptr inbounds [8 x [2 x i32]], ptr %43, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !18
  %47 = getelementptr inbounds i8, ptr %45, i64 4
  %48 = load i32, ptr %47, align 4, !tbaa !18
  %49 = shl i32 %3, 2
  %50 = add i32 %49, 16
  %51 = shl i32 %4, 2
  %52 = add i32 %51, 16
  %53 = shl i32 %46, 16
  %54 = ashr exact i32 %53, 16
  %55 = getelementptr inbounds i8, ptr %41, i64 6396
  %56 = load i32, ptr %55, align 4, !tbaa !21
  %57 = shl i32 %48, 16
  %58 = ashr exact i32 %57, 16
  %59 = sub i32 %56, %48
  %60 = trunc i32 %59 to i16
  %61 = shl i16 %60, 2
  %62 = add i16 %61, 32
  %63 = load i16, ptr %8, align 2, !tbaa !6
  %64 = sext i16 %63 to i32
  %65 = add nsw i32 %50, %64
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %69, label %67

67:                                               ; preds = %33
  %68 = load i16, ptr %9, align 2, !tbaa !6
  br label %88

69:                                               ; preds = %33
  %70 = getelementptr inbounds i8, ptr %41, i64 6392
  %71 = load i32, ptr %70, align 8, !tbaa !19
  %72 = sub i32 %71, %46
  %73 = trunc i32 %72 to i16
  %74 = shl i16 %73, 2
  %75 = add i16 %74, 32
  %76 = sext i16 %75 to i32
  %77 = add nsw i32 %76, -1
  %78 = icmp slt i32 %65, %77
  %79 = load i16, ptr %9, align 2, !tbaa !6
  br i1 %78, label %80, label %88

80:                                               ; preds = %69
  %81 = sext i16 %79 to i32
  %82 = add nsw i32 %52, %81
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = sext i16 %62 to i32
  %86 = add nsw i32 %85, -1
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %67, %84, %80, %69
  %89 = phi i16 [ %68, %67 ], [ %79, %84 ], [ %79, %80 ], [ %79, %69 ]
  %90 = sext i16 %89 to i32
  br label %91

91:                                               ; preds = %84, %88
  %92 = phi i32 [ %81, %84 ], [ %90, %88 ]
  %93 = phi ptr [ @FastLine4X, %84 ], [ @UMVLine4X, %88 ]
  store ptr %93, ptr @get_line, align 8, !tbaa !10
  %94 = sext i16 %6 to i32
  %95 = sub nsw i32 %94, %64
  %96 = srem i32 %95, 4
  %97 = sext i16 %7 to i32
  %98 = sub nsw i32 %97, %92
  %99 = srem i32 %98, 4
  %100 = load i16, ptr @simplified_pred_MV_uplayer_X, align 2, !tbaa !6
  %101 = zext i16 %100 to i32
  %102 = sub nsw i32 %101, %64
  %103 = load i16, ptr @simplified_pred_MV_uplayer_Y, align 2, !tbaa !6
  %104 = zext i16 %103 to i32
  %105 = sub nsw i32 %104, %92
  %106 = load ptr, ptr @simplified_SearchState, align 8, !tbaa !10
  %107 = load ptr, ptr %106, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %107, i8 0, i64 49, i1 false)
  %108 = getelementptr inbounds i8, ptr %106, i64 24
  %109 = load ptr, ptr %108, align 8, !tbaa !10
  %110 = getelementptr inbounds i8, ptr %109, i64 3
  store i8 1, ptr %110, align 1, !tbaa !36
  %111 = load ptr, ptr @input, align 8, !tbaa !10
  %112 = getelementptr inbounds i8, ptr %111, i64 24
  %113 = load i32, ptr %112, align 8, !tbaa !29
  %114 = icmp eq i32 %113, 0
  %115 = load i16, ptr %8, align 2, !tbaa !6
  %116 = sext i16 %115 to i32
  %117 = load i16, ptr %9, align 2, !tbaa !6
  %118 = sext i16 %117 to i32
  br i1 %114, label %140, label %119

119:                                              ; preds = %91
  %120 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %121 = sub nsw i32 %116, %94
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %120, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !18
  %125 = sub nsw i32 %118, %97
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %120, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !18
  %129 = add nsw i32 %128, %124
  %130 = mul nsw i32 %129, %13
  %131 = ashr i32 %130, 16
  %132 = add nsw i32 %50, %116
  %133 = add nsw i32 %52, %118
  %134 = tail call signext i32 @simplified_add_up_SAD_quarter_pel(i32 signext poison, i32 signext poison, i32 noundef signext %54, i32 noundef signext %58, i32 noundef signext %132, i32 noundef signext %133, ptr noundef nonnull %41, ptr noundef %0, i32 noundef signext %131, i32 noundef signext %12, i32 noundef signext %14, i32 noundef signext %5)
  %135 = icmp slt i32 %134, %12
  %136 = select i1 %135, i32 %116, i32 0
  %137 = select i1 %135, i32 %118, i32 0
  %138 = tail call i32 @llvm.smin.i32(i32 %134, i32 %12)
  %139 = load i16, ptr %8, align 2, !tbaa !6
  br label %140

140:                                              ; preds = %91, %119
  %141 = phi i16 [ %139, %119 ], [ %115, %91 ]
  %142 = phi i32 [ %136, %119 ], [ %116, %91 ]
  %143 = phi i32 [ %137, %119 ], [ %118, %91 ]
  %144 = phi i32 [ %138, %119 ], [ %12, %91 ]
  %145 = icmp eq i16 %141, 0
  br i1 %145, label %146, label %167

146:                                              ; preds = %140
  %147 = load i16, ptr %9, align 2, !tbaa !6
  %148 = icmp eq i16 %147, 0
  %149 = icmp eq i32 %96, 0
  %150 = select i1 %148, i1 %149, i1 false
  %151 = and i32 %102, 3
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  %154 = icmp eq i32 %99, 0
  %155 = select i1 %153, i1 %154, i1 false
  %156 = and i32 %105, 3
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %167

159:                                              ; preds = %146
  %160 = load i16, ptr @SubPelThreshold1, align 2, !tbaa !6
  %161 = zext i16 %160 to i32
  %162 = getelementptr inbounds [8 x i16], ptr @block_type_shift_factor, i64 0, i64 %44
  %163 = load i16, ptr %162, align 2, !tbaa !6
  %164 = zext nneg i16 %163 to i32
  %165 = lshr i32 %161, %164
  %166 = icmp slt i32 %144, %165
  br i1 %166, label %309, label %167

167:                                              ; preds = %159, %146, %140
  %168 = icmp ne i32 %96, 0
  %169 = icmp ne i32 %99, 0
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %171, label %208

171:                                              ; preds = %167
  %172 = sext i16 %141 to i32
  %173 = add nsw i32 %96, %172
  %174 = load i16, ptr %9, align 2, !tbaa !6
  %175 = sext i16 %174 to i32
  %176 = add nsw i32 %99, %175
  %177 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %178 = sub nsw i32 %173, %94
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, ptr %177, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !18
  %182 = sub nsw i32 %176, %97
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, ptr %177, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !18
  %186 = add nsw i32 %185, %181
  %187 = mul nsw i32 %186, %13
  %188 = ashr i32 %187, 16
  %189 = add nsw i32 %173, %50
  %190 = add nsw i32 %176, %52
  %191 = tail call signext i32 @simplified_add_up_SAD_quarter_pel(i32 signext poison, i32 signext poison, i32 noundef signext %54, i32 noundef signext %58, i32 noundef signext %189, i32 noundef signext %190, ptr noundef nonnull %41, ptr noundef %0, i32 noundef signext %188, i32 noundef signext %144, i32 noundef signext %14, i32 noundef signext %5)
  %192 = load ptr, ptr @simplified_SearchState, align 8, !tbaa !10
  %193 = load i16, ptr %9, align 2, !tbaa !6
  %194 = sext i16 %193 to i32
  %195 = sub nsw i32 %176, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr ptr, ptr %192, i64 %196
  %198 = getelementptr i8, ptr %197, i64 24
  %199 = load ptr, ptr %198, align 8, !tbaa !10
  %200 = load i16, ptr %8, align 2, !tbaa !6
  %201 = sext i16 %200 to i32
  %202 = sub nsw i32 %173, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr i8, ptr %199, i64 %203
  %205 = getelementptr i8, ptr %204, i64 3
  store i8 1, ptr %205, align 1, !tbaa !36
  %206 = icmp slt i32 %191, %144
  br i1 %206, label %207, label %208

207:                                              ; preds = %171
  br label %208

208:                                              ; preds = %171, %207, %167
  %209 = phi i32 [ %173, %207 ], [ %142, %171 ], [ %142, %167 ]
  %210 = phi i32 [ %176, %207 ], [ %143, %171 ], [ %143, %167 ]
  %211 = phi i32 [ %191, %207 ], [ %144, %171 ], [ %144, %167 ]
  %212 = getelementptr inbounds [8 x i16], ptr @block_type_shift_factor, i64 0, i64 %44
  br label %213

213:                                              ; preds = %304, %208
  %214 = phi i32 [ %211, %208 ], [ %301, %304 ]
  %215 = phi i32 [ %210, %208 ], [ %299, %304 ]
  %216 = phi i32 [ %209, %208 ], [ %298, %304 ]
  %217 = phi i16 [ 0, %208 ], [ %306, %304 ]
  br label %218

218:                                              ; preds = %213, %297
  %219 = phi i64 [ 0, %213 ], [ %302, %297 ]
  %220 = phi i32 [ %214, %213 ], [ %301, %297 ]
  %221 = phi i32 [ 1, %213 ], [ %300, %297 ]
  %222 = phi i32 [ %215, %213 ], [ %299, %297 ]
  %223 = phi i32 [ %216, %213 ], [ %298, %297 ]
  %224 = getelementptr inbounds [4 x i16], ptr @Diamond_X, i64 0, i64 %219
  %225 = load i16, ptr %224, align 2, !tbaa !6
  %226 = sext i16 %225 to i32
  %227 = add nsw i32 %216, %226
  %228 = getelementptr inbounds [4 x i16], ptr @Diamond_Y, i64 0, i64 %219
  %229 = load i16, ptr %228, align 2, !tbaa !6
  %230 = sext i16 %229 to i32
  %231 = add nsw i32 %215, %230
  %232 = load i16, ptr %8, align 2, !tbaa !6
  %233 = sext i16 %232 to i32
  %234 = sub nsw i32 %227, %233
  %235 = tail call i32 @llvm.abs.i32(i32 %234, i1 true)
  %236 = icmp ult i32 %235, 4
  br i1 %236, label %237, label %297

237:                                              ; preds = %218
  %238 = load i16, ptr %9, align 2, !tbaa !6
  %239 = sext i16 %238 to i32
  %240 = sub nsw i32 %231, %239
  %241 = tail call i32 @llvm.abs.i32(i32 %240, i1 true)
  %242 = icmp ult i32 %241, 4
  br i1 %242, label %243, label %297

243:                                              ; preds = %237
  %244 = load ptr, ptr @simplified_SearchState, align 8, !tbaa !10
  %245 = sext i32 %240 to i64
  %246 = getelementptr ptr, ptr %244, i64 %245
  %247 = getelementptr i8, ptr %246, i64 24
  %248 = load ptr, ptr %247, align 8, !tbaa !10
  %249 = sext i32 %234 to i64
  %250 = getelementptr i8, ptr %248, i64 %249
  %251 = getelementptr i8, ptr %250, i64 3
  %252 = load i8, ptr %251, align 1, !tbaa !36
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %297

254:                                              ; preds = %243
  %255 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %256 = sub nsw i32 %227, %94
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, ptr %255, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !18
  %260 = sub nsw i32 %231, %97
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, ptr %255, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !18
  %264 = add nsw i32 %263, %259
  %265 = mul nsw i32 %264, %13
  %266 = ashr i32 %265, 16
  %267 = add nsw i32 %227, %50
  %268 = add nsw i32 %231, %52
  %269 = tail call signext i32 @simplified_add_up_SAD_quarter_pel(i32 signext poison, i32 signext poison, i32 noundef signext %54, i32 noundef signext %58, i32 noundef signext %267, i32 noundef signext %268, ptr noundef %41, ptr noundef %0, i32 noundef signext %266, i32 noundef signext %220, i32 noundef signext %14, i32 noundef signext %5)
  %270 = load ptr, ptr @simplified_SearchState, align 8, !tbaa !10
  %271 = load i16, ptr %9, align 2, !tbaa !6
  %272 = sext i16 %271 to i32
  %273 = sub nsw i32 %231, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr ptr, ptr %270, i64 %274
  %276 = getelementptr i8, ptr %275, i64 24
  %277 = load ptr, ptr %276, align 8, !tbaa !10
  %278 = load i16, ptr %8, align 2, !tbaa !6
  %279 = sext i16 %278 to i32
  %280 = sub nsw i32 %227, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr i8, ptr %277, i64 %281
  %283 = getelementptr i8, ptr %282, i64 3
  store i8 1, ptr %283, align 1, !tbaa !36
  %284 = icmp slt i32 %269, %220
  br i1 %284, label %285, label %286

285:                                              ; preds = %254
  br label %286

286:                                              ; preds = %285, %254
  %287 = phi i32 [ %227, %285 ], [ %223, %254 ]
  %288 = phi i32 [ %231, %285 ], [ %222, %254 ]
  %289 = phi i32 [ 0, %285 ], [ %221, %254 ]
  %290 = phi i32 [ %269, %285 ], [ %220, %254 ]
  %291 = load i16, ptr @SubPelThreshold3, align 2, !tbaa !6
  %292 = zext i16 %291 to i32
  %293 = load i16, ptr %212, align 2, !tbaa !6
  %294 = zext nneg i16 %293 to i32
  %295 = lshr i32 %292, %294
  %296 = icmp slt i32 %290, %295
  br i1 %296, label %309, label %297

297:                                              ; preds = %218, %237, %286, %243
  %298 = phi i32 [ %223, %243 ], [ %287, %286 ], [ %223, %237 ], [ %223, %218 ]
  %299 = phi i32 [ %222, %243 ], [ %288, %286 ], [ %222, %237 ], [ %222, %218 ]
  %300 = phi i32 [ %221, %243 ], [ %289, %286 ], [ %221, %237 ], [ %221, %218 ]
  %301 = phi i32 [ %220, %243 ], [ %290, %286 ], [ %220, %237 ], [ %220, %218 ]
  %302 = add nuw nsw i64 %219, 1
  %303 = icmp eq i64 %302, 4
  br i1 %303, label %304, label %218

304:                                              ; preds = %297
  %305 = icmp eq i32 %300, 0
  %306 = add nuw nsw i16 %217, 1
  %307 = icmp ult i16 %217, 2
  %308 = select i1 %305, i1 %307, i1 false
  br i1 %308, label %213, label %309

309:                                              ; preds = %304, %286, %159
  %310 = phi i32 [ %142, %159 ], [ %287, %286 ], [ %298, %304 ]
  %311 = phi i32 [ %143, %159 ], [ %288, %286 ], [ %299, %304 ]
  %312 = phi i32 [ %144, %159 ], [ %290, %286 ], [ %301, %304 ]
  %313 = trunc i32 %310 to i16
  store i16 %313, ptr %8, align 2, !tbaa !6
  %314 = trunc i32 %311 to i16
  store i16 %314, ptr %9, align 2, !tbaa !6
  ret i32 %312
}

declare dso_local ptr @FastLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #4

declare dso_local ptr @UMVLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @simplified_decide_intrabk_SAD() local_unnamed_addr #8 {
  %1 = load ptr, ptr @img, align 8, !tbaa !10
  %2 = getelementptr inbounds i8, ptr %1, i64 24
  %3 = load i32, ptr %2, align 8, !tbaa !24
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %40, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds i8, ptr %1, i64 152
  %7 = load i32, ptr %6, align 8, !tbaa !37
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds i8, ptr %1, i64 156
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = icmp eq i32 %10, 0
  br i1 %8, label %12, label %17

12:                                               ; preds = %5
  br i1 %11, label %38, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr @simplified_flag_intra, align 8, !tbaa !10
  %15 = load i8, ptr %14, align 1, !tbaa !36
  %16 = zext i8 %15 to i32
  br label %38

17:                                               ; preds = %5
  %18 = load ptr, ptr @simplified_flag_intra, align 8, !tbaa !10
  %19 = ashr i32 %7, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, ptr %18, i64 %20
  br i1 %11, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %21, i64 -1
  %24 = load i8, ptr %23, align 1, !tbaa !36
  %25 = zext i8 %24 to i32
  br label %38

26:                                               ; preds = %17
  %27 = load i8, ptr %21, align 1, !tbaa !36
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %21, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !36
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %21, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !36
  %36 = icmp ne i8 %35, 0
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %26, %29, %33, %12, %13, %22
  %39 = phi i32 [ %25, %22 ], [ %16, %13 ], [ 0, %12 ], [ 1, %29 ], [ 1, %26 ], [ %37, %33 ]
  store i32 %39, ptr @simplified_flag_intra_SAD, align 4, !tbaa !18
  br label %40

40:                                               ; preds = %38, %0
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @simplified_skip_intrabk_SAD(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #9 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp sgt i32 %4, 0
  %6 = add i32 %0, -9
  br i1 %5, label %7, label %17

7:                                                ; preds = %2
  %8 = icmp ult i32 %6, 2
  %9 = zext i1 %8 to i8
  %10 = load ptr, ptr @simplified_flag_intra, align 8, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %3, i64 152
  %12 = load i32, ptr %11, align 8, !tbaa !37
  %13 = ashr i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %10, i64 %14
  store i8 %9, ptr %15, align 1, !tbaa !36
  %16 = load ptr, ptr @img, align 8, !tbaa !10
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi ptr [ %16, %7 ], [ %3, %2 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 24
  %20 = load i32, ptr %19, align 8, !tbaa !24
  %21 = icmp ne i32 %20, 2
  %22 = icmp ult i32 %6, 2
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %124

24:                                               ; preds = %17
  %25 = load ptr, ptr @simplified_fastme_l0_cost, align 8, !tbaa !10
  %26 = load ptr, ptr @simplified_fastme_l1_cost, align 8, !tbaa !10
  %27 = getelementptr inbounds i8, ptr %25, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = getelementptr inbounds i8, ptr %26, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  %31 = getelementptr inbounds i8, ptr %25, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  %33 = getelementptr inbounds i8, ptr %26, i64 16
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  %35 = getelementptr inbounds i8, ptr %25, i64 24
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  %37 = getelementptr inbounds i8, ptr %26, i64 24
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  %39 = getelementptr inbounds i8, ptr %25, i64 32
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = getelementptr inbounds i8, ptr %26, i64 32
  %42 = load ptr, ptr %41, align 8, !tbaa !10
  %43 = getelementptr inbounds i8, ptr %25, i64 40
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = getelementptr inbounds i8, ptr %26, i64 40
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = getelementptr inbounds i8, ptr %25, i64 48
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = getelementptr inbounds i8, ptr %26, i64 48
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  %51 = getelementptr inbounds i8, ptr %25, i64 56
  %52 = load ptr, ptr %51, align 8, !tbaa !10
  %53 = getelementptr inbounds i8, ptr %26, i64 56
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  %55 = getelementptr inbounds i8, ptr %25, i64 64
  %56 = load ptr, ptr %55, align 8, !tbaa !10
  %57 = getelementptr inbounds i8, ptr %26, i64 64
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = load ptr, ptr %25, align 8, !tbaa !10
  %60 = load ptr, ptr %26, align 8, !tbaa !10
  br label %61

61:                                               ; preds = %24, %121
  %62 = phi i64 [ 0, %24 ], [ %122, %121 ]
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ 0, %61 ], [ %119, %63 ]
  %65 = getelementptr inbounds ptr, ptr %59, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  %67 = getelementptr inbounds i32, ptr %66, i64 %62
  store i32 0, ptr %67, align 4, !tbaa !18
  %68 = getelementptr inbounds ptr, ptr %60, i64 %64
  %69 = load ptr, ptr %68, align 8, !tbaa !10
  %70 = getelementptr inbounds i32, ptr %69, i64 %62
  store i32 0, ptr %70, align 4, !tbaa !18
  %71 = getelementptr inbounds ptr, ptr %28, i64 %64
  %72 = load ptr, ptr %71, align 8, !tbaa !10
  %73 = getelementptr inbounds i32, ptr %72, i64 %62
  store i32 0, ptr %73, align 4, !tbaa !18
  %74 = getelementptr inbounds ptr, ptr %30, i64 %64
  %75 = load ptr, ptr %74, align 8, !tbaa !10
  %76 = getelementptr inbounds i32, ptr %75, i64 %62
  store i32 0, ptr %76, align 4, !tbaa !18
  %77 = getelementptr inbounds ptr, ptr %32, i64 %64
  %78 = load ptr, ptr %77, align 8, !tbaa !10
  %79 = getelementptr inbounds i32, ptr %78, i64 %62
  store i32 0, ptr %79, align 4, !tbaa !18
  %80 = getelementptr inbounds ptr, ptr %34, i64 %64
  %81 = load ptr, ptr %80, align 8, !tbaa !10
  %82 = getelementptr inbounds i32, ptr %81, i64 %62
  store i32 0, ptr %82, align 4, !tbaa !18
  %83 = getelementptr inbounds ptr, ptr %36, i64 %64
  %84 = load ptr, ptr %83, align 8, !tbaa !10
  %85 = getelementptr inbounds i32, ptr %84, i64 %62
  store i32 0, ptr %85, align 4, !tbaa !18
  %86 = getelementptr inbounds ptr, ptr %38, i64 %64
  %87 = load ptr, ptr %86, align 8, !tbaa !10
  %88 = getelementptr inbounds i32, ptr %87, i64 %62
  store i32 0, ptr %88, align 4, !tbaa !18
  %89 = getelementptr inbounds ptr, ptr %40, i64 %64
  %90 = load ptr, ptr %89, align 8, !tbaa !10
  %91 = getelementptr inbounds i32, ptr %90, i64 %62
  store i32 0, ptr %91, align 4, !tbaa !18
  %92 = getelementptr inbounds ptr, ptr %42, i64 %64
  %93 = load ptr, ptr %92, align 8, !tbaa !10
  %94 = getelementptr inbounds i32, ptr %93, i64 %62
  store i32 0, ptr %94, align 4, !tbaa !18
  %95 = getelementptr inbounds ptr, ptr %44, i64 %64
  %96 = load ptr, ptr %95, align 8, !tbaa !10
  %97 = getelementptr inbounds i32, ptr %96, i64 %62
  store i32 0, ptr %97, align 4, !tbaa !18
  %98 = getelementptr inbounds ptr, ptr %46, i64 %64
  %99 = load ptr, ptr %98, align 8, !tbaa !10
  %100 = getelementptr inbounds i32, ptr %99, i64 %62
  store i32 0, ptr %100, align 4, !tbaa !18
  %101 = getelementptr inbounds ptr, ptr %48, i64 %64
  %102 = load ptr, ptr %101, align 8, !tbaa !10
  %103 = getelementptr inbounds i32, ptr %102, i64 %62
  store i32 0, ptr %103, align 4, !tbaa !18
  %104 = getelementptr inbounds ptr, ptr %50, i64 %64
  %105 = load ptr, ptr %104, align 8, !tbaa !10
  %106 = getelementptr inbounds i32, ptr %105, i64 %62
  store i32 0, ptr %106, align 4, !tbaa !18
  %107 = getelementptr inbounds ptr, ptr %52, i64 %64
  %108 = load ptr, ptr %107, align 8, !tbaa !10
  %109 = getelementptr inbounds i32, ptr %108, i64 %62
  store i32 0, ptr %109, align 4, !tbaa !18
  %110 = getelementptr inbounds ptr, ptr %54, i64 %64
  %111 = load ptr, ptr %110, align 8, !tbaa !10
  %112 = getelementptr inbounds i32, ptr %111, i64 %62
  store i32 0, ptr %112, align 4, !tbaa !18
  %113 = getelementptr inbounds ptr, ptr %56, i64 %64
  %114 = load ptr, ptr %113, align 8, !tbaa !10
  %115 = getelementptr inbounds i32, ptr %114, i64 %62
  store i32 0, ptr %115, align 4, !tbaa !18
  %116 = getelementptr inbounds ptr, ptr %58, i64 %64
  %117 = load ptr, ptr %116, align 8, !tbaa !10
  %118 = getelementptr inbounds i32, ptr %117, i64 %62
  store i32 0, ptr %118, align 4, !tbaa !18
  %119 = add nuw nsw i64 %64, 1
  %120 = icmp eq i64 %119, 4
  br i1 %120, label %121, label %63

121:                                              ; preds = %63
  %122 = add nuw nsw i64 %62, 1
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %124, label %61

124:                                              ; preds = %121, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @simplified_setup_FME(i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, ptr nocapture noundef readonly %5) local_unnamed_addr #8 {
  %7 = icmp sgt i32 %4, 6
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = icmp sgt i32 %4, 4
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %4, 4
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = icmp sgt i32 %4, 1
  br i1 %13, label %14, label %58

14:                                               ; preds = %12, %10, %8, %6
  %15 = phi i64 [ 40, %6 ], [ 32, %8 ], [ 16, %10 ], [ 8, %12 ]
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds ptr, ptr %5, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !10
  %25 = sext i16 %0 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !10
  %28 = getelementptr inbounds i8, ptr %27, i64 %15
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  %30 = load i16, ptr %29, align 2, !tbaa !6
  store i16 %30, ptr @simplified_pred_MV_uplayer_X, align 2, !tbaa !6
  %31 = getelementptr inbounds i8, ptr %29, i64 2
  %32 = load i16, ptr %31, align 2, !tbaa !6
  store i16 %32, ptr @simplified_pred_MV_uplayer_Y, align 2, !tbaa !6
  %33 = icmp eq i32 %1, 1
  %34 = load ptr, ptr @img, align 8, !tbaa !10
  %35 = getelementptr inbounds i8, ptr %34, i64 156
  %36 = load i32, ptr %35, align 4, !tbaa !38
  %37 = ashr i32 %36, 2
  %38 = add nsw i32 %37, %2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %34, i64 152
  %41 = load i32, ptr %40, align 8, !tbaa !37
  %42 = ashr i32 %41, 2
  %43 = add nsw i32 %42, %3
  %44 = sext i32 %43 to i64
  %45 = load ptr, ptr @simplified_fastme_l1_cost, align 8
  %46 = load ptr, ptr @simplified_fastme_l0_cost, align 8
  %47 = select i1 %33, ptr %45, ptr %46
  %48 = getelementptr inbounds i8, ptr %47, i64 %15
  %49 = load ptr, ptr %48, align 8, !tbaa !10
  %50 = getelementptr inbounds ptr, ptr %49, i64 %39
  %51 = load ptr, ptr %50, align 8, !tbaa !10
  %52 = getelementptr inbounds i32, ptr %51, i64 %44
  %53 = load i32, ptr %52, align 4, !tbaa !18
  %54 = sdiv i32 %53, 2
  %55 = load i32, ptr @simplified_flag_intra_SAD, align 4, !tbaa !18
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 %54, i32 0
  store i32 %57, ptr @simplified_pred_SAD_uplayer, align 4, !tbaa !18
  br label %58

58:                                               ; preds = %12, %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !14, i64 52}
!13 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !15, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !11, i64 104, !11, i64 112, !14, i64 120, !11, i64 128, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !14, i64 152, !14, i64 156, !14, i64 160, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !11, i64 14136, !11, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !11, i64 31560, !11, i64 31568, !11, i64 31576, !8, i64 31584, !11, i64 89184, !11, i64 89192, !14, i64 89200, !14, i64 89204, !14, i64 89208, !14, i64 89212, !8, i64 89216, !14, i64 89280, !14, i64 89284, !14, i64 89288, !14, i64 89292, !14, i64 89296, !16, i64 89304, !14, i64 89312, !14, i64 89316, !14, i64 89320, !14, i64 89324, !11, i64 89328, !11, i64 89336, !11, i64 89344, !11, i64 89352, !8, i64 89360, !14, i64 89392, !14, i64 89396, !14, i64 89400, !14, i64 89404, !14, i64 89408, !14, i64 89412, !14, i64 89416, !14, i64 89420, !8, i64 89424, !14, i64 90192, !14, i64 90196, !14, i64 90200, !14, i64 90204, !14, i64 90208, !14, i64 90212, !14, i64 90216, !14, i64 90220, !14, i64 90224, !14, i64 90228, !14, i64 90232, !14, i64 90236, !14, i64 90240, !8, i64 90244, !14, i64 90248, !14, i64 90252, !8, i64 90256, !14, i64 90264, !14, i64 90268, !14, i64 90272, !14, i64 90276, !14, i64 90280, !14, i64 90284, !14, i64 90288, !14, i64 90292, !14, i64 90296, !14, i64 90300, !14, i64 90304, !14, i64 90308, !14, i64 90312, !14, i64 90316, !14, i64 90320, !14, i64 90324, !14, i64 90328, !11, i64 90336, !14, i64 90344, !14, i64 90348, !14, i64 90352, !14, i64 90356, !14, i64 90360, !16, i64 90368, !14, i64 90376, !14, i64 90380, !14, i64 90384, !14, i64 90388, !14, i64 90392, !14, i64 90396, !14, i64 90400, !11, i64 90408, !14, i64 90416, !14, i64 90420, !14, i64 90424, !14, i64 90428, !14, i64 90432, !14, i64 90436, !14, i64 90440, !14, i64 90444, !14, i64 90448, !14, i64 90452, !14, i64 90456, !14, i64 90460, !14, i64 90464, !14, i64 90468, !14, i64 90472, !14, i64 90476, !14, i64 90480, !14, i64 90484, !14, i64 90488, !14, i64 90492, !14, i64 90496, !14, i64 90500, !11, i64 90504, !11, i64 90512, !11, i64 90520, !14, i64 90528, !14, i64 90532, !14, i64 90536, !14, i64 90540, !14, i64 90544, !14, i64 90548, !14, i64 90552, !14, i64 90556, !14, i64 90560, !8, i64 90564, !14, i64 90572, !14, i64 90576, !14, i64 90580, !7, i64 90584, !14, i64 90588, !14, i64 90592}
!14 = !{!"int", !8, i64 0}
!15 = !{!"float", !8, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{!13, !14, i64 60}
!18 = !{!14, !14, i64 0}
!19 = !{!20, !14, i64 6392}
!20 = !{!"storable_picture", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !14, i64 6360, !14, i64 6364, !14, i64 6368, !14, i64 6372, !14, i64 6376, !14, i64 6380, !14, i64 6384, !14, i64 6388, !14, i64 6392, !14, i64 6396, !14, i64 6400, !14, i64 6404, !14, i64 6408, !14, i64 6412, !14, i64 6416, !11, i64 6424, !11, i64 6432, !11, i64 6440, !11, i64 6448, !11, i64 6456, !11, i64 6464, !11, i64 6472, !11, i64 6480, !11, i64 6488, !11, i64 6496, !11, i64 6504, !11, i64 6512, !11, i64 6520, !11, i64 6528, !11, i64 6536, !11, i64 6544, !14, i64 6552, !14, i64 6556, !14, i64 6560, !14, i64 6564, !14, i64 6568, !14, i64 6572, !14, i64 6576}
!21 = !{!20, !14, i64 6396}
!22 = !{!23, !14, i64 192}
!23 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !8, i64 24, !14, i64 56, !14, i64 60, !14, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !14, i64 164, !14, i64 168, !14, i64 172, !11, i64 176, !14, i64 184, !14, i64 188, !14, i64 192, !14, i64 196, !14, i64 200, !14, i64 204, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232}
!24 = !{!13, !14, i64 24}
!25 = !{!23, !14, i64 196}
!26 = !{!27, !14, i64 1912}
!27 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !8, i64 84, !8, i64 148, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !14, i64 1228, !14, i64 1232, !14, i64 1236, !14, i64 1240, !14, i64 1244, !14, i64 1248, !14, i64 1252, !14, i64 1256, !14, i64 1260, !14, i64 1264, !14, i64 1268, !14, i64 1272, !14, i64 1276, !14, i64 1280, !14, i64 1284, !14, i64 1288, !14, i64 1292, !14, i64 1296, !14, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !14, i64 1904, !14, i64 1908, !14, i64 1912, !14, i64 1916, !14, i64 1920, !14, i64 1924, !14, i64 1928, !14, i64 1932, !14, i64 1936, !14, i64 1940, !14, i64 1944, !14, i64 1948, !8, i64 1952, !14, i64 2976, !14, i64 2980, !14, i64 2984, !14, i64 2988, !14, i64 2992, !14, i64 2996, !14, i64 3000, !14, i64 3004, !14, i64 3008, !14, i64 3012, !14, i64 3016, !14, i64 3020, !14, i64 3024, !14, i64 3028, !14, i64 3032, !14, i64 3036, !14, i64 3040, !14, i64 3044, !14, i64 3048, !14, i64 3052, !16, i64 3056, !14, i64 3064, !14, i64 3068, !14, i64 3072, !14, i64 3076, !14, i64 3080, !14, i64 3084, !14, i64 3088, !14, i64 3092, !14, i64 3096, !14, i64 3100, !14, i64 3104, !14, i64 3108, !14, i64 3112, !14, i64 3116, !14, i64 3120, !14, i64 3124, !14, i64 3128, !14, i64 3132, !14, i64 3136, !14, i64 3140, !14, i64 3144, !14, i64 3148, !8, i64 3152, !8, i64 3352, !14, i64 3552, !14, i64 3556, !14, i64 3560, !14, i64 3564, !14, i64 3568, !14, i64 3572, !14, i64 3576, !14, i64 3580, !14, i64 3584, !14, i64 3588, !14, i64 3592, !14, i64 3596, !14, i64 3600, !14, i64 3604, !14, i64 3608, !14, i64 3612, !14, i64 3616, !14, i64 3620, !8, i64 3624, !14, i64 3824, !14, i64 3828, !11, i64 3832, !11, i64 3840, !11, i64 3848, !11, i64 3856, !14, i64 3864, !14, i64 3868, !14, i64 3872, !14, i64 3876, !14, i64 3880, !14, i64 3884, !14, i64 3888, !14, i64 3892, !14, i64 3896, !14, i64 3900, !14, i64 3904, !14, i64 3908, !14, i64 3912, !14, i64 3916, !14, i64 3920, !14, i64 3924, !14, i64 3928, !8, i64 3932, !14, i64 3964, !14, i64 3968, !14, i64 3972, !14, i64 3976, !14, i64 3980, !14, i64 3984, !14, i64 3988, !14, i64 3992, !14, i64 3996, !14, i64 4000, !14, i64 4004, !8, i64 4008, !8, i64 4056, !14, i64 4256, !14, i64 4260, !14, i64 4264, !14, i64 4268, !8, i64 4272, !14, i64 4312, !14, i64 4316, !14, i64 4320, !14, i64 4324}
!28 = !{ptr @FastLine4X, ptr @UMVLine4X}
!29 = !{!27, !14, i64 24}
!30 = !{!13, !14, i64 90220}
!31 = !{!13, !11, i64 31576}
!32 = !{!13, !14, i64 12}
!33 = !{!34, !14, i64 424}
!34 = !{!"macroblock", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !8, i64 20, !11, i64 56, !11, i64 64, !14, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !14, i64 364, !35, i64 368, !8, i64 376, !8, i64 392, !35, i64 408, !14, i64 416, !14, i64 420, !14, i64 424, !14, i64 428, !14, i64 432, !14, i64 436, !14, i64 440, !14, i64 444, !14, i64 448, !14, i64 452, !14, i64 456, !14, i64 460, !14, i64 464, !14, i64 468, !14, i64 472, !7, i64 476, !16, i64 480, !14, i64 488, !14, i64 492, !14, i64 496, !14, i64 500, !14, i64 504, !14, i64 508, !14, i64 512, !14, i64 516, !14, i64 520}
!35 = !{!"long long", !8, i64 0}
!36 = !{!8, !8, i64 0}
!37 = !{!13, !14, i64 152}
!38 = !{!13, !14, i64 156}
!39 = !{!13, !14, i64 0}
