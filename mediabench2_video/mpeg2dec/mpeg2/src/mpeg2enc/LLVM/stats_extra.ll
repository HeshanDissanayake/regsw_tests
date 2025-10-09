; ModuleID = 'stats.c'
source_filename = "stats.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.mbinfo = type { i32, i32, i32, i32, i32, i32, [2 x [2 x [2 x i32]]], [2 x [2 x i32]], [2 x i32], double, i32 }

@horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@pict_struct = external dso_local local_unnamed_addr global i32, align 4
@vertical_size = external dso_local local_unnamed_addr global i32, align 4
@width = external dso_local local_unnamed_addr global i32, align 4
@width2 = external dso_local local_unnamed_addr global i32, align 4
@statfile = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [55 x i8] c"Y: variance=%4.4g, MSE=%3.3g (%3.3g dB), SNR=%3.3g dB\0A\00", align 1
@chroma_format = external dso_local local_unnamed_addr global i32, align 4
@chrom_width2 = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"U: variance=%4.4g, MSE=%3.3g (%3.3g dB), SNR=%3.3g dB\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"V: variance=%4.4g, MSE=%3.3g (%3.3g dB), SNR=%3.3g dB\0A\00", align 1
@mb_width = external dso_local local_unnamed_addr global i32, align 4
@mb_height2 = external dso_local local_unnamed_addr global i32, align 4
@mbinfo = external dso_local local_unnamed_addr global ptr, align 8
@block_count = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"\0Apicture statistics:\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c" # of intra coded macroblocks:  %4d (%.1f%%)\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c" # of coded blocks:             %4d (%.1f%%)\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c" # of not coded macroblocks:    %4d (%.1f%%)\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c" # of skipped macroblocks:      %4d (%.1f%%)\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c" # of forw. pred. macroblocks:  %4d (%.1f%%)\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c" # of backw. pred. macroblocks: %4d (%.1f%%)\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c" # of interpolated macroblocks: %4d (%.1f%%)\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"\0Amacroblock_type map:\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"\0Amquant map:\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"   \00", align 1

