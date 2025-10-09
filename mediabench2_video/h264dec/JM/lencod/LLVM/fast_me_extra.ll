; ModuleID = 'src/fast_me.c'
source_filename = "src/fast_me.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AlphaSec = dso_local local_unnamed_addr global [8 x float] zeroinitializer, align 4
@AlphaThird = dso_local local_unnamed_addr global [8 x float] zeroinitializer, align 4
@input = external dso_local local_unnamed_addr global ptr, align 8
@quant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 4
@Bsize = dso_local local_unnamed_addr global [8 x float] zeroinitializer, align 4
@img = external dso_local local_unnamed_addr global ptr, align 8
@flag_intra = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [24 x i8] c"get_mem_FME: flag_intra\00", align 1
@McostState = dso_local global ptr null, align 8
@fastme_ref_cost = dso_local global ptr null, align 8
@fastme_l0_cost = dso_local global ptr null, align 8
@fastme_l1_cost = dso_local global ptr null, align 8
@SearchState = dso_local global ptr null, align 8
@byte_abs = external dso_local local_unnamed_addr global ptr, align 8
@FastIntegerPelBlockMotionSearch.Hexagon_x = internal unnamed_addr constant [6 x i32] [i32 2, i32 1, i32 -1, i32 -2, i32 -1, i32 1], align 4
@FastIntegerPelBlockMotionSearch.Hexagon_y = internal unnamed_addr constant [6 x i32] [i32 0, i32 -2, i32 -2, i32 0, i32 2, i32 2], align 4
@FastIntegerPelBlockMotionSearch.Big_Hexagon_x = internal unnamed_addr constant [16 x i32] [i32 0, i32 -2, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -2, i32 0, i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 2], align 4
@FastIntegerPelBlockMotionSearch.Big_Hexagon_y = internal unnamed_addr constant [16 x i32] [i32 4, i32 3, i32 2, i32 1, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3], align 4
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@listX = external dso_local local_unnamed_addr global [6 x ptr], align 8
@pred_SAD_ref = dso_local local_unnamed_addr global i32 0, align 4
@pred_SAD_space = dso_local local_unnamed_addr global i32 0, align 4
@pred_SAD_uplayer = dso_local local_unnamed_addr global i32 0, align 4
@mvbits = external dso_local local_unnamed_addr global ptr, align 8
@pred_MV_uplayer = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@pred_MV_ref = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@spiral_search_x = external dso_local local_unnamed_addr global ptr, align 8
@spiral_search_y = external dso_local local_unnamed_addr global ptr, align 8
@get_line = internal unnamed_addr global ptr null, align 8
@FastSubPelBlockMotionSearch.Diamond_x = internal unnamed_addr constant [4 x i32] [i32 -1, i32 0, i32 1, i32 0], align 4
@FastSubPelBlockMotionSearch.Diamond_y = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 4
@flag_intra_SAD = dso_local local_unnamed_addr global i32 0, align 4
@frame_ctr = external dso_local local_unnamed_addr global [5 x i32], align 4
@FME_blocktype = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @DefineThreshold() local_unnamed_addr #0 {
  store float 0x3F847AE140000000, ptr getelementptr inbounds (i8, ptr @AlphaSec, i64 4), align 4, !tbaa !6
  store float 0x3F847AE140000000, ptr getelementptr inbounds (i8, ptr @AlphaSec, i64 8), align 4, !tbaa !6
  store float 0x3F847AE140000000, ptr getelementptr inbounds (i8, ptr @AlphaSec, i64 12), align 4, !tbaa !6
  store float 0x3F947AE140000000, ptr getelementptr inbounds (i8, ptr @AlphaSec, i64 16), align 4, !tbaa !6
  store float 0x3F9EB851E0000000, ptr getelementptr inbounds (i8, ptr @AlphaSec, i64 20), align 4, !tbaa !6
  store float 0x3F9EB851E0000000, ptr getelementptr inbounds (i8, ptr @AlphaSec, i64 24), align 4, !tbaa !6
  store float 0x3FA47AE140000000, ptr getelementptr inbounds (i8, ptr @AlphaSec, i64 28), align 4, !tbaa !6
  store float 0x3FAEB851E0000000, ptr getelementptr inbounds (i8, ptr @AlphaThird, i64 4), align 4, !tbaa !6
  store float 0x3FB1EB8520000000, ptr getelementptr inbounds (i8, ptr @AlphaThird, i64 8), align 4, !tbaa !6
  store float 0x3FB1EB8520000000, ptr getelementptr inbounds (i8, ptr @AlphaThird, i64 12), align 4, !tbaa !6
  store float 0x3FB47AE140000000, ptr getelementptr inbounds (i8, ptr @AlphaThird, i64 16), align 4, !tbaa !6
  store float 0x3FBEB851E0000000, ptr getelementptr inbounds (i8, ptr @AlphaThird, i64 20), align 4, !tbaa !6
  store float 0x3FBC28F5C0000000, ptr getelementptr inbounds (i8, ptr @AlphaThird, i64 24), align 4, !tbaa !6
  store float 0x3FC3333340000000, ptr getelementptr inbounds (i8, ptr @AlphaThird, i64 28), align 4, !tbaa !6
  %1 = load ptr, ptr @input, align 8, !tbaa !10
  %2 = getelementptr inbounds i8, ptr %1, i64 16
  %3 = load i32, ptr %2, align 8, !tbaa !12
  %4 = freeze i32 %3
  %5 = sdiv i32 %4, 6
  %6 = mul i32 %5, 6
  %7 = sub i32 %4, %6
  %8 = add nsw i32 %5, 15
  %9 = shl nuw i32 1, %8
  %10 = sdiv i32 %9, -6
  %11 = add i32 %10, %9
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !16
  %15 = sdiv i32 %11, %14
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %16, 0x403670A3E0000000
  %18 = fmul float %17, 2.560000e+02
  store float %18, ptr getelementptr inbounds (i8, ptr @Bsize, i64 28), align 4, !tbaa !6
  %19 = fmul float %18, 4.000000e+00
  store float %19, ptr getelementptr inbounds (i8, ptr @Bsize, i64 24), align 4, !tbaa !6
  store float %19, ptr getelementptr inbounds (i8, ptr @Bsize, i64 20), align 4, !tbaa !6
  %20 = fmul float %19, 4.000000e+00
  store float %20, ptr getelementptr inbounds (i8, ptr @Bsize, i64 16), align 4, !tbaa !6
  %21 = fmul float %20, 4.000000e+00
  store float %21, ptr getelementptr inbounds (i8, ptr @Bsize, i64 12), align 4, !tbaa !6
  store float %21, ptr getelementptr inbounds (i8, ptr @Bsize, i64 8), align 4, !tbaa !6
  %22 = fmul float %21, 4.000000e+00
  store float %22, ptr getelementptr inbounds (i8, ptr @Bsize, i64 4), align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @DefineThresholdMB() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !10
  %2 = getelementptr inbounds i8, ptr %1, i64 16
  %3 = load i32, ptr %2, align 8, !tbaa !12
  %4 = freeze i32 %3
  %5 = sdiv i32 %4, 6
  %6 = mul i32 %5, 6
  %7 = sub i32 %4, %6
  %8 = add nsw i32 %5, 15
  %9 = shl nuw i32 1, %8
  %10 = sdiv i32 %9, -6
  %11 = add i32 %10, %9
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !16
  %15 = sdiv i32 %11, %14
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %16, 0x403670A3E0000000
  %18 = fmul float %17, 2.560000e+02
  store float %18, ptr getelementptr inbounds (i8, ptr @Bsize, i64 28), align 4, !tbaa !6
  %19 = fmul float %18, 4.000000e+00
  store float %19, ptr getelementptr inbounds (i8, ptr @Bsize, i64 24), align 4, !tbaa !6
  store float %19, ptr getelementptr inbounds (i8, ptr @Bsize, i64 20), align 4, !tbaa !6
  %20 = fmul float %19, 4.000000e+00
  store float %20, ptr getelementptr inbounds (i8, ptr @Bsize, i64 16), align 4, !tbaa !6
  %21 = fmul float %20, 4.000000e+00
  store float %21, ptr getelementptr inbounds (i8, ptr @Bsize, i64 12), align 4, !tbaa !6
  store float %21, ptr getelementptr inbounds (i8, ptr @Bsize, i64 8), align 4, !tbaa !6
  %22 = fmul float %21, 4.000000e+00
  store float %22, ptr getelementptr inbounds (i8, ptr @Bsize, i64 4), align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local signext i32 @get_mem_FME() local_unnamed_addr #2 {
  %1 = load ptr, ptr @img, align 8, !tbaa !10
  %2 = getelementptr inbounds i8, ptr %1, i64 52
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = ashr i32 %3, 4
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 1) #12
  store ptr %7, ptr @flag_intra, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #13
  br label %10

10:                                               ; preds = %9, %0
  %11 = load ptr, ptr @input, align 8, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %11, i64 32
  %13 = load i32, ptr %12, align 8, !tbaa !20
  %14 = shl nsw i32 %13, 1
  %15 = or disjoint i32 %14, 1
  %16 = tail call signext i32 @get_mem2D(ptr noundef nonnull @McostState, i32 noundef signext %15, i32 noundef signext %15) #13
  %17 = load ptr, ptr @img, align 8, !tbaa !10
  %18 = getelementptr inbounds i8, ptr %17, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !21
  %20 = tail call signext i32 @get_mem4Dint(ptr noundef nonnull @fastme_ref_cost, i32 noundef signext %19, i32 noundef signext 9, i32 noundef signext 4, i32 noundef signext 4) #13
  %21 = add nsw i32 %20, %16
  %22 = load ptr, ptr @img, align 8, !tbaa !10
  %23 = getelementptr inbounds i8, ptr %22, i64 60
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = sdiv i32 %24, 4
  %26 = getelementptr inbounds i8, ptr %22, i64 52
  %27 = load i32, ptr %26, align 4, !tbaa !17
  %28 = sdiv i32 %27, 4
  %29 = tail call signext i32 @get_mem3Dint(ptr noundef nonnull @fastme_l0_cost, i32 noundef signext 9, i32 noundef signext %25, i32 noundef signext %28) #13
  %30 = add nsw i32 %21, %29
  %31 = load ptr, ptr @img, align 8, !tbaa !10
  %32 = getelementptr inbounds i8, ptr %31, i64 60
  %33 = load i32, ptr %32, align 4, !tbaa !22
  %34 = sdiv i32 %33, 4
  %35 = getelementptr inbounds i8, ptr %31, i64 52
  %36 = load i32, ptr %35, align 4, !tbaa !17
  %37 = sdiv i32 %36, 4
  %38 = tail call signext i32 @get_mem3Dint(ptr noundef nonnull @fastme_l1_cost, i32 noundef signext 9, i32 noundef signext %34, i32 noundef signext %37) #13
  %39 = add nsw i32 %30, %38
  %40 = tail call signext i32 @get_mem2D(ptr noundef nonnull @SearchState, i32 noundef signext 7, i32 noundef signext 7) #13
  %41 = add nsw i32 %39, %40
  ret i32 %41
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #4

declare dso_local signext i32 @get_mem2D(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local signext i32 @get_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local signext i32 @get_mem3Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @free_mem_FME() local_unnamed_addr #2 {
  %1 = load ptr, ptr @McostState, align 8, !tbaa !10
  tail call void @free_mem2D(ptr noundef %1) #13
  %2 = load ptr, ptr @fastme_ref_cost, align 8, !tbaa !10
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 36
  %5 = load i32, ptr %4, align 4, !tbaa !21
  tail call void @free_mem4Dint(ptr noundef %2, i32 noundef signext %5, i32 noundef signext 9) #13
  %6 = load ptr, ptr @fastme_l0_cost, align 8, !tbaa !10
  tail call void @free_mem3Dint(ptr noundef %6, i32 noundef signext 9) #13
  %7 = load ptr, ptr @fastme_l1_cost, align 8, !tbaa !10
  tail call void @free_mem3Dint(ptr noundef %7, i32 noundef signext 9) #13
  %8 = load ptr, ptr @SearchState, align 8, !tbaa !10
  tail call void @free_mem2D(ptr noundef %8) #13
  %9 = load ptr, ptr @flag_intra, align 8, !tbaa !10
  tail call void @free(ptr noundef %9) #13
  ret void
}

declare dso_local void @free_mem2D(ptr noundef) local_unnamed_addr #4

declare dso_local void @free_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #4

declare dso_local void @free_mem3Dint(ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
define dso_local signext i32 @PartCalMad(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9) local_unnamed_addr #2 {
  %11 = load ptr, ptr @img, align 8, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %11, i64 90220
  %13 = load i32, ptr %12, align 4, !tbaa !23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %11, i64 31576
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = getelementptr inbounds i8, ptr %11, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !25
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %20, i32 19
  %22 = load i32, ptr %21, align 8, !tbaa !26
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds i8, ptr %11, i64 60
  %26 = load i32, ptr %25, align 4, !tbaa !22
  %27 = sdiv i32 %26, 2
  br label %31

28:                                               ; preds = %15, %10
  %29 = getelementptr inbounds i8, ptr %11, i64 60
  %30 = load i32, ptr %29, align 4, !tbaa !22
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %27, %24 ], [ %30, %28 ]
  %33 = icmp sgt i32 %3, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %31
  %35 = icmp sgt i32 %5, 0
  %36 = zext nneg i32 %3 to i64
  br label %37

37:                                               ; preds = %97, %34
  %38 = phi i64 [ 0, %34 ], [ %100, %97 ]
  %39 = phi i32 [ %6, %34 ], [ %98, %97 ]
  %40 = load ptr, ptr @img, align 8, !tbaa !10
  %41 = getelementptr inbounds i8, ptr %40, i64 52
  %42 = load i32, ptr %41, align 4, !tbaa !17
  %43 = trunc i64 %38 to i32
  %44 = add i32 %43, %9
  %45 = tail call ptr %2(i32 noundef signext %4, ptr noundef %0, i32 noundef signext %44, i32 noundef signext %8, i32 noundef signext %32, i32 noundef signext %42) #13
  br i1 %35, label %46, label %97

46:                                               ; preds = %37
  %47 = getelementptr inbounds ptr, ptr %1, i64 %38
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = load ptr, ptr @byte_abs, align 8, !tbaa !10
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi ptr [ %45, %46 ], [ %88, %50 ]
  %52 = phi ptr [ %48, %46 ], [ %85, %50 ]
  %53 = phi i32 [ %39, %46 ], [ %94, %50 ]
  %54 = phi i32 [ 0, %46 ], [ %95, %50 ]
  %55 = getelementptr inbounds i8, ptr %52, i64 2
  %56 = load i16, ptr %52, align 2, !tbaa !29
  %57 = zext i16 %56 to i64
  %58 = getelementptr inbounds i8, ptr %51, i64 2
  %59 = load i16, ptr %51, align 2, !tbaa !29
  %60 = zext i16 %59 to i64
  %61 = sub nsw i64 %57, %60
  %62 = getelementptr inbounds i32, ptr %49, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !16
  %64 = add i32 %63, %53
  %65 = getelementptr inbounds i8, ptr %52, i64 4
  %66 = load i16, ptr %55, align 2, !tbaa !29
  %67 = zext i16 %66 to i64
  %68 = getelementptr inbounds i8, ptr %51, i64 4
  %69 = load i16, ptr %58, align 2, !tbaa !29
  %70 = zext i16 %69 to i64
  %71 = sub nsw i64 %67, %70
  %72 = getelementptr inbounds i32, ptr %49, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !16
  %74 = add i32 %64, %73
  %75 = getelementptr inbounds i8, ptr %52, i64 6
  %76 = load i16, ptr %65, align 2, !tbaa !29
  %77 = zext i16 %76 to i64
  %78 = getelementptr inbounds i8, ptr %51, i64 6
  %79 = load i16, ptr %68, align 2, !tbaa !29
  %80 = zext i16 %79 to i64
  %81 = sub nsw i64 %77, %80
  %82 = getelementptr inbounds i32, ptr %49, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !16
  %84 = add i32 %74, %83
  %85 = getelementptr inbounds i8, ptr %52, i64 8
  %86 = load i16, ptr %75, align 2, !tbaa !29
  %87 = zext i16 %86 to i64
  %88 = getelementptr inbounds i8, ptr %51, i64 8
  %89 = load i16, ptr %78, align 2, !tbaa !29
  %90 = zext i16 %89 to i64
  %91 = sub nsw i64 %87, %90
  %92 = getelementptr inbounds i32, ptr %49, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !16
  %94 = add i32 %84, %93
  %95 = add nuw nsw i32 %54, 1
  %96 = icmp eq i32 %95, %5
  br i1 %96, label %97, label %50

97:                                               ; preds = %50, %37
  %98 = phi i32 [ %39, %37 ], [ %94, %50 ]
  %99 = icmp sge i32 %98, %7
  %100 = add nuw nsw i64 %38, 1
  %101 = icmp eq i64 %100, %36
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %103, label %37

103:                                              ; preds = %97, %31
  %104 = phi i32 [ %6, %31 ], [ %98, %97 ]
  ret i32 %104
}

; Function Attrs: nounwind
define dso_local signext i32 @FastIntegerPelBlockMotionSearch(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7, ptr nocapture noundef %8, ptr nocapture noundef %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12) local_unnamed_addr #2 {
  %14 = load ptr, ptr @img, align 8, !tbaa !10
  %15 = getelementptr inbounds i8, ptr %14, i64 90220
  %16 = load i32, ptr %15, align 4, !tbaa !23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %14, i64 31576
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds i8, ptr %14, i64 12
  %22 = load i32, ptr %21, align 4, !tbaa !25
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.macroblock, ptr %20, i64 %23, i32 19
  %25 = load i32, ptr %24, align 8, !tbaa !26
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = and i32 %22, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 2, i32 4
  br label %31

