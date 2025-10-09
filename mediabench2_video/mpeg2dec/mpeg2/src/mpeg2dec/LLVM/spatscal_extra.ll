; ModuleID = 'spatscal.c'
source_filename = "spatscal.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@Frame_Store_Flag = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_prediction_horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_prediction_vertical_size = external dso_local local_unnamed_addr global i32, align 4
@progressive_frame = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_progressive_frame = external dso_local local_unnamed_addr global i32, align 4
@llframe0 = external dso_local local_unnamed_addr global [3 x ptr], align 8
@llframe1 = external dso_local local_unnamed_addr global [3 x ptr], align 8
@lltmp = external dso_local local_unnamed_addr global ptr, align 8
@current_frame = external dso_local local_unnamed_addr global [3 x ptr], align 8
@lower_layer_horizontal_offset = external dso_local local_unnamed_addr global i32, align 4
@lower_layer_vertical_offset = external dso_local local_unnamed_addr global i32, align 4
@horizontal_size = external dso_local local_unnamed_addr global i32, align 4
@vertical_size = external dso_local local_unnamed_addr global i32, align 4
@vertical_subsampling_factor_m = external dso_local local_unnamed_addr global i32, align 4
@vertical_subsampling_factor_n = external dso_local local_unnamed_addr global i32, align 4
@horizontal_subsampling_factor_m = external dso_local local_unnamed_addr global i32, align 4
@horizontal_subsampling_factor_n = external dso_local local_unnamed_addr global i32, align 4
@picture_structure = external dso_local local_unnamed_addr global i32, align 4
@Lower_Layer_Picture_Filename = external dso_local local_unnamed_addr global ptr, align 8
@True_Framenum = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__const.Read_Lower_Layer_Component_Fieldwise.ext = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c".Y\00", [3 x i8] c".U\00", [3 x i8] c".V\00"], align 1
@lower_layer_deinterlaced_field_select = external dso_local local_unnamed_addr global i32, align 4
@Clip = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind
define dso_local void @Spatial_Prediction() local_unnamed_addr #0 {
  %1 = load i32, ptr @Frame_Store_Flag, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !6
  %4 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !6
  br i1 %2, label %14, label %5

5:                                                ; preds = %0
  tail call fastcc void @Read_Lower_Layer_Component_Framewise(i32 noundef signext 0, i32 noundef signext %3, i32 noundef signext %4)
  %6 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !6
  %7 = ashr i32 %6, 1
  %8 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !6
  %9 = ashr i32 %8, 1
  tail call fastcc void @Read_Lower_Layer_Component_Framewise(i32 noundef signext 1, i32 noundef signext %7, i32 noundef signext %9)
  %10 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !6
  %11 = ashr i32 %10, 1
  %12 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !6
  %13 = ashr i32 %12, 1
  tail call fastcc void @Read_Lower_Layer_Component_Framewise(i32 noundef signext 2, i32 noundef signext %11, i32 noundef signext %13)
  br label %23

14:                                               ; preds = %0
  tail call fastcc void @Read_Lower_Layer_Component_Fieldwise(i32 noundef signext 0, i32 noundef signext %3, i32 noundef signext %4)
  %15 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !6
  %16 = ashr i32 %15, 1
  %17 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !6
  %18 = ashr i32 %17, 1
  tail call fastcc void @Read_Lower_Layer_Component_Fieldwise(i32 noundef signext 1, i32 noundef signext %16, i32 noundef signext %18)
  %19 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !6
  %20 = ashr i32 %19, 1
  %21 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !6
  %22 = ashr i32 %21, 1
  tail call fastcc void @Read_Lower_Layer_Component_Fieldwise(i32 noundef signext 2, i32 noundef signext %20, i32 noundef signext %22)
  br label %23

