; ModuleID = 'idctref.c'
source_filename = "idctref.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@c = internal unnamed_addr global [8 x [8 x double]] zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @init_idctref() local_unnamed_addr #0 {
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
define dso_local void @idctref(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca [64 x double], align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #5
  %3 = load double, ptr @c, align 8, !tbaa !6
  %4 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 64), align 8, !tbaa !6
  %5 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 128), align 8, !tbaa !6
  %6 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 192), align 8, !tbaa !6
  %7 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 256), align 8, !tbaa !6
  %8 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 320), align 8, !tbaa !6
  %9 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 384), align 8, !tbaa !6
  %10 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 448), align 8, !tbaa !6
  %11 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 8), align 8, !tbaa !6
  %12 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 72), align 8, !tbaa !6
  %13 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 136), align 8, !tbaa !6
  %14 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 200), align 8, !tbaa !6
  %15 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 264), align 8, !tbaa !6
  %16 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 328), align 8, !tbaa !6
  %17 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 392), align 8, !tbaa !6
  %18 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 456), align 8, !tbaa !6
  %19 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 16), align 8, !tbaa !6
  %20 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 80), align 8, !tbaa !6
  %21 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 144), align 8, !tbaa !6
  %22 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 208), align 8, !tbaa !6
  %23 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 272), align 8, !tbaa !6
  %24 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 336), align 8, !tbaa !6
  %25 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 400), align 8, !tbaa !6
  %26 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 464), align 8, !tbaa !6
  %27 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 24), align 8, !tbaa !6
  %28 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 88), align 8, !tbaa !6
  %29 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 152), align 8, !tbaa !6
  %30 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 216), align 8, !tbaa !6
  %31 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 280), align 8, !tbaa !6
  %32 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 344), align 8, !tbaa !6
  %33 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 408), align 8, !tbaa !6
  %34 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 472), align 8, !tbaa !6
  %35 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 32), align 8, !tbaa !6
  %36 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 96), align 8, !tbaa !6
  %37 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 160), align 8, !tbaa !6
  %38 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 224), align 8, !tbaa !6
  %39 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 288), align 8, !tbaa !6
  %40 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 352), align 8, !tbaa !6
  %41 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 416), align 8, !tbaa !6
  %42 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 480), align 8, !tbaa !6
  %43 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 40), align 8, !tbaa !6
  %44 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 104), align 8, !tbaa !6
  %45 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 168), align 8, !tbaa !6
  %46 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 232), align 8, !tbaa !6
  %47 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 296), align 8, !tbaa !6
  %48 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 360), align 8, !tbaa !6
  %49 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 424), align 8, !tbaa !6
  %50 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 488), align 8, !tbaa !6
  %51 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 48), align 8, !tbaa !6
  %52 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 112), align 8, !tbaa !6
  %53 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 176), align 8, !tbaa !6
  %54 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 240), align 8, !tbaa !6
  %55 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 304), align 8, !tbaa !6
  %56 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 368), align 8, !tbaa !6
  %57 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 432), align 8, !tbaa !6
  %58 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 496), align 8, !tbaa !6
  %59 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 56), align 8, !tbaa !6
  %60 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 120), align 8, !tbaa !6
  %61 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 184), align 8, !tbaa !6
  %62 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 248), align 8, !tbaa !6
  %63 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 312), align 8, !tbaa !6
  %64 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 376), align 8, !tbaa !6
  %65 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 440), align 8, !tbaa !6
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
  %193 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 64), align 8, !tbaa !6
  %194 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 128), align 8, !tbaa !6
  %195 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 192), align 8, !tbaa !6
  %196 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 256), align 8, !tbaa !6
  %197 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 320), align 8, !tbaa !6
  %198 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 384), align 8, !tbaa !6
  %199 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 448), align 8, !tbaa !6
  %200 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 8), align 8, !tbaa !6
  %201 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 72), align 8, !tbaa !6
  %202 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 136), align 8, !tbaa !6
  %203 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 200), align 8, !tbaa !6
  %204 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 264), align 8, !tbaa !6
  %205 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 328), align 8, !tbaa !6
  %206 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 392), align 8, !tbaa !6
  %207 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 456), align 8, !tbaa !6
  %208 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 16), align 8, !tbaa !6
  %209 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 80), align 8, !tbaa !6
  %210 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 144), align 8, !tbaa !6
  %211 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 208), align 8, !tbaa !6
  %212 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 272), align 8, !tbaa !6
  %213 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 336), align 8, !tbaa !6
  %214 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 400), align 8, !tbaa !6
  %215 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 464), align 8, !tbaa !6
  %216 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 24), align 8, !tbaa !6
  %217 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 88), align 8, !tbaa !6
  %218 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 152), align 8, !tbaa !6
  %219 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 216), align 8, !tbaa !6
  %220 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 280), align 8, !tbaa !6
  %221 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 344), align 8, !tbaa !6
  %222 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 408), align 8, !tbaa !6
  %223 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 472), align 8, !tbaa !6
  %224 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 32), align 8, !tbaa !6
  %225 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 96), align 8, !tbaa !6
  %226 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 160), align 8, !tbaa !6
  %227 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 224), align 8, !tbaa !6
  %228 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 288), align 8, !tbaa !6
  %229 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 352), align 8, !tbaa !6
  %230 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 416), align 8, !tbaa !6
  %231 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 480), align 8, !tbaa !6
  %232 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 40), align 8, !tbaa !6
  %233 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 104), align 8, !tbaa !6
  %234 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 168), align 8, !tbaa !6
  %235 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 232), align 8, !tbaa !6
  %236 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 296), align 8, !tbaa !6
  %237 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 360), align 8, !tbaa !6
  %238 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 424), align 8, !tbaa !6
  %239 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 488), align 8, !tbaa !6
  %240 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 48), align 8, !tbaa !6
  %241 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 112), align 8, !tbaa !6
  %242 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 176), align 8, !tbaa !6
  %243 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 240), align 8, !tbaa !6
  %244 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 304), align 8, !tbaa !6
  %245 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 368), align 8, !tbaa !6
  %246 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 432), align 8, !tbaa !6
  %247 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 496), align 8, !tbaa !6
  %248 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 56), align 8, !tbaa !6
  %249 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 120), align 8, !tbaa !6
  %250 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 184), align 8, !tbaa !6
  %251 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 248), align 8, !tbaa !6
  %252 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 312), align 8, !tbaa !6
  %253 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 376), align 8, !tbaa !6
  %254 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 440), align 8, !tbaa !6
  %255 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 504), align 8, !tbaa !6
  br label %256

