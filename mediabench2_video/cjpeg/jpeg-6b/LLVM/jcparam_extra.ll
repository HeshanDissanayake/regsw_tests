; ModuleID = 'jcparam.c'
source_filename = "jcparam.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@jpeg_set_linear_quality.std_luminance_quant_tbl = internal unnamed_addr constant [64 x i32] [i32 16, i32 11, i32 10, i32 16, i32 24, i32 40, i32 51, i32 61, i32 12, i32 12, i32 14, i32 19, i32 26, i32 58, i32 60, i32 55, i32 14, i32 13, i32 16, i32 24, i32 40, i32 57, i32 69, i32 56, i32 14, i32 17, i32 22, i32 29, i32 51, i32 87, i32 80, i32 62, i32 18, i32 22, i32 37, i32 56, i32 68, i32 109, i32 103, i32 77, i32 24, i32 35, i32 55, i32 64, i32 81, i32 104, i32 113, i32 92, i32 49, i32 64, i32 78, i32 87, i32 103, i32 121, i32 120, i32 101, i32 72, i32 92, i32 95, i32 98, i32 112, i32 100, i32 103, i32 99], align 4
@jpeg_set_linear_quality.std_chrominance_quant_tbl = internal unnamed_addr constant [64 x i32] [i32 17, i32 18, i32 24, i32 47, i32 99, i32 99, i32 99, i32 99, i32 18, i32 21, i32 26, i32 66, i32 99, i32 99, i32 99, i32 99, i32 24, i32 26, i32 56, i32 99, i32 99, i32 99, i32 99, i32 99, i32 47, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 4
@std_huff_tables.bits_dc_luminance = internal unnamed_addr constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 1
@std_huff_tables.bits_dc_chrominance = internal unnamed_addr constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 1
@std_huff_tables.val_dc_chrominance = internal unnamed_addr constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_ac_luminance = internal unnamed_addr constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 1
@std_huff_tables.val_ac_luminance = internal unnamed_addr constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 1
@std_huff_tables.bits_ac_chrominance = internal unnamed_addr constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 1
@std_huff_tables.val_ac_chrominance = internal unnamed_addr constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 1

; Function Attrs: nounwind
define dso_local void @jpeg_add_quant_table(ptr noundef %0, i32 noundef signext %1, ptr nocapture noundef readonly %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds i8, ptr %0, i64 36
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 100
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = getelementptr inbounds i8, ptr %10, i64 40
  store i32 20, ptr %11, align 8, !tbaa !15
  %12 = getelementptr inbounds i8, ptr %10, i64 44
  store i32 %7, ptr %12, align 4, !tbaa !18
  %13 = load ptr, ptr %0, align 8, !tbaa !14
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void %14(ptr noundef nonnull %0) #6
  br label %15

15:                                               ; preds = %9, %5
  %16 = icmp ugt i32 %1, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  store i32 31, ptr %19, align 8, !tbaa !15
  %20 = getelementptr inbounds i8, ptr %18, i64 44
  store i32 %1, ptr %20, align 4, !tbaa !18
  %21 = load ptr, ptr %0, align 8, !tbaa !14
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  tail call void %22(ptr noundef nonnull %0) #6
  br label %23

23:                                               ; preds = %15, %17
  %24 = getelementptr inbounds i8, ptr %0, i64 96
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds [4 x ptr], ptr %24, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %0) #6
  store ptr %30, ptr %26, align 8, !tbaa !20
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %30, %29 ], [ %27, %23 ]
  %33 = sext i32 %3 to i64
  %34 = icmp eq i32 %4, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %47, %35 ], [ 0, %31 ]
  %37 = getelementptr inbounds i32, ptr %2, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !21
  %39 = zext i32 %38 to i64
  %40 = mul nsw i64 %39, %33
  %41 = add nsw i64 %40, 50
  %42 = sdiv i64 %41, 100
  %43 = tail call i64 @llvm.smax.i64(i64 %42, i64 1)
  %44 = tail call i64 @llvm.umin.i64(i64 %43, i64 32767)
  %45 = trunc nuw nsw i64 %44 to i16
  %46 = getelementptr inbounds [64 x i16], ptr %32, i64 0, i64 %36
  store i16 %45, ptr %46, align 2, !tbaa !22
  %47 = add nuw nsw i64 %36, 1
  %48 = icmp eq i64 %47, 64
  br i1 %48, label %65, label %35, !llvm.loop !23

49:                                               ; preds = %31, %49
  %50 = phi i64 [ %63, %49 ], [ 0, %31 ]
  %51 = getelementptr inbounds i32, ptr %2, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !21
  %53 = zext i32 %52 to i64
  %54 = mul nsw i64 %53, %33
  %55 = add nsw i64 %54, 50
  %56 = sdiv i64 %55, 100
  %57 = tail call i64 @llvm.smax.i64(i64 %56, i64 1)
  %58 = tail call i64 @llvm.umin.i64(i64 %57, i64 32767)
  %59 = icmp sgt i64 %54, 25549
  %60 = trunc nuw nsw i64 %58 to i16
  %61 = select i1 %59, i16 255, i16 %60
  %62 = getelementptr inbounds [64 x i16], ptr %32, i64 0, i64 %50
  store i16 %61, ptr %62, align 2, !tbaa !22
  %63 = add nuw nsw i64 %50, 1
  %64 = icmp eq i64 %63, 64
  br i1 %64, label %65, label %49, !llvm.loop !23

65:                                               ; preds = %49, %35
  %66 = getelementptr inbounds i8, ptr %32, i64 128
  store i32 0, ptr %66, align 4, !tbaa !25
  ret void
}

declare dso_local ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @jpeg_set_linear_quality(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 36
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 100
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 20, ptr %9, align 8, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 %5, ptr %10, align 4, !tbaa !18
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %12(ptr noundef nonnull %0) #6
  br label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds i8, ptr %0, i64 96
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %0) #6
  store ptr %18, ptr %14, align 8, !tbaa !20
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %21 = sext i32 %1 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19, %23
  %24 = phi i64 [ %35, %23 ], [ 0, %19 ]
  %25 = getelementptr inbounds i32, ptr @jpeg_set_linear_quality.std_luminance_quant_tbl, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !21
  %27 = zext i32 %26 to i64
  %28 = mul nsw i64 %27, %21
  %29 = add nsw i64 %28, 50
  %30 = sdiv i64 %29, 100
  %31 = tail call i64 @llvm.smax.i64(i64 %30, i64 1)
  %32 = tail call i64 @llvm.umin.i64(i64 %31, i64 32767)
  %33 = trunc nuw nsw i64 %32 to i16
  %34 = getelementptr inbounds [64 x i16], ptr %20, i64 0, i64 %24
  store i16 %33, ptr %34, align 2, !tbaa !22
  %35 = add nuw nsw i64 %24, 1
  %36 = icmp eq i64 %35, 64
  br i1 %36, label %53, label %23, !llvm.loop !23

37:                                               ; preds = %19, %37
  %38 = phi i64 [ %51, %37 ], [ 0, %19 ]
  %39 = getelementptr inbounds i32, ptr @jpeg_set_linear_quality.std_luminance_quant_tbl, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !21
  %41 = zext i32 %40 to i64
  %42 = mul nsw i64 %41, %21
  %43 = add nsw i64 %42, 50
  %44 = sdiv i64 %43, 100
  %45 = tail call i64 @llvm.smax.i64(i64 %44, i64 1)
  %46 = tail call i64 @llvm.umin.i64(i64 %45, i64 32767)
  %47 = icmp sgt i64 %42, 25549
  %48 = trunc nuw nsw i64 %46 to i16
  %49 = select i1 %47, i16 255, i16 %48
  %50 = getelementptr inbounds [64 x i16], ptr %20, i64 0, i64 %38
  store i16 %49, ptr %50, align 2, !tbaa !22
  %51 = add nuw nsw i64 %38, 1
  %52 = icmp eq i64 %51, 64
  br i1 %52, label %53, label %37, !llvm.loop !23

53:                                               ; preds = %37, %23
  %54 = getelementptr inbounds i8, ptr %20, i64 128
  store i32 0, ptr %54, align 4, !tbaa !25
  %55 = load i32, ptr %4, align 4, !tbaa !6
  %56 = icmp eq i32 %55, 100
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 8, !tbaa !14
  %59 = getelementptr inbounds i8, ptr %58, i64 40
  store i32 20, ptr %59, align 8, !tbaa !15
  %60 = getelementptr inbounds i8, ptr %58, i64 44
  store i32 %55, ptr %60, align 4, !tbaa !18
  %61 = load ptr, ptr %0, align 8, !tbaa !14
  %62 = load ptr, ptr %61, align 8, !tbaa !19
  tail call void %62(ptr noundef nonnull %0) #6
  br label %63

63:                                               ; preds = %57, %53
  %64 = getelementptr inbounds i8, ptr %0, i64 104
  %65 = load ptr, ptr %64, align 8, !tbaa !20
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %0) #6
  store ptr %68, ptr %64, align 8, !tbaa !20
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi ptr [ %68, %67 ], [ %65, %63 ]
  br i1 %22, label %71, label %85

71:                                               ; preds = %69, %71
  %72 = phi i64 [ %83, %71 ], [ 0, %69 ]
  %73 = getelementptr inbounds i32, ptr @jpeg_set_linear_quality.std_chrominance_quant_tbl, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !21
  %75 = zext i32 %74 to i64
  %76 = mul nsw i64 %75, %21
  %77 = add nsw i64 %76, 50
  %78 = sdiv i64 %77, 100
  %79 = tail call i64 @llvm.smax.i64(i64 %78, i64 1)
  %80 = tail call i64 @llvm.umin.i64(i64 %79, i64 32767)
  %81 = trunc nuw nsw i64 %80 to i16
  %82 = getelementptr inbounds [64 x i16], ptr %70, i64 0, i64 %72
  store i16 %81, ptr %82, align 2, !tbaa !22
  %83 = add nuw nsw i64 %72, 1
  %84 = icmp eq i64 %83, 64
  br i1 %84, label %101, label %71, !llvm.loop !23

85:                                               ; preds = %69, %85
  %86 = phi i64 [ %99, %85 ], [ 0, %69 ]
  %87 = getelementptr inbounds i32, ptr @jpeg_set_linear_quality.std_chrominance_quant_tbl, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !21
  %89 = zext i32 %88 to i64
  %90 = mul nsw i64 %89, %21
  %91 = add nsw i64 %90, 50
  %92 = sdiv i64 %91, 100
  %93 = tail call i64 @llvm.smax.i64(i64 %92, i64 1)
  %94 = tail call i64 @llvm.umin.i64(i64 %93, i64 32767)
  %95 = icmp sgt i64 %90, 25549
  %96 = trunc nuw nsw i64 %94 to i16
  %97 = select i1 %95, i16 255, i16 %96
  %98 = getelementptr inbounds [64 x i16], ptr %70, i64 0, i64 %86
  store i16 %97, ptr %98, align 2, !tbaa !22
  %99 = add nuw nsw i64 %86, 1
  %100 = icmp eq i64 %99, 64
  br i1 %100, label %101, label %85, !llvm.loop !23