23:                                               ; preds = %14, %5
  %24 = load i32, ptr @progressive_frame, align 4, !tbaa !6
  %25 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !6
  %26 = load ptr, ptr @llframe0, align 8, !tbaa !10
  %27 = load ptr, ptr @llframe1, align 8, !tbaa !10
  %28 = load ptr, ptr @lltmp, align 8, !tbaa !10
  %29 = load ptr, ptr @current_frame, align 8, !tbaa !10
  %30 = load i32, ptr @lower_layer_horizontal_offset, align 4, !tbaa !6
  %31 = load i32, ptr @lower_layer_vertical_offset, align 4, !tbaa !6
  %32 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !6
  %33 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !6
  %34 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %35 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %36 = load i32, ptr @vertical_subsampling_factor_m, align 4, !tbaa !6
  %37 = load i32, ptr @vertical_subsampling_factor_n, align 4, !tbaa !6
  %38 = load i32, ptr @horizontal_subsampling_factor_m, align 4, !tbaa !6
  %39 = load i32, ptr @horizontal_subsampling_factor_n, align 4, !tbaa !6
  %40 = load i32, ptr @picture_structure, align 4, !tbaa !6
  %41 = icmp ne i32 %40, 3
  %42 = zext i1 %41 to i32
  tail call fastcc void @Make_Spatial_Prediction_Frame(i32 noundef signext %24, i32 noundef signext %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef signext %30, i32 noundef signext %31, i32 noundef signext %32, i32 noundef signext %33, i32 noundef signext %34, i32 noundef signext %35, i32 noundef signext %36, i32 noundef signext %37, i32 noundef signext %38, i32 noundef signext %39, i32 noundef signext %42)
  %43 = load i32, ptr @progressive_frame, align 4, !tbaa !6
  %44 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !6
  %45 = load ptr, ptr getelementptr inbounds (i8, ptr @llframe0, i64 8), align 8, !tbaa !10
  %46 = load ptr, ptr getelementptr inbounds (i8, ptr @llframe1, i64 8), align 8, !tbaa !10
  %47 = load ptr, ptr @lltmp, align 8, !tbaa !10
  %48 = load ptr, ptr getelementptr inbounds (i8, ptr @current_frame, i64 8), align 8, !tbaa !10
  %49 = load i32, ptr @lower_layer_horizontal_offset, align 4, !tbaa !6
  %50 = sdiv i32 %49, 2
  %51 = load i32, ptr @lower_layer_vertical_offset, align 4, !tbaa !6
  %52 = sdiv i32 %51, 2
  %53 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !6
  %54 = ashr i32 %53, 1
  %55 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !6
  %56 = ashr i32 %55, 1
  %57 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %58 = ashr i32 %57, 1
  %59 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %60 = ashr i32 %59, 1
  %61 = load i32, ptr @vertical_subsampling_factor_m, align 4, !tbaa !6
  %62 = load i32, ptr @vertical_subsampling_factor_n, align 4, !tbaa !6
  %63 = load i32, ptr @horizontal_subsampling_factor_m, align 4, !tbaa !6
  %64 = load i32, ptr @horizontal_subsampling_factor_n, align 4, !tbaa !6
  tail call fastcc void @Make_Spatial_Prediction_Frame(i32 noundef signext %43, i32 noundef signext %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef signext %50, i32 noundef signext %52, i32 noundef signext %54, i32 noundef signext %56, i32 noundef signext %58, i32 noundef signext %60, i32 noundef signext %61, i32 noundef signext %62, i32 noundef signext %63, i32 noundef signext %64, i32 noundef signext 1)
  %65 = load i32, ptr @progressive_frame, align 4, !tbaa !6
  %66 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !6
  %67 = load ptr, ptr getelementptr inbounds (i8, ptr @llframe0, i64 16), align 8, !tbaa !10
  %68 = load ptr, ptr getelementptr inbounds (i8, ptr @llframe1, i64 16), align 8, !tbaa !10
  %69 = load ptr, ptr @lltmp, align 8, !tbaa !10
  %70 = load ptr, ptr getelementptr inbounds (i8, ptr @current_frame, i64 16), align 8, !tbaa !10
  %71 = load i32, ptr @lower_layer_horizontal_offset, align 4, !tbaa !6
  %72 = sdiv i32 %71, 2
  %73 = load i32, ptr @lower_layer_vertical_offset, align 4, !tbaa !6
  %74 = sdiv i32 %73, 2
  %75 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !6
  %76 = ashr i32 %75, 1
  %77 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !6
  %78 = ashr i32 %77, 1
  %79 = load i32, ptr @horizontal_size, align 4, !tbaa !6
  %80 = ashr i32 %79, 1
  %81 = load i32, ptr @vertical_size, align 4, !tbaa !6
  %82 = ashr i32 %81, 1
  %83 = load i32, ptr @vertical_subsampling_factor_m, align 4, !tbaa !6
  %84 = load i32, ptr @vertical_subsampling_factor_n, align 4, !tbaa !6
  %85 = load i32, ptr @horizontal_subsampling_factor_m, align 4, !tbaa !6
  %86 = load i32, ptr @horizontal_subsampling_factor_n, align 4, !tbaa !6
  tail call fastcc void @Make_Spatial_Prediction_Frame(i32 noundef signext %65, i32 noundef signext %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, i32 noundef signext %72, i32 noundef signext %74, i32 noundef signext %76, i32 noundef signext %78, i32 noundef signext %80, i32 noundef signext %82, i32 noundef signext %83, i32 noundef signext %84, i32 noundef signext %85, i32 noundef signext %86, i32 noundef signext 1)
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @Read_Lower_Layer_Component_Framewise(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  %5 = load ptr, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !10
  %6 = load i32, ptr @True_Framenum, align 4, !tbaa !6
  %7 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5, i32 noundef signext %6) #8
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [3 x [3 x i8]], ptr @__const.Read_Lower_Layer_Component_Fieldwise.ext, i64 0, i64 %8
  %10 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %9) #8
  %11 = call ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %3
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %13
  %16 = icmp sgt i32 %1, 0
  %17 = getelementptr inbounds [3 x ptr], ptr @llframe0, i64 0, i64 %8
  %18 = getelementptr inbounds [3 x ptr], ptr @llframe1, i64 0, i64 %8
  br i1 %16, label %19, label %55