256:                                              ; preds = %191, %256
  %257 = phi i64 [ %401, %256 ], [ 0, %191 ]
  %258 = getelementptr inbounds i16, ptr %0, i64 %257
  %259 = add nuw nsw i64 %257, 56
  %260 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %259
  %261 = load double, ptr %260, align 8, !tbaa !6
  %262 = add nuw nsw i64 %257, 48
  %263 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %262
  %264 = load double, ptr %263, align 8, !tbaa !6
  %265 = add nuw nsw i64 %257, 40
  %266 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %265
  %267 = load double, ptr %266, align 8, !tbaa !6
  %268 = add nuw nsw i64 %257, 32
  %269 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %268
  %270 = load double, ptr %269, align 8, !tbaa !6
  %271 = add nuw nsw i64 %257, 24
  %272 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %271
  %273 = load double, ptr %272, align 8, !tbaa !6
  %274 = add nuw nsw i64 %257, 16
  %275 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %274
  %276 = load double, ptr %275, align 8, !tbaa !6
  %277 = add nuw nsw i64 %257, 8
  %278 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %277
  %279 = load double, ptr %278, align 8, !tbaa !6
  %280 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %257
  %281 = load double, ptr %280, align 8, !tbaa !6
  %282 = tail call double @llvm.fmuladd.f64(double %192, double %281, double 0.000000e+00)
  %283 = tail call double @llvm.fmuladd.f64(double %193, double %279, double %282)
  %284 = tail call double @llvm.fmuladd.f64(double %194, double %276, double %283)
  %285 = tail call double @llvm.fmuladd.f64(double %195, double %273, double %284)
  %286 = tail call double @llvm.fmuladd.f64(double %196, double %270, double %285)
  %287 = tail call double @llvm.fmuladd.f64(double %197, double %267, double %286)
  %288 = tail call double @llvm.fmuladd.f64(double %198, double %264, double %287)
  %289 = tail call double @llvm.fmuladd.f64(double %199, double %261, double %288)
  %290 = fadd double %289, 5.000000e-01
  %291 = tail call double @llvm.floor.f64(double %290)
  %292 = fptosi double %291 to i32
  %293 = tail call i32 @llvm.smin.i32(i32 %292, i32 255)
  %294 = tail call i32 @llvm.smax.i32(i32 %293, i32 -256)
  %295 = trunc nsw i32 %294 to i16
  store i16 %295, ptr %258, align 2, !tbaa !10
  %296 = tail call double @llvm.fmuladd.f64(double %200, double %281, double 0.000000e+00)
  %297 = tail call double @llvm.fmuladd.f64(double %201, double %279, double %296)
  %298 = tail call double @llvm.fmuladd.f64(double %202, double %276, double %297)
  %299 = tail call double @llvm.fmuladd.f64(double %203, double %273, double %298)
  %300 = tail call double @llvm.fmuladd.f64(double %204, double %270, double %299)
  %301 = tail call double @llvm.fmuladd.f64(double %205, double %267, double %300)
  %302 = tail call double @llvm.fmuladd.f64(double %206, double %264, double %301)
  %303 = tail call double @llvm.fmuladd.f64(double %207, double %261, double %302)
  %304 = fadd double %303, 5.000000e-01
  %305 = tail call double @llvm.floor.f64(double %304)
  %306 = fptosi double %305 to i32
  %307 = tail call i32 @llvm.smin.i32(i32 %306, i32 255)
  %308 = tail call i32 @llvm.smax.i32(i32 %307, i32 -256)
  %309 = trunc nsw i32 %308 to i16
  %310 = getelementptr inbounds i8, ptr %258, i64 16
  store i16 %309, ptr %310, align 2, !tbaa !10
  %311 = tail call double @llvm.fmuladd.f64(double %208, double %281, double 0.000000e+00)
  %312 = tail call double @llvm.fmuladd.f64(double %209, double %279, double %311)
  %313 = tail call double @llvm.fmuladd.f64(double %210, double %276, double %312)
  %314 = tail call double @llvm.fmuladd.f64(double %211, double %273, double %313)
  %315 = tail call double @llvm.fmuladd.f64(double %212, double %270, double %314)
  %316 = tail call double @llvm.fmuladd.f64(double %213, double %267, double %315)
  %317 = tail call double @llvm.fmuladd.f64(double %214, double %264, double %316)
  %318 = tail call double @llvm.fmuladd.f64(double %215, double %261, double %317)
  %319 = fadd double %318, 5.000000e-01
  %320 = tail call double @llvm.floor.f64(double %319)
  %321 = fptosi double %320 to i32
  %322 = tail call i32 @llvm.smin.i32(i32 %321, i32 255)
  %323 = tail call i32 @llvm.smax.i32(i32 %322, i32 -256)
  %324 = trunc nsw i32 %323 to i16
  %325 = getelementptr inbounds i8, ptr %258, i64 32
  store i16 %324, ptr %325, align 2, !tbaa !10
  %326 = tail call double @llvm.fmuladd.f64(double %216, double %281, double 0.000000e+00)
  %327 = tail call double @llvm.fmuladd.f64(double %217, double %279, double %326)
  %328 = tail call double @llvm.fmuladd.f64(double %218, double %276, double %327)
  %329 = tail call double @llvm.fmuladd.f64(double %219, double %273, double %328)
  %330 = tail call double @llvm.fmuladd.f64(double %220, double %270, double %329)
  %331 = tail call double @llvm.fmuladd.f64(double %221, double %267, double %330)
  %332 = tail call double @llvm.fmuladd.f64(double %222, double %264, double %331)
  %333 = tail call double @llvm.fmuladd.f64(double %223, double %261, double %332)
  %334 = fadd double %333, 5.000000e-01
  %335 = tail call double @llvm.floor.f64(double %334)
  %336 = fptosi double %335 to i32
  %337 = tail call i32 @llvm.smin.i32(i32 %336, i32 255)
  %338 = tail call i32 @llvm.smax.i32(i32 %337, i32 -256)
  %339 = trunc nsw i32 %338 to i16
  %340 = getelementptr inbounds i8, ptr %258, i64 48
  store i16 %339, ptr %340, align 2, !tbaa !10
  %341 = tail call double @llvm.fmuladd.f64(double %224, double %281, double 0.000000e+00)
  %342 = tail call double @llvm.fmuladd.f64(double %225, double %279, double %341)
  %343 = tail call double @llvm.fmuladd.f64(double %226, double %276, double %342)
  %344 = tail call double @llvm.fmuladd.f64(double %227, double %273, double %343)
  %345 = tail call double @llvm.fmuladd.f64(double %228, double %270, double %344)
  %346 = tail call double @llvm.fmuladd.f64(double %229, double %267, double %345)
  %347 = tail call double @llvm.fmuladd.f64(double %230, double %264, double %346)
  %348 = tail call double @llvm.fmuladd.f64(double %231, double %261, double %347)
  %349 = fadd double %348, 5.000000e-01
  %350 = tail call double @llvm.floor.f64(double %349)
  %351 = fptosi double %350 to i32
  %352 = tail call i32 @llvm.smin.i32(i32 %351, i32 255)
  %353 = tail call i32 @llvm.smax.i32(i32 %352, i32 -256)
  %354 = trunc nsw i32 %353 to i16
  %355 = getelementptr inbounds i8, ptr %258, i64 64
  store i16 %354, ptr %355, align 2, !tbaa !10
  %356 = tail call double @llvm.fmuladd.f64(double %232, double %281, double 0.000000e+00)
  %357 = tail call double @llvm.fmuladd.f64(double %233, double %279, double %356)
  %358 = tail call double @llvm.fmuladd.f64(double %234, double %276, double %357)
  %359 = tail call double @llvm.fmuladd.f64(double %235, double %273, double %358)
  %360 = tail call double @llvm.fmuladd.f64(double %236, double %270, double %359)
  %361 = tail call double @llvm.fmuladd.f64(double %237, double %267, double %360)
  %362 = tail call double @llvm.fmuladd.f64(double %238, double %264, double %361)
  %363 = tail call double @llvm.fmuladd.f64(double %239, double %261, double %362)
  %364 = fadd double %363, 5.000000e-01
  %365 = tail call double @llvm.floor.f64(double %364)
  %366 = fptosi double %365 to i32
  %367 = tail call i32 @llvm.smin.i32(i32 %366, i32 255)
  %368 = tail call i32 @llvm.smax.i32(i32 %367, i32 -256)
  %369 = trunc nsw i32 %368 to i16
  %370 = getelementptr inbounds i8, ptr %258, i64 80
  store i16 %369, ptr %370, align 2, !tbaa !10
  %371 = tail call double @llvm.fmuladd.f64(double %240, double %281, double 0.000000e+00)
  %372 = tail call double @llvm.fmuladd.f64(double %241, double %279, double %371)
  %373 = tail call double @llvm.fmuladd.f64(double %242, double %276, double %372)
  %374 = tail call double @llvm.fmuladd.f64(double %243, double %273, double %373)
  %375 = tail call double @llvm.fmuladd.f64(double %244, double %270, double %374)
  %376 = tail call double @llvm.fmuladd.f64(double %245, double %267, double %375)
  %377 = tail call double @llvm.fmuladd.f64(double %246, double %264, double %376)
  %378 = tail call double @llvm.fmuladd.f64(double %247, double %261, double %377)
  %379 = fadd double %378, 5.000000e-01
  %380 = tail call double @llvm.floor.f64(double %379)
  %381 = fptosi double %380 to i32
  %382 = tail call i32 @llvm.smin.i32(i32 %381, i32 255)
  %383 = tail call i32 @llvm.smax.i32(i32 %382, i32 -256)
  %384 = trunc nsw i32 %383 to i16
  %385 = getelementptr inbounds i8, ptr %258, i64 96
  store i16 %384, ptr %385, align 2, !tbaa !10
  %386 = tail call double @llvm.fmuladd.f64(double %248, double %281, double 0.000000e+00)
  %387 = tail call double @llvm.fmuladd.f64(double %249, double %279, double %386)
  %388 = tail call double @llvm.fmuladd.f64(double %250, double %276, double %387)
  %389 = tail call double @llvm.fmuladd.f64(double %251, double %273, double %388)
  %390 = tail call double @llvm.fmuladd.f64(double %252, double %270, double %389)
  %391 = tail call double @llvm.fmuladd.f64(double %253, double %267, double %390)
  %392 = tail call double @llvm.fmuladd.f64(double %254, double %264, double %391)
  %393 = tail call double @llvm.fmuladd.f64(double %255, double %261, double %392)
  %394 = fadd double %393, 5.000000e-01
  %395 = tail call double @llvm.floor.f64(double %394)
  %396 = fptosi double %395 to i32
  %397 = tail call i32 @llvm.smin.i32(i32 %396, i32 255)
  %398 = tail call i32 @llvm.smax.i32(i32 %397, i32 -256)
  %399 = trunc nsw i32 %398 to i16
  %400 = getelementptr inbounds i8, ptr %258, i64 112
  store i16 %399, ptr %400, align 2, !tbaa !10
  %401 = add nuw nsw i64 %257, 1
  %402 = icmp eq i64 %401, 8
  br i1 %402, label %403, label %256

403:                                              ; preds = %256
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
