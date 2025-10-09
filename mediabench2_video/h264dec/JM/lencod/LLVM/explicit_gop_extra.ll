; ModuleID = 'src/explicit_gop.c'
source_filename = "src/explicit_gop.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.decoded_picture_buffer = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }

@input = external dso_local local_unnamed_addr global ptr, align 8
@gop_structure = external dso_local local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"init_gop_structure: gop_structure\00", align 1
@errortext = external dso_local global [300 x i8], align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"Slice Type invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Invalid Frame Order value. Frame position needs to be in [0,%d] range.\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"Frame Order value %d in frame %d already used for enhancement frame %d.\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"Slice Type needs to be followed by Display Order. Please check configuration file.\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"Reference_IDC invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@img = external dso_local local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [75 x i8] c"Reference_IDC needs to be followed by QP. Please check configuration file.\00", align 1
@.str.10 = private unnamed_addr constant [92 x i8] c"Total number of frames in Enhancement GOP need to be fewer or equal to FrameSkip parameter.\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"ExplicitPyramidFormat is empty. Please check configuration file.\00", align 1
@start_frame_no_in_this_IGOP = external dso_local local_unnamed_addr global i32, align 4
@log2_max_frame_num_minus4 = external dso_local local_unnamed_addr global i32, align 4
@start_tr_in_this_IGOP = external dso_local local_unnamed_addr global i32, align 4
@dpb = external dso_local local_unnamed_addr global %struct.decoded_picture_buffer, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"poc_based_ref_management: tmp_drpm\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"poc_based_ref_management: tmp_drpm2\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @create_pyramid() local_unnamed_addr #0 {
  %1 = alloca %struct.GOP_DATA, align 4
  %2 = load ptr, ptr @input, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 1244
  %4 = load i32, ptr %3, align 4, !tbaa !10
  %5 = sdiv i32 %4, 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1)
  %6 = getelementptr inbounds i8, ptr %2, i64 1944
  %7 = load i32, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = add nsw i32 %4, 1
  br label %52

11:                                               ; preds = %0
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %138

13:                                               ; preds = %11
  %14 = load ptr, ptr @gop_structure, align 8
  %15 = getelementptr inbounds i8, ptr %2, i64 1248
  %16 = getelementptr inbounds i8, ptr %2, i64 1948
  %17 = getelementptr inbounds i8, ptr %2, i64 1252
  %18 = zext nneg i32 %5 to i64
  %19 = zext nneg i32 %4 to i64
  br label %20

20:                                               ; preds = %13, %47
  %21 = phi i64 [ 0, %13 ], [ %50, %47 ]
  %22 = icmp ult i64 %21, %18
  %23 = getelementptr inbounds %struct.GOP_DATA, ptr %14, i64 %21
  store i32 1, ptr %23, align 4, !tbaa !15
  %24 = getelementptr inbounds %struct.GOP_DATA, ptr %14, i64 %21, i32 1
  %25 = trunc i64 %21 to i32
  %26 = getelementptr inbounds %struct.GOP_DATA, ptr %14, i64 %21, i32 4
  %27 = getelementptr inbounds %struct.GOP_DATA, ptr %14, i64 %21, i32 2
  br i1 %22, label %28, label %43

28:                                               ; preds = %20
  %29 = shl i32 %25, 1
  %30 = or disjoint i32 %29, 1
  store i32 %30, ptr %24, align 4, !tbaa !17
  store i32 0, ptr %26, align 4, !tbaa !18
  store i32 2, ptr %27, align 4, !tbaa !19
  %31 = load i32, ptr %15, align 8, !tbaa !20
  %32 = load i32, ptr %16, align 4, !tbaa !21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, ptr %17, align 4, !tbaa !22
  %36 = add nsw i32 %35, %31
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %47, label %40

38:                                               ; preds = %28
  %39 = icmp slt i32 %31, 1
  br i1 %39, label %47, label %40

40:                                               ; preds = %34, %38
  %41 = phi i32 [ -1, %38 ], [ %35, %34 ]
  %42 = add nsw i32 %41, %31
  br label %47

43:                                               ; preds = %20
  %44 = sub i32 %25, %5
  %45 = shl i32 %44, 1
  store i32 %45, ptr %24, align 4, !tbaa !17
  store i32 1, ptr %26, align 4, !tbaa !18
  store i32 0, ptr %27, align 4, !tbaa !19
  %46 = load i32, ptr %15, align 8, !tbaa !20
  br label %47

47:                                               ; preds = %40, %34, %38, %43
  %48 = phi i32 [ %46, %43 ], [ %42, %40 ], [ 0, %34 ], [ 0, %38 ]
  %49 = getelementptr inbounds %struct.GOP_DATA, ptr %14, i64 %21, i32 3
  store i32 %48, ptr %49, align 4, !tbaa !23
  %50 = add nuw nsw i64 %21, 1
  %51 = icmp eq i64 %50, %19
  br i1 %51, label %138, label %20

52:                                               ; preds = %52, %9
  %53 = phi i32 [ %56, %52 ], [ 1, %9 ]
  %54 = ashr i32 %10, %53
  %55 = icmp sgt i32 %54, 1
  %56 = add nuw nsw i32 %53, 1
  br i1 %55, label %52, label %57

57:                                               ; preds = %52
  %58 = icmp sgt i32 %4, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %61 = getelementptr inbounds i8, ptr %2, i64 1248
  %62 = load i32, ptr %61, align 8, !tbaa !20
  %63 = zext nneg i32 %4 to i64
  br label %71

64:                                               ; preds = %71, %57
  %65 = icmp ugt i32 %53, 1
  br i1 %65, label %66, label %81

66:                                               ; preds = %64
  %67 = load ptr, ptr @gop_structure, align 8
  %68 = getelementptr inbounds i8, ptr %2, i64 1248
  %69 = getelementptr inbounds i8, ptr %2, i64 1948
  %70 = getelementptr inbounds i8, ptr %2, i64 1252
  br label %83

