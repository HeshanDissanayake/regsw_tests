; ModuleID = 'jcdctmgr.c'
source_filename = "jcdctmgr.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@start_pass_fdctmgr.aanscales = internal unnamed_addr constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 2
@start_pass_fdctmgr.aanscalefactor = internal unnamed_addr constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 8

; Function Attrs: nounwind
define dso_local void @jinit_forward_dct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 96) #4
  %6 = getelementptr inbounds i8, ptr %0, i64 488
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @start_pass_fdctmgr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %0, i64 276
  %8 = load i32, ptr %7, align 4, !tbaa !21
  switch i32 %8, label %18 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %15
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @forward_DCT, ptr %10, align 8, !tbaa !22
  %11 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @jpeg_fdct_islow, ptr %11, align 8, !tbaa !23
  br label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @forward_DCT, ptr %13, align 8, !tbaa !22
  %14 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @jpeg_fdct_ifast, ptr %14, align 8, !tbaa !23
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @forward_DCT_float, ptr %16, align 8, !tbaa !22
  %17 = getelementptr inbounds i8, ptr %5, i64 56
  store ptr @jpeg_fdct_float, ptr %17, align 8, !tbaa !24
  br label %22

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 8, !tbaa !25
  %20 = getelementptr inbounds i8, ptr %19, i64 40
  store i32 48, ptr %20, align 8, !tbaa !26
  %21 = load ptr, ptr %19, align 8, !tbaa !28
  tail call void %21(ptr noundef nonnull %0) #4
  br label %22

22:                                               ; preds = %18, %15, %12, %9
  %23 = getelementptr inbounds i8, ptr %5, i64 24
  %24 = getelementptr inbounds i8, ptr %5, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false), !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false), !tbaa !29
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @start_pass_fdctmgr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 76
  %3 = load i32, ptr %2, align 4, !tbaa !30
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %189

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 88
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = getelementptr inbounds i8, ptr %0, i64 488
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds i8, ptr %0, i64 96
  %11 = getelementptr inbounds i8, ptr %0, i64 276
  %12 = getelementptr inbounds i8, ptr %9, i64 64
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %9, i64 24
  br label %15

15:                                               ; preds = %5, %184
  %16 = phi i32 [ 0, %5 ], [ %185, %184 ]
  %17 = phi ptr [ %7, %5 ], [ %186, %184 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 16
  %19 = load i32, ptr %18, align 8, !tbaa !32
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = zext nneg i32 %19 to i64
  %23 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = zext nneg i32 %19 to i64
  br label %37

28:                                               ; preds = %21, %15
  %29 = load ptr, ptr %0, align 8, !tbaa !25
  %30 = getelementptr inbounds i8, ptr %29, i64 40
  store i32 52, ptr %30, align 8, !tbaa !26
  %31 = getelementptr inbounds i8, ptr %29, i64 44
  store i32 %19, ptr %31, align 4, !tbaa !34
  %32 = load ptr, ptr %0, align 8, !tbaa !25
  %33 = load ptr, ptr %32, align 8, !tbaa !28
  tail call void %33(ptr noundef nonnull %0) #4
  %34 = sext i32 %19 to i64
  %35 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !29
  br label %37

37:                                               ; preds = %26, %28
  %38 = phi i64 [ %27, %26 ], [ %34, %28 ]
  %39 = phi ptr [ %24, %26 ], [ %36, %28 ]
  %40 = load i32, ptr %11, align 4, !tbaa !21
  switch i32 %40, label %180 [
    i32 0, label %41
    i32 1, label %60
    i32 2, label %85
  ]

41:                                               ; preds = %37
  %42 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 %38
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load ptr, ptr %13, align 8, !tbaa !6
  %47 = load ptr, ptr %46, align 8, !tbaa !14
  %48 = tail call ptr %47(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 256) #4
  store ptr %48, ptr %42, align 8, !tbaa !29
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi ptr [ %48, %45 ], [ %43, %41 ]
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ 0, %49 ], [ %58, %51 ]
  %53 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !35
  %55 = zext i16 %54 to i32
  %56 = shl nuw nsw i32 %55, 3
  %57 = getelementptr inbounds i32, ptr %50, i64 %52
  store i32 %56, ptr %57, align 4, !tbaa !36
  %58 = add nuw nsw i64 %52, 1
  %59 = icmp eq i64 %58, 64
  br i1 %59, label %184, label %51

60:                                               ; preds = %37
  %61 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 %38
  %62 = load ptr, ptr %61, align 8, !tbaa !29
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load ptr, ptr %13, align 8, !tbaa !6
  %66 = load ptr, ptr %65, align 8, !tbaa !14
  %67 = tail call ptr %66(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 256) #4
  store ptr %67, ptr %61, align 8, !tbaa !29
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi ptr [ %67, %64 ], [ %62, %60 ]
  br label %70

70:                                               ; preds = %68, %70
  %71 = phi i64 [ 0, %68 ], [ %83, %70 ]
  %72 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !35
  %74 = zext i16 %73 to i64
  %75 = getelementptr inbounds [64 x i16], ptr @start_pass_fdctmgr.aanscales, i64 0, i64 %71
  %76 = load i16, ptr %75, align 2, !tbaa !35
  %77 = sext i16 %76 to i64
  %78 = mul nsw i64 %77, %74
  %79 = add nsw i64 %78, 1024
  %80 = ashr i64 %79, 11
  %81 = trunc nsw i64 %80 to i32
  %82 = getelementptr inbounds i32, ptr %69, i64 %71
  store i32 %81, ptr %82, align 4, !tbaa !36
  %83 = add nuw nsw i64 %71, 1
  %84 = icmp eq i64 %83, 64
  br i1 %84, label %184, label %70

85:                                               ; preds = %37
  %86 = getelementptr inbounds [4 x ptr], ptr %12, i64 0, i64 %38
  %87 = load ptr, ptr %86, align 8, !tbaa !29
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load ptr, ptr %13, align 8, !tbaa !6
  %91 = load ptr, ptr %90, align 8, !tbaa !14
  %92 = tail call ptr %91(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 256) #4
  store ptr %92, ptr %86, align 8, !tbaa !29
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi ptr [ %92, %89 ], [ %87, %85 ]
  br label %95

