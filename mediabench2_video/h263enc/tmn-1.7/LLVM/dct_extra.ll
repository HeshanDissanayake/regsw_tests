; ModuleID = 'dct.c'
source_filename = "dct.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@zigzag = dso_local local_unnamed_addr global [8 x [8 x i32]] [[8 x i32] [i32 0, i32 1, i32 5, i32 6, i32 14, i32 15, i32 27, i32 28], [8 x i32] [i32 2, i32 4, i32 7, i32 13, i32 16, i32 26, i32 29, i32 42], [8 x i32] [i32 3, i32 8, i32 12, i32 17, i32 25, i32 30, i32 41, i32 43], [8 x i32] [i32 9, i32 11, i32 18, i32 24, i32 31, i32 40, i32 44, i32 53], [8 x i32] [i32 10, i32 19, i32 23, i32 32, i32 39, i32 45, i32 52, i32 54], [8 x i32] [i32 20, i32 22, i32 33, i32 38, i32 46, i32 51, i32 55, i32 60], [8 x i32] [i32 21, i32 34, i32 37, i32 47, i32 50, i32 56, i32 59, i32 61], [8 x i32] [i32 35, i32 36, i32 48, i32 49, i32 57, i32 58, i32 62, i32 63]], align 4
@c = internal unnamed_addr global [8 x [8 x double]] zeroinitializer, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local noundef signext i32 @Dct(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [8 x [8 x float]], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #5
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %83, %4 ]
  %6 = phi i64 [ 0, %2 ], [ %82, %4 ]
  %7 = getelementptr inbounds i32, ptr %0, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = sitofp i32 %8 to float
  %10 = or disjoint i64 %5, 1
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !6
  %13 = sitofp i32 %12 to float
  %14 = or disjoint i64 %5, 2
  %15 = getelementptr inbounds i32, ptr %0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !6
  %17 = sitofp i32 %16 to float
  %18 = or disjoint i64 %5, 3
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !6
  %21 = sitofp i32 %20 to float
  %22 = or disjoint i64 %5, 4
  %23 = getelementptr inbounds i32, ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !6
  %25 = sitofp i32 %24 to float
  %26 = or disjoint i64 %5, 5
  %27 = getelementptr inbounds i32, ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !6
  %29 = sitofp i32 %28 to float
  %30 = or disjoint i64 %5, 6
  %31 = getelementptr inbounds i32, ptr %0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !6
  %33 = sitofp i32 %32 to float
  %34 = or disjoint i64 %5, 7
  %35 = getelementptr inbounds i32, ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !6
  %37 = sitofp i32 %36 to float
  %38 = fadd float %9, %37
  %39 = fsub float %9, %37
  %40 = fadd float %13, %33
  %41 = fsub float %13, %33
  %42 = fadd float %17, %29
  %43 = fsub float %17, %29
  %44 = fadd float %21, %25
  %45 = fsub float %21, %25
  %46 = fadd float %38, %44
  %47 = fadd float %40, %42
  %48 = fsub float %40, %42
  %49 = fsub float %38, %44
  %50 = fsub float %41, %43
  %51 = fmul float %50, 0x3FE6A09E80000000
  %52 = fadd float %41, %43
  %53 = fmul float %52, 0x3FE6A09E80000000
  %54 = fadd float %46, %47
  %55 = fmul float %54, 0x3FD6A09E80000000
  %56 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 %6
  store float %55, ptr %56, align 4, !tbaa !10
  %57 = fsub float %46, %47
  %58 = fmul float %57, 0x3FD6A09E80000000
  %59 = getelementptr inbounds i8, ptr %56, i64 16
  store float %58, ptr %59, align 4, !tbaa !10
  %60 = fmul float %49, 0x3FDD906C00000000
  %61 = tail call float @llvm.fmuladd.f32(float %48, float 0x3FC87DE280000000, float %60)
  %62 = getelementptr inbounds i8, ptr %56, i64 8
  store float %61, ptr %62, align 4, !tbaa !10
  %63 = fmul float %48, 0xBFDD906C00000000
  %64 = tail call float @llvm.fmuladd.f32(float %49, float 0x3FC87DE280000000, float %63)
  %65 = getelementptr inbounds i8, ptr %56, i64 24
  store float %64, ptr %65, align 4, !tbaa !10
  %66 = fadd float %45, %51
  %67 = fadd float %53, %39
  %68 = fsub float %45, %51
  %69 = fsub float %39, %53
  %70 = fmul float %67, 0x3FDF6297A0000000
  %71 = tail call float @llvm.fmuladd.f32(float %66, float 0x3FB8F8B8E0000000, float %70)
  %72 = getelementptr inbounds i8, ptr %56, i64 4
  store float %71, ptr %72, align 4, !tbaa !10
  %73 = fmul float %69, 0x3FD1C73B20000000
  %74 = tail call float @llvm.fmuladd.f32(float %68, float 0x3FDA9B6620000000, float %73)
  %75 = getelementptr inbounds i8, ptr %56, i64 20
  store float %74, ptr %75, align 4, !tbaa !10
  %76 = fmul float %66, 0xBFDF6297A0000000
  %77 = tail call float @llvm.fmuladd.f32(float %67, float 0x3FB8F8B8E0000000, float %76)
  %78 = getelementptr inbounds i8, ptr %56, i64 28
  store float %77, ptr %78, align 4, !tbaa !10
  %79 = fmul float %68, 0xBFD1C73B20000000
  %80 = tail call float @llvm.fmuladd.f32(float %69, float 0x3FDA9B6620000000, float %79)
  %81 = getelementptr inbounds i8, ptr %56, i64 12
  store float %80, ptr %81, align 4, !tbaa !10
  %82 = add nuw nsw i64 %6, 1
  %83 = add nuw nsw i64 %5, 8
  %84 = icmp eq i64 %82, 8
  br i1 %84, label %85, label %4

85:                                               ; preds = %4
  %86 = getelementptr inbounds i8, ptr %3, i64 128
  %87 = getelementptr inbounds i8, ptr %3, i64 64
  %88 = getelementptr inbounds i8, ptr %3, i64 192
  %89 = getelementptr inbounds i8, ptr %3, i64 32
  %90 = getelementptr inbounds i8, ptr %3, i64 160
  %91 = getelementptr inbounds i8, ptr %3, i64 224
  %92 = getelementptr inbounds i8, ptr %3, i64 96
  br label %93