71:                                               ; preds = %59, %71
  %72 = phi i64 [ 0, %59 ], [ %79, %71 ]
  %73 = getelementptr inbounds %struct.GOP_DATA, ptr %60, i64 %72, i32 1
  %74 = trunc nuw nsw i64 %72 to i32
  store i32 %74, ptr %73, align 4, !tbaa !17
  %75 = getelementptr inbounds %struct.GOP_DATA, ptr %60, i64 %72
  store i32 1, ptr %75, align 4, !tbaa !15
  %76 = getelementptr inbounds %struct.GOP_DATA, ptr %60, i64 %72, i32 4
  store i32 0, ptr %76, align 4, !tbaa !18
  %77 = getelementptr inbounds %struct.GOP_DATA, ptr %60, i64 %72, i32 2
  store i32 0, ptr %77, align 4, !tbaa !19
  %78 = getelementptr inbounds %struct.GOP_DATA, ptr %60, i64 %72, i32 3
  store i32 %62, ptr %78, align 4, !tbaa !23
  %79 = add nuw nsw i64 %72, 1
  %80 = icmp eq i64 %79, %63
  br i1 %80, label %64, label %71

81:                                               ; preds = %113, %64
  %82 = icmp sgt i32 %4, 1
  br i1 %82, label %116, label %138

83:                                               ; preds = %66, %113
  %84 = phi i32 [ 1, %66 ], [ %114, %113 ]
  %85 = shl nuw i32 1, %84
  %86 = sub nsw i32 %10, %85
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %113, label %88

88:                                               ; preds = %83
  %89 = add i32 %85, -1
  %90 = load i32, ptr %68, align 8, !tbaa !20
  %91 = load i32, ptr %69, align 4, !tbaa !21
  %92 = icmp eq i32 %91, 0
  %93 = sub i32 %90, %84
  %94 = icmp slt i32 %93, 0
  %95 = sext i32 %89 to i64
  %96 = sext i32 %85 to i64
  %97 = sext i32 %86 to i64
  %98 = sub i32 %90, %84
  %99 = select i1 %94, i32 0, i32 %98
  br label %100

100:                                              ; preds = %88, %108
  %101 = phi i64 [ %95, %88 ], [ %111, %108 ]
  %102 = getelementptr inbounds %struct.GOP_DATA, ptr %67, i64 %101, i32 4
  store i32 %84, ptr %102, align 4, !tbaa !18
  %103 = getelementptr inbounds %struct.GOP_DATA, ptr %67, i64 %101, i32 2
  store i32 2, ptr %103, align 4, !tbaa !19
  br i1 %92, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, ptr %70, align 4, !tbaa !22
  %106 = add nsw i32 %105, %90
  %107 = tail call i32 @llvm.smax.i32(i32 %106, i32 0)
  br label %108

108:                                              ; preds = %100, %104
  %109 = phi i32 [ %107, %104 ], [ %99, %100 ]
  %110 = getelementptr inbounds %struct.GOP_DATA, ptr %67, i64 %101, i32 3
  store i32 %109, ptr %110, align 4, !tbaa !23
  %111 = add nsw i64 %101, %96
  %112 = icmp slt i64 %111, %97
  br i1 %112, label %100, label %113

113:                                              ; preds = %108, %83
  %114 = add nuw nsw i32 %84, 1
  %115 = icmp eq i32 %114, %53
  br i1 %115, label %81, label %83

116:                                              ; preds = %81, %135
  %117 = phi i32 [ %136, %135 ], [ 1, %81 ]
  br label %118

118:                                              ; preds = %116, %130
  %119 = phi i32 [ %117, %116 ], [ %124, %130 ]
  %120 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %121 = zext nneg i32 %119 to i64
  %122 = getelementptr inbounds %struct.GOP_DATA, ptr %120, i64 %121, i32 4
  %123 = load i32, ptr %122, align 4, !tbaa !18
  %124 = add nsw i32 %119, -1
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds %struct.GOP_DATA, ptr %120, i64 %125
  %127 = getelementptr inbounds i8, ptr %126, i64 16
  %128 = load i32, ptr %127, align 4, !tbaa !18
  %129 = icmp sgt i32 %123, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %126, i64 24, i1 false), !tbaa.struct !24
  %131 = getelementptr inbounds %struct.GOP_DATA, ptr %120, i64 %121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %126, ptr noundef nonnull align 4 dereferenceable(24) %131, i64 24, i1 false), !tbaa.struct !24
  %132 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %133 = getelementptr inbounds %struct.GOP_DATA, ptr %132, i64 %121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %133, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !24
  %134 = icmp sgt i32 %119, 1
  br i1 %134, label %118, label %135

135:                                              ; preds = %118, %130
  %136 = add nuw nsw i32 %117, 1
  %137 = icmp eq i32 %136, %4
  br i1 %137, label %138, label %116

138:                                              ; preds = %135, %47, %81, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @init_gop_structure() local_unnamed_addr #4 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 1944
  %3 = load i32, ptr %2, align 8, !tbaa !14
  %4 = icmp eq i32 %3, 3
  %5 = select i1 %4, i64 20, i64 1244
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !25
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 10)
  %9 = zext nneg i32 %8 to i64
  %10 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 24) #12
  store ptr %10, ptr @gop_structure, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #13
  br label %13

13:                                               ; preds = %12, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @clear_gop_structure() local_unnamed_addr #6 {
  %1 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
define dso_local void @interpret_gop_structure() local_unnamed_addr #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @input, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 1952
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %189

8:                                                ; preds = %0
  %9 = add nsw i32 %6, -2
  br label %10