95:                                               ; preds = %93, %95
  %96 = phi i64 [ 0, %93 ], [ %178, %95 ]
  %97 = phi i64 [ 0, %93 ], [ %177, %95 ]
  %98 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !37
  %100 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %96
  %101 = load i16, ptr %100, align 2, !tbaa !35
  %102 = uitofp i16 %101 to double
  %103 = fmul double %99, %102
  %104 = fmul double %103, 8.000000e+00
  %105 = fdiv double 1.000000e+00, %104
  %106 = fptrunc double %105 to float
  %107 = getelementptr inbounds float, ptr %94, i64 %96
  store float %106, ptr %107, align 4, !tbaa !38
  %108 = or disjoint i64 %96, 1
  %109 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !35
  %111 = uitofp i16 %110 to double
  %112 = fmul double %99, %111
  %113 = fmul double %112, 0x3FF63150B14861EF
  %114 = fmul double %113, 8.000000e+00
  %115 = fdiv double 1.000000e+00, %114
  %116 = fptrunc double %115 to float
  %117 = getelementptr inbounds float, ptr %94, i64 %108
  store float %116, ptr %117, align 4, !tbaa !38
  %118 = or disjoint i64 %96, 2
  %119 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %118
  %120 = load i16, ptr %119, align 2, !tbaa !35
  %121 = uitofp i16 %120 to double
  %122 = fmul double %99, %121
  %123 = fmul double %122, 0x3FF4E7AE914D6FCA
  %124 = fmul double %123, 8.000000e+00
  %125 = fdiv double 1.000000e+00, %124
  %126 = fptrunc double %125 to float
  %127 = getelementptr inbounds float, ptr %94, i64 %118
  store float %126, ptr %127, align 4, !tbaa !38
  %128 = or disjoint i64 %96, 3
  %129 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !35
  %131 = uitofp i16 %130 to double
  %132 = fmul double %99, %131
  %133 = fmul double %132, 0x3FF2D062EF6C11AA
  %134 = fmul double %133, 8.000000e+00
  %135 = fdiv double 1.000000e+00, %134
  %136 = fptrunc double %135 to float
  %137 = getelementptr inbounds float, ptr %94, i64 %128
  store float %136, ptr %137, align 4, !tbaa !38
  %138 = or disjoint i64 %96, 4
  %139 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !35
  %141 = uitofp i16 %140 to double
  %142 = fmul double %99, %141
  %143 = fmul double %142, 8.000000e+00
  %144 = fdiv double 1.000000e+00, %143
  %145 = fptrunc double %144 to float
  %146 = getelementptr inbounds float, ptr %94, i64 %138
  store float %145, ptr %146, align 4, !tbaa !38
  %147 = or disjoint i64 %96, 5
  %148 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !35
  %150 = uitofp i16 %149 to double
  %151 = fmul double %99, %150
  %152 = fmul double %151, 0x3FE92469C0A7BF3B
  %153 = fmul double %152, 8.000000e+00
  %154 = fdiv double 1.000000e+00, %153
  %155 = fptrunc double %154 to float
  %156 = getelementptr inbounds float, ptr %94, i64 %147
  store float %155, ptr %156, align 4, !tbaa !38
  %157 = or disjoint i64 %96, 6
  %158 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %157
  %159 = load i16, ptr %158, align 2, !tbaa !35
  %160 = uitofp i16 %159 to double
  %161 = fmul double %99, %160
  %162 = fmul double %161, 0x3FE1517A7BC720BB
  %163 = fmul double %162, 8.000000e+00
  %164 = fdiv double 1.000000e+00, %163
  %165 = fptrunc double %164 to float
  %166 = getelementptr inbounds float, ptr %94, i64 %157
  store float %165, ptr %166, align 4, !tbaa !38
  %167 = or disjoint i64 %96, 7
  %168 = getelementptr inbounds [64 x i16], ptr %39, i64 0, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !35
  %170 = uitofp i16 %169 to double
  %171 = fmul double %99, %170
  %172 = fmul double %171, 0x3FD1A855DE72AB5D
  %173 = fmul double %172, 8.000000e+00
  %174 = fdiv double 1.000000e+00, %173
  %175 = fptrunc double %174 to float
  %176 = getelementptr inbounds float, ptr %94, i64 %167
  store float %175, ptr %176, align 4, !tbaa !38
  %177 = add nuw nsw i64 %97, 1
  %178 = add nuw nsw i64 %96, 8
  %179 = icmp eq i64 %177, 8
  br i1 %179, label %184, label %95

180:                                              ; preds = %37
  %181 = load ptr, ptr %0, align 8, !tbaa !25
  %182 = getelementptr inbounds i8, ptr %181, i64 40
  store i32 48, ptr %182, align 8, !tbaa !26
  %183 = load ptr, ptr %181, align 8, !tbaa !28
  tail call void %183(ptr noundef nonnull %0) #4
  br label %184

184:                                              ; preds = %95, %70, %51, %180
  %185 = add nuw nsw i32 %16, 1
  %186 = getelementptr inbounds i8, ptr %17, i64 96
  %187 = load i32, ptr %2, align 4, !tbaa !30
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %15, label %189

189:                                              ; preds = %184, %1
  ret void
}

; Function Attrs: nounwind
define internal void @forward_DCT(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) #0 {
  %8 = alloca [64 x i32], align 4
  %9 = getelementptr inbounds i8, ptr %0, i64 488
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds i8, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = getelementptr inbounds i8, ptr %10, i64 24
  %14 = getelementptr inbounds i8, ptr %1, i64 16
  %15 = load i32, ptr %14, align 8, !tbaa !32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #4
  %19 = zext i32 %4 to i64
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  %21 = icmp eq i32 %6, 0
  br i1 %21, label %394, label %22

22:                                               ; preds = %7
  %23 = zext i32 %6 to i64
  %24 = getelementptr inbounds i8, ptr %8, i64 4
  %25 = getelementptr inbounds i8, ptr %8, i64 8
  %26 = getelementptr inbounds i8, ptr %8, i64 12
  %27 = getelementptr inbounds i8, ptr %8, i64 16
  %28 = getelementptr inbounds i8, ptr %8, i64 20
  %29 = getelementptr inbounds i8, ptr %8, i64 24
  %30 = getelementptr inbounds i8, ptr %8, i64 28
  %31 = getelementptr inbounds i8, ptr %8, i64 32
  %32 = getelementptr inbounds i8, ptr %20, i64 8
  %33 = getelementptr inbounds i8, ptr %8, i64 36
  %34 = getelementptr inbounds i8, ptr %8, i64 40
  %35 = getelementptr inbounds i8, ptr %8, i64 44
  %36 = getelementptr inbounds i8, ptr %8, i64 48
  %37 = getelementptr inbounds i8, ptr %8, i64 52
  %38 = getelementptr inbounds i8, ptr %8, i64 56
  %39 = getelementptr inbounds i8, ptr %8, i64 60
  %40 = getelementptr inbounds i8, ptr %8, i64 64
  %41 = getelementptr inbounds i8, ptr %20, i64 16
  %42 = getelementptr inbounds i8, ptr %8, i64 68
  %43 = getelementptr inbounds i8, ptr %8, i64 72
  %44 = getelementptr inbounds i8, ptr %8, i64 76
  %45 = getelementptr inbounds i8, ptr %8, i64 80
  %46 = getelementptr inbounds i8, ptr %8, i64 84
  %47 = getelementptr inbounds i8, ptr %8, i64 88
  %48 = getelementptr inbounds i8, ptr %8, i64 92
  %49 = getelementptr inbounds i8, ptr %8, i64 96
  %50 = getelementptr inbounds i8, ptr %20, i64 24
  %51 = getelementptr inbounds i8, ptr %8, i64 100
  %52 = getelementptr inbounds i8, ptr %8, i64 104
  %53 = getelementptr inbounds i8, ptr %8, i64 108
  %54 = getelementptr inbounds i8, ptr %8, i64 112
  %55 = getelementptr inbounds i8, ptr %8, i64 116
  %56 = getelementptr inbounds i8, ptr %8, i64 120
  %57 = getelementptr inbounds i8, ptr %8, i64 124
  %58 = getelementptr inbounds i8, ptr %8, i64 128
  %59 = getelementptr inbounds i8, ptr %20, i64 32
  %60 = getelementptr inbounds i8, ptr %8, i64 132
  %61 = getelementptr inbounds i8, ptr %8, i64 136
  %62 = getelementptr inbounds i8, ptr %8, i64 140
  %63 = getelementptr inbounds i8, ptr %8, i64 144
  %64 = getelementptr inbounds i8, ptr %8, i64 148
  %65 = getelementptr inbounds i8, ptr %8, i64 152
  %66 = getelementptr inbounds i8, ptr %8, i64 156
  %67 = getelementptr inbounds i8, ptr %8, i64 160
  %68 = getelementptr inbounds i8, ptr %20, i64 40
  %69 = getelementptr inbounds i8, ptr %8, i64 164
  %70 = getelementptr inbounds i8, ptr %8, i64 168
  %71 = getelementptr inbounds i8, ptr %8, i64 172
  %72 = getelementptr inbounds i8, ptr %8, i64 176
  %73 = getelementptr inbounds i8, ptr %8, i64 180
  %74 = getelementptr inbounds i8, ptr %8, i64 184
  %75 = getelementptr inbounds i8, ptr %8, i64 188
  %76 = getelementptr inbounds i8, ptr %8, i64 192
  %77 = getelementptr inbounds i8, ptr %20, i64 48
  %78 = getelementptr inbounds i8, ptr %8, i64 196
  %79 = getelementptr inbounds i8, ptr %8, i64 200
  %80 = getelementptr inbounds i8, ptr %8, i64 204
  %81 = getelementptr inbounds i8, ptr %8, i64 208
  %82 = getelementptr inbounds i8, ptr %8, i64 212
  %83 = getelementptr inbounds i8, ptr %8, i64 216
  %84 = getelementptr inbounds i8, ptr %8, i64 220
  %85 = getelementptr inbounds i8, ptr %8, i64 224
  %86 = getelementptr inbounds i8, ptr %20, i64 56
  %87 = getelementptr inbounds i8, ptr %8, i64 228
  %88 = getelementptr inbounds i8, ptr %8, i64 232
  %89 = getelementptr inbounds i8, ptr %8, i64 236
  %90 = getelementptr inbounds i8, ptr %8, i64 240
  %91 = getelementptr inbounds i8, ptr %8, i64 244
  %92 = getelementptr inbounds i8, ptr %8, i64 248
  %93 = getelementptr inbounds i8, ptr %8, i64 252
  br label %94