; Function Attrs: nofree nounwind
define dso_local void @calcSNR(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %4 = load i32, ptr @pict_struct, align 4, !tbaa !6
  %5 = icmp ne i32 %4, 3
  %6 = load i32, ptr @vertical_size, align 4
  %7 = zext i1 %5 to i32
  %8 = ashr i32 %6, %7
  %9 = icmp eq i32 %4, 2
  %10 = load i32, ptr @width, align 4
  %11 = select i1 %9, i32 %10, i32 0
  %12 = load ptr, ptr %0, align 8, !tbaa !10
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr %1, align 8, !tbaa !10
  %16 = getelementptr inbounds i8, ptr %15, i64 %13
  %17 = icmp sgt i32 %8, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load i32, ptr @width2, align 4, !tbaa !6
  %20 = icmp sgt i32 %3, 0
  %21 = sext i32 %19 to i64
  br i1 %20, label %22, label %53

22:                                               ; preds = %18
  %23 = zext nneg i32 %3 to i64
  br label %24

24:                                               ; preds = %48, %22
  %25 = phi double [ %45, %48 ], [ 0.000000e+00, %22 ]
  %26 = phi double [ %40, %48 ], [ 0.000000e+00, %22 ]
  %27 = phi double [ %39, %48 ], [ 0.000000e+00, %22 ]
  %28 = phi ptr [ %49, %48 ], [ %14, %22 ]
  %29 = phi i32 [ %51, %48 ], [ 0, %22 ]
  %30 = phi ptr [ %50, %48 ], [ %16, %22 ]
  br label %31

31:                                               ; preds = %31, %24
  %32 = phi i64 [ 0, %24 ], [ %46, %31 ]
  %33 = phi double [ %25, %24 ], [ %45, %31 ]
  %34 = phi double [ %26, %24 ], [ %40, %31 ]
  %35 = phi double [ %27, %24 ], [ %39, %31 ]
  %36 = getelementptr inbounds i8, ptr %28, i64 %32
  %37 = load i8, ptr %36, align 1, !tbaa !12
  %38 = uitofp i8 %37 to double
  %39 = fadd double %35, %38
  %40 = tail call double @llvm.fmuladd.f64(double %38, double %38, double %34)
  %41 = getelementptr inbounds i8, ptr %30, i64 %32
  %42 = load i8, ptr %41, align 1, !tbaa !12
  %43 = uitofp i8 %42 to double
  %44 = fsub double %38, %43
  %45 = tail call double @llvm.fmuladd.f64(double %44, double %44, double %33)
  %46 = add nuw nsw i64 %32, 1
  %47 = icmp eq i64 %46, %23
  br i1 %47, label %48, label %31

48:                                               ; preds = %31
  %49 = getelementptr inbounds i8, ptr %28, i64 %21
  %50 = getelementptr inbounds i8, ptr %30, i64 %21
  %51 = add nuw nsw i32 %29, 1
  %52 = icmp eq i32 %51, %8
  br i1 %52, label %53, label %24

53:                                               ; preds = %48, %2, %18
  %54 = phi double [ 0.000000e+00, %2 ], [ 0.000000e+00, %18 ], [ %39, %48 ]
  %55 = phi double [ 0.000000e+00, %2 ], [ 0.000000e+00, %18 ], [ %40, %48 ]
  %56 = phi double [ 0.000000e+00, %2 ], [ 0.000000e+00, %18 ], [ %45, %48 ]
  %57 = mul nsw i32 %8, %3
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %56, %58
  %60 = fcmp oeq double %59, 0.000000e+00
  %61 = select i1 %60, double 1.000000e-05, double %59
  %62 = fdiv double %55, %58
  %63 = fdiv double %54, %58
  %64 = fneg double %63
  %65 = tail call double @llvm.fmuladd.f64(double %64, double %63, double %62)
  %66 = load ptr, ptr @statfile, align 8, !tbaa !10
  %67 = fdiv double 6.502500e+04, %61
  %68 = tail call double @log10(double noundef %67) #4
  %69 = fmul double %68, 1.000000e+01
  %70 = fdiv double %65, %61
  %71 = tail call double @log10(double noundef %70) #4
  %72 = fmul double %71, 1.000000e+01
  %73 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str, double noundef %65, double noundef %61, double noundef %69, double noundef %72) #4
  %74 = load i32, ptr @chroma_format, align 4, !tbaa !6
  %75 = icmp ne i32 %74, 3
  %76 = zext i1 %75 to i32
  %77 = ashr i32 %3, %76
  %78 = ashr i32 %11, %76
  %79 = icmp eq i32 %74, 1
  %80 = zext i1 %79 to i32
  %81 = ashr i32 %8, %80
  %82 = getelementptr inbounds i8, ptr %0, i64 8
  %83 = load ptr, ptr %82, align 8, !tbaa !10
  %84 = sext i32 %78 to i64
  %85 = getelementptr inbounds i8, ptr %83, i64 %84
  %86 = getelementptr inbounds i8, ptr %1, i64 8
  %87 = load ptr, ptr %86, align 8, !tbaa !10
  %88 = getelementptr inbounds i8, ptr %87, i64 %84
  %89 = icmp sgt i32 %81, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %53
  %91 = load i32, ptr @chrom_width2, align 4, !tbaa !6
  %92 = icmp sgt i32 %77, 0
  %93 = sext i32 %91 to i64
  br i1 %92, label %94, label %125

94:                                               ; preds = %90
  %95 = zext nneg i32 %77 to i64
  br label %96

96:                                               ; preds = %120, %94
  %97 = phi double [ %117, %120 ], [ 0.000000e+00, %94 ]
  %98 = phi double [ %112, %120 ], [ 0.000000e+00, %94 ]
  %99 = phi double [ %111, %120 ], [ 0.000000e+00, %94 ]
  %100 = phi ptr [ %121, %120 ], [ %85, %94 ]
  %101 = phi i32 [ %123, %120 ], [ 0, %94 ]
  %102 = phi ptr [ %122, %120 ], [ %88, %94 ]
  br label %103

