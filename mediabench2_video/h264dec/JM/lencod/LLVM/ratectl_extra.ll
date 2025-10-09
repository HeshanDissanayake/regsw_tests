; ModuleID = 'src/ratectl.c'
source_filename = "src/ratectl.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@THETA = dso_local local_unnamed_addr constant double 1.363600e+00, align 8
@Switch = dso_local local_unnamed_addr constant i32 0, align 4
@Iprev_bits = dso_local local_unnamed_addr global i32 0, align 4
@Pprev_bits = dso_local local_unnamed_addr global i32 0, align 4
@OMEGA = dso_local local_unnamed_addr constant double 9.000000e-01, align 8
@img = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"rc_alloc: img->MADofMB\00", align 1
@input = external dso_local local_unnamed_addr global ptr, align 8
@BUPFMAD = dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUPFMAD\00", align 1
@BUCFMAD = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUCFMAD\00", align 1
@FCBUCFMAD = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUCFMAD\00", align 1
@FCBUPFMAD = dso_local local_unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUPFMAD\00", align 1
@Xp = dso_local local_unnamed_addr global i32 0, align 4
@Xb = dso_local local_unnamed_addr global i32 0, align 4
@bit_rate = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@frame_rate = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@PreviousBit_Rate = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@TotalNumberofBasicUnit = dso_local local_unnamed_addr global i32 0, align 4
@MINVALUE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@BufferSize = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@CurrentBufferFullness = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@GOPTargetBufferLevel = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@InitialDelayOffset = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@m_windowSize = dso_local local_unnamed_addr global i32 0, align 4
@MADm_windowSize = dso_local local_unnamed_addr global i32 0, align 4
@R = internal unnamed_addr global i32 0, align 4
@GAMMAP = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@BETAP = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@PPreHeader = dso_local local_unnamed_addr global i32 0, align 4
@Pm_X1 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Pm_X2 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@PMADPictureC1 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@PMADPictureC2 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Pm_rgQp = dso_local local_unnamed_addr global [20 x double] zeroinitializer, align 8
@Pm_rgRp = dso_local local_unnamed_addr global [20 x double] zeroinitializer, align 8
@PPictureMAD = dso_local local_unnamed_addr global [21 x double] zeroinitializer, align 8
@PDuantQp = dso_local local_unnamed_addr global i32 0, align 4
@PAveHeaderBits1 = dso_local local_unnamed_addr global i32 0, align 4
@PAveHeaderBits3 = dso_local local_unnamed_addr global i32 0, align 4
@DDquant = dso_local local_unnamed_addr global i32 0, align 4
@MBPerRow = dso_local local_unnamed_addr global i32 0, align 4
@RC_MAX_QUANT = dso_local local_unnamed_addr global i32 0, align 4
@RC_MIN_QUANT = dso_local local_unnamed_addr global i32 0, align 4
@LowerBound = dso_local local_unnamed_addr global i64 0, align 8
@UpperBound1 = dso_local local_unnamed_addr global i64 0, align 8
@Np = internal unnamed_addr global i32 0, align 4
@Nb = internal unnamed_addr global i32 0, align 4
@GOPOverdue = dso_local local_unnamed_addr global i32 0, align 4
@TotalPFrame = dso_local local_unnamed_addr global i32 0, align 4
@MyInitialQp = dso_local local_unnamed_addr global i32 0, align 4
@PreviousQp2 = dso_local local_unnamed_addr global i32 0, align 4
@QPLastGOP = dso_local local_unnamed_addr global i32 0, align 4
@FrameQPBuffer = dso_local local_unnamed_addr global i32 0, align 4
@QPLastPFrame = dso_local local_unnamed_addr global i32 0, align 4
@FieldQPBuffer = dso_local local_unnamed_addr global i32 0, align 4
@PAverageQp = dso_local local_unnamed_addr global i32 0, align 4
@Pm_Qp = dso_local local_unnamed_addr global i32 0, align 4
@PAveFrameQP = dso_local local_unnamed_addr global i32 0, align 4
@PreviousQp1 = dso_local local_unnamed_addr global i32 0, align 4
@NumberofBFrames = dso_local local_unnamed_addr global i32 0, align 4
@TargetBufferLevel = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@DeltaP = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Wp = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@AWp = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@AWb = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Wb = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@T = dso_local local_unnamed_addr global i64 0, align 8
@T1 = dso_local local_unnamed_addr global i64 0, align 8
@UpperBound2 = dso_local local_unnamed_addr global i64 0, align 8
@T_field = internal unnamed_addr global i32 0, align 4
@TotalFrameQP = dso_local local_unnamed_addr global i32 0, align 4
@NumberofBasicUnit = dso_local local_unnamed_addr global i32 0, align 4
@bits_topfield = internal unnamed_addr global i32 0, align 4
@diffy = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@m_Qc = dso_local local_unnamed_addr global i32 0, align 4
@Pm_Hp = dso_local local_unnamed_addr global i32 0, align 4
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@m_X1 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@m_X2 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@m_Hp = dso_local local_unnamed_addr global i32 0, align 4
@m_Qp = dso_local local_unnamed_addr global i32 0, align 4
@DuantQp = dso_local local_unnamed_addr global i32 0, align 4
@MADPictureC1 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@MADPictureC2 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@PreviousPictureMAD = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@CurrentFrameMAD = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@m_Qstep = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@PAveHeaderBits2 = dso_local local_unnamed_addr global i32 0, align 4
@FrameAveHeaderBits = dso_local local_unnamed_addr global i32 0, align 4
@FieldAveHeaderBits = dso_local local_unnamed_addr global i32 0, align 4
@TotalBasicUnitBits = dso_local local_unnamed_addr global i32 0, align 4
@TotalBUMAD = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@CurrentBUMAD = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@CodedBasicUnit = dso_local local_unnamed_addr global i32 0, align 4
@m_rgQp = dso_local local_unnamed_addr global [21 x double] zeroinitializer, align 8
@m_rgRp = dso_local local_unnamed_addr global [21 x double] zeroinitializer, align 8
@PreviousFrameMAD = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@m_rgRejected = dso_local local_unnamed_addr global [21 x i32] zeroinitializer, align 4
@PictureMAD = dso_local local_unnamed_addr global [21 x double] zeroinitializer, align 8
@ReferenceMAD = dso_local local_unnamed_addr global [21 x double] zeroinitializer, align 8
@PictureRejected = dso_local local_unnamed_addr global [21 x i32] zeroinitializer, align 4
@QP2Qstep.QP2QSTEP = internal unnamed_addr constant [6 x double] [double 6.250000e-01, double 6.875000e-01, double 8.125000e-01, double 8.750000e-01, double 1.000000e+00, double 1.125000e+00], align 8
@PreAveMBHeader = dso_local local_unnamed_addr global i32 0, align 4
@CurAveMBHeader = dso_local local_unnamed_addr global i32 0, align 4
@AverageMADPreviousFrame = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@diffyy = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@diffy8 = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 4
@BitRate = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind
define dso_local void @rc_alloc() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 90308
  %3 = load i32, ptr %2, align 4, !tbaa !10
  %4 = zext i32 %3 to i64
  %5 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 8) #20
  %6 = getelementptr inbounds i8, ptr %1, i64 90408
  store ptr %5, ptr %6, align 8, !tbaa !16
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #21
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 90308
  %11 = load i32, ptr %10, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %8, %0
  %13 = phi i32 [ %11, %8 ], [ %3, %0 ]
  %14 = load ptr, ptr @input, align 8, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %14, i64 3920
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = udiv i32 %13, %16
  %18 = zext i32 %17 to i64
  %19 = tail call noalias ptr @calloc(i64 noundef %18, i64 noundef 8) #20
  store ptr %19, ptr @BUPFMAD, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #21
  %22 = load ptr, ptr @img, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 90308
  %24 = load i32, ptr %23, align 4, !tbaa !10
  %25 = load ptr, ptr @input, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 3920
  %27 = load i32, ptr %26, align 8, !tbaa !17
  %28 = udiv i32 %24, %27
  %29 = zext i32 %28 to i64
  br label %30

30:                                               ; preds = %21, %12
  %31 = phi i64 [ %29, %21 ], [ %18, %12 ]
  %32 = tail call noalias ptr @calloc(i64 noundef %31, i64 noundef 8) #20
  store ptr %32, ptr @BUCFMAD, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #21
  %35 = load ptr, ptr @img, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 90308
  %37 = load i32, ptr %36, align 4, !tbaa !10
  %38 = load ptr, ptr @input, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 3920
  %40 = load i32, ptr %39, align 8, !tbaa !17
  %41 = udiv i32 %37, %40
  %42 = zext i32 %41 to i64
  br label %43

43:                                               ; preds = %34, %30
  %44 = phi i64 [ %42, %34 ], [ %31, %30 ]
  %45 = tail call noalias ptr @calloc(i64 noundef %44, i64 noundef 8) #20
  store ptr %45, ptr @FCBUCFMAD, align 8, !tbaa !6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #21
  %48 = load ptr, ptr @img, align 8, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %48, i64 90308
  %50 = load i32, ptr %49, align 4, !tbaa !10
  %51 = load ptr, ptr @input, align 8, !tbaa !6
  %52 = getelementptr inbounds i8, ptr %51, i64 3920
  %53 = load i32, ptr %52, align 8, !tbaa !17
  %54 = udiv i32 %50, %53
  %55 = zext i32 %54 to i64
  br label %56

56:                                               ; preds = %47, %43
  %57 = phi i64 [ %55, %47 ], [ %44, %43 ]
  %58 = tail call noalias ptr @calloc(i64 noundef %57, i64 noundef 8) #20
  store ptr %58, ptr @FCBUPFMAD, align 8, !tbaa !6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #21
  br label %61

61:                                               ; preds = %60, %56
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @rc_free() local_unnamed_addr #3 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 90408
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %3) #21
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 90408
  store ptr null, ptr %7, align 8, !tbaa !16
  br label %8

8:                                                ; preds = %5, %0
  %9 = load ptr, ptr @BUPFMAD, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %9) #21
  store ptr null, ptr @BUPFMAD, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr @BUCFMAD, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %13) #21
  store ptr null, ptr @BUCFMAD, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr @FCBUCFMAD, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %17) #21
  store ptr null, ptr @FCBUCFMAD, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr @FCBUPFMAD, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %21) #21
  store ptr null, ptr @FCBUPFMAD, align 8, !tbaa !6
  br label %24

24:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @rc_init_seq() local_unnamed_addr #5 {
  store i32 0, ptr @Xp, align 4, !tbaa !19
  store i32 0, ptr @Xb, align 4, !tbaa !19
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 3912
  %3 = load i32, ptr %2, align 8, !tbaa !20
  %4 = sitofp i32 %3 to double
  store double %4, ptr @bit_rate, align 8, !tbaa !21
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 48
  %7 = load float, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds i8, ptr %1, i64 1244
  %9 = load i32, ptr %8, align 4, !tbaa !23
  %10 = add nsw i32 %9, 1
  %11 = sitofp i32 %10 to float
  %12 = fmul float %7, %11
  %13 = getelementptr inbounds i8, ptr %1, i64 20
  %14 = load i32, ptr %13, align 4, !tbaa !24
  %15 = add nsw i32 %14, 1
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %12, %16
  %18 = fpext float %17 to double
  store double %18, ptr @frame_rate, align 8, !tbaa !21
  store double %4, ptr @PreviousBit_Rate, align 8, !tbaa !21
  %19 = getelementptr inbounds i8, ptr %5, i64 60
  %20 = load i32, ptr %19, align 4, !tbaa !25
  %21 = getelementptr inbounds i8, ptr %5, i64 52
  %22 = load i32, ptr %21, align 4, !tbaa !26
  %23 = mul nsw i32 %22, %20
  %24 = sdiv i32 %23, 256
  %25 = getelementptr inbounds i8, ptr %5, i64 90432
  store i32 %24, ptr %25, align 8, !tbaa !27
  %26 = getelementptr inbounds i8, ptr %1, i64 3920
  %27 = load i32, ptr %26, align 8, !tbaa !17
  %28 = icmp sgt i32 %27, %24
  br i1 %28, label %29, label %30

29:                                               ; preds = %0
  store i32 %24, ptr %26, align 8, !tbaa !17
  br label %32

30:                                               ; preds = %0
  %31 = icmp slt i32 %27, %24
  br i1 %31, label %34, label %32

32:                                               ; preds = %29, %30
  %33 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  br label %36

34:                                               ; preds = %30
  %35 = sdiv i32 %24, %27
  store i32 %35, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  br label %36

36:                                               ; preds = %32, %34
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store double 4.000000e+00, ptr @MINVALUE, align 8, !tbaa !21
  %38 = fmul double %4, 2.560000e+00
  store double %38, ptr @BufferSize, align 8, !tbaa !21
  store double 0.000000e+00, ptr @CurrentBufferFullness, align 8, !tbaa !21
  store double 0.000000e+00, ptr @GOPTargetBufferLevel, align 8, !tbaa !21
  %39 = fmul double %38, 8.000000e-01
  store double %39, ptr @InitialDelayOffset, align 8, !tbaa !21
  store i32 0, ptr @m_windowSize, align 4, !tbaa !19
  store i32 0, ptr @MADm_windowSize, align 4, !tbaa !19
  %40 = getelementptr inbounds i8, ptr %5, i64 90384
  store i32 0, ptr %40, align 8, !tbaa !28
  %41 = getelementptr inbounds i8, ptr %5, i64 90388
  store i32 0, ptr %41, align 4, !tbaa !29
  %42 = getelementptr inbounds i8, ptr %5, i64 90392
  store i32 0, ptr %42, align 8, !tbaa !30
  store i32 0, ptr @R, align 4, !tbaa !19
  %43 = icmp sgt i32 %9, 0
  %44 = select i1 %43, double 2.500000e-01, double 5.000000e-01
  %45 = select i1 %43, double 9.000000e-01, double 5.000000e-01
  store double %44, ptr @GAMMAP, align 8, !tbaa !21
  store double %45, ptr @BETAP, align 8, !tbaa !21
  store i32 0, ptr @PPreHeader, align 4, !tbaa !19
  store double %4, ptr @Pm_X1, align 8, !tbaa !21
  store double 0.000000e+00, ptr @Pm_X2, align 8, !tbaa !21
  store double 1.000000e+00, ptr @PMADPictureC1, align 8, !tbaa !21
  store double 0.000000e+00, ptr @PMADPictureC2, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @Pm_rgQp, i8 0, i64 160, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @Pm_rgRp, i8 0, i64 160, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) @PPictureMAD, i8 0, i64 168, i1 false)
  store i32 2, ptr @PDuantQp, align 4, !tbaa !19
  store i32 0, ptr @PAveHeaderBits1, align 4, !tbaa !19
  store i32 0, ptr @PAveHeaderBits3, align 4, !tbaa !19
  %46 = icmp sgt i32 %37, 8
  %47 = select i1 %46, i32 1, i32 2
  store i32 %47, ptr @DDquant, align 4, !tbaa !19
  %48 = sdiv i32 %22, 16
  store i32 %48, ptr @MBPerRow, align 4, !tbaa !19
  %49 = getelementptr inbounds i8, ptr %5, i64 90424
  store i32 0, ptr %49, align 8, !tbaa !31
  store i32 51, ptr @RC_MAX_QUANT, align 4, !tbaa !19
  store i32 0, ptr @RC_MIN_QUANT, align 4, !tbaa !19
  %50 = sitofp i32 %22 to double
  %51 = fmul double %18, %50
  %52 = sitofp i32 %20 to double
  %53 = fmul double %51, %52
  %54 = fdiv double %4, %53
  switch i32 %22, label %56 [
    i32 176, label %57
    i32 352, label %55
  ]

55:                                               ; preds = %36
  br label %57

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %36, %55, %56
  %58 = phi double [ 6.000000e-01, %55 ], [ 1.400000e+00, %56 ], [ 3.000000e-01, %36 ]
  %59 = phi double [ 1.200000e+00, %55 ], [ 2.400000e+00, %56 ], [ 6.000000e-01, %36 ]
  %60 = phi double [ 2.000000e-01, %55 ], [ 6.000000e-01, %56 ], [ 1.000000e-01, %36 ]
  %61 = getelementptr inbounds i8, ptr %1, i64 3916
  %62 = load i32, ptr %61, align 4, !tbaa !32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = fcmp ugt double %54, %60
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = fcmp ugt double %54, %58
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = fcmp ugt double %54, %59
  %70 = select i1 %69, i32 10, i32 20
  br label %71

71:                                               ; preds = %68, %66, %64
  %72 = phi i32 [ 35, %64 ], [ 25, %66 ], [ %70, %68 ]
  store i32 %72, ptr %61, align 4, !tbaa !32
  br label %73

73:                                               ; preds = %71, %57
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @rc_init_GOP(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #5 {
  %3 = load i32, ptr @R, align 4, !tbaa !19
  %4 = sitofp i32 %3 to double
  %5 = load double, ptr @bit_rate, align 8, !tbaa !21
  %6 = load double, ptr @frame_rate, align 8, !tbaa !21
  %7 = fdiv double %5, %6
  %8 = fadd double %7, %4
  %9 = fptosi double %8 to i64
  store i64 %9, ptr @LowerBound, align 8, !tbaa !33
  %10 = load double, ptr @InitialDelayOffset, align 8, !tbaa !21
  %11 = fadd double %10, %4
  %12 = fptosi double %11 to i64
  store i64 %12, ptr @UpperBound1, align 8, !tbaa !33
  %13 = add i32 %0, 1
  %14 = add i32 %13, %1
  %15 = sitofp i32 %14 to double
  %16 = fmul double %5, %15
  %17 = fdiv double %16, %6
  %18 = fadd double %17, 5.000000e-01
  %19 = tail call double @llvm.floor.f64(double %18)
  %20 = fptosi double %19 to i32
  %21 = add nsw i32 %3, %20
  store i32 %21, ptr @R, align 4, !tbaa !19
  store i32 %0, ptr @Np, align 4, !tbaa !19
  store i32 %1, ptr @Nb, align 4, !tbaa !19
  store i32 0, ptr @GOPOverdue, align 4, !tbaa !19
  %22 = load ptr, ptr @img, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 90436
  store i32 1, ptr %23, align 4, !tbaa !35
  store i32 %0, ptr @TotalPFrame, align 4, !tbaa !19
  %24 = getelementptr inbounds i8, ptr %22, i64 90392
  %25 = load i32, ptr %24, align 8, !tbaa !30
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !30
  %27 = icmp eq i32 %25, 0
  %28 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %27, label %29, label %33

29:                                               ; preds = %2
  %30 = getelementptr inbounds i8, ptr %28, i64 3916
  %31 = load i32, ptr %30, align 4, !tbaa !32
  store i32 %31, ptr @MyInitialQp, align 4, !tbaa !19
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %31, ptr @QPLastGOP, align 4, !tbaa !19
  br label %87

33:                                               ; preds = %2
  %34 = getelementptr inbounds i8, ptr %28, i64 3552
  %35 = load i32, ptr %34, align 8, !tbaa !36
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %28, i64 3556
  %39 = load i32, ptr %38, align 4, !tbaa !37
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %22, i64 90396
  %43 = load i32, ptr %42, align 4, !tbaa !38
  %44 = load i32, ptr @QPLastPFrame, align 4, !tbaa !19
  br label %57

45:                                               ; preds = %37, %33
  %46 = getelementptr inbounds i8, ptr %22, i64 90428
  %47 = load i32, ptr %46, align 4, !tbaa !39
  %48 = icmp eq i32 %47, 1
  %49 = getelementptr inbounds i8, ptr %22, i64 90396
  %50 = load i32, ptr %49, align 4, !tbaa !38
  br i1 %48, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, ptr @FrameQPBuffer, align 4, !tbaa !19
  %53 = add nsw i32 %50, %52
  store i32 %52, ptr @QPLastPFrame, align 4, !tbaa !19
  br label %57

54:                                               ; preds = %45
  %55 = load i32, ptr @FieldQPBuffer, align 4, !tbaa !19
  %56 = add nsw i32 %50, %55
  store i32 %56, ptr %49, align 4, !tbaa !38
  store i32 %55, ptr @QPLastPFrame, align 4, !tbaa !19
  br label %57

57:                                               ; preds = %41, %51, %54
  %58 = phi i32 [ %44, %41 ], [ %52, %51 ], [ %55, %54 ]
  %59 = phi i32 [ %43, %41 ], [ %53, %51 ], [ %56, %54 ]
  %60 = sitofp i32 %59 to double
  %61 = getelementptr inbounds i8, ptr %22, i64 90400
  %62 = load i32, ptr %61, align 8, !tbaa !40
  %63 = sitofp i32 %62 to double
  %64 = fdiv double %60, %63
  %65 = fadd double %64, 5.000000e-01
  %66 = fptosi double %65 to i32
  %67 = fdiv double %15, 1.500000e+01
  %68 = fadd double %67, 5.000000e-01
  %69 = fptosi double %68 to i32
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 2)
  %71 = sub nsw i32 %66, %70
  %72 = add nsw i32 %58, -2
  %73 = icmp sgt i32 %71, %72
  %74 = sext i1 %73 to i32
  %75 = add nsw i32 %71, %74
  %76 = load i32, ptr @QPLastGOP, align 4
  %77 = add nsw i32 %76, -2
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 %75)
  %79 = add nsw i32 %76, 2
  %80 = tail call i32 @llvm.smin.i32(i32 %79, i32 %78)
  %81 = load i32, ptr @RC_MAX_QUANT, align 4
  %82 = tail call i32 @llvm.smin.i32(i32 %81, i32 %80)
  %83 = load i32, ptr @RC_MIN_QUANT, align 4
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 %82)
  store i32 %84, ptr @PAverageQp, align 4, !tbaa !19
  store i32 %84, ptr @MyInitialQp, align 4, !tbaa !19
  store i32 %84, ptr @QPLastGOP, align 4, !tbaa !19
  store i32 %84, ptr @Pm_Qp, align 4, !tbaa !19
  store i32 %84, ptr @PAveFrameQP, align 4, !tbaa !19
  %85 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %85, ptr @PreviousQp1, align 4, !tbaa !19
  %86 = add nsw i32 %84, -1
  store i32 %86, ptr @PreviousQp2, align 4, !tbaa !19
  br label %87

