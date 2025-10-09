; ModuleID = 'ratectl.c'
source_filename = "ratectl.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.mbinfo = type { i32, i32, i32, i32, i32, i32, [2 x [2 x [2 x i32]]], [2 x [2 x i32]], [2 x i32], double, i32 }

@r = dso_local local_unnamed_addr global i32 0, align 4
@bit_rate = external dso_local local_unnamed_addr global double, align 8
@frame_rate = external dso_local local_unnamed_addr global double, align 8
@avg_act = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@R = internal unnamed_addr global i32 0, align 4
@Xi = dso_local local_unnamed_addr global i32 0, align 4
@Xp = dso_local local_unnamed_addr global i32 0, align 4
@Xb = dso_local local_unnamed_addr global i32 0, align 4
@d0i = dso_local local_unnamed_addr global i32 0, align 4
@d0p = dso_local local_unnamed_addr global i32 0, align 4
@d0b = dso_local local_unnamed_addr global i32 0, align 4
@statfile = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [40 x i8] c"\0Arate control: sequence initialization\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c" initial global complexity measures (I,P,B): Xi=%d, Xp=%d, Xb=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c" reaction parameter: r=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c" initial virtual buffer fullness (I,P,B): d0i=%d, d0p=%d, d0b=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c" initial average activity: avg_act=%.1f\0A\00", align 1
@fieldpic = external dso_local local_unnamed_addr global i32, align 4
@Np = internal unnamed_addr global i32 0, align 4
@Nb = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"\0Arate control: new group of pictures (GOP)\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c" target number of bits for GOP: R=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c" number of P pictures in GOP: Np=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c" number of B pictures in GOP: Nb=%d\0A\00", align 1
@pict_type = external dso_local local_unnamed_addr global i32, align 4
@T = internal unnamed_addr global i32 0, align 4
@d = internal unnamed_addr global i32 0, align 4
@S = internal unnamed_addr global i32 0, align 4
@Q = internal unnamed_addr global i32 0, align 4
@actsum = internal unnamed_addr global double 0.000000e+00, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"\0Arate control: start of picture\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c" target number of bits: T=%d\0A\00", align 1
@mb_width = external dso_local local_unnamed_addr global i32, align 4
@mb_height2 = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"\0Arate control: end of picture\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c" actual number of bits: S=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c" average quantization parameter Q=%.1f\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c" remaining number of bits in GOP: R=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c" global complexity measures (I,P,B): Xi=%d, Xp=%d, Xb=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c" virtual buffer fullness (I,P,B): d0i=%d, d0p=%d, d0b=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c" remaining number of P pictures in GOP: Np=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c" remaining number of B pictures in GOP: Nb=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c" average activity: avg_act=%.1f\0A\00", align 1
@q_scale_type = external dso_local local_unnamed_addr global i32, align 4
@non_linear_mquant_table = external dso_local local_unnamed_addr global [32 x i8], align 1
@map_non_linear_mquant = external dso_local local_unnamed_addr global [113 x i8], align 1
@prev_mquant = internal unnamed_addr global i32 0, align 4
@mbinfo = external dso_local local_unnamed_addr global ptr, align 8
@bitcnt_EOP = internal unnamed_addr global i32 0, align 4
@calc_vbv_delay.next_ip_delay = internal unnamed_addr global double 0.000000e+00, align 8
@calc_vbv_delay.decoding_time = internal unnamed_addr global double 0.000000e+00, align 8
@prog_seq = external dso_local local_unnamed_addr global i32, align 4
@repeatfirst = external dso_local local_unnamed_addr global i32, align 4
@topfirst = external dso_local local_unnamed_addr global i32, align 4
@pict_struct = external dso_local local_unnamed_addr global i32, align 4
@vbv_buffer_size = external dso_local local_unnamed_addr global i32, align 4
@low_delay = external dso_local local_unnamed_addr global i32, align 4
@quiet = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [55 x i8] c"vbv_delay underflow! (decoding_time=%.1f, t_EOP=%.1f\0A)\00", align 1
@vbv_delay = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"vbv_delay overflow!\0A\00", align 1
@.str.22 = private unnamed_addr constant [64 x i8] c"\0Avbv_delay=%d (bitcount=%d, decoding_time=%.2f, bitcnt_EOP=%d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"vbv_delay underflow: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"vbv_delay overflow: %d\0A\00", align 1
@height2 = external dso_local local_unnamed_addr global i32, align 4
@width = external dso_local local_unnamed_addr global i32, align 4
@width2 = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nofree nounwind
define dso_local void @rc_init_seq() local_unnamed_addr #0 {
  %1 = load i32, ptr @r, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load double, ptr @bit_rate, align 8, !tbaa !10
  %5 = fmul double %4, 2.000000e+00
  %6 = load double, ptr @frame_rate, align 8, !tbaa !10
  %7 = fdiv double %5, %6
  %8 = fadd double %7, 5.000000e-01
  %9 = tail call double @llvm.floor.f64(double %8)
  %10 = fptosi double %9 to i32
  store i32 %10, ptr @r, align 4, !tbaa !6
  br label %11

11:                                               ; preds = %3, %0
  %12 = phi i32 [ %10, %3 ], [ %1, %0 ]
  %13 = load double, ptr @avg_act, align 8, !tbaa !10
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store double 4.000000e+02, ptr @avg_act, align 8, !tbaa !10
  br label %16

16:                                               ; preds = %15, %11
  store i32 0, ptr @R, align 4, !tbaa !6
  %17 = load i32, ptr @Xi, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load double, ptr @bit_rate, align 8, !tbaa !10
  %21 = fmul double %20, 1.600000e+02
  %22 = fdiv double %21, 1.150000e+02
  %23 = fadd double %22, 5.000000e-01
  %24 = tail call double @llvm.floor.f64(double %23)
  %25 = fptosi double %24 to i32
  store i32 %25, ptr @Xi, align 4, !tbaa !6
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, ptr @Xp, align 4, !tbaa !6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load double, ptr @bit_rate, align 8, !tbaa !10
  %31 = fmul double %30, 6.000000e+01
  %32 = fdiv double %31, 1.150000e+02
  %33 = fadd double %32, 5.000000e-01
  %34 = tail call double @llvm.floor.f64(double %33)
  %35 = fptosi double %34 to i32
  store i32 %35, ptr @Xp, align 4, !tbaa !6
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, ptr @Xb, align 4, !tbaa !6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load double, ptr @bit_rate, align 8, !tbaa !10
  %41 = fmul double %40, 4.200000e+01
  %42 = fdiv double %41, 1.150000e+02
  %43 = fadd double %42, 5.000000e-01
  %44 = tail call double @llvm.floor.f64(double %43)
  %45 = fptosi double %44 to i32
  store i32 %45, ptr @Xb, align 4, !tbaa !6
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, ptr @d0i, align 4, !tbaa !6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = sitofp i32 %12 to double
  %51 = fmul double %50, 1.000000e+01
  %52 = fdiv double %51, 3.100000e+01
  %53 = fadd double %52, 5.000000e-01
  %54 = tail call double @llvm.floor.f64(double %53)
  %55 = fptosi double %54 to i32
  store i32 %55, ptr @d0i, align 4, !tbaa !6
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, ptr @d0p, align 4, !tbaa !6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = sitofp i32 %12 to double
  %61 = fmul double %60, 1.000000e+01
  %62 = fdiv double %61, 3.100000e+01
  %63 = fadd double %62, 5.000000e-01
  %64 = tail call double @llvm.floor.f64(double %63)
  %65 = fptosi double %64 to i32
  store i32 %65, ptr @d0p, align 4, !tbaa !6
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32, ptr @d0b, align 4, !tbaa !6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = sitofp i32 %12 to double
  %71 = fmul double %70, 1.400000e+01
  %72 = fdiv double %71, 3.100000e+01
  %73 = fadd double %72, 5.000000e-01
  %74 = tail call double @llvm.floor.f64(double %73)
  %75 = fptosi double %74 to i32
  store i32 %75, ptr @d0b, align 4, !tbaa !6
  br label %76