31:                                               ; preds = %13, %18, %27
  %32 = phi i32 [ %30, %27 ], [ 0, %18 ], [ 0, %13 ]
  %33 = load ptr, ptr @input, align 8, !tbaa !10
  %34 = getelementptr inbounds i8, ptr %33, i64 84
  %35 = sext i32 %5 to i64
  %36 = getelementptr inbounds [8 x [2 x i32]], ptr %34, i64 0, i64 %35
  %37 = getelementptr inbounds i8, ptr %36, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa !16
  %39 = load i32, ptr %36, align 4, !tbaa !16
  %40 = ashr i32 %39, 2
  %41 = shl i32 %3, 2
  %42 = sext i16 %6 to i32
  %43 = add nsw i32 %41, %42
  %44 = shl i32 %4, 2
  %45 = sext i16 %7 to i32
  %46 = add nsw i32 %44, %45
  %47 = load i16, ptr %8, align 2, !tbaa !29
  %48 = sext i16 %47 to i32
  %49 = add nsw i32 %48, %3
  %50 = load i16, ptr %9, align 2, !tbaa !29
  %51 = sext i16 %50 to i32
  %52 = add nsw i32 %51, %4
  br i1 %17, label %66, label %53

53:                                               ; preds = %31
  %54 = getelementptr inbounds i8, ptr %14, i64 31576
  %55 = load ptr, ptr %54, align 8, !tbaa !24
  %56 = getelementptr inbounds i8, ptr %14, i64 12
  %57 = load i32, ptr %56, align 4, !tbaa !25
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.macroblock, ptr %55, i64 %58, i32 19
  %60 = load i32, ptr %59, align 8, !tbaa !26
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds i8, ptr %14, i64 60
  %64 = load i32, ptr %63, align 4, !tbaa !22
  %65 = sdiv i32 %64, 2
  br label %69

66:                                               ; preds = %53, %31
  %67 = getelementptr inbounds i8, ptr %14, i64 60
  %68 = load i32, ptr %67, align 4, !tbaa !22
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i32 [ %65, %62 ], [ %68, %66 ]
  %71 = load ptr, ptr @active_pps, align 8, !tbaa !10
  %72 = getelementptr inbounds i8, ptr %71, i64 192
  %73 = load i32, ptr %72, align 8, !tbaa !30
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds i8, ptr %14, i64 24
  %77 = load i32, ptr %76, align 8, !tbaa !32
  switch i32 %77, label %78 [
    i32 0, label %86
    i32 3, label %86
  ]

78:                                               ; preds = %75, %69
  %79 = getelementptr inbounds i8, ptr %71, i64 196
  %80 = load i32, ptr %79, align 4, !tbaa !33
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %14, i64 24
  %84 = load i32, ptr %83, align 8, !tbaa !32
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %90

86:                                               ; preds = %75, %75, %82
  %87 = getelementptr inbounds i8, ptr %33, i64 1912
  %88 = load i32, ptr %87, align 8, !tbaa !34
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78, %86, %82
  br label %91

91:                                               ; preds = %86, %90
  %92 = phi i64 [ 6432, %90 ], [ 6440, %86 ]
  %93 = add nsw i32 %32, %2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !10
  %97 = sext i16 %1 to i64
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !10
  %100 = getelementptr inbounds i8, ptr %99, i64 %92
  %101 = load ptr, ptr %100, align 8, !tbaa !10
  %102 = icmp sgt i32 %49, %10
  br i1 %102, label %103, label %116

103:                                              ; preds = %91
  %104 = getelementptr inbounds i8, ptr %14, i64 52
  %105 = load i32, ptr %104, align 4, !tbaa !17
  %106 = xor i32 %10, -1
  %107 = sub i32 %106, %39
  %108 = add i32 %107, %105
  %109 = icmp slt i32 %49, %108
  %110 = icmp sgt i32 %52, %10
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = sub i32 %106, %38
  %114 = add i32 %113, %70
  %115 = icmp slt i32 %52, %114
  br i1 %115, label %117, label %116

116:                                              ; preds = %112, %103, %91
  br label %117

117:                                              ; preds = %112, %116
  %118 = phi ptr [ @UMVLineX, %116 ], [ @FastLineX, %112 ]
  %119 = load ptr, ptr @McostState, align 8, !tbaa !10
  %120 = load ptr, ptr %119, align 8, !tbaa !10
  %121 = getelementptr inbounds i8, ptr %33, i64 32
  %122 = load i32, ptr %121, align 8, !tbaa !20
  %123 = shl nsw i32 %122, 1
  %124 = or disjoint i32 %123, 1
  %125 = mul nsw i32 %124, %124
  %126 = zext nneg i32 %125 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %120, i8 0, i64 %126, i1 false)
  %127 = icmp eq i32 %2, 0
  %128 = icmp sgt i16 %1, 0
  %129 = and i1 %128, %127
  br i1 %129, label %130, label %135

130:                                              ; preds = %117
  %131 = load i32, ptr @pred_SAD_ref, align 4, !tbaa !16
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %159, label %133

133:                                              ; preds = %130
  %134 = mul nsw i32 %131, %131
  br label %147

135:                                              ; preds = %117
  %136 = icmp eq i32 %5, 1
  br i1 %136, label %137, label %142

137:                                              ; preds = %135
  %138 = load i32, ptr @pred_SAD_space, align 4, !tbaa !16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %159, label %140

140:                                              ; preds = %137
  %141 = mul nsw i32 %138, %138
  br label %147

142:                                              ; preds = %135
  %143 = load i32, ptr @pred_SAD_uplayer, align 4, !tbaa !16
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %142
  %146 = mul nsw i32 %143, %143
  br label %147

147:                                              ; preds = %133, %145, %140
  %148 = phi i32 [ %134, %133 ], [ %146, %145 ], [ %141, %140 ]
  %149 = getelementptr inbounds [8 x float], ptr @Bsize, i64 0, i64 %35
  %150 = load float, ptr %149, align 4, !tbaa !6
  %151 = uitofp nneg i32 %148 to float
  %152 = fdiv float %150, %151
  %153 = getelementptr inbounds [8 x float], ptr @AlphaSec, i64 0, i64 %35
  %154 = load float, ptr %153, align 4, !tbaa !6
  %155 = fsub float %152, %154
  %156 = getelementptr inbounds [8 x float], ptr @AlphaThird, i64 0, i64 %35
  %157 = load float, ptr %156, align 4, !tbaa !6
  %158 = fsub float %152, %157
  br label %159

159:                                              ; preds = %147, %142, %137, %130
  %160 = phi float [ 0.000000e+00, %130 ], [ 0.000000e+00, %137 ], [ 0.000000e+00, %142 ], [ %155, %147 ]
  %161 = phi float [ 0.000000e+00, %130 ], [ 0.000000e+00, %137 ], [ 0.000000e+00, %142 ], [ %158, %147 ]
  %162 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %163 = shl i32 %49, 2
  %164 = sub nsw i32 %163, %43
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %162, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !16
  %168 = shl i32 %52, 2
  %169 = sub nsw i32 %168, %46
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, ptr %162, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !16
  %173 = add nsw i32 %172, %167
  %174 = mul nsw i32 %173, %12
  %175 = ashr i32 %174, 16
  %176 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %175, i32 noundef signext %11, i32 noundef signext %49, i32 noundef signext %52)
  %177 = load ptr, ptr @McostState, align 8, !tbaa !10
  %178 = sext i32 %10 to i64
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !10
  %181 = getelementptr inbounds i8, ptr %180, i64 %178
  store i8 1, ptr %181, align 1, !tbaa !35
  %182 = icmp slt i32 %176, %11
  %183 = select i1 %182, i32 %49, i32 0
  %184 = select i1 %182, i32 %52, i32 0
  %185 = tail call i32 @llvm.smin.i32(i32 %176, i32 %11)
  br label %186

186:                                              ; preds = %159, %237
  %187 = phi i64 [ 0, %159 ], [ %241, %237 ]
  %188 = phi i32 [ %185, %159 ], [ %240, %237 ]
  %189 = phi i32 [ %184, %159 ], [ %239, %237 ]
  %190 = phi i32 [ %183, %159 ], [ %238, %237 ]
  %191 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %187
  %192 = load i32, ptr %191, align 4, !tbaa !16
  %193 = add nsw i32 %192, %183
  %194 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %187
  %195 = load i32, ptr %194, align 4, !tbaa !16
  %196 = add nsw i32 %195, %184
  %197 = sub nsw i32 %193, %49
  %198 = tail call i32 @llvm.abs.i32(i32 %197, i1 true)
  %199 = icmp sgt i32 %198, %10
  br i1 %199, label %237, label %200

200:                                              ; preds = %186
  %201 = sub nsw i32 %196, %52
  %202 = tail call i32 @llvm.abs.i32(i32 %201, i1 true)
  %203 = icmp ugt i32 %202, %10
  br i1 %203, label %237, label %204

204:                                              ; preds = %200
  %205 = load ptr, ptr @McostState, align 8, !tbaa !10
  %206 = add nsw i32 %201, %10
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %205, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !10
  %210 = add nsw i32 %197, %10
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %209, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !35
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %204
  %216 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %217 = shl i32 %193, 2
  %218 = sub nsw i32 %217, %43
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, ptr %216, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !16
  %222 = shl i32 %196, 2
  %223 = sub nsw i32 %222, %46
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, ptr %216, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !16
  %227 = add nsw i32 %226, %221
  %228 = mul nsw i32 %227, %12
  %229 = ashr i32 %228, 16
  %230 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %229, i32 noundef signext %188, i32 noundef signext %193, i32 noundef signext %196)
  %231 = load ptr, ptr @McostState, align 8, !tbaa !10
  %232 = getelementptr inbounds ptr, ptr %231, i64 %207
  %233 = load ptr, ptr %232, align 8, !tbaa !10
  %234 = getelementptr inbounds i8, ptr %233, i64 %211
  store i8 1, ptr %234, align 1, !tbaa !35
  %235 = icmp slt i32 %230, %188
  br i1 %235, label %236, label %237

236:                                              ; preds = %215
  br label %237

237:                                              ; preds = %186, %200, %215, %236, %204
  %238 = phi i32 [ %190, %204 ], [ %193, %236 ], [ %190, %215 ], [ %190, %200 ], [ %190, %186 ]
  %239 = phi i32 [ %189, %204 ], [ %196, %236 ], [ %189, %215 ], [ %189, %200 ], [ %189, %186 ]
  %240 = phi i32 [ %188, %204 ], [ %230, %236 ], [ %188, %215 ], [ %188, %200 ], [ %188, %186 ]
  %241 = add nuw nsw i64 %187, 1
  %242 = icmp eq i64 %241, 4
  br i1 %242, label %243, label %186

243:                                              ; preds = %237
  %244 = icmp eq i16 %47, 0
  %245 = icmp eq i16 %50, 0
  %246 = select i1 %244, i1 %245, i1 false
  br i1 %246, label %345, label %247

247:                                              ; preds = %243
  %248 = tail call i32 @llvm.abs.i32(i32 %48, i1 true)
  %249 = icmp sgt i32 %248, %10
  %250 = tail call i32 @llvm.abs.i32(i32 %51, i1 true)
  %251 = icmp sgt i32 %250, %10
  %252 = select i1 %249, i1 true, i1 %251
  br i1 %252, label %284, label %253

253:                                              ; preds = %247
  %254 = load ptr, ptr @McostState, align 8, !tbaa !10
  %255 = sub nsw i32 %10, %51
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds ptr, ptr %254, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !10
  %259 = sub nsw i32 %10, %48
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, ptr %258, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !35
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %284

264:                                              ; preds = %253
  %265 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %266 = sub nsw i32 0, %42
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, ptr %265, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !16
  %270 = sub nsw i32 0, %45
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, ptr %265, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !16
  %274 = add nsw i32 %273, %269
  %275 = mul nsw i32 %274, %12
  %276 = ashr i32 %275, 16
  %277 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %276, i32 noundef signext %240, i32 noundef signext %3, i32 noundef signext %4)
  %278 = load ptr, ptr @McostState, align 8, !tbaa !10
  %279 = getelementptr inbounds ptr, ptr %278, i64 %256
  %280 = load ptr, ptr %279, align 8, !tbaa !10
  %281 = getelementptr inbounds i8, ptr %280, i64 %260
  store i8 1, ptr %281, align 1, !tbaa !35
  %282 = icmp slt i32 %277, %240
  br i1 %282, label %283, label %284

283:                                              ; preds = %264
  br label %284

284:                                              ; preds = %253, %283, %264, %247
  %285 = phi i32 [ %238, %253 ], [ %3, %283 ], [ %238, %264 ], [ %238, %247 ]
  %286 = phi i32 [ %239, %253 ], [ %4, %283 ], [ %239, %264 ], [ %239, %247 ]
  %287 = phi i32 [ %240, %253 ], [ %277, %283 ], [ %240, %264 ], [ %240, %247 ]
  br label %288

288:                                              ; preds = %284, %339
  %289 = phi i64 [ 0, %284 ], [ %343, %339 ]
  %290 = phi i32 [ %287, %284 ], [ %342, %339 ]
  %291 = phi i32 [ %286, %284 ], [ %341, %339 ]
  %292 = phi i32 [ %285, %284 ], [ %340, %339 ]
  %293 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %289
  %294 = load i32, ptr %293, align 4, !tbaa !16
  %295 = add nsw i32 %294, %285
  %296 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %289
  %297 = load i32, ptr %296, align 4, !tbaa !16
  %298 = add nsw i32 %297, %286
  %299 = sub nsw i32 %295, %49
  %300 = tail call i32 @llvm.abs.i32(i32 %299, i1 true)
  %301 = icmp sgt i32 %300, %10
  br i1 %301, label %339, label %302

302:                                              ; preds = %288
  %303 = sub nsw i32 %298, %52
  %304 = tail call i32 @llvm.abs.i32(i32 %303, i1 true)
  %305 = icmp ugt i32 %304, %10
  br i1 %305, label %339, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr @McostState, align 8, !tbaa !10
  %308 = add nsw i32 %303, %10
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds ptr, ptr %307, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !10
  %312 = add nsw i32 %299, %10
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, ptr %311, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !35
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %339

317:                                              ; preds = %306
  %318 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %319 = shl i32 %295, 2
  %320 = sub nsw i32 %319, %43
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, ptr %318, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !16
  %324 = shl i32 %298, 2
  %325 = sub nsw i32 %324, %46
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, ptr %318, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !16
  %329 = add nsw i32 %328, %323
  %330 = mul nsw i32 %329, %12
  %331 = ashr i32 %330, 16
  %332 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %331, i32 noundef signext %290, i32 noundef signext %295, i32 noundef signext %298)
  %333 = load ptr, ptr @McostState, align 8, !tbaa !10
  %334 = getelementptr inbounds ptr, ptr %333, i64 %309
  %335 = load ptr, ptr %334, align 8, !tbaa !10
  %336 = getelementptr inbounds i8, ptr %335, i64 %313
  store i8 1, ptr %336, align 1, !tbaa !35
  %337 = icmp slt i32 %332, %290
  br i1 %337, label %338, label %339

338:                                              ; preds = %317
  br label %339

339:                                              ; preds = %288, %302, %317, %338, %306
  %340 = phi i32 [ %292, %306 ], [ %295, %338 ], [ %292, %317 ], [ %292, %302 ], [ %292, %288 ]
  %341 = phi i32 [ %291, %306 ], [ %298, %338 ], [ %291, %317 ], [ %291, %302 ], [ %291, %288 ]
  %342 = phi i32 [ %290, %306 ], [ %332, %338 ], [ %290, %317 ], [ %290, %302 ], [ %290, %288 ]
  %343 = add nuw nsw i64 %289, 1
  %344 = icmp eq i64 %343, 4
  br i1 %344, label %345, label %288

345:                                              ; preds = %339, %243
  %346 = phi i32 [ %238, %243 ], [ %340, %339 ]
  %347 = phi i32 [ %239, %243 ], [ %341, %339 ]
  %348 = phi i32 [ %240, %243 ], [ %342, %339 ]
  %349 = icmp sgt i32 %5, 1
  br i1 %349, label %350, label %410

350:                                              ; preds = %345
  %351 = load i32, ptr @pred_MV_uplayer, align 4, !tbaa !16
  %352 = sdiv i32 %351, 4
  %353 = add nsw i32 %352, %3
  %354 = load i32, ptr getelementptr inbounds (i8, ptr @pred_MV_uplayer, i64 4), align 4, !tbaa !16
  %355 = sdiv i32 %354, 4
  %356 = add nsw i32 %355, %4
  %357 = sub nsw i32 %352, %48
  %358 = tail call i32 @llvm.abs.i32(i32 %357, i1 true)
  %359 = icmp sgt i32 %358, %10
  br i1 %359, label %397, label %360

360:                                              ; preds = %350
  %361 = sub nsw i32 %355, %51
  %362 = tail call i32 @llvm.abs.i32(i32 %361, i1 true)
  %363 = icmp ugt i32 %362, %10
  br i1 %363, label %397, label %364

364:                                              ; preds = %360
  %365 = load ptr, ptr @McostState, align 8, !tbaa !10
  %366 = add nsw i32 %361, %10
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds ptr, ptr %365, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !10
  %370 = add nsw i32 %357, %10
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, ptr %369, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !35
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %397

375:                                              ; preds = %364
  %376 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %377 = shl i32 %353, 2
  %378 = sub nsw i32 %377, %43
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, ptr %376, i64 %379
  %381 = load i32, ptr %380, align 4, !tbaa !16
  %382 = shl i32 %356, 2
  %383 = sub nsw i32 %382, %46
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, ptr %376, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !16
  %387 = add nsw i32 %386, %381
  %388 = mul nsw i32 %387, %12
  %389 = ashr i32 %388, 16
  %390 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %389, i32 noundef signext %348, i32 noundef signext %353, i32 noundef signext %356)
  %391 = load ptr, ptr @McostState, align 8, !tbaa !10
  %392 = getelementptr inbounds ptr, ptr %391, i64 %367
  %393 = load ptr, ptr %392, align 8, !tbaa !10
  %394 = getelementptr inbounds i8, ptr %393, i64 %371
  store i8 1, ptr %394, align 1, !tbaa !35
  %395 = icmp slt i32 %390, %348
  br i1 %395, label %396, label %397