87:                                               ; preds = %57, %29
  %88 = getelementptr inbounds i8, ptr %22, i64 90396
  store i32 0, ptr %88, align 4, !tbaa !38
  %89 = getelementptr inbounds i8, ptr %22, i64 90400
  store i32 0, ptr %89, align 8, !tbaa !40
  store i32 0, ptr @NumberofBFrames, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @rc_init_pict(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #8 {
  %4 = load ptr, ptr @input, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 3556
  %6 = load i32, ptr %5, align 4, !tbaa !37
  %7 = icmp ne i32 %6, 0
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %7, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %8, i64 90432
  %11 = load i32, ptr %10, align 8, !tbaa !27
  %12 = getelementptr inbounds i8, ptr %8, i64 90444
  %13 = load i32, ptr %12, align 4, !tbaa !41
  %14 = sdiv i32 %11, %13
  store i32 %14, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  br label %15

15:                                               ; preds = %9, %3
  %16 = getelementptr inbounds i8, ptr %8, i64 90440
  store i32 0, ptr %16, align 8, !tbaa !42
  %17 = getelementptr inbounds i8, ptr %4, i64 3924
  %18 = load i32, ptr %17, align 4, !tbaa !43
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %8, i64 90388
  %22 = load i32, ptr %21, align 4, !tbaa !29
  switch i32 %22, label %28 [
    i32 58, label %23
    i32 59, label %26
  ]

23:                                               ; preds = %20
  %24 = load double, ptr @bit_rate, align 8, !tbaa !21
  %25 = fmul double %24, 1.500000e+00
  store double %25, ptr @bit_rate, align 8, !tbaa !21
  br label %28

26:                                               ; preds = %20
  %27 = load double, ptr @bit_rate, align 8, !tbaa !21
  store double %27, ptr @PreviousBit_Rate, align 8, !tbaa !21
  br label %28

28:                                               ; preds = %20, %23, %26, %15
  %29 = icmp eq i32 %0, 0
  %30 = icmp eq i32 %1, 0
  %31 = or i32 %1, %0
  %32 = icmp ne i32 %31, 0
  %33 = icmp ne i32 %2, 0
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %417

35:                                               ; preds = %28
  %36 = getelementptr inbounds i8, ptr %8, i64 24
  %37 = load i32, ptr %36, align 8, !tbaa !44
  switch i32 %37, label %420 [
    i32 0, label %38
    i32 1, label %220
  ]

38:                                               ; preds = %35
  %39 = load double, ptr @PreviousBit_Rate, align 8, !tbaa !21
  %40 = load double, ptr @bit_rate, align 8, !tbaa !21
  %41 = fcmp une double %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = fsub double %40, %39
  %44 = load i32, ptr @Np, align 4, !tbaa !19
  %45 = load i32, ptr @Nb, align 4, !tbaa !19
  %46 = add nsw i32 %45, %44
  %47 = sitofp i32 %46 to double
  %48 = fmul double %43, %47
  %49 = load double, ptr @frame_rate, align 8, !tbaa !21
  %50 = fdiv double %48, %49
  %51 = fadd double %50, 5.000000e-01
  %52 = tail call double @llvm.floor.f64(double %51)
  %53 = fptosi double %52 to i32
  %54 = load i32, ptr @R, align 4, !tbaa !19
  %55 = add nsw i32 %54, %53
  store i32 %55, ptr @R, align 4, !tbaa !19
  br label %56

56:                                               ; preds = %42, %38
  %57 = getelementptr inbounds i8, ptr %8, i64 90444
  %58 = load i32, ptr %57, align 4, !tbaa !41
  %59 = getelementptr inbounds i8, ptr %8, i64 90432
  %60 = load i32, ptr %59, align 8, !tbaa !27
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = getelementptr inbounds i8, ptr %8, i64 90400
  %64 = load i32, ptr %63, align 8, !tbaa !40
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load double, ptr @CurrentBufferFullness, align 8, !tbaa !21
  %68 = load double, ptr @GOPTargetBufferLevel, align 8, !tbaa !21
  %69 = fsub double %67, %68
  %70 = load i32, ptr @TotalPFrame, align 4, !tbaa !19
  %71 = add nsw i32 %70, -1
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %69, %72
  store double %73, ptr @DeltaP, align 8, !tbaa !21
  %74 = fsub double %67, %73
  br label %167

75:                                               ; preds = %62
  %76 = icmp sgt i32 %64, 1
  br i1 %76, label %77, label %169

77:                                               ; preds = %75
  %78 = load double, ptr @DeltaP, align 8, !tbaa !21
  %79 = load double, ptr @TargetBufferLevel, align 8, !tbaa !21
  %80 = fsub double %79, %78
  br label %167

81:                                               ; preds = %56
  %82 = getelementptr inbounds i8, ptr %8, i64 90388
  %83 = load i32, ptr %82, align 4, !tbaa !29
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %124

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %4, i64 3552
  %87 = load i32, ptr %86, align 8, !tbaa !36
  %88 = icmp eq i32 %87, 2
  %89 = or i1 %7, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  br label %110

92:                                               ; preds = %85
  %93 = getelementptr inbounds i8, ptr %8, i64 90424
  %94 = load i32, ptr %93, align 8, !tbaa !31
  %95 = icmp eq i32 %94, 1
  %96 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  br i1 %95, label %97, label %110

97:                                               ; preds = %92
  %98 = icmp sgt i32 %96, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %97
  %100 = load ptr, ptr @FCBUCFMAD, align 8, !tbaa !6
  %101 = load ptr, ptr @FCBUPFMAD, align 8, !tbaa !6
  %102 = zext nneg i32 %96 to i64
  br label %103

103:                                              ; preds = %99, %103
  %104 = phi i64 [ 0, %99 ], [ %108, %103 ]
  %105 = getelementptr inbounds double, ptr %100, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !21
  %107 = getelementptr inbounds double, ptr %101, i64 %104
  store double %106, ptr %107, align 8, !tbaa !21
  %108 = add nuw nsw i64 %104, 1
  %109 = icmp eq i64 %108, %102
  br i1 %109, label %124, label %103

110:                                              ; preds = %90, %92
  %111 = phi i32 [ %91, %90 ], [ %96, %92 ]
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load ptr, ptr @BUCFMAD, align 8, !tbaa !6
  %115 = load ptr, ptr @BUPFMAD, align 8, !tbaa !6
  %116 = zext nneg i32 %111 to i64
  br label %117

117:                                              ; preds = %113, %117
  %118 = phi i64 [ 0, %113 ], [ %122, %117 ]
  %119 = getelementptr inbounds double, ptr %114, i64 %118
  %120 = load double, ptr %119, align 8, !tbaa !21
  %121 = getelementptr inbounds double, ptr %115, i64 %118
  store double %120, ptr %121, align 8, !tbaa !21
  %122 = add nuw nsw i64 %118, 1
  %123 = icmp eq i64 %122, %116
  br i1 %123, label %124, label %117

124:                                              ; preds = %117, %103, %110, %97, %81
  %125 = getelementptr inbounds i8, ptr %8, i64 90392
  %126 = load i32, ptr %125, align 8, !tbaa !30
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = getelementptr inbounds i8, ptr %8, i64 90400
  %130 = load i32, ptr %129, align 8, !tbaa !40
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load double, ptr @CurrentBufferFullness, align 8, !tbaa !21
  %134 = load double, ptr @GOPTargetBufferLevel, align 8, !tbaa !21
  %135 = fsub double %133, %134
  %136 = load i32, ptr @TotalPFrame, align 4, !tbaa !19
  %137 = add nsw i32 %136, -1
  %138 = sitofp i32 %137 to double
  %139 = fdiv double %135, %138
  store double %139, ptr @DeltaP, align 8, !tbaa !21
  %140 = fsub double %133, %139
  br label %167

141:                                              ; preds = %128
  %142 = icmp sgt i32 %130, 1
  br i1 %142, label %143, label %169

143:                                              ; preds = %141
  %144 = load double, ptr @DeltaP, align 8, !tbaa !21
  %145 = load double, ptr @TargetBufferLevel, align 8, !tbaa !21
  %146 = fsub double %145, %144
  br label %167

147:                                              ; preds = %124
  %148 = icmp sgt i32 %126, 1
  br i1 %148, label %149, label %169

149:                                              ; preds = %147
  %150 = getelementptr inbounds i8, ptr %8, i64 90400
  %151 = load i32, ptr %150, align 8, !tbaa !40
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load double, ptr @CurrentBufferFullness, align 8, !tbaa !21
  %155 = load double, ptr @GOPTargetBufferLevel, align 8, !tbaa !21
  %156 = fsub double %154, %155
  %157 = load i32, ptr @TotalPFrame, align 4, !tbaa !19
  %158 = sitofp i32 %157 to double
  %159 = fdiv double %156, %158
  store double %159, ptr @DeltaP, align 8, !tbaa !21
  %160 = fsub double %154, %159
  br label %167

161:                                              ; preds = %149
  %162 = icmp sgt i32 %151, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %161
  %164 = load double, ptr @DeltaP, align 8, !tbaa !21
  %165 = load double, ptr @TargetBufferLevel, align 8, !tbaa !21
  %166 = fsub double %165, %164
  br label %167

167:                                              ; preds = %77, %66, %163, %153, %132, %143
  %168 = phi double [ %146, %143 ], [ %140, %132 ], [ %160, %153 ], [ %166, %163 ], [ %74, %66 ], [ %80, %77 ]
  store double %168, ptr @TargetBufferLevel, align 8, !tbaa !21
  br label %169

169:                                              ; preds = %167, %141, %161, %147, %75
  %170 = getelementptr inbounds i8, ptr %8, i64 90388
  %171 = load i32, ptr %170, align 4, !tbaa !29
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load double, ptr @Wp, align 8, !tbaa !21
  br label %197

175:                                              ; preds = %169
  %176 = add i32 %171, -2
  %177 = icmp ult i32 %176, 6
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = load double, ptr @Wp, align 8, !tbaa !21
  %180 = add nsw i32 %171, -1
  %181 = uitofp nneg i32 %180 to double
  %182 = fmul double %179, %181
  %183 = uitofp nneg i32 %171 to double
  %184 = fdiv double %182, %183
  %185 = load double, ptr @AWp, align 8, !tbaa !21
  %186 = fdiv double %185, %183
  %187 = fadd double %184, %186
  br label %197

188:                                              ; preds = %175
  %189 = icmp sgt i32 %171, 1
  br i1 %189, label %190, label %199

190:                                              ; preds = %188
  %191 = load double, ptr @Wp, align 8, !tbaa !21
  %192 = fmul double %191, 1.250000e-01
  %193 = load double, ptr @AWp, align 8, !tbaa !21
  %194 = fmul double %193, 7.000000e+00
  %195 = fmul double %194, 1.250000e-01
  %196 = fadd double %192, %195
  br label %197

197:                                              ; preds = %178, %190, %173
  %198 = phi double [ %174, %173 ], [ %196, %190 ], [ %187, %178 ]
  store double %198, ptr @AWp, align 8, !tbaa !21
  br label %199

199:                                              ; preds = %197, %188
  %200 = getelementptr inbounds i8, ptr %4, i64 1244
  %201 = load i32, ptr %200, align 4, !tbaa !23
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %269

203:                                              ; preds = %199
  %204 = load double, ptr @AWp, align 8, !tbaa !21
  %205 = add nuw nsw i32 %201, 1
  %206 = uitofp nneg i32 %205 to double
  %207 = fmul double %204, %206
  %208 = load double, ptr @bit_rate, align 8, !tbaa !21
  %209 = fmul double %207, %208
  %210 = load double, ptr @frame_rate, align 8, !tbaa !21
  %211 = load double, ptr @AWb, align 8, !tbaa !21
  %212 = uitofp nneg i32 %201 to double
  %213 = tail call double @llvm.fmuladd.f64(double %211, double %212, double %204)
  %214 = fmul double %210, %213
  %215 = fdiv double %209, %214
  %216 = fdiv double %208, %210
  %217 = fsub double %215, %216
  %218 = load double, ptr @TargetBufferLevel, align 8, !tbaa !21
  %219 = fadd double %218, %217
  store double %219, ptr @TargetBufferLevel, align 8, !tbaa !21
  br label %269

220:                                              ; preds = %35
  %221 = load double, ptr @PreviousBit_Rate, align 8, !tbaa !21
  %222 = load double, ptr @bit_rate, align 8, !tbaa !21
  %223 = fcmp une double %221, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = fsub double %222, %221
  %226 = load i32, ptr @Np, align 4, !tbaa !19
  %227 = load i32, ptr @Nb, align 4, !tbaa !19
  %228 = add nsw i32 %227, %226
  %229 = sitofp i32 %228 to double
  %230 = fmul double %225, %229
  %231 = load double, ptr @frame_rate, align 8, !tbaa !21
  %232 = fdiv double %230, %231
  %233 = fadd double %232, 5.000000e-01
  %234 = tail call double @llvm.floor.f64(double %233)
  %235 = fptosi double %234 to i32
  %236 = load i32, ptr @R, align 4, !tbaa !19
  %237 = add nsw i32 %236, %235
  store i32 %237, ptr @R, align 4, !tbaa !19
  br label %238

238:                                              ; preds = %224, %220
  %239 = getelementptr inbounds i8, ptr %8, i64 90388
  %240 = load i32, ptr %239, align 4, !tbaa !29
  %241 = icmp eq i32 %240, 1
  %242 = getelementptr inbounds i8, ptr %8, i64 90384
  %243 = load i32, ptr %242, align 8, !tbaa !28
  %244 = icmp eq i32 %243, 1
  %245 = select i1 %241, i1 %244, i1 false
  br i1 %245, label %246, label %249

246:                                              ; preds = %238
  %247 = load double, ptr @Wp, align 8, !tbaa !21
  store double %247, ptr @AWp, align 8, !tbaa !21
  %248 = load double, ptr @Wb, align 8, !tbaa !21
  br label %418

249:                                              ; preds = %238
  %250 = icmp sgt i32 %243, 1
  br i1 %250, label %251, label %420

251:                                              ; preds = %249
  %252 = icmp ult i32 %243, 8
  %253 = load double, ptr @Wb, align 8, !tbaa !21
  br i1 %252, label %254, label %263

254:                                              ; preds = %251
  %255 = add nsw i32 %243, -1
  %256 = uitofp nneg i32 %255 to double
  %257 = fmul double %253, %256
  %258 = uitofp nneg i32 %243 to double
  %259 = fdiv double %257, %258
  %260 = load double, ptr @AWb, align 8, !tbaa !21
  %261 = fdiv double %260, %258
  %262 = fadd double %259, %261
  br label %418

263:                                              ; preds = %251
  %264 = fmul double %253, 1.250000e-01
  %265 = load double, ptr @AWb, align 8, !tbaa !21
  %266 = fmul double %265, 7.000000e+00
  %267 = fmul double %266, 1.250000e-01
  %268 = fadd double %264, %267
  br label %418

269:                                              ; preds = %203, %199
  br i1 %61, label %270, label %310

270:                                              ; preds = %269
  %271 = icmp sgt i32 %171, 0
  br i1 %271, label %272, label %398

272:                                              ; preds = %270
  %273 = load double, ptr @Wp, align 8, !tbaa !21
  %274 = load i32, ptr @R, align 4, !tbaa !19
  %275 = sitofp i32 %274 to double
  %276 = fmul double %273, %275
  %277 = load i32, ptr @Np, align 4, !tbaa !19
  %278 = sitofp i32 %277 to double
  %279 = load i32, ptr @Nb, align 4, !tbaa !19
  %280 = sitofp i32 %279 to double
  %281 = load double, ptr @Wb, align 8, !tbaa !21
  %282 = fmul double %281, %280
  %283 = tail call double @llvm.fmuladd.f64(double %278, double %273, double %282)
  %284 = fdiv double %276, %283
  %285 = fadd double %284, 5.000000e-01
  %286 = tail call double @llvm.floor.f64(double %285)
  %287 = fptosi double %286 to i64
  %288 = load double, ptr @bit_rate, align 8, !tbaa !21
  %289 = load double, ptr @frame_rate, align 8, !tbaa !21
  %290 = fdiv double %288, %289
  %291 = load double, ptr @GAMMAP, align 8, !tbaa !21
  %292 = load double, ptr @CurrentBufferFullness, align 8, !tbaa !21
  %293 = load double, ptr @TargetBufferLevel, align 8, !tbaa !21
  %294 = fsub double %292, %293
  %295 = fneg double %291
  %296 = tail call double @llvm.fmuladd.f64(double %295, double %294, double %290)
  %297 = fadd double %296, 5.000000e-01
  %298 = tail call double @llvm.floor.f64(double %297)
  %299 = fptosi double %298 to i64
  %300 = tail call i64 @llvm.smax.i64(i64 %299, i64 0)
  store i64 %300, ptr @T1, align 8, !tbaa !33
  %301 = load double, ptr @BETAP, align 8, !tbaa !21
  %302 = sitofp i64 %287 to double
  %303 = fsub double 1.000000e+00, %301
  %304 = uitofp nneg i64 %300 to double
  %305 = fmul double %303, %304
  %306 = tail call double @llvm.fmuladd.f64(double %301, double %302, double %305)
  %307 = fadd double %306, 5.000000e-01
  %308 = tail call double @llvm.floor.f64(double %307)
  %309 = fptosi double %308 to i64
  br label %396

310:                                              ; preds = %269
  %311 = getelementptr inbounds i8, ptr %8, i64 90392
  %312 = load i32, ptr %311, align 8, !tbaa !30
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %314, label %356

314:                                              ; preds = %310
  %315 = icmp sgt i32 %171, 0
  br i1 %315, label %316, label %398

316:                                              ; preds = %314
  %317 = load double, ptr @Wp, align 8, !tbaa !21
  %318 = load i32, ptr @R, align 4, !tbaa !19
  %319 = sitofp i32 %318 to double
  %320 = fmul double %317, %319
  %321 = load i32, ptr @Np, align 4, !tbaa !19
  %322 = sitofp i32 %321 to double
  %323 = load i32, ptr @Nb, align 4, !tbaa !19
  %324 = sitofp i32 %323 to double
  %325 = load double, ptr @Wb, align 8, !tbaa !21
  %326 = fmul double %325, %324
  %327 = tail call double @llvm.fmuladd.f64(double %322, double %317, double %326)
  %328 = fdiv double %320, %327
  %329 = fadd double %328, 5.000000e-01
  %330 = tail call double @llvm.floor.f64(double %329)
  %331 = fptosi double %330 to i32
  %332 = load double, ptr @bit_rate, align 8, !tbaa !21
  %333 = load double, ptr @frame_rate, align 8, !tbaa !21
  %334 = fdiv double %332, %333
  %335 = load double, ptr @GAMMAP, align 8, !tbaa !21
  %336 = load double, ptr @CurrentBufferFullness, align 8, !tbaa !21
  %337 = load double, ptr @TargetBufferLevel, align 8, !tbaa !21
  %338 = fsub double %336, %337
  %339 = fneg double %335
  %340 = tail call double @llvm.fmuladd.f64(double %339, double %338, double %334)
  %341 = fadd double %340, 5.000000e-01
  %342 = tail call double @llvm.floor.f64(double %341)
  %343 = fptosi double %342 to i32
  %344 = tail call i32 @llvm.smax.i32(i32 %343, i32 0)
  %345 = zext nneg i32 %344 to i64
  store i64 %345, ptr @T1, align 8, !tbaa !33
  %346 = load double, ptr @BETAP, align 8, !tbaa !21
  %347 = sitofp i32 %331 to double
  %348 = fsub double 1.000000e+00, %346
  %349 = uitofp nneg i32 %344 to double
  %350 = fmul double %348, %349
  %351 = tail call double @llvm.fmuladd.f64(double %346, double %347, double %350)
  %352 = fadd double %351, 5.000000e-01
  %353 = tail call double @llvm.floor.f64(double %352)
  %354 = fptosi double %353 to i32
  %355 = sext i32 %354 to i64
  br label %396

356:                                              ; preds = %310
  %357 = icmp sgt i32 %312, 1
  br i1 %357, label %358, label %398

358:                                              ; preds = %356
  %359 = load double, ptr @Wp, align 8, !tbaa !21
  %360 = load i32, ptr @R, align 4, !tbaa !19
  %361 = sitofp i32 %360 to double
  %362 = fmul double %359, %361
  %363 = load i32, ptr @Np, align 4, !tbaa !19
  %364 = sitofp i32 %363 to double
  %365 = load i32, ptr @Nb, align 4, !tbaa !19
  %366 = sitofp i32 %365 to double
  %367 = load double, ptr @Wb, align 8, !tbaa !21
  %368 = fmul double %367, %366
  %369 = tail call double @llvm.fmuladd.f64(double %364, double %359, double %368)
  %370 = fdiv double %362, %369
  %371 = fadd double %370, 5.000000e-01
  %372 = tail call double @llvm.floor.f64(double %371)
  %373 = fptosi double %372 to i64
  %374 = load double, ptr @bit_rate, align 8, !tbaa !21
  %375 = load double, ptr @frame_rate, align 8, !tbaa !21
  %376 = fdiv double %374, %375
  %377 = load double, ptr @GAMMAP, align 8, !tbaa !21
  %378 = load double, ptr @CurrentBufferFullness, align 8, !tbaa !21
  %379 = load double, ptr @TargetBufferLevel, align 8, !tbaa !21
  %380 = fsub double %378, %379
  %381 = fneg double %377
  %382 = tail call double @llvm.fmuladd.f64(double %381, double %380, double %376)
  %383 = fadd double %382, 5.000000e-01
  %384 = tail call double @llvm.floor.f64(double %383)
  %385 = fptosi double %384 to i64
  %386 = tail call i64 @llvm.smax.i64(i64 %385, i64 0)
  store i64 %386, ptr @T1, align 8, !tbaa !33
  %387 = load double, ptr @BETAP, align 8, !tbaa !21
  %388 = sitofp i64 %373 to double
  %389 = fsub double 1.000000e+00, %387
  %390 = uitofp nneg i64 %386 to double
  %391 = fmul double %389, %390
  %392 = tail call double @llvm.fmuladd.f64(double %387, double %388, double %391)
  %393 = fadd double %392, 5.000000e-01
  %394 = tail call double @llvm.floor.f64(double %393)
  %395 = fptosi double %394 to i64
  br label %396

396:                                              ; preds = %272, %358, %316
  %397 = phi i64 [ %355, %316 ], [ %395, %358 ], [ %309, %272 ]
  store i64 %397, ptr @T, align 8, !tbaa !33
  br label %398

398:                                              ; preds = %396, %314, %356, %270
  %399 = sitofp i32 %201 to double
  %400 = tail call double @llvm.fmuladd.f64(double %399, double -0.000000e+00, double 1.000000e+00)
  %401 = load i64, ptr @T, align 8, !tbaa !33
  %402 = sitofp i64 %401 to double
  %403 = fmul double %400, %402
  %404 = fptosi double %403 to i64
  %405 = load i64, ptr @LowerBound, align 8
  %406 = tail call i64 @llvm.smax.i64(i64 %405, i64 %404)
  %407 = load i64, ptr @UpperBound2, align 8
  %408 = tail call i64 @llvm.smin.i64(i64 %406, i64 %407)
  store i64 %408, ptr @T, align 8, !tbaa !33
  br i1 %30, label %409, label %415

409:                                              ; preds = %398
  br i1 %29, label %417, label %410

410:                                              ; preds = %409
  %411 = getelementptr inbounds i8, ptr %4, i64 3552
  %412 = load i32, ptr %411, align 8, !tbaa !36
  %413 = icmp eq i32 %412, 2
  %414 = or i1 %7, %413
  br i1 %414, label %415, label %417

415:                                              ; preds = %410, %398
  %416 = trunc i64 %408 to i32
  store i32 %416, ptr @T_field, align 4, !tbaa !19
  br label %417

417:                                              ; preds = %410, %415, %409, %28
  br i1 %32, label %420, label %438

418:                                              ; preds = %263, %254, %246
  %419 = phi double [ %248, %246 ], [ %262, %254 ], [ %268, %263 ]
  store double %419, ptr @AWb, align 8, !tbaa !21
  br label %420

420:                                              ; preds = %418, %249, %35, %417
  %421 = getelementptr inbounds i8, ptr %8, i64 90348
  store i32 0, ptr %421, align 4, !tbaa !45
  %422 = getelementptr inbounds i8, ptr %8, i64 90352
  store i32 0, ptr %422, align 8, !tbaa !46
  %423 = getelementptr inbounds i8, ptr %8, i64 90444
  %424 = load i32, ptr %423, align 4, !tbaa !41
  %425 = getelementptr inbounds i8, ptr %8, i64 90432
  %426 = load i32, ptr %425, align 8, !tbaa !27
  %427 = icmp slt i32 %424, %426
  br i1 %427, label %428, label %438

428:                                              ; preds = %420
  store i32 0, ptr @TotalFrameQP, align 4, !tbaa !19
  %429 = getelementptr inbounds i8, ptr %8, i64 90356
  store i32 0, ptr %429, align 4, !tbaa !47
  %430 = getelementptr inbounds i8, ptr %8, i64 90360
  store i32 0, ptr %430, align 8, !tbaa !48
  %431 = getelementptr inbounds i8, ptr %8, i64 90368
  store double 0.000000e+00, ptr %431, align 8, !tbaa !49
  %432 = getelementptr inbounds i8, ptr %8, i64 90424
  %433 = load i32, ptr %432, align 8, !tbaa !31
  %434 = icmp eq i32 %433, 0
  %435 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  %436 = sdiv i32 %435, 2
  %437 = select i1 %434, i32 %435, i32 %436
  store i32 %437, ptr @NumberofBasicUnit, align 4, !tbaa !19
  br label %438

438:                                              ; preds = %428, %420, %417
  %439 = getelementptr inbounds i8, ptr %8, i64 24
  %440 = load i32, ptr %439, align 8, !tbaa !44
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %468

442:                                              ; preds = %438
  %443 = getelementptr inbounds i8, ptr %8, i64 90444
  %444 = load i32, ptr %443, align 4, !tbaa !41
  %445 = getelementptr inbounds i8, ptr %8, i64 90432
  %446 = load i32, ptr %445, align 8, !tbaa !27
  %447 = icmp slt i32 %444, %446
  br i1 %447, label %448, label %468

448:                                              ; preds = %442
  %449 = getelementptr inbounds i8, ptr %8, i64 90424
  %450 = load i32, ptr %449, align 8, !tbaa !31
  %451 = icmp eq i32 %450, 1
  br i1 %451, label %452, label %468

452:                                              ; preds = %448
  br i1 %30, label %458, label %453

453:                                              ; preds = %452
  store i32 0, ptr @bits_topfield, align 4, !tbaa !19
  %454 = load i32, ptr @T_field, align 4, !tbaa !19
  %455 = sitofp i32 %454 to double
  %456 = fmul double %455, 6.000000e-01
  %457 = fptosi double %456 to i64
  store i64 %457, ptr @T, align 8, !tbaa !33
  br label %468

458:                                              ; preds = %452
  %459 = load i32, ptr @T_field, align 4, !tbaa !19
  %460 = load i32, ptr @bits_topfield, align 4, !tbaa !19
  %461 = sub nsw i32 %459, %460
  %462 = sext i32 %461 to i64
  store i64 %462, ptr @T, align 8, !tbaa !33
  %463 = getelementptr inbounds i8, ptr %8, i64 90356
  store i32 0, ptr %463, align 4, !tbaa !47
  %464 = getelementptr inbounds i8, ptr %8, i64 90360
  store i32 0, ptr %464, align 8, !tbaa !48
  %465 = getelementptr inbounds i8, ptr %8, i64 90368
  store double 0.000000e+00, ptr %465, align 8, !tbaa !49
  %466 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  %467 = sdiv i32 %466, 2
  store i32 %467, ptr @NumberofBasicUnit, align 4, !tbaa !19
  br label %468

468:                                              ; preds = %453, %458, %448, %442, %438
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none)
define dso_local double @calc_MAD() local_unnamed_addr #9 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %68, %1 ]
  %3 = phi i32 [ 0, %0 ], [ %67, %1 ]
  %4 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 0
  %5 = load i32, ptr %4, align 4, !tbaa !19
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = add nuw nsw i32 %6, %3
  %8 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !19
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = add nuw nsw i32 %10, %7
  %12 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 2
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = tail call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = add nuw nsw i32 %14, %11
  %16 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 3
  %17 = load i32, ptr %16, align 4, !tbaa !19
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %19 = add nuw nsw i32 %18, %15
  %20 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !19
  %22 = tail call i32 @llvm.abs.i32(i32 %21, i1 true)
  %23 = add nuw nsw i32 %22, %19
  %24 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 5
  %25 = load i32, ptr %24, align 4, !tbaa !19
  %26 = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  %27 = add nuw nsw i32 %26, %23
  %28 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 6
  %29 = load i32, ptr %28, align 4, !tbaa !19
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 true)
  %31 = add nuw nsw i32 %30, %27
  %32 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 7
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = add nuw nsw i32 %34, %31
  %36 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 8
  %37 = load i32, ptr %36, align 4, !tbaa !19
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 true)
  %39 = add nuw nsw i32 %38, %35
  %40 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 9
  %41 = load i32, ptr %40, align 4, !tbaa !19
  %42 = tail call i32 @llvm.abs.i32(i32 %41, i1 true)
  %43 = add nuw nsw i32 %42, %39
  %44 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 10
  %45 = load i32, ptr %44, align 4, !tbaa !19
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 true)
  %47 = add nuw nsw i32 %46, %43
  %48 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 11
  %49 = load i32, ptr %48, align 4, !tbaa !19
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  %51 = add nuw nsw i32 %50, %47
  %52 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 12
  %53 = load i32, ptr %52, align 4, !tbaa !19
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = add nuw nsw i32 %54, %51
  %56 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 13
  %57 = load i32, ptr %56, align 4, !tbaa !19
  %58 = tail call i32 @llvm.abs.i32(i32 %57, i1 true)
  %59 = add nuw nsw i32 %58, %55
  %60 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 14
  %61 = load i32, ptr %60, align 4, !tbaa !19
  %62 = tail call i32 @llvm.abs.i32(i32 %61, i1 true)
  %63 = add nuw nsw i32 %62, %59
  %64 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2, i64 15
  %65 = load i32, ptr %64, align 4, !tbaa !19
  %66 = tail call i32 @llvm.abs.i32(i32 %65, i1 true)
  %67 = add nuw nsw i32 %66, %63
  %68 = add nuw nsw i64 %2, 1
  %69 = icmp eq i64 %68, 16
  br i1 %69, label %70, label %1