93:                                               ; preds = %85, %93
  %94 = phi i64 [ 0, %85 ], [ %154, %93 ]
  %95 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 0, i64 %94
  %96 = load float, ptr %95, align 4, !tbaa !10
  %97 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 7, i64 %94
  %98 = load float, ptr %97, align 4, !tbaa !10
  %99 = fadd float %96, %98
  %100 = fsub float %96, %98
  %101 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 1, i64 %94
  %102 = load float, ptr %101, align 4, !tbaa !10
  %103 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 6, i64 %94
  %104 = load float, ptr %103, align 4, !tbaa !10
  %105 = fadd float %102, %104
  %106 = fsub float %102, %104
  %107 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 2, i64 %94
  %108 = load float, ptr %107, align 4, !tbaa !10
  %109 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 5, i64 %94
  %110 = load float, ptr %109, align 4, !tbaa !10
  %111 = fadd float %108, %110
  %112 = fsub float %108, %110
  %113 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 3, i64 %94
  %114 = load float, ptr %113, align 4, !tbaa !10
  %115 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 4, i64 %94
  %116 = load float, ptr %115, align 4, !tbaa !10
  %117 = fadd float %114, %116
  %118 = fsub float %114, %116
  %119 = fadd float %99, %117
  %120 = fadd float %105, %111
  %121 = fsub float %105, %111
  %122 = fsub float %99, %117
  %123 = fsub float %106, %112
  %124 = fmul float %123, 0x3FE6A09E80000000
  %125 = fadd float %106, %112
  %126 = fmul float %125, 0x3FE6A09E80000000
  %127 = fadd float %119, %120
  %128 = fmul float %127, 0x3FD6A09E80000000
  store float %128, ptr %95, align 4, !tbaa !10
  %129 = fsub float %119, %120
  %130 = fmul float %129, 0x3FD6A09E80000000
  %131 = getelementptr inbounds [8 x float], ptr %86, i64 0, i64 %94
  store float %130, ptr %131, align 4, !tbaa !10
  %132 = fmul float %122, 0x3FDD906C00000000
  %133 = tail call float @llvm.fmuladd.f32(float %121, float 0x3FC87DE280000000, float %132)
  %134 = getelementptr inbounds [8 x float], ptr %87, i64 0, i64 %94
  store float %133, ptr %134, align 4, !tbaa !10
  %135 = fmul float %121, 0xBFDD906C00000000
  %136 = tail call float @llvm.fmuladd.f32(float %122, float 0x3FC87DE280000000, float %135)
  %137 = getelementptr inbounds [8 x float], ptr %88, i64 0, i64 %94
  store float %136, ptr %137, align 4, !tbaa !10
  %138 = fadd float %118, %124
  %139 = fadd float %126, %100
  %140 = fsub float %118, %124
  %141 = fsub float %100, %126
  %142 = fmul float %139, 0x3FDF6297A0000000
  %143 = tail call float @llvm.fmuladd.f32(float %138, float 0x3FB8F8B8E0000000, float %142)
  %144 = getelementptr inbounds [8 x float], ptr %89, i64 0, i64 %94
  store float %143, ptr %144, align 4, !tbaa !10
  %145 = fmul float %141, 0x3FD1C73B20000000
  %146 = tail call float @llvm.fmuladd.f32(float %140, float 0x3FDA9B6620000000, float %145)
  %147 = getelementptr inbounds [8 x float], ptr %90, i64 0, i64 %94
  store float %146, ptr %147, align 4, !tbaa !10
  %148 = fmul float %138, 0xBFDF6297A0000000
  %149 = tail call float @llvm.fmuladd.f32(float %139, float 0x3FB8F8B8E0000000, float %148)
  %150 = getelementptr inbounds [8 x float], ptr %91, i64 0, i64 %94
  store float %149, ptr %150, align 4, !tbaa !10
  %151 = fmul float %140, 0xBFD1C73B20000000
  %152 = tail call float @llvm.fmuladd.f32(float %141, float 0x3FDA9B6620000000, float %151)
  %153 = getelementptr inbounds [8 x float], ptr %92, i64 0, i64 %94
  store float %152, ptr %153, align 4, !tbaa !10
  %154 = add nuw nsw i64 %94, 1
  %155 = icmp eq i64 %154, 8
  br i1 %155, label %156, label %93

156:                                              ; preds = %93, %156
  %157 = phi i64 [ %214, %156 ], [ 0, %93 ]
  %158 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 %157, i64 0
  %159 = load float, ptr %158, align 4, !tbaa !10
  %160 = fptosi float %159 to i32
  %161 = getelementptr inbounds [8 x [8 x i32]], ptr @zigzag, i64 0, i64 %157, i64 0
  %162 = load i32, ptr %161, align 4, !tbaa !6
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, ptr %1, i64 %163
  store i32 %160, ptr %164, align 4, !tbaa !6
  %165 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 %157, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !10
  %167 = fptosi float %166 to i32
  %168 = getelementptr inbounds [8 x [8 x i32]], ptr @zigzag, i64 0, i64 %157, i64 1
  %169 = load i32, ptr %168, align 4, !tbaa !6
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, ptr %1, i64 %170
  store i32 %167, ptr %171, align 4, !tbaa !6
  %172 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 %157, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !10
  %174 = fptosi float %173 to i32
  %175 = getelementptr inbounds [8 x [8 x i32]], ptr @zigzag, i64 0, i64 %157, i64 2
  %176 = load i32, ptr %175, align 4, !tbaa !6
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %1, i64 %177
  store i32 %174, ptr %178, align 4, !tbaa !6
  %179 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 %157, i64 3
  %180 = load float, ptr %179, align 4, !tbaa !10
  %181 = fptosi float %180 to i32
  %182 = getelementptr inbounds [8 x [8 x i32]], ptr @zigzag, i64 0, i64 %157, i64 3
  %183 = load i32, ptr %182, align 4, !tbaa !6
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, ptr %1, i64 %184
  store i32 %181, ptr %185, align 4, !tbaa !6
  %186 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 %157, i64 4
  %187 = load float, ptr %186, align 4, !tbaa !10
  %188 = fptosi float %187 to i32
  %189 = getelementptr inbounds [8 x [8 x i32]], ptr @zigzag, i64 0, i64 %157, i64 4
  %190 = load i32, ptr %189, align 4, !tbaa !6
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, ptr %1, i64 %191
  store i32 %188, ptr %192, align 4, !tbaa !6
  %193 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 %157, i64 5
  %194 = load float, ptr %193, align 4, !tbaa !10
  %195 = fptosi float %194 to i32
  %196 = getelementptr inbounds [8 x [8 x i32]], ptr @zigzag, i64 0, i64 %157, i64 5
  %197 = load i32, ptr %196, align 4, !tbaa !6
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, ptr %1, i64 %198
  store i32 %195, ptr %199, align 4, !tbaa !6
  %200 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 %157, i64 6
  %201 = load float, ptr %200, align 4, !tbaa !10
  %202 = fptosi float %201 to i32
  %203 = getelementptr inbounds [8 x [8 x i32]], ptr @zigzag, i64 0, i64 %157, i64 6
  %204 = load i32, ptr %203, align 4, !tbaa !6
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, ptr %1, i64 %205
  store i32 %202, ptr %206, align 4, !tbaa !6
  %207 = getelementptr inbounds [8 x [8 x float]], ptr %3, i64 0, i64 %157, i64 7
  %208 = load float, ptr %207, align 4, !tbaa !10
  %209 = fptosi float %208 to i32
  %210 = getelementptr inbounds [8 x [8 x i32]], ptr @zigzag, i64 0, i64 %157, i64 7
  %211 = load i32, ptr %210, align 4, !tbaa !6
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, ptr %1, i64 %212
  store i32 %209, ptr %213, align 4, !tbaa !6
  %214 = add nuw nsw i64 %157, 1
  %215 = icmp eq i64 %214, 8
  br i1 %215, label %216, label %156