101:                                              ; preds = %85, %71
  %102 = getelementptr inbounds i8, ptr %70, i64 128
  store i32 0, ptr %102, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local signext range(i32 -2147483447, 5001) i32 @jpeg_quality_scaling(i32 noundef signext %0) local_unnamed_addr #2 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 100)
  %4 = icmp slt i32 %0, 50
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = trunc nuw nsw i32 %3 to i16
  %7 = udiv i16 5000, %6
  %8 = zext nneg i16 %7 to i32
  br label %12

9:                                                ; preds = %1
  %10 = shl nuw nsw i32 %3, 1
  %11 = sub nuw nsw i32 200, %10
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %8, %5 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind
define dso_local void @jpeg_set_quality(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 100)
  %6 = icmp slt i32 %1, 50
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = trunc nuw nsw i32 %5 to i16
  %9 = udiv i16 5000, %8
  %10 = zext nneg i16 %9 to i32
  br label %14

11:                                               ; preds = %3
  %12 = shl nuw nsw i32 %5, 1
  %13 = sub nuw nsw i32 200, %12
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i32 [ %10, %7 ], [ %13, %11 ]
  tail call void @jpeg_set_linear_quality(ptr noundef %0, i32 noundef signext %15, i32 noundef signext %2)
  ret void
}

; Function Attrs: nounwind
define dso_local void @jpeg_set_defaults(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 36
  %3 = load i32, ptr %2, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 100
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !14
  %7 = getelementptr inbounds i8, ptr %6, i64 40
  store i32 20, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds i8, ptr %6, i64 44
  store i32 %3, ptr %8, align 4, !tbaa !18
  %9 = load ptr, ptr %0, align 8, !tbaa !14
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  tail call void %10(ptr noundef nonnull %0) #6
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds i8, ptr %0, i64 88
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = tail call ptr %18(ptr noundef nonnull %0, i32 noundef signext 0, i64 noundef 960) #6
  store ptr %19, ptr %12, align 8, !tbaa !27
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds i8, ptr %0, i64 72
  store i32 8, ptr %21, align 8, !tbaa !31
  tail call void @jpeg_set_linear_quality(ptr noundef nonnull %0, i32 noundef signext 50, i32 noundef signext 1)
  %22 = getelementptr inbounds i8, ptr %0, i64 128
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6
  store ptr %26, ptr %22, align 8, !tbaa !20
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi ptr [ %26, %25 ], [ %23, %20 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %28, ptr noundef nonnull readonly align 1 dereferenceable(17) @std_huff_tables.bits_dc_luminance, i64 17, i1 false)
  %29 = load ptr, ptr %22, align 8, !tbaa !20
  %30 = getelementptr inbounds i8, ptr %29, i64 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %30, ptr noundef nonnull readonly align 1 dereferenceable(12) @std_huff_tables.val_dc_chrominance, i64 12, i1 false)
  %31 = load ptr, ptr %22, align 8, !tbaa !20
  %32 = getelementptr inbounds i8, ptr %31, i64 276
  store i32 0, ptr %32, align 4, !tbaa !32
  %33 = getelementptr inbounds i8, ptr %0, i64 160
  %34 = load ptr, ptr %33, align 8, !tbaa !20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6
  store ptr %37, ptr %33, align 8, !tbaa !20
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi ptr [ %37, %36 ], [ %34, %27 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %39, ptr noundef nonnull readonly align 1 dereferenceable(17) @std_huff_tables.bits_ac_luminance, i64 17, i1 false)
  %40 = load ptr, ptr %33, align 8, !tbaa !20
  %41 = getelementptr inbounds i8, ptr %40, i64 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(162) %41, ptr noundef nonnull readonly align 1 dereferenceable(162) @std_huff_tables.val_ac_luminance, i64 162, i1 false)
  %42 = load ptr, ptr %33, align 8, !tbaa !20
  %43 = getelementptr inbounds i8, ptr %42, i64 276
  store i32 0, ptr %43, align 4, !tbaa !32
  %44 = getelementptr inbounds i8, ptr %0, i64 136
  %45 = load ptr, ptr %44, align 8, !tbaa !20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6
  store ptr %48, ptr %44, align 8, !tbaa !20
  br label %49

49:                                               ; preds = %47, %38
  %50 = phi ptr [ %48, %47 ], [ %45, %38 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %50, ptr noundef nonnull readonly align 1 dereferenceable(17) @std_huff_tables.bits_dc_chrominance, i64 17, i1 false)
  %51 = load ptr, ptr %44, align 8, !tbaa !20
  %52 = getelementptr inbounds i8, ptr %51, i64 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %52, ptr noundef nonnull readonly align 1 dereferenceable(12) @std_huff_tables.val_dc_chrominance, i64 12, i1 false)
  %53 = load ptr, ptr %44, align 8, !tbaa !20
  %54 = getelementptr inbounds i8, ptr %53, i64 276
  store i32 0, ptr %54, align 4, !tbaa !32
  %55 = getelementptr inbounds i8, ptr %0, i64 168
  %56 = load ptr, ptr %55, align 8, !tbaa !20
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6
  store ptr %59, ptr %55, align 8, !tbaa !20
  br label %60