10:                                               ; preds = %8, %180
  %11 = phi i32 [ 0, %8 ], [ %186, %180 ]
  %12 = phi i32 [ 0, %8 ], [ %185, %180 ]
  %13 = phi i32 [ 0, %8 ], [ %184, %180 ]
  %14 = phi i32 [ 0, %8 ], [ %183, %180 ]
  %15 = phi i32 [ 0, %8 ], [ %182, %180 ]
  %16 = phi i32 [ 0, %8 ], [ %187, %180 ]
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = load ptr, ptr @input, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 1952
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds [1024 x i8], ptr %20, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !26
  switch i8 %23, label %36 [
    i8 80, label %24
    i8 112, label %24
    i8 66, label %28
    i8 98, label %28
    i8 73, label %32
    i8 105, label %32
  ]

24:                                               ; preds = %18, %18
  %25 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %26 = sext i32 %11 to i64
  %27 = getelementptr inbounds %struct.GOP_DATA, ptr %25, i64 %26
  store i32 0, ptr %27, align 4, !tbaa !15
  br label %180

28:                                               ; preds = %18, %18
  %29 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %30 = sext i32 %11 to i64
  %31 = getelementptr inbounds %struct.GOP_DATA, ptr %29, i64 %30
  store i32 1, ptr %31, align 4, !tbaa !15
  br label %180

32:                                               ; preds = %18, %18
  %33 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %34 = sext i32 %11 to i64
  %35 = getelementptr inbounds %struct.GOP_DATA, ptr %33, i64 %34
  store i32 2, ptr %35, align 4, !tbaa !15
  br label %180

36:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) @errortext, ptr noundef nonnull align 1 dereferenceable(84) @.str.3, i64 84, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #13
  br label %180

37:                                               ; preds = %10
  %38 = icmp eq i32 %14, 0
  br i1 %38, label %39, label %88

39:                                               ; preds = %37
  %40 = tail call ptr @__ctype_b_loc() #15
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = load ptr, ptr @input, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 1952
  %44 = sext i32 %16 to i64
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !26
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i16, ptr %41, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !27
  %50 = and i16 %49, 2048
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %87, label %52

52:                                               ; preds = %39
  %53 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %45, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #13
  %54 = load i32, ptr %2, align 4, !tbaa !25
  %55 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %56 = sext i32 %11 to i64
  %57 = getelementptr inbounds %struct.GOP_DATA, ptr %55, i64 %56, i32 1
  store i32 %54, ptr %57, align 4, !tbaa !17
  %58 = icmp sgt i32 %54, -1
  %59 = load ptr, ptr @input, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %59, i64 20
  %61 = load i32, ptr %60, align 4, !tbaa !29
  %62 = icmp slt i32 %54, %61
  %63 = select i1 %58, i1 %62, i1 false
  br i1 %63, label %67, label %64

64:                                               ; preds = %52
  %65 = add nsw i32 %61, -1
  %66 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.5, i32 noundef signext %65) #13
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #13
  br label %67

67:                                               ; preds = %52, %64
  %68 = icmp sgt i32 %11, 0
  br i1 %68, label %69, label %180

69:                                               ; preds = %67
  %70 = zext nneg i32 %11 to i64
  %71 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  br label %72

72:                                               ; preds = %69, %83
  %73 = phi ptr [ %71, %69 ], [ %84, %83 ]
  %74 = phi i64 [ 0, %69 ], [ %85, %83 ]
  %75 = getelementptr inbounds %struct.GOP_DATA, ptr %73, i64 %74, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !17
  %77 = load i32, ptr %2, align 4, !tbaa !25
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = trunc nuw nsw i64 %74 to i32
  %81 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.6, i32 noundef signext %76, i32 noundef signext %11, i32 noundef signext %80) #13
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #13
  %82 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  br label %83

83:                                               ; preds = %72, %79
  %84 = phi ptr [ %73, %72 ], [ %82, %79 ]
  %85 = add nuw nsw i64 %74, 1
  %86 = icmp eq i64 %85, %70
  br i1 %86, label %180, label %72

87:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(83) @errortext, ptr noundef nonnull align 1 dereferenceable(83) @.str.7, i64 83, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #13
  br label %180

88:                                               ; preds = %37
  %89 = icmp eq i32 %13, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %88
  %91 = tail call ptr @__ctype_b_loc() #15
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = load ptr, ptr @input, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 1952
  %95 = sext i32 %16 to i64
  %96 = getelementptr inbounds i8, ptr %94, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !26
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds i16, ptr %92, i64 %98
  %100 = load i16, ptr %99, align 2, !tbaa !27
  %101 = and i16 %100, 2048
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %180

103:                                              ; preds = %90
  switch i8 %97, label %112 [
    i8 69, label %104
    i8 101, label %104
    i8 82, label %108
    i8 114, label %108
  ]

104:                                              ; preds = %103, %103
  %105 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %106 = sext i32 %11 to i64
  %107 = getelementptr inbounds %struct.GOP_DATA, ptr %105, i64 %106, i32 2
  store i32 0, ptr %107, align 4, !tbaa !19
  br label %180

108:                                              ; preds = %103, %103
  %109 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %110 = sext i32 %11 to i64
  %111 = getelementptr inbounds %struct.GOP_DATA, ptr %109, i64 %110, i32 2
  store i32 2, ptr %111, align 4, !tbaa !19
  br label %180

112:                                              ; preds = %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) @errortext, ptr noundef nonnull align 1 dereferenceable(87) @.str.8, i64 87, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #13
  br label %180

113:                                              ; preds = %88
  %114 = icmp eq i32 %13, 1
  %115 = icmp eq i32 %12, 0
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %117, label %155

117:                                              ; preds = %113
  %118 = tail call ptr @__ctype_b_loc() #15
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  %120 = load ptr, ptr @input, align 8, !tbaa !6
  %121 = getelementptr inbounds i8, ptr %120, i64 1952
  %122 = sext i32 %16 to i64
  %123 = getelementptr inbounds i8, ptr %121, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !26
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds i16, ptr %119, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !27
  %128 = and i16 %127, 2048
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %154, label %130