76:                                               ; preds = %69, %66
  %77 = load ptr, ptr @statfile, align 8, !tbaa !12
  %78 = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %77)
  %79 = load ptr, ptr @statfile, align 8, !tbaa !12
  %80 = load i32, ptr @Xi, align 4, !tbaa !6
  %81 = load i32, ptr @Xp, align 4, !tbaa !6
  %82 = load i32, ptr @Xb, align 4, !tbaa !6
  %83 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.1, i32 noundef signext %80, i32 noundef signext %81, i32 noundef signext %82) #8
  %84 = load ptr, ptr @statfile, align 8, !tbaa !12
  %85 = load i32, ptr @r, align 4, !tbaa !6
  %86 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.2, i32 noundef signext %85) #8
  %87 = load ptr, ptr @statfile, align 8, !tbaa !12
  %88 = load i32, ptr @d0i, align 4, !tbaa !6
  %89 = load i32, ptr @d0p, align 4, !tbaa !6
  %90 = load i32, ptr @d0b, align 4, !tbaa !6
  %91 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.3, i32 noundef signext %88, i32 noundef signext %89, i32 noundef signext %90) #8
  %92 = load ptr, ptr @statfile, align 8, !tbaa !12
  %93 = load double, ptr @avg_act, align 8, !tbaa !10
  %94 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.4, double noundef %93) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: nofree nounwind