216:                                              ; preds = %156
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @init_idctref() local_unnamed_addr #3 {
  store double 0x3FD6A09E667F3BCD, ptr @c, align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 8), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 16), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 24), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 32), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 40), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 48), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 56), align 8, !tbaa !12
  store double 0x3FDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 64), align 8, !tbaa !12
  store double 0x3FDA9B66290EA1A3, ptr getelementptr inbounds (i8, ptr @c, i64 72), align 8, !tbaa !12
  store double 0x3FD1C73B39AE68C9, ptr getelementptr inbounds (i8, ptr @c, i64 80), align 8, !tbaa !12
  store double 0x3FB8F8B83C69A60D, ptr getelementptr inbounds (i8, ptr @c, i64 88), align 8, !tbaa !12
  store double 0xBFB8F8B83C69A608, ptr getelementptr inbounds (i8, ptr @c, i64 96), align 8, !tbaa !12
  store double 0xBFD1C73B39AE68C6, ptr getelementptr inbounds (i8, ptr @c, i64 104), align 8, !tbaa !12
  store double 0xBFDA9B66290EA1A4, ptr getelementptr inbounds (i8, ptr @c, i64 112), align 8, !tbaa !12
  store double 0xBFDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 120), align 8, !tbaa !12
  store double 0x3FDD906BCF328D46, ptr getelementptr inbounds (i8, ptr @c, i64 128), align 8, !tbaa !12
  store double 0x3FC87DE2A6AEA964, ptr getelementptr inbounds (i8, ptr @c, i64 136), align 8, !tbaa !12
  store double 0xBFC87DE2A6AEA962, ptr getelementptr inbounds (i8, ptr @c, i64 144), align 8, !tbaa !12
  store double 0xBFDD906BCF328D46, ptr getelementptr inbounds (i8, ptr @c, i64 152), align 8, !tbaa !12
  store double 0xBFDD906BCF328D47, ptr getelementptr inbounds (i8, ptr @c, i64 160), align 8, !tbaa !12
  store double 0xBFC87DE2A6AEA96D, ptr getelementptr inbounds (i8, ptr @c, i64 168), align 8, !tbaa !12
  store double 0x3FC87DE2A6AEA967, ptr getelementptr inbounds (i8, ptr @c, i64 176), align 8, !tbaa !12
  store double 0x3FDD906BCF328D44, ptr getelementptr inbounds (i8, ptr @c, i64 184), align 8, !tbaa !12
  store double 0x3FDA9B66290EA1A3, ptr getelementptr inbounds (i8, ptr @c, i64 192), align 8, !tbaa !12
  store double 0xBFB8F8B83C69A608, ptr getelementptr inbounds (i8, ptr @c, i64 200), align 8, !tbaa !12
  store double 0xBFDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 208), align 8, !tbaa !12
  store double 0xBFD1C73B39AE68C8, ptr getelementptr inbounds (i8, ptr @c, i64 216), align 8, !tbaa !12
  store double 0x3FD1C73B39AE68C5, ptr getelementptr inbounds (i8, ptr @c, i64 224), align 8, !tbaa !12
  store double 0x3FDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 232), align 8, !tbaa !12
  store double 0x3FB8F8B83C69A61D, ptr getelementptr inbounds (i8, ptr @c, i64 240), align 8, !tbaa !12
  store double 0xBFDA9B66290EA1A2, ptr getelementptr inbounds (i8, ptr @c, i64 248), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCD, ptr getelementptr inbounds (i8, ptr @c, i64 256), align 8, !tbaa !12
  store double 0xBFD6A09E667F3BCC, ptr getelementptr inbounds (i8, ptr @c, i64 264), align 8, !tbaa !12
  store double 0xBFD6A09E667F3BCE, ptr getelementptr inbounds (i8, ptr @c, i64 272), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCB, ptr getelementptr inbounds (i8, ptr @c, i64 280), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BCE, ptr getelementptr inbounds (i8, ptr @c, i64 288), align 8, !tbaa !12
  store double 0xBFD6A09E667F3BC5, ptr getelementptr inbounds (i8, ptr @c, i64 296), align 8, !tbaa !12
  store double 0xBFD6A09E667F3BC9, ptr getelementptr inbounds (i8, ptr @c, i64 304), align 8, !tbaa !12
  store double 0x3FD6A09E667F3BC4, ptr getelementptr inbounds (i8, ptr @c, i64 312), align 8, !tbaa !12
  store double 0x3FD1C73B39AE68C9, ptr getelementptr inbounds (i8, ptr @c, i64 320), align 8, !tbaa !12
  store double 0xBFDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 328), align 8, !tbaa !12
  store double 0x3FB8F8B83C69A60C, ptr getelementptr inbounds (i8, ptr @c, i64 336), align 8, !tbaa !12
  store double 0x3FDA9B66290EA1A5, ptr getelementptr inbounds (i8, ptr @c, i64 344), align 8, !tbaa !12
  store double 0xBFDA9B66290EA1A2, ptr getelementptr inbounds (i8, ptr @c, i64 352), align 8, !tbaa !12
  store double 0xBFB8F8B83C69A602, ptr getelementptr inbounds (i8, ptr @c, i64 360), align 8, !tbaa !12
  store double 0x3FDF6297CFF75CB2, ptr getelementptr inbounds (i8, ptr @c, i64 368), align 8, !tbaa !12
  store double 0xBFD1C73B39AE68C2, ptr getelementptr inbounds (i8, ptr @c, i64 376), align 8, !tbaa !12
  store double 0x3FC87DE2A6AEA964, ptr getelementptr inbounds (i8, ptr @c, i64 384), align 8, !tbaa !12
  store double 0xBFDD906BCF328D47, ptr getelementptr inbounds (i8, ptr @c, i64 392), align 8, !tbaa !12
  store double 0x3FDD906BCF328D44, ptr getelementptr inbounds (i8, ptr @c, i64 400), align 8, !tbaa !12
  store double 0xBFC87DE2A6AEA965, ptr getelementptr inbounds (i8, ptr @c, i64 408), align 8, !tbaa !12
  store double 0xBFC87DE2A6AEA971, ptr getelementptr inbounds (i8, ptr @c, i64 416), align 8, !tbaa !12
  store double 0x3FDD906BCF328D46, ptr getelementptr inbounds (i8, ptr @c, i64 424), align 8, !tbaa !12
  store double 0xBFDD906BCF328D43, ptr getelementptr inbounds (i8, ptr @c, i64 432), align 8, !tbaa !12
  store double 0x3FC87DE2A6AEA95F, ptr getelementptr inbounds (i8, ptr @c, i64 440), align 8, !tbaa !12
  store double 0x3FB8F8B83C69A60D, ptr getelementptr inbounds (i8, ptr @c, i64 448), align 8, !tbaa !12
  store double 0xBFD1C73B39AE68C8, ptr getelementptr inbounds (i8, ptr @c, i64 456), align 8, !tbaa !12
  store double 0x3FDA9B66290EA1A5, ptr getelementptr inbounds (i8, ptr @c, i64 464), align 8, !tbaa !12
  store double 0xBFDF6297CFF75CB2, ptr getelementptr inbounds (i8, ptr @c, i64 472), align 8, !tbaa !12
  store double 0x3FDF6297CFF75CB0, ptr getelementptr inbounds (i8, ptr @c, i64 480), align 8, !tbaa !12
  store double 0xBFDA9B66290EA1A1, ptr getelementptr inbounds (i8, ptr @c, i64 488), align 8, !tbaa !12
  store double 0x3FD1C73B39AE68C2, ptr getelementptr inbounds (i8, ptr @c, i64 496), align 8, !tbaa !12
  store double 0xBFB8F8B83C69A616, ptr getelementptr inbounds (i8, ptr @c, i64 504), align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local void @idctref(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [64 x double], align 8
  %4 = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #5
  %5 = load i32, ptr @zigzag, align 4, !tbaa !6
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !6
  store i32 %8, ptr %4, align 4, !tbaa !6
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 4), align 4, !tbaa !6
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %12, ptr %13, align 4, !tbaa !6
  %14 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 8), align 4, !tbaa !6
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %17, ptr %18, align 4, !tbaa !6
  %19 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 12), align 4, !tbaa !6
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %4, i64 12
  store i32 %22, ptr %23, align 4, !tbaa !6
  %24 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 16), align 4, !tbaa !6
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 %27, ptr %28, align 4, !tbaa !6
  %29 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 20), align 4, !tbaa !6
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %4, i64 20
  store i32 %32, ptr %33, align 4, !tbaa !6
  %34 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 24), align 4, !tbaa !6
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 %37, ptr %38, align 4, !tbaa !6
  %39 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 28), align 4, !tbaa !6
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %4, i64 28
  store i32 %42, ptr %43, align 4, !tbaa !6
  %44 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 32), align 4, !tbaa !6
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %4, i64 32
  store i32 %47, ptr %48, align 4, !tbaa !6
  %49 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 36), align 4, !tbaa !6
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %4, i64 36
  store i32 %52, ptr %53, align 4, !tbaa !6
  %54 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 40), align 4, !tbaa !6
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %4, i64 40
  store i32 %57, ptr %58, align 4, !tbaa !6
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 44), align 4, !tbaa !6
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %4, i64 44
  store i32 %62, ptr %63, align 4, !tbaa !6
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 48), align 4, !tbaa !6
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !6
  %68 = getelementptr inbounds i8, ptr %4, i64 48
  store i32 %67, ptr %68, align 4, !tbaa !6
  %69 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 52), align 4, !tbaa !6
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %4, i64 52
  store i32 %72, ptr %73, align 4, !tbaa !6
  %74 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 56), align 4, !tbaa !6
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !6
  %78 = getelementptr inbounds i8, ptr %4, i64 56
  store i32 %77, ptr %78, align 4, !tbaa !6
  %79 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 60), align 4, !tbaa !6
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !6
  %83 = getelementptr inbounds i8, ptr %4, i64 60
  store i32 %82, ptr %83, align 4, !tbaa !6
  %84 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 64), align 4, !tbaa !6
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %4, i64 64
  store i32 %87, ptr %88, align 4, !tbaa !6
  %89 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 68), align 4, !tbaa !6
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !6
  %93 = getelementptr inbounds i8, ptr %4, i64 68
  store i32 %92, ptr %93, align 4, !tbaa !6
  %94 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 72), align 4, !tbaa !6
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !6
  %98 = getelementptr inbounds i8, ptr %4, i64 72
  store i32 %97, ptr %98, align 4, !tbaa !6
  %99 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 76), align 4, !tbaa !6
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !6
  %103 = getelementptr inbounds i8, ptr %4, i64 76
  store i32 %102, ptr %103, align 4, !tbaa !6
  %104 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 80), align 4, !tbaa !6
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !6
  %108 = getelementptr inbounds i8, ptr %4, i64 80
  store i32 %107, ptr %108, align 4, !tbaa !6
  %109 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 84), align 4, !tbaa !6
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !6
  %113 = getelementptr inbounds i8, ptr %4, i64 84
  store i32 %112, ptr %113, align 4, !tbaa !6
  %114 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 88), align 4, !tbaa !6
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !6
  %118 = getelementptr inbounds i8, ptr %4, i64 88
  store i32 %117, ptr %118, align 4, !tbaa !6
  %119 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 92), align 4, !tbaa !6
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !6
  %123 = getelementptr inbounds i8, ptr %4, i64 92
  store i32 %122, ptr %123, align 4, !tbaa !6
  %124 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 96), align 4, !tbaa !6
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !6
  %128 = getelementptr inbounds i8, ptr %4, i64 96
  store i32 %127, ptr %128, align 4, !tbaa !6
  %129 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 100), align 4, !tbaa !6
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !6
  %133 = getelementptr inbounds i8, ptr %4, i64 100
  store i32 %132, ptr %133, align 4, !tbaa !6
  %134 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 104), align 4, !tbaa !6
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !6
  %138 = getelementptr inbounds i8, ptr %4, i64 104
  store i32 %137, ptr %138, align 4, !tbaa !6
  %139 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 108), align 4, !tbaa !6
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, ptr %0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !6
  %143 = getelementptr inbounds i8, ptr %4, i64 108
  store i32 %142, ptr %143, align 4, !tbaa !6
  %144 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 112), align 4, !tbaa !6
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !6
  %148 = getelementptr inbounds i8, ptr %4, i64 112
  store i32 %147, ptr %148, align 4, !tbaa !6
  %149 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 116), align 4, !tbaa !6
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, ptr %0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !6
  %153 = getelementptr inbounds i8, ptr %4, i64 116
  store i32 %152, ptr %153, align 4, !tbaa !6
  %154 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 120), align 4, !tbaa !6
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !6
  %158 = getelementptr inbounds i8, ptr %4, i64 120
  store i32 %157, ptr %158, align 4, !tbaa !6
  %159 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 124), align 4, !tbaa !6
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, ptr %0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !6
  %163 = getelementptr inbounds i8, ptr %4, i64 124
  store i32 %162, ptr %163, align 4, !tbaa !6
  %164 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 128), align 4, !tbaa !6
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !6
  %168 = getelementptr inbounds i8, ptr %4, i64 128
  store i32 %167, ptr %168, align 4, !tbaa !6
  %169 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 132), align 4, !tbaa !6
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, ptr %0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !6
  %173 = getelementptr inbounds i8, ptr %4, i64 132
  store i32 %172, ptr %173, align 4, !tbaa !6
  %174 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 136), align 4, !tbaa !6
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, ptr %0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !6
  %178 = getelementptr inbounds i8, ptr %4, i64 136
  store i32 %177, ptr %178, align 4, !tbaa !6
  %179 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 140), align 4, !tbaa !6
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, ptr %0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !6
  %183 = getelementptr inbounds i8, ptr %4, i64 140
  store i32 %182, ptr %183, align 4, !tbaa !6
  %184 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 144), align 4, !tbaa !6
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !6
  %188 = getelementptr inbounds i8, ptr %4, i64 144
  store i32 %187, ptr %188, align 4, !tbaa !6
  %189 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 148), align 4, !tbaa !6
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, ptr %0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !6
  %193 = getelementptr inbounds i8, ptr %4, i64 148
  store i32 %192, ptr %193, align 4, !tbaa !6
  %194 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 152), align 4, !tbaa !6
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, ptr %0, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !6
  %198 = getelementptr inbounds i8, ptr %4, i64 152
  store i32 %197, ptr %198, align 4, !tbaa !6
  %199 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 156), align 4, !tbaa !6
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, ptr %0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !6
  %203 = getelementptr inbounds i8, ptr %4, i64 156
  store i32 %202, ptr %203, align 4, !tbaa !6
  %204 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 160), align 4, !tbaa !6
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, ptr %0, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !6
  %208 = getelementptr inbounds i8, ptr %4, i64 160
  store i32 %207, ptr %208, align 4, !tbaa !6
  %209 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 164), align 4, !tbaa !6
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, ptr %0, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !6
  %213 = getelementptr inbounds i8, ptr %4, i64 164
  store i32 %212, ptr %213, align 4, !tbaa !6
  %214 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 168), align 4, !tbaa !6
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, ptr %0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !6
  %218 = getelementptr inbounds i8, ptr %4, i64 168
  store i32 %217, ptr %218, align 4, !tbaa !6
  %219 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 172), align 4, !tbaa !6
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, ptr %0, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !6
  %223 = getelementptr inbounds i8, ptr %4, i64 172
  store i32 %222, ptr %223, align 4, !tbaa !6
  %224 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 176), align 4, !tbaa !6
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, ptr %0, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !6
  %228 = getelementptr inbounds i8, ptr %4, i64 176
  store i32 %227, ptr %228, align 4, !tbaa !6
  %229 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 180), align 4, !tbaa !6
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, ptr %0, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !6
  %233 = getelementptr inbounds i8, ptr %4, i64 180
  store i32 %232, ptr %233, align 4, !tbaa !6
  %234 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 184), align 4, !tbaa !6
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, ptr %0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !6
  %238 = getelementptr inbounds i8, ptr %4, i64 184
  store i32 %237, ptr %238, align 4, !tbaa !6
  %239 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 188), align 4, !tbaa !6
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, ptr %0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !6
  %243 = getelementptr inbounds i8, ptr %4, i64 188
  store i32 %242, ptr %243, align 4, !tbaa !6
  %244 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 192), align 4, !tbaa !6
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, ptr %0, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !6
  %248 = getelementptr inbounds i8, ptr %4, i64 192
  store i32 %247, ptr %248, align 4, !tbaa !6
  %249 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 196), align 4, !tbaa !6
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, ptr %0, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !6
  %253 = getelementptr inbounds i8, ptr %4, i64 196
  store i32 %252, ptr %253, align 4, !tbaa !6
  %254 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 200), align 4, !tbaa !6
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, ptr %0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !6
  %258 = getelementptr inbounds i8, ptr %4, i64 200
  store i32 %257, ptr %258, align 4, !tbaa !6
  %259 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 204), align 4, !tbaa !6
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, ptr %0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %4, i64 204
  store i32 %262, ptr %263, align 4, !tbaa !6
  %264 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 208), align 4, !tbaa !6
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, ptr %0, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !6
  %268 = getelementptr inbounds i8, ptr %4, i64 208
  store i32 %267, ptr %268, align 4, !tbaa !6
  %269 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 212), align 4, !tbaa !6
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, ptr %0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !6
  %273 = getelementptr inbounds i8, ptr %4, i64 212
  store i32 %272, ptr %273, align 4, !tbaa !6
  %274 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 216), align 4, !tbaa !6
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, ptr %0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !6
  %278 = getelementptr inbounds i8, ptr %4, i64 216
  store i32 %277, ptr %278, align 4, !tbaa !6
  %279 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 220), align 4, !tbaa !6
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, ptr %0, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !6
  %283 = getelementptr inbounds i8, ptr %4, i64 220
  store i32 %282, ptr %283, align 4, !tbaa !6
  %284 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 224), align 4, !tbaa !6
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, ptr %0, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !6
  %288 = getelementptr inbounds i8, ptr %4, i64 224
  store i32 %287, ptr %288, align 4, !tbaa !6
  %289 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 228), align 4, !tbaa !6
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, ptr %0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !6
  %293 = getelementptr inbounds i8, ptr %4, i64 228
  store i32 %292, ptr %293, align 4, !tbaa !6
  %294 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 232), align 4, !tbaa !6
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, ptr %0, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !6
  %298 = getelementptr inbounds i8, ptr %4, i64 232
  store i32 %297, ptr %298, align 4, !tbaa !6
  %299 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 236), align 4, !tbaa !6
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, ptr %0, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !6
  %303 = getelementptr inbounds i8, ptr %4, i64 236
  store i32 %302, ptr %303, align 4, !tbaa !6
  %304 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 240), align 4, !tbaa !6
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, ptr %0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !6
  %308 = getelementptr inbounds i8, ptr %4, i64 240
  store i32 %307, ptr %308, align 4, !tbaa !6
  %309 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 244), align 4, !tbaa !6
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, ptr %0, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !6
  %313 = getelementptr inbounds i8, ptr %4, i64 244
  store i32 %312, ptr %313, align 4, !tbaa !6
  %314 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 248), align 4, !tbaa !6
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, ptr %0, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !6
  %318 = getelementptr inbounds i8, ptr %4, i64 248
  store i32 %317, ptr %318, align 4, !tbaa !6
  %319 = load i32, ptr getelementptr inbounds (i8, ptr @zigzag, i64 252), align 4, !tbaa !6
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, ptr %0, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !6
  %323 = getelementptr inbounds i8, ptr %4, i64 252
  store i32 %322, ptr %323, align 4, !tbaa !6
  %324 = load double, ptr @c, align 8, !tbaa !12
  %325 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 64), align 8, !tbaa !12
  %326 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 128), align 8, !tbaa !12
  %327 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 192), align 8, !tbaa !12
  %328 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 256), align 8, !tbaa !12
  %329 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 320), align 8, !tbaa !12
  %330 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 384), align 8, !tbaa !12
  %331 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 448), align 8, !tbaa !12
  %332 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 8), align 8, !tbaa !12
  %333 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 72), align 8, !tbaa !12
  %334 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 136), align 8, !tbaa !12
  %335 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 200), align 8, !tbaa !12
  %336 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 264), align 8, !tbaa !12
  %337 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 328), align 8, !tbaa !12
  %338 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 392), align 8, !tbaa !12
  %339 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 456), align 8, !tbaa !12
  %340 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 16), align 8, !tbaa !12
  %341 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 80), align 8, !tbaa !12
  %342 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 144), align 8, !tbaa !12
  %343 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 208), align 8, !tbaa !12
  %344 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 272), align 8, !tbaa !12
  %345 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 336), align 8, !tbaa !12
  %346 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 400), align 8, !tbaa !12
  %347 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 464), align 8, !tbaa !12
  %348 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 24), align 8, !tbaa !12
  %349 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 88), align 8, !tbaa !12
  %350 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 152), align 8, !tbaa !12
  %351 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 216), align 8, !tbaa !12
  %352 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 280), align 8, !tbaa !12
  %353 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 344), align 8, !tbaa !12
  %354 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 408), align 8, !tbaa !12
  %355 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 472), align 8, !tbaa !12
  %356 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 32), align 8, !tbaa !12
  %357 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 96), align 8, !tbaa !12
  %358 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 160), align 8, !tbaa !12
  %359 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 224), align 8, !tbaa !12
  %360 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 288), align 8, !tbaa !12
  %361 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 352), align 8, !tbaa !12
  %362 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 416), align 8, !tbaa !12
  %363 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 480), align 8, !tbaa !12
  %364 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 40), align 8, !tbaa !12
  %365 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 104), align 8, !tbaa !12
  %366 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 168), align 8, !tbaa !12
  %367 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 232), align 8, !tbaa !12
  %368 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 296), align 8, !tbaa !12
  %369 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 360), align 8, !tbaa !12
  %370 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 424), align 8, !tbaa !12
  %371 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 488), align 8, !tbaa !12
  %372 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 48), align 8, !tbaa !12
  %373 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 112), align 8, !tbaa !12
  %374 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 176), align 8, !tbaa !12
  %375 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 240), align 8, !tbaa !12
  %376 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 304), align 8, !tbaa !12
  %377 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 368), align 8, !tbaa !12
  %378 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 432), align 8, !tbaa !12
  %379 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 496), align 8, !tbaa !12
  %380 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 56), align 8, !tbaa !12
  %381 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 120), align 8, !tbaa !12
  %382 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 184), align 8, !tbaa !12
  %383 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 248), align 8, !tbaa !12
  %384 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 312), align 8, !tbaa !12
  %385 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 376), align 8, !tbaa !12
  %386 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 440), align 8, !tbaa !12
  %387 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 504), align 8, !tbaa !12
  br label %388