70:                                               ; preds = %1
  %71 = uitofp nneg i32 %67 to double
  %72 = fmul double %71, 3.906250e-03
  ret double %72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local void @rc_update_pict(i32 noundef signext %0) local_unnamed_addr #10 {
  %2 = load i32, ptr @R, align 4, !tbaa !19
  %3 = sub nsw i32 %2, %0
  store i32 %3, ptr @R, align 4, !tbaa !19
  %4 = sitofp i32 %0 to double
  %5 = load double, ptr @bit_rate, align 8, !tbaa !21
  %6 = load double, ptr @frame_rate, align 8, !tbaa !21
  %7 = fdiv double %5, %6
  %8 = fsub double %4, %7
  %9 = load double, ptr @CurrentBufferFullness, align 8, !tbaa !21
  %10 = fadd double %9, %8
  store double %10, ptr @CurrentBufferFullness, align 8, !tbaa !21
  %11 = fsub double %7, %4
  %12 = fptosi double %11 to i64
  %13 = load i64, ptr @LowerBound, align 8, !tbaa !33
  %14 = add nsw i64 %13, %12
  store i64 %14, ptr @LowerBound, align 8, !tbaa !33
  %15 = load i64, ptr @UpperBound1, align 8, !tbaa !33
  %16 = add nsw i64 %15, %12
  store i64 %16, ptr @UpperBound1, align 8, !tbaa !33
  %17 = sitofp i64 %16 to double
  %18 = fmul double %17, 9.000000e-01
  %19 = fptosi double %18 to i64
  store i64 %19, ptr @UpperBound2, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @rc_update_pict_frame(i32 noundef signext %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 90444
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = getelementptr inbounds i8, ptr %2, i64 90432
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, ptr @m_Qc, align 4, !tbaa !19
  %10 = mul nsw i32 %9, %0
  %11 = sitofp i32 %10 to double
  %12 = fadd double %11, 5.000000e-01
  %13 = tail call double @llvm.floor.f64(double %12)
  %14 = fptosi double %13 to i32
  %15 = getelementptr inbounds i8, ptr %2, i64 24
  %16 = load i32, ptr %15, align 8, !tbaa !44
  br label %46

17:                                               ; preds = %1
  %18 = getelementptr inbounds i8, ptr %2, i64 24
  %19 = load i32, ptr %18, align 8, !tbaa !44
  switch i32 %19, label %46 [
    i32 0, label %20
    i32 1, label %39
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %2, i64 90436
  %22 = load i32, ptr %21, align 4, !tbaa !35
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds i8, ptr %2, i64 90424
  %25 = load i32, ptr %24, align 8, !tbaa !31
  %26 = icmp eq i32 %25, 1
  %27 = select i1 %23, i1 %26, i1 false
  %28 = icmp eq i32 %25, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %20
  %31 = load i32, ptr @TotalFrameQP, align 4, !tbaa !19
  %32 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  %33 = sdiv i32 %31, %32
  %34 = mul nsw i32 %33, %0
  %35 = sitofp i32 %34 to double
  %36 = fadd double %35, 5.000000e-01
  %37 = tail call double @llvm.floor.f64(double %36)
  %38 = fptosi double %37 to i32
  br label %49

39:                                               ; preds = %17
  %40 = load i32, ptr @m_Qc, align 4, !tbaa !19
  %41 = mul nsw i32 %40, %0
  %42 = sitofp i32 %41 to double
  %43 = fadd double %42, 5.000000e-01
  %44 = tail call double @llvm.floor.f64(double %43)
  %45 = fptosi double %44 to i32
  br label %77

46:                                               ; preds = %17, %8
  %47 = phi i32 [ %16, %8 ], [ %19, %17 ]
  %48 = phi i32 [ %14, %8 ], [ 0, %17 ]
  switch i32 %47, label %88 [
    i32 0, label %49
    i32 1, label %77
  ]

49:                                               ; preds = %20, %30, %46
  %50 = phi i32 [ %48, %46 ], [ %38, %30 ], [ 0, %20 ]
  %51 = getelementptr inbounds i8, ptr %2, i64 90436
  %52 = load i32, ptr %51, align 4, !tbaa !35
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds i8, ptr %2, i64 90424
  %55 = load i32, ptr %54, align 8, !tbaa !31
  %56 = icmp eq i32 %55, 1
  %57 = select i1 %53, i1 %56, i1 false
  %58 = icmp eq i32 %55, 0
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %49
  store i32 %50, ptr @Xp, align 4, !tbaa !19
  %61 = load i32, ptr @Np, align 4, !tbaa !19
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr @Np, align 4, !tbaa !19
  %63 = sitofp i32 %50 to double
  store double %63, ptr @Wp, align 8, !tbaa !21
  %64 = getelementptr inbounds i8, ptr %2, i64 90348
  %65 = load i32, ptr %64, align 4, !tbaa !45
  store i32 %65, ptr @Pm_Hp, align 4, !tbaa !19
  %66 = getelementptr inbounds i8, ptr %2, i64 90388
  %67 = load i32, ptr %66, align 4, !tbaa !29
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !29
  %69 = getelementptr inbounds i8, ptr %2, i64 90400
  %70 = load i32, ptr %69, align 8, !tbaa !40
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !40
  br label %88

72:                                               ; preds = %49
  %73 = icmp ne i32 %52, 0
  %74 = icmp eq i32 %55, 1
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  store i32 0, ptr %51, align 4, !tbaa !35
  br label %88

77:                                               ; preds = %39, %46
  %78 = phi i32 [ %45, %39 ], [ %48, %46 ]
  store i32 %78, ptr @Xb, align 4, !tbaa !19
  %79 = load i32, ptr @Nb, align 4, !tbaa !19
  %80 = add nsw i32 %79, -1
  store i32 %80, ptr @Nb, align 4, !tbaa !19
  %81 = sitofp i32 %78 to double
  %82 = fdiv double %81, 1.363600e+00
  store double %82, ptr @Wb, align 8, !tbaa !21
  %83 = getelementptr inbounds i8, ptr %2, i64 90384
  %84 = load i32, ptr %83, align 8, !tbaa !28
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %83, align 8, !tbaa !28
  %86 = load i32, ptr @NumberofBFrames, align 4, !tbaa !19
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr @NumberofBFrames, align 4, !tbaa !19
  br label %88

88:                                               ; preds = %60, %76, %72, %46, %77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @setbitscount(i32 noundef signext %0) local_unnamed_addr #11 {
  store i32 %0, ptr @bits_topfield, align 4, !tbaa !19
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write)
define dso_local signext i32 @updateQuantizationParameter(i32 noundef signext %0) local_unnamed_addr #12 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 90444
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = getelementptr inbounds i8, ptr %2, i64 90432
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %305

8:                                                ; preds = %1
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, ptr %2, i64 90424
  %12 = load i32, ptr %11, align 8, !tbaa !31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %281

14:                                               ; preds = %10, %8
  %15 = getelementptr inbounds i8, ptr %2, i64 24
  %16 = load i32, ptr %15, align 8, !tbaa !44
  switch i32 %16, label %137 [
    i32 2, label %17
    i32 1, label %19
    i32 0, label %117
  ]

17:                                               ; preds = %14
  %18 = load i32, ptr @MyInitialQp, align 4, !tbaa !19
  store i32 %18, ptr @m_Qc, align 4, !tbaa !19
  br label %861

19:                                               ; preds = %14
  %20 = load ptr, ptr @input, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 1244
  %22 = load i32, ptr %21, align 4, !tbaa !23
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %53

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, ptr %20, i64 3552
  %26 = load i32, ptr %25, align 8, !tbaa !36
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %20, i64 3556
  %30 = load i32, ptr %29, align 4, !tbaa !37
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds i8, ptr %2, i64 90424
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %2, i64 90428
  %38 = load i32, ptr %37, align 4, !tbaa !39
  %39 = icmp eq i32 %38, 1
  %40 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %40, ptr @PreviousQp1, align 4, !tbaa !19
  %41 = load i32, ptr @FrameQPBuffer, align 4
  %42 = load i32, ptr @FieldQPBuffer, align 4
  %43 = select i1 %39, i32 %41, i32 %42
  store i32 %43, ptr @PreviousQp2, align 4, !tbaa !19
  br label %44

44:                                               ; preds = %36, %32, %28
  %45 = load i32, ptr @PreviousQp1, align 4
  %46 = load i32, ptr @PreviousQp2, align 4
  %47 = tail call i32 @llvm.smin.i32(i32 %45, i32 %46)
  %48 = add nsw i32 %47, 2
  %49 = tail call i32 @llvm.smax.i32(i32 %45, i32 %46)
  %50 = tail call i32 @llvm.smax.i32(i32 %48, i32 %49)
  %51 = add nsw i32 %46, 1
  %52 = tail call i32 @llvm.smax.i32(i32 %50, i32 %51)
  br label %111

53:                                               ; preds = %19
  %54 = load i32, ptr @NumberofBFrames, align 4, !tbaa !19
  %55 = add nsw i32 %54, 1
  %56 = srem i32 %55, %22
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 %22, i32 %56
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = getelementptr inbounds i8, ptr %20, i64 3552
  %62 = load i32, ptr %61, align 8, !tbaa !36
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %20, i64 3556
  %66 = load i32, ptr %65, align 4, !tbaa !37
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds i8, ptr %2, i64 90424
  %70 = load i32, ptr %69, align 8, !tbaa !31
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %2, i64 90428
  %74 = load i32, ptr %73, align 4, !tbaa !39
  %75 = icmp eq i32 %74, 1
  %76 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %76, ptr @PreviousQp1, align 4, !tbaa !19
  %77 = load i32, ptr @FrameQPBuffer, align 4
  %78 = load i32, ptr @FieldQPBuffer, align 4
  %79 = select i1 %75, i32 %77, i32 %78
  store i32 %79, ptr @PreviousQp2, align 4, !tbaa !19
  br label %80

80:                                               ; preds = %72, %64, %68, %53
  %81 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  %82 = load i32, ptr @PreviousQp1, align 4, !tbaa !19
  %83 = sub nsw i32 %81, %82
  %84 = mul nsw i32 %22, -2
  %85 = add nsw i32 %84, -3
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = add nsw i32 %84, -2
  %89 = icmp eq i32 %83, %88
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = add nsw i32 %84, -1
  %92 = icmp eq i32 %83, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = icmp eq i32 %83, %84
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  %96 = or disjoint i32 %84, 1
  %97 = icmp eq i32 %83, %96
  %98 = select i1 %97, i32 1, i32 2
  br label %99

99:                                               ; preds = %95, %93, %90, %87, %80
  %100 = phi i32 [ -3, %80 ], [ -2, %87 ], [ -1, %90 ], [ 0, %93 ], [ %98, %95 ]
  %101 = add nsw i32 %100, %82
  %102 = add nsw i32 %58, -1
  %103 = shl nsw i32 %102, 1
  %104 = mul nsw i32 %102, -2
  %105 = mul nsw i32 %83, %102
  %106 = add nsw i32 %22, -1
  %107 = sdiv i32 %105, %106
  %108 = tail call i32 @llvm.smax.i32(i32 %104, i32 %107)
  %109 = tail call i32 @llvm.smin.i32(i32 %103, i32 %108)
  %110 = add nsw i32 %109, %101
  br label %111

111:                                              ; preds = %99, %44
  %112 = phi i32 [ %110, %99 ], [ %52, %44 ]
  %113 = load i32, ptr @RC_MAX_QUANT, align 4
  %114 = tail call i32 @llvm.smin.i32(i32 %112, i32 %113)
  %115 = load i32, ptr @RC_MIN_QUANT, align 4
  %116 = tail call i32 @llvm.smax.i32(i32 %115, i32 %114)
  store i32 %116, ptr @m_Qc, align 4, !tbaa !19
  br label %861

117:                                              ; preds = %14
  %118 = getelementptr inbounds i8, ptr %2, i64 90400
  %119 = load i32, ptr %118, align 8, !tbaa !40
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %117
  %122 = load i32, ptr @MyInitialQp, align 4, !tbaa !19
  store i32 %122, ptr @m_Qc, align 4, !tbaa !19
  %123 = getelementptr inbounds i8, ptr %2, i64 90424
  %124 = load i32, ptr %123, align 8, !tbaa !31
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %861

126:                                              ; preds = %121
  %127 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %128 = getelementptr inbounds i8, ptr %127, i64 1148
  %129 = load i32, ptr %128, align 4, !tbaa !50
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds i8, ptr %2, i64 90396
  %133 = load i32, ptr %132, align 4, !tbaa !38
  %134 = add nsw i32 %133, %122
  store i32 %134, ptr %132, align 4, !tbaa !38
  %135 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %135, ptr @PreviousQp1, align 4, !tbaa !19
  store i32 %122, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %122, ptr @Pm_Qp, align 4, !tbaa !19
  br label %861

136:                                              ; preds = %126
  store i32 %122, ptr @FrameQPBuffer, align 4, !tbaa !19
  br label %861

137:                                              ; preds = %14, %117
  %138 = load ptr, ptr @input, align 8, !tbaa !6
  %139 = getelementptr inbounds i8, ptr %138, i64 3552
  %140 = load i32, ptr %139, align 8, !tbaa !36
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %146, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds i8, ptr %138, i64 3556
  %144 = load i32, ptr %143, align 4, !tbaa !37
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %142, %137
  %147 = getelementptr inbounds i8, ptr %2, i64 90424
  %148 = load i32, ptr %147, align 8, !tbaa !31
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = getelementptr inbounds i8, ptr %2, i64 90428
  %152 = load i32, ptr %151, align 4, !tbaa !39
  %153 = icmp eq i32 %152, 1
  %154 = getelementptr inbounds i8, ptr %2, i64 90396
  %155 = load i32, ptr %154, align 4, !tbaa !38
  %156 = load i32, ptr @FrameQPBuffer, align 4
  %157 = load i32, ptr @FieldQPBuffer, align 4
  %158 = select i1 %153, i32 %156, i32 %157
  %159 = add nsw i32 %155, %158
  store i32 %159, ptr %154, align 4, !tbaa !38
  store i32 %158, ptr @Pm_Qp, align 4, !tbaa !19
  br label %160

160:                                              ; preds = %150, %146, %142
  %161 = load double, ptr @Pm_X1, align 8, !tbaa !21
  store double %161, ptr @m_X1, align 8, !tbaa !21
  %162 = load double, ptr @Pm_X2, align 8, !tbaa !21
  store double %162, ptr @m_X2, align 8, !tbaa !21
  %163 = load i32, ptr @PPreHeader, align 4, !tbaa !19
  store i32 %163, ptr @m_Hp, align 4, !tbaa !19
  %164 = load i32, ptr @Pm_Qp, align 4, !tbaa !19
  store i32 %164, ptr @m_Qp, align 4, !tbaa !19
  %165 = load i32, ptr @PDuantQp, align 4, !tbaa !19
  store i32 %165, ptr @DuantQp, align 4, !tbaa !19
  %166 = load double, ptr @PMADPictureC1, align 8, !tbaa !21
  store double %166, ptr @MADPictureC1, align 8, !tbaa !21
  %167 = load double, ptr @PMADPictureC2, align 8, !tbaa !21
  store double %167, ptr @MADPictureC2, align 8, !tbaa !21
  %168 = load double, ptr @PPictureMAD, align 8, !tbaa !21
  store double %168, ptr @PreviousPictureMAD, align 8, !tbaa !21
  %169 = tail call double @llvm.fmuladd.f64(double %166, double %168, double %167)
  store double %169, ptr @CurrentFrameMAD, align 8, !tbaa !21
  %170 = load i64, ptr @T, align 8, !tbaa !33
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %160
  %173 = add nsw i32 %165, %164
  %174 = load i32, ptr @RC_MAX_QUANT, align 4
  %175 = tail call i32 @llvm.smin.i32(i32 %173, i32 %174)
  br label %264

176:                                              ; preds = %160
  %177 = trunc i64 %170 to i32
  %178 = sub i32 %177, %163
  %179 = load double, ptr @bit_rate, align 8, !tbaa !21
  %180 = load double, ptr @MINVALUE, align 8, !tbaa !21
  %181 = load double, ptr @frame_rate, align 8, !tbaa !21
  %182 = fmul double %180, %181
  %183 = fdiv double %179, %182
  %184 = fptosi double %183 to i32
  %185 = tail call i32 @llvm.smax.i32(i32 %178, i32 %184)
  %186 = fmul double %161, %169
  %187 = fmul double %169, %186
  %188 = fmul double %162, 4.000000e+00
  %189 = fmul double %188, %169
  %190 = sitofp i32 %185 to double
  %191 = fmul double %189, %190
  %192 = tail call double @llvm.fmuladd.f64(double %187, double %161, double %191)
  %193 = fcmp oeq double %162, 0.000000e+00
  %194 = fcmp olt double %192, 0.000000e+00
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %205, label %196

196:                                              ; preds = %176
  %197 = tail call double @sqrt(double noundef %192) #21
  %198 = load double, ptr @m_X1, align 8, !tbaa !21
  %199 = load double, ptr @CurrentFrameMAD, align 8, !tbaa !21
  %200 = fneg double %198
  %201 = tail call double @llvm.fmuladd.f64(double %200, double %199, double %197)
  %202 = fcmp ugt double %201, 0.000000e+00
  br i1 %202, label %208, label %203

203:                                              ; preds = %196
  %204 = fmul double %198, %199
  br label %205

205:                                              ; preds = %203, %176
  %206 = phi double [ %204, %203 ], [ %186, %176 ]
  %207 = fdiv double %206, %190
  br label %218

208:                                              ; preds = %196
  %209 = load double, ptr @m_X2, align 8, !tbaa !21
  %210 = fmul double %209, 2.000000e+00
  %211 = fmul double %199, %210
  %212 = tail call double @sqrt(double noundef %192) #21
  %213 = load double, ptr @m_X1, align 8, !tbaa !21
  %214 = load double, ptr @CurrentFrameMAD, align 8, !tbaa !21
  %215 = fneg double %213
  %216 = tail call double @llvm.fmuladd.f64(double %215, double %214, double %212)
  %217 = fdiv double %211, %216
  br label %218

218:                                              ; preds = %208, %205
  %219 = phi double [ %217, %208 ], [ %207, %205 ]
  %220 = fptrunc double %219 to float
  %221 = fpext float %220 to double
  store double %221, ptr @m_Qstep, align 8, !tbaa !21
  %222 = fcmp olt float %220, 6.250000e-01
  br i1 %222, label %251, label %223

223:                                              ; preds = %218
  %224 = fcmp ogt float %220, 2.240000e+02
  br i1 %224, label %251, label %225

225:                                              ; preds = %223
  %226 = fcmp ogt float %220, 1.125000e+00
  br i1 %226, label %227, label %235

227:                                              ; preds = %225, %227
  %228 = phi i32 [ %231, %227 ], [ 0, %225 ]
  %229 = phi double [ %230, %227 ], [ %221, %225 ]
  %230 = fmul double %229, 5.000000e-01
  %231 = add nuw nsw i32 %228, 1
  %232 = fcmp ogt double %230, 1.125000e+00
  br i1 %232, label %227, label %233

233:                                              ; preds = %227
  %234 = mul nuw nsw i32 %231, 6
  br label %235

235:                                              ; preds = %233, %225
  %236 = phi double [ %221, %225 ], [ %230, %233 ]
  %237 = phi i32 [ 0, %225 ], [ %234, %233 ]
  %238 = fcmp ugt double %236, 6.562500e-01
  br i1 %238, label %239, label %248

239:                                              ; preds = %235
  %240 = fcmp ugt double %236, 7.500000e-01
  br i1 %240, label %241, label %248

241:                                              ; preds = %239
  %242 = fcmp ugt double %236, 8.437500e-01
  br i1 %242, label %243, label %248

243:                                              ; preds = %241
  %244 = fcmp ugt double %236, 9.375000e-01
  br i1 %244, label %245, label %248

245:                                              ; preds = %243
  %246 = fcmp ugt double %236, 1.062500e+00
  %247 = select i1 %246, i32 5, i32 4
  br label %248

248:                                              ; preds = %245, %243, %241, %239, %235
  %249 = phi i32 [ 0, %235 ], [ 1, %239 ], [ 2, %241 ], [ 3, %243 ], [ %247, %245 ]
  %250 = add nuw nsw i32 %249, %237
  br label %251

251:                                              ; preds = %218, %223, %248
  %252 = phi i32 [ %250, %248 ], [ 0, %218 ], [ 51, %223 ]
  store i32 %252, ptr @m_Qc, align 4, !tbaa !19
  %253 = load i32, ptr @m_Qp, align 4
  %254 = load i32, ptr @DuantQp, align 4
  %255 = add nsw i32 %254, %253
  %256 = tail call i32 @llvm.smin.i32(i32 %255, i32 %252)
  %257 = load i32, ptr @RC_MAX_QUANT, align 4
  %258 = tail call i32 @llvm.smin.i32(i32 %256, i32 %257)
  %259 = sub nsw i32 %253, %254
  %260 = tail call i32 @llvm.smax.i32(i32 %259, i32 %258)
  %261 = load i32, ptr @RC_MIN_QUANT, align 4
  %262 = tail call i32 @llvm.smax.i32(i32 %261, i32 %260)
  %263 = load ptr, ptr @img, align 8, !tbaa !6
  br label %264

264:                                              ; preds = %251, %172
  %265 = phi ptr [ %263, %251 ], [ %2, %172 ]
  %266 = phi i32 [ %262, %251 ], [ %175, %172 ]
  store i32 %266, ptr @m_Qc, align 4, !tbaa !19
  %267 = getelementptr inbounds i8, ptr %265, i64 90424
  %268 = load i32, ptr %267, align 8, !tbaa !31
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %861

270:                                              ; preds = %264
  %271 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %272 = getelementptr inbounds i8, ptr %271, i64 1148
  %273 = load i32, ptr %272, align 4, !tbaa !50
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %270
  %276 = getelementptr inbounds i8, ptr %265, i64 90396
  %277 = load i32, ptr %276, align 4, !tbaa !38
  %278 = add nsw i32 %277, %266
  store i32 %278, ptr %276, align 4, !tbaa !38
  %279 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %279, ptr @PreviousQp1, align 4, !tbaa !19
  store i32 %266, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %266, ptr @Pm_Qp, align 4, !tbaa !19
  br label %861

280:                                              ; preds = %270
  store i32 %266, ptr @FrameQPBuffer, align 4, !tbaa !19
  br label %861

281:                                              ; preds = %10
  %282 = getelementptr inbounds i8, ptr %2, i64 24
  %283 = load i32, ptr %282, align 8, !tbaa !44
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %303

285:                                              ; preds = %281
  %286 = getelementptr inbounds i8, ptr %2, i64 90436
  %287 = load i32, ptr %286, align 4, !tbaa !35
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %303

289:                                              ; preds = %285
  %290 = load ptr, ptr @input, align 8, !tbaa !6
  %291 = getelementptr inbounds i8, ptr %290, i64 3552
  %292 = load i32, ptr %291, align 8, !tbaa !36
  %293 = icmp eq i32 %292, 1
  %294 = load i32, ptr @m_Qc, align 4, !tbaa !19
  br i1 %293, label %295, label %301

295:                                              ; preds = %289
  %296 = getelementptr inbounds i8, ptr %2, i64 90396
  %297 = load i32, ptr %296, align 4, !tbaa !38
  %298 = add nsw i32 %297, %294
  store i32 %298, ptr %296, align 4, !tbaa !38
  %299 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  %300 = add nsw i32 %299, 1
  store i32 %300, ptr @PreviousQp1, align 4, !tbaa !19
  store i32 %294, ptr @PreviousQp2, align 4, !tbaa !19
  br label %301

301:                                              ; preds = %289, %295
  %302 = phi ptr [ @Pm_Qp, %295 ], [ @FieldQPBuffer, %289 ]
  store i32 %294, ptr %302, align 4, !tbaa !19
  br label %303

303:                                              ; preds = %301, %285, %281
  %304 = load i32, ptr @m_Qc, align 4, !tbaa !19
  br label %861

305:                                              ; preds = %1
  %306 = getelementptr inbounds i8, ptr %2, i64 24
  %307 = load i32, ptr %306, align 8, !tbaa !44
  switch i32 %307, label %859 [
    i32 2, label %308
    i32 0, label %310
    i32 1, label %320
  ]

308:                                              ; preds = %305
  %309 = load i32, ptr @MyInitialQp, align 4, !tbaa !19
  store i32 %309, ptr @m_Qc, align 4, !tbaa !19
  br label %861

310:                                              ; preds = %305
  %311 = getelementptr inbounds i8, ptr %2, i64 90436
  %312 = load i32, ptr %311, align 4, !tbaa !35
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %314, label %427

314:                                              ; preds = %310
  %315 = getelementptr inbounds i8, ptr %2, i64 90424
  %316 = load i32, ptr %315, align 8, !tbaa !31
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %318, label %427

318:                                              ; preds = %314
  %319 = load i32, ptr @MyInitialQp, align 4, !tbaa !19
  store i32 %319, ptr @m_Qc, align 4, !tbaa !19
  br label %861

320:                                              ; preds = %305
  %321 = icmp eq i32 %0, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %320
  %323 = getelementptr inbounds i8, ptr %2, i64 90424
  %324 = load i32, ptr %323, align 8, !tbaa !31
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %425

326:                                              ; preds = %322, %320
  %327 = load ptr, ptr @input, align 8, !tbaa !6
  %328 = getelementptr inbounds i8, ptr %327, i64 1244
  %329 = load i32, ptr %328, align 4, !tbaa !23
  %330 = icmp eq i32 %329, 1
  br i1 %330, label %331, label %361

331:                                              ; preds = %326
  %332 = getelementptr inbounds i8, ptr %327, i64 3552
  %333 = load i32, ptr %332, align 8, !tbaa !36
  %334 = icmp eq i32 %333, 2
  br i1 %334, label %339, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds i8, ptr %327, i64 3556
  %337 = load i32, ptr %336, align 4, !tbaa !37
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %351, label %339

339:                                              ; preds = %335, %331
  %340 = getelementptr inbounds i8, ptr %2, i64 90424
  %341 = load i32, ptr %340, align 8, !tbaa !31
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %339
  %344 = getelementptr inbounds i8, ptr %2, i64 90428
  %345 = load i32, ptr %344, align 4, !tbaa !39
  %346 = icmp eq i32 %345, 1
  %347 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %347, ptr @PreviousQp1, align 4, !tbaa !19
  %348 = load i32, ptr @FrameQPBuffer, align 4
  %349 = load i32, ptr @FieldQPBuffer, align 4
  %350 = select i1 %346, i32 %348, i32 %349
  store i32 %350, ptr @PreviousQp2, align 4, !tbaa !19
  br label %351

351:                                              ; preds = %343, %339, %335
  %352 = load i32, ptr @PreviousQp1, align 4, !tbaa !19
  %353 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  %356 = add nsw i32 %352, 2
  br label %419

357:                                              ; preds = %351
  %358 = add nsw i32 %353, %352
  %359 = sdiv i32 %358, 2
  %360 = add nsw i32 %359, 1
  br label %419

361:                                              ; preds = %326
  %362 = load i32, ptr @NumberofBFrames, align 4, !tbaa !19
  %363 = add nsw i32 %362, 1
  %364 = srem i32 %363, %329
  %365 = icmp eq i32 %364, 0
  %366 = select i1 %365, i32 %329, i32 %364
  %367 = icmp eq i32 %366, 1
  br i1 %367, label %368, label %388

368:                                              ; preds = %361
  %369 = getelementptr inbounds i8, ptr %327, i64 3552
  %370 = load i32, ptr %369, align 8, !tbaa !36
  %371 = icmp eq i32 %370, 2
  br i1 %371, label %376, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds i8, ptr %327, i64 3556
  %374 = load i32, ptr %373, align 4, !tbaa !37
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %388, label %376

376:                                              ; preds = %372, %368
  %377 = getelementptr inbounds i8, ptr %2, i64 90424
  %378 = load i32, ptr %377, align 8, !tbaa !31
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %376
  %381 = getelementptr inbounds i8, ptr %2, i64 90428
  %382 = load i32, ptr %381, align 4, !tbaa !39
  %383 = icmp eq i32 %382, 1
  %384 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %384, ptr @PreviousQp1, align 4, !tbaa !19
  %385 = load i32, ptr @FrameQPBuffer, align 4
  %386 = load i32, ptr @FieldQPBuffer, align 4
  %387 = select i1 %383, i32 %385, i32 %386
  store i32 %387, ptr @PreviousQp2, align 4, !tbaa !19
  br label %388

388:                                              ; preds = %380, %372, %376, %361
  %389 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  %390 = load i32, ptr @PreviousQp1, align 4, !tbaa !19
  %391 = sub nsw i32 %389, %390
  %392 = mul nsw i32 %329, -2
  %393 = add nsw i32 %392, -3
  %394 = icmp sgt i32 %391, %393
  br i1 %394, label %395, label %407

395:                                              ; preds = %388
  %396 = add nsw i32 %392, -2
  %397 = icmp eq i32 %391, %396
  br i1 %397, label %407, label %398

398:                                              ; preds = %395
  %399 = add nsw i32 %392, -1
  %400 = icmp eq i32 %391, %399
  br i1 %400, label %407, label %401

401:                                              ; preds = %398
  %402 = icmp eq i32 %391, %392
  br i1 %402, label %407, label %403

403:                                              ; preds = %401
  %404 = or disjoint i32 %392, 1
  %405 = icmp eq i32 %391, %404
  %406 = select i1 %405, i32 1, i32 2
  br label %407

407:                                              ; preds = %403, %401, %398, %395, %388
  %408 = phi i32 [ -3, %388 ], [ -2, %395 ], [ -1, %398 ], [ 0, %401 ], [ %406, %403 ]
  %409 = add nsw i32 %408, %390
  %410 = add nsw i32 %366, -1
  %411 = shl nsw i32 %410, 1
  %412 = mul nsw i32 %410, -2
  %413 = mul nsw i32 %391, %410
  %414 = add nsw i32 %329, -1
  %415 = sdiv i32 %413, %414
  %416 = tail call i32 @llvm.smax.i32(i32 %412, i32 %415)
  %417 = tail call i32 @llvm.smin.i32(i32 %411, i32 %416)
  %418 = add nsw i32 %417, %409
  br label %419

419:                                              ; preds = %355, %357, %407
  %420 = phi i32 [ %418, %407 ], [ %360, %357 ], [ %356, %355 ]
  %421 = load i32, ptr @RC_MAX_QUANT, align 4
  %422 = tail call i32 @llvm.smin.i32(i32 %420, i32 %421)
  %423 = load i32, ptr @RC_MIN_QUANT, align 4
  %424 = tail call i32 @llvm.smax.i32(i32 %423, i32 %422)
  store i32 %424, ptr @m_Qc, align 4, !tbaa !19
  br label %861

425:                                              ; preds = %322
  %426 = load i32, ptr @m_Qc, align 4, !tbaa !19
  br label %861

427:                                              ; preds = %310, %314
  %428 = getelementptr inbounds i8, ptr %2, i64 90392
  %429 = load i32, ptr %428, align 8, !tbaa !30
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %431, label %478

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %2, i64 90400
  %433 = load i32, ptr %432, align 8, !tbaa !40
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %478

435:                                              ; preds = %431
  %436 = getelementptr inbounds i8, ptr %2, i64 90424
  %437 = load i32, ptr %436, align 8, !tbaa !31
  switch i32 %437, label %859 [
    i32 0, label %440
    i32 1, label %438
  ]

438:                                              ; preds = %435
  %439 = icmp eq i32 %312, 0
  br i1 %439, label %440, label %859

440:                                              ; preds = %435, %438
  %441 = load i32, ptr @MyInitialQp, align 4, !tbaa !19
  store i32 %441, ptr @m_Qc, align 4, !tbaa !19
  %442 = getelementptr inbounds i8, ptr %2, i64 90356
  store i32 0, ptr %442, align 4, !tbaa !47
  %443 = getelementptr inbounds i8, ptr %2, i64 90360
  store i32 0, ptr %443, align 8, !tbaa !48
  %444 = load i32, ptr @NumberofBasicUnit, align 4, !tbaa !19
  %445 = add nsw i32 %444, -1
  store i32 %445, ptr @NumberofBasicUnit, align 4, !tbaa !19
  %446 = icmp eq i32 %0, 0
  %447 = icmp eq i32 %445, 0
  %448 = select i1 %446, i1 %447, i1 false
  br i1 %448, label %449, label %475

449:                                              ; preds = %440
  %450 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %451 = getelementptr inbounds i8, ptr %450, i64 1148
  %452 = load i32, ptr %451, align 4, !tbaa !50
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %449
  %455 = load ptr, ptr @input, align 8, !tbaa !6
  %456 = getelementptr inbounds i8, ptr %455, i64 3552
  %457 = load i32, ptr %456, align 8, !tbaa !36
  switch i32 %457, label %463 [
    i32 1, label %458
    i32 2, label %467
  ]

458:                                              ; preds = %454, %449
  %459 = getelementptr inbounds i8, ptr %2, i64 90396
  %460 = load i32, ptr %459, align 4, !tbaa !38
  %461 = add nsw i32 %460, %441
  store i32 %461, ptr %459, align 4, !tbaa !38
  %462 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %462, ptr @PreviousQp1, align 4, !tbaa !19
  store i32 %441, ptr @PreviousQp2, align 4, !tbaa !19
  br label %471

463:                                              ; preds = %454
  %464 = getelementptr inbounds i8, ptr %455, i64 3556
  %465 = load i32, ptr %464, align 4, !tbaa !37
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %475, label %467

467:                                              ; preds = %454, %463
  %468 = icmp eq i32 %437, 0
  %469 = select i1 %468, ptr @FrameQPBuffer, ptr @FieldQPBuffer
  %470 = select i1 %468, ptr @FrameAveHeaderBits, ptr @FieldAveHeaderBits
  br label %471

471:                                              ; preds = %467, %458
  %472 = phi ptr [ @PAveFrameQP, %458 ], [ %469, %467 ]
  %473 = phi ptr [ @PAveHeaderBits3, %458 ], [ %470, %467 ]
  store i32 %441, ptr %472, align 4, !tbaa !19
  %474 = load i32, ptr @PAveHeaderBits2, align 4, !tbaa !19
  store i32 %474, ptr %473, align 4, !tbaa !19
  br label %475

475:                                              ; preds = %471, %463, %440
  store i32 %441, ptr @Pm_Qp, align 4, !tbaa !19
  %476 = load i32, ptr @TotalFrameQP, align 4, !tbaa !19
  %477 = add nsw i32 %476, %441
  store i32 %477, ptr @TotalFrameQP, align 4, !tbaa !19
  br label %861

478:                                              ; preds = %431, %427
  %479 = load double, ptr @Pm_X1, align 8, !tbaa !21
  store double %479, ptr @m_X1, align 8, !tbaa !21
  %480 = load double, ptr @Pm_X2, align 8, !tbaa !21
  store double %480, ptr @m_X2, align 8, !tbaa !21
  %481 = load i32, ptr @PPreHeader, align 4, !tbaa !19
  store i32 %481, ptr @m_Hp, align 4, !tbaa !19
  %482 = load i32, ptr @Pm_Qp, align 4, !tbaa !19
  store i32 %482, ptr @m_Qp, align 4, !tbaa !19
  %483 = load i32, ptr @PDuantQp, align 4, !tbaa !19
  store i32 %483, ptr @DuantQp, align 4, !tbaa !19
  %484 = load double, ptr @PMADPictureC1, align 8, !tbaa !21
  store double %484, ptr @MADPictureC1, align 8, !tbaa !21
  %485 = load double, ptr @PMADPictureC2, align 8, !tbaa !21
  store double %485, ptr @MADPictureC2, align 8, !tbaa !21
  %486 = getelementptr inbounds i8, ptr %2, i64 90424
  %487 = load i32, ptr %486, align 8, !tbaa !31
  %488 = icmp eq i32 %487, 0
  %489 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  %490 = sdiv i32 %489, 2
  %491 = select i1 %488, i32 %489, i32 %490
  %492 = load i32, ptr @NumberofBasicUnit, align 4, !tbaa !19
  %493 = icmp eq i32 %492, %491
  br i1 %493, label %494, label %543

494:                                              ; preds = %478
  %495 = load ptr, ptr @input, align 8, !tbaa !6
  %496 = getelementptr inbounds i8, ptr %495, i64 3552
  %497 = load i32, ptr %496, align 8, !tbaa !36
  %498 = icmp eq i32 %497, 2
  br i1 %498, label %504, label %499

499:                                              ; preds = %494
  %500 = getelementptr inbounds i8, ptr %495, i64 3556
  %501 = load i32, ptr %500, align 4, !tbaa !37
  %502 = icmp ne i32 %501, 0
  %503 = and i1 %488, %502
  br i1 %503, label %505, label %526

504:                                              ; preds = %494
  br i1 %488, label %505, label %526

505:                                              ; preds = %499, %504
  %506 = getelementptr inbounds i8, ptr %2, i64 90428
  %507 = load i32, ptr %506, align 4, !tbaa !39
  %508 = icmp eq i32 %507, 1
  %509 = getelementptr inbounds i8, ptr %2, i64 90400
  %510 = load i32, ptr %509, align 8, !tbaa !40
  %511 = icmp sgt i32 %510, 0
  br i1 %508, label %512, label %514

512:                                              ; preds = %505
  %513 = load i32, ptr @FrameQPBuffer, align 4, !tbaa !19
  br i1 %511, label %516, label %522

514:                                              ; preds = %505
  %515 = load i32, ptr @FieldQPBuffer, align 4, !tbaa !19
  br i1 %511, label %516, label %522

516:                                              ; preds = %514, %512
  %517 = phi i32 [ %513, %512 ], [ %515, %514 ]
  %518 = phi ptr [ @FrameAveHeaderBits, %512 ], [ @FieldAveHeaderBits, %514 ]
  %519 = getelementptr inbounds i8, ptr %2, i64 90396
  %520 = load i32, ptr %519, align 4, !tbaa !38
  %521 = add nsw i32 %520, %517
  store i32 %521, ptr %519, align 4, !tbaa !38
  br label %522

522:                                              ; preds = %516, %514, %512
  %523 = phi i32 [ %513, %512 ], [ %515, %514 ], [ %517, %516 ]
  %524 = phi ptr [ @FrameAveHeaderBits, %512 ], [ @FieldAveHeaderBits, %514 ], [ %518, %516 ]
  store i32 %523, ptr @PAveFrameQP, align 4, !tbaa !19
  %525 = load i32, ptr %524, align 4, !tbaa !19
  store i32 %525, ptr @PAveHeaderBits3, align 4, !tbaa !19
  br label %526

526:                                              ; preds = %522, %499, %504
  %527 = load i64, ptr @T, align 8, !tbaa !33
  %528 = icmp slt i64 %527, 1
  %529 = load i32, ptr @PAveFrameQP, align 4, !tbaa !19
  br i1 %528, label %530, label %537

530:                                              ; preds = %526
  %531 = add nsw i32 %529, 2
  %532 = load i32, ptr @RC_MAX_QUANT, align 4, !tbaa !19
  %533 = tail call i32 @llvm.smin.i32(i32 %531, i32 %532)
  store i32 %533, ptr @m_Qc, align 4
  %534 = icmp ne i32 %0, 0
  %535 = or i1 %534, %488
  br i1 %535, label %536, label %538

536:                                              ; preds = %530
  store i32 1, ptr @GOPOverdue, align 4, !tbaa !19
  br label %538

537:                                              ; preds = %526
  store i32 %529, ptr @m_Qc, align 4, !tbaa !19
  br label %538

538:                                              ; preds = %530, %536, %537
  %539 = phi i32 [ %533, %536 ], [ %529, %537 ], [ %533, %530 ]
  %540 = load i32, ptr @TotalFrameQP, align 4, !tbaa !19
  %541 = add nsw i32 %540, %539
  store i32 %541, ptr @TotalFrameQP, align 4, !tbaa !19
  %542 = add nsw i32 %491, -1
  store i32 %542, ptr @NumberofBasicUnit, align 4, !tbaa !19
  store i32 %529, ptr @Pm_Qp, align 4, !tbaa !19
  br label %861

543:                                              ; preds = %478
  %544 = getelementptr inbounds i8, ptr %2, i64 90356
  %545 = load i32, ptr %544, align 4, !tbaa !47
  %546 = getelementptr inbounds i8, ptr %2, i64 90360
  %547 = load i32, ptr %546, align 8, !tbaa !48
  %548 = add nsw i32 %547, %545
  store i32 %548, ptr @TotalBasicUnitBits, align 4, !tbaa !19
  %549 = sext i32 %548 to i64
  %550 = load i64, ptr @T, align 8, !tbaa !33
  %551 = sub nsw i64 %550, %549
  store i64 %551, ptr @T, align 8, !tbaa !33
  store i32 0, ptr %544, align 4, !tbaa !47
  store i32 0, ptr %546, align 8, !tbaa !48
  %552 = icmp slt i64 %551, 0
  br i1 %552, label %553, label %638

553:                                              ; preds = %543
  %554 = load i32, ptr @GOPOverdue, align 4, !tbaa !19
  %555 = icmp eq i32 %554, 1
  %556 = load i32, ptr @DDquant, align 4
  %557 = select i1 %555, i32 2, i32 %556
  %558 = add nsw i32 %557, %482
  %559 = load i32, ptr @RC_MAX_QUANT, align 4
  %560 = tail call i32 @llvm.smin.i32(i32 %558, i32 %559)
  %561 = load ptr, ptr @input, align 8, !tbaa !6
  %562 = getelementptr inbounds i8, ptr %561, i64 3920
  %563 = load i32, ptr %562, align 8, !tbaa !17
  %564 = load i32, ptr @MBPerRow, align 4, !tbaa !19
  %565 = icmp slt i32 %563, %564
  %566 = load i32, ptr @PAveFrameQP, align 4
  %567 = select i1 %565, i32 3, i32 6
  %568 = add nsw i32 %566, %567
  %569 = tail call i32 @llvm.smin.i32(i32 %560, i32 %568)
  store i32 %569, ptr @m_Qc, align 4, !tbaa !19
  %570 = load i32, ptr @TotalFrameQP, align 4, !tbaa !19
  %571 = add nsw i32 %570, %569
  store i32 %571, ptr @TotalFrameQP, align 4, !tbaa !19
  %572 = add nsw i32 %492, -1
  store i32 %572, ptr @NumberofBasicUnit, align 4, !tbaa !19
  %573 = icmp eq i32 %572, 0
  %574 = icmp eq i32 %0, 0
  %575 = or i1 %574, %488
  %576 = and i1 %575, %573
  br i1 %576, label %577, label %635

577:                                              ; preds = %553
  %578 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %579 = getelementptr inbounds i8, ptr %578, i64 1148
  %580 = load i32, ptr %579, align 4, !tbaa !50
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %577
  %583 = getelementptr inbounds i8, ptr %561, i64 3552
  %584 = load i32, ptr %583, align 8, !tbaa !36
  switch i32 %584, label %619 [
    i32 1, label %585
    i32 2, label %623
  ]

585:                                              ; preds = %582, %577
  %586 = sitofp i32 %571 to double
  %587 = sitofp i32 %489 to double
  %588 = fdiv double %586, %587
  %589 = fadd double %588, 5.000000e-01
  %590 = fptosi double %589 to i32
  %591 = getelementptr inbounds i8, ptr %2, i64 90400
  %592 = load i32, ptr %591, align 8, !tbaa !40
  %593 = getelementptr inbounds i8, ptr %561, i64 1228
  %594 = load i32, ptr %593, align 4, !tbaa !54
  %595 = add nsw i32 %594, -2
  %596 = icmp eq i32 %592, %595
  br i1 %596, label %597, label %598

597:                                              ; preds = %585
  store i32 %590, ptr @QPLastPFrame, align 4, !tbaa !19
  br label %598

598:                                              ; preds = %597, %585
  %599 = getelementptr inbounds i8, ptr %2, i64 90396
  %600 = load i32, ptr %599, align 4, !tbaa !38
  %601 = add nsw i32 %600, %590
  store i32 %601, ptr %599, align 4, !tbaa !38
  br i1 %555, label %602, label %605

602:                                              ; preds = %598
  %603 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  %604 = add nsw i32 %603, 1
  br label %616

605:                                              ; preds = %598
  %606 = icmp eq i32 %592, 0
  br i1 %606, label %607, label %611

607:                                              ; preds = %605
  %608 = icmp sgt i32 %429, 1
  br i1 %608, label %609, label %618

609:                                              ; preds = %607
  %610 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  br label %616

611:                                              ; preds = %605
  %612 = icmp sgt i32 %592, 0
  br i1 %612, label %613, label %618

613:                                              ; preds = %611
  %614 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  %615 = add nsw i32 %614, 1
  br label %616

616:                                              ; preds = %602, %613, %609
  %617 = phi i32 [ %610, %609 ], [ %615, %613 ], [ %604, %602 ]
  store i32 %617, ptr @PreviousQp1, align 4, !tbaa !19
  store i32 %590, ptr @PreviousQp2, align 4, !tbaa !19
  br label %618

618:                                              ; preds = %616, %607, %611
  store i32 %590, ptr @PAveFrameQP, align 4, !tbaa !19
  br label %631

619:                                              ; preds = %582
  %620 = getelementptr inbounds i8, ptr %561, i64 3556
  %621 = load i32, ptr %620, align 4, !tbaa !37
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %635, label %623

623:                                              ; preds = %582, %619
  %624 = sitofp i32 %571 to double
  %625 = sitofp i32 %489 to double
  %626 = fdiv double %624, %625
  %627 = fadd double %626, 5.000000e-01
  %628 = fptosi double %627 to i32
  br i1 %488, label %629, label %630

629:                                              ; preds = %623
  store i32 %628, ptr @FrameQPBuffer, align 4, !tbaa !19
  br label %631

630:                                              ; preds = %623
  store i32 %628, ptr @FieldQPBuffer, align 4, !tbaa !19
  br label %631

631:                                              ; preds = %618, %629, %630
  %632 = phi ptr [ @FieldAveHeaderBits, %630 ], [ @FrameAveHeaderBits, %629 ], [ @PAveHeaderBits3, %618 ]
  %633 = phi i32 [ %566, %630 ], [ %566, %629 ], [ %590, %618 ]
  %634 = load i32, ptr @PAveHeaderBits2, align 4, !tbaa !19
  store i32 %634, ptr %632, align 4, !tbaa !19
  br label %635

635:                                              ; preds = %631, %619, %553
  %636 = phi i32 [ %566, %619 ], [ %566, %553 ], [ %633, %631 ]
  %637 = select i1 %555, i32 %636, i32 %569
  store i32 %637, ptr @Pm_Qp, align 4, !tbaa !19
  br label %861

638:                                              ; preds = %543
  %639 = load ptr, ptr @input, align 8, !tbaa !6
  %640 = getelementptr inbounds i8, ptr %639, i64 3552
  %641 = load i32, ptr %640, align 8, !tbaa !36
  %642 = icmp eq i32 %641, 2
  br i1 %642, label %649, label %643

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %639, i64 3556
  %645 = load i32, ptr %644, align 4, !tbaa !37
  %646 = icmp ne i32 %645, 0
  %647 = icmp eq i32 %487, 1
  %648 = and i1 %647, %646
  br i1 %648, label %651, label %670

649:                                              ; preds = %638
  %650 = icmp eq i32 %487, 1
  br i1 %650, label %651, label %670

651:                                              ; preds = %643, %649
  %652 = load ptr, ptr @FCBUPFMAD, align 8, !tbaa !6
  %653 = sub nsw i32 %489, %492
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds double, ptr %652, i64 %654
  %656 = load double, ptr %655, align 8, !tbaa !21
  %657 = tail call double @llvm.fmuladd.f64(double %484, double %656, double %485)
  store double %657, ptr @CurrentFrameMAD, align 8, !tbaa !21
  store double 0.000000e+00, ptr @TotalBUMAD, align 8, !tbaa !21
  %658 = icmp sgt i32 %492, 0
  br i1 %658, label %659, label %689

659:                                              ; preds = %651
  %660 = sext i32 %489 to i64
  br label %661

661:                                              ; preds = %659, %661
  %662 = phi i64 [ %660, %659 ], [ %664, %661 ]
  %663 = phi double [ 0.000000e+00, %659 ], [ %668, %661 ]
  %664 = add nsw i64 %662, -1
  %665 = getelementptr inbounds double, ptr %652, i64 %664
  %666 = load double, ptr %665, align 8, !tbaa !21
  %667 = tail call double @llvm.fmuladd.f64(double %484, double %666, double %485)
  store double %667, ptr @CurrentBUMAD, align 8, !tbaa !21
  %668 = tail call double @llvm.fmuladd.f64(double %667, double %667, double %663)
  store double %668, ptr @TotalBUMAD, align 8, !tbaa !21
  %669 = icmp sgt i64 %664, %654
  br i1 %669, label %661, label %689

670:                                              ; preds = %649, %643
  %671 = load ptr, ptr @BUPFMAD, align 8, !tbaa !6
  %672 = sub nsw i32 %489, %492
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds double, ptr %671, i64 %673
  %675 = load double, ptr %674, align 8, !tbaa !21
  %676 = tail call double @llvm.fmuladd.f64(double %484, double %675, double %485)
  store double %676, ptr @CurrentFrameMAD, align 8, !tbaa !21
  store double 0.000000e+00, ptr @TotalBUMAD, align 8, !tbaa !21
  %677 = icmp sgt i32 %492, 0
  br i1 %677, label %678, label %689

678:                                              ; preds = %670
  %679 = sext i32 %489 to i64
  br label %680

680:                                              ; preds = %678, %680
  %681 = phi i64 [ %679, %678 ], [ %683, %680 ]
  %682 = phi double [ 0.000000e+00, %678 ], [ %687, %680 ]
  %683 = add nsw i64 %681, -1
  %684 = getelementptr inbounds double, ptr %671, i64 %683
  %685 = load double, ptr %684, align 8, !tbaa !21
  %686 = tail call double @llvm.fmuladd.f64(double %484, double %685, double %485)
  store double %686, ptr @CurrentBUMAD, align 8, !tbaa !21
  %687 = tail call double @llvm.fmuladd.f64(double %686, double %686, double %682)
  store double %687, ptr @TotalBUMAD, align 8, !tbaa !21
  %688 = icmp sgt i64 %683, %673
  br i1 %688, label %680, label %689

689:                                              ; preds = %680, %661, %670, %651
  %690 = phi double [ 0.000000e+00, %670 ], [ 0.000000e+00, %651 ], [ %668, %661 ], [ %687, %680 ]
  %691 = phi double [ %676, %670 ], [ %657, %651 ], [ %657, %661 ], [ %676, %680 ]
  %692 = sitofp i64 %551 to double
  %693 = fmul double %691, %692
  %694 = fmul double %691, %693
  %695 = fdiv double %694, %690
  %696 = fptosi double %695 to i32
  %697 = load i32, ptr @PAveHeaderBits2, align 4, !tbaa !19
  %698 = sub nsw i32 %696, %697
  %699 = load double, ptr @bit_rate, align 8, !tbaa !21
  %700 = load double, ptr @MINVALUE, align 8, !tbaa !21
  %701 = load double, ptr @frame_rate, align 8, !tbaa !21
  %702 = fmul double %700, %701
  %703 = sitofp i32 %489 to double
  %704 = fmul double %702, %703
  %705 = fdiv double %699, %704
  %706 = fptosi double %705 to i32
  %707 = tail call i32 @llvm.smax.i32(i32 %698, i32 %706)
  %708 = fmul double %479, %691
  %709 = fmul double %691, %708
  %710 = fmul double %480, 4.000000e+00
  %711 = fmul double %710, %691
  %712 = sitofp i32 %707 to double
  %713 = fmul double %711, %712
  %714 = tail call double @llvm.fmuladd.f64(double %709, double %479, double %713)
  %715 = fcmp oeq double %480, 0.000000e+00
  %716 = fcmp olt double %714, 0.000000e+00
  %717 = select i1 %715, i1 true, i1 %716
  br i1 %717, label %727, label %718

718:                                              ; preds = %689
  %719 = tail call double @sqrt(double noundef %714) #21
  %720 = load double, ptr @m_X1, align 8, !tbaa !21
  %721 = load double, ptr @CurrentFrameMAD, align 8, !tbaa !21
  %722 = fneg double %720
  %723 = tail call double @llvm.fmuladd.f64(double %722, double %721, double %719)
  %724 = fcmp ugt double %723, 0.000000e+00
  br i1 %724, label %730, label %725

725:                                              ; preds = %718
  %726 = fmul double %720, %721
  br label %727

727:                                              ; preds = %725, %689
  %728 = phi double [ %726, %725 ], [ %708, %689 ]
  %729 = fdiv double %728, %712
  br label %740

730:                                              ; preds = %718
  %731 = load double, ptr @m_X2, align 8, !tbaa !21
  %732 = fmul double %731, 2.000000e+00
  %733 = fmul double %721, %732
  %734 = tail call double @sqrt(double noundef %714) #21
  %735 = load double, ptr @m_X1, align 8, !tbaa !21
  %736 = load double, ptr @CurrentFrameMAD, align 8, !tbaa !21
  %737 = fneg double %735
  %738 = tail call double @llvm.fmuladd.f64(double %737, double %736, double %734)
  %739 = fdiv double %733, %738
  br label %740

740:                                              ; preds = %730, %727
  %741 = phi double [ %739, %730 ], [ %729, %727 ]
  %742 = fptrunc double %741 to float
  %743 = fpext float %742 to double
  store double %743, ptr @m_Qstep, align 8, !tbaa !21
  %744 = fcmp olt float %742, 6.250000e-01
  br i1 %744, label %773, label %745

745:                                              ; preds = %740
  %746 = fcmp ogt float %742, 2.240000e+02
  br i1 %746, label %773, label %747

747:                                              ; preds = %745
  %748 = fcmp ogt float %742, 1.125000e+00
  br i1 %748, label %749, label %757

749:                                              ; preds = %747, %749
  %750 = phi i32 [ %753, %749 ], [ 0, %747 ]
  %751 = phi double [ %752, %749 ], [ %743, %747 ]
  %752 = fmul double %751, 5.000000e-01
  %753 = add nuw nsw i32 %750, 1
  %754 = fcmp ogt double %752, 1.125000e+00
  br i1 %754, label %749, label %755

755:                                              ; preds = %749
  %756 = mul nuw nsw i32 %753, 6
  br label %757

757:                                              ; preds = %755, %747
  %758 = phi double [ %743, %747 ], [ %752, %755 ]
  %759 = phi i32 [ 0, %747 ], [ %756, %755 ]
  %760 = fcmp ugt double %758, 6.562500e-01
  br i1 %760, label %761, label %770

761:                                              ; preds = %757
  %762 = fcmp ugt double %758, 7.500000e-01
  br i1 %762, label %763, label %770

763:                                              ; preds = %761
  %764 = fcmp ugt double %758, 8.437500e-01
  br i1 %764, label %765, label %770

765:                                              ; preds = %763
  %766 = fcmp ugt double %758, 9.375000e-01
  br i1 %766, label %767, label %770

767:                                              ; preds = %765
  %768 = fcmp ugt double %758, 1.062500e+00
  %769 = select i1 %768, i32 5, i32 4
  br label %770

770:                                              ; preds = %767, %765, %763, %761, %757
  %771 = phi i32 [ 0, %757 ], [ 1, %761 ], [ 2, %763 ], [ 3, %765 ], [ %769, %767 ]
  %772 = add nuw nsw i32 %771, %759
  br label %773

773:                                              ; preds = %740, %745, %770
  %774 = phi i32 [ %772, %770 ], [ 0, %740 ], [ 51, %745 ]
  %775 = load i32, ptr @m_Qp, align 4
  %776 = load i32, ptr @DDquant, align 4
  %777 = add nsw i32 %776, %775
  %778 = tail call i32 @llvm.smin.i32(i32 %777, i32 %774)
  %779 = load ptr, ptr @input, align 8, !tbaa !6
  %780 = getelementptr inbounds i8, ptr %779, i64 3920
  %781 = load i32, ptr %780, align 8, !tbaa !17
  %782 = load i32, ptr @MBPerRow, align 4, !tbaa !19
  %783 = icmp slt i32 %781, %782
  %784 = load i32, ptr @PAveFrameQP, align 4
  %785 = select i1 %783, i32 3, i32 6
  %786 = add nsw i32 %784, %785
  %787 = tail call i32 @llvm.smin.i32(i32 %786, i32 %778)
  %788 = load i32, ptr @RC_MAX_QUANT, align 4
  %789 = tail call i32 @llvm.smin.i32(i32 %787, i32 %788)
  %790 = sub nsw i32 %775, %776
  %791 = tail call i32 @llvm.smax.i32(i32 %790, i32 %789)
  %792 = select i1 %783, i32 -3, i32 -6
  %793 = add nsw i32 %784, %792
  %794 = tail call i32 @llvm.smax.i32(i32 %793, i32 %791)
  %795 = load i32, ptr @RC_MIN_QUANT, align 4
  %796 = tail call i32 @llvm.smax.i32(i32 %795, i32 %794)
  store i32 %796, ptr @m_Qc, align 4, !tbaa !19
  %797 = load i32, ptr @TotalFrameQP, align 4, !tbaa !19
  %798 = add nsw i32 %797, %796
  store i32 %798, ptr @TotalFrameQP, align 4, !tbaa !19
  store i32 %796, ptr @Pm_Qp, align 4, !tbaa !19
  %799 = load i32, ptr @NumberofBasicUnit, align 4, !tbaa !19
  %800 = add nsw i32 %799, -1
  store i32 %800, ptr @NumberofBasicUnit, align 4, !tbaa !19
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %861

802:                                              ; preds = %773
  %803 = load ptr, ptr @img, align 8, !tbaa !6
  %804 = getelementptr inbounds i8, ptr %803, i64 24
  %805 = load i32, ptr %804, align 8, !tbaa !44
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %861

807:                                              ; preds = %802
  %808 = icmp eq i32 %0, 0
  br i1 %808, label %813, label %809

809:                                              ; preds = %807
  %810 = getelementptr inbounds i8, ptr %803, i64 90424
  %811 = load i32, ptr %810, align 8, !tbaa !31
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %861

813:                                              ; preds = %809, %807
  %814 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %815 = getelementptr inbounds i8, ptr %814, i64 1148
  %816 = load i32, ptr %815, align 4, !tbaa !50
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %821

818:                                              ; preds = %813
  %819 = getelementptr inbounds i8, ptr %779, i64 3552
  %820 = load i32, ptr %819, align 8, !tbaa !36
  switch i32 %820, label %841 [
    i32 1, label %821
    i32 2, label %845
  ]

821:                                              ; preds = %818, %813
  %822 = sitofp i32 %798 to double
  %823 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  %824 = sitofp i32 %823 to double
  %825 = fdiv double %822, %824
  %826 = fadd double %825, 5.000000e-01
  %827 = fptosi double %826 to i32
  %828 = getelementptr inbounds i8, ptr %803, i64 90400
  %829 = load i32, ptr %828, align 8, !tbaa !40
  %830 = getelementptr inbounds i8, ptr %779, i64 1228
  %831 = load i32, ptr %830, align 4, !tbaa !54
  %832 = add nsw i32 %831, -2
  %833 = icmp eq i32 %829, %832
  br i1 %833, label %834, label %835

834:                                              ; preds = %821
  store i32 %827, ptr @QPLastPFrame, align 4, !tbaa !19
  br label %835

835:                                              ; preds = %834, %821
  %836 = getelementptr inbounds i8, ptr %803, i64 90396
  %837 = load i32, ptr %836, align 4, !tbaa !38
  %838 = add nsw i32 %837, %827
  store i32 %838, ptr %836, align 4, !tbaa !38
  %839 = load i32, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %839, ptr @PreviousQp1, align 4, !tbaa !19
  store i32 %827, ptr @PreviousQp2, align 4, !tbaa !19
  store i32 %827, ptr @PAveFrameQP, align 4, !tbaa !19
  %840 = load i32, ptr @PAveHeaderBits2, align 4, !tbaa !19
  store i32 %840, ptr @PAveHeaderBits3, align 4, !tbaa !19
  br label %861

841:                                              ; preds = %818
  %842 = getelementptr inbounds i8, ptr %779, i64 3556
  %843 = load i32, ptr %842, align 4, !tbaa !37
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %861, label %845

845:                                              ; preds = %818, %841
  %846 = getelementptr inbounds i8, ptr %803, i64 90424
  %847 = load i32, ptr %846, align 8, !tbaa !31
  %848 = icmp eq i32 %847, 0
  %849 = sitofp i32 %798 to double
  %850 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  %851 = sitofp i32 %850 to double
  %852 = fdiv double %849, %851
  %853 = fadd double %852, 5.000000e-01
  %854 = fptosi double %853 to i32
  br i1 %848, label %855, label %857

855:                                              ; preds = %845
  store i32 %854, ptr @FrameQPBuffer, align 4, !tbaa !19
  %856 = load i32, ptr @PAveHeaderBits2, align 4, !tbaa !19
  store i32 %856, ptr @FrameAveHeaderBits, align 4, !tbaa !19
  br label %861

857:                                              ; preds = %845
  store i32 %854, ptr @FieldQPBuffer, align 4, !tbaa !19
  %858 = load i32, ptr @PAveHeaderBits2, align 4, !tbaa !19
  store i32 %858, ptr @FieldAveHeaderBits, align 4, !tbaa !19
  br label %861

859:                                              ; preds = %305, %435, %438
  %860 = load i32, ptr @m_Qc, align 4, !tbaa !19
  br label %861

861:                                              ; preds = %773, %802, %835, %855, %857, %841, %809, %264, %280, %275, %121, %136, %131, %859, %635, %538, %475, %425, %419, %318, %308, %303, %111, %17
  %862 = phi i32 [ %18, %17 ], [ %116, %111 ], [ %304, %303 ], [ %309, %308 ], [ %319, %318 ], [ %424, %419 ], [ %426, %425 ], [ %441, %475 ], [ %860, %859 ], [ %539, %538 ], [ %569, %635 ], [ %122, %131 ], [ %122, %136 ], [ %122, %121 ], [ %266, %275 ], [ %266, %280 ], [ %266, %264 ], [ %796, %809 ], [ %796, %841 ], [ %796, %857 ], [ %796, %855 ], [ %796, %835 ], [ %796, %802 ], [ %796, %773 ]
  ret i32 %862
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare dso_local double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local signext i32 @Qstep2QP(double noundef %0) local_unnamed_addr #14 {
  %2 = fcmp olt double %0, 6.250000e-01
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = fcmp ogt double %0, 2.240000e+02
  br i1 %4, label %31, label %5

5:                                                ; preds = %3
  %6 = fcmp ogt double %0, 1.125000e+00
  br i1 %6, label %7, label %15

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %5 ]
  %9 = phi double [ %10, %7 ], [ %0, %5 ]
  %10 = fmul double %9, 5.000000e-01
  %11 = add nuw nsw i32 %8, 1
  %12 = fcmp ogt double %10, 1.125000e+00
  br i1 %12, label %7, label %13