define dso_local void @rc_init_GOP(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, 1
  %4 = add nsw i32 %3, %1
  %5 = sitofp i32 %4 to double
  %6 = load double, ptr @bit_rate, align 8, !tbaa !10
  %7 = fmul double %6, %5
  %8 = load double, ptr @frame_rate, align 8, !tbaa !10
  %9 = fdiv double %7, %8
  %10 = fadd double %9, 5.000000e-01
  %11 = tail call double @llvm.floor.f64(double %10)
  %12 = fptosi double %11 to i32
  %13 = load i32, ptr @R, align 4, !tbaa !6
  %14 = add nsw i32 %13, %12
  store i32 %14, ptr @R, align 4, !tbaa !6
  %15 = load i32, ptr @fieldpic, align 4, !tbaa !6
  %16 = icmp eq i32 %15, 0
  %17 = shl nsw i32 %0, 1
  %18 = or disjoint i32 %17, 1
  %19 = select i1 %16, i32 %0, i32 %18
  store i32 %19, ptr @Np, align 4, !tbaa !6
  %20 = icmp ne i32 %15, 0
  %21 = zext i1 %20 to i32
  %22 = shl nsw i32 %1, %21
  store i32 %22, ptr @Nb, align 4, !tbaa !6
  %23 = load ptr, ptr @statfile, align 8, !tbaa !12
  %24 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 43, i64 1, ptr %23)
  %25 = load ptr, ptr @statfile, align 8, !tbaa !12
  %26 = load i32, ptr @R, align 4, !tbaa !6
  %27 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef signext %26) #8
  %28 = load ptr, ptr @statfile, align 8, !tbaa !12
  %29 = load i32, ptr @Np, align 4, !tbaa !6
  %30 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.7, i32 noundef signext %29) #8
  %31 = load ptr, ptr @statfile, align 8, !tbaa !12
  %32 = load i32, ptr @Nb, align 4, !tbaa !6
  %33 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.8, i32 noundef signext %32) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @rc_init_pict(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr @pict_type, align 4, !tbaa !6
  switch i32 %2, label %3 [
    i32 1, label %5
    i32 2, label %28
    i32 3, label %48
  ]

3:                                                ; preds = %1
  %4 = load i32, ptr @T, align 4, !tbaa !6
  br label %68

5:                                                ; preds = %1
  %6 = load i32, ptr @R, align 4, !tbaa !6
  %7 = sitofp i32 %6 to double
  %8 = load i32, ptr @Np, align 4, !tbaa !6
  %9 = load i32, ptr @Xp, align 4, !tbaa !6
  %10 = mul nsw i32 %9, %8
  %11 = sitofp i32 %10 to double
  %12 = load i32, ptr @Xi, align 4, !tbaa !6
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %11, %13
  %15 = fadd double %14, 1.000000e+00
  %16 = load i32, ptr @Nb, align 4, !tbaa !6
  %17 = load i32, ptr @Xb, align 4, !tbaa !6
  %18 = mul nsw i32 %17, %16
  %19 = sitofp i32 %18 to double
  %20 = fmul double %13, 1.400000e+00
  %21 = fdiv double %19, %20
  %22 = fadd double %15, %21
  %23 = fdiv double %7, %22
  %24 = fadd double %23, 5.000000e-01
  %25 = tail call double @llvm.floor.f64(double %24)
  %26 = fptosi double %25 to i32
  store i32 %26, ptr @T, align 4, !tbaa !6
  %27 = load i32, ptr @d0i, align 4, !tbaa !6
  store i32 %27, ptr @d, align 4, !tbaa !6
  br label %68

28:                                               ; preds = %1
  %29 = load i32, ptr @R, align 4, !tbaa !6
  %30 = sitofp i32 %29 to double
  %31 = load i32, ptr @Np, align 4, !tbaa !6
  %32 = sitofp i32 %31 to double
  %33 = load i32, ptr @Nb, align 4, !tbaa !6
  %34 = sitofp i32 %33 to double
  %35 = load i32, ptr @Xb, align 4, !tbaa !6
  %36 = sitofp i32 %35 to double
  %37 = fmul double %34, %36
  %38 = load i32, ptr @Xp, align 4, !tbaa !6
  %39 = sitofp i32 %38 to double
  %40 = fmul double %39, 1.400000e+00
  %41 = fdiv double %37, %40
  %42 = fadd double %41, %32
  %43 = fdiv double %30, %42
  %44 = fadd double %43, 5.000000e-01
  %45 = tail call double @llvm.floor.f64(double %44)
  %46 = fptosi double %45 to i32
  store i32 %46, ptr @T, align 4, !tbaa !6
  %47 = load i32, ptr @d0p, align 4, !tbaa !6
  store i32 %47, ptr @d, align 4, !tbaa !6
  br label %68

48:                                               ; preds = %1
  %49 = load i32, ptr @R, align 4, !tbaa !6
  %50 = sitofp i32 %49 to double
  %51 = load i32, ptr @Nb, align 4, !tbaa !6
  %52 = sitofp i32 %51 to double
  %53 = load i32, ptr @Np, align 4, !tbaa !6
  %54 = sitofp i32 %53 to double
  %55 = fmul double %54, 1.400000e+00
  %56 = load i32, ptr @Xp, align 4, !tbaa !6
  %57 = sitofp i32 %56 to double
  %58 = fmul double %55, %57
  %59 = load i32, ptr @Xb, align 4, !tbaa !6
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %58, %60
  %62 = fadd double %61, %52
  %63 = fdiv double %50, %62
  %64 = fadd double %63, 5.000000e-01
  %65 = tail call double @llvm.floor.f64(double %64)
  %66 = fptosi double %65 to i32
  store i32 %66, ptr @T, align 4, !tbaa !6
  %67 = load i32, ptr @d0b, align 4, !tbaa !6
  store i32 %67, ptr @d, align 4, !tbaa !6
  br label %68

68:                                               ; preds = %3, %48, %28, %5
  %69 = phi i32 [ %4, %3 ], [ %66, %48 ], [ %46, %28 ], [ %26, %5 ]
  %70 = load double, ptr @bit_rate, align 8, !tbaa !10
  %71 = load double, ptr @frame_rate, align 8, !tbaa !10
  %72 = fmul double %71, 8.000000e+00
  %73 = fdiv double %70, %72
  %74 = fadd double %73, 5.000000e-01
  %75 = tail call double @llvm.floor.f64(double %74)
  %76 = fptosi double %75 to i32
  %77 = icmp slt i32 %69, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 %76, ptr @T, align 4, !tbaa !6
  br label %79

79:                                               ; preds = %78, %68
  %80 = tail call signext i32 @bitcount() #8
  store i32 %80, ptr @S, align 4, !tbaa !6
  store i32 0, ptr @Q, align 4, !tbaa !6
  %81 = load i32, ptr @height2, align 4, !tbaa !6
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %207

83:                                               ; preds = %79
  %84 = load i32, ptr @pict_struct, align 4
  %85 = icmp eq i32 %84, 2
  %86 = load i32, ptr @width2, align 4
  %87 = shl nsw i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = load ptr, ptr @mbinfo, align 8
  %90 = load i32, ptr @width, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %207

92:                                               ; preds = %83
  %93 = load i32, ptr @fieldpic, align 4
  %94 = freeze i32 %93
  %95 = icmp eq i32 %94, 0
  %96 = sext i32 %86 to i64
  %97 = zext nneg i32 %81 to i64
  br i1 %95, label %98, label %163

98:                                               ; preds = %92, %158
  %99 = phi i32 [ %159, %158 ], [ %90, %92 ]
  %100 = phi i64 [ %161, %158 ], [ 0, %92 ]
  %101 = phi i32 [ %160, %158 ], [ 0, %92 ]
  %102 = icmp sgt i32 %99, 0
  br i1 %102, label %103, label %158

103:                                              ; preds = %98
  %104 = mul nsw i64 %100, %96
  %105 = sext i32 %101 to i64
  br label %106

106:                                              ; preds = %103, %147
  %107 = phi i64 [ %150, %147 ], [ %105, %103 ]
  %108 = phi i64 [ %152, %147 ], [ 0, %103 ]
  %109 = phi i32 [ %153, %147 ], [ %99, %103 ]
  %110 = select i1 %85, i32 %109, i32 0
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %0, i64 %111
  %113 = getelementptr inbounds i8, ptr %112, i64 %108
  %114 = getelementptr inbounds i8, ptr %113, i64 %104
  %115 = tail call fastcc double @var_sblk(ptr noundef readonly %114, i32 noundef signext %86)
  %116 = getelementptr inbounds i8, ptr %114, i64 8
  %117 = tail call fastcc double @var_sblk(ptr noundef nonnull readonly %116, i32 noundef signext %86)
  %118 = fcmp olt double %117, %115
  %119 = select i1 %118, double %117, double %115
  %120 = getelementptr inbounds i8, ptr %114, i64 %88
  %121 = tail call fastcc double @var_sblk(ptr noundef readonly %120, i32 noundef signext %86)
  %122 = fcmp olt double %121, %119
  %123 = select i1 %122, double %121, double %119
  %124 = getelementptr inbounds i8, ptr %120, i64 8
  %125 = tail call fastcc double @var_sblk(ptr noundef nonnull readonly %124, i32 noundef signext %86)
  %126 = fcmp olt double %125, %123
  %127 = select i1 %126, double %125, double %123
  %128 = load i32, ptr @prog_seq, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %106
  %131 = shl i32 %109, 1
  %132 = tail call fastcc double @var_sblk(ptr noundef readonly %114, i32 noundef signext %131)
  %133 = fcmp olt double %132, %127
  %134 = select i1 %133, double %132, double %127
  %135 = tail call fastcc double @var_sblk(ptr noundef nonnull readonly %116, i32 noundef signext %131)
  %136 = fcmp olt double %135, %134
  %137 = select i1 %136, double %135, double %134
  %138 = sext i32 %109 to i64
  %139 = getelementptr inbounds i8, ptr %114, i64 %138
  %140 = tail call fastcc double @var_sblk(ptr noundef readonly %139, i32 noundef signext %131)
  %141 = fcmp olt double %140, %137
  %142 = select i1 %141, double %140, double %137
  %143 = getelementptr inbounds i8, ptr %139, i64 8
  %144 = tail call fastcc double @var_sblk(ptr noundef nonnull readonly %143, i32 noundef signext %131)
  %145 = fcmp olt double %144, %142
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  br label %147

147:                                              ; preds = %146, %130, %106
  %148 = phi double [ %127, %106 ], [ %144, %146 ], [ %142, %130 ]
  %149 = fadd double %148, 1.000000e+00
  %150 = add nsw i64 %107, 1
  %151 = getelementptr inbounds %struct.mbinfo, ptr %89, i64 %107, i32 9
  store double %149, ptr %151, align 8, !tbaa !14
  %152 = add nuw nsw i64 %108, 16
  %153 = load i32, ptr @width, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %152, %154
  br i1 %155, label %106, label %156

156:                                              ; preds = %147
  %157 = trunc nsw i64 %150 to i32
  br label %158

158:                                              ; preds = %156, %98
  %159 = phi i32 [ %99, %98 ], [ %153, %156 ]
  %160 = phi i32 [ %101, %98 ], [ %157, %156 ]
  %161 = add nuw nsw i64 %100, 16
  %162 = icmp ult i64 %161, %97
  br i1 %162, label %98, label %207, !llvm.loop !16

163:                                              ; preds = %92, %202
  %164 = phi i32 [ %203, %202 ], [ %90, %92 ]
  %165 = phi i64 [ %205, %202 ], [ 0, %92 ]
  %166 = phi i32 [ %204, %202 ], [ 0, %92 ]
  %167 = icmp sgt i32 %164, 0
  br i1 %167, label %168, label %202

168:                                              ; preds = %163
  %169 = mul nsw i64 %165, %96
  %170 = sext i32 %166 to i64
  br label %171

171:                                              ; preds = %168, %171
  %172 = phi i64 [ %194, %171 ], [ %170, %168 ]
  %173 = phi i64 [ %196, %171 ], [ 0, %168 ]
  %174 = phi i32 [ %197, %171 ], [ %164, %168 ]
  %175 = select i1 %85, i32 %174, i32 0
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %0, i64 %176
  %178 = getelementptr inbounds i8, ptr %177, i64 %173
  %179 = getelementptr inbounds i8, ptr %178, i64 %169
  %180 = tail call fastcc double @var_sblk(ptr noundef readonly %179, i32 noundef signext %86)
  %181 = getelementptr inbounds i8, ptr %179, i64 8
  %182 = tail call fastcc double @var_sblk(ptr noundef nonnull readonly %181, i32 noundef signext %86)
  %183 = fcmp olt double %182, %180
  %184 = select i1 %183, double %182, double %180
  %185 = getelementptr inbounds i8, ptr %179, i64 %88
  %186 = tail call fastcc double @var_sblk(ptr noundef readonly %185, i32 noundef signext %86)
  %187 = fcmp olt double %186, %184
  %188 = select i1 %187, double %186, double %184
  %189 = getelementptr inbounds i8, ptr %185, i64 8
  %190 = tail call fastcc double @var_sblk(ptr noundef nonnull readonly %189, i32 noundef signext %86)
  %191 = fcmp olt double %190, %188
  %192 = select i1 %191, double %190, double %188
  %193 = fadd double %192, 1.000000e+00
  %194 = add nsw i64 %172, 1
  %195 = getelementptr inbounds %struct.mbinfo, ptr %89, i64 %172, i32 9
  store double %193, ptr %195, align 8, !tbaa !14
  %196 = add nuw nsw i64 %173, 16
  %197 = load i32, ptr @width, align 4
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %196, %198
  br i1 %199, label %171, label %200

200:                                              ; preds = %171
  %201 = trunc nsw i64 %194 to i32
  br label %202

202:                                              ; preds = %200, %163
  %203 = phi i32 [ %164, %163 ], [ %197, %200 ]
  %204 = phi i32 [ %166, %163 ], [ %201, %200 ]
  %205 = add nuw nsw i64 %165, 16
  %206 = icmp ult i64 %205, %97
  br i1 %206, label %163, label %207, !llvm.loop !16

207:                                              ; preds = %202, %158, %79, %83
  store double 0.000000e+00, ptr @actsum, align 8, !tbaa !10
  %208 = load ptr, ptr @statfile, align 8, !tbaa !12
  %209 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 32, i64 1, ptr %208)
  %210 = load ptr, ptr @statfile, align 8, !tbaa !12
  %211 = load i32, ptr @T, align 4, !tbaa !6
  %212 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef nonnull @.str.10, i32 noundef signext %211) #8
  ret void
}