388:                                              ; preds = %2, %388
  %389 = phi i64 [ 0, %2 ], [ %510, %388 ]
  %390 = shl nuw nsw i64 %389, 3
  %391 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %390
  %392 = load i32, ptr %391, align 4, !tbaa !6
  %393 = sitofp i32 %392 to double
  %394 = tail call double @llvm.fmuladd.f64(double %324, double %393, double 0.000000e+00)
  %395 = or disjoint i64 %390, 1
  %396 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %395
  %397 = load i32, ptr %396, align 4, !tbaa !6
  %398 = sitofp i32 %397 to double
  %399 = tail call double @llvm.fmuladd.f64(double %325, double %398, double %394)
  %400 = or disjoint i64 %390, 2
  %401 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !6
  %403 = sitofp i32 %402 to double
  %404 = tail call double @llvm.fmuladd.f64(double %326, double %403, double %399)
  %405 = or disjoint i64 %390, 3
  %406 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %405
  %407 = load i32, ptr %406, align 4, !tbaa !6
  %408 = sitofp i32 %407 to double
  %409 = tail call double @llvm.fmuladd.f64(double %327, double %408, double %404)
  %410 = or disjoint i64 %390, 4
  %411 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %410
  %412 = load i32, ptr %411, align 4, !tbaa !6
  %413 = sitofp i32 %412 to double
  %414 = tail call double @llvm.fmuladd.f64(double %328, double %413, double %409)
  %415 = or disjoint i64 %390, 5
  %416 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !6
  %418 = sitofp i32 %417 to double
  %419 = tail call double @llvm.fmuladd.f64(double %329, double %418, double %414)
  %420 = or disjoint i64 %390, 6
  %421 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %420
  %422 = load i32, ptr %421, align 4, !tbaa !6
  %423 = sitofp i32 %422 to double
  %424 = tail call double @llvm.fmuladd.f64(double %330, double %423, double %419)
  %425 = or disjoint i64 %390, 7
  %426 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !6
  %428 = sitofp i32 %427 to double
  %429 = tail call double @llvm.fmuladd.f64(double %331, double %428, double %424)
  %430 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %390
  store double %429, ptr %430, align 8, !tbaa !12
  %431 = tail call double @llvm.fmuladd.f64(double %332, double %393, double 0.000000e+00)
  %432 = tail call double @llvm.fmuladd.f64(double %333, double %398, double %431)
  %433 = tail call double @llvm.fmuladd.f64(double %334, double %403, double %432)
  %434 = tail call double @llvm.fmuladd.f64(double %335, double %408, double %433)
  %435 = tail call double @llvm.fmuladd.f64(double %336, double %413, double %434)
  %436 = tail call double @llvm.fmuladd.f64(double %337, double %418, double %435)
  %437 = tail call double @llvm.fmuladd.f64(double %338, double %423, double %436)
  %438 = tail call double @llvm.fmuladd.f64(double %339, double %428, double %437)
  %439 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %395
  store double %438, ptr %439, align 8, !tbaa !12
  %440 = tail call double @llvm.fmuladd.f64(double %340, double %393, double 0.000000e+00)
  %441 = tail call double @llvm.fmuladd.f64(double %341, double %398, double %440)
  %442 = tail call double @llvm.fmuladd.f64(double %342, double %403, double %441)
  %443 = tail call double @llvm.fmuladd.f64(double %343, double %408, double %442)
  %444 = tail call double @llvm.fmuladd.f64(double %344, double %413, double %443)
  %445 = tail call double @llvm.fmuladd.f64(double %345, double %418, double %444)
  %446 = tail call double @llvm.fmuladd.f64(double %346, double %423, double %445)
  %447 = tail call double @llvm.fmuladd.f64(double %347, double %428, double %446)
  %448 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %400
  store double %447, ptr %448, align 8, !tbaa !12
  %449 = tail call double @llvm.fmuladd.f64(double %348, double %393, double 0.000000e+00)
  %450 = tail call double @llvm.fmuladd.f64(double %349, double %398, double %449)
  %451 = tail call double @llvm.fmuladd.f64(double %350, double %403, double %450)
  %452 = tail call double @llvm.fmuladd.f64(double %351, double %408, double %451)
  %453 = tail call double @llvm.fmuladd.f64(double %352, double %413, double %452)
  %454 = tail call double @llvm.fmuladd.f64(double %353, double %418, double %453)
  %455 = tail call double @llvm.fmuladd.f64(double %354, double %423, double %454)
  %456 = tail call double @llvm.fmuladd.f64(double %355, double %428, double %455)
  %457 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %405
  store double %456, ptr %457, align 8, !tbaa !12
  %458 = load i32, ptr %391, align 4, !tbaa !6
  %459 = sitofp i32 %458 to double
  %460 = tail call double @llvm.fmuladd.f64(double %356, double %459, double 0.000000e+00)
  %461 = load i32, ptr %396, align 4, !tbaa !6
  %462 = sitofp i32 %461 to double
  %463 = tail call double @llvm.fmuladd.f64(double %357, double %462, double %460)
  %464 = tail call double @llvm.fmuladd.f64(double %358, double %403, double %463)
  %465 = tail call double @llvm.fmuladd.f64(double %359, double %408, double %464)
  %466 = tail call double @llvm.fmuladd.f64(double %360, double %413, double %465)
  %467 = tail call double @llvm.fmuladd.f64(double %361, double %418, double %466)
  %468 = tail call double @llvm.fmuladd.f64(double %362, double %423, double %467)
  %469 = tail call double @llvm.fmuladd.f64(double %363, double %428, double %468)
  %470 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %410
  store double %469, ptr %470, align 8, !tbaa !12
  %471 = tail call double @llvm.fmuladd.f64(double %364, double %459, double 0.000000e+00)
  %472 = tail call double @llvm.fmuladd.f64(double %365, double %462, double %471)
  %473 = load i32, ptr %401, align 4, !tbaa !6
  %474 = sitofp i32 %473 to double
  %475 = tail call double @llvm.fmuladd.f64(double %366, double %474, double %472)
  %476 = load i32, ptr %406, align 4, !tbaa !6
  %477 = sitofp i32 %476 to double
  %478 = tail call double @llvm.fmuladd.f64(double %367, double %477, double %475)
  %479 = load i32, ptr %411, align 4, !tbaa !6
  %480 = sitofp i32 %479 to double
  %481 = tail call double @llvm.fmuladd.f64(double %368, double %480, double %478)
  %482 = load i32, ptr %416, align 4, !tbaa !6
  %483 = sitofp i32 %482 to double
  %484 = tail call double @llvm.fmuladd.f64(double %369, double %483, double %481)
  %485 = load i32, ptr %421, align 4, !tbaa !6
  %486 = sitofp i32 %485 to double
  %487 = tail call double @llvm.fmuladd.f64(double %370, double %486, double %484)
  %488 = load i32, ptr %426, align 4, !tbaa !6
  %489 = sitofp i32 %488 to double
  %490 = tail call double @llvm.fmuladd.f64(double %371, double %489, double %487)
  %491 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %415
  store double %490, ptr %491, align 8, !tbaa !12
  %492 = tail call double @llvm.fmuladd.f64(double %372, double %459, double 0.000000e+00)
  %493 = tail call double @llvm.fmuladd.f64(double %373, double %462, double %492)
  %494 = tail call double @llvm.fmuladd.f64(double %374, double %474, double %493)
  %495 = tail call double @llvm.fmuladd.f64(double %375, double %477, double %494)
  %496 = tail call double @llvm.fmuladd.f64(double %376, double %480, double %495)
  %497 = tail call double @llvm.fmuladd.f64(double %377, double %483, double %496)
  %498 = tail call double @llvm.fmuladd.f64(double %378, double %486, double %497)
  %499 = tail call double @llvm.fmuladd.f64(double %379, double %489, double %498)
  %500 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %420
  store double %499, ptr %500, align 8, !tbaa !12
  %501 = tail call double @llvm.fmuladd.f64(double %380, double %459, double 0.000000e+00)
  %502 = tail call double @llvm.fmuladd.f64(double %381, double %462, double %501)
  %503 = tail call double @llvm.fmuladd.f64(double %382, double %474, double %502)
  %504 = tail call double @llvm.fmuladd.f64(double %383, double %477, double %503)
  %505 = tail call double @llvm.fmuladd.f64(double %384, double %480, double %504)
  %506 = tail call double @llvm.fmuladd.f64(double %385, double %483, double %505)
  %507 = tail call double @llvm.fmuladd.f64(double %386, double %486, double %506)
  %508 = tail call double @llvm.fmuladd.f64(double %387, double %489, double %507)
  %509 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %425
  store double %508, ptr %509, align 8, !tbaa !12
  %510 = add nuw nsw i64 %389, 1
  %511 = icmp eq i64 %510, 8
  br i1 %511, label %512, label %388