130:                                              ; preds = %117
  %131 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %123, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #13
  %132 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %133 = sext i32 %11 to i64
  %134 = getelementptr inbounds %struct.GOP_DATA, ptr %132, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !15
  %136 = load ptr, ptr @input, align 8, !tbaa !6
  %137 = getelementptr inbounds i8, ptr %134, i64 12
  %138 = icmp eq i32 %135, 0
  %139 = select i1 %138, i64 16, i64 1248
  %140 = icmp eq i32 %135, 2
  %141 = select i1 %140, i64 12, i64 %139
  %142 = getelementptr inbounds i8, ptr %136, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !25
  store i32 %143, ptr %137, align 4, !tbaa !23
  %144 = getelementptr inbounds %struct.GOP_DATA, ptr %132, i64 %133, i32 3
  %145 = load i32, ptr %1, align 4, !tbaa !25
  %146 = add nsw i32 %145, %143
  %147 = load ptr, ptr @img, align 8, !tbaa !6
  %148 = getelementptr inbounds i8, ptr %147, i64 90492
  %149 = load i32, ptr %148, align 4, !tbaa !30
  %150 = sub nsw i32 0, %149
  %151 = icmp slt i32 %146, %150
  %152 = call i32 @llvm.smin.i32(i32 %146, i32 51)
  %153 = select i1 %151, i32 %150, i32 %152
  store i32 %153, ptr %144, align 4, !tbaa !23
  br label %180

154:                                              ; preds = %117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) @errortext, ptr noundef nonnull align 1 dereferenceable(75) @.str.9, i64 75, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #13
  br label %180

155:                                              ; preds = %113
  %156 = icmp eq i32 %12, 1
  %157 = select i1 %114, i1 %156, i1 false
  br i1 %157, label %158, label %180

158:                                              ; preds = %155
  %159 = tail call ptr @__ctype_b_loc() #15
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  %161 = load ptr, ptr @input, align 8, !tbaa !6
  %162 = getelementptr inbounds i8, ptr %161, i64 1952
  %163 = sext i32 %16 to i64
  %164 = getelementptr inbounds i8, ptr %162, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !26
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds i16, ptr %160, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !27
  %169 = and i16 %168, 2048
  %170 = icmp eq i16 %169, 0
  %171 = icmp slt i32 %16, %9
  %172 = select i1 %170, i1 %171, i1 false
  br i1 %172, label %173, label %180

173:                                              ; preds = %158
  %174 = add nsw i32 %16, -1
  %175 = add nsw i32 %11, 1
  %176 = getelementptr inbounds i8, ptr %161, i64 20
  %177 = load i32, ptr %176, align 4, !tbaa !29
  %178 = icmp slt i32 %175, %177
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(92) @errortext, ptr noundef nonnull align 1 dereferenceable(92) @.str.10, i64 92, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #13
  br label %180

180:                                              ; preds = %83, %90, %67, %104, %108, %112, %24, %28, %32, %36, %154, %130, %173, %179, %158, %155, %87
  %181 = phi i32 [ %16, %87 ], [ %16, %130 ], [ %16, %154 ], [ %16, %158 ], [ %174, %179 ], [ %174, %173 ], [ %16, %155 ], [ %16, %36 ], [ %16, %32 ], [ %16, %28 ], [ %16, %24 ], [ %16, %112 ], [ %16, %108 ], [ %16, %104 ], [ %16, %67 ], [ %16, %90 ], [ %16, %83 ]
  %182 = phi i32 [ 1, %87 ], [ 1, %130 ], [ 1, %154 ], [ 1, %158 ], [ 0, %179 ], [ 0, %173 ], [ 1, %155 ], [ 1, %36 ], [ 1, %32 ], [ 1, %28 ], [ 1, %24 ], [ 1, %112 ], [ 1, %108 ], [ 1, %104 ], [ 1, %67 ], [ 1, %90 ], [ 1, %83 ]
  %183 = phi i32 [ 0, %87 ], [ 1, %130 ], [ 1, %154 ], [ 1, %158 ], [ 0, %179 ], [ 0, %173 ], [ 1, %155 ], [ %14, %36 ], [ %14, %32 ], [ %14, %28 ], [ %14, %24 ], [ 1, %112 ], [ 1, %108 ], [ 1, %104 ], [ 1, %67 ], [ 1, %90 ], [ 1, %83 ]
  %184 = phi i32 [ %13, %87 ], [ 1, %130 ], [ 1, %154 ], [ 1, %158 ], [ 0, %179 ], [ 0, %173 ], [ %13, %155 ], [ %13, %36 ], [ %13, %32 ], [ %13, %28 ], [ %13, %24 ], [ 1, %112 ], [ 1, %108 ], [ 1, %104 ], [ %13, %67 ], [ 0, %90 ], [ %13, %83 ]
  %185 = phi i32 [ %12, %87 ], [ 1, %130 ], [ 0, %154 ], [ 1, %158 ], [ 0, %179 ], [ 0, %173 ], [ %12, %155 ], [ %12, %36 ], [ %12, %32 ], [ %12, %28 ], [ %12, %24 ], [ %12, %112 ], [ %12, %108 ], [ %12, %104 ], [ %12, %67 ], [ %12, %90 ], [ %12, %83 ]
  %186 = phi i32 [ %11, %87 ], [ %11, %130 ], [ %11, %154 ], [ %11, %158 ], [ %175, %179 ], [ %175, %173 ], [ %11, %155 ], [ %11, %36 ], [ %11, %32 ], [ %11, %28 ], [ %11, %24 ], [ %11, %112 ], [ %11, %108 ], [ %11, %104 ], [ %11, %67 ], [ %11, %90 ], [ %11, %83 ]
  %187 = add nsw i32 %181, 1
  %188 = icmp slt i32 %187, %6
  br i1 %188, label %10, label %190

189:                                              ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) @errortext, ptr noundef nonnull align 1 dereferenceable(65) @.str.11, i64 65, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef signext 400) #13
  br label %192

190:                                              ; preds = %180
  %191 = add nsw i32 %186, 1
  br label %192

