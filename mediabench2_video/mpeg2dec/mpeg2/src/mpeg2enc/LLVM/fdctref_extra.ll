; ModuleID = 'fdctref.c'
source_filename = "fdctref.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@c = internal unnamed_addr global [8 x [8 x double]] zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @init_fdct() local_unnamed_addr #0 {
  store double 0x3FD6A09E667F3BCD, ptr @c, align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 8), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 16), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 24), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 32), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 40), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 48), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 56), align 8, !tbaa !6
  store double 0x3FDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 64), align 8, !tbaa !6
  store double 0x3FDA9B66290EA1A3, ptr getelementptr inbounds (i8, ptr @c, i64 72), align 8, !tbaa !6
  store double 0x3FD1C73B39AE68C9, ptr getelementptr inbounds (i8, ptr @c, i64 80), align 8, !tbaa !6
  store double 0x3FB8F8B83C69A60D, ptr getelementptr inbounds (i8, ptr @c, i64 88), align 8, !tbaa !6
  store double 0xBFB8F8B83C69A608, ptr getelementptr inbounds (i8, ptr @c, i64 96), align 8, !tbaa !6
  store double 0xBFD1C73B39AE68C6, ptr getelementptr inbounds (i8, ptr @c, i64 104), align 8, !tbaa !6
  store double 0xBFDA9B66290EA1A4, ptr getelementptr inbounds (i8, ptr @c, i64 112), align 8, !tbaa !6
  store double 0xBFDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 120), align 8, !tbaa !6
  store double 0x3FDD906BCF328D46, ptr getelementptr inbounds (i8, ptr @c, i64 128), align 8, !tbaa !6
  store double 0x3FC87DE2A6AEA964, ptr getelementptr inbounds (i8, ptr @c, i64 136), align 8, !tbaa !6
  store double 0xBFC87DE2A6AEA962, ptr getelementptr inbounds (i8, ptr @c, i64 144), align 8, !tbaa !6
  store double 0xBFDD906BCF328D46, ptr getelementptr inbounds (i8, ptr @c, i64 152), align 8, !tbaa !6
  store double 0xBFDD906BCF328D47, ptr getelementptr inbounds (i8, ptr @c, i64 160), align 8, !tbaa !6
  store double 0xBFC87DE2A6AEA96D, ptr getelementptr inbounds (i8, ptr @c, i64 168), align 8, !tbaa !6
  store double 0x3FC87DE2A6AEA967, ptr getelementptr inbounds (i8, ptr @c, i64 176), align 8, !tbaa !6
  store double 0x3FDD906BCF328D44, ptr getelementptr inbounds (i8, ptr @c, i64 184), align 8, !tbaa !6
  store double 0x3FDA9B66290EA1A3, ptr getelementptr inbounds (i8, ptr @c, i64 192), align 8, !tbaa !6
  store double 0xBFB8F8B83C69A608, ptr getelementptr inbounds (i8, ptr @c, i64 200), align 8, !tbaa !6
  store double 0xBFDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 208), align 8, !tbaa !6
  store double 0xBFD1C73B39AE68C8, ptr getelementptr inbounds (i8, ptr @c, i64 216), align 8, !tbaa !6
  store double 0x3FD1C73B39AE68C5, ptr getelementptr inbounds (i8, ptr @c, i64 224), align 8, !tbaa !6
  store double 0x3FDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 232), align 8, !tbaa !6
  store double 0x3FB8F8B83C69A61D, ptr getelementptr inbounds (i8, ptr @c, i64 240), align 8, !tbaa !6
  store double 0xBFDA9B66290EA1A2, ptr getelementptr inbounds (i8, ptr @c, i64 248), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 256), align 8, !tbaa !6
  store double 0xBFD6A09E667F3BCC, ptr getelementptr inbounds (i8, ptr @c, i64 264), align 8, !tbaa !6
  store double 0xBFD6A09E667F3BCE, ptr getelementptr inbounds (i8, ptr @c, i64 272), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCB, ptr getelementptr inbounds (i8, ptr @c, i64 280), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BCE, ptr getelementptr inbounds (i8, ptr @c, i64 288), align 8, !tbaa !6
  store double 0xBFD6A09E667F3BC5, ptr getelementptr inbounds (i8, ptr @c, i64 296), align 8, !tbaa !6
  store double 0xBFD6A09E667F3BC9, ptr getelementptr inbounds (i8, ptr @c, i64 304), align 8, !tbaa !6
  store double 0x3FD6A09E667F3BC4, ptr getelementptr inbounds (i8, ptr @c, i64 312), align 8, !tbaa !6
  store double 0x3FD1C73B39AE68C9, ptr getelementptr inbounds (i8, ptr @c, i64 320), align 8, !tbaa !6
  store double 0xBFDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 328), align 8, !tbaa !6
  store double 0x3FB8F8B83C69A60C, ptr getelementptr inbounds (i8, ptr @c, i64 336), align 8, !tbaa !6
  store double 0x3FDA9B66290EA1A5, ptr getelementptr inbounds (i8, ptr @c, i64 344), align 8, !tbaa !6
  store double 0xBFDA9B66290EA1A2, ptr getelementptr inbounds (i8, ptr @c, i64 352), align 8, !tbaa !6
  store double 0xBFB8F8B83C69A602, ptr getelementptr inbounds (i8, ptr @c, i64 360), align 8, !tbaa !6
  store double 0x3FDF6297CFF75CB2, ptr getelementptr inbounds (i8, ptr @c, i64 368), align 8, !tbaa !6
  store double 0xBFD1C73B39AE68C2, ptr getelementptr inbounds (i8, ptr @c, i64 376), align 8, !tbaa !6
  store double 0x3FC87DE2A6AEA964, ptr getelementptr inbounds (i8, ptr @c, i64 384), align 8, !tbaa !6
  store double 0xBFDD906BCF328D47, ptr getelementptr inbounds (i8, ptr @c, i64 392), align 8, !tbaa !6
  store double 0x3FDD906BCF328D44, ptr getelementptr inbounds (i8, ptr @c, i64 400), align 8, !tbaa !6
  store double 0xBFC87DE2A6AEA965, ptr getelementptr inbounds (i8, ptr @c, i64 408), align 8, !tbaa !6
  store double 0xBFC87DE2A6AEA971, ptr getelementptr inbounds (i8, ptr @c, i64 416), align 8, !tbaa !6
  store double 0x3FDD906BCF328D46, ptr getelementptr inbounds (i8, ptr @c, i64 424), align 8, !tbaa !6
  store double 0xBFDD906BCF328D43, ptr getelementptr inbounds (i8, ptr @c, i64 432), align 8, !tbaa !6
  store double 0x3FC87DE2A6AEA95F, ptr getelementptr inbounds (i8, ptr @c, i64 440), align 8, !tbaa !6
  store double 0x3FB8F8B83C69A60D, ptr getelementptr inbounds (i8, ptr @c, i64 448), align 8, !tbaa !6
  store double 0xBFD1C73B39AE68C8, ptr getelementptr inbounds (i8, ptr @c, i64 456), align 8, !tbaa !6
  store double 0x3FDA9B66290EA1A5, ptr getelementptr inbounds (i8, ptr @c, i64 464), align 8, !tbaa !6
  store double 0xBFDF6297CFF75CB2, ptr getelementptr inbounds (i8, ptr @c, i64 472), align 8, !tbaa !6
  store double 0x3FDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 480), align 8, !tbaa !6
  store double 0xBFDA9B66290EA1A1, ptr getelementptr inbounds (i8, ptr @c, i64 488), align 8, !tbaa !6
  store double 0x3FD1C73B39AE68C2, ptr getelementptr inbounds (i8, ptr @c, i64 496), align 8, !tbaa !6
  store double 0xBFB8F8B83C69A616, ptr getelementptr inbounds (i8, ptr @c, i64 504), align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @fdct(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca [64 x double], align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #4
  %3 = load double, ptr @c, align 8, !tbaa !6
  %4 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 8), align 8, !tbaa !6
  %5 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 16), align 8, !tbaa !6
  %6 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 24), align 8, !tbaa !6
  %7 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 32), align 8, !tbaa !6
  %8 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 40), align 8, !tbaa !6
  %9 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 48), align 8, !tbaa !6
  %10 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 56), align 8, !tbaa !6
  %11 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 64), align 8, !tbaa !6
  %12 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 72), align 8, !tbaa !6
  %13 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 80), align 8, !tbaa !6
  %14 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 88), align 8, !tbaa !6
  %15 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 96), align 8, !tbaa !6
  %16 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 104), align 8, !tbaa !6
  %17 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 112), align 8, !tbaa !6
  %18 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 120), align 8, !tbaa !6
  %19 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 128), align 8, !tbaa !6
  %20 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 136), align 8, !tbaa !6
  %21 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 144), align 8, !tbaa !6
  %22 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 152), align 8, !tbaa !6
  %23 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 160), align 8, !tbaa !6
  %24 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 168), align 8, !tbaa !6
  %25 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 176), align 8, !tbaa !6
  %26 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 184), align 8, !tbaa !6
  %27 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 192), align 8, !tbaa !6
  %28 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 200), align 8, !tbaa !6
  %29 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 208), align 8, !tbaa !6
  %30 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 216), align 8, !tbaa !6
  %31 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 224), align 8, !tbaa !6
  %32 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 232), align 8, !tbaa !6
  %33 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 240), align 8, !tbaa !6
  %34 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 248), align 8, !tbaa !6
  %35 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 256), align 8, !tbaa !6
  %36 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 264), align 8, !tbaa !6
  %37 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 272), align 8, !tbaa !6
  %38 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 280), align 8, !tbaa !6
  %39 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 288), align 8, !tbaa !6
  %40 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 296), align 8, !tbaa !6
  %41 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 304), align 8, !tbaa !6
  %42 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 312), align 8, !tbaa !6
  %43 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 320), align 8, !tbaa !6
  %44 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 328), align 8, !tbaa !6
  %45 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 336), align 8, !tbaa !6
  %46 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 344), align 8, !tbaa !6
  %47 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 352), align 8, !tbaa !6
  %48 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 360), align 8, !tbaa !6
  %49 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 368), align 8, !tbaa !6
  %50 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 376), align 8, !tbaa !6
  %51 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 384), align 8, !tbaa !6
  %52 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 392), align 8, !tbaa !6
  %53 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 400), align 8, !tbaa !6
  %54 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 408), align 8, !tbaa !6
  %55 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 416), align 8, !tbaa !6
  %56 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 424), align 8, !tbaa !6
  %57 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 432), align 8, !tbaa !6
  %58 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 440), align 8, !tbaa !6
  %59 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 448), align 8, !tbaa !6
  %60 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 456), align 8, !tbaa !6
  %61 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 464), align 8, !tbaa !6
  %62 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 472), align 8, !tbaa !6
  %63 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 480), align 8, !tbaa !6
  %64 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 488), align 8, !tbaa !6
  %65 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 496), align 8, !tbaa !6
  %66 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 504), align 8, !tbaa !6
  br label %67

