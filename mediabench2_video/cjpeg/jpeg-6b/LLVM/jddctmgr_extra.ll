; ModuleID = 'jddctmgr.c'
source_filename = "jddctmgr.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@start_pass.aanscales = internal unnamed_addr constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 2
@switch.table.start_pass = private unnamed_addr constant [3 x ptr] [ptr @jpeg_idct_islow, ptr @jpeg_idct_ifast, ptr @jpeg_idct_float], align 8

; Function Attrs: nounwind
define dso_local void @jinit_inverse_dct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef signext 1, i64 noundef 128) #3
  %6 = getelementptr inbounds i8, ptr %0, i64 600
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @start_pass, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds i8, ptr %0, i64 56
  %8 = load i32, ptr %7, align 8, !tbaa !21
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %0, i64 304
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds i8, ptr %5, i64 88
  br label %14

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %22, %14 ]
  %16 = phi ptr [ %12, %10 ], [ %23, %14 ]
  %17 = load ptr, ptr %2, align 8, !tbaa !6
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = tail call ptr %18(ptr noundef nonnull %0, i32 noundef signext 1, i64 noundef 256) #3
  %20 = getelementptr inbounds i8, ptr %16, i64 88
  store ptr %19, ptr %20, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %19, i8 0, i64 256, i1 false)
  %21 = getelementptr inbounds [10 x i32], ptr %13, i64 0, i64 %15
  store i32 -1, ptr %21, align 4, !tbaa !25
  %22 = add nuw nsw i64 %15, 1
  %23 = getelementptr inbounds i8, ptr %16, i64 96
  %24 = load i32, ptr %7, align 8, !tbaa !21
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %14, label %27

27:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind
define internal void @start_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 56
  %3 = load i32, ptr %2, align 8, !tbaa !21
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %498

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 304
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds i8, ptr %0, i64 600
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds i8, ptr %0, i64 96
  %11 = getelementptr inbounds i8, ptr %9, i64 8
  %12 = getelementptr inbounds i8, ptr %9, i64 88
  br label %13

13:                                               ; preds = %5, %492
  %14 = phi i64 [ 0, %5 ], [ %493, %492 ]
  %15 = phi ptr [ %7, %5 ], [ %494, %492 ]
  %16 = phi i32 [ 0, %5 ], [ %41, %492 ]
  %17 = phi ptr [ null, %5 ], [ %40, %492 ]
  %18 = getelementptr inbounds i8, ptr %15, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !26
  switch i32 %19, label %29 [
    i32 1, label %39
    i32 2, label %20
    i32 4, label %21
    i32 8, label %22
  ]

20:                                               ; preds = %13
  br label %39

21:                                               ; preds = %13
  br label %39

22:                                               ; preds = %13
  %23 = load i32, ptr %10, align 8, !tbaa !27
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 8, !tbaa !28
  %27 = getelementptr inbounds i8, ptr %26, i64 40
  store i32 48, ptr %27, align 8, !tbaa !29
  %28 = load ptr, ptr %26, align 8, !tbaa !31
  tail call void %28(ptr noundef nonnull %0) #3
  br label %39

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !28
  %31 = getelementptr inbounds i8, ptr %30, i64 40
  store i32 7, ptr %31, align 8, !tbaa !29
  %32 = getelementptr inbounds i8, ptr %30, i64 44
  store i32 %19, ptr %32, align 4, !tbaa !32
  %33 = load ptr, ptr %0, align 8, !tbaa !28
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  tail call void %34(ptr noundef nonnull %0) #3
  br label %39

35:                                               ; preds = %22
  %36 = zext nneg i32 %23 to i64
  %37 = getelementptr inbounds [3 x ptr], ptr @switch.table.start_pass, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8
  br label %39

39:                                               ; preds = %35, %13, %25, %29, %21, %20
  %40 = phi ptr [ %17, %29 ], [ %17, %25 ], [ @jpeg_idct_4x4, %21 ], [ @jpeg_idct_2x2, %20 ], [ @jpeg_idct_1x1, %13 ], [ %38, %35 ]
  %41 = phi i32 [ %16, %29 ], [ %16, %25 ], [ 0, %21 ], [ 0, %20 ], [ 0, %13 ], [ %23, %35 ]
  %42 = getelementptr inbounds [10 x ptr], ptr %11, i64 0, i64 %14
  store ptr %40, ptr %42, align 8, !tbaa !33
  %43 = getelementptr inbounds i8, ptr %15, i64 48
  %44 = load i32, ptr %43, align 8, !tbaa !34
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %492, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds [10 x i32], ptr %12, i64 0, i64 %14
  %48 = load i32, ptr %47, align 4, !tbaa !25
  %49 = icmp eq i32 %48, %41
  br i1 %49, label %492, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %15, i64 80
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = icmp eq ptr %52, null
  br i1 %53, label %492, label %54