declare dso_local signext i32 @bitcount() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @rc_update_pict() local_unnamed_addr #2 {
  %1 = tail call signext i32 @bitcount() #8
  %2 = load i32, ptr @S, align 4, !tbaa !6
  %3 = sub nsw i32 %1, %2
  store i32 %3, ptr @S, align 4, !tbaa !6
  %4 = load i32, ptr @R, align 4, !tbaa !6
  %5 = sub nsw i32 %4, %3
  store i32 %5, ptr @R, align 4, !tbaa !6
  %6 = sitofp i32 %3 to double
  %7 = load i32, ptr @Q, align 4, !tbaa !6
  %8 = sitofp i32 %7 to double
  %9 = fmul double %8, 5.000000e-01
  %10 = load i32, ptr @mb_width, align 4, !tbaa !6
  %11 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %12 = mul nsw i32 %11, %10
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %9, %13
  %15 = tail call double @llvm.fmuladd.f64(double %6, double %14, double 5.000000e-01)
  %16 = tail call double @llvm.floor.f64(double %15)
  %17 = fptosi double %16 to i32
  %18 = load i32, ptr @T, align 4, !tbaa !6
  %19 = sub nsw i32 %3, %18
  %20 = load i32, ptr @d, align 4, !tbaa !6
  %21 = add nsw i32 %20, %19
  store i32 %21, ptr @d, align 4, !tbaa !6
  %22 = load double, ptr @actsum, align 8, !tbaa !10
  %23 = fdiv double %22, %13
  store double %23, ptr @avg_act, align 8, !tbaa !10
  %24 = load i32, ptr @pict_type, align 4, !tbaa !6
  switch i32 %24, label %32 [
    i32 1, label %25
    i32 2, label %26
    i32 3, label %29
  ]

25:                                               ; preds = %0
  store i32 %17, ptr @Xi, align 4, !tbaa !6
  store i32 %21, ptr @d0i, align 4, !tbaa !6
  br label %32

26:                                               ; preds = %0
  store i32 %17, ptr @Xp, align 4, !tbaa !6
  store i32 %21, ptr @d0p, align 4, !tbaa !6
  %27 = load i32, ptr @Np, align 4, !tbaa !6
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr @Np, align 4, !tbaa !6
  br label %32

29:                                               ; preds = %0
  store i32 %17, ptr @Xb, align 4, !tbaa !6
  store i32 %21, ptr @d0b, align 4, !tbaa !6
  %30 = load i32, ptr @Nb, align 4, !tbaa !6
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr @Nb, align 4, !tbaa !6
  br label %32

32:                                               ; preds = %0, %29, %26, %25
  %33 = load ptr, ptr @statfile, align 8, !tbaa !12
  %34 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 30, i64 1, ptr %33)
  %35 = load ptr, ptr @statfile, align 8, !tbaa !12
  %36 = load i32, ptr @S, align 4, !tbaa !6
  %37 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.12, i32 noundef signext %36) #8
  %38 = load ptr, ptr @statfile, align 8, !tbaa !12
  %39 = load i32, ptr @Q, align 4, !tbaa !6
  %40 = sitofp i32 %39 to double
  %41 = load i32, ptr @mb_width, align 4, !tbaa !6
  %42 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %43 = mul nsw i32 %42, %41
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %40, %44
  %46 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.13, double noundef %45) #8
  %47 = load ptr, ptr @statfile, align 8, !tbaa !12
  %48 = load i32, ptr @R, align 4, !tbaa !6
  %49 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.14, i32 noundef signext %48) #8
  %50 = load ptr, ptr @statfile, align 8, !tbaa !12
  %51 = load i32, ptr @Xi, align 4, !tbaa !6
  %52 = load i32, ptr @Xp, align 4, !tbaa !6
  %53 = load i32, ptr @Xb, align 4, !tbaa !6
  %54 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.15, i32 noundef signext %51, i32 noundef signext %52, i32 noundef signext %53) #8
  %55 = load ptr, ptr @statfile, align 8, !tbaa !12
  %56 = load i32, ptr @d0i, align 4, !tbaa !6
  %57 = load i32, ptr @d0p, align 4, !tbaa !6
  %58 = load i32, ptr @d0b, align 4, !tbaa !6
  %59 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.16, i32 noundef signext %56, i32 noundef signext %57, i32 noundef signext %58) #8
  %60 = load ptr, ptr @statfile, align 8, !tbaa !12
  %61 = load i32, ptr @Np, align 4, !tbaa !6
  %62 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.17, i32 noundef signext %61) #8
  %63 = load ptr, ptr @statfile, align 8, !tbaa !12
  %64 = load i32, ptr @Nb, align 4, !tbaa !6
  %65 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.18, i32 noundef signext %64) #8
  %66 = load ptr, ptr @statfile, align 8, !tbaa !12
  %67 = load double, ptr @avg_act, align 8, !tbaa !10
  %68 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.19, double noundef %67) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local signext range(i32 0, -1) i32 @rc_start_mb() local_unnamed_addr #4 {
  %1 = load i32, ptr @q_scale_type, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @d, align 4, !tbaa !6
  %4 = sitofp i32 %3 to double
  br i1 %2, label %23, label %5

5:                                                ; preds = %0
  %6 = fmul double %4, 2.000000e+00
  %7 = fmul double %6, 3.100000e+01
  %8 = load i32, ptr @r, align 4, !tbaa !6
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %7, %9
  %11 = fadd double %10, 5.000000e-01
  %12 = tail call double @llvm.floor.f64(double %11)
  %13 = fptosi double %12 to i32
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 112)
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [113 x i8], ptr @map_non_linear_mquant, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !18
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [32 x i8], ptr @non_linear_mquant_table, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !18
  %22 = zext i8 %21 to i32
  br label %34

23:                                               ; preds = %0
  %24 = fmul double %4, 3.100000e+01
  %25 = load i32, ptr @r, align 4, !tbaa !6
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %24, %26
  %28 = fadd double %27, 5.000000e-01
  %29 = tail call double @llvm.floor.f64(double %28)
  %30 = fptosi double %29 to i32
  %31 = shl i32 %30, 1
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 2)
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 62)
  store i32 %33, ptr @prev_mquant, align 4, !tbaa !6
  br label %34

34:                                               ; preds = %23, %5
  %35 = phi i32 [ %22, %5 ], [ %33, %23 ]
  ret i32 %35
}

; Function Attrs: nounwind
define dso_local signext range(i32 0, -1) i32 @rc_calc_mquant(i32 noundef signext %0) local_unnamed_addr #2 {
  %2 = load i32, ptr @d, align 4, !tbaa !6
  %3 = tail call signext i32 @bitcount() #8
  %4 = load i32, ptr @S, align 4, !tbaa !6
  %5 = load i32, ptr @T, align 4, !tbaa !6
  %6 = load i32, ptr @mb_width, align 4, !tbaa !6
  %7 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %8 = mul nsw i32 %7, %6
  %9 = sdiv i32 %5, %8
  %10 = mul nsw i32 %9, %0
  %11 = add i32 %3, %2
  %12 = add i32 %4, %10
  %13 = sub i32 %11, %12
  %14 = sitofp i32 %13 to double
  %15 = fmul double %14, 3.100000e+01
  %16 = load i32, ptr @r, align 4, !tbaa !6
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %15, %17
  %19 = load ptr, ptr @mbinfo, align 8, !tbaa !12
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds %struct.mbinfo, ptr %19, i64 %20, i32 9
  %22 = load double, ptr %21, align 8, !tbaa !14
  %23 = load double, ptr @actsum, align 8, !tbaa !10
  %24 = fadd double %22, %23
  store double %24, ptr @actsum, align 8, !tbaa !10
  %25 = load double, ptr @avg_act, align 8, !tbaa !10
  %26 = tail call double @llvm.fmuladd.f64(double %22, double 2.000000e+00, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %25, double 2.000000e+00, double %22)
  %28 = fdiv double %26, %27
  %29 = load i32, ptr @q_scale_type, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %1
  %32 = fmul double %18, 2.000000e+00
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %28, double 5.000000e-01)
  %34 = tail call double @llvm.floor.f64(double %33)
  %35 = fptosi double %34 to i32
  %36 = tail call i32 @llvm.smax.i32(i32 %35, i32 1)
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 112)
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [113 x i8], ptr @map_non_linear_mquant, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !18
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [32 x i8], ptr @non_linear_mquant_table, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !18
  %44 = zext i8 %43 to i32
  br label %61