60:                                               ; preds = %49, %58
  %61 = phi ptr [ %59, %58 ], [ %56, %49 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %61, ptr noundef nonnull readonly align 1 dereferenceable(17) @std_huff_tables.bits_ac_chrominance, i64 17, i1 false)
  %62 = load ptr, ptr %55, align 8, !tbaa !20
  %63 = getelementptr inbounds i8, ptr %62, i64 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(162) %63, ptr noundef nonnull readonly align 1 dereferenceable(162) @std_huff_tables.val_ac_chrominance, i64 162, i1 false)
  %64 = load ptr, ptr %55, align 8, !tbaa !20
  %65 = getelementptr inbounds i8, ptr %64, i64 276
  store i32 0, ptr %65, align 4, !tbaa !32
  %66 = getelementptr inbounds i8, ptr %0, i64 192
  %67 = getelementptr inbounds i8, ptr %0, i64 208
  %68 = getelementptr inbounds i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %66, i8 0, i64 16, i1 false), !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %67, i8 1, i64 16, i1 false), !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %68, i8 5, i64 16, i1 false), !tbaa !18
  %69 = getelementptr inbounds i8, ptr %0, i64 248
  %70 = getelementptr inbounds i8, ptr %0, i64 240
  store i32 0, ptr %70, align 8, !tbaa !34
  %71 = getelementptr inbounds i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %72 = load i32, ptr %21, align 8, !tbaa !31
  %73 = icmp sgt i32 %72, 8
  %74 = zext i1 %73 to i32
  store i32 %74, ptr %71, align 8
  %75 = getelementptr inbounds i8, ptr %0, i64 268
  %76 = getelementptr inbounds i8, ptr %0, i64 292
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %75, i8 0, i64 20, i1 false)
  store i8 1, ptr %76, align 4, !tbaa !35
  %77 = getelementptr inbounds i8, ptr %0, i64 293
  store i8 1, ptr %77, align 1, !tbaa !36
  %78 = getelementptr inbounds i8, ptr %0, i64 294
  store i8 0, ptr %78, align 2, !tbaa !37
  %79 = getelementptr inbounds i8, ptr %0, i64 296
  store i16 1, ptr %79, align 8, !tbaa !38
  %80 = getelementptr inbounds i8, ptr %0, i64 298
  store i16 1, ptr %80, align 2, !tbaa !39
  tail call void @jpeg_default_colorspace(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind
define dso_local void @jpeg_default_colorspace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 60
  %3 = load i32, ptr %2, align 4, !tbaa !40
  switch i32 %3, label %219 [
    i32 1, label %4
    i32 2, label %26
    i32 3, label %60
    i32 4, label %94
    i32 5, label %134
    i32 0, label %174
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 36
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp eq i32 %6, 100
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !14
  %10 = getelementptr inbounds i8, ptr %9, i64 40
  store i32 20, ptr %10, align 8, !tbaa !15
  %11 = getelementptr inbounds i8, ptr %9, i64 44
  store i32 %6, ptr %11, align 4, !tbaa !18
  %12 = load ptr, ptr %0, align 8, !tbaa !14
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  tail call void %13(ptr noundef nonnull %0) #6
  br label %14

14:                                               ; preds = %4, %8
  %15 = getelementptr inbounds i8, ptr %0, i64 80
  store i32 1, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds i8, ptr %0, i64 288
  %17 = getelementptr inbounds i8, ptr %0, i64 300
  store i32 0, ptr %17, align 4, !tbaa !42
  store i32 1, ptr %16, align 8, !tbaa !43
  %18 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 1, ptr %18, align 4, !tbaa !44
  %19 = getelementptr inbounds i8, ptr %0, i64 88
  %20 = load ptr, ptr %19, align 8, !tbaa !27
  store i32 1, ptr %20, align 8, !tbaa !45
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  store i32 1, ptr %21, align 8, !tbaa !47
  %22 = getelementptr inbounds i8, ptr %20, i64 12
  store i32 1, ptr %22, align 4, !tbaa !48
  %23 = getelementptr inbounds i8, ptr %20, i64 16
  store i32 0, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds i8, ptr %20, i64 20
  store i32 0, ptr %24, align 4, !tbaa !50
  %25 = getelementptr inbounds i8, ptr %20, i64 24
  store i32 0, ptr %25, align 8, !tbaa !51
  br label %223

26:                                               ; preds = %1
  %27 = getelementptr inbounds i8, ptr %0, i64 36
  %28 = load i32, ptr %27, align 4, !tbaa !6
  %29 = icmp eq i32 %28, 100
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8, !tbaa !14
  %32 = getelementptr inbounds i8, ptr %31, i64 40
  store i32 20, ptr %32, align 8, !tbaa !15
  %33 = getelementptr inbounds i8, ptr %31, i64 44
  store i32 %28, ptr %33, align 4, !tbaa !18
  %34 = load ptr, ptr %0, align 8, !tbaa !14
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  tail call void %35(ptr noundef nonnull %0) #6
  br label %36

36:                                               ; preds = %26, %30
  %37 = getelementptr inbounds i8, ptr %0, i64 80
  store i32 3, ptr %37, align 8, !tbaa !41
  %38 = getelementptr inbounds i8, ptr %0, i64 288
  %39 = getelementptr inbounds i8, ptr %0, i64 300
  store i32 0, ptr %39, align 4, !tbaa !42
  store i32 1, ptr %38, align 8, !tbaa !43
  %40 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 3, ptr %40, align 4, !tbaa !44
  %41 = getelementptr inbounds i8, ptr %0, i64 88
  %42 = load ptr, ptr %41, align 8, !tbaa !27
  store i32 1, ptr %42, align 8, !tbaa !45
  %43 = getelementptr inbounds i8, ptr %42, i64 8
  store i32 2, ptr %43, align 8, !tbaa !47
  %44 = getelementptr inbounds i8, ptr %42, i64 12
  store i32 2, ptr %44, align 4, !tbaa !48
  %45 = getelementptr inbounds i8, ptr %42, i64 16
  store i32 0, ptr %45, align 8, !tbaa !49
  %46 = getelementptr inbounds i8, ptr %42, i64 20
  store i32 0, ptr %46, align 4, !tbaa !50
  %47 = getelementptr inbounds i8, ptr %42, i64 24
  store i32 0, ptr %47, align 8, !tbaa !51
  %48 = getelementptr inbounds i8, ptr %42, i64 96
  store i32 2, ptr %48, align 8, !tbaa !45
  %49 = getelementptr inbounds i8, ptr %42, i64 104
  store i32 1, ptr %49, align 8, !tbaa !47
  %50 = getelementptr inbounds i8, ptr %42, i64 108
  store i32 1, ptr %50, align 4, !tbaa !48
  %51 = getelementptr inbounds i8, ptr %42, i64 112
  store i32 1, ptr %51, align 8, !tbaa !49
  %52 = getelementptr inbounds i8, ptr %42, i64 116
  store i32 1, ptr %52, align 4, !tbaa !50
  %53 = getelementptr inbounds i8, ptr %42, i64 120
  store i32 1, ptr %53, align 8, !tbaa !51
  %54 = getelementptr inbounds i8, ptr %42, i64 192
  store i32 3, ptr %54, align 8, !tbaa !45
  %55 = getelementptr inbounds i8, ptr %42, i64 200
  store i32 1, ptr %55, align 8, !tbaa !47
  %56 = getelementptr inbounds i8, ptr %42, i64 204
  store i32 1, ptr %56, align 4, !tbaa !48
  %57 = getelementptr inbounds i8, ptr %42, i64 208
  store i32 1, ptr %57, align 8, !tbaa !49
  %58 = getelementptr inbounds i8, ptr %42, i64 212
  store i32 1, ptr %58, align 4, !tbaa !50
  %59 = getelementptr inbounds i8, ptr %42, i64 216
  store i32 1, ptr %59, align 8, !tbaa !51
  br label %223

60:                                               ; preds = %1
  %61 = getelementptr inbounds i8, ptr %0, i64 36
  %62 = load i32, ptr %61, align 4, !tbaa !6
  %63 = icmp eq i32 %62, 100
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %0, align 8, !tbaa !14
  %66 = getelementptr inbounds i8, ptr %65, i64 40
  store i32 20, ptr %66, align 8, !tbaa !15
  %67 = getelementptr inbounds i8, ptr %65, i64 44
  store i32 %62, ptr %67, align 4, !tbaa !18
  %68 = load ptr, ptr %0, align 8, !tbaa !14
  %69 = load ptr, ptr %68, align 8, !tbaa !19
  tail call void %69(ptr noundef nonnull %0) #6
  br label %70

70:                                               ; preds = %60, %64
  %71 = getelementptr inbounds i8, ptr %0, i64 80
  store i32 3, ptr %71, align 8, !tbaa !41
  %72 = getelementptr inbounds i8, ptr %0, i64 288
  %73 = getelementptr inbounds i8, ptr %0, i64 300
  store i32 0, ptr %73, align 4, !tbaa !42
  store i32 1, ptr %72, align 8, !tbaa !43
  %74 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 3, ptr %74, align 4, !tbaa !44
  %75 = getelementptr inbounds i8, ptr %0, i64 88
  %76 = load ptr, ptr %75, align 8, !tbaa !27
  store i32 1, ptr %76, align 8, !tbaa !45
  %77 = getelementptr inbounds i8, ptr %76, i64 8
  store i32 2, ptr %77, align 8, !tbaa !47
  %78 = getelementptr inbounds i8, ptr %76, i64 12
  store i32 2, ptr %78, align 4, !tbaa !48
  %79 = getelementptr inbounds i8, ptr %76, i64 16
  store i32 0, ptr %79, align 8, !tbaa !49
  %80 = getelementptr inbounds i8, ptr %76, i64 20
  store i32 0, ptr %80, align 4, !tbaa !50
  %81 = getelementptr inbounds i8, ptr %76, i64 24
  store i32 0, ptr %81, align 8, !tbaa !51
  %82 = getelementptr inbounds i8, ptr %76, i64 96
  store i32 2, ptr %82, align 8, !tbaa !45
  %83 = getelementptr inbounds i8, ptr %76, i64 104
  store i32 1, ptr %83, align 8, !tbaa !47
  %84 = getelementptr inbounds i8, ptr %76, i64 108
  store i32 1, ptr %84, align 4, !tbaa !48
  %85 = getelementptr inbounds i8, ptr %76, i64 112
  store i32 1, ptr %85, align 8, !tbaa !49
  %86 = getelementptr inbounds i8, ptr %76, i64 116
  store i32 1, ptr %86, align 4, !tbaa !50
  %87 = getelementptr inbounds i8, ptr %76, i64 120
  store i32 1, ptr %87, align 8, !tbaa !51
  %88 = getelementptr inbounds i8, ptr %76, i64 192
  store i32 3, ptr %88, align 8, !tbaa !45
  %89 = getelementptr inbounds i8, ptr %76, i64 200
  store i32 1, ptr %89, align 8, !tbaa !47
  %90 = getelementptr inbounds i8, ptr %76, i64 204
  store i32 1, ptr %90, align 4, !tbaa !48
  %91 = getelementptr inbounds i8, ptr %76, i64 208
  store i32 1, ptr %91, align 8, !tbaa !49
  %92 = getelementptr inbounds i8, ptr %76, i64 212
  store i32 1, ptr %92, align 4, !tbaa !50
  %93 = getelementptr inbounds i8, ptr %76, i64 216
  store i32 1, ptr %93, align 8, !tbaa !51
  br label %223

94:                                               ; preds = %1
  %95 = getelementptr inbounds i8, ptr %0, i64 36
  %96 = load i32, ptr %95, align 4, !tbaa !6
  %97 = icmp eq i32 %96, 100
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %0, align 8, !tbaa !14
  %100 = getelementptr inbounds i8, ptr %99, i64 40
  store i32 20, ptr %100, align 8, !tbaa !15
  %101 = getelementptr inbounds i8, ptr %99, i64 44
  store i32 %96, ptr %101, align 4, !tbaa !18
  %102 = load ptr, ptr %0, align 8, !tbaa !14
  %103 = load ptr, ptr %102, align 8, !tbaa !19
  tail call void %103(ptr noundef nonnull %0) #6
  br label %104

104:                                              ; preds = %94, %98
  %105 = getelementptr inbounds i8, ptr %0, i64 80
  store i32 4, ptr %105, align 8, !tbaa !41
  %106 = getelementptr inbounds i8, ptr %0, i64 288
  store i32 0, ptr %106, align 8, !tbaa !43
  %107 = getelementptr inbounds i8, ptr %0, i64 300
  store i32 1, ptr %107, align 4, !tbaa !42
  %108 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 4, ptr %108, align 4, !tbaa !44
  %109 = getelementptr inbounds i8, ptr %0, i64 88
  %110 = load ptr, ptr %109, align 8, !tbaa !27
  store i32 67, ptr %110, align 8, !tbaa !45
  %111 = getelementptr inbounds i8, ptr %110, i64 8
  store i32 1, ptr %111, align 8, !tbaa !47
  %112 = getelementptr inbounds i8, ptr %110, i64 12
  store i32 1, ptr %112, align 4, !tbaa !48
  %113 = getelementptr inbounds i8, ptr %110, i64 16
  store i32 0, ptr %113, align 8, !tbaa !49
  %114 = getelementptr inbounds i8, ptr %110, i64 20
  store i32 0, ptr %114, align 4, !tbaa !50
  %115 = getelementptr inbounds i8, ptr %110, i64 24
  store i32 0, ptr %115, align 8, !tbaa !51
  %116 = getelementptr inbounds i8, ptr %110, i64 96
  store i32 77, ptr %116, align 8, !tbaa !45
  %117 = getelementptr inbounds i8, ptr %110, i64 104
  store i32 1, ptr %117, align 8, !tbaa !47
  %118 = getelementptr inbounds i8, ptr %110, i64 108
  store i32 1, ptr %118, align 4, !tbaa !48
  %119 = getelementptr inbounds i8, ptr %110, i64 112
  store i32 0, ptr %119, align 8, !tbaa !49
  %120 = getelementptr inbounds i8, ptr %110, i64 116
  store i32 0, ptr %120, align 4, !tbaa !50
  %121 = getelementptr inbounds i8, ptr %110, i64 120
  store i32 0, ptr %121, align 8, !tbaa !51
  %122 = getelementptr inbounds i8, ptr %110, i64 192
  store i32 89, ptr %122, align 8, !tbaa !45
  %123 = getelementptr inbounds i8, ptr %110, i64 200
  store i32 1, ptr %123, align 8, !tbaa !47
  %124 = getelementptr inbounds i8, ptr %110, i64 204
  store i32 1, ptr %124, align 4, !tbaa !48
  %125 = getelementptr inbounds i8, ptr %110, i64 208
  store i32 0, ptr %125, align 8, !tbaa !49
  %126 = getelementptr inbounds i8, ptr %110, i64 212
  store i32 0, ptr %126, align 4, !tbaa !50
  %127 = getelementptr inbounds i8, ptr %110, i64 216
  store i32 0, ptr %127, align 8, !tbaa !51
  %128 = getelementptr inbounds i8, ptr %110, i64 288
  store i32 75, ptr %128, align 8, !tbaa !45
  %129 = getelementptr inbounds i8, ptr %110, i64 296
  store i32 1, ptr %129, align 8, !tbaa !47
  %130 = getelementptr inbounds i8, ptr %110, i64 300
  store i32 1, ptr %130, align 4, !tbaa !48
  %131 = getelementptr inbounds i8, ptr %110, i64 304
  store i32 0, ptr %131, align 8, !tbaa !49
  %132 = getelementptr inbounds i8, ptr %110, i64 308
  store i32 0, ptr %132, align 4, !tbaa !50
  %133 = getelementptr inbounds i8, ptr %110, i64 312
  store i32 0, ptr %133, align 8, !tbaa !51
  br label %223

134:                                              ; preds = %1
  %135 = getelementptr inbounds i8, ptr %0, i64 36
  %136 = load i32, ptr %135, align 4, !tbaa !6
  %137 = icmp eq i32 %136, 100
  br i1 %137, label %144, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %0, align 8, !tbaa !14
  %140 = getelementptr inbounds i8, ptr %139, i64 40
  store i32 20, ptr %140, align 8, !tbaa !15
  %141 = getelementptr inbounds i8, ptr %139, i64 44
  store i32 %136, ptr %141, align 4, !tbaa !18
  %142 = load ptr, ptr %0, align 8, !tbaa !14
  %143 = load ptr, ptr %142, align 8, !tbaa !19
  tail call void %143(ptr noundef nonnull %0) #6
  br label %144

144:                                              ; preds = %134, %138
  %145 = getelementptr inbounds i8, ptr %0, i64 80
  store i32 5, ptr %145, align 8, !tbaa !41
  %146 = getelementptr inbounds i8, ptr %0, i64 288
  store i32 0, ptr %146, align 8, !tbaa !43
  %147 = getelementptr inbounds i8, ptr %0, i64 300
  store i32 1, ptr %147, align 4, !tbaa !42
  %148 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 4, ptr %148, align 4, !tbaa !44
  %149 = getelementptr inbounds i8, ptr %0, i64 88
  %150 = load ptr, ptr %149, align 8, !tbaa !27
  store i32 1, ptr %150, align 8, !tbaa !45
  %151 = getelementptr inbounds i8, ptr %150, i64 8
  store i32 2, ptr %151, align 8, !tbaa !47
  %152 = getelementptr inbounds i8, ptr %150, i64 12
  store i32 2, ptr %152, align 4, !tbaa !48
  %153 = getelementptr inbounds i8, ptr %150, i64 16
  store i32 0, ptr %153, align 8, !tbaa !49
  %154 = getelementptr inbounds i8, ptr %150, i64 20
  store i32 0, ptr %154, align 4, !tbaa !50
  %155 = getelementptr inbounds i8, ptr %150, i64 24
  store i32 0, ptr %155, align 8, !tbaa !51
  %156 = getelementptr inbounds i8, ptr %150, i64 96
  store i32 2, ptr %156, align 8, !tbaa !45
  %157 = getelementptr inbounds i8, ptr %150, i64 104
  store i32 1, ptr %157, align 8, !tbaa !47
  %158 = getelementptr inbounds i8, ptr %150, i64 108
  store i32 1, ptr %158, align 4, !tbaa !48
  %159 = getelementptr inbounds i8, ptr %150, i64 112
  store i32 1, ptr %159, align 8, !tbaa !49
  %160 = getelementptr inbounds i8, ptr %150, i64 116
  store i32 1, ptr %160, align 4, !tbaa !50
  %161 = getelementptr inbounds i8, ptr %150, i64 120
  store i32 1, ptr %161, align 8, !tbaa !51
  %162 = getelementptr inbounds i8, ptr %150, i64 192
  store i32 3, ptr %162, align 8, !tbaa !45
  %163 = getelementptr inbounds i8, ptr %150, i64 200
  store i32 1, ptr %163, align 8, !tbaa !47
  %164 = getelementptr inbounds i8, ptr %150, i64 204
  store i32 1, ptr %164, align 4, !tbaa !48
  %165 = getelementptr inbounds i8, ptr %150, i64 208
  store i32 1, ptr %165, align 8, !tbaa !49
  %166 = getelementptr inbounds i8, ptr %150, i64 212
  store i32 1, ptr %166, align 4, !tbaa !50
  %167 = getelementptr inbounds i8, ptr %150, i64 216
  store i32 1, ptr %167, align 8, !tbaa !51
  %168 = getelementptr inbounds i8, ptr %150, i64 288
  store i32 4, ptr %168, align 8, !tbaa !45
  %169 = getelementptr inbounds i8, ptr %150, i64 296
  store i32 2, ptr %169, align 8, !tbaa !47
  %170 = getelementptr inbounds i8, ptr %150, i64 300
  store i32 2, ptr %170, align 4, !tbaa !48
  %171 = getelementptr inbounds i8, ptr %150, i64 304
  store i32 0, ptr %171, align 8, !tbaa !49
  %172 = getelementptr inbounds i8, ptr %150, i64 308
  store i32 0, ptr %172, align 4, !tbaa !50
  %173 = getelementptr inbounds i8, ptr %150, i64 312
  store i32 0, ptr %173, align 8, !tbaa !51
  br label %223

174:                                              ; preds = %1
  %175 = getelementptr inbounds i8, ptr %0, i64 36
  %176 = load i32, ptr %175, align 4, !tbaa !6
  %177 = icmp eq i32 %176, 100
  br i1 %177, label %184, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %0, align 8, !tbaa !14
  %180 = getelementptr inbounds i8, ptr %179, i64 40
  store i32 20, ptr %180, align 8, !tbaa !15
  %181 = getelementptr inbounds i8, ptr %179, i64 44
  store i32 %176, ptr %181, align 4, !tbaa !18
  %182 = load ptr, ptr %0, align 8, !tbaa !14
  %183 = load ptr, ptr %182, align 8, !tbaa !19
  tail call void %183(ptr noundef nonnull %0) #6
  br label %184

184:                                              ; preds = %178, %174
  %185 = getelementptr inbounds i8, ptr %0, i64 80
  store i32 0, ptr %185, align 8, !tbaa !41
  %186 = getelementptr inbounds i8, ptr %0, i64 288
  store i32 0, ptr %186, align 8, !tbaa !43
  %187 = getelementptr inbounds i8, ptr %0, i64 300
  store i32 0, ptr %187, align 4, !tbaa !42
  %188 = getelementptr inbounds i8, ptr %0, i64 56
  %189 = load i32, ptr %188, align 8, !tbaa !52
  %190 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 %189, ptr %190, align 4, !tbaa !44
  %191 = add i32 %189, -11
  %192 = icmp ult i32 %191, -10
  br i1 %192, label %193, label %203

193:                                              ; preds = %184
  %194 = load ptr, ptr %0, align 8, !tbaa !14
  %195 = getelementptr inbounds i8, ptr %194, i64 40
  store i32 26, ptr %195, align 8, !tbaa !15
  %196 = getelementptr inbounds i8, ptr %194, i64 44
  store i32 %189, ptr %196, align 4, !tbaa !18
  %197 = load ptr, ptr %0, align 8, !tbaa !14
  %198 = getelementptr inbounds i8, ptr %197, i64 48
  store i32 10, ptr %198, align 4, !tbaa !18
  %199 = load ptr, ptr %0, align 8, !tbaa !14
  %200 = load ptr, ptr %199, align 8, !tbaa !19
  tail call void %200(ptr noundef nonnull %0) #6
  %201 = load i32, ptr %190, align 4, !tbaa !44
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %193, %184
  %204 = phi i32 [ %201, %193 ], [ %189, %184 ]
  %205 = getelementptr inbounds i8, ptr %0, i64 88
  %206 = load ptr, ptr %205, align 8, !tbaa !27
  %207 = zext nneg i32 %204 to i64
  br label %208

208:                                              ; preds = %208, %203
  %209 = phi i64 [ 0, %203 ], [ %217, %208 ]
  %210 = getelementptr inbounds %struct.jpeg_component_info, ptr %206, i64 %209
  %211 = trunc nuw nsw i64 %209 to i32
  store i32 %211, ptr %210, align 8, !tbaa !45
  %212 = getelementptr inbounds i8, ptr %210, i64 8
  store i32 1, ptr %212, align 8, !tbaa !47
  %213 = getelementptr inbounds i8, ptr %210, i64 12
  store i32 1, ptr %213, align 4, !tbaa !48
  %214 = getelementptr inbounds i8, ptr %210, i64 16
  store i32 0, ptr %214, align 8, !tbaa !49
  %215 = getelementptr inbounds i8, ptr %210, i64 20
  store i32 0, ptr %215, align 4, !tbaa !50
  %216 = getelementptr inbounds i8, ptr %210, i64 24
  store i32 0, ptr %216, align 8, !tbaa !51
  %217 = add nuw nsw i64 %209, 1
  %218 = icmp eq i64 %217, %207
  br i1 %218, label %223, label %208, !llvm.loop !53

219:                                              ; preds = %1
  %220 = load ptr, ptr %0, align 8, !tbaa !14
  %221 = getelementptr inbounds i8, ptr %220, i64 40
  store i32 9, ptr %221, align 8, !tbaa !15
  %222 = load ptr, ptr %220, align 8, !tbaa !19
  tail call void %222(ptr noundef nonnull %0) #6
  br label %223

223:                                              ; preds = %208, %193, %219, %144, %104, %70, %36, %14
  ret void
}

; Function Attrs: nounwind
define dso_local void @jpeg_set_colorspace(ptr noundef %0, i32 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 36
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, ptr %7, i64 40
  store i32 20, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %7, i64 44
  store i32 %4, ptr %9, align 4, !tbaa !18
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  tail call void %11(ptr noundef nonnull %0) #6
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds i8, ptr %0, i64 80
  store i32 %1, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds i8, ptr %0, i64 288
  store i32 0, ptr %14, align 8, !tbaa !43
  %15 = getelementptr inbounds i8, ptr %0, i64 300
  store i32 0, ptr %15, align 4, !tbaa !42
  switch i32 %1, label %153 [
    i32 1, label %16
    i32 2, label %25
    i32 3, label %46
    i32 4, label %67
    i32 5, label %94
    i32 0, label %121
  ]

16:                                               ; preds = %12
  store i32 1, ptr %14, align 8, !tbaa !43
  %17 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 1, ptr %17, align 4, !tbaa !44
  %18 = getelementptr inbounds i8, ptr %0, i64 88
  %19 = load ptr, ptr %18, align 8, !tbaa !27
  store i32 1, ptr %19, align 8, !tbaa !45
  %20 = getelementptr inbounds i8, ptr %19, i64 8
  store i32 1, ptr %20, align 8, !tbaa !47
  %21 = getelementptr inbounds i8, ptr %19, i64 12
  store i32 1, ptr %21, align 4, !tbaa !48
  %22 = getelementptr inbounds i8, ptr %19, i64 16
  store i32 0, ptr %22, align 8, !tbaa !49
  %23 = getelementptr inbounds i8, ptr %19, i64 20
  store i32 0, ptr %23, align 4, !tbaa !50
  %24 = getelementptr inbounds i8, ptr %19, i64 24
  store i32 0, ptr %24, align 8, !tbaa !51
  br label %157

25:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !42
  %26 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 3, ptr %26, align 4, !tbaa !44
  %27 = getelementptr inbounds i8, ptr %0, i64 88
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  store i32 82, ptr %28, align 8, !tbaa !45
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  store i32 1, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds i8, ptr %28, i64 12
  store i32 1, ptr %30, align 4, !tbaa !48
  %31 = getelementptr inbounds i8, ptr %28, i64 16
  store i32 0, ptr %31, align 8, !tbaa !49
  %32 = getelementptr inbounds i8, ptr %28, i64 20
  store i32 0, ptr %32, align 4, !tbaa !50
  %33 = getelementptr inbounds i8, ptr %28, i64 24
  store i32 0, ptr %33, align 8, !tbaa !51
  %34 = getelementptr inbounds i8, ptr %28, i64 96
  store i32 71, ptr %34, align 8, !tbaa !45
  %35 = getelementptr inbounds i8, ptr %28, i64 104
  store i32 1, ptr %35, align 8, !tbaa !47
  %36 = getelementptr inbounds i8, ptr %28, i64 108
  store i32 1, ptr %36, align 4, !tbaa !48
  %37 = getelementptr inbounds i8, ptr %28, i64 112
  store i32 0, ptr %37, align 8, !tbaa !49
  %38 = getelementptr inbounds i8, ptr %28, i64 116
  store i32 0, ptr %38, align 4, !tbaa !50
  %39 = getelementptr inbounds i8, ptr %28, i64 120
  store i32 0, ptr %39, align 8, !tbaa !51
  %40 = getelementptr inbounds i8, ptr %28, i64 192
  store i32 66, ptr %40, align 8, !tbaa !45
  %41 = getelementptr inbounds i8, ptr %28, i64 200
  store i32 1, ptr %41, align 8, !tbaa !47
  %42 = getelementptr inbounds i8, ptr %28, i64 204
  store i32 1, ptr %42, align 4, !tbaa !48
  %43 = getelementptr inbounds i8, ptr %28, i64 208
  store i32 0, ptr %43, align 8, !tbaa !49
  %44 = getelementptr inbounds i8, ptr %28, i64 212
  store i32 0, ptr %44, align 4, !tbaa !50
  %45 = getelementptr inbounds i8, ptr %28, i64 216
  store i32 0, ptr %45, align 8, !tbaa !51
  br label %157

46:                                               ; preds = %12
  store i32 1, ptr %14, align 8, !tbaa !43
  %47 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 3, ptr %47, align 4, !tbaa !44
  %48 = getelementptr inbounds i8, ptr %0, i64 88
  %49 = load ptr, ptr %48, align 8, !tbaa !27
  store i32 1, ptr %49, align 8, !tbaa !45
  %50 = getelementptr inbounds i8, ptr %49, i64 8
  store i32 2, ptr %50, align 8, !tbaa !47
  %51 = getelementptr inbounds i8, ptr %49, i64 12
  store i32 2, ptr %51, align 4, !tbaa !48
  %52 = getelementptr inbounds i8, ptr %49, i64 16
  store i32 0, ptr %52, align 8, !tbaa !49
  %53 = getelementptr inbounds i8, ptr %49, i64 20
  store i32 0, ptr %53, align 4, !tbaa !50
  %54 = getelementptr inbounds i8, ptr %49, i64 24
  store i32 0, ptr %54, align 8, !tbaa !51
  %55 = getelementptr inbounds i8, ptr %49, i64 96
  store i32 2, ptr %55, align 8, !tbaa !45
  %56 = getelementptr inbounds i8, ptr %49, i64 104
  store i32 1, ptr %56, align 8, !tbaa !47
  %57 = getelementptr inbounds i8, ptr %49, i64 108
  store i32 1, ptr %57, align 4, !tbaa !48
  %58 = getelementptr inbounds i8, ptr %49, i64 112
  store i32 1, ptr %58, align 8, !tbaa !49
  %59 = getelementptr inbounds i8, ptr %49, i64 116
  store i32 1, ptr %59, align 4, !tbaa !50
  %60 = getelementptr inbounds i8, ptr %49, i64 120
  store i32 1, ptr %60, align 8, !tbaa !51
  %61 = getelementptr inbounds i8, ptr %49, i64 192
  store i32 3, ptr %61, align 8, !tbaa !45
  %62 = getelementptr inbounds i8, ptr %49, i64 200
  store i32 1, ptr %62, align 8, !tbaa !47
  %63 = getelementptr inbounds i8, ptr %49, i64 204
  store i32 1, ptr %63, align 4, !tbaa !48
  %64 = getelementptr inbounds i8, ptr %49, i64 208
  store i32 1, ptr %64, align 8, !tbaa !49
  %65 = getelementptr inbounds i8, ptr %49, i64 212
  store i32 1, ptr %65, align 4, !tbaa !50
  %66 = getelementptr inbounds i8, ptr %49, i64 216
  store i32 1, ptr %66, align 8, !tbaa !51
  br label %157

67:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !42
  %68 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 4, ptr %68, align 4, !tbaa !44
  %69 = getelementptr inbounds i8, ptr %0, i64 88
  %70 = load ptr, ptr %69, align 8, !tbaa !27
  store i32 67, ptr %70, align 8, !tbaa !45
  %71 = getelementptr inbounds i8, ptr %70, i64 8
  store i32 1, ptr %71, align 8, !tbaa !47
  %72 = getelementptr inbounds i8, ptr %70, i64 12
  store i32 1, ptr %72, align 4, !tbaa !48
  %73 = getelementptr inbounds i8, ptr %70, i64 16
  store i32 0, ptr %73, align 8, !tbaa !49
  %74 = getelementptr inbounds i8, ptr %70, i64 20
  store i32 0, ptr %74, align 4, !tbaa !50
  %75 = getelementptr inbounds i8, ptr %70, i64 24
  store i32 0, ptr %75, align 8, !tbaa !51
  %76 = getelementptr inbounds i8, ptr %70, i64 96
  store i32 77, ptr %76, align 8, !tbaa !45
  %77 = getelementptr inbounds i8, ptr %70, i64 104
  store i32 1, ptr %77, align 8, !tbaa !47
  %78 = getelementptr inbounds i8, ptr %70, i64 108
  store i32 1, ptr %78, align 4, !tbaa !48
  %79 = getelementptr inbounds i8, ptr %70, i64 112
  store i32 0, ptr %79, align 8, !tbaa !49
  %80 = getelementptr inbounds i8, ptr %70, i64 116
  store i32 0, ptr %80, align 4, !tbaa !50
  %81 = getelementptr inbounds i8, ptr %70, i64 120
  store i32 0, ptr %81, align 8, !tbaa !51
  %82 = getelementptr inbounds i8, ptr %70, i64 192
  store i32 89, ptr %82, align 8, !tbaa !45
  %83 = getelementptr inbounds i8, ptr %70, i64 200
  store i32 1, ptr %83, align 8, !tbaa !47
  %84 = getelementptr inbounds i8, ptr %70, i64 204
  store i32 1, ptr %84, align 4, !tbaa !48
  %85 = getelementptr inbounds i8, ptr %70, i64 208
  store i32 0, ptr %85, align 8, !tbaa !49
  %86 = getelementptr inbounds i8, ptr %70, i64 212
  store i32 0, ptr %86, align 4, !tbaa !50
  %87 = getelementptr inbounds i8, ptr %70, i64 216
  store i32 0, ptr %87, align 8, !tbaa !51
  %88 = getelementptr inbounds i8, ptr %70, i64 288
  store i32 75, ptr %88, align 8, !tbaa !45
  %89 = getelementptr inbounds i8, ptr %70, i64 296
  store i32 1, ptr %89, align 8, !tbaa !47
  %90 = getelementptr inbounds i8, ptr %70, i64 300
  store i32 1, ptr %90, align 4, !tbaa !48
  %91 = getelementptr inbounds i8, ptr %70, i64 304
  store i32 0, ptr %91, align 8, !tbaa !49
  %92 = getelementptr inbounds i8, ptr %70, i64 308
  store i32 0, ptr %92, align 4, !tbaa !50
  %93 = getelementptr inbounds i8, ptr %70, i64 312
  store i32 0, ptr %93, align 8, !tbaa !51
  br label %157

94:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !42
  %95 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 4, ptr %95, align 4, !tbaa !44
  %96 = getelementptr inbounds i8, ptr %0, i64 88
  %97 = load ptr, ptr %96, align 8, !tbaa !27
  store i32 1, ptr %97, align 8, !tbaa !45
  %98 = getelementptr inbounds i8, ptr %97, i64 8
  store i32 2, ptr %98, align 8, !tbaa !47
  %99 = getelementptr inbounds i8, ptr %97, i64 12
  store i32 2, ptr %99, align 4, !tbaa !48
  %100 = getelementptr inbounds i8, ptr %97, i64 16
  store i32 0, ptr %100, align 8, !tbaa !49
  %101 = getelementptr inbounds i8, ptr %97, i64 20
  store i32 0, ptr %101, align 4, !tbaa !50
  %102 = getelementptr inbounds i8, ptr %97, i64 24
  store i32 0, ptr %102, align 8, !tbaa !51
  %103 = getelementptr inbounds i8, ptr %97, i64 96
  store i32 2, ptr %103, align 8, !tbaa !45
  %104 = getelementptr inbounds i8, ptr %97, i64 104
  store i32 1, ptr %104, align 8, !tbaa !47
  %105 = getelementptr inbounds i8, ptr %97, i64 108
  store i32 1, ptr %105, align 4, !tbaa !48
  %106 = getelementptr inbounds i8, ptr %97, i64 112
  store i32 1, ptr %106, align 8, !tbaa !49
  %107 = getelementptr inbounds i8, ptr %97, i64 116
  store i32 1, ptr %107, align 4, !tbaa !50
  %108 = getelementptr inbounds i8, ptr %97, i64 120
  store i32 1, ptr %108, align 8, !tbaa !51
  %109 = getelementptr inbounds i8, ptr %97, i64 192
  store i32 3, ptr %109, align 8, !tbaa !45
  %110 = getelementptr inbounds i8, ptr %97, i64 200
  store i32 1, ptr %110, align 8, !tbaa !47
  %111 = getelementptr inbounds i8, ptr %97, i64 204
  store i32 1, ptr %111, align 4, !tbaa !48
  %112 = getelementptr inbounds i8, ptr %97, i64 208
  store i32 1, ptr %112, align 8, !tbaa !49
  %113 = getelementptr inbounds i8, ptr %97, i64 212
  store i32 1, ptr %113, align 4, !tbaa !50
  %114 = getelementptr inbounds i8, ptr %97, i64 216
  store i32 1, ptr %114, align 8, !tbaa !51
  %115 = getelementptr inbounds i8, ptr %97, i64 288
  store i32 4, ptr %115, align 8, !tbaa !45
  %116 = getelementptr inbounds i8, ptr %97, i64 296
  store i32 2, ptr %116, align 8, !tbaa !47
  %117 = getelementptr inbounds i8, ptr %97, i64 300
  store i32 2, ptr %117, align 4, !tbaa !48
  %118 = getelementptr inbounds i8, ptr %97, i64 304
  store i32 0, ptr %118, align 8, !tbaa !49
  %119 = getelementptr inbounds i8, ptr %97, i64 308
  store i32 0, ptr %119, align 4, !tbaa !50
  %120 = getelementptr inbounds i8, ptr %97, i64 312
  store i32 0, ptr %120, align 8, !tbaa !51
  br label %157

121:                                              ; preds = %12
  %122 = getelementptr inbounds i8, ptr %0, i64 56
  %123 = load i32, ptr %122, align 8, !tbaa !52
  %124 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 %123, ptr %124, align 4, !tbaa !44
  %125 = add i32 %123, -11
  %126 = icmp ult i32 %125, -10
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load ptr, ptr %0, align 8, !tbaa !14
  %129 = getelementptr inbounds i8, ptr %128, i64 40
  store i32 26, ptr %129, align 8, !tbaa !15
  %130 = getelementptr inbounds i8, ptr %128, i64 44
  store i32 %123, ptr %130, align 4, !tbaa !18
  %131 = load ptr, ptr %0, align 8, !tbaa !14
  %132 = getelementptr inbounds i8, ptr %131, i64 48
  store i32 10, ptr %132, align 4, !tbaa !18
  %133 = load ptr, ptr %0, align 8, !tbaa !14
  %134 = load ptr, ptr %133, align 8, !tbaa !19
  tail call void %134(ptr noundef nonnull %0) #6
  %135 = load i32, ptr %124, align 4, !tbaa !44
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %121, %127
  %138 = phi i32 [ %135, %127 ], [ %123, %121 ]
  %139 = getelementptr inbounds i8, ptr %0, i64 88
  %140 = load ptr, ptr %139, align 8, !tbaa !27
  %141 = zext nneg i32 %138 to i64
  br label %142

142:                                              ; preds = %137, %142
  %143 = phi i64 [ 0, %137 ], [ %151, %142 ]
  %144 = getelementptr inbounds %struct.jpeg_component_info, ptr %140, i64 %143
  %145 = trunc nuw nsw i64 %143 to i32
  store i32 %145, ptr %144, align 8, !tbaa !45
  %146 = getelementptr inbounds i8, ptr %144, i64 8
  store i32 1, ptr %146, align 8, !tbaa !47
  %147 = getelementptr inbounds i8, ptr %144, i64 12
  store i32 1, ptr %147, align 4, !tbaa !48
  %148 = getelementptr inbounds i8, ptr %144, i64 16
  store i32 0, ptr %148, align 8, !tbaa !49
  %149 = getelementptr inbounds i8, ptr %144, i64 20
  store i32 0, ptr %149, align 4, !tbaa !50
  %150 = getelementptr inbounds i8, ptr %144, i64 24
  store i32 0, ptr %150, align 8, !tbaa !51
  %151 = add nuw nsw i64 %143, 1
  %152 = icmp eq i64 %151, %141
  br i1 %152, label %157, label %142, !llvm.loop !53

153:                                              ; preds = %12
  %154 = load ptr, ptr %0, align 8, !tbaa !14
  %155 = getelementptr inbounds i8, ptr %154, i64 40
  store i32 10, ptr %155, align 8, !tbaa !15
  %156 = load ptr, ptr %154, align 8, !tbaa !19
  tail call void %156(ptr noundef nonnull %0) #6
  br label %157

157:                                              ; preds = %142, %127, %153, %94, %67, %46, %25, %16
  ret void
}

; Function Attrs: nounwind
define dso_local void @jpeg_simple_progression(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 76
  %3 = load i32, ptr %2, align 4, !tbaa !44
  %4 = getelementptr inbounds i8, ptr %0, i64 36
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 100
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %8, i64 40
  store i32 20, ptr %9, align 8, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 %5, ptr %10, align 4, !tbaa !18
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %12(ptr noundef nonnull %0) #6
  br label %13

13:                                               ; preds = %7, %1
  %14 = icmp eq i32 %3, 3
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %0, i64 80
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %26, label %23

19:                                               ; preds = %13
  %20 = icmp sgt i32 %3, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = mul nuw nsw i32 %3, 6
  br label %26

23:                                               ; preds = %15, %19
  %24 = shl nsw i32 %3, 2
  %25 = or disjoint i32 %24, 2
  br label %26

26:                                               ; preds = %15, %21, %23
  %27 = phi i32 [ %22, %21 ], [ %25, %23 ], [ 10, %15 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 504
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %0, i64 512
  %33 = load i32, ptr %32, align 8, !tbaa !55
  %34 = icmp slt i32 %33, %27
  br i1 %34, label %35, label %44

35:                                               ; preds = %31, %26
  %36 = tail call i32 @llvm.smax.i32(i32 %27, i32 10)
  %37 = getelementptr inbounds i8, ptr %0, i64 512
  store i32 %36, ptr %37, align 8, !tbaa !55
  %38 = getelementptr inbounds i8, ptr %0, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !28
  %40 = load ptr, ptr %39, align 8, !tbaa !29
  %41 = zext nneg i32 %36 to i64
  %42 = mul nuw nsw i64 %41, 36
  %43 = tail call ptr %40(ptr noundef nonnull %0, i32 noundef signext 0, i64 noundef %42) #6
  store ptr %43, ptr %28, align 8, !tbaa !54
  br label %44

44:                                               ; preds = %35, %31
  %45 = phi ptr [ %43, %35 ], [ %29, %31 ]
  %46 = getelementptr inbounds i8, ptr %0, i64 248
  store ptr %45, ptr %46, align 8, !tbaa !56
  %47 = getelementptr inbounds i8, ptr %0, i64 240
  store i32 %27, ptr %47, align 8, !tbaa !34
  br i1 %14, label %156, label %48

48:                                               ; preds = %44
  %49 = icmp slt i32 %3, 5
  br i1 %49, label %50, label %67

50:                                               ; preds = %48
  store i32 %3, ptr %45, align 4, !tbaa !57
  %51 = icmp sgt i32 %3, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  %53 = getelementptr inbounds i8, ptr %45, i64 4
  %54 = zext nneg i32 %3 to i64
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi i64 [ 0, %52 ], [ %59, %55 ]
  %57 = getelementptr inbounds [4 x i32], ptr %53, i64 0, i64 %56
  %58 = trunc nuw nsw i64 %56 to i32
  store i32 %58, ptr %57, align 4, !tbaa !21
  %59 = add nuw nsw i64 %56, 1
  %60 = icmp eq i64 %59, %54
  br i1 %60, label %61, label %55, !llvm.loop !59

61:                                               ; preds = %55, %50
  %62 = getelementptr inbounds i8, ptr %45, i64 24
  store i32 0, ptr %62, align 4, !tbaa !60
  %63 = getelementptr inbounds i8, ptr %45, i64 20
  store i32 0, ptr %63, align 4, !tbaa !61
  %64 = getelementptr inbounds i8, ptr %45, i64 28
  store i32 0, ptr %64, align 4, !tbaa !62
  %65 = getelementptr inbounds i8, ptr %45, i64 32
  store i32 1, ptr %65, align 4, !tbaa !63
  %66 = getelementptr inbounds i8, ptr %45, i64 36
  br label %78

67:                                               ; preds = %48, %67
  %68 = phi i32 [ %76, %67 ], [ 0, %48 ]
  %69 = phi ptr [ %75, %67 ], [ %45, %48 ]
  store i32 1, ptr %69, align 4, !tbaa !57
  %70 = getelementptr inbounds i8, ptr %69, i64 4
  store i32 %68, ptr %70, align 4, !tbaa !21
  %71 = getelementptr inbounds i8, ptr %69, i64 20
  store i32 0, ptr %71, align 4, !tbaa !61
  %72 = getelementptr inbounds i8, ptr %69, i64 24
  store i32 0, ptr %72, align 4, !tbaa !60
  %73 = getelementptr inbounds i8, ptr %69, i64 28
  store i32 0, ptr %73, align 4, !tbaa !62
  %74 = getelementptr inbounds i8, ptr %69, i64 32
  store i32 1, ptr %74, align 4, !tbaa !63
  %75 = getelementptr inbounds i8, ptr %69, i64 36
  %76 = add nuw nsw i32 %68, 1
  %77 = icmp eq i32 %76, %3
  br i1 %77, label %78, label %67, !llvm.loop !64

78:                                               ; preds = %67, %61
  %79 = phi ptr [ %66, %61 ], [ %75, %67 ]
  %80 = icmp sgt i32 %3, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %78, %81
  %82 = phi i32 [ %90, %81 ], [ 0, %78 ]
  %83 = phi ptr [ %89, %81 ], [ %79, %78 ]
  store i32 1, ptr %83, align 4, !tbaa !57
  %84 = getelementptr inbounds i8, ptr %83, i64 4
  store i32 %82, ptr %84, align 4, !tbaa !21
  %85 = getelementptr inbounds i8, ptr %83, i64 20
  store i32 1, ptr %85, align 4, !tbaa !61
  %86 = getelementptr inbounds i8, ptr %83, i64 24
  store i32 5, ptr %86, align 4, !tbaa !60
  %87 = getelementptr inbounds i8, ptr %83, i64 28
  store i32 0, ptr %87, align 4, !tbaa !62
  %88 = getelementptr inbounds i8, ptr %83, i64 32
  store i32 2, ptr %88, align 4, !tbaa !63
  %89 = getelementptr inbounds i8, ptr %83, i64 36
  %90 = add nuw nsw i32 %82, 1
  %91 = icmp eq i32 %90, %3
  br i1 %91, label %92, label %81, !llvm.loop !64

92:                                               ; preds = %81, %92
  %93 = phi i32 [ %101, %92 ], [ 0, %81 ]
  %94 = phi ptr [ %100, %92 ], [ %89, %81 ]
  store i32 1, ptr %94, align 4, !tbaa !57
  %95 = getelementptr inbounds i8, ptr %94, i64 4
  store i32 %93, ptr %95, align 4, !tbaa !21
  %96 = getelementptr inbounds i8, ptr %94, i64 20
  store i32 6, ptr %96, align 4, !tbaa !61
  %97 = getelementptr inbounds i8, ptr %94, i64 24
  store i32 63, ptr %97, align 4, !tbaa !60
  %98 = getelementptr inbounds i8, ptr %94, i64 28
  store i32 0, ptr %98, align 4, !tbaa !62
  %99 = getelementptr inbounds i8, ptr %94, i64 32
  store i32 2, ptr %99, align 4, !tbaa !63
  %100 = getelementptr inbounds i8, ptr %94, i64 36
  %101 = add nuw nsw i32 %93, 1
  %102 = icmp eq i32 %101, %3
  br i1 %102, label %103, label %92, !llvm.loop !64

103:                                              ; preds = %92, %103
  %104 = phi i32 [ %112, %103 ], [ 0, %92 ]
  %105 = phi ptr [ %111, %103 ], [ %100, %92 ]
  store i32 1, ptr %105, align 4, !tbaa !57
  %106 = getelementptr inbounds i8, ptr %105, i64 4
  store i32 %104, ptr %106, align 4, !tbaa !21
  %107 = getelementptr inbounds i8, ptr %105, i64 20
  store i32 1, ptr %107, align 4, !tbaa !61
  %108 = getelementptr inbounds i8, ptr %105, i64 24
  store i32 63, ptr %108, align 4, !tbaa !60
  %109 = getelementptr inbounds i8, ptr %105, i64 28
  store i32 2, ptr %109, align 4, !tbaa !62
  %110 = getelementptr inbounds i8, ptr %105, i64 32
  store i32 1, ptr %110, align 4, !tbaa !63
  %111 = getelementptr inbounds i8, ptr %105, i64 36
  %112 = add nuw nsw i32 %104, 1
  %113 = icmp eq i32 %112, %3
  br i1 %113, label %115, label %103, !llvm.loop !64

114:                                              ; preds = %78
  store i32 %3, ptr %79, align 4, !tbaa !57
  br label %125

115:                                              ; preds = %103
  br i1 %49, label %116, label %132

116:                                              ; preds = %115
  store i32 %3, ptr %111, align 4, !tbaa !57
  %117 = getelementptr inbounds i8, ptr %105, i64 40
  %118 = zext nneg i32 %3 to i64
  br label %119

119:                                              ; preds = %119, %116
  %120 = phi i64 [ 0, %116 ], [ %123, %119 ]
  %121 = getelementptr inbounds [4 x i32], ptr %117, i64 0, i64 %120
  %122 = trunc nuw nsw i64 %120 to i32
  store i32 %122, ptr %121, align 4, !tbaa !21
  %123 = add nuw nsw i64 %120, 1
  %124 = icmp eq i64 %123, %118
  br i1 %124, label %125, label %119, !llvm.loop !59

125:                                              ; preds = %119, %114
  %126 = phi ptr [ %79, %114 ], [ %111, %119 ]
  %127 = getelementptr inbounds i8, ptr %126, i64 24
  store i32 0, ptr %127, align 4, !tbaa !60
  %128 = getelementptr inbounds i8, ptr %126, i64 20
  store i32 0, ptr %128, align 4, !tbaa !61
  %129 = getelementptr inbounds i8, ptr %126, i64 28
  store i32 1, ptr %129, align 4, !tbaa !62
  %130 = getelementptr inbounds i8, ptr %126, i64 32
  store i32 0, ptr %130, align 4, !tbaa !63
  %131 = getelementptr inbounds i8, ptr %126, i64 36
  br label %143

132:                                              ; preds = %115, %132
  %133 = phi i32 [ %141, %132 ], [ 0, %115 ]
  %134 = phi ptr [ %140, %132 ], [ %111, %115 ]
  store i32 1, ptr %134, align 4, !tbaa !57
  %135 = getelementptr inbounds i8, ptr %134, i64 4
  store i32 %133, ptr %135, align 4, !tbaa !21
  %136 = getelementptr inbounds i8, ptr %134, i64 20
  store i32 0, ptr %136, align 4, !tbaa !61
  %137 = getelementptr inbounds i8, ptr %134, i64 24
  store i32 0, ptr %137, align 4, !tbaa !60
  %138 = getelementptr inbounds i8, ptr %134, i64 28
  store i32 1, ptr %138, align 4, !tbaa !62
  %139 = getelementptr inbounds i8, ptr %134, i64 32
  store i32 0, ptr %139, align 4, !tbaa !63
  %140 = getelementptr inbounds i8, ptr %134, i64 36
  %141 = add nuw nsw i32 %133, 1
  %142 = icmp eq i32 %141, %3
  br i1 %142, label %143, label %132, !llvm.loop !64

143:                                              ; preds = %132, %125
  %144 = phi ptr [ %131, %125 ], [ %140, %132 ]
  br i1 %80, label %145, label %281

145:                                              ; preds = %143, %145
  %146 = phi i32 [ %154, %145 ], [ 0, %143 ]
  %147 = phi ptr [ %153, %145 ], [ %144, %143 ]
  store i32 1, ptr %147, align 4, !tbaa !57
  %148 = getelementptr inbounds i8, ptr %147, i64 4
  store i32 %146, ptr %148, align 4, !tbaa !21
  %149 = getelementptr inbounds i8, ptr %147, i64 20
  store i32 1, ptr %149, align 4, !tbaa !61
  %150 = getelementptr inbounds i8, ptr %147, i64 24
  store i32 63, ptr %150, align 4, !tbaa !60
  %151 = getelementptr inbounds i8, ptr %147, i64 28
  store i32 1, ptr %151, align 4, !tbaa !62
  %152 = getelementptr inbounds i8, ptr %147, i64 32
  store i32 0, ptr %152, align 4, !tbaa !63
  %153 = getelementptr inbounds i8, ptr %147, i64 36
  %154 = add nuw nsw i32 %146, 1
  %155 = icmp eq i32 %154, %3
  br i1 %155, label %281, label %145, !llvm.loop !64

156:                                              ; preds = %44
  %157 = getelementptr inbounds i8, ptr %0, i64 80
  %158 = load i32, ptr %157, align 8, !tbaa !41
  %159 = icmp eq i32 %158, 3
  store i32 3, ptr %45, align 4, !tbaa !57
  %160 = getelementptr inbounds i8, ptr %45, i64 4
  store i32 0, ptr %160, align 4, !tbaa !21
  %161 = getelementptr inbounds i8, ptr %45, i64 8
  store i32 1, ptr %161, align 4, !tbaa !21
  %162 = getelementptr inbounds i8, ptr %45, i64 12
  store i32 2, ptr %162, align 4, !tbaa !21
  %163 = getelementptr inbounds i8, ptr %45, i64 24
  store i32 0, ptr %163, align 4, !tbaa !60
  %164 = getelementptr inbounds i8, ptr %45, i64 20
  store i32 0, ptr %164, align 4, !tbaa !61
  %165 = getelementptr inbounds i8, ptr %45, i64 28
  store i32 0, ptr %165, align 4, !tbaa !62
  %166 = getelementptr inbounds i8, ptr %45, i64 32
  store i32 1, ptr %166, align 4, !tbaa !63
  %167 = getelementptr inbounds i8, ptr %45, i64 36
  store i32 1, ptr %167, align 4, !tbaa !57
  %168 = getelementptr inbounds i8, ptr %45, i64 40
  store i32 0, ptr %168, align 4, !tbaa !21
  %169 = getelementptr inbounds i8, ptr %45, i64 56
  store i32 1, ptr %169, align 4, !tbaa !61
  %170 = getelementptr inbounds i8, ptr %45, i64 60
  store i32 5, ptr %170, align 4, !tbaa !60
  %171 = getelementptr inbounds i8, ptr %45, i64 64
  store i32 0, ptr %171, align 4, !tbaa !62
  %172 = getelementptr inbounds i8, ptr %45, i64 68
  store i32 2, ptr %172, align 4, !tbaa !63
  %173 = getelementptr inbounds i8, ptr %45, i64 72
  store i32 1, ptr %173, align 4, !tbaa !57
  %174 = getelementptr inbounds i8, ptr %45, i64 76
  %175 = getelementptr inbounds i8, ptr %45, i64 92
  %176 = getelementptr inbounds i8, ptr %45, i64 96
  %177 = getelementptr inbounds i8, ptr %45, i64 100
  %178 = getelementptr inbounds i8, ptr %45, i64 104
  %179 = getelementptr inbounds i8, ptr %45, i64 108
  %180 = getelementptr inbounds i8, ptr %45, i64 112
  %181 = getelementptr inbounds i8, ptr %45, i64 128
  %182 = getelementptr inbounds i8, ptr %45, i64 132
  %183 = getelementptr inbounds i8, ptr %45, i64 136
  %184 = getelementptr inbounds i8, ptr %45, i64 140
  %185 = getelementptr inbounds i8, ptr %45, i64 144
  %186 = getelementptr inbounds i8, ptr %45, i64 148
  %187 = getelementptr inbounds i8, ptr %45, i64 164
  %188 = getelementptr inbounds i8, ptr %45, i64 168
  %189 = getelementptr inbounds i8, ptr %45, i64 172
  %190 = getelementptr inbounds i8, ptr %45, i64 176
  %191 = getelementptr inbounds i8, ptr %45, i64 180
  %192 = getelementptr inbounds i8, ptr %45, i64 184
  %193 = getelementptr inbounds i8, ptr %45, i64 200
  %194 = getelementptr inbounds i8, ptr %45, i64 204
  br i1 %159, label %220, label %195

195:                                              ; preds = %156
  store i32 1, ptr %174, align 4, !tbaa !21
  store i32 1, ptr %175, align 4, !tbaa !61
  store i32 5, ptr %176, align 4, !tbaa !60
  store i32 0, ptr %177, align 4, !tbaa !62
  store i32 2, ptr %178, align 4, !tbaa !63
  store i32 1, ptr %179, align 4, !tbaa !57
  store i32 2, ptr %180, align 4, !tbaa !21
  store i32 1, ptr %181, align 4, !tbaa !61
  store i32 5, ptr %182, align 4, !tbaa !60
  store i32 0, ptr %183, align 4, !tbaa !62
  store i32 2, ptr %184, align 4, !tbaa !63
  store i32 1, ptr %185, align 4, !tbaa !57
  store i32 0, ptr %186, align 4, !tbaa !21
  store i32 6, ptr %187, align 4, !tbaa !61
  store i32 63, ptr %188, align 4, !tbaa !60
  store i32 0, ptr %189, align 4, !tbaa !62
  store i32 2, ptr %190, align 4, !tbaa !63
  store i32 1, ptr %191, align 4, !tbaa !57
  store i32 1, ptr %192, align 4, !tbaa !21
  store i32 6, ptr %193, align 4, !tbaa !61
  store i32 63, ptr %194, align 4, !tbaa !60
  %196 = getelementptr inbounds i8, ptr %45, i64 208
  store i32 0, ptr %196, align 4, !tbaa !62
  %197 = getelementptr inbounds i8, ptr %45, i64 212
  store i32 2, ptr %197, align 4, !tbaa !63
  %198 = getelementptr inbounds i8, ptr %45, i64 216
  store i32 1, ptr %198, align 4, !tbaa !57
  %199 = getelementptr inbounds i8, ptr %45, i64 220
  store i32 2, ptr %199, align 4, !tbaa !21
  %200 = getelementptr inbounds i8, ptr %45, i64 236
  store i32 6, ptr %200, align 4, !tbaa !61
  %201 = getelementptr inbounds i8, ptr %45, i64 240
  store i32 63, ptr %201, align 4, !tbaa !60
  %202 = getelementptr inbounds i8, ptr %45, i64 244
  store i32 0, ptr %202, align 4, !tbaa !62
  %203 = getelementptr inbounds i8, ptr %45, i64 248
  store i32 2, ptr %203, align 4, !tbaa !63
  %204 = getelementptr inbounds i8, ptr %45, i64 252
  store i32 1, ptr %204, align 4, !tbaa !57
  %205 = getelementptr inbounds i8, ptr %45, i64 256
  store i32 0, ptr %205, align 4, !tbaa !21
  %206 = getelementptr inbounds i8, ptr %45, i64 272
  store i32 1, ptr %206, align 4, !tbaa !61
  %207 = getelementptr inbounds i8, ptr %45, i64 276
  store i32 63, ptr %207, align 4, !tbaa !60
  %208 = getelementptr inbounds i8, ptr %45, i64 280
  store i32 2, ptr %208, align 4, !tbaa !62
  %209 = getelementptr inbounds i8, ptr %45, i64 284
  store i32 1, ptr %209, align 4, !tbaa !63
  %210 = getelementptr inbounds i8, ptr %45, i64 288
  store i32 1, ptr %210, align 4, !tbaa !57
  %211 = getelementptr inbounds i8, ptr %45, i64 292
  store i32 1, ptr %211, align 4, !tbaa !21
  %212 = getelementptr inbounds i8, ptr %45, i64 308
  store i32 1, ptr %212, align 4, !tbaa !61
  %213 = getelementptr inbounds i8, ptr %45, i64 312
  store i32 63, ptr %213, align 4, !tbaa !60
  %214 = getelementptr inbounds i8, ptr %45, i64 316
  store i32 2, ptr %214, align 4, !tbaa !62
  %215 = getelementptr inbounds i8, ptr %45, i64 320
  store i32 1, ptr %215, align 4, !tbaa !63
  %216 = getelementptr inbounds i8, ptr %45, i64 324
  store i32 1, ptr %216, align 4, !tbaa !57
  %217 = getelementptr inbounds i8, ptr %45, i64 328
  store i32 2, ptr %217, align 4, !tbaa !21
  %218 = getelementptr inbounds i8, ptr %45, i64 344
  store i32 1, ptr %218, align 4, !tbaa !61
  %219 = getelementptr inbounds i8, ptr %45, i64 348
  br label %221

220:                                              ; preds = %156
  store i32 2, ptr %174, align 4, !tbaa !21
  store i32 1, ptr %175, align 4, !tbaa !61
  store i32 63, ptr %176, align 4, !tbaa !60
  store i32 0, ptr %177, align 4, !tbaa !62
  store i32 1, ptr %178, align 4, !tbaa !63
  store i32 1, ptr %179, align 4, !tbaa !57
  store i32 1, ptr %180, align 4, !tbaa !21
  store i32 1, ptr %181, align 4, !tbaa !61
  store i32 63, ptr %182, align 4, !tbaa !60
  store i32 0, ptr %183, align 4, !tbaa !62
  store i32 1, ptr %184, align 4, !tbaa !63
  store i32 1, ptr %185, align 4, !tbaa !57
  store i32 0, ptr %186, align 4, !tbaa !21
  store i32 6, ptr %187, align 4, !tbaa !61
  store i32 63, ptr %188, align 4, !tbaa !60
  store i32 0, ptr %189, align 4, !tbaa !62
  store i32 2, ptr %190, align 4, !tbaa !63
  store i32 1, ptr %191, align 4, !tbaa !57
  store i32 0, ptr %192, align 4, !tbaa !21
  store i32 1, ptr %193, align 4, !tbaa !61
  br label %221

221:                                              ; preds = %220, %195
  %222 = phi ptr [ %219, %195 ], [ %194, %220 ]
  %223 = phi i64 [ 352, %195 ], [ 208, %220 ]
  %224 = phi i64 [ 356, %195 ], [ 212, %220 ]
  %225 = phi i64 [ 360, %195 ], [ 216, %220 ]
  %226 = phi i64 [ 364, %195 ], [ 220, %220 ]
  %227 = phi i64 [ 368, %195 ], [ 224, %220 ]
  %228 = phi i64 [ 372, %195 ], [ 228, %220 ]
  %229 = phi i64 [ 384, %195 ], [ 240, %220 ]
  %230 = phi i64 [ 380, %195 ], [ 236, %220 ]
  %231 = phi i64 [ 388, %195 ], [ 244, %220 ]
  %232 = phi i64 [ 392, %195 ], [ 248, %220 ]
  %233 = phi i64 [ 396, %195 ], [ 252, %220 ]
  %234 = phi i64 [ 400, %195 ], [ 256, %220 ]
  %235 = phi i32 [ 0, %195 ], [ 2, %220 ]
  %236 = phi i64 [ 416, %195 ], [ 272, %220 ]
  %237 = phi i64 [ 420, %195 ], [ 276, %220 ]
  %238 = phi i64 [ 424, %195 ], [ 280, %220 ]
  %239 = phi i64 [ 428, %195 ], [ 284, %220 ]
  %240 = phi i64 [ 432, %195 ], [ 288, %220 ]
  %241 = phi i64 [ 436, %195 ], [ 292, %220 ]
  %242 = phi i64 [ 452, %195 ], [ 308, %220 ]
  %243 = phi i64 [ 456, %195 ], [ 312, %220 ]
  %244 = phi i64 [ 460, %195 ], [ 316, %220 ]
  %245 = phi i64 [ 464, %195 ], [ 320, %220 ]
  %246 = phi i64 [ 468, %195 ], [ 324, %220 ]
  %247 = phi i64 [ 472, %195 ], [ 328, %220 ]
  %248 = phi i32 [ 2, %195 ], [ 0, %220 ]
  %249 = phi i64 [ 488, %195 ], [ 344, %220 ]
  %250 = phi i64 [ 492, %195 ], [ 348, %220 ]
  %251 = phi i64 [ 496, %195 ], [ 352, %220 ]
  %252 = phi i64 [ 500, %195 ], [ 356, %220 ]
  store i32 63, ptr %222, align 4, !tbaa !60
  %253 = getelementptr inbounds i8, ptr %45, i64 %223
  store i32 2, ptr %253, align 4, !tbaa !62
  %254 = getelementptr inbounds i8, ptr %45, i64 %224
  store i32 1, ptr %254, align 4, !tbaa !63
  %255 = getelementptr inbounds i8, ptr %45, i64 %225
  store i32 3, ptr %255, align 4, !tbaa !57
  %256 = getelementptr inbounds i8, ptr %45, i64 %226
  store i32 0, ptr %256, align 4, !tbaa !21
  %257 = getelementptr inbounds i8, ptr %45, i64 %227
  store i32 1, ptr %257, align 4, !tbaa !21
  %258 = getelementptr inbounds i8, ptr %45, i64 %228
  store i32 2, ptr %258, align 4, !tbaa !21
  %259 = getelementptr inbounds i8, ptr %45, i64 %229
  store i32 0, ptr %259, align 4, !tbaa !60
  %260 = getelementptr inbounds i8, ptr %45, i64 %230
  store i32 0, ptr %260, align 4, !tbaa !61
  %261 = getelementptr inbounds i8, ptr %45, i64 %231
  store i32 1, ptr %261, align 4, !tbaa !62
  %262 = getelementptr inbounds i8, ptr %45, i64 %232
  store i32 0, ptr %262, align 4, !tbaa !63
  %263 = getelementptr inbounds i8, ptr %45, i64 %233
  store i32 1, ptr %263, align 4, !tbaa !57
  %264 = getelementptr inbounds i8, ptr %45, i64 %234
  store i32 %235, ptr %264, align 4, !tbaa !21
  %265 = getelementptr inbounds i8, ptr %45, i64 %236
  store i32 1, ptr %265, align 4, !tbaa !61
  %266 = getelementptr inbounds i8, ptr %45, i64 %237
  store i32 63, ptr %266, align 4, !tbaa !60
  %267 = getelementptr inbounds i8, ptr %45, i64 %238
  store i32 1, ptr %267, align 4, !tbaa !62
  %268 = getelementptr inbounds i8, ptr %45, i64 %239
  store i32 0, ptr %268, align 4, !tbaa !63
  %269 = getelementptr inbounds i8, ptr %45, i64 %240
  store i32 1, ptr %269, align 4, !tbaa !57
  %270 = getelementptr inbounds i8, ptr %45, i64 %241
  store i32 1, ptr %270, align 4, !tbaa !21
  %271 = getelementptr inbounds i8, ptr %45, i64 %242
  store i32 1, ptr %271, align 4, !tbaa !61
  %272 = getelementptr inbounds i8, ptr %45, i64 %243
  store i32 63, ptr %272, align 4, !tbaa !60
  %273 = getelementptr inbounds i8, ptr %45, i64 %244
  store i32 1, ptr %273, align 4, !tbaa !62
  %274 = getelementptr inbounds i8, ptr %45, i64 %245
  store i32 0, ptr %274, align 4, !tbaa !63
  %275 = getelementptr inbounds i8, ptr %45, i64 %246
  store i32 1, ptr %275, align 4, !tbaa !57
  %276 = getelementptr inbounds i8, ptr %45, i64 %247
  store i32 %248, ptr %276, align 4, !tbaa !21
  %277 = getelementptr inbounds i8, ptr %45, i64 %249
  store i32 1, ptr %277, align 4, !tbaa !61
  %278 = getelementptr inbounds i8, ptr %45, i64 %250
  store i32 63, ptr %278, align 4, !tbaa !60
  %279 = getelementptr inbounds i8, ptr %45, i64 %251
  store i32 1, ptr %279, align 4, !tbaa !62
  %280 = getelementptr inbounds i8, ptr %45, i64 %252
  store i32 0, ptr %280, align 4, !tbaa !63
  br label %281

281:                                              ; preds = %145, %221, %143
  ret void
}

declare dso_local ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !11, i64 36}
!7 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !11, i64 240, !8, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !9, i64 292, !9, i64 293, !9, i64 294, !13, i64 296, !13, i64 298, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !9, i64 328, !11, i64 360, !11, i64 364, !11, i64 368, !9, i64 372, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!7, !8, i64 0}
!15 = !{!16, !11, i64 40}
!16 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !9, i64 44, !11, i64 124, !17, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 164}
!17 = !{!"long", !9, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!16, !8, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!11, !11, i64 0}
!22 = !{!13, !13, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !11, i64 128}
!26 = !{!"", !9, i64 0, !11, i64 128}
!27 = !{!7, !8, i64 88}
!28 = !{!7, !8, i64 8}
!29 = !{!30, !8, i64 0}
!30 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !17, i64 88, !17, i64 96}
!31 = !{!7, !11, i64 72}
!32 = !{!33, !11, i64 276}
!33 = !{!"", !9, i64 0, !9, i64 17, !11, i64 276}
!34 = !{!7, !11, i64 240}
!35 = !{!7, !9, i64 292}
!36 = !{!7, !9, i64 293}
!37 = !{!7, !9, i64 294}
!38 = !{!7, !13, i64 296}
!39 = !{!7, !13, i64 298}
!40 = !{!7, !11, i64 60}
!41 = !{!7, !11, i64 80}
!42 = !{!7, !11, i64 300}
!43 = !{!7, !11, i64 288}
!44 = !{!7, !11, i64 76}
!45 = !{!46, !11, i64 0}
!46 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !8, i64 80, !8, i64 88}
!47 = !{!46, !11, i64 8}
!48 = !{!46, !11, i64 12}
!49 = !{!46, !11, i64 16}
!50 = !{!46, !11, i64 20}
!51 = !{!46, !11, i64 24}
!52 = !{!7, !11, i64 56}
!53 = distinct !{!53, !24}
!54 = !{!7, !8, i64 504}
!55 = !{!7, !11, i64 512}
!56 = !{!7, !8, i64 248}
!57 = !{!58, !11, i64 0}
!58 = !{!"", !11, i64 0, !9, i64 4, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!59 = distinct !{!59, !24}
!60 = !{!58, !11, i64 24}
!61 = !{!58, !11, i64 20}
!62 = !{!58, !11, i64 28}
!63 = !{!58, !11, i64 32}
!64 = distinct !{!64, !24}