192:                                              ; preds = %190, %189
  %193 = phi i32 [ 1, %189 ], [ %191, %190 ]
  %194 = load ptr, ptr @input, align 8, !tbaa !6
  %195 = getelementptr inbounds i8, ptr %194, i64 1244
  store i32 %193, ptr %195, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare dso_local ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare dso_local signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @encode_enhancement_layer() local_unnamed_addr #4 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 1244
  %3 = load i32, ptr %2, align 4, !tbaa !10
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %4, label %317, label %6

6:                                                ; preds = %0
  %7 = load i32, ptr %5, align 8, !tbaa !33
  %8 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !25
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %317

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 1, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds i8, ptr %1, i64 3584
  %13 = load i32, ptr %12, align 8, !tbaa !35
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds i8, ptr %5, i64 90200
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds i8, ptr %1, i64 1940
  %18 = load i32, ptr %17, align 4, !tbaa !36
  %19 = icmp eq i32 %18, 1
  %20 = getelementptr inbounds i8, ptr %1, i64 1944
  %21 = load i32, ptr %20, align 8, !tbaa !14
  br i1 %19, label %36, label %22

22:                                               ; preds = %10
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %5, i64 90316
  store i32 0, ptr %25, align 4, !tbaa !37
  br label %39

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %5, i64 90284
  %28 = load i32, ptr %27, align 4, !tbaa !38
  %29 = add i32 %28, 1
  %30 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !25
  %31 = add i32 %30, 4
  %32 = shl nsw i32 -1, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %29, %33
  store i32 %34, ptr %27, align 4, !tbaa !38
  %35 = getelementptr inbounds i8, ptr %5, i64 90316
  store i32 0, ptr %35, align 4, !tbaa !37
  br label %198

36:                                               ; preds = %10
  %37 = getelementptr inbounds i8, ptr %5, i64 90316
  store i32 0, ptr %37, align 4, !tbaa !37
  %38 = icmp eq i32 %21, 0
  br i1 %38, label %198, label %39

39:                                               ; preds = %24, %36
  %40 = getelementptr inbounds i8, ptr %5, i64 89316
  store i32 1, ptr %40, align 4, !tbaa !39
  %41 = load i32, ptr %2, align 4, !tbaa !10
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %195, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  br label %45

45:                                               ; preds = %43, %192
  %46 = phi ptr [ %169, %192 ], [ %44, %43 ]
  %47 = phi i32 [ %179, %192 ], [ %41, %43 ]
  %48 = phi ptr [ %168, %192 ], [ %1, %43 ]
  %49 = phi i32 [ %193, %192 ], [ 1, %43 ]
  %50 = phi ptr [ %170, %192 ], [ %5, %43 ]
  %51 = phi i32 [ %74, %192 ], [ 1, %43 ]
  %52 = getelementptr inbounds i8, ptr %50, i64 90316
  store i32 0, ptr %52, align 4, !tbaa !37
  %53 = sext i32 %49 to i64
  %54 = getelementptr %struct.GOP_DATA, ptr %46, i64 %53
  %55 = getelementptr i8, ptr %54, i64 -24
  %56 = load i32, ptr %55, align 4, !tbaa !15
  %57 = getelementptr inbounds i8, ptr %50, i64 24
  store i32 %56, ptr %57, align 8, !tbaa !34
  %58 = icmp eq i32 %51, 1
  br i1 %58, label %59, label %68

59:                                               ; preds = %45
  %60 = getelementptr inbounds i8, ptr %50, i64 90284
  %61 = load i32, ptr %60, align 4, !tbaa !38
  %62 = add i32 %61, 1
  %63 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !25
  %64 = add i32 %63, 4
  %65 = shl nsw i32 -1, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %62, %66
  store i32 %67, ptr %60, align 4, !tbaa !38
  br label %68

68:                                               ; preds = %59, %45
  %69 = getelementptr i8, ptr %54, i64 -16
  %70 = load i32, ptr %69, align 4, !tbaa !19
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, ptr %52, align 4, !tbaa !37
  br label %73

73:                                               ; preds = %68, %72
  %74 = phi i32 [ 1, %72 ], [ 0, %68 ]
  %75 = getelementptr inbounds i8, ptr %48, i64 20
  %76 = load i32, ptr %75, align 4, !tbaa !29
  %77 = add nsw i32 %76, 1
  %78 = sitofp i32 %77 to double
  %79 = sitofp i32 %47 to double
  %80 = fadd double %79, 1.000000e+00
  %81 = fdiv double %78, %80
  %82 = getelementptr inbounds i8, ptr %50, i64 89304
  %83 = getelementptr inbounds i8, ptr %48, i64 1944
  %84 = load i32, ptr %83, align 8, !tbaa !14
  %85 = icmp eq i32 %84, 3
  %86 = select i1 %85, double 1.000000e+00, double %81
  store double %86, ptr %82, align 8
  %87 = getelementptr inbounds i8, ptr %48, i64 1228
  %88 = load i32, ptr %87, align 4, !tbaa !40
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %73
  %91 = load i32, ptr %50, align 8, !tbaa !33
  %92 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !25
  br label %103

93:                                               ; preds = %73
  %94 = getelementptr inbounds i8, ptr %48, i64 1236
  %95 = load i32, ptr %94, align 4, !tbaa !41
  %96 = icmp eq i32 %95, 0
  %97 = load i32, ptr %50, align 8, !tbaa !33
  %98 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !25
  br i1 %96, label %103, label %99

99:                                               ; preds = %93
  %100 = sub nsw i32 %97, %98
  %101 = srem i32 %100, %88
  %102 = add nsw i32 %101, -1
  br label %108

103:                                              ; preds = %90, %93
  %104 = phi i32 [ %92, %90 ], [ %98, %93 ]
  %105 = phi i32 [ %91, %90 ], [ %97, %93 ]
  %106 = xor i32 %104, -1
  %107 = add i32 %105, %106
  br label %108