396:                                              ; preds = %375
  br label %397

397:                                              ; preds = %364, %396, %375, %360, %350
  %398 = phi i32 [ %346, %364 ], [ %353, %396 ], [ %346, %375 ], [ %346, %360 ], [ %346, %350 ]
  %399 = phi i32 [ %347, %364 ], [ %356, %396 ], [ %347, %375 ], [ %347, %360 ], [ %347, %350 ]
  %400 = phi i32 [ %348, %364 ], [ %390, %396 ], [ %348, %375 ], [ %348, %360 ], [ %348, %350 ]
  %401 = load i32, ptr @pred_SAD_uplayer, align 4, !tbaa !16
  %402 = sub nsw i32 %400, %401
  %403 = sitofp i32 %402 to float
  %404 = sitofp i32 %401 to float
  %405 = fmul float %161, %404
  %406 = fcmp ogt float %405, %403
  br i1 %406, label %1079, label %407

407:                                              ; preds = %397
  %408 = fmul float %160, %404
  %409 = fcmp ogt float %408, %403
  br i1 %409, label %1003, label %410

410:                                              ; preds = %407, %345
  %411 = phi i32 [ %398, %407 ], [ %346, %345 ]
  %412 = phi i32 [ %399, %407 ], [ %347, %345 ]
  %413 = phi i32 [ %400, %407 ], [ %348, %345 ]
  %414 = load ptr, ptr @img, align 8, !tbaa !10
  %415 = getelementptr inbounds i8, ptr %414, i64 90264
  %416 = load i32, ptr %415, align 8, !tbaa !36
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %475, label %418

418:                                              ; preds = %410
  %419 = icmp sgt i16 %1, 1
  %420 = and i1 %419, %127
  br i1 %420, label %428, label %421

421:                                              ; preds = %418
  %422 = getelementptr inbounds i8, ptr %414, i64 24
  %423 = load i32, ptr %422, align 8, !tbaa !32
  %424 = icmp eq i32 %423, 1
  %425 = icmp ult i16 %1, 2
  %426 = and i1 %425, %424
  %427 = and i1 %127, %426
  br i1 %427, label %428, label %530

428:                                              ; preds = %421, %418
  %429 = load i32, ptr @pred_MV_ref, align 4, !tbaa !16
  %430 = sdiv i32 %429, 4
  %431 = add nsw i32 %430, %3
  %432 = load i32, ptr getelementptr inbounds (i8, ptr @pred_MV_ref, i64 4), align 4, !tbaa !16
  %433 = sdiv i32 %432, 4
  %434 = add nsw i32 %433, %4
  %435 = sub nsw i32 %430, %48
  %436 = tail call i32 @llvm.abs.i32(i32 %435, i1 true)
  %437 = icmp sgt i32 %436, %10
  br i1 %437, label %530, label %438

438:                                              ; preds = %428
  %439 = sub nsw i32 %433, %51
  %440 = tail call i32 @llvm.abs.i32(i32 %439, i1 true)
  %441 = icmp ugt i32 %440, %10
  br i1 %441, label %530, label %442

442:                                              ; preds = %438
  %443 = load ptr, ptr @McostState, align 8, !tbaa !10
  %444 = add nsw i32 %439, %10
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds ptr, ptr %443, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !10
  %448 = add nsw i32 %435, %10
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, ptr %447, i64 %449
  %451 = load i8, ptr %450, align 1, !tbaa !35
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %453, label %530

453:                                              ; preds = %442
  %454 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %455 = shl i32 %431, 2
  %456 = sub nsw i32 %455, %43
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, ptr %454, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !16
  %460 = shl i32 %434, 2
  %461 = sub nsw i32 %460, %46
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, ptr %454, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !16
  %465 = add nsw i32 %464, %459
  %466 = mul nsw i32 %465, %12
  %467 = ashr i32 %466, 16
  %468 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %467, i32 noundef signext %413, i32 noundef signext %431, i32 noundef signext %434)
  %469 = load ptr, ptr @McostState, align 8, !tbaa !10
  %470 = getelementptr inbounds ptr, ptr %469, i64 %445
  %471 = load ptr, ptr %470, align 8, !tbaa !10
  %472 = getelementptr inbounds i8, ptr %471, i64 %449
  store i8 1, ptr %472, align 1, !tbaa !35
  %473 = icmp slt i32 %468, %413
  br i1 %473, label %474, label %530

474:                                              ; preds = %453
  br label %530

475:                                              ; preds = %410
  br i1 %129, label %483, label %476

476:                                              ; preds = %475
  %477 = getelementptr inbounds i8, ptr %414, i64 24
  %478 = load i32, ptr %477, align 8, !tbaa !32
  %479 = icmp eq i32 %478, 1
  %480 = icmp eq i16 %1, 0
  %481 = and i1 %480, %479
  %482 = and i1 %127, %481
  br i1 %482, label %483, label %530

483:                                              ; preds = %476, %475
  %484 = load i32, ptr @pred_MV_ref, align 4, !tbaa !16
  %485 = sdiv i32 %484, 4
  %486 = add nsw i32 %485, %3
  %487 = load i32, ptr getelementptr inbounds (i8, ptr @pred_MV_ref, i64 4), align 4, !tbaa !16
  %488 = sdiv i32 %487, 4
  %489 = add nsw i32 %488, %4
  %490 = sub nsw i32 %485, %48
  %491 = tail call i32 @llvm.abs.i32(i32 %490, i1 true)
  %492 = icmp sgt i32 %491, %10
  br i1 %492, label %530, label %493

493:                                              ; preds = %483
  %494 = sub nsw i32 %488, %51
  %495 = tail call i32 @llvm.abs.i32(i32 %494, i1 true)
  %496 = icmp ugt i32 %495, %10
  br i1 %496, label %530, label %497

497:                                              ; preds = %493
  %498 = load ptr, ptr @McostState, align 8, !tbaa !10
  %499 = add nsw i32 %494, %10
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds ptr, ptr %498, i64 %500
  %502 = load ptr, ptr %501, align 8, !tbaa !10
  %503 = add nsw i32 %490, %10
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8, ptr %502, i64 %504
  %506 = load i8, ptr %505, align 1, !tbaa !35
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %508, label %530

508:                                              ; preds = %497
  %509 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %510 = shl i32 %486, 2
  %511 = sub nsw i32 %510, %43
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, ptr %509, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !16
  %515 = shl i32 %489, 2
  %516 = sub nsw i32 %515, %46
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, ptr %509, i64 %517
  %519 = load i32, ptr %518, align 4, !tbaa !16
  %520 = add nsw i32 %519, %514
  %521 = mul nsw i32 %520, %12
  %522 = ashr i32 %521, 16
  %523 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %522, i32 noundef signext %413, i32 noundef signext %486, i32 noundef signext %489)
  %524 = load ptr, ptr @McostState, align 8, !tbaa !10
  %525 = getelementptr inbounds ptr, ptr %524, i64 %500
  %526 = load ptr, ptr %525, align 8, !tbaa !10
  %527 = getelementptr inbounds i8, ptr %526, i64 %504
  store i8 1, ptr %527, align 1, !tbaa !35
  %528 = icmp slt i32 %523, %413
  br i1 %528, label %529, label %530

529:                                              ; preds = %508
  br label %530

530:                                              ; preds = %476, %497, %529, %508, %493, %483, %421, %442, %474, %453, %438, %428
  %531 = phi i32 [ %411, %442 ], [ %431, %474 ], [ %411, %453 ], [ %411, %438 ], [ %411, %428 ], [ %411, %421 ], [ %411, %497 ], [ %486, %529 ], [ %411, %508 ], [ %411, %493 ], [ %411, %483 ], [ %411, %476 ]
  %532 = phi i32 [ %412, %442 ], [ %434, %474 ], [ %412, %453 ], [ %412, %438 ], [ %412, %428 ], [ %412, %421 ], [ %412, %497 ], [ %489, %529 ], [ %412, %508 ], [ %412, %493 ], [ %412, %483 ], [ %412, %476 ]
  %533 = phi i32 [ %413, %442 ], [ %468, %474 ], [ %413, %453 ], [ %413, %438 ], [ %413, %428 ], [ %413, %421 ], [ %413, %497 ], [ %523, %529 ], [ %413, %508 ], [ %413, %493 ], [ %413, %483 ], [ %413, %476 ]
  br label %534

534:                                              ; preds = %530, %585
  %535 = phi i64 [ 0, %530 ], [ %589, %585 ]
  %536 = phi i32 [ %533, %530 ], [ %588, %585 ]
  %537 = phi i32 [ %532, %530 ], [ %587, %585 ]
  %538 = phi i32 [ %531, %530 ], [ %586, %585 ]
  %539 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %535
  %540 = load i32, ptr %539, align 4, !tbaa !16
  %541 = add nsw i32 %540, %531
  %542 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %535
  %543 = load i32, ptr %542, align 4, !tbaa !16
  %544 = add nsw i32 %543, %532
  %545 = sub nsw i32 %541, %49
  %546 = tail call i32 @llvm.abs.i32(i32 %545, i1 true)
  %547 = icmp sgt i32 %546, %10
  br i1 %547, label %585, label %548

548:                                              ; preds = %534
  %549 = sub nsw i32 %544, %52
  %550 = tail call i32 @llvm.abs.i32(i32 %549, i1 true)
  %551 = icmp ugt i32 %550, %10
  br i1 %551, label %585, label %552

552:                                              ; preds = %548
  %553 = load ptr, ptr @McostState, align 8, !tbaa !10
  %554 = add nsw i32 %549, %10
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds ptr, ptr %553, i64 %555
  %557 = load ptr, ptr %556, align 8, !tbaa !10
  %558 = add nsw i32 %545, %10
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8, ptr %557, i64 %559
  %561 = load i8, ptr %560, align 1, !tbaa !35
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %563, label %585

563:                                              ; preds = %552
  %564 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %565 = shl i32 %541, 2
  %566 = sub nsw i32 %565, %43
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32, ptr %564, i64 %567
  %569 = load i32, ptr %568, align 4, !tbaa !16
  %570 = shl i32 %544, 2
  %571 = sub nsw i32 %570, %46
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, ptr %564, i64 %572
  %574 = load i32, ptr %573, align 4, !tbaa !16
  %575 = add nsw i32 %574, %569
  %576 = mul nsw i32 %575, %12
  %577 = ashr i32 %576, 16
  %578 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %577, i32 noundef signext %536, i32 noundef signext %541, i32 noundef signext %544)
  %579 = load ptr, ptr @McostState, align 8, !tbaa !10
  %580 = getelementptr inbounds ptr, ptr %579, i64 %555
  %581 = load ptr, ptr %580, align 8, !tbaa !10
  %582 = getelementptr inbounds i8, ptr %581, i64 %559
  store i8 1, ptr %582, align 1, !tbaa !35
  %583 = icmp slt i32 %578, %536
  br i1 %583, label %584, label %585

584:                                              ; preds = %563
  br label %585

585:                                              ; preds = %534, %548, %563, %584, %552
  %586 = phi i32 [ %538, %552 ], [ %541, %584 ], [ %538, %563 ], [ %538, %548 ], [ %538, %534 ]
  %587 = phi i32 [ %537, %552 ], [ %544, %584 ], [ %537, %563 ], [ %537, %548 ], [ %537, %534 ]
  %588 = phi i32 [ %536, %552 ], [ %578, %584 ], [ %536, %563 ], [ %536, %548 ], [ %536, %534 ]
  %589 = add nuw nsw i64 %535, 1
  %590 = icmp eq i64 %589, 4
  br i1 %590, label %591, label %534

591:                                              ; preds = %585
  br i1 %129, label %592, label %604

592:                                              ; preds = %591
  %593 = load i32, ptr @pred_SAD_ref, align 4, !tbaa !16
  %594 = sub nsw i32 %588, %593
  %595 = sitofp i32 %594 to float
  %596 = sitofp i32 %593 to float
  %597 = fmul float %161, %596
  %598 = fcmp ogt float %597, %595
  br i1 %598, label %1079, label %599

599:                                              ; preds = %592
  %600 = fmul float %160, %596
  %601 = fcmp ogt float %600, %595
  %602 = icmp sgt i32 %5, 6
  %603 = or i1 %602, %601
  br i1 %603, label %1003, label %627

604:                                              ; preds = %591
  br i1 %349, label %605, label %617

605:                                              ; preds = %604
  %606 = load i32, ptr @pred_SAD_uplayer, align 4, !tbaa !16
  %607 = sub nsw i32 %588, %606
  %608 = sitofp i32 %607 to float
  %609 = sitofp i32 %606 to float
  %610 = fmul float %161, %609
  %611 = fcmp ogt float %610, %608
  br i1 %611, label %1079, label %612

612:                                              ; preds = %605
  %613 = fmul float %160, %609
  %614 = fcmp ogt float %613, %608
  %615 = icmp ugt i32 %5, 6
  %616 = or i1 %615, %614
  br i1 %616, label %1003, label %627

617:                                              ; preds = %604
  %618 = load i32, ptr @pred_SAD_space, align 4, !tbaa !16
  %619 = sub nsw i32 %588, %618
  %620 = sitofp i32 %619 to float
  %621 = sitofp i32 %618 to float
  %622 = fmul float %161, %621
  %623 = fcmp ogt float %622, %620
  br i1 %623, label %1079, label %624

624:                                              ; preds = %617
  %625 = fmul float %160, %621
  %626 = fcmp ogt float %625, %620
  br i1 %626, label %1003, label %627

627:                                              ; preds = %599, %624, %612
  %628 = icmp slt i32 %10, 2
  br i1 %628, label %629, label %631

629:                                              ; preds = %627
  %630 = sdiv i32 %10, 4
  br label %830

631:                                              ; preds = %627
  %632 = lshr i32 %10, 1
  %633 = sub nsw i32 %587, %52
  %634 = tail call i32 @llvm.abs.i32(i32 %633, i1 true)
  %635 = icmp ugt i32 %634, %10
  %636 = add nsw i32 %633, %10
  %637 = sext i32 %636 to i64
  %638 = shl i32 %587, 2
  %639 = sub nsw i32 %638, %46
  %640 = sext i32 %639 to i64
  %641 = sext i32 %586 to i64
  %642 = sext i32 %49 to i64
  %643 = add nuw nsw i32 %632, 1
  %644 = zext nneg i32 %643 to i64
  br label %661

645:                                              ; preds = %740
  %646 = lshr i32 %10, 2
  %647 = icmp slt i32 %10, 4
  br i1 %647, label %830, label %648

648:                                              ; preds = %645
  %649 = sub nsw i32 %586, %49
  %650 = tail call i32 @llvm.abs.i32(i32 %649, i1 true)
  %651 = icmp ugt i32 %650, %10
  %652 = add nsw i32 %649, %10
  %653 = sext i32 %652 to i64
  %654 = shl i32 %586, 2
  %655 = sub nsw i32 %654, %43
  %656 = sext i32 %655 to i64
  %657 = sext i32 %587 to i64
  %658 = sext i32 %52 to i64
  %659 = add nuw nsw i32 %646, 1
  %660 = zext nneg i32 %659 to i64
  br label %746

661:                                              ; preds = %631, %740
  %662 = phi i64 [ 1, %631 ], [ %744, %740 ]
  %663 = phi i32 [ %588, %631 ], [ %743, %740 ]
  %664 = phi i32 [ %587, %631 ], [ %742, %740 ]
  %665 = phi i32 [ %586, %631 ], [ %741, %740 ]
  %666 = shl nuw nsw i64 %662, 1
  %667 = add nsw i64 %666, -1
  %668 = add nsw i64 %667, %641
  %669 = sub nsw i64 %668, %642
  %670 = trunc nsw i64 %669 to i32
  %671 = tail call i32 @llvm.abs.i32(i32 %670, i1 true)
  %672 = icmp sgt i32 %671, %10
  %673 = select i1 %672, i1 true, i1 %635
  br i1 %673, label %702, label %674

674:                                              ; preds = %661
  %675 = load ptr, ptr @McostState, align 8, !tbaa !10
  %676 = getelementptr inbounds ptr, ptr %675, i64 %637
  %677 = load ptr, ptr %676, align 8, !tbaa !10
  %678 = add nsw i64 %669, %178
  %679 = getelementptr inbounds i8, ptr %677, i64 %678
  %680 = load i8, ptr %679, align 1, !tbaa !35
  %681 = icmp eq i8 %680, 0
  br i1 %681, label %682, label %702

682:                                              ; preds = %674
  %683 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %684 = trunc nsw i64 %668 to i32
  %685 = shl i32 %684, 2
  %686 = sub nsw i32 %685, %43
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, ptr %683, i64 %687
  %689 = load i32, ptr %688, align 4, !tbaa !16
  %690 = getelementptr inbounds i32, ptr %683, i64 %640
  %691 = load i32, ptr %690, align 4, !tbaa !16
  %692 = add nsw i32 %691, %689
  %693 = mul nsw i32 %692, %12
  %694 = ashr i32 %693, 16
  %695 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %694, i32 noundef signext %663, i32 noundef signext %684, i32 noundef signext %587)
  %696 = load ptr, ptr @McostState, align 8, !tbaa !10
  %697 = getelementptr inbounds ptr, ptr %696, i64 %637
  %698 = load ptr, ptr %697, align 8, !tbaa !10
  %699 = getelementptr inbounds i8, ptr %698, i64 %678
  store i8 1, ptr %699, align 1, !tbaa !35
  %700 = icmp slt i32 %695, %663
  br i1 %700, label %701, label %702

701:                                              ; preds = %682
  br label %702