19:                                               ; preds = %15
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %19, %29
  %22 = phi i32 [ %31, %29 ], [ 0, %19 ]
  %23 = mul nsw i32 %22, %1
  %24 = sext i32 %23 to i64
  br label %42

25:                                               ; preds = %51
  %26 = add nsw i32 %22, 1
  %27 = mul nsw i32 %26, %1
  %28 = sext i32 %27 to i64
  br label %33

29:                                               ; preds = %33, %51
  %30 = phi i32 [ %22, %51 ], [ %26, %33 ]
  %31 = add nsw i32 %30, 1
  %32 = icmp slt i32 %31, %2
  br i1 %32, label %21, label %55

33:                                               ; preds = %25, %33
  %34 = phi i64 [ 0, %25 ], [ %40, %33 ]
  %35 = call signext i32 @getc(ptr noundef nonnull %11)
  %36 = trunc i32 %35 to i8
  %37 = load ptr, ptr %18, align 8, !tbaa !10
  %38 = getelementptr i8, ptr %37, i64 %34
  %39 = getelementptr i8, ptr %38, i64 %28
  store i8 %36, ptr %39, align 1, !tbaa !12
  %40 = add nuw nsw i64 %34, 1
  %41 = icmp eq i64 %40, %20
  br i1 %41, label %29, label %33

42:                                               ; preds = %42, %21
  %43 = phi i64 [ %49, %42 ], [ 0, %21 ]
  %44 = call signext i32 @getc(ptr noundef nonnull %11)
  %45 = trunc i32 %44 to i8
  %46 = load ptr, ptr %17, align 8, !tbaa !10
  %47 = getelementptr i8, ptr %46, i64 %43
  %48 = getelementptr i8, ptr %47, i64 %24
  store i8 %45, ptr %48, align 1, !tbaa !12
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, %20
  br i1 %50, label %51, label %42

51:                                               ; preds = %42
  %52 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %25, label %29

54:                                               ; preds = %3
  call void @exit(i32 noundef signext -1) #9
  unreachable

55:                                               ; preds = %29, %15, %13
  %56 = call signext i32 @fclose(ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @Read_Lower_Layer_Component_Fieldwise(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  %5 = load ptr, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !10
  %6 = load i32, ptr @True_Framenum, align 4, !tbaa !6
  %7 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 97, i32 102
  %10 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5, i32 noundef signext %6, i32 noundef signext %9) #8
  %11 = zext nneg i32 %0 to i64
  %12 = getelementptr inbounds [3 x [3 x i8]], ptr @__const.Read_Lower_Layer_Component_Fieldwise.ext, i64 0, i64 %11
  %13 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %12) #8
  %14 = call ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %3
  %17 = icmp sgt i32 %2, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %16
  %19 = icmp sgt i32 %1, 0
  %20 = getelementptr inbounds [3 x ptr], ptr @llframe0, i64 0, i64 %11
  br i1 %19, label %21, label %42

21:                                               ; preds = %18
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %21, %36
  %24 = phi i32 [ %40, %36 ], [ 0, %21 ]
  %25 = mul nuw nsw i32 %24, %1
  %26 = zext nneg i32 %25 to i64
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ 0, %23 ], [ %34, %27 ]
  %29 = call signext i32 @getc(ptr noundef nonnull %14)
  %30 = trunc i32 %29 to i8
  %31 = load ptr, ptr %20, align 8, !tbaa !10
  %32 = getelementptr inbounds i8, ptr %31, i64 %28
  %33 = getelementptr inbounds i8, ptr %32, i64 %26
  store i8 %30, ptr %33, align 1, !tbaa !12
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %22
  br i1 %35, label %36, label %27

36:                                               ; preds = %27
  %37 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !6
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 2, i32 1
  %40 = add nuw nsw i32 %39, %24
  %41 = icmp slt i32 %40, %2
  br i1 %41, label %23, label %51

42:                                               ; preds = %18
  %43 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !6
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 2, i32 1
  br label %47

46:                                               ; preds = %3
  call void @exit(i32 noundef signext -1) #9
  unreachable

47:                                               ; preds = %42, %47
  %48 = phi i32 [ 0, %42 ], [ %49, %47 ]
  %49 = add nuw nsw i32 %45, %48
  %50 = icmp slt i32 %49, %2
  br i1 %50, label %47, label %51

51:                                               ; preds = %47, %36, %16
  %52 = call signext i32 @fclose(ptr noundef nonnull %14)
  %53 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = load ptr, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !10
  %57 = load i32, ptr @True_Framenum, align 4, !tbaa !6
  %58 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %56, i32 noundef signext %57, i32 noundef signext 98) #8
  %59 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %12) #8
  %60 = call ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %85, label %62

62:                                               ; preds = %55
  %63 = icmp sgt i32 %2, 1
  br i1 %63, label %64, label %86