108:                                              ; preds = %103, %99
  %109 = phi i32 [ %107, %103 ], [ %102, %99 ]
  %110 = phi i32 [ %104, %103 ], [ %98, %99 ]
  %111 = phi i32 [ %105, %103 ], [ %97, %99 ]
  %112 = mul nsw i32 %109, %77
  %113 = getelementptr i8, ptr %54, i64 -20
  %114 = load i32, ptr %113, align 4, !tbaa !17
  %115 = add nsw i32 %114, 1
  %116 = sitofp i32 %115 to double
  %117 = fmul double %86, %116
  %118 = fptosi double %117 to i32
  %119 = add nsw i32 %112, %118
  %120 = shl nsw i32 %119, 1
  %121 = getelementptr inbounds i8, ptr %50, i64 90268
  store i32 %120, ptr %121, align 4, !tbaa !42
  %122 = icmp eq i32 %49, 1
  %123 = load i32, ptr @start_tr_in_this_IGOP, align 4, !tbaa !25
  br i1 %122, label %124, label %128

124:                                              ; preds = %108
  %125 = sub nsw i32 %111, %110
  %126 = mul nsw i32 %125, %77
  %127 = add nsw i32 %126, %123
  br label %141

128:                                              ; preds = %108
  %129 = xor i32 %110, -1
  %130 = add i32 %111, %129
  %131 = mul nsw i32 %130, %77
  %132 = add nsw i32 %131, %123
  %133 = fmul double %86, 2.000000e+00
  %134 = getelementptr i8, ptr %54, i64 -44
  %135 = load i32, ptr %134, align 4, !tbaa !17
  %136 = add nsw i32 %135, 1
  %137 = sitofp i32 %136 to double
  %138 = fmul double %133, %137
  %139 = fptosi double %138 to i32
  %140 = add nsw i32 %132, %139
  br label %141

141:                                              ; preds = %128, %124
  %142 = phi i32 [ %127, %124 ], [ %140, %128 ]
  %143 = sub nsw i32 %119, %142
  %144 = shl nsw i32 %143, 1
  %145 = getelementptr inbounds i8, ptr %50, i64 90256
  store i32 %144, ptr %145, align 8
  %146 = getelementptr inbounds i8, ptr %48, i64 3552
  %147 = load i32, ptr %146, align 8, !tbaa !43
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = getelementptr inbounds i8, ptr %48, i64 3556
  %151 = load i32, ptr %150, align 4, !tbaa !44
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149, %141
  %154 = or disjoint i32 %120, 1
  br label %155

155:                                              ; preds = %149, %153
  %156 = phi i32 [ %154, %153 ], [ %120, %149 ]
  %157 = getelementptr inbounds i8, ptr %50, i64 90272
  store i32 %156, ptr %157, align 8, !tbaa !45
  %158 = getelementptr inbounds i8, ptr %50, i64 90276
  store i32 %120, ptr %158, align 4, !tbaa !46
  %159 = getelementptr inbounds i8, ptr %50, i64 90260
  store i32 0, ptr %159, align 4, !tbaa !25
  %160 = tail call signext i32 @encode_one_frame() #13
  %161 = load ptr, ptr @input, align 8, !tbaa !6
  %162 = getelementptr inbounds i8, ptr %161, i64 3896
  %163 = load i32, ptr %162, align 8, !tbaa !47
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %155
  tail call void @report_frame_statistic() #13
  %166 = load ptr, ptr @input, align 8, !tbaa !6
  br label %167

167:                                              ; preds = %165, %155
  %168 = phi ptr [ %166, %165 ], [ %161, %155 ]
  %169 = load ptr, ptr @gop_structure, align 8, !tbaa !6
  %170 = load ptr, ptr @img, align 8, !tbaa !6
  %171 = getelementptr inbounds i8, ptr %170, i64 89316
  %172 = load i32, ptr %171, align 4, !tbaa !39
  %173 = sext i32 %172 to i64
  %174 = getelementptr %struct.GOP_DATA, ptr %169, i64 %173
  %175 = getelementptr i8, ptr %174, i64 -16
  %176 = load i32, ptr %175, align 4, !tbaa !19
  %177 = icmp eq i32 %176, 2
  %178 = getelementptr inbounds i8, ptr %168, i64 1244
  %179 = load i32, ptr %178, align 4, !tbaa !10
  %180 = icmp eq i32 %172, %179
  %181 = select i1 %177, i1 %180, i1 false
  br i1 %181, label %182, label %192

182:                                              ; preds = %167
  %183 = getelementptr inbounds i8, ptr %170, i64 90284
  %184 = load i32, ptr %183, align 4, !tbaa !38
  %185 = add i32 %184, 1
  %186 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !25
  %187 = add i32 %186, 4
  %188 = shl nsw i32 -1, %187
  %189 = xor i32 %188, -1
  %190 = and i32 %185, %189
  store i32 %190, ptr %183, align 4, !tbaa !38
  %191 = add nsw i32 %172, 1
  store i32 %191, ptr %171, align 4, !tbaa !39
  br label %195

192:                                              ; preds = %167
  %193 = add nsw i32 %172, 1
  store i32 %193, ptr %171, align 4, !tbaa !39
  %194 = icmp slt i32 %172, %179
  br i1 %194, label %45, label %195

195:                                              ; preds = %192, %182, %39
  %196 = phi ptr [ %5, %39 ], [ %170, %182 ], [ %170, %192 ]
  %197 = phi ptr [ %40, %39 ], [ %171, %182 ], [ %171, %192 ]
  store i32 0, ptr %197, align 4, !tbaa !39
  br label %317

198:                                              ; preds = %26, %36
  %199 = getelementptr inbounds i8, ptr %5, i64 89316
  store i32 1, ptr %199, align 4, !tbaa !39
  %200 = load i32, ptr %2, align 4, !tbaa !10
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %317, label %202