512:                                              ; preds = %388
  %513 = load double, ptr @c, align 8, !tbaa !12
  %514 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 64), align 8, !tbaa !12
  %515 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 128), align 8, !tbaa !12
  %516 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 192), align 8, !tbaa !12
  %517 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 256), align 8, !tbaa !12
  %518 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 320), align 8, !tbaa !12
  %519 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 384), align 8, !tbaa !12
  %520 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 448), align 8, !tbaa !12
  %521 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 8), align 8, !tbaa !12
  %522 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 72), align 8, !tbaa !12
  %523 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 136), align 8, !tbaa !12
  %524 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 200), align 8, !tbaa !12
  %525 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 264), align 8, !tbaa !12
  %526 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 328), align 8, !tbaa !12
  %527 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 392), align 8, !tbaa !12
  %528 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 456), align 8, !tbaa !12
  %529 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 16), align 8, !tbaa !12
  %530 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 80), align 8, !tbaa !12
  %531 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 144), align 8, !tbaa !12
  %532 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 208), align 8, !tbaa !12
  %533 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 272), align 8, !tbaa !12
  %534 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 336), align 8, !tbaa !12
  %535 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 400), align 8, !tbaa !12
  %536 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 464), align 8, !tbaa !12
  %537 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 24), align 8, !tbaa !12
  %538 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 88), align 8, !tbaa !12
  %539 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 152), align 8, !tbaa !12
  %540 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 216), align 8, !tbaa !12
  %541 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 280), align 8, !tbaa !12
  %542 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 344), align 8, !tbaa !12
  %543 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 408), align 8, !tbaa !12
  %544 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 472), align 8, !tbaa !12
  %545 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 32), align 8, !tbaa !12
  %546 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 96), align 8, !tbaa !12
  %547 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 160), align 8, !tbaa !12
  %548 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 224), align 8, !tbaa !12
  %549 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 288), align 8, !tbaa !12
  %550 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 352), align 8, !tbaa !12
  %551 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 416), align 8, !tbaa !12
  %552 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 480), align 8, !tbaa !12
  %553 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 40), align 8, !tbaa !12
  %554 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 104), align 8, !tbaa !12
  %555 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 168), align 8, !tbaa !12
  %556 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 232), align 8, !tbaa !12
  %557 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 296), align 8, !tbaa !12
  %558 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 360), align 8, !tbaa !12
  %559 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 424), align 8, !tbaa !12
  %560 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 488), align 8, !tbaa !12
  %561 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 48), align 8, !tbaa !12
  %562 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 112), align 8, !tbaa !12
  %563 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 176), align 8, !tbaa !12
  %564 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 240), align 8, !tbaa !12
  %565 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 304), align 8, !tbaa !12
  %566 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 368), align 8, !tbaa !12
  %567 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 432), align 8, !tbaa !12
  %568 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 496), align 8, !tbaa !12
  %569 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 56), align 8, !tbaa !12
  %570 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 120), align 8, !tbaa !12
  %571 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 184), align 8, !tbaa !12
  %572 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 248), align 8, !tbaa !12
  %573 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 312), align 8, !tbaa !12
  %574 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 376), align 8, !tbaa !12
  %575 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 440), align 8, !tbaa !12
  %576 = load double, ptr getelementptr inbounds (i8, ptr @c, i64 504), align 8, !tbaa !12
  br label %577