103:                                              ; preds = %103, %96
  %104 = phi i64 [ 0, %96 ], [ %118, %103 ]
  %105 = phi double [ %97, %96 ], [ %117, %103 ]
  %106 = phi double [ %98, %96 ], [ %112, %103 ]
  %107 = phi double [ %99, %96 ], [ %111, %103 ]
  %108 = getelementptr inbounds i8, ptr %100, i64 %104
  %109 = load i8, ptr %108, align 1, !tbaa !12
  %110 = uitofp i8 %109 to double
  %111 = fadd double %107, %110
  %112 = tail call double @llvm.fmuladd.f64(double %110, double %110, double %106)
  %113 = getelementptr inbounds i8, ptr %102, i64 %104
  %114 = load i8, ptr %113, align 1, !tbaa !12
  %115 = uitofp i8 %114 to double
  %116 = fsub double %110, %115
  %117 = tail call double @llvm.fmuladd.f64(double %116, double %116, double %105)
  %118 = add nuw nsw i64 %104, 1
  %119 = icmp eq i64 %118, %95
  br i1 %119, label %120, label %103

120:                                              ; preds = %103
  %121 = getelementptr inbounds i8, ptr %100, i64 %93
  %122 = getelementptr inbounds i8, ptr %102, i64 %93
  %123 = add nuw nsw i32 %101, 1
  %124 = icmp eq i32 %123, %81
  br i1 %124, label %125, label %96

125:                                              ; preds = %120, %53, %90
  %126 = phi double [ 0.000000e+00, %53 ], [ 0.000000e+00, %90 ], [ %111, %120 ]
  %127 = phi double [ 0.000000e+00, %53 ], [ 0.000000e+00, %90 ], [ %112, %120 ]
  %128 = phi double [ 0.000000e+00, %53 ], [ 0.000000e+00, %90 ], [ %117, %120 ]
  %129 = mul nsw i32 %81, %77
  %130 = sitofp i32 %129 to double
  %131 = fdiv double %128, %130
  %132 = fcmp oeq double %131, 0.000000e+00
  %133 = select i1 %132, double 1.000000e-05, double %131
  %134 = fdiv double %127, %130
  %135 = fdiv double %126, %130
  %136 = fneg double %135
  %137 = tail call double @llvm.fmuladd.f64(double %136, double %135, double %134)
  %138 = load ptr, ptr @statfile, align 8, !tbaa !10
  %139 = fdiv double 6.502500e+04, %133
  %140 = tail call double @log10(double noundef %139) #4
  %141 = fmul double %140, 1.000000e+01
  %142 = fdiv double %137, %133
  %143 = tail call double @log10(double noundef %142) #4
  %144 = fmul double %143, 1.000000e+01
  %145 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef nonnull @.str.1, double noundef %137, double noundef %133, double noundef %141, double noundef %144) #4
  %146 = getelementptr inbounds i8, ptr %0, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !10
  %148 = getelementptr inbounds i8, ptr %147, i64 %84
  %149 = getelementptr inbounds i8, ptr %1, i64 16
  %150 = load ptr, ptr %149, align 8, !tbaa !10
  %151 = getelementptr inbounds i8, ptr %150, i64 %84
  br i1 %89, label %152, label %187

152:                                              ; preds = %125
  %153 = load i32, ptr @chrom_width2, align 4, !tbaa !6
  %154 = icmp sgt i32 %77, 0
  %155 = sext i32 %153 to i64
  br i1 %154, label %156, label %187

156:                                              ; preds = %152
  %157 = zext nneg i32 %77 to i64
  br label %158

158:                                              ; preds = %182, %156
  %159 = phi double [ %179, %182 ], [ 0.000000e+00, %156 ]
  %160 = phi double [ %174, %182 ], [ 0.000000e+00, %156 ]
  %161 = phi double [ %173, %182 ], [ 0.000000e+00, %156 ]
  %162 = phi ptr [ %183, %182 ], [ %148, %156 ]
  %163 = phi i32 [ %185, %182 ], [ 0, %156 ]
  %164 = phi ptr [ %184, %182 ], [ %151, %156 ]
  br label %165