202:                                              ; preds = %198, %308
  %203 = phi i32 [ %315, %308 ], [ %200, %198 ]
  %204 = phi ptr [ %309, %308 ], [ %1, %198 ]
  %205 = phi i32 [ %313, %308 ], [ 1, %198 ]
  %206 = phi ptr [ %310, %308 ], [ %5, %198 ]
  %207 = getelementptr inbounds i8, ptr %206, i64 90316
  store i32 0, ptr %207, align 4, !tbaa !37
  %208 = getelementptr inbounds i8, ptr %204, i64 1940
  %209 = load i32, ptr %208, align 4, !tbaa !36
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %220

211:                                              ; preds = %202
  store i32 1, ptr %207, align 4, !tbaa !37
  %212 = getelementptr inbounds i8, ptr %206, i64 90284
  %213 = load i32, ptr %212, align 4, !tbaa !38
  %214 = add i32 %213, 1
  %215 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !25
  %216 = add i32 %215, 4
  %217 = shl nsw i32 -1, %216
  %218 = xor i32 %217, -1
  %219 = and i32 %214, %218
  store i32 %219, ptr %212, align 4, !tbaa !38
  br label %220

220:                                              ; preds = %211, %202
  %221 = getelementptr inbounds i8, ptr %204, i64 20
  %222 = load i32, ptr %221, align 4, !tbaa !29
  %223 = add nsw i32 %222, 1
  %224 = sitofp i32 %223 to double
  %225 = sitofp i32 %203 to double
  %226 = fadd double %225, 1.000000e+00
  %227 = fdiv double %224, %226
  %228 = getelementptr inbounds i8, ptr %206, i64 89304
  %229 = getelementptr inbounds i8, ptr %204, i64 1944
  %230 = load i32, ptr %229, align 8, !tbaa !14
  %231 = icmp eq i32 %230, 3
  %232 = select i1 %231, double 1.000000e+00, double %227
  store double %232, ptr %228, align 8
  %233 = getelementptr inbounds i8, ptr %204, i64 1228
  %234 = load i32, ptr %233, align 4, !tbaa !40
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %220
  %237 = load i32, ptr %206, align 8, !tbaa !33
  %238 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !25
  br label %249

239:                                              ; preds = %220
  %240 = getelementptr inbounds i8, ptr %204, i64 1236
  %241 = load i32, ptr %240, align 4, !tbaa !41
  %242 = icmp eq i32 %241, 0
  %243 = load i32, ptr %206, align 8, !tbaa !33
  %244 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !25
  br i1 %242, label %249, label %245

245:                                              ; preds = %239
  %246 = sub nsw i32 %243, %244
  %247 = srem i32 %246, %234
  %248 = add nsw i32 %247, -1
  br label %254

249:                                              ; preds = %236, %239
  %250 = phi i32 [ %238, %236 ], [ %244, %239 ]
  %251 = phi i32 [ %237, %236 ], [ %243, %239 ]
  %252 = xor i32 %250, -1
  %253 = add i32 %251, %252
  br label %254

254:                                              ; preds = %249, %245
  %255 = phi i32 [ %253, %249 ], [ %248, %245 ]
  %256 = mul nsw i32 %255, %223
  %257 = sitofp i32 %205 to double
  %258 = fmul double %232, %257
  %259 = fptosi double %258 to i32
  %260 = add nsw i32 %256, %259
  %261 = shl nsw i32 %260, 1
  %262 = getelementptr inbounds i8, ptr %206, i64 90268
  store i32 %261, ptr %262, align 4, !tbaa !42
  %263 = getelementptr inbounds i8, ptr %204, i64 3552
  %264 = load i32, ptr %263, align 8, !tbaa !43
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %254
  %267 = getelementptr inbounds i8, ptr %204, i64 3556
  %268 = load i32, ptr %267, align 4, !tbaa !44
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %266, %254
  %271 = or disjoint i32 %261, 1
  br label %272

272:                                              ; preds = %266, %270
  %273 = phi i32 [ %271, %270 ], [ %261, %266 ]
  %274 = getelementptr inbounds i8, ptr %206, i64 90272
  store i32 %273, ptr %274, align 8, !tbaa !45
  %275 = getelementptr inbounds i8, ptr %206, i64 90276
  store i32 %261, ptr %275, align 4, !tbaa !46
  %276 = shl i32 %205, 1
  %277 = add i32 %276, -2
  %278 = select i1 %210, i32 -2, i32 %277
  %279 = getelementptr inbounds i8, ptr %206, i64 90256
  store i32 %278, ptr %279, align 8
  %280 = getelementptr inbounds i8, ptr %206, i64 90260
  store i32 0, ptr %280, align 4, !tbaa !25
  %281 = tail call signext i32 @encode_one_frame() #13
  %282 = load ptr, ptr @input, align 8, !tbaa !6
  %283 = getelementptr inbounds i8, ptr %282, i64 1940
  %284 = load i32, ptr %283, align 4, !tbaa !36
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %286, label %302

286:                                              ; preds = %272
  %287 = load ptr, ptr @img, align 8, !tbaa !6
  %288 = getelementptr inbounds i8, ptr %287, i64 89316
  %289 = load i32, ptr %288, align 4, !tbaa !39
  %290 = getelementptr inbounds i8, ptr %282, i64 1244
  %291 = load i32, ptr %290, align 4, !tbaa !10
  %292 = icmp eq i32 %289, %291
  br i1 %292, label %293, label %302

293:                                              ; preds = %286
  %294 = getelementptr inbounds i8, ptr %287, i64 90284
  %295 = load i32, ptr %294, align 4, !tbaa !38
  %296 = add i32 %295, 1
  %297 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !25
  %298 = add i32 %297, 4
  %299 = shl nsw i32 -1, %298
  %300 = xor i32 %299, -1
  %301 = and i32 %296, %300
  store i32 %301, ptr %294, align 4, !tbaa !38
  br label %302

302:                                              ; preds = %293, %286, %272
  %303 = getelementptr inbounds i8, ptr %282, i64 3896
  %304 = load i32, ptr %303, align 8, !tbaa !47
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  tail call void @report_frame_statistic() #13
  %307 = load ptr, ptr @input, align 8, !tbaa !6
  br label %308