54:                                               ; preds = %50
  store i32 %41, ptr %47, align 4, !tbaa !25
  %55 = getelementptr inbounds i8, ptr %15, i64 88
  %56 = load ptr, ptr %55, align 8, !tbaa !23
  switch i32 %41, label %491 [
    i32 0, label %57
    i32 1, label %65
    i32 2, label %80
  ]

57:                                               ; preds = %54, %57
  %58 = phi i64 [ %63, %57 ], [ 0, %54 ]
  %59 = getelementptr inbounds [64 x i16], ptr %52, i64 0, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !36
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds i32, ptr %56, i64 %58
  store i32 %61, ptr %62, align 4, !tbaa !25
  %63 = add nuw nsw i64 %58, 1
  %64 = icmp eq i64 %63, 64
  br i1 %64, label %492, label %57

65:                                               ; preds = %54, %65
  %66 = phi i64 [ %78, %65 ], [ 0, %54 ]
  %67 = getelementptr inbounds [64 x i16], ptr %52, i64 0, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !36
  %69 = zext i16 %68 to i64
  %70 = getelementptr inbounds [64 x i16], ptr @start_pass.aanscales, i64 0, i64 %66
  %71 = load i16, ptr %70, align 2, !tbaa !36
  %72 = sext i16 %71 to i64
  %73 = mul nsw i64 %72, %69
  %74 = add nsw i64 %73, 2048
  %75 = ashr i64 %74, 12
  %76 = trunc nsw i64 %75 to i32
  %77 = getelementptr inbounds i32, ptr %56, i64 %66
  store i32 %76, ptr %77, align 4, !tbaa !25
  %78 = add nuw nsw i64 %66, 1
  %79 = icmp eq i64 %78, 64
  br i1 %79, label %492, label %65