165:                                              ; preds = %165, %158
  %166 = phi i64 [ 0, %158 ], [ %180, %165 ]
  %167 = phi double [ %159, %158 ], [ %179, %165 ]
  %168 = phi double [ %160, %158 ], [ %174, %165 ]
  %169 = phi double [ %161, %158 ], [ %173, %165 ]
  %170 = getelementptr inbounds i8, ptr %162, i64 %166
  %171 = load i8, ptr %170, align 1, !tbaa !12
  %172 = uitofp i8 %171 to double
  %173 = fadd double %169, %172
  %174 = tail call double @llvm.fmuladd.f64(double %172, double %172, double %168)
  %175 = getelementptr inbounds i8, ptr %164, i64 %166
  %176 = load i8, ptr %175, align 1, !tbaa !12
  %177 = uitofp i8 %176 to double
  %178 = fsub double %172, %177
  %179 = tail call double @llvm.fmuladd.f64(double %178, double %178, double %167)
  %180 = add nuw nsw i64 %166, 1
  %181 = icmp eq i64 %180, %157
  br i1 %181, label %182, label %165

182:                                              ; preds = %165
  %183 = getelementptr inbounds i8, ptr %162, i64 %155
  %184 = getelementptr inbounds i8, ptr %164, i64 %155
  %185 = add nuw nsw i32 %163, 1
  %186 = icmp eq i32 %185, %81
  br i1 %186, label %187, label %158