64:                                               ; preds = %62
  %65 = icmp sgt i32 %1, 0
  %66 = getelementptr inbounds [3 x ptr], ptr @llframe1, i64 0, i64 %11
  br i1 %65, label %67, label %86

67:                                               ; preds = %64
  %68 = zext nneg i32 %1 to i64
  %69 = zext nneg i32 %2 to i64
  br label %70

70:                                               ; preds = %67, %82
  %71 = phi i64 [ 1, %67 ], [ %83, %82 ]
  %72 = mul nuw nsw i64 %71, %68
  br label %73

73:                                               ; preds = %70, %73
  %74 = phi i64 [ 0, %70 ], [ %80, %73 ]
  %75 = call signext i32 @getc(ptr noundef nonnull %60)
  %76 = trunc i32 %75 to i8
  %77 = load ptr, ptr %66, align 8, !tbaa !10
  %78 = getelementptr inbounds i8, ptr %77, i64 %74
  %79 = getelementptr inbounds i8, ptr %78, i64 %72
  store i8 %76, ptr %79, align 1, !tbaa !12
  %80 = add nuw nsw i64 %74, 1
  %81 = icmp eq i64 %80, %68
  br i1 %81, label %82, label %73

82:                                               ; preds = %73
  %83 = add nuw nsw i64 %71, 2
  %84 = icmp ult i64 %83, %69
  br i1 %84, label %70, label %86

85:                                               ; preds = %55
  call void @exit(i32 noundef signext -1) #9
  unreachable

86:                                               ; preds = %82, %64, %62
  %87 = call signext i32 @fclose(ptr noundef nonnull %60)
  br label %88

88:                                               ; preds = %86, %51
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @Make_Spatial_Prediction_Frame(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12, i32 noundef signext %13, i32 noundef signext %14, i32 noundef signext %15, i32 noundef signext %16) unnamed_addr #1 {
  %18 = mul nsw i32 %15, %8
  %19 = sdiv i32 %18, %14
  %20 = mul nsw i32 %13, %9
  %21 = sdiv i32 %20, %12
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %17
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %25, label %266

25:                                               ; preds = %23
  %26 = add nsw i32 %9, -1
  %27 = ashr i32 %13, 1
  %28 = icmp sgt i32 %8, 0
  br i1 %28, label %29, label %266

29:                                               ; preds = %25
  %30 = zext nneg i32 %8 to i64
  %31 = zext nneg i32 %21 to i64
  br label %32

32:                                               ; preds = %68, %29
  %33 = phi i64 [ 0, %29 ], [ %69, %68 ]
  %34 = mul nuw nsw i64 %33, %30
  %35 = getelementptr inbounds i16, ptr %4, i64 %34
  %36 = trunc i64 %33 to i32
  %37 = mul i32 %36, %12
  %38 = freeze i32 %37
  %39 = sdiv i32 %38, %13
  %40 = mul nsw i32 %39, %8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %2, i64 %41
  %43 = icmp slt i32 %39, %26
  %44 = select i1 %43, i32 %8, i32 0
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = mul i32 %39, %13
  %48 = sub i32 %38, %47
  %49 = shl nsw i32 %48, 4
  %50 = add nsw i32 %49, %27
  %51 = sdiv i32 %50, %13
  %52 = sub nsw i32 16, %51
  br label %53

53:                                               ; preds = %53, %32
  %54 = phi i64 [ 0, %32 ], [ %66, %53 ]
  %55 = getelementptr inbounds i8, ptr %42, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !12
  %57 = zext i8 %56 to i32
  %58 = mul nsw i32 %52, %57
  %59 = getelementptr inbounds i8, ptr %46, i64 %54
  %60 = load i8, ptr %59, align 1, !tbaa !12
  %61 = zext i8 %60 to i32
  %62 = mul nsw i32 %51, %61
  %63 = add nsw i32 %62, %58
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds i16, ptr %35, i64 %54
  store i16 %64, ptr %65, align 2, !tbaa !13
  %66 = add nuw nsw i64 %54, 1
  %67 = icmp eq i64 %66, %30
  br i1 %67, label %68, label %53

68:                                               ; preds = %53
  %69 = add nuw nsw i64 %33, 1
  %70 = icmp eq i64 %69, %31
  br i1 %70, label %266, label %32

71:                                               ; preds = %17
  %72 = icmp eq i32 %0, 0
  %73 = icmp sgt i32 %21, 0
  br i1 %72, label %171, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr @lower_layer_deinterlaced_field_select, align 4, !tbaa !6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %124, label %77

77:                                               ; preds = %74
  tail call fastcc void @Deinterlace(ptr noundef %3, ptr noundef %2, i32 noundef signext 0, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %16)
  br i1 %73, label %78, label %266

78:                                               ; preds = %77
  %79 = add nsw i32 %9, -1
  %80 = ashr i32 %13, 1
  %81 = icmp sgt i32 %8, 0
  br i1 %81, label %82, label %266