67:                                               ; preds = %1, %67
  %68 = phi i64 [ 0, %1 ], [ %189, %67 ]
  %69 = shl nuw nsw i64 %68, 3
  %70 = getelementptr inbounds i16, ptr %0, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !10
  %72 = sitofp i16 %71 to double
  %73 = tail call double @llvm.fmuladd.f64(double %3, double %72, double 0.000000e+00)
  %74 = or disjoint i64 %69, 1
  %75 = getelementptr inbounds i16, ptr %0, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !10
  %77 = sitofp i16 %76 to double
  %78 = tail call double @llvm.fmuladd.f64(double %4, double %77, double %73)
  %79 = or disjoint i64 %69, 2
  %80 = getelementptr inbounds i16, ptr %0, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !10
  %82 = sitofp i16 %81 to double
  %83 = tail call double @llvm.fmuladd.f64(double %5, double %82, double %78)
  %84 = or disjoint i64 %69, 3
  %85 = getelementptr inbounds i16, ptr %0, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !10
  %87 = sitofp i16 %86 to double
  %88 = tail call double @llvm.fmuladd.f64(double %6, double %87, double %83)
  %89 = or disjoint i64 %69, 4
  %90 = getelementptr inbounds i16, ptr %0, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !10
  %92 = sitofp i16 %91 to double
  %93 = tail call double @llvm.fmuladd.f64(double %7, double %92, double %88)
  %94 = or disjoint i64 %69, 5
  %95 = getelementptr inbounds i16, ptr %0, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !10
  %97 = sitofp i16 %96 to double
  %98 = tail call double @llvm.fmuladd.f64(double %8, double %97, double %93)
  %99 = or disjoint i64 %69, 6
  %100 = getelementptr inbounds i16, ptr %0, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !10
  %102 = sitofp i16 %101 to double
  %103 = tail call double @llvm.fmuladd.f64(double %9, double %102, double %98)
  %104 = or disjoint i64 %69, 7
  %105 = getelementptr inbounds i16, ptr %0, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !10
  %107 = sitofp i16 %106 to double
  %108 = tail call double @llvm.fmuladd.f64(double %10, double %107, double %103)
  %109 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %69
  store double %108, ptr %109, align 8, !tbaa !6
  %110 = tail call double @llvm.fmuladd.f64(double %11, double %72, double 0.000000e+00)
  %111 = tail call double @llvm.fmuladd.f64(double %12, double %77, double %110)
  %112 = tail call double @llvm.fmuladd.f64(double %13, double %82, double %111)
  %113 = tail call double @llvm.fmuladd.f64(double %14, double %87, double %112)
  %114 = tail call double @llvm.fmuladd.f64(double %15, double %92, double %113)
  %115 = tail call double @llvm.fmuladd.f64(double %16, double %97, double %114)
  %116 = tail call double @llvm.fmuladd.f64(double %17, double %102, double %115)
  %117 = tail call double @llvm.fmuladd.f64(double %18, double %107, double %116)
  %118 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %74
  store double %117, ptr %118, align 8, !tbaa !6
  %119 = tail call double @llvm.fmuladd.f64(double %19, double %72, double 0.000000e+00)
  %120 = tail call double @llvm.fmuladd.f64(double %20, double %77, double %119)
  %121 = tail call double @llvm.fmuladd.f64(double %21, double %82, double %120)
  %122 = tail call double @llvm.fmuladd.f64(double %22, double %87, double %121)
  %123 = tail call double @llvm.fmuladd.f64(double %23, double %92, double %122)
  %124 = tail call double @llvm.fmuladd.f64(double %24, double %97, double %123)
  %125 = tail call double @llvm.fmuladd.f64(double %25, double %102, double %124)
  %126 = tail call double @llvm.fmuladd.f64(double %26, double %107, double %125)
  %127 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %79
  store double %126, ptr %127, align 8, !tbaa !6
  %128 = tail call double @llvm.fmuladd.f64(double %27, double %72, double 0.000000e+00)
  %129 = tail call double @llvm.fmuladd.f64(double %28, double %77, double %128)
  %130 = tail call double @llvm.fmuladd.f64(double %29, double %82, double %129)
  %131 = tail call double @llvm.fmuladd.f64(double %30, double %87, double %130)
  %132 = tail call double @llvm.fmuladd.f64(double %31, double %92, double %131)
  %133 = tail call double @llvm.fmuladd.f64(double %32, double %97, double %132)
  %134 = tail call double @llvm.fmuladd.f64(double %33, double %102, double %133)
  %135 = tail call double @llvm.fmuladd.f64(double %34, double %107, double %134)
  %136 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %84
  store double %135, ptr %136, align 8, !tbaa !6
  %137 = load i16, ptr %70, align 2, !tbaa !10
  %138 = sitofp i16 %137 to double
  %139 = tail call double @llvm.fmuladd.f64(double %35, double %138, double 0.000000e+00)
  %140 = load i16, ptr %75, align 2, !tbaa !10
  %141 = sitofp i16 %140 to double
  %142 = tail call double @llvm.fmuladd.f64(double %36, double %141, double %139)
  %143 = tail call double @llvm.fmuladd.f64(double %37, double %82, double %142)
  %144 = tail call double @llvm.fmuladd.f64(double %38, double %87, double %143)
  %145 = tail call double @llvm.fmuladd.f64(double %39, double %92, double %144)
  %146 = tail call double @llvm.fmuladd.f64(double %40, double %97, double %145)
  %147 = tail call double @llvm.fmuladd.f64(double %41, double %102, double %146)
  %148 = tail call double @llvm.fmuladd.f64(double %42, double %107, double %147)
  %149 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %89
  store double %148, ptr %149, align 8, !tbaa !6
  %150 = tail call double @llvm.fmuladd.f64(double %43, double %138, double 0.000000e+00)
  %151 = tail call double @llvm.fmuladd.f64(double %44, double %141, double %150)
  %152 = load i16, ptr %80, align 2, !tbaa !10
  %153 = sitofp i16 %152 to double
  %154 = tail call double @llvm.fmuladd.f64(double %45, double %153, double %151)
  %155 = load i16, ptr %85, align 2, !tbaa !10
  %156 = sitofp i16 %155 to double
  %157 = tail call double @llvm.fmuladd.f64(double %46, double %156, double %154)
  %158 = load i16, ptr %90, align 2, !tbaa !10
  %159 = sitofp i16 %158 to double
  %160 = tail call double @llvm.fmuladd.f64(double %47, double %159, double %157)
  %161 = load i16, ptr %95, align 2, !tbaa !10
  %162 = sitofp i16 %161 to double
  %163 = tail call double @llvm.fmuladd.f64(double %48, double %162, double %160)
  %164 = load i16, ptr %100, align 2, !tbaa !10
  %165 = sitofp i16 %164 to double
  %166 = tail call double @llvm.fmuladd.f64(double %49, double %165, double %163)
  %167 = load i16, ptr %105, align 2, !tbaa !10
  %168 = sitofp i16 %167 to double
  %169 = tail call double @llvm.fmuladd.f64(double %50, double %168, double %166)
  %170 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %94
  store double %169, ptr %170, align 8, !tbaa !6
  %171 = tail call double @llvm.fmuladd.f64(double %51, double %138, double 0.000000e+00)
  %172 = tail call double @llvm.fmuladd.f64(double %52, double %141, double %171)
  %173 = tail call double @llvm.fmuladd.f64(double %53, double %153, double %172)
  %174 = tail call double @llvm.fmuladd.f64(double %54, double %156, double %173)
  %175 = tail call double @llvm.fmuladd.f64(double %55, double %159, double %174)
  %176 = tail call double @llvm.fmuladd.f64(double %56, double %162, double %175)
  %177 = tail call double @llvm.fmuladd.f64(double %57, double %165, double %176)
  %178 = tail call double @llvm.fmuladd.f64(double %58, double %168, double %177)
  %179 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %99
  store double %178, ptr %179, align 8, !tbaa !6
  %180 = tail call double @llvm.fmuladd.f64(double %59, double %138, double 0.000000e+00)
  %181 = tail call double @llvm.fmuladd.f64(double %60, double %141, double %180)
  %182 = tail call double @llvm.fmuladd.f64(double %61, double %153, double %181)
  %183 = tail call double @llvm.fmuladd.f64(double %62, double %156, double %182)
  %184 = tail call double @llvm.fmuladd.f64(double %63, double %159, double %183)
  %185 = tail call double @llvm.fmuladd.f64(double %64, double %162, double %184)
  %186 = tail call double @llvm.fmuladd.f64(double %65, double %165, double %185)
  %187 = tail call double @llvm.fmuladd.f64(double %66, double %168, double %186)
  %188 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %104
  store double %187, ptr %188, align 8, !tbaa !6
  %189 = add nuw nsw i64 %68, 1
  %190 = icmp eq i64 %189, 8
  br i1 %190, label %191, label %67