187:                                              ; preds = %182, %125, %152
  %188 = phi double [ 0.000000e+00, %125 ], [ 0.000000e+00, %152 ], [ %173, %182 ]
  %189 = phi double [ 0.000000e+00, %125 ], [ 0.000000e+00, %152 ], [ %174, %182 ]
  %190 = phi double [ 0.000000e+00, %125 ], [ 0.000000e+00, %152 ], [ %179, %182 ]
  %191 = fdiv double %190, %130
  %192 = fcmp oeq double %191, 0.000000e+00
  %193 = select i1 %192, double 1.000000e-05, double %191
  %194 = fdiv double %189, %130
  %195 = fdiv double %188, %130
  %196 = fneg double %195
  %197 = tail call double @llvm.fmuladd.f64(double %196, double %195, double %194)
  %198 = load ptr, ptr @statfile, align 8, !tbaa !10
  %199 = fdiv double 6.502500e+04, %193
  %200 = tail call double @log10(double noundef %199) #4
  %201 = fmul double %200, 1.000000e+01
  %202 = fdiv double %197, %193
  %203 = tail call double @log10(double noundef %202) #4
  %204 = fmul double %203, 1.000000e+01
  %205 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef nonnull @.str.2, double noundef %197, double noundef %193, double noundef %201, double noundef %204) #4
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare dso_local double @log10(double noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
define dso_local void @stats() local_unnamed_addr #0 {
  %1 = load i32, ptr @mb_width, align 4, !tbaa !6
  %2 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %3 = mul nsw i32 %2, %1
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %121

5:                                                ; preds = %0
  %6 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %7 = load i32, ptr @block_count, align 4, !tbaa !6
  %8 = icmp sgt i32 %7, 0
  %9 = zext nneg i32 %3 to i64
  br i1 %8, label %10, label %71

10:                                               ; preds = %5, %53
  %11 = phi i64 [ %57, %53 ], [ 0, %5 ]
  %12 = phi i32 [ %56, %53 ], [ 0, %5 ]
  %13 = phi i32 [ %55, %53 ], [ 0, %5 ]
  %14 = phi i32 [ %54, %53 ], [ 0, %5 ]
  %15 = phi i32 [ %64, %53 ], [ 0, %5 ]
  %16 = phi i32 [ %39, %53 ], [ 0, %5 ]
  %17 = phi i32 [ %38, %53 ], [ 0, %5 ]
  %18 = phi i32 [ %37, %53 ], [ 0, %5 ]
  %19 = getelementptr inbounds %struct.mbinfo, ptr %6, i64 %11
  %20 = getelementptr inbounds i8, ptr %19, i64 20
  %21 = load i32, ptr %20, align 4, !tbaa !13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = add nsw i32 %18, 1
  br label %36

25:                                               ; preds = %10
  %26 = load i32, ptr %19, align 8, !tbaa !16
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = add nsw i32 %17, 1
  br label %36

31:                                               ; preds = %25
  %32 = lshr exact i32 %26, 1
  %33 = and i32 %32, 1
  %34 = xor i32 %33, 1
  %35 = add i32 %34, %16
  br label %36

36:                                               ; preds = %31, %29, %23
  %37 = phi i32 [ %24, %23 ], [ %18, %29 ], [ %18, %31 ]
  %38 = phi i32 [ %17, %23 ], [ %30, %29 ], [ %17, %31 ]
  %39 = phi i32 [ %16, %23 ], [ %16, %29 ], [ %35, %31 ]
  %40 = getelementptr inbounds i8, ptr %19, i64 16
  %41 = load i32, ptr %40, align 8, !tbaa !17
  br label %59

42:                                               ; preds = %67
  %43 = and i32 %68, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = add nsw i32 %14, 1
  br label %53

47:                                               ; preds = %42
  %48 = add nsw i32 %13, 1
  br label %53

49:                                               ; preds = %67
  %50 = lshr i32 %68, 2
  %51 = and i32 %50, 1
  %52 = add i32 %51, %12
  br label %53

53:                                               ; preds = %49, %47, %45
  %54 = phi i32 [ %46, %45 ], [ %14, %47 ], [ %14, %49 ]
  %55 = phi i32 [ %13, %45 ], [ %48, %47 ], [ %13, %49 ]
  %56 = phi i32 [ %12, %45 ], [ %12, %47 ], [ %52, %49 ]
  %57 = add nuw nsw i64 %11, 1
  %58 = icmp eq i64 %57, %9
  br i1 %58, label %121, label %10

59:                                               ; preds = %36, %59
  %60 = phi i32 [ %15, %36 ], [ %64, %59 ]
  %61 = phi i32 [ 0, %36 ], [ %65, %59 ]
  %62 = lshr i32 %41, %61
  %63 = and i32 %62, 1
  %64 = add nsw i32 %63, %60
  %65 = add nuw nsw i32 %61, 1
  %66 = icmp eq i32 %65, %7
  br i1 %66, label %67, label %59

67:                                               ; preds = %59
  %68 = load i32, ptr %19, align 8, !tbaa !16
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %49, label %42

71:                                               ; preds = %5, %115
  %72 = phi i64 [ %119, %115 ], [ 0, %5 ]
  %73 = phi i32 [ %118, %115 ], [ 0, %5 ]
  %74 = phi i32 [ %117, %115 ], [ 0, %5 ]
  %75 = phi i32 [ %116, %115 ], [ 0, %5 ]
  %76 = phi i32 [ %101, %115 ], [ 0, %5 ]
  %77 = phi i32 [ %100, %115 ], [ 0, %5 ]
  %78 = phi i32 [ %99, %115 ], [ 0, %5 ]
  %79 = getelementptr inbounds %struct.mbinfo, ptr %6, i64 %72
  %80 = getelementptr inbounds i8, ptr %79, i64 20
  %81 = load i32, ptr %80, align 4, !tbaa !13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = add nsw i32 %78, 1
  %85 = load i32, ptr %79, align 8, !tbaa !16
  br label %97

86:                                               ; preds = %71
  %87 = load i32, ptr %79, align 8, !tbaa !16
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = add nsw i32 %77, 1
  br label %97

92:                                               ; preds = %86
  %93 = lshr exact i32 %87, 1
  %94 = and i32 %93, 1
  %95 = xor i32 %94, 1
  %96 = add i32 %95, %76
  br label %97

97:                                               ; preds = %92, %90, %83
  %98 = phi i32 [ %85, %83 ], [ %87, %90 ], [ %87, %92 ]
  %99 = phi i32 [ %84, %83 ], [ %78, %90 ], [ %78, %92 ]
  %100 = phi i32 [ %77, %83 ], [ %91, %90 ], [ %77, %92 ]
  %101 = phi i32 [ %76, %83 ], [ %76, %90 ], [ %96, %92 ]
  %102 = and i32 %98, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = and i32 %98, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = add nsw i32 %75, 1
  br label %115

109:                                              ; preds = %104
  %110 = add nsw i32 %74, 1
  br label %115

111:                                              ; preds = %97
  %112 = lshr i32 %98, 2
  %113 = and i32 %112, 1
  %114 = add i32 %113, %73
  br label %115

115:                                              ; preds = %111, %109, %107
  %116 = phi i32 [ %108, %107 ], [ %75, %109 ], [ %75, %111 ]
  %117 = phi i32 [ %74, %107 ], [ %110, %109 ], [ %74, %111 ]
  %118 = phi i32 [ %73, %107 ], [ %73, %109 ], [ %114, %111 ]
  %119 = add nuw nsw i64 %72, 1
  %120 = icmp eq i64 %119, %9
  br i1 %120, label %121, label %71

121:                                              ; preds = %115, %53, %0
  %122 = phi i32 [ 0, %0 ], [ %37, %53 ], [ %99, %115 ]
  %123 = phi i32 [ 0, %0 ], [ %38, %53 ], [ %100, %115 ]
  %124 = phi i32 [ 0, %0 ], [ %39, %53 ], [ %101, %115 ]
  %125 = phi i32 [ 0, %0 ], [ %64, %53 ], [ 0, %115 ]
  %126 = phi i32 [ 0, %0 ], [ %54, %53 ], [ %116, %115 ]
  %127 = phi i32 [ 0, %0 ], [ %55, %53 ], [ %117, %115 ]
  %128 = phi i32 [ 0, %0 ], [ %56, %53 ], [ %118, %115 ]
  %129 = load ptr, ptr @statfile, align 8, !tbaa !10
  %130 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %129)
  %131 = load ptr, ptr @statfile, align 8, !tbaa !10
  %132 = sitofp i32 %123 to double
  %133 = fmul double %132, 1.000000e+02
  %134 = sitofp i32 %3 to double
  %135 = fdiv double %133, %134
  %136 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.4, i32 noundef signext %123, double noundef %135) #4
  %137 = load ptr, ptr @statfile, align 8, !tbaa !10
  %138 = sitofp i32 %125 to double
  %139 = fmul double %138, 1.000000e+02
  %140 = load i32, ptr @block_count, align 4, !tbaa !6
  %141 = mul nsw i32 %140, %3
  %142 = sitofp i32 %141 to double
  %143 = fdiv double %139, %142
  %144 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef nonnull @.str.5, i32 noundef signext %125, double noundef %143) #4
  %145 = load ptr, ptr @statfile, align 8, !tbaa !10
  %146 = sitofp i32 %124 to double
  %147 = fmul double %146, 1.000000e+02
  %148 = fdiv double %147, %134
  %149 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.6, i32 noundef signext %124, double noundef %148) #4
  %150 = load ptr, ptr @statfile, align 8, !tbaa !10
  %151 = sitofp i32 %122 to double
  %152 = fmul double %151, 1.000000e+02
  %153 = fdiv double %152, %134
  %154 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef nonnull @.str.7, i32 noundef signext %122, double noundef %153) #4
  %155 = load ptr, ptr @statfile, align 8, !tbaa !10
  %156 = sitofp i32 %127 to double
  %157 = fmul double %156, 1.000000e+02
  %158 = fdiv double %157, %134
  %159 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.8, i32 noundef signext %127, double noundef %158) #4
  %160 = load ptr, ptr @statfile, align 8, !tbaa !10
  %161 = sitofp i32 %128 to double
  %162 = fmul double %161, 1.000000e+02
  %163 = fdiv double %162, %134
  %164 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.9, i32 noundef signext %128, double noundef %163) #4
  %165 = load ptr, ptr @statfile, align 8, !tbaa !10
  %166 = sitofp i32 %126 to double
  %167 = fmul double %166, 1.000000e+02
  %168 = fdiv double %167, %134
  %169 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.10, i32 noundef signext %126, double noundef %168) #4
  %170 = load ptr, ptr @statfile, align 8, !tbaa !10
  %171 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 22, i64 1, ptr %170)
  %172 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %247