80:                                               ; preds = %54
  %81 = load i16, ptr %52, align 2, !tbaa !36
  %82 = uitofp i16 %81 to float
  store float %82, ptr %56, align 4, !tbaa !37
  %83 = getelementptr inbounds i8, ptr %52, i64 2
  %84 = load i16, ptr %83, align 2, !tbaa !36
  %85 = uitofp i16 %84 to double
  %86 = fmul double %85, 0x3FF63150B14861EF
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds i8, ptr %56, i64 4
  store float %87, ptr %88, align 4, !tbaa !37
  %89 = getelementptr inbounds i8, ptr %52, i64 4
  %90 = load i16, ptr %89, align 2, !tbaa !36
  %91 = uitofp i16 %90 to double
  %92 = fmul double %91, 0x3FF4E7AE914D6FCA
  %93 = fptrunc double %92 to float
  %94 = getelementptr inbounds i8, ptr %56, i64 8
  store float %93, ptr %94, align 4, !tbaa !37
  %95 = getelementptr inbounds i8, ptr %52, i64 6
  %96 = load i16, ptr %95, align 2, !tbaa !36
  %97 = uitofp i16 %96 to double
  %98 = fmul double %97, 0x3FF2D062EF6C11AA
  %99 = fptrunc double %98 to float
  %100 = getelementptr inbounds i8, ptr %56, i64 12
  store float %99, ptr %100, align 4, !tbaa !37
  %101 = getelementptr inbounds i8, ptr %52, i64 8
  %102 = load i16, ptr %101, align 2, !tbaa !36
  %103 = uitofp i16 %102 to float
  %104 = getelementptr inbounds i8, ptr %56, i64 16
  store float %103, ptr %104, align 4, !tbaa !37
  %105 = getelementptr inbounds i8, ptr %52, i64 10
  %106 = load i16, ptr %105, align 2, !tbaa !36
  %107 = uitofp i16 %106 to double
  %108 = fmul double %107, 0x3FE92469C0A7BF3B
  %109 = fptrunc double %108 to float
  %110 = getelementptr inbounds i8, ptr %56, i64 20
  store float %109, ptr %110, align 4, !tbaa !37
  %111 = getelementptr inbounds i8, ptr %52, i64 12
  %112 = load i16, ptr %111, align 2, !tbaa !36
  %113 = uitofp i16 %112 to double
  %114 = fmul double %113, 0x3FE1517A7BC720BB
  %115 = fptrunc double %114 to float
  %116 = getelementptr inbounds i8, ptr %56, i64 24
  store float %115, ptr %116, align 4, !tbaa !37
  %117 = getelementptr inbounds i8, ptr %52, i64 14
  %118 = load i16, ptr %117, align 2, !tbaa !36
  %119 = uitofp i16 %118 to double
  %120 = fmul double %119, 0x3FD1A855DE72AB5D
  %121 = fptrunc double %120 to float
  %122 = getelementptr inbounds i8, ptr %56, i64 28
  store float %121, ptr %122, align 4, !tbaa !37
  %123 = getelementptr inbounds i8, ptr %52, i64 16
  %124 = load i16, ptr %123, align 2, !tbaa !36
  %125 = uitofp i16 %124 to double
  %126 = fmul double %125, 0x3FF63150B14861EF
  %127 = fptrunc double %126 to float
  %128 = getelementptr inbounds i8, ptr %56, i64 32
  store float %127, ptr %128, align 4, !tbaa !37
  %129 = getelementptr inbounds i8, ptr %52, i64 18
  %130 = load i16, ptr %129, align 2, !tbaa !36
  %131 = uitofp i16 %130 to double
  %132 = fmul double %131, 0x3FF63150B14861EF
  %133 = fmul double %132, 0x3FF63150B14861EF
  %134 = fptrunc double %133 to float
  %135 = getelementptr inbounds i8, ptr %56, i64 36
  store float %134, ptr %135, align 4, !tbaa !37
  %136 = getelementptr inbounds i8, ptr %52, i64 20
  %137 = load i16, ptr %136, align 2, !tbaa !36
  %138 = uitofp i16 %137 to double
  %139 = fmul double %138, 0x3FF63150B14861EF
  %140 = fmul double %139, 0x3FF4E7AE914D6FCA
  %141 = fptrunc double %140 to float
  %142 = getelementptr inbounds i8, ptr %56, i64 40
  store float %141, ptr %142, align 4, !tbaa !37
  %143 = getelementptr inbounds i8, ptr %52, i64 22
  %144 = load i16, ptr %143, align 2, !tbaa !36
  %145 = uitofp i16 %144 to double
  %146 = fmul double %145, 0x3FF63150B14861EF
  %147 = fmul double %146, 0x3FF2D062EF6C11AA
  %148 = fptrunc double %147 to float
  %149 = getelementptr inbounds i8, ptr %56, i64 44
  store float %148, ptr %149, align 4, !tbaa !37
  %150 = getelementptr inbounds i8, ptr %52, i64 24
  %151 = load i16, ptr %150, align 2, !tbaa !36
  %152 = uitofp i16 %151 to double
  %153 = fmul double %152, 0x3FF63150B14861EF
  %154 = fptrunc double %153 to float
  %155 = getelementptr inbounds i8, ptr %56, i64 48
  store float %154, ptr %155, align 4, !tbaa !37
  %156 = getelementptr inbounds i8, ptr %52, i64 26
  %157 = load i16, ptr %156, align 2, !tbaa !36
  %158 = uitofp i16 %157 to double
  %159 = fmul double %158, 0x3FF63150B14861EF
  %160 = fmul double %159, 0x3FE92469C0A7BF3B
  %161 = fptrunc double %160 to float
  %162 = getelementptr inbounds i8, ptr %56, i64 52
  store float %161, ptr %162, align 4, !tbaa !37
  %163 = getelementptr inbounds i8, ptr %52, i64 28
  %164 = load i16, ptr %163, align 2, !tbaa !36
  %165 = uitofp i16 %164 to double
  %166 = fmul double %165, 0x3FF63150B14861EF
  %167 = fmul double %166, 0x3FE1517A7BC720BB
  %168 = fptrunc double %167 to float
  %169 = getelementptr inbounds i8, ptr %56, i64 56
  store float %168, ptr %169, align 4, !tbaa !37
  %170 = getelementptr inbounds i8, ptr %52, i64 30
  %171 = load i16, ptr %170, align 2, !tbaa !36
  %172 = uitofp i16 %171 to double
  %173 = fmul double %172, 0x3FF63150B14861EF
  %174 = fmul double %173, 0x3FD1A855DE72AB5D
  %175 = fptrunc double %174 to float
  %176 = getelementptr inbounds i8, ptr %56, i64 60
  store float %175, ptr %176, align 4, !tbaa !37
  %177 = getelementptr inbounds i8, ptr %52, i64 32
  %178 = load i16, ptr %177, align 2, !tbaa !36
  %179 = uitofp i16 %178 to double
  %180 = fmul double %179, 0x3FF4E7AE914D6FCA
  %181 = fptrunc double %180 to float
  %182 = getelementptr inbounds i8, ptr %56, i64 64
  store float %181, ptr %182, align 4, !tbaa !37
  %183 = getelementptr inbounds i8, ptr %52, i64 34
  %184 = load i16, ptr %183, align 2, !tbaa !36
  %185 = uitofp i16 %184 to double
  %186 = fmul double %185, 0x3FF4E7AE914D6FCA
  %187 = fmul double %186, 0x3FF63150B14861EF
  %188 = fptrunc double %187 to float
  %189 = getelementptr inbounds i8, ptr %56, i64 68
  store float %188, ptr %189, align 4, !tbaa !37
  %190 = getelementptr inbounds i8, ptr %52, i64 36
  %191 = load i16, ptr %190, align 2, !tbaa !36
  %192 = uitofp i16 %191 to double
  %193 = fmul double %192, 0x3FF4E7AE914D6FCA
  %194 = fmul double %193, 0x3FF4E7AE914D6FCA
  %195 = fptrunc double %194 to float
  %196 = getelementptr inbounds i8, ptr %56, i64 72
  store float %195, ptr %196, align 4, !tbaa !37
  %197 = getelementptr inbounds i8, ptr %52, i64 38
  %198 = load i16, ptr %197, align 2, !tbaa !36
  %199 = uitofp i16 %198 to double
  %200 = fmul double %199, 0x3FF4E7AE914D6FCA
  %201 = fmul double %200, 0x3FF2D062EF6C11AA
  %202 = fptrunc double %201 to float
  %203 = getelementptr inbounds i8, ptr %56, i64 76
  store float %202, ptr %203, align 4, !tbaa !37
  %204 = getelementptr inbounds i8, ptr %52, i64 40
  %205 = load i16, ptr %204, align 2, !tbaa !36
  %206 = uitofp i16 %205 to double
  %207 = fmul double %206, 0x3FF4E7AE914D6FCA
  %208 = fptrunc double %207 to float
  %209 = getelementptr inbounds i8, ptr %56, i64 80
  store float %208, ptr %209, align 4, !tbaa !37
  %210 = getelementptr inbounds i8, ptr %52, i64 42
  %211 = load i16, ptr %210, align 2, !tbaa !36
  %212 = uitofp i16 %211 to double
  %213 = fmul double %212, 0x3FF4E7AE914D6FCA
  %214 = fmul double %213, 0x3FE92469C0A7BF3B
  %215 = fptrunc double %214 to float
  %216 = getelementptr inbounds i8, ptr %56, i64 84
  store float %215, ptr %216, align 4, !tbaa !37
  %217 = getelementptr inbounds i8, ptr %52, i64 44
  %218 = load i16, ptr %217, align 2, !tbaa !36
  %219 = uitofp i16 %218 to double
  %220 = fmul double %219, 0x3FF4E7AE914D6FCA
  %221 = fmul double %220, 0x3FE1517A7BC720BB
  %222 = fptrunc double %221 to float
  %223 = getelementptr inbounds i8, ptr %56, i64 88
  store float %222, ptr %223, align 4, !tbaa !37
  %224 = getelementptr inbounds i8, ptr %52, i64 46
  %225 = load i16, ptr %224, align 2, !tbaa !36
  %226 = uitofp i16 %225 to double
  %227 = fmul double %226, 0x3FF4E7AE914D6FCA
  %228 = fmul double %227, 0x3FD1A855DE72AB5D
  %229 = fptrunc double %228 to float
  %230 = getelementptr inbounds i8, ptr %56, i64 92
  store float %229, ptr %230, align 4, !tbaa !37
  %231 = getelementptr inbounds i8, ptr %52, i64 48
  %232 = load i16, ptr %231, align 2, !tbaa !36
  %233 = uitofp i16 %232 to double
  %234 = fmul double %233, 0x3FF2D062EF6C11AA
  %235 = fptrunc double %234 to float
  %236 = getelementptr inbounds i8, ptr %56, i64 96
  store float %235, ptr %236, align 4, !tbaa !37
  %237 = getelementptr inbounds i8, ptr %52, i64 50
  %238 = load i16, ptr %237, align 2, !tbaa !36
  %239 = uitofp i16 %238 to double
  %240 = fmul double %239, 0x3FF2D062EF6C11AA
  %241 = fmul double %240, 0x3FF63150B14861EF
  %242 = fptrunc double %241 to float
  %243 = getelementptr inbounds i8, ptr %56, i64 100
  store float %242, ptr %243, align 4, !tbaa !37
  %244 = getelementptr inbounds i8, ptr %52, i64 52
  %245 = load i16, ptr %244, align 2, !tbaa !36
  %246 = uitofp i16 %245 to double
  %247 = fmul double %246, 0x3FF2D062EF6C11AA
  %248 = fmul double %247, 0x3FF4E7AE914D6FCA
  %249 = fptrunc double %248 to float
  %250 = getelementptr inbounds i8, ptr %56, i64 104
  store float %249, ptr %250, align 4, !tbaa !37
  %251 = getelementptr inbounds i8, ptr %52, i64 54
  %252 = load i16, ptr %251, align 2, !tbaa !36
  %253 = uitofp i16 %252 to double
  %254 = fmul double %253, 0x3FF2D062EF6C11AA
  %255 = fmul double %254, 0x3FF2D062EF6C11AA
  %256 = fptrunc double %255 to float
  %257 = getelementptr inbounds i8, ptr %56, i64 108
  store float %256, ptr %257, align 4, !tbaa !37
  %258 = getelementptr inbounds i8, ptr %52, i64 56
  %259 = load i16, ptr %258, align 2, !tbaa !36
  %260 = uitofp i16 %259 to double
  %261 = fmul double %260, 0x3FF2D062EF6C11AA
  %262 = fptrunc double %261 to float
  %263 = getelementptr inbounds i8, ptr %56, i64 112
  store float %262, ptr %263, align 4, !tbaa !37
  %264 = getelementptr inbounds i8, ptr %52, i64 58
  %265 = load i16, ptr %264, align 2, !tbaa !36
  %266 = uitofp i16 %265 to double
  %267 = fmul double %266, 0x3FF2D062EF6C11AA
  %268 = fmul double %267, 0x3FE92469C0A7BF3B
  %269 = fptrunc double %268 to float
  %270 = getelementptr inbounds i8, ptr %56, i64 116
  store float %269, ptr %270, align 4, !tbaa !37
  %271 = getelementptr inbounds i8, ptr %52, i64 60
  %272 = load i16, ptr %271, align 2, !tbaa !36
  %273 = uitofp i16 %272 to double
  %274 = fmul double %273, 0x3FF2D062EF6C11AA
  %275 = fmul double %274, 0x3FE1517A7BC720BB
  %276 = fptrunc double %275 to float
  %277 = getelementptr inbounds i8, ptr %56, i64 120
  store float %276, ptr %277, align 4, !tbaa !37
  %278 = getelementptr inbounds i8, ptr %52, i64 62
  %279 = load i16, ptr %278, align 2, !tbaa !36
  %280 = uitofp i16 %279 to double
  %281 = fmul double %280, 0x3FF2D062EF6C11AA
  %282 = fmul double %281, 0x3FD1A855DE72AB5D
  %283 = fptrunc double %282 to float
  %284 = getelementptr inbounds i8, ptr %56, i64 124
  store float %283, ptr %284, align 4, !tbaa !37
  %285 = getelementptr inbounds i8, ptr %52, i64 64
  %286 = load i16, ptr %285, align 2, !tbaa !36
  %287 = uitofp i16 %286 to float
  %288 = getelementptr inbounds i8, ptr %56, i64 128
  store float %287, ptr %288, align 4, !tbaa !37
  %289 = getelementptr inbounds i8, ptr %52, i64 66
  %290 = load i16, ptr %289, align 2, !tbaa !36
  %291 = uitofp i16 %290 to double
  %292 = fmul double %291, 0x3FF63150B14861EF
  %293 = fptrunc double %292 to float
  %294 = getelementptr inbounds i8, ptr %56, i64 132
  store float %293, ptr %294, align 4, !tbaa !37
  %295 = getelementptr inbounds i8, ptr %52, i64 68
  %296 = load i16, ptr %295, align 2, !tbaa !36
  %297 = uitofp i16 %296 to double
  %298 = fmul double %297, 0x3FF4E7AE914D6FCA
  %299 = fptrunc double %298 to float
  %300 = getelementptr inbounds i8, ptr %56, i64 136
  store float %299, ptr %300, align 4, !tbaa !37
  %301 = getelementptr inbounds i8, ptr %52, i64 70
  %302 = load i16, ptr %301, align 2, !tbaa !36
  %303 = uitofp i16 %302 to double
  %304 = fmul double %303, 0x3FF2D062EF6C11AA
  %305 = fptrunc double %304 to float
  %306 = getelementptr inbounds i8, ptr %56, i64 140
  store float %305, ptr %306, align 4, !tbaa !37
  %307 = getelementptr inbounds i8, ptr %52, i64 72
  %308 = load i16, ptr %307, align 2, !tbaa !36
  %309 = uitofp i16 %308 to float
  %310 = getelementptr inbounds i8, ptr %56, i64 144
  store float %309, ptr %310, align 4, !tbaa !37
  %311 = getelementptr inbounds i8, ptr %52, i64 74
  %312 = load i16, ptr %311, align 2, !tbaa !36
  %313 = uitofp i16 %312 to double
  %314 = fmul double %313, 0x3FE92469C0A7BF3B
  %315 = fptrunc double %314 to float
  %316 = getelementptr inbounds i8, ptr %56, i64 148
  store float %315, ptr %316, align 4, !tbaa !37
  %317 = getelementptr inbounds i8, ptr %52, i64 76
  %318 = load i16, ptr %317, align 2, !tbaa !36
  %319 = uitofp i16 %318 to double
  %320 = fmul double %319, 0x3FE1517A7BC720BB
  %321 = fptrunc double %320 to float
  %322 = getelementptr inbounds i8, ptr %56, i64 152
  store float %321, ptr %322, align 4, !tbaa !37
  %323 = getelementptr inbounds i8, ptr %52, i64 78
  %324 = load i16, ptr %323, align 2, !tbaa !36
  %325 = uitofp i16 %324 to double
  %326 = fmul double %325, 0x3FD1A855DE72AB5D
  %327 = fptrunc double %326 to float
  %328 = getelementptr inbounds i8, ptr %56, i64 156
  store float %327, ptr %328, align 4, !tbaa !37
  %329 = getelementptr inbounds i8, ptr %52, i64 80
  %330 = load i16, ptr %329, align 2, !tbaa !36
  %331 = uitofp i16 %330 to double
  %332 = fmul double %331, 0x3FE92469C0A7BF3B
  %333 = fptrunc double %332 to float
  %334 = getelementptr inbounds i8, ptr %56, i64 160
  store float %333, ptr %334, align 4, !tbaa !37
  %335 = getelementptr inbounds i8, ptr %52, i64 82
  %336 = load i16, ptr %335, align 2, !tbaa !36
  %337 = uitofp i16 %336 to double
  %338 = fmul double %337, 0x3FE92469C0A7BF3B
  %339 = fmul double %338, 0x3FF63150B14861EF
  %340 = fptrunc double %339 to float
  %341 = getelementptr inbounds i8, ptr %56, i64 164
  store float %340, ptr %341, align 4, !tbaa !37
  %342 = getelementptr inbounds i8, ptr %52, i64 84
  %343 = load i16, ptr %342, align 2, !tbaa !36
  %344 = uitofp i16 %343 to double
  %345 = fmul double %344, 0x3FE92469C0A7BF3B
  %346 = fmul double %345, 0x3FF4E7AE914D6FCA
  %347 = fptrunc double %346 to float
  %348 = getelementptr inbounds i8, ptr %56, i64 168
  store float %347, ptr %348, align 4, !tbaa !37
  %349 = getelementptr inbounds i8, ptr %52, i64 86
  %350 = load i16, ptr %349, align 2, !tbaa !36
  %351 = uitofp i16 %350 to double
  %352 = fmul double %351, 0x3FE92469C0A7BF3B
  %353 = fmul double %352, 0x3FF2D062EF6C11AA
  %354 = fptrunc double %353 to float
  %355 = getelementptr inbounds i8, ptr %56, i64 172
  store float %354, ptr %355, align 4, !tbaa !37
  %356 = getelementptr inbounds i8, ptr %52, i64 88
  %357 = load i16, ptr %356, align 2, !tbaa !36
  %358 = uitofp i16 %357 to double
  %359 = fmul double %358, 0x3FE92469C0A7BF3B
  %360 = fptrunc double %359 to float
  %361 = getelementptr inbounds i8, ptr %56, i64 176
  store float %360, ptr %361, align 4, !tbaa !37
  %362 = getelementptr inbounds i8, ptr %52, i64 90
  %363 = load i16, ptr %362, align 2, !tbaa !36
  %364 = uitofp i16 %363 to double
  %365 = fmul double %364, 0x3FE92469C0A7BF3B
  %366 = fmul double %365, 0x3FE92469C0A7BF3B
  %367 = fptrunc double %366 to float
  %368 = getelementptr inbounds i8, ptr %56, i64 180
  store float %367, ptr %368, align 4, !tbaa !37
  %369 = getelementptr inbounds i8, ptr %52, i64 92
  %370 = load i16, ptr %369, align 2, !tbaa !36
  %371 = uitofp i16 %370 to double
  %372 = fmul double %371, 0x3FE92469C0A7BF3B
  %373 = fmul double %372, 0x3FE1517A7BC720BB
  %374 = fptrunc double %373 to float
  %375 = getelementptr inbounds i8, ptr %56, i64 184
  store float %374, ptr %375, align 4, !tbaa !37
  %376 = getelementptr inbounds i8, ptr %52, i64 94
  %377 = load i16, ptr %376, align 2, !tbaa !36
  %378 = uitofp i16 %377 to double
  %379 = fmul double %378, 0x3FE92469C0A7BF3B
  %380 = fmul double %379, 0x3FD1A855DE72AB5D
  %381 = fptrunc double %380 to float
  %382 = getelementptr inbounds i8, ptr %56, i64 188
  store float %381, ptr %382, align 4, !tbaa !37
  %383 = getelementptr inbounds i8, ptr %52, i64 96
  %384 = load i16, ptr %383, align 2, !tbaa !36
  %385 = uitofp i16 %384 to double
  %386 = fmul double %385, 0x3FE1517A7BC720BB
  %387 = fptrunc double %386 to float
  %388 = getelementptr inbounds i8, ptr %56, i64 192
  store float %387, ptr %388, align 4, !tbaa !37
  %389 = getelementptr inbounds i8, ptr %52, i64 98
  %390 = load i16, ptr %389, align 2, !tbaa !36
  %391 = uitofp i16 %390 to double
  %392 = fmul double %391, 0x3FE1517A7BC720BB
  %393 = fmul double %392, 0x3FF63150B14861EF
  %394 = fptrunc double %393 to float
  %395 = getelementptr inbounds i8, ptr %56, i64 196
  store float %394, ptr %395, align 4, !tbaa !37
  %396 = getelementptr inbounds i8, ptr %52, i64 100
  %397 = load i16, ptr %396, align 2, !tbaa !36
  %398 = uitofp i16 %397 to double
  %399 = fmul double %398, 0x3FE1517A7BC720BB
  %400 = fmul double %399, 0x3FF4E7AE914D6FCA
  %401 = fptrunc double %400 to float
  %402 = getelementptr inbounds i8, ptr %56, i64 200
  store float %401, ptr %402, align 4, !tbaa !37
  %403 = getelementptr inbounds i8, ptr %52, i64 102
  %404 = load i16, ptr %403, align 2, !tbaa !36
  %405 = uitofp i16 %404 to double
  %406 = fmul double %405, 0x3FE1517A7BC720BB
  %407 = fmul double %406, 0x3FF2D062EF6C11AA
  %408 = fptrunc double %407 to float
  %409 = getelementptr inbounds i8, ptr %56, i64 204
  store float %408, ptr %409, align 4, !tbaa !37
  %410 = getelementptr inbounds i8, ptr %52, i64 104
  %411 = load i16, ptr %410, align 2, !tbaa !36
  %412 = uitofp i16 %411 to double
  %413 = fmul double %412, 0x3FE1517A7BC720BB
  %414 = fptrunc double %413 to float
  %415 = getelementptr inbounds i8, ptr %56, i64 208
  store float %414, ptr %415, align 4, !tbaa !37
  %416 = getelementptr inbounds i8, ptr %52, i64 106
  %417 = load i16, ptr %416, align 2, !tbaa !36
  %418 = uitofp i16 %417 to double
  %419 = fmul double %418, 0x3FE1517A7BC720BB
  %420 = fmul double %419, 0x3FE92469C0A7BF3B
  %421 = fptrunc double %420 to float
  %422 = getelementptr inbounds i8, ptr %56, i64 212
  store float %421, ptr %422, align 4, !tbaa !37
  %423 = getelementptr inbounds i8, ptr %52, i64 108
  %424 = load i16, ptr %423, align 2, !tbaa !36
  %425 = uitofp i16 %424 to double
  %426 = fmul double %425, 0x3FE1517A7BC720BB
  %427 = fmul double %426, 0x3FE1517A7BC720BB
  %428 = fptrunc double %427 to float
  %429 = getelementptr inbounds i8, ptr %56, i64 216
  store float %428, ptr %429, align 4, !tbaa !37
  %430 = getelementptr inbounds i8, ptr %52, i64 110
  %431 = load i16, ptr %430, align 2, !tbaa !36
  %432 = uitofp i16 %431 to double
  %433 = fmul double %432, 0x3FE1517A7BC720BB
  %434 = fmul double %433, 0x3FD1A855DE72AB5D
  %435 = fptrunc double %434 to float
  %436 = getelementptr inbounds i8, ptr %56, i64 220
  store float %435, ptr %436, align 4, !tbaa !37
  %437 = getelementptr inbounds i8, ptr %52, i64 112
  %438 = load i16, ptr %437, align 2, !tbaa !36
  %439 = uitofp i16 %438 to double
  %440 = fmul double %439, 0x3FD1A855DE72AB5D
  %441 = fptrunc double %440 to float
  %442 = getelementptr inbounds i8, ptr %56, i64 224
  store float %441, ptr %442, align 4, !tbaa !37
  %443 = getelementptr inbounds i8, ptr %52, i64 114
  %444 = load i16, ptr %443, align 2, !tbaa !36
  %445 = uitofp i16 %444 to double
  %446 = fmul double %445, 0x3FD1A855DE72AB5D
  %447 = fmul double %446, 0x3FF63150B14861EF
  %448 = fptrunc double %447 to float
  %449 = getelementptr inbounds i8, ptr %56, i64 228
  store float %448, ptr %449, align 4, !tbaa !37
  %450 = getelementptr inbounds i8, ptr %52, i64 116
  %451 = load i16, ptr %450, align 2, !tbaa !36
  %452 = uitofp i16 %451 to double
  %453 = fmul double %452, 0x3FD1A855DE72AB5D
  %454 = fmul double %453, 0x3FF4E7AE914D6FCA
  %455 = fptrunc double %454 to float
  %456 = getelementptr inbounds i8, ptr %56, i64 232
  store float %455, ptr %456, align 4, !tbaa !37
  %457 = getelementptr inbounds i8, ptr %52, i64 118
  %458 = load i16, ptr %457, align 2, !tbaa !36
  %459 = uitofp i16 %458 to double
  %460 = fmul double %459, 0x3FD1A855DE72AB5D
  %461 = fmul double %460, 0x3FF2D062EF6C11AA
  %462 = fptrunc double %461 to float
  %463 = getelementptr inbounds i8, ptr %56, i64 236
  store float %462, ptr %463, align 4, !tbaa !37
  %464 = getelementptr inbounds i8, ptr %52, i64 120
  %465 = load i16, ptr %464, align 2, !tbaa !36
  %466 = uitofp i16 %465 to double
  %467 = fmul double %466, 0x3FD1A855DE72AB5D
  %468 = fptrunc double %467 to float
  %469 = getelementptr inbounds i8, ptr %56, i64 240
  store float %468, ptr %469, align 4, !tbaa !37
  %470 = getelementptr inbounds i8, ptr %52, i64 122
  %471 = load i16, ptr %470, align 2, !tbaa !36
  %472 = uitofp i16 %471 to double
  %473 = fmul double %472, 0x3FD1A855DE72AB5D
  %474 = fmul double %473, 0x3FE92469C0A7BF3B
  %475 = fptrunc double %474 to float
  %476 = getelementptr inbounds i8, ptr %56, i64 244
  store float %475, ptr %476, align 4, !tbaa !37
  %477 = getelementptr inbounds i8, ptr %52, i64 124
  %478 = load i16, ptr %477, align 2, !tbaa !36
  %479 = uitofp i16 %478 to double
  %480 = fmul double %479, 0x3FD1A855DE72AB5D
  %481 = fmul double %480, 0x3FE1517A7BC720BB
  %482 = fptrunc double %481 to float
  %483 = getelementptr inbounds i8, ptr %56, i64 248
  store float %482, ptr %483, align 4, !tbaa !37
  %484 = getelementptr inbounds i8, ptr %52, i64 126
  %485 = load i16, ptr %484, align 2, !tbaa !36
  %486 = uitofp i16 %485 to double
  %487 = fmul double %486, 0x3FD1A855DE72AB5D
  %488 = fmul double %487, 0x3FD1A855DE72AB5D
  %489 = fptrunc double %488 to float
  %490 = getelementptr inbounds i8, ptr %56, i64 252
  store float %489, ptr %490, align 4, !tbaa !37
  br label %492