13:                                               ; preds = %7
  %14 = mul nuw nsw i32 %11, 6
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi double [ %0, %5 ], [ %10, %13 ]
  %17 = phi i32 [ 0, %5 ], [ %14, %13 ]
  %18 = fcmp ugt double %16, 6.562500e-01
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = fcmp ugt double %16, 7.500000e-01
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = fcmp ugt double %16, 8.437500e-01
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = fcmp ugt double %16, 9.375000e-01
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = fcmp ugt double %16, 1.062500e+00
  %27 = select i1 %26, i32 5, i32 4
  br label %28

28:                                               ; preds = %25, %23, %21, %19, %15
  %29 = phi i32 [ 0, %15 ], [ 1, %19 ], [ 2, %21 ], [ 3, %23 ], [ %27, %25 ]
  %30 = add nuw nsw i32 %29, %17
  br label %31

31:                                               ; preds = %3, %1, %28
  %32 = phi i32 [ %30, %28 ], [ 0, %1 ], [ 51, %3 ]
  ret i32 %32
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write)
define dso_local void @updateRCModel() local_unnamed_addr #12 {
  %1 = alloca [20 x double], align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %1) #21
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %225

6:                                                ; preds = %0
  %7 = getelementptr inbounds i8, ptr %2, i64 90444
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = getelementptr inbounds i8, ptr %2, i64 90432
  %10 = load i32, ptr %9, align 8, !tbaa !27
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %6
  %13 = icmp sgt i32 %8, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %2, i64 90408
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = zext nneg i32 %8 to i64
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %24, %18 ]
  %20 = phi double [ 0.000000e+00, %14 ], [ %23, %18 ]
  %21 = getelementptr inbounds double, ptr %16, i64 %19
  %22 = load double, ptr %21, align 8, !tbaa !21
  %23 = fadd double %20, %22
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, %17
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %12
  %27 = phi double [ 0.000000e+00, %12 ], [ %23, %18 ]
  %28 = sitofp i32 %8 to double
  %29 = fdiv double %27, %28
  store double %29, ptr @CurrentFrameMAD, align 8, !tbaa !21
  %30 = getelementptr inbounds i8, ptr %2, i64 90388
  %31 = load i32, ptr %30, align 4, !tbaa !29
  br label %111