702:                                              ; preds = %661, %674, %701, %682
  %703 = phi i32 [ %665, %674 ], [ %684, %701 ], [ %665, %682 ], [ %665, %661 ]
  %704 = phi i32 [ %664, %674 ], [ %587, %701 ], [ %664, %682 ], [ %664, %661 ]
  %705 = phi i32 [ %663, %674 ], [ %695, %701 ], [ %663, %682 ], [ %663, %661 ]
  %706 = sub nsw i64 %641, %667
  %707 = sub nsw i64 %706, %642
  %708 = trunc nsw i64 %707 to i32
  %709 = tail call i32 @llvm.abs.i32(i32 %708, i1 true)
  %710 = icmp sgt i32 %709, %10
  %711 = select i1 %710, i1 true, i1 %635
  br i1 %711, label %740, label %712

712:                                              ; preds = %702
  %713 = load ptr, ptr @McostState, align 8, !tbaa !10
  %714 = getelementptr inbounds ptr, ptr %713, i64 %637
  %715 = load ptr, ptr %714, align 8, !tbaa !10
  %716 = add nsw i64 %707, %178
  %717 = getelementptr inbounds i8, ptr %715, i64 %716
  %718 = load i8, ptr %717, align 1, !tbaa !35
  %719 = icmp eq i8 %718, 0
  br i1 %719, label %720, label %740

720:                                              ; preds = %712
  %721 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %722 = trunc nsw i64 %706 to i32
  %723 = shl i32 %722, 2
  %724 = sub nsw i32 %723, %43
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i32, ptr %721, i64 %725
  %727 = load i32, ptr %726, align 4, !tbaa !16
  %728 = getelementptr inbounds i32, ptr %721, i64 %640
  %729 = load i32, ptr %728, align 4, !tbaa !16
  %730 = add nsw i32 %729, %727
  %731 = mul nsw i32 %730, %12
  %732 = ashr i32 %731, 16
  %733 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %732, i32 noundef signext %705, i32 noundef signext %722, i32 noundef signext %587)
  %734 = load ptr, ptr @McostState, align 8, !tbaa !10
  %735 = getelementptr inbounds ptr, ptr %734, i64 %637
  %736 = load ptr, ptr %735, align 8, !tbaa !10
  %737 = getelementptr inbounds i8, ptr %736, i64 %716
  store i8 1, ptr %737, align 1, !tbaa !35
  %738 = icmp slt i32 %733, %705
  br i1 %738, label %739, label %740

739:                                              ; preds = %720
  br label %740

740:                                              ; preds = %702, %720, %739, %712
  %741 = phi i32 [ %703, %712 ], [ %722, %739 ], [ %703, %720 ], [ %703, %702 ]
  %742 = phi i32 [ %704, %712 ], [ %587, %739 ], [ %704, %720 ], [ %704, %702 ]
  %743 = phi i32 [ %705, %712 ], [ %733, %739 ], [ %705, %720 ], [ %705, %702 ]
  %744 = add nuw nsw i64 %662, 1
  %745 = icmp eq i64 %744, %644
  br i1 %745, label %645, label %661

746:                                              ; preds = %648, %824
  %747 = phi i64 [ 1, %648 ], [ %828, %824 ]
  %748 = phi i32 [ %743, %648 ], [ %827, %824 ]
  %749 = phi i32 [ %742, %648 ], [ %826, %824 ]
  %750 = phi i32 [ %741, %648 ], [ %825, %824 ]
  %751 = shl nuw nsw i64 %747, 1
  %752 = add nsw i64 %751, -1
  %753 = add nsw i64 %752, %657
  br i1 %651, label %824, label %754

754:                                              ; preds = %746
  %755 = sub nsw i64 %753, %658
  %756 = trunc nsw i64 %755 to i32
  %757 = tail call i32 @llvm.abs.i32(i32 %756, i1 true)
  %758 = icmp ugt i32 %757, %10
  br i1 %758, label %787, label %759

759:                                              ; preds = %754
  %760 = load ptr, ptr @McostState, align 8, !tbaa !10
  %761 = add nsw i64 %755, %178
  %762 = getelementptr inbounds ptr, ptr %760, i64 %761
  %763 = load ptr, ptr %762, align 8, !tbaa !10
  %764 = getelementptr inbounds i8, ptr %763, i64 %653
  %765 = load i8, ptr %764, align 1, !tbaa !35
  %766 = icmp eq i8 %765, 0
  br i1 %766, label %767, label %787

767:                                              ; preds = %759
  %768 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %769 = getelementptr inbounds i32, ptr %768, i64 %656
  %770 = load i32, ptr %769, align 4, !tbaa !16
  %771 = trunc nsw i64 %753 to i32
  %772 = shl i32 %771, 2
  %773 = sub nsw i32 %772, %46
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds i32, ptr %768, i64 %774
  %776 = load i32, ptr %775, align 4, !tbaa !16
  %777 = add nsw i32 %776, %770
  %778 = mul nsw i32 %777, %12
  %779 = ashr i32 %778, 16
  %780 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %779, i32 noundef signext %748, i32 noundef signext %586, i32 noundef signext %771)
  %781 = load ptr, ptr @McostState, align 8, !tbaa !10
  %782 = getelementptr inbounds ptr, ptr %781, i64 %761
  %783 = load ptr, ptr %782, align 8, !tbaa !10
  %784 = getelementptr inbounds i8, ptr %783, i64 %653
  store i8 1, ptr %784, align 1, !tbaa !35
  %785 = icmp slt i32 %780, %748
  br i1 %785, label %786, label %787

786:                                              ; preds = %767
  br label %787

787:                                              ; preds = %759, %786, %767, %754
  %788 = phi i32 [ %750, %754 ], [ %750, %767 ], [ %586, %786 ], [ %750, %759 ]
  %789 = phi i32 [ %749, %754 ], [ %749, %767 ], [ %771, %786 ], [ %749, %759 ]
  %790 = phi i32 [ %748, %754 ], [ %748, %767 ], [ %780, %786 ], [ %748, %759 ]
  %791 = sub nsw i64 %657, %752
  %792 = sub nsw i64 %791, %658
  %793 = trunc nsw i64 %792 to i32
  %794 = tail call i32 @llvm.abs.i32(i32 %793, i1 true)
  %795 = icmp ugt i32 %794, %10
  br i1 %795, label %824, label %796

796:                                              ; preds = %787
  %797 = load ptr, ptr @McostState, align 8, !tbaa !10
  %798 = add nsw i64 %792, %178
  %799 = getelementptr inbounds ptr, ptr %797, i64 %798
  %800 = load ptr, ptr %799, align 8, !tbaa !10
  %801 = getelementptr inbounds i8, ptr %800, i64 %653
  %802 = load i8, ptr %801, align 1, !tbaa !35
  %803 = icmp eq i8 %802, 0
  br i1 %803, label %804, label %824

804:                                              ; preds = %796
  %805 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %806 = getelementptr inbounds i32, ptr %805, i64 %656
  %807 = load i32, ptr %806, align 4, !tbaa !16
  %808 = trunc nsw i64 %791 to i32
  %809 = shl i32 %808, 2
  %810 = sub nsw i32 %809, %46
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds i32, ptr %805, i64 %811
  %813 = load i32, ptr %812, align 4, !tbaa !16
  %814 = add nsw i32 %813, %807
  %815 = mul nsw i32 %814, %12
  %816 = ashr i32 %815, 16
  %817 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %816, i32 noundef signext %790, i32 noundef signext %586, i32 noundef signext %808)
  %818 = load ptr, ptr @McostState, align 8, !tbaa !10
  %819 = getelementptr inbounds ptr, ptr %818, i64 %798
  %820 = load ptr, ptr %819, align 8, !tbaa !10
  %821 = getelementptr inbounds i8, ptr %820, i64 %653
  store i8 1, ptr %821, align 1, !tbaa !35
  %822 = icmp slt i32 %817, %790
  br i1 %822, label %823, label %824

823:                                              ; preds = %804
  br label %824

824:                                              ; preds = %746, %787, %804, %823, %796
  %825 = phi i32 [ %788, %796 ], [ %586, %823 ], [ %788, %804 ], [ %788, %787 ], [ %750, %746 ]
  %826 = phi i32 [ %789, %796 ], [ %808, %823 ], [ %789, %804 ], [ %789, %787 ], [ %749, %746 ]
  %827 = phi i32 [ %790, %796 ], [ %817, %823 ], [ %790, %804 ], [ %790, %787 ], [ %748, %746 ]
  %828 = add nuw nsw i64 %747, 1
  %829 = icmp eq i64 %828, %660
  br i1 %829, label %830, label %746

830:                                              ; preds = %824, %629, %645
  %831 = phi i1 [ true, %645 ], [ true, %629 ], [ %647, %824 ]
  %832 = phi i32 [ %646, %645 ], [ %630, %629 ], [ %646, %824 ]
  %833 = phi i32 [ %741, %645 ], [ %586, %629 ], [ %825, %824 ]
  %834 = phi i32 [ %742, %645 ], [ %587, %629 ], [ %826, %824 ]
  %835 = phi i32 [ %743, %645 ], [ %588, %629 ], [ %827, %824 ]
  br i1 %129, label %836, label %846

836:                                              ; preds = %830
  %837 = load i32, ptr @pred_SAD_ref, align 4, !tbaa !16
  %838 = sub nsw i32 %835, %837
  %839 = sitofp i32 %838 to float
  %840 = sitofp i32 %837 to float
  %841 = fmul float %161, %840
  %842 = fcmp ogt float %841, %839
  br i1 %842, label %1079, label %843

843:                                              ; preds = %836
  %844 = fmul float %160, %840
  %845 = fcmp ogt float %844, %839
  br i1 %845, label %1003, label %867

846:                                              ; preds = %830
  br i1 %349, label %847, label %857

847:                                              ; preds = %846
  %848 = load i32, ptr @pred_SAD_uplayer, align 4, !tbaa !16
  %849 = sub nsw i32 %835, %848
  %850 = sitofp i32 %849 to float
  %851 = sitofp i32 %848 to float
  %852 = fmul float %161, %851
  %853 = fcmp ogt float %852, %850
  br i1 %853, label %1079, label %854

854:                                              ; preds = %847
  %855 = fmul float %160, %851
  %856 = fcmp ogt float %855, %850
  br i1 %856, label %1003, label %867

857:                                              ; preds = %846
  %858 = load i32, ptr @pred_SAD_space, align 4, !tbaa !16
  %859 = sub nsw i32 %835, %858
  %860 = sitofp i32 %859 to float
  %861 = sitofp i32 %858 to float
  %862 = fmul float %161, %861
  %863 = fcmp ogt float %862, %860
  br i1 %863, label %1079, label %864

864:                                              ; preds = %857
  %865 = fmul float %160, %861
  %866 = fcmp ogt float %865, %860
  br i1 %866, label %1003, label %867

867:                                              ; preds = %854, %864, %843
  %868 = load ptr, ptr @spiral_search_x, align 8, !tbaa !10
  %869 = load ptr, ptr @spiral_search_y, align 8, !tbaa !10
  br label %871

870:                                              ; preds = %928
  br i1 %831, label %1003, label %936

871:                                              ; preds = %867, %928
  %872 = phi ptr [ %869, %867 ], [ %929, %928 ]
  %873 = phi ptr [ %868, %867 ], [ %930, %928 ]
  %874 = phi i64 [ 1, %867 ], [ %934, %928 ]
  %875 = phi i32 [ %835, %867 ], [ %933, %928 ]
  %876 = phi i32 [ %834, %867 ], [ %932, %928 ]
  %877 = phi i32 [ %833, %867 ], [ %931, %928 ]
  %878 = getelementptr inbounds i16, ptr %873, i64 %874
  %879 = load i16, ptr %878, align 2, !tbaa !29
  %880 = sext i16 %879 to i32
  %881 = add nsw i32 %833, %880
  %882 = getelementptr inbounds i16, ptr %872, i64 %874
  %883 = load i16, ptr %882, align 2, !tbaa !29
  %884 = sext i16 %883 to i32
  %885 = add nsw i32 %834, %884
  %886 = sub nsw i32 %881, %49
  %887 = tail call i32 @llvm.abs.i32(i32 %886, i1 true)
  %888 = icmp sgt i32 %887, %10
  br i1 %888, label %928, label %889

889:                                              ; preds = %871
  %890 = sub nsw i32 %885, %52
  %891 = tail call i32 @llvm.abs.i32(i32 %890, i1 true)
  %892 = icmp ugt i32 %891, %10
  br i1 %892, label %928, label %893

893:                                              ; preds = %889
  %894 = load ptr, ptr @McostState, align 8, !tbaa !10
  %895 = add nsw i32 %890, %10
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds ptr, ptr %894, i64 %896
  %898 = load ptr, ptr %897, align 8, !tbaa !10
  %899 = add nsw i32 %886, %10
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds i8, ptr %898, i64 %900
  %902 = load i8, ptr %901, align 1, !tbaa !35
  %903 = icmp eq i8 %902, 0
  br i1 %903, label %904, label %928

904:                                              ; preds = %893
  %905 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %906 = shl i32 %881, 2
  %907 = sub nsw i32 %906, %43
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds i32, ptr %905, i64 %908
  %910 = load i32, ptr %909, align 4, !tbaa !16
  %911 = shl i32 %885, 2
  %912 = sub nsw i32 %911, %46
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i32, ptr %905, i64 %913
  %915 = load i32, ptr %914, align 4, !tbaa !16
  %916 = add nsw i32 %915, %910
  %917 = mul nsw i32 %916, %12
  %918 = ashr i32 %917, 16
  %919 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %918, i32 noundef signext %875, i32 noundef signext %881, i32 noundef signext %885)
  %920 = load ptr, ptr @McostState, align 8, !tbaa !10
  %921 = getelementptr inbounds ptr, ptr %920, i64 %896
  %922 = load ptr, ptr %921, align 8, !tbaa !10
  %923 = getelementptr inbounds i8, ptr %922, i64 %900
  store i8 1, ptr %923, align 1, !tbaa !35
  %924 = icmp slt i32 %919, %875
  %925 = load ptr, ptr @spiral_search_x, align 8, !tbaa !10
  %926 = load ptr, ptr @spiral_search_y, align 8, !tbaa !10
  br i1 %924, label %927, label %928

927:                                              ; preds = %904
  br label %928

928:                                              ; preds = %871, %889, %904, %927, %893
  %929 = phi ptr [ %872, %893 ], [ %926, %927 ], [ %926, %904 ], [ %872, %889 ], [ %872, %871 ]
  %930 = phi ptr [ %873, %893 ], [ %925, %927 ], [ %925, %904 ], [ %873, %889 ], [ %873, %871 ]
  %931 = phi i32 [ %877, %893 ], [ %881, %927 ], [ %877, %904 ], [ %877, %889 ], [ %877, %871 ]
  %932 = phi i32 [ %876, %893 ], [ %885, %927 ], [ %876, %904 ], [ %876, %889 ], [ %876, %871 ]
  %933 = phi i32 [ %875, %893 ], [ %919, %927 ], [ %875, %904 ], [ %875, %889 ], [ %875, %871 ]
  %934 = add nuw nsw i64 %874, 1
  %935 = icmp eq i64 %934, 25
  br i1 %935, label %870, label %871

936:                                              ; preds = %870, %1000
  %937 = phi i32 [ %997, %1000 ], [ %933, %870 ]
  %938 = phi i32 [ %1001, %1000 ], [ 1, %870 ]
  %939 = phi i32 [ %996, %1000 ], [ %932, %870 ]
  %940 = phi i32 [ %995, %1000 ], [ %931, %870 ]
  br label %941

941:                                              ; preds = %936, %994
  %942 = phi i64 [ 0, %936 ], [ %998, %994 ]
  %943 = phi i32 [ %937, %936 ], [ %997, %994 ]
  %944 = phi i32 [ %939, %936 ], [ %996, %994 ]
  %945 = phi i32 [ %940, %936 ], [ %995, %994 ]
  %946 = getelementptr inbounds [16 x i32], ptr @FastIntegerPelBlockMotionSearch.Big_Hexagon_x, i64 0, i64 %942
  %947 = load i32, ptr %946, align 4, !tbaa !16
  %948 = mul nsw i32 %947, %938
  %949 = add nsw i32 %948, %833
  %950 = getelementptr inbounds [16 x i32], ptr @FastIntegerPelBlockMotionSearch.Big_Hexagon_y, i64 0, i64 %942
  %951 = load i32, ptr %950, align 4, !tbaa !16
  %952 = mul nsw i32 %951, %938
  %953 = add nsw i32 %952, %834
  %954 = sub nsw i32 %949, %49
  %955 = tail call i32 @llvm.abs.i32(i32 %954, i1 true)
  %956 = icmp sgt i32 %955, %10
  br i1 %956, label %994, label %957

957:                                              ; preds = %941
  %958 = sub nsw i32 %953, %52
  %959 = tail call i32 @llvm.abs.i32(i32 %958, i1 true)
  %960 = icmp ugt i32 %959, %10
  br i1 %960, label %994, label %961

961:                                              ; preds = %957
  %962 = load ptr, ptr @McostState, align 8, !tbaa !10
  %963 = add nsw i32 %958, %10
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds ptr, ptr %962, i64 %964
  %966 = load ptr, ptr %965, align 8, !tbaa !10
  %967 = add nsw i32 %954, %10
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds i8, ptr %966, i64 %968
  %970 = load i8, ptr %969, align 1, !tbaa !35
  %971 = icmp eq i8 %970, 0
  br i1 %971, label %972, label %994