82:                                               ; preds = %78
  %83 = zext nneg i32 %8 to i64
  %84 = zext nneg i32 %21 to i64
  br label %85

85:                                               ; preds = %121, %82
  %86 = phi i64 [ 0, %82 ], [ %122, %121 ]
  %87 = mul nuw nsw i64 %86, %83
  %88 = getelementptr inbounds i16, ptr %4, i64 %87
  %89 = trunc i64 %86 to i32
  %90 = mul i32 %89, %12
  %91 = freeze i32 %90
  %92 = sdiv i32 %91, %13
  %93 = mul nsw i32 %92, %8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %3, i64 %94
  %96 = icmp slt i32 %92, %79
  %97 = select i1 %96, i32 %8, i32 0
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %95, i64 %98
  %100 = mul i32 %92, %13
  %101 = sub i32 %91, %100
  %102 = shl nsw i32 %101, 4
  %103 = add nsw i32 %102, %80
  %104 = sdiv i32 %103, %13
  %105 = sub nsw i32 16, %104
  br label %106

106:                                              ; preds = %106, %85
  %107 = phi i64 [ 0, %85 ], [ %119, %106 ]
  %108 = getelementptr inbounds i8, ptr %95, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !12
  %110 = zext i8 %109 to i32
  %111 = mul nsw i32 %105, %110
  %112 = getelementptr inbounds i8, ptr %99, i64 %107
  %113 = load i8, ptr %112, align 1, !tbaa !12
  %114 = zext i8 %113 to i32
  %115 = mul nsw i32 %104, %114
  %116 = add nsw i32 %115, %111
  %117 = trunc i32 %116 to i16
  %118 = getelementptr inbounds i16, ptr %88, i64 %107
  store i16 %117, ptr %118, align 2, !tbaa !13
  %119 = add nuw nsw i64 %107, 1
  %120 = icmp eq i64 %119, %83
  br i1 %120, label %121, label %106

121:                                              ; preds = %106
  %122 = add nuw nsw i64 %86, 1
  %123 = icmp eq i64 %122, %84
  br i1 %123, label %266, label %85

124:                                              ; preds = %74
  tail call fastcc void @Deinterlace(ptr noundef %2, ptr noundef %3, i32 noundef signext 1, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %16)
  br i1 %73, label %125, label %266

125:                                              ; preds = %124
  %126 = add nsw i32 %9, -1
  %127 = ashr i32 %13, 1
  %128 = icmp sgt i32 %8, 0
  br i1 %128, label %129, label %266

129:                                              ; preds = %125
  %130 = zext nneg i32 %8 to i64
  %131 = zext nneg i32 %21 to i64
  br label %132

132:                                              ; preds = %168, %129
  %133 = phi i64 [ 0, %129 ], [ %169, %168 ]
  %134 = mul nuw nsw i64 %133, %130
  %135 = getelementptr inbounds i16, ptr %4, i64 %134
  %136 = trunc i64 %133 to i32
  %137 = mul i32 %136, %12
  %138 = freeze i32 %137
  %139 = sdiv i32 %138, %13
  %140 = mul nsw i32 %139, %8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %2, i64 %141
  %143 = icmp slt i32 %139, %126
  %144 = select i1 %143, i32 %8, i32 0
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds i8, ptr %142, i64 %145
  %147 = mul i32 %139, %13
  %148 = sub i32 %138, %147
  %149 = shl nsw i32 %148, 4
  %150 = add nsw i32 %149, %127
  %151 = sdiv i32 %150, %13
  %152 = sub nsw i32 16, %151
  br label %153

153:                                              ; preds = %153, %132
  %154 = phi i64 [ 0, %132 ], [ %166, %153 ]
  %155 = getelementptr inbounds i8, ptr %142, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !12
  %157 = zext i8 %156 to i32
  %158 = mul nsw i32 %152, %157
  %159 = getelementptr inbounds i8, ptr %146, i64 %154
  %160 = load i8, ptr %159, align 1, !tbaa !12
  %161 = zext i8 %160 to i32
  %162 = mul nsw i32 %151, %161
  %163 = add nsw i32 %162, %158
  %164 = trunc i32 %163 to i16
  %165 = getelementptr inbounds i16, ptr %135, i64 %154
  store i16 %164, ptr %165, align 2, !tbaa !13
  %166 = add nuw nsw i64 %154, 1
  %167 = icmp eq i64 %166, %130
  br i1 %167, label %168, label %153

168:                                              ; preds = %153
  %169 = add nuw nsw i64 %133, 1
  %170 = icmp eq i64 %169, %131
  br i1 %170, label %266, label %132

171:                                              ; preds = %71
  tail call fastcc void @Deinterlace(ptr noundef %2, ptr noundef %3, i32 noundef signext 1, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %16)
  tail call fastcc void @Deinterlace(ptr noundef %3, ptr noundef %2, i32 noundef signext 0, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %16)
  br i1 %73, label %172, label %266