32:                                               ; preds = %6
  %33 = load ptr, ptr @input, align 8, !tbaa !6
  %34 = getelementptr inbounds i8, ptr %33, i64 3556
  %35 = load i32, ptr %34, align 4, !tbaa !37
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %2, i64 90424
  %39 = load i32, ptr %38, align 8, !tbaa !31
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %2, i64 90368
  %43 = load double, ptr %42, align 8, !tbaa !49
  %44 = sitofp i32 %8 to double
  %45 = fdiv double %43, %44
  %46 = fmul double %45, 5.000000e-01
  br label %52

47:                                               ; preds = %37, %32
  %48 = getelementptr inbounds i8, ptr %2, i64 90368
  %49 = load double, ptr %48, align 8, !tbaa !49
  %50 = sitofp i32 %8 to double
  %51 = fdiv double %49, %50
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi double [ %51, %47 ], [ %46, %41 ]
  store double %53, ptr @CurrentFrameMAD, align 8, !tbaa !21
  %54 = getelementptr inbounds i8, ptr %2, i64 90368
  store double 0.000000e+00, ptr %54, align 8, !tbaa !49
  %55 = load i32, ptr @TotalNumberofBasicUnit, align 4, !tbaa !19
  %56 = load i32, ptr @NumberofBasicUnit, align 4, !tbaa !19
  %57 = sub nsw i32 %55, %56
  store i32 %57, ptr @CodedBasicUnit, align 4, !tbaa !19
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %52
  %60 = load i32, ptr @PAveHeaderBits1, align 4, !tbaa !19
  %61 = add nsw i32 %57, -1
  %62 = mul nsw i32 %60, %61
  %63 = getelementptr inbounds i8, ptr %2, i64 90356
  %64 = load i32, ptr %63, align 4, !tbaa !47
  %65 = add nsw i32 %62, %64
  %66 = sitofp i32 %65 to double
  %67 = uitofp nneg i32 %57 to double
  %68 = fdiv double %66, %67
  %69 = fadd double %68, 5.000000e-01
  %70 = fptosi double %69 to i32
  store i32 %70, ptr @PAveHeaderBits1, align 4, !tbaa !19
  %71 = load i32, ptr @PAveHeaderBits3, align 4, !tbaa !19
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %59
  %74 = mul nsw i32 %57, %70
  %75 = mul nsw i32 %71, %56
  %76 = add nsw i32 %74, %75
  %77 = sitofp i32 %76 to double
  %78 = sitofp i32 %55 to double
  %79 = fdiv double %77, %78
  %80 = fadd double %79, 5.000000e-01
  %81 = fptosi double %80 to i32
  br label %82