94:                                               ; preds = %22, %390
  %95 = phi i64 [ 0, %22 ], [ %391, %390 ]
  %96 = phi i32 [ %5, %22 ], [ %392, %390 ]
  %97 = zext i32 %96 to i64
  %98 = load ptr, ptr %20, align 8, !tbaa !29
  %99 = getelementptr inbounds i8, ptr %98, i64 %97
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  %101 = load i8, ptr %99, align 1, !tbaa !34
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %102, -128
  store i32 %103, ptr %8, align 4, !tbaa !36
  %104 = getelementptr inbounds i8, ptr %99, i64 2
  %105 = load i8, ptr %100, align 1, !tbaa !34
  %106 = zext i8 %105 to i32
  %107 = add nsw i32 %106, -128
  store i32 %107, ptr %24, align 4, !tbaa !36
  %108 = getelementptr inbounds i8, ptr %99, i64 3
  %109 = load i8, ptr %104, align 1, !tbaa !34
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %110, -128
  store i32 %111, ptr %25, align 4, !tbaa !36
  %112 = getelementptr inbounds i8, ptr %99, i64 4
  %113 = load i8, ptr %108, align 1, !tbaa !34
  %114 = zext i8 %113 to i32
  %115 = add nsw i32 %114, -128
  store i32 %115, ptr %26, align 4, !tbaa !36
  %116 = getelementptr inbounds i8, ptr %99, i64 5
  %117 = load i8, ptr %112, align 1, !tbaa !34
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, -128
  store i32 %119, ptr %27, align 4, !tbaa !36
  %120 = getelementptr inbounds i8, ptr %99, i64 6
  %121 = load i8, ptr %116, align 1, !tbaa !34
  %122 = zext i8 %121 to i32
  %123 = add nsw i32 %122, -128
  store i32 %123, ptr %28, align 4, !tbaa !36
  %124 = getelementptr inbounds i8, ptr %99, i64 7
  %125 = load i8, ptr %120, align 1, !tbaa !34
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %126, -128
  store i32 %127, ptr %29, align 4, !tbaa !36
  %128 = load i8, ptr %124, align 1, !tbaa !34
  %129 = zext i8 %128 to i32
  %130 = add nsw i32 %129, -128
  store i32 %130, ptr %30, align 4, !tbaa !36
  %131 = load ptr, ptr %32, align 8, !tbaa !29
  %132 = getelementptr inbounds i8, ptr %131, i64 %97
  %133 = getelementptr inbounds i8, ptr %132, i64 1
  %134 = load i8, ptr %132, align 1, !tbaa !34
  %135 = zext i8 %134 to i32
  %136 = add nsw i32 %135, -128
  store i32 %136, ptr %31, align 4, !tbaa !36
  %137 = getelementptr inbounds i8, ptr %132, i64 2
  %138 = load i8, ptr %133, align 1, !tbaa !34
  %139 = zext i8 %138 to i32
  %140 = add nsw i32 %139, -128
  store i32 %140, ptr %33, align 4, !tbaa !36
  %141 = getelementptr inbounds i8, ptr %132, i64 3
  %142 = load i8, ptr %137, align 1, !tbaa !34
  %143 = zext i8 %142 to i32
  %144 = add nsw i32 %143, -128
  store i32 %144, ptr %34, align 4, !tbaa !36
  %145 = getelementptr inbounds i8, ptr %132, i64 4
  %146 = load i8, ptr %141, align 1, !tbaa !34
  %147 = zext i8 %146 to i32
  %148 = add nsw i32 %147, -128
  store i32 %148, ptr %35, align 4, !tbaa !36
  %149 = getelementptr inbounds i8, ptr %132, i64 5
  %150 = load i8, ptr %145, align 1, !tbaa !34
  %151 = zext i8 %150 to i32
  %152 = add nsw i32 %151, -128
  store i32 %152, ptr %36, align 4, !tbaa !36
  %153 = getelementptr inbounds i8, ptr %132, i64 6
  %154 = load i8, ptr %149, align 1, !tbaa !34
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %155, -128
  store i32 %156, ptr %37, align 4, !tbaa !36
  %157 = getelementptr inbounds i8, ptr %132, i64 7
  %158 = load i8, ptr %153, align 1, !tbaa !34
  %159 = zext i8 %158 to i32
  %160 = add nsw i32 %159, -128
  store i32 %160, ptr %38, align 4, !tbaa !36
  %161 = load i8, ptr %157, align 1, !tbaa !34
  %162 = zext i8 %161 to i32
  %163 = add nsw i32 %162, -128
  store i32 %163, ptr %39, align 4, !tbaa !36
  %164 = load ptr, ptr %41, align 8, !tbaa !29
  %165 = getelementptr inbounds i8, ptr %164, i64 %97
  %166 = getelementptr inbounds i8, ptr %165, i64 1
  %167 = load i8, ptr %165, align 1, !tbaa !34
  %168 = zext i8 %167 to i32
  %169 = add nsw i32 %168, -128
  store i32 %169, ptr %40, align 4, !tbaa !36
  %170 = getelementptr inbounds i8, ptr %165, i64 2
  %171 = load i8, ptr %166, align 1, !tbaa !34
  %172 = zext i8 %171 to i32
  %173 = add nsw i32 %172, -128
  store i32 %173, ptr %42, align 4, !tbaa !36
  %174 = getelementptr inbounds i8, ptr %165, i64 3
  %175 = load i8, ptr %170, align 1, !tbaa !34
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 %176, -128
  store i32 %177, ptr %43, align 4, !tbaa !36
  %178 = getelementptr inbounds i8, ptr %165, i64 4
  %179 = load i8, ptr %174, align 1, !tbaa !34
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 %180, -128
  store i32 %181, ptr %44, align 4, !tbaa !36
  %182 = getelementptr inbounds i8, ptr %165, i64 5
  %183 = load i8, ptr %178, align 1, !tbaa !34
  %184 = zext i8 %183 to i32
  %185 = add nsw i32 %184, -128
  store i32 %185, ptr %45, align 4, !tbaa !36
  %186 = getelementptr inbounds i8, ptr %165, i64 6
  %187 = load i8, ptr %182, align 1, !tbaa !34
  %188 = zext i8 %187 to i32
  %189 = add nsw i32 %188, -128
  store i32 %189, ptr %46, align 4, !tbaa !36
  %190 = getelementptr inbounds i8, ptr %165, i64 7
  %191 = load i8, ptr %186, align 1, !tbaa !34
  %192 = zext i8 %191 to i32
  %193 = add nsw i32 %192, -128
  store i32 %193, ptr %47, align 4, !tbaa !36
  %194 = load i8, ptr %190, align 1, !tbaa !34
  %195 = zext i8 %194 to i32
  %196 = add nsw i32 %195, -128
  store i32 %196, ptr %48, align 4, !tbaa !36
  %197 = load ptr, ptr %50, align 8, !tbaa !29
  %198 = getelementptr inbounds i8, ptr %197, i64 %97
  %199 = getelementptr inbounds i8, ptr %198, i64 1
  %200 = load i8, ptr %198, align 1, !tbaa !34
  %201 = zext i8 %200 to i32
  %202 = add nsw i32 %201, -128
  store i32 %202, ptr %49, align 4, !tbaa !36
  %203 = getelementptr inbounds i8, ptr %198, i64 2
  %204 = load i8, ptr %199, align 1, !tbaa !34
  %205 = zext i8 %204 to i32
  %206 = add nsw i32 %205, -128
  store i32 %206, ptr %51, align 4, !tbaa !36
  %207 = getelementptr inbounds i8, ptr %198, i64 3
  %208 = load i8, ptr %203, align 1, !tbaa !34
  %209 = zext i8 %208 to i32
  %210 = add nsw i32 %209, -128
  store i32 %210, ptr %52, align 4, !tbaa !36
  %211 = getelementptr inbounds i8, ptr %198, i64 4
  %212 = load i8, ptr %207, align 1, !tbaa !34
  %213 = zext i8 %212 to i32
  %214 = add nsw i32 %213, -128
  store i32 %214, ptr %53, align 4, !tbaa !36
  %215 = getelementptr inbounds i8, ptr %198, i64 5
  %216 = load i8, ptr %211, align 1, !tbaa !34
  %217 = zext i8 %216 to i32
  %218 = add nsw i32 %217, -128
  store i32 %218, ptr %54, align 4, !tbaa !36
  %219 = getelementptr inbounds i8, ptr %198, i64 6
  %220 = load i8, ptr %215, align 1, !tbaa !34
  %221 = zext i8 %220 to i32
  %222 = add nsw i32 %221, -128
  store i32 %222, ptr %55, align 4, !tbaa !36
  %223 = getelementptr inbounds i8, ptr %198, i64 7
  %224 = load i8, ptr %219, align 1, !tbaa !34
  %225 = zext i8 %224 to i32
  %226 = add nsw i32 %225, -128
  store i32 %226, ptr %56, align 4, !tbaa !36
  %227 = load i8, ptr %223, align 1, !tbaa !34
  %228 = zext i8 %227 to i32
  %229 = add nsw i32 %228, -128
  store i32 %229, ptr %57, align 4, !tbaa !36
  %230 = load ptr, ptr %59, align 8, !tbaa !29
  %231 = getelementptr inbounds i8, ptr %230, i64 %97
  %232 = getelementptr inbounds i8, ptr %231, i64 1
  %233 = load i8, ptr %231, align 1, !tbaa !34
  %234 = zext i8 %233 to i32
  %235 = add nsw i32 %234, -128
  store i32 %235, ptr %58, align 4, !tbaa !36
  %236 = getelementptr inbounds i8, ptr %231, i64 2
  %237 = load i8, ptr %232, align 1, !tbaa !34
  %238 = zext i8 %237 to i32
  %239 = add nsw i32 %238, -128
  store i32 %239, ptr %60, align 4, !tbaa !36
  %240 = getelementptr inbounds i8, ptr %231, i64 3
  %241 = load i8, ptr %236, align 1, !tbaa !34
  %242 = zext i8 %241 to i32
  %243 = add nsw i32 %242, -128
  store i32 %243, ptr %61, align 4, !tbaa !36
  %244 = getelementptr inbounds i8, ptr %231, i64 4
  %245 = load i8, ptr %240, align 1, !tbaa !34
  %246 = zext i8 %245 to i32
  %247 = add nsw i32 %246, -128
  store i32 %247, ptr %62, align 4, !tbaa !36
  %248 = getelementptr inbounds i8, ptr %231, i64 5
  %249 = load i8, ptr %244, align 1, !tbaa !34
  %250 = zext i8 %249 to i32
  %251 = add nsw i32 %250, -128
  store i32 %251, ptr %63, align 4, !tbaa !36
  %252 = getelementptr inbounds i8, ptr %231, i64 6
  %253 = load i8, ptr %248, align 1, !tbaa !34
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %254, -128
  store i32 %255, ptr %64, align 4, !tbaa !36
  %256 = getelementptr inbounds i8, ptr %231, i64 7
  %257 = load i8, ptr %252, align 1, !tbaa !34
  %258 = zext i8 %257 to i32
  %259 = add nsw i32 %258, -128
  store i32 %259, ptr %65, align 4, !tbaa !36
  %260 = load i8, ptr %256, align 1, !tbaa !34
  %261 = zext i8 %260 to i32
  %262 = add nsw i32 %261, -128
  store i32 %262, ptr %66, align 4, !tbaa !36
  %263 = load ptr, ptr %68, align 8, !tbaa !29
  %264 = getelementptr inbounds i8, ptr %263, i64 %97
  %265 = getelementptr inbounds i8, ptr %264, i64 1
  %266 = load i8, ptr %264, align 1, !tbaa !34
  %267 = zext i8 %266 to i32
  %268 = add nsw i32 %267, -128
  store i32 %268, ptr %67, align 4, !tbaa !36
  %269 = getelementptr inbounds i8, ptr %264, i64 2
  %270 = load i8, ptr %265, align 1, !tbaa !34
  %271 = zext i8 %270 to i32
  %272 = add nsw i32 %271, -128
  store i32 %272, ptr %69, align 4, !tbaa !36
  %273 = getelementptr inbounds i8, ptr %264, i64 3
  %274 = load i8, ptr %269, align 1, !tbaa !34
  %275 = zext i8 %274 to i32
  %276 = add nsw i32 %275, -128
  store i32 %276, ptr %70, align 4, !tbaa !36
  %277 = getelementptr inbounds i8, ptr %264, i64 4
  %278 = load i8, ptr %273, align 1, !tbaa !34
  %279 = zext i8 %278 to i32
  %280 = add nsw i32 %279, -128
  store i32 %280, ptr %71, align 4, !tbaa !36
  %281 = getelementptr inbounds i8, ptr %264, i64 5
  %282 = load i8, ptr %277, align 1, !tbaa !34
  %283 = zext i8 %282 to i32
  %284 = add nsw i32 %283, -128
  store i32 %284, ptr %72, align 4, !tbaa !36
  %285 = getelementptr inbounds i8, ptr %264, i64 6
  %286 = load i8, ptr %281, align 1, !tbaa !34
  %287 = zext i8 %286 to i32
  %288 = add nsw i32 %287, -128
  store i32 %288, ptr %73, align 4, !tbaa !36
  %289 = getelementptr inbounds i8, ptr %264, i64 7
  %290 = load i8, ptr %285, align 1, !tbaa !34
  %291 = zext i8 %290 to i32
  %292 = add nsw i32 %291, -128
  store i32 %292, ptr %74, align 4, !tbaa !36
  %293 = load i8, ptr %289, align 1, !tbaa !34
  %294 = zext i8 %293 to i32
  %295 = add nsw i32 %294, -128
  store i32 %295, ptr %75, align 4, !tbaa !36
  %296 = load ptr, ptr %77, align 8, !tbaa !29
  %297 = getelementptr inbounds i8, ptr %296, i64 %97
  %298 = getelementptr inbounds i8, ptr %297, i64 1
  %299 = load i8, ptr %297, align 1, !tbaa !34
  %300 = zext i8 %299 to i32
  %301 = add nsw i32 %300, -128
  store i32 %301, ptr %76, align 4, !tbaa !36
  %302 = getelementptr inbounds i8, ptr %297, i64 2
  %303 = load i8, ptr %298, align 1, !tbaa !34
  %304 = zext i8 %303 to i32
  %305 = add nsw i32 %304, -128
  store i32 %305, ptr %78, align 4, !tbaa !36
  %306 = getelementptr inbounds i8, ptr %297, i64 3
  %307 = load i8, ptr %302, align 1, !tbaa !34
  %308 = zext i8 %307 to i32
  %309 = add nsw i32 %308, -128
  store i32 %309, ptr %79, align 4, !tbaa !36
  %310 = getelementptr inbounds i8, ptr %297, i64 4
  %311 = load i8, ptr %306, align 1, !tbaa !34
  %312 = zext i8 %311 to i32
  %313 = add nsw i32 %312, -128
  store i32 %313, ptr %80, align 4, !tbaa !36
  %314 = getelementptr inbounds i8, ptr %297, i64 5
  %315 = load i8, ptr %310, align 1, !tbaa !34
  %316 = zext i8 %315 to i32
  %317 = add nsw i32 %316, -128
  store i32 %317, ptr %81, align 4, !tbaa !36
  %318 = getelementptr inbounds i8, ptr %297, i64 6
  %319 = load i8, ptr %314, align 1, !tbaa !34
  %320 = zext i8 %319 to i32
  %321 = add nsw i32 %320, -128
  store i32 %321, ptr %82, align 4, !tbaa !36
  %322 = getelementptr inbounds i8, ptr %297, i64 7
  %323 = load i8, ptr %318, align 1, !tbaa !34
  %324 = zext i8 %323 to i32
  %325 = add nsw i32 %324, -128
  store i32 %325, ptr %83, align 4, !tbaa !36
  %326 = load i8, ptr %322, align 1, !tbaa !34
  %327 = zext i8 %326 to i32
  %328 = add nsw i32 %327, -128
  store i32 %328, ptr %84, align 4, !tbaa !36
  %329 = load ptr, ptr %86, align 8, !tbaa !29
  %330 = getelementptr inbounds i8, ptr %329, i64 %97
  %331 = getelementptr inbounds i8, ptr %330, i64 1
  %332 = load i8, ptr %330, align 1, !tbaa !34
  %333 = zext i8 %332 to i32
  %334 = add nsw i32 %333, -128
  store i32 %334, ptr %85, align 4, !tbaa !36
  %335 = getelementptr inbounds i8, ptr %330, i64 2
  %336 = load i8, ptr %331, align 1, !tbaa !34
  %337 = zext i8 %336 to i32
  %338 = add nsw i32 %337, -128
  store i32 %338, ptr %87, align 4, !tbaa !36
  %339 = getelementptr inbounds i8, ptr %330, i64 3
  %340 = load i8, ptr %335, align 1, !tbaa !34
  %341 = zext i8 %340 to i32
  %342 = add nsw i32 %341, -128
  store i32 %342, ptr %88, align 4, !tbaa !36
  %343 = getelementptr inbounds i8, ptr %330, i64 4
  %344 = load i8, ptr %339, align 1, !tbaa !34
  %345 = zext i8 %344 to i32
  %346 = add nsw i32 %345, -128
  store i32 %346, ptr %89, align 4, !tbaa !36
  %347 = getelementptr inbounds i8, ptr %330, i64 5
  %348 = load i8, ptr %343, align 1, !tbaa !34
  %349 = zext i8 %348 to i32
  %350 = add nsw i32 %349, -128
  store i32 %350, ptr %90, align 4, !tbaa !36
  %351 = getelementptr inbounds i8, ptr %330, i64 6
  %352 = load i8, ptr %347, align 1, !tbaa !34
  %353 = zext i8 %352 to i32
  %354 = add nsw i32 %353, -128
  store i32 %354, ptr %91, align 4, !tbaa !36
  %355 = getelementptr inbounds i8, ptr %330, i64 7
  %356 = load i8, ptr %351, align 1, !tbaa !34
  %357 = zext i8 %356 to i32
  %358 = add nsw i32 %357, -128
  store i32 %358, ptr %92, align 4, !tbaa !36
  %359 = load i8, ptr %355, align 1, !tbaa !34
  %360 = zext i8 %359 to i32
  %361 = add nsw i32 %360, -128
  store i32 %361, ptr %93, align 4, !tbaa !36
  call void %12(ptr noundef nonnull %8) #4
  %362 = getelementptr inbounds [64 x i16], ptr %3, i64 %95
  br label %363