172:                                              ; preds = %171
  %173 = add nsw i32 %9, -1
  %174 = ashr i32 %13, 1
  %175 = icmp sgt i32 %8, 0
  br i1 %175, label %176, label %218

176:                                              ; preds = %172
  %177 = zext nneg i32 %8 to i64
  %178 = zext nneg i32 %21 to i64
  br label %179

179:                                              ; preds = %215, %176
  %180 = phi i64 [ 0, %176 ], [ %216, %215 ]
  %181 = mul nuw nsw i64 %180, %177
  %182 = getelementptr inbounds i16, ptr %4, i64 %181
  %183 = trunc i64 %180 to i32
  %184 = mul i32 %183, %12
  %185 = freeze i32 %184
  %186 = sdiv i32 %185, %13
  %187 = mul nsw i32 %186, %8
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %2, i64 %188
  %190 = icmp slt i32 %186, %173
  %191 = select i1 %190, i32 %8, i32 0
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds i8, ptr %189, i64 %192
  %194 = mul i32 %186, %13
  %195 = sub i32 %185, %194
  %196 = shl nsw i32 %195, 4
  %197 = add nsw i32 %196, %174
  %198 = sdiv i32 %197, %13
  %199 = sub nsw i32 16, %198
  br label %200

200:                                              ; preds = %200, %179
  %201 = phi i64 [ 0, %179 ], [ %213, %200 ]
  %202 = getelementptr inbounds i8, ptr %189, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !12
  %204 = zext i8 %203 to i32
  %205 = mul nsw i32 %199, %204
  %206 = getelementptr inbounds i8, ptr %193, i64 %201
  %207 = load i8, ptr %206, align 1, !tbaa !12
  %208 = zext i8 %207 to i32
  %209 = mul nsw i32 %198, %208
  %210 = add nsw i32 %209, %205
  %211 = trunc i32 %210 to i16
  %212 = getelementptr inbounds i16, ptr %182, i64 %201
  store i16 %211, ptr %212, align 2, !tbaa !13
  %213 = add nuw nsw i64 %201, 1
  %214 = icmp eq i64 %213, %177
  br i1 %214, label %215, label %200

215:                                              ; preds = %200
  %216 = add nuw nsw i64 %180, 2
  %217 = icmp ult i64 %216, %178
  br i1 %217, label %179, label %218

218:                                              ; preds = %215, %172
  %219 = icmp eq i32 %21, 1
  br i1 %219, label %266, label %220

220:                                              ; preds = %218
  %221 = add nsw i32 %9, -1
  %222 = ashr i32 %13, 1
  %223 = icmp sgt i32 %8, 0
  br i1 %223, label %224, label %266

224:                                              ; preds = %220
  %225 = zext nneg i32 %8 to i64
  %226 = zext nneg i32 %21 to i64
  br label %227

227:                                              ; preds = %263, %224
  %228 = phi i64 [ 1, %224 ], [ %264, %263 ]
  %229 = mul nuw nsw i64 %228, %225
  %230 = getelementptr inbounds i16, ptr %4, i64 %229
  %231 = trunc i64 %228 to i32
  %232 = mul i32 %231, %12
  %233 = freeze i32 %232
  %234 = sdiv i32 %233, %13
  %235 = mul nsw i32 %234, %8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %3, i64 %236
  %238 = icmp slt i32 %234, %221
  %239 = select i1 %238, i32 %8, i32 0
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds i8, ptr %237, i64 %240
  %242 = mul i32 %234, %13
  %243 = sub i32 %233, %242
  %244 = shl nsw i32 %243, 4
  %245 = add nsw i32 %244, %222
  %246 = sdiv i32 %245, %13
  %247 = sub nsw i32 16, %246
  br label %248

248:                                              ; preds = %248, %227
  %249 = phi i64 [ 0, %227 ], [ %261, %248 ]
  %250 = getelementptr inbounds i8, ptr %237, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !12
  %252 = zext i8 %251 to i32
  %253 = mul nsw i32 %247, %252
  %254 = getelementptr inbounds i8, ptr %241, i64 %249
  %255 = load i8, ptr %254, align 1, !tbaa !12
  %256 = zext i8 %255 to i32
  %257 = mul nsw i32 %246, %256
  %258 = add nsw i32 %257, %253
  %259 = trunc i32 %258 to i16
  %260 = getelementptr inbounds i16, ptr %230, i64 %249
  store i16 %259, ptr %260, align 2, !tbaa !13
  %261 = add nuw nsw i64 %249, 1
  %262 = icmp eq i64 %261, %225
  br i1 %262, label %263, label %248

263:                                              ; preds = %248
  %264 = add nuw nsw i64 %228, 2
  %265 = icmp ult i64 %264, %226
  br i1 %265, label %227, label %266

266:                                              ; preds = %68, %121, %168, %263, %171, %220, %125, %78, %25, %218, %124, %77, %23
  %267 = icmp slt i32 %7, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %266
  %269 = mul nsw i32 %8, %7
  %270 = sext i32 %269 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i16, ptr %4, i64 %271
  %273 = add nsw i32 %21, %7
  %274 = tail call i32 @llvm.smax.i32(i32 %273, i32 0)
  %275 = tail call i32 @llvm.smin.i32(i32 %274, i32 %11)
  br label %282