972:                                              ; preds = %961
  %973 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %974 = shl i32 %949, 2
  %975 = sub nsw i32 %974, %43
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds i32, ptr %973, i64 %976
  %978 = load i32, ptr %977, align 4, !tbaa !16
  %979 = shl i32 %953, 2
  %980 = sub nsw i32 %979, %46
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds i32, ptr %973, i64 %981
  %983 = load i32, ptr %982, align 4, !tbaa !16
  %984 = add nsw i32 %983, %978
  %985 = mul nsw i32 %984, %12
  %986 = ashr i32 %985, 16
  %987 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %986, i32 noundef signext %943, i32 noundef signext %949, i32 noundef signext %953)
  %988 = load ptr, ptr @McostState, align 8, !tbaa !10
  %989 = getelementptr inbounds ptr, ptr %988, i64 %964
  %990 = load ptr, ptr %989, align 8, !tbaa !10
  %991 = getelementptr inbounds i8, ptr %990, i64 %968
  store i8 1, ptr %991, align 1, !tbaa !35
  %992 = icmp slt i32 %987, %943
  br i1 %992, label %993, label %994

993:                                              ; preds = %972
  br label %994

994:                                              ; preds = %941, %957, %972, %993, %961
  %995 = phi i32 [ %945, %961 ], [ %949, %993 ], [ %945, %972 ], [ %945, %957 ], [ %945, %941 ]
  %996 = phi i32 [ %944, %961 ], [ %953, %993 ], [ %944, %972 ], [ %944, %957 ], [ %944, %941 ]
  %997 = phi i32 [ %943, %961 ], [ %987, %993 ], [ %943, %972 ], [ %943, %957 ], [ %943, %941 ]
  %998 = add nuw nsw i64 %942, 1
  %999 = icmp eq i64 %998, 16
  br i1 %999, label %1000, label %941

1000:                                             ; preds = %994
  %1001 = add nuw nsw i32 %938, 1
  %1002 = icmp eq i32 %938, %832
  br i1 %1002, label %1003, label %936

1003:                                             ; preds = %1000, %870, %864, %854, %843, %624, %612, %599, %407
  %1004 = phi i32 [ %398, %407 ], [ %586, %599 ], [ %833, %843 ], [ %833, %854 ], [ %833, %864 ], [ %586, %612 ], [ %586, %624 ], [ %931, %870 ], [ %995, %1000 ]
  %1005 = phi i32 [ %399, %407 ], [ %587, %599 ], [ %834, %843 ], [ %834, %854 ], [ %834, %864 ], [ %587, %612 ], [ %587, %624 ], [ %932, %870 ], [ %996, %1000 ]
  %1006 = phi i32 [ %400, %407 ], [ %588, %599 ], [ %835, %843 ], [ %835, %854 ], [ %835, %864 ], [ %588, %612 ], [ %588, %624 ], [ %933, %870 ], [ %997, %1000 ]
  %1007 = icmp sgt i32 %10, 0
  br i1 %1007, label %1014, label %1155

1008:                                             ; preds = %1075, %1078
  %1009 = phi i32 [ %1024, %1078 ], [ %1029, %1075 ]
  %1010 = phi i32 [ %1023, %1078 ], [ %1032, %1075 ]
  %1011 = phi i32 [ %1021, %1078 ], [ %1066, %1075 ]
  %1012 = add nuw nsw i32 %1016, 1
  %1013 = icmp eq i32 %1012, %10
  br i1 %1013, label %1079, label %1014

1014:                                             ; preds = %1003, %1008
  %1015 = phi i32 [ %1011, %1008 ], [ %1006, %1003 ]
  %1016 = phi i32 [ %1012, %1008 ], [ 0, %1003 ]
  %1017 = phi i32 [ %1009, %1008 ], [ %1004, %1003 ]
  %1018 = phi i32 [ %1010, %1008 ], [ %1005, %1003 ]
  br label %1019

1019:                                             ; preds = %1075, %1014
  %1020 = phi i64 [ %1076, %1075 ], [ 0, %1014 ]
  %1021 = phi i32 [ %1066, %1075 ], [ %1015, %1014 ]
  %1022 = phi i1 [ true, %1075 ], [ false, %1014 ]
  %1023 = phi i32 [ %1032, %1075 ], [ %1018, %1014 ]
  %1024 = phi i32 [ %1029, %1075 ], [ %1017, %1014 ]
  br label %1025

1025:                                             ; preds = %1019, %1072
  %1026 = phi i64 [ %1073, %1072 ], [ %1020, %1019 ]
  %1027 = getelementptr inbounds [6 x i32], ptr @FastIntegerPelBlockMotionSearch.Hexagon_x, i64 0, i64 %1026
  %1028 = load i32, ptr %1027, align 4, !tbaa !16
  %1029 = add nsw i32 %1028, %1017
  %1030 = getelementptr inbounds [6 x i32], ptr @FastIntegerPelBlockMotionSearch.Hexagon_y, i64 0, i64 %1026
  %1031 = load i32, ptr %1030, align 4, !tbaa !16
  %1032 = add nsw i32 %1031, %1018
  %1033 = sub nsw i32 %1029, %49
  %1034 = tail call i32 @llvm.abs.i32(i32 %1033, i1 true)
  %1035 = icmp sgt i32 %1034, %10
  br i1 %1035, label %1072, label %1036

1036:                                             ; preds = %1025
  %1037 = sub nsw i32 %1032, %52
  %1038 = tail call i32 @llvm.abs.i32(i32 %1037, i1 true)
  %1039 = icmp ugt i32 %1038, %10
  br i1 %1039, label %1072, label %1040

1040:                                             ; preds = %1036
  %1041 = load ptr, ptr @McostState, align 8, !tbaa !10
  %1042 = add nsw i32 %1037, %10
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds ptr, ptr %1041, i64 %1043
  %1045 = load ptr, ptr %1044, align 8, !tbaa !10
  %1046 = add nsw i32 %1033, %10
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds i8, ptr %1045, i64 %1047
  %1049 = load i8, ptr %1048, align 1, !tbaa !35
  %1050 = icmp eq i8 %1049, 0
  br i1 %1050, label %1051, label %1072

1051:                                             ; preds = %1040
  %1052 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %1053 = shl i32 %1029, 2
  %1054 = sub nsw i32 %1053, %43
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds i32, ptr %1052, i64 %1055
  %1057 = load i32, ptr %1056, align 4, !tbaa !16
  %1058 = shl i32 %1032, 2
  %1059 = sub nsw i32 %1058, %46
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds i32, ptr %1052, i64 %1060
  %1062 = load i32, ptr %1061, align 4, !tbaa !16
  %1063 = add nsw i32 %1062, %1057
  %1064 = mul nsw i32 %1063, %12
  %1065 = ashr i32 %1064, 16
  %1066 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %1065, i32 noundef signext %1021, i32 noundef signext %1029, i32 noundef signext %1032)
  %1067 = load ptr, ptr @McostState, align 8, !tbaa !10
  %1068 = getelementptr inbounds ptr, ptr %1067, i64 %1043
  %1069 = load ptr, ptr %1068, align 8, !tbaa !10
  %1070 = getelementptr inbounds i8, ptr %1069, i64 %1047
  store i8 1, ptr %1070, align 1, !tbaa !35
  %1071 = icmp slt i32 %1066, %1021
  br i1 %1071, label %1075, label %1072

1072:                                             ; preds = %1025, %1036, %1051, %1040
  %1073 = add nuw nsw i64 %1026, 1
  %1074 = icmp eq i64 %1073, 6
  br i1 %1074, label %1078, label %1025

1075:                                             ; preds = %1051
  %1076 = add nuw nsw i64 %1026, 1
  %1077 = icmp eq i64 %1076, 6
  br i1 %1077, label %1008, label %1019

1078:                                             ; preds = %1072
  br i1 %1022, label %1008, label %1079

1079:                                             ; preds = %1078, %1008, %857, %847, %836, %617, %605, %592, %397
  %1080 = phi i32 [ %398, %397 ], [ %586, %592 ], [ %833, %836 ], [ %833, %847 ], [ %833, %857 ], [ %586, %605 ], [ %586, %617 ], [ %1024, %1078 ], [ %1009, %1008 ]
  %1081 = phi i32 [ %399, %397 ], [ %587, %592 ], [ %834, %836 ], [ %834, %847 ], [ %834, %857 ], [ %587, %605 ], [ %587, %617 ], [ %1023, %1078 ], [ %1010, %1008 ]
  %1082 = phi i32 [ %400, %397 ], [ %588, %592 ], [ %835, %836 ], [ %835, %847 ], [ %835, %857 ], [ %588, %605 ], [ %588, %617 ], [ %1021, %1078 ], [ %1011, %1008 ]
  %1083 = icmp sgt i32 %10, 0
  br i1 %1083, label %1090, label %1155

1084:                                             ; preds = %1151, %1154
  %1085 = phi i32 [ %1100, %1154 ], [ %1105, %1151 ]
  %1086 = phi i32 [ %1099, %1154 ], [ %1108, %1151 ]
  %1087 = phi i32 [ %1097, %1154 ], [ %1142, %1151 ]
  %1088 = add nuw nsw i32 %1092, 1
  %1089 = icmp eq i32 %1088, %10
  br i1 %1089, label %1155, label %1090

1090:                                             ; preds = %1079, %1084
  %1091 = phi i32 [ %1087, %1084 ], [ %1082, %1079 ]
  %1092 = phi i32 [ %1088, %1084 ], [ 0, %1079 ]
  %1093 = phi i32 [ %1085, %1084 ], [ %1080, %1079 ]
  %1094 = phi i32 [ %1086, %1084 ], [ %1081, %1079 ]
  br label %1095

1095:                                             ; preds = %1151, %1090
  %1096 = phi i64 [ %1152, %1151 ], [ 0, %1090 ]
  %1097 = phi i32 [ %1142, %1151 ], [ %1091, %1090 ]
  %1098 = phi i1 [ true, %1151 ], [ false, %1090 ]
  %1099 = phi i32 [ %1108, %1151 ], [ %1094, %1090 ]
  %1100 = phi i32 [ %1105, %1151 ], [ %1093, %1090 ]
  br label %1101

1101:                                             ; preds = %1095, %1148
  %1102 = phi i64 [ %1149, %1148 ], [ %1096, %1095 ]
  %1103 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %1102
  %1104 = load i32, ptr %1103, align 4, !tbaa !16
  %1105 = add nsw i32 %1104, %1093
  %1106 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %1102
  %1107 = load i32, ptr %1106, align 4, !tbaa !16
  %1108 = add nsw i32 %1107, %1094
  %1109 = sub nsw i32 %1105, %49
  %1110 = tail call i32 @llvm.abs.i32(i32 %1109, i1 true)
  %1111 = icmp sgt i32 %1110, %10
  br i1 %1111, label %1148, label %1112

1112:                                             ; preds = %1101
  %1113 = sub nsw i32 %1108, %52
  %1114 = tail call i32 @llvm.abs.i32(i32 %1113, i1 true)
  %1115 = icmp ugt i32 %1114, %10
  br i1 %1115, label %1148, label %1116

1116:                                             ; preds = %1112
  %1117 = load ptr, ptr @McostState, align 8, !tbaa !10
  %1118 = add nsw i32 %1113, %10
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds ptr, ptr %1117, i64 %1119
  %1121 = load ptr, ptr %1120, align 8, !tbaa !10
  %1122 = add nsw i32 %1109, %10
  %1123 = sext i32 %1122 to i64
  %1124 = getelementptr inbounds i8, ptr %1121, i64 %1123
  %1125 = load i8, ptr %1124, align 1, !tbaa !35
  %1126 = icmp eq i8 %1125, 0
  br i1 %1126, label %1127, label %1148

1127:                                             ; preds = %1116
  %1128 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %1129 = shl i32 %1105, 2
  %1130 = sub nsw i32 %1129, %43
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds i32, ptr %1128, i64 %1131
  %1133 = load i32, ptr %1132, align 4, !tbaa !16
  %1134 = shl i32 %1108, 2
  %1135 = sub nsw i32 %1134, %46
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds i32, ptr %1128, i64 %1136
  %1138 = load i32, ptr %1137, align 4, !tbaa !16
  %1139 = add nsw i32 %1138, %1133
  %1140 = mul nsw i32 %1139, %12
  %1141 = ashr i32 %1140, 16
  %1142 = tail call signext i32 @PartCalMad(ptr noundef %101, ptr noundef %0, ptr noundef nonnull %118, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %40, i32 noundef signext %1141, i32 noundef signext %1097, i32 noundef signext %1105, i32 noundef signext %1108)
  %1143 = load ptr, ptr @McostState, align 8, !tbaa !10
  %1144 = getelementptr inbounds ptr, ptr %1143, i64 %1119
  %1145 = load ptr, ptr %1144, align 8, !tbaa !10
  %1146 = getelementptr inbounds i8, ptr %1145, i64 %1123
  store i8 1, ptr %1146, align 1, !tbaa !35
  %1147 = icmp slt i32 %1142, %1097
  br i1 %1147, label %1151, label %1148

1148:                                             ; preds = %1101, %1112, %1127, %1116
  %1149 = add nuw nsw i64 %1102, 1
  %1150 = icmp eq i64 %1149, 4
  br i1 %1150, label %1154, label %1101

1151:                                             ; preds = %1127
  %1152 = add nuw nsw i64 %1102, 1
  %1153 = icmp eq i64 %1152, 4
  br i1 %1153, label %1084, label %1095

1154:                                             ; preds = %1148
  br i1 %1098, label %1084, label %1155

1155:                                             ; preds = %1084, %1154, %1003, %1079
  %1156 = phi i32 [ %1080, %1079 ], [ %1004, %1003 ], [ %1085, %1084 ], [ %1100, %1154 ]
  %1157 = phi i32 [ %1081, %1079 ], [ %1005, %1003 ], [ %1086, %1084 ], [ %1099, %1154 ]
  %1158 = phi i32 [ %1082, %1079 ], [ %1006, %1003 ], [ %1087, %1084 ], [ %1097, %1154 ]
  %1159 = sub nsw i32 %1156, %3
  %1160 = trunc i32 %1159 to i16
  store i16 %1160, ptr %8, align 2, !tbaa !29
  %1161 = sub nsw i32 %1157, %4
  %1162 = trunc i32 %1161 to i16
  store i16 %1162, ptr %9, align 2, !tbaa !29
  ret i32 %1158
}