363:                                              ; preds = %94, %384
  %364 = phi i64 [ 0, %94 ], [ %388, %384 ]
  %365 = getelementptr inbounds i32, ptr %18, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !36
  %367 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %364
  %368 = load i32, ptr %367, align 4, !tbaa !36
  %369 = icmp slt i32 %368, 0
  %370 = ashr i32 %366, 1
  br i1 %369, label %371, label %379

371:                                              ; preds = %363
  %372 = sub i32 %370, %368
  %373 = icmp slt i32 %372, %366
  br i1 %373, label %376, label %374

374:                                              ; preds = %371
  %375 = sdiv i32 %372, %366
  br label %376

376:                                              ; preds = %371, %374
  %377 = phi i32 [ %375, %374 ], [ 0, %371 ]
  %378 = sub nsw i32 0, %377
  br label %384

379:                                              ; preds = %363
  %380 = add nsw i32 %368, %370
  %381 = icmp slt i32 %380, %366
  br i1 %381, label %384, label %382

382:                                              ; preds = %379
  %383 = sdiv i32 %380, %366
  br label %384

384:                                              ; preds = %379, %382, %376
  %385 = phi i32 [ %378, %376 ], [ %383, %382 ], [ 0, %379 ]
  %386 = trunc i32 %385 to i16
  %387 = getelementptr inbounds i16, ptr %362, i64 %364
  store i16 %386, ptr %387, align 2, !tbaa !35
  %388 = add nuw nsw i64 %364, 1
  %389 = icmp eq i64 %388, 64
  br i1 %389, label %390, label %363