276:                                              ; preds = %266
  %277 = mul nsw i32 %10, %7
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, ptr %5, i64 %278
  %280 = sub nsw i32 %11, %7
  %281 = tail call i32 @llvm.smin.i32(i32 %280, i32 %21)
  br label %282

282:                                              ; preds = %276, %268
  %283 = phi ptr [ %5, %268 ], [ %279, %276 ]
  %284 = phi ptr [ %272, %268 ], [ %4, %276 ]
  %285 = phi i32 [ %275, %268 ], [ %281, %276 ]
  %286 = icmp slt i32 %6, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = sub nsw i32 0, %6
  %289 = add nsw i32 %19, %6
  %290 = tail call i32 @llvm.smax.i32(i32 %289, i32 0)
  %291 = tail call i32 @llvm.smin.i32(i32 %290, i32 %10)
  br label %297

292:                                              ; preds = %282
  %293 = zext nneg i32 %6 to i64
  %294 = getelementptr inbounds i8, ptr %283, i64 %293
  %295 = sub nsw i32 %10, %6
  %296 = tail call i32 @llvm.smin.i32(i32 %295, i32 %19)
  br label %297

297:                                              ; preds = %292, %287
  %298 = phi ptr [ %283, %287 ], [ %294, %292 ]
  %299 = phi i32 [ %291, %287 ], [ %296, %292 ]
  %300 = phi i32 [ %288, %287 ], [ 0, %292 ]
  %301 = icmp sgt i32 %299, 0
  br i1 %301, label %302, label %354

302:                                              ; preds = %297
  %303 = add nsw i32 %8, -1
  %304 = ashr i32 %15, 1
  %305 = icmp sgt i32 %285, 0
  %306 = sext i32 %10 to i64
  %307 = sext i32 %8 to i64
  br i1 %305, label %308, label %354

308:                                              ; preds = %302
  %309 = zext nneg i32 %299 to i64
  br label %310

310:                                              ; preds = %351, %308
  %311 = phi i64 [ 0, %308 ], [ %352, %351 ]
  %312 = getelementptr inbounds i8, ptr %298, i64 %311
  %313 = trunc i64 %311 to i32
  %314 = add i32 %300, %313
  %315 = mul i32 %314, %14
  %316 = freeze i32 %315
  %317 = sdiv i32 %316, %15
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i16, ptr %284, i64 %318
  %320 = icmp slt i32 %317, %303
  %321 = select i1 %320, i64 2, i64 0
  %322 = getelementptr inbounds i8, ptr %319, i64 %321
  %323 = mul i32 %317, %15
  %324 = sub i32 %316, %323
  %325 = shl nsw i32 %324, 4
  %326 = add nsw i32 %325, %304
  %327 = sdiv i32 %326, %15
  %328 = sub nsw i32 16, %327
  br label %329

329:                                              ; preds = %329, %310
  %330 = phi ptr [ %312, %310 ], [ %346, %329 ]
  %331 = phi ptr [ %322, %310 ], [ %348, %329 ]
  %332 = phi ptr [ %319, %310 ], [ %347, %329 ]
  %333 = phi i32 [ 0, %310 ], [ %349, %329 ]
  %334 = load i16, ptr %332, align 2, !tbaa !13
  %335 = sext i16 %334 to i32
  %336 = mul nsw i32 %328, %335
  %337 = load i16, ptr %331, align 2, !tbaa !13
  %338 = sext i16 %337 to i32
  %339 = mul nsw i32 %327, %338
  %340 = add nsw i32 %339, %336
  %341 = icmp sgt i32 %340, -1
  %342 = select i1 %341, i32 128, i32 127
  %343 = add nsw i32 %342, %340
  %344 = lshr i32 %343, 8
  %345 = trunc i32 %344 to i8
  store i8 %345, ptr %330, align 1, !tbaa !12
  %346 = getelementptr inbounds i8, ptr %330, i64 %306
  %347 = getelementptr inbounds i16, ptr %332, i64 %307
  %348 = getelementptr inbounds i16, ptr %331, i64 %307
  %349 = add nuw nsw i32 %333, 1
  %350 = icmp eq i32 %349, %285
  br i1 %350, label %351, label %329

351:                                              ; preds = %329
  %352 = add nuw nsw i64 %311, 1
  %353 = icmp eq i64 %352, %309
  br i1 %353, label %354, label %310

354:                                              ; preds = %351, %297, %302
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define internal fastcc void @Deinterlace(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) unnamed_addr #6 {
  %7 = icmp slt i32 %2, %4
  br i1 %7, label %8, label %113

8:                                                ; preds = %6
  %9 = sext i32 %3 to i64
  %10 = sub nsw i64 0, %9
  %11 = add nsw i32 %4, -1
  %12 = icmp eq i32 %5, 0
  %13 = shl nsw i32 %3, 1
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 0, %14
  %16 = add nsw i32 %4, -2
  %17 = icmp sgt i32 %3, 0
  br i1 %12, label %18, label %79