82:                                               ; preds = %59, %73
  %83 = phi i32 [ %81, %73 ], [ %70, %59 ]
  store i32 %83, ptr @PAveHeaderBits2, align 4, !tbaa !19
  br label %84

84:                                               ; preds = %82, %52
  %85 = getelementptr inbounds i8, ptr %33, i64 3552
  %86 = load i32, ptr %85, align 8, !tbaa !36
  %87 = icmp eq i32 %86, 2
  %88 = or i1 %87, %36
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, ptr %2, i64 90424
  %91 = load i32, ptr %90, align 8, !tbaa !31
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %94, label %93

93:                                               ; preds = %84, %89
  br label %94

94:                                               ; preds = %89, %93
  %95 = phi ptr [ @BUCFMAD, %93 ], [ @FCBUCFMAD, %89 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = xor i32 %56, -1
  %98 = add i32 %55, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, ptr %96, i64 %99
  store double %53, ptr %100, align 8, !tbaa !21
  %101 = icmp eq i32 %56, 0
  %102 = getelementptr inbounds i8, ptr %2, i64 90388
  %103 = load i32, ptr %102, align 4, !tbaa !29
  br i1 %101, label %107, label %104

104:                                              ; preds = %94
  %105 = mul nsw i32 %103, %55
  %106 = add nsw i32 %105, %57
  br label %111

107:                                              ; preds = %94
  %108 = add nsw i32 %103, -1
  %109 = mul nsw i32 %108, %55
  %110 = add nsw i32 %109, %57
  br label %111

111:                                              ; preds = %104, %107, %26
  %112 = phi i32 [ %31, %26 ], [ %106, %104 ], [ %110, %107 ]
  %113 = getelementptr inbounds i8, ptr %2, i64 90348
  %114 = load i32, ptr %113, align 4, !tbaa !45
  store i32 %114, ptr @PPreHeader, align 4, !tbaa !19
  br label %115

115:                                              ; preds = %111, %115
  %116 = phi i64 [ 19, %111 ], [ %117, %115 ]
  %117 = add nsw i64 %116, -1
  %118 = getelementptr inbounds [20 x double], ptr @Pm_rgQp, i64 0, i64 %117
  %119 = load double, ptr %118, align 8, !tbaa !21
  %120 = getelementptr inbounds [20 x double], ptr @Pm_rgQp, i64 0, i64 %116
  store double %119, ptr %120, align 8, !tbaa !21
  %121 = getelementptr inbounds [21 x double], ptr @m_rgQp, i64 0, i64 %116
  store double %119, ptr %121, align 8, !tbaa !21
  %122 = getelementptr inbounds [20 x double], ptr @Pm_rgRp, i64 0, i64 %117
  %123 = load double, ptr %122, align 8, !tbaa !21
  %124 = getelementptr inbounds [20 x double], ptr @Pm_rgRp, i64 0, i64 %116
  store double %123, ptr %124, align 8, !tbaa !21
  %125 = getelementptr inbounds [21 x double], ptr @m_rgRp, i64 0, i64 %116
  store double %123, ptr %125, align 8, !tbaa !21
  %126 = icmp ugt i64 %116, 1
  br i1 %126, label %115, label %127

127:                                              ; preds = %115
  %128 = icmp slt i32 %112, 2
  %129 = load i32, ptr @m_Qc, align 4, !tbaa !19
  %130 = freeze i32 %129
  %131 = sdiv i32 %130, 6
  %132 = mul i32 %131, 6
  %133 = sub i32 %130, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [6 x double], ptr @QP2Qstep.QP2QSTEP, i64 0, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !21
  %137 = icmp sgt i32 %129, 5
  br i1 %137, label %138, label %144

138:                                              ; preds = %127, %138
  %139 = phi double [ %141, %138 ], [ %136, %127 ]
  %140 = phi i32 [ %142, %138 ], [ 0, %127 ]
  %141 = fmul double %139, 2.000000e+00
  %142 = add nuw nsw i32 %140, 1
  %143 = icmp eq i32 %142, %131
  br i1 %143, label %144, label %138

144:                                              ; preds = %138, %127
  %145 = phi double [ %136, %127 ], [ %141, %138 ]
  store double %145, ptr @Pm_rgQp, align 8, !tbaa !21
  %146 = load double, ptr @CurrentFrameMAD, align 8, !tbaa !21
  %147 = select i1 %11, i64 90352, i64 90360
  %148 = getelementptr inbounds i8, ptr %2, i64 %147
  %149 = load i32, ptr %148, align 8, !tbaa !19
  %150 = sitofp i32 %149 to double
  %151 = fdiv double %150, %146
  store double %151, ptr @Pm_rgRp, align 8, !tbaa !21
  store double %145, ptr @m_rgQp, align 8, !tbaa !21
  store double %151, ptr @m_rgRp, align 8, !tbaa !21
  %152 = load double, ptr @Pm_X1, align 8, !tbaa !21
  store double %152, ptr @m_X1, align 8, !tbaa !21
  %153 = load double, ptr @Pm_X2, align 8, !tbaa !21
  store double %153, ptr @m_X2, align 8, !tbaa !21
  %154 = load double, ptr @PreviousFrameMAD, align 8, !tbaa !21
  %155 = fcmp ogt double %146, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %144
  %157 = fdiv double %154, %146
  br label %160

158:                                              ; preds = %144
  %159 = fdiv double %146, %154
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi double [ %157, %156 ], [ %159, %158 ]
  %162 = fmul double %161, 2.000000e+01
  %163 = fptosi double %162 to i32
  %164 = tail call i32 @llvm.smax.i32(i32 %163, i32 1)
  %165 = tail call i32 @llvm.smin.i32(i32 %164, i32 %112)
  %166 = load i32, ptr @m_windowSize, align 4
  %167 = add nsw i32 %166, 1
  %168 = tail call i32 @llvm.smin.i32(i32 %165, i32 %167)
  %169 = tail call i32 @llvm.smin.i32(i32 %168, i32 20)
  store i32 %169, ptr @m_windowSize, align 4, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) @m_rgRejected, i8 0, i64 80, i1 false), !tbaa !19
  tail call void @RCModelEstimator(i32 noundef signext %169)
  %170 = load i32, ptr @m_windowSize, align 4, !tbaa !19
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %160
  %173 = sitofp i32 %170 to double
  %174 = fdiv double 0.000000e+00, %173
  %175 = tail call double @sqrt(double noundef %174) #21
  br label %216