390:                                              ; preds = %384
  %391 = add nuw nsw i64 %95, 1
  %392 = add i32 %96, 8
  %393 = icmp eq i64 %391, %23
  br i1 %393, label %394, label %94

394:                                              ; preds = %390, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #4
  ret void
}

declare dso_local void @jpeg_fdct_islow(ptr noundef) #2

declare dso_local void @jpeg_fdct_ifast(ptr noundef) #2

; Function Attrs: nounwind
define internal void @forward_DCT_float(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) #0 {
  %8 = alloca [64 x float], align 4
  %9 = getelementptr inbounds i8, ptr %0, i64 488
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds i8, ptr %10, i64 56
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  %13 = getelementptr inbounds i8, ptr %10, i64 64
  %14 = getelementptr inbounds i8, ptr %1, i64 16
  %15 = load i32, ptr %14, align 8, !tbaa !32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #4
  %19 = zext i32 %4 to i64
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  %21 = icmp eq i32 %6, 0
  br i1 %21, label %445, label %22

22:                                               ; preds = %7
  %23 = zext i32 %6 to i64
  %24 = getelementptr inbounds i8, ptr %8, i64 4
  %25 = getelementptr inbounds i8, ptr %8, i64 8
  %26 = getelementptr inbounds i8, ptr %8, i64 12
  %27 = getelementptr inbounds i8, ptr %8, i64 16
  %28 = getelementptr inbounds i8, ptr %8, i64 20
  %29 = getelementptr inbounds i8, ptr %8, i64 24
  %30 = getelementptr inbounds i8, ptr %8, i64 28
  %31 = getelementptr inbounds i8, ptr %8, i64 32
  %32 = getelementptr inbounds i8, ptr %20, i64 8
  %33 = getelementptr inbounds i8, ptr %8, i64 36
  %34 = getelementptr inbounds i8, ptr %8, i64 40
  %35 = getelementptr inbounds i8, ptr %8, i64 44
  %36 = getelementptr inbounds i8, ptr %8, i64 48
  %37 = getelementptr inbounds i8, ptr %8, i64 52
  %38 = getelementptr inbounds i8, ptr %8, i64 56
  %39 = getelementptr inbounds i8, ptr %8, i64 60
  %40 = getelementptr inbounds i8, ptr %8, i64 64
  %41 = getelementptr inbounds i8, ptr %20, i64 16
  %42 = getelementptr inbounds i8, ptr %8, i64 68
  %43 = getelementptr inbounds i8, ptr %8, i64 72
  %44 = getelementptr inbounds i8, ptr %8, i64 76
  %45 = getelementptr inbounds i8, ptr %8, i64 80
  %46 = getelementptr inbounds i8, ptr %8, i64 84
  %47 = getelementptr inbounds i8, ptr %8, i64 88
  %48 = getelementptr inbounds i8, ptr %8, i64 92
  %49 = getelementptr inbounds i8, ptr %8, i64 96
  %50 = getelementptr inbounds i8, ptr %20, i64 24
  %51 = getelementptr inbounds i8, ptr %8, i64 100
  %52 = getelementptr inbounds i8, ptr %8, i64 104
  %53 = getelementptr inbounds i8, ptr %8, i64 108
  %54 = getelementptr inbounds i8, ptr %8, i64 112
  %55 = getelementptr inbounds i8, ptr %8, i64 116
  %56 = getelementptr inbounds i8, ptr %8, i64 120
  %57 = getelementptr inbounds i8, ptr %8, i64 124
  %58 = getelementptr inbounds i8, ptr %8, i64 128
  %59 = getelementptr inbounds i8, ptr %20, i64 32
  %60 = getelementptr inbounds i8, ptr %8, i64 132
  %61 = getelementptr inbounds i8, ptr %8, i64 136
  %62 = getelementptr inbounds i8, ptr %8, i64 140
  %63 = getelementptr inbounds i8, ptr %8, i64 144
  %64 = getelementptr inbounds i8, ptr %8, i64 148
  %65 = getelementptr inbounds i8, ptr %8, i64 152
  %66 = getelementptr inbounds i8, ptr %8, i64 156
  %67 = getelementptr inbounds i8, ptr %8, i64 160
  %68 = getelementptr inbounds i8, ptr %20, i64 40
  %69 = getelementptr inbounds i8, ptr %8, i64 164
  %70 = getelementptr inbounds i8, ptr %8, i64 168
  %71 = getelementptr inbounds i8, ptr %8, i64 172
  %72 = getelementptr inbounds i8, ptr %8, i64 176
  %73 = getelementptr inbounds i8, ptr %8, i64 180
  %74 = getelementptr inbounds i8, ptr %8, i64 184
  %75 = getelementptr inbounds i8, ptr %8, i64 188
  %76 = getelementptr inbounds i8, ptr %8, i64 192
  %77 = getelementptr inbounds i8, ptr %20, i64 48
  %78 = getelementptr inbounds i8, ptr %8, i64 196
  %79 = getelementptr inbounds i8, ptr %8, i64 200
  %80 = getelementptr inbounds i8, ptr %8, i64 204
  %81 = getelementptr inbounds i8, ptr %8, i64 208
  %82 = getelementptr inbounds i8, ptr %8, i64 212
  %83 = getelementptr inbounds i8, ptr %8, i64 216
  %84 = getelementptr inbounds i8, ptr %8, i64 220
  %85 = getelementptr inbounds i8, ptr %8, i64 224
  %86 = getelementptr inbounds i8, ptr %20, i64 56
  %87 = getelementptr inbounds i8, ptr %8, i64 228
  %88 = getelementptr inbounds i8, ptr %8, i64 232
  %89 = getelementptr inbounds i8, ptr %8, i64 236
  %90 = getelementptr inbounds i8, ptr %8, i64 240
  %91 = getelementptr inbounds i8, ptr %8, i64 244
  %92 = getelementptr inbounds i8, ptr %8, i64 248
  %93 = getelementptr inbounds i8, ptr %8, i64 252
  br label %94