174:                                              ; preds = %121, %240
  %175 = phi i32 [ %244, %240 ], [ 0, %121 ]
  %176 = phi i32 [ %241, %240 ], [ 0, %121 ]
  %177 = load i32, ptr @mb_width, align 4, !tbaa !6
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %240

179:                                              ; preds = %174
  %180 = sext i32 %176 to i64
  br label %181

181:                                              ; preds = %179, %231
  %182 = phi i64 [ %180, %179 ], [ %234, %231 ]
  %183 = phi i32 [ 0, %179 ], [ %235, %231 ]
  %184 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %185 = getelementptr inbounds %struct.mbinfo, ptr %184, i64 %182
  %186 = load i32, ptr %185, align 8, !tbaa !16
  %187 = getelementptr inbounds i8, ptr %185, i64 20
  %188 = load i32, ptr %187, align 4, !tbaa !13
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %214

190:                                              ; preds = %181
  %191 = and i32 %186, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %190
  %194 = lshr i32 %186, 2
  %195 = and i32 %194, 3
  switch i32 %195, label %213 [
    i32 2, label %196
    i32 1, label %203
    i32 3, label %208
    i32 0, label %214
  ]

196:                                              ; preds = %193
  %197 = getelementptr inbounds i8, ptr %185, i64 4
  %198 = load i32, ptr %197, align 4, !tbaa !18
  %199 = icmp eq i32 %198, 1
  %200 = icmp eq i32 %198, 3
  %201 = select i1 %200, i32 112, i32 70
  %202 = select i1 %199, i32 102, i32 %201
  br label %214