declare dso_local ptr @FastLineX(i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #4

declare dso_local ptr @UMVLineX(i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
define dso_local signext i32 @AddUpSADQuarter(i32 signext %0, i32 signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10, i32 noundef signext %11) local_unnamed_addr #2 {
  %13 = alloca [16 x i32], align 4
  %14 = alloca [256 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %14) #13
  %15 = icmp eq i32 %11, 3
  %16 = select i1 %15, i32 64, i32 128
  %17 = getelementptr inbounds i8, ptr %6, i64 6392
  %18 = load i32, ptr %17, align 8, !tbaa !37
  %19 = shl i32 %18, 2
  %20 = add i32 %19, 28
  %21 = getelementptr inbounds i8, ptr %6, i64 6396
  %22 = load i32, ptr %21, align 4, !tbaa !39
  %23 = shl i32 %22, 2
  %24 = add i32 %23, 28
  %25 = load ptr, ptr @active_pps, align 8, !tbaa !10
  %26 = getelementptr inbounds i8, ptr %25, i64 192
  %27 = load i32, ptr %26, align 8, !tbaa !30
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %12
  %30 = load ptr, ptr @img, align 8, !tbaa !10
  %31 = getelementptr inbounds i8, ptr %30, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !32
  switch i32 %32, label %33 [
    i32 0, label %42
    i32 3, label %42
  ]

33:                                               ; preds = %29, %12
  %34 = getelementptr inbounds i8, ptr %25, i64 196
  %35 = load i32, ptr %34, align 4, !tbaa !33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @img, align 8, !tbaa !10
  %39 = getelementptr inbounds i8, ptr %38, i64 24
  %40 = load i32, ptr %39, align 8, !tbaa !32
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %29, %29, %37
  %43 = load ptr, ptr @input, align 8, !tbaa !10
  %44 = getelementptr inbounds i8, ptr %43, i64 1912
  %45 = load i32, ptr %44, align 8, !tbaa !34
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
  %112 = call ptr %111(ptr noundef %51, i32 noundef signext %78, i32 noundef signext %106, i32 noundef signext %24, i32 noundef signext %20) #13, !callees !40
  %113 = getelementptr inbounds i16, ptr %110, i64 %102
  %114 = load i16, ptr %113, align 2, !tbaa !29
  %115 = zext i16 %114 to i32
  %116 = load i16, ptr %112, align 2, !tbaa !29
  %117 = zext i16 %116 to i32
  %118 = sub nsw i32 %115, %117
  store i32 %118, ptr %13, align 4, !tbaa !16
  %119 = getelementptr inbounds i16, ptr %110, i64 %107
  %120 = load i16, ptr %119, align 2, !tbaa !29
  %121 = zext i16 %120 to i32
  %122 = getelementptr inbounds i8, ptr %112, i64 8
  %123 = load i16, ptr %122, align 2, !tbaa !29
  %124 = zext i16 %123 to i32
  %125 = sub nsw i32 %121, %124
  store i32 %125, ptr %55, align 4, !tbaa !16
  %126 = getelementptr inbounds i16, ptr %110, i64 %108
  %127 = load i16, ptr %126, align 2, !tbaa !29
  %128 = zext i16 %127 to i32
  %129 = getelementptr inbounds i8, ptr %112, i64 16
  %130 = load i16, ptr %129, align 2, !tbaa !29
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 %128, %131
  store i32 %132, ptr %56, align 4, !tbaa !16
  %133 = getelementptr inbounds i16, ptr %110, i64 %109
  %134 = load i16, ptr %133, align 2, !tbaa !29
  %135 = zext i16 %134 to i32
  %136 = getelementptr inbounds i8, ptr %112, i64 24
  %137 = load i16, ptr %136, align 2, !tbaa !29
  %138 = zext i16 %137 to i32
  %139 = sub nsw i32 %135, %138
  store i32 %139, ptr %57, align 4, !tbaa !16
  %140 = load ptr, ptr %87, align 8, !tbaa !10
  %141 = load ptr, ptr @get_line, align 8, !tbaa !10
  %142 = call ptr %141(ptr noundef %51, i32 noundef signext %79, i32 noundef signext %106, i32 noundef signext %24, i32 noundef signext %20) #13, !callees !40
  %143 = getelementptr inbounds i16, ptr %140, i64 %102
  %144 = load i16, ptr %143, align 2, !tbaa !29
  %145 = zext i16 %144 to i32
  %146 = load i16, ptr %142, align 2, !tbaa !29
  %147 = zext i16 %146 to i32
  %148 = sub nsw i32 %145, %147
  store i32 %148, ptr %58, align 4, !tbaa !16
  %149 = getelementptr inbounds i16, ptr %140, i64 %107
  %150 = load i16, ptr %149, align 2, !tbaa !29
  %151 = zext i16 %150 to i32
  %152 = getelementptr inbounds i8, ptr %142, i64 8
  %153 = load i16, ptr %152, align 2, !tbaa !29
  %154 = zext i16 %153 to i32
  %155 = sub nsw i32 %151, %154
  store i32 %155, ptr %59, align 4, !tbaa !16
  %156 = getelementptr inbounds i16, ptr %140, i64 %108
  %157 = load i16, ptr %156, align 2, !tbaa !29
  %158 = zext i16 %157 to i32
  %159 = getelementptr inbounds i8, ptr %142, i64 16
  %160 = load i16, ptr %159, align 2, !tbaa !29
  %161 = zext i16 %160 to i32
  %162 = sub nsw i32 %158, %161
  store i32 %162, ptr %60, align 4, !tbaa !16
  %163 = getelementptr inbounds i16, ptr %140, i64 %109
  %164 = load i16, ptr %163, align 2, !tbaa !29
  %165 = zext i16 %164 to i32
  %166 = getelementptr inbounds i8, ptr %142, i64 24
  %167 = load i16, ptr %166, align 2, !tbaa !29
  %168 = zext i16 %167 to i32
  %169 = sub nsw i32 %165, %168
  store i32 %169, ptr %61, align 4, !tbaa !16
  %170 = load ptr, ptr %88, align 8, !tbaa !10
  %171 = load ptr, ptr @get_line, align 8, !tbaa !10
  %172 = call ptr %171(ptr noundef %51, i32 noundef signext %80, i32 noundef signext %106, i32 noundef signext %24, i32 noundef signext %20) #13, !callees !40
  %173 = getelementptr inbounds i16, ptr %170, i64 %102
  %174 = load i16, ptr %173, align 2, !tbaa !29
  %175 = zext i16 %174 to i32
  %176 = load i16, ptr %172, align 2, !tbaa !29
  %177 = zext i16 %176 to i32
  %178 = sub nsw i32 %175, %177
  store i32 %178, ptr %62, align 4, !tbaa !16
  %179 = getelementptr inbounds i16, ptr %170, i64 %107
  %180 = load i16, ptr %179, align 2, !tbaa !29
  %181 = zext i16 %180 to i32
  %182 = getelementptr inbounds i8, ptr %172, i64 8
  %183 = load i16, ptr %182, align 2, !tbaa !29
  %184 = zext i16 %183 to i32
  %185 = sub nsw i32 %181, %184
  store i32 %185, ptr %63, align 4, !tbaa !16
  %186 = getelementptr inbounds i16, ptr %170, i64 %108
  %187 = load i16, ptr %186, align 2, !tbaa !29
  %188 = zext i16 %187 to i32
  %189 = getelementptr inbounds i8, ptr %172, i64 16
  %190 = load i16, ptr %189, align 2, !tbaa !29
  %191 = zext i16 %190 to i32
  %192 = sub nsw i32 %188, %191
  store i32 %192, ptr %64, align 4, !tbaa !16
  %193 = getelementptr inbounds i16, ptr %170, i64 %109
  %194 = load i16, ptr %193, align 2, !tbaa !29
  %195 = zext i16 %194 to i32
  %196 = getelementptr inbounds i8, ptr %172, i64 24
  %197 = load i16, ptr %196, align 2, !tbaa !29
  %198 = zext i16 %197 to i32
  %199 = sub nsw i32 %195, %198
  store i32 %199, ptr %65, align 4, !tbaa !16
  %200 = load ptr, ptr %89, align 8, !tbaa !10
  %201 = load ptr, ptr @get_line, align 8, !tbaa !10
  %202 = call ptr %201(ptr noundef %51, i32 noundef signext %81, i32 noundef signext %106, i32 noundef signext %24, i32 noundef signext %20) #13, !callees !40
  %203 = getelementptr inbounds i16, ptr %200, i64 %102
  %204 = load i16, ptr %203, align 2, !tbaa !29
  %205 = zext i16 %204 to i32
  %206 = load i16, ptr %202, align 2, !tbaa !29
  %207 = zext i16 %206 to i32
  %208 = sub nsw i32 %205, %207
  store i32 %208, ptr %66, align 4, !tbaa !16
  %209 = getelementptr inbounds i16, ptr %200, i64 %107
  %210 = load i16, ptr %209, align 2, !tbaa !29
  %211 = zext i16 %210 to i32
  %212 = getelementptr inbounds i8, ptr %202, i64 8
  %213 = load i16, ptr %212, align 2, !tbaa !29
  %214 = zext i16 %213 to i32
  %215 = sub nsw i32 %211, %214
  store i32 %215, ptr %67, align 4, !tbaa !16
  %216 = getelementptr inbounds i16, ptr %200, i64 %108
  %217 = load i16, ptr %216, align 2, !tbaa !29
  %218 = zext i16 %217 to i32
  %219 = getelementptr inbounds i8, ptr %202, i64 16
  %220 = load i16, ptr %219, align 2, !tbaa !29
  %221 = zext i16 %220 to i32
  %222 = sub nsw i32 %218, %221
  store i32 %222, ptr %68, align 4, !tbaa !16
  %223 = getelementptr inbounds i16, ptr %200, i64 %109
  %224 = load i16, ptr %223, align 2, !tbaa !29
  %225 = zext i16 %224 to i32
  %226 = getelementptr inbounds i8, ptr %202, i64 24
  %227 = load i16, ptr %226, align 2, !tbaa !29
  %228 = zext i16 %227 to i32
  %229 = sub nsw i32 %225, %228
  store i32 %229, ptr %69, align 4, !tbaa !16
  br i1 %70, label %230, label %237

230:                                              ; preds = %101
  %231 = load ptr, ptr @input, align 8, !tbaa !10
  %232 = getelementptr inbounds i8, ptr %231, i64 24
  %233 = load i32, ptr %232, align 8, !tbaa !41
  %234 = call signext i32 @SATD(ptr noundef nonnull %13, i32 noundef signext %233) #13
  %235 = add nsw i32 %234, %103
  %236 = icmp sgt i32 %235, %9
  br i1 %236, label %274, label %258

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
  %272 = call signext i32 @find_SATD(ptr noundef nonnull %14, i32 noundef signext %11) #13
  %273 = add nsw i32 %272, %269
  br label %274

274:                                              ; preds = %230, %271, %268
  %275 = phi i32 [ %273, %271 ], [ %269, %268 ], [ %235, %230 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #13
  ret i32 %275
}

declare dso_local signext i32 @SATD(ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare dso_local signext i32 @find_SATD(ptr noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local signext i32 @FastSubPelBlockMotionSearch(ptr nocapture noundef readonly %0, i16 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7, ptr nocapture noundef %8, ptr nocapture noundef %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12, i32 noundef signext %13, i32 noundef signext %14) local_unnamed_addr #2 {
  %16 = load ptr, ptr @img, align 8, !tbaa !10
  %17 = getelementptr inbounds i8, ptr %16, i64 90220
  %18 = load i32, ptr %17, align 4, !tbaa !23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %16, i64 31576
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  %23 = getelementptr inbounds i8, ptr %16, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !25
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %25, i32 19
  %27 = load i32, ptr %26, align 8, !tbaa !26
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
  %46 = load i32, ptr %45, align 4, !tbaa !16
  %47 = getelementptr inbounds i8, ptr %45, i64 4
  %48 = load i32, ptr %47, align 4, !tbaa !16
  %49 = shl i32 %3, 2
  %50 = add i32 %49, 16
  %51 = shl i32 %4, 2
  %52 = add i32 %51, 16
  %53 = getelementptr inbounds i8, ptr %41, i64 6396
  %54 = load i32, ptr %53, align 4, !tbaa !39
  %55 = sub nsw i32 %54, %48
  %56 = trunc i32 %55 to i16
  %57 = shl i16 %56, 2
  %58 = add i16 %57, 32
  %59 = load i16, ptr %8, align 2, !tbaa !29
  %60 = sext i16 %59 to i32
  %61 = add nsw i32 %50, %60
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %65, label %63

63:                                               ; preds = %33
  %64 = load i16, ptr %9, align 2, !tbaa !29
  br label %84

65:                                               ; preds = %33
  %66 = getelementptr inbounds i8, ptr %41, i64 6392
  %67 = load i32, ptr %66, align 8, !tbaa !37
  %68 = sub nsw i32 %67, %46
  %69 = trunc i32 %68 to i16
  %70 = shl i16 %69, 2
  %71 = add i16 %70, 32
  %72 = sext i16 %71 to i32
  %73 = add nsw i32 %72, -1
  %74 = icmp slt i32 %61, %73
  %75 = load i16, ptr %9, align 2, !tbaa !29
  br i1 %74, label %76, label %84

76:                                               ; preds = %65
  %77 = sext i16 %75 to i32
  %78 = add nsw i32 %52, %77
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = sext i16 %58 to i32
  %82 = add nsw i32 %81, -1
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %63, %80, %76, %65
  %85 = phi i16 [ %64, %63 ], [ %75, %80 ], [ %75, %76 ], [ %75, %65 ]
  %86 = sext i16 %85 to i32
  br label %87

87:                                               ; preds = %80, %84
  %88 = phi i32 [ %77, %80 ], [ %86, %84 ]
  %89 = phi ptr [ @FastLine4X, %80 ], [ @UMVLine4X, %84 ]
  store ptr %89, ptr @get_line, align 8, !tbaa !10
  %90 = sext i16 %6 to i32
  %91 = sub nsw i32 %90, %60
  %92 = srem i32 %91, 4
  %93 = sext i16 %7 to i32
  %94 = sub nsw i32 %93, %88
  %95 = srem i32 %94, 4
  %96 = load ptr, ptr @SearchState, align 8, !tbaa !10
  %97 = load ptr, ptr %96, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %97, i8 0, i64 49, i1 false)
  %98 = load ptr, ptr @input, align 8, !tbaa !10
  %99 = getelementptr inbounds i8, ptr %98, i64 24
  %100 = load i32, ptr %99, align 8, !tbaa !41
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %128, label %102

102:                                              ; preds = %87
  %103 = load i16, ptr %8, align 2, !tbaa !29
  %104 = sext i16 %103 to i32
  %105 = load i16, ptr %9, align 2, !tbaa !29
  %106 = sext i16 %105 to i32
  %107 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %108 = sub nsw i32 %104, %90
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %107, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !16
  %112 = sub nsw i32 %106, %93
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %107, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !16
  %116 = add nsw i32 %115, %111
  %117 = mul nsw i32 %116, %13
  %118 = ashr i32 %117, 16
  %119 = add nsw i32 %50, %104
  %120 = add nsw i32 %52, %106
  %121 = tail call signext i32 @AddUpSADQuarter(i32 signext poison, i32 signext poison, i32 noundef signext %46, i32 noundef signext %48, i32 noundef signext %119, i32 noundef signext %120, ptr noundef nonnull %41, ptr noundef %0, i32 noundef signext %118, i32 noundef signext %12, i32 noundef signext %14, i32 noundef signext %5)
  %122 = load ptr, ptr @SearchState, align 8, !tbaa !10
  %123 = getelementptr inbounds i8, ptr %122, i64 24
  %124 = load ptr, ptr %123, align 8, !tbaa !10
  %125 = getelementptr inbounds i8, ptr %124, i64 3
  store i8 1, ptr %125, align 1, !tbaa !35
  %126 = icmp slt i32 %121, %12
  br i1 %126, label %127, label %136

127:                                              ; preds = %102
  br label %136

128:                                              ; preds = %87
  %129 = getelementptr inbounds i8, ptr %96, i64 24
  %130 = load ptr, ptr %129, align 8, !tbaa !10
  %131 = getelementptr inbounds i8, ptr %130, i64 3
  store i8 1, ptr %131, align 1, !tbaa !35
  %132 = load i16, ptr %8, align 2, !tbaa !29
  %133 = sext i16 %132 to i32
  %134 = load i16, ptr %9, align 2, !tbaa !29
  %135 = sext i16 %134 to i32
  br label %136

136:                                              ; preds = %102, %127, %128
  %137 = phi i32 [ %104, %127 ], [ 0, %102 ], [ %133, %128 ]
  %138 = phi i32 [ %106, %127 ], [ 0, %102 ], [ %135, %128 ]
  %139 = phi i32 [ %121, %127 ], [ %12, %102 ], [ %12, %128 ]
  %140 = icmp ne i32 %92, 0
  %141 = icmp ne i32 %95, 0
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %143, label %181

143:                                              ; preds = %136
  %144 = load i16, ptr %8, align 2, !tbaa !29
  %145 = sext i16 %144 to i32
  %146 = add nsw i32 %92, %145
  %147 = load i16, ptr %9, align 2, !tbaa !29
  %148 = sext i16 %147 to i32
  %149 = add nsw i32 %95, %148
  %150 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %151 = sub nsw i32 %146, %90
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %150, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !16
  %155 = sub nsw i32 %149, %93
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %150, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !16
  %159 = add nsw i32 %158, %154
  %160 = mul nsw i32 %159, %13
  %161 = ashr i32 %160, 16
  %162 = add nsw i32 %146, %50
  %163 = add nsw i32 %149, %52
  %164 = tail call signext i32 @AddUpSADQuarter(i32 signext poison, i32 signext poison, i32 noundef signext %46, i32 noundef signext %48, i32 noundef signext %162, i32 noundef signext %163, ptr noundef nonnull %41, ptr noundef %0, i32 noundef signext %161, i32 noundef signext %139, i32 noundef signext %14, i32 noundef signext %5)
  %165 = load ptr, ptr @SearchState, align 8, !tbaa !10
  %166 = load i16, ptr %9, align 2, !tbaa !29
  %167 = sext i16 %166 to i32
  %168 = sub nsw i32 %149, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr ptr, ptr %165, i64 %169
  %171 = getelementptr i8, ptr %170, i64 24
  %172 = load ptr, ptr %171, align 8, !tbaa !10
  %173 = load i16, ptr %8, align 2, !tbaa !29
  %174 = sext i16 %173 to i32
  %175 = sub nsw i32 %146, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr i8, ptr %172, i64 %176
  %178 = getelementptr i8, ptr %177, i64 3
  store i8 1, ptr %178, align 1, !tbaa !35
  %179 = icmp slt i32 %164, %139
  br i1 %179, label %180, label %181

180:                                              ; preds = %143
  br label %181

181:                                              ; preds = %143, %180, %136
  %182 = phi i32 [ %139, %136 ], [ %139, %143 ], [ %164, %180 ]
  %183 = phi i32 [ %138, %136 ], [ %138, %143 ], [ %149, %180 ]
  %184 = phi i32 [ %137, %136 ], [ %137, %143 ], [ %146, %180 ]
  br label %191

185:                                              ; preds = %266, %269
  %186 = phi i32 [ %201, %269 ], [ %206, %266 ]
  %187 = phi i32 [ %200, %269 ], [ %209, %266 ]
  %188 = phi i32 [ %198, %269 ], [ %247, %266 ]
  %189 = add nuw nsw i32 %195, 1
  %190 = icmp eq i32 %189, 3
  br i1 %190, label %270, label %191

191:                                              ; preds = %181, %185
  %192 = phi i32 [ %188, %185 ], [ %182, %181 ]
  %193 = phi i32 [ %187, %185 ], [ %183, %181 ]
  %194 = phi i32 [ %186, %185 ], [ %184, %181 ]
  %195 = phi i32 [ %189, %185 ], [ 0, %181 ]
  br label %196

196:                                              ; preds = %266, %191
  %197 = phi i64 [ %267, %266 ], [ 0, %191 ]
  %198 = phi i32 [ %247, %266 ], [ %192, %191 ]
  %199 = phi i1 [ true, %266 ], [ false, %191 ]
  %200 = phi i32 [ %209, %266 ], [ %193, %191 ]
  %201 = phi i32 [ %206, %266 ], [ %194, %191 ]
  br label %202

202:                                              ; preds = %196, %263
  %203 = phi i64 [ %264, %263 ], [ %197, %196 ]
  %204 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !16
  %206 = add nsw i32 %205, %194
  %207 = getelementptr inbounds [4 x i32], ptr @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %203
  %208 = load i32, ptr %207, align 4, !tbaa !16
  %209 = add nsw i32 %208, %193
  %210 = load i16, ptr %8, align 2, !tbaa !29
  %211 = sext i16 %210 to i32
  %212 = sub nsw i32 %206, %211
  %213 = tail call i32 @llvm.abs.i32(i32 %212, i1 true)
  %214 = icmp ult i32 %213, 4
  br i1 %214, label %215, label %263

215:                                              ; preds = %202
  %216 = load i16, ptr %9, align 2, !tbaa !29
  %217 = sext i16 %216 to i32
  %218 = sub nsw i32 %209, %217
  %219 = tail call i32 @llvm.abs.i32(i32 %218, i1 true)
  %220 = icmp ult i32 %219, 4
  br i1 %220, label %221, label %263

221:                                              ; preds = %215
  %222 = load ptr, ptr @SearchState, align 8, !tbaa !10
  %223 = sext i32 %218 to i64
  %224 = getelementptr ptr, ptr %222, i64 %223
  %225 = getelementptr i8, ptr %224, i64 24
  %226 = load ptr, ptr %225, align 8, !tbaa !10
  %227 = sext i32 %212 to i64
  %228 = getelementptr i8, ptr %226, i64 %227
  %229 = getelementptr i8, ptr %228, i64 3
  %230 = load i8, ptr %229, align 1, !tbaa !35
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %263

232:                                              ; preds = %221
  %233 = load ptr, ptr @mvbits, align 8, !tbaa !10
  %234 = sub nsw i32 %206, %90
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, ptr %233, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !16
  %238 = sub nsw i32 %209, %93
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, ptr %233, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !16
  %242 = add nsw i32 %241, %237
  %243 = mul nsw i32 %242, %13
  %244 = ashr i32 %243, 16
  %245 = add nsw i32 %206, %50
  %246 = add nsw i32 %209, %52
  %247 = tail call signext i32 @AddUpSADQuarter(i32 signext poison, i32 signext poison, i32 noundef signext %46, i32 noundef signext %48, i32 noundef signext %245, i32 noundef signext %246, ptr noundef %41, ptr noundef %0, i32 noundef signext %244, i32 noundef signext %198, i32 noundef signext %14, i32 noundef signext %5)
  %248 = load ptr, ptr @SearchState, align 8, !tbaa !10
  %249 = load i16, ptr %9, align 2, !tbaa !29
  %250 = sext i16 %249 to i32
  %251 = sub nsw i32 %209, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr ptr, ptr %248, i64 %252
  %254 = getelementptr i8, ptr %253, i64 24
  %255 = load ptr, ptr %254, align 8, !tbaa !10
  %256 = load i16, ptr %8, align 2, !tbaa !29
  %257 = sext i16 %256 to i32
  %258 = sub nsw i32 %206, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr i8, ptr %255, i64 %259
  %261 = getelementptr i8, ptr %260, i64 3
  store i8 1, ptr %261, align 1, !tbaa !35
  %262 = icmp slt i32 %247, %198
  br i1 %262, label %266, label %263

263:                                              ; preds = %202, %215, %232, %221
  %264 = add nuw nsw i64 %203, 1
  %265 = icmp eq i64 %264, 4
  br i1 %265, label %269, label %202

266:                                              ; preds = %232
  %267 = add nuw nsw i64 %203, 1
  %268 = icmp eq i64 %267, 4
  br i1 %268, label %185, label %196

269:                                              ; preds = %263
  br i1 %199, label %185, label %270

270:                                              ; preds = %269, %185
  %271 = phi i32 [ %201, %269 ], [ %186, %185 ]
  %272 = phi i32 [ %200, %269 ], [ %187, %185 ]
  %273 = phi i32 [ %198, %269 ], [ %188, %185 ]
  %274 = trunc i32 %271 to i16
  store i16 %274, ptr %8, align 2, !tbaa !29
  %275 = trunc i32 %272 to i16
  store i16 %275, ptr %9, align 2, !tbaa !29
  ret i32 %273
}

declare dso_local ptr @FastLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #4

declare dso_local ptr @UMVLine4X(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @decide_intrabk_SAD() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !10
  %2 = getelementptr inbounds i8, ptr %1, i64 24
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %40, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds i8, ptr %1, i64 152
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds i8, ptr %1, i64 156
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = icmp eq i32 %10, 0
  br i1 %8, label %12, label %17

12:                                               ; preds = %5
  br i1 %11, label %38, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr @flag_intra, align 8, !tbaa !10
  %15 = load i8, ptr %14, align 1, !tbaa !35
  %16 = zext i8 %15 to i32
  br label %38

17:                                               ; preds = %5
  %18 = load ptr, ptr @flag_intra, align 8, !tbaa !10
  %19 = ashr i32 %7, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, ptr %18, i64 %20
  br i1 %11, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %21, i64 -1
  %24 = load i8, ptr %23, align 1, !tbaa !35
  %25 = zext i8 %24 to i32
  br label %38

26:                                               ; preds = %17
  %27 = load i8, ptr %21, align 1, !tbaa !35
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %21, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !35
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %21, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !35
  %36 = icmp ne i8 %35, 0
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %26, %29, %33, %12, %13, %22
  %39 = phi i32 [ %25, %22 ], [ %16, %13 ], [ 0, %12 ], [ 1, %29 ], [ 1, %26 ], [ %37, %33 ]
  store i32 %39, ptr @flag_intra_SAD, align 4, !tbaa !16
  br label %40

40:                                               ; preds = %38, %0
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @skip_intrabk_SAD(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #9 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp sgt i32 %4, 0
  %6 = add i32 %0, -9
  br i1 %5, label %7, label %17

7:                                                ; preds = %2
  %8 = icmp ult i32 %6, 2
  %9 = zext i1 %8 to i8
  %10 = load ptr, ptr @flag_intra, align 8, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %3, i64 152
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = ashr i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %10, i64 %14
  store i8 %9, ptr %15, align 1, !tbaa !35
  %16 = load ptr, ptr @img, align 8, !tbaa !10
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi ptr [ %16, %7 ], [ %3, %2 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 24
  %20 = load i32, ptr %19, align 8, !tbaa !32
  %21 = icmp ne i32 %20, 2
  %22 = icmp ult i32 %6, 2
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %145

24:                                               ; preds = %17
  %25 = load ptr, ptr @fastme_l0_cost, align 8, !tbaa !10
  %26 = load ptr, ptr @fastme_l1_cost, align 8, !tbaa !10
  %27 = icmp sgt i32 %1, 0
  %28 = zext nneg i32 %1 to i64
  %29 = zext nneg i32 %1 to i64
  %30 = zext nneg i32 %1 to i64
  %31 = zext nneg i32 %1 to i64
  br label %32

32:                                               ; preds = %24, %142
  %33 = phi i64 [ 0, %24 ], [ %143, %142 ]
  %34 = load ptr, ptr @fastme_ref_cost, align 8
  br label %35

35:                                               ; preds = %32, %55
  %36 = phi i64 [ 0, %32 ], [ %56, %55 ]
  %37 = getelementptr inbounds ptr, ptr %25, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  %40 = getelementptr inbounds i32, ptr %39, i64 %33
  store i32 0, ptr %40, align 4, !tbaa !16
  %41 = getelementptr inbounds ptr, ptr %26, i64 %36
  %42 = load ptr, ptr %41, align 8, !tbaa !10
  %43 = load ptr, ptr %42, align 8, !tbaa !10
  %44 = getelementptr inbounds i32, ptr %43, i64 %33
  store i32 0, ptr %44, align 4, !tbaa !16
  br i1 %27, label %45, label %55

45:                                               ; preds = %35, %45
  %46 = phi i64 [ %53, %45 ], [ 0, %35 ]
  %47 = getelementptr inbounds ptr, ptr %34, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = getelementptr inbounds ptr, ptr %48, i64 %36
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  %51 = load ptr, ptr %50, align 8, !tbaa !10
  %52 = getelementptr inbounds i32, ptr %51, i64 %33
  store i32 0, ptr %52, align 4, !tbaa !16
  %53 = add nuw nsw i64 %46, 1
  %54 = icmp eq i64 %53, %28
  br i1 %54, label %55, label %45

55:                                               ; preds = %45, %35
  %56 = add nuw nsw i64 %36, 1
  %57 = icmp eq i64 %56, 9
  br i1 %57, label %58, label %35

58:                                               ; preds = %55
  %59 = load ptr, ptr @fastme_ref_cost, align 8
  br label %60

60:                                               ; preds = %83, %58
  %61 = phi i64 [ 0, %58 ], [ %84, %83 ]
  %62 = getelementptr inbounds ptr, ptr %25, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !10
  %64 = getelementptr inbounds i8, ptr %63, i64 8
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  %66 = getelementptr inbounds i32, ptr %65, i64 %33
  store i32 0, ptr %66, align 4, !tbaa !16
  %67 = getelementptr inbounds ptr, ptr %26, i64 %61
  %68 = load ptr, ptr %67, align 8, !tbaa !10
  %69 = getelementptr inbounds i8, ptr %68, i64 8
  %70 = load ptr, ptr %69, align 8, !tbaa !10
  %71 = getelementptr inbounds i32, ptr %70, i64 %33
  store i32 0, ptr %71, align 4, !tbaa !16
  br i1 %27, label %72, label %83

72:                                               ; preds = %60, %72
  %73 = phi i64 [ %81, %72 ], [ 0, %60 ]
  %74 = getelementptr inbounds ptr, ptr %59, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !10
  %76 = getelementptr inbounds ptr, ptr %75, i64 %61
  %77 = load ptr, ptr %76, align 8, !tbaa !10
  %78 = getelementptr inbounds i8, ptr %77, i64 8
  %79 = load ptr, ptr %78, align 8, !tbaa !10
  %80 = getelementptr inbounds i32, ptr %79, i64 %33
  store i32 0, ptr %80, align 4, !tbaa !16
  %81 = add nuw nsw i64 %73, 1
  %82 = icmp eq i64 %81, %29
  br i1 %82, label %83, label %72

83:                                               ; preds = %72, %60
  %84 = add nuw nsw i64 %61, 1
  %85 = icmp eq i64 %84, 9
  br i1 %85, label %86, label %60

86:                                               ; preds = %83
  %87 = load ptr, ptr @fastme_ref_cost, align 8
  br label %88

88:                                               ; preds = %111, %86
  %89 = phi i64 [ 0, %86 ], [ %112, %111 ]
  %90 = getelementptr inbounds ptr, ptr %25, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !10
  %92 = getelementptr inbounds i8, ptr %91, i64 16
  %93 = load ptr, ptr %92, align 8, !tbaa !10
  %94 = getelementptr inbounds i32, ptr %93, i64 %33
  store i32 0, ptr %94, align 4, !tbaa !16
  %95 = getelementptr inbounds ptr, ptr %26, i64 %89
  %96 = load ptr, ptr %95, align 8, !tbaa !10
  %97 = getelementptr inbounds i8, ptr %96, i64 16
  %98 = load ptr, ptr %97, align 8, !tbaa !10
  %99 = getelementptr inbounds i32, ptr %98, i64 %33
  store i32 0, ptr %99, align 4, !tbaa !16
  br i1 %27, label %100, label %111

100:                                              ; preds = %88, %100
  %101 = phi i64 [ %109, %100 ], [ 0, %88 ]
  %102 = getelementptr inbounds ptr, ptr %87, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !10
  %104 = getelementptr inbounds ptr, ptr %103, i64 %89
  %105 = load ptr, ptr %104, align 8, !tbaa !10
  %106 = getelementptr inbounds i8, ptr %105, i64 16
  %107 = load ptr, ptr %106, align 8, !tbaa !10
  %108 = getelementptr inbounds i32, ptr %107, i64 %33
  store i32 0, ptr %108, align 4, !tbaa !16
  %109 = add nuw nsw i64 %101, 1
  %110 = icmp eq i64 %109, %30
  br i1 %110, label %111, label %100

111:                                              ; preds = %100, %88
  %112 = add nuw nsw i64 %89, 1
  %113 = icmp eq i64 %112, 9
  br i1 %113, label %114, label %88

114:                                              ; preds = %111
  %115 = load ptr, ptr @fastme_ref_cost, align 8
  br label %116

116:                                              ; preds = %139, %114
  %117 = phi i64 [ 0, %114 ], [ %140, %139 ]
  %118 = getelementptr inbounds ptr, ptr %25, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !10
  %120 = getelementptr inbounds i8, ptr %119, i64 24
  %121 = load ptr, ptr %120, align 8, !tbaa !10
  %122 = getelementptr inbounds i32, ptr %121, i64 %33
  store i32 0, ptr %122, align 4, !tbaa !16
  %123 = getelementptr inbounds ptr, ptr %26, i64 %117
  %124 = load ptr, ptr %123, align 8, !tbaa !10
  %125 = getelementptr inbounds i8, ptr %124, i64 24
  %126 = load ptr, ptr %125, align 8, !tbaa !10
  %127 = getelementptr inbounds i32, ptr %126, i64 %33
  store i32 0, ptr %127, align 4, !tbaa !16
  br i1 %27, label %128, label %139

128:                                              ; preds = %116, %128
  %129 = phi i64 [ %137, %128 ], [ 0, %116 ]
  %130 = getelementptr inbounds ptr, ptr %115, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !10
  %132 = getelementptr inbounds ptr, ptr %131, i64 %117
  %133 = load ptr, ptr %132, align 8, !tbaa !10
  %134 = getelementptr inbounds i8, ptr %133, i64 24
  %135 = load ptr, ptr %134, align 8, !tbaa !10
  %136 = getelementptr inbounds i32, ptr %135, i64 %33
  store i32 0, ptr %136, align 4, !tbaa !16
  %137 = add nuw nsw i64 %129, 1
  %138 = icmp eq i64 %137, %31
  br i1 %138, label %139, label %128

139:                                              ; preds = %128, %116
  %140 = add nuw nsw i64 %117, 1
  %141 = icmp eq i64 %140, 9
  br i1 %141, label %142, label %116

142:                                              ; preds = %139
  %143 = add nuw nsw i64 %33, 1
  %144 = icmp eq i64 %143, 4
  br i1 %144, label %145, label %32

145:                                              ; preds = %142, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @setup_FME(i16 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, ptr nocapture noundef readonly %5) local_unnamed_addr #10 {
  %7 = load ptr, ptr @input, align 8, !tbaa !10
  %8 = getelementptr inbounds i8, ptr %7, i64 1244
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr getelementptr inbounds (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !16
  %13 = add nsw i32 %9, 1
  %14 = srem i32 %12, %13
  br label %15

15:                                               ; preds = %6, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %6 ]
  %17 = icmp sgt i32 %4, 6
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = icmp sgt i32 %4, 4
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = icmp eq i32 %4, 4
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = icmp sgt i32 %4, 1
  br i1 %23, label %24, label %45

24:                                               ; preds = %22, %20, %18, %15
  %25 = phi i64 [ 40, %15 ], [ 32, %18 ], [ 16, %20 ], [ 8, %22 ]
  %26 = sext i32 %2 to i64
  %27 = getelementptr inbounds ptr, ptr %5, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = sext i32 %3 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = sext i32 %1 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  %35 = sext i16 %0 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = getelementptr inbounds i8, ptr %37, i64 %25
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  %40 = load i16, ptr %39, align 2, !tbaa !29
  %41 = sext i16 %40 to i32
  store i32 %41, ptr @pred_MV_uplayer, align 4, !tbaa !16
  %42 = getelementptr inbounds i8, ptr %39, i64 2
  %43 = load i16, ptr %42, align 2, !tbaa !29
  %44 = sext i16 %43 to i32
  store i32 %44, ptr getelementptr inbounds (i8, ptr @pred_MV_uplayer, i64 4), align 4, !tbaa !16
  br label %45

45:                                               ; preds = %24, %22
  %46 = load ptr, ptr @img, align 8, !tbaa !10
  %47 = getelementptr inbounds i8, ptr %46, i64 90264
  %48 = load i32, ptr %47, align 8, !tbaa !36
  %49 = icmp eq i32 %48, 0
  %50 = icmp eq i32 %1, 0
  br i1 %49, label %107, label %51

51:                                               ; preds = %45
  %52 = icmp sgt i16 %0, 1
  %53 = and i1 %52, %50
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = sext i32 %2 to i64
  %56 = getelementptr inbounds ptr, ptr %5, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !10
  %58 = sext i32 %3 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !10
  %61 = load ptr, ptr %60, align 8, !tbaa !10
  %62 = zext nneg i16 %0 to i64
  %63 = getelementptr ptr, ptr %61, i64 %62
  %64 = getelementptr i8, ptr %63, i64 -16
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  %66 = sext i32 %4 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !10
  %69 = load i16, ptr %68, align 2, !tbaa !29
  %70 = sext i16 %69 to i32
  %71 = lshr i16 %0, 1
  %72 = add nuw nsw i16 %71, 1
  %73 = zext nneg i16 %72 to i32
  %74 = mul nsw i32 %70, %73
  %75 = sitofp i32 %74 to float
  %76 = uitofp nneg i16 %71 to float
  %77 = fdiv float %75, %76
  br label %170

78:                                               ; preds = %51
  %79 = getelementptr inbounds i8, ptr %46, i64 24
  %80 = load i32, ptr %79, align 8, !tbaa !32
  %81 = icmp eq i32 %80, 1
  %82 = icmp ult i16 %0, 2
  %83 = and i1 %82, %81
  %84 = and i1 %50, %83
  br i1 %84, label %85, label %183

85:                                               ; preds = %78
  %86 = sext i32 %2 to i64
  %87 = getelementptr inbounds ptr, ptr %5, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !10
  %89 = sext i32 %3 to i64
  %90 = getelementptr inbounds ptr, ptr %88, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !10
  %92 = getelementptr inbounds i8, ptr %91, i64 8
  %93 = load ptr, ptr %92, align 8, !tbaa !10
  %94 = load ptr, ptr %93, align 8, !tbaa !10
  %95 = sext i32 %4 to i64
  %96 = getelementptr inbounds ptr, ptr %94, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !10
  %98 = load i16, ptr %97, align 2, !tbaa !29
  %99 = sext i16 %98 to i32
  %100 = sub nsw i32 0, %16
  %101 = mul nsw i32 %99, %100
  %102 = sitofp i32 %101 to float
  %103 = sub nsw i32 %9, %16
  %104 = sitofp i32 %103 to float
  %105 = fadd float %104, 1.000000e+00
  %106 = fdiv float %102, %105
  br label %170

107:                                              ; preds = %45
  %108 = icmp sgt i16 %0, 0
  %109 = and i1 %108, %50
  br i1 %109, label %110, label %133

110:                                              ; preds = %107
  %111 = sext i32 %2 to i64
  %112 = getelementptr inbounds ptr, ptr %5, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !10
  %114 = sext i32 %3 to i64
  %115 = getelementptr inbounds ptr, ptr %113, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !10
  %117 = load ptr, ptr %116, align 8, !tbaa !10
  %118 = zext nneg i16 %0 to i64
  %119 = getelementptr ptr, ptr %117, i64 %118
  %120 = getelementptr i8, ptr %119, i64 -8
  %121 = load ptr, ptr %120, align 8, !tbaa !10
  %122 = sext i32 %4 to i64
  %123 = getelementptr inbounds ptr, ptr %121, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !10
  %125 = load i16, ptr %124, align 2, !tbaa !29
  %126 = sext i16 %125 to i32
  %127 = add nuw i16 %0, 1
  %128 = zext i16 %127 to i32
  %129 = mul nsw i32 %126, %128
  %130 = sitofp i32 %129 to float
  %131 = uitofp nneg i16 %0 to float
  %132 = fdiv float %130, %131
  br label %170

133:                                              ; preds = %107
  %134 = getelementptr inbounds i8, ptr %46, i64 24
  %135 = load i32, ptr %134, align 8, !tbaa !32
  %136 = icmp eq i32 %135, 1
  %137 = icmp eq i16 %0, 0
  %138 = and i1 %137, %136
  %139 = and i1 %50, %138
  br i1 %139, label %140, label %183

140:                                              ; preds = %133
  %141 = sext i32 %2 to i64
  %142 = getelementptr inbounds ptr, ptr %5, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !10
  %144 = sext i32 %3 to i64
  %145 = getelementptr inbounds ptr, ptr %143, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !10
  %147 = getelementptr inbounds i8, ptr %146, i64 8
  %148 = load ptr, ptr %147, align 8, !tbaa !10
  %149 = load ptr, ptr %148, align 8, !tbaa !10
  %150 = sext i32 %4 to i64
  %151 = getelementptr inbounds ptr, ptr %149, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !10
  %153 = load i16, ptr %152, align 2, !tbaa !29
  %154 = sext i16 %153 to i32
  %155 = sub nsw i32 0, %16
  %156 = mul nsw i32 %154, %155
  %157 = sitofp i32 %156 to float
  %158 = sub nsw i32 %9, %16
  %159 = sitofp i32 %158 to float
  %160 = fadd float %159, 1.000000e+00
  %161 = fdiv float %157, %160
  %162 = fptosi float %161 to i32
  store i32 %162, ptr @pred_MV_ref, align 4, !tbaa !16
  %163 = getelementptr inbounds i8, ptr %152, i64 2
  %164 = load i16, ptr %163, align 2, !tbaa !29
  %165 = sext i16 %164 to i32
  %166 = mul nsw i32 %165, %155
  %167 = sitofp i32 %166 to float
  %168 = fdiv float %167, %160
  %169 = fptosi float %168 to i32
  store i32 %169, ptr getelementptr inbounds (i8, ptr @pred_MV_ref, i64 4), align 4, !tbaa !16
  br label %231

170:                                              ; preds = %85, %54, %110
  %171 = phi float [ %132, %110 ], [ %77, %54 ], [ %106, %85 ]
  %172 = phi ptr [ %124, %110 ], [ %68, %54 ], [ %97, %85 ]
  %173 = phi i32 [ %128, %110 ], [ %73, %54 ], [ %100, %85 ]
  %174 = phi float [ %131, %110 ], [ %76, %54 ], [ %105, %85 ]
  %175 = fptosi float %171 to i32
  store i32 %175, ptr @pred_MV_ref, align 4, !tbaa !16
  %176 = getelementptr inbounds i8, ptr %172, i64 2
  %177 = load i16, ptr %176, align 2, !tbaa !29
  %178 = sext i16 %177 to i32
  %179 = mul nsw i32 %173, %178
  %180 = sitofp i32 %179 to float
  %181 = fdiv float %180, %174
  %182 = fptosi float %181 to i32
  store i32 %182, ptr getelementptr inbounds (i8, ptr @pred_MV_ref, i64 4), align 4, !tbaa !16
  br label %183

183:                                              ; preds = %170, %133, %78
  %184 = icmp eq i32 %1, 0
  %185 = icmp sgt i16 %0, 0
  %186 = and i1 %185, %184
  br i1 %186, label %187, label %231

187:                                              ; preds = %183
  br i1 %49, label %216, label %188

188:                                              ; preds = %187
  %189 = icmp ugt i16 %0, 1
  %190 = load ptr, ptr @fastme_ref_cost, align 8, !tbaa !10
  br i1 %189, label %191, label %205

191:                                              ; preds = %188
  %192 = zext nneg i16 %0 to i64
  %193 = getelementptr ptr, ptr %190, i64 %192
  %194 = getelementptr i8, ptr %193, i64 -16
  %195 = load ptr, ptr %194, align 8, !tbaa !10
  %196 = sext i32 %4 to i64
  %197 = getelementptr inbounds ptr, ptr %195, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !10
  %199 = sext i32 %2 to i64
  %200 = getelementptr inbounds ptr, ptr %198, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !10
  %202 = sext i32 %3 to i64
  %203 = getelementptr inbounds i32, ptr %201, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !16
  br label %262

205:                                              ; preds = %188
  %206 = load ptr, ptr %190, align 8, !tbaa !10
  %207 = sext i32 %4 to i64
  %208 = getelementptr inbounds ptr, ptr %206, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !10
  %210 = sext i32 %2 to i64
  %211 = getelementptr inbounds ptr, ptr %209, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !10
  %213 = sext i32 %3 to i64
  %214 = getelementptr inbounds i32, ptr %212, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !16
  br label %262

216:                                              ; preds = %187
  %217 = load ptr, ptr @fastme_ref_cost, align 8, !tbaa !10
  %218 = zext nneg i16 %0 to i64
  %219 = getelementptr ptr, ptr %217, i64 %218
  %220 = getelementptr i8, ptr %219, i64 -8
  %221 = load ptr, ptr %220, align 8, !tbaa !10
  %222 = sext i32 %4 to i64
  %223 = getelementptr inbounds ptr, ptr %221, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !10
  %225 = sext i32 %2 to i64
  %226 = getelementptr inbounds ptr, ptr %224, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !10
  %228 = sext i32 %3 to i64
  %229 = getelementptr inbounds i32, ptr %227, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !16
  br label %262

231:                                              ; preds = %140, %183
  %232 = icmp sgt i32 %4, 1
  br i1 %232, label %233, label %268

233:                                              ; preds = %231
  br i1 %17, label %239, label %234

234:                                              ; preds = %233
  %235 = icmp ugt i32 %4, 4
  br i1 %235, label %239, label %236

236:                                              ; preds = %234
  %237 = icmp eq i32 %4, 4
  %238 = select i1 %237, i64 16, i64 8
  br label %239

239:                                              ; preds = %234, %233, %236
  %240 = phi i64 [ %238, %236 ], [ 40, %233 ], [ 32, %234 ]
  %241 = getelementptr inbounds i8, ptr %46, i64 152
  %242 = load i32, ptr %241, align 8, !tbaa !42
  %243 = ashr i32 %242, 2
  %244 = add nsw i32 %243, %3
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, ptr %46, i64 156
  %247 = load i32, ptr %246, align 4, !tbaa !43
  %248 = ashr i32 %247, 2
  %249 = add nsw i32 %248, %2
  %250 = sext i32 %249 to i64
  %251 = icmp eq i32 %1, 1
  %252 = load ptr, ptr @fastme_l1_cost, align 8
  %253 = load ptr, ptr @fastme_l0_cost, align 8
  %254 = select i1 %251, ptr %252, ptr %253
  %255 = getelementptr inbounds i8, ptr %254, i64 %240
  %256 = load ptr, ptr %255, align 8, !tbaa !10
  %257 = getelementptr inbounds ptr, ptr %256, i64 %250
  %258 = load ptr, ptr %257, align 8, !tbaa !10
  %259 = getelementptr inbounds i32, ptr %258, i64 %245
  %260 = load i32, ptr %259, align 4, !tbaa !16
  %261 = sdiv i32 %260, 2
  br label %262

262:                                              ; preds = %191, %205, %216, %239
  %263 = phi i32 [ %261, %239 ], [ %230, %216 ], [ %215, %205 ], [ %204, %191 ]
  %264 = phi ptr [ @pred_SAD_uplayer, %239 ], [ @pred_SAD_ref, %216 ], [ @pred_SAD_ref, %205 ], [ @pred_SAD_ref, %191 ]
  %265 = load i32, ptr @flag_intra_SAD, align 4, !tbaa !16
  %266 = icmp eq i32 %265, 0
  %267 = select i1 %266, i32 %263, i32 0
  store i32 %267, ptr %264, align 4, !tbaa !16
  br label %268

268:                                              ; preds = %262, %231
  store i32 %4, ptr @FME_blocktype, align 4, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !8, i64 84, !8, i64 148, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !14, i64 1228, !14, i64 1232, !14, i64 1236, !14, i64 1240, !14, i64 1244, !14, i64 1248, !14, i64 1252, !14, i64 1256, !14, i64 1260, !14, i64 1264, !14, i64 1268, !14, i64 1272, !14, i64 1276, !14, i64 1280, !14, i64 1284, !14, i64 1288, !14, i64 1292, !14, i64 1296, !14, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !14, i64 1904, !14, i64 1908, !14, i64 1912, !14, i64 1916, !14, i64 1920, !14, i64 1924, !14, i64 1928, !14, i64 1932, !14, i64 1936, !14, i64 1940, !14, i64 1944, !14, i64 1948, !8, i64 1952, !14, i64 2976, !14, i64 2980, !14, i64 2984, !14, i64 2988, !14, i64 2992, !14, i64 2996, !14, i64 3000, !14, i64 3004, !14, i64 3008, !14, i64 3012, !14, i64 3016, !14, i64 3020, !14, i64 3024, !14, i64 3028, !14, i64 3032, !14, i64 3036, !14, i64 3040, !14, i64 3044, !14, i64 3048, !14, i64 3052, !15, i64 3056, !14, i64 3064, !14, i64 3068, !14, i64 3072, !14, i64 3076, !14, i64 3080, !14, i64 3084, !14, i64 3088, !14, i64 3092, !14, i64 3096, !14, i64 3100, !14, i64 3104, !14, i64 3108, !14, i64 3112, !14, i64 3116, !14, i64 3120, !14, i64 3124, !14, i64 3128, !14, i64 3132, !14, i64 3136, !14, i64 3140, !14, i64 3144, !14, i64 3148, !8, i64 3152, !8, i64 3352, !14, i64 3552, !14, i64 3556, !14, i64 3560, !14, i64 3564, !14, i64 3568, !14, i64 3572, !14, i64 3576, !14, i64 3580, !14, i64 3584, !14, i64 3588, !14, i64 3592, !14, i64 3596, !14, i64 3600, !14, i64 3604, !14, i64 3608, !14, i64 3612, !14, i64 3616, !14, i64 3620, !8, i64 3624, !14, i64 3824, !14, i64 3828, !11, i64 3832, !11, i64 3840, !11, i64 3848, !11, i64 3856, !14, i64 3864, !14, i64 3868, !14, i64 3872, !14, i64 3876, !14, i64 3880, !14, i64 3884, !14, i64 3888, !14, i64 3892, !14, i64 3896, !14, i64 3900, !14, i64 3904, !14, i64 3908, !14, i64 3912, !14, i64 3916, !14, i64 3920, !14, i64 3924, !14, i64 3928, !8, i64 3932, !14, i64 3964, !14, i64 3968, !14, i64 3972, !14, i64 3976, !14, i64 3980, !14, i64 3984, !14, i64 3988, !14, i64 3992, !14, i64 3996, !14, i64 4000, !14, i64 4004, !8, i64 4008, !8, i64 4056, !14, i64 4256, !14, i64 4260, !14, i64 4264, !14, i64 4268, !8, i64 4272, !14, i64 4312, !14, i64 4316, !14, i64 4320, !14, i64 4324}
!14 = !{!"int", !8, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!14, !14, i64 0}
!17 = !{!18, !14, i64 52}
!18 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !7, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !11, i64 104, !11, i64 112, !14, i64 120, !11, i64 128, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !14, i64 152, !14, i64 156, !14, i64 160, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !11, i64 14136, !11, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !11, i64 31560, !11, i64 31568, !11, i64 31576, !8, i64 31584, !11, i64 89184, !11, i64 89192, !14, i64 89200, !14, i64 89204, !14, i64 89208, !14, i64 89212, !8, i64 89216, !14, i64 89280, !14, i64 89284, !14, i64 89288, !14, i64 89292, !14, i64 89296, !15, i64 89304, !14, i64 89312, !14, i64 89316, !14, i64 89320, !14, i64 89324, !11, i64 89328, !11, i64 89336, !11, i64 89344, !11, i64 89352, !8, i64 89360, !14, i64 89392, !14, i64 89396, !14, i64 89400, !14, i64 89404, !14, i64 89408, !14, i64 89412, !14, i64 89416, !14, i64 89420, !8, i64 89424, !14, i64 90192, !14, i64 90196, !14, i64 90200, !14, i64 90204, !14, i64 90208, !14, i64 90212, !14, i64 90216, !14, i64 90220, !14, i64 90224, !14, i64 90228, !14, i64 90232, !14, i64 90236, !14, i64 90240, !8, i64 90244, !14, i64 90248, !14, i64 90252, !8, i64 90256, !14, i64 90264, !14, i64 90268, !14, i64 90272, !14, i64 90276, !14, i64 90280, !14, i64 90284, !14, i64 90288, !14, i64 90292, !14, i64 90296, !14, i64 90300, !14, i64 90304, !14, i64 90308, !14, i64 90312, !14, i64 90316, !14, i64 90320, !14, i64 90324, !14, i64 90328, !11, i64 90336, !14, i64 90344, !14, i64 90348, !14, i64 90352, !14, i64 90356, !14, i64 90360, !15, i64 90368, !14, i64 90376, !14, i64 90380, !14, i64 90384, !14, i64 90388, !14, i64 90392, !14, i64 90396, !14, i64 90400, !11, i64 90408, !14, i64 90416, !14, i64 90420, !14, i64 90424, !14, i64 90428, !14, i64 90432, !14, i64 90436, !14, i64 90440, !14, i64 90444, !14, i64 90448, !14, i64 90452, !14, i64 90456, !14, i64 90460, !14, i64 90464, !14, i64 90468, !14, i64 90472, !14, i64 90476, !14, i64 90480, !14, i64 90484, !14, i64 90488, !14, i64 90492, !14, i64 90496, !14, i64 90500, !11, i64 90504, !11, i64 90512, !11, i64 90520, !14, i64 90528, !14, i64 90532, !14, i64 90536, !14, i64 90540, !14, i64 90544, !14, i64 90548, !14, i64 90552, !14, i64 90556, !14, i64 90560, !8, i64 90564, !14, i64 90572, !14, i64 90576, !14, i64 90580, !19, i64 90584, !14, i64 90588, !14, i64 90592}
!19 = !{!"short", !8, i64 0}
!20 = !{!13, !14, i64 32}
!21 = !{!18, !14, i64 36}
!22 = !{!18, !14, i64 60}
!23 = !{!18, !14, i64 90220}
!24 = !{!18, !11, i64 31576}
!25 = !{!18, !14, i64 12}
!26 = !{!27, !14, i64 424}
!27 = !{!"macroblock", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !8, i64 20, !11, i64 56, !11, i64 64, !14, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !14, i64 364, !28, i64 368, !8, i64 376, !8, i64 392, !28, i64 408, !14, i64 416, !14, i64 420, !14, i64 424, !14, i64 428, !14, i64 432, !14, i64 436, !14, i64 440, !14, i64 444, !14, i64 448, !14, i64 452, !14, i64 456, !14, i64 460, !14, i64 464, !14, i64 468, !14, i64 472, !19, i64 476, !15, i64 480, !14, i64 488, !14, i64 492, !14, i64 496, !14, i64 500, !14, i64 504, !14, i64 508, !14, i64 512, !14, i64 516, !14, i64 520}
!28 = !{!"long long", !8, i64 0}
!29 = !{!19, !19, i64 0}
!30 = !{!31, !14, i64 192}
!31 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !8, i64 24, !14, i64 56, !14, i64 60, !14, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !14, i64 164, !14, i64 168, !14, i64 172, !11, i64 176, !14, i64 184, !14, i64 188, !14, i64 192, !14, i64 196, !14, i64 200, !14, i64 204, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232}
!32 = !{!18, !14, i64 24}
!33 = !{!31, !14, i64 196}
!34 = !{!13, !14, i64 1912}
!35 = !{!8, !8, i64 0}
!36 = !{!18, !14, i64 90264}
!37 = !{!38, !14, i64 6392}
!38 = !{!"storable_picture", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !14, i64 6360, !14, i64 6364, !14, i64 6368, !14, i64 6372, !14, i64 6376, !14, i64 6380, !14, i64 6384, !14, i64 6388, !14, i64 6392, !14, i64 6396, !14, i64 6400, !14, i64 6404, !14, i64 6408, !14, i64 6412, !14, i64 6416, !11, i64 6424, !11, i64 6432, !11, i64 6440, !11, i64 6448, !11, i64 6456, !11, i64 6464, !11, i64 6472, !11, i64 6480, !11, i64 6488, !11, i64 6496, !11, i64 6504, !11, i64 6512, !11, i64 6520, !11, i64 6528, !11, i64 6536, !11, i64 6544, !14, i64 6552, !14, i64 6556, !14, i64 6560, !14, i64 6564, !14, i64 6568, !14, i64 6572, !14, i64 6576}
!39 = !{!38, !14, i64 6396}
!40 = !{ptr @FastLine4X, ptr @UMVLine4X}
!41 = !{!13, !14, i64 24}
!42 = !{!18, !14, i64 152}
!43 = !{!18, !14, i64 156}
!44 = !{!18, !14, i64 0}
!45 = !{!13, !14, i64 1244}