191:                                              ; preds = %67
  %192 = load double, ptr @c, align 8, !tbaa !6
  %193 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 8), align 8, !tbaa !6
  %194 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 16), align 8, !tbaa !6
  %195 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 24), align 8, !tbaa !6
  %196 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 32), align 8, !tbaa !6
  %197 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 40), align 8, !tbaa !6
  %198 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 48), align 8, !tbaa !6
  %199 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 56), align 8, !tbaa !6
  %200 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 64), align 8, !tbaa !6
  %201 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 72), align 8, !tbaa !6
  %202 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 80), align 8, !tbaa !6
  %203 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 88), align 8, !tbaa !6
  %204 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 96), align 8, !tbaa !6
  %205 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 104), align 8, !tbaa !6
  %206 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 112), align 8, !tbaa !6
  %207 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 120), align 8, !tbaa !6
  %208 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 128), align 8, !tbaa !6
  %209 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 136), align 8, !tbaa !6
  %210 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 144), align 8, !tbaa !6
  %211 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 152), align 8, !tbaa !6
  %212 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 160), align 8, !tbaa !6
  %213 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 168), align 8, !tbaa !6
  %214 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 176), align 8, !tbaa !6
  %215 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 184), align 8, !tbaa !6
  %216 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 192), align 8, !tbaa !6
  %217 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 200), align 8, !tbaa !6
  %218 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 208), align 8, !tbaa !6
  %219 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 216), align 8, !tbaa !6
  %220 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 224), align 8, !tbaa !6
  %221 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 232), align 8, !tbaa !6
  %222 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 240), align 8, !tbaa !6
  %223 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 248), align 8, !tbaa !6
  %224 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 256), align 8, !tbaa !6
  %225 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 264), align 8, !tbaa !6
  %226 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 272), align 8, !tbaa !6
  %227 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 280), align 8, !tbaa !6
  %228 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 288), align 8, !tbaa !6
  %229 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 296), align 8, !tbaa !6
  %230 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 304), align 8, !tbaa !6
  %231 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 312), align 8, !tbaa !6
  %232 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 320), align 8, !tbaa !6
  %233 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 328), align 8, !tbaa !6
  %234 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 336), align 8, !tbaa !6
  %235 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 344), align 8, !tbaa !6
  %236 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 352), align 8, !tbaa !6
  %237 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 360), align 8, !tbaa !6
  %238 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 368), align 8, !tbaa !6
  %239 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 376), align 8, !tbaa !6
  %240 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 384), align 8, !tbaa !6
  %241 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 392), align 8, !tbaa !6
  %242 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 400), align 8, !tbaa !6
  %243 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 408), align 8, !tbaa !6
  %244 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 416), align 8, !tbaa !6
  %245 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 424), align 8, !tbaa !6
  %246 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 432), align 8, !tbaa !6
  %247 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 440), align 8, !tbaa !6
  %248 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 448), align 8, !tbaa !6
  %249 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 456), align 8, !tbaa !6
  %250 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 464), align 8, !tbaa !6
  %251 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 472), align 8, !tbaa !6
  %252 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 480), align 8, !tbaa !6
  %253 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 488), align 8, !tbaa !6
  %254 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 496), align 8, !tbaa !6
  %255 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 504), align 8, !tbaa !6
  br label %256