176:                                              ; preds = %160
  %177 = load double, ptr @m_X1, align 8, !tbaa !21
  %178 = load double, ptr @m_X2, align 8, !tbaa !21
  %179 = zext nneg i32 %170 to i64
  br label %180

180:                                              ; preds = %176, %180
  %181 = phi i64 [ 0, %176 ], [ %194, %180 ]
  %182 = phi double [ 0.000000e+00, %176 ], [ %193, %180 ]
  %183 = getelementptr inbounds [21 x double], ptr @m_rgQp, i64 0, i64 %181
  %184 = load double, ptr %183, align 8, !tbaa !21
  %185 = fdiv double %177, %184
  %186 = fmul double %184, %184
  %187 = fdiv double %178, %186
  %188 = fadd double %185, %187
  %189 = getelementptr inbounds [21 x double], ptr @m_rgRp, i64 0, i64 %181
  %190 = load double, ptr %189, align 8, !tbaa !21
  %191 = fsub double %188, %190
  %192 = getelementptr inbounds [20 x double], ptr %1, i64 0, i64 %181
  store double %191, ptr %192, align 8, !tbaa !21
  %193 = tail call double @llvm.fmuladd.f64(double %191, double %191, double %182)
  %194 = add nuw nsw i64 %181, 1
  %195 = icmp eq i64 %194, %179
  br i1 %195, label %196, label %180

196:                                              ; preds = %180
  %197 = icmp eq i32 %170, 2
  br i1 %197, label %202, label %198

198:                                              ; preds = %196
  %199 = sitofp i32 %170 to double
  %200 = fdiv double %193, %199
  %201 = tail call double @sqrt(double noundef %200) #21
  br i1 %171, label %202, label %216

202:                                              ; preds = %196, %198
  %203 = phi double [ %201, %198 ], [ 0.000000e+00, %196 ]
  %204 = zext nneg i32 %170 to i64
  br label %205

205:                                              ; preds = %202, %213
  %206 = phi i64 [ 0, %202 ], [ %214, %213 ]
  %207 = getelementptr inbounds [20 x double], ptr %1, i64 0, i64 %206
  %208 = load double, ptr %207, align 8, !tbaa !21
  %209 = tail call double @llvm.fabs.f64(double %208)
  %210 = fcmp ogt double %209, %203
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = getelementptr inbounds [21 x i32], ptr @m_rgRejected, i64 0, i64 %206
  store i32 1, ptr %212, align 4, !tbaa !19
  br label %213

213:                                              ; preds = %205, %211
  %214 = add nuw nsw i64 %206, 1
  %215 = icmp eq i64 %214, %204
  br i1 %215, label %216, label %205

216:                                              ; preds = %213, %172, %198
  store i32 0, ptr @m_rgRejected, align 4, !tbaa !19
  tail call void @RCModelEstimator(i32 noundef signext %170)
  br i1 %128, label %218, label %217

217:                                              ; preds = %216
  tail call void @updateMADModel()
  br label %225

218:                                              ; preds = %216
  %219 = load ptr, ptr @img, align 8, !tbaa !6
  %220 = getelementptr inbounds i8, ptr %219, i64 24
  %221 = load i32, ptr %220, align 8, !tbaa !44
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load double, ptr @CurrentFrameMAD, align 8, !tbaa !21
  store double %224, ptr @PPictureMAD, align 8, !tbaa !21
  br label %225

225:                                              ; preds = %217, %223, %218, %0
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %1) #21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local double @ComputeFrameMAD() local_unnamed_addr #15 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 90432
  %3 = load i32, ptr %2, align 8, !tbaa !27
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = getelementptr inbounds i8, ptr %1, i64 90408
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %15, %9 ]
  %11 = phi double [ 0.000000e+00, %5 ], [ %14, %9 ]
  %12 = getelementptr inbounds double, ptr %7, i64 %10
  %13 = load double, ptr %12, align 8, !tbaa !21
  %14 = fadd double %11, %13
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %0
  %18 = phi double [ 0.000000e+00, %0 ], [ %14, %9 ]
  %19 = sitofp i32 %3 to double
  %20 = fdiv double %18, %19
  ret double %20
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local double @QP2Qstep(i32 noundef signext %0) local_unnamed_addr #14 {
  %2 = sdiv i32 %0, 6
  %3 = mul i32 %2, 6
  %4 = sub i32 %0, %3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [6 x double], ptr @QP2Qstep.QP2QSTEP, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !21
  %8 = icmp sgt i32 %0, 5
  br i1 %8, label %9, label %15

9:                                                ; preds = %1, %9
  %10 = phi double [ %12, %9 ], [ %7, %1 ]
  %11 = phi i32 [ %13, %9 ], [ 0, %1 ]
  %12 = fmul double %10, 2.000000e+00
  %13 = add nuw nsw i32 %11, 1
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %1
  %16 = phi double [ %7, %1 ], [ %12, %9 ]
  ret double %16
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @RCModelEstimator(i32 noundef signext %0) local_unnamed_addr #16 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store double 0.000000e+00, ptr @m_X2, align 8, !tbaa !21
  store double 0.000000e+00, ptr @m_X1, align 8, !tbaa !21
  br label %122

4:                                                ; preds = %1
  %5 = zext nneg i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %14, %6 ]
  %8 = phi i32 [ %0, %4 ], [ %13, %6 ]
  %9 = getelementptr inbounds [21 x i32], ptr @m_rgRejected, i64 0, i64 %7
  %10 = load i32, ptr %9, align 4, !tbaa !19
  %11 = icmp ne i32 %10, 0
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %8, %12
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %16, label %6

16:                                               ; preds = %6
  store double 0.000000e+00, ptr @m_X2, align 8, !tbaa !21
  store double 0.000000e+00, ptr @m_X1, align 8, !tbaa !21
  br i1 %2, label %17, label %122

17:                                               ; preds = %16
  %18 = zext nneg i32 %0 to i64
  br label %23

19:                                               ; preds = %32
  br i1 %2, label %20, label %122

20:                                               ; preds = %19
  %21 = sitofp i32 %13 to double
  %22 = zext nneg i32 %0 to i64
  br label %36

23:                                               ; preds = %17, %32
  %24 = phi i64 [ 0, %17 ], [ %34, %32 ]
  %25 = phi double [ 0.000000e+00, %17 ], [ %33, %32 ]
  %26 = getelementptr inbounds [21 x i32], ptr @m_rgRejected, i64 0, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds [21 x double], ptr @m_rgQp, i64 0, i64 %24
  %31 = load double, ptr %30, align 8, !tbaa !21
  br label %32

32:                                               ; preds = %23, %29
  %33 = phi double [ %25, %23 ], [ %31, %29 ]
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, %18
  br i1 %35, label %19, label %23

36:                                               ; preds = %20, %55
  %37 = phi i64 [ 0, %20 ], [ %57, %55 ]
  %38 = phi i32 [ 0, %20 ], [ %47, %55 ]
  %39 = phi double [ 0.000000e+00, %20 ], [ %56, %55 ]
  %40 = getelementptr inbounds [21 x double], ptr @m_rgQp, i64 0, i64 %37
  %41 = load double, ptr %40, align 8, !tbaa !21
  %42 = fcmp une double %41, %33
  %43 = getelementptr inbounds [21 x i32], ptr @m_rgRejected, i64 0, i64 %37
  %44 = load i32, ptr %43, align 4, !tbaa !19
  %45 = icmp eq i32 %44, 0
  %46 = and i1 %42, %45
  %47 = select i1 %46, i32 1, i32 %38
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = getelementptr inbounds [21 x double], ptr @m_rgRp, i64 0, i64 %37
  %51 = load double, ptr %50, align 8, !tbaa !21
  %52 = fmul double %41, %51
  %53 = fdiv double %52, %21
  %54 = fadd double %39, %53
  store double %54, ptr @m_X1, align 8, !tbaa !21
  br label %55

55:                                               ; preds = %36, %49
  %56 = phi double [ %39, %36 ], [ %54, %49 ]
  %57 = add nuw nsw i64 %37, 1
  %58 = icmp eq i64 %57, %22
  br i1 %58, label %59, label %36

59:                                               ; preds = %55
  %60 = icmp ne i32 %47, 0
  %61 = icmp sgt i32 %13, 0
  %62 = select i1 %61, i1 %60, i1 false
  br i1 %62, label %63, label %122

63:                                               ; preds = %59
  br i1 %2, label %64, label %99

64:                                               ; preds = %63
  %65 = zext nneg i32 %0 to i64
  br label %66

66:                                               ; preds = %64, %90
  %67 = phi i64 [ 0, %64 ], [ %97, %90 ]
  %68 = phi double [ 0.000000e+00, %64 ], [ %96, %90 ]
  %69 = phi double [ 0.000000e+00, %64 ], [ %95, %90 ]
  %70 = phi double [ 0.000000e+00, %64 ], [ %94, %90 ]
  %71 = phi double [ 0.000000e+00, %64 ], [ %93, %90 ]
  %72 = phi double [ 0.000000e+00, %64 ], [ %92, %90 ]
  %73 = phi double [ 0.000000e+00, %64 ], [ %91, %90 ]
  %74 = getelementptr inbounds [21 x i32], ptr @m_rgRejected, i64 0, i64 %67
  %75 = load i32, ptr %74, align 4, !tbaa !19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %66
  %78 = fadd double %73, 1.000000e+00
  %79 = getelementptr inbounds [21 x double], ptr @m_rgQp, i64 0, i64 %67
  %80 = load double, ptr %79, align 8, !tbaa !21
  %81 = fdiv double 1.000000e+00, %80
  %82 = fadd double %72, %81
  %83 = fmul double %80, %80
  %84 = fdiv double 1.000000e+00, %83
  %85 = fadd double %70, %84
  %86 = getelementptr inbounds [21 x double], ptr @m_rgRp, i64 0, i64 %67
  %87 = load double, ptr %86, align 8, !tbaa !21
  %88 = tail call double @llvm.fmuladd.f64(double %80, double %87, double %69)
  %89 = fadd double %68, %87
  br label %90

90:                                               ; preds = %66, %77
  %91 = phi double [ %73, %66 ], [ %78, %77 ]
  %92 = phi double [ %72, %66 ], [ %82, %77 ]
  %93 = phi double [ %71, %66 ], [ %82, %77 ]
  %94 = phi double [ %70, %66 ], [ %85, %77 ]
  %95 = phi double [ %69, %66 ], [ %88, %77 ]
  %96 = phi double [ %68, %66 ], [ %89, %77 ]
  %97 = add nuw nsw i64 %67, 1
  %98 = icmp eq i64 %97, %65
  br i1 %98, label %99, label %66

99:                                               ; preds = %90, %63
  %100 = phi double [ 0.000000e+00, %63 ], [ %91, %90 ]
  %101 = phi double [ 0.000000e+00, %63 ], [ %92, %90 ]
  %102 = phi double [ 0.000000e+00, %63 ], [ %93, %90 ]
  %103 = phi double [ 0.000000e+00, %63 ], [ %94, %90 ]
  %104 = phi double [ 0.000000e+00, %63 ], [ %95, %90 ]
  %105 = phi double [ 0.000000e+00, %63 ], [ %96, %90 ]
  %106 = fneg double %101
  %107 = fmul double %102, %106
  %108 = tail call double @llvm.fmuladd.f64(double %100, double %103, double %107)
  %109 = tail call double @llvm.fabs.f64(double %108)
  %110 = fcmp ogt double %109, 0x3EB0C6F7A0B5ED8D
  br i1 %110, label %111, label %120

111:                                              ; preds = %99
  %112 = fneg double %105
  %113 = fmul double %101, %112
  %114 = tail call double @llvm.fmuladd.f64(double %104, double %103, double %113)
  %115 = fdiv double %114, %108
  store double %115, ptr @m_X1, align 8, !tbaa !21
  %116 = fneg double %104
  %117 = fmul double %102, %116
  %118 = tail call double @llvm.fmuladd.f64(double %105, double %100, double %117)
  %119 = fdiv double %118, %108
  store double %119, ptr @m_X2, align 8, !tbaa !21
  br label %122

120:                                              ; preds = %99
  %121 = fdiv double %104, %100
  store double %121, ptr @m_X1, align 8, !tbaa !21
  store double 0.000000e+00, ptr @m_X2, align 8, !tbaa !21
  br label %122

122:                                              ; preds = %16, %3, %19, %111, %120, %59
  %123 = phi double [ %119, %111 ], [ 0.000000e+00, %120 ], [ 0.000000e+00, %59 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %3 ], [ 0.000000e+00, %16 ]
  %124 = phi double [ %115, %111 ], [ %121, %120 ], [ %56, %59 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %3 ], [ 0.000000e+00, %16 ]
  %125 = load ptr, ptr @img, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %125, i64 24
  %127 = load i32, ptr %126, align 8, !tbaa !44
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store double %124, ptr @Pm_X1, align 8, !tbaa !21
  store double %123, ptr @Pm_X2, align 8, !tbaa !21
  br label %130

130:                                              ; preds = %129, %122
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write)
define dso_local void @updateMADModel() local_unnamed_addr #12 {
  %1 = alloca [20 x double], align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %1) #21
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 90388
  %4 = load i32, ptr %3, align 4, !tbaa !29
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %129