45:                                               ; preds = %1
  %46 = tail call double @llvm.fmuladd.f64(double %18, double %28, double 5.000000e-01)
  %47 = tail call double @llvm.floor.f64(double %46)
  %48 = fptosi double %47 to i32
  %49 = shl i32 %48, 1
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 2)
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 62)
  %52 = icmp sgt i32 %49, 7
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, ptr @prev_mquant, align 4, !tbaa !6
  %55 = add nuw nsw i32 %51, 4
  %56 = sub i32 %55, %54
  %57 = icmp ult i32 %56, 9
  %58 = select i1 %57, i32 %54, i32 %51
  br label %59

59:                                               ; preds = %53, %45
  %60 = phi i32 [ %51, %45 ], [ %58, %53 ]
  store i32 %60, ptr @prev_mquant, align 4, !tbaa !6
  br label %61

61:                                               ; preds = %59, %31
  %62 = phi i32 [ %44, %31 ], [ %60, %59 ]
  %63 = load i32, ptr @Q, align 4, !tbaa !6
  %64 = add nsw i32 %63, %62
  store i32 %64, ptr @Q, align 4, !tbaa !6
  ret i32 %62
}

; Function Attrs: nounwind
define dso_local void @vbv_end_of_picture() local_unnamed_addr #2 {
  %1 = tail call signext i32 @bitcount() #8
  %2 = add nsw i32 %1, 7
  %3 = and i32 %2, -8
  store i32 %3, ptr @bitcnt_EOP, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind
define dso_local void @calc_vbv_delay() local_unnamed_addr #2 {
  %1 = load i32, ptr @pict_type, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %3, label %36

3:                                                ; preds = %0
  %4 = load i32, ptr @prog_seq, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @repeatfirst, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load double, ptr @frame_rate, align 8, !tbaa !10
  %11 = fdiv double 9.000000e+04, %10
  br label %88

12:                                               ; preds = %6
  %13 = load i32, ptr @topfirst, align 4, !tbaa !6
  %14 = icmp eq i32 %13, 0
  %15 = load double, ptr @frame_rate, align 8, !tbaa !10
  br i1 %14, label %16, label %18

16:                                               ; preds = %12
  %17 = fdiv double 1.800000e+05, %15
  br label %88

18:                                               ; preds = %12
  %19 = fdiv double 2.700000e+05, %15
  br label %88

20:                                               ; preds = %3
  %21 = load i32, ptr @fieldpic, align 4, !tbaa !6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load double, ptr @frame_rate, align 8, !tbaa !10
  %25 = fmul double %24, 2.000000e+00
  %26 = fdiv double 9.000000e+04, %25
  br label %88

27:                                               ; preds = %20
  %28 = load i32, ptr @repeatfirst, align 4, !tbaa !6
  %29 = icmp eq i32 %28, 0
  %30 = load double, ptr @frame_rate, align 8, !tbaa !10
  %31 = fmul double %30, 2.000000e+00
  br i1 %29, label %32, label %34

32:                                               ; preds = %27
  %33 = fdiv double 1.800000e+05, %31
  br label %88

34:                                               ; preds = %27
  %35 = fdiv double 2.700000e+05, %31
  br label %88

36:                                               ; preds = %0
  %37 = load i32, ptr @fieldpic, align 4, !tbaa !6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr @topfirst, align 4, !tbaa !6
  %41 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %42 = icmp eq i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load double, ptr @frame_rate, align 8, !tbaa !10
  %47 = fmul double %46, 2.000000e+00
  %48 = fdiv double 9.000000e+04, %47
  br label %88

49:                                               ; preds = %36
  %50 = load double, ptr @calc_vbv_delay.next_ip_delay, align 8, !tbaa !10
  %51 = load i32, ptr @prog_seq, align 4, !tbaa !6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %79, label %61

53:                                               ; preds = %39
  %54 = load double, ptr @calc_vbv_delay.next_ip_delay, align 8, !tbaa !10
  %55 = load double, ptr @frame_rate, align 8, !tbaa !10
  %56 = fmul double %55, 2.000000e+00
  %57 = fdiv double 9.000000e+04, %56
  %58 = fsub double %54, %57
  %59 = load i32, ptr @prog_seq, align 4, !tbaa !6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %53, %49
  %62 = phi double [ %58, %53 ], [ %50, %49 ]
  %63 = load i32, ptr @repeatfirst, align 4, !tbaa !6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load double, ptr @frame_rate, align 8, !tbaa !10
  %67 = fdiv double 9.000000e+04, %66
  store double %67, ptr @calc_vbv_delay.next_ip_delay, align 8, !tbaa !10
  br label %88

68:                                               ; preds = %61
  %69 = load i32, ptr @topfirst, align 4, !tbaa !6
  %70 = icmp eq i32 %69, 0
  %71 = load double, ptr @frame_rate, align 8, !tbaa !10
  br i1 %70, label %72, label %74

72:                                               ; preds = %68
  %73 = fdiv double 1.800000e+05, %71
  store double %73, ptr @calc_vbv_delay.next_ip_delay, align 8, !tbaa !10
  br label %88

74:                                               ; preds = %68
  %75 = fdiv double 2.700000e+05, %71
  store double %75, ptr @calc_vbv_delay.next_ip_delay, align 8, !tbaa !10
  br label %88

76:                                               ; preds = %53
  %77 = fmul double %55, 2.000000e+00
  %78 = fdiv double 9.000000e+04, %77
  store double %78, ptr @calc_vbv_delay.next_ip_delay, align 8, !tbaa !10
  br label %88

79:                                               ; preds = %49
  %80 = load i32, ptr @repeatfirst, align 4, !tbaa !6
  %81 = icmp eq i32 %80, 0
  %82 = load double, ptr @frame_rate, align 8, !tbaa !10
  %83 = fmul double %82, 2.000000e+00
  br i1 %81, label %84, label %86

84:                                               ; preds = %79
  %85 = fdiv double 1.800000e+05, %83
  store double %85, ptr @calc_vbv_delay.next_ip_delay, align 8, !tbaa !10
  br label %88

86:                                               ; preds = %79
  %87 = fdiv double 2.700000e+05, %83
  store double %87, ptr @calc_vbv_delay.next_ip_delay, align 8, !tbaa !10
  br label %88

88:                                               ; preds = %45, %76, %86, %84, %65, %74, %72, %16, %18, %9, %32, %34, %23
  %89 = phi double [ %15, %18 ], [ %15, %16 ], [ %10, %9 ], [ %24, %23 ], [ %30, %34 ], [ %30, %32 ], [ %71, %74 ], [ %71, %72 ], [ %66, %65 ], [ %55, %76 ], [ %82, %86 ], [ %82, %84 ], [ %46, %45 ]
  %90 = phi double [ %19, %18 ], [ %17, %16 ], [ %11, %9 ], [ %26, %23 ], [ %35, %34 ], [ %33, %32 ], [ %62, %74 ], [ %62, %72 ], [ %62, %65 ], [ %58, %76 ], [ %50, %86 ], [ %50, %84 ], [ %48, %45 ]
  %91 = load double, ptr @calc_vbv_delay.decoding_time, align 8, !tbaa !10
  %92 = fcmp oeq double %91, 0.000000e+00
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load i32, ptr @vbv_buffer_size, align 4, !tbaa !6
  %95 = mul nsw i32 %94, 14336
  %96 = sitofp i32 %95 to double
  %97 = fmul double %96, 9.000000e+04
  %98 = load double, ptr @bit_rate, align 8, !tbaa !10
  %99 = fdiv double %97, %98
  %100 = load i32, ptr @fieldpic, align 4, !tbaa !6
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %93
  %103 = fdiv double 9.000000e+04, %89
  %104 = fadd double %103, 5.000000e-01
  %105 = fptosi double %104 to i32
  %106 = sitofp i32 %105 to double
  store double %106, ptr @calc_vbv_delay.next_ip_delay, align 8, !tbaa !10
  br label %107