577:                                              ; preds = %512, %577
  %578 = phi i64 [ %714, %577 ], [ 0, %512 ]
  %579 = getelementptr inbounds i32, ptr %1, i64 %578
  %580 = add nuw nsw i64 %578, 56
  %581 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %580
  %582 = load double, ptr %581, align 8, !tbaa !12
  %583 = add nuw nsw i64 %578, 48
  %584 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %583
  %585 = load double, ptr %584, align 8, !tbaa !12
  %586 = add nuw nsw i64 %578, 40
  %587 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %586
  %588 = load double, ptr %587, align 8, !tbaa !12
  %589 = add nuw nsw i64 %578, 32
  %590 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %589
  %591 = load double, ptr %590, align 8, !tbaa !12
  %592 = add nuw nsw i64 %578, 24
  %593 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %592
  %594 = load double, ptr %593, align 8, !tbaa !12
  %595 = add nuw nsw i64 %578, 16
  %596 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %595
  %597 = load double, ptr %596, align 8, !tbaa !12
  %598 = add nuw nsw i64 %578, 8
  %599 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %598
  %600 = load double, ptr %599, align 8, !tbaa !12
  %601 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %578
  %602 = load double, ptr %601, align 8, !tbaa !12
  %603 = tail call double @llvm.fmuladd.f64(double %513, double %602, double 0.000000e+00)
  %604 = tail call double @llvm.fmuladd.f64(double %514, double %600, double %603)
  %605 = tail call double @llvm.fmuladd.f64(double %515, double %597, double %604)
  %606 = tail call double @llvm.fmuladd.f64(double %516, double %594, double %605)
  %607 = tail call double @llvm.fmuladd.f64(double %517, double %591, double %606)
  %608 = tail call double @llvm.fmuladd.f64(double %518, double %588, double %607)
  %609 = tail call double @llvm.fmuladd.f64(double %519, double %585, double %608)
  %610 = tail call double @llvm.fmuladd.f64(double %520, double %582, double %609)
  %611 = fadd double %610, 5.000000e-01
  %612 = tail call double @llvm.floor.f64(double %611)
  %613 = fptosi double %612 to i32
  %614 = tail call i32 @llvm.smin.i32(i32 %613, i32 255)
  %615 = tail call i32 @llvm.smax.i32(i32 %614, i32 -256)
  store i32 %615, ptr %579, align 4, !tbaa !6
  %616 = tail call double @llvm.fmuladd.f64(double %521, double %602, double 0.000000e+00)
  %617 = tail call double @llvm.fmuladd.f64(double %522, double %600, double %616)
  %618 = tail call double @llvm.fmuladd.f64(double %523, double %597, double %617)
  %619 = tail call double @llvm.fmuladd.f64(double %524, double %594, double %618)
  %620 = tail call double @llvm.fmuladd.f64(double %525, double %591, double %619)
  %621 = tail call double @llvm.fmuladd.f64(double %526, double %588, double %620)
  %622 = tail call double @llvm.fmuladd.f64(double %527, double %585, double %621)
  %623 = tail call double @llvm.fmuladd.f64(double %528, double %582, double %622)
  %624 = fadd double %623, 5.000000e-01
  %625 = tail call double @llvm.floor.f64(double %624)
  %626 = fptosi double %625 to i32
  %627 = tail call i32 @llvm.smin.i32(i32 %626, i32 255)
  %628 = tail call i32 @llvm.smax.i32(i32 %627, i32 -256)
  %629 = getelementptr inbounds i8, ptr %579, i64 32
  store i32 %628, ptr %629, align 4, !tbaa !6
  %630 = tail call double @llvm.fmuladd.f64(double %529, double %602, double 0.000000e+00)
  %631 = tail call double @llvm.fmuladd.f64(double %530, double %600, double %630)
  %632 = tail call double @llvm.fmuladd.f64(double %531, double %597, double %631)
  %633 = tail call double @llvm.fmuladd.f64(double %532, double %594, double %632)
  %634 = tail call double @llvm.fmuladd.f64(double %533, double %591, double %633)
  %635 = tail call double @llvm.fmuladd.f64(double %534, double %588, double %634)
  %636 = tail call double @llvm.fmuladd.f64(double %535, double %585, double %635)
  %637 = tail call double @llvm.fmuladd.f64(double %536, double %582, double %636)
  %638 = fadd double %637, 5.000000e-01
  %639 = tail call double @llvm.floor.f64(double %638)
  %640 = fptosi double %639 to i32
  %641 = tail call i32 @llvm.smin.i32(i32 %640, i32 255)
  %642 = tail call i32 @llvm.smax.i32(i32 %641, i32 -256)
  %643 = getelementptr inbounds i8, ptr %579, i64 64
  store i32 %642, ptr %643, align 4, !tbaa !6
  %644 = tail call double @llvm.fmuladd.f64(double %537, double %602, double 0.000000e+00)
  %645 = tail call double @llvm.fmuladd.f64(double %538, double %600, double %644)
  %646 = tail call double @llvm.fmuladd.f64(double %539, double %597, double %645)
  %647 = tail call double @llvm.fmuladd.f64(double %540, double %594, double %646)
  %648 = tail call double @llvm.fmuladd.f64(double %541, double %591, double %647)
  %649 = tail call double @llvm.fmuladd.f64(double %542, double %588, double %648)
  %650 = tail call double @llvm.fmuladd.f64(double %543, double %585, double %649)
  %651 = tail call double @llvm.fmuladd.f64(double %544, double %582, double %650)
  %652 = fadd double %651, 5.000000e-01
  %653 = tail call double @llvm.floor.f64(double %652)
  %654 = fptosi double %653 to i32
  %655 = tail call i32 @llvm.smin.i32(i32 %654, i32 255)
  %656 = tail call i32 @llvm.smax.i32(i32 %655, i32 -256)
  %657 = getelementptr inbounds i8, ptr %579, i64 96
  store i32 %656, ptr %657, align 4, !tbaa !6
  %658 = tail call double @llvm.fmuladd.f64(double %545, double %602, double 0.000000e+00)
  %659 = tail call double @llvm.fmuladd.f64(double %546, double %600, double %658)
  %660 = tail call double @llvm.fmuladd.f64(double %547, double %597, double %659)
  %661 = tail call double @llvm.fmuladd.f64(double %548, double %594, double %660)
  %662 = tail call double @llvm.fmuladd.f64(double %549, double %591, double %661)
  %663 = tail call double @llvm.fmuladd.f64(double %550, double %588, double %662)
  %664 = tail call double @llvm.fmuladd.f64(double %551, double %585, double %663)
  %665 = tail call double @llvm.fmuladd.f64(double %552, double %582, double %664)
  %666 = fadd double %665, 5.000000e-01
  %667 = tail call double @llvm.floor.f64(double %666)
  %668 = fptosi double %667 to i32
  %669 = tail call i32 @llvm.smin.i32(i32 %668, i32 255)
  %670 = tail call i32 @llvm.smax.i32(i32 %669, i32 -256)
  %671 = getelementptr inbounds i8, ptr %579, i64 128
  store i32 %670, ptr %671, align 4, !tbaa !6
  %672 = tail call double @llvm.fmuladd.f64(double %553, double %602, double 0.000000e+00)
  %673 = tail call double @llvm.fmuladd.f64(double %554, double %600, double %672)
  %674 = tail call double @llvm.fmuladd.f64(double %555, double %597, double %673)
  %675 = tail call double @llvm.fmuladd.f64(double %556, double %594, double %674)
  %676 = tail call double @llvm.fmuladd.f64(double %557, double %591, double %675)
  %677 = tail call double @llvm.fmuladd.f64(double %558, double %588, double %676)
  %678 = tail call double @llvm.fmuladd.f64(double %559, double %585, double %677)
  %679 = tail call double @llvm.fmuladd.f64(double %560, double %582, double %678)
  %680 = fadd double %679, 5.000000e-01
  %681 = tail call double @llvm.floor.f64(double %680)
  %682 = fptosi double %681 to i32
  %683 = tail call i32 @llvm.smin.i32(i32 %682, i32 255)
  %684 = tail call i32 @llvm.smax.i32(i32 %683, i32 -256)
  %685 = getelementptr inbounds i8, ptr %579, i64 160
  store i32 %684, ptr %685, align 4, !tbaa !6
  %686 = tail call double @llvm.fmuladd.f64(double %561, double %602, double 0.000000e+00)
  %687 = tail call double @llvm.fmuladd.f64(double %562, double %600, double %686)
  %688 = tail call double @llvm.fmuladd.f64(double %563, double %597, double %687)
  %689 = tail call double @llvm.fmuladd.f64(double %564, double %594, double %688)
  %690 = tail call double @llvm.fmuladd.f64(double %565, double %591, double %689)
  %691 = tail call double @llvm.fmuladd.f64(double %566, double %588, double %690)
  %692 = tail call double @llvm.fmuladd.f64(double %567, double %585, double %691)
  %693 = tail call double @llvm.fmuladd.f64(double %568, double %582, double %692)
  %694 = fadd double %693, 5.000000e-01
  %695 = tail call double @llvm.floor.f64(double %694)
  %696 = fptosi double %695 to i32
  %697 = tail call i32 @llvm.smin.i32(i32 %696, i32 255)
  %698 = tail call i32 @llvm.smax.i32(i32 %697, i32 -256)
  %699 = getelementptr inbounds i8, ptr %579, i64 192
  store i32 %698, ptr %699, align 4, !tbaa !6
  %700 = tail call double @llvm.fmuladd.f64(double %569, double %602, double 0.000000e+00)
  %701 = tail call double @llvm.fmuladd.f64(double %570, double %600, double %700)
  %702 = tail call double @llvm.fmuladd.f64(double %571, double %597, double %701)
  %703 = tail call double @llvm.fmuladd.f64(double %572, double %594, double %702)
  %704 = tail call double @llvm.fmuladd.f64(double %573, double %591, double %703)
  %705 = tail call double @llvm.fmuladd.f64(double %574, double %588, double %704)
  %706 = tail call double @llvm.fmuladd.f64(double %575, double %585, double %705)
  %707 = tail call double @llvm.fmuladd.f64(double %576, double %582, double %706)
  %708 = fadd double %707, 5.000000e-01
  %709 = tail call double @llvm.floor.f64(double %708)
  %710 = fptosi double %709 to i32
  %711 = tail call i32 @llvm.smin.i32(i32 %710, i32 255)
  %712 = tail call i32 @llvm.smax.i32(i32 %711, i32 -256)
  %713 = getelementptr inbounds i8, ptr %579, i64 224
  store i32 %712, ptr %713, align 4, !tbaa !6
  %714 = add nuw nsw i64 %578, 1
  %715 = icmp eq i64 %714, 8
  br i1 %715, label %716, label %577

716:                                              ; preds = %577
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !8, i64 0}