491:                                              ; preds = %54
  unreachable

492:                                              ; preds = %65, %57, %80, %50, %39, %46
  %493 = add nuw nsw i64 %14, 1
  %494 = getelementptr inbounds i8, ptr %15, i64 96
  %495 = load i32, ptr %2, align 8, !tbaa !21
  %496 = sext i32 %495 to i64
  %497 = icmp slt i64 %493, %496
  br i1 %497, label %13, label %498

498:                                              ; preds = %492, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @jpeg_idct_1x1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) #2

declare dso_local void @jpeg_idct_2x2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) #2

declare dso_local void @jpeg_idct_4x4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) #2

declare dso_local void @jpeg_idct_islow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) #2

declare dso_local void @jpeg_idct_ifast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) #2

declare dso_local void @jpeg_idct_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !8, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !11, i64 296, !8, i64 304, !11, i64 312, !11, i64 316, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 368, !11, i64 372, !9, i64 376, !9, i64 377, !9, i64 378, !13, i64 380, !13, i64 382, !11, i64 384, !9, i64 388, !11, i64 392, !8, i64 400, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !11, i64 432, !9, i64 440, !11, i64 472, !11, i64 476, !11, i64 480, !9, i64 484, !11, i64 524, !11, i64 528, !11, i64 532, !11, i64 536, !11, i64 540, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 600}
!18 = !{!19, !8, i64 0}
!19 = !{!"", !20, i64 0, !9, i64 88}
!20 = !{!"jpeg_inverse_dct", !8, i64 0, !9, i64 8}
!21 = !{!7, !11, i64 56}
!22 = !{!7, !8, i64 304}
!23 = !{!24, !8, i64 88}
!24 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!25 = !{!11, !11, i64 0}
!26 = !{!24, !11, i64 36}
!27 = !{!7, !11, i64 96}
!28 = !{!7, !8, i64 0}
!29 = !{!30, !11, i64 40}
!30 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !16, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!31 = !{!30, !8, i64 0}
!32 = !{!9, !9, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{!24, !11, i64 48}
!35 = !{!24, !8, i64 80}
!36 = !{!13, !13, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !9, i64 0}