107:                                              ; preds = %93, %102, %88
  %108 = phi double [ %99, %102 ], [ %99, %93 ], [ %90, %88 ]
  %109 = load i32, ptr @low_delay, align 4, !tbaa !6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = load i32, ptr @bitcnt_EOP, align 4, !tbaa !6
  %113 = sitofp i32 %112 to double
  %114 = fmul double %113, 9.000000e+04
  %115 = load double, ptr @bit_rate, align 8, !tbaa !10
  %116 = fdiv double %114, %115
  %117 = fcmp uge double %91, %116
  %118 = load i32, ptr @quiet, align 4
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %111
  %122 = load ptr, ptr @stderr, align 8, !tbaa !12
  %123 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.20, double noundef %91, double noundef %116) #9
  %124 = load double, ptr @calc_vbv_delay.decoding_time, align 8, !tbaa !10
  br label %125

125:                                              ; preds = %121, %111, %107
  %126 = phi double [ %124, %121 ], [ %91, %111 ], [ %91, %107 ]
  %127 = fadd double %108, %126
  store double %127, ptr @calc_vbv_delay.decoding_time, align 8, !tbaa !10
  %128 = tail call signext i32 @bitcount() #8
  %129 = sitofp i32 %128 to double
  %130 = fmul double %129, 9.000000e+04
  %131 = load double, ptr @bit_rate, align 8, !tbaa !10
  %132 = fdiv double %130, %131
  %133 = fsub double %127, %132
  %134 = fptosi double %133 to i32
  store i32 %134, ptr @vbv_delay, align 4, !tbaa !6
  %135 = load double, ptr @calc_vbv_delay.decoding_time, align 8, !tbaa !10
  %136 = load i32, ptr @bitcnt_EOP, align 4, !tbaa !6
  %137 = sitofp i32 %136 to double
  %138 = fmul double %137, 9.000000e+04
  %139 = fdiv double %138, %131
  %140 = fsub double %135, %139
  %141 = load i32, ptr @vbv_buffer_size, align 4, !tbaa !6
  %142 = shl nsw i32 %141, 14
  %143 = sitofp i32 %142 to double
  %144 = fmul double %143, 9.000000e+04
  %145 = fdiv double %144, %131
  %146 = fcmp ule double %140, %145
  %147 = load i32, ptr @quiet, align 4
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %146, i1 true, i1 %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %125
  %151 = load ptr, ptr @stderr, align 8, !tbaa !12
  %152 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 20, i64 1, ptr %151) #10
  %153 = load i32, ptr @vbv_delay, align 4, !tbaa !6
  br label %154

154:                                              ; preds = %150, %125
  %155 = phi i32 [ %153, %150 ], [ %134, %125 ]
  %156 = load ptr, ptr @statfile, align 8, !tbaa !12
  %157 = tail call signext i32 @bitcount() #8
  %158 = load double, ptr @calc_vbv_delay.decoding_time, align 8, !tbaa !10
  %159 = load i32, ptr @bitcnt_EOP, align 4, !tbaa !6
  %160 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.22, i32 noundef signext %155, i32 noundef signext %157, double noundef %158, i32 noundef signext %159) #8
  %161 = load i32, ptr @vbv_delay, align 4, !tbaa !6
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %154
  %164 = load i32, ptr @quiet, align 4, !tbaa !6
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %176

166:                                              ; preds = %154
  %167 = icmp ugt i32 %161, 65535
  br i1 %167, label %168, label %178

168:                                              ; preds = %166
  %169 = load i32, ptr @quiet, align 4, !tbaa !6
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168, %163
  %172 = phi ptr [ @.str.23, %163 ], [ @.str.24, %168 ]
  %173 = phi i32 [ 0, %163 ], [ 65535, %168 ]
  %174 = load ptr, ptr @stderr, align 8, !tbaa !12
  %175 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull %172, i32 noundef signext %161) #9
  br label %176

176:                                              ; preds = %171, %168, %163
  %177 = phi i32 [ 0, %163 ], [ 65535, %168 ], [ %173, %171 ]
  store i32 %177, ptr @vbv_delay, align 4, !tbaa !6
  br label %178