94:                                               ; preds = %22, %441
  %95 = phi i64 [ 0, %22 ], [ %442, %441 ]
  %96 = phi i32 [ %5, %22 ], [ %443, %441 ]
  %97 = zext i32 %96 to i64
  %98 = load ptr, ptr %20, align 8, !tbaa !29
  %99 = getelementptr inbounds i8, ptr %98, i64 %97
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  %101 = load i8, ptr %99, align 1, !tbaa !34
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %102, -128
  %104 = sitofp i32 %103 to float
  store float %104, ptr %8, align 4, !tbaa !38
  %105 = getelementptr inbounds i8, ptr %99, i64 2
  %106 = load i8, ptr %100, align 1, !tbaa !34
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %107, -128
  %109 = sitofp i32 %108 to float
  store float %109, ptr %24, align 4, !tbaa !38
  %110 = getelementptr inbounds i8, ptr %99, i64 3
  %111 = load i8, ptr %105, align 1, !tbaa !34
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %112, -128
  %114 = sitofp i32 %113 to float
  store float %114, ptr %25, align 4, !tbaa !38
  %115 = getelementptr inbounds i8, ptr %99, i64 4
  %116 = load i8, ptr %110, align 1, !tbaa !34
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %117, -128
  %119 = sitofp i32 %118 to float
  store float %119, ptr %26, align 4, !tbaa !38
  %120 = getelementptr inbounds i8, ptr %99, i64 5
  %121 = load i8, ptr %115, align 1, !tbaa !34
  %122 = zext i8 %121 to i32
  %123 = add nsw i32 %122, -128
  %124 = sitofp i32 %123 to float
  store float %124, ptr %27, align 4, !tbaa !38
  %125 = getelementptr inbounds i8, ptr %99, i64 6
  %126 = load i8, ptr %120, align 1, !tbaa !34
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %127, -128
  %129 = sitofp i32 %128 to float
  store float %129, ptr %28, align 4, !tbaa !38
  %130 = getelementptr inbounds i8, ptr %99, i64 7
  %131 = load i8, ptr %125, align 1, !tbaa !34
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %132, -128
  %134 = sitofp i32 %133 to float
  store float %134, ptr %29, align 4, !tbaa !38
  %135 = load i8, ptr %130, align 1, !tbaa !34
  %136 = zext i8 %135 to i32
  %137 = add nsw i32 %136, -128
  %138 = sitofp i32 %137 to float
  store float %138, ptr %30, align 4, !tbaa !38
  %139 = load ptr, ptr %32, align 8, !tbaa !29
  %140 = getelementptr inbounds i8, ptr %139, i64 %97
  %141 = getelementptr inbounds i8, ptr %140, i64 1
  %142 = load i8, ptr %140, align 1, !tbaa !34
  %143 = zext i8 %142 to i32
  %144 = add nsw i32 %143, -128
  %145 = sitofp i32 %144 to float
  store float %145, ptr %31, align 4, !tbaa !38
  %146 = getelementptr inbounds i8, ptr %140, i64 2
  %147 = load i8, ptr %141, align 1, !tbaa !34
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %148, -128
  %150 = sitofp i32 %149 to float
  store float %150, ptr %33, align 4, !tbaa !38
  %151 = getelementptr inbounds i8, ptr %140, i64 3
  %152 = load i8, ptr %146, align 1, !tbaa !34
  %153 = zext i8 %152 to i32
  %154 = add nsw i32 %153, -128
  %155 = sitofp i32 %154 to float
  store float %155, ptr %34, align 4, !tbaa !38
  %156 = getelementptr inbounds i8, ptr %140, i64 4
  %157 = load i8, ptr %151, align 1, !tbaa !34
  %158 = zext i8 %157 to i32
  %159 = add nsw i32 %158, -128
  %160 = sitofp i32 %159 to float
  store float %160, ptr %35, align 4, !tbaa !38
  %161 = getelementptr inbounds i8, ptr %140, i64 5
  %162 = load i8, ptr %156, align 1, !tbaa !34
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %163, -128
  %165 = sitofp i32 %164 to float
  store float %165, ptr %36, align 4, !tbaa !38
  %166 = getelementptr inbounds i8, ptr %140, i64 6
  %167 = load i8, ptr %161, align 1, !tbaa !34
  %168 = zext i8 %167 to i32
  %169 = add nsw i32 %168, -128
  %170 = sitofp i32 %169 to float
  store float %170, ptr %37, align 4, !tbaa !38
  %171 = getelementptr inbounds i8, ptr %140, i64 7
  %172 = load i8, ptr %166, align 1, !tbaa !34
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %173, -128
  %175 = sitofp i32 %174 to float
  store float %175, ptr %38, align 4, !tbaa !38
  %176 = load i8, ptr %171, align 1, !tbaa !34
  %177 = zext i8 %176 to i32
  %178 = add nsw i32 %177, -128
  %179 = sitofp i32 %178 to float
  store float %179, ptr %39, align 4, !tbaa !38
  %180 = load ptr, ptr %41, align 8, !tbaa !29
  %181 = getelementptr inbounds i8, ptr %180, i64 %97
  %182 = getelementptr inbounds i8, ptr %181, i64 1
  %183 = load i8, ptr %181, align 1, !tbaa !34
  %184 = zext i8 %183 to i32
  %185 = add nsw i32 %184, -128
  %186 = sitofp i32 %185 to float
  store float %186, ptr %40, align 4, !tbaa !38
  %187 = getelementptr inbounds i8, ptr %181, i64 2
  %188 = load i8, ptr %182, align 1, !tbaa !34
  %189 = zext i8 %188 to i32
  %190 = add nsw i32 %189, -128
  %191 = sitofp i32 %190 to float
  store float %191, ptr %42, align 4, !tbaa !38
  %192 = getelementptr inbounds i8, ptr %181, i64 3
  %193 = load i8, ptr %187, align 1, !tbaa !34
  %194 = zext i8 %193 to i32
  %195 = add nsw i32 %194, -128
  %196 = sitofp i32 %195 to float
  store float %196, ptr %43, align 4, !tbaa !38
  %197 = getelementptr inbounds i8, ptr %181, i64 4
  %198 = load i8, ptr %192, align 1, !tbaa !34
  %199 = zext i8 %198 to i32
  %200 = add nsw i32 %199, -128
  %201 = sitofp i32 %200 to float
  store float %201, ptr %44, align 4, !tbaa !38
  %202 = getelementptr inbounds i8, ptr %181, i64 5
  %203 = load i8, ptr %197, align 1, !tbaa !34
  %204 = zext i8 %203 to i32
  %205 = add nsw i32 %204, -128
  %206 = sitofp i32 %205 to float
  store float %206, ptr %45, align 4, !tbaa !38
  %207 = getelementptr inbounds i8, ptr %181, i64 6
  %208 = load i8, ptr %202, align 1, !tbaa !34
  %209 = zext i8 %208 to i32
  %210 = add nsw i32 %209, -128
  %211 = sitofp i32 %210 to float
  store float %211, ptr %46, align 4, !tbaa !38
  %212 = getelementptr inbounds i8, ptr %181, i64 7
  %213 = load i8, ptr %207, align 1, !tbaa !34
  %214 = zext i8 %213 to i32
  %215 = add nsw i32 %214, -128
  %216 = sitofp i32 %215 to float
  store float %216, ptr %47, align 4, !tbaa !38
  %217 = load i8, ptr %212, align 1, !tbaa !34
  %218 = zext i8 %217 to i32
  %219 = add nsw i32 %218, -128
  %220 = sitofp i32 %219 to float
  store float %220, ptr %48, align 4, !tbaa !38
  %221 = load ptr, ptr %50, align 8, !tbaa !29
  %222 = getelementptr inbounds i8, ptr %221, i64 %97
  %223 = getelementptr inbounds i8, ptr %222, i64 1
  %224 = load i8, ptr %222, align 1, !tbaa !34
  %225 = zext i8 %224 to i32
  %226 = add nsw i32 %225, -128
  %227 = sitofp i32 %226 to float
  store float %227, ptr %49, align 4, !tbaa !38
  %228 = getelementptr inbounds i8, ptr %222, i64 2
  %229 = load i8, ptr %223, align 1, !tbaa !34
  %230 = zext i8 %229 to i32
  %231 = add nsw i32 %230, -128
  %232 = sitofp i32 %231 to float
  store float %232, ptr %51, align 4, !tbaa !38
  %233 = getelementptr inbounds i8, ptr %222, i64 3
  %234 = load i8, ptr %228, align 1, !tbaa !34
  %235 = zext i8 %234 to i32
  %236 = add nsw i32 %235, -128
  %237 = sitofp i32 %236 to float
  store float %237, ptr %52, align 4, !tbaa !38
  %238 = getelementptr inbounds i8, ptr %222, i64 4
  %239 = load i8, ptr %233, align 1, !tbaa !34
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %240, -128
  %242 = sitofp i32 %241 to float
  store float %242, ptr %53, align 4, !tbaa !38
  %243 = getelementptr inbounds i8, ptr %222, i64 5
  %244 = load i8, ptr %238, align 1, !tbaa !34
  %245 = zext i8 %244 to i32
  %246 = add nsw i32 %245, -128
  %247 = sitofp i32 %246 to float
  store float %247, ptr %54, align 4, !tbaa !38
  %248 = getelementptr inbounds i8, ptr %222, i64 6
  %249 = load i8, ptr %243, align 1, !tbaa !34
  %250 = zext i8 %249 to i32
  %251 = add nsw i32 %250, -128
  %252 = sitofp i32 %251 to float
  store float %252, ptr %55, align 4, !tbaa !38
  %253 = getelementptr inbounds i8, ptr %222, i64 7
  %254 = load i8, ptr %248, align 1, !tbaa !34
  %255 = zext i8 %254 to i32
  %256 = add nsw i32 %255, -128
  %257 = sitofp i32 %256 to float
  store float %257, ptr %56, align 4, !tbaa !38
  %258 = load i8, ptr %253, align 1, !tbaa !34
  %259 = zext i8 %258 to i32
  %260 = add nsw i32 %259, -128
  %261 = sitofp i32 %260 to float
  store float %261, ptr %57, align 4, !tbaa !38
  %262 = load ptr, ptr %59, align 8, !tbaa !29
  %263 = getelementptr inbounds i8, ptr %262, i64 %97
  %264 = getelementptr inbounds i8, ptr %263, i64 1
  %265 = load i8, ptr %263, align 1, !tbaa !34
  %266 = zext i8 %265 to i32
  %267 = add nsw i32 %266, -128
  %268 = sitofp i32 %267 to float
  store float %268, ptr %58, align 4, !tbaa !38
  %269 = getelementptr inbounds i8, ptr %263, i64 2
  %270 = load i8, ptr %264, align 1, !tbaa !34
  %271 = zext i8 %270 to i32
  %272 = add nsw i32 %271, -128
  %273 = sitofp i32 %272 to float
  store float %273, ptr %60, align 4, !tbaa !38
  %274 = getelementptr inbounds i8, ptr %263, i64 3
  %275 = load i8, ptr %269, align 1, !tbaa !34
  %276 = zext i8 %275 to i32
  %277 = add nsw i32 %276, -128
  %278 = sitofp i32 %277 to float
  store float %278, ptr %61, align 4, !tbaa !38
  %279 = getelementptr inbounds i8, ptr %263, i64 4
  %280 = load i8, ptr %274, align 1, !tbaa !34
  %281 = zext i8 %280 to i32
  %282 = add nsw i32 %281, -128
  %283 = sitofp i32 %282 to float
  store float %283, ptr %62, align 4, !tbaa !38
  %284 = getelementptr inbounds i8, ptr %263, i64 5
  %285 = load i8, ptr %279, align 1, !tbaa !34
  %286 = zext i8 %285 to i32
  %287 = add nsw i32 %286, -128
  %288 = sitofp i32 %287 to float
  store float %288, ptr %63, align 4, !tbaa !38
  %289 = getelementptr inbounds i8, ptr %263, i64 6
  %290 = load i8, ptr %284, align 1, !tbaa !34
  %291 = zext i8 %290 to i32
  %292 = add nsw i32 %291, -128
  %293 = sitofp i32 %292 to float
  store float %293, ptr %64, align 4, !tbaa !38
  %294 = getelementptr inbounds i8, ptr %263, i64 7
  %295 = load i8, ptr %289, align 1, !tbaa !34
  %296 = zext i8 %295 to i32
  %297 = add nsw i32 %296, -128
  %298 = sitofp i32 %297 to float
  store float %298, ptr %65, align 4, !tbaa !38
  %299 = load i8, ptr %294, align 1, !tbaa !34
  %300 = zext i8 %299 to i32
  %301 = add nsw i32 %300, -128
  %302 = sitofp i32 %301 to float
  store float %302, ptr %66, align 4, !tbaa !38
  %303 = load ptr, ptr %68, align 8, !tbaa !29
  %304 = getelementptr inbounds i8, ptr %303, i64 %97
  %305 = getelementptr inbounds i8, ptr %304, i64 1
  %306 = load i8, ptr %304, align 1, !tbaa !34
  %307 = zext i8 %306 to i32
  %308 = add nsw i32 %307, -128
  %309 = sitofp i32 %308 to float
  store float %309, ptr %67, align 4, !tbaa !38
  %310 = getelementptr inbounds i8, ptr %304, i64 2
  %311 = load i8, ptr %305, align 1, !tbaa !34
  %312 = zext i8 %311 to i32
  %313 = add nsw i32 %312, -128
  %314 = sitofp i32 %313 to float
  store float %314, ptr %69, align 4, !tbaa !38
  %315 = getelementptr inbounds i8, ptr %304, i64 3
  %316 = load i8, ptr %310, align 1, !tbaa !34
  %317 = zext i8 %316 to i32
  %318 = add nsw i32 %317, -128
  %319 = sitofp i32 %318 to float
  store float %319, ptr %70, align 4, !tbaa !38
  %320 = getelementptr inbounds i8, ptr %304, i64 4
  %321 = load i8, ptr %315, align 1, !tbaa !34
  %322 = zext i8 %321 to i32
  %323 = add nsw i32 %322, -128
  %324 = sitofp i32 %323 to float
  store float %324, ptr %71, align 4, !tbaa !38
  %325 = getelementptr inbounds i8, ptr %304, i64 5
  %326 = load i8, ptr %320, align 1, !tbaa !34
  %327 = zext i8 %326 to i32
  %328 = add nsw i32 %327, -128
  %329 = sitofp i32 %328 to float
  store float %329, ptr %72, align 4, !tbaa !38
  %330 = getelementptr inbounds i8, ptr %304, i64 6
  %331 = load i8, ptr %325, align 1, !tbaa !34
  %332 = zext i8 %331 to i32
  %333 = add nsw i32 %332, -128
  %334 = sitofp i32 %333 to float
  store float %334, ptr %73, align 4, !tbaa !38
  %335 = getelementptr inbounds i8, ptr %304, i64 7
  %336 = load i8, ptr %330, align 1, !tbaa !34
  %337 = zext i8 %336 to i32
  %338 = add nsw i32 %337, -128
  %339 = sitofp i32 %338 to float
  store float %339, ptr %74, align 4, !tbaa !38
  %340 = load i8, ptr %335, align 1, !tbaa !34
  %341 = zext i8 %340 to i32
  %342 = add nsw i32 %341, -128
  %343 = sitofp i32 %342 to float
  store float %343, ptr %75, align 4, !tbaa !38
  %344 = load ptr, ptr %77, align 8, !tbaa !29
  %345 = getelementptr inbounds i8, ptr %344, i64 %97
  %346 = getelementptr inbounds i8, ptr %345, i64 1
  %347 = load i8, ptr %345, align 1, !tbaa !34
  %348 = zext i8 %347 to i32
  %349 = add nsw i32 %348, -128
  %350 = sitofp i32 %349 to float
  store float %350, ptr %76, align 4, !tbaa !38
  %351 = getelementptr inbounds i8, ptr %345, i64 2
  %352 = load i8, ptr %346, align 1, !tbaa !34
  %353 = zext i8 %352 to i32
  %354 = add nsw i32 %353, -128
  %355 = sitofp i32 %354 to float
  store float %355, ptr %78, align 4, !tbaa !38
  %356 = getelementptr inbounds i8, ptr %345, i64 3
  %357 = load i8, ptr %351, align 1, !tbaa !34
  %358 = zext i8 %357 to i32
  %359 = add nsw i32 %358, -128
  %360 = sitofp i32 %359 to float
  store float %360, ptr %79, align 4, !tbaa !38
  %361 = getelementptr inbounds i8, ptr %345, i64 4
  %362 = load i8, ptr %356, align 1, !tbaa !34
  %363 = zext i8 %362 to i32
  %364 = add nsw i32 %363, -128
  %365 = sitofp i32 %364 to float
  store float %365, ptr %80, align 4, !tbaa !38
  %366 = getelementptr inbounds i8, ptr %345, i64 5
  %367 = load i8, ptr %361, align 1, !tbaa !34
  %368 = zext i8 %367 to i32
  %369 = add nsw i32 %368, -128
  %370 = sitofp i32 %369 to float
  store float %370, ptr %81, align 4, !tbaa !38
  %371 = getelementptr inbounds i8, ptr %345, i64 6
  %372 = load i8, ptr %366, align 1, !tbaa !34
  %373 = zext i8 %372 to i32
  %374 = add nsw i32 %373, -128
  %375 = sitofp i32 %374 to float
  store float %375, ptr %82, align 4, !tbaa !38
  %376 = getelementptr inbounds i8, ptr %345, i64 7
  %377 = load i8, ptr %371, align 1, !tbaa !34
  %378 = zext i8 %377 to i32
  %379 = add nsw i32 %378, -128
  %380 = sitofp i32 %379 to float
  store float %380, ptr %83, align 4, !tbaa !38
  %381 = load i8, ptr %376, align 1, !tbaa !34
  %382 = zext i8 %381 to i32
  %383 = add nsw i32 %382, -128
  %384 = sitofp i32 %383 to float
  store float %384, ptr %84, align 4, !tbaa !38
  %385 = load ptr, ptr %86, align 8, !tbaa !29
  %386 = getelementptr inbounds i8, ptr %385, i64 %97
  %387 = getelementptr inbounds i8, ptr %386, i64 1
  %388 = load i8, ptr %386, align 1, !tbaa !34
  %389 = zext i8 %388 to i32
  %390 = add nsw i32 %389, -128
  %391 = sitofp i32 %390 to float
  store float %391, ptr %85, align 4, !tbaa !38
  %392 = getelementptr inbounds i8, ptr %386, i64 2
  %393 = load i8, ptr %387, align 1, !tbaa !34
  %394 = zext i8 %393 to i32
  %395 = add nsw i32 %394, -128
  %396 = sitofp i32 %395 to float
  store float %396, ptr %87, align 4, !tbaa !38
  %397 = getelementptr inbounds i8, ptr %386, i64 3
  %398 = load i8, ptr %392, align 1, !tbaa !34
  %399 = zext i8 %398 to i32
  %400 = add nsw i32 %399, -128
  %401 = sitofp i32 %400 to float
  store float %401, ptr %88, align 4, !tbaa !38
  %402 = getelementptr inbounds i8, ptr %386, i64 4
  %403 = load i8, ptr %397, align 1, !tbaa !34
  %404 = zext i8 %403 to i32
  %405 = add nsw i32 %404, -128
  %406 = sitofp i32 %405 to float
  store float %406, ptr %89, align 4, !tbaa !38
  %407 = getelementptr inbounds i8, ptr %386, i64 5
  %408 = load i8, ptr %402, align 1, !tbaa !34
  %409 = zext i8 %408 to i32
  %410 = add nsw i32 %409, -128
  %411 = sitofp i32 %410 to float
  store float %411, ptr %90, align 4, !tbaa !38
  %412 = getelementptr inbounds i8, ptr %386, i64 6
  %413 = load i8, ptr %407, align 1, !tbaa !34
  %414 = zext i8 %413 to i32
  %415 = add nsw i32 %414, -128
  %416 = sitofp i32 %415 to float
  store float %416, ptr %91, align 4, !tbaa !38
  %417 = getelementptr inbounds i8, ptr %386, i64 7
  %418 = load i8, ptr %412, align 1, !tbaa !34
  %419 = zext i8 %418 to i32
  %420 = add nsw i32 %419, -128
  %421 = sitofp i32 %420 to float
  store float %421, ptr %92, align 4, !tbaa !38
  %422 = load i8, ptr %417, align 1, !tbaa !34
  %423 = zext i8 %422 to i32
  %424 = add nsw i32 %423, -128
  %425 = sitofp i32 %424 to float
  store float %425, ptr %93, align 4, !tbaa !38
  call void %12(ptr noundef nonnull %8) #4
  %426 = getelementptr inbounds [64 x i16], ptr %3, i64 %95
  br label %427