203:                                              ; preds = %193
  %204 = getelementptr inbounds i8, ptr %185, i64 4
  %205 = load i32, ptr %204, align 4, !tbaa !18
  %206 = icmp eq i32 %205, 1
  %207 = select i1 %206, i32 98, i32 66
  br label %214

208:                                              ; preds = %193
  %209 = getelementptr inbounds i8, ptr %185, i64 4
  %210 = load i32, ptr %209, align 4, !tbaa !18
  %211 = icmp eq i32 %210, 1
  %212 = select i1 %211, i32 100, i32 68
  br label %214

213:                                              ; preds = %193
  unreachable

214:                                              ; preds = %193, %190, %181, %208, %203, %196
  %215 = phi i32 [ %212, %208 ], [ %207, %203 ], [ %202, %196 ], [ 83, %181 ], [ 73, %190 ], [ 48, %193 ]
  %216 = load ptr, ptr @statfile, align 8, !tbaa !10
  %217 = tail call signext i32 @putc(i32 noundef signext %215, ptr noundef %216)
  %218 = and i32 %186, 16
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = load ptr, ptr @statfile, align 8, !tbaa !10
  %222 = tail call signext i32 @putc(i32 noundef signext 81, ptr noundef %221)
  br label %231

223:                                              ; preds = %214
  %224 = and i32 %186, 3
  %225 = icmp eq i32 %224, 0
  %226 = load ptr, ptr @statfile, align 8, !tbaa !10
  br i1 %225, label %229, label %227

227:                                              ; preds = %223
  %228 = tail call signext i32 @putc(i32 noundef signext 32, ptr noundef %226)
  br label %231

229:                                              ; preds = %223
  %230 = tail call signext i32 @putc(i32 noundef signext 78, ptr noundef %226)
  br label %231

231:                                              ; preds = %227, %229, %220
  %232 = load ptr, ptr @statfile, align 8, !tbaa !10
  %233 = tail call signext i32 @putc(i32 noundef signext 32, ptr noundef %232)
  %234 = add nsw i64 %182, 1
  %235 = add nuw nsw i32 %183, 1
  %236 = load i32, ptr @mb_width, align 4, !tbaa !6
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %181, label %238