6:                                                ; preds = %0
  %7 = getelementptr inbounds i8, ptr %2, i64 90444
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = getelementptr inbounds i8, ptr %2, i64 90432
  %10 = load i32, ptr %9, align 8, !tbaa !27
  %11 = load i32, ptr @TotalNumberofBasicUnit, align 4
  %12 = mul nsw i32 %11, %4
  %13 = load i32, ptr @CodedBasicUnit, align 4
  %14 = add nsw i32 %12, %13
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) getelementptr inbounds (i8, ptr @ReferenceMAD, i64 8), ptr noundef nonnull align 8 dereferenceable(152) @ReferenceMAD, i64 152, i1 false), !tbaa !21
  %15 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 144), align 8, !tbaa !21
  store double %15, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 152), align 8, !tbaa !21
  store double %15, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 152), align 8, !tbaa !21
  %16 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 136), align 8, !tbaa !21
  store double %16, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 144), align 8, !tbaa !21
  store double %16, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 144), align 8, !tbaa !21
  %17 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 128), align 8, !tbaa !21
  store double %17, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 136), align 8, !tbaa !21
  store double %17, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 136), align 8, !tbaa !21
  %18 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 120), align 8, !tbaa !21
  store double %18, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 128), align 8, !tbaa !21
  store double %18, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 128), align 8, !tbaa !21
  %19 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 112), align 8, !tbaa !21
  store double %19, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 120), align 8, !tbaa !21
  store double %19, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 120), align 8, !tbaa !21
  %20 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 104), align 8, !tbaa !21
  store double %20, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 112), align 8, !tbaa !21
  store double %20, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 112), align 8, !tbaa !21
  %21 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 96), align 8, !tbaa !21
  store double %21, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 104), align 8, !tbaa !21
  store double %21, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 104), align 8, !tbaa !21
  %22 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 88), align 8, !tbaa !21
  store double %22, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 96), align 8, !tbaa !21
  store double %22, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 96), align 8, !tbaa !21
  %23 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 80), align 8, !tbaa !21
  store double %23, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 88), align 8, !tbaa !21
  store double %23, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 88), align 8, !tbaa !21
  %24 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 72), align 8, !tbaa !21
  store double %24, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 80), align 8, !tbaa !21
  store double %24, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 80), align 8, !tbaa !21
  %25 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 64), align 8, !tbaa !21
  store double %25, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 72), align 8, !tbaa !21
  store double %25, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 72), align 8, !tbaa !21
  %26 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 56), align 8, !tbaa !21
  store double %26, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 64), align 8, !tbaa !21
  store double %26, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 64), align 8, !tbaa !21
  %27 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 48), align 8, !tbaa !21
  store double %27, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 56), align 8, !tbaa !21
  store double %27, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 56), align 8, !tbaa !21
  %28 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 40), align 8, !tbaa !21
  store double %28, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 48), align 8, !tbaa !21
  store double %28, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 48), align 8, !tbaa !21
  %29 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 32), align 8, !tbaa !21
  store double %29, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 40), align 8, !tbaa !21
  store double %29, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 40), align 8, !tbaa !21
  %30 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 24), align 8, !tbaa !21
  store double %30, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 32), align 8, !tbaa !21
  store double %30, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 32), align 8, !tbaa !21
  %31 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 16), align 8, !tbaa !21
  store double %31, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 24), align 8, !tbaa !21
  store double %31, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 24), align 8, !tbaa !21
  %32 = load double, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 8), align 8, !tbaa !21
  store double %32, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 16), align 8, !tbaa !21
  store double %32, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 16), align 8, !tbaa !21
  %33 = load double, ptr @PPictureMAD, align 8, !tbaa !21
  store double %33, ptr getelementptr inbounds (i8, ptr @PPictureMAD, i64 8), align 8, !tbaa !21
  store double %33, ptr getelementptr inbounds (i8, ptr @PictureMAD, i64 8), align 8, !tbaa !21
  %34 = icmp eq i32 %8, %10
  %35 = select i1 %34, i32 %4, i32 %14
  %36 = load double, ptr @CurrentFrameMAD, align 8, !tbaa !21
  store double %36, ptr @PPictureMAD, align 8, !tbaa !21
  store double %36, ptr @PictureMAD, align 8, !tbaa !21
  br i1 %34, label %60, label %37

37:                                               ; preds = %6
  %38 = load ptr, ptr @input, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 3552
  %40 = load i32, ptr %39, align 8, !tbaa !36
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %38, i64 3556
  %44 = load i32, ptr %43, align 4, !tbaa !37
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42, %37
  %47 = getelementptr inbounds i8, ptr %2, i64 90424
  %48 = load i32, ptr %47, align 8, !tbaa !31
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %46, %50
  %52 = phi ptr [ @BUPFMAD, %50 ], [ @FCBUPFMAD, %46 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = load i32, ptr @NumberofBasicUnit, align 4, !tbaa !19
  %55 = xor i32 %54, -1
  %56 = add i32 %11, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, ptr %53, i64 %57
  %59 = load double, ptr %58, align 8, !tbaa !21
  br label %60

60:                                               ; preds = %51, %6
  %61 = phi double [ %33, %6 ], [ %59, %51 ]
  store double %61, ptr @ReferenceMAD, align 8, !tbaa !21
  %62 = load double, ptr @PMADPictureC1, align 8, !tbaa !21
  store double %62, ptr @MADPictureC1, align 8, !tbaa !21
  %63 = load double, ptr @PMADPictureC2, align 8, !tbaa !21
  store double %63, ptr @MADPictureC2, align 8, !tbaa !21
  %64 = load double, ptr @PreviousFrameMAD, align 8, !tbaa !21
  %65 = fcmp ogt double %36, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = fdiv double %64, %36
  br label %70

68:                                               ; preds = %60
  %69 = fdiv double %36, %64
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi double [ %67, %66 ], [ %69, %68 ]
  %72 = fmul double %71, 2.000000e+01
  %73 = fptosi double %72 to i32
  %74 = add i32 %35, -1
  %75 = tail call i32 @llvm.smin.i32(i32 %74, i32 %73)
  %76 = tail call i32 @llvm.smax.i32(i32 %75, i32 1)
  %77 = load i32, ptr @MADm_windowSize, align 4
  %78 = add i32 %77, 1
  %79 = tail call i32 @llvm.smin.i32(i32 %76, i32 %78)
  %80 = tail call i32 @llvm.smin.i32(i32 %79, i32 20)
  store i32 %80, ptr @MADm_windowSize, align 4, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) @PictureRejected, i8 0, i64 80, i1 false), !tbaa !19
  %81 = getelementptr inbounds i8, ptr %2, i64 24
  %82 = load i32, ptr %81, align 8, !tbaa !44
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store double %36, ptr @PreviousFrameMAD, align 8, !tbaa !21
  br label %85

85:                                               ; preds = %84, %70
  tail call void @MADModelEstimator(i32 noundef signext %80)
  %86 = icmp sgt i32 %77, -1
  br i1 %86, label %87, label %105

87:                                               ; preds = %85
  %88 = load double, ptr @MADPictureC1, align 8, !tbaa !21
  %89 = load double, ptr @MADPictureC2, align 8, !tbaa !21
  %90 = tail call i32 @llvm.smax.i32(i32 %80, i32 1)
  %91 = zext nneg i32 %90 to i64
  br label %92

92:                                               ; preds = %87, %92
  %93 = phi i64 [ 0, %87 ], [ %103, %92 ]
  %94 = phi double [ 0.000000e+00, %87 ], [ %102, %92 ]
  %95 = getelementptr inbounds [21 x double], ptr @ReferenceMAD, i64 0, i64 %93
  %96 = load double, ptr %95, align 8, !tbaa !21
  %97 = tail call double @llvm.fmuladd.f64(double %88, double %96, double %89)
  %98 = getelementptr inbounds [21 x double], ptr @PictureMAD, i64 0, i64 %93
  %99 = load double, ptr %98, align 8, !tbaa !21
  %100 = fsub double %97, %99
  %101 = getelementptr inbounds [20 x double], ptr %1, i64 0, i64 %93
  store double %100, ptr %101, align 8, !tbaa !21
  %102 = tail call double @llvm.fmuladd.f64(double %100, double %100, double %94)
  %103 = add nuw nsw i64 %93, 1
  %104 = icmp eq i64 %103, %91
  br i1 %104, label %105, label %92

105:                                              ; preds = %92, %85
  %106 = phi double [ 0.000000e+00, %85 ], [ %102, %92 ]
  %107 = icmp eq i32 %79, 2
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = sitofp i32 %80 to double
  %110 = fdiv double %106, %109
  %111 = tail call double @sqrt(double noundef %110) #21
  br label %112

112:                                              ; preds = %105, %108
  %113 = phi double [ %111, %108 ], [ 0.000000e+00, %105 ]
  br i1 %86, label %114, label %128

114:                                              ; preds = %112
  %115 = tail call i32 @llvm.smax.i32(i32 %80, i32 1)
  %116 = zext nneg i32 %115 to i64
  br label %117

117:                                              ; preds = %114, %125
  %118 = phi i64 [ 0, %114 ], [ %126, %125 ]
  %119 = getelementptr inbounds [20 x double], ptr %1, i64 0, i64 %118
  %120 = load double, ptr %119, align 8, !tbaa !21
  %121 = tail call double @llvm.fabs.f64(double %120)
  %122 = fcmp ogt double %121, %113
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = getelementptr inbounds [21 x i32], ptr @PictureRejected, i64 0, i64 %118
  store i32 1, ptr %124, align 4, !tbaa !19
  br label %125

125:                                              ; preds = %117, %123
  %126 = add nuw nsw i64 %118, 1
  %127 = icmp eq i64 %126, %116
  br i1 %127, label %128, label %117

128:                                              ; preds = %125, %112
  store i32 0, ptr @PictureRejected, align 4, !tbaa !19
  tail call void @MADModelEstimator(i32 noundef signext %80)
  br label %129

129:                                              ; preds = %128, %0
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %1) #21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @MADModelEstimator(i32 noundef signext %0) local_unnamed_addr #16 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store double 0.000000e+00, ptr @MADPictureC2, align 8, !tbaa !21
  store double 0.000000e+00, ptr @MADPictureC1, align 8, !tbaa !21
  br label %119

4:                                                ; preds = %1
  %5 = zext nneg i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %14, %6 ]
  %8 = phi i32 [ %0, %4 ], [ %13, %6 ]
  %9 = getelementptr inbounds [21 x i32], ptr @PictureRejected, i64 0, i64 %7
  %10 = load i32, ptr %9, align 4, !tbaa !19
  %11 = icmp ne i32 %10, 0
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %8, %12
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %16, label %6

16:                                               ; preds = %6
  store double 0.000000e+00, ptr @MADPictureC2, align 8, !tbaa !21
  store double 0.000000e+00, ptr @MADPictureC1, align 8, !tbaa !21
  br i1 %2, label %17, label %119

17:                                               ; preds = %16
  %18 = zext nneg i32 %0 to i64
  br label %23

19:                                               ; preds = %32
  br i1 %2, label %20, label %119

20:                                               ; preds = %19
  %21 = sitofp i32 %13 to double
  %22 = zext nneg i32 %0 to i64
  br label %36

23:                                               ; preds = %17, %32
  %24 = phi i64 [ 0, %17 ], [ %34, %32 ]
  %25 = phi double [ 0.000000e+00, %17 ], [ %33, %32 ]
  %26 = getelementptr inbounds [21 x i32], ptr @PictureRejected, i64 0, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds [21 x double], ptr @PictureMAD, i64 0, i64 %24
  %31 = load double, ptr %30, align 8, !tbaa !21
  br label %32

32:                                               ; preds = %23, %29
  %33 = phi double [ %25, %23 ], [ %31, %29 ]
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, %18
  br i1 %35, label %19, label %23

36:                                               ; preds = %20, %55
  %37 = phi i64 [ 0, %20 ], [ %57, %55 ]
  %38 = phi i32 [ 0, %20 ], [ %47, %55 ]
  %39 = phi double [ 0.000000e+00, %20 ], [ %56, %55 ]
  %40 = getelementptr inbounds [21 x double], ptr @PictureMAD, i64 0, i64 %37
  %41 = load double, ptr %40, align 8, !tbaa !21
  %42 = fcmp une double %41, %33
  %43 = getelementptr inbounds [21 x i32], ptr @PictureRejected, i64 0, i64 %37
  %44 = load i32, ptr %43, align 4, !tbaa !19
  %45 = icmp eq i32 %44, 0
  %46 = and i1 %42, %45
  %47 = select i1 %46, i32 1, i32 %38
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = getelementptr inbounds [21 x double], ptr @ReferenceMAD, i64 0, i64 %37
  %51 = load double, ptr %50, align 8, !tbaa !21
  %52 = fmul double %51, %21
  %53 = fdiv double %41, %52
  %54 = fadd double %39, %53
  store double %54, ptr @MADPictureC1, align 8, !tbaa !21
  br label %55

55:                                               ; preds = %36, %49
  %56 = phi double [ %39, %36 ], [ %54, %49 ]
  %57 = add nuw nsw i64 %37, 1
  %58 = icmp eq i64 %57, %22
  br i1 %58, label %59, label %36

59:                                               ; preds = %55
  %60 = icmp ne i32 %47, 0
  %61 = icmp sgt i32 %13, 0
  %62 = select i1 %61, i1 %60, i1 false
  br i1 %62, label %63, label %119

63:                                               ; preds = %59
  br i1 %2, label %64, label %96

64:                                               ; preds = %63
  %65 = zext nneg i32 %0 to i64
  br label %66

66:                                               ; preds = %64, %87
  %67 = phi i64 [ 0, %64 ], [ %94, %87 ]
  %68 = phi double [ 0.000000e+00, %64 ], [ %93, %87 ]
  %69 = phi double [ 0.000000e+00, %64 ], [ %92, %87 ]
  %70 = phi double [ 0.000000e+00, %64 ], [ %91, %87 ]
  %71 = phi double [ 0.000000e+00, %64 ], [ %90, %87 ]
  %72 = phi double [ 0.000000e+00, %64 ], [ %89, %87 ]
  %73 = phi double [ 0.000000e+00, %64 ], [ %88, %87 ]
  %74 = getelementptr inbounds [21 x i32], ptr @PictureRejected, i64 0, i64 %67
  %75 = load i32, ptr %74, align 4, !tbaa !19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = fadd double %73, 1.000000e+00
  %79 = getelementptr inbounds [21 x double], ptr @ReferenceMAD, i64 0, i64 %67
  %80 = load double, ptr %79, align 8, !tbaa !21
  %81 = fadd double %72, %80
  %82 = tail call double @llvm.fmuladd.f64(double %80, double %80, double %70)
  %83 = getelementptr inbounds [21 x double], ptr @PictureMAD, i64 0, i64 %67
  %84 = load double, ptr %83, align 8, !tbaa !21
  %85 = fadd double %69, %84
  %86 = tail call double @llvm.fmuladd.f64(double %84, double %80, double %68)
  br label %87

87:                                               ; preds = %66, %77
  %88 = phi double [ %73, %66 ], [ %78, %77 ]
  %89 = phi double [ %72, %66 ], [ %81, %77 ]
  %90 = phi double [ %71, %66 ], [ %81, %77 ]
  %91 = phi double [ %70, %66 ], [ %82, %77 ]
  %92 = phi double [ %69, %66 ], [ %85, %77 ]
  %93 = phi double [ %68, %66 ], [ %86, %77 ]
  %94 = add nuw nsw i64 %67, 1
  %95 = icmp eq i64 %94, %65
  br i1 %95, label %96, label %66

96:                                               ; preds = %87, %63
  %97 = phi double [ 0.000000e+00, %63 ], [ %88, %87 ]
  %98 = phi double [ 0.000000e+00, %63 ], [ %89, %87 ]
  %99 = phi double [ 0.000000e+00, %63 ], [ %90, %87 ]
  %100 = phi double [ 0.000000e+00, %63 ], [ %91, %87 ]
  %101 = phi double [ 0.000000e+00, %63 ], [ %92, %87 ]
  %102 = phi double [ 0.000000e+00, %63 ], [ %93, %87 ]
  %103 = fneg double %98
  %104 = fmul double %99, %103
  %105 = tail call double @llvm.fmuladd.f64(double %97, double %100, double %104)
  %106 = tail call double @llvm.fabs.f64(double %105)
  %107 = fcmp ogt double %106, 0x3EB0C6F7A0B5ED8D
  br i1 %107, label %108, label %117

108:                                              ; preds = %96
  %109 = fneg double %102
  %110 = fmul double %98, %109
  %111 = tail call double @llvm.fmuladd.f64(double %101, double %100, double %110)
  %112 = fdiv double %111, %105
  store double %112, ptr @MADPictureC2, align 8, !tbaa !21
  %113 = fneg double %101
  %114 = fmul double %99, %113
  %115 = tail call double @llvm.fmuladd.f64(double %102, double %97, double %114)
  %116 = fdiv double %115, %105
  store double %116, ptr @MADPictureC1, align 8, !tbaa !21
  br label %119

117:                                              ; preds = %96
  %118 = fdiv double %101, %98
  store double %118, ptr @MADPictureC1, align 8, !tbaa !21
  store double 0.000000e+00, ptr @MADPictureC2, align 8, !tbaa !21
  br label %119

119:                                              ; preds = %16, %3, %19, %108, %117, %59
  %120 = phi double [ %112, %108 ], [ 0.000000e+00, %117 ], [ 0.000000e+00, %59 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %3 ], [ 0.000000e+00, %16 ]
  %121 = phi double [ %116, %108 ], [ %118, %117 ], [ %56, %59 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %3 ], [ 0.000000e+00, %16 ]
  %122 = load ptr, ptr @img, align 8, !tbaa !6
  %123 = getelementptr inbounds i8, ptr %122, i64 24
  %124 = load i32, ptr %123, align 8, !tbaa !44
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store double %121, ptr @PMADPictureC1, align 8, !tbaa !21
  store double %120, ptr @PMADPictureC2, align 8, !tbaa !21
  br label %127

127:                                              ; preds = %126, %119
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #19

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { nofree nounwind memory(readwrite, inaccessiblemem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #14 = { nofree norecurse nosync nounwind memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind }

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
!10 = !{!11, !12, i64 90308}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !13, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !14, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !14, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !15, i64 90584, !12, i64 90588, !12, i64 90592}
!12 = !{!"int", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!11, !7, i64 90408}
!17 = !{!18, !12, i64 3920}
!18 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !14, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!19 = !{!12, !12, i64 0}
!20 = !{!18, !12, i64 3912}
!21 = !{!14, !14, i64 0}
!22 = !{!11, !13, i64 48}
!23 = !{!18, !12, i64 1244}
!24 = !{!18, !12, i64 20}
!25 = !{!11, !12, i64 60}
!26 = !{!11, !12, i64 52}
!27 = !{!11, !12, i64 90432}
!28 = !{!11, !12, i64 90384}
!29 = !{!11, !12, i64 90388}
!30 = !{!11, !12, i64 90392}
!31 = !{!11, !12, i64 90424}
!32 = !{!18, !12, i64 3916}
!33 = !{!34, !34, i64 0}
!34 = !{!"long", !8, i64 0}
!35 = !{!11, !12, i64 90436}
!36 = !{!18, !12, i64 3552}
!37 = !{!18, !12, i64 3556}
!38 = !{!11, !12, i64 90396}
!39 = !{!11, !12, i64 90428}
!40 = !{!11, !12, i64 90400}
!41 = !{!11, !12, i64 90444}
!42 = !{!11, !12, i64 90440}
!43 = !{!18, !12, i64 3924}
!44 = !{!11, !12, i64 24}
!45 = !{!11, !12, i64 90348}
!46 = !{!11, !12, i64 90352}
!47 = !{!11, !12, i64 90356}
!48 = !{!11, !12, i64 90360}
!49 = !{!11, !14, i64 90368}
!50 = !{!51, !12, i64 1148}
!51 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !8, i64 108, !12, i64 1132, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !12, i64 1164, !12, i64 1168, !12, i64 1172, !12, i64 1176, !12, i64 1180, !52, i64 1184}
!52 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !53, i64 84, !12, i64 496, !53, i64 500, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!53 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!54 = !{!18, !12, i64 1228}