427:                                              ; preds = %94, %427
  %428 = phi i64 [ 0, %94 ], [ %439, %427 ]
  %429 = getelementptr inbounds [64 x float], ptr %8, i64 0, i64 %428
  %430 = load float, ptr %429, align 4, !tbaa !38
  %431 = getelementptr inbounds float, ptr %18, i64 %428
  %432 = load float, ptr %431, align 4, !tbaa !38
  %433 = fmul float %430, %432
  %434 = fadd float %433, 1.638450e+04
  %435 = fptosi float %434 to i32
  %436 = trunc i32 %435 to i16
  %437 = add i16 %436, -16384
  %438 = getelementptr inbounds i16, ptr %426, i64 %428
  store i16 %437, ptr %438, align 2, !tbaa !35
  %439 = add nuw nsw i64 %428, 1
  %440 = icmp eq i64 %439, 64
  br i1 %440, label %441, label %427

441:                                              ; preds = %427
  %442 = add nuw nsw i64 %95, 1
  %443 = add i32 %96, 8
  %444 = icmp eq i64 %442, %23
  br i1 %444, label %445, label %94

445:                                              ; preds = %441, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #4
  ret void
}

declare dso_local void @jpeg_fdct_float(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 488}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !8, i64 16, !9, i64 24, !8, i64 56, !9, i64 64}
!20 = !{!"jpeg_forward_dct", !8, i64 0, !8, i64 8}
!21 = !{!7, !11, i64 276}
!22 = !{!19, !8, i64 8}
!23 = !{!19, !8, i64 16}
!24 = !{!19, !8, i64 56}
!25 = !{!7, !8, i64 0}
!26 = !{!27, !11, i64 40}
!27 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!28 = !{!27, !8, i64 0}
!29 = !{!8, !8, i64 0}
!30 = !{!7, !11, i64 76}
!31 = !{!7, !8, i64 88}
!32 = !{!33, !11, i64 16}
!33 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!34 = !{!9, !9, i64 0}
!35 = !{!13, !13, i64 0}
!36 = !{!11, !11, i64 0}
!37 = !{!12, !12, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !9, i64 0}