178:                                              ; preds = %176, %166
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal fastcc double @var_sblk(ptr nocapture noundef readonly %0, i32 noundef signext %1) unnamed_addr #5 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %0, align 1, !tbaa !18
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, %6
  %8 = getelementptr inbounds i8, ptr %0, i64 2
  %9 = load i8, ptr %4, align 1, !tbaa !18
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %6, %10
  %12 = mul nuw nsw i32 %10, %10
  %13 = add nuw nsw i32 %12, %7
  %14 = getelementptr inbounds i8, ptr %0, i64 3
  %15 = load i8, ptr %8, align 1, !tbaa !18
  %16 = zext i8 %15 to i32
  %17 = add nuw nsw i32 %11, %16
  %18 = mul nuw nsw i32 %16, %16
  %19 = add nuw nsw i32 %18, %13
  %20 = getelementptr inbounds i8, ptr %0, i64 4
  %21 = load i8, ptr %14, align 1, !tbaa !18
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %17, %22
  %24 = mul nuw nsw i32 %22, %22
  %25 = add nuw nsw i32 %24, %19
  %26 = getelementptr inbounds i8, ptr %0, i64 5
  %27 = load i8, ptr %20, align 1, !tbaa !18
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %23, %28
  %30 = mul nuw nsw i32 %28, %28
  %31 = add nuw nsw i32 %30, %25
  %32 = getelementptr inbounds i8, ptr %0, i64 6
  %33 = load i8, ptr %26, align 1, !tbaa !18
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %29, %34
  %36 = mul nuw nsw i32 %34, %34
  %37 = add nuw nsw i32 %36, %31
  %38 = getelementptr inbounds i8, ptr %0, i64 7
  %39 = load i8, ptr %32, align 1, !tbaa !18
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %35, %40
  %42 = mul nuw nsw i32 %40, %40
  %43 = add nuw nsw i32 %42, %37
  %44 = load i8, ptr %38, align 1, !tbaa !18
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %41, %45
  %47 = mul nuw nsw i32 %45, %45
  %48 = add nuw nsw i32 %47, %43
  %49 = getelementptr i8, ptr %0, i64 8
  %50 = getelementptr i8, ptr %49, i64 %3
  %51 = getelementptr i8, ptr %50, i64 -8
  %52 = getelementptr i8, ptr %50, i64 -7
  %53 = load i8, ptr %51, align 1, !tbaa !18
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %46, %54
  %56 = mul nuw nsw i32 %54, %54
  %57 = add nuw nsw i32 %56, %48
  %58 = getelementptr i8, ptr %50, i64 -6
  %59 = load i8, ptr %52, align 1, !tbaa !18
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %55, %60
  %62 = mul nuw nsw i32 %60, %60
  %63 = add nuw nsw i32 %62, %57
  %64 = getelementptr i8, ptr %50, i64 -5
  %65 = load i8, ptr %58, align 1, !tbaa !18
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %61, %66
  %68 = mul nuw nsw i32 %66, %66
  %69 = add nuw nsw i32 %68, %63
  %70 = getelementptr i8, ptr %50, i64 -4
  %71 = load i8, ptr %64, align 1, !tbaa !18
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %67, %72
  %74 = mul nuw nsw i32 %72, %72
  %75 = add nuw nsw i32 %74, %69
  %76 = getelementptr i8, ptr %50, i64 -3
  %77 = load i8, ptr %70, align 1, !tbaa !18
  %78 = zext i8 %77 to i32
  %79 = add nuw nsw i32 %73, %78
  %80 = mul nuw nsw i32 %78, %78
  %81 = add nuw nsw i32 %80, %75
  %82 = getelementptr i8, ptr %50, i64 -2
  %83 = load i8, ptr %76, align 1, !tbaa !18
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %79, %84
  %86 = mul nuw nsw i32 %84, %84
  %87 = add nuw nsw i32 %86, %81
  %88 = getelementptr i8, ptr %50, i64 -1
  %89 = load i8, ptr %82, align 1, !tbaa !18
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %85, %90
  %92 = mul nuw nsw i32 %90, %90
  %93 = add nuw nsw i32 %92, %87
  %94 = load i8, ptr %88, align 1, !tbaa !18
  %95 = zext i8 %94 to i32
  %96 = add nuw nsw i32 %91, %95
  %97 = mul nuw nsw i32 %95, %95
  %98 = add nuw nsw i32 %97, %93
  %99 = getelementptr i8, ptr %50, i64 %3
  %100 = getelementptr i8, ptr %99, i64 -8
  %101 = getelementptr i8, ptr %99, i64 -7
  %102 = load i8, ptr %100, align 1, !tbaa !18
  %103 = zext i8 %102 to i32
  %104 = add nuw nsw i32 %96, %103
  %105 = mul nuw nsw i32 %103, %103
  %106 = add nuw nsw i32 %105, %98
  %107 = getelementptr i8, ptr %99, i64 -6
  %108 = load i8, ptr %101, align 1, !tbaa !18
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %104, %109
  %111 = mul nuw nsw i32 %109, %109
  %112 = add nuw nsw i32 %111, %106
  %113 = getelementptr i8, ptr %99, i64 -5
  %114 = load i8, ptr %107, align 1, !tbaa !18
  %115 = zext i8 %114 to i32
  %116 = add nuw nsw i32 %110, %115
  %117 = mul nuw nsw i32 %115, %115
  %118 = add nuw nsw i32 %117, %112
  %119 = getelementptr i8, ptr %99, i64 -4
  %120 = load i8, ptr %113, align 1, !tbaa !18
  %121 = zext i8 %120 to i32
  %122 = add nuw nsw i32 %116, %121
  %123 = mul nuw nsw i32 %121, %121
  %124 = add nuw nsw i32 %123, %118
  %125 = getelementptr i8, ptr %99, i64 -3
  %126 = load i8, ptr %119, align 1, !tbaa !18
  %127 = zext i8 %126 to i32
  %128 = add nuw nsw i32 %122, %127
  %129 = mul nuw nsw i32 %127, %127
  %130 = add nuw nsw i32 %129, %124
  %131 = getelementptr i8, ptr %99, i64 -2
  %132 = load i8, ptr %125, align 1, !tbaa !18
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %128, %133
  %135 = mul nuw nsw i32 %133, %133
  %136 = add nuw nsw i32 %135, %130
  %137 = getelementptr i8, ptr %99, i64 -1
  %138 = load i8, ptr %131, align 1, !tbaa !18
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %134, %139
  %141 = mul nuw nsw i32 %139, %139
  %142 = add nuw nsw i32 %141, %136
  %143 = load i8, ptr %137, align 1, !tbaa !18
  %144 = zext i8 %143 to i32
  %145 = add nuw nsw i32 %140, %144
  %146 = mul nuw nsw i32 %144, %144
  %147 = add nuw nsw i32 %146, %142
  %148 = getelementptr i8, ptr %99, i64 %3
  %149 = getelementptr i8, ptr %148, i64 -8
  %150 = getelementptr i8, ptr %148, i64 -7
  %151 = load i8, ptr %149, align 1, !tbaa !18
  %152 = zext i8 %151 to i32
  %153 = add nuw nsw i32 %145, %152
  %154 = mul nuw nsw i32 %152, %152
  %155 = add nuw nsw i32 %154, %147
  %156 = getelementptr i8, ptr %148, i64 -6
  %157 = load i8, ptr %150, align 1, !tbaa !18
  %158 = zext i8 %157 to i32
  %159 = add nuw nsw i32 %153, %158
  %160 = mul nuw nsw i32 %158, %158
  %161 = add nuw nsw i32 %160, %155
  %162 = getelementptr i8, ptr %148, i64 -5
  %163 = load i8, ptr %156, align 1, !tbaa !18
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %159, %164
  %166 = mul nuw nsw i32 %164, %164
  %167 = add nuw nsw i32 %166, %161
  %168 = getelementptr i8, ptr %148, i64 -4
  %169 = load i8, ptr %162, align 1, !tbaa !18
  %170 = zext i8 %169 to i32
  %171 = add nuw nsw i32 %165, %170
  %172 = mul nuw nsw i32 %170, %170
  %173 = add nuw nsw i32 %172, %167
  %174 = getelementptr i8, ptr %148, i64 -3
  %175 = load i8, ptr %168, align 1, !tbaa !18
  %176 = zext i8 %175 to i32
  %177 = add nuw nsw i32 %171, %176
  %178 = mul nuw nsw i32 %176, %176
  %179 = add nuw nsw i32 %178, %173
  %180 = getelementptr i8, ptr %148, i64 -2
  %181 = load i8, ptr %174, align 1, !tbaa !18
  %182 = zext i8 %181 to i32
  %183 = add nuw nsw i32 %177, %182
  %184 = mul nuw nsw i32 %182, %182
  %185 = add nuw nsw i32 %184, %179
  %186 = getelementptr i8, ptr %148, i64 -1
  %187 = load i8, ptr %180, align 1, !tbaa !18
  %188 = zext i8 %187 to i32
  %189 = add nuw nsw i32 %183, %188
  %190 = mul nuw nsw i32 %188, %188
  %191 = add nuw nsw i32 %190, %185
  %192 = load i8, ptr %186, align 1, !tbaa !18
  %193 = zext i8 %192 to i32
  %194 = add nuw nsw i32 %189, %193
  %195 = mul nuw nsw i32 %193, %193
  %196 = add nuw nsw i32 %195, %191
  %197 = getelementptr i8, ptr %148, i64 %3
  %198 = getelementptr i8, ptr %197, i64 -8
  %199 = getelementptr i8, ptr %197, i64 -7
  %200 = load i8, ptr %198, align 1, !tbaa !18
  %201 = zext i8 %200 to i32
  %202 = add nuw nsw i32 %194, %201
  %203 = mul nuw nsw i32 %201, %201
  %204 = add nuw nsw i32 %203, %196
  %205 = getelementptr i8, ptr %197, i64 -6
  %206 = load i8, ptr %199, align 1, !tbaa !18
  %207 = zext i8 %206 to i32
  %208 = add nuw nsw i32 %202, %207
  %209 = mul nuw nsw i32 %207, %207
  %210 = add nuw nsw i32 %209, %204
  %211 = getelementptr i8, ptr %197, i64 -5
  %212 = load i8, ptr %205, align 1, !tbaa !18
  %213 = zext i8 %212 to i32
  %214 = add nuw nsw i32 %208, %213
  %215 = mul nuw nsw i32 %213, %213
  %216 = add nuw nsw i32 %215, %210
  %217 = getelementptr i8, ptr %197, i64 -4
  %218 = load i8, ptr %211, align 1, !tbaa !18
  %219 = zext i8 %218 to i32
  %220 = add nuw nsw i32 %214, %219
  %221 = mul nuw nsw i32 %219, %219
  %222 = add nuw nsw i32 %221, %216
  %223 = getelementptr i8, ptr %197, i64 -3
  %224 = load i8, ptr %217, align 1, !tbaa !18
  %225 = zext i8 %224 to i32
  %226 = add nuw nsw i32 %220, %225
  %227 = mul nuw nsw i32 %225, %225
  %228 = add nuw nsw i32 %227, %222
  %229 = getelementptr i8, ptr %197, i64 -2
  %230 = load i8, ptr %223, align 1, !tbaa !18
  %231 = zext i8 %230 to i32
  %232 = add nuw nsw i32 %226, %231
  %233 = mul nuw nsw i32 %231, %231
  %234 = add nuw nsw i32 %233, %228
  %235 = getelementptr i8, ptr %197, i64 -1
  %236 = load i8, ptr %229, align 1, !tbaa !18
  %237 = zext i8 %236 to i32
  %238 = add nuw nsw i32 %232, %237
  %239 = mul nuw nsw i32 %237, %237
  %240 = add nuw nsw i32 %239, %234
  %241 = load i8, ptr %235, align 1, !tbaa !18
  %242 = zext i8 %241 to i32
  %243 = add nuw nsw i32 %238, %242
  %244 = mul nuw nsw i32 %242, %242
  %245 = add nuw nsw i32 %244, %240
  %246 = getelementptr i8, ptr %197, i64 %3
  %247 = getelementptr i8, ptr %246, i64 -8
  %248 = getelementptr i8, ptr %246, i64 -7
  %249 = load i8, ptr %247, align 1, !tbaa !18
  %250 = zext i8 %249 to i32
  %251 = add nuw nsw i32 %243, %250
  %252 = mul nuw nsw i32 %250, %250
  %253 = add nuw nsw i32 %252, %245
  %254 = getelementptr i8, ptr %246, i64 -6
  %255 = load i8, ptr %248, align 1, !tbaa !18
  %256 = zext i8 %255 to i32
  %257 = add nuw nsw i32 %251, %256
  %258 = mul nuw nsw i32 %256, %256
  %259 = add nuw nsw i32 %258, %253
  %260 = getelementptr i8, ptr %246, i64 -5
  %261 = load i8, ptr %254, align 1, !tbaa !18
  %262 = zext i8 %261 to i32
  %263 = add nuw nsw i32 %257, %262
  %264 = mul nuw nsw i32 %262, %262
  %265 = add nuw nsw i32 %264, %259
  %266 = getelementptr i8, ptr %246, i64 -4
  %267 = load i8, ptr %260, align 1, !tbaa !18
  %268 = zext i8 %267 to i32
  %269 = add nuw nsw i32 %263, %268
  %270 = mul nuw nsw i32 %268, %268
  %271 = add nuw nsw i32 %270, %265
  %272 = getelementptr i8, ptr %246, i64 -3
  %273 = load i8, ptr %266, align 1, !tbaa !18
  %274 = zext i8 %273 to i32
  %275 = add nuw nsw i32 %269, %274
  %276 = mul nuw nsw i32 %274, %274
  %277 = add nuw nsw i32 %276, %271
  %278 = getelementptr i8, ptr %246, i64 -2
  %279 = load i8, ptr %272, align 1, !tbaa !18
  %280 = zext i8 %279 to i32
  %281 = add nuw nsw i32 %275, %280
  %282 = mul nuw nsw i32 %280, %280
  %283 = add nuw nsw i32 %282, %277
  %284 = getelementptr i8, ptr %246, i64 -1
  %285 = load i8, ptr %278, align 1, !tbaa !18
  %286 = zext i8 %285 to i32
  %287 = add nuw nsw i32 %281, %286
  %288 = mul nuw nsw i32 %286, %286
  %289 = add nuw nsw i32 %288, %283
  %290 = load i8, ptr %284, align 1, !tbaa !18
  %291 = zext i8 %290 to i32
  %292 = add nuw nsw i32 %287, %291
  %293 = mul nuw nsw i32 %291, %291
  %294 = add nuw nsw i32 %293, %289
  %295 = getelementptr i8, ptr %246, i64 %3
  %296 = getelementptr i8, ptr %295, i64 -8
  %297 = getelementptr i8, ptr %295, i64 -7
  %298 = load i8, ptr %296, align 1, !tbaa !18
  %299 = zext i8 %298 to i32
  %300 = add nuw nsw i32 %292, %299
  %301 = mul nuw nsw i32 %299, %299
  %302 = add nuw nsw i32 %301, %294
  %303 = getelementptr i8, ptr %295, i64 -6
  %304 = load i8, ptr %297, align 1, !tbaa !18
  %305 = zext i8 %304 to i32
  %306 = add nuw nsw i32 %300, %305
  %307 = mul nuw nsw i32 %305, %305
  %308 = add nuw nsw i32 %307, %302
  %309 = getelementptr i8, ptr %295, i64 -5
  %310 = load i8, ptr %303, align 1, !tbaa !18
  %311 = zext i8 %310 to i32
  %312 = add nuw nsw i32 %306, %311
  %313 = mul nuw nsw i32 %311, %311
  %314 = add nuw nsw i32 %313, %308
  %315 = getelementptr i8, ptr %295, i64 -4
  %316 = load i8, ptr %309, align 1, !tbaa !18
  %317 = zext i8 %316 to i32
  %318 = add nuw nsw i32 %312, %317
  %319 = mul nuw nsw i32 %317, %317
  %320 = add nuw nsw i32 %319, %314
  %321 = getelementptr i8, ptr %295, i64 -3
  %322 = load i8, ptr %315, align 1, !tbaa !18
  %323 = zext i8 %322 to i32
  %324 = add nuw nsw i32 %318, %323
  %325 = mul nuw nsw i32 %323, %323
  %326 = add nuw nsw i32 %325, %320
  %327 = getelementptr i8, ptr %295, i64 -2
  %328 = load i8, ptr %321, align 1, !tbaa !18
  %329 = zext i8 %328 to i32
  %330 = add nuw nsw i32 %324, %329
  %331 = mul nuw nsw i32 %329, %329
  %332 = add nuw nsw i32 %331, %326
  %333 = getelementptr i8, ptr %295, i64 -1
  %334 = load i8, ptr %327, align 1, !tbaa !18
  %335 = zext i8 %334 to i32
  %336 = add nuw nsw i32 %330, %335
  %337 = mul nuw nsw i32 %335, %335
  %338 = add nuw nsw i32 %337, %332
  %339 = load i8, ptr %333, align 1, !tbaa !18
  %340 = zext i8 %339 to i32
  %341 = add nuw nsw i32 %336, %340
  %342 = mul nuw nsw i32 %340, %340
  %343 = add nuw nsw i32 %342, %338
  %344 = getelementptr i8, ptr %295, i64 %3
  %345 = getelementptr i8, ptr %344, i64 -8
  %346 = getelementptr i8, ptr %344, i64 -7
  %347 = load i8, ptr %345, align 1, !tbaa !18
  %348 = zext i8 %347 to i32
  %349 = add nuw nsw i32 %341, %348
  %350 = mul nuw nsw i32 %348, %348
  %351 = add nuw nsw i32 %350, %343
  %352 = getelementptr i8, ptr %344, i64 -6
  %353 = load i8, ptr %346, align 1, !tbaa !18
  %354 = zext i8 %353 to i32
  %355 = add nuw nsw i32 %349, %354
  %356 = mul nuw nsw i32 %354, %354
  %357 = add nuw nsw i32 %356, %351
  %358 = getelementptr i8, ptr %344, i64 -5
  %359 = load i8, ptr %352, align 1, !tbaa !18
  %360 = zext i8 %359 to i32
  %361 = add nuw nsw i32 %355, %360
  %362 = mul nuw nsw i32 %360, %360
  %363 = add nuw nsw i32 %362, %357
  %364 = getelementptr i8, ptr %344, i64 -4
  %365 = load i8, ptr %358, align 1, !tbaa !18
  %366 = zext i8 %365 to i32
  %367 = add nuw nsw i32 %361, %366
  %368 = mul nuw nsw i32 %366, %366
  %369 = add nuw nsw i32 %368, %363
  %370 = getelementptr i8, ptr %344, i64 -3
  %371 = load i8, ptr %364, align 1, !tbaa !18
  %372 = zext i8 %371 to i32
  %373 = add nuw nsw i32 %367, %372
  %374 = mul nuw nsw i32 %372, %372
  %375 = add nuw nsw i32 %374, %369
  %376 = getelementptr i8, ptr %344, i64 -2
  %377 = load i8, ptr %370, align 1, !tbaa !18
  %378 = zext i8 %377 to i32
  %379 = add nuw nsw i32 %373, %378
  %380 = mul nuw nsw i32 %378, %378
  %381 = add nuw nsw i32 %380, %375
  %382 = getelementptr i8, ptr %344, i64 -1
  %383 = load i8, ptr %376, align 1, !tbaa !18
  %384 = zext i8 %383 to i32
  %385 = add nuw nsw i32 %379, %384
  %386 = mul nuw nsw i32 %384, %384
  %387 = add nuw nsw i32 %386, %381
  %388 = load i8, ptr %382, align 1, !tbaa !18
  %389 = zext i8 %388 to i32
  %390 = add nuw nsw i32 %385, %389
  %391 = mul nuw nsw i32 %389, %389
  %392 = add nuw nsw i32 %391, %387
  %393 = uitofp nneg i32 %392 to double
  %394 = fmul double %393, 1.562500e-02
  %395 = uitofp nneg i32 %390 to double
  %396 = fmul double %395, 1.562500e-02
  %397 = fneg double %396
  %398 = tail call double @llvm.fmuladd.f64(double %397, double %396, double %394)
  ret double %398
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
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
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !11, i64 80}
!15 = !{!"mbinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 56, !8, i64 72, !11, i64 80, !7, i64 88}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unswitch.partial.disable"}
!18 = !{!8, !8, i64 0}