18:                                               ; preds = %8
  br i1 %17, label %19, label %113

19:                                               ; preds = %18
  %20 = sext i32 %2 to i64
  %21 = sext i32 %16 to i64
  %22 = sext i32 %4 to i64
  %23 = sext i32 %11 to i64
  %24 = zext nneg i32 %3 to i64
  br label %25

25:                                               ; preds = %19, %76
  %26 = phi i64 [ %20, %19 ], [ %77, %76 ]
  %27 = mul nsw i64 %26, %9
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = icmp eq i64 %26, 0
  %30 = select i1 %29, i64 %9, i64 %10
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = icmp eq i64 %26, %23
  %33 = select i1 %32, i64 %10, i64 %9
  %34 = getelementptr inbounds i8, ptr %28, i64 %33
  %35 = getelementptr inbounds i8, ptr %1, i64 %27
  %36 = icmp slt i64 %26, 2
  %37 = select i1 %36, i64 0, i64 %15
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = icmp slt i64 %26, %21
  %40 = select i1 %39, i64 %14, i64 0
  %41 = getelementptr inbounds i8, ptr %35, i64 %40
  br label %42

42:                                               ; preds = %25, %42
  %43 = phi i64 [ 0, %25 ], [ %74, %42 ]
  %44 = getelementptr inbounds i8, ptr %31, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !12
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %34, i64 %43
  %48 = load i8, ptr %47, align 1, !tbaa !12
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %49, %46
  %51 = shl nuw nsw i32 %50, 3
  %52 = getelementptr inbounds i8, ptr %35, i64 %43
  %53 = load i8, ptr %52, align 1, !tbaa !12
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 1
  %56 = getelementptr inbounds i8, ptr %38, i64 %43
  %57 = load i8, ptr %56, align 1, !tbaa !12
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds i8, ptr %41, i64 %43
  %60 = load i8, ptr %59, align 1, !tbaa !12
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %51, %55
  %63 = add nuw nsw i32 %58, %61
  %64 = sub nsw i32 %62, %63
  %65 = load ptr, ptr @Clip, align 8, !tbaa !10
  %66 = icmp sgt i32 %64, -1
  %67 = select i1 %66, i32 8, i32 7
  %68 = add nsw i32 %67, %64
  %69 = ashr i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %65, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !12
  %73 = getelementptr inbounds i8, ptr %28, i64 %43
  store i8 %72, ptr %73, align 1, !tbaa !12
  %74 = add nuw nsw i64 %43, 1
  %75 = icmp eq i64 %74, %24
  br i1 %75, label %76, label %42

76:                                               ; preds = %42
  %77 = add nsw i64 %26, 2
  %78 = icmp slt i64 %77, %22
  br i1 %78, label %25, label %113

79:                                               ; preds = %8
  br i1 %17, label %80, label %113

80:                                               ; preds = %79
  %81 = sext i32 %2 to i64
  %82 = sext i32 %4 to i64
  %83 = sext i32 %11 to i64
  %84 = zext nneg i32 %3 to i64
  br label %85

85:                                               ; preds = %80, %110
  %86 = phi i64 [ %81, %80 ], [ %111, %110 ]
  %87 = mul nsw i64 %86, %9
  %88 = getelementptr inbounds i8, ptr %0, i64 %87
  %89 = icmp eq i64 %86, 0
  %90 = select i1 %89, i64 %9, i64 %10
  %91 = getelementptr inbounds i8, ptr %88, i64 %90
  %92 = icmp eq i64 %86, %83
  %93 = select i1 %92, i64 %10, i64 %9
  %94 = getelementptr inbounds i8, ptr %88, i64 %93
  br label %95

95:                                               ; preds = %85, %95
  %96 = phi i64 [ 0, %85 ], [ %108, %95 ]
  %97 = getelementptr inbounds i8, ptr %91, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !12
  %99 = zext i8 %98 to i16
  %100 = getelementptr inbounds i8, ptr %94, i64 %96
  %101 = load i8, ptr %100, align 1, !tbaa !12
  %102 = zext i8 %101 to i16
  %103 = add nuw nsw i16 %99, 1
  %104 = add nuw nsw i16 %103, %102
  %105 = lshr i16 %104, 1
  %106 = trunc nuw i16 %105 to i8
  %107 = getelementptr inbounds i8, ptr %88, i64 %96
  store i8 %106, ptr %107, align 1, !tbaa !12
  %108 = add nuw nsw i64 %96, 1
  %109 = icmp eq i64 %108, %84
  br i1 %109, label %110, label %95

110:                                              ; preds = %95
  %111 = add nsw i64 %86, 2
  %112 = icmp slt i64 %111, %82
  br i1 %112, label %85, label %113

113:                                              ; preds = %110, %76, %79, %18, %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !8, i64 0}