238:                                              ; preds = %231
  %239 = trunc nsw i64 %234 to i32
  br label %240

240:                                              ; preds = %238, %174
  %241 = phi i32 [ %176, %174 ], [ %239, %238 ]
  %242 = load ptr, ptr @statfile, align 8, !tbaa !10
  %243 = tail call signext i32 @putc(i32 noundef signext 10, ptr noundef %242)
  %244 = add nuw nsw i32 %175, 1
  %245 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %174, label %247

247:                                              ; preds = %240, %121
  %248 = load ptr, ptr @statfile, align 8, !tbaa !10
  %249 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr %248)
  %250 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %297

252:                                              ; preds = %247, %290
  %253 = phi i32 [ %294, %290 ], [ 0, %247 ]
  %254 = phi i32 [ %291, %290 ], [ 0, %247 ]
  %255 = load i32, ptr @mb_width, align 4, !tbaa !6
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %290

257:                                              ; preds = %252
  %258 = sext i32 %254 to i64
  %259 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %260 = getelementptr inbounds %struct.mbinfo, ptr %259, i64 %258, i32 3
  %261 = load i32, ptr %260, align 4, !tbaa !19
  %262 = load ptr, ptr @statfile, align 8, !tbaa !10
  %263 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef nonnull @.str.13, i32 noundef signext %261) #4
  %264 = load i32, ptr @mb_width, align 4, !tbaa !6
  %265 = add nsw i64 %258, 1
  %266 = icmp sgt i32 %264, 1
  br i1 %266, label %267, label %287

267:                                              ; preds = %257, %282
  %268 = phi i64 [ %283, %282 ], [ %265, %257 ]
  %269 = phi i32 [ %284, %282 ], [ 1, %257 ]
  %270 = load ptr, ptr @mbinfo, align 8, !tbaa !10
  %271 = getelementptr inbounds %struct.mbinfo, ptr %270, i64 %268, i32 3
  %272 = load i32, ptr %271, align 4, !tbaa !19
  %273 = getelementptr %struct.mbinfo, ptr %270, i64 %268
  %274 = getelementptr i8, ptr %273, i64 -84
  %275 = load i32, ptr %274, align 4, !tbaa !19
  %276 = icmp eq i32 %272, %275
  %277 = load ptr, ptr @statfile, align 8, !tbaa !10
  br i1 %276, label %280, label %278

278:                                              ; preds = %267
  %279 = tail call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.13, i32 noundef signext %272) #4
  br label %282

280:                                              ; preds = %267
  %281 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %277)
  br label %282

282:                                              ; preds = %280, %278
  %283 = add nsw i64 %268, 1
  %284 = add nuw nsw i32 %269, 1
  %285 = load i32, ptr @mb_width, align 4, !tbaa !6
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %267, label %287, !llvm.loop !20

287:                                              ; preds = %282, %257
  %288 = phi i64 [ %265, %257 ], [ %283, %282 ]
  %289 = trunc nsw i64 %288 to i32
  br label %290

290:                                              ; preds = %287, %252
  %291 = phi i32 [ %254, %252 ], [ %289, %287 ]
  %292 = load ptr, ptr @statfile, align 8, !tbaa !10
  %293 = tail call signext i32 @putc(i32 noundef signext 10, ptr noundef %292)
  %294 = add nuw nsw i32 %253, 1
  %295 = load i32, ptr @mb_height2, align 4, !tbaa !6
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %252, label %297

297:                                              ; preds = %290, %247
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @putc(i32 noundef signext, ptr nocapture noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
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
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !7, i64 20}
!14 = !{!"mbinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 56, !8, i64 72, !15, i64 80, !7, i64 88}
!15 = !{!"double", !8, i64 0}
!16 = !{!14, !7, i64 0}
!17 = !{!14, !7, i64 16}
!18 = !{!14, !7, i64 4}
!19 = !{!14, !7, i64 12}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.peeled.count", i32 1}