308:                                              ; preds = %302, %306
  %309 = phi ptr [ %282, %302 ], [ %307, %306 ]
  %310 = load ptr, ptr @img, align 8, !tbaa !6
  %311 = getelementptr inbounds i8, ptr %310, i64 89316
  %312 = load i32, ptr %311, align 4, !tbaa !39
  %313 = add nsw i32 %312, 1
  store i32 %313, ptr %311, align 4, !tbaa !39
  %314 = getelementptr inbounds i8, ptr %309, i64 1244
  %315 = load i32, ptr %314, align 4, !tbaa !10
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %202, label %317

317:                                              ; preds = %308, %198, %195, %6, %0
  %318 = phi ptr [ %5, %198 ], [ %196, %195 ], [ %5, %6 ], [ %5, %0 ], [ %310, %308 ]
  %319 = getelementptr inbounds i8, ptr %318, i64 89316
  store i32 0, ptr %319, align 4, !tbaa !39
  ret void
}

declare dso_local signext i32 @encode_one_frame() local_unnamed_addr #2

declare dso_local void @report_frame_statistic() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @poc_based_ref_management(i32 noundef signext %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 90336
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %63

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !49
  %8 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !51
  %9 = sub i32 0, %8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %63, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !52
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @dpb, align 8, !tbaa !53
  %16 = zext i32 %12 to i64
  br label %17

17:                                               ; preds = %14, %41
  %18 = phi i64 [ 0, %14 ], [ %44, %41 ]
  %19 = phi i32 [ 0, %14 ], [ %43, %41 ]
  %20 = phi i32 [ 2147483647, %14 ], [ %42, %41 ]
  %21 = getelementptr inbounds ptr, ptr %15, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds i8, ptr %22, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !54
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds i8, ptr %22, i64 8
  %28 = load i32, ptr %27, align 8, !tbaa !56
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %22, i64 36
  %32 = load i32, ptr %31, align 4, !tbaa !57
  %33 = icmp slt i32 %32, %20
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %22, i64 40
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = getelementptr inbounds i8, ptr %36, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa !59
  %39 = getelementptr inbounds i8, ptr %36, i64 6364
  %40 = load i32, ptr %39, align 4, !tbaa !61
  br label %41

41:                                               ; preds = %17, %26, %30, %34
  %42 = phi i32 [ %20, %26 ], [ %38, %34 ], [ %20, %30 ], [ %20, %17 ]
  %43 = phi i32 [ %19, %26 ], [ %40, %34 ], [ %19, %30 ], [ %19, %17 ]
  %44 = add nuw nsw i64 %18, 1
  %45 = icmp eq i64 %44, %16
  br i1 %45, label %46, label %17

46:                                               ; preds = %41
  %47 = xor i32 %43, -1
  br label %48

48:                                               ; preds = %46, %11
  %49 = phi i32 [ -1, %11 ], [ %47, %46 ]
  %50 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #13
  br label %53

53:                                               ; preds = %52, %48
  %54 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #13
  br label %57

57:                                               ; preds = %56, %53
  %58 = getelementptr inbounds i8, ptr %54, i64 24
  store ptr %50, ptr %58, align 8, !tbaa !62
  store i32 1, ptr %54, align 8, !tbaa !64
  %59 = add i32 %49, %0
  %60 = getelementptr inbounds i8, ptr %54, i64 4
  store i32 %59, ptr %60, align 4, !tbaa !65
  %61 = load ptr, ptr @img, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 90336
  store ptr %54, ptr %62, align 8, !tbaa !48
  br label %63

63:                                               ; preds = %6, %1, %57
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }

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
!10 = !{!11, !12, i64 1244}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !13, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!11, !12, i64 1944}
!15 = !{!16, !12, i64 0}
!16 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!17 = !{!16, !12, i64 4}
!18 = !{!16, !12, i64 16}
!19 = !{!16, !12, i64 8}
!20 = !{!11, !12, i64 1248}
!21 = !{!11, !12, i64 1948}
!22 = !{!11, !12, i64 1252}
!23 = !{!16, !12, i64 12}
!24 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25, i64 12, i64 4, !25, i64 16, i64 4, !25, i64 20, i64 4, !25}
!25 = !{!12, !12, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = !{!11, !12, i64 20}
!30 = !{!31, !12, i64 90492}
!31 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !32, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !13, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !13, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !28, i64 90584, !12, i64 90588, !12, i64 90592}
!32 = !{!"float", !8, i64 0}
!33 = !{!31, !12, i64 0}
!34 = !{!31, !12, i64 24}
!35 = !{!11, !12, i64 3584}
!36 = !{!11, !12, i64 1940}
!37 = !{!31, !12, i64 90316}
!38 = !{!31, !12, i64 90284}
!39 = !{!31, !12, i64 89316}
!40 = !{!11, !12, i64 1228}
!41 = !{!11, !12, i64 1236}
!42 = !{!31, !12, i64 90268}
!43 = !{!11, !12, i64 3552}
!44 = !{!11, !12, i64 3556}
!45 = !{!31, !12, i64 90272}
!46 = !{!31, !12, i64 90276}
!47 = !{!11, !12, i64 3896}
!48 = !{!31, !7, i64 90336}
!49 = !{!50, !12, i64 32}
!50 = !{!"decoded_picture_buffer", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !7, i64 56}
!51 = !{!50, !12, i64 36}
!52 = !{!50, !12, i64 28}
!53 = !{!50, !7, i64 0}
!54 = !{!55, !12, i64 4}
!55 = !{!"frame_store", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !7, i64 40, !7, i64 48, !7, i64 56}
!56 = !{!55, !12, i64 8}
!57 = !{!55, !12, i64 36}
!58 = !{!55, !7, i64 40}
!59 = !{!60, !12, i64 4}
!60 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!61 = !{!60, !12, i64 6364}
!62 = !{!63, !7, i64 24}
!63 = !{!"DecRefPicMarking_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24}
!64 = !{!63, !12, i64 0}
!65 = !{!63, !12, i64 4}