256:                                              ; preds = %191, %256
  %257 = phi i64 [ 0, %191 ], [ %393, %256 ]
  %258 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %257
  %259 = load double, ptr %258, align 8, !tbaa !6
  %260 = tail call double @llvm.fmuladd.f64(double %192, double %259, double 0.000000e+00)
  %261 = add nuw nsw i64 %257, 8
  %262 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %261
  %263 = load double, ptr %262, align 8, !tbaa !6
  %264 = tail call double @llvm.fmuladd.f64(double %193, double %263, double %260)
  %265 = add nuw nsw i64 %257, 16
  %266 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %265
  %267 = load double, ptr %266, align 8, !tbaa !6
  %268 = tail call double @llvm.fmuladd.f64(double %194, double %267, double %264)
  %269 = add nuw nsw i64 %257, 24
  %270 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %269
  %271 = load double, ptr %270, align 8, !tbaa !6
  %272 = tail call double @llvm.fmuladd.f64(double %195, double %271, double %268)
  %273 = add nuw nsw i64 %257, 32
  %274 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %273
  %275 = load double, ptr %274, align 8, !tbaa !6
  %276 = tail call double @llvm.fmuladd.f64(double %196, double %275, double %272)
  %277 = add nuw nsw i64 %257, 40
  %278 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %277
  %279 = load double, ptr %278, align 8, !tbaa !6
  %280 = tail call double @llvm.fmuladd.f64(double %197, double %279, double %276)
  %281 = add nuw nsw i64 %257, 48
  %282 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %281
  %283 = load double, ptr %282, align 8, !tbaa !6
  %284 = tail call double @llvm.fmuladd.f64(double %198, double %283, double %280)
  %285 = add nuw nsw i64 %257, 56
  %286 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %285
  %287 = load double, ptr %286, align 8, !tbaa !6
  %288 = tail call double @llvm.fmuladd.f64(double %199, double %287, double %284)
  %289 = fadd double %288, 4.999990e-01
  %290 = tail call double @llvm.floor.f64(double %289)
  %291 = fptosi double %290 to i32
  %292 = trunc i32 %291 to i16
  %293 = getelementptr inbounds i16, ptr %0, i64 %257
  store i16 %292, ptr %293, align 2, !tbaa !10
  %294 = tail call double @llvm.fmuladd.f64(double %200, double %259, double 0.000000e+00)
  %295 = tail call double @llvm.fmuladd.f64(double %201, double %263, double %294)
  %296 = tail call double @llvm.fmuladd.f64(double %202, double %267, double %295)
  %297 = tail call double @llvm.fmuladd.f64(double %203, double %271, double %296)
  %298 = tail call double @llvm.fmuladd.f64(double %204, double %275, double %297)
  %299 = tail call double @llvm.fmuladd.f64(double %205, double %279, double %298)
  %300 = tail call double @llvm.fmuladd.f64(double %206, double %283, double %299)
  %301 = tail call double @llvm.fmuladd.f64(double %207, double %287, double %300)
  %302 = fadd double %301, 4.999990e-01
  %303 = tail call double @llvm.floor.f64(double %302)
  %304 = fptosi double %303 to i32
  %305 = trunc i32 %304 to i16
  %306 = getelementptr inbounds i16, ptr %0, i64 %261
  store i16 %305, ptr %306, align 2, !tbaa !10
  %307 = tail call double @llvm.fmuladd.f64(double %208, double %259, double 0.000000e+00)
  %308 = tail call double @llvm.fmuladd.f64(double %209, double %263, double %307)
  %309 = tail call double @llvm.fmuladd.f64(double %210, double %267, double %308)
  %310 = tail call double @llvm.fmuladd.f64(double %211, double %271, double %309)
  %311 = tail call double @llvm.fmuladd.f64(double %212, double %275, double %310)
  %312 = tail call double @llvm.fmuladd.f64(double %213, double %279, double %311)
  %313 = tail call double @llvm.fmuladd.f64(double %214, double %283, double %312)
  %314 = tail call double @llvm.fmuladd.f64(double %215, double %287, double %313)
  %315 = fadd double %314, 4.999990e-01
  %316 = tail call double @llvm.floor.f64(double %315)
  %317 = fptosi double %316 to i32
  %318 = trunc i32 %317 to i16
  %319 = getelementptr inbounds i16, ptr %0, i64 %265
  store i16 %318, ptr %319, align 2, !tbaa !10
  %320 = tail call double @llvm.fmuladd.f64(double %216, double %259, double 0.000000e+00)
  %321 = tail call double @llvm.fmuladd.f64(double %217, double %263, double %320)
  %322 = tail call double @llvm.fmuladd.f64(double %218, double %267, double %321)
  %323 = tail call double @llvm.fmuladd.f64(double %219, double %271, double %322)
  %324 = tail call double @llvm.fmuladd.f64(double %220, double %275, double %323)
  %325 = tail call double @llvm.fmuladd.f64(double %221, double %279, double %324)
  %326 = tail call double @llvm.fmuladd.f64(double %222, double %283, double %325)
  %327 = tail call double @llvm.fmuladd.f64(double %223, double %287, double %326)
  %328 = fadd double %327, 4.999990e-01
  %329 = tail call double @llvm.floor.f64(double %328)
  %330 = fptosi double %329 to i32
  %331 = trunc i32 %330 to i16
  %332 = getelementptr inbounds i16, ptr %0, i64 %269
  store i16 %331, ptr %332, align 2, !tbaa !10
  %333 = load double, ptr %258, align 8, !tbaa !6
  %334 = tail call double @llvm.fmuladd.f64(double %224, double %333, double 0.000000e+00)
  %335 = load double, ptr %262, align 8, !tbaa !6
  %336 = tail call double @llvm.fmuladd.f64(double %225, double %335, double %334)
  %337 = load double, ptr %266, align 8, !tbaa !6
  %338 = tail call double @llvm.fmuladd.f64(double %226, double %337, double %336)
  %339 = load double, ptr %270, align 8, !tbaa !6
  %340 = tail call double @llvm.fmuladd.f64(double %227, double %339, double %338)
  %341 = load double, ptr %274, align 8, !tbaa !6
  %342 = tail call double @llvm.fmuladd.f64(double %228, double %341, double %340)
  %343 = load double, ptr %278, align 8, !tbaa !6
  %344 = tail call double @llvm.fmuladd.f64(double %229, double %343, double %342)
  %345 = tail call double @llvm.fmuladd.f64(double %230, double %283, double %344)
  %346 = tail call double @llvm.fmuladd.f64(double %231, double %287, double %345)
  %347 = fadd double %346, 4.999990e-01
  %348 = tail call double @llvm.floor.f64(double %347)
  %349 = fptosi double %348 to i32
  %350 = trunc i32 %349 to i16
  %351 = getelementptr inbounds i16, ptr %0, i64 %273
  store i16 %350, ptr %351, align 2, !tbaa !10
  %352 = tail call double @llvm.fmuladd.f64(double %232, double %333, double 0.000000e+00)
  %353 = tail call double @llvm.fmuladd.f64(double %233, double %335, double %352)
  %354 = tail call double @llvm.fmuladd.f64(double %234, double %337, double %353)
  %355 = tail call double @llvm.fmuladd.f64(double %235, double %339, double %354)
  %356 = tail call double @llvm.fmuladd.f64(double %236, double %341, double %355)
  %357 = tail call double @llvm.fmuladd.f64(double %237, double %343, double %356)
  %358 = load double, ptr %282, align 8, !tbaa !6
  %359 = tail call double @llvm.fmuladd.f64(double %238, double %358, double %357)
  %360 = load double, ptr %286, align 8, !tbaa !6
  %361 = tail call double @llvm.fmuladd.f64(double %239, double %360, double %359)
  %362 = fadd double %361, 4.999990e-01
  %363 = tail call double @llvm.floor.f64(double %362)
  %364 = fptosi double %363 to i32
  %365 = trunc i32 %364 to i16
  %366 = getelementptr inbounds i16, ptr %0, i64 %277
  store i16 %365, ptr %366, align 2, !tbaa !10
  %367 = tail call double @llvm.fmuladd.f64(double %240, double %333, double 0.000000e+00)
  %368 = tail call double @llvm.fmuladd.f64(double %241, double %335, double %367)
  %369 = tail call double @llvm.fmuladd.f64(double %242, double %337, double %368)
  %370 = tail call double @llvm.fmuladd.f64(double %243, double %339, double %369)
  %371 = tail call double @llvm.fmuladd.f64(double %244, double %341, double %370)
  %372 = tail call double @llvm.fmuladd.f64(double %245, double %343, double %371)
  %373 = tail call double @llvm.fmuladd.f64(double %246, double %358, double %372)
  %374 = tail call double @llvm.fmuladd.f64(double %247, double %360, double %373)
  %375 = fadd double %374, 4.999990e-01
  %376 = tail call double @llvm.floor.f64(double %375)
  %377 = fptosi double %376 to i32
  %378 = trunc i32 %377 to i16
  %379 = getelementptr inbounds i16, ptr %0, i64 %281
  store i16 %378, ptr %379, align 2, !tbaa !10
  %380 = tail call double @llvm.fmuladd.f64(double %248, double %333, double 0.000000e+00)
  %381 = tail call double @llvm.fmuladd.f64(double %249, double %335, double %380)
  %382 = tail call double @llvm.fmuladd.f64(double %250, double %337, double %381)
  %383 = tail call double @llvm.fmuladd.f64(double %251, double %339, double %382)
  %384 = tail call double @llvm.fmuladd.f64(double %252, double %341, double %383)
  %385 = tail call double @llvm.fmuladd.f64(double %253, double %343, double %384)
  %386 = tail call double @llvm.fmuladd.f64(double %254, double %358, double %385)
  %387 = tail call double @llvm.fmuladd.f64(double %255, double %360, double %386)
  %388 = fadd double %387, 4.999990e-01
  %389 = tail call double @llvm.floor.f64(double %388)
  %390 = fptosi double %389 to i32
  %391 = trunc i32 %390 to i16
  %392 = getelementptr inbounds i16, ptr %0, i64 %285
  store i16 %391, ptr %392, align 2, !tbaa !10
  %393 = add nuw nsw i64 %257, 1
  %394 = icmp eq i64 %393, 8
  br i1 %394, label %395, label %256

395:                                              ; preds = %256
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !8, i64 0}
