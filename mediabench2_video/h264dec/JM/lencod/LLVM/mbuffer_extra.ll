; ModuleID = 'src/mbuffer.c'
source_filename = "src/mbuffer.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.decoded_picture_buffer = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }

@Co_located = dso_local local_unnamed_addr global ptr null, align 8
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"undefined level\00", align 1
@dpb = dso_local local_unnamed_addr global %struct.decoded_picture_buffer zeroinitializer, align 8
@img = external dso_local local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Max. number of reference frames exceeded. Invalid stream.\00", align 1
@input = external dso_local local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [108 x i8] c"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"init_dpb: dpb->fs\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"init_dpb: dpb->fs_ref\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"init_dpb: dpb->fs_ltref\00", align 1
@listX = dso_local local_unnamed_addr global [6 x ptr] zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"init_dpb: listX[i]\00", align 1
@listXsize = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"alloc_frame_store: f\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"alloc_storable_picture: s\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"alloc_storable_picture: s->mb_field\00", align 1
@log2_max_frame_num_minus4 = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list0\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"init_lists: fs_listlt\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list1\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Invalid remapping_of_pic_nums_idc command\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"p!=NULL\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"src/mbuffer.c\00", align 1
@__PRETTY_FUNCTION__.store_picture_in_dpb = private unnamed_addr constant [45 x i8] c"void store_picture_in_dpb(StorablePicture *)\00", align 1
@p_dec = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [59 x i8] c"duplicate frame_num im short-term reference picture buffer\00", align 1
@__PRETTY_FUNCTION__.replace_top_pic_with_frame = private unnamed_addr constant [51 x i8] c"void replace_top_pic_with_frame(StorablePicture *)\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"p->structure==FRAME\00", align 1
@.str.18 = private unnamed_addr constant [80 x i8] c"replace_top_pic_with_frame: error storing reference frame (top field not found)\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l0\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l1\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"alloc_colocated: s\00", align 1
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [69 x i8] c"memory_management_control_operation = 0 not last operation in buffer\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"invalid memory_management_control_operation in buffer\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"field for long term marking not found\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"structure!=FRAME\00", align 1
@__PRETTY_FUNCTION__.unmark_long_term_field_for_reference_by_frame_idx = private unnamed_addr constant [102 x i8] c"void unmark_long_term_field_for_reference_by_frame_idx(PictureStructure, int, int, unsigned int, int)\00", align 1
@__PRETTY_FUNCTION__.insert_picture_in_dpb = private unnamed_addr constant [60 x i8] c"void insert_picture_in_dpb(FrameStore *, StorablePicture *)\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"fs!=NULL\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"Cannot determine smallest POC, DPB empty.\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"invalid frame store type\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"Cannot output frame, DPB empty.\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"no frames for output available\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"output POC must be in ascending order\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Warning: reference field for long term marking not found\00", align 1
@str.43 = private unnamed_addr constant [66 x i8] c"Warning: assigning long_term_frame_idx different from other field\00", align 1
@str.44 = private unnamed_addr constant [57 x i8] c"Warning: reference frame for long term marking not found\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local void @dump_dpb() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind
define dso_local signext range(i32 -70778880, 70778881) i32 @getDpbSize() local_unnamed_addr #1 {
  %1 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 1140
  %3 = load i32, ptr %2, align 4, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %1, i64 1144
  %5 = load i32, ptr %4, align 4, !tbaa !15
  %6 = getelementptr inbounds i8, ptr %1, i64 1148
  %7 = load i32, ptr %6, align 4, !tbaa !16
  %8 = getelementptr inbounds i8, ptr %1, i64 24
  %9 = load i32, ptr %8, align 4, !tbaa !17
  switch i32 %9, label %27 [
    i32 10, label %28
    i32 11, label %10
    i32 12, label %11
    i32 13, label %12
    i32 20, label %13
    i32 21, label %14
    i32 22, label %15
    i32 30, label %16
    i32 31, label %17
    i32 32, label %18
    i32 40, label %19
    i32 41, label %20
    i32 42, label %21
    i32 50, label %25
    i32 51, label %26
  ]

10:                                               ; preds = %0
  br label %28

11:                                               ; preds = %0
  br label %28

12:                                               ; preds = %0
  br label %28

13:                                               ; preds = %0
  br label %28

14:                                               ; preds = %0
  br label %28

15:                                               ; preds = %0
  br label %28

16:                                               ; preds = %0
  br label %28

17:                                               ; preds = %0
  br label %28

18:                                               ; preds = %0
  br label %28

19:                                               ; preds = %0
  br label %28

20:                                               ; preds = %0
  br label %28

21:                                               ; preds = %0
  %22 = getelementptr inbounds i8, ptr %1, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !18
  switch i32 %23, label %24 [
    i32 100, label %28
    i32 110, label %28
    i32 122, label %28
    i32 144, label %28
  ]

24:                                               ; preds = %21
  br label %28

25:                                               ; preds = %0
  br label %28

26:                                               ; preds = %0
  br label %28

27:                                               ; preds = %0
  tail call void @error(ptr noundef nonnull @.str, i32 noundef signext 500) #15
  br label %28

28:                                               ; preds = %21, %21, %21, %21, %0, %24, %27, %26, %25, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %29 = phi i32 [ 0, %27 ], [ 70778880, %26 ], [ 42393600, %25 ], [ 12582912, %24 ], [ 12582912, %20 ], [ 12582912, %19 ], [ 7864320, %18 ], [ 6912000, %17 ], [ 3110400, %16 ], [ 3110400, %15 ], [ 1824768, %14 ], [ 912384, %13 ], [ 912384, %12 ], [ 912384, %11 ], [ 345600, %10 ], [ 152064, %0 ], [ 13369344, %21 ], [ 13369344, %21 ], [ 13369344, %21 ], [ 13369344, %21 ]
  %30 = add i32 %3, 1
  %31 = add i32 %5, 1
  %32 = mul i32 %31, %30
  %33 = icmp eq i32 %7, 0
  %34 = zext i1 %33 to i32
  %35 = shl i32 %32, %34
  %36 = mul i32 %35, 384
  %37 = sdiv i32 %29, %36
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 16)
  ret i32 %38
}

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @check_num_ref() local_unnamed_addr #1 {
  %1 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %2 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %3 = add i32 %2, %1
  %4 = load ptr, ptr @img, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %4, i64 32
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  %8 = icmp sgt i32 %3, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef signext 500) #15
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

; Function Attrs: nounwind
define dso_local void @init_dpb() local_unnamed_addr #1 {
  %1 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 48), align 8, !tbaa !27
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free_dpb()
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call signext i32 @getDpbSize()
  store i32 %5, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %6 = load ptr, ptr @input, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 36
  %8 = load i32, ptr %7, align 4, !tbaa !29
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef signext 1000) #15
  %11 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ %5, %4 ]
  store i32 0, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  store ptr null, ptr getelementptr inbounds (i8, ptr @dpb, i64 56), align 8, !tbaa !32
  store i32 0, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  store i32 0, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #16
  store ptr %15, ptr @dpb, align 8, !tbaa !33
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #15
  %18 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %19 = zext i32 %18 to i64
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i64 [ %19, %17 ], [ %14, %12 ]
  %22 = phi i32 [ %18, %17 ], [ %13, %12 ]
  %23 = tail call noalias ptr @calloc(i64 noundef %21, i64 noundef 8) #16
  store ptr %23, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #15
  %26 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %27 = zext i32 %26 to i64
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i64 [ %27, %25 ], [ %21, %20 ]
  %30 = phi i32 [ %26, %25 ], [ %22, %20 ]
  %31 = tail call noalias ptr @calloc(i64 noundef %29, i64 noundef 8) #16
  store ptr %31, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #15
  %34 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi i32 [ %34, %33 ], [ %30, %28 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %48, %35
  %39 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #16
  store ptr %39, ptr @listX, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %59, label %60

41:                                               ; preds = %35, %48
  %42 = phi i32 [ %49, %48 ], [ %36, %35 ]
  %43 = phi i64 [ %56, %48 ], [ 0, %35 ]
  %44 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #15
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  br label %48

48:                                               ; preds = %41, %46
  %49 = phi i32 [ %42, %41 ], [ %47, %46 ]
  %50 = load ptr, ptr @dpb, align 8, !tbaa !33
  %51 = getelementptr inbounds ptr, ptr %50, i64 %43
  store ptr %44, ptr %51, align 8, !tbaa !6
  %52 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %53 = getelementptr inbounds ptr, ptr %52, i64 %43
  store ptr null, ptr %53, align 8, !tbaa !6
  %54 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %55 = getelementptr inbounds ptr, ptr %54, i64 %43
  store ptr null, ptr %55, align 8, !tbaa !6
  %56 = add nuw nsw i64 %43, 1
  %57 = zext i32 %49 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %41, label %38

59:                                               ; preds = %38
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #15
  br label %60

60:                                               ; preds = %38, %59
  %61 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #16
  store ptr %61, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #15
  br label %64

64:                                               ; preds = %63, %60
  %65 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #16
  store ptr %65, ptr getelementptr inbounds (i8, ptr @listX, i64 16), align 8, !tbaa !6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #15
  br label %68

68:                                               ; preds = %67, %64
  %69 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #16
  store ptr %69, ptr getelementptr inbounds (i8, ptr @listX, i64 24), align 8, !tbaa !6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #15
  br label %72

72:                                               ; preds = %71, %68
  %73 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #16
  store ptr %73, ptr getelementptr inbounds (i8, ptr @listX, i64 32), align 8, !tbaa !6
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #15
  br label %76

76:                                               ; preds = %75, %72
  %77 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #16
  store ptr %77, ptr getelementptr inbounds (i8, ptr @listX, i64 40), align 8, !tbaa !6
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #15
  br label %80

80:                                               ; preds = %79, %76
  br label %81

81:                                               ; preds = %80, %81
  %82 = phi i64 [ %150, %81 ], [ 0, %80 ]
  %83 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  store ptr null, ptr %84, align 8, !tbaa !6
  %85 = load ptr, ptr %83, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %85, i64 8
  store ptr null, ptr %86, align 8, !tbaa !6
  %87 = load ptr, ptr %83, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %87, i64 16
  store ptr null, ptr %88, align 8, !tbaa !6
  %89 = load ptr, ptr %83, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %89, i64 24
  store ptr null, ptr %90, align 8, !tbaa !6
  %91 = load ptr, ptr %83, align 8, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %91, i64 32
  store ptr null, ptr %92, align 8, !tbaa !6
  %93 = load ptr, ptr %83, align 8, !tbaa !6
  %94 = getelementptr inbounds i8, ptr %93, i64 40
  store ptr null, ptr %94, align 8, !tbaa !6
  %95 = load ptr, ptr %83, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %95, i64 48
  store ptr null, ptr %96, align 8, !tbaa !6
  %97 = load ptr, ptr %83, align 8, !tbaa !6
  %98 = getelementptr inbounds i8, ptr %97, i64 56
  store ptr null, ptr %98, align 8, !tbaa !6
  %99 = load ptr, ptr %83, align 8, !tbaa !6
  %100 = getelementptr inbounds i8, ptr %99, i64 64
  store ptr null, ptr %100, align 8, !tbaa !6
  %101 = load ptr, ptr %83, align 8, !tbaa !6
  %102 = getelementptr inbounds i8, ptr %101, i64 72
  store ptr null, ptr %102, align 8, !tbaa !6
  %103 = load ptr, ptr %83, align 8, !tbaa !6
  %104 = getelementptr inbounds i8, ptr %103, i64 80
  store ptr null, ptr %104, align 8, !tbaa !6
  %105 = load ptr, ptr %83, align 8, !tbaa !6
  %106 = getelementptr inbounds i8, ptr %105, i64 88
  store ptr null, ptr %106, align 8, !tbaa !6
  %107 = load ptr, ptr %83, align 8, !tbaa !6
  %108 = getelementptr inbounds i8, ptr %107, i64 96
  store ptr null, ptr %108, align 8, !tbaa !6
  %109 = load ptr, ptr %83, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %109, i64 104
  store ptr null, ptr %110, align 8, !tbaa !6
  %111 = load ptr, ptr %83, align 8, !tbaa !6
  %112 = getelementptr inbounds i8, ptr %111, i64 112
  store ptr null, ptr %112, align 8, !tbaa !6
  %113 = load ptr, ptr %83, align 8, !tbaa !6
  %114 = getelementptr inbounds i8, ptr %113, i64 120
  store ptr null, ptr %114, align 8, !tbaa !6
  %115 = load ptr, ptr %83, align 8, !tbaa !6
  %116 = getelementptr inbounds i8, ptr %115, i64 128
  store ptr null, ptr %116, align 8, !tbaa !6
  %117 = load ptr, ptr %83, align 8, !tbaa !6
  %118 = getelementptr inbounds i8, ptr %117, i64 136
  store ptr null, ptr %118, align 8, !tbaa !6
  %119 = load ptr, ptr %83, align 8, !tbaa !6
  %120 = getelementptr inbounds i8, ptr %119, i64 144
  store ptr null, ptr %120, align 8, !tbaa !6
  %121 = load ptr, ptr %83, align 8, !tbaa !6
  %122 = getelementptr inbounds i8, ptr %121, i64 152
  store ptr null, ptr %122, align 8, !tbaa !6
  %123 = load ptr, ptr %83, align 8, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %123, i64 160
  store ptr null, ptr %124, align 8, !tbaa !6
  %125 = load ptr, ptr %83, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %125, i64 168
  store ptr null, ptr %126, align 8, !tbaa !6
  %127 = load ptr, ptr %83, align 8, !tbaa !6
  %128 = getelementptr inbounds i8, ptr %127, i64 176
  store ptr null, ptr %128, align 8, !tbaa !6
  %129 = load ptr, ptr %83, align 8, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %129, i64 184
  store ptr null, ptr %130, align 8, !tbaa !6
  %131 = load ptr, ptr %83, align 8, !tbaa !6
  %132 = getelementptr inbounds i8, ptr %131, i64 192
  store ptr null, ptr %132, align 8, !tbaa !6
  %133 = load ptr, ptr %83, align 8, !tbaa !6
  %134 = getelementptr inbounds i8, ptr %133, i64 200
  store ptr null, ptr %134, align 8, !tbaa !6
  %135 = load ptr, ptr %83, align 8, !tbaa !6
  %136 = getelementptr inbounds i8, ptr %135, i64 208
  store ptr null, ptr %136, align 8, !tbaa !6
  %137 = load ptr, ptr %83, align 8, !tbaa !6
  %138 = getelementptr inbounds i8, ptr %137, i64 216
  store ptr null, ptr %138, align 8, !tbaa !6
  %139 = load ptr, ptr %83, align 8, !tbaa !6
  %140 = getelementptr inbounds i8, ptr %139, i64 224
  store ptr null, ptr %140, align 8, !tbaa !6
  %141 = load ptr, ptr %83, align 8, !tbaa !6
  %142 = getelementptr inbounds i8, ptr %141, i64 232
  store ptr null, ptr %142, align 8, !tbaa !6
  %143 = load ptr, ptr %83, align 8, !tbaa !6
  %144 = getelementptr inbounds i8, ptr %143, i64 240
  store ptr null, ptr %144, align 8, !tbaa !6
  %145 = load ptr, ptr %83, align 8, !tbaa !6
  %146 = getelementptr inbounds i8, ptr %145, i64 248
  store ptr null, ptr %146, align 8, !tbaa !6
  %147 = load ptr, ptr %83, align 8, !tbaa !6
  %148 = getelementptr inbounds i8, ptr %147, i64 256
  store ptr null, ptr %148, align 8, !tbaa !6
  %149 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %82
  store i32 0, ptr %149, align 4, !tbaa !36
  %150 = add nuw nsw i64 %82, 1
  %151 = icmp eq i64 %150, 6
  br i1 %151, label %152, label %81

152:                                              ; preds = %81
  store i32 -2147483648, ptr getelementptr inbounds (i8, ptr @dpb, i64 40), align 8, !tbaa !37
  %153 = load ptr, ptr @img, align 8, !tbaa !6
  %154 = getelementptr inbounds i8, ptr %153, i64 90468
  store i32 0, ptr %154, align 4, !tbaa !38
  store i32 1, ptr getelementptr inbounds (i8, ptr @dpb, i64 48), align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_dpb() local_unnamed_addr #1 {
  %1 = load ptr, ptr @dpb, align 8, !tbaa !33
  %2 = icmp eq ptr %1, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %3, %31
  %7 = phi i32 [ %32, %31 ], [ %4, %3 ]
  %8 = phi ptr [ %33, %31 ], [ %1, %3 ]
  %9 = phi i64 [ %34, %31 ], [ 0, %3 ]
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds i8, ptr %11, i64 40
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free_storable_picture(ptr noundef nonnull %15)
  store ptr null, ptr %14, align 8, !tbaa !39
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds i8, ptr %11, i64 48
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @free_storable_picture(ptr noundef nonnull %20)
  store ptr null, ptr %19, align 8, !tbaa !41
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds i8, ptr %11, i64 56
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @free_storable_picture(ptr noundef nonnull %25)
  br label %28

28:                                               ; preds = %27, %23
  tail call void @free(ptr noundef nonnull %11) #15
  %29 = load ptr, ptr @dpb, align 8, !tbaa !33
  %30 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  br label %31

31:                                               ; preds = %6, %28
  %32 = phi i32 [ %7, %6 ], [ %30, %28 ]
  %33 = phi ptr [ %8, %6 ], [ %29, %28 ]
  %34 = add nuw nsw i64 %9, 1
  %35 = zext i32 %32 to i64
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %6, label %37

37:                                               ; preds = %31, %3
  %38 = phi ptr [ %1, %3 ], [ %33, %31 ]
  tail call void @free(ptr noundef %38) #15
  store ptr null, ptr @dpb, align 8, !tbaa !33
  br label %39

39:                                               ; preds = %37, %0
  %40 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @free(ptr noundef nonnull %40) #15
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @free(ptr noundef nonnull %44) #15
  br label %47

47:                                               ; preds = %46, %43
  store i32 -2147483648, ptr getelementptr inbounds (i8, ptr @dpb, i64 40), align 8, !tbaa !37
  %48 = load ptr, ptr @listX, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %48) #15
  store ptr null, ptr @listX, align 8, !tbaa !6
  br label %51

51:                                               ; preds = %47, %50
  %52 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @free(ptr noundef nonnull %52) #15
  store ptr null, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  br label %55

55:                                               ; preds = %54, %51
  %56 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 16), align 8, !tbaa !6
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @free(ptr noundef nonnull %56) #15
  store ptr null, ptr getelementptr inbounds (i8, ptr @listX, i64 16), align 8, !tbaa !6
  br label %59

59:                                               ; preds = %58, %55
  %60 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 24), align 8, !tbaa !6
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @free(ptr noundef nonnull %60) #15
  store ptr null, ptr getelementptr inbounds (i8, ptr @listX, i64 24), align 8, !tbaa !6
  br label %63

63:                                               ; preds = %62, %59
  %64 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 32), align 8, !tbaa !6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @free(ptr noundef nonnull %64) #15
  store ptr null, ptr getelementptr inbounds (i8, ptr @listX, i64 32), align 8, !tbaa !6
  br label %67

67:                                               ; preds = %66, %63
  %68 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 40), align 8, !tbaa !6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  tail call void @free(ptr noundef nonnull %68) #15
  store ptr null, ptr getelementptr inbounds (i8, ptr @listX, i64 40), align 8, !tbaa !6
  br label %71

71:                                               ; preds = %70, %67
  store i32 0, ptr getelementptr inbounds (i8, ptr @dpb, i64 48), align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local noalias noundef ptr @alloc_frame_store() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #15
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nounwind
define dso_local void @free_frame_store(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 40
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free_storable_picture(ptr noundef nonnull %5)
  store ptr null, ptr %4, align 8, !tbaa !39
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds i8, ptr %0, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free_storable_picture(ptr noundef nonnull %10)
  store ptr null, ptr %9, align 8, !tbaa !41
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free_storable_picture(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %17, %13
  tail call void @free(ptr noundef nonnull %0) #15
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local noundef ptr @alloc_storable_picture(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #1 {
  %6 = tail call noalias dereferenceable_or_null(6584) ptr @calloc(i64 noundef 1, i64 noundef 6584) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #15
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds i8, ptr %6, i64 6424
  %11 = tail call signext i32 @get_mem2Dpel(ptr noundef nonnull %10, i32 noundef signext %2, i32 noundef signext %1) #15
  %12 = load ptr, ptr @img, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %12, i64 90548
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds i8, ptr %6, i64 6464
  %18 = tail call signext i32 @get_mem3Dpel(ptr noundef nonnull %17, i32 noundef signext 2, i32 noundef signext %4, i32 noundef signext %3) #15
  %19 = load ptr, ptr @img, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi ptr [ %19, %16 ], [ %12, %9 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 90304
  %23 = load i32, ptr %22, align 8, !tbaa !44
  %24 = zext i32 %23 to i64
  %25 = tail call noalias ptr @calloc(i64 noundef %24, i64 noundef 4) #16
  %26 = getelementptr inbounds i8, ptr %6, i64 6472
  store ptr %25, ptr %26, align 8, !tbaa !45
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #15
  br label %29

29:                                               ; preds = %28, %20
  %30 = getelementptr inbounds i8, ptr %6, i64 6480
  %31 = sdiv i32 %2, 4
  %32 = sdiv i32 %1, 4
  %33 = tail call signext i32 @get_mem3D(ptr noundef nonnull %30, i32 noundef signext 2, i32 noundef signext %31, i32 noundef signext %32) #15
  %34 = getelementptr inbounds i8, ptr %6, i64 6488
  %35 = tail call signext i32 @get_mem3Dint64(ptr noundef nonnull %34, i32 noundef signext 6, i32 noundef signext %31, i32 noundef signext %32) #15
  %36 = getelementptr inbounds i8, ptr %6, i64 6496
  %37 = tail call signext i32 @get_mem3Dint64(ptr noundef nonnull %36, i32 noundef signext 6, i32 noundef signext %31, i32 noundef signext %32) #15
  %38 = getelementptr inbounds i8, ptr %6, i64 6504
  %39 = tail call signext i32 @get_mem4Dshort(ptr noundef nonnull %38, i32 noundef signext 2, i32 noundef signext %31, i32 noundef signext %32, i32 noundef signext 2) #15
  %40 = getelementptr inbounds i8, ptr %6, i64 6512
  %41 = tail call signext i32 @get_mem2D(ptr noundef nonnull %40, i32 noundef signext %31, i32 noundef signext %32) #15
  %42 = getelementptr inbounds i8, ptr %6, i64 6520
  %43 = tail call signext i32 @get_mem2D(ptr noundef nonnull %42, i32 noundef signext %31, i32 noundef signext %32) #15
  %44 = getelementptr inbounds i8, ptr %6, i64 6360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %44, i8 0, i64 32, i1 false)
  store i32 %0, ptr %6, align 8, !tbaa !47
  %45 = getelementptr inbounds i8, ptr %6, i64 6392
  store i32 %1, ptr %45, align 8, !tbaa !48
  %46 = getelementptr inbounds i8, ptr %6, i64 6396
  store i32 %2, ptr %46, align 4, !tbaa !49
  %47 = getelementptr inbounds i8, ptr %6, i64 6400
  store i32 %3, ptr %47, align 8, !tbaa !50
  %48 = getelementptr inbounds i8, ptr %6, i64 6404
  store i32 %4, ptr %48, align 4, !tbaa !51
  %49 = getelementptr inbounds i8, ptr %6, i64 6528
  %50 = getelementptr inbounds i8, ptr %6, i64 6412
  store i32 0, ptr %50, align 4, !tbaa !52
  %51 = getelementptr inbounds i8, ptr %6, i64 6416
  store i32 0, ptr %51, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  ret ptr %6
}

declare dso_local signext i32 @get_mem2Dpel(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @get_mem3Dpel(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @get_mem3D(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @get_mem3Dint64(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @get_mem4Dshort(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local signext i32 @get_mem2D(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @free_storable_picture(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %85, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 6480
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free_mem3D(ptr noundef nonnull %5, i32 noundef signext 2) #15
  store ptr null, ptr %4, align 8, !tbaa !54
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds i8, ptr %0, i64 6488
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free_mem3Dint64(ptr noundef nonnull %10, i32 noundef signext 6) #15
  store ptr null, ptr %9, align 8, !tbaa !55
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds i8, ptr %0, i64 6496
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free_mem3Dint64(ptr noundef nonnull %15, i32 noundef signext 6) #15
  store ptr null, ptr %14, align 8, !tbaa !56
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds i8, ptr %0, i64 6504
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %0, i64 6396
  %24 = load i32, ptr %23, align 4, !tbaa !49
  %25 = sdiv i32 %24, 4
  tail call void @free_mem4Dshort(ptr noundef nonnull %20, i32 noundef signext 2, i32 noundef signext %25) #15
  store ptr null, ptr %19, align 8, !tbaa !57
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds i8, ptr %0, i64 6512
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free_mem2D(ptr noundef nonnull %28) #15
  store ptr null, ptr %27, align 8, !tbaa !58
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds i8, ptr %0, i64 6520
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @free_mem2D(ptr noundef nonnull %33) #15
  store ptr null, ptr %32, align 8, !tbaa !59
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds i8, ptr %0, i64 6424
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @free_mem2Dpel(ptr noundef nonnull %38) #15
  store ptr null, ptr %37, align 8, !tbaa !60
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds i8, ptr %0, i64 6432
  %43 = load ptr, ptr %42, align 8, !tbaa !61
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %43) #15
  store ptr null, ptr %42, align 8, !tbaa !61
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds i8, ptr %0, i64 6448
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @free_mem2Dpel(ptr noundef nonnull %48) #15
  store ptr null, ptr %47, align 8, !tbaa !62
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds i8, ptr %0, i64 6464
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @free_mem3Dpel(ptr noundef nonnull %53, i32 noundef signext 2) #15
  store ptr null, ptr %52, align 8, !tbaa !63
  br label %56

56:                                               ; preds = %55, %51
  %57 = load ptr, ptr @input, align 8, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %57, i64 1904
  %59 = load i32, ptr %58, align 8, !tbaa !64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %57, i64 1908
  %63 = load i32, ptr %62, align 4, !tbaa !65
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %57, i64 64
  %67 = load i32, ptr %66, align 8, !tbaa !66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %65, %61, %56
  %70 = getelementptr inbounds i8, ptr %0, i64 6440
  %71 = load ptr, ptr %70, align 8, !tbaa !67
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @free(ptr noundef nonnull %71) #15
  store ptr null, ptr %70, align 8, !tbaa !67
  br label %74

74:                                               ; preds = %73, %69
  %75 = getelementptr inbounds i8, ptr %0, i64 6456
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @free_mem2Dpel(ptr noundef nonnull %76) #15
  store ptr null, ptr %75, align 8, !tbaa !68
  br label %79

79:                                               ; preds = %74, %78, %65
  %80 = getelementptr inbounds i8, ptr %0, i64 6472
  %81 = load ptr, ptr %80, align 8, !tbaa !45
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void @free(ptr noundef nonnull %81) #15
  br label %84

84:                                               ; preds = %83, %79
  tail call void @free(ptr noundef nonnull %0) #15
  br label %85

85:                                               ; preds = %84, %1
  ret void
}

declare dso_local void @free_mem3D(ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @free_mem3Dint64(ptr noundef, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @free_mem4Dshort(ptr noundef, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @free_mem2D(ptr noundef) local_unnamed_addr #2

declare dso_local void @free_mem2Dpel(ptr noundef) local_unnamed_addr #2

declare dso_local void @free_mem3Dpel(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local signext range(i32 0, 2) i32 @is_short_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 6380
  %3 = load i32, ptr %2, align 4, !tbaa !69
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 6376
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local signext range(i32 0, 2) i32 @is_long_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 6380
  %3 = load i32, ptr %2, align 4, !tbaa !69
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 6376
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind
define dso_local void @init_lists(i32 noundef signext %0, i32 noundef signext %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !36
  %4 = add i32 %3, 4
  %5 = shl nuw i32 1, %4
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %68

7:                                                ; preds = %2
  %8 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %12 = load ptr, ptr @img, align 8
  %13 = getelementptr inbounds i8, ptr %12, i64 90284
  %14 = zext i32 %8 to i64
  br label %21

15:                                               ; preds = %46, %7
  %16 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %151, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %20 = zext i32 %16 to i64
  br label %49

21:                                               ; preds = %10, %46
  %22 = phi i64 [ 0, %10 ], [ %47, %46 ]
  %23 = getelementptr inbounds ptr, ptr %11, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load i32, ptr %24, align 8, !tbaa !71
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, ptr %24, i64 40
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = getelementptr inbounds i8, ptr %29, i64 6380
  %31 = load i32, ptr %30, align 4, !tbaa !69
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds i8, ptr %29, i64 6376
  %35 = load i32, ptr %34, align 8, !tbaa !70
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %24, i64 20
  %39 = load i32, ptr %38, align 4, !tbaa !72
  %40 = load i32, ptr %13, align 4, !tbaa !73
  %41 = icmp ugt i32 %39, %40
  %42 = select i1 %41, i32 %5, i32 0
  %43 = sub i32 %39, %42
  %44 = getelementptr inbounds i8, ptr %24, i64 24
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds i8, ptr %29, i64 6364
  store i32 %43, ptr %45, align 4, !tbaa !74
  br label %46

46:                                               ; preds = %21, %37, %33, %27
  %47 = add nuw nsw i64 %22, 1
  %48 = icmp eq i64 %47, %14
  br i1 %48, label %15, label %21

49:                                               ; preds = %18, %65
  %50 = phi i64 [ 0, %18 ], [ %66, %65 ]
  %51 = getelementptr inbounds ptr, ptr %19, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = load i32, ptr %52, align 8, !tbaa !71
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = getelementptr inbounds i8, ptr %52, i64 40
  %57 = load ptr, ptr %56, align 8, !tbaa !39
  %58 = getelementptr inbounds i8, ptr %57, i64 6376
  %59 = load i32, ptr %58, align 8, !tbaa !70
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds i8, ptr %57, i64 6372
  %63 = load i32, ptr %62, align 4, !tbaa !75
  %64 = getelementptr inbounds i8, ptr %57, i64 6368
  store i32 %63, ptr %64, align 8, !tbaa !76
  br label %65

65:                                               ; preds = %49, %61, %55
  %66 = add nuw nsw i64 %50, 1
  %67 = icmp eq i64 %66, %20
  br i1 %67, label %151, label %49

68:                                               ; preds = %2
  %69 = icmp ne i32 %1, 1
  %70 = zext i1 %69 to i32
  %71 = xor i1 %69, true
  %72 = zext i1 %71 to i32
  %73 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %77 = load ptr, ptr @img, align 8
  %78 = getelementptr inbounds i8, ptr %77, i64 90284
  %79 = zext i32 %73 to i64
  br label %86

80:                                               ; preds = %118, %68
  %81 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %151, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %85 = zext i32 %81 to i64
  br label %121

86:                                               ; preds = %75, %118
  %87 = phi i64 [ 0, %75 ], [ %119, %118 ]
  %88 = getelementptr inbounds ptr, ptr %76, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %89, i64 4
  %91 = load i32, ptr %90, align 4, !tbaa !77
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds i8, ptr %89, i64 20
  %95 = load i32, ptr %94, align 4, !tbaa !72
  %96 = load i32, ptr %78, align 4, !tbaa !73
  %97 = icmp ugt i32 %95, %96
  %98 = select i1 %97, i32 %5, i32 0
  %99 = sub i32 %95, %98
  %100 = getelementptr inbounds i8, ptr %89, i64 24
  store i32 %99, ptr %100, align 8
  %101 = and i32 %91, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %93
  %104 = shl nsw i32 %99, 1
  %105 = or disjoint i32 %104, %72
  %106 = getelementptr inbounds i8, ptr %89, i64 48
  %107 = load ptr, ptr %106, align 8, !tbaa !41
  %108 = getelementptr inbounds i8, ptr %107, i64 6364
  store i32 %105, ptr %108, align 4, !tbaa !74
  br label %109

109:                                              ; preds = %103, %93
  %110 = and i32 %91, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = shl nsw i32 %99, 1
  %114 = or disjoint i32 %113, %70
  %115 = getelementptr inbounds i8, ptr %89, i64 56
  %116 = load ptr, ptr %115, align 8, !tbaa !42
  %117 = getelementptr inbounds i8, ptr %116, i64 6364
  store i32 %114, ptr %117, align 4, !tbaa !74
  br label %118

118:                                              ; preds = %86, %112, %109
  %119 = add nuw nsw i64 %87, 1
  %120 = icmp eq i64 %119, %79
  br i1 %120, label %80, label %86

121:                                              ; preds = %83, %148
  %122 = phi i64 [ 0, %83 ], [ %149, %148 ]
  %123 = getelementptr inbounds ptr, ptr %84, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  %125 = getelementptr inbounds i8, ptr %124, i64 8
  %126 = load i32, ptr %125, align 8, !tbaa !78
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = getelementptr inbounds i8, ptr %124, i64 48
  %131 = load ptr, ptr %130, align 8, !tbaa !41
  %132 = getelementptr inbounds i8, ptr %131, i64 6372
  %133 = load i32, ptr %132, align 4, !tbaa !75
  %134 = shl nsw i32 %133, 1
  %135 = or disjoint i32 %134, %72
  %136 = getelementptr inbounds i8, ptr %131, i64 6368
  store i32 %135, ptr %136, align 8, !tbaa !76
  br label %137

137:                                              ; preds = %129, %121
  %138 = and i32 %126, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds i8, ptr %124, i64 56
  %142 = load ptr, ptr %141, align 8, !tbaa !42
  %143 = getelementptr inbounds i8, ptr %142, i64 6372
  %144 = load i32, ptr %143, align 4, !tbaa !75
  %145 = shl nsw i32 %144, 1
  %146 = or disjoint i32 %145, %70
  %147 = getelementptr inbounds i8, ptr %142, i64 6368
  store i32 %146, ptr %147, align 8, !tbaa !76
  br label %148

148:                                              ; preds = %137, %140
  %149 = add nuw nsw i64 %122, 1
  %150 = icmp eq i64 %149, %85
  br i1 %150, label %151, label %121

151:                                              ; preds = %148, %65, %80, %15
  switch i32 %0, label %603 [
    i32 4, label %152
    i32 2, label %152
    i32 3, label %153
    i32 0, label %153
  ]

152:                                              ; preds = %151, %151
  store i32 0, ptr @listXsize, align 4, !tbaa !36
  store i32 0, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  br label %1605

153:                                              ; preds = %151, %151
  br i1 %6, label %154, label %229

154:                                              ; preds = %153
  %155 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %189, label %157

157:                                              ; preds = %154
  %158 = zext i32 %155 to i64
  %159 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  br label %160

160:                                              ; preds = %157, %184
  %161 = phi ptr [ %159, %157 ], [ %185, %184 ]
  %162 = phi i64 [ 0, %157 ], [ %187, %184 ]
  %163 = phi i32 [ 0, %157 ], [ %186, %184 ]
  %164 = getelementptr inbounds ptr, ptr %161, i64 %162
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = load i32, ptr %165, align 8, !tbaa !71
  %167 = icmp eq i32 %166, 3
  br i1 %167, label %168, label %184

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, ptr %165, i64 40
  %170 = load ptr, ptr %169, align 8, !tbaa !39
  %171 = getelementptr inbounds i8, ptr %170, i64 6380
  %172 = load i32, ptr %171, align 4, !tbaa !69
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds i8, ptr %170, i64 6376
  %176 = load i32, ptr %175, align 8, !tbaa !70
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load ptr, ptr @listX, align 8, !tbaa !6
  %180 = add nsw i32 %163, 1
  %181 = sext i32 %163 to i64
  %182 = getelementptr inbounds ptr, ptr %179, i64 %181
  store ptr %170, ptr %182, align 8, !tbaa !6
  %183 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  br label %184

184:                                              ; preds = %160, %178, %174, %168
  %185 = phi ptr [ %161, %174 ], [ %183, %178 ], [ %161, %168 ], [ %161, %160 ]
  %186 = phi i32 [ %163, %174 ], [ %180, %178 ], [ %163, %168 ], [ %163, %160 ]
  %187 = add nuw nsw i64 %162, 1
  %188 = icmp eq i64 %187, %158
  br i1 %188, label %189, label %160

189:                                              ; preds = %184, %154
  %190 = phi i32 [ 0, %154 ], [ %186, %184 ]
  %191 = load ptr, ptr @listX, align 8, !tbaa !6
  %192 = sext i32 %190 to i64
  tail call void @qsort(ptr noundef %191, i64 noundef %192, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #15
  store i32 %190, ptr @listXsize, align 4, !tbaa !36
  %193 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %223, label %195

195:                                              ; preds = %189
  %196 = zext i32 %193 to i64
  %197 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  br label %198

198:                                              ; preds = %195, %218
  %199 = phi ptr [ %197, %195 ], [ %219, %218 ]
  %200 = phi i64 [ 0, %195 ], [ %221, %218 ]
  %201 = phi i32 [ %190, %195 ], [ %220, %218 ]
  %202 = getelementptr inbounds ptr, ptr %199, i64 %200
  %203 = load ptr, ptr %202, align 8, !tbaa !6
  %204 = load i32, ptr %203, align 8, !tbaa !71
  %205 = icmp eq i32 %204, 3
  br i1 %205, label %206, label %218

206:                                              ; preds = %198
  %207 = getelementptr inbounds i8, ptr %203, i64 40
  %208 = load ptr, ptr %207, align 8, !tbaa !39
  %209 = getelementptr inbounds i8, ptr %208, i64 6376
  %210 = load i32, ptr %209, align 8, !tbaa !70
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = load ptr, ptr @listX, align 8, !tbaa !6
  %214 = add nsw i32 %201, 1
  %215 = sext i32 %201 to i64
  %216 = getelementptr inbounds ptr, ptr %213, i64 %215
  store ptr %208, ptr %216, align 8, !tbaa !6
  %217 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  br label %218

218:                                              ; preds = %198, %212, %206
  %219 = phi ptr [ %217, %212 ], [ %199, %206 ], [ %199, %198 ]
  %220 = phi i32 [ %214, %212 ], [ %201, %206 ], [ %201, %198 ]
  %221 = add nuw nsw i64 %200, 1
  %222 = icmp eq i64 %221, %196
  br i1 %222, label %223, label %198

223:                                              ; preds = %218, %189
  %224 = phi i32 [ %190, %189 ], [ %220, %218 ]
  %225 = load ptr, ptr @listX, align 8, !tbaa !6
  %226 = getelementptr inbounds ptr, ptr %225, i64 %192
  %227 = sub nsw i32 %224, %190
  %228 = sext i32 %227 to i64
  tail call void @qsort(ptr noundef %226, i64 noundef %228, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #15
  store i32 %224, ptr @listXsize, align 4, !tbaa !36
  br label %1547

229:                                              ; preds = %153
  %230 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %231 = zext i32 %230 to i64
  %232 = tail call noalias ptr @calloc(i64 noundef %231, i64 noundef 8) #16
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #15
  %235 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %236 = zext i32 %235 to i64
  br label %237

237:                                              ; preds = %234, %229
  %238 = phi i64 [ %236, %234 ], [ %231, %229 ]
  %239 = tail call noalias ptr @calloc(i64 noundef %238, i64 noundef 8) #16
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #15
  br label %242

242:                                              ; preds = %241, %237
  %243 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %264, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %247 = zext i32 %243 to i64
  br label %248

248:                                              ; preds = %245, %260
  %249 = phi i64 [ 0, %245 ], [ %262, %260 ]
  %250 = phi i32 [ 0, %245 ], [ %261, %260 ]
  %251 = getelementptr inbounds ptr, ptr %246, i64 %249
  %252 = load ptr, ptr %251, align 8, !tbaa !6
  %253 = getelementptr inbounds i8, ptr %252, i64 4
  %254 = load i32, ptr %253, align 4, !tbaa !77
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %248
  %257 = add nsw i32 %250, 1
  %258 = sext i32 %250 to i64
  %259 = getelementptr inbounds ptr, ptr %232, i64 %258
  store ptr %252, ptr %259, align 8, !tbaa !6
  br label %260

260:                                              ; preds = %248, %256
  %261 = phi i32 [ %257, %256 ], [ %250, %248 ]
  %262 = add nuw nsw i64 %249, 1
  %263 = icmp eq i64 %262, %247
  br i1 %263, label %264, label %248

264:                                              ; preds = %260, %242
  %265 = phi i32 [ 0, %242 ], [ %261, %260 ]
  %266 = sext i32 %265 to i64
  tail call void @qsort(ptr noundef %232, i64 noundef %266, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #15
  store i32 0, ptr @listXsize, align 4, !tbaa !36
  %267 = load ptr, ptr @listX, align 8, !tbaa !6
  %268 = icmp eq i32 %1, 1
  br i1 %268, label %269, label %344

269:                                              ; preds = %264
  %270 = icmp sgt i32 %265, 0
  br i1 %270, label %271, label %426

271:                                              ; preds = %269, %338
  %272 = phi i32 [ %339, %338 ], [ 0, %269 ]
  %273 = phi i32 [ %340, %338 ], [ 0, %269 ]
  %274 = phi i32 [ %307, %338 ], [ 0, %269 ]
  %275 = icmp slt i32 %274, %265
  br i1 %275, label %276, label %305

276:                                              ; preds = %271
  %277 = sext i32 %274 to i64
  br label %278

278:                                              ; preds = %301, %276
  %279 = phi i64 [ %277, %276 ], [ %302, %301 ]
  %280 = getelementptr inbounds ptr, ptr %232, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !6
  %282 = load i32, ptr %281, align 8, !tbaa !71
  %283 = and i32 %282, 1
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %301, label %285

285:                                              ; preds = %278
  %286 = getelementptr inbounds i8, ptr %281, i64 48
  %287 = load ptr, ptr %286, align 8, !tbaa !41
  %288 = getelementptr inbounds i8, ptr %287, i64 6380
  %289 = load i32, ptr %288, align 4, !tbaa !69
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %301, label %291

291:                                              ; preds = %285
  %292 = getelementptr inbounds i8, ptr %287, i64 6376
  %293 = load i32, ptr %292, align 8, !tbaa !70
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = trunc nsw i64 %279 to i32
  %297 = sext i32 %272 to i64
  %298 = getelementptr inbounds ptr, ptr %267, i64 %297
  store ptr %287, ptr %298, align 8, !tbaa !6
  %299 = add nsw i32 %272, 1
  store i32 %299, ptr @listXsize, align 4, !tbaa !36
  %300 = add nsw i32 %296, 1
  br label %305

301:                                              ; preds = %285, %291, %278
  %302 = add nsw i64 %279, 1
  %303 = trunc i64 %302 to i32
  %304 = icmp eq i32 %265, %303
  br i1 %304, label %305, label %278

305:                                              ; preds = %301, %295, %271
  %306 = phi i32 [ %299, %295 ], [ %272, %271 ], [ %272, %301 ]
  %307 = phi i32 [ %300, %295 ], [ %274, %271 ], [ %265, %301 ]
  %308 = icmp slt i32 %273, %265
  br i1 %308, label %309, label %338

309:                                              ; preds = %305
  %310 = sext i32 %273 to i64
  br label %311

311:                                              ; preds = %334, %309
  %312 = phi i64 [ %310, %309 ], [ %335, %334 ]
  %313 = getelementptr inbounds ptr, ptr %232, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !6
  %315 = load i32, ptr %314, align 8, !tbaa !71
  %316 = and i32 %315, 2
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %334, label %318

318:                                              ; preds = %311
  %319 = getelementptr inbounds i8, ptr %314, i64 56
  %320 = load ptr, ptr %319, align 8, !tbaa !42
  %321 = getelementptr inbounds i8, ptr %320, i64 6380
  %322 = load i32, ptr %321, align 4, !tbaa !69
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %334, label %324

324:                                              ; preds = %318
  %325 = getelementptr inbounds i8, ptr %320, i64 6376
  %326 = load i32, ptr %325, align 8, !tbaa !70
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %324
  %329 = trunc nsw i64 %312 to i32
  %330 = sext i32 %306 to i64
  %331 = getelementptr inbounds ptr, ptr %267, i64 %330
  store ptr %320, ptr %331, align 8, !tbaa !6
  %332 = add nsw i32 %306, 1
  store i32 %332, ptr @listXsize, align 4, !tbaa !36
  %333 = add nsw i32 %329, 1
  br label %338

334:                                              ; preds = %318, %324, %311
  %335 = add nsw i64 %312, 1
  %336 = trunc i64 %335 to i32
  %337 = icmp eq i32 %265, %336
  br i1 %337, label %338, label %311

338:                                              ; preds = %334, %328, %305
  %339 = phi i32 [ %332, %328 ], [ %306, %305 ], [ %306, %334 ]
  %340 = phi i32 [ %333, %328 ], [ %273, %305 ], [ %265, %334 ]
  %341 = icmp slt i32 %307, %265
  %342 = icmp slt i32 %340, %265
  %343 = select i1 %341, i1 true, i1 %342
  br i1 %343, label %271, label %344

344:                                              ; preds = %338, %264
  %345 = phi i32 [ 0, %264 ], [ %339, %338 ]
  %346 = phi i32 [ 0, %264 ], [ %307, %338 ]
  %347 = phi i32 [ 0, %264 ], [ %340, %338 ]
  %348 = icmp eq i32 %1, 2
  br i1 %348, label %349, label %426

349:                                              ; preds = %344
  %350 = icmp slt i32 %346, %265
  %351 = icmp slt i32 %347, %265
  %352 = select i1 %350, i1 true, i1 %351
  br i1 %352, label %353, label %426

353:                                              ; preds = %349, %420
  %354 = phi i32 [ %421, %420 ], [ %345, %349 ]
  %355 = phi i32 [ %389, %420 ], [ %347, %349 ]
  %356 = phi i32 [ %422, %420 ], [ %346, %349 ]
  %357 = icmp slt i32 %355, %265
  br i1 %357, label %358, label %387

358:                                              ; preds = %353
  %359 = sext i32 %355 to i64
  br label %360

360:                                              ; preds = %383, %358
  %361 = phi i64 [ %359, %358 ], [ %384, %383 ]
  %362 = getelementptr inbounds ptr, ptr %232, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !6
  %364 = load i32, ptr %363, align 8, !tbaa !71
  %365 = and i32 %364, 2
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %383, label %367

367:                                              ; preds = %360
  %368 = getelementptr inbounds i8, ptr %363, i64 56
  %369 = load ptr, ptr %368, align 8, !tbaa !42
  %370 = getelementptr inbounds i8, ptr %369, i64 6380
  %371 = load i32, ptr %370, align 4, !tbaa !69
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %383, label %373

373:                                              ; preds = %367
  %374 = getelementptr inbounds i8, ptr %369, i64 6376
  %375 = load i32, ptr %374, align 8, !tbaa !70
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %373
  %378 = trunc nsw i64 %361 to i32
  %379 = sext i32 %354 to i64
  %380 = getelementptr inbounds ptr, ptr %267, i64 %379
  store ptr %369, ptr %380, align 8, !tbaa !6
  %381 = add nsw i32 %354, 1
  store i32 %381, ptr @listXsize, align 4, !tbaa !36
  %382 = add nsw i32 %378, 1
  br label %387

383:                                              ; preds = %367, %373, %360
  %384 = add nsw i64 %361, 1
  %385 = trunc i64 %384 to i32
  %386 = icmp eq i32 %265, %385
  br i1 %386, label %387, label %360

387:                                              ; preds = %383, %377, %353
  %388 = phi i32 [ %381, %377 ], [ %354, %353 ], [ %354, %383 ]
  %389 = phi i32 [ %382, %377 ], [ %355, %353 ], [ %265, %383 ]
  %390 = icmp slt i32 %356, %265
  br i1 %390, label %391, label %420

391:                                              ; preds = %387
  %392 = sext i32 %356 to i64
  br label %393

393:                                              ; preds = %416, %391
  %394 = phi i64 [ %392, %391 ], [ %417, %416 ]
  %395 = getelementptr inbounds ptr, ptr %232, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !6
  %397 = load i32, ptr %396, align 8, !tbaa !71
  %398 = and i32 %397, 1
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %416, label %400

400:                                              ; preds = %393
  %401 = getelementptr inbounds i8, ptr %396, i64 48
  %402 = load ptr, ptr %401, align 8, !tbaa !41
  %403 = getelementptr inbounds i8, ptr %402, i64 6380
  %404 = load i32, ptr %403, align 4, !tbaa !69
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %416, label %406

406:                                              ; preds = %400
  %407 = getelementptr inbounds i8, ptr %402, i64 6376
  %408 = load i32, ptr %407, align 8, !tbaa !70
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %416

410:                                              ; preds = %406
  %411 = trunc nsw i64 %394 to i32
  %412 = sext i32 %388 to i64
  %413 = getelementptr inbounds ptr, ptr %267, i64 %412
  store ptr %402, ptr %413, align 8, !tbaa !6
  %414 = add nsw i32 %388, 1
  store i32 %414, ptr @listXsize, align 4, !tbaa !36
  %415 = add nsw i32 %411, 1
  br label %420

416:                                              ; preds = %400, %406, %393
  %417 = add nsw i64 %394, 1
  %418 = trunc i64 %417 to i32
  %419 = icmp eq i32 %265, %418
  br i1 %419, label %420, label %393

420:                                              ; preds = %416, %410, %387
  %421 = phi i32 [ %414, %410 ], [ %388, %387 ], [ %388, %416 ]
  %422 = phi i32 [ %415, %410 ], [ %356, %387 ], [ %265, %416 ]
  %423 = icmp slt i32 %422, %265
  %424 = icmp slt i32 %389, %265
  %425 = select i1 %423, i1 true, i1 %424
  br i1 %425, label %353, label %426

426:                                              ; preds = %420, %269, %344, %349
  %427 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %439, label %429

429:                                              ; preds = %426
  %430 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %431 = zext i32 %427 to i64
  br label %432

432:                                              ; preds = %429, %432
  %433 = phi i64 [ 0, %429 ], [ %436, %432 ]
  %434 = getelementptr inbounds ptr, ptr %430, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !6
  %436 = add nuw nsw i64 %433, 1
  %437 = getelementptr inbounds ptr, ptr %239, i64 %433
  store ptr %435, ptr %437, align 8, !tbaa !6
  %438 = icmp eq i64 %436, %431
  br i1 %438, label %439, label %432

439:                                              ; preds = %432, %426
  %440 = zext nneg i32 %427 to i64
  tail call void @qsort(ptr noundef %239, i64 noundef %440, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #15
  %441 = load ptr, ptr @listX, align 8, !tbaa !6
  br i1 %268, label %442, label %519

442:                                              ; preds = %439
  %443 = icmp eq i32 %427, 0
  br i1 %443, label %602, label %444

444:                                              ; preds = %442
  %445 = load i32, ptr @listXsize, align 4, !tbaa !36
  br label %446

446:                                              ; preds = %444, %513
  %447 = phi i32 [ %514, %513 ], [ %445, %444 ]
  %448 = phi i32 [ %515, %513 ], [ 0, %444 ]
  %449 = phi i32 [ %482, %513 ], [ 0, %444 ]
  %450 = icmp slt i32 %449, %427
  br i1 %450, label %451, label %480

451:                                              ; preds = %446
  %452 = sext i32 %449 to i64
  br label %453

453:                                              ; preds = %476, %451
  %454 = phi i64 [ %452, %451 ], [ %477, %476 ]
  %455 = getelementptr inbounds ptr, ptr %239, i64 %454
  %456 = load ptr, ptr %455, align 8, !tbaa !6
  %457 = load i32, ptr %456, align 8, !tbaa !71
  %458 = and i32 %457, 1
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %476, label %460

460:                                              ; preds = %453
  %461 = getelementptr inbounds i8, ptr %456, i64 48
  %462 = load ptr, ptr %461, align 8, !tbaa !41
  %463 = getelementptr inbounds i8, ptr %462, i64 6380
  %464 = load i32, ptr %463, align 4, !tbaa !69
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %476, label %466

466:                                              ; preds = %460
  %467 = getelementptr inbounds i8, ptr %462, i64 6376
  %468 = load i32, ptr %467, align 8, !tbaa !70
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %476, label %470

470:                                              ; preds = %466
  %471 = trunc nsw i64 %454 to i32
  %472 = sext i32 %447 to i64
  %473 = getelementptr inbounds ptr, ptr %441, i64 %472
  store ptr %462, ptr %473, align 8, !tbaa !6
  %474 = add nsw i32 %447, 1
  store i32 %474, ptr @listXsize, align 4, !tbaa !36
  %475 = add nsw i32 %471, 1
  br label %480

476:                                              ; preds = %460, %466, %453
  %477 = add nsw i64 %454, 1
  %478 = trunc i64 %477 to i32
  %479 = icmp eq i32 %427, %478
  br i1 %479, label %480, label %453

480:                                              ; preds = %476, %470, %446
  %481 = phi i32 [ %474, %470 ], [ %447, %446 ], [ %447, %476 ]
  %482 = phi i32 [ %475, %470 ], [ %449, %446 ], [ %427, %476 ]
  %483 = icmp slt i32 %448, %427
  br i1 %483, label %484, label %513

484:                                              ; preds = %480
  %485 = sext i32 %448 to i64
  br label %486

486:                                              ; preds = %509, %484
  %487 = phi i64 [ %485, %484 ], [ %510, %509 ]
  %488 = getelementptr inbounds ptr, ptr %239, i64 %487
  %489 = load ptr, ptr %488, align 8, !tbaa !6
  %490 = load i32, ptr %489, align 8, !tbaa !71
  %491 = and i32 %490, 2
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %509, label %493

493:                                              ; preds = %486
  %494 = getelementptr inbounds i8, ptr %489, i64 56
  %495 = load ptr, ptr %494, align 8, !tbaa !42
  %496 = getelementptr inbounds i8, ptr %495, i64 6380
  %497 = load i32, ptr %496, align 4, !tbaa !69
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %509, label %499

499:                                              ; preds = %493
  %500 = getelementptr inbounds i8, ptr %495, i64 6376
  %501 = load i32, ptr %500, align 8, !tbaa !70
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %509, label %503

503:                                              ; preds = %499
  %504 = trunc nsw i64 %487 to i32
  %505 = sext i32 %481 to i64
  %506 = getelementptr inbounds ptr, ptr %441, i64 %505
  store ptr %495, ptr %506, align 8, !tbaa !6
  %507 = add nsw i32 %481, 1
  store i32 %507, ptr @listXsize, align 4, !tbaa !36
  %508 = add nsw i32 %504, 1
  br label %513

509:                                              ; preds = %493, %499, %486
  %510 = add nsw i64 %487, 1
  %511 = trunc i64 %510 to i32
  %512 = icmp eq i32 %427, %511
  br i1 %512, label %513, label %486

513:                                              ; preds = %509, %503, %480
  %514 = phi i32 [ %507, %503 ], [ %481, %480 ], [ %481, %509 ]
  %515 = phi i32 [ %508, %503 ], [ %448, %480 ], [ %427, %509 ]
  %516 = icmp slt i32 %482, %427
  %517 = icmp slt i32 %515, %427
  %518 = select i1 %516, i1 true, i1 %517
  br i1 %518, label %446, label %519

519:                                              ; preds = %513, %439
  %520 = phi i32 [ 0, %439 ], [ %482, %513 ]
  %521 = phi i32 [ 0, %439 ], [ %515, %513 ]
  %522 = icmp eq i32 %1, 2
  br i1 %522, label %523, label %602

523:                                              ; preds = %519
  %524 = icmp slt i32 %520, %427
  %525 = icmp slt i32 %521, %427
  %526 = select i1 %524, i1 true, i1 %525
  br i1 %526, label %527, label %602

527:                                              ; preds = %523
  %528 = load i32, ptr @listXsize, align 4, !tbaa !36
  br label %529

529:                                              ; preds = %527, %596
  %530 = phi i32 [ %597, %596 ], [ %528, %527 ]
  %531 = phi i32 [ %565, %596 ], [ %521, %527 ]
  %532 = phi i32 [ %598, %596 ], [ %520, %527 ]
  %533 = icmp slt i32 %531, %427
  br i1 %533, label %534, label %563

534:                                              ; preds = %529
  %535 = sext i32 %531 to i64
  br label %536

536:                                              ; preds = %559, %534
  %537 = phi i64 [ %535, %534 ], [ %560, %559 ]
  %538 = getelementptr inbounds ptr, ptr %239, i64 %537
  %539 = load ptr, ptr %538, align 8, !tbaa !6
  %540 = load i32, ptr %539, align 8, !tbaa !71
  %541 = and i32 %540, 2
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %559, label %543

543:                                              ; preds = %536
  %544 = getelementptr inbounds i8, ptr %539, i64 56
  %545 = load ptr, ptr %544, align 8, !tbaa !42
  %546 = getelementptr inbounds i8, ptr %545, i64 6380
  %547 = load i32, ptr %546, align 4, !tbaa !69
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %559, label %549

549:                                              ; preds = %543
  %550 = getelementptr inbounds i8, ptr %545, i64 6376
  %551 = load i32, ptr %550, align 8, !tbaa !70
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %559, label %553

553:                                              ; preds = %549
  %554 = trunc nsw i64 %537 to i32
  %555 = sext i32 %530 to i64
  %556 = getelementptr inbounds ptr, ptr %441, i64 %555
  store ptr %545, ptr %556, align 8, !tbaa !6
  %557 = add nsw i32 %530, 1
  store i32 %557, ptr @listXsize, align 4, !tbaa !36
  %558 = add nsw i32 %554, 1
  br label %563

559:                                              ; preds = %543, %549, %536
  %560 = add nsw i64 %537, 1
  %561 = trunc i64 %560 to i32
  %562 = icmp eq i32 %427, %561
  br i1 %562, label %563, label %536

563:                                              ; preds = %559, %553, %529
  %564 = phi i32 [ %557, %553 ], [ %530, %529 ], [ %530, %559 ]
  %565 = phi i32 [ %558, %553 ], [ %531, %529 ], [ %427, %559 ]
  %566 = icmp slt i32 %532, %427
  br i1 %566, label %567, label %596

567:                                              ; preds = %563
  %568 = sext i32 %532 to i64
  br label %569

569:                                              ; preds = %592, %567
  %570 = phi i64 [ %568, %567 ], [ %593, %592 ]
  %571 = getelementptr inbounds ptr, ptr %239, i64 %570
  %572 = load ptr, ptr %571, align 8, !tbaa !6
  %573 = load i32, ptr %572, align 8, !tbaa !71
  %574 = and i32 %573, 1
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %592, label %576

576:                                              ; preds = %569
  %577 = getelementptr inbounds i8, ptr %572, i64 48
  %578 = load ptr, ptr %577, align 8, !tbaa !41
  %579 = getelementptr inbounds i8, ptr %578, i64 6380
  %580 = load i32, ptr %579, align 4, !tbaa !69
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %592, label %582

582:                                              ; preds = %576
  %583 = getelementptr inbounds i8, ptr %578, i64 6376
  %584 = load i32, ptr %583, align 8, !tbaa !70
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %592, label %586

586:                                              ; preds = %582
  %587 = trunc nsw i64 %570 to i32
  %588 = sext i32 %564 to i64
  %589 = getelementptr inbounds ptr, ptr %441, i64 %588
  store ptr %578, ptr %589, align 8, !tbaa !6
  %590 = add nsw i32 %564, 1
  store i32 %590, ptr @listXsize, align 4, !tbaa !36
  %591 = add nsw i32 %587, 1
  br label %596

592:                                              ; preds = %576, %582, %569
  %593 = add nsw i64 %570, 1
  %594 = trunc i64 %593 to i32
  %595 = icmp eq i32 %427, %594
  br i1 %595, label %596, label %569

596:                                              ; preds = %592, %586, %563
  %597 = phi i32 [ %590, %586 ], [ %564, %563 ], [ %564, %592 ]
  %598 = phi i32 [ %591, %586 ], [ %532, %563 ], [ %427, %592 ]
  %599 = icmp slt i32 %598, %427
  %600 = icmp slt i32 %565, %427
  %601 = select i1 %599, i1 true, i1 %600
  br i1 %601, label %529, label %602

602:                                              ; preds = %596, %442, %519, %523
  tail call void @free(ptr noundef %232) #15
  tail call void @free(ptr noundef %239) #15
  br label %1547

603:                                              ; preds = %151
  br i1 %6, label %604, label %775

604:                                              ; preds = %603
  %605 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %646, label %607

607:                                              ; preds = %604
  %608 = zext i32 %605 to i64
  %609 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  br label %610

610:                                              ; preds = %607, %641
  %611 = phi ptr [ %609, %607 ], [ %642, %641 ]
  %612 = phi i64 [ 0, %607 ], [ %644, %641 ]
  %613 = phi i32 [ 0, %607 ], [ %643, %641 ]
  %614 = getelementptr inbounds ptr, ptr %611, i64 %612
  %615 = load ptr, ptr %614, align 8, !tbaa !6
  %616 = load i32, ptr %615, align 8, !tbaa !71
  %617 = icmp eq i32 %616, 3
  br i1 %617, label %618, label %641

618:                                              ; preds = %610
  %619 = getelementptr inbounds i8, ptr %615, i64 40
  %620 = load ptr, ptr %619, align 8, !tbaa !39
  %621 = getelementptr inbounds i8, ptr %620, i64 6380
  %622 = load i32, ptr %621, align 4, !tbaa !69
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %641, label %624

624:                                              ; preds = %618
  %625 = getelementptr inbounds i8, ptr %620, i64 6376
  %626 = load i32, ptr %625, align 8, !tbaa !70
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %641

628:                                              ; preds = %624
  %629 = load ptr, ptr @img, align 8, !tbaa !6
  %630 = getelementptr inbounds i8, ptr %629, i64 90276
  %631 = load i32, ptr %630, align 4, !tbaa !79
  %632 = getelementptr inbounds i8, ptr %620, i64 4
  %633 = load i32, ptr %632, align 4, !tbaa !80
  %634 = icmp sgt i32 %631, %633
  br i1 %634, label %635, label %641

635:                                              ; preds = %628
  %636 = load ptr, ptr @listX, align 8, !tbaa !6
  %637 = add nsw i32 %613, 1
  %638 = sext i32 %613 to i64
  %639 = getelementptr inbounds ptr, ptr %636, i64 %638
  store ptr %620, ptr %639, align 8, !tbaa !6
  %640 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  br label %641

641:                                              ; preds = %610, %628, %635, %624, %618
  %642 = phi ptr [ %611, %624 ], [ %640, %635 ], [ %611, %628 ], [ %611, %618 ], [ %611, %610 ]
  %643 = phi i32 [ %613, %624 ], [ %637, %635 ], [ %613, %628 ], [ %613, %618 ], [ %613, %610 ]
  %644 = add nuw nsw i64 %612, 1
  %645 = icmp eq i64 %644, %608
  br i1 %645, label %646, label %610

646:                                              ; preds = %641, %604
  %647 = phi i32 [ 0, %604 ], [ %643, %641 ]
  %648 = load ptr, ptr @listX, align 8, !tbaa !6
  %649 = sext i32 %647 to i64
  tail call void @qsort(ptr noundef %648, i64 noundef %649, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #15
  %650 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %691, label %652

652:                                              ; preds = %646
  %653 = zext i32 %650 to i64
  %654 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  br label %655

655:                                              ; preds = %652, %686
  %656 = phi ptr [ %654, %652 ], [ %687, %686 ]
  %657 = phi i64 [ 0, %652 ], [ %689, %686 ]
  %658 = phi i32 [ %647, %652 ], [ %688, %686 ]
  %659 = getelementptr inbounds ptr, ptr %656, i64 %657
  %660 = load ptr, ptr %659, align 8, !tbaa !6
  %661 = load i32, ptr %660, align 8, !tbaa !71
  %662 = icmp eq i32 %661, 3
  br i1 %662, label %663, label %686

663:                                              ; preds = %655
  %664 = getelementptr inbounds i8, ptr %660, i64 40
  %665 = load ptr, ptr %664, align 8, !tbaa !39
  %666 = getelementptr inbounds i8, ptr %665, i64 6380
  %667 = load i32, ptr %666, align 4, !tbaa !69
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %686, label %669

669:                                              ; preds = %663
  %670 = getelementptr inbounds i8, ptr %665, i64 6376
  %671 = load i32, ptr %670, align 8, !tbaa !70
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %686

673:                                              ; preds = %669
  %674 = load ptr, ptr @img, align 8, !tbaa !6
  %675 = getelementptr inbounds i8, ptr %674, i64 90276
  %676 = load i32, ptr %675, align 4, !tbaa !79
  %677 = getelementptr inbounds i8, ptr %665, i64 4
  %678 = load i32, ptr %677, align 4, !tbaa !80
  %679 = icmp slt i32 %676, %678
  br i1 %679, label %680, label %686

680:                                              ; preds = %673
  %681 = load ptr, ptr @listX, align 8, !tbaa !6
  %682 = add nsw i32 %658, 1
  %683 = sext i32 %658 to i64
  %684 = getelementptr inbounds ptr, ptr %681, i64 %683
  store ptr %665, ptr %684, align 8, !tbaa !6
  %685 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  br label %686

686:                                              ; preds = %655, %673, %680, %669, %663
  %687 = phi ptr [ %656, %669 ], [ %685, %680 ], [ %656, %673 ], [ %656, %663 ], [ %656, %655 ]
  %688 = phi i32 [ %658, %669 ], [ %682, %680 ], [ %658, %673 ], [ %658, %663 ], [ %658, %655 ]
  %689 = add nuw nsw i64 %657, 1
  %690 = icmp eq i64 %689, %653
  br i1 %690, label %691, label %655

691:                                              ; preds = %686, %646
  %692 = phi i32 [ %647, %646 ], [ %688, %686 ]
  %693 = load ptr, ptr @listX, align 8, !tbaa !6
  %694 = getelementptr inbounds ptr, ptr %693, i64 %649
  %695 = sub nsw i32 %692, %647
  %696 = sext i32 %695 to i64
  tail call void @qsort(ptr noundef %694, i64 noundef %696, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #15
  %697 = icmp sgt i32 %647, 0
  br i1 %697, label %698, label %700

698:                                              ; preds = %691
  %699 = zext nneg i32 %647 to i64
  br label %704

700:                                              ; preds = %704, %691
  %701 = icmp slt i32 %647, %692
  br i1 %701, label %702, label %724

702:                                              ; preds = %700
  %703 = sext i32 %692 to i64
  br label %714

704:                                              ; preds = %698, %704
  %705 = phi i64 [ 0, %698 ], [ %712, %704 ]
  %706 = load ptr, ptr @listX, align 8, !tbaa !6
  %707 = getelementptr inbounds ptr, ptr %706, i64 %705
  %708 = load ptr, ptr %707, align 8, !tbaa !6
  %709 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %710 = getelementptr ptr, ptr %709, i64 %705
  %711 = getelementptr ptr, ptr %710, i64 %696
  store ptr %708, ptr %711, align 8, !tbaa !6
  %712 = add nuw nsw i64 %705, 1
  %713 = icmp eq i64 %712, %699
  br i1 %713, label %700, label %704

714:                                              ; preds = %702, %714
  %715 = phi i64 [ %649, %702 ], [ %722, %714 ]
  %716 = load ptr, ptr @listX, align 8, !tbaa !6
  %717 = getelementptr inbounds ptr, ptr %716, i64 %715
  %718 = load ptr, ptr %717, align 8, !tbaa !6
  %719 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %720 = sub nsw i64 %715, %649
  %721 = getelementptr inbounds ptr, ptr %719, i64 %720
  store ptr %718, ptr %721, align 8, !tbaa !6
  %722 = add nsw i64 %715, 1
  %723 = icmp eq i64 %722, %703
  br i1 %723, label %724, label %714

724:                                              ; preds = %714, %700
  store i32 %692, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  store i32 %692, ptr @listXsize, align 4, !tbaa !36
  %725 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %762, label %727

727:                                              ; preds = %724
  %728 = zext i32 %725 to i64
  %729 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  br label %730

730:                                              ; preds = %727, %757
  %731 = phi ptr [ %729, %727 ], [ %758, %757 ]
  %732 = phi i64 [ 0, %727 ], [ %760, %757 ]
  %733 = phi i32 [ %692, %727 ], [ %759, %757 ]
  %734 = getelementptr inbounds ptr, ptr %731, i64 %732
  %735 = load ptr, ptr %734, align 8, !tbaa !6
  %736 = load i32, ptr %735, align 8, !tbaa !71
  %737 = icmp eq i32 %736, 3
  br i1 %737, label %738, label %757

738:                                              ; preds = %730
  %739 = getelementptr inbounds i8, ptr %735, i64 40
  %740 = load ptr, ptr %739, align 8, !tbaa !39
  %741 = getelementptr inbounds i8, ptr %740, i64 6376
  %742 = load i32, ptr %741, align 8, !tbaa !70
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %757, label %744

744:                                              ; preds = %738
  %745 = load ptr, ptr @listX, align 8, !tbaa !6
  %746 = sext i32 %733 to i64
  %747 = getelementptr inbounds ptr, ptr %745, i64 %746
  store ptr %740, ptr %747, align 8, !tbaa !6
  %748 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %749 = getelementptr inbounds ptr, ptr %748, i64 %732
  %750 = load ptr, ptr %749, align 8, !tbaa !6
  %751 = getelementptr inbounds i8, ptr %750, i64 40
  %752 = load ptr, ptr %751, align 8, !tbaa !39
  %753 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %754 = add nsw i32 %733, 1
  %755 = getelementptr inbounds ptr, ptr %753, i64 %746
  store ptr %752, ptr %755, align 8, !tbaa !6
  %756 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  br label %757

757:                                              ; preds = %730, %744, %738
  %758 = phi ptr [ %756, %744 ], [ %731, %738 ], [ %731, %730 ]
  %759 = phi i32 [ %754, %744 ], [ %733, %738 ], [ %733, %730 ]
  %760 = add nuw nsw i64 %732, 1
  %761 = icmp eq i64 %760, %728
  br i1 %761, label %762, label %730

762:                                              ; preds = %757, %724
  %763 = phi i32 [ %692, %724 ], [ %759, %757 ]
  %764 = load ptr, ptr @listX, align 8, !tbaa !6
  %765 = sext i32 %692 to i64
  %766 = getelementptr inbounds ptr, ptr %764, i64 %765
  %767 = sub nsw i32 %763, %692
  %768 = sext i32 %767 to i64
  tail call void @qsort(ptr noundef %766, i64 noundef %768, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #15
  %769 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %770 = load i32, ptr @listXsize, align 4, !tbaa !36
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds ptr, ptr %769, i64 %771
  %773 = sub nsw i32 %763, %770
  %774 = sext i32 %773 to i64
  tail call void @qsort(ptr noundef %772, i64 noundef %774, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #15
  store i32 %763, ptr @listXsize, align 4, !tbaa !36
  br label %1547

775:                                              ; preds = %603
  %776 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %777 = zext i32 %776 to i64
  %778 = tail call noalias ptr @calloc(i64 noundef %777, i64 noundef 8) #16
  %779 = icmp eq ptr %778, null
  br i1 %779, label %780, label %783

780:                                              ; preds = %775
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #15
  %781 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %782 = zext i32 %781 to i64
  br label %783

783:                                              ; preds = %780, %775
  %784 = phi i64 [ %782, %780 ], [ %777, %775 ]
  %785 = tail call noalias ptr @calloc(i64 noundef %784, i64 noundef 8) #16
  %786 = icmp eq ptr %785, null
  br i1 %786, label %787, label %790

787:                                              ; preds = %783
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #15
  %788 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %789 = zext i32 %788 to i64
  br label %790

790:                                              ; preds = %787, %783
  %791 = phi i64 [ %789, %787 ], [ %784, %783 ]
  %792 = tail call noalias ptr @calloc(i64 noundef %791, i64 noundef 8) #16
  %793 = icmp eq ptr %792, null
  br i1 %793, label %794, label %795

794:                                              ; preds = %790
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #15
  br label %795

795:                                              ; preds = %794, %790
  store i32 0, ptr @listXsize, align 4, !tbaa !36
  store i32 1, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %796 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %823, label %798

798:                                              ; preds = %795
  %799 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %800 = load ptr, ptr @img, align 8
  %801 = getelementptr inbounds i8, ptr %800, i64 90280
  %802 = zext i32 %796 to i64
  br label %803

803:                                              ; preds = %798, %819
  %804 = phi i64 [ 0, %798 ], [ %821, %819 ]
  %805 = phi i32 [ 0, %798 ], [ %820, %819 ]
  %806 = getelementptr inbounds ptr, ptr %799, i64 %804
  %807 = load ptr, ptr %806, align 8, !tbaa !6
  %808 = load i32, ptr %807, align 8, !tbaa !71
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %819, label %810

810:                                              ; preds = %803
  %811 = load i32, ptr %801, align 8, !tbaa !81
  %812 = getelementptr inbounds i8, ptr %807, i64 36
  %813 = load i32, ptr %812, align 4, !tbaa !82
  %814 = icmp slt i32 %811, %813
  br i1 %814, label %819, label %815

815:                                              ; preds = %810
  %816 = add nsw i32 %805, 1
  %817 = sext i32 %805 to i64
  %818 = getelementptr inbounds ptr, ptr %778, i64 %817
  store ptr %807, ptr %818, align 8, !tbaa !6
  br label %819

819:                                              ; preds = %803, %815, %810
  %820 = phi i32 [ %816, %815 ], [ %805, %810 ], [ %805, %803 ]
  %821 = add nuw nsw i64 %804, 1
  %822 = icmp eq i64 %821, %802
  br i1 %822, label %823, label %803

823:                                              ; preds = %819, %795
  %824 = phi i32 [ 0, %795 ], [ %820, %819 ]
  %825 = sext i32 %824 to i64
  tail call void @qsort(ptr noundef %778, i64 noundef %825, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #15
  %826 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %853, label %828

828:                                              ; preds = %823
  %829 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %830 = load ptr, ptr @img, align 8
  %831 = getelementptr inbounds i8, ptr %830, i64 90280
  %832 = zext i32 %826 to i64
  br label %833

833:                                              ; preds = %828, %849
  %834 = phi i64 [ 0, %828 ], [ %851, %849 ]
  %835 = phi i32 [ %824, %828 ], [ %850, %849 ]
  %836 = getelementptr inbounds ptr, ptr %829, i64 %834
  %837 = load ptr, ptr %836, align 8, !tbaa !6
  %838 = load i32, ptr %837, align 8, !tbaa !71
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %849, label %840

840:                                              ; preds = %833
  %841 = load i32, ptr %831, align 8, !tbaa !81
  %842 = getelementptr inbounds i8, ptr %837, i64 36
  %843 = load i32, ptr %842, align 4, !tbaa !82
  %844 = icmp slt i32 %841, %843
  br i1 %844, label %845, label %849

845:                                              ; preds = %840
  %846 = add nsw i32 %835, 1
  %847 = sext i32 %835 to i64
  %848 = getelementptr inbounds ptr, ptr %778, i64 %847
  store ptr %837, ptr %848, align 8, !tbaa !6
  br label %849

849:                                              ; preds = %833, %845, %840
  %850 = phi i32 [ %846, %845 ], [ %835, %840 ], [ %835, %833 ]
  %851 = add nuw nsw i64 %834, 1
  %852 = icmp eq i64 %851, %832
  br i1 %852, label %853, label %833

853:                                              ; preds = %849, %823
  %854 = phi i32 [ %824, %823 ], [ %850, %849 ]
  %855 = getelementptr inbounds ptr, ptr %778, i64 %825
  %856 = sub nsw i32 %854, %824
  %857 = sext i32 %856 to i64
  tail call void @qsort(ptr noundef %855, i64 noundef %857, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #15
  %858 = icmp sgt i32 %824, 0
  br i1 %858, label %859, label %862

859:                                              ; preds = %853
  %860 = zext nneg i32 %824 to i64
  %861 = getelementptr ptr, ptr %785, i64 %857
  br label %872

862:                                              ; preds = %872, %853
  %863 = icmp slt i32 %824, %854
  br i1 %863, label %864, label %879

864:                                              ; preds = %862
  %865 = shl nsw i64 %825, 3
  %866 = getelementptr i8, ptr %778, i64 %865
  %867 = xor i32 %824, -1
  %868 = add i32 %854, %867
  %869 = zext i32 %868 to i64
  %870 = shl nuw nsw i64 %869, 3
  %871 = add nuw nsw i64 %870, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %785, ptr noundef nonnull align 8 dereferenceable(1) %866, i64 %871, i1 false), !tbaa !6
  br label %879

872:                                              ; preds = %859, %872
  %873 = phi i64 [ 0, %859 ], [ %877, %872 ]
  %874 = getelementptr inbounds ptr, ptr %778, i64 %873
  %875 = load ptr, ptr %874, align 8, !tbaa !6
  %876 = getelementptr ptr, ptr %861, i64 %873
  store ptr %875, ptr %876, align 8, !tbaa !6
  %877 = add nuw nsw i64 %873, 1
  %878 = icmp eq i64 %877, %860
  br i1 %878, label %862, label %872

879:                                              ; preds = %864, %862
  store i32 0, ptr @listXsize, align 4, !tbaa !36
  store i32 0, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %880 = load ptr, ptr @listX, align 8, !tbaa !6
  %881 = icmp eq i32 %1, 1
  br i1 %881, label %882, label %957

882:                                              ; preds = %879
  %883 = icmp sgt i32 %854, 0
  br i1 %883, label %884, label %1203

884:                                              ; preds = %882, %951
  %885 = phi i32 [ %952, %951 ], [ 0, %882 ]
  %886 = phi i32 [ %953, %951 ], [ 0, %882 ]
  %887 = phi i32 [ %920, %951 ], [ 0, %882 ]
  %888 = icmp slt i32 %887, %854
  br i1 %888, label %889, label %918

889:                                              ; preds = %884
  %890 = sext i32 %887 to i64
  br label %891

891:                                              ; preds = %914, %889
  %892 = phi i64 [ %890, %889 ], [ %915, %914 ]
  %893 = getelementptr inbounds ptr, ptr %778, i64 %892
  %894 = load ptr, ptr %893, align 8, !tbaa !6
  %895 = load i32, ptr %894, align 8, !tbaa !71
  %896 = and i32 %895, 1
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %914, label %898

898:                                              ; preds = %891
  %899 = getelementptr inbounds i8, ptr %894, i64 48
  %900 = load ptr, ptr %899, align 8, !tbaa !41
  %901 = getelementptr inbounds i8, ptr %900, i64 6380
  %902 = load i32, ptr %901, align 4, !tbaa !69
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %914, label %904

904:                                              ; preds = %898
  %905 = getelementptr inbounds i8, ptr %900, i64 6376
  %906 = load i32, ptr %905, align 8, !tbaa !70
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %908, label %914

908:                                              ; preds = %904
  %909 = trunc nsw i64 %892 to i32
  %910 = sext i32 %885 to i64
  %911 = getelementptr inbounds ptr, ptr %880, i64 %910
  store ptr %900, ptr %911, align 8, !tbaa !6
  %912 = add nsw i32 %885, 1
  store i32 %912, ptr @listXsize, align 4, !tbaa !36
  %913 = add nsw i32 %909, 1
  br label %918

914:                                              ; preds = %898, %904, %891
  %915 = add nsw i64 %892, 1
  %916 = trunc i64 %915 to i32
  %917 = icmp eq i32 %854, %916
  br i1 %917, label %918, label %891

918:                                              ; preds = %914, %908, %884
  %919 = phi i32 [ %912, %908 ], [ %885, %884 ], [ %885, %914 ]
  %920 = phi i32 [ %913, %908 ], [ %887, %884 ], [ %854, %914 ]
  %921 = icmp slt i32 %886, %854
  br i1 %921, label %922, label %951

922:                                              ; preds = %918
  %923 = sext i32 %886 to i64
  br label %924

924:                                              ; preds = %947, %922
  %925 = phi i64 [ %923, %922 ], [ %948, %947 ]
  %926 = getelementptr inbounds ptr, ptr %778, i64 %925
  %927 = load ptr, ptr %926, align 8, !tbaa !6
  %928 = load i32, ptr %927, align 8, !tbaa !71
  %929 = and i32 %928, 2
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %947, label %931

931:                                              ; preds = %924
  %932 = getelementptr inbounds i8, ptr %927, i64 56
  %933 = load ptr, ptr %932, align 8, !tbaa !42
  %934 = getelementptr inbounds i8, ptr %933, i64 6380
  %935 = load i32, ptr %934, align 4, !tbaa !69
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %947, label %937

937:                                              ; preds = %931
  %938 = getelementptr inbounds i8, ptr %933, i64 6376
  %939 = load i32, ptr %938, align 8, !tbaa !70
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %941, label %947

941:                                              ; preds = %937
  %942 = trunc nsw i64 %925 to i32
  %943 = sext i32 %919 to i64
  %944 = getelementptr inbounds ptr, ptr %880, i64 %943
  store ptr %933, ptr %944, align 8, !tbaa !6
  %945 = add nsw i32 %919, 1
  store i32 %945, ptr @listXsize, align 4, !tbaa !36
  %946 = add nsw i32 %942, 1
  br label %951

947:                                              ; preds = %931, %937, %924
  %948 = add nsw i64 %925, 1
  %949 = trunc i64 %948 to i32
  %950 = icmp eq i32 %854, %949
  br i1 %950, label %951, label %924

951:                                              ; preds = %947, %941, %918
  %952 = phi i32 [ %945, %941 ], [ %919, %918 ], [ %919, %947 ]
  %953 = phi i32 [ %946, %941 ], [ %886, %918 ], [ %854, %947 ]
  %954 = icmp slt i32 %920, %854
  %955 = icmp slt i32 %953, %854
  %956 = select i1 %954, i1 true, i1 %955
  br i1 %956, label %884, label %957

957:                                              ; preds = %951, %879
  %958 = phi i32 [ 0, %879 ], [ %952, %951 ]
  %959 = phi i32 [ 0, %879 ], [ %920, %951 ]
  %960 = phi i32 [ 0, %879 ], [ %953, %951 ]
  %961 = icmp eq i32 %1, 2
  br i1 %961, label %962, label %1041

962:                                              ; preds = %957
  %963 = icmp slt i32 %959, %854
  %964 = icmp slt i32 %960, %854
  %965 = select i1 %963, i1 true, i1 %964
  br i1 %965, label %968, label %966

966:                                              ; preds = %962
  %967 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  br label %1122

968:                                              ; preds = %962, %1035
  %969 = phi i32 [ %1036, %1035 ], [ %958, %962 ]
  %970 = phi i32 [ %1004, %1035 ], [ %960, %962 ]
  %971 = phi i32 [ %1037, %1035 ], [ %959, %962 ]
  %972 = icmp slt i32 %970, %854
  br i1 %972, label %973, label %1002

973:                                              ; preds = %968
  %974 = sext i32 %970 to i64
  br label %975

975:                                              ; preds = %998, %973
  %976 = phi i64 [ %974, %973 ], [ %999, %998 ]
  %977 = getelementptr inbounds ptr, ptr %778, i64 %976
  %978 = load ptr, ptr %977, align 8, !tbaa !6
  %979 = load i32, ptr %978, align 8, !tbaa !71
  %980 = and i32 %979, 2
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %998, label %982

982:                                              ; preds = %975
  %983 = getelementptr inbounds i8, ptr %978, i64 56
  %984 = load ptr, ptr %983, align 8, !tbaa !42
  %985 = getelementptr inbounds i8, ptr %984, i64 6380
  %986 = load i32, ptr %985, align 4, !tbaa !69
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %998, label %988

988:                                              ; preds = %982
  %989 = getelementptr inbounds i8, ptr %984, i64 6376
  %990 = load i32, ptr %989, align 8, !tbaa !70
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %998

992:                                              ; preds = %988
  %993 = trunc nsw i64 %976 to i32
  %994 = sext i32 %969 to i64
  %995 = getelementptr inbounds ptr, ptr %880, i64 %994
  store ptr %984, ptr %995, align 8, !tbaa !6
  %996 = add nsw i32 %969, 1
  store i32 %996, ptr @listXsize, align 4, !tbaa !36
  %997 = add nsw i32 %993, 1
  br label %1002

998:                                              ; preds = %982, %988, %975
  %999 = add nsw i64 %976, 1
  %1000 = trunc i64 %999 to i32
  %1001 = icmp eq i32 %854, %1000
  br i1 %1001, label %1002, label %975

1002:                                             ; preds = %998, %992, %968
  %1003 = phi i32 [ %996, %992 ], [ %969, %968 ], [ %969, %998 ]
  %1004 = phi i32 [ %997, %992 ], [ %970, %968 ], [ %854, %998 ]
  %1005 = icmp slt i32 %971, %854
  br i1 %1005, label %1006, label %1035

1006:                                             ; preds = %1002
  %1007 = sext i32 %971 to i64
  br label %1008

1008:                                             ; preds = %1031, %1006
  %1009 = phi i64 [ %1007, %1006 ], [ %1032, %1031 ]
  %1010 = getelementptr inbounds ptr, ptr %778, i64 %1009
  %1011 = load ptr, ptr %1010, align 8, !tbaa !6
  %1012 = load i32, ptr %1011, align 8, !tbaa !71
  %1013 = and i32 %1012, 1
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1031, label %1015

1015:                                             ; preds = %1008
  %1016 = getelementptr inbounds i8, ptr %1011, i64 48
  %1017 = load ptr, ptr %1016, align 8, !tbaa !41
  %1018 = getelementptr inbounds i8, ptr %1017, i64 6380
  %1019 = load i32, ptr %1018, align 4, !tbaa !69
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1031, label %1021

1021:                                             ; preds = %1015
  %1022 = getelementptr inbounds i8, ptr %1017, i64 6376
  %1023 = load i32, ptr %1022, align 8, !tbaa !70
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1025, label %1031

1025:                                             ; preds = %1021
  %1026 = trunc nsw i64 %1009 to i32
  %1027 = sext i32 %1003 to i64
  %1028 = getelementptr inbounds ptr, ptr %880, i64 %1027
  store ptr %1017, ptr %1028, align 8, !tbaa !6
  %1029 = add nsw i32 %1003, 1
  store i32 %1029, ptr @listXsize, align 4, !tbaa !36
  %1030 = add nsw i32 %1026, 1
  br label %1035

1031:                                             ; preds = %1015, %1021, %1008
  %1032 = add nsw i64 %1009, 1
  %1033 = trunc i64 %1032 to i32
  %1034 = icmp eq i32 %854, %1033
  br i1 %1034, label %1035, label %1008

1035:                                             ; preds = %1031, %1025, %1002
  %1036 = phi i32 [ %1029, %1025 ], [ %1003, %1002 ], [ %1003, %1031 ]
  %1037 = phi i32 [ %1030, %1025 ], [ %971, %1002 ], [ %854, %1031 ]
  %1038 = icmp slt i32 %1037, %854
  %1039 = icmp slt i32 %1004, %854
  %1040 = select i1 %1038, i1 true, i1 %1039
  br i1 %1040, label %968, label %1041

1041:                                             ; preds = %1035, %957
  %1042 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  br i1 %881, label %1043, label %1118

1043:                                             ; preds = %1041
  %1044 = icmp sgt i32 %854, 0
  br i1 %1044, label %1045, label %1203

1045:                                             ; preds = %1043, %1112
  %1046 = phi i32 [ %1113, %1112 ], [ 0, %1043 ]
  %1047 = phi i32 [ %1114, %1112 ], [ 0, %1043 ]
  %1048 = phi i32 [ %1081, %1112 ], [ 0, %1043 ]
  %1049 = icmp slt i32 %1048, %854
  br i1 %1049, label %1050, label %1079

1050:                                             ; preds = %1045
  %1051 = sext i32 %1048 to i64
  br label %1052

1052:                                             ; preds = %1075, %1050
  %1053 = phi i64 [ %1051, %1050 ], [ %1076, %1075 ]
  %1054 = getelementptr inbounds ptr, ptr %785, i64 %1053
  %1055 = load ptr, ptr %1054, align 8, !tbaa !6
  %1056 = load i32, ptr %1055, align 8, !tbaa !71
  %1057 = and i32 %1056, 1
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1075, label %1059

1059:                                             ; preds = %1052
  %1060 = getelementptr inbounds i8, ptr %1055, i64 48
  %1061 = load ptr, ptr %1060, align 8, !tbaa !41
  %1062 = getelementptr inbounds i8, ptr %1061, i64 6380
  %1063 = load i32, ptr %1062, align 4, !tbaa !69
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1075, label %1065

1065:                                             ; preds = %1059
  %1066 = getelementptr inbounds i8, ptr %1061, i64 6376
  %1067 = load i32, ptr %1066, align 8, !tbaa !70
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1069, label %1075

1069:                                             ; preds = %1065
  %1070 = trunc nsw i64 %1053 to i32
  %1071 = sext i32 %1046 to i64
  %1072 = getelementptr inbounds ptr, ptr %1042, i64 %1071
  store ptr %1061, ptr %1072, align 8, !tbaa !6
  %1073 = add nsw i32 %1046, 1
  store i32 %1073, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %1074 = add nsw i32 %1070, 1
  br label %1079

1075:                                             ; preds = %1059, %1065, %1052
  %1076 = add nsw i64 %1053, 1
  %1077 = trunc i64 %1076 to i32
  %1078 = icmp eq i32 %854, %1077
  br i1 %1078, label %1079, label %1052

1079:                                             ; preds = %1075, %1069, %1045
  %1080 = phi i32 [ %1073, %1069 ], [ %1046, %1045 ], [ %1046, %1075 ]
  %1081 = phi i32 [ %1074, %1069 ], [ %1048, %1045 ], [ %854, %1075 ]
  %1082 = icmp slt i32 %1047, %854
  br i1 %1082, label %1083, label %1112

1083:                                             ; preds = %1079
  %1084 = sext i32 %1047 to i64
  br label %1085

1085:                                             ; preds = %1108, %1083
  %1086 = phi i64 [ %1084, %1083 ], [ %1109, %1108 ]
  %1087 = getelementptr inbounds ptr, ptr %785, i64 %1086
  %1088 = load ptr, ptr %1087, align 8, !tbaa !6
  %1089 = load i32, ptr %1088, align 8, !tbaa !71
  %1090 = and i32 %1089, 2
  %1091 = icmp eq i32 %1090, 0
  br i1 %1091, label %1108, label %1092

1092:                                             ; preds = %1085
  %1093 = getelementptr inbounds i8, ptr %1088, i64 56
  %1094 = load ptr, ptr %1093, align 8, !tbaa !42
  %1095 = getelementptr inbounds i8, ptr %1094, i64 6380
  %1096 = load i32, ptr %1095, align 4, !tbaa !69
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1108, label %1098

1098:                                             ; preds = %1092
  %1099 = getelementptr inbounds i8, ptr %1094, i64 6376
  %1100 = load i32, ptr %1099, align 8, !tbaa !70
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1102, label %1108

1102:                                             ; preds = %1098
  %1103 = trunc nsw i64 %1086 to i32
  %1104 = sext i32 %1080 to i64
  %1105 = getelementptr inbounds ptr, ptr %1042, i64 %1104
  store ptr %1094, ptr %1105, align 8, !tbaa !6
  %1106 = add nsw i32 %1080, 1
  store i32 %1106, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %1107 = add nsw i32 %1103, 1
  br label %1112

1108:                                             ; preds = %1092, %1098, %1085
  %1109 = add nsw i64 %1086, 1
  %1110 = trunc i64 %1109 to i32
  %1111 = icmp eq i32 %854, %1110
  br i1 %1111, label %1112, label %1085

1112:                                             ; preds = %1108, %1102, %1079
  %1113 = phi i32 [ %1106, %1102 ], [ %1080, %1079 ], [ %1080, %1108 ]
  %1114 = phi i32 [ %1107, %1102 ], [ %1047, %1079 ], [ %854, %1108 ]
  %1115 = icmp slt i32 %1081, %854
  %1116 = icmp slt i32 %1114, %854
  %1117 = select i1 %1115, i1 true, i1 %1116
  br i1 %1117, label %1045, label %1118

1118:                                             ; preds = %1112, %1041
  %1119 = phi i32 [ 0, %1041 ], [ %1113, %1112 ]
  %1120 = phi i32 [ 0, %1041 ], [ %1081, %1112 ]
  %1121 = phi i32 [ 0, %1041 ], [ %1114, %1112 ]
  br i1 %961, label %1122, label %1203

1122:                                             ; preds = %966, %1118
  %1123 = phi i32 [ 0, %966 ], [ %1119, %1118 ]
  %1124 = phi i32 [ 0, %966 ], [ %1121, %1118 ]
  %1125 = phi i32 [ 0, %966 ], [ %1120, %1118 ]
  %1126 = phi ptr [ %967, %966 ], [ %1042, %1118 ]
  %1127 = icmp slt i32 %1125, %854
  %1128 = icmp slt i32 %1124, %854
  %1129 = select i1 %1127, i1 true, i1 %1128
  br i1 %1129, label %1130, label %1203

1130:                                             ; preds = %1122, %1197
  %1131 = phi i32 [ %1198, %1197 ], [ %1123, %1122 ]
  %1132 = phi i32 [ %1166, %1197 ], [ %1124, %1122 ]
  %1133 = phi i32 [ %1199, %1197 ], [ %1125, %1122 ]
  %1134 = icmp slt i32 %1132, %854
  br i1 %1134, label %1135, label %1164

1135:                                             ; preds = %1130
  %1136 = sext i32 %1132 to i64
  br label %1137

1137:                                             ; preds = %1160, %1135
  %1138 = phi i64 [ %1136, %1135 ], [ %1161, %1160 ]
  %1139 = getelementptr inbounds ptr, ptr %785, i64 %1138
  %1140 = load ptr, ptr %1139, align 8, !tbaa !6
  %1141 = load i32, ptr %1140, align 8, !tbaa !71
  %1142 = and i32 %1141, 2
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1160, label %1144

1144:                                             ; preds = %1137
  %1145 = getelementptr inbounds i8, ptr %1140, i64 56
  %1146 = load ptr, ptr %1145, align 8, !tbaa !42
  %1147 = getelementptr inbounds i8, ptr %1146, i64 6380
  %1148 = load i32, ptr %1147, align 4, !tbaa !69
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1160, label %1150

1150:                                             ; preds = %1144
  %1151 = getelementptr inbounds i8, ptr %1146, i64 6376
  %1152 = load i32, ptr %1151, align 8, !tbaa !70
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1154, label %1160

1154:                                             ; preds = %1150
  %1155 = trunc nsw i64 %1138 to i32
  %1156 = sext i32 %1131 to i64
  %1157 = getelementptr inbounds ptr, ptr %1126, i64 %1156
  store ptr %1146, ptr %1157, align 8, !tbaa !6
  %1158 = add nsw i32 %1131, 1
  store i32 %1158, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %1159 = add nsw i32 %1155, 1
  br label %1164

1160:                                             ; preds = %1144, %1150, %1137
  %1161 = add nsw i64 %1138, 1
  %1162 = trunc i64 %1161 to i32
  %1163 = icmp eq i32 %854, %1162
  br i1 %1163, label %1164, label %1137

1164:                                             ; preds = %1160, %1154, %1130
  %1165 = phi i32 [ %1158, %1154 ], [ %1131, %1130 ], [ %1131, %1160 ]
  %1166 = phi i32 [ %1159, %1154 ], [ %1132, %1130 ], [ %854, %1160 ]
  %1167 = icmp slt i32 %1133, %854
  br i1 %1167, label %1168, label %1197

1168:                                             ; preds = %1164
  %1169 = sext i32 %1133 to i64
  br label %1170

1170:                                             ; preds = %1193, %1168
  %1171 = phi i64 [ %1169, %1168 ], [ %1194, %1193 ]
  %1172 = getelementptr inbounds ptr, ptr %785, i64 %1171
  %1173 = load ptr, ptr %1172, align 8, !tbaa !6
  %1174 = load i32, ptr %1173, align 8, !tbaa !71
  %1175 = and i32 %1174, 1
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1193, label %1177

1177:                                             ; preds = %1170
  %1178 = getelementptr inbounds i8, ptr %1173, i64 48
  %1179 = load ptr, ptr %1178, align 8, !tbaa !41
  %1180 = getelementptr inbounds i8, ptr %1179, i64 6380
  %1181 = load i32, ptr %1180, align 4, !tbaa !69
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1193, label %1183

1183:                                             ; preds = %1177
  %1184 = getelementptr inbounds i8, ptr %1179, i64 6376
  %1185 = load i32, ptr %1184, align 8, !tbaa !70
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1187, label %1193

1187:                                             ; preds = %1183
  %1188 = trunc nsw i64 %1171 to i32
  %1189 = sext i32 %1165 to i64
  %1190 = getelementptr inbounds ptr, ptr %1126, i64 %1189
  store ptr %1179, ptr %1190, align 8, !tbaa !6
  %1191 = add nsw i32 %1165, 1
  store i32 %1191, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %1192 = add nsw i32 %1188, 1
  br label %1197

1193:                                             ; preds = %1177, %1183, %1170
  %1194 = add nsw i64 %1171, 1
  %1195 = trunc i64 %1194 to i32
  %1196 = icmp eq i32 %854, %1195
  br i1 %1196, label %1197, label %1170

1197:                                             ; preds = %1193, %1187, %1164
  %1198 = phi i32 [ %1191, %1187 ], [ %1165, %1164 ], [ %1165, %1193 ]
  %1199 = phi i32 [ %1192, %1187 ], [ %1133, %1164 ], [ %854, %1193 ]
  %1200 = icmp slt i32 %1199, %854
  %1201 = icmp slt i32 %1166, %854
  %1202 = select i1 %1200, i1 true, i1 %1201
  br i1 %1202, label %1130, label %1203

1203:                                             ; preds = %1197, %882, %1043, %1118, %1122
  %1204 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1216, label %1206

1206:                                             ; preds = %1203
  %1207 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %1208 = zext i32 %1204 to i64
  br label %1209

1209:                                             ; preds = %1206, %1209
  %1210 = phi i64 [ 0, %1206 ], [ %1213, %1209 ]
  %1211 = getelementptr inbounds ptr, ptr %1207, i64 %1210
  %1212 = load ptr, ptr %1211, align 8, !tbaa !6
  %1213 = add nuw nsw i64 %1210, 1
  %1214 = getelementptr inbounds ptr, ptr %792, i64 %1210
  store ptr %1212, ptr %1214, align 8, !tbaa !6
  %1215 = icmp eq i64 %1213, %1208
  br i1 %1215, label %1216, label %1209

1216:                                             ; preds = %1209, %1203
  %1217 = zext nneg i32 %1204 to i64
  tail call void @qsort(ptr noundef %792, i64 noundef %1217, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #15
  %1218 = load ptr, ptr @listX, align 8, !tbaa !6
  br i1 %881, label %1219, label %1296

1219:                                             ; preds = %1216
  %1220 = icmp eq i32 %1204, 0
  br i1 %1220, label %1545, label %1221

1221:                                             ; preds = %1219
  %1222 = load i32, ptr @listXsize, align 4, !tbaa !36
  br label %1223

1223:                                             ; preds = %1221, %1290
  %1224 = phi i32 [ %1291, %1290 ], [ %1222, %1221 ]
  %1225 = phi i32 [ %1292, %1290 ], [ 0, %1221 ]
  %1226 = phi i32 [ %1259, %1290 ], [ 0, %1221 ]
  %1227 = icmp slt i32 %1226, %1204
  br i1 %1227, label %1228, label %1257

1228:                                             ; preds = %1223
  %1229 = sext i32 %1226 to i64
  br label %1230

1230:                                             ; preds = %1253, %1228
  %1231 = phi i64 [ %1229, %1228 ], [ %1254, %1253 ]
  %1232 = getelementptr inbounds ptr, ptr %792, i64 %1231
  %1233 = load ptr, ptr %1232, align 8, !tbaa !6
  %1234 = load i32, ptr %1233, align 8, !tbaa !71
  %1235 = and i32 %1234, 1
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1253, label %1237

1237:                                             ; preds = %1230
  %1238 = getelementptr inbounds i8, ptr %1233, i64 48
  %1239 = load ptr, ptr %1238, align 8, !tbaa !41
  %1240 = getelementptr inbounds i8, ptr %1239, i64 6380
  %1241 = load i32, ptr %1240, align 4, !tbaa !69
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1253, label %1243

1243:                                             ; preds = %1237
  %1244 = getelementptr inbounds i8, ptr %1239, i64 6376
  %1245 = load i32, ptr %1244, align 8, !tbaa !70
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1253, label %1247

1247:                                             ; preds = %1243
  %1248 = trunc nsw i64 %1231 to i32
  %1249 = sext i32 %1224 to i64
  %1250 = getelementptr inbounds ptr, ptr %1218, i64 %1249
  store ptr %1239, ptr %1250, align 8, !tbaa !6
  %1251 = add nsw i32 %1224, 1
  store i32 %1251, ptr @listXsize, align 4, !tbaa !36
  %1252 = add nsw i32 %1248, 1
  br label %1257

1253:                                             ; preds = %1237, %1243, %1230
  %1254 = add nsw i64 %1231, 1
  %1255 = trunc i64 %1254 to i32
  %1256 = icmp eq i32 %1204, %1255
  br i1 %1256, label %1257, label %1230

1257:                                             ; preds = %1253, %1247, %1223
  %1258 = phi i32 [ %1251, %1247 ], [ %1224, %1223 ], [ %1224, %1253 ]
  %1259 = phi i32 [ %1252, %1247 ], [ %1226, %1223 ], [ %1204, %1253 ]
  %1260 = icmp slt i32 %1225, %1204
  br i1 %1260, label %1261, label %1290

1261:                                             ; preds = %1257
  %1262 = sext i32 %1225 to i64
  br label %1263

1263:                                             ; preds = %1286, %1261
  %1264 = phi i64 [ %1262, %1261 ], [ %1287, %1286 ]
  %1265 = getelementptr inbounds ptr, ptr %792, i64 %1264
  %1266 = load ptr, ptr %1265, align 8, !tbaa !6
  %1267 = load i32, ptr %1266, align 8, !tbaa !71
  %1268 = and i32 %1267, 2
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1286, label %1270

1270:                                             ; preds = %1263
  %1271 = getelementptr inbounds i8, ptr %1266, i64 56
  %1272 = load ptr, ptr %1271, align 8, !tbaa !42
  %1273 = getelementptr inbounds i8, ptr %1272, i64 6380
  %1274 = load i32, ptr %1273, align 4, !tbaa !69
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1286, label %1276

1276:                                             ; preds = %1270
  %1277 = getelementptr inbounds i8, ptr %1272, i64 6376
  %1278 = load i32, ptr %1277, align 8, !tbaa !70
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1286, label %1280

1280:                                             ; preds = %1276
  %1281 = trunc nsw i64 %1264 to i32
  %1282 = sext i32 %1258 to i64
  %1283 = getelementptr inbounds ptr, ptr %1218, i64 %1282
  store ptr %1272, ptr %1283, align 8, !tbaa !6
  %1284 = add nsw i32 %1258, 1
  store i32 %1284, ptr @listXsize, align 4, !tbaa !36
  %1285 = add nsw i32 %1281, 1
  br label %1290

1286:                                             ; preds = %1270, %1276, %1263
  %1287 = add nsw i64 %1264, 1
  %1288 = trunc i64 %1287 to i32
  %1289 = icmp eq i32 %1204, %1288
  br i1 %1289, label %1290, label %1263

1290:                                             ; preds = %1286, %1280, %1257
  %1291 = phi i32 [ %1284, %1280 ], [ %1258, %1257 ], [ %1258, %1286 ]
  %1292 = phi i32 [ %1285, %1280 ], [ %1225, %1257 ], [ %1204, %1286 ]
  %1293 = icmp slt i32 %1259, %1204
  %1294 = icmp slt i32 %1292, %1204
  %1295 = select i1 %1293, i1 true, i1 %1294
  br i1 %1295, label %1223, label %1296

1296:                                             ; preds = %1290, %1216
  %1297 = phi i32 [ 0, %1216 ], [ %1259, %1290 ]
  %1298 = phi i32 [ 0, %1216 ], [ %1292, %1290 ]
  %1299 = icmp eq i32 %1, 2
  br i1 %1299, label %1300, label %1381

1300:                                             ; preds = %1296
  %1301 = icmp slt i32 %1297, %1204
  %1302 = icmp slt i32 %1298, %1204
  %1303 = select i1 %1301, i1 true, i1 %1302
  br i1 %1303, label %1304, label %1306

1304:                                             ; preds = %1300
  %1305 = load i32, ptr @listXsize, align 4, !tbaa !36
  br label %1308

1306:                                             ; preds = %1300
  %1307 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  br label %1463

1308:                                             ; preds = %1304, %1375
  %1309 = phi i32 [ %1376, %1375 ], [ %1305, %1304 ]
  %1310 = phi i32 [ %1344, %1375 ], [ %1298, %1304 ]
  %1311 = phi i32 [ %1377, %1375 ], [ %1297, %1304 ]
  %1312 = icmp slt i32 %1310, %1204
  br i1 %1312, label %1313, label %1342

1313:                                             ; preds = %1308
  %1314 = sext i32 %1310 to i64
  br label %1315

1315:                                             ; preds = %1338, %1313
  %1316 = phi i64 [ %1314, %1313 ], [ %1339, %1338 ]
  %1317 = getelementptr inbounds ptr, ptr %792, i64 %1316
  %1318 = load ptr, ptr %1317, align 8, !tbaa !6
  %1319 = load i32, ptr %1318, align 8, !tbaa !71
  %1320 = and i32 %1319, 2
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1338, label %1322

1322:                                             ; preds = %1315
  %1323 = getelementptr inbounds i8, ptr %1318, i64 56
  %1324 = load ptr, ptr %1323, align 8, !tbaa !42
  %1325 = getelementptr inbounds i8, ptr %1324, i64 6380
  %1326 = load i32, ptr %1325, align 4, !tbaa !69
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1338, label %1328

1328:                                             ; preds = %1322
  %1329 = getelementptr inbounds i8, ptr %1324, i64 6376
  %1330 = load i32, ptr %1329, align 8, !tbaa !70
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1338, label %1332

1332:                                             ; preds = %1328
  %1333 = trunc nsw i64 %1316 to i32
  %1334 = sext i32 %1309 to i64
  %1335 = getelementptr inbounds ptr, ptr %1218, i64 %1334
  store ptr %1324, ptr %1335, align 8, !tbaa !6
  %1336 = add nsw i32 %1309, 1
  store i32 %1336, ptr @listXsize, align 4, !tbaa !36
  %1337 = add nsw i32 %1333, 1
  br label %1342

1338:                                             ; preds = %1322, %1328, %1315
  %1339 = add nsw i64 %1316, 1
  %1340 = trunc i64 %1339 to i32
  %1341 = icmp eq i32 %1204, %1340
  br i1 %1341, label %1342, label %1315

1342:                                             ; preds = %1338, %1332, %1308
  %1343 = phi i32 [ %1336, %1332 ], [ %1309, %1308 ], [ %1309, %1338 ]
  %1344 = phi i32 [ %1337, %1332 ], [ %1310, %1308 ], [ %1204, %1338 ]
  %1345 = icmp slt i32 %1311, %1204
  br i1 %1345, label %1346, label %1375

1346:                                             ; preds = %1342
  %1347 = sext i32 %1311 to i64
  br label %1348

1348:                                             ; preds = %1371, %1346
  %1349 = phi i64 [ %1347, %1346 ], [ %1372, %1371 ]
  %1350 = getelementptr inbounds ptr, ptr %792, i64 %1349
  %1351 = load ptr, ptr %1350, align 8, !tbaa !6
  %1352 = load i32, ptr %1351, align 8, !tbaa !71
  %1353 = and i32 %1352, 1
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1371, label %1355

1355:                                             ; preds = %1348
  %1356 = getelementptr inbounds i8, ptr %1351, i64 48
  %1357 = load ptr, ptr %1356, align 8, !tbaa !41
  %1358 = getelementptr inbounds i8, ptr %1357, i64 6380
  %1359 = load i32, ptr %1358, align 4, !tbaa !69
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1371, label %1361

1361:                                             ; preds = %1355
  %1362 = getelementptr inbounds i8, ptr %1357, i64 6376
  %1363 = load i32, ptr %1362, align 8, !tbaa !70
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1371, label %1365

1365:                                             ; preds = %1361
  %1366 = trunc nsw i64 %1349 to i32
  %1367 = sext i32 %1343 to i64
  %1368 = getelementptr inbounds ptr, ptr %1218, i64 %1367
  store ptr %1357, ptr %1368, align 8, !tbaa !6
  %1369 = add nsw i32 %1343, 1
  store i32 %1369, ptr @listXsize, align 4, !tbaa !36
  %1370 = add nsw i32 %1366, 1
  br label %1375

1371:                                             ; preds = %1355, %1361, %1348
  %1372 = add nsw i64 %1349, 1
  %1373 = trunc i64 %1372 to i32
  %1374 = icmp eq i32 %1204, %1373
  br i1 %1374, label %1375, label %1348

1375:                                             ; preds = %1371, %1365, %1342
  %1376 = phi i32 [ %1369, %1365 ], [ %1343, %1342 ], [ %1343, %1371 ]
  %1377 = phi i32 [ %1370, %1365 ], [ %1311, %1342 ], [ %1204, %1371 ]
  %1378 = icmp slt i32 %1377, %1204
  %1379 = icmp slt i32 %1344, %1204
  %1380 = select i1 %1378, i1 true, i1 %1379
  br i1 %1380, label %1308, label %1381

1381:                                             ; preds = %1375, %1296
  %1382 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  br i1 %881, label %1383, label %1460

1383:                                             ; preds = %1381
  %1384 = icmp eq i32 %1204, 0
  br i1 %1384, label %1545, label %1385

1385:                                             ; preds = %1383
  %1386 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  br label %1387

1387:                                             ; preds = %1385, %1454
  %1388 = phi i32 [ %1455, %1454 ], [ %1386, %1385 ]
  %1389 = phi i32 [ %1456, %1454 ], [ 0, %1385 ]
  %1390 = phi i32 [ %1423, %1454 ], [ 0, %1385 ]
  %1391 = icmp slt i32 %1390, %1204
  br i1 %1391, label %1392, label %1421

1392:                                             ; preds = %1387
  %1393 = sext i32 %1390 to i64
  br label %1394

1394:                                             ; preds = %1417, %1392
  %1395 = phi i64 [ %1393, %1392 ], [ %1418, %1417 ]
  %1396 = getelementptr inbounds ptr, ptr %792, i64 %1395
  %1397 = load ptr, ptr %1396, align 8, !tbaa !6
  %1398 = load i32, ptr %1397, align 8, !tbaa !71
  %1399 = and i32 %1398, 1
  %1400 = icmp eq i32 %1399, 0
  br i1 %1400, label %1417, label %1401

1401:                                             ; preds = %1394
  %1402 = getelementptr inbounds i8, ptr %1397, i64 48
  %1403 = load ptr, ptr %1402, align 8, !tbaa !41
  %1404 = getelementptr inbounds i8, ptr %1403, i64 6380
  %1405 = load i32, ptr %1404, align 4, !tbaa !69
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1417, label %1407

1407:                                             ; preds = %1401
  %1408 = getelementptr inbounds i8, ptr %1403, i64 6376
  %1409 = load i32, ptr %1408, align 8, !tbaa !70
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1417, label %1411

1411:                                             ; preds = %1407
  %1412 = trunc nsw i64 %1395 to i32
  %1413 = sext i32 %1388 to i64
  %1414 = getelementptr inbounds ptr, ptr %1382, i64 %1413
  store ptr %1403, ptr %1414, align 8, !tbaa !6
  %1415 = add nsw i32 %1388, 1
  store i32 %1415, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %1416 = add nsw i32 %1412, 1
  br label %1421

1417:                                             ; preds = %1401, %1407, %1394
  %1418 = add nsw i64 %1395, 1
  %1419 = trunc i64 %1418 to i32
  %1420 = icmp eq i32 %1204, %1419
  br i1 %1420, label %1421, label %1394

1421:                                             ; preds = %1417, %1411, %1387
  %1422 = phi i32 [ %1415, %1411 ], [ %1388, %1387 ], [ %1388, %1417 ]
  %1423 = phi i32 [ %1416, %1411 ], [ %1390, %1387 ], [ %1204, %1417 ]
  %1424 = icmp slt i32 %1389, %1204
  br i1 %1424, label %1425, label %1454

1425:                                             ; preds = %1421
  %1426 = sext i32 %1389 to i64
  br label %1427

1427:                                             ; preds = %1450, %1425
  %1428 = phi i64 [ %1426, %1425 ], [ %1451, %1450 ]
  %1429 = getelementptr inbounds ptr, ptr %792, i64 %1428
  %1430 = load ptr, ptr %1429, align 8, !tbaa !6
  %1431 = load i32, ptr %1430, align 8, !tbaa !71
  %1432 = and i32 %1431, 2
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1450, label %1434

1434:                                             ; preds = %1427
  %1435 = getelementptr inbounds i8, ptr %1430, i64 56
  %1436 = load ptr, ptr %1435, align 8, !tbaa !42
  %1437 = getelementptr inbounds i8, ptr %1436, i64 6380
  %1438 = load i32, ptr %1437, align 4, !tbaa !69
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1450, label %1440

1440:                                             ; preds = %1434
  %1441 = getelementptr inbounds i8, ptr %1436, i64 6376
  %1442 = load i32, ptr %1441, align 8, !tbaa !70
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1450, label %1444

1444:                                             ; preds = %1440
  %1445 = trunc nsw i64 %1428 to i32
  %1446 = sext i32 %1422 to i64
  %1447 = getelementptr inbounds ptr, ptr %1382, i64 %1446
  store ptr %1436, ptr %1447, align 8, !tbaa !6
  %1448 = add nsw i32 %1422, 1
  store i32 %1448, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %1449 = add nsw i32 %1445, 1
  br label %1454

1450:                                             ; preds = %1434, %1440, %1427
  %1451 = add nsw i64 %1428, 1
  %1452 = trunc i64 %1451 to i32
  %1453 = icmp eq i32 %1204, %1452
  br i1 %1453, label %1454, label %1427

1454:                                             ; preds = %1450, %1444, %1421
  %1455 = phi i32 [ %1448, %1444 ], [ %1422, %1421 ], [ %1422, %1450 ]
  %1456 = phi i32 [ %1449, %1444 ], [ %1389, %1421 ], [ %1204, %1450 ]
  %1457 = icmp slt i32 %1423, %1204
  %1458 = icmp slt i32 %1456, %1204
  %1459 = select i1 %1457, i1 true, i1 %1458
  br i1 %1459, label %1387, label %1460

1460:                                             ; preds = %1454, %1381
  %1461 = phi i32 [ 0, %1381 ], [ %1423, %1454 ]
  %1462 = phi i32 [ 0, %1381 ], [ %1456, %1454 ]
  br i1 %1299, label %1463, label %1545

1463:                                             ; preds = %1306, %1460
  %1464 = phi i32 [ 0, %1306 ], [ %1462, %1460 ]
  %1465 = phi i32 [ 0, %1306 ], [ %1461, %1460 ]
  %1466 = phi ptr [ %1307, %1306 ], [ %1382, %1460 ]
  %1467 = icmp slt i32 %1465, %1204
  %1468 = icmp slt i32 %1464, %1204
  %1469 = select i1 %1467, i1 true, i1 %1468
  br i1 %1469, label %1470, label %1545

1470:                                             ; preds = %1463
  %1471 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  br label %1472

1472:                                             ; preds = %1470, %1539
  %1473 = phi i32 [ %1540, %1539 ], [ %1471, %1470 ]
  %1474 = phi i32 [ %1508, %1539 ], [ %1464, %1470 ]
  %1475 = phi i32 [ %1541, %1539 ], [ %1465, %1470 ]
  %1476 = icmp slt i32 %1474, %1204
  br i1 %1476, label %1477, label %1506

1477:                                             ; preds = %1472
  %1478 = sext i32 %1474 to i64
  br label %1479

1479:                                             ; preds = %1502, %1477
  %1480 = phi i64 [ %1478, %1477 ], [ %1503, %1502 ]
  %1481 = getelementptr inbounds ptr, ptr %792, i64 %1480
  %1482 = load ptr, ptr %1481, align 8, !tbaa !6
  %1483 = load i32, ptr %1482, align 8, !tbaa !71
  %1484 = and i32 %1483, 2
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1502, label %1486

1486:                                             ; preds = %1479
  %1487 = getelementptr inbounds i8, ptr %1482, i64 56
  %1488 = load ptr, ptr %1487, align 8, !tbaa !42
  %1489 = getelementptr inbounds i8, ptr %1488, i64 6380
  %1490 = load i32, ptr %1489, align 4, !tbaa !69
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1502, label %1492

1492:                                             ; preds = %1486
  %1493 = getelementptr inbounds i8, ptr %1488, i64 6376
  %1494 = load i32, ptr %1493, align 8, !tbaa !70
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1502, label %1496

1496:                                             ; preds = %1492
  %1497 = trunc nsw i64 %1480 to i32
  %1498 = sext i32 %1473 to i64
  %1499 = getelementptr inbounds ptr, ptr %1466, i64 %1498
  store ptr %1488, ptr %1499, align 8, !tbaa !6
  %1500 = add nsw i32 %1473, 1
  store i32 %1500, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %1501 = add nsw i32 %1497, 1
  br label %1506

1502:                                             ; preds = %1486, %1492, %1479
  %1503 = add nsw i64 %1480, 1
  %1504 = trunc i64 %1503 to i32
  %1505 = icmp eq i32 %1204, %1504
  br i1 %1505, label %1506, label %1479

1506:                                             ; preds = %1502, %1496, %1472
  %1507 = phi i32 [ %1500, %1496 ], [ %1473, %1472 ], [ %1473, %1502 ]
  %1508 = phi i32 [ %1501, %1496 ], [ %1474, %1472 ], [ %1204, %1502 ]
  %1509 = icmp slt i32 %1475, %1204
  br i1 %1509, label %1510, label %1539

1510:                                             ; preds = %1506
  %1511 = sext i32 %1475 to i64
  br label %1512

1512:                                             ; preds = %1535, %1510
  %1513 = phi i64 [ %1511, %1510 ], [ %1536, %1535 ]
  %1514 = getelementptr inbounds ptr, ptr %792, i64 %1513
  %1515 = load ptr, ptr %1514, align 8, !tbaa !6
  %1516 = load i32, ptr %1515, align 8, !tbaa !71
  %1517 = and i32 %1516, 1
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1535, label %1519

1519:                                             ; preds = %1512
  %1520 = getelementptr inbounds i8, ptr %1515, i64 48
  %1521 = load ptr, ptr %1520, align 8, !tbaa !41
  %1522 = getelementptr inbounds i8, ptr %1521, i64 6380
  %1523 = load i32, ptr %1522, align 4, !tbaa !69
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1535, label %1525

1525:                                             ; preds = %1519
  %1526 = getelementptr inbounds i8, ptr %1521, i64 6376
  %1527 = load i32, ptr %1526, align 8, !tbaa !70
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1535, label %1529

1529:                                             ; preds = %1525
  %1530 = trunc nsw i64 %1513 to i32
  %1531 = sext i32 %1507 to i64
  %1532 = getelementptr inbounds ptr, ptr %1466, i64 %1531
  store ptr %1521, ptr %1532, align 8, !tbaa !6
  %1533 = add nsw i32 %1507, 1
  store i32 %1533, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %1534 = add nsw i32 %1530, 1
  br label %1539

1535:                                             ; preds = %1519, %1525, %1512
  %1536 = add nsw i64 %1513, 1
  %1537 = trunc i64 %1536 to i32
  %1538 = icmp eq i32 %1204, %1537
  br i1 %1538, label %1539, label %1512

1539:                                             ; preds = %1535, %1529, %1506
  %1540 = phi i32 [ %1533, %1529 ], [ %1507, %1506 ], [ %1507, %1535 ]
  %1541 = phi i32 [ %1534, %1529 ], [ %1475, %1506 ], [ %1204, %1535 ]
  %1542 = icmp slt i32 %1541, %1204
  %1543 = icmp slt i32 %1508, %1204
  %1544 = select i1 %1542, i1 true, i1 %1543
  br i1 %1544, label %1472, label %1545

1545:                                             ; preds = %1539, %1219, %1383, %1460, %1463
  tail call void @free(ptr noundef %778) #15
  tail call void @free(ptr noundef %785) #15
  tail call void @free(ptr noundef %792) #15
  %1546 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  br label %1547

1547:                                             ; preds = %223, %602, %762, %1545
  %1548 = phi i32 [ %763, %762 ], [ %1546, %1545 ], [ 0, %602 ], [ 0, %223 ]
  %1549 = load i32, ptr @listXsize, align 4
  %1550 = icmp eq i32 %1549, %1548
  %1551 = icmp sgt i32 %1549, 1
  %1552 = and i1 %1551, %1550
  br i1 %1552, label %1553, label %1576

1553:                                             ; preds = %1547
  %1554 = load ptr, ptr @listX, align 8, !tbaa !6
  %1555 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %1556 = zext i32 %1548 to i64
  br label %1557

1557:                                             ; preds = %1553, %1557
  %1558 = phi i64 [ 0, %1553 ], [ %1566, %1557 ]
  %1559 = phi i32 [ 0, %1553 ], [ %1565, %1557 ]
  %1560 = getelementptr inbounds ptr, ptr %1554, i64 %1558
  %1561 = load ptr, ptr %1560, align 8, !tbaa !6
  %1562 = getelementptr inbounds ptr, ptr %1555, i64 %1558
  %1563 = load ptr, ptr %1562, align 8, !tbaa !6
  %1564 = icmp eq ptr %1561, %1563
  %1565 = select i1 %1564, i32 %1559, i32 1
  %1566 = add nuw nsw i64 %1558, 1
  %1567 = icmp eq i64 %1566, %1556
  br i1 %1567, label %1568, label %1557

1568:                                             ; preds = %1557
  %1569 = icmp eq i32 %1565, 0
  br i1 %1569, label %1570, label %1576

1570:                                             ; preds = %1568
  %1571 = load ptr, ptr %1555, align 8, !tbaa !6
  %1572 = getelementptr inbounds i8, ptr %1555, i64 8
  %1573 = load ptr, ptr %1572, align 8, !tbaa !6
  store ptr %1573, ptr %1555, align 8, !tbaa !6
  %1574 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %1575 = getelementptr inbounds i8, ptr %1574, i64 8
  store ptr %1571, ptr %1575, align 8, !tbaa !6
  br label %1576

1576:                                             ; preds = %1568, %1570, %1547
  %1577 = load ptr, ptr @img, align 8, !tbaa !6
  %1578 = getelementptr inbounds i8, ptr %1577, i64 89408
  %1579 = load i32, ptr %1578, align 8, !tbaa !83
  %1580 = tail call i32 @llvm.smin.i32(i32 %1549, i32 %1579)
  store i32 %1580, ptr @listXsize, align 4, !tbaa !36
  %1581 = getelementptr inbounds i8, ptr %1577, i64 89412
  %1582 = load i32, ptr %1581, align 4, !tbaa !84
  %1583 = tail call i32 @llvm.smin.i32(i32 %1548, i32 %1582)
  store i32 %1583, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %1584 = icmp ult i32 %1580, 33
  br i1 %1584, label %1585, label %1587

1585:                                             ; preds = %1576
  %1586 = zext nneg i32 %1580 to i64
  br label %1591

1587:                                             ; preds = %1591, %1576
  %1588 = icmp ult i32 %1583, 33
  br i1 %1588, label %1589, label %1605

1589:                                             ; preds = %1587
  %1590 = zext nneg i32 %1583 to i64
  br label %1598

1591:                                             ; preds = %1585, %1591
  %1592 = phi i64 [ %1586, %1585 ], [ %1595, %1591 ]
  %1593 = load ptr, ptr @listX, align 8, !tbaa !6
  %1594 = getelementptr inbounds ptr, ptr %1593, i64 %1592
  store ptr null, ptr %1594, align 8, !tbaa !6
  %1595 = add nuw nsw i64 %1592, 1
  %1596 = and i64 %1595, 4294967295
  %1597 = icmp eq i64 %1596, 33
  br i1 %1597, label %1587, label %1591

1598:                                             ; preds = %1589, %1598
  %1599 = phi i64 [ %1590, %1589 ], [ %1602, %1598 ]
  %1600 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %1601 = getelementptr inbounds ptr, ptr %1600, i64 %1599
  store ptr null, ptr %1601, align 8, !tbaa !6
  %1602 = add nuw nsw i64 %1599, 1
  %1603 = and i64 %1602, 4294967295
  %1604 = icmp eq i64 %1603, 33
  br i1 %1604, label %1605, label %1598

1605:                                             ; preds = %1598, %1587, %152
  ret void
}

; Function Attrs: nofree
declare dso_local void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal signext range(i32 -1, 2) i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 6364
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 6364
  %8 = load i32, ptr %7, align 4, !tbaa !74
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal signext range(i32 -1, 2) i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 6368
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 6368
  %8 = load i32, ptr %7, align 8, !tbaa !76
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal signext range(i32 -1, 2) i32 @compare_fs_by_frame_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !85
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal signext range(i32 -1, 2) i32 @compare_fs_by_lt_pic_idx_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 28
  %5 = load i32, ptr %4, align 4, !tbaa !86
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 28
  %8 = load i32, ptr %7, align 4, !tbaa !86
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal signext range(i32 -1, 2) i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !80
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal signext range(i32 -1, 2) i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !80
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal signext range(i32 -1, 2) i32 @compare_fs_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 36
  %5 = load i32, ptr %4, align 4, !tbaa !82
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 36
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal signext range(i32 -1, 2) i32 @compare_fs_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 36
  %5 = load i32, ptr %4, align 4, !tbaa !82
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 36
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @init_mbaff_lists() local_unnamed_addr #8 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 2, %0 ], [ %70, %1 ]
  %3 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  store ptr null, ptr %4, align 8, !tbaa !6
  %5 = load ptr, ptr %3, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr null, ptr %6, align 8, !tbaa !6
  %7 = load ptr, ptr %3, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 16
  store ptr null, ptr %8, align 8, !tbaa !6
  %9 = load ptr, ptr %3, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 24
  store ptr null, ptr %10, align 8, !tbaa !6
  %11 = load ptr, ptr %3, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 32
  store ptr null, ptr %12, align 8, !tbaa !6
  %13 = load ptr, ptr %3, align 8, !tbaa !6
  %14 = getelementptr inbounds i8, ptr %13, i64 40
  store ptr null, ptr %14, align 8, !tbaa !6
  %15 = load ptr, ptr %3, align 8, !tbaa !6
  %16 = getelementptr inbounds i8, ptr %15, i64 48
  store ptr null, ptr %16, align 8, !tbaa !6
  %17 = load ptr, ptr %3, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, ptr %17, i64 56
  store ptr null, ptr %18, align 8, !tbaa !6
  %19 = load ptr, ptr %3, align 8, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %19, i64 64
  store ptr null, ptr %20, align 8, !tbaa !6
  %21 = load ptr, ptr %3, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 72
  store ptr null, ptr %22, align 8, !tbaa !6
  %23 = load ptr, ptr %3, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 80
  store ptr null, ptr %24, align 8, !tbaa !6
  %25 = load ptr, ptr %3, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 88
  store ptr null, ptr %26, align 8, !tbaa !6
  %27 = load ptr, ptr %3, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 96
  store ptr null, ptr %28, align 8, !tbaa !6
  %29 = load ptr, ptr %3, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 104
  store ptr null, ptr %30, align 8, !tbaa !6
  %31 = load ptr, ptr %3, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 112
  store ptr null, ptr %32, align 8, !tbaa !6
  %33 = load ptr, ptr %3, align 8, !tbaa !6
  %34 = getelementptr inbounds i8, ptr %33, i64 120
  store ptr null, ptr %34, align 8, !tbaa !6
  %35 = load ptr, ptr %3, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 128
  store ptr null, ptr %36, align 8, !tbaa !6
  %37 = load ptr, ptr %3, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %37, i64 136
  store ptr null, ptr %38, align 8, !tbaa !6
  %39 = load ptr, ptr %3, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %39, i64 144
  store ptr null, ptr %40, align 8, !tbaa !6
  %41 = load ptr, ptr %3, align 8, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %41, i64 152
  store ptr null, ptr %42, align 8, !tbaa !6
  %43 = load ptr, ptr %3, align 8, !tbaa !6
  %44 = getelementptr inbounds i8, ptr %43, i64 160
  store ptr null, ptr %44, align 8, !tbaa !6
  %45 = load ptr, ptr %3, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 168
  store ptr null, ptr %46, align 8, !tbaa !6
  %47 = load ptr, ptr %3, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %47, i64 176
  store ptr null, ptr %48, align 8, !tbaa !6
  %49 = load ptr, ptr %3, align 8, !tbaa !6
  %50 = getelementptr inbounds i8, ptr %49, i64 184
  store ptr null, ptr %50, align 8, !tbaa !6
  %51 = load ptr, ptr %3, align 8, !tbaa !6
  %52 = getelementptr inbounds i8, ptr %51, i64 192
  store ptr null, ptr %52, align 8, !tbaa !6
  %53 = load ptr, ptr %3, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 200
  store ptr null, ptr %54, align 8, !tbaa !6
  %55 = load ptr, ptr %3, align 8, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %55, i64 208
  store ptr null, ptr %56, align 8, !tbaa !6
  %57 = load ptr, ptr %3, align 8, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %57, i64 216
  store ptr null, ptr %58, align 8, !tbaa !6
  %59 = load ptr, ptr %3, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %59, i64 224
  store ptr null, ptr %60, align 8, !tbaa !6
  %61 = load ptr, ptr %3, align 8, !tbaa !6
  %62 = getelementptr inbounds i8, ptr %61, i64 232
  store ptr null, ptr %62, align 8, !tbaa !6
  %63 = load ptr, ptr %3, align 8, !tbaa !6
  %64 = getelementptr inbounds i8, ptr %63, i64 240
  store ptr null, ptr %64, align 8, !tbaa !6
  %65 = load ptr, ptr %3, align 8, !tbaa !6
  %66 = getelementptr inbounds i8, ptr %65, i64 248
  store ptr null, ptr %66, align 8, !tbaa !6
  %67 = load ptr, ptr %3, align 8, !tbaa !6
  %68 = getelementptr inbounds i8, ptr %67, i64 256
  store ptr null, ptr %68, align 8, !tbaa !6
  %69 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %2
  store i32 0, ptr %69, align 4, !tbaa !36
  %70 = add nuw nsw i64 %2, 1
  %71 = icmp eq i64 %70, 6
  br i1 %71, label %72, label %1

72:                                               ; preds = %1
  %73 = load i32, ptr @listXsize, align 4, !tbaa !36
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %111

75:                                               ; preds = %72
  %76 = zext nneg i32 %73 to i64
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi i64 [ 0, %75 ], [ %109, %77 ]
  %79 = load ptr, ptr @listX, align 8, !tbaa !6
  %80 = getelementptr inbounds ptr, ptr %79, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = getelementptr inbounds i8, ptr %81, i64 6528
  %83 = load ptr, ptr %82, align 8, !tbaa !87
  %84 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 16), align 8, !tbaa !6
  %85 = shl nuw nsw i64 %78, 1
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  store ptr %83, ptr %86, align 8, !tbaa !6
  %87 = load ptr, ptr @listX, align 8, !tbaa !6
  %88 = getelementptr inbounds ptr, ptr %87, i64 %78
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %89, i64 6536
  %91 = load ptr, ptr %90, align 8, !tbaa !88
  %92 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 16), align 8, !tbaa !6
  %93 = or disjoint i64 %85, 1
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  store ptr %91, ptr %94, align 8, !tbaa !6
  %95 = load ptr, ptr @listX, align 8, !tbaa !6
  %96 = getelementptr inbounds ptr, ptr %95, i64 %78
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = getelementptr inbounds i8, ptr %97, i64 6536
  %99 = load ptr, ptr %98, align 8, !tbaa !88
  %100 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 32), align 8, !tbaa !6
  %101 = getelementptr inbounds ptr, ptr %100, i64 %85
  store ptr %99, ptr %101, align 8, !tbaa !6
  %102 = load ptr, ptr @listX, align 8, !tbaa !6
  %103 = getelementptr inbounds ptr, ptr %102, i64 %78
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %104, i64 6528
  %106 = load ptr, ptr %105, align 8, !tbaa !87
  %107 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 32), align 8, !tbaa !6
  %108 = getelementptr inbounds ptr, ptr %107, i64 %93
  store ptr %106, ptr %108, align 8, !tbaa !6
  %109 = add nuw nsw i64 %78, 1
  %110 = icmp eq i64 %109, %76
  br i1 %110, label %111, label %77

111:                                              ; preds = %77, %72
  %112 = shl nsw i32 %73, 1
  store i32 %112, ptr getelementptr inbounds (i8, ptr @listXsize, i64 16), align 4, !tbaa !36
  store i32 %112, ptr getelementptr inbounds (i8, ptr @listXsize, i64 8), align 4, !tbaa !36
  %113 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %111
  %116 = zext nneg i32 %113 to i64
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi i64 [ 0, %115 ], [ %149, %117 ]
  %119 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %120 = getelementptr inbounds ptr, ptr %119, i64 %118
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = getelementptr inbounds i8, ptr %121, i64 6528
  %123 = load ptr, ptr %122, align 8, !tbaa !87
  %124 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 24), align 8, !tbaa !6
  %125 = shl nuw nsw i64 %118, 1
  %126 = getelementptr inbounds ptr, ptr %124, i64 %125
  store ptr %123, ptr %126, align 8, !tbaa !6
  %127 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %128 = getelementptr inbounds ptr, ptr %127, i64 %118
  %129 = load ptr, ptr %128, align 8, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %129, i64 6536
  %131 = load ptr, ptr %130, align 8, !tbaa !88
  %132 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 24), align 8, !tbaa !6
  %133 = or disjoint i64 %125, 1
  %134 = getelementptr inbounds ptr, ptr %132, i64 %133
  store ptr %131, ptr %134, align 8, !tbaa !6
  %135 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %136 = getelementptr inbounds ptr, ptr %135, i64 %118
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = getelementptr inbounds i8, ptr %137, i64 6536
  %139 = load ptr, ptr %138, align 8, !tbaa !88
  %140 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 40), align 8, !tbaa !6
  %141 = getelementptr inbounds ptr, ptr %140, i64 %125
  store ptr %139, ptr %141, align 8, !tbaa !6
  %142 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %143 = getelementptr inbounds ptr, ptr %142, i64 %118
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %144, i64 6528
  %146 = load ptr, ptr %145, align 8, !tbaa !87
  %147 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 40), align 8, !tbaa !6
  %148 = getelementptr inbounds ptr, ptr %147, i64 %133
  store ptr %146, ptr %148, align 8, !tbaa !6
  %149 = add nuw nsw i64 %118, 1
  %150 = icmp eq i64 %149, %116
  br i1 %150, label %151, label %117

151:                                              ; preds = %117, %111
  %152 = shl nsw i32 %113, 1
  store i32 %152, ptr getelementptr inbounds (i8, ptr @listXsize, i64 20), align 4, !tbaa !36
  store i32 %152, ptr getelementptr inbounds (i8, ptr @listXsize, i64 12), align 4, !tbaa !36
  ret void
}

; Function Attrs: nounwind
define dso_local void @reorder_ref_pic_list(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #1 {
  %7 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !36
  %8 = add i32 %7, 4
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 28
  %11 = load i32, ptr %10, align 4, !tbaa !89
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds i8, ptr %9, i64 90284
  %14 = load i32, ptr %13, align 4, !tbaa !73
  %15 = shl i32 %14, 1
  %16 = or disjoint i32 %15, 1
  %17 = select i1 %12, i32 1, i32 2
  %18 = select i1 %12, i32 %14, i32 %16
  %19 = shl i32 %17, %8
  %20 = load i32, ptr %3, align 4, !tbaa !36
  %21 = icmp eq i32 %20, 3
  %22 = add i32 %2, 1
  br i1 %21, label %259, label %23

23:                                               ; preds = %6
  %24 = sext i32 %22 to i64
  %25 = sext i32 %2 to i64
  br label %26

26:                                               ; preds = %23, %252
  %27 = phi i64 [ 0, %23 ], [ %255, %252 ]
  %28 = phi i32 [ %20, %23 ], [ %257, %252 ]
  %29 = phi i32 [ %18, %23 ], [ %254, %252 ]
  %30 = phi i32 [ 0, %23 ], [ %253, %252 ]
  %31 = icmp sgt i32 %28, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = getelementptr inbounds i32, ptr %3, i64 %27
  tail call void @error(ptr noundef nonnull @.str.13, i32 noundef signext 500) #15
  %34 = load i32, ptr %33, align 4, !tbaa !36
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i32 [ %34, %32 ], [ %28, %26 ]
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %152

38:                                               ; preds = %35
  %39 = icmp eq i32 %36, 0
  %40 = getelementptr inbounds i32, ptr %4, i64 %27
  %41 = load i32, ptr %40, align 4, !tbaa !36
  br i1 %39, label %42, label %48

42:                                               ; preds = %38
  %43 = xor i32 %41, -1
  %44 = add i32 %29, %43
  %45 = icmp slt i32 %44, 0
  %46 = select i1 %45, i32 %19, i32 0
  %47 = add nsw i32 %46, %44
  br label %54

48:                                               ; preds = %38
  %49 = add i32 %29, 1
  %50 = add i32 %49, %41
  %51 = icmp slt i32 %50, %19
  %52 = select i1 %51, i32 0, i32 %19
  %53 = sub nsw i32 %50, %52
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi i32 [ %47, %42 ], [ %53, %48 ]
  %56 = icmp sgt i32 %55, %18
  %57 = select i1 %56, i32 %19, i32 0
  %58 = sub nsw i32 %55, %57
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %115, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr @img, align 8, !tbaa !6
  %63 = getelementptr inbounds i8, ptr %62, i64 28
  %64 = load i32, ptr %63, align 4, !tbaa !89
  %65 = icmp eq i32 %64, 0
  %66 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8
  %67 = zext i32 %59 to i64
  br label %68

68:                                               ; preds = %112, %61
  %69 = phi i64 [ 0, %61 ], [ %113, %112 ]
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds i8, ptr %71, i64 4
  %73 = load i32, ptr %72, align 4, !tbaa !77
  br i1 %65, label %74, label %86

74:                                               ; preds = %68
  %75 = icmp eq i32 %73, 3
  br i1 %75, label %76, label %112

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8, ptr %71, i64 40
  %78 = load ptr, ptr %77, align 8, !tbaa !39
  %79 = getelementptr inbounds i8, ptr %78, i64 6376
  %80 = load i32, ptr %79, align 8, !tbaa !70
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %78, i64 6364
  %84 = load i32, ptr %83, align 4, !tbaa !74
  %85 = icmp eq i32 %84, %58
  br i1 %85, label %115, label %112

86:                                               ; preds = %68
  %87 = and i32 %73, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds i8, ptr %71, i64 48
  %91 = load ptr, ptr %90, align 8, !tbaa !41
  %92 = getelementptr inbounds i8, ptr %91, i64 6376
  %93 = load i32, ptr %92, align 8, !tbaa !70
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = getelementptr inbounds i8, ptr %91, i64 6364
  %97 = load i32, ptr %96, align 4, !tbaa !74
  %98 = icmp eq i32 %97, %58
  br i1 %98, label %115, label %99

99:                                               ; preds = %95, %89, %86
  %100 = and i32 %73, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds i8, ptr %71, i64 56
  %104 = load ptr, ptr %103, align 8, !tbaa !42
  %105 = getelementptr inbounds i8, ptr %104, i64 6376
  %106 = load i32, ptr %105, align 8, !tbaa !70
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = getelementptr inbounds i8, ptr %104, i64 6364
  %110 = load i32, ptr %109, align 4, !tbaa !74
  %111 = icmp eq i32 %110, %58
  br i1 %111, label %115, label %112

112:                                              ; preds = %108, %102, %99, %82, %76, %74
  %113 = add nuw nsw i64 %69, 1
  %114 = icmp eq i64 %113, %67
  br i1 %114, label %115, label %68

115:                                              ; preds = %112, %108, %95, %82, %54
  %116 = phi ptr [ null, %54 ], [ null, %112 ], [ %104, %108 ], [ %91, %95 ], [ %78, %82 ]
  %117 = icmp sgt i32 %30, %2
  %118 = sext i32 %30 to i64
  br i1 %117, label %246, label %119

119:                                              ; preds = %115, %119
  %120 = phi i64 [ %124, %119 ], [ %24, %115 ]
  %121 = getelementptr ptr, ptr %0, i64 %120
  %122 = getelementptr i8, ptr %121, i64 -8
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  store ptr %123, ptr %121, align 8, !tbaa !6
  %124 = add nsw i64 %120, -1
  %125 = icmp sgt i64 %124, %118
  br i1 %125, label %119, label %126

126:                                              ; preds = %119
  %127 = add i32 %30, 1
  %128 = getelementptr inbounds ptr, ptr %0, i64 %118
  store ptr %116, ptr %128, align 8, !tbaa !6
  %129 = sext i32 %127 to i64
  br label %130

130:                                              ; preds = %148, %126
  %131 = phi i64 [ %129, %126 ], [ %150, %148 ]
  %132 = phi i32 [ %127, %126 ], [ %149, %148 ]
  %133 = getelementptr inbounds ptr, ptr %0, i64 %131
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = icmp eq ptr %134, null
  br i1 %135, label %148, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds i8, ptr %134, i64 6376
  %138 = load i32, ptr %137, align 8, !tbaa !70
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds i8, ptr %134, i64 6364
  %142 = load i32, ptr %141, align 4, !tbaa !74
  %143 = icmp eq i32 %142, %58
  br i1 %143, label %148, label %144

144:                                              ; preds = %140, %136
  %145 = add nsw i32 %132, 1
  %146 = sext i32 %132 to i64
  %147 = getelementptr inbounds ptr, ptr %0, i64 %146
  store ptr %134, ptr %147, align 8, !tbaa !6
  br label %148

148:                                              ; preds = %144, %140, %130
  %149 = phi i32 [ %145, %144 ], [ %132, %140 ], [ %132, %130 ]
  %150 = add nsw i64 %131, 1
  %151 = icmp sgt i64 %131, %25
  br i1 %151, label %252, label %130

152:                                              ; preds = %35
  %153 = getelementptr inbounds i32, ptr %5, i64 %27
  %154 = load i32, ptr %153, align 4, !tbaa !36
  %155 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %211, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr @img, align 8, !tbaa !6
  %159 = getelementptr inbounds i8, ptr %158, i64 28
  %160 = load i32, ptr %159, align 4, !tbaa !89
  %161 = icmp eq i32 %160, 0
  %162 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8
  %163 = zext i32 %155 to i64
  br label %164

164:                                              ; preds = %208, %157
  %165 = phi i64 [ 0, %157 ], [ %209, %208 ]
  %166 = getelementptr inbounds ptr, ptr %162, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = getelementptr inbounds i8, ptr %167, i64 4
  %169 = load i32, ptr %168, align 4, !tbaa !77
  br i1 %161, label %170, label %182

170:                                              ; preds = %164
  %171 = icmp eq i32 %169, 3
  br i1 %171, label %172, label %208

172:                                              ; preds = %170
  %173 = getelementptr inbounds i8, ptr %167, i64 40
  %174 = load ptr, ptr %173, align 8, !tbaa !39
  %175 = getelementptr inbounds i8, ptr %174, i64 6376
  %176 = load i32, ptr %175, align 8, !tbaa !70
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %208, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds i8, ptr %174, i64 6368
  %180 = load i32, ptr %179, align 8, !tbaa !76
  %181 = icmp eq i32 %180, %154
  br i1 %181, label %211, label %208

182:                                              ; preds = %164
  %183 = and i32 %169, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds i8, ptr %167, i64 48
  %187 = load ptr, ptr %186, align 8, !tbaa !41
  %188 = getelementptr inbounds i8, ptr %187, i64 6376
  %189 = load i32, ptr %188, align 8, !tbaa !70
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %185
  %192 = getelementptr inbounds i8, ptr %187, i64 6368
  %193 = load i32, ptr %192, align 8, !tbaa !76
  %194 = icmp eq i32 %193, %154
  br i1 %194, label %211, label %195

195:                                              ; preds = %191, %185, %182
  %196 = and i32 %169, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds i8, ptr %167, i64 56
  %200 = load ptr, ptr %199, align 8, !tbaa !42
  %201 = getelementptr inbounds i8, ptr %200, i64 6376
  %202 = load i32, ptr %201, align 8, !tbaa !70
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds i8, ptr %200, i64 6368
  %206 = load i32, ptr %205, align 8, !tbaa !76
  %207 = icmp eq i32 %206, %154
  br i1 %207, label %211, label %208

208:                                              ; preds = %204, %198, %195, %178, %172, %170
  %209 = add nuw nsw i64 %165, 1
  %210 = icmp eq i64 %209, %163
  br i1 %210, label %211, label %164

211:                                              ; preds = %208, %204, %191, %178, %152
  %212 = phi ptr [ null, %152 ], [ null, %208 ], [ %200, %204 ], [ %187, %191 ], [ %174, %178 ]
  %213 = icmp sgt i32 %30, %2
  %214 = sext i32 %30 to i64
  br i1 %213, label %246, label %215

215:                                              ; preds = %211, %215
  %216 = phi i64 [ %220, %215 ], [ %24, %211 ]
  %217 = getelementptr ptr, ptr %0, i64 %216
  %218 = getelementptr i8, ptr %217, i64 -8
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  store ptr %219, ptr %217, align 8, !tbaa !6
  %220 = add nsw i64 %216, -1
  %221 = icmp sgt i64 %220, %214
  br i1 %221, label %215, label %222

222:                                              ; preds = %215
  %223 = add i32 %30, 1
  %224 = getelementptr inbounds ptr, ptr %0, i64 %214
  store ptr %212, ptr %224, align 8, !tbaa !6
  %225 = sext i32 %223 to i64
  br label %226

226:                                              ; preds = %242, %222
  %227 = phi i64 [ %225, %222 ], [ %244, %242 ]
  %228 = phi i32 [ %223, %222 ], [ %243, %242 ]
  %229 = getelementptr inbounds ptr, ptr %0, i64 %227
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  %231 = getelementptr inbounds i8, ptr %230, i64 6376
  %232 = load i32, ptr %231, align 8, !tbaa !70
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %226
  %235 = getelementptr inbounds i8, ptr %230, i64 6368
  %236 = load i32, ptr %235, align 8, !tbaa !76
  %237 = icmp eq i32 %236, %154
  br i1 %237, label %242, label %238

238:                                              ; preds = %234, %226
  %239 = add nsw i32 %228, 1
  %240 = sext i32 %228 to i64
  %241 = getelementptr inbounds ptr, ptr %0, i64 %240
  store ptr %230, ptr %241, align 8, !tbaa !6
  br label %242

242:                                              ; preds = %238, %234
  %243 = phi i32 [ %239, %238 ], [ %228, %234 ]
  %244 = add nsw i64 %227, 1
  %245 = icmp sgt i64 %227, %25
  br i1 %245, label %252, label %226

246:                                              ; preds = %211, %115
  %247 = phi i64 [ %118, %115 ], [ %214, %211 ]
  %248 = phi ptr [ %116, %115 ], [ %212, %211 ]
  %249 = phi i32 [ %55, %115 ], [ %29, %211 ]
  %250 = add i32 %30, 1
  %251 = getelementptr inbounds ptr, ptr %0, i64 %247
  store ptr %248, ptr %251, align 8, !tbaa !6
  br label %252

252:                                              ; preds = %242, %148, %246
  %253 = phi i32 [ %250, %246 ], [ %127, %148 ], [ %223, %242 ]
  %254 = phi i32 [ %249, %246 ], [ %55, %148 ], [ %29, %242 ]
  %255 = add nuw nsw i64 %27, 1
  %256 = getelementptr inbounds i32, ptr %3, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !36
  %258 = icmp eq i32 %257, 3
  br i1 %258, label %259, label %26

259:                                              ; preds = %252, %6
  store i32 %22, ptr %1, align 4, !tbaa !36
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @update_ref_list() local_unnamed_addr #8 {
  %1 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %65, label %3

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  %5 = load ptr, ptr @dpb, align 8, !tbaa !33
  br label %6

6:                                                ; preds = %3, %60
  %7 = phi ptr [ %5, %3 ], [ %61, %60 ]
  %8 = phi i64 [ 0, %3 ], [ %63, %60 ]
  %9 = phi i32 [ 0, %3 ], [ %62, %60 ]
  %10 = getelementptr inbounds ptr, ptr %7, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load i32, ptr %11, align 8, !tbaa !71
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %24

14:                                               ; preds = %6
  %15 = getelementptr inbounds i8, ptr %11, i64 40
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds i8, ptr %16, i64 6380
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %16, i64 6376
  %22 = load i32, ptr %21, align 8, !tbaa !70
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %54, label %27

24:                                               ; preds = %6
  %25 = and i32 %12, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24, %20, %14
  %28 = getelementptr inbounds i8, ptr %11, i64 48
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %29, i64 6380
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %29, i64 6376
  %37 = load i32, ptr %36, align 8, !tbaa !70
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %35, %31, %27, %24
  %40 = and i32 %12, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %11, i64 56
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %44, i64 6380
  %48 = load i32, ptr %47, align 4, !tbaa !69
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %44, i64 6376
  %52 = load i32, ptr %51, align 8, !tbaa !70
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %20, %35, %50
  %55 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %56 = add i32 %9, 1
  %57 = zext i32 %9 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  store ptr %11, ptr %58, align 8, !tbaa !6
  %59 = load ptr, ptr @dpb, align 8, !tbaa !33
  br label %60

60:                                               ; preds = %50, %46, %42, %39, %54
  %61 = phi ptr [ %59, %54 ], [ %7, %39 ], [ %7, %42 ], [ %7, %46 ], [ %7, %50 ]
  %62 = phi i32 [ %56, %54 ], [ %9, %39 ], [ %9, %42 ], [ %9, %46 ], [ %9, %50 ]
  %63 = add nuw nsw i64 %8, 1
  %64 = icmp eq i64 %63, %4
  br i1 %64, label %65, label %6

65:                                               ; preds = %60, %0
  %66 = phi i32 [ 0, %0 ], [ %62, %60 ]
  store i32 %66, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %67 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = zext i32 %66 to i64
  %71 = zext i32 %67 to i64
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ %70, %69 ], [ %75, %72 ]
  %74 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %75 = add nuw nsw i64 %73, 1
  %76 = getelementptr inbounds ptr, ptr %74, i64 %73
  store ptr null, ptr %76, align 8, !tbaa !6
  %77 = icmp eq i64 %75, %71
  br i1 %77, label %78, label %72

78:                                               ; preds = %72, %65
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @update_ltref_list() local_unnamed_addr #8 {
  %1 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %65, label %3

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  %5 = load ptr, ptr @dpb, align 8, !tbaa !33
  br label %6

6:                                                ; preds = %3, %60
  %7 = phi ptr [ %5, %3 ], [ %61, %60 ]
  %8 = phi i64 [ 0, %3 ], [ %63, %60 ]
  %9 = phi i32 [ 0, %3 ], [ %62, %60 ]
  %10 = getelementptr inbounds ptr, ptr %7, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load i32, ptr %11, align 8, !tbaa !71
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %24

14:                                               ; preds = %6
  %15 = getelementptr inbounds i8, ptr %11, i64 40
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds i8, ptr %16, i64 6380
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %16, i64 6376
  %22 = load i32, ptr %21, align 8, !tbaa !70
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %54

24:                                               ; preds = %6
  %25 = and i32 %12, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24, %20, %14
  %28 = getelementptr inbounds i8, ptr %11, i64 48
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %29, i64 6380
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %29, i64 6376
  %37 = load i32, ptr %36, align 8, !tbaa !70
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %35, %31, %27, %24
  %40 = and i32 %12, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %11, i64 56
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %44, i64 6380
  %48 = load i32, ptr %47, align 4, !tbaa !69
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %44, i64 6376
  %52 = load i32, ptr %51, align 8, !tbaa !70
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %20, %35, %50
  %55 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %56 = add i32 %9, 1
  %57 = zext i32 %9 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  store ptr %11, ptr %58, align 8, !tbaa !6
  %59 = load ptr, ptr @dpb, align 8, !tbaa !33
  br label %60

60:                                               ; preds = %50, %46, %42, %39, %54
  %61 = phi ptr [ %59, %54 ], [ %7, %39 ], [ %7, %42 ], [ %7, %46 ], [ %7, %50 ]
  %62 = phi i32 [ %56, %54 ], [ %9, %39 ], [ %9, %42 ], [ %9, %46 ], [ %9, %50 ]
  %63 = add nuw nsw i64 %8, 1
  %64 = icmp eq i64 %63, %4
  br i1 %64, label %65, label %6

65:                                               ; preds = %60, %0
  %66 = phi i32 [ 0, %0 ], [ %62, %60 ]
  store i32 %66, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %67 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = zext i32 %66 to i64
  %71 = zext i32 %67 to i64
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ %70, %69 ], [ %75, %72 ]
  %74 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %75 = add nuw nsw i64 %73, 1
  %76 = getelementptr inbounds ptr, ptr %74, i64 %73
  store ptr null, ptr %76, align 8, !tbaa !6
  %77 = icmp eq i64 %75, %71
  br i1 %77, label %78, label %72

78:                                               ; preds = %72, %65
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @mm_update_max_long_term_frame_idx(i32 noundef signext %0) local_unnamed_addr #8 {
  %2 = add nsw i32 %0, -1
  store i32 %2, ptr getelementptr inbounds (i8, ptr @dpb, i64 44), align 4, !tbaa !90
  %3 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %7 = zext i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %59
  %9 = phi i64 [ 0, %5 ], [ %60, %59 ]
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 28
  %13 = load i32, ptr %12, align 4, !tbaa !86
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %59, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %11, align 8, !tbaa !71
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %11, i64 48
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %21, i64 6380
  store i32 0, ptr %24, align 4, !tbaa !69
  %25 = getelementptr inbounds i8, ptr %21, i64 6376
  store i32 0, ptr %25, align 8, !tbaa !70
  br label %26

26:                                               ; preds = %23, %19, %15
  %27 = and i32 %16, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %11, i64 56
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %31, i64 6380
  store i32 0, ptr %34, align 4, !tbaa !69
  %35 = getelementptr inbounds i8, ptr %31, i64 6376
  store i32 0, ptr %35, align 8, !tbaa !70
  br label %36

36:                                               ; preds = %33, %29, %26
  %37 = icmp eq i32 %16, 3
  br i1 %37, label %38, label %56

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %11, i64 48
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %11, i64 56
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %40, i64 6380
  store i32 0, ptr %47, align 4, !tbaa !69
  %48 = getelementptr inbounds i8, ptr %40, i64 6376
  store i32 0, ptr %48, align 8, !tbaa !70
  %49 = getelementptr inbounds i8, ptr %44, i64 6380
  store i32 0, ptr %49, align 4, !tbaa !69
  %50 = getelementptr inbounds i8, ptr %44, i64 6376
  store i32 0, ptr %50, align 8, !tbaa !70
  br label %51

51:                                               ; preds = %46, %42, %38
  %52 = getelementptr inbounds i8, ptr %11, i64 40
  %53 = load ptr, ptr %52, align 8, !tbaa !39
  %54 = getelementptr inbounds i8, ptr %53, i64 6380
  store i32 0, ptr %54, align 4, !tbaa !69
  %55 = getelementptr inbounds i8, ptr %53, i64 6376
  store i32 0, ptr %55, align 8, !tbaa !70
  br label %56

56:                                               ; preds = %36, %51
  %57 = getelementptr inbounds i8, ptr %11, i64 4
  store i32 0, ptr %57, align 4, !tbaa !77
  %58 = getelementptr inbounds i8, ptr %11, i64 8
  store i32 0, ptr %58, align 8, !tbaa !78
  br label %59

59:                                               ; preds = %8, %56
  %60 = add nuw nsw i64 %9, 1
  %61 = icmp eq i64 %60, %7
  br i1 %61, label %62, label %8

62:                                               ; preds = %59, %1
  ret void
}

; Function Attrs: nounwind
define dso_local void @store_picture_in_dpb(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef signext 2299, ptr noundef nonnull @__PRETTY_FUNCTION__.store_picture_in_dpb) #17
  unreachable

4:                                                ; preds = %1
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 90316
  %7 = load i32, ptr %6, align 4, !tbaa !91
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds i8, ptr %0, i64 6380
  store i32 %9, ptr %10, align 4, !tbaa !69
  %11 = getelementptr inbounds i8, ptr %5, i64 90468
  store i32 0, ptr %11, align 4, !tbaa !38
  %12 = getelementptr inbounds i8, ptr %5, i64 28
  %13 = load i32, ptr %12, align 4, !tbaa !89
  %14 = icmp eq i32 %13, 2
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds i8, ptr %5, i64 90464
  store i32 %15, ptr %16, align 8, !tbaa !92
  %17 = getelementptr inbounds i8, ptr %5, i64 31560
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = getelementptr inbounds i8, ptr %18, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !94
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %97, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds i8, ptr %5, i64 90324
  %24 = load i32, ptr %23, align 4, !tbaa !96
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %85, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %60, %26
  %30 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %29
  %33 = zext i32 %30 to i64
  br label %72

34:                                               ; preds = %26, %60
  %35 = phi i64 [ %63, %60 ], [ 0, %26 ]
  %36 = load ptr, ptr @dpb, align 8, !tbaa !33
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %38, i64 40
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @free_storable_picture(ptr noundef nonnull %42)
  store ptr null, ptr %41, align 8, !tbaa !39
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds i8, ptr %38, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @free_storable_picture(ptr noundef nonnull %47)
  store ptr null, ptr %46, align 8, !tbaa !41
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds i8, ptr %38, i64 56
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @free_storable_picture(ptr noundef nonnull %52)
  br label %55

55:                                               ; preds = %54, %50
  tail call void @free(ptr noundef nonnull %38) #15
  br label %56

56:                                               ; preds = %55, %34
  %57 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #15
  br label %60

60:                                               ; preds = %59, %56
  %61 = load ptr, ptr @dpb, align 8, !tbaa !33
  %62 = getelementptr inbounds ptr, ptr %61, i64 %35
  store ptr %57, ptr %62, align 8, !tbaa !6
  %63 = add nuw nsw i64 %35, 1
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %34, label %29

67:                                               ; preds = %72, %29
  %68 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %67
  %71 = zext i32 %68 to i64
  br label %78

72:                                               ; preds = %72, %32
  %73 = phi i64 [ 0, %32 ], [ %76, %72 ]
  %74 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %75 = getelementptr inbounds ptr, ptr %74, i64 %73
  store ptr null, ptr %75, align 8, !tbaa !6
  %76 = add nuw nsw i64 %73, 1
  %77 = icmp eq i64 %76, %33
  br i1 %77, label %67, label %72

78:                                               ; preds = %78, %70
  %79 = phi i64 [ 0, %70 ], [ %82, %78 ]
  %80 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %81 = getelementptr inbounds ptr, ptr %80, i64 %79
  store ptr null, ptr %81, align 8, !tbaa !6
  %82 = add nuw nsw i64 %79, 1
  %83 = icmp eq i64 %82, %71
  br i1 %83, label %84, label %78

84:                                               ; preds = %78, %67
  store i32 0, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  br label %86

85:                                               ; preds = %22
  tail call void @flush_dpb()
  br label %86

86:                                               ; preds = %85, %84
  store ptr null, ptr getelementptr inbounds (i8, ptr @dpb, i64 56), align 8, !tbaa !32
  tail call void @update_ref_list()
  tail call void @update_ltref_list()
  store i32 -2147483648, ptr getelementptr inbounds (i8, ptr @dpb, i64 40), align 8, !tbaa !37
  %87 = load ptr, ptr @img, align 8, !tbaa !6
  %88 = getelementptr inbounds i8, ptr %87, i64 90328
  %89 = load i32, ptr %88, align 8, !tbaa !97
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds i8, ptr %0, i64 6372
  store i32 0, ptr %92, align 4, !tbaa !75
  br label %93

93:                                               ; preds = %86, %91
  %94 = phi i32 [ 0, %91 ], [ -1, %86 ]
  %95 = phi i32 [ 1, %91 ], [ 0, %86 ]
  store i32 %94, ptr getelementptr inbounds (i8, ptr @dpb, i64 44), align 4
  %96 = getelementptr inbounds i8, ptr %0, i64 6376
  store i32 %95, ptr %96, align 8
  br label %861

97:                                               ; preds = %4
  br i1 %8, label %98, label %861

98:                                               ; preds = %97
  %99 = getelementptr inbounds i8, ptr %5, i64 90320
  %100 = load i32, ptr %99, align 8, !tbaa !98
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %861, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds i8, ptr %5, i64 90336
  %104 = load ptr, ptr %103, align 8, !tbaa !99
  %105 = icmp eq ptr %104, null
  br i1 %105, label %861, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds i8, ptr %0, i64 6364
  %108 = getelementptr inbounds i8, ptr %0, i64 6376
  %109 = getelementptr inbounds i8, ptr %0, i64 6372
  %110 = getelementptr inbounds i8, ptr %0, i64 6360
  br label %111

111:                                              ; preds = %819, %106
  %112 = phi ptr [ %5, %106 ], [ %824, %819 ]
  %113 = phi ptr [ %104, %106 ], [ %826, %819 ]
  %114 = load i32, ptr %113, align 8, !tbaa !100
  switch i32 %114, label %818 [
    i32 0, label %115
    i32 1, label %120
    i32 2, label %206
    i32 3, label %326
    i32 4, label %600
    i32 5, label %664
    i32 6, label %739
  ]

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, ptr %113, i64 24
  %117 = load ptr, ptr %116, align 8, !tbaa !102
  %118 = icmp eq ptr %117, null
  br i1 %118, label %819, label %119

119:                                              ; preds = %115
  tail call void @error(ptr noundef nonnull @.str.29, i32 noundef signext 500) #15
  br label %819

120:                                              ; preds = %111
  %121 = getelementptr inbounds i8, ptr %113, i64 4
  %122 = load i32, ptr %121, align 4, !tbaa !103
  %123 = load i32, ptr %0, align 8, !tbaa !47
  %124 = icmp eq i32 %123, 0
  %125 = load i32, ptr %110, align 8, !tbaa !104
  %126 = shl i32 %125, 1
  %127 = or disjoint i32 %126, 1
  %128 = select i1 %124, i32 %125, i32 %127
  %129 = xor i32 %122, -1
  %130 = add i32 %128, %129
  %131 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %205, label %133

133:                                              ; preds = %120
  %134 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8
  %135 = zext i32 %131 to i64
  br label %136

136:                                              ; preds = %202, %133
  %137 = phi i64 [ 0, %133 ], [ %203, %202 ]
  %138 = getelementptr inbounds ptr, ptr %134, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  %140 = getelementptr inbounds i8, ptr %139, i64 4
  %141 = load i32, ptr %140, align 4, !tbaa !77
  br i1 %124, label %142, label %155

142:                                              ; preds = %136
  %143 = icmp eq i32 %141, 3
  br i1 %143, label %144, label %202

144:                                              ; preds = %142
  %145 = getelementptr inbounds i8, ptr %139, i64 8
  %146 = load i32, ptr %145, align 8, !tbaa !78
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %202

148:                                              ; preds = %144
  %149 = getelementptr inbounds i8, ptr %139, i64 40
  %150 = load ptr, ptr %149, align 8, !tbaa !39
  %151 = getelementptr inbounds i8, ptr %150, i64 6364
  %152 = load i32, ptr %151, align 4, !tbaa !74
  %153 = icmp eq i32 %152, %130
  br i1 %153, label %154, label %202

154:                                              ; preds = %148
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %139)
  br label %205

155:                                              ; preds = %136
  %156 = and i32 %141, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %179, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds i8, ptr %139, i64 8
  %160 = load i32, ptr %159, align 8, !tbaa !78
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %158
  %164 = getelementptr inbounds i8, ptr %139, i64 48
  %165 = load ptr, ptr %164, align 8, !tbaa !41
  %166 = getelementptr inbounds i8, ptr %165, i64 6364
  %167 = load i32, ptr %166, align 4, !tbaa !74
  %168 = icmp eq i32 %167, %130
  br i1 %168, label %169, label %179

169:                                              ; preds = %163
  %170 = getelementptr inbounds i8, ptr %139, i64 4
  %171 = getelementptr inbounds i8, ptr %165, i64 6380
  store i32 0, ptr %171, align 4, !tbaa !69
  %172 = and i32 %141, 2
  store i32 %172, ptr %170, align 4, !tbaa !77
  %173 = load i32, ptr %139, align 8, !tbaa !71
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %175, label %205

175:                                              ; preds = %169
  %176 = getelementptr inbounds i8, ptr %139, i64 40
  %177 = load ptr, ptr %176, align 8, !tbaa !39
  %178 = getelementptr inbounds i8, ptr %177, i64 6380
  store i32 0, ptr %178, align 4, !tbaa !69
  br label %205

179:                                              ; preds = %163, %158, %155
  %180 = and i32 %141, 2
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %202, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, ptr %139, i64 8
  %184 = load i32, ptr %183, align 8, !tbaa !78
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %182
  %188 = getelementptr inbounds i8, ptr %139, i64 56
  %189 = load ptr, ptr %188, align 8, !tbaa !42
  %190 = getelementptr inbounds i8, ptr %189, i64 6364
  %191 = load i32, ptr %190, align 4, !tbaa !74
  %192 = icmp eq i32 %191, %130
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = getelementptr inbounds i8, ptr %139, i64 4
  %195 = getelementptr inbounds i8, ptr %189, i64 6380
  store i32 0, ptr %195, align 4, !tbaa !69
  store i32 %156, ptr %194, align 4, !tbaa !77
  %196 = load i32, ptr %139, align 8, !tbaa !71
  %197 = icmp eq i32 %196, 3
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = getelementptr inbounds i8, ptr %139, i64 40
  %200 = load ptr, ptr %199, align 8, !tbaa !39
  %201 = getelementptr inbounds i8, ptr %200, i64 6380
  store i32 0, ptr %201, align 4, !tbaa !69
  br label %205

202:                                              ; preds = %187, %182, %179, %148, %144, %142
  %203 = add nuw nsw i64 %137, 1
  %204 = icmp eq i64 %203, %135
  br i1 %204, label %205, label %136

205:                                              ; preds = %202, %198, %193, %175, %169, %154, %120
  tail call void @update_ref_list()
  br label %819

206:                                              ; preds = %111
  %207 = getelementptr inbounds i8, ptr %113, i64 8
  %208 = load i32, ptr %207, align 8, !tbaa !105
  %209 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %325, label %211

211:                                              ; preds = %206
  %212 = load i32, ptr %0, align 8, !tbaa !47
  %213 = icmp eq i32 %212, 0
  %214 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8
  %215 = zext i32 %209 to i64
  br label %216

216:                                              ; preds = %317, %211
  %217 = phi i64 [ 0, %211 ], [ %318, %317 ]
  %218 = getelementptr inbounds ptr, ptr %214, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  %220 = getelementptr inbounds i8, ptr %219, i64 4
  %221 = load i32, ptr %220, align 4, !tbaa !77
  br i1 %213, label %222, label %274

222:                                              ; preds = %216
  %223 = icmp eq i32 %221, 3
  br i1 %223, label %224, label %317

224:                                              ; preds = %222
  %225 = getelementptr inbounds i8, ptr %219, i64 8
  %226 = load i32, ptr %225, align 8, !tbaa !78
  %227 = icmp eq i32 %226, 3
  br i1 %227, label %228, label %317

228:                                              ; preds = %224
  %229 = getelementptr inbounds i8, ptr %219, i64 40
  %230 = load ptr, ptr %229, align 8, !tbaa !39
  %231 = getelementptr inbounds i8, ptr %230, i64 6368
  %232 = load i32, ptr %231, align 8, !tbaa !76
  %233 = icmp eq i32 %232, %208
  br i1 %233, label %234, label %317

234:                                              ; preds = %228
  %235 = load i32, ptr %219, align 8, !tbaa !71
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds i8, ptr %219, i64 48
  %240 = load ptr, ptr %239, align 8, !tbaa !41
  %241 = icmp eq ptr %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds i8, ptr %240, i64 6380
  store i32 0, ptr %243, align 4, !tbaa !69
  %244 = getelementptr inbounds i8, ptr %240, i64 6376
  store i32 0, ptr %244, align 8, !tbaa !70
  br label %245

245:                                              ; preds = %242, %238, %234
  %246 = and i32 %235, 2
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, ptr %219, i64 56
  %250 = load ptr, ptr %249, align 8, !tbaa !42
  %251 = icmp eq ptr %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds i8, ptr %250, i64 6380
  store i32 0, ptr %253, align 4, !tbaa !69
  %254 = getelementptr inbounds i8, ptr %250, i64 6376
  store i32 0, ptr %254, align 8, !tbaa !70
  br label %255

255:                                              ; preds = %252, %248, %245
  %256 = icmp eq i32 %235, 3
  br i1 %256, label %257, label %273

257:                                              ; preds = %255
  %258 = getelementptr inbounds i8, ptr %219, i64 48
  %259 = load ptr, ptr %258, align 8, !tbaa !41
  %260 = icmp eq ptr %259, null
  br i1 %260, label %270, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds i8, ptr %219, i64 56
  %263 = load ptr, ptr %262, align 8, !tbaa !42
  %264 = icmp eq ptr %263, null
  br i1 %264, label %270, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds i8, ptr %259, i64 6380
  store i32 0, ptr %266, align 4, !tbaa !69
  %267 = getelementptr inbounds i8, ptr %259, i64 6376
  store i32 0, ptr %267, align 8, !tbaa !70
  %268 = getelementptr inbounds i8, ptr %263, i64 6380
  store i32 0, ptr %268, align 4, !tbaa !69
  %269 = getelementptr inbounds i8, ptr %263, i64 6376
  store i32 0, ptr %269, align 8, !tbaa !70
  br label %270

270:                                              ; preds = %265, %261, %257
  %271 = getelementptr inbounds i8, ptr %230, i64 6380
  store i32 0, ptr %271, align 4, !tbaa !69
  %272 = getelementptr inbounds i8, ptr %230, i64 6376
  store i32 0, ptr %272, align 8, !tbaa !70
  br label %273

273:                                              ; preds = %270, %255
  store i32 0, ptr %220, align 4, !tbaa !77
  store i32 0, ptr %225, align 8, !tbaa !78
  br label %317

274:                                              ; preds = %216
  %275 = and i32 %221, 1
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %296, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %219, i64 8
  %279 = load i32, ptr %278, align 8, !tbaa !78
  %280 = and i32 %279, 1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %296, label %282

282:                                              ; preds = %277
  %283 = getelementptr inbounds i8, ptr %219, i64 48
  %284 = load ptr, ptr %283, align 8, !tbaa !41
  %285 = getelementptr inbounds i8, ptr %284, i64 6368
  %286 = load i32, ptr %285, align 8, !tbaa !76
  %287 = icmp eq i32 %286, %208
  br i1 %287, label %288, label %296

288:                                              ; preds = %282
  %289 = getelementptr inbounds i8, ptr %219, i64 8
  %290 = getelementptr inbounds i8, ptr %284, i64 6380
  store i32 0, ptr %290, align 4, !tbaa !69
  %291 = getelementptr inbounds i8, ptr %284, i64 6376
  store i32 0, ptr %291, align 8, !tbaa !70
  %292 = and i32 %221, 2
  store i32 %292, ptr %220, align 4, !tbaa !77
  %293 = and i32 %279, 2
  store i32 %293, ptr %289, align 8, !tbaa !78
  %294 = load i32, ptr %219, align 8, !tbaa !71
  %295 = icmp eq i32 %294, 3
  br i1 %295, label %320, label %325

296:                                              ; preds = %282, %277, %274
  %297 = and i32 %221, 2
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %317, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %219, i64 8
  %301 = load i32, ptr %300, align 8, !tbaa !78
  %302 = and i32 %301, 2
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %317, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds i8, ptr %219, i64 56
  %306 = load ptr, ptr %305, align 8, !tbaa !42
  %307 = getelementptr inbounds i8, ptr %306, i64 6368
  %308 = load i32, ptr %307, align 8, !tbaa !76
  %309 = icmp eq i32 %308, %208
  br i1 %309, label %310, label %317

310:                                              ; preds = %304
  %311 = getelementptr inbounds i8, ptr %219, i64 8
  %312 = getelementptr inbounds i8, ptr %306, i64 6380
  store i32 0, ptr %312, align 4, !tbaa !69
  %313 = getelementptr inbounds i8, ptr %306, i64 6376
  store i32 0, ptr %313, align 8, !tbaa !70
  store i32 %275, ptr %220, align 4, !tbaa !77
  %314 = and i32 %301, 1
  store i32 %314, ptr %311, align 8, !tbaa !78
  %315 = load i32, ptr %219, align 8, !tbaa !71
  %316 = icmp eq i32 %315, 3
  br i1 %316, label %320, label %325

317:                                              ; preds = %304, %299, %296, %273, %228, %224, %222
  %318 = add nuw nsw i64 %217, 1
  %319 = icmp eq i64 %318, %215
  br i1 %319, label %325, label %216

320:                                              ; preds = %310, %288
  %321 = getelementptr inbounds i8, ptr %219, i64 40
  %322 = load ptr, ptr %321, align 8, !tbaa !39
  %323 = getelementptr inbounds i8, ptr %322, i64 6380
  store i32 0, ptr %323, align 4, !tbaa !69
  %324 = getelementptr inbounds i8, ptr %322, i64 6376
  store i32 0, ptr %324, align 8, !tbaa !70
  br label %325

325:                                              ; preds = %317, %320, %310, %288, %206
  tail call void @update_ltref_list()
  br label %819

326:                                              ; preds = %111
  %327 = getelementptr inbounds i8, ptr %113, i64 4
  %328 = load i32, ptr %327, align 4, !tbaa !103
  %329 = getelementptr inbounds i8, ptr %113, i64 12
  %330 = load i32, ptr %329, align 4, !tbaa !106
  %331 = load i32, ptr %0, align 8, !tbaa !47
  %332 = icmp eq i32 %331, 0
  %333 = load i32, ptr %110, align 8, !tbaa !104
  %334 = shl i32 %333, 1
  %335 = or disjoint i32 %334, 1
  %336 = select i1 %332, i32 %333, i32 %335
  %337 = xor i32 %328, -1
  %338 = add i32 %336, %337
  br i1 %332, label %345, label %339

339:                                              ; preds = %326
  %340 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %431, label %342

342:                                              ; preds = %339
  %343 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %344 = zext i32 %340 to i64
  br label %405

345:                                              ; preds = %326
  %346 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %435, label %348

348:                                              ; preds = %345
  %349 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %350 = zext i32 %346 to i64
  br label %351

351:                                              ; preds = %402, %348
  %352 = phi i64 [ 0, %348 ], [ %403, %402 ]
  %353 = getelementptr inbounds ptr, ptr %349, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !6
  %355 = getelementptr inbounds i8, ptr %354, i64 28
  %356 = load i32, ptr %355, align 4, !tbaa !86
  %357 = icmp eq i32 %356, %330
  br i1 %357, label %358, label %402

358:                                              ; preds = %351
  %359 = load i32, ptr %354, align 8, !tbaa !71
  %360 = and i32 %359, 1
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %369, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds i8, ptr %354, i64 48
  %364 = load ptr, ptr %363, align 8, !tbaa !41
  %365 = icmp eq ptr %364, null
  br i1 %365, label %369, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds i8, ptr %364, i64 6380
  store i32 0, ptr %367, align 4, !tbaa !69
  %368 = getelementptr inbounds i8, ptr %364, i64 6376
  store i32 0, ptr %368, align 8, !tbaa !70
  br label %369

369:                                              ; preds = %366, %362, %358
  %370 = and i32 %359, 2
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %379, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds i8, ptr %354, i64 56
  %374 = load ptr, ptr %373, align 8, !tbaa !42
  %375 = icmp eq ptr %374, null
  br i1 %375, label %379, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %374, i64 6380
  store i32 0, ptr %377, align 4, !tbaa !69
  %378 = getelementptr inbounds i8, ptr %374, i64 6376
  store i32 0, ptr %378, align 8, !tbaa !70
  br label %379

379:                                              ; preds = %376, %372, %369
  %380 = icmp eq i32 %359, 3
  br i1 %380, label %381, label %399

381:                                              ; preds = %379
  %382 = getelementptr inbounds i8, ptr %354, i64 48
  %383 = load ptr, ptr %382, align 8, !tbaa !41
  %384 = icmp eq ptr %383, null
  br i1 %384, label %394, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds i8, ptr %354, i64 56
  %387 = load ptr, ptr %386, align 8, !tbaa !42
  %388 = icmp eq ptr %387, null
  br i1 %388, label %394, label %389

389:                                              ; preds = %385
  %390 = getelementptr inbounds i8, ptr %383, i64 6380
  store i32 0, ptr %390, align 4, !tbaa !69
  %391 = getelementptr inbounds i8, ptr %383, i64 6376
  store i32 0, ptr %391, align 8, !tbaa !70
  %392 = getelementptr inbounds i8, ptr %387, i64 6380
  store i32 0, ptr %392, align 4, !tbaa !69
  %393 = getelementptr inbounds i8, ptr %387, i64 6376
  store i32 0, ptr %393, align 8, !tbaa !70
  br label %394

394:                                              ; preds = %389, %385, %381
  %395 = getelementptr inbounds i8, ptr %354, i64 40
  %396 = load ptr, ptr %395, align 8, !tbaa !39
  %397 = getelementptr inbounds i8, ptr %396, i64 6380
  store i32 0, ptr %397, align 4, !tbaa !69
  %398 = getelementptr inbounds i8, ptr %396, i64 6376
  store i32 0, ptr %398, align 8, !tbaa !70
  br label %399

399:                                              ; preds = %394, %379
  %400 = getelementptr inbounds i8, ptr %354, i64 4
  store i32 0, ptr %400, align 4, !tbaa !77
  %401 = getelementptr inbounds i8, ptr %354, i64 8
  store i32 0, ptr %401, align 8, !tbaa !78
  br label %402

402:                                              ; preds = %399, %351
  %403 = add nuw nsw i64 %352, 1
  %404 = icmp eq i64 %403, %350
  br i1 %404, label %435, label %351

405:                                              ; preds = %428, %342
  %406 = phi i64 [ 0, %342 ], [ %429, %428 ]
  %407 = getelementptr inbounds ptr, ptr %343, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !6
  %409 = getelementptr inbounds i8, ptr %408, i64 4
  %410 = load i32, ptr %409, align 4, !tbaa !77
  %411 = and i32 %410, 1
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %419, label %413

413:                                              ; preds = %405
  %414 = getelementptr inbounds i8, ptr %408, i64 48
  %415 = load ptr, ptr %414, align 8, !tbaa !41
  %416 = getelementptr inbounds i8, ptr %415, i64 6364
  %417 = load i32, ptr %416, align 4, !tbaa !74
  %418 = icmp eq i32 %417, %338
  br i1 %418, label %432, label %419

419:                                              ; preds = %413, %405
  %420 = and i32 %410, 2
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %428, label %422

422:                                              ; preds = %419
  %423 = getelementptr inbounds i8, ptr %408, i64 56
  %424 = load ptr, ptr %423, align 8, !tbaa !42
  %425 = getelementptr inbounds i8, ptr %424, i64 6364
  %426 = load i32, ptr %425, align 4, !tbaa !74
  %427 = icmp eq i32 %426, %338
  br i1 %427, label %432, label %428

428:                                              ; preds = %422, %419
  %429 = add nuw nsw i64 %406, 1
  %430 = icmp eq i64 %429, %344
  br i1 %430, label %431, label %405

431:                                              ; preds = %428, %339
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef signext 200) #15
  br label %432

432:                                              ; preds = %422, %413, %431
  %433 = phi i32 [ 0, %431 ], [ 1, %413 ], [ 2, %422 ]
  tail call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(i32 noundef signext %433, i32 noundef signext %330, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %338)
  %434 = load i32, ptr %0, align 8, !tbaa !47
  switch i32 %434, label %483 [
    i32 0, label %435
    i32 1, label %484
  ]

435:                                              ; preds = %402, %432, %345
  %436 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %481, label %438

438:                                              ; preds = %435
  %439 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %440 = zext i32 %436 to i64
  br label %441

441:                                              ; preds = %478, %438
  %442 = phi i64 [ 0, %438 ], [ %479, %478 ]
  %443 = getelementptr inbounds ptr, ptr %439, i64 %442
  %444 = load ptr, ptr %443, align 8, !tbaa !6
  %445 = getelementptr inbounds i8, ptr %444, i64 4
  %446 = load i32, ptr %445, align 4, !tbaa !77
  %447 = icmp eq i32 %446, 3
  br i1 %447, label %448, label %478

448:                                              ; preds = %441
  %449 = getelementptr inbounds i8, ptr %444, i64 40
  %450 = load ptr, ptr %449, align 8, !tbaa !39
  %451 = getelementptr inbounds i8, ptr %450, i64 6376
  %452 = load i32, ptr %451, align 8, !tbaa !70
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %478

454:                                              ; preds = %448
  %455 = getelementptr inbounds i8, ptr %450, i64 6364
  %456 = load i32, ptr %455, align 4, !tbaa !74
  %457 = icmp eq i32 %456, %338
  br i1 %457, label %458, label %478

458:                                              ; preds = %454
  %459 = getelementptr inbounds i8, ptr %450, i64 6372
  store i32 %330, ptr %459, align 4, !tbaa !75
  %460 = getelementptr inbounds i8, ptr %444, i64 28
  store i32 %330, ptr %460, align 4, !tbaa !86
  %461 = getelementptr inbounds i8, ptr %450, i64 6368
  store i32 %330, ptr %461, align 8, !tbaa !76
  store i32 1, ptr %451, align 8, !tbaa !70
  %462 = getelementptr inbounds i8, ptr %444, i64 48
  %463 = load ptr, ptr %462, align 8, !tbaa !41
  %464 = icmp eq ptr %463, null
  br i1 %464, label %476, label %465

465:                                              ; preds = %458
  %466 = getelementptr inbounds i8, ptr %444, i64 56
  %467 = load ptr, ptr %466, align 8, !tbaa !42
  %468 = icmp eq ptr %467, null
  br i1 %468, label %476, label %469

469:                                              ; preds = %465
  %470 = getelementptr inbounds i8, ptr %467, i64 6372
  store i32 %330, ptr %470, align 4, !tbaa !75
  %471 = getelementptr inbounds i8, ptr %463, i64 6372
  store i32 %330, ptr %471, align 4, !tbaa !75
  %472 = getelementptr inbounds i8, ptr %463, i64 6368
  store i32 %330, ptr %472, align 8, !tbaa !76
  %473 = getelementptr inbounds i8, ptr %467, i64 6368
  store i32 %330, ptr %473, align 8, !tbaa !76
  %474 = getelementptr inbounds i8, ptr %467, i64 6376
  store i32 1, ptr %474, align 8, !tbaa !70
  %475 = getelementptr inbounds i8, ptr %463, i64 6376
  store i32 1, ptr %475, align 8, !tbaa !70
  br label %476

476:                                              ; preds = %469, %465, %458
  %477 = getelementptr inbounds i8, ptr %444, i64 8
  store i32 3, ptr %477, align 8, !tbaa !78
  br label %599

478:                                              ; preds = %454, %448, %441
  %479 = add nuw nsw i64 %442, 1
  %480 = icmp eq i64 %479, %440
  br i1 %480, label %481, label %441

481:                                              ; preds = %478, %435
  %482 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  br label %599

483:                                              ; preds = %432
  br label %484

484:                                              ; preds = %483, %432
  %485 = phi i32 [ 0, %483 ], [ %434, %432 ]
  %486 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %597, label %488

488:                                              ; preds = %484
  %489 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %490 = zext i32 %486 to i64
  br label %491

491:                                              ; preds = %594, %488
  %492 = phi i64 [ 0, %488 ], [ %595, %594 ]
  %493 = getelementptr inbounds ptr, ptr %489, i64 %492
  %494 = load ptr, ptr %493, align 8, !tbaa !6
  %495 = getelementptr inbounds i8, ptr %494, i64 4
  %496 = load i32, ptr %495, align 4, !tbaa !77
  %497 = and i32 %496, 1
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %545, label %499

499:                                              ; preds = %491
  %500 = getelementptr inbounds i8, ptr %494, i64 48
  %501 = load ptr, ptr %500, align 8, !tbaa !41
  %502 = getelementptr inbounds i8, ptr %501, i64 6376
  %503 = load i32, ptr %502, align 8, !tbaa !70
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %545

505:                                              ; preds = %499
  %506 = getelementptr inbounds i8, ptr %501, i64 6364
  %507 = load i32, ptr %506, align 4, !tbaa !74
  %508 = icmp eq i32 %507, %338
  br i1 %508, label %509, label %545

509:                                              ; preds = %505
  %510 = getelementptr inbounds i8, ptr %494, i64 8
  %511 = load i32, ptr %510, align 8, !tbaa !78
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %526, label %513

513:                                              ; preds = %509
  %514 = getelementptr inbounds i8, ptr %494, i64 28
  %515 = load i32, ptr %514, align 4, !tbaa !86
  %516 = icmp eq i32 %515, %330
  br i1 %516, label %526, label %517

517:                                              ; preds = %513
  %518 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  %519 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %520 = getelementptr inbounds ptr, ptr %519, i64 %492
  %521 = load ptr, ptr %520, align 8, !tbaa !6
  %522 = getelementptr inbounds i8, ptr %521, i64 48
  %523 = load ptr, ptr %522, align 8, !tbaa !41
  %524 = getelementptr inbounds i8, ptr %521, i64 8
  %525 = load i32, ptr %524, align 8, !tbaa !78
  br label %526

526:                                              ; preds = %517, %513, %509
  %527 = phi i32 [ %525, %517 ], [ %511, %513 ], [ 0, %509 ]
  %528 = phi ptr [ %523, %517 ], [ %501, %513 ], [ %501, %509 ]
  %529 = phi ptr [ %521, %517 ], [ %494, %513 ], [ %494, %509 ]
  %530 = getelementptr inbounds i8, ptr %528, i64 6372
  store i32 %330, ptr %530, align 4, !tbaa !75
  %531 = getelementptr inbounds i8, ptr %529, i64 28
  store i32 %330, ptr %531, align 4, !tbaa !86
  %532 = shl nsw i32 %330, 1
  %533 = or disjoint i32 %485, %532
  %534 = getelementptr inbounds i8, ptr %528, i64 6368
  store i32 %533, ptr %534, align 8, !tbaa !76
  %535 = getelementptr inbounds i8, ptr %528, i64 6376
  store i32 1, ptr %535, align 8, !tbaa !70
  %536 = getelementptr inbounds i8, ptr %529, i64 8
  %537 = or i32 %527, 1
  store i32 %537, ptr %536, align 8, !tbaa !78
  %538 = icmp eq i32 %537, 3
  br i1 %538, label %539, label %599

539:                                              ; preds = %526
  %540 = getelementptr inbounds i8, ptr %529, i64 40
  %541 = load ptr, ptr %540, align 8, !tbaa !39
  %542 = getelementptr inbounds i8, ptr %541, i64 6376
  store i32 1, ptr %542, align 8, !tbaa !70
  %543 = getelementptr inbounds i8, ptr %541, i64 6368
  store i32 %330, ptr %543, align 8, !tbaa !76
  %544 = getelementptr inbounds i8, ptr %541, i64 6372
  store i32 %330, ptr %544, align 4, !tbaa !75
  br label %599

545:                                              ; preds = %505, %499, %491
  %546 = and i32 %496, 2
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %594, label %548

548:                                              ; preds = %545
  %549 = getelementptr inbounds i8, ptr %494, i64 56
  %550 = load ptr, ptr %549, align 8, !tbaa !42
  %551 = getelementptr inbounds i8, ptr %550, i64 6376
  %552 = load i32, ptr %551, align 8, !tbaa !70
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %594

554:                                              ; preds = %548
  %555 = getelementptr inbounds i8, ptr %550, i64 6364
  %556 = load i32, ptr %555, align 4, !tbaa !74
  %557 = icmp eq i32 %556, %338
  br i1 %557, label %558, label %594

558:                                              ; preds = %554
  %559 = getelementptr inbounds i8, ptr %494, i64 8
  %560 = load i32, ptr %559, align 8, !tbaa !78
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %575, label %562

562:                                              ; preds = %558
  %563 = getelementptr inbounds i8, ptr %494, i64 28
  %564 = load i32, ptr %563, align 4, !tbaa !86
  %565 = icmp eq i32 %564, %330
  br i1 %565, label %575, label %566

566:                                              ; preds = %562
  %567 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  %568 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %569 = getelementptr inbounds ptr, ptr %568, i64 %492
  %570 = load ptr, ptr %569, align 8, !tbaa !6
  %571 = getelementptr inbounds i8, ptr %570, i64 56
  %572 = load ptr, ptr %571, align 8, !tbaa !42
  %573 = getelementptr inbounds i8, ptr %570, i64 8
  %574 = load i32, ptr %573, align 8, !tbaa !78
  br label %575

575:                                              ; preds = %566, %562, %558
  %576 = phi i32 [ %574, %566 ], [ %560, %562 ], [ 0, %558 ]
  %577 = phi ptr [ %572, %566 ], [ %550, %562 ], [ %550, %558 ]
  %578 = phi ptr [ %570, %566 ], [ %494, %562 ], [ %494, %558 ]
  %579 = getelementptr inbounds i8, ptr %577, i64 6372
  store i32 %330, ptr %579, align 4, !tbaa !75
  %580 = getelementptr inbounds i8, ptr %578, i64 28
  store i32 %330, ptr %580, align 4, !tbaa !86
  %581 = shl nsw i32 %330, 1
  %582 = or disjoint i32 %485, %581
  %583 = getelementptr inbounds i8, ptr %577, i64 6368
  store i32 %582, ptr %583, align 8, !tbaa !76
  %584 = getelementptr inbounds i8, ptr %577, i64 6376
  store i32 1, ptr %584, align 8, !tbaa !70
  %585 = getelementptr inbounds i8, ptr %578, i64 8
  %586 = or i32 %576, 2
  store i32 %586, ptr %585, align 8, !tbaa !78
  %587 = icmp eq i32 %586, 3
  br i1 %587, label %588, label %599

588:                                              ; preds = %575
  %589 = getelementptr inbounds i8, ptr %578, i64 40
  %590 = load ptr, ptr %589, align 8, !tbaa !39
  %591 = getelementptr inbounds i8, ptr %590, i64 6376
  store i32 1, ptr %591, align 8, !tbaa !70
  %592 = getelementptr inbounds i8, ptr %590, i64 6368
  store i32 %330, ptr %592, align 8, !tbaa !76
  %593 = getelementptr inbounds i8, ptr %590, i64 6372
  store i32 %330, ptr %593, align 4, !tbaa !75
  br label %599

594:                                              ; preds = %554, %548, %545
  %595 = add nuw nsw i64 %492, 1
  %596 = icmp eq i64 %595, %490
  br i1 %596, label %597, label %491

597:                                              ; preds = %594, %484
  %598 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %599

599:                                              ; preds = %597, %588, %575, %539, %526, %481, %476
  tail call void @update_ref_list()
  tail call void @update_ltref_list()
  br label %819

600:                                              ; preds = %111
  %601 = getelementptr inbounds i8, ptr %113, i64 16
  %602 = load i32, ptr %601, align 8, !tbaa !107
  %603 = add nsw i32 %602, -1
  store i32 %603, ptr getelementptr inbounds (i8, ptr @dpb, i64 44), align 4, !tbaa !90
  %604 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %663, label %606

606:                                              ; preds = %600
  %607 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %608 = zext i32 %604 to i64
  br label %609

609:                                              ; preds = %660, %606
  %610 = phi i64 [ 0, %606 ], [ %661, %660 ]
  %611 = getelementptr inbounds ptr, ptr %607, i64 %610
  %612 = load ptr, ptr %611, align 8, !tbaa !6
  %613 = getelementptr inbounds i8, ptr %612, i64 28
  %614 = load i32, ptr %613, align 4, !tbaa !86
  %615 = icmp slt i32 %614, %602
  br i1 %615, label %660, label %616

616:                                              ; preds = %609
  %617 = load i32, ptr %612, align 8, !tbaa !71
  %618 = and i32 %617, 1
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %627, label %620

620:                                              ; preds = %616
  %621 = getelementptr inbounds i8, ptr %612, i64 48
  %622 = load ptr, ptr %621, align 8, !tbaa !41
  %623 = icmp eq ptr %622, null
  br i1 %623, label %627, label %624

624:                                              ; preds = %620
  %625 = getelementptr inbounds i8, ptr %622, i64 6380
  store i32 0, ptr %625, align 4, !tbaa !69
  %626 = getelementptr inbounds i8, ptr %622, i64 6376
  store i32 0, ptr %626, align 8, !tbaa !70
  br label %627

627:                                              ; preds = %624, %620, %616
  %628 = and i32 %617, 2
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %637, label %630

630:                                              ; preds = %627
  %631 = getelementptr inbounds i8, ptr %612, i64 56
  %632 = load ptr, ptr %631, align 8, !tbaa !42
  %633 = icmp eq ptr %632, null
  br i1 %633, label %637, label %634

634:                                              ; preds = %630
  %635 = getelementptr inbounds i8, ptr %632, i64 6380
  store i32 0, ptr %635, align 4, !tbaa !69
  %636 = getelementptr inbounds i8, ptr %632, i64 6376
  store i32 0, ptr %636, align 8, !tbaa !70
  br label %637

637:                                              ; preds = %634, %630, %627
  %638 = icmp eq i32 %617, 3
  br i1 %638, label %639, label %657

639:                                              ; preds = %637
  %640 = getelementptr inbounds i8, ptr %612, i64 48
  %641 = load ptr, ptr %640, align 8, !tbaa !41
  %642 = icmp eq ptr %641, null
  br i1 %642, label %652, label %643

643:                                              ; preds = %639
  %644 = getelementptr inbounds i8, ptr %612, i64 56
  %645 = load ptr, ptr %644, align 8, !tbaa !42
  %646 = icmp eq ptr %645, null
  br i1 %646, label %652, label %647

647:                                              ; preds = %643
  %648 = getelementptr inbounds i8, ptr %641, i64 6380
  store i32 0, ptr %648, align 4, !tbaa !69
  %649 = getelementptr inbounds i8, ptr %641, i64 6376
  store i32 0, ptr %649, align 8, !tbaa !70
  %650 = getelementptr inbounds i8, ptr %645, i64 6380
  store i32 0, ptr %650, align 4, !tbaa !69
  %651 = getelementptr inbounds i8, ptr %645, i64 6376
  store i32 0, ptr %651, align 8, !tbaa !70
  br label %652

652:                                              ; preds = %647, %643, %639
  %653 = getelementptr inbounds i8, ptr %612, i64 40
  %654 = load ptr, ptr %653, align 8, !tbaa !39
  %655 = getelementptr inbounds i8, ptr %654, i64 6380
  store i32 0, ptr %655, align 4, !tbaa !69
  %656 = getelementptr inbounds i8, ptr %654, i64 6376
  store i32 0, ptr %656, align 8, !tbaa !70
  br label %657

657:                                              ; preds = %652, %637
  %658 = getelementptr inbounds i8, ptr %612, i64 4
  store i32 0, ptr %658, align 4, !tbaa !77
  %659 = getelementptr inbounds i8, ptr %612, i64 8
  store i32 0, ptr %659, align 8, !tbaa !78
  br label %660

660:                                              ; preds = %657, %609
  %661 = add nuw nsw i64 %610, 1
  %662 = icmp eq i64 %661, %608
  br i1 %662, label %663, label %609

663:                                              ; preds = %660, %600
  tail call void @update_ltref_list()
  br label %819

664:                                              ; preds = %111
  %665 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %676, label %667

667:                                              ; preds = %664, %667
  %668 = phi i64 [ %672, %667 ], [ 0, %664 ]
  %669 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %670 = getelementptr inbounds ptr, ptr %669, i64 %668
  %671 = load ptr, ptr %670, align 8, !tbaa !6
  tail call fastcc void @unmark_for_reference(ptr noundef %671)
  %672 = add nuw nsw i64 %668, 1
  %673 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %674 = zext i32 %673 to i64
  %675 = icmp ult i64 %672, %674
  br i1 %675, label %667, label %676

676:                                              ; preds = %667, %664
  tail call void @update_ref_list()
  store i32 -1, ptr getelementptr inbounds (i8, ptr @dpb, i64 44), align 4, !tbaa !90
  %677 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %736, label %679

679:                                              ; preds = %676
  %680 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %681 = zext i32 %677 to i64
  br label %682

682:                                              ; preds = %733, %679
  %683 = phi i64 [ 0, %679 ], [ %734, %733 ]
  %684 = getelementptr inbounds ptr, ptr %680, i64 %683
  %685 = load ptr, ptr %684, align 8, !tbaa !6
  %686 = getelementptr inbounds i8, ptr %685, i64 28
  %687 = load i32, ptr %686, align 4, !tbaa !86
  %688 = icmp slt i32 %687, 0
  br i1 %688, label %733, label %689

689:                                              ; preds = %682
  %690 = load i32, ptr %685, align 8, !tbaa !71
  %691 = and i32 %690, 1
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %700, label %693

693:                                              ; preds = %689
  %694 = getelementptr inbounds i8, ptr %685, i64 48
  %695 = load ptr, ptr %694, align 8, !tbaa !41
  %696 = icmp eq ptr %695, null
  br i1 %696, label %700, label %697

697:                                              ; preds = %693
  %698 = getelementptr inbounds i8, ptr %695, i64 6380
  store i32 0, ptr %698, align 4, !tbaa !69
  %699 = getelementptr inbounds i8, ptr %695, i64 6376
  store i32 0, ptr %699, align 8, !tbaa !70
  br label %700

700:                                              ; preds = %697, %693, %689
  %701 = and i32 %690, 2
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %710, label %703

703:                                              ; preds = %700
  %704 = getelementptr inbounds i8, ptr %685, i64 56
  %705 = load ptr, ptr %704, align 8, !tbaa !42
  %706 = icmp eq ptr %705, null
  br i1 %706, label %710, label %707

707:                                              ; preds = %703
  %708 = getelementptr inbounds i8, ptr %705, i64 6380
  store i32 0, ptr %708, align 4, !tbaa !69
  %709 = getelementptr inbounds i8, ptr %705, i64 6376
  store i32 0, ptr %709, align 8, !tbaa !70
  br label %710

710:                                              ; preds = %707, %703, %700
  %711 = icmp eq i32 %690, 3
  br i1 %711, label %712, label %730

712:                                              ; preds = %710
  %713 = getelementptr inbounds i8, ptr %685, i64 48
  %714 = load ptr, ptr %713, align 8, !tbaa !41
  %715 = icmp eq ptr %714, null
  br i1 %715, label %725, label %716

716:                                              ; preds = %712
  %717 = getelementptr inbounds i8, ptr %685, i64 56
  %718 = load ptr, ptr %717, align 8, !tbaa !42
  %719 = icmp eq ptr %718, null
  br i1 %719, label %725, label %720

720:                                              ; preds = %716
  %721 = getelementptr inbounds i8, ptr %714, i64 6380
  store i32 0, ptr %721, align 4, !tbaa !69
  %722 = getelementptr inbounds i8, ptr %714, i64 6376
  store i32 0, ptr %722, align 8, !tbaa !70
  %723 = getelementptr inbounds i8, ptr %718, i64 6380
  store i32 0, ptr %723, align 4, !tbaa !69
  %724 = getelementptr inbounds i8, ptr %718, i64 6376
  store i32 0, ptr %724, align 8, !tbaa !70
  br label %725

725:                                              ; preds = %720, %716, %712
  %726 = getelementptr inbounds i8, ptr %685, i64 40
  %727 = load ptr, ptr %726, align 8, !tbaa !39
  %728 = getelementptr inbounds i8, ptr %727, i64 6380
  store i32 0, ptr %728, align 4, !tbaa !69
  %729 = getelementptr inbounds i8, ptr %727, i64 6376
  store i32 0, ptr %729, align 8, !tbaa !70
  br label %730

730:                                              ; preds = %725, %710
  %731 = getelementptr inbounds i8, ptr %685, i64 4
  store i32 0, ptr %731, align 4, !tbaa !77
  %732 = getelementptr inbounds i8, ptr %685, i64 8
  store i32 0, ptr %732, align 8, !tbaa !78
  br label %733

733:                                              ; preds = %730, %682
  %734 = add nuw nsw i64 %683, 1
  %735 = icmp eq i64 %734, %681
  br i1 %735, label %736, label %682

736:                                              ; preds = %733, %676
  %737 = load ptr, ptr @img, align 8, !tbaa !6
  %738 = getelementptr inbounds i8, ptr %737, i64 90468
  store i32 1, ptr %738, align 4, !tbaa !38
  br label %819

739:                                              ; preds = %111
  %740 = getelementptr inbounds i8, ptr %113, i64 12
  %741 = load i32, ptr %740, align 4, !tbaa !106
  %742 = load i32, ptr %0, align 8, !tbaa !47
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %804

744:                                              ; preds = %739
  %745 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %808, label %747

747:                                              ; preds = %744
  %748 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %749 = zext i32 %745 to i64
  br label %750

750:                                              ; preds = %801, %747
  %751 = phi i64 [ 0, %747 ], [ %802, %801 ]
  %752 = getelementptr inbounds ptr, ptr %748, i64 %751
  %753 = load ptr, ptr %752, align 8, !tbaa !6
  %754 = getelementptr inbounds i8, ptr %753, i64 28
  %755 = load i32, ptr %754, align 4, !tbaa !86
  %756 = icmp eq i32 %755, %741
  br i1 %756, label %757, label %801

757:                                              ; preds = %750
  %758 = load i32, ptr %753, align 8, !tbaa !71
  %759 = and i32 %758, 1
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %768, label %761

761:                                              ; preds = %757
  %762 = getelementptr inbounds i8, ptr %753, i64 48
  %763 = load ptr, ptr %762, align 8, !tbaa !41
  %764 = icmp eq ptr %763, null
  br i1 %764, label %768, label %765

765:                                              ; preds = %761
  %766 = getelementptr inbounds i8, ptr %763, i64 6380
  store i32 0, ptr %766, align 4, !tbaa !69
  %767 = getelementptr inbounds i8, ptr %763, i64 6376
  store i32 0, ptr %767, align 8, !tbaa !70
  br label %768

768:                                              ; preds = %765, %761, %757
  %769 = and i32 %758, 2
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %778, label %771

771:                                              ; preds = %768
  %772 = getelementptr inbounds i8, ptr %753, i64 56
  %773 = load ptr, ptr %772, align 8, !tbaa !42
  %774 = icmp eq ptr %773, null
  br i1 %774, label %778, label %775

775:                                              ; preds = %771
  %776 = getelementptr inbounds i8, ptr %773, i64 6380
  store i32 0, ptr %776, align 4, !tbaa !69
  %777 = getelementptr inbounds i8, ptr %773, i64 6376
  store i32 0, ptr %777, align 8, !tbaa !70
  br label %778

778:                                              ; preds = %775, %771, %768
  %779 = icmp eq i32 %758, 3
  br i1 %779, label %780, label %798

780:                                              ; preds = %778
  %781 = getelementptr inbounds i8, ptr %753, i64 48
  %782 = load ptr, ptr %781, align 8, !tbaa !41
  %783 = icmp eq ptr %782, null
  br i1 %783, label %793, label %784

784:                                              ; preds = %780
  %785 = getelementptr inbounds i8, ptr %753, i64 56
  %786 = load ptr, ptr %785, align 8, !tbaa !42
  %787 = icmp eq ptr %786, null
  br i1 %787, label %793, label %788

788:                                              ; preds = %784
  %789 = getelementptr inbounds i8, ptr %782, i64 6380
  store i32 0, ptr %789, align 4, !tbaa !69
  %790 = getelementptr inbounds i8, ptr %782, i64 6376
  store i32 0, ptr %790, align 8, !tbaa !70
  %791 = getelementptr inbounds i8, ptr %786, i64 6380
  store i32 0, ptr %791, align 4, !tbaa !69
  %792 = getelementptr inbounds i8, ptr %786, i64 6376
  store i32 0, ptr %792, align 8, !tbaa !70
  br label %793

793:                                              ; preds = %788, %784, %780
  %794 = getelementptr inbounds i8, ptr %753, i64 40
  %795 = load ptr, ptr %794, align 8, !tbaa !39
  %796 = getelementptr inbounds i8, ptr %795, i64 6380
  store i32 0, ptr %796, align 4, !tbaa !69
  %797 = getelementptr inbounds i8, ptr %795, i64 6376
  store i32 0, ptr %797, align 8, !tbaa !70
  br label %798

798:                                              ; preds = %793, %778
  %799 = getelementptr inbounds i8, ptr %753, i64 4
  store i32 0, ptr %799, align 4, !tbaa !77
  %800 = getelementptr inbounds i8, ptr %753, i64 8
  store i32 0, ptr %800, align 8, !tbaa !78
  br label %801

801:                                              ; preds = %798, %750
  %802 = add nuw nsw i64 %751, 1
  %803 = icmp eq i64 %802, %749
  br i1 %803, label %808, label %750

804:                                              ; preds = %739
  %805 = load i32, ptr %107, align 4, !tbaa !74
  tail call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(i32 noundef signext %742, i32 noundef signext %741, i32 noundef signext 1, i32 noundef signext %805, i32 noundef signext 0)
  %806 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %807 = load ptr, ptr @img, align 8, !tbaa !6
  br label %808

808:                                              ; preds = %801, %804, %744
  %809 = phi ptr [ %112, %744 ], [ %807, %804 ], [ %112, %801 ]
  %810 = phi i32 [ 0, %744 ], [ %806, %804 ], [ %745, %801 ]
  store i32 1, ptr %108, align 8, !tbaa !70
  store i32 %741, ptr %109, align 4, !tbaa !75
  %811 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %812 = add i32 %811, %810
  %813 = getelementptr inbounds i8, ptr %809, i64 32
  %814 = load i32, ptr %813, align 8, !tbaa !22
  %815 = tail call i32 @llvm.smax.i32(i32 %814, i32 1)
  %816 = icmp sgt i32 %812, %815
  br i1 %816, label %817, label %819

817:                                              ; preds = %808
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef signext 500) #15
  br label %819

818:                                              ; preds = %111
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef signext 500) #15
  br label %819

819:                                              ; preds = %818, %817, %808, %736, %663, %599, %325, %205, %119, %115
  %820 = getelementptr inbounds i8, ptr %113, i64 24
  %821 = load ptr, ptr %820, align 8, !tbaa !102
  %822 = load ptr, ptr @img, align 8, !tbaa !6
  %823 = getelementptr inbounds i8, ptr %822, i64 90336
  store ptr %821, ptr %823, align 8, !tbaa !99
  tail call void @free(ptr noundef %113) #15
  %824 = load ptr, ptr @img, align 8, !tbaa !6
  %825 = getelementptr inbounds i8, ptr %824, i64 90336
  %826 = load ptr, ptr %825, align 8, !tbaa !99
  %827 = icmp eq ptr %826, null
  br i1 %827, label %828, label %111

828:                                              ; preds = %819
  %829 = getelementptr inbounds i8, ptr %824, i64 90468
  %830 = load i32, ptr %829, align 4, !tbaa !38
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %861, label %832

832:                                              ; preds = %828
  store i32 0, ptr %110, align 8, !tbaa !104
  store i32 0, ptr %107, align 4, !tbaa !74
  %833 = load i32, ptr %0, align 8, !tbaa !47
  switch i32 %833, label %834 [
    i32 1, label %837
    i32 2, label %841
    i32 0, label %845
  ]

834:                                              ; preds = %832
  %835 = getelementptr inbounds i8, ptr %0, i64 4
  %836 = load i32, ptr %835, align 4, !tbaa !80
  br label %858

837:                                              ; preds = %832
  %838 = getelementptr inbounds i8, ptr %824, i64 90268
  store i32 0, ptr %838, align 4, !tbaa !108
  %839 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %839, align 8, !tbaa !109
  %840 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 0, ptr %840, align 4, !tbaa !80
  br label %858

841:                                              ; preds = %832
  %842 = getelementptr inbounds i8, ptr %824, i64 90272
  store i32 0, ptr %842, align 8, !tbaa !110
  %843 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 0, ptr %843, align 4, !tbaa !111
  %844 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 0, ptr %844, align 4, !tbaa !80
  br label %858

845:                                              ; preds = %832
  %846 = getelementptr inbounds i8, ptr %0, i64 4
  %847 = load i32, ptr %846, align 4, !tbaa !80
  %848 = getelementptr inbounds i8, ptr %0, i64 8
  %849 = load i32, ptr %848, align 8, !tbaa !109
  %850 = sub nsw i32 %849, %847
  store i32 %850, ptr %848, align 8, !tbaa !109
  %851 = getelementptr inbounds i8, ptr %0, i64 12
  %852 = load i32, ptr %851, align 4, !tbaa !111
  %853 = sub nsw i32 %852, %847
  store i32 %853, ptr %851, align 4, !tbaa !111
  %854 = getelementptr inbounds i8, ptr %824, i64 90268
  store i32 %850, ptr %854, align 4, !tbaa !108
  %855 = getelementptr inbounds i8, ptr %824, i64 90272
  store i32 %853, ptr %855, align 8, !tbaa !110
  %856 = tail call i32 @llvm.smin.i32(i32 %850, i32 %853)
  store i32 %856, ptr %846, align 4, !tbaa !80
  %857 = getelementptr inbounds i8, ptr %824, i64 90276
  store i32 %856, ptr %857, align 4, !tbaa !79
  br label %858

858:                                              ; preds = %845, %841, %837, %834
  %859 = phi i32 [ %836, %834 ], [ %856, %845 ], [ 0, %841 ], [ 0, %837 ]
  %860 = getelementptr inbounds i8, ptr %824, i64 90280
  store i32 %859, ptr %860, align 8, !tbaa !81
  tail call void @flush_dpb()
  br label %861

861:                                              ; preds = %858, %828, %102, %97, %98, %93
  %862 = load i32, ptr %0, align 8, !tbaa !47
  %863 = icmp eq i32 %862, 1
  br i1 %863, label %869, label %864

864:                                              ; preds = %861
  %865 = icmp eq i32 %862, 2
  %866 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 56), align 8
  %867 = icmp ne ptr %866, null
  %868 = select i1 %865, i1 %867, i1 false
  br i1 %868, label %878, label %900

869:                                              ; preds = %861
  %870 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 56), align 8, !tbaa !32
  %871 = icmp eq ptr %870, null
  br i1 %871, label %900, label %872

872:                                              ; preds = %869
  %873 = getelementptr inbounds i8, ptr %870, i64 20
  %874 = load i32, ptr %873, align 4, !tbaa !72
  %875 = getelementptr inbounds i8, ptr %0, i64 6364
  %876 = load i32, ptr %875, align 4, !tbaa !74
  %877 = icmp eq i32 %874, %876
  br i1 %877, label %884, label %900

878:                                              ; preds = %864
  %879 = getelementptr inbounds i8, ptr %866, i64 20
  %880 = load i32, ptr %879, align 4, !tbaa !72
  %881 = getelementptr inbounds i8, ptr %0, i64 6364
  %882 = load i32, ptr %881, align 4, !tbaa !74
  %883 = icmp eq i32 %880, %882
  br i1 %883, label %887, label %900

884:                                              ; preds = %872
  %885 = load i32, ptr %870, align 8, !tbaa !71
  %886 = icmp eq i32 %885, 2
  br i1 %886, label %890, label %900

887:                                              ; preds = %878
  %888 = load i32, ptr %866, align 8, !tbaa !71
  %889 = icmp eq i32 %888, 1
  br i1 %889, label %890, label %900

890:                                              ; preds = %887, %884
  %891 = phi ptr [ %866, %887 ], [ %870, %884 ]
  %892 = load i32, ptr %10, align 4, !tbaa !69
  %893 = icmp eq i32 %892, 0
  %894 = getelementptr inbounds i8, ptr %891, i64 12
  %895 = load i32, ptr %894, align 4, !tbaa !112
  %896 = icmp eq i32 %895, 0
  br i1 %893, label %898, label %897

897:                                              ; preds = %890
  br i1 %896, label %900, label %899

898:                                              ; preds = %890
  br i1 %896, label %899, label %900

899:                                              ; preds = %898, %897
  tail call fastcc void @insert_picture_in_dpb(ptr noundef nonnull %891, ptr noundef nonnull %0)
  tail call void @update_ref_list()
  tail call void @update_ltref_list()
  store ptr null, ptr getelementptr inbounds (i8, ptr @dpb, i64 56), align 8, !tbaa !32
  br label %1116

900:                                              ; preds = %884, %897, %878, %869, %887, %898, %872, %864
  %901 = load ptr, ptr @img, align 8, !tbaa !6
  %902 = getelementptr inbounds i8, ptr %901, i64 31560
  %903 = load ptr, ptr %902, align 8, !tbaa !93
  %904 = getelementptr inbounds i8, ptr %903, i64 4
  %905 = load i32, ptr %904, align 4, !tbaa !94
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %945

907:                                              ; preds = %900
  %908 = load i32, ptr %10, align 4, !tbaa !69
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %945, label %910

910:                                              ; preds = %907
  %911 = getelementptr inbounds i8, ptr %901, i64 90320
  %912 = load i32, ptr %911, align 8, !tbaa !98
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %914, label %945

914:                                              ; preds = %910
  %915 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %916 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %917 = getelementptr inbounds i8, ptr %916, i64 1132
  %918 = load i32, ptr %917, align 4, !tbaa !113
  %919 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %920 = sub i32 %918, %919
  %921 = icmp eq i32 %915, %920
  br i1 %921, label %922, label %943

922:                                              ; preds = %914
  %923 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %943, label %925

925:                                              ; preds = %922
  %926 = load ptr, ptr @dpb, align 8, !tbaa !33
  %927 = zext i32 %923 to i64
  br label %928

928:                                              ; preds = %940, %925
  %929 = phi i64 [ 0, %925 ], [ %941, %940 ]
  %930 = getelementptr inbounds ptr, ptr %926, i64 %929
  %931 = load ptr, ptr %930, align 8, !tbaa !6
  %932 = getelementptr inbounds i8, ptr %931, i64 4
  %933 = load i32, ptr %932, align 4, !tbaa !77
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %940, label %935

935:                                              ; preds = %928
  %936 = getelementptr inbounds i8, ptr %931, i64 8
  %937 = load i32, ptr %936, align 8, !tbaa !78
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %939, label %940

939:                                              ; preds = %935
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %931)
  tail call void @update_ref_list()
  br label %943

940:                                              ; preds = %935, %928
  %941 = add nuw nsw i64 %929, 1
  %942 = icmp eq i64 %941, %927
  br i1 %942, label %943, label %928

943:                                              ; preds = %940, %914, %922, %939
  %944 = getelementptr inbounds i8, ptr %0, i64 6376
  store i32 0, ptr %944, align 8, !tbaa !70
  br label %945

945:                                              ; preds = %943, %910, %907, %900
  %946 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %947 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %948 = icmp ne i32 %946, %947
  %949 = icmp eq i32 %946, 0
  %950 = or i1 %949, %948
  br i1 %950, label %1003, label %951

951:                                              ; preds = %945
  %952 = load ptr, ptr @dpb, align 8, !tbaa !33
  %953 = zext i32 %946 to i64
  br label %954

954:                                              ; preds = %1000, %951
  %955 = phi i64 [ 0, %951 ], [ %1001, %1000 ]
  %956 = getelementptr inbounds ptr, ptr %952, i64 %955
  %957 = load ptr, ptr %956, align 8, !tbaa !6
  %958 = getelementptr inbounds i8, ptr %957, i64 32
  %959 = load i32, ptr %958, align 8, !tbaa !114
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %1000, label %961

961:                                              ; preds = %954
  %962 = getelementptr inbounds i8, ptr %957, i64 4
  %963 = load i32, ptr %962, align 4, !tbaa !77
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %965, label %1000

965:                                              ; preds = %961
  %966 = load i32, ptr %957, align 8, !tbaa !71
  %967 = icmp eq i32 %966, 3
  br i1 %967, label %968, label %974

968:                                              ; preds = %965
  %969 = getelementptr inbounds i8, ptr %957, i64 40
  %970 = load ptr, ptr %969, align 8, !tbaa !39
  %971 = getelementptr inbounds i8, ptr %970, i64 6380
  %972 = load i32, ptr %971, align 4, !tbaa !69
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %977, label %1000

974:                                              ; preds = %965
  %975 = and i32 %966, 1
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %985, label %977

977:                                              ; preds = %974, %968
  %978 = getelementptr inbounds i8, ptr %957, i64 48
  %979 = load ptr, ptr %978, align 8, !tbaa !41
  %980 = icmp eq ptr %979, null
  br i1 %980, label %985, label %981

981:                                              ; preds = %977
  %982 = getelementptr inbounds i8, ptr %979, i64 6380
  %983 = load i32, ptr %982, align 4, !tbaa !69
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %1000

985:                                              ; preds = %981, %977, %974
  %986 = and i32 %966, 2
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %996, label %988

988:                                              ; preds = %985
  %989 = getelementptr inbounds i8, ptr %957, i64 56
  %990 = load ptr, ptr %989, align 8, !tbaa !42
  %991 = icmp eq ptr %990, null
  br i1 %991, label %996, label %992

992:                                              ; preds = %988
  %993 = getelementptr inbounds i8, ptr %990, i64 6380
  %994 = load i32, ptr %993, align 4, !tbaa !69
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %996, label %1000

996:                                              ; preds = %992, %988, %985
  %997 = trunc nuw i64 %955 to i32
  tail call fastcc void @remove_frame_from_dpb(i32 noundef signext %997)
  %998 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %999 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  br label %1003

1000:                                             ; preds = %992, %981, %968, %961, %954
  %1001 = add nuw nsw i64 %955, 1
  %1002 = icmp eq i64 %1001, %953
  br i1 %1002, label %1007, label %954

1003:                                             ; preds = %996, %945
  %1004 = phi i32 [ %999, %996 ], [ %947, %945 ]
  %1005 = phi i32 [ %998, %996 ], [ %946, %945 ]
  %1006 = icmp eq i32 %1005, %1004
  br i1 %1006, label %1007, label %1055

1007:                                             ; preds = %1000, %1003
  %1008 = phi i32 [ %1004, %1003 ], [ %946, %1000 ]
  %1009 = getelementptr inbounds i8, ptr %0, i64 4
  br label %1010

1010:                                             ; preds = %1007, %1051
  %1011 = phi i32 [ %1008, %1007 ], [ %1052, %1051 ]
  %1012 = load i32, ptr %10, align 4, !tbaa !69
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1014, label %1051

1014:                                             ; preds = %1010
  %1015 = icmp eq i32 %1011, 0
  br i1 %1015, label %1016, label %1019

1016:                                             ; preds = %1014
  tail call void @error(ptr noundef nonnull @.str.37, i32 noundef signext 150) #15
  %1017 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1049, label %1019

1019:                                             ; preds = %1014, %1016
  %1020 = phi i32 [ %1017, %1016 ], [ %1011, %1014 ]
  %1021 = load ptr, ptr @dpb, align 8, !tbaa !33
  %1022 = zext i32 %1020 to i64
  br label %1023

1023:                                             ; preds = %1039, %1019
  %1024 = phi i32 [ 2147483647, %1019 ], [ %1040, %1039 ]
  %1025 = phi i32 [ -1, %1019 ], [ %1041, %1039 ]
  %1026 = phi i64 [ 0, %1019 ], [ %1042, %1039 ]
  %1027 = getelementptr inbounds ptr, ptr %1021, i64 %1026
  %1028 = load ptr, ptr %1027, align 8, !tbaa !6
  %1029 = getelementptr inbounds i8, ptr %1028, i64 36
  %1030 = load i32, ptr %1029, align 4, !tbaa !82
  %1031 = icmp sgt i32 %1024, %1030
  br i1 %1031, label %1032, label %1039

1032:                                             ; preds = %1023
  %1033 = getelementptr inbounds i8, ptr %1028, i64 32
  %1034 = load i32, ptr %1033, align 8, !tbaa !114
  %1035 = icmp eq i32 %1034, 0
  %1036 = trunc nuw i64 %1026 to i32
  %1037 = select i1 %1035, i32 %1030, i32 %1024
  %1038 = select i1 %1035, i32 %1036, i32 %1025
  br label %1039

1039:                                             ; preds = %1032, %1023
  %1040 = phi i32 [ %1024, %1023 ], [ %1037, %1032 ]
  %1041 = phi i32 [ %1025, %1023 ], [ %1038, %1032 ]
  %1042 = add nuw nsw i64 %1026, 1
  %1043 = icmp eq i64 %1042, %1022
  br i1 %1043, label %1044, label %1023

1044:                                             ; preds = %1039
  %1045 = icmp eq i32 %1041, -1
  br i1 %1045, label %1049, label %1046

1046:                                             ; preds = %1044
  %1047 = load i32, ptr %1009, align 4, !tbaa !80
  %1048 = icmp slt i32 %1047, %1040
  br i1 %1048, label %1049, label %1051

1049:                                             ; preds = %1016, %1046, %1044
  %1050 = load i32, ptr @p_dec, align 4, !tbaa !36
  tail call void @direct_output(ptr noundef nonnull %0, i32 noundef signext %1050) #15
  br label %1116

1051:                                             ; preds = %1046, %1010
  tail call fastcc void @output_one_frame_from_dpb()
  %1052 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %1053 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 24), align 8, !tbaa !28
  %1054 = icmp eq i32 %1052, %1053
  br i1 %1054, label %1010, label %1055

1055:                                             ; preds = %1051, %1003
  %1056 = phi i32 [ %1005, %1003 ], [ %1052, %1051 ]
  %1057 = load i32, ptr %10, align 4, !tbaa !69
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1090, label %1059

1059:                                             ; preds = %1055
  %1060 = getelementptr inbounds i8, ptr %0, i64 6376
  %1061 = load i32, ptr %1060, align 8, !tbaa !70
  %1062 = icmp eq i32 %1061, 0
  %1063 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8
  %1064 = icmp ne i32 %1063, 0
  %1065 = select i1 %1062, i1 %1064, i1 false
  br i1 %1065, label %1066, label %1090

1066:                                             ; preds = %1059
  %1067 = getelementptr inbounds i8, ptr %0, i64 6360
  %1068 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  br label %1069

1069:                                             ; preds = %1066, %1082
  %1070 = phi i32 [ %1063, %1066 ], [ %1083, %1082 ]
  %1071 = phi ptr [ %1068, %1066 ], [ %1084, %1082 ]
  %1072 = phi i64 [ 0, %1066 ], [ %1085, %1082 ]
  %1073 = getelementptr inbounds ptr, ptr %1071, i64 %1072
  %1074 = load ptr, ptr %1073, align 8, !tbaa !6
  %1075 = getelementptr inbounds i8, ptr %1074, i64 20
  %1076 = load i32, ptr %1075, align 4, !tbaa !72
  %1077 = load i32, ptr %1067, align 8, !tbaa !104
  %1078 = icmp eq i32 %1076, %1077
  br i1 %1078, label %1079, label %1082

1079:                                             ; preds = %1069
  tail call void @error(ptr noundef nonnull @.str.16, i32 noundef signext 500) #15
  %1080 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 8), align 8, !tbaa !34
  %1081 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  br label %1082

1082:                                             ; preds = %1069, %1079
  %1083 = phi i32 [ %1070, %1069 ], [ %1081, %1079 ]
  %1084 = phi ptr [ %1071, %1069 ], [ %1080, %1079 ]
  %1085 = add nuw nsw i64 %1072, 1
  %1086 = zext i32 %1083 to i64
  %1087 = icmp ult i64 %1085, %1086
  br i1 %1087, label %1069, label %1088

1088:                                             ; preds = %1082
  %1089 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  br label %1090

1090:                                             ; preds = %1088, %1059, %1055
  %1091 = phi i32 [ %1089, %1088 ], [ %1056, %1059 ], [ %1056, %1055 ]
  %1092 = load ptr, ptr @dpb, align 8, !tbaa !33
  %1093 = zext i32 %1091 to i64
  %1094 = getelementptr inbounds ptr, ptr %1092, i64 %1093
  %1095 = load ptr, ptr %1094, align 8, !tbaa !6
  tail call fastcc void @insert_picture_in_dpb(ptr noundef %1095, ptr noundef nonnull %0)
  %1096 = load i32, ptr %0, align 8, !tbaa !47
  %1097 = icmp eq i32 %1096, 0
  %1098 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  br i1 %1097, label %1104, label %1099

1099:                                             ; preds = %1090
  %1100 = load ptr, ptr @dpb, align 8, !tbaa !33
  %1101 = zext i32 %1098 to i64
  %1102 = getelementptr inbounds ptr, ptr %1100, i64 %1101
  %1103 = load ptr, ptr %1102, align 8, !tbaa !6
  br label %1104

1104:                                             ; preds = %1090, %1099
  %1105 = phi ptr [ %1103, %1099 ], [ null, %1090 ]
  store ptr %1105, ptr getelementptr inbounds (i8, ptr @dpb, i64 56), align 8, !tbaa !32
  %1106 = add i32 %1098, 1
  store i32 %1106, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  tail call void @update_ref_list()
  tail call void @update_ltref_list()
  %1107 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %1108 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 32), align 8, !tbaa !21
  %1109 = add i32 %1108, %1107
  %1110 = load ptr, ptr @img, align 8, !tbaa !6
  %1111 = getelementptr inbounds i8, ptr %1110, i64 32
  %1112 = load i32, ptr %1111, align 8, !tbaa !22
  %1113 = tail call i32 @llvm.smax.i32(i32 %1112, i32 1)
  %1114 = icmp sgt i32 %1109, %1113
  br i1 %1114, label %1115, label %1116

1115:                                             ; preds = %1104
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef signext 500) #15
  br label %1116

1116:                                             ; preds = %1115, %1104, %1049, %899
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
define internal fastcc void @insert_picture_in_dpb(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.15, i32 noundef signext 2485, ptr noundef nonnull @__PRETTY_FUNCTION__.insert_picture_in_dpb) #17
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 6380
  %7 = load i32, ptr %6, align 4, !tbaa !69
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @UnifiedOneForthPix(ptr noundef nonnull %1) #15
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, ptr %1, align 8, !tbaa !47
  switch i32 %11, label %216 [
    i32 0, label %12
    i32 1, label %28
    i32 2, label %122
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr %1, ptr %13, align 8, !tbaa !39
  store i32 3, ptr %0, align 8, !tbaa !71
  %14 = load i32, ptr %6, align 4, !tbaa !69
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 3, ptr %17, align 4, !tbaa !77
  %18 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 3, ptr %18, align 4, !tbaa !112
  %19 = getelementptr inbounds i8, ptr %1, i64 6376
  %20 = load i32, ptr %19, align 8, !tbaa !70
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 3, ptr %23, align 8, !tbaa !78
  %24 = getelementptr inbounds i8, ptr %1, i64 6372
  %25 = load i32, ptr %24, align 4, !tbaa !75
  %26 = getelementptr inbounds i8, ptr %0, i64 28
  store i32 %25, ptr %26, align 4, !tbaa !86
  br label %27

27:                                               ; preds = %16, %22, %12
  tail call void @dpb_split_field(ptr noundef nonnull %0)
  br label %216

28:                                               ; preds = %10
  %29 = getelementptr inbounds i8, ptr %0, i64 48
  store ptr %1, ptr %29, align 8, !tbaa !41
  %30 = load i32, ptr %0, align 8, !tbaa !71
  %31 = or i32 %30, 1
  store i32 %31, ptr %0, align 8, !tbaa !71
  %32 = load i32, ptr %6, align 4, !tbaa !69
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds i8, ptr %0, i64 4
  %36 = load i32, ptr %35, align 4, !tbaa !77
  %37 = or i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !77
  %38 = getelementptr inbounds i8, ptr %0, i64 12
  %39 = load i32, ptr %38, align 4, !tbaa !112
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 4, !tbaa !112
  %41 = getelementptr inbounds i8, ptr %1, i64 6376
  %42 = load i32, ptr %41, align 8, !tbaa !70
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds i8, ptr %0, i64 8
  %46 = load i32, ptr %45, align 8, !tbaa !78
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !78
  %48 = getelementptr inbounds i8, ptr %1, i64 6372
  %49 = load i32, ptr %48, align 4, !tbaa !75
  %50 = getelementptr inbounds i8, ptr %0, i64 28
  store i32 %49, ptr %50, align 4, !tbaa !86
  br label %51

51:                                               ; preds = %34, %44, %28
  %52 = icmp eq i32 %31, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  tail call void @dpb_combine_field(ptr noundef nonnull %0)
  br label %216

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %1, i64 4
  %56 = load i32, ptr %55, align 4, !tbaa !80
  %57 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %56, ptr %57, align 4, !tbaa !82
  %58 = getelementptr inbounds i8, ptr %1, i64 6392
  %59 = load i32, ptr %58, align 8, !tbaa !48
  %60 = icmp sgt i32 %59, 3
  br i1 %60, label %61, label %216

61:                                               ; preds = %54
  %62 = getelementptr inbounds i8, ptr %1, i64 6396
  %63 = getelementptr inbounds i8, ptr %1, i64 6480
  %64 = getelementptr inbounds i8, ptr %1, i64 24
  %65 = getelementptr inbounds i8, ptr %1, i64 6496
  %66 = getelementptr inbounds i8, ptr %1, i64 288
  %67 = getelementptr inbounds i8, ptr %1, i64 6520
  %68 = load i32, ptr %62, align 4, !tbaa !49
  br label %69

69:                                               ; preds = %115, %61
  %70 = phi i32 [ %59, %61 ], [ %116, %115 ]
  %71 = phi i32 [ %68, %61 ], [ %117, %115 ]
  %72 = phi i64 [ 0, %61 ], [ %118, %115 ]
  %73 = icmp sgt i32 %71, 3
  br i1 %73, label %74, label %115

74:                                               ; preds = %69, %74
  %75 = phi i64 [ %108, %74 ], [ 0, %69 ]
  %76 = load ptr, ptr %63, align 8, !tbaa !54
  %77 = getelementptr inbounds i8, ptr %76, i64 8
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = getelementptr inbounds ptr, ptr %78, i64 %75
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %80, i64 %72
  %82 = load i8, ptr %81, align 1, !tbaa !115
  %83 = load ptr, ptr %76, align 8, !tbaa !6
  %84 = getelementptr inbounds ptr, ptr %83, i64 %75
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %85, i64 %72
  %87 = load i8, ptr %86, align 1, !tbaa !115
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds [33 x i64], ptr %64, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !116
  %91 = load ptr, ptr %65, align 8, !tbaa !56
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = getelementptr inbounds ptr, ptr %92, i64 %75
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = getelementptr inbounds i64, ptr %94, i64 %72
  store i64 %90, ptr %95, align 8, !tbaa !116
  %96 = zext i8 %82 to i64
  %97 = getelementptr inbounds [33 x i64], ptr %66, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !116
  %99 = getelementptr inbounds i8, ptr %91, i64 8
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds ptr, ptr %100, i64 %75
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds i64, ptr %102, i64 %72
  store i64 %98, ptr %103, align 8, !tbaa !116
  %104 = load ptr, ptr %67, align 8, !tbaa !59
  %105 = getelementptr inbounds ptr, ptr %104, i64 %75
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = getelementptr inbounds i8, ptr %106, i64 %72
  store i8 1, ptr %107, align 1, !tbaa !115
  %108 = add nuw nsw i64 %75, 1
  %109 = load i32, ptr %62, align 4, !tbaa !49
  %110 = sdiv i32 %109, 4
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %74, label %113

113:                                              ; preds = %74
  %114 = load i32, ptr %58, align 8, !tbaa !48
  br label %115

115:                                              ; preds = %113, %69
  %116 = phi i32 [ %114, %113 ], [ %70, %69 ]
  %117 = phi i32 [ %109, %113 ], [ %71, %69 ]
  %118 = add nuw nsw i64 %72, 1
  %119 = sdiv i32 %116, 4
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %69, label %216

122:                                              ; preds = %10
  %123 = getelementptr inbounds i8, ptr %0, i64 56
  store ptr %1, ptr %123, align 8, !tbaa !42
  %124 = load i32, ptr %0, align 8, !tbaa !71
  %125 = or i32 %124, 2
  store i32 %125, ptr %0, align 8, !tbaa !71
  %126 = load i32, ptr %6, align 4, !tbaa !69
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, ptr %0, i64 4
  %130 = load i32, ptr %129, align 4, !tbaa !77
  %131 = or i32 %130, 2
  store i32 %131, ptr %129, align 4, !tbaa !77
  %132 = getelementptr inbounds i8, ptr %0, i64 12
  %133 = load i32, ptr %132, align 4, !tbaa !112
  %134 = or i32 %133, 2
  store i32 %134, ptr %132, align 4, !tbaa !112
  %135 = getelementptr inbounds i8, ptr %1, i64 6376
  %136 = load i32, ptr %135, align 8, !tbaa !70
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %128
  %139 = getelementptr inbounds i8, ptr %0, i64 8
  %140 = load i32, ptr %139, align 8, !tbaa !78
  %141 = or i32 %140, 2
  store i32 %141, ptr %139, align 8, !tbaa !78
  %142 = getelementptr inbounds i8, ptr %1, i64 6372
  %143 = load i32, ptr %142, align 4, !tbaa !75
  %144 = getelementptr inbounds i8, ptr %0, i64 28
  store i32 %143, ptr %144, align 4, !tbaa !86
  br label %145

145:                                              ; preds = %128, %138, %122
  %146 = icmp eq i32 %125, 3
  br i1 %146, label %147, label %148

147:                                              ; preds = %145
  tail call void @dpb_combine_field(ptr noundef nonnull %0)
  br label %216

148:                                              ; preds = %145
  %149 = getelementptr inbounds i8, ptr %1, i64 4
  %150 = load i32, ptr %149, align 4, !tbaa !80
  %151 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %150, ptr %151, align 4, !tbaa !82
  %152 = getelementptr inbounds i8, ptr %1, i64 6392
  %153 = load i32, ptr %152, align 8, !tbaa !48
  %154 = icmp sgt i32 %153, 3
  br i1 %154, label %155, label %216

155:                                              ; preds = %148
  %156 = getelementptr inbounds i8, ptr %1, i64 6396
  %157 = getelementptr inbounds i8, ptr %1, i64 6480
  %158 = getelementptr inbounds i8, ptr %1, i64 24
  %159 = getelementptr inbounds i8, ptr %1, i64 6496
  %160 = getelementptr inbounds i8, ptr %1, i64 288
  %161 = getelementptr inbounds i8, ptr %1, i64 6520
  %162 = load i32, ptr %156, align 4, !tbaa !49
  br label %163

163:                                              ; preds = %209, %155
  %164 = phi i32 [ %153, %155 ], [ %210, %209 ]
  %165 = phi i32 [ %162, %155 ], [ %211, %209 ]
  %166 = phi i64 [ 0, %155 ], [ %212, %209 ]
  %167 = icmp sgt i32 %165, 3
  br i1 %167, label %168, label %209

168:                                              ; preds = %163, %168
  %169 = phi i64 [ %202, %168 ], [ 0, %163 ]
  %170 = load ptr, ptr %157, align 8, !tbaa !54
  %171 = getelementptr inbounds i8, ptr %170, i64 8
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = getelementptr inbounds ptr, ptr %172, i64 %169
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = getelementptr inbounds i8, ptr %174, i64 %166
  %176 = load i8, ptr %175, align 1, !tbaa !115
  %177 = load ptr, ptr %170, align 8, !tbaa !6
  %178 = getelementptr inbounds ptr, ptr %177, i64 %169
  %179 = load ptr, ptr %178, align 8, !tbaa !6
  %180 = getelementptr inbounds i8, ptr %179, i64 %166
  %181 = load i8, ptr %180, align 1, !tbaa !115
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds [33 x i64], ptr %158, i64 0, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !116
  %185 = load ptr, ptr %159, align 8, !tbaa !56
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  %187 = getelementptr inbounds ptr, ptr %186, i64 %169
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = getelementptr inbounds i64, ptr %188, i64 %166
  store i64 %184, ptr %189, align 8, !tbaa !116
  %190 = zext i8 %176 to i64
  %191 = getelementptr inbounds [33 x i64], ptr %160, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !116
  %193 = getelementptr inbounds i8, ptr %185, i64 8
  %194 = load ptr, ptr %193, align 8, !tbaa !6
  %195 = getelementptr inbounds ptr, ptr %194, i64 %169
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  %197 = getelementptr inbounds i64, ptr %196, i64 %166
  store i64 %192, ptr %197, align 8, !tbaa !116
  %198 = load ptr, ptr %161, align 8, !tbaa !59
  %199 = getelementptr inbounds ptr, ptr %198, i64 %169
  %200 = load ptr, ptr %199, align 8, !tbaa !6
  %201 = getelementptr inbounds i8, ptr %200, i64 %166
  store i8 1, ptr %201, align 1, !tbaa !115
  %202 = add nuw nsw i64 %169, 1
  %203 = load i32, ptr %156, align 4, !tbaa !49
  %204 = sdiv i32 %203, 4
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %202, %205
  br i1 %206, label %168, label %207

207:                                              ; preds = %168
  %208 = load i32, ptr %152, align 8, !tbaa !48
  br label %209

209:                                              ; preds = %207, %163
  %210 = phi i32 [ %208, %207 ], [ %164, %163 ]
  %211 = phi i32 [ %203, %207 ], [ %165, %163 ]
  %212 = add nuw nsw i64 %166, 1
  %213 = sdiv i32 %210, 4
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %212, %214
  br i1 %215, label %163, label %216

216:                                              ; preds = %209, %115, %148, %54, %147, %53, %10, %27
  %217 = getelementptr inbounds i8, ptr %1, i64 6364
  %218 = load i32, ptr %217, align 4, !tbaa !74
  %219 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %218, ptr %219, align 4, !tbaa !72
  %220 = getelementptr inbounds i8, ptr %1, i64 6384
  %221 = load i32, ptr %220, align 8, !tbaa !118
  %222 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %221, ptr %222, align 8, !tbaa !114
  ret void
}

declare dso_local void @direct_output(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @output_one_frame_from_dpb() unnamed_addr #1 {
  %1 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  tail call void @error(ptr noundef nonnull @.str.39, i32 noundef signext 150) #15
  %4 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.37, i32 noundef signext 150) #15
  %7 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %0, %3, %6
  %10 = phi i32 [ %7, %6 ], [ %4, %3 ], [ %1, %0 ]
  %11 = load ptr, ptr @dpb, align 8, !tbaa !33
  %12 = zext i32 %10 to i64
  br label %13

13:                                               ; preds = %29, %9
  %14 = phi i32 [ 2147483647, %9 ], [ %30, %29 ]
  %15 = phi i32 [ -1, %9 ], [ %31, %29 ]
  %16 = phi i64 [ 0, %9 ], [ %32, %29 ]
  %17 = getelementptr inbounds ptr, ptr %11, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds i8, ptr %18, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !82
  %21 = icmp sgt i32 %14, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = getelementptr inbounds i8, ptr %18, i64 32
  %24 = load i32, ptr %23, align 8, !tbaa !114
  %25 = icmp eq i32 %24, 0
  %26 = trunc nuw i64 %16 to i32
  %27 = select i1 %25, i32 %20, i32 %14
  %28 = select i1 %25, i32 %26, i32 %15
  br label %29

29:                                               ; preds = %22, %13
  %30 = phi i32 [ %14, %13 ], [ %27, %22 ]
  %31 = phi i32 [ %15, %13 ], [ %28, %22 ]
  %32 = add nuw nsw i64 %16, 1
  %33 = icmp eq i64 %32, %12
  br i1 %33, label %34, label %13

34:                                               ; preds = %29
  %35 = icmp eq i32 %31, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %6, %34
  %37 = phi i32 [ %30, %34 ], [ 2147483647, %6 ]
  tail call void @error(ptr noundef nonnull @.str.40, i32 noundef signext 150) #15
  %38 = load ptr, ptr @dpb, align 8, !tbaa !33
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi ptr [ %38, %36 ], [ %11, %34 ]
  %41 = phi i32 [ -1, %36 ], [ %31, %34 ]
  %42 = phi i32 [ %37, %36 ], [ %30, %34 ]
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = load i32, ptr @p_dec, align 4, !tbaa !36
  tail call void @write_stored_frame(ptr noundef %45, i32 noundef signext %46) #15
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 40), align 8, !tbaa !37
  %48 = icmp slt i32 %47, %42
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  tail call void @error(ptr noundef nonnull @.str.41, i32 noundef signext 150) #15
  br label %50

50:                                               ; preds = %49, %39
  store i32 %42, ptr getelementptr inbounds (i8, ptr @dpb, i64 40), align 8, !tbaa !37
  %51 = load ptr, ptr @dpb, align 8, !tbaa !33
  %52 = getelementptr inbounds ptr, ptr %51, i64 %43
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %53, i64 4
  %55 = load i32, ptr %54, align 4, !tbaa !77
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %50
  %58 = load i32, ptr %53, align 8, !tbaa !71
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %53, i64 40
  %62 = load ptr, ptr %61, align 8, !tbaa !39
  %63 = getelementptr inbounds i8, ptr %62, i64 6380
  %64 = load i32, ptr %63, align 4, !tbaa !69
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %89

66:                                               ; preds = %57
  %67 = and i32 %58, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66, %60
  %70 = getelementptr inbounds i8, ptr %53, i64 48
  %71 = load ptr, ptr %70, align 8, !tbaa !41
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %71, i64 6380
  %75 = load i32, ptr %74, align 4, !tbaa !69
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73, %69, %66
  %78 = and i32 %58, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, ptr %53, i64 56
  %82 = load ptr, ptr %81, align 8, !tbaa !42
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds i8, ptr %82, i64 6380
  %86 = load i32, ptr %85, align 4, !tbaa !69
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80, %77
  tail call fastcc void @remove_frame_from_dpb(i32 noundef signext %41)
  br label %89

89:                                               ; preds = %84, %73, %60, %50, %88
  ret void
}

; Function Attrs: nounwind
define dso_local void @replace_top_pic_with_frame(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef signext 2422, ptr noundef nonnull @__PRETTY_FUNCTION__.replace_top_pic_with_frame) #17
  unreachable

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !47
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef signext 2423, ptr noundef nonnull @__PRETTY_FUNCTION__.replace_top_pic_with_frame) #17
  unreachable

8:                                                ; preds = %4
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 90316
  %11 = load i32, ptr %10, align 4, !tbaa !91
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 6380
  store i32 %13, ptr %14, align 4, !tbaa !69
  br i1 %12, label %15, label %16

15:                                               ; preds = %8
  tail call void @UnifiedOneForthPix(ptr noundef nonnull %0) #15
  br label %16

16:                                               ; preds = %15, %8
  %17 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @dpb, align 8, !tbaa !33
  %21 = load ptr, ptr @img, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 90284
  %23 = load i32, ptr %22, align 4, !tbaa !73
  %24 = zext i32 %17 to i64
  br label %25

25:                                               ; preds = %19, %35
  %26 = phi i64 [ 0, %19 ], [ %36, %35 ]
  %27 = getelementptr inbounds ptr, ptr %20, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %28, i64 20
  %30 = load i32, ptr %29, align 4, !tbaa !72
  %31 = icmp eq i32 %30, %23
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, ptr %28, align 8, !tbaa !71
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %25, %32
  %36 = add nuw nsw i64 %26, 1
  %37 = icmp eq i64 %36, %24
  br i1 %37, label %38, label %25

38:                                               ; preds = %35, %16
  tail call void @error(ptr noundef nonnull @.str.18, i32 noundef signext 500) #15
  br label %39

39:                                               ; preds = %32, %38
  %40 = phi ptr [ null, %38 ], [ %28, %32 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  tail call void @free_storable_picture(ptr noundef %42)
  store ptr null, ptr %41, align 8, !tbaa !41
  %43 = getelementptr inbounds i8, ptr %40, i64 40
  store ptr %0, ptr %43, align 8, !tbaa !39
  store i32 3, ptr %40, align 8, !tbaa !71
  %44 = load i32, ptr %14, align 4, !tbaa !69
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds i8, ptr %40, i64 4
  store i32 3, ptr %47, align 4, !tbaa !77
  %48 = getelementptr inbounds i8, ptr %0, i64 6376
  %49 = load i32, ptr %48, align 8, !tbaa !70
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, ptr %40, i64 8
  store i32 3, ptr %52, align 8, !tbaa !78
  br label %53

53:                                               ; preds = %46, %51, %39
  tail call void @dpb_split_field(ptr noundef nonnull %40)
  tail call void @update_ref_list()
  tail call void @update_ltref_list()
  ret void
}

declare dso_local void @UnifiedOneForthPix(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @dpb_split_field(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %3, i64 6392
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = sdiv i32 %5, 16
  %7 = shl nsw i32 %6, 1
  %8 = getelementptr inbounds i8, ptr %3, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !80
  %10 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %9, ptr %10, align 4, !tbaa !82
  %11 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 1148
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %268

15:                                               ; preds = %1
  %16 = getelementptr inbounds i8, ptr %3, i64 6396
  %17 = load i32, ptr %16, align 4, !tbaa !49
  %18 = sdiv i32 %17, 2
  %19 = getelementptr inbounds i8, ptr %3, i64 6400
  %20 = load i32, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds i8, ptr %3, i64 6404
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = sdiv i32 %22, 2
  %24 = tail call ptr @alloc_storable_picture(i32 noundef signext 1, i32 noundef signext %5, i32 noundef signext %18, i32 noundef signext %20, i32 noundef signext %23)
  %25 = getelementptr inbounds i8, ptr %0, i64 48
  store ptr %24, ptr %25, align 8, !tbaa !41
  %26 = load ptr, ptr %2, align 8, !tbaa !39
  %27 = getelementptr inbounds i8, ptr %26, i64 6392
  %28 = load i32, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds i8, ptr %26, i64 6396
  %30 = load i32, ptr %29, align 4, !tbaa !49
  %31 = sdiv i32 %30, 2
  %32 = getelementptr inbounds i8, ptr %26, i64 6400
  %33 = load i32, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds i8, ptr %26, i64 6404
  %35 = load i32, ptr %34, align 4, !tbaa !51
  %36 = sdiv i32 %35, 2
  %37 = tail call ptr @alloc_storable_picture(i32 noundef signext 2, i32 noundef signext %28, i32 noundef signext %31, i32 noundef signext %33, i32 noundef signext %36)
  %38 = getelementptr inbounds i8, ptr %0, i64 56
  store ptr %37, ptr %38, align 8, !tbaa !42
  %39 = load ptr, ptr %2, align 8, !tbaa !39
  %40 = getelementptr inbounds i8, ptr %39, i64 6396
  %41 = load i32, ptr %40, align 4, !tbaa !49
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %48, label %43

43:                                               ; preds = %48, %15
  %44 = phi ptr [ %39, %15 ], [ %66, %48 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 6404
  %46 = load i32, ptr %45, align 4, !tbaa !51
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %77, label %72

48:                                               ; preds = %15, %48
  %49 = phi i64 [ %65, %48 ], [ 0, %15 ]
  %50 = phi ptr [ %66, %48 ], [ %39, %15 ]
  %51 = load ptr, ptr %25, align 8, !tbaa !41
  %52 = getelementptr inbounds i8, ptr %51, i64 6424
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = getelementptr inbounds ptr, ptr %53, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds i8, ptr %50, i64 6424
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = shl nuw nsw i64 %49, 1
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = getelementptr inbounds i8, ptr %50, i64 6392
  %62 = load i32, ptr %61, align 8, !tbaa !48
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %55, ptr align 2 %60, i64 %64, i1 false)
  %65 = add nuw nsw i64 %49, 1
  %66 = load ptr, ptr %2, align 8, !tbaa !39
  %67 = getelementptr inbounds i8, ptr %66, i64 6396
  %68 = load i32, ptr %67, align 4, !tbaa !49
  %69 = sdiv i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %65, %70
  br i1 %71, label %48, label %43

72:                                               ; preds = %77, %43
  %73 = phi ptr [ %44, %43 ], [ %115, %77 ]
  %74 = getelementptr inbounds i8, ptr %73, i64 6396
  %75 = load i32, ptr %74, align 4, !tbaa !49
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %126, label %121

77:                                               ; preds = %43, %77
  %78 = phi i64 [ %114, %77 ], [ 0, %43 ]
  %79 = phi ptr [ %115, %77 ], [ %44, %43 ]
  %80 = load ptr, ptr %25, align 8, !tbaa !41
  %81 = getelementptr inbounds i8, ptr %80, i64 6464
  %82 = load ptr, ptr %81, align 8, !tbaa !63
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds ptr, ptr %83, i64 %78
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds i8, ptr %79, i64 6464
  %87 = load ptr, ptr %86, align 8, !tbaa !63
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = shl nuw nsw i64 %78, 1
  %90 = getelementptr inbounds ptr, ptr %88, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = getelementptr inbounds i8, ptr %79, i64 6400
  %93 = load i32, ptr %92, align 8, !tbaa !50
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %85, ptr align 2 %91, i64 %95, i1 false)
  %96 = load ptr, ptr %25, align 8, !tbaa !41
  %97 = getelementptr inbounds i8, ptr %96, i64 6464
  %98 = load ptr, ptr %97, align 8, !tbaa !63
  %99 = getelementptr inbounds i8, ptr %98, i64 8
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds ptr, ptr %100, i64 %78
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = load ptr, ptr %2, align 8, !tbaa !39
  %104 = getelementptr inbounds i8, ptr %103, i64 6464
  %105 = load ptr, ptr %104, align 8, !tbaa !63
  %106 = getelementptr inbounds i8, ptr %105, i64 8
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = getelementptr inbounds ptr, ptr %107, i64 %89
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = getelementptr inbounds i8, ptr %103, i64 6400
  %111 = load i32, ptr %110, align 8, !tbaa !50
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %102, ptr align 2 %109, i64 %113, i1 false)
  %114 = add nuw nsw i64 %78, 1
  %115 = load ptr, ptr %2, align 8, !tbaa !39
  %116 = getelementptr inbounds i8, ptr %115, i64 6404
  %117 = load i32, ptr %116, align 4, !tbaa !51
  %118 = sdiv i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %114, %119
  br i1 %120, label %77, label %72

121:                                              ; preds = %126, %72
  %122 = phi ptr [ %73, %72 ], [ %145, %126 ]
  %123 = getelementptr inbounds i8, ptr %122, i64 6404
  %124 = load i32, ptr %123, align 4, !tbaa !51
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %151, label %196

126:                                              ; preds = %72, %126
  %127 = phi i64 [ %144, %126 ], [ 0, %72 ]
  %128 = phi ptr [ %145, %126 ], [ %73, %72 ]
  %129 = load ptr, ptr %38, align 8, !tbaa !42
  %130 = getelementptr inbounds i8, ptr %129, i64 6424
  %131 = load ptr, ptr %130, align 8, !tbaa !60
  %132 = getelementptr inbounds ptr, ptr %131, i64 %127
  %133 = load ptr, ptr %132, align 8, !tbaa !6
  %134 = getelementptr inbounds i8, ptr %128, i64 6424
  %135 = load ptr, ptr %134, align 8, !tbaa !60
  %136 = shl nuw nsw i64 %127, 1
  %137 = or disjoint i64 %136, 1
  %138 = getelementptr inbounds ptr, ptr %135, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  %140 = getelementptr inbounds i8, ptr %128, i64 6392
  %141 = load i32, ptr %140, align 8, !tbaa !48
  %142 = sext i32 %141 to i64
  %143 = shl nsw i64 %142, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %133, ptr align 2 %139, i64 %143, i1 false)
  %144 = add nuw nsw i64 %127, 1
  %145 = load ptr, ptr %2, align 8, !tbaa !39
  %146 = getelementptr inbounds i8, ptr %145, i64 6396
  %147 = load i32, ptr %146, align 4, !tbaa !49
  %148 = sdiv i32 %147, 2
  %149 = sext i32 %148 to i64
  %150 = icmp slt i64 %144, %149
  br i1 %150, label %126, label %121

151:                                              ; preds = %121, %151
  %152 = phi i64 [ %189, %151 ], [ 0, %121 ]
  %153 = phi ptr [ %190, %151 ], [ %122, %121 ]
  %154 = load ptr, ptr %38, align 8, !tbaa !42
  %155 = getelementptr inbounds i8, ptr %154, i64 6464
  %156 = load ptr, ptr %155, align 8, !tbaa !63
  %157 = load ptr, ptr %156, align 8, !tbaa !6
  %158 = getelementptr inbounds ptr, ptr %157, i64 %152
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = getelementptr inbounds i8, ptr %153, i64 6464
  %161 = load ptr, ptr %160, align 8, !tbaa !63
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = shl nuw nsw i64 %152, 1
  %164 = or disjoint i64 %163, 1
  %165 = getelementptr inbounds ptr, ptr %162, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !6
  %167 = getelementptr inbounds i8, ptr %153, i64 6400
  %168 = load i32, ptr %167, align 8, !tbaa !50
  %169 = sext i32 %168 to i64
  %170 = shl nsw i64 %169, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %159, ptr align 2 %166, i64 %170, i1 false)
  %171 = load ptr, ptr %38, align 8, !tbaa !42
  %172 = getelementptr inbounds i8, ptr %171, i64 6464
  %173 = load ptr, ptr %172, align 8, !tbaa !63
  %174 = getelementptr inbounds i8, ptr %173, i64 8
  %175 = load ptr, ptr %174, align 8, !tbaa !6
  %176 = getelementptr inbounds ptr, ptr %175, i64 %152
  %177 = load ptr, ptr %176, align 8, !tbaa !6
  %178 = load ptr, ptr %2, align 8, !tbaa !39
  %179 = getelementptr inbounds i8, ptr %178, i64 6464
  %180 = load ptr, ptr %179, align 8, !tbaa !63
  %181 = getelementptr inbounds i8, ptr %180, i64 8
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = getelementptr inbounds ptr, ptr %182, i64 %164
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = getelementptr inbounds i8, ptr %178, i64 6400
  %186 = load i32, ptr %185, align 8, !tbaa !50
  %187 = sext i32 %186 to i64
  %188 = shl nsw i64 %187, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %177, ptr align 2 %184, i64 %188, i1 false)
  %189 = add nuw nsw i64 %152, 1
  %190 = load ptr, ptr %2, align 8, !tbaa !39
  %191 = getelementptr inbounds i8, ptr %190, i64 6404
  %192 = load i32, ptr %191, align 4, !tbaa !51
  %193 = sdiv i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = icmp slt i64 %189, %194
  br i1 %195, label %151, label %196

196:                                              ; preds = %151, %121
  %197 = load ptr, ptr %25, align 8, !tbaa !41
  tail call void @UnifiedOneForthPix(ptr noundef %197) #15
  %198 = load ptr, ptr %38, align 8, !tbaa !42
  tail call void @UnifiedOneForthPix(ptr noundef %198) #15
  %199 = load ptr, ptr %2, align 8, !tbaa !39
  %200 = getelementptr inbounds i8, ptr %199, i64 8
  %201 = load i32, ptr %200, align 8, !tbaa !109
  %202 = load ptr, ptr %25, align 8, !tbaa !41
  %203 = getelementptr inbounds i8, ptr %202, i64 4
  store i32 %201, ptr %203, align 4, !tbaa !80
  %204 = getelementptr inbounds i8, ptr %199, i64 12
  %205 = load i32, ptr %204, align 4, !tbaa !111
  %206 = load ptr, ptr %38, align 8, !tbaa !42
  %207 = getelementptr inbounds i8, ptr %206, i64 4
  store i32 %205, ptr %207, align 4, !tbaa !80
  %208 = getelementptr inbounds i8, ptr %199, i64 16
  %209 = load i32, ptr %208, align 8, !tbaa !119
  %210 = getelementptr inbounds i8, ptr %202, i64 16
  store i32 %209, ptr %210, align 8, !tbaa !119
  %211 = getelementptr inbounds i8, ptr %206, i64 12
  store i32 %205, ptr %211, align 4, !tbaa !111
  %212 = getelementptr inbounds i8, ptr %202, i64 12
  store i32 %205, ptr %212, align 4, !tbaa !111
  %213 = getelementptr inbounds i8, ptr %206, i64 8
  store i32 %201, ptr %213, align 8, !tbaa !109
  %214 = getelementptr inbounds i8, ptr %202, i64 8
  store i32 %201, ptr %214, align 8, !tbaa !109
  %215 = getelementptr inbounds i8, ptr %206, i64 16
  store i32 %209, ptr %215, align 8, !tbaa !119
  %216 = getelementptr inbounds i8, ptr %199, i64 6380
  %217 = load i32, ptr %216, align 4, !tbaa !69
  %218 = getelementptr inbounds i8, ptr %206, i64 6380
  store i32 %217, ptr %218, align 4, !tbaa !69
  %219 = getelementptr inbounds i8, ptr %202, i64 6380
  store i32 %217, ptr %219, align 4, !tbaa !69
  %220 = getelementptr inbounds i8, ptr %199, i64 6376
  %221 = load i32, ptr %220, align 8, !tbaa !70
  %222 = getelementptr inbounds i8, ptr %206, i64 6376
  store i32 %221, ptr %222, align 8, !tbaa !70
  %223 = getelementptr inbounds i8, ptr %202, i64 6376
  store i32 %221, ptr %223, align 8, !tbaa !70
  %224 = getelementptr inbounds i8, ptr %199, i64 6372
  %225 = load i32, ptr %224, align 4, !tbaa !75
  %226 = getelementptr inbounds i8, ptr %206, i64 6372
  store i32 %225, ptr %226, align 4, !tbaa !75
  %227 = getelementptr inbounds i8, ptr %202, i64 6372
  store i32 %225, ptr %227, align 4, !tbaa !75
  %228 = getelementptr inbounds i8, ptr %0, i64 28
  store i32 %225, ptr %228, align 4, !tbaa !86
  %229 = getelementptr inbounds i8, ptr %206, i64 6412
  store i32 1, ptr %229, align 4, !tbaa !52
  %230 = getelementptr inbounds i8, ptr %202, i64 6412
  store i32 1, ptr %230, align 4, !tbaa !52
  %231 = getelementptr inbounds i8, ptr %199, i64 6416
  %232 = load i32, ptr %231, align 8, !tbaa !53
  %233 = getelementptr inbounds i8, ptr %206, i64 6416
  store i32 %232, ptr %233, align 8, !tbaa !53
  %234 = getelementptr inbounds i8, ptr %202, i64 6416
  store i32 %232, ptr %234, align 8, !tbaa !53
  %235 = getelementptr inbounds i8, ptr %199, i64 6528
  store ptr %202, ptr %235, align 8, !tbaa !87
  %236 = getelementptr inbounds i8, ptr %199, i64 6536
  store ptr %206, ptr %236, align 8, !tbaa !88
  %237 = getelementptr inbounds i8, ptr %202, i64 6536
  store ptr %206, ptr %237, align 8, !tbaa !88
  %238 = getelementptr inbounds i8, ptr %202, i64 6544
  store ptr %199, ptr %238, align 8, !tbaa !120
  %239 = getelementptr inbounds i8, ptr %206, i64 6528
  store ptr %202, ptr %239, align 8, !tbaa !87
  %240 = getelementptr inbounds i8, ptr %206, i64 6544
  store ptr %199, ptr %240, align 8, !tbaa !120
  %241 = getelementptr inbounds i8, ptr %199, i64 6552
  %242 = load i32, ptr %241, align 8, !tbaa !121
  %243 = getelementptr inbounds i8, ptr %206, i64 6552
  store i32 %242, ptr %243, align 8, !tbaa !121
  %244 = getelementptr inbounds i8, ptr %202, i64 6552
  store i32 %242, ptr %244, align 8, !tbaa !121
  %245 = getelementptr inbounds i8, ptr %202, i64 288
  %246 = getelementptr inbounds i8, ptr %199, i64 816
  %247 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %248 = shl nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = shl nsw i64 %249, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %245, ptr nonnull align 8 %246, i64 %250, i1 false)
  %251 = load ptr, ptr %38, align 8, !tbaa !42
  %252 = getelementptr inbounds i8, ptr %251, i64 288
  %253 = load ptr, ptr %2, align 8, !tbaa !39
  %254 = getelementptr inbounds i8, ptr %253, i64 1344
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %252, ptr nonnull align 8 %254, i64 %250, i1 false)
  %255 = load ptr, ptr %25, align 8, !tbaa !41
  %256 = getelementptr inbounds i8, ptr %255, i64 24
  %257 = load ptr, ptr %2, align 8, !tbaa !39
  %258 = getelementptr inbounds i8, ptr %257, i64 552
  %259 = load i32, ptr @listXsize, align 4, !tbaa !36
  %260 = shl nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = shl nsw i64 %261, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %256, ptr nonnull align 8 %258, i64 %262, i1 false)
  %263 = load ptr, ptr %38, align 8, !tbaa !42
  %264 = getelementptr inbounds i8, ptr %263, i64 24
  %265 = load ptr, ptr %2, align 8, !tbaa !39
  %266 = getelementptr inbounds i8, ptr %265, i64 1080
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %264, ptr nonnull align 8 %266, i64 %262, i1 false)
  %267 = load ptr, ptr %2, align 8, !tbaa !39
  br label %271

268:                                              ; preds = %1
  %269 = getelementptr inbounds i8, ptr %0, i64 48
  %270 = getelementptr inbounds i8, ptr %3, i64 6528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %269, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %270, i8 0, i64 16, i1 false)
  br label %271

271:                                              ; preds = %268, %196
  %272 = phi ptr [ %3, %268 ], [ %267, %196 ]
  %273 = getelementptr inbounds i8, ptr %272, i64 6396
  %274 = load i32, ptr %273, align 4, !tbaa !49
  %275 = icmp sgt i32 %274, 3
  br i1 %275, label %276, label %396

276:                                              ; preds = %271
  %277 = lshr i32 %274, 2
  %278 = getelementptr inbounds i8, ptr %272, i64 6392
  %279 = load i32, ptr %278, align 8, !tbaa !48
  %280 = sdiv i32 %279, 4
  %281 = icmp sgt i32 %279, 3
  %282 = getelementptr inbounds i8, ptr %272, i64 6416
  %283 = getelementptr inbounds i8, ptr %272, i64 6472
  %284 = getelementptr inbounds i8, ptr %272, i64 6480
  %285 = getelementptr inbounds i8, ptr %272, i64 24
  %286 = getelementptr inbounds i8, ptr %272, i64 6496
  %287 = getelementptr inbounds i8, ptr %272, i64 1608
  %288 = getelementptr inbounds i8, ptr %272, i64 288
  %289 = zext nneg i32 %277 to i64
  %290 = zext nneg i32 %280 to i64
  br label %291

291:                                              ; preds = %276, %393
  %292 = phi i64 [ 0, %276 ], [ %394, %393 ]
  br i1 %281, label %293, label %393

293:                                              ; preds = %291
  %294 = trunc nuw nsw i64 %292 to i32
  %295 = lshr i32 %294, 2
  %296 = and i32 %295, 1
  %297 = load i32, ptr %282, align 8, !tbaa !53
  %298 = icmp eq i32 %297, 0
  %299 = lshr i32 %294, 3
  %300 = mul nsw i32 %299, %7
  %301 = icmp eq i32 %296, 0
  %302 = select i1 %301, i32 2, i32 4
  %303 = zext nneg i32 %302 to i64
  %304 = or disjoint i32 %302, 1
  %305 = zext nneg i32 %304 to i64
  br label %306

306:                                              ; preds = %293, %382
  %307 = phi i64 [ 0, %293 ], [ %391, %382 ]
  br i1 %298, label %308, label %311

308:                                              ; preds = %306
  %309 = load ptr, ptr %284, align 8, !tbaa !54
  %310 = load ptr, ptr %286, align 8, !tbaa !56
  br label %359

311:                                              ; preds = %306
  %312 = trunc nuw nsw i64 %307 to i32
  %313 = lshr i32 %312, 1
  %314 = and i32 %313, 1073741822
  %315 = add nsw i32 %314, %300
  %316 = or disjoint i32 %315, %296
  %317 = load ptr, ptr %283, align 8, !tbaa !45
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i8, ptr %317, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !115
  %321 = icmp eq i8 %320, 0
  %322 = load ptr, ptr %284, align 8, !tbaa !54
  %323 = load ptr, ptr %286, align 8, !tbaa !56
  br i1 %321, label %359, label %324

324:                                              ; preds = %311
  %325 = load ptr, ptr %322, align 8, !tbaa !6
  %326 = getelementptr inbounds ptr, ptr %325, i64 %292
  %327 = load ptr, ptr %326, align 8, !tbaa !6
  %328 = getelementptr inbounds i8, ptr %327, i64 %307
  %329 = load i8, ptr %328, align 1, !tbaa !115
  %330 = getelementptr inbounds i8, ptr %322, i64 8
  %331 = load ptr, ptr %330, align 8, !tbaa !6
  %332 = getelementptr inbounds ptr, ptr %331, i64 %292
  %333 = load ptr, ptr %332, align 8, !tbaa !6
  %334 = getelementptr inbounds i8, ptr %333, i64 %307
  %335 = load i8, ptr %334, align 1, !tbaa !115
  %336 = zext i8 %329 to i64
  %337 = getelementptr inbounds [6 x [33 x i64]], ptr %285, i64 0, i64 %303, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !116
  %339 = getelementptr inbounds ptr, ptr %323, i64 %303
  %340 = load ptr, ptr %339, align 8, !tbaa !6
  %341 = getelementptr inbounds ptr, ptr %340, i64 %292
  %342 = load ptr, ptr %341, align 8, !tbaa !6
  %343 = getelementptr inbounds i64, ptr %342, i64 %307
  store i64 %338, ptr %343, align 8, !tbaa !116
  %344 = zext i8 %335 to i64
  %345 = getelementptr inbounds [6 x [33 x i64]], ptr %285, i64 0, i64 %305, i64 %344
  %346 = load i64, ptr %345, align 8, !tbaa !116
  %347 = getelementptr inbounds ptr, ptr %323, i64 %305
  %348 = load ptr, ptr %347, align 8, !tbaa !6
  %349 = getelementptr inbounds ptr, ptr %348, i64 %292
  %350 = load ptr, ptr %349, align 8, !tbaa !6
  %351 = getelementptr inbounds i64, ptr %350, i64 %307
  store i64 %346, ptr %351, align 8, !tbaa !116
  %352 = getelementptr inbounds [6 x [33 x i64]], ptr %287, i64 0, i64 %303, i64 %336
  %353 = load i64, ptr %352, align 8, !tbaa !116
  %354 = load ptr, ptr %323, align 8, !tbaa !6
  %355 = getelementptr inbounds ptr, ptr %354, i64 %292
  %356 = load ptr, ptr %355, align 8, !tbaa !6
  %357 = getelementptr inbounds i64, ptr %356, i64 %307
  store i64 %353, ptr %357, align 8, !tbaa !116
  %358 = getelementptr inbounds [6 x [33 x i64]], ptr %287, i64 0, i64 %305, i64 %344
  br label %382

359:                                              ; preds = %308, %311
  %360 = phi ptr [ %310, %308 ], [ %323, %311 ]
  %361 = phi ptr [ %309, %308 ], [ %322, %311 ]
  %362 = getelementptr inbounds i8, ptr %361, i64 8
  %363 = load ptr, ptr %362, align 8, !tbaa !6
  %364 = getelementptr inbounds ptr, ptr %363, i64 %292
  %365 = load ptr, ptr %364, align 8, !tbaa !6
  %366 = getelementptr inbounds i8, ptr %365, i64 %307
  %367 = load i8, ptr %366, align 1, !tbaa !115
  %368 = load ptr, ptr %361, align 8, !tbaa !6
  %369 = getelementptr inbounds ptr, ptr %368, i64 %292
  %370 = load ptr, ptr %369, align 8, !tbaa !6
  %371 = getelementptr inbounds i8, ptr %370, i64 %307
  %372 = load i8, ptr %371, align 1, !tbaa !115
  %373 = zext i8 %372 to i64
  %374 = getelementptr inbounds [33 x i64], ptr %285, i64 0, i64 %373
  %375 = load i64, ptr %374, align 8, !tbaa !116
  %376 = load ptr, ptr %360, align 8, !tbaa !6
  %377 = getelementptr inbounds ptr, ptr %376, i64 %292
  %378 = load ptr, ptr %377, align 8, !tbaa !6
  %379 = getelementptr inbounds i64, ptr %378, i64 %307
  store i64 %375, ptr %379, align 8, !tbaa !116
  %380 = zext i8 %367 to i64
  %381 = getelementptr inbounds [33 x i64], ptr %288, i64 0, i64 %380
  br label %382

382:                                              ; preds = %324, %359
  %383 = phi ptr [ %358, %324 ], [ %381, %359 ]
  %384 = phi ptr [ %323, %324 ], [ %360, %359 ]
  %385 = load i64, ptr %383, align 8, !tbaa !116
  %386 = getelementptr inbounds i8, ptr %384, i64 8
  %387 = load ptr, ptr %386, align 8, !tbaa !6
  %388 = getelementptr inbounds ptr, ptr %387, i64 %292
  %389 = load ptr, ptr %388, align 8, !tbaa !6
  %390 = getelementptr inbounds i64, ptr %389, i64 %307
  store i64 %385, ptr %390, align 8, !tbaa !116
  %391 = add nuw nsw i64 %307, 1
  %392 = icmp eq i64 %391, %290
  br i1 %392, label %393, label %306

393:                                              ; preds = %382, %291
  %394 = add nuw nsw i64 %292, 1
  %395 = icmp eq i64 %394, %289
  br i1 %395, label %396, label %291

396:                                              ; preds = %393, %271
  %397 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %398 = getelementptr inbounds i8, ptr %397, i64 1148
  %399 = load i32, ptr %398, align 4, !tbaa !16
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %924

401:                                              ; preds = %396
  %402 = getelementptr inbounds i8, ptr %272, i64 6416
  %403 = load i32, ptr %402, align 8, !tbaa !53
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %678, label %405

405:                                              ; preds = %401
  %406 = icmp sgt i32 %274, 7
  br i1 %406, label %407, label %935

407:                                              ; preds = %405
  %408 = getelementptr inbounds i8, ptr %0, i64 48
  %409 = getelementptr inbounds i8, ptr %0, i64 56
  br label %410

410:                                              ; preds = %407, %665
  %411 = phi ptr [ %272, %407 ], [ %666, %665 ]
  %412 = phi i64 [ 0, %407 ], [ %667, %665 ]
  %413 = getelementptr inbounds i8, ptr %411, i64 6392
  %414 = load i32, ptr %413, align 8, !tbaa !48
  %415 = icmp sgt i32 %414, 3
  br i1 %415, label %416, label %665

416:                                              ; preds = %410
  %417 = trunc nuw nsw i64 %412 to i32
  %418 = lshr i32 %417, 1
  %419 = shl nuw nsw i64 %412, 1
  %420 = trunc nuw nsw i64 %419 to i32
  %421 = and i32 %420, 2147483640
  %422 = and i32 %417, 3
  %423 = or disjoint i32 %421, %422
  %424 = or disjoint i32 %423, 4
  %425 = lshr i32 %417, 2
  %426 = mul nsw i32 %425, %7
  %427 = and i32 %418, 1
  %428 = or disjoint i64 %419, 1
  %429 = zext nneg i32 %424 to i64
  %430 = zext nneg i32 %423 to i64
  br label %431

431:                                              ; preds = %416, %656
  %432 = phi ptr [ %411, %416 ], [ %657, %656 ]
  %433 = phi ptr [ %411, %416 ], [ %658, %656 ]
  %434 = phi i64 [ 0, %416 ], [ %659, %656 ]
  %435 = trunc nuw nsw i64 %434 to i32
  %436 = lshr i32 %435, 1
  %437 = and i32 %436, 1073741822
  %438 = add nsw i32 %437, %426
  %439 = or disjoint i32 %438, %427
  %440 = getelementptr inbounds i8, ptr %433, i64 6472
  %441 = load ptr, ptr %440, align 8, !tbaa !45
  %442 = sext i32 %439 to i64
  %443 = getelementptr inbounds i8, ptr %441, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !115
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %656, label %446

446:                                              ; preds = %431
  %447 = load ptr, ptr %408, align 8, !tbaa !41
  %448 = getelementptr inbounds i8, ptr %447, i64 6520
  %449 = load ptr, ptr %448, align 8, !tbaa !59
  %450 = getelementptr inbounds ptr, ptr %449, i64 %412
  %451 = load ptr, ptr %450, align 8, !tbaa !6
  %452 = getelementptr inbounds i8, ptr %451, i64 %434
  store i8 1, ptr %452, align 1, !tbaa !115
  %453 = load ptr, ptr %409, align 8, !tbaa !42
  %454 = getelementptr inbounds i8, ptr %453, i64 6520
  %455 = load ptr, ptr %454, align 8, !tbaa !59
  %456 = getelementptr inbounds ptr, ptr %455, i64 %412
  %457 = load ptr, ptr %456, align 8, !tbaa !6
  %458 = getelementptr inbounds i8, ptr %457, i64 %434
  store i8 1, ptr %458, align 1, !tbaa !115
  %459 = load ptr, ptr %2, align 8, !tbaa !39
  %460 = getelementptr inbounds i8, ptr %459, i64 6520
  %461 = load ptr, ptr %460, align 8, !tbaa !59
  %462 = getelementptr inbounds ptr, ptr %461, i64 %428
  %463 = load ptr, ptr %462, align 8, !tbaa !6
  %464 = getelementptr inbounds i8, ptr %463, i64 %434
  store i8 1, ptr %464, align 1, !tbaa !115
  %465 = load ptr, ptr %2, align 8, !tbaa !39
  %466 = getelementptr inbounds i8, ptr %465, i64 6520
  %467 = load ptr, ptr %466, align 8, !tbaa !59
  %468 = getelementptr inbounds ptr, ptr %467, i64 %419
  %469 = load ptr, ptr %468, align 8, !tbaa !6
  %470 = getelementptr inbounds i8, ptr %469, i64 %434
  store i8 1, ptr %470, align 1, !tbaa !115
  %471 = load ptr, ptr %2, align 8, !tbaa !39
  %472 = getelementptr inbounds i8, ptr %471, i64 6504
  %473 = load ptr, ptr %472, align 8, !tbaa !57
  %474 = load ptr, ptr %473, align 8, !tbaa !6
  %475 = getelementptr inbounds ptr, ptr %474, i64 %429
  %476 = load ptr, ptr %475, align 8, !tbaa !6
  %477 = getelementptr inbounds ptr, ptr %476, i64 %434
  %478 = load ptr, ptr %477, align 8, !tbaa !6
  %479 = load i16, ptr %478, align 2, !tbaa !122
  %480 = load ptr, ptr %409, align 8, !tbaa !42
  %481 = getelementptr inbounds i8, ptr %480, i64 6504
  %482 = load ptr, ptr %481, align 8, !tbaa !57
  %483 = load ptr, ptr %482, align 8, !tbaa !6
  %484 = getelementptr inbounds ptr, ptr %483, i64 %412
  %485 = load ptr, ptr %484, align 8, !tbaa !6
  %486 = getelementptr inbounds ptr, ptr %485, i64 %434
  %487 = load ptr, ptr %486, align 8, !tbaa !6
  store i16 %479, ptr %487, align 2, !tbaa !122
  %488 = getelementptr inbounds i8, ptr %478, i64 2
  %489 = load i16, ptr %488, align 2, !tbaa !122
  %490 = getelementptr inbounds i8, ptr %487, i64 2
  store i16 %489, ptr %490, align 2, !tbaa !122
  %491 = getelementptr inbounds i8, ptr %473, i64 8
  %492 = load ptr, ptr %491, align 8, !tbaa !6
  %493 = getelementptr inbounds ptr, ptr %492, i64 %429
  %494 = load ptr, ptr %493, align 8, !tbaa !6
  %495 = getelementptr inbounds ptr, ptr %494, i64 %434
  %496 = load ptr, ptr %495, align 8, !tbaa !6
  %497 = load i16, ptr %496, align 2, !tbaa !122
  %498 = getelementptr inbounds i8, ptr %482, i64 8
  %499 = load ptr, ptr %498, align 8, !tbaa !6
  %500 = getelementptr inbounds ptr, ptr %499, i64 %412
  %501 = load ptr, ptr %500, align 8, !tbaa !6
  %502 = getelementptr inbounds ptr, ptr %501, i64 %434
  %503 = load ptr, ptr %502, align 8, !tbaa !6
  store i16 %497, ptr %503, align 2, !tbaa !122
  %504 = getelementptr inbounds i8, ptr %496, i64 2
  %505 = load i16, ptr %504, align 2, !tbaa !122
  %506 = getelementptr inbounds i8, ptr %503, i64 2
  store i16 %505, ptr %506, align 2, !tbaa !122
  %507 = getelementptr inbounds i8, ptr %471, i64 6480
  %508 = load ptr, ptr %507, align 8, !tbaa !54
  %509 = load ptr, ptr %508, align 8, !tbaa !6
  %510 = getelementptr inbounds ptr, ptr %509, i64 %429
  %511 = load ptr, ptr %510, align 8, !tbaa !6
  %512 = getelementptr inbounds i8, ptr %511, i64 %434
  %513 = load i8, ptr %512, align 1, !tbaa !115
  %514 = getelementptr inbounds i8, ptr %480, i64 6480
  %515 = load ptr, ptr %514, align 8, !tbaa !54
  %516 = load ptr, ptr %515, align 8, !tbaa !6
  %517 = getelementptr inbounds ptr, ptr %516, i64 %412
  %518 = load ptr, ptr %517, align 8, !tbaa !6
  %519 = getelementptr inbounds i8, ptr %518, i64 %434
  store i8 %513, ptr %519, align 1, !tbaa !115
  %520 = load ptr, ptr %2, align 8, !tbaa !39
  %521 = getelementptr inbounds i8, ptr %520, i64 6480
  %522 = load ptr, ptr %521, align 8, !tbaa !54
  %523 = getelementptr inbounds i8, ptr %522, i64 8
  %524 = load ptr, ptr %523, align 8, !tbaa !6
  %525 = getelementptr inbounds ptr, ptr %524, i64 %429
  %526 = load ptr, ptr %525, align 8, !tbaa !6
  %527 = getelementptr inbounds i8, ptr %526, i64 %434
  %528 = load i8, ptr %527, align 1, !tbaa !115
  %529 = load ptr, ptr %409, align 8, !tbaa !42
  %530 = getelementptr inbounds i8, ptr %529, i64 6480
  %531 = load ptr, ptr %530, align 8, !tbaa !54
  %532 = getelementptr inbounds i8, ptr %531, i64 8
  %533 = load ptr, ptr %532, align 8, !tbaa !6
  %534 = getelementptr inbounds ptr, ptr %533, i64 %412
  %535 = load ptr, ptr %534, align 8, !tbaa !6
  %536 = getelementptr inbounds i8, ptr %535, i64 %434
  store i8 %528, ptr %536, align 1, !tbaa !115
  %537 = load ptr, ptr %2, align 8, !tbaa !39
  %538 = getelementptr inbounds i8, ptr %537, i64 6496
  %539 = load ptr, ptr %538, align 8, !tbaa !56
  %540 = getelementptr inbounds i8, ptr %539, i64 32
  %541 = load ptr, ptr %540, align 8, !tbaa !6
  %542 = getelementptr inbounds ptr, ptr %541, i64 %429
  %543 = load ptr, ptr %542, align 8, !tbaa !6
  %544 = getelementptr inbounds i64, ptr %543, i64 %434
  %545 = load i64, ptr %544, align 8, !tbaa !116
  %546 = load ptr, ptr %409, align 8, !tbaa !42
  %547 = getelementptr inbounds i8, ptr %546, i64 6496
  %548 = load ptr, ptr %547, align 8, !tbaa !56
  %549 = load ptr, ptr %548, align 8, !tbaa !6
  %550 = getelementptr inbounds ptr, ptr %549, i64 %412
  %551 = load ptr, ptr %550, align 8, !tbaa !6
  %552 = getelementptr inbounds i64, ptr %551, i64 %434
  store i64 %545, ptr %552, align 8, !tbaa !116
  %553 = getelementptr inbounds i8, ptr %539, i64 40
  %554 = load ptr, ptr %553, align 8, !tbaa !6
  %555 = getelementptr inbounds ptr, ptr %554, i64 %429
  %556 = load ptr, ptr %555, align 8, !tbaa !6
  %557 = getelementptr inbounds i64, ptr %556, i64 %434
  %558 = load i64, ptr %557, align 8, !tbaa !116
  %559 = getelementptr inbounds i8, ptr %548, i64 8
  %560 = load ptr, ptr %559, align 8, !tbaa !6
  %561 = getelementptr inbounds ptr, ptr %560, i64 %412
  %562 = load ptr, ptr %561, align 8, !tbaa !6
  %563 = getelementptr inbounds i64, ptr %562, i64 %434
  store i64 %558, ptr %563, align 8, !tbaa !116
  %564 = getelementptr inbounds i8, ptr %537, i64 6504
  %565 = load ptr, ptr %564, align 8, !tbaa !57
  %566 = load ptr, ptr %565, align 8, !tbaa !6
  %567 = getelementptr inbounds ptr, ptr %566, i64 %430
  %568 = load ptr, ptr %567, align 8, !tbaa !6
  %569 = getelementptr inbounds ptr, ptr %568, i64 %434
  %570 = load ptr, ptr %569, align 8, !tbaa !6
  %571 = load i16, ptr %570, align 2, !tbaa !122
  %572 = load ptr, ptr %408, align 8, !tbaa !41
  %573 = getelementptr inbounds i8, ptr %572, i64 6504
  %574 = load ptr, ptr %573, align 8, !tbaa !57
  %575 = load ptr, ptr %574, align 8, !tbaa !6
  %576 = getelementptr inbounds ptr, ptr %575, i64 %412
  %577 = load ptr, ptr %576, align 8, !tbaa !6
  %578 = getelementptr inbounds ptr, ptr %577, i64 %434
  %579 = load ptr, ptr %578, align 8, !tbaa !6
  store i16 %571, ptr %579, align 2, !tbaa !122
  %580 = getelementptr inbounds i8, ptr %570, i64 2
  %581 = load i16, ptr %580, align 2, !tbaa !122
  %582 = getelementptr inbounds i8, ptr %579, i64 2
  store i16 %581, ptr %582, align 2, !tbaa !122
  %583 = getelementptr inbounds i8, ptr %565, i64 8
  %584 = load ptr, ptr %583, align 8, !tbaa !6
  %585 = getelementptr inbounds ptr, ptr %584, i64 %430
  %586 = load ptr, ptr %585, align 8, !tbaa !6
  %587 = getelementptr inbounds ptr, ptr %586, i64 %434
  %588 = load ptr, ptr %587, align 8, !tbaa !6
  %589 = load i16, ptr %588, align 2, !tbaa !122
  %590 = getelementptr inbounds i8, ptr %574, i64 8
  %591 = load ptr, ptr %590, align 8, !tbaa !6
  %592 = getelementptr inbounds ptr, ptr %591, i64 %412
  %593 = load ptr, ptr %592, align 8, !tbaa !6
  %594 = getelementptr inbounds ptr, ptr %593, i64 %434
  %595 = load ptr, ptr %594, align 8, !tbaa !6
  store i16 %589, ptr %595, align 2, !tbaa !122
  %596 = getelementptr inbounds i8, ptr %588, i64 2
  %597 = load i16, ptr %596, align 2, !tbaa !122
  %598 = getelementptr inbounds i8, ptr %595, i64 2
  store i16 %597, ptr %598, align 2, !tbaa !122
  %599 = getelementptr inbounds i8, ptr %537, i64 6480
  %600 = load ptr, ptr %599, align 8, !tbaa !54
  %601 = load ptr, ptr %600, align 8, !tbaa !6
  %602 = getelementptr inbounds ptr, ptr %601, i64 %430
  %603 = load ptr, ptr %602, align 8, !tbaa !6
  %604 = getelementptr inbounds i8, ptr %603, i64 %434
  %605 = load i8, ptr %604, align 1, !tbaa !115
  %606 = getelementptr inbounds i8, ptr %572, i64 6480
  %607 = load ptr, ptr %606, align 8, !tbaa !54
  %608 = load ptr, ptr %607, align 8, !tbaa !6
  %609 = getelementptr inbounds ptr, ptr %608, i64 %412
  %610 = load ptr, ptr %609, align 8, !tbaa !6
  %611 = getelementptr inbounds i8, ptr %610, i64 %434
  store i8 %605, ptr %611, align 1, !tbaa !115
  %612 = load ptr, ptr %2, align 8, !tbaa !39
  %613 = getelementptr inbounds i8, ptr %612, i64 6480
  %614 = load ptr, ptr %613, align 8, !tbaa !54
  %615 = getelementptr inbounds i8, ptr %614, i64 8
  %616 = load ptr, ptr %615, align 8, !tbaa !6
  %617 = getelementptr inbounds ptr, ptr %616, i64 %430
  %618 = load ptr, ptr %617, align 8, !tbaa !6
  %619 = getelementptr inbounds i8, ptr %618, i64 %434
  %620 = load i8, ptr %619, align 1, !tbaa !115
  %621 = load ptr, ptr %408, align 8, !tbaa !41
  %622 = getelementptr inbounds i8, ptr %621, i64 6480
  %623 = load ptr, ptr %622, align 8, !tbaa !54
  %624 = getelementptr inbounds i8, ptr %623, i64 8
  %625 = load ptr, ptr %624, align 8, !tbaa !6
  %626 = getelementptr inbounds ptr, ptr %625, i64 %412
  %627 = load ptr, ptr %626, align 8, !tbaa !6
  %628 = getelementptr inbounds i8, ptr %627, i64 %434
  store i8 %620, ptr %628, align 1, !tbaa !115
  %629 = load ptr, ptr %2, align 8, !tbaa !39
  %630 = getelementptr inbounds i8, ptr %629, i64 6496
  %631 = load ptr, ptr %630, align 8, !tbaa !56
  %632 = getelementptr inbounds i8, ptr %631, i64 16
  %633 = load ptr, ptr %632, align 8, !tbaa !6
  %634 = getelementptr inbounds ptr, ptr %633, i64 %430
  %635 = load ptr, ptr %634, align 8, !tbaa !6
  %636 = getelementptr inbounds i64, ptr %635, i64 %434
  %637 = load i64, ptr %636, align 8, !tbaa !116
  %638 = load ptr, ptr %408, align 8, !tbaa !41
  %639 = getelementptr inbounds i8, ptr %638, i64 6496
  %640 = load ptr, ptr %639, align 8, !tbaa !56
  %641 = load ptr, ptr %640, align 8, !tbaa !6
  %642 = getelementptr inbounds ptr, ptr %641, i64 %412
  %643 = load ptr, ptr %642, align 8, !tbaa !6
  %644 = getelementptr inbounds i64, ptr %643, i64 %434
  store i64 %637, ptr %644, align 8, !tbaa !116
  %645 = getelementptr inbounds i8, ptr %631, i64 24
  %646 = load ptr, ptr %645, align 8, !tbaa !6
  %647 = getelementptr inbounds ptr, ptr %646, i64 %430
  %648 = load ptr, ptr %647, align 8, !tbaa !6
  %649 = getelementptr inbounds i64, ptr %648, i64 %434
  %650 = load i64, ptr %649, align 8, !tbaa !116
  %651 = getelementptr inbounds i8, ptr %640, i64 8
  %652 = load ptr, ptr %651, align 8, !tbaa !6
  %653 = getelementptr inbounds ptr, ptr %652, i64 %412
  %654 = load ptr, ptr %653, align 8, !tbaa !6
  %655 = getelementptr inbounds i64, ptr %654, i64 %434
  store i64 %650, ptr %655, align 8, !tbaa !116
  br label %656

656:                                              ; preds = %431, %446
  %657 = phi ptr [ %432, %431 ], [ %629, %446 ]
  %658 = phi ptr [ %433, %431 ], [ %629, %446 ]
  %659 = add nuw nsw i64 %434, 1
  %660 = getelementptr inbounds i8, ptr %658, i64 6392
  %661 = load i32, ptr %660, align 8, !tbaa !48
  %662 = sdiv i32 %661, 4
  %663 = sext i32 %662 to i64
  %664 = icmp slt i64 %659, %663
  br i1 %664, label %431, label %665

665:                                              ; preds = %656, %410
  %666 = phi ptr [ %411, %410 ], [ %657, %656 ]
  %667 = add nuw nsw i64 %412, 1
  %668 = getelementptr inbounds i8, ptr %666, i64 6396
  %669 = load i32, ptr %668, align 4, !tbaa !49
  %670 = sdiv i32 %669, 8
  %671 = sext i32 %670 to i64
  %672 = icmp slt i64 %667, %671
  br i1 %672, label %410, label %673

673:                                              ; preds = %665
  %674 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %675 = getelementptr inbounds i8, ptr %674, i64 1148
  %676 = load i32, ptr %675, align 4, !tbaa !16
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %924

678:                                              ; preds = %401, %673
  %679 = phi ptr [ %666, %673 ], [ %272, %401 ]
  %680 = phi i32 [ %669, %673 ], [ %274, %401 ]
  %681 = icmp sgt i32 %680, 7
  br i1 %681, label %682, label %935

682:                                              ; preds = %678
  %683 = getelementptr inbounds i8, ptr %0, i64 56
  %684 = getelementptr inbounds i8, ptr %0, i64 48
  br label %685

685:                                              ; preds = %682, %916
  %686 = phi ptr [ %679, %682 ], [ %917, %916 ]
  %687 = phi i64 [ 0, %682 ], [ %918, %916 ]
  %688 = getelementptr inbounds i8, ptr %686, i64 6392
  %689 = load i32, ptr %688, align 8, !tbaa !48
  %690 = icmp sgt i32 %689, 3
  br i1 %690, label %691, label %916

691:                                              ; preds = %685
  %692 = trunc nuw nsw i64 %687 to i32
  %693 = lshr i32 %692, 1
  %694 = and i32 %692, 2
  %695 = icmp eq i32 %694, 0
  %696 = and i64 %687, 2147483646
  %697 = or i64 %687, 1
  %698 = select i1 %695, i64 %696, i64 %697
  %699 = shl nuw i64 %698, 1
  %700 = lshr i32 %692, 2
  %701 = mul nsw i32 %700, %7
  %702 = and i32 %693, 1
  %703 = shl nuw nsw i64 %687, 1
  %704 = or disjoint i64 %703, 1
  %705 = and i64 %699, 4294967294
  br label %706

706:                                              ; preds = %691, %908
  %707 = phi i64 [ 0, %691 ], [ %910, %908 ]
  %708 = phi ptr [ %686, %691 ], [ %909, %908 ]
  %709 = trunc nuw nsw i64 %707 to i32
  %710 = and i32 %709, 2
  %711 = icmp eq i32 %710, 0
  %712 = or i64 %707, 1
  %713 = and i64 %707, 2147483646
  %714 = select i1 %711, i64 %713, i64 %712
  %715 = getelementptr inbounds i8, ptr %708, i64 6416
  %716 = load i32, ptr %715, align 8, !tbaa !53
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %729, label %718

718:                                              ; preds = %706
  %719 = lshr i32 %709, 1
  %720 = and i32 %719, 1073741822
  %721 = add nsw i32 %720, %701
  %722 = or disjoint i32 %721, %702
  %723 = getelementptr inbounds i8, ptr %708, i64 6472
  %724 = load ptr, ptr %723, align 8, !tbaa !45
  %725 = sext i32 %722 to i64
  %726 = getelementptr inbounds i8, ptr %724, i64 %725
  %727 = load i8, ptr %726, align 1, !tbaa !115
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %729, label %895

729:                                              ; preds = %718, %706
  %730 = getelementptr inbounds i8, ptr %708, i64 6520
  %731 = load ptr, ptr %730, align 8, !tbaa !59
  %732 = getelementptr inbounds ptr, ptr %731, i64 %703
  %733 = load ptr, ptr %732, align 8, !tbaa !6
  %734 = getelementptr inbounds i8, ptr %733, i64 %707
  store i8 0, ptr %734, align 1, !tbaa !115
  %735 = load ptr, ptr %2, align 8, !tbaa !39
  %736 = getelementptr inbounds i8, ptr %735, i64 6520
  %737 = load ptr, ptr %736, align 8, !tbaa !59
  %738 = getelementptr inbounds ptr, ptr %737, i64 %704
  %739 = load ptr, ptr %738, align 8, !tbaa !6
  %740 = getelementptr inbounds i8, ptr %739, i64 %707
  store i8 0, ptr %740, align 1, !tbaa !115
  %741 = load ptr, ptr %683, align 8, !tbaa !42
  %742 = getelementptr inbounds i8, ptr %741, i64 6520
  %743 = load ptr, ptr %742, align 8, !tbaa !59
  %744 = getelementptr inbounds ptr, ptr %743, i64 %687
  %745 = load ptr, ptr %744, align 8, !tbaa !6
  %746 = getelementptr inbounds i8, ptr %745, i64 %707
  store i8 0, ptr %746, align 1, !tbaa !115
  %747 = load ptr, ptr %684, align 8, !tbaa !41
  %748 = getelementptr inbounds i8, ptr %747, i64 6520
  %749 = load ptr, ptr %748, align 8, !tbaa !59
  %750 = getelementptr inbounds ptr, ptr %749, i64 %687
  %751 = load ptr, ptr %750, align 8, !tbaa !6
  %752 = getelementptr inbounds i8, ptr %751, i64 %707
  store i8 0, ptr %752, align 1, !tbaa !115
  %753 = load ptr, ptr %2, align 8, !tbaa !39
  %754 = getelementptr inbounds i8, ptr %753, i64 6504
  %755 = load ptr, ptr %754, align 8, !tbaa !57
  %756 = load ptr, ptr %755, align 8, !tbaa !6
  %757 = getelementptr inbounds ptr, ptr %756, i64 %705
  %758 = load ptr, ptr %757, align 8, !tbaa !6
  %759 = and i64 %714, 4294967295
  %760 = getelementptr inbounds ptr, ptr %758, i64 %759
  %761 = load ptr, ptr %760, align 8, !tbaa !6
  %762 = load i16, ptr %761, align 2, !tbaa !122
  %763 = load ptr, ptr %683, align 8, !tbaa !42
  %764 = getelementptr inbounds i8, ptr %763, i64 6504
  %765 = load ptr, ptr %764, align 8, !tbaa !57
  %766 = load ptr, ptr %765, align 8, !tbaa !6
  %767 = getelementptr inbounds ptr, ptr %766, i64 %687
  %768 = load ptr, ptr %767, align 8, !tbaa !6
  %769 = getelementptr inbounds ptr, ptr %768, i64 %707
  %770 = load ptr, ptr %769, align 8, !tbaa !6
  store i16 %762, ptr %770, align 2, !tbaa !122
  %771 = load ptr, ptr %684, align 8, !tbaa !41
  %772 = getelementptr inbounds i8, ptr %771, i64 6504
  %773 = load ptr, ptr %772, align 8, !tbaa !57
  %774 = load ptr, ptr %773, align 8, !tbaa !6
  %775 = getelementptr inbounds ptr, ptr %774, i64 %687
  %776 = load ptr, ptr %775, align 8, !tbaa !6
  %777 = getelementptr inbounds ptr, ptr %776, i64 %707
  %778 = load ptr, ptr %777, align 8, !tbaa !6
  store i16 %762, ptr %778, align 2, !tbaa !122
  %779 = getelementptr inbounds i8, ptr %761, i64 2
  %780 = load i16, ptr %779, align 2, !tbaa !122
  %781 = getelementptr inbounds i8, ptr %770, i64 2
  store i16 %780, ptr %781, align 2, !tbaa !122
  %782 = getelementptr inbounds i8, ptr %778, i64 2
  store i16 %780, ptr %782, align 2, !tbaa !122
  %783 = getelementptr inbounds i8, ptr %755, i64 8
  %784 = load ptr, ptr %783, align 8, !tbaa !6
  %785 = getelementptr inbounds ptr, ptr %784, i64 %705
  %786 = load ptr, ptr %785, align 8, !tbaa !6
  %787 = getelementptr inbounds ptr, ptr %786, i64 %759
  %788 = load ptr, ptr %787, align 8, !tbaa !6
  %789 = load i16, ptr %788, align 2, !tbaa !122
  %790 = getelementptr inbounds i8, ptr %765, i64 8
  %791 = load ptr, ptr %790, align 8, !tbaa !6
  %792 = getelementptr inbounds ptr, ptr %791, i64 %687
  %793 = load ptr, ptr %792, align 8, !tbaa !6
  %794 = getelementptr inbounds ptr, ptr %793, i64 %707
  %795 = load ptr, ptr %794, align 8, !tbaa !6
  store i16 %789, ptr %795, align 2, !tbaa !122
  %796 = getelementptr inbounds i8, ptr %773, i64 8
  %797 = load ptr, ptr %796, align 8, !tbaa !6
  %798 = getelementptr inbounds ptr, ptr %797, i64 %687
  %799 = load ptr, ptr %798, align 8, !tbaa !6
  %800 = getelementptr inbounds ptr, ptr %799, i64 %707
  %801 = load ptr, ptr %800, align 8, !tbaa !6
  store i16 %789, ptr %801, align 2, !tbaa !122
  %802 = getelementptr inbounds i8, ptr %788, i64 2
  %803 = load i16, ptr %802, align 2, !tbaa !122
  %804 = getelementptr inbounds i8, ptr %795, i64 2
  store i16 %803, ptr %804, align 2, !tbaa !122
  %805 = getelementptr inbounds i8, ptr %801, i64 2
  store i16 %803, ptr %805, align 2, !tbaa !122
  %806 = getelementptr inbounds i8, ptr %753, i64 6480
  %807 = load ptr, ptr %806, align 8, !tbaa !54
  %808 = load ptr, ptr %807, align 8, !tbaa !6
  %809 = getelementptr inbounds ptr, ptr %808, i64 %705
  %810 = load ptr, ptr %809, align 8, !tbaa !6
  %811 = getelementptr inbounds i8, ptr %810, i64 %759
  %812 = load i8, ptr %811, align 1, !tbaa !115
  %813 = getelementptr inbounds i8, ptr %763, i64 6480
  %814 = load ptr, ptr %813, align 8, !tbaa !54
  %815 = load ptr, ptr %814, align 8, !tbaa !6
  %816 = getelementptr inbounds ptr, ptr %815, i64 %687
  %817 = load ptr, ptr %816, align 8, !tbaa !6
  %818 = getelementptr inbounds i8, ptr %817, i64 %707
  store i8 %812, ptr %818, align 1, !tbaa !115
  %819 = load ptr, ptr %684, align 8, !tbaa !41
  %820 = getelementptr inbounds i8, ptr %819, i64 6480
  %821 = load ptr, ptr %820, align 8, !tbaa !54
  %822 = load ptr, ptr %821, align 8, !tbaa !6
  %823 = getelementptr inbounds ptr, ptr %822, i64 %687
  %824 = load ptr, ptr %823, align 8, !tbaa !6
  %825 = getelementptr inbounds i8, ptr %824, i64 %707
  store i8 %812, ptr %825, align 1, !tbaa !115
  %826 = load ptr, ptr %2, align 8, !tbaa !39
  %827 = getelementptr inbounds i8, ptr %826, i64 3192
  %828 = zext i8 %812 to i64
  %829 = getelementptr inbounds [33 x i64], ptr %827, i64 0, i64 %828
  %830 = load i64, ptr %829, align 8, !tbaa !116
  %831 = load ptr, ptr %684, align 8, !tbaa !41
  %832 = getelementptr inbounds i8, ptr %831, i64 6496
  %833 = load ptr, ptr %832, align 8, !tbaa !56
  %834 = load ptr, ptr %833, align 8, !tbaa !6
  %835 = getelementptr inbounds ptr, ptr %834, i64 %687
  %836 = load ptr, ptr %835, align 8, !tbaa !6
  %837 = getelementptr inbounds i64, ptr %836, i64 %707
  store i64 %830, ptr %837, align 8, !tbaa !116
  %838 = getelementptr inbounds i8, ptr %826, i64 4776
  %839 = getelementptr inbounds [33 x i64], ptr %838, i64 0, i64 %828
  %840 = load i64, ptr %839, align 8, !tbaa !116
  %841 = load ptr, ptr %683, align 8, !tbaa !42
  %842 = getelementptr inbounds i8, ptr %841, i64 6496
  %843 = load ptr, ptr %842, align 8, !tbaa !56
  %844 = load ptr, ptr %843, align 8, !tbaa !6
  %845 = getelementptr inbounds ptr, ptr %844, i64 %687
  %846 = load ptr, ptr %845, align 8, !tbaa !6
  %847 = getelementptr inbounds i64, ptr %846, i64 %707
  store i64 %840, ptr %847, align 8, !tbaa !116
  %848 = getelementptr inbounds i8, ptr %826, i64 6480
  %849 = load ptr, ptr %848, align 8, !tbaa !54
  %850 = getelementptr inbounds i8, ptr %849, i64 8
  %851 = load ptr, ptr %850, align 8, !tbaa !6
  %852 = getelementptr inbounds ptr, ptr %851, i64 %705
  %853 = load ptr, ptr %852, align 8, !tbaa !6
  %854 = getelementptr inbounds i8, ptr %853, i64 %759
  %855 = load i8, ptr %854, align 1, !tbaa !115
  %856 = getelementptr inbounds i8, ptr %841, i64 6480
  %857 = load ptr, ptr %856, align 8, !tbaa !54
  %858 = getelementptr inbounds i8, ptr %857, i64 8
  %859 = load ptr, ptr %858, align 8, !tbaa !6
  %860 = getelementptr inbounds ptr, ptr %859, i64 %687
  %861 = load ptr, ptr %860, align 8, !tbaa !6
  %862 = getelementptr inbounds i8, ptr %861, i64 %707
  store i8 %855, ptr %862, align 1, !tbaa !115
  %863 = load ptr, ptr %684, align 8, !tbaa !41
  %864 = getelementptr inbounds i8, ptr %863, i64 6480
  %865 = load ptr, ptr %864, align 8, !tbaa !54
  %866 = getelementptr inbounds i8, ptr %865, i64 8
  %867 = load ptr, ptr %866, align 8, !tbaa !6
  %868 = getelementptr inbounds ptr, ptr %867, i64 %687
  %869 = load ptr, ptr %868, align 8, !tbaa !6
  %870 = getelementptr inbounds i8, ptr %869, i64 %707
  store i8 %855, ptr %870, align 1, !tbaa !115
  %871 = load ptr, ptr %2, align 8, !tbaa !39
  %872 = getelementptr inbounds i8, ptr %871, i64 3456
  %873 = zext i8 %855 to i64
  %874 = getelementptr inbounds [33 x i64], ptr %872, i64 0, i64 %873
  %875 = load i64, ptr %874, align 8, !tbaa !116
  %876 = load ptr, ptr %684, align 8, !tbaa !41
  %877 = getelementptr inbounds i8, ptr %876, i64 6496
  %878 = load ptr, ptr %877, align 8, !tbaa !56
  %879 = getelementptr inbounds i8, ptr %878, i64 8
  %880 = load ptr, ptr %879, align 8, !tbaa !6
  %881 = getelementptr inbounds ptr, ptr %880, i64 %687
  %882 = load ptr, ptr %881, align 8, !tbaa !6
  %883 = getelementptr inbounds i64, ptr %882, i64 %707
  store i64 %875, ptr %883, align 8, !tbaa !116
  %884 = getelementptr inbounds i8, ptr %871, i64 5040
  %885 = getelementptr inbounds [33 x i64], ptr %884, i64 0, i64 %873
  %886 = load i64, ptr %885, align 8, !tbaa !116
  %887 = load ptr, ptr %683, align 8, !tbaa !42
  %888 = getelementptr inbounds i8, ptr %887, i64 6496
  %889 = load ptr, ptr %888, align 8, !tbaa !56
  %890 = getelementptr inbounds i8, ptr %889, i64 8
  %891 = load ptr, ptr %890, align 8, !tbaa !6
  %892 = getelementptr inbounds ptr, ptr %891, i64 %687
  %893 = load ptr, ptr %892, align 8, !tbaa !6
  %894 = getelementptr inbounds i64, ptr %893, i64 %707
  store i64 %886, ptr %894, align 8, !tbaa !116
  br label %908

895:                                              ; preds = %718
  %896 = getelementptr inbounds i8, ptr %708, i64 6520
  %897 = load ptr, ptr %896, align 8, !tbaa !59
  %898 = getelementptr inbounds ptr, ptr %897, i64 %703
  %899 = load ptr, ptr %898, align 8, !tbaa !6
  %900 = getelementptr inbounds i8, ptr %899, i64 %707
  store i8 %727, ptr %900, align 1, !tbaa !115
  %901 = load ptr, ptr %2, align 8, !tbaa !39
  %902 = getelementptr inbounds i8, ptr %901, i64 6520
  %903 = load ptr, ptr %902, align 8, !tbaa !59
  %904 = getelementptr inbounds ptr, ptr %903, i64 %704
  %905 = load ptr, ptr %904, align 8, !tbaa !6
  %906 = getelementptr inbounds i8, ptr %905, i64 %707
  store i8 %727, ptr %906, align 1, !tbaa !115
  %907 = load ptr, ptr %2, align 8, !tbaa !39
  br label %908

908:                                              ; preds = %895, %729
  %909 = phi ptr [ %907, %895 ], [ %871, %729 ]
  %910 = add nuw nsw i64 %707, 1
  %911 = getelementptr inbounds i8, ptr %909, i64 6392
  %912 = load i32, ptr %911, align 8, !tbaa !48
  %913 = sdiv i32 %912, 4
  %914 = sext i32 %913 to i64
  %915 = icmp slt i64 %910, %914
  br i1 %915, label %706, label %916

916:                                              ; preds = %908, %685
  %917 = phi ptr [ %686, %685 ], [ %909, %908 ]
  %918 = add nuw nsw i64 %687, 1
  %919 = getelementptr inbounds i8, ptr %917, i64 6396
  %920 = load i32, ptr %919, align 4, !tbaa !49
  %921 = sdiv i32 %920, 8
  %922 = sext i32 %921 to i64
  %923 = icmp slt i64 %918, %922
  br i1 %923, label %685, label %935

924:                                              ; preds = %396, %673
  %925 = phi ptr [ %666, %673 ], [ %272, %396 ]
  %926 = phi i32 [ %669, %673 ], [ %274, %396 ]
  %927 = getelementptr inbounds i8, ptr %925, i64 6520
  %928 = load ptr, ptr %927, align 8, !tbaa !59
  %929 = load ptr, ptr %928, align 8, !tbaa !6
  %930 = getelementptr inbounds i8, ptr %925, i64 6392
  %931 = load i32, ptr %930, align 8, !tbaa !48
  %932 = mul nsw i32 %931, %926
  %933 = sdiv i32 %932, 16
  %934 = sext i32 %933 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %929, i8 0, i64 %934, i1 false)
  br label %935

935:                                              ; preds = %916, %405, %678, %924
  ret void
}

; Function Attrs: nounwind
define dso_local void @flush_dpb() local_unnamed_addr #1 {
  %1 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %70, label %5

3:                                                ; preds = %5
  %4 = icmp eq i32 %11, 0
  br i1 %4, label %70, label %18

5:                                                ; preds = %0, %5
  %6 = phi i64 [ %10, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr @dpb, align 8, !tbaa !33
  %8 = getelementptr inbounds ptr, ptr %7, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  tail call fastcc void @unmark_for_reference(ptr noundef %9)
  %10 = add nuw nsw i64 %6, 1
  %11 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %5, label %3

14:                                               ; preds = %53, %56, %60
  %15 = trunc nuw i64 %23 to i32
  tail call fastcc void @remove_frame_from_dpb(i32 noundef signext %15)
  %16 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %3, %14
  %19 = phi i32 [ %16, %14 ], [ %11, %3 ]
  %20 = load ptr, ptr @dpb, align 8, !tbaa !33
  %21 = zext i32 %19 to i64
  br label %22

22:                                               ; preds = %64, %18
  %23 = phi i64 [ 0, %18 ], [ %65, %64 ]
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 32
  %27 = load i32, ptr %26, align 8, !tbaa !114
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds i8, ptr %25, i64 4
  %31 = load i32, ptr %30, align 4, !tbaa !77
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load i32, ptr %25, align 8, !tbaa !71
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %25, i64 40
  %38 = load ptr, ptr %37, align 8, !tbaa !39
  %39 = getelementptr inbounds i8, ptr %38, i64 6380
  %40 = load i32, ptr %39, align 4, !tbaa !69
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %64

42:                                               ; preds = %33
  %43 = and i32 %34, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42, %36
  %46 = getelementptr inbounds i8, ptr %25, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %47, i64 6380
  %51 = load i32, ptr %50, align 4, !tbaa !69
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49, %45, %42
  %54 = and i32 %34, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %14, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %25, i64 56
  %58 = load ptr, ptr %57, align 8, !tbaa !42
  %59 = icmp eq ptr %58, null
  br i1 %59, label %14, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %58, i64 6380
  %62 = load i32, ptr %61, align 4, !tbaa !69
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %14, label %64

64:                                               ; preds = %60, %49, %36, %29, %22
  %65 = add nuw nsw i64 %23, 1
  %66 = icmp eq i64 %65, %21
  br i1 %66, label %67, label %22

67:                                               ; preds = %64, %67
  tail call fastcc void @output_one_frame_from_dpb()
  %68 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %67

70:                                               ; preds = %14, %67, %0, %3
  store i32 -2147483648, ptr getelementptr inbounds (i8, ptr @dpb, i64 40), align 8, !tbaa !37
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @unmark_for_reference(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8, !tbaa !71
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %7, i64 6380
  store i32 0, ptr %10, align 4, !tbaa !69
  br label %11

11:                                               ; preds = %5, %9, %1
  %12 = and i32 %2, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %0, i64 56
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %16, i64 6380
  store i32 0, ptr %19, align 4, !tbaa !69
  br label %20

20:                                               ; preds = %14, %18, %11
  %21 = icmp eq i32 %2, 3
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = getelementptr inbounds i8, ptr %0, i64 48
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %0, i64 56
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %24, i64 6380
  store i32 0, ptr %31, align 4, !tbaa !69
  %32 = getelementptr inbounds i8, ptr %28, i64 6380
  store i32 0, ptr %32, align 4, !tbaa !69
  br label %33

33:                                               ; preds = %22, %26, %30
  %34 = getelementptr inbounds i8, ptr %0, i64 40
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  %36 = getelementptr inbounds i8, ptr %35, i64 6380
  store i32 0, ptr %36, align 4, !tbaa !69
  %37 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 0, ptr %37, align 4, !tbaa !77
  br label %43

38:                                               ; preds = %20
  %39 = getelementptr inbounds i8, ptr %0, i64 40
  %40 = load ptr, ptr %39, align 8, !tbaa !39
  %41 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 0, ptr %41, align 4, !tbaa !77
  %42 = icmp eq ptr %40, null
  br i1 %42, label %84, label %43

43:                                               ; preds = %33, %38
  %44 = phi ptr [ %35, %33 ], [ %40, %38 ]
  %45 = getelementptr inbounds i8, ptr %0, i64 40
  %46 = getelementptr inbounds i8, ptr %44, i64 6456
  %47 = load ptr, ptr %46, align 8, !tbaa !68
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  tail call void @free_mem2Dpel(ptr noundef nonnull %47) #15
  %50 = load ptr, ptr %45, align 8, !tbaa !39
  %51 = getelementptr inbounds i8, ptr %50, i64 6456
  store ptr null, ptr %51, align 8, !tbaa !68
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi ptr [ %50, %49 ], [ %44, %43 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 6448
  %55 = load ptr, ptr %54, align 8, !tbaa !62
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  tail call void @free_mem2Dpel(ptr noundef nonnull %55) #15
  %58 = load ptr, ptr %45, align 8, !tbaa !39
  %59 = getelementptr inbounds i8, ptr %58, i64 6448
  store ptr null, ptr %59, align 8, !tbaa !62
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi ptr [ %58, %57 ], [ %53, %52 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 6440
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %63) #15
  %66 = load ptr, ptr %45, align 8, !tbaa !39
  %67 = getelementptr inbounds i8, ptr %66, i64 6440
  store ptr null, ptr %67, align 8, !tbaa !67
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi ptr [ %66, %65 ], [ %61, %60 ]
  %70 = getelementptr inbounds i8, ptr %69, i64 6488
  %71 = load ptr, ptr %70, align 8, !tbaa !55
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  tail call void @free_mem3Dint64(ptr noundef nonnull %71, i32 noundef signext 6) #15
  %74 = load ptr, ptr %45, align 8, !tbaa !39
  %75 = getelementptr inbounds i8, ptr %74, i64 6488
  store ptr null, ptr %75, align 8, !tbaa !55
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi ptr [ %74, %73 ], [ %69, %68 ]
  %78 = getelementptr inbounds i8, ptr %77, i64 6496
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  tail call void @free_mem3Dint64(ptr noundef nonnull %79, i32 noundef signext 6) #15
  %82 = load ptr, ptr %45, align 8, !tbaa !39
  %83 = getelementptr inbounds i8, ptr %82, i64 6496
  store ptr null, ptr %83, align 8, !tbaa !56
  br label %84

84:                                               ; preds = %76, %81, %38
  %85 = getelementptr inbounds i8, ptr %0, i64 48
  %86 = load ptr, ptr %85, align 8, !tbaa !41
  %87 = icmp eq ptr %86, null
  br i1 %87, label %127, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %86, i64 6456
  %90 = load ptr, ptr %89, align 8, !tbaa !68
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  tail call void @free_mem2Dpel(ptr noundef nonnull %90) #15
  %93 = load ptr, ptr %85, align 8, !tbaa !41
  %94 = getelementptr inbounds i8, ptr %93, i64 6456
  store ptr null, ptr %94, align 8, !tbaa !68
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi ptr [ %93, %92 ], [ %86, %88 ]
  %97 = getelementptr inbounds i8, ptr %96, i64 6448
  %98 = load ptr, ptr %97, align 8, !tbaa !62
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  tail call void @free_mem2Dpel(ptr noundef nonnull %98) #15
  %101 = load ptr, ptr %85, align 8, !tbaa !41
  %102 = getelementptr inbounds i8, ptr %101, i64 6448
  store ptr null, ptr %102, align 8, !tbaa !62
  br label %103

103:                                              ; preds = %100, %95
  %104 = phi ptr [ %101, %100 ], [ %96, %95 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 6440
  %106 = load ptr, ptr %105, align 8, !tbaa !67
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  tail call void @free(ptr noundef nonnull %106) #15
  %109 = load ptr, ptr %85, align 8, !tbaa !41
  %110 = getelementptr inbounds i8, ptr %109, i64 6440
  store ptr null, ptr %110, align 8, !tbaa !67
  br label %111

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %109, %108 ], [ %104, %103 ]
  %113 = getelementptr inbounds i8, ptr %112, i64 6488
  %114 = load ptr, ptr %113, align 8, !tbaa !55
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  tail call void @free_mem3Dint64(ptr noundef nonnull %114, i32 noundef signext 6) #15
  %117 = load ptr, ptr %85, align 8, !tbaa !41
  %118 = getelementptr inbounds i8, ptr %117, i64 6488
  store ptr null, ptr %118, align 8, !tbaa !55
  br label %119

119:                                              ; preds = %116, %111
  %120 = phi ptr [ %117, %116 ], [ %112, %111 ]
  %121 = getelementptr inbounds i8, ptr %120, i64 6496
  %122 = load ptr, ptr %121, align 8, !tbaa !56
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  tail call void @free_mem3Dint64(ptr noundef nonnull %122, i32 noundef signext 6) #15
  %125 = load ptr, ptr %85, align 8, !tbaa !41
  %126 = getelementptr inbounds i8, ptr %125, i64 6496
  store ptr null, ptr %126, align 8, !tbaa !56
  br label %127

127:                                              ; preds = %119, %124, %84
  %128 = getelementptr inbounds i8, ptr %0, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !42
  %130 = icmp eq ptr %129, null
  br i1 %130, label %170, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, ptr %129, i64 6456
  %133 = load ptr, ptr %132, align 8, !tbaa !68
  %134 = icmp eq ptr %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  tail call void @free_mem2Dpel(ptr noundef nonnull %133) #15
  %136 = load ptr, ptr %128, align 8, !tbaa !42
  %137 = getelementptr inbounds i8, ptr %136, i64 6456
  store ptr null, ptr %137, align 8, !tbaa !68
  br label %138

138:                                              ; preds = %135, %131
  %139 = phi ptr [ %136, %135 ], [ %129, %131 ]
  %140 = getelementptr inbounds i8, ptr %139, i64 6448
  %141 = load ptr, ptr %140, align 8, !tbaa !62
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  tail call void @free_mem2Dpel(ptr noundef nonnull %141) #15
  %144 = load ptr, ptr %128, align 8, !tbaa !42
  %145 = getelementptr inbounds i8, ptr %144, i64 6448
  store ptr null, ptr %145, align 8, !tbaa !62
  br label %146

146:                                              ; preds = %143, %138
  %147 = phi ptr [ %144, %143 ], [ %139, %138 ]
  %148 = getelementptr inbounds i8, ptr %147, i64 6440
  %149 = load ptr, ptr %148, align 8, !tbaa !67
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  tail call void @free(ptr noundef nonnull %149) #15
  %152 = load ptr, ptr %128, align 8, !tbaa !42
  %153 = getelementptr inbounds i8, ptr %152, i64 6440
  store ptr null, ptr %153, align 8, !tbaa !67
  br label %154

154:                                              ; preds = %151, %146
  %155 = phi ptr [ %152, %151 ], [ %147, %146 ]
  %156 = getelementptr inbounds i8, ptr %155, i64 6488
  %157 = load ptr, ptr %156, align 8, !tbaa !55
  %158 = icmp eq ptr %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  tail call void @free_mem3Dint64(ptr noundef nonnull %157, i32 noundef signext 6) #15
  %160 = load ptr, ptr %128, align 8, !tbaa !42
  %161 = getelementptr inbounds i8, ptr %160, i64 6488
  store ptr null, ptr %161, align 8, !tbaa !55
  br label %162

162:                                              ; preds = %159, %154
  %163 = phi ptr [ %160, %159 ], [ %155, %154 ]
  %164 = getelementptr inbounds i8, ptr %163, i64 6496
  %165 = load ptr, ptr %164, align 8, !tbaa !56
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  tail call void @free_mem3Dint64(ptr noundef nonnull %165, i32 noundef signext 6) #15
  %168 = load ptr, ptr %128, align 8, !tbaa !42
  %169 = getelementptr inbounds i8, ptr %168, i64 6496
  store ptr null, ptr %169, align 8, !tbaa !56
  br label %170

170:                                              ; preds = %162, %167, %127
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @gen_field_ref_ids(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds i8, ptr %0, i64 6392
  %3 = load i32, ptr %2, align 8, !tbaa !48
  %4 = icmp sgt i32 %3, 3
  br i1 %4, label %5, label %66

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 6396
  %7 = getelementptr inbounds i8, ptr %0, i64 6480
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  %9 = getelementptr inbounds i8, ptr %0, i64 6496
  %10 = getelementptr inbounds i8, ptr %0, i64 288
  %11 = getelementptr inbounds i8, ptr %0, i64 6520
  %12 = load i32, ptr %6, align 4, !tbaa !49
  br label %13

13:                                               ; preds = %5, %59
  %14 = phi i32 [ %3, %5 ], [ %60, %59 ]
  %15 = phi i32 [ %12, %5 ], [ %61, %59 ]
  %16 = phi i64 [ 0, %5 ], [ %62, %59 ]
  %17 = icmp sgt i32 %15, 3
  br i1 %17, label %18, label %59

18:                                               ; preds = %13, %18
  %19 = phi i64 [ %52, %18 ], [ 0, %13 ]
  %20 = load ptr, ptr %7, align 8, !tbaa !54
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds ptr, ptr %22, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 %16
  %26 = load i8, ptr %25, align 1, !tbaa !115
  %27 = load ptr, ptr %20, align 8, !tbaa !6
  %28 = getelementptr inbounds ptr, ptr %27, i64 %19
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds i8, ptr %29, i64 %16
  %31 = load i8, ptr %30, align 1, !tbaa !115
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [33 x i64], ptr %8, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !116
  %35 = load ptr, ptr %9, align 8, !tbaa !56
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = getelementptr inbounds ptr, ptr %36, i64 %19
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds i64, ptr %38, i64 %16
  store i64 %34, ptr %39, align 8, !tbaa !116
  %40 = zext i8 %26 to i64
  %41 = getelementptr inbounds [33 x i64], ptr %10, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !116
  %43 = getelementptr inbounds i8, ptr %35, i64 8
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds ptr, ptr %44, i64 %19
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds i64, ptr %46, i64 %16
  store i64 %42, ptr %47, align 8, !tbaa !116
  %48 = load ptr, ptr %11, align 8, !tbaa !59
  %49 = getelementptr inbounds ptr, ptr %48, i64 %19
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 %16
  store i8 1, ptr %51, align 1, !tbaa !115
  %52 = add nuw nsw i64 %19, 1
  %53 = load i32, ptr %6, align 4, !tbaa !49
  %54 = sdiv i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %18, label %57

57:                                               ; preds = %18
  %58 = load i32, ptr %2, align 8, !tbaa !48
  br label %59

59:                                               ; preds = %57, %13
  %60 = phi i32 [ %58, %57 ], [ %14, %13 ]
  %61 = phi i32 [ %53, %57 ], [ %15, %13 ]
  %62 = add nuw nsw i64 %16, 1
  %63 = sdiv i32 %60, 4
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %13, label %66

66:                                               ; preds = %59, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind
define dso_local void @dpb_combine_field_yuv(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 48
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds i8, ptr %3, i64 6392
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds i8, ptr %3, i64 6396
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = shl nsw i32 %7, 1
  %9 = getelementptr inbounds i8, ptr %3, i64 6400
  %10 = load i32, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds i8, ptr %3, i64 6404
  %12 = load i32, ptr %11, align 4, !tbaa !51
  %13 = shl nsw i32 %12, 1
  %14 = tail call ptr @alloc_storable_picture(i32 noundef signext 0, i32 noundef signext %5, i32 noundef signext %8, i32 noundef signext %10, i32 noundef signext %13)
  %15 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr %14, ptr %15, align 8, !tbaa !39
  %16 = load ptr, ptr %2, align 8, !tbaa !41
  %17 = getelementptr inbounds i8, ptr %16, i64 6396
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = getelementptr inbounds i8, ptr %0, i64 56
  br label %29

22:                                               ; preds = %29, %1
  %23 = phi ptr [ %16, %1 ], [ %62, %29 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 6404
  %25 = load i32, ptr %24, align 4, !tbaa !51
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %145

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, ptr %0, i64 56
  br label %67

29:                                               ; preds = %20, %29
  %30 = phi i64 [ 0, %20 ], [ %61, %29 ]
  %31 = phi ptr [ %16, %20 ], [ %62, %29 ]
  %32 = load ptr, ptr %15, align 8, !tbaa !39
  %33 = getelementptr inbounds i8, ptr %32, i64 6424
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = shl nuw nsw i64 %30, 1
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %31, i64 6424
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 %30
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %31, i64 6392
  %43 = load i32, ptr %42, align 8, !tbaa !48
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %37, ptr align 2 %41, i64 %45, i1 false)
  %46 = load ptr, ptr %15, align 8, !tbaa !39
  %47 = getelementptr inbounds i8, ptr %46, i64 6424
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  %49 = or disjoint i64 %35, 1
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = load ptr, ptr %21, align 8, !tbaa !42
  %53 = getelementptr inbounds i8, ptr %52, i64 6424
  %54 = load ptr, ptr %53, align 8, !tbaa !60
  %55 = getelementptr inbounds ptr, ptr %54, i64 %30
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %52, i64 6392
  %58 = load i32, ptr %57, align 8, !tbaa !48
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %51, ptr align 2 %56, i64 %60, i1 false)
  %61 = add nuw nsw i64 %30, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !41
  %63 = getelementptr inbounds i8, ptr %62, i64 6396
  %64 = load i32, ptr %63, align 4, !tbaa !49
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %29, label %22

67:                                               ; preds = %27, %67
  %68 = phi i64 [ 0, %27 ], [ %139, %67 ]
  %69 = phi ptr [ %23, %27 ], [ %140, %67 ]
  %70 = load ptr, ptr %15, align 8, !tbaa !39
  %71 = getelementptr inbounds i8, ptr %70, i64 6464
  %72 = load ptr, ptr %71, align 8, !tbaa !63
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = shl nuw nsw i64 %68, 1
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = getelementptr inbounds i8, ptr %69, i64 6464
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds ptr, ptr %79, i64 %68
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = getelementptr inbounds i8, ptr %69, i64 6400
  %83 = load i32, ptr %82, align 8, !tbaa !50
  %84 = sext i32 %83 to i64
  %85 = shl nsw i64 %84, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %76, ptr align 2 %81, i64 %85, i1 false)
  %86 = load ptr, ptr %15, align 8, !tbaa !39
  %87 = getelementptr inbounds i8, ptr %86, i64 6464
  %88 = load ptr, ptr %87, align 8, !tbaa !63
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = or disjoint i64 %74, 1
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = load ptr, ptr %28, align 8, !tbaa !42
  %94 = getelementptr inbounds i8, ptr %93, i64 6464
  %95 = load ptr, ptr %94, align 8, !tbaa !63
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = getelementptr inbounds ptr, ptr %96, i64 %68
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = getelementptr inbounds i8, ptr %93, i64 6400
  %100 = load i32, ptr %99, align 8, !tbaa !50
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %92, ptr align 2 %98, i64 %102, i1 false)
  %103 = load ptr, ptr %15, align 8, !tbaa !39
  %104 = getelementptr inbounds i8, ptr %103, i64 6464
  %105 = load ptr, ptr %104, align 8, !tbaa !63
  %106 = getelementptr inbounds i8, ptr %105, i64 8
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = getelementptr inbounds ptr, ptr %107, i64 %74
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = load ptr, ptr %2, align 8, !tbaa !41
  %111 = getelementptr inbounds i8, ptr %110, i64 6464
  %112 = load ptr, ptr %111, align 8, !tbaa !63
  %113 = getelementptr inbounds i8, ptr %112, i64 8
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = getelementptr inbounds ptr, ptr %114, i64 %68
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds i8, ptr %110, i64 6400
  %118 = load i32, ptr %117, align 8, !tbaa !50
  %119 = sext i32 %118 to i64
  %120 = shl nsw i64 %119, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %109, ptr align 2 %116, i64 %120, i1 false)
  %121 = load ptr, ptr %15, align 8, !tbaa !39
  %122 = getelementptr inbounds i8, ptr %121, i64 6464
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  %124 = getelementptr inbounds i8, ptr %123, i64 8
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = getelementptr inbounds ptr, ptr %125, i64 %90
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = load ptr, ptr %28, align 8, !tbaa !42
  %129 = getelementptr inbounds i8, ptr %128, i64 6464
  %130 = load ptr, ptr %129, align 8, !tbaa !63
  %131 = getelementptr inbounds i8, ptr %130, i64 8
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = getelementptr inbounds ptr, ptr %132, i64 %68
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = getelementptr inbounds i8, ptr %128, i64 6400
  %136 = load i32, ptr %135, align 8, !tbaa !50
  %137 = sext i32 %136 to i64
  %138 = shl nsw i64 %137, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %127, ptr align 2 %134, i64 %138, i1 false)
  %139 = add nuw nsw i64 %68, 1
  %140 = load ptr, ptr %2, align 8, !tbaa !41
  %141 = getelementptr inbounds i8, ptr %140, i64 6404
  %142 = load i32, ptr %141, align 4, !tbaa !51
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %139, %143
  br i1 %144, label %67, label %145

145:                                              ; preds = %67, %22
  %146 = phi ptr [ %23, %22 ], [ %140, %67 ]
  %147 = getelementptr inbounds i8, ptr %146, i64 4
  %148 = load i32, ptr %147, align 4, !tbaa !80
  %149 = getelementptr inbounds i8, ptr %0, i64 56
  %150 = load ptr, ptr %149, align 8, !tbaa !42
  %151 = getelementptr inbounds i8, ptr %150, i64 4
  %152 = load i32, ptr %151, align 4, !tbaa !80
  %153 = tail call i32 @llvm.smin.i32(i32 %148, i32 %152)
  %154 = load ptr, ptr %15, align 8, !tbaa !39
  %155 = getelementptr inbounds i8, ptr %154, i64 16
  store i32 %153, ptr %155, align 8, !tbaa !119
  %156 = getelementptr inbounds i8, ptr %154, i64 4
  store i32 %153, ptr %156, align 4, !tbaa !80
  %157 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %153, ptr %157, align 4, !tbaa !82
  %158 = getelementptr inbounds i8, ptr %146, i64 16
  store i32 %153, ptr %158, align 8, !tbaa !119
  %159 = getelementptr inbounds i8, ptr %150, i64 16
  store i32 %153, ptr %159, align 8, !tbaa !119
  %160 = load i32, ptr %147, align 4, !tbaa !80
  %161 = getelementptr inbounds i8, ptr %154, i64 8
  store i32 %160, ptr %161, align 8, !tbaa !109
  %162 = getelementptr inbounds i8, ptr %150, i64 8
  store i32 %160, ptr %162, align 8, !tbaa !109
  %163 = load i32, ptr %151, align 4, !tbaa !80
  %164 = getelementptr inbounds i8, ptr %154, i64 12
  store i32 %163, ptr %164, align 4, !tbaa !111
  %165 = getelementptr inbounds i8, ptr %146, i64 12
  store i32 %163, ptr %165, align 4, !tbaa !111
  %166 = getelementptr inbounds i8, ptr %146, i64 6380
  %167 = load i32, ptr %166, align 4, !tbaa !69
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %145
  %170 = getelementptr inbounds i8, ptr %150, i64 6380
  %171 = load i32, ptr %170, align 4, !tbaa !69
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i32
  br label %174

174:                                              ; preds = %169, %145
  %175 = phi i32 [ 0, %145 ], [ %173, %169 ]
  %176 = getelementptr inbounds i8, ptr %154, i64 6380
  store i32 %175, ptr %176, align 4, !tbaa !69
  %177 = getelementptr inbounds i8, ptr %146, i64 6376
  %178 = load i32, ptr %177, align 8, !tbaa !70
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = getelementptr inbounds i8, ptr %154, i64 6376
  store i32 0, ptr %181, align 8, !tbaa !70
  br label %192

182:                                              ; preds = %174
  %183 = getelementptr inbounds i8, ptr %150, i64 6376
  %184 = load i32, ptr %183, align 8, !tbaa !70
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = getelementptr inbounds i8, ptr %154, i64 6376
  store i32 %186, ptr %187, align 8, !tbaa !70
  br i1 %185, label %188, label %192

188:                                              ; preds = %182
  %189 = getelementptr inbounds i8, ptr %0, i64 28
  %190 = load i32, ptr %189, align 4, !tbaa !86
  %191 = getelementptr inbounds i8, ptr %154, i64 6372
  store i32 %190, ptr %191, align 4, !tbaa !75
  br label %192

192:                                              ; preds = %180, %188, %182
  %193 = getelementptr inbounds i8, ptr %154, i64 6528
  store ptr %146, ptr %193, align 8, !tbaa !87
  %194 = getelementptr inbounds i8, ptr %154, i64 6536
  store ptr %150, ptr %194, align 8, !tbaa !88
  %195 = getelementptr inbounds i8, ptr %154, i64 6412
  store i32 0, ptr %195, align 4, !tbaa !52
  %196 = getelementptr inbounds i8, ptr %146, i64 6552
  %197 = load i32, ptr %196, align 8, !tbaa !121
  %198 = getelementptr inbounds i8, ptr %154, i64 6552
  store i32 %197, ptr %198, align 8, !tbaa !121
  %199 = getelementptr inbounds i8, ptr %146, i64 6560
  %200 = load i32, ptr %199, align 8, !tbaa !123
  %201 = getelementptr inbounds i8, ptr %154, i64 6560
  store i32 %200, ptr %201, align 8, !tbaa !123
  %202 = icmp eq i32 %200, 0
  br i1 %202, label %216, label %203

203:                                              ; preds = %192
  %204 = getelementptr inbounds i8, ptr %146, i64 6572
  %205 = load i32, ptr %204, align 4, !tbaa !124
  %206 = getelementptr inbounds i8, ptr %154, i64 6572
  store i32 %205, ptr %206, align 4, !tbaa !124
  %207 = getelementptr inbounds i8, ptr %146, i64 6576
  %208 = load i32, ptr %207, align 8, !tbaa !125
  %209 = getelementptr inbounds i8, ptr %154, i64 6576
  store i32 %208, ptr %209, align 8, !tbaa !125
  %210 = getelementptr inbounds i8, ptr %146, i64 6564
  %211 = load i32, ptr %210, align 4, !tbaa !126
  %212 = getelementptr inbounds i8, ptr %154, i64 6564
  store i32 %211, ptr %212, align 4, !tbaa !126
  %213 = getelementptr inbounds i8, ptr %146, i64 6568
  %214 = load i32, ptr %213, align 8, !tbaa !127
  %215 = getelementptr inbounds i8, ptr %154, i64 6568
  store i32 %214, ptr %215, align 8, !tbaa !127
  br label %216

216:                                              ; preds = %203, %192
  %217 = getelementptr inbounds i8, ptr %150, i64 6544
  store ptr %154, ptr %217, align 8, !tbaa !120
  %218 = getelementptr inbounds i8, ptr %146, i64 6544
  store ptr %154, ptr %218, align 8, !tbaa !120
  ret void
}

; Function Attrs: nounwind
define dso_local void @dpb_combine_field(ptr nocapture noundef %0) local_unnamed_addr #1 {
  tail call void @dpb_combine_field_yuv(ptr noundef %0)
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  tail call void @UnifiedOneForthPix(ptr noundef %3) #15
  %4 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !36
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = add nuw nsw i32 %4, 1
  %8 = lshr i32 %7, 1
  %9 = getelementptr inbounds i8, ptr %0, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds i8, ptr %10, i64 288
  %12 = getelementptr inbounds i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds i8, ptr %13, i64 288
  %15 = load ptr, ptr %2, align 8, !tbaa !39
  %16 = getelementptr inbounds i8, ptr %15, i64 288
  %17 = zext nneg i32 %8 to i64
  br label %36

18:                                               ; preds = %36, %1
  %19 = load i32, ptr @listXsize, align 4, !tbaa !36
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %0, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  br label %51

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %19, 1
  %26 = lshr i32 %25, 1
  %27 = getelementptr inbounds i8, ptr %0, i64 48
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  %29 = getelementptr inbounds i8, ptr %28, i64 24
  %30 = getelementptr inbounds i8, ptr %0, i64 56
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = getelementptr inbounds i8, ptr %31, i64 24
  %33 = load ptr, ptr %2, align 8, !tbaa !39
  %34 = getelementptr inbounds i8, ptr %33, i64 24
  %35 = zext nneg i32 %26 to i64
  br label %59

36:                                               ; preds = %6, %36
  %37 = phi i64 [ 0, %6 ], [ %49, %36 ]
  %38 = shl nuw nsw i64 %37, 1
  %39 = getelementptr inbounds [33 x i64], ptr %11, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !116
  %41 = sdiv i64 %40, 2
  %42 = shl nsw i64 %41, 1
  %43 = getelementptr inbounds [33 x i64], ptr %14, i64 0, i64 %38
  %44 = load i64, ptr %43, align 8, !tbaa !116
  %45 = sdiv i64 %44, 2
  %46 = shl nsw i64 %45, 1
  %47 = tail call i64 @llvm.smin.i64(i64 %42, i64 %46)
  %48 = getelementptr inbounds [33 x i64], ptr %16, i64 0, i64 %37
  store i64 %47, ptr %48, align 8, !tbaa !116
  %49 = add nuw nsw i64 %37, 1
  %50 = icmp eq i64 %49, %17
  br i1 %50, label %18, label %36

51:                                               ; preds = %59, %21
  %52 = phi ptr [ %23, %21 ], [ %28, %59 ]
  %53 = getelementptr inbounds i8, ptr %0, i64 48
  %54 = getelementptr inbounds i8, ptr %52, i64 6396
  %55 = load i32, ptr %54, align 4, !tbaa !49
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %57, label %338

57:                                               ; preds = %51
  %58 = getelementptr inbounds i8, ptr %0, i64 56
  br label %74

59:                                               ; preds = %24, %59
  %60 = phi i64 [ 0, %24 ], [ %72, %59 ]
  %61 = shl nuw nsw i64 %60, 1
  %62 = getelementptr inbounds [33 x i64], ptr %29, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !116
  %64 = sdiv i64 %63, 2
  %65 = shl nsw i64 %64, 1
  %66 = getelementptr inbounds [33 x i64], ptr %32, i64 0, i64 %61
  %67 = load i64, ptr %66, align 8, !tbaa !116
  %68 = sdiv i64 %67, 2
  %69 = shl nsw i64 %68, 1
  %70 = tail call i64 @llvm.smin.i64(i64 %65, i64 %69)
  %71 = getelementptr inbounds [33 x i64], ptr %34, i64 0, i64 %60
  store i64 %70, ptr %71, align 8, !tbaa !116
  %72 = add nuw nsw i64 %60, 1
  %73 = icmp eq i64 %72, %35
  br i1 %73, label %51, label %59

74:                                               ; preds = %57, %330
  %75 = phi ptr [ %52, %57 ], [ %331, %330 ]
  %76 = phi i64 [ 0, %57 ], [ %332, %330 ]
  %77 = getelementptr inbounds i8, ptr %75, i64 6392
  %78 = load i32, ptr %77, align 8, !tbaa !48
  %79 = icmp sgt i32 %78, 3
  br i1 %79, label %80, label %330

80:                                               ; preds = %74
  %81 = trunc i64 %76 to i32
  %82 = shl i32 %81, 1
  %83 = and i32 %82, 2147483640
  %84 = trunc nuw nsw i64 %76 to i32
  %85 = and i32 %84, 3
  %86 = or disjoint i32 %83, %85
  %87 = or disjoint i32 %86, 4
  %88 = zext nneg i32 %87 to i64
  %89 = zext nneg i32 %86 to i64
  br label %90

90:                                               ; preds = %80, %90
  %91 = phi i64 [ 0, %80 ], [ %323, %90 ]
  %92 = load ptr, ptr %2, align 8, !tbaa !39
  %93 = getelementptr inbounds i8, ptr %92, i64 6520
  %94 = load ptr, ptr %93, align 8, !tbaa !59
  %95 = getelementptr inbounds ptr, ptr %94, i64 %88
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %96, i64 %91
  store i8 1, ptr %97, align 1, !tbaa !115
  %98 = load ptr, ptr %2, align 8, !tbaa !39
  %99 = getelementptr inbounds i8, ptr %98, i64 6520
  %100 = load ptr, ptr %99, align 8, !tbaa !59
  %101 = getelementptr inbounds ptr, ptr %100, i64 %89
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds i8, ptr %102, i64 %91
  store i8 1, ptr %103, align 1, !tbaa !115
  %104 = load ptr, ptr %53, align 8, !tbaa !41
  %105 = getelementptr inbounds i8, ptr %104, i64 6504
  %106 = load ptr, ptr %105, align 8, !tbaa !57
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = getelementptr inbounds ptr, ptr %107, i64 %76
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = getelementptr inbounds ptr, ptr %109, i64 %91
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = load i16, ptr %111, align 2, !tbaa !122
  %113 = load ptr, ptr %2, align 8, !tbaa !39
  %114 = getelementptr inbounds i8, ptr %113, i64 6504
  %115 = load ptr, ptr %114, align 8, !tbaa !57
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds ptr, ptr %116, i64 %89
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = getelementptr inbounds ptr, ptr %118, i64 %91
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  store i16 %112, ptr %120, align 2, !tbaa !122
  %121 = getelementptr inbounds i8, ptr %111, i64 2
  %122 = load i16, ptr %121, align 2, !tbaa !122
  %123 = getelementptr inbounds i8, ptr %120, i64 2
  store i16 %122, ptr %123, align 2, !tbaa !122
  %124 = getelementptr inbounds i8, ptr %106, i64 8
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = getelementptr inbounds ptr, ptr %125, i64 %76
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = getelementptr inbounds ptr, ptr %127, i64 %91
  %129 = load ptr, ptr %128, align 8, !tbaa !6
  %130 = load i16, ptr %129, align 2, !tbaa !122
  %131 = getelementptr inbounds i8, ptr %115, i64 8
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = getelementptr inbounds ptr, ptr %132, i64 %89
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = getelementptr inbounds ptr, ptr %134, i64 %91
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  store i16 %130, ptr %136, align 2, !tbaa !122
  %137 = getelementptr inbounds i8, ptr %129, i64 2
  %138 = load i16, ptr %137, align 2, !tbaa !122
  %139 = getelementptr inbounds i8, ptr %136, i64 2
  store i16 %138, ptr %139, align 2, !tbaa !122
  %140 = getelementptr inbounds i8, ptr %104, i64 6480
  %141 = load ptr, ptr %140, align 8, !tbaa !54
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = getelementptr inbounds ptr, ptr %142, i64 %76
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %144, i64 %91
  %146 = load i8, ptr %145, align 1, !tbaa !115
  %147 = getelementptr inbounds i8, ptr %113, i64 6480
  %148 = load ptr, ptr %147, align 8, !tbaa !54
  %149 = load ptr, ptr %148, align 8, !tbaa !6
  %150 = getelementptr inbounds ptr, ptr %149, i64 %89
  %151 = load ptr, ptr %150, align 8, !tbaa !6
  %152 = getelementptr inbounds i8, ptr %151, i64 %91
  store i8 %146, ptr %152, align 1, !tbaa !115
  %153 = load ptr, ptr %53, align 8, !tbaa !41
  %154 = getelementptr inbounds i8, ptr %153, i64 6480
  %155 = load ptr, ptr %154, align 8, !tbaa !54
  %156 = getelementptr inbounds i8, ptr %155, i64 8
  %157 = load ptr, ptr %156, align 8, !tbaa !6
  %158 = getelementptr inbounds ptr, ptr %157, i64 %76
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = getelementptr inbounds i8, ptr %159, i64 %91
  %161 = load i8, ptr %160, align 1, !tbaa !115
  %162 = load ptr, ptr %2, align 8, !tbaa !39
  %163 = getelementptr inbounds i8, ptr %162, i64 6480
  %164 = load ptr, ptr %163, align 8, !tbaa !54
  %165 = getelementptr inbounds i8, ptr %164, i64 8
  %166 = load ptr, ptr %165, align 8, !tbaa !6
  %167 = getelementptr inbounds ptr, ptr %166, i64 %89
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = getelementptr inbounds i8, ptr %168, i64 %91
  store i8 %161, ptr %169, align 1, !tbaa !115
  %170 = load ptr, ptr %53, align 8, !tbaa !41
  %171 = getelementptr inbounds i8, ptr %170, i64 24
  %172 = zext i8 %146 to i64
  %173 = getelementptr inbounds [33 x i64], ptr %171, i64 0, i64 %172
  %174 = load i64, ptr %173, align 8, !tbaa !116
  %175 = getelementptr inbounds i8, ptr %170, i64 6496
  %176 = load ptr, ptr %175, align 8, !tbaa !56
  %177 = load ptr, ptr %176, align 8, !tbaa !6
  %178 = getelementptr inbounds ptr, ptr %177, i64 %76
  %179 = load ptr, ptr %178, align 8, !tbaa !6
  %180 = getelementptr inbounds i64, ptr %179, i64 %91
  store i64 %174, ptr %180, align 8, !tbaa !116
  %181 = getelementptr inbounds i8, ptr %170, i64 288
  %182 = zext i8 %161 to i64
  %183 = getelementptr inbounds [33 x i64], ptr %181, i64 0, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !116
  %185 = getelementptr inbounds i8, ptr %176, i64 8
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  %187 = getelementptr inbounds ptr, ptr %186, i64 %76
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = getelementptr inbounds i64, ptr %188, i64 %91
  store i64 %184, ptr %189, align 8, !tbaa !116
  %190 = getelementptr inbounds i8, ptr %170, i64 1608
  %191 = getelementptr inbounds [33 x i64], ptr %190, i64 0, i64 %172
  %192 = load i64, ptr %191, align 8, !tbaa !116
  %193 = load ptr, ptr %2, align 8, !tbaa !39
  %194 = getelementptr inbounds i8, ptr %193, i64 6496
  %195 = load ptr, ptr %194, align 8, !tbaa !56
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  %197 = getelementptr inbounds ptr, ptr %196, i64 %89
  %198 = load ptr, ptr %197, align 8, !tbaa !6
  %199 = getelementptr inbounds i64, ptr %198, i64 %91
  store i64 %192, ptr %199, align 8, !tbaa !116
  %200 = getelementptr inbounds i8, ptr %170, i64 1872
  %201 = getelementptr inbounds [33 x i64], ptr %200, i64 0, i64 %182
  %202 = load i64, ptr %201, align 8, !tbaa !116
  %203 = getelementptr inbounds i8, ptr %195, i64 8
  %204 = load ptr, ptr %203, align 8, !tbaa !6
  %205 = getelementptr inbounds ptr, ptr %204, i64 %89
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = getelementptr inbounds i64, ptr %206, i64 %91
  store i64 %202, ptr %207, align 8, !tbaa !116
  %208 = load ptr, ptr %58, align 8, !tbaa !42
  %209 = getelementptr inbounds i8, ptr %208, i64 6504
  %210 = load ptr, ptr %209, align 8, !tbaa !57
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = getelementptr inbounds ptr, ptr %211, i64 %76
  %213 = load ptr, ptr %212, align 8, !tbaa !6
  %214 = getelementptr inbounds ptr, ptr %213, i64 %91
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = load i16, ptr %215, align 2, !tbaa !122
  %217 = getelementptr inbounds i8, ptr %193, i64 6504
  %218 = load ptr, ptr %217, align 8, !tbaa !57
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  %220 = getelementptr inbounds ptr, ptr %219, i64 %88
  %221 = load ptr, ptr %220, align 8, !tbaa !6
  %222 = getelementptr inbounds ptr, ptr %221, i64 %91
  %223 = load ptr, ptr %222, align 8, !tbaa !6
  store i16 %216, ptr %223, align 2, !tbaa !122
  %224 = getelementptr inbounds i8, ptr %215, i64 2
  %225 = load i16, ptr %224, align 2, !tbaa !122
  %226 = getelementptr inbounds i8, ptr %223, i64 2
  store i16 %225, ptr %226, align 2, !tbaa !122
  %227 = getelementptr inbounds i8, ptr %210, i64 8
  %228 = load ptr, ptr %227, align 8, !tbaa !6
  %229 = getelementptr inbounds ptr, ptr %228, i64 %76
  %230 = load ptr, ptr %229, align 8, !tbaa !6
  %231 = getelementptr inbounds ptr, ptr %230, i64 %91
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  %233 = load i16, ptr %232, align 2, !tbaa !122
  %234 = getelementptr inbounds i8, ptr %218, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = getelementptr inbounds ptr, ptr %235, i64 %88
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  %238 = getelementptr inbounds ptr, ptr %237, i64 %91
  %239 = load ptr, ptr %238, align 8, !tbaa !6
  store i16 %233, ptr %239, align 2, !tbaa !122
  %240 = getelementptr inbounds i8, ptr %232, i64 2
  %241 = load i16, ptr %240, align 2, !tbaa !122
  %242 = getelementptr inbounds i8, ptr %239, i64 2
  store i16 %241, ptr %242, align 2, !tbaa !122
  %243 = getelementptr inbounds i8, ptr %208, i64 6480
  %244 = load ptr, ptr %243, align 8, !tbaa !54
  %245 = load ptr, ptr %244, align 8, !tbaa !6
  %246 = getelementptr inbounds ptr, ptr %245, i64 %76
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = getelementptr inbounds i8, ptr %247, i64 %91
  %249 = load i8, ptr %248, align 1, !tbaa !115
  %250 = getelementptr inbounds i8, ptr %193, i64 6480
  %251 = load ptr, ptr %250, align 8, !tbaa !54
  %252 = load ptr, ptr %251, align 8, !tbaa !6
  %253 = getelementptr inbounds ptr, ptr %252, i64 %88
  %254 = load ptr, ptr %253, align 8, !tbaa !6
  %255 = getelementptr inbounds i8, ptr %254, i64 %91
  store i8 %249, ptr %255, align 1, !tbaa !115
  %256 = load ptr, ptr %58, align 8, !tbaa !42
  %257 = getelementptr inbounds i8, ptr %256, i64 6480
  %258 = load ptr, ptr %257, align 8, !tbaa !54
  %259 = getelementptr inbounds i8, ptr %258, i64 8
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  %261 = getelementptr inbounds ptr, ptr %260, i64 %76
  %262 = load ptr, ptr %261, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 %91
  %264 = load i8, ptr %263, align 1, !tbaa !115
  %265 = load ptr, ptr %2, align 8, !tbaa !39
  %266 = getelementptr inbounds i8, ptr %265, i64 6480
  %267 = load ptr, ptr %266, align 8, !tbaa !54
  %268 = getelementptr inbounds i8, ptr %267, i64 8
  %269 = load ptr, ptr %268, align 8, !tbaa !6
  %270 = getelementptr inbounds ptr, ptr %269, i64 %88
  %271 = load ptr, ptr %270, align 8, !tbaa !6
  %272 = getelementptr inbounds i8, ptr %271, i64 %91
  store i8 %264, ptr %272, align 1, !tbaa !115
  %273 = load ptr, ptr %58, align 8, !tbaa !42
  %274 = getelementptr inbounds i8, ptr %273, i64 24
  %275 = zext i8 %249 to i64
  %276 = getelementptr inbounds [33 x i64], ptr %274, i64 0, i64 %275
  %277 = load i64, ptr %276, align 8, !tbaa !116
  %278 = getelementptr inbounds i8, ptr %273, i64 6496
  %279 = load ptr, ptr %278, align 8, !tbaa !56
  %280 = load ptr, ptr %279, align 8, !tbaa !6
  %281 = getelementptr inbounds ptr, ptr %280, i64 %76
  %282 = load ptr, ptr %281, align 8, !tbaa !6
  %283 = getelementptr inbounds i64, ptr %282, i64 %91
  store i64 %277, ptr %283, align 8, !tbaa !116
  %284 = getelementptr inbounds i8, ptr %273, i64 288
  %285 = zext i8 %264 to i64
  %286 = getelementptr inbounds [33 x i64], ptr %284, i64 0, i64 %285
  %287 = load i64, ptr %286, align 8, !tbaa !116
  %288 = getelementptr inbounds i8, ptr %279, i64 8
  %289 = load ptr, ptr %288, align 8, !tbaa !6
  %290 = getelementptr inbounds ptr, ptr %289, i64 %76
  %291 = load ptr, ptr %290, align 8, !tbaa !6
  %292 = getelementptr inbounds i64, ptr %291, i64 %91
  store i64 %287, ptr %292, align 8, !tbaa !116
  %293 = getelementptr inbounds i8, ptr %273, i64 1608
  %294 = getelementptr inbounds [33 x i64], ptr %293, i64 0, i64 %275
  %295 = load i64, ptr %294, align 8, !tbaa !116
  %296 = load ptr, ptr %2, align 8, !tbaa !39
  %297 = getelementptr inbounds i8, ptr %296, i64 6496
  %298 = load ptr, ptr %297, align 8, !tbaa !56
  %299 = load ptr, ptr %298, align 8, !tbaa !6
  %300 = getelementptr inbounds ptr, ptr %299, i64 %88
  %301 = load ptr, ptr %300, align 8, !tbaa !6
  %302 = getelementptr inbounds i64, ptr %301, i64 %91
  store i64 %295, ptr %302, align 8, !tbaa !116
  %303 = getelementptr inbounds i8, ptr %273, i64 1872
  %304 = getelementptr inbounds [33 x i64], ptr %303, i64 0, i64 %285
  %305 = load i64, ptr %304, align 8, !tbaa !116
  %306 = getelementptr inbounds i8, ptr %298, i64 8
  %307 = load ptr, ptr %306, align 8, !tbaa !6
  %308 = getelementptr inbounds ptr, ptr %307, i64 %88
  %309 = load ptr, ptr %308, align 8, !tbaa !6
  %310 = getelementptr inbounds i64, ptr %309, i64 %91
  store i64 %305, ptr %310, align 8, !tbaa !116
  %311 = load ptr, ptr %53, align 8, !tbaa !41
  %312 = getelementptr inbounds i8, ptr %311, i64 6520
  %313 = load ptr, ptr %312, align 8, !tbaa !59
  %314 = getelementptr inbounds ptr, ptr %313, i64 %76
  %315 = load ptr, ptr %314, align 8, !tbaa !6
  %316 = getelementptr inbounds i8, ptr %315, i64 %91
  store i8 1, ptr %316, align 1, !tbaa !115
  %317 = load ptr, ptr %58, align 8, !tbaa !42
  %318 = getelementptr inbounds i8, ptr %317, i64 6520
  %319 = load ptr, ptr %318, align 8, !tbaa !59
  %320 = getelementptr inbounds ptr, ptr %319, i64 %76
  %321 = load ptr, ptr %320, align 8, !tbaa !6
  %322 = getelementptr inbounds i8, ptr %321, i64 %91
  store i8 1, ptr %322, align 1, !tbaa !115
  %323 = add nuw nsw i64 %91, 1
  %324 = load ptr, ptr %53, align 8, !tbaa !41
  %325 = getelementptr inbounds i8, ptr %324, i64 6392
  %326 = load i32, ptr %325, align 8, !tbaa !48
  %327 = sdiv i32 %326, 4
  %328 = sext i32 %327 to i64
  %329 = icmp slt i64 %323, %328
  br i1 %329, label %90, label %330

330:                                              ; preds = %90, %74
  %331 = phi ptr [ %75, %74 ], [ %324, %90 ]
  %332 = add nuw nsw i64 %76, 1
  %333 = getelementptr inbounds i8, ptr %331, i64 6396
  %334 = load i32, ptr %333, align 4, !tbaa !49
  %335 = sdiv i32 %334, 4
  %336 = sext i32 %335 to i64
  %337 = icmp slt i64 %332, %336
  br i1 %337, label %74, label %338

338:                                              ; preds = %330, %51
  ret void
}

; Function Attrs: nounwind
define dso_local void @alloc_ref_pic_list_reordering_buffer(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @img, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load i32, ptr %3, align 8, !tbaa !128
  switch i32 %4, label %5 [
    i32 2, label %24
    i32 4, label %24
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %2, i64 89408
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #16
  %11 = getelementptr inbounds i8, ptr %0, i64 64
  store ptr %10, ptr %11, align 8, !tbaa !129
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #15
  br label %14

14:                                               ; preds = %13, %5
  %15 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #16
  %16 = getelementptr inbounds i8, ptr %0, i64 72
  store ptr %15, ptr %16, align 8, !tbaa !131
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.20) #15
  br label %19

19:                                               ; preds = %18, %14
  %20 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #16
  %21 = getelementptr inbounds i8, ptr %0, i64 80
  store ptr %20, ptr %21, align 8, !tbaa !132
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  tail call void @no_mem_exit(ptr noundef nonnull @.str.21) #15
  br label %26

24:                                               ; preds = %1, %1
  %25 = getelementptr inbounds i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  br label %26

26:                                               ; preds = %19, %23, %24
  %27 = load ptr, ptr @img, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 24
  %29 = load i32, ptr %28, align 8, !tbaa !128
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %27, i64 89412
  %33 = load i32, ptr %32, align 4, !tbaa !84
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 4) #16
  %37 = getelementptr inbounds i8, ptr %0, i64 96
  store ptr %36, ptr %37, align 8, !tbaa !133
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #15
  br label %40

40:                                               ; preds = %39, %31
  %41 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 4) #16
  %42 = getelementptr inbounds i8, ptr %0, i64 104
  store ptr %41, ptr %42, align 8, !tbaa !134
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @no_mem_exit(ptr noundef nonnull @.str.23) #15
  br label %45

45:                                               ; preds = %44, %40
  %46 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 4) #16
  %47 = getelementptr inbounds i8, ptr %0, i64 112
  store ptr %46, ptr %47, align 8, !tbaa !135
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  tail call void @no_mem_exit(ptr noundef nonnull @.str.24) #15
  br label %52

50:                                               ; preds = %26
  %51 = getelementptr inbounds i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  br label %52

52:                                               ; preds = %45, %49, %50
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @free_ref_pic_list_reordering_buffer(ptr nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds i8, ptr %0, i64 64
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds i8, ptr %0, i64 72
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds i8, ptr %0, i64 80
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #15
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #15
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds i8, ptr %0, i64 104
  %23 = load ptr, ptr %22, align 8, !tbaa !134
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #15
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds i8, ptr %0, i64 112
  %28 = load ptr, ptr %27, align 8, !tbaa !135
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %28) #15
  br label %31

31:                                               ; preds = %30, %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind
define dso_local void @fill_frame_num_gap(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !36
  %3 = add i32 %2, 4
  %4 = shl nuw i32 1, %3
  %5 = getelementptr inbounds i8, ptr %0, i64 90316
  %6 = load i32, ptr %5, align 4, !tbaa !91
  store i32 1, ptr %5, align 4, !tbaa !91
  %7 = getelementptr inbounds i8, ptr %0, i64 90472
  %8 = load i32, ptr %7, align 8, !tbaa !136
  %9 = getelementptr inbounds i8, ptr %0, i64 90284
  %10 = load i32, ptr %9, align 4, !tbaa !73
  %11 = add nsw i32 %8, 1
  %12 = srem i32 %11, %4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %34, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds i8, ptr %0, i64 52
  %16 = getelementptr inbounds i8, ptr %0, i64 60
  %17 = getelementptr inbounds i8, ptr %0, i64 56
  %18 = getelementptr inbounds i8, ptr %0, i64 64
  %19 = getelementptr inbounds i8, ptr %0, i64 90320
  br label %20

20:                                               ; preds = %14, %20
  %21 = phi i32 [ %12, %14 ], [ %32, %20 ]
  %22 = load i32, ptr %15, align 4, !tbaa !137
  %23 = load i32, ptr %16, align 4, !tbaa !138
  %24 = load i32, ptr %17, align 8, !tbaa !139
  %25 = load i32, ptr %18, align 8, !tbaa !140
  %26 = tail call ptr @alloc_storable_picture(i32 noundef signext 0, i32 noundef signext %22, i32 noundef signext %23, i32 noundef signext %24, i32 noundef signext %25)
  %27 = getelementptr inbounds i8, ptr %26, i64 6412
  store i32 1, ptr %27, align 4, !tbaa !52
  %28 = getelementptr inbounds i8, ptr %26, i64 6364
  store i32 %21, ptr %28, align 4, !tbaa !74
  %29 = getelementptr inbounds i8, ptr %26, i64 6388
  store i32 1, ptr %29, align 4, !tbaa !141
  %30 = getelementptr inbounds i8, ptr %26, i64 6384
  store i32 1, ptr %30, align 8, !tbaa !118
  store i32 0, ptr %19, align 8, !tbaa !98
  tail call void @store_picture_in_dpb(ptr noundef %26)
  %31 = add nsw i32 %21, 1
  %32 = srem i32 %31, %4
  %33 = icmp eq i32 %10, %32
  br i1 %33, label %34, label %20

34:                                               ; preds = %20, %1
  store i32 %6, ptr %5, align 4, !tbaa !91
  ret void
}

; Function Attrs: nounwind
define dso_local noundef ptr @alloc_colocated(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #1 {
  %4 = tail call noalias dereferenceable_or_null(4880) ptr @calloc(i64 noundef 1, i64 noundef 4880) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.25) #15
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %0, ptr %8, align 4, !tbaa !142
  %9 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %1, ptr %9, align 8, !tbaa !144
  %10 = getelementptr inbounds i8, ptr %4, i64 1600
  %11 = sdiv i32 %1, 4
  %12 = sdiv i32 %0, 4
  %13 = tail call signext i32 @get_mem3D(ptr noundef nonnull %10, i32 noundef signext 2, i32 noundef signext %11, i32 noundef signext %12) #15
  %14 = getelementptr inbounds i8, ptr %4, i64 1608
  %15 = tail call signext i32 @get_mem3Dint64(ptr noundef nonnull %14, i32 noundef signext 2, i32 noundef signext %11, i32 noundef signext %12) #15
  %16 = getelementptr inbounds i8, ptr %4, i64 1616
  %17 = tail call signext i32 @get_mem4Dshort(ptr noundef nonnull %16, i32 noundef signext 2, i32 noundef signext %11, i32 noundef signext %12, i32 noundef signext 2) #15
  %18 = getelementptr inbounds i8, ptr %4, i64 1624
  %19 = tail call signext i32 @get_mem2D(ptr noundef nonnull %18, i32 noundef signext %11, i32 noundef signext %12) #15
  %20 = getelementptr inbounds i8, ptr %4, i64 4872
  %21 = tail call signext i32 @get_mem2D(ptr noundef nonnull %20, i32 noundef signext %11, i32 noundef signext %12) #15
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %7
  %24 = getelementptr inbounds i8, ptr %4, i64 3216
  %25 = sdiv i32 %1, 8
  %26 = tail call signext i32 @get_mem3D(ptr noundef nonnull %24, i32 noundef signext 2, i32 noundef signext %25, i32 noundef signext %12) #15
  %27 = getelementptr inbounds i8, ptr %4, i64 3224
  %28 = tail call signext i32 @get_mem3Dint64(ptr noundef nonnull %27, i32 noundef signext 2, i32 noundef signext %25, i32 noundef signext %12) #15
  %29 = getelementptr inbounds i8, ptr %4, i64 3232
  %30 = tail call signext i32 @get_mem4Dshort(ptr noundef nonnull %29, i32 noundef signext 2, i32 noundef signext %25, i32 noundef signext %12, i32 noundef signext 2) #15
  %31 = getelementptr inbounds i8, ptr %4, i64 3240
  %32 = tail call signext i32 @get_mem2D(ptr noundef nonnull %31, i32 noundef signext %25, i32 noundef signext %12) #15
  %33 = getelementptr inbounds i8, ptr %4, i64 4832
  %34 = tail call signext i32 @get_mem3D(ptr noundef nonnull %33, i32 noundef signext 2, i32 noundef signext %25, i32 noundef signext %12) #15
  %35 = getelementptr inbounds i8, ptr %4, i64 4840
  %36 = tail call signext i32 @get_mem3Dint64(ptr noundef nonnull %35, i32 noundef signext 2, i32 noundef signext %25, i32 noundef signext %12) #15
  %37 = getelementptr inbounds i8, ptr %4, i64 4848
  %38 = tail call signext i32 @get_mem4Dshort(ptr noundef nonnull %37, i32 noundef signext 2, i32 noundef signext %25, i32 noundef signext %12, i32 noundef signext 2) #15
  %39 = getelementptr inbounds i8, ptr %4, i64 4856
  %40 = tail call signext i32 @get_mem2D(ptr noundef nonnull %39, i32 noundef signext %25, i32 noundef signext %12) #15
  br label %41

41:                                               ; preds = %23, %7
  store i32 %2, ptr %4, align 8, !tbaa !145
  ret ptr %4
}

; Function Attrs: nounwind
define dso_local void @free_colocated(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 1600
  %5 = load ptr, ptr %4, align 8, !tbaa !146
  tail call void @free_mem3D(ptr noundef %5, i32 noundef signext 2) #15
  %6 = getelementptr inbounds i8, ptr %0, i64 1608
  %7 = load ptr, ptr %6, align 8, !tbaa !147
  tail call void @free_mem3Dint64(ptr noundef %7, i32 noundef signext 2) #15
  %8 = getelementptr inbounds i8, ptr %0, i64 1616
  %9 = load ptr, ptr %8, align 8, !tbaa !148
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 8, !tbaa !144
  %12 = sdiv i32 %11, 4
  tail call void @free_mem4Dshort(ptr noundef %9, i32 noundef signext 2, i32 noundef signext %12) #15
  %13 = getelementptr inbounds i8, ptr %0, i64 1624
  %14 = load ptr, ptr %13, align 8, !tbaa !149
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  tail call void @free_mem2D(ptr noundef nonnull %14) #15
  store ptr null, ptr %13, align 8, !tbaa !149
  br label %17

17:                                               ; preds = %16, %3
  %18 = getelementptr inbounds i8, ptr %0, i64 4872
  %19 = load ptr, ptr %18, align 8, !tbaa !150
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @free_mem2D(ptr noundef nonnull %19) #15
  store ptr null, ptr %18, align 8, !tbaa !150
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, ptr %0, align 8, !tbaa !145
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %0, i64 3216
  %27 = load ptr, ptr %26, align 8, !tbaa !151
  tail call void @free_mem3D(ptr noundef %27, i32 noundef signext 2) #15
  %28 = getelementptr inbounds i8, ptr %0, i64 3224
  %29 = load ptr, ptr %28, align 8, !tbaa !152
  tail call void @free_mem3Dint64(ptr noundef %29, i32 noundef signext 2) #15
  %30 = getelementptr inbounds i8, ptr %0, i64 3232
  %31 = load ptr, ptr %30, align 8, !tbaa !153
  %32 = load i32, ptr %10, align 8, !tbaa !144
  %33 = sdiv i32 %32, 8
  tail call void @free_mem4Dshort(ptr noundef %31, i32 noundef signext 2, i32 noundef signext %33) #15
  %34 = getelementptr inbounds i8, ptr %0, i64 3240
  %35 = load ptr, ptr %34, align 8, !tbaa !154
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  tail call void @free_mem2D(ptr noundef nonnull %35) #15
  store ptr null, ptr %34, align 8, !tbaa !154
  br label %38

38:                                               ; preds = %37, %25
  %39 = getelementptr inbounds i8, ptr %0, i64 4832
  %40 = load ptr, ptr %39, align 8, !tbaa !155
  tail call void @free_mem3D(ptr noundef %40, i32 noundef signext 2) #15
  %41 = getelementptr inbounds i8, ptr %0, i64 4840
  %42 = load ptr, ptr %41, align 8, !tbaa !156
  tail call void @free_mem3Dint64(ptr noundef %42, i32 noundef signext 2) #15
  %43 = getelementptr inbounds i8, ptr %0, i64 4848
  %44 = load ptr, ptr %43, align 8, !tbaa !157
  %45 = load i32, ptr %10, align 8, !tbaa !144
  %46 = sdiv i32 %45, 8
  tail call void @free_mem4Dshort(ptr noundef %44, i32 noundef signext 2, i32 noundef signext %46) #15
  %47 = getelementptr inbounds i8, ptr %0, i64 4856
  %48 = load ptr, ptr %47, align 8, !tbaa !158
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  tail call void @free_mem2D(ptr noundef nonnull %48) #15
  br label %51

51:                                               ; preds = %38, %50, %22
  tail call void @free(ptr noundef nonnull %0) #15
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @compute_colocated(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load ptr, ptr @img, align 8, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %6, i64 90220
  %8 = load i32, ptr %7, align 4, !tbaa !159
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %1, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds i8, ptr %1, i64 40
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  br label %36

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, ptr %6, i64 28
  %19 = load i32, ptr %18, align 4, !tbaa !89
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 8, !tbaa !47
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %5, i64 6412
  %26 = load i32, ptr %25, align 4, !tbaa !52
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %19, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, ptr %5, i64 6528
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  br label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds i8, ptr %5, i64 6536
  %35 = load ptr, ptr %34, align 8, !tbaa !88
  br label %36

36:                                               ; preds = %17, %30, %33, %24, %21, %10
  %37 = phi ptr [ %16, %10 ], [ %32, %30 ], [ %35, %33 ], [ %5, %24 ], [ %5, %21 ], [ %5, %17 ]
  %38 = phi ptr [ %13, %10 ], [ %32, %30 ], [ %35, %33 ], [ %5, %24 ], [ %5, %21 ], [ %5, %17 ]
  %39 = phi ptr [ %5, %10 ], [ %32, %30 ], [ %35, %33 ], [ %5, %24 ], [ %5, %21 ], [ %5, %17 ]
  %40 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %41 = getelementptr inbounds i8, ptr %40, i64 1148
  %42 = load i32, ptr %41, align 4, !tbaa !16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds i8, ptr %40, i64 1156
  %46 = load i32, ptr %45, align 4, !tbaa !160
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %266, label %48

48:                                               ; preds = %44, %36
  %49 = getelementptr inbounds i8, ptr %39, i64 6396
  %50 = load i32, ptr %49, align 4, !tbaa !49
  %51 = icmp sgt i32 %50, 3
  br i1 %51, label %52, label %266

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %39, i64 6392
  %54 = getelementptr inbounds i8, ptr %39, i64 6520
  %55 = getelementptr inbounds i8, ptr %37, i64 4
  %56 = getelementptr inbounds i8, ptr %38, i64 4
  %57 = getelementptr inbounds i8, ptr %37, i64 6504
  %58 = getelementptr inbounds i8, ptr %0, i64 1616
  %59 = getelementptr inbounds i8, ptr %37, i64 6480
  %60 = getelementptr inbounds i8, ptr %0, i64 1600
  %61 = getelementptr inbounds i8, ptr %39, i64 6496
  %62 = getelementptr inbounds i8, ptr %0, i64 1608
  %63 = getelementptr inbounds i8, ptr %37, i64 6376
  %64 = getelementptr inbounds i8, ptr %0, i64 4864
  %65 = getelementptr inbounds i8, ptr %38, i64 6504
  %66 = getelementptr inbounds i8, ptr %38, i64 6480
  %67 = getelementptr inbounds i8, ptr %38, i64 6376
  %68 = getelementptr inbounds i8, ptr %39, i64 6504
  %69 = getelementptr inbounds i8, ptr %39, i64 6480
  %70 = getelementptr inbounds i8, ptr %39, i64 6376
  %71 = load i32, ptr %53, align 8, !tbaa !48
  br label %72

72:                                               ; preds = %52, %257
  %73 = phi i32 [ %50, %52 ], [ %258, %257 ]
  %74 = phi i32 [ %71, %52 ], [ %259, %257 ]
  %75 = phi i64 [ 0, %52 ], [ %260, %257 ]
  %76 = icmp sgt i32 %74, 3
  br i1 %76, label %77, label %257

77:                                               ; preds = %72
  %78 = trunc nuw nsw i64 %75 to i32
  %79 = lshr i32 %78, 1
  %80 = and i32 %79, 1073741820
  %81 = add nuw nsw i32 %80, %79
  %82 = zext nneg i32 %79 to i64
  %83 = add nuw nsw i32 %81, 4
  %84 = zext nneg i32 %83 to i64
  %85 = zext nneg i32 %81 to i64
  br label %86

86:                                               ; preds = %77, %192
  %87 = phi i64 [ 0, %77 ], [ %250, %192 ]
  %88 = load ptr, ptr @img, align 8, !tbaa !6
  %89 = getelementptr inbounds i8, ptr %88, i64 90220
  %90 = load i32, ptr %89, align 4, !tbaa !159
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %162, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %54, align 8, !tbaa !59
  %94 = getelementptr inbounds ptr, ptr %93, i64 %75
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds i8, ptr %95, i64 %87
  %97 = load i8, ptr %96, align 1, !tbaa !115
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %162, label %99

99:                                               ; preds = %92
  %100 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %101 = getelementptr inbounds i8, ptr %100, i64 4
  %102 = load i32, ptr %101, align 4, !tbaa !80
  %103 = load i32, ptr %55, align 4, !tbaa !80
  %104 = sub nsw i32 %102, %103
  %105 = tail call i32 @llvm.abs.i32(i32 %104, i1 true)
  %106 = load i32, ptr %56, align 4, !tbaa !80
  %107 = sub nsw i32 %102, %106
  %108 = tail call i32 @llvm.abs.i32(i32 %107, i1 true)
  %109 = icmp ugt i32 %105, %108
  %110 = load ptr, ptr %58, align 8, !tbaa !148
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = getelementptr inbounds ptr, ptr %111, i64 %75
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = getelementptr inbounds ptr, ptr %113, i64 %87
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = getelementptr inbounds i8, ptr %115, i64 2
  %117 = getelementptr inbounds i8, ptr %110, i64 8
  br i1 %109, label %118, label %140

118:                                              ; preds = %99
  %119 = load ptr, ptr %65, align 8, !tbaa !57
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = getelementptr inbounds ptr, ptr %120, i64 %82
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = getelementptr inbounds ptr, ptr %122, i64 %87
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  %125 = load i16, ptr %124, align 2, !tbaa !122
  store i16 %125, ptr %115, align 2, !tbaa !122
  %126 = getelementptr inbounds i8, ptr %124, i64 2
  %127 = load i16, ptr %126, align 2, !tbaa !122
  store i16 %127, ptr %116, align 2, !tbaa !122
  %128 = getelementptr inbounds i8, ptr %119, i64 8
  %129 = load ptr, ptr %128, align 8, !tbaa !6
  %130 = getelementptr inbounds ptr, ptr %129, i64 %82
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = getelementptr inbounds ptr, ptr %131, i64 %87
  %133 = load ptr, ptr %132, align 8, !tbaa !6
  %134 = load i16, ptr %133, align 2, !tbaa !122
  %135 = load ptr, ptr %117, align 8, !tbaa !6
  %136 = getelementptr inbounds ptr, ptr %135, i64 %75
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = getelementptr inbounds ptr, ptr %137, i64 %87
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  store i16 %134, ptr %139, align 2, !tbaa !122
  br label %192

140:                                              ; preds = %99
  %141 = load ptr, ptr %57, align 8, !tbaa !57
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = getelementptr inbounds ptr, ptr %142, i64 %82
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = getelementptr inbounds ptr, ptr %144, i64 %87
  %146 = load ptr, ptr %145, align 8, !tbaa !6
  %147 = load i16, ptr %146, align 2, !tbaa !122
  store i16 %147, ptr %115, align 2, !tbaa !122
  %148 = getelementptr inbounds i8, ptr %146, i64 2
  %149 = load i16, ptr %148, align 2, !tbaa !122
  store i16 %149, ptr %116, align 2, !tbaa !122
  %150 = getelementptr inbounds i8, ptr %141, i64 8
  %151 = load ptr, ptr %150, align 8, !tbaa !6
  %152 = getelementptr inbounds ptr, ptr %151, i64 %82
  %153 = load ptr, ptr %152, align 8, !tbaa !6
  %154 = getelementptr inbounds ptr, ptr %153, i64 %87
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  %156 = load i16, ptr %155, align 2, !tbaa !122
  %157 = load ptr, ptr %117, align 8, !tbaa !6
  %158 = getelementptr inbounds ptr, ptr %157, i64 %75
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = getelementptr inbounds ptr, ptr %159, i64 %87
  %161 = load ptr, ptr %160, align 8, !tbaa !6
  store i16 %156, ptr %161, align 2, !tbaa !122
  br label %192

162:                                              ; preds = %92, %86
  %163 = load ptr, ptr %68, align 8, !tbaa !57
  %164 = load ptr, ptr %163, align 8, !tbaa !6
  %165 = getelementptr inbounds ptr, ptr %164, i64 %75
  %166 = load ptr, ptr %165, align 8, !tbaa !6
  %167 = getelementptr inbounds ptr, ptr %166, i64 %87
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = load i16, ptr %168, align 2, !tbaa !122
  %170 = load ptr, ptr %58, align 8, !tbaa !148
  %171 = load ptr, ptr %170, align 8, !tbaa !6
  %172 = getelementptr inbounds ptr, ptr %171, i64 %75
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = getelementptr inbounds ptr, ptr %173, i64 %87
  %175 = load ptr, ptr %174, align 8, !tbaa !6
  store i16 %169, ptr %175, align 2, !tbaa !122
  %176 = getelementptr inbounds i8, ptr %168, i64 2
  %177 = load i16, ptr %176, align 2, !tbaa !122
  %178 = getelementptr inbounds i8, ptr %175, i64 2
  store i16 %177, ptr %178, align 2, !tbaa !122
  %179 = getelementptr inbounds i8, ptr %163, i64 8
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  %181 = getelementptr inbounds ptr, ptr %180, i64 %75
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = getelementptr inbounds ptr, ptr %182, i64 %87
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = load i16, ptr %184, align 2, !tbaa !122
  %186 = getelementptr inbounds i8, ptr %170, i64 8
  %187 = load ptr, ptr %186, align 8, !tbaa !6
  %188 = getelementptr inbounds ptr, ptr %187, i64 %75
  %189 = load ptr, ptr %188, align 8, !tbaa !6
  %190 = getelementptr inbounds ptr, ptr %189, i64 %87
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  store i16 %185, ptr %191, align 2, !tbaa !122
  br label %192

192:                                              ; preds = %162, %140, %118
  %193 = phi ptr [ %184, %162 ], [ %155, %140 ], [ %133, %118 ]
  %194 = phi ptr [ %191, %162 ], [ %161, %140 ], [ %139, %118 ]
  %195 = phi ptr [ %69, %162 ], [ %59, %140 ], [ %66, %118 ]
  %196 = phi i64 [ %75, %162 ], [ %82, %140 ], [ %82, %118 ]
  %197 = phi i64 [ %75, %162 ], [ %84, %140 ], [ %85, %118 ]
  %198 = phi ptr [ %70, %162 ], [ %63, %140 ], [ %67, %118 ]
  %199 = getelementptr inbounds i8, ptr %193, i64 2
  %200 = load i16, ptr %199, align 2, !tbaa !122
  %201 = getelementptr inbounds i8, ptr %194, i64 2
  store i16 %200, ptr %201, align 2, !tbaa !122
  %202 = load ptr, ptr %195, align 8, !tbaa !54
  %203 = load ptr, ptr %202, align 8, !tbaa !6
  %204 = getelementptr inbounds ptr, ptr %203, i64 %196
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = getelementptr inbounds i8, ptr %205, i64 %87
  %207 = load i8, ptr %206, align 1, !tbaa !115
  %208 = load ptr, ptr %60, align 8, !tbaa !146
  %209 = load ptr, ptr %208, align 8, !tbaa !6
  %210 = getelementptr inbounds ptr, ptr %209, i64 %75
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = getelementptr inbounds i8, ptr %211, i64 %87
  store i8 %207, ptr %212, align 1, !tbaa !115
  %213 = load ptr, ptr %195, align 8, !tbaa !54
  %214 = getelementptr inbounds i8, ptr %213, i64 8
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = getelementptr inbounds ptr, ptr %215, i64 %196
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  %218 = getelementptr inbounds i8, ptr %217, i64 %87
  %219 = load i8, ptr %218, align 1, !tbaa !115
  %220 = load ptr, ptr %60, align 8, !tbaa !146
  %221 = getelementptr inbounds i8, ptr %220, i64 8
  %222 = load ptr, ptr %221, align 8, !tbaa !6
  %223 = getelementptr inbounds ptr, ptr %222, i64 %75
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  %225 = getelementptr inbounds i8, ptr %224, i64 %87
  store i8 %219, ptr %225, align 1, !tbaa !115
  %226 = load ptr, ptr %61, align 8, !tbaa !56
  %227 = load ptr, ptr %226, align 8, !tbaa !6
  %228 = getelementptr inbounds ptr, ptr %227, i64 %197
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = getelementptr inbounds i64, ptr %229, i64 %87
  %231 = load i64, ptr %230, align 8, !tbaa !116
  %232 = load ptr, ptr %62, align 8, !tbaa !147
  %233 = load ptr, ptr %232, align 8, !tbaa !6
  %234 = getelementptr inbounds ptr, ptr %233, i64 %75
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = getelementptr inbounds i64, ptr %235, i64 %87
  store i64 %231, ptr %236, align 8, !tbaa !116
  %237 = getelementptr inbounds i8, ptr %226, i64 8
  %238 = load ptr, ptr %237, align 8, !tbaa !6
  %239 = getelementptr inbounds ptr, ptr %238, i64 %197
  %240 = load ptr, ptr %239, align 8, !tbaa !6
  %241 = getelementptr inbounds i64, ptr %240, i64 %87
  %242 = load i64, ptr %241, align 8, !tbaa !116
  %243 = getelementptr inbounds i8, ptr %232, i64 8
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  %245 = getelementptr inbounds ptr, ptr %244, i64 %75
  %246 = load ptr, ptr %245, align 8, !tbaa !6
  %247 = getelementptr inbounds i64, ptr %246, i64 %87
  store i64 %242, ptr %247, align 8, !tbaa !116
  %248 = load i32, ptr %198, align 8, !tbaa !70
  %249 = trunc i32 %248 to i8
  store i8 %249, ptr %64, align 8, !tbaa !161
  %250 = add nuw nsw i64 %87, 1
  %251 = load i32, ptr %53, align 8, !tbaa !48
  %252 = sdiv i32 %251, 4
  %253 = sext i32 %252 to i64
  %254 = icmp slt i64 %250, %253
  br i1 %254, label %86, label %255

255:                                              ; preds = %192
  %256 = load i32, ptr %49, align 4, !tbaa !49
  br label %257

257:                                              ; preds = %255, %72
  %258 = phi i32 [ %256, %255 ], [ %73, %72 ]
  %259 = phi i32 [ %251, %255 ], [ %74, %72 ]
  %260 = add nuw nsw i64 %75, 1
  %261 = sdiv i32 %258, 4
  %262 = sext i32 %261 to i64
  %263 = icmp slt i64 %260, %262
  br i1 %263, label %72, label %264

264:                                              ; preds = %257
  %265 = load ptr, ptr @img, align 8, !tbaa !6
  br label %266

266:                                              ; preds = %264, %48, %44
  %267 = phi ptr [ %265, %264 ], [ %6, %48 ], [ %6, %44 ]
  %268 = getelementptr inbounds i8, ptr %267, i64 28
  %269 = load i32, ptr %268, align 4, !tbaa !89
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %266
  %272 = getelementptr inbounds i8, ptr %267, i64 90220
  %273 = load i32, ptr %272, align 4, !tbaa !159
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %757, label %275

275:                                              ; preds = %271, %266
  %276 = getelementptr inbounds i8, ptr %39, i64 6396
  %277 = load i32, ptr %276, align 4, !tbaa !49
  %278 = icmp sgt i32 %277, 7
  br i1 %278, label %279, label %757

279:                                              ; preds = %275
  %280 = getelementptr inbounds i8, ptr %39, i64 6392
  %281 = getelementptr inbounds i8, ptr %37, i64 6504
  %282 = getelementptr inbounds i8, ptr %0, i64 4848
  %283 = getelementptr inbounds i8, ptr %37, i64 6480
  %284 = getelementptr inbounds i8, ptr %0, i64 4832
  %285 = getelementptr inbounds i8, ptr %37, i64 6496
  %286 = getelementptr inbounds i8, ptr %0, i64 4840
  %287 = getelementptr inbounds i8, ptr %37, i64 6376
  %288 = getelementptr inbounds i8, ptr %0, i64 4856
  %289 = getelementptr inbounds i8, ptr %38, i64 6504
  %290 = getelementptr inbounds i8, ptr %0, i64 3232
  %291 = getelementptr inbounds i8, ptr %38, i64 6480
  %292 = getelementptr inbounds i8, ptr %0, i64 3216
  %293 = getelementptr inbounds i8, ptr %38, i64 6496
  %294 = getelementptr inbounds i8, ptr %0, i64 3224
  %295 = getelementptr inbounds i8, ptr %38, i64 6376
  %296 = getelementptr inbounds i8, ptr %0, i64 3240
  %297 = getelementptr inbounds i8, ptr %39, i64 6520
  %298 = getelementptr inbounds i8, ptr %39, i64 6504
  %299 = getelementptr inbounds i8, ptr %0, i64 1616
  %300 = getelementptr inbounds i8, ptr %39, i64 6480
  %301 = getelementptr inbounds i8, ptr %0, i64 1600
  %302 = getelementptr inbounds i8, ptr %39, i64 6496
  %303 = getelementptr inbounds i8, ptr %0, i64 1608
  %304 = getelementptr inbounds i8, ptr %39, i64 6376
  %305 = getelementptr inbounds i8, ptr %0, i64 4864
  %306 = getelementptr inbounds i8, ptr %0, i64 1624
  %307 = load i32, ptr %280, align 8, !tbaa !48
  br label %308

308:                                              ; preds = %279, %749
  %309 = phi ptr [ %267, %279 ], [ %750, %749 ]
  %310 = phi i32 [ %277, %279 ], [ %751, %749 ]
  %311 = phi i32 [ %307, %279 ], [ %752, %749 ]
  %312 = phi i64 [ 0, %279 ], [ %753, %749 ]
  %313 = icmp sgt i32 %311, 3
  br i1 %313, label %314, label %749

314:                                              ; preds = %308
  %315 = and i64 %312, 2
  %316 = icmp eq i64 %315, 0
  %317 = and i64 %312, 2147483646
  %318 = or i64 %312, 1
  %319 = select i1 %316, i64 %317, i64 %318
  %320 = and i64 %319, 4294967295
  %321 = shl nuw nsw i64 %312, 1
  br label %322

322:                                              ; preds = %314, %740
  %323 = phi ptr [ %309, %314 ], [ %741, %740 ]
  %324 = phi i64 [ 0, %314 ], [ %742, %740 ]
  %325 = and i64 %324, 2
  %326 = icmp eq i64 %325, 0
  %327 = or i64 %324, 1
  %328 = and i64 %324, 2147483646
  %329 = select i1 %326, i64 %328, i64 %327
  %330 = getelementptr inbounds i8, ptr %323, i64 90220
  %331 = load i32, ptr %330, align 4, !tbaa !159
  %332 = icmp eq i32 %331, 0
  %333 = and i64 %329, 4294967295
  br i1 %332, label %334, label %455

334:                                              ; preds = %322
  %335 = load ptr, ptr %298, align 8, !tbaa !57
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  %337 = getelementptr inbounds ptr, ptr %336, i64 %320
  %338 = load ptr, ptr %337, align 8, !tbaa !6
  %339 = getelementptr inbounds ptr, ptr %338, i64 %333
  %340 = load ptr, ptr %339, align 8, !tbaa !6
  %341 = load i16, ptr %340, align 2, !tbaa !122
  %342 = load ptr, ptr %299, align 8, !tbaa !148
  %343 = load ptr, ptr %342, align 8, !tbaa !6
  %344 = getelementptr inbounds ptr, ptr %343, i64 %312
  %345 = load ptr, ptr %344, align 8, !tbaa !6
  %346 = getelementptr inbounds ptr, ptr %345, i64 %324
  %347 = load ptr, ptr %346, align 8, !tbaa !6
  store i16 %341, ptr %347, align 2, !tbaa !122
  %348 = getelementptr inbounds i8, ptr %340, i64 2
  %349 = load i16, ptr %348, align 2, !tbaa !122
  %350 = getelementptr inbounds i8, ptr %347, i64 2
  store i16 %349, ptr %350, align 2, !tbaa !122
  %351 = getelementptr inbounds i8, ptr %335, i64 8
  %352 = load ptr, ptr %351, align 8, !tbaa !6
  %353 = getelementptr inbounds ptr, ptr %352, i64 %320
  %354 = load ptr, ptr %353, align 8, !tbaa !6
  %355 = getelementptr inbounds ptr, ptr %354, i64 %333
  %356 = load ptr, ptr %355, align 8, !tbaa !6
  %357 = load i16, ptr %356, align 2, !tbaa !122
  %358 = getelementptr inbounds i8, ptr %342, i64 8
  %359 = load ptr, ptr %358, align 8, !tbaa !6
  %360 = getelementptr inbounds ptr, ptr %359, i64 %312
  %361 = load ptr, ptr %360, align 8, !tbaa !6
  %362 = getelementptr inbounds ptr, ptr %361, i64 %324
  %363 = load ptr, ptr %362, align 8, !tbaa !6
  store i16 %357, ptr %363, align 2, !tbaa !122
  %364 = getelementptr inbounds i8, ptr %356, i64 2
  %365 = load i16, ptr %364, align 2, !tbaa !122
  %366 = getelementptr inbounds i8, ptr %363, i64 2
  store i16 %365, ptr %366, align 2, !tbaa !122
  %367 = load ptr, ptr %300, align 8, !tbaa !54
  %368 = load ptr, ptr %367, align 8, !tbaa !6
  %369 = getelementptr inbounds ptr, ptr %368, i64 %320
  %370 = load ptr, ptr %369, align 8, !tbaa !6
  %371 = getelementptr inbounds i8, ptr %370, i64 %333
  %372 = load i8, ptr %371, align 1, !tbaa !115
  %373 = load ptr, ptr %301, align 8, !tbaa !146
  %374 = load ptr, ptr %373, align 8, !tbaa !6
  %375 = getelementptr inbounds ptr, ptr %374, i64 %312
  %376 = load ptr, ptr %375, align 8, !tbaa !6
  %377 = getelementptr inbounds i8, ptr %376, i64 %324
  store i8 %372, ptr %377, align 1, !tbaa !115
  %378 = load ptr, ptr %302, align 8, !tbaa !56
  %379 = load ptr, ptr %378, align 8, !tbaa !6
  %380 = getelementptr inbounds ptr, ptr %379, i64 %320
  %381 = load ptr, ptr %380, align 8, !tbaa !6
  %382 = getelementptr inbounds i64, ptr %381, i64 %333
  %383 = load i64, ptr %382, align 8, !tbaa !116
  %384 = load ptr, ptr %303, align 8, !tbaa !147
  %385 = load ptr, ptr %384, align 8, !tbaa !6
  %386 = getelementptr inbounds ptr, ptr %385, i64 %312
  %387 = load ptr, ptr %386, align 8, !tbaa !6
  %388 = getelementptr inbounds i64, ptr %387, i64 %324
  store i64 %383, ptr %388, align 8, !tbaa !116
  %389 = load ptr, ptr %300, align 8, !tbaa !54
  %390 = getelementptr inbounds i8, ptr %389, i64 8
  %391 = load ptr, ptr %390, align 8, !tbaa !6
  %392 = getelementptr inbounds ptr, ptr %391, i64 %320
  %393 = load ptr, ptr %392, align 8, !tbaa !6
  %394 = getelementptr inbounds i8, ptr %393, i64 %333
  %395 = load i8, ptr %394, align 1, !tbaa !115
  %396 = load ptr, ptr %301, align 8, !tbaa !146
  %397 = getelementptr inbounds i8, ptr %396, i64 8
  %398 = load ptr, ptr %397, align 8, !tbaa !6
  %399 = getelementptr inbounds ptr, ptr %398, i64 %312
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = getelementptr inbounds i8, ptr %400, i64 %324
  store i8 %395, ptr %401, align 1, !tbaa !115
  %402 = load ptr, ptr %302, align 8, !tbaa !56
  %403 = getelementptr inbounds i8, ptr %402, i64 8
  %404 = load ptr, ptr %403, align 8, !tbaa !6
  %405 = getelementptr inbounds ptr, ptr %404, i64 %320
  %406 = load ptr, ptr %405, align 8, !tbaa !6
  %407 = getelementptr inbounds i64, ptr %406, i64 %333
  %408 = load i64, ptr %407, align 8, !tbaa !116
  %409 = load ptr, ptr %303, align 8, !tbaa !147
  %410 = getelementptr inbounds i8, ptr %409, i64 8
  %411 = load ptr, ptr %410, align 8, !tbaa !6
  %412 = getelementptr inbounds ptr, ptr %411, i64 %312
  %413 = load ptr, ptr %412, align 8, !tbaa !6
  %414 = getelementptr inbounds i64, ptr %413, i64 %324
  store i64 %408, ptr %414, align 8, !tbaa !116
  %415 = load i32, ptr %304, align 8, !tbaa !70
  %416 = trunc i32 %415 to i8
  store i8 %416, ptr %305, align 8, !tbaa !161
  %417 = load ptr, ptr @img, align 8, !tbaa !6
  %418 = getelementptr inbounds i8, ptr %417, i64 89404
  %419 = load i32, ptr %418, align 4, !tbaa !162
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %421, label %740

421:                                              ; preds = %334
  %422 = icmp eq i8 %416, 0
  br i1 %422, label %423, label %446

423:                                              ; preds = %421
  %424 = load ptr, ptr %301, align 8, !tbaa !146
  %425 = load ptr, ptr %424, align 8, !tbaa !6
  %426 = getelementptr inbounds ptr, ptr %425, i64 %312
  %427 = load ptr, ptr %426, align 8, !tbaa !6
  %428 = getelementptr inbounds i8, ptr %427, i64 %324
  %429 = load i8, ptr %428, align 1, !tbaa !115
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %431, label %446

431:                                              ; preds = %423
  %432 = load ptr, ptr %299, align 8, !tbaa !148
  %433 = load ptr, ptr %432, align 8, !tbaa !6
  %434 = getelementptr inbounds ptr, ptr %433, i64 %312
  %435 = load ptr, ptr %434, align 8, !tbaa !6
  %436 = getelementptr inbounds ptr, ptr %435, i64 %324
  %437 = load ptr, ptr %436, align 8, !tbaa !6
  %438 = load i16, ptr %437, align 2, !tbaa !122
  %439 = tail call i16 @llvm.abs.i16(i16 %438, i1 false)
  %440 = icmp ult i16 %439, 2
  br i1 %440, label %441, label %446

441:                                              ; preds = %431
  %442 = getelementptr inbounds i8, ptr %437, i64 2
  %443 = load i16, ptr %442, align 2, !tbaa !122
  %444 = tail call i16 @llvm.abs.i16(i16 %443, i1 false)
  %445 = icmp ult i16 %444, 2
  br i1 %445, label %447, label %446

446:                                              ; preds = %441, %431, %423, %421
  br label %447

447:                                              ; preds = %446, %441
  %448 = phi i1 [ false, %441 ], [ true, %446 ]
  %449 = zext i1 %448 to i8
  %450 = load ptr, ptr %306, align 8, !tbaa !149
  %451 = getelementptr inbounds ptr, ptr %450, i64 %312
  %452 = load ptr, ptr %451, align 8, !tbaa !6
  %453 = getelementptr inbounds i8, ptr %452, i64 %324
  store i8 %449, ptr %453, align 1, !tbaa !115
  %454 = load ptr, ptr @img, align 8, !tbaa !6
  br label %740

455:                                              ; preds = %322
  %456 = load ptr, ptr %281, align 8, !tbaa !57
  %457 = load ptr, ptr %456, align 8, !tbaa !6
  %458 = getelementptr inbounds ptr, ptr %457, i64 %320
  %459 = load ptr, ptr %458, align 8, !tbaa !6
  %460 = getelementptr inbounds ptr, ptr %459, i64 %333
  %461 = load ptr, ptr %460, align 8, !tbaa !6
  %462 = load i16, ptr %461, align 2, !tbaa !122
  %463 = load ptr, ptr %282, align 8, !tbaa !157
  %464 = load ptr, ptr %463, align 8, !tbaa !6
  %465 = getelementptr inbounds ptr, ptr %464, i64 %312
  %466 = load ptr, ptr %465, align 8, !tbaa !6
  %467 = getelementptr inbounds ptr, ptr %466, i64 %324
  %468 = load ptr, ptr %467, align 8, !tbaa !6
  store i16 %462, ptr %468, align 2, !tbaa !122
  %469 = getelementptr inbounds i8, ptr %461, i64 2
  %470 = load i16, ptr %469, align 2, !tbaa !122
  %471 = getelementptr inbounds i8, ptr %468, i64 2
  store i16 %470, ptr %471, align 2, !tbaa !122
  %472 = getelementptr inbounds i8, ptr %456, i64 8
  %473 = load ptr, ptr %472, align 8, !tbaa !6
  %474 = getelementptr inbounds ptr, ptr %473, i64 %320
  %475 = load ptr, ptr %474, align 8, !tbaa !6
  %476 = getelementptr inbounds ptr, ptr %475, i64 %333
  %477 = load ptr, ptr %476, align 8, !tbaa !6
  %478 = load i16, ptr %477, align 2, !tbaa !122
  %479 = getelementptr inbounds i8, ptr %463, i64 8
  %480 = load ptr, ptr %479, align 8, !tbaa !6
  %481 = getelementptr inbounds ptr, ptr %480, i64 %312
  %482 = load ptr, ptr %481, align 8, !tbaa !6
  %483 = getelementptr inbounds ptr, ptr %482, i64 %324
  %484 = load ptr, ptr %483, align 8, !tbaa !6
  store i16 %478, ptr %484, align 2, !tbaa !122
  %485 = getelementptr inbounds i8, ptr %477, i64 2
  %486 = load i16, ptr %485, align 2, !tbaa !122
  %487 = getelementptr inbounds i8, ptr %484, i64 2
  store i16 %486, ptr %487, align 2, !tbaa !122
  %488 = load ptr, ptr %283, align 8, !tbaa !54
  %489 = load ptr, ptr %488, align 8, !tbaa !6
  %490 = getelementptr inbounds ptr, ptr %489, i64 %320
  %491 = load ptr, ptr %490, align 8, !tbaa !6
  %492 = getelementptr inbounds i8, ptr %491, i64 %333
  %493 = load i8, ptr %492, align 1, !tbaa !115
  %494 = load ptr, ptr %284, align 8, !tbaa !155
  %495 = load ptr, ptr %494, align 8, !tbaa !6
  %496 = getelementptr inbounds ptr, ptr %495, i64 %312
  %497 = load ptr, ptr %496, align 8, !tbaa !6
  %498 = getelementptr inbounds i8, ptr %497, i64 %324
  store i8 %493, ptr %498, align 1, !tbaa !115
  %499 = load ptr, ptr %283, align 8, !tbaa !54
  %500 = getelementptr inbounds i8, ptr %499, i64 8
  %501 = load ptr, ptr %500, align 8, !tbaa !6
  %502 = getelementptr inbounds ptr, ptr %501, i64 %320
  %503 = load ptr, ptr %502, align 8, !tbaa !6
  %504 = getelementptr inbounds i8, ptr %503, i64 %333
  %505 = load i8, ptr %504, align 1, !tbaa !115
  %506 = load ptr, ptr %284, align 8, !tbaa !155
  %507 = getelementptr inbounds i8, ptr %506, i64 8
  %508 = load ptr, ptr %507, align 8, !tbaa !6
  %509 = getelementptr inbounds ptr, ptr %508, i64 %312
  %510 = load ptr, ptr %509, align 8, !tbaa !6
  %511 = getelementptr inbounds i8, ptr %510, i64 %324
  store i8 %505, ptr %511, align 1, !tbaa !115
  %512 = load ptr, ptr %285, align 8, !tbaa !56
  %513 = load ptr, ptr %512, align 8, !tbaa !6
  %514 = getelementptr inbounds ptr, ptr %513, i64 %320
  %515 = load ptr, ptr %514, align 8, !tbaa !6
  %516 = getelementptr inbounds i64, ptr %515, i64 %333
  %517 = load i64, ptr %516, align 8, !tbaa !116
  %518 = load ptr, ptr %286, align 8, !tbaa !156
  %519 = load ptr, ptr %518, align 8, !tbaa !6
  %520 = getelementptr inbounds ptr, ptr %519, i64 %312
  %521 = load ptr, ptr %520, align 8, !tbaa !6
  %522 = getelementptr inbounds i64, ptr %521, i64 %324
  store i64 %517, ptr %522, align 8, !tbaa !116
  %523 = getelementptr inbounds i8, ptr %512, i64 8
  %524 = load ptr, ptr %523, align 8, !tbaa !6
  %525 = getelementptr inbounds ptr, ptr %524, i64 %320
  %526 = load ptr, ptr %525, align 8, !tbaa !6
  %527 = getelementptr inbounds i64, ptr %526, i64 %333
  %528 = load i64, ptr %527, align 8, !tbaa !116
  %529 = getelementptr inbounds i8, ptr %518, i64 8
  %530 = load ptr, ptr %529, align 8, !tbaa !6
  %531 = getelementptr inbounds ptr, ptr %530, i64 %312
  %532 = load ptr, ptr %531, align 8, !tbaa !6
  %533 = getelementptr inbounds i64, ptr %532, i64 %324
  store i64 %528, ptr %533, align 8, !tbaa !116
  %534 = load ptr, ptr @img, align 8, !tbaa !6
  %535 = getelementptr inbounds i8, ptr %534, i64 89404
  %536 = load i32, ptr %535, align 4, !tbaa !162
  %537 = icmp eq i32 %536, 1
  br i1 %537, label %538, label %572

538:                                              ; preds = %455
  %539 = load i32, ptr %287, align 8, !tbaa !70
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %564

541:                                              ; preds = %538
  %542 = load ptr, ptr %284, align 8, !tbaa !155
  %543 = load ptr, ptr %542, align 8, !tbaa !6
  %544 = getelementptr inbounds ptr, ptr %543, i64 %312
  %545 = load ptr, ptr %544, align 8, !tbaa !6
  %546 = getelementptr inbounds i8, ptr %545, i64 %324
  %547 = load i8, ptr %546, align 1, !tbaa !115
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %549, label %564

549:                                              ; preds = %541
  %550 = load ptr, ptr %282, align 8, !tbaa !157
  %551 = load ptr, ptr %550, align 8, !tbaa !6
  %552 = getelementptr inbounds ptr, ptr %551, i64 %312
  %553 = load ptr, ptr %552, align 8, !tbaa !6
  %554 = getelementptr inbounds ptr, ptr %553, i64 %324
  %555 = load ptr, ptr %554, align 8, !tbaa !6
  %556 = load i16, ptr %555, align 2, !tbaa !122
  %557 = tail call i16 @llvm.abs.i16(i16 %556, i1 false)
  %558 = icmp ult i16 %557, 2
  br i1 %558, label %559, label %564

559:                                              ; preds = %549
  %560 = getelementptr inbounds i8, ptr %555, i64 2
  %561 = load i16, ptr %560, align 2, !tbaa !122
  %562 = tail call i16 @llvm.abs.i16(i16 %561, i1 false)
  %563 = icmp ult i16 %562, 2
  br i1 %563, label %565, label %564

564:                                              ; preds = %559, %549, %541, %538
  br label %565

565:                                              ; preds = %564, %559
  %566 = phi i1 [ false, %559 ], [ true, %564 ]
  %567 = zext i1 %566 to i8
  %568 = load ptr, ptr %288, align 8, !tbaa !158
  %569 = getelementptr inbounds ptr, ptr %568, i64 %312
  %570 = load ptr, ptr %569, align 8, !tbaa !6
  %571 = getelementptr inbounds i8, ptr %570, i64 %324
  store i8 %567, ptr %571, align 1, !tbaa !115
  br label %572

572:                                              ; preds = %565, %455
  %573 = load ptr, ptr %289, align 8, !tbaa !57
  %574 = load ptr, ptr %573, align 8, !tbaa !6
  %575 = getelementptr inbounds ptr, ptr %574, i64 %320
  %576 = load ptr, ptr %575, align 8, !tbaa !6
  %577 = getelementptr inbounds ptr, ptr %576, i64 %333
  %578 = load ptr, ptr %577, align 8, !tbaa !6
  %579 = load i16, ptr %578, align 2, !tbaa !122
  %580 = load ptr, ptr %290, align 8, !tbaa !153
  %581 = load ptr, ptr %580, align 8, !tbaa !6
  %582 = getelementptr inbounds ptr, ptr %581, i64 %312
  %583 = load ptr, ptr %582, align 8, !tbaa !6
  %584 = getelementptr inbounds ptr, ptr %583, i64 %324
  %585 = load ptr, ptr %584, align 8, !tbaa !6
  store i16 %579, ptr %585, align 2, !tbaa !122
  %586 = getelementptr inbounds i8, ptr %578, i64 2
  %587 = load i16, ptr %586, align 2, !tbaa !122
  %588 = getelementptr inbounds i8, ptr %585, i64 2
  store i16 %587, ptr %588, align 2, !tbaa !122
  %589 = getelementptr inbounds i8, ptr %573, i64 8
  %590 = load ptr, ptr %589, align 8, !tbaa !6
  %591 = getelementptr inbounds ptr, ptr %590, i64 %320
  %592 = load ptr, ptr %591, align 8, !tbaa !6
  %593 = getelementptr inbounds ptr, ptr %592, i64 %333
  %594 = load ptr, ptr %593, align 8, !tbaa !6
  %595 = load i16, ptr %594, align 2, !tbaa !122
  %596 = getelementptr inbounds i8, ptr %580, i64 8
  %597 = load ptr, ptr %596, align 8, !tbaa !6
  %598 = getelementptr inbounds ptr, ptr %597, i64 %312
  %599 = load ptr, ptr %598, align 8, !tbaa !6
  %600 = getelementptr inbounds ptr, ptr %599, i64 %324
  %601 = load ptr, ptr %600, align 8, !tbaa !6
  store i16 %595, ptr %601, align 2, !tbaa !122
  %602 = getelementptr inbounds i8, ptr %594, i64 2
  %603 = load i16, ptr %602, align 2, !tbaa !122
  %604 = getelementptr inbounds i8, ptr %601, i64 2
  store i16 %603, ptr %604, align 2, !tbaa !122
  %605 = load ptr, ptr %291, align 8, !tbaa !54
  %606 = load ptr, ptr %605, align 8, !tbaa !6
  %607 = getelementptr inbounds ptr, ptr %606, i64 %320
  %608 = load ptr, ptr %607, align 8, !tbaa !6
  %609 = getelementptr inbounds i8, ptr %608, i64 %333
  %610 = load i8, ptr %609, align 1, !tbaa !115
  %611 = load ptr, ptr %292, align 8, !tbaa !151
  %612 = load ptr, ptr %611, align 8, !tbaa !6
  %613 = getelementptr inbounds ptr, ptr %612, i64 %312
  %614 = load ptr, ptr %613, align 8, !tbaa !6
  %615 = getelementptr inbounds i8, ptr %614, i64 %324
  store i8 %610, ptr %615, align 1, !tbaa !115
  %616 = load ptr, ptr %291, align 8, !tbaa !54
  %617 = getelementptr inbounds i8, ptr %616, i64 8
  %618 = load ptr, ptr %617, align 8, !tbaa !6
  %619 = getelementptr inbounds ptr, ptr %618, i64 %320
  %620 = load ptr, ptr %619, align 8, !tbaa !6
  %621 = getelementptr inbounds i8, ptr %620, i64 %333
  %622 = load i8, ptr %621, align 1, !tbaa !115
  %623 = load ptr, ptr %292, align 8, !tbaa !151
  %624 = getelementptr inbounds i8, ptr %623, i64 8
  %625 = load ptr, ptr %624, align 8, !tbaa !6
  %626 = getelementptr inbounds ptr, ptr %625, i64 %312
  %627 = load ptr, ptr %626, align 8, !tbaa !6
  %628 = getelementptr inbounds i8, ptr %627, i64 %324
  store i8 %622, ptr %628, align 1, !tbaa !115
  %629 = load ptr, ptr %293, align 8, !tbaa !56
  %630 = load ptr, ptr %629, align 8, !tbaa !6
  %631 = getelementptr inbounds ptr, ptr %630, i64 %320
  %632 = load ptr, ptr %631, align 8, !tbaa !6
  %633 = getelementptr inbounds i64, ptr %632, i64 %333
  %634 = load i64, ptr %633, align 8, !tbaa !116
  %635 = load ptr, ptr %294, align 8, !tbaa !152
  %636 = load ptr, ptr %635, align 8, !tbaa !6
  %637 = getelementptr inbounds ptr, ptr %636, i64 %312
  %638 = load ptr, ptr %637, align 8, !tbaa !6
  %639 = getelementptr inbounds i64, ptr %638, i64 %324
  store i64 %634, ptr %639, align 8, !tbaa !116
  %640 = getelementptr inbounds i8, ptr %629, i64 8
  %641 = load ptr, ptr %640, align 8, !tbaa !6
  %642 = getelementptr inbounds ptr, ptr %641, i64 %320
  %643 = load ptr, ptr %642, align 8, !tbaa !6
  %644 = getelementptr inbounds i64, ptr %643, i64 %333
  %645 = load i64, ptr %644, align 8, !tbaa !116
  %646 = getelementptr inbounds i8, ptr %635, i64 8
  %647 = load ptr, ptr %646, align 8, !tbaa !6
  %648 = getelementptr inbounds ptr, ptr %647, i64 %312
  %649 = load ptr, ptr %648, align 8, !tbaa !6
  %650 = getelementptr inbounds i64, ptr %649, i64 %324
  store i64 %645, ptr %650, align 8, !tbaa !116
  %651 = load ptr, ptr @img, align 8, !tbaa !6
  %652 = getelementptr inbounds i8, ptr %651, i64 89404
  %653 = load i32, ptr %652, align 4, !tbaa !162
  %654 = icmp eq i32 %653, 1
  br i1 %654, label %655, label %692

655:                                              ; preds = %572
  %656 = load i32, ptr %295, align 8, !tbaa !70
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %681

658:                                              ; preds = %655
  %659 = load ptr, ptr %292, align 8, !tbaa !151
  %660 = load ptr, ptr %659, align 8, !tbaa !6
  %661 = getelementptr inbounds ptr, ptr %660, i64 %312
  %662 = load ptr, ptr %661, align 8, !tbaa !6
  %663 = getelementptr inbounds i8, ptr %662, i64 %324
  %664 = load i8, ptr %663, align 1, !tbaa !115
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %666, label %681

666:                                              ; preds = %658
  %667 = load ptr, ptr %290, align 8, !tbaa !153
  %668 = load ptr, ptr %667, align 8, !tbaa !6
  %669 = getelementptr inbounds ptr, ptr %668, i64 %312
  %670 = load ptr, ptr %669, align 8, !tbaa !6
  %671 = getelementptr inbounds ptr, ptr %670, i64 %324
  %672 = load ptr, ptr %671, align 8, !tbaa !6
  %673 = load i16, ptr %672, align 2, !tbaa !122
  %674 = tail call i16 @llvm.abs.i16(i16 %673, i1 false)
  %675 = icmp ult i16 %674, 2
  br i1 %675, label %676, label %681

676:                                              ; preds = %666
  %677 = getelementptr inbounds i8, ptr %672, i64 2
  %678 = load i16, ptr %677, align 2, !tbaa !122
  %679 = tail call i16 @llvm.abs.i16(i16 %678, i1 false)
  %680 = icmp ult i16 %679, 2
  br i1 %680, label %682, label %681

681:                                              ; preds = %676, %666, %658, %655
  br label %682

682:                                              ; preds = %681, %676
  %683 = phi i1 [ false, %676 ], [ true, %681 ]
  %684 = zext i1 %683 to i8
  %685 = load ptr, ptr %296, align 8, !tbaa !154
  %686 = getelementptr inbounds ptr, ptr %685, i64 %312
  %687 = load ptr, ptr %686, align 8, !tbaa !6
  %688 = getelementptr inbounds i8, ptr %687, i64 %324
  store i8 %684, ptr %688, align 1, !tbaa !115
  %689 = load ptr, ptr @img, align 8, !tbaa !6
  %690 = getelementptr inbounds i8, ptr %689, i64 89404
  %691 = load i32, ptr %690, align 4, !tbaa !162
  br label %692

692:                                              ; preds = %682, %572
  %693 = phi i32 [ %691, %682 ], [ %653, %572 ]
  %694 = phi ptr [ %689, %682 ], [ %651, %572 ]
  %695 = icmp eq i32 %693, 0
  br i1 %695, label %696, label %740

696:                                              ; preds = %692
  %697 = load ptr, ptr %297, align 8, !tbaa !59
  %698 = getelementptr inbounds ptr, ptr %697, i64 %321
  %699 = load ptr, ptr %698, align 8, !tbaa !6
  %700 = getelementptr inbounds i8, ptr %699, i64 %324
  %701 = load i8, ptr %700, align 1, !tbaa !115
  %702 = icmp eq i8 %701, 0
  br i1 %702, label %703, label %740

703:                                              ; preds = %696
  %704 = load ptr, ptr %290, align 8, !tbaa !153
  %705 = load ptr, ptr %704, align 8, !tbaa !6
  %706 = getelementptr inbounds ptr, ptr %705, i64 %312
  %707 = load ptr, ptr %706, align 8, !tbaa !6
  %708 = getelementptr inbounds ptr, ptr %707, i64 %324
  %709 = load ptr, ptr %708, align 8, !tbaa !6
  %710 = getelementptr inbounds i8, ptr %709, i64 2
  %711 = load i16, ptr %710, align 2, !tbaa !122
  %712 = sdiv i16 %711, 2
  store i16 %712, ptr %710, align 2, !tbaa !122
  %713 = getelementptr inbounds i8, ptr %704, i64 8
  %714 = load ptr, ptr %713, align 8, !tbaa !6
  %715 = getelementptr inbounds ptr, ptr %714, i64 %312
  %716 = load ptr, ptr %715, align 8, !tbaa !6
  %717 = getelementptr inbounds ptr, ptr %716, i64 %324
  %718 = load ptr, ptr %717, align 8, !tbaa !6
  %719 = getelementptr inbounds i8, ptr %718, i64 2
  %720 = load i16, ptr %719, align 2, !tbaa !122
  %721 = sdiv i16 %720, 2
  store i16 %721, ptr %719, align 2, !tbaa !122
  %722 = load ptr, ptr %282, align 8, !tbaa !157
  %723 = load ptr, ptr %722, align 8, !tbaa !6
  %724 = getelementptr inbounds ptr, ptr %723, i64 %312
  %725 = load ptr, ptr %724, align 8, !tbaa !6
  %726 = getelementptr inbounds ptr, ptr %725, i64 %324
  %727 = load ptr, ptr %726, align 8, !tbaa !6
  %728 = getelementptr inbounds i8, ptr %727, i64 2
  %729 = load i16, ptr %728, align 2, !tbaa !122
  %730 = sdiv i16 %729, 2
  store i16 %730, ptr %728, align 2, !tbaa !122
  %731 = getelementptr inbounds i8, ptr %722, i64 8
  %732 = load ptr, ptr %731, align 8, !tbaa !6
  %733 = getelementptr inbounds ptr, ptr %732, i64 %312
  %734 = load ptr, ptr %733, align 8, !tbaa !6
  %735 = getelementptr inbounds ptr, ptr %734, i64 %324
  %736 = load ptr, ptr %735, align 8, !tbaa !6
  %737 = getelementptr inbounds i8, ptr %736, i64 2
  %738 = load i16, ptr %737, align 2, !tbaa !122
  %739 = sdiv i16 %738, 2
  store i16 %739, ptr %737, align 2, !tbaa !122
  br label %740

740:                                              ; preds = %447, %334, %703, %696, %692
  %741 = phi ptr [ %454, %447 ], [ %417, %334 ], [ %694, %703 ], [ %694, %696 ], [ %694, %692 ]
  %742 = add nuw nsw i64 %324, 1
  %743 = load i32, ptr %280, align 8, !tbaa !48
  %744 = sdiv i32 %743, 4
  %745 = sext i32 %744 to i64
  %746 = icmp slt i64 %742, %745
  br i1 %746, label %322, label %747

747:                                              ; preds = %740
  %748 = load i32, ptr %276, align 4, !tbaa !49
  br label %749

749:                                              ; preds = %747, %308
  %750 = phi ptr [ %741, %747 ], [ %309, %308 ]
  %751 = phi i32 [ %748, %747 ], [ %310, %308 ]
  %752 = phi i32 [ %743, %747 ], [ %311, %308 ]
  %753 = add nuw nsw i64 %312, 1
  %754 = sdiv i32 %751, 8
  %755 = sext i32 %754 to i64
  %756 = icmp slt i64 %753, %755
  br i1 %756, label %308, label %757

757:                                              ; preds = %749, %275, %271
  %758 = phi ptr [ %267, %275 ], [ %267, %271 ], [ %750, %749 ]
  %759 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %760 = getelementptr inbounds i8, ptr %759, i64 1148
  %761 = load i32, ptr %760, align 4, !tbaa !16
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %772, label %763

763:                                              ; preds = %757
  %764 = getelementptr inbounds i8, ptr %759, i64 1156
  %765 = load i32, ptr %764, align 4, !tbaa !160
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %772

767:                                              ; preds = %763
  %768 = getelementptr inbounds i8, ptr %39, i64 6376
  %769 = load i32, ptr %768, align 8, !tbaa !70
  %770 = trunc i32 %769 to i8
  %771 = getelementptr inbounds i8, ptr %0, i64 4864
  store i8 %770, ptr %771, align 8, !tbaa !161
  br label %970

772:                                              ; preds = %763, %757
  %773 = getelementptr inbounds i8, ptr %758, i64 28
  %774 = load i32, ptr %773, align 4, !tbaa !89
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %962

776:                                              ; preds = %772
  %777 = getelementptr inbounds i8, ptr %39, i64 6396
  %778 = load i32, ptr %777, align 4, !tbaa !49
  %779 = icmp sgt i32 %778, 3
  br i1 %779, label %780, label %962

780:                                              ; preds = %776
  %781 = getelementptr inbounds i8, ptr %39, i64 6392
  %782 = getelementptr inbounds i8, ptr %39, i64 6520
  %783 = getelementptr inbounds i8, ptr %39, i64 6536
  %784 = getelementptr inbounds i8, ptr %39, i64 6528
  %785 = getelementptr inbounds i8, ptr %0, i64 1616
  %786 = getelementptr inbounds i8, ptr %0, i64 1600
  %787 = getelementptr inbounds i8, ptr %39, i64 6496
  %788 = getelementptr inbounds i8, ptr %0, i64 1608
  %789 = getelementptr inbounds i8, ptr %0, i64 4864
  %790 = load i32, ptr %781, align 8, !tbaa !48
  br label %791

791:                                              ; preds = %780, %951
  %792 = phi i32 [ %778, %780 ], [ %952, %951 ]
  %793 = phi i32 [ %790, %780 ], [ %953, %951 ]
  %794 = phi i64 [ 0, %780 ], [ %954, %951 ]
  %795 = icmp sgt i32 %793, 3
  br i1 %795, label %796, label %951

796:                                              ; preds = %791
  %797 = trunc nuw nsw i64 %794 to i32
  %798 = lshr i32 %797, 1
  %799 = and i32 %798, 1073741820
  %800 = add nuw nsw i32 %799, %798
  %801 = zext nneg i32 %798 to i64
  %802 = add nuw nsw i32 %800, 4
  br label %803

803:                                              ; preds = %796, %943
  %804 = phi i64 [ 0, %796 ], [ %944, %943 ]
  %805 = load ptr, ptr %782, align 8, !tbaa !59
  %806 = getelementptr inbounds ptr, ptr %805, i64 %794
  %807 = load ptr, ptr %806, align 8, !tbaa !6
  %808 = getelementptr inbounds i8, ptr %807, i64 %804
  %809 = load i8, ptr %808, align 1, !tbaa !115
  %810 = icmp eq i8 %809, 0
  br i1 %810, label %943, label %811

811:                                              ; preds = %803
  %812 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %813 = getelementptr inbounds i8, ptr %812, i64 4
  %814 = load i32, ptr %813, align 4, !tbaa !80
  %815 = load ptr, ptr %783, align 8, !tbaa !88
  %816 = getelementptr inbounds i8, ptr %815, i64 4
  %817 = load i32, ptr %816, align 4, !tbaa !80
  %818 = sub nsw i32 %814, %817
  %819 = tail call i32 @llvm.abs.i32(i32 %818, i1 true)
  %820 = load ptr, ptr %784, align 8, !tbaa !87
  %821 = getelementptr inbounds i8, ptr %820, i64 4
  %822 = load i32, ptr %821, align 4, !tbaa !80
  %823 = sub nsw i32 %814, %822
  %824 = tail call i32 @llvm.abs.i32(i32 %823, i1 true)
  %825 = icmp ugt i32 %819, %824
  %826 = load ptr, ptr %785, align 8, !tbaa !148
  %827 = load ptr, ptr %826, align 8, !tbaa !6
  %828 = getelementptr inbounds ptr, ptr %827, i64 %794
  %829 = load ptr, ptr %828, align 8, !tbaa !6
  %830 = getelementptr inbounds ptr, ptr %829, i64 %804
  %831 = load ptr, ptr %830, align 8, !tbaa !6
  %832 = getelementptr inbounds i8, ptr %831, i64 2
  %833 = getelementptr inbounds i8, ptr %826, i64 8
  br i1 %825, label %834, label %857

834:                                              ; preds = %811
  %835 = getelementptr inbounds i8, ptr %820, i64 6504
  %836 = load ptr, ptr %835, align 8, !tbaa !57
  %837 = load ptr, ptr %836, align 8, !tbaa !6
  %838 = getelementptr inbounds ptr, ptr %837, i64 %801
  %839 = load ptr, ptr %838, align 8, !tbaa !6
  %840 = getelementptr inbounds ptr, ptr %839, i64 %804
  %841 = load ptr, ptr %840, align 8, !tbaa !6
  %842 = load i16, ptr %841, align 2, !tbaa !122
  store i16 %842, ptr %831, align 2, !tbaa !122
  %843 = getelementptr inbounds i8, ptr %841, i64 2
  %844 = load i16, ptr %843, align 2, !tbaa !122
  store i16 %844, ptr %832, align 2, !tbaa !122
  %845 = getelementptr inbounds i8, ptr %836, i64 8
  %846 = load ptr, ptr %845, align 8, !tbaa !6
  %847 = getelementptr inbounds ptr, ptr %846, i64 %801
  %848 = load ptr, ptr %847, align 8, !tbaa !6
  %849 = getelementptr inbounds ptr, ptr %848, i64 %804
  %850 = load ptr, ptr %849, align 8, !tbaa !6
  %851 = load i16, ptr %850, align 2, !tbaa !122
  %852 = load ptr, ptr %833, align 8, !tbaa !6
  %853 = getelementptr inbounds ptr, ptr %852, i64 %794
  %854 = load ptr, ptr %853, align 8, !tbaa !6
  %855 = getelementptr inbounds ptr, ptr %854, i64 %804
  %856 = load ptr, ptr %855, align 8, !tbaa !6
  store i16 %851, ptr %856, align 2, !tbaa !122
  br label %880

857:                                              ; preds = %811
  %858 = getelementptr inbounds i8, ptr %815, i64 6504
  %859 = load ptr, ptr %858, align 8, !tbaa !57
  %860 = load ptr, ptr %859, align 8, !tbaa !6
  %861 = getelementptr inbounds ptr, ptr %860, i64 %801
  %862 = load ptr, ptr %861, align 8, !tbaa !6
  %863 = getelementptr inbounds ptr, ptr %862, i64 %804
  %864 = load ptr, ptr %863, align 8, !tbaa !6
  %865 = load i16, ptr %864, align 2, !tbaa !122
  store i16 %865, ptr %831, align 2, !tbaa !122
  %866 = getelementptr inbounds i8, ptr %864, i64 2
  %867 = load i16, ptr %866, align 2, !tbaa !122
  store i16 %867, ptr %832, align 2, !tbaa !122
  %868 = getelementptr inbounds i8, ptr %859, i64 8
  %869 = load ptr, ptr %868, align 8, !tbaa !6
  %870 = getelementptr inbounds ptr, ptr %869, i64 %801
  %871 = load ptr, ptr %870, align 8, !tbaa !6
  %872 = getelementptr inbounds ptr, ptr %871, i64 %804
  %873 = load ptr, ptr %872, align 8, !tbaa !6
  %874 = load i16, ptr %873, align 2, !tbaa !122
  %875 = load ptr, ptr %833, align 8, !tbaa !6
  %876 = getelementptr inbounds ptr, ptr %875, i64 %794
  %877 = load ptr, ptr %876, align 8, !tbaa !6
  %878 = getelementptr inbounds ptr, ptr %877, i64 %804
  %879 = load ptr, ptr %878, align 8, !tbaa !6
  store i16 %874, ptr %879, align 2, !tbaa !122
  br label %880

880:                                              ; preds = %834, %857
  %881 = phi ptr [ %850, %834 ], [ %873, %857 ]
  %882 = phi ptr [ %856, %834 ], [ %879, %857 ]
  %883 = phi ptr [ %820, %834 ], [ %815, %857 ]
  %884 = phi ptr [ %784, %834 ], [ %783, %857 ]
  %885 = phi i32 [ %800, %834 ], [ %802, %857 ]
  %886 = getelementptr inbounds i8, ptr %881, i64 2
  %887 = load i16, ptr %886, align 2, !tbaa !122
  %888 = getelementptr inbounds i8, ptr %882, i64 2
  store i16 %887, ptr %888, align 2, !tbaa !122
  %889 = getelementptr inbounds i8, ptr %883, i64 6480
  %890 = load ptr, ptr %889, align 8, !tbaa !54
  %891 = load ptr, ptr %890, align 8, !tbaa !6
  %892 = getelementptr inbounds ptr, ptr %891, i64 %801
  %893 = load ptr, ptr %892, align 8, !tbaa !6
  %894 = getelementptr inbounds i8, ptr %893, i64 %804
  %895 = load i8, ptr %894, align 1, !tbaa !115
  %896 = load ptr, ptr %786, align 8, !tbaa !146
  %897 = load ptr, ptr %896, align 8, !tbaa !6
  %898 = getelementptr inbounds ptr, ptr %897, i64 %794
  %899 = load ptr, ptr %898, align 8, !tbaa !6
  %900 = getelementptr inbounds i8, ptr %899, i64 %804
  store i8 %895, ptr %900, align 1, !tbaa !115
  %901 = load ptr, ptr %884, align 8, !tbaa !6
  %902 = getelementptr inbounds i8, ptr %901, i64 6480
  %903 = load ptr, ptr %902, align 8, !tbaa !54
  %904 = getelementptr inbounds i8, ptr %903, i64 8
  %905 = load ptr, ptr %904, align 8, !tbaa !6
  %906 = getelementptr inbounds ptr, ptr %905, i64 %801
  %907 = load ptr, ptr %906, align 8, !tbaa !6
  %908 = getelementptr inbounds i8, ptr %907, i64 %804
  %909 = load i8, ptr %908, align 1, !tbaa !115
  %910 = load ptr, ptr %786, align 8, !tbaa !146
  %911 = getelementptr inbounds i8, ptr %910, i64 8
  %912 = load ptr, ptr %911, align 8, !tbaa !6
  %913 = getelementptr inbounds ptr, ptr %912, i64 %794
  %914 = load ptr, ptr %913, align 8, !tbaa !6
  %915 = getelementptr inbounds i8, ptr %914, i64 %804
  store i8 %909, ptr %915, align 1, !tbaa !115
  %916 = zext i32 %885 to i64
  %917 = load ptr, ptr %787, align 8, !tbaa !56
  %918 = load ptr, ptr %917, align 8, !tbaa !6
  %919 = getelementptr inbounds ptr, ptr %918, i64 %916
  %920 = load ptr, ptr %919, align 8, !tbaa !6
  %921 = getelementptr inbounds i64, ptr %920, i64 %804
  %922 = load i64, ptr %921, align 8, !tbaa !116
  %923 = load ptr, ptr %788, align 8, !tbaa !147
  %924 = load ptr, ptr %923, align 8, !tbaa !6
  %925 = getelementptr inbounds ptr, ptr %924, i64 %794
  %926 = load ptr, ptr %925, align 8, !tbaa !6
  %927 = getelementptr inbounds i64, ptr %926, i64 %804
  store i64 %922, ptr %927, align 8, !tbaa !116
  %928 = getelementptr inbounds i8, ptr %917, i64 8
  %929 = load ptr, ptr %928, align 8, !tbaa !6
  %930 = getelementptr inbounds ptr, ptr %929, i64 %916
  %931 = load ptr, ptr %930, align 8, !tbaa !6
  %932 = getelementptr inbounds i64, ptr %931, i64 %804
  %933 = load i64, ptr %932, align 8, !tbaa !116
  %934 = getelementptr inbounds i8, ptr %923, i64 8
  %935 = load ptr, ptr %934, align 8, !tbaa !6
  %936 = getelementptr inbounds ptr, ptr %935, i64 %794
  %937 = load ptr, ptr %936, align 8, !tbaa !6
  %938 = getelementptr inbounds i64, ptr %937, i64 %804
  store i64 %933, ptr %938, align 8, !tbaa !116
  %939 = load ptr, ptr %884, align 8, !tbaa !6
  %940 = getelementptr inbounds i8, ptr %939, i64 6376
  %941 = load i32, ptr %940, align 8, !tbaa !70
  %942 = trunc i32 %941 to i8
  store i8 %942, ptr %789, align 8, !tbaa !161
  br label %943

943:                                              ; preds = %880, %803
  %944 = add nuw nsw i64 %804, 1
  %945 = load i32, ptr %781, align 8, !tbaa !48
  %946 = sdiv i32 %945, 4
  %947 = sext i32 %946 to i64
  %948 = icmp slt i64 %944, %947
  br i1 %948, label %803, label %949

949:                                              ; preds = %943
  %950 = load i32, ptr %777, align 4, !tbaa !49
  br label %951

951:                                              ; preds = %949, %791
  %952 = phi i32 [ %950, %949 ], [ %792, %791 ]
  %953 = phi i32 [ %945, %949 ], [ %793, %791 ]
  %954 = add nuw nsw i64 %794, 1
  %955 = sdiv i32 %952, 4
  %956 = sext i32 %955 to i64
  %957 = icmp slt i64 %954, %956
  br i1 %957, label %791, label %958

958:                                              ; preds = %951
  %959 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %960 = getelementptr inbounds i8, ptr %959, i64 1148
  %961 = load i32, ptr %960, align 4, !tbaa !16
  br label %962

962:                                              ; preds = %958, %776, %772
  %963 = phi i32 [ %961, %958 ], [ %761, %776 ], [ %761, %772 ]
  %964 = phi ptr [ %959, %958 ], [ %759, %776 ], [ %759, %772 ]
  %965 = getelementptr inbounds i8, ptr %39, i64 6376
  %966 = load i32, ptr %965, align 8, !tbaa !70
  %967 = trunc i32 %966 to i8
  %968 = getelementptr inbounds i8, ptr %0, i64 4864
  store i8 %967, ptr %968, align 8, !tbaa !161
  %969 = icmp eq i32 %963, 0
  br i1 %969, label %990, label %970

970:                                              ; preds = %767, %962
  %971 = phi ptr [ %771, %767 ], [ %968, %962 ]
  %972 = phi ptr [ %759, %767 ], [ %964, %962 ]
  %973 = getelementptr inbounds i8, ptr %972, i64 1156
  %974 = load i32, ptr %973, align 4, !tbaa !160
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %990

976:                                              ; preds = %970
  %977 = getelementptr inbounds i8, ptr %39, i64 6396
  %978 = load i32, ptr %977, align 4, !tbaa !49
  %979 = icmp sgt i32 %978, 3
  br i1 %979, label %980, label %1278

980:                                              ; preds = %976
  %981 = getelementptr inbounds i8, ptr %39, i64 6392
  %982 = getelementptr inbounds i8, ptr %39, i64 6504
  %983 = getelementptr inbounds i8, ptr %0, i64 1616
  %984 = getelementptr inbounds i8, ptr %39, i64 6480
  %985 = getelementptr inbounds i8, ptr %0, i64 1600
  %986 = getelementptr inbounds i8, ptr %39, i64 6496
  %987 = getelementptr inbounds i8, ptr %0, i64 1608
  %988 = getelementptr inbounds i8, ptr %0, i64 1624
  %989 = load i32, ptr %981, align 8, !tbaa !48
  br label %1140

990:                                              ; preds = %970, %962
  %991 = phi ptr [ %971, %970 ], [ %968, %962 ]
  %992 = getelementptr inbounds i8, ptr %39, i64 6396
  %993 = load i32, ptr %992, align 4, !tbaa !49
  %994 = icmp sgt i32 %993, 3
  br i1 %994, label %995, label %1278

995:                                              ; preds = %990
  %996 = getelementptr inbounds i8, ptr %39, i64 6392
  %997 = getelementptr inbounds i8, ptr %0, i64 1616
  %998 = getelementptr inbounds i8, ptr %0, i64 1600
  %999 = getelementptr inbounds i8, ptr %0, i64 1608
  %1000 = getelementptr inbounds i8, ptr %0, i64 1624
  %1001 = load i32, ptr %996, align 8, !tbaa !48
  br label %1002

1002:                                             ; preds = %995, %1133
  %1003 = phi i32 [ %993, %995 ], [ %1134, %1133 ]
  %1004 = phi i32 [ %1001, %995 ], [ %1135, %1133 ]
  %1005 = phi i64 [ 0, %995 ], [ %1136, %1133 ]
  %1006 = icmp sgt i32 %1004, 3
  br i1 %1006, label %1007, label %1133

1007:                                             ; preds = %1002
  %1008 = and i64 %1005, 2
  %1009 = icmp eq i64 %1008, 0
  %1010 = and i64 %1005, 2147483646
  %1011 = or i64 %1005, 1
  %1012 = select i1 %1009, i64 %1010, i64 %1011
  %1013 = and i64 %1012, 4294967295
  br label %1014

1014:                                             ; preds = %1007, %1125
  %1015 = phi i64 [ 0, %1007 ], [ %1126, %1125 ]
  %1016 = and i64 %1015, 2
  %1017 = icmp eq i64 %1016, 0
  %1018 = or i64 %1015, 1
  %1019 = and i64 %1015, 2147483646
  %1020 = select i1 %1017, i64 %1019, i64 %1018
  %1021 = load ptr, ptr %997, align 8, !tbaa !148
  %1022 = load ptr, ptr %1021, align 8, !tbaa !6
  %1023 = getelementptr inbounds ptr, ptr %1022, i64 %1013
  %1024 = load ptr, ptr %1023, align 8, !tbaa !6
  %1025 = and i64 %1020, 4294967295
  %1026 = getelementptr inbounds ptr, ptr %1024, i64 %1025
  %1027 = load ptr, ptr %1026, align 8, !tbaa !6
  %1028 = load i16, ptr %1027, align 2, !tbaa !122
  %1029 = getelementptr inbounds ptr, ptr %1022, i64 %1005
  %1030 = load ptr, ptr %1029, align 8, !tbaa !6
  %1031 = getelementptr inbounds ptr, ptr %1030, i64 %1015
  %1032 = load ptr, ptr %1031, align 8, !tbaa !6
  store i16 %1028, ptr %1032, align 2, !tbaa !122
  %1033 = getelementptr inbounds i8, ptr %1027, i64 2
  %1034 = load i16, ptr %1033, align 2, !tbaa !122
  %1035 = getelementptr inbounds i8, ptr %1032, i64 2
  store i16 %1034, ptr %1035, align 2, !tbaa !122
  %1036 = getelementptr inbounds i8, ptr %1021, i64 8
  %1037 = load ptr, ptr %1036, align 8, !tbaa !6
  %1038 = getelementptr inbounds ptr, ptr %1037, i64 %1013
  %1039 = load ptr, ptr %1038, align 8, !tbaa !6
  %1040 = getelementptr inbounds ptr, ptr %1039, i64 %1025
  %1041 = load ptr, ptr %1040, align 8, !tbaa !6
  %1042 = load i16, ptr %1041, align 2, !tbaa !122
  %1043 = getelementptr inbounds ptr, ptr %1037, i64 %1005
  %1044 = load ptr, ptr %1043, align 8, !tbaa !6
  %1045 = getelementptr inbounds ptr, ptr %1044, i64 %1015
  %1046 = load ptr, ptr %1045, align 8, !tbaa !6
  store i16 %1042, ptr %1046, align 2, !tbaa !122
  %1047 = getelementptr inbounds i8, ptr %1041, i64 2
  %1048 = load i16, ptr %1047, align 2, !tbaa !122
  %1049 = getelementptr inbounds i8, ptr %1046, i64 2
  store i16 %1048, ptr %1049, align 2, !tbaa !122
  %1050 = load ptr, ptr %998, align 8, !tbaa !146
  %1051 = load ptr, ptr %1050, align 8, !tbaa !6
  %1052 = getelementptr inbounds ptr, ptr %1051, i64 %1013
  %1053 = load ptr, ptr %1052, align 8, !tbaa !6
  %1054 = getelementptr inbounds i8, ptr %1053, i64 %1025
  %1055 = load i8, ptr %1054, align 1, !tbaa !115
  %1056 = getelementptr inbounds ptr, ptr %1051, i64 %1005
  %1057 = load ptr, ptr %1056, align 8, !tbaa !6
  %1058 = getelementptr inbounds i8, ptr %1057, i64 %1015
  store i8 %1055, ptr %1058, align 1, !tbaa !115
  %1059 = load ptr, ptr %998, align 8, !tbaa !146
  %1060 = getelementptr inbounds i8, ptr %1059, i64 8
  %1061 = load ptr, ptr %1060, align 8, !tbaa !6
  %1062 = getelementptr inbounds ptr, ptr %1061, i64 %1013
  %1063 = load ptr, ptr %1062, align 8, !tbaa !6
  %1064 = getelementptr inbounds i8, ptr %1063, i64 %1025
  %1065 = load i8, ptr %1064, align 1, !tbaa !115
  %1066 = getelementptr inbounds ptr, ptr %1061, i64 %1005
  %1067 = load ptr, ptr %1066, align 8, !tbaa !6
  %1068 = getelementptr inbounds i8, ptr %1067, i64 %1015
  store i8 %1065, ptr %1068, align 1, !tbaa !115
  %1069 = load ptr, ptr %999, align 8, !tbaa !147
  %1070 = load ptr, ptr %1069, align 8, !tbaa !6
  %1071 = getelementptr inbounds ptr, ptr %1070, i64 %1013
  %1072 = load ptr, ptr %1071, align 8, !tbaa !6
  %1073 = getelementptr inbounds i64, ptr %1072, i64 %1025
  %1074 = load i64, ptr %1073, align 8, !tbaa !116
  %1075 = getelementptr inbounds ptr, ptr %1070, i64 %1005
  %1076 = load ptr, ptr %1075, align 8, !tbaa !6
  %1077 = getelementptr inbounds i64, ptr %1076, i64 %1015
  store i64 %1074, ptr %1077, align 8, !tbaa !116
  %1078 = getelementptr inbounds i8, ptr %1069, i64 8
  %1079 = load ptr, ptr %1078, align 8, !tbaa !6
  %1080 = getelementptr inbounds ptr, ptr %1079, i64 %1013
  %1081 = load ptr, ptr %1080, align 8, !tbaa !6
  %1082 = getelementptr inbounds i64, ptr %1081, i64 %1025
  %1083 = load i64, ptr %1082, align 8, !tbaa !116
  %1084 = getelementptr inbounds ptr, ptr %1079, i64 %1005
  %1085 = load ptr, ptr %1084, align 8, !tbaa !6
  %1086 = getelementptr inbounds i64, ptr %1085, i64 %1015
  store i64 %1083, ptr %1086, align 8, !tbaa !116
  %1087 = load ptr, ptr @img, align 8, !tbaa !6
  %1088 = getelementptr inbounds i8, ptr %1087, i64 89404
  %1089 = load i32, ptr %1088, align 4, !tbaa !162
  %1090 = icmp eq i32 %1089, 1
  br i1 %1090, label %1091, label %1125

1091:                                             ; preds = %1014
  %1092 = load i8, ptr %991, align 8, !tbaa !161
  %1093 = icmp eq i8 %1092, 0
  br i1 %1093, label %1094, label %1117

1094:                                             ; preds = %1091
  %1095 = load ptr, ptr %998, align 8, !tbaa !146
  %1096 = load ptr, ptr %1095, align 8, !tbaa !6
  %1097 = getelementptr inbounds ptr, ptr %1096, i64 %1005
  %1098 = load ptr, ptr %1097, align 8, !tbaa !6
  %1099 = getelementptr inbounds i8, ptr %1098, i64 %1015
  %1100 = load i8, ptr %1099, align 1, !tbaa !115
  %1101 = icmp eq i8 %1100, 0
  br i1 %1101, label %1102, label %1117

1102:                                             ; preds = %1094
  %1103 = load ptr, ptr %997, align 8, !tbaa !148
  %1104 = load ptr, ptr %1103, align 8, !tbaa !6
  %1105 = getelementptr inbounds ptr, ptr %1104, i64 %1005
  %1106 = load ptr, ptr %1105, align 8, !tbaa !6
  %1107 = getelementptr inbounds ptr, ptr %1106, i64 %1015
  %1108 = load ptr, ptr %1107, align 8, !tbaa !6
  %1109 = load i16, ptr %1108, align 2, !tbaa !122
  %1110 = tail call i16 @llvm.abs.i16(i16 %1109, i1 false)
  %1111 = icmp ult i16 %1110, 2
  br i1 %1111, label %1112, label %1117

1112:                                             ; preds = %1102
  %1113 = getelementptr inbounds i8, ptr %1108, i64 2
  %1114 = load i16, ptr %1113, align 2, !tbaa !122
  %1115 = tail call i16 @llvm.abs.i16(i16 %1114, i1 false)
  %1116 = icmp ult i16 %1115, 2
  br i1 %1116, label %1118, label %1117

1117:                                             ; preds = %1112, %1102, %1094, %1091
  br label %1118

1118:                                             ; preds = %1117, %1112
  %1119 = phi i1 [ false, %1112 ], [ true, %1117 ]
  %1120 = zext i1 %1119 to i8
  %1121 = load ptr, ptr %1000, align 8, !tbaa !149
  %1122 = getelementptr inbounds ptr, ptr %1121, i64 %1005
  %1123 = load ptr, ptr %1122, align 8, !tbaa !6
  %1124 = getelementptr inbounds i8, ptr %1123, i64 %1015
  store i8 %1120, ptr %1124, align 1, !tbaa !115
  br label %1125

1125:                                             ; preds = %1014, %1118
  %1126 = add nuw nsw i64 %1015, 1
  %1127 = load i32, ptr %996, align 8, !tbaa !48
  %1128 = sdiv i32 %1127, 4
  %1129 = sext i32 %1128 to i64
  %1130 = icmp slt i64 %1126, %1129
  br i1 %1130, label %1014, label %1131

1131:                                             ; preds = %1125
  %1132 = load i32, ptr %992, align 4, !tbaa !49
  br label %1133

1133:                                             ; preds = %1131, %1002
  %1134 = phi i32 [ %1132, %1131 ], [ %1003, %1002 ]
  %1135 = phi i32 [ %1127, %1131 ], [ %1004, %1002 ]
  %1136 = add nuw nsw i64 %1005, 1
  %1137 = sdiv i32 %1134, 4
  %1138 = sext i32 %1137 to i64
  %1139 = icmp slt i64 %1136, %1138
  br i1 %1139, label %1002, label %1278

1140:                                             ; preds = %980, %1271
  %1141 = phi i32 [ %978, %980 ], [ %1272, %1271 ]
  %1142 = phi i32 [ %989, %980 ], [ %1273, %1271 ]
  %1143 = phi i64 [ 0, %980 ], [ %1274, %1271 ]
  %1144 = icmp sgt i32 %1142, 3
  br i1 %1144, label %1145, label %1271

1145:                                             ; preds = %1140, %1263
  %1146 = phi i64 [ %1264, %1263 ], [ 0, %1140 ]
  %1147 = load ptr, ptr %982, align 8, !tbaa !57
  %1148 = load ptr, ptr %1147, align 8, !tbaa !6
  %1149 = getelementptr inbounds ptr, ptr %1148, i64 %1143
  %1150 = load ptr, ptr %1149, align 8, !tbaa !6
  %1151 = getelementptr inbounds ptr, ptr %1150, i64 %1146
  %1152 = load ptr, ptr %1151, align 8, !tbaa !6
  %1153 = load i16, ptr %1152, align 2, !tbaa !122
  %1154 = load ptr, ptr %983, align 8, !tbaa !148
  %1155 = load ptr, ptr %1154, align 8, !tbaa !6
  %1156 = getelementptr inbounds ptr, ptr %1155, i64 %1143
  %1157 = load ptr, ptr %1156, align 8, !tbaa !6
  %1158 = getelementptr inbounds ptr, ptr %1157, i64 %1146
  %1159 = load ptr, ptr %1158, align 8, !tbaa !6
  store i16 %1153, ptr %1159, align 2, !tbaa !122
  %1160 = getelementptr inbounds i8, ptr %1152, i64 2
  %1161 = load i16, ptr %1160, align 2, !tbaa !122
  %1162 = getelementptr inbounds i8, ptr %1159, i64 2
  store i16 %1161, ptr %1162, align 2, !tbaa !122
  %1163 = getelementptr inbounds i8, ptr %1147, i64 8
  %1164 = load ptr, ptr %1163, align 8, !tbaa !6
  %1165 = getelementptr inbounds ptr, ptr %1164, i64 %1143
  %1166 = load ptr, ptr %1165, align 8, !tbaa !6
  %1167 = getelementptr inbounds ptr, ptr %1166, i64 %1146
  %1168 = load ptr, ptr %1167, align 8, !tbaa !6
  %1169 = load i16, ptr %1168, align 2, !tbaa !122
  %1170 = getelementptr inbounds i8, ptr %1154, i64 8
  %1171 = load ptr, ptr %1170, align 8, !tbaa !6
  %1172 = getelementptr inbounds ptr, ptr %1171, i64 %1143
  %1173 = load ptr, ptr %1172, align 8, !tbaa !6
  %1174 = getelementptr inbounds ptr, ptr %1173, i64 %1146
  %1175 = load ptr, ptr %1174, align 8, !tbaa !6
  store i16 %1169, ptr %1175, align 2, !tbaa !122
  %1176 = getelementptr inbounds i8, ptr %1168, i64 2
  %1177 = load i16, ptr %1176, align 2, !tbaa !122
  %1178 = getelementptr inbounds i8, ptr %1175, i64 2
  store i16 %1177, ptr %1178, align 2, !tbaa !122
  %1179 = load ptr, ptr %984, align 8, !tbaa !54
  %1180 = load ptr, ptr %1179, align 8, !tbaa !6
  %1181 = getelementptr inbounds ptr, ptr %1180, i64 %1143
  %1182 = load ptr, ptr %1181, align 8, !tbaa !6
  %1183 = getelementptr inbounds i8, ptr %1182, i64 %1146
  %1184 = load i8, ptr %1183, align 1, !tbaa !115
  %1185 = load ptr, ptr %985, align 8, !tbaa !146
  %1186 = load ptr, ptr %1185, align 8, !tbaa !6
  %1187 = getelementptr inbounds ptr, ptr %1186, i64 %1143
  %1188 = load ptr, ptr %1187, align 8, !tbaa !6
  %1189 = getelementptr inbounds i8, ptr %1188, i64 %1146
  store i8 %1184, ptr %1189, align 1, !tbaa !115
  %1190 = load ptr, ptr %984, align 8, !tbaa !54
  %1191 = getelementptr inbounds i8, ptr %1190, i64 8
  %1192 = load ptr, ptr %1191, align 8, !tbaa !6
  %1193 = getelementptr inbounds ptr, ptr %1192, i64 %1143
  %1194 = load ptr, ptr %1193, align 8, !tbaa !6
  %1195 = getelementptr inbounds i8, ptr %1194, i64 %1146
  %1196 = load i8, ptr %1195, align 1, !tbaa !115
  %1197 = load ptr, ptr %985, align 8, !tbaa !146
  %1198 = getelementptr inbounds i8, ptr %1197, i64 8
  %1199 = load ptr, ptr %1198, align 8, !tbaa !6
  %1200 = getelementptr inbounds ptr, ptr %1199, i64 %1143
  %1201 = load ptr, ptr %1200, align 8, !tbaa !6
  %1202 = getelementptr inbounds i8, ptr %1201, i64 %1146
  store i8 %1196, ptr %1202, align 1, !tbaa !115
  %1203 = load ptr, ptr %986, align 8, !tbaa !56
  %1204 = load ptr, ptr %1203, align 8, !tbaa !6
  %1205 = getelementptr inbounds ptr, ptr %1204, i64 %1143
  %1206 = load ptr, ptr %1205, align 8, !tbaa !6
  %1207 = getelementptr inbounds i64, ptr %1206, i64 %1146
  %1208 = load i64, ptr %1207, align 8, !tbaa !116
  %1209 = load ptr, ptr %987, align 8, !tbaa !147
  %1210 = load ptr, ptr %1209, align 8, !tbaa !6
  %1211 = getelementptr inbounds ptr, ptr %1210, i64 %1143
  %1212 = load ptr, ptr %1211, align 8, !tbaa !6
  %1213 = getelementptr inbounds i64, ptr %1212, i64 %1146
  store i64 %1208, ptr %1213, align 8, !tbaa !116
  %1214 = getelementptr inbounds i8, ptr %1203, i64 8
  %1215 = load ptr, ptr %1214, align 8, !tbaa !6
  %1216 = getelementptr inbounds ptr, ptr %1215, i64 %1143
  %1217 = load ptr, ptr %1216, align 8, !tbaa !6
  %1218 = getelementptr inbounds i64, ptr %1217, i64 %1146
  %1219 = load i64, ptr %1218, align 8, !tbaa !116
  %1220 = getelementptr inbounds i8, ptr %1209, i64 8
  %1221 = load ptr, ptr %1220, align 8, !tbaa !6
  %1222 = getelementptr inbounds ptr, ptr %1221, i64 %1143
  %1223 = load ptr, ptr %1222, align 8, !tbaa !6
  %1224 = getelementptr inbounds i64, ptr %1223, i64 %1146
  store i64 %1219, ptr %1224, align 8, !tbaa !116
  %1225 = load ptr, ptr @img, align 8, !tbaa !6
  %1226 = getelementptr inbounds i8, ptr %1225, i64 89404
  %1227 = load i32, ptr %1226, align 4, !tbaa !162
  %1228 = icmp eq i32 %1227, 1
  br i1 %1228, label %1229, label %1263

1229:                                             ; preds = %1145
  %1230 = load i8, ptr %971, align 8, !tbaa !161
  %1231 = icmp eq i8 %1230, 0
  br i1 %1231, label %1232, label %1255

1232:                                             ; preds = %1229
  %1233 = load ptr, ptr %985, align 8, !tbaa !146
  %1234 = load ptr, ptr %1233, align 8, !tbaa !6
  %1235 = getelementptr inbounds ptr, ptr %1234, i64 %1143
  %1236 = load ptr, ptr %1235, align 8, !tbaa !6
  %1237 = getelementptr inbounds i8, ptr %1236, i64 %1146
  %1238 = load i8, ptr %1237, align 1, !tbaa !115
  %1239 = icmp eq i8 %1238, 0
  br i1 %1239, label %1240, label %1255

1240:                                             ; preds = %1232
  %1241 = load ptr, ptr %983, align 8, !tbaa !148
  %1242 = load ptr, ptr %1241, align 8, !tbaa !6
  %1243 = getelementptr inbounds ptr, ptr %1242, i64 %1143
  %1244 = load ptr, ptr %1243, align 8, !tbaa !6
  %1245 = getelementptr inbounds ptr, ptr %1244, i64 %1146
  %1246 = load ptr, ptr %1245, align 8, !tbaa !6
  %1247 = load i16, ptr %1246, align 2, !tbaa !122
  %1248 = tail call i16 @llvm.abs.i16(i16 %1247, i1 false)
  %1249 = icmp ult i16 %1248, 2
  br i1 %1249, label %1250, label %1255

1250:                                             ; preds = %1240
  %1251 = getelementptr inbounds i8, ptr %1246, i64 2
  %1252 = load i16, ptr %1251, align 2, !tbaa !122
  %1253 = tail call i16 @llvm.abs.i16(i16 %1252, i1 false)
  %1254 = icmp ult i16 %1253, 2
  br i1 %1254, label %1256, label %1255

1255:                                             ; preds = %1250, %1240, %1232, %1229
  br label %1256

1256:                                             ; preds = %1255, %1250
  %1257 = phi i1 [ false, %1250 ], [ true, %1255 ]
  %1258 = zext i1 %1257 to i8
  %1259 = load ptr, ptr %988, align 8, !tbaa !149
  %1260 = getelementptr inbounds ptr, ptr %1259, i64 %1143
  %1261 = load ptr, ptr %1260, align 8, !tbaa !6
  %1262 = getelementptr inbounds i8, ptr %1261, i64 %1146
  store i8 %1258, ptr %1262, align 1, !tbaa !115
  br label %1263

1263:                                             ; preds = %1145, %1256
  %1264 = add nuw nsw i64 %1146, 1
  %1265 = load i32, ptr %981, align 8, !tbaa !48
  %1266 = sdiv i32 %1265, 4
  %1267 = sext i32 %1266 to i64
  %1268 = icmp slt i64 %1264, %1267
  br i1 %1268, label %1145, label %1269

1269:                                             ; preds = %1263
  %1270 = load i32, ptr %977, align 4, !tbaa !49
  br label %1271

1271:                                             ; preds = %1269, %1140
  %1272 = phi i32 [ %1270, %1269 ], [ %1141, %1140 ]
  %1273 = phi i32 [ %1265, %1269 ], [ %1142, %1140 ]
  %1274 = add nuw nsw i64 %1143, 1
  %1275 = sdiv i32 %1272, 4
  %1276 = sext i32 %1275 to i64
  %1277 = icmp slt i64 %1274, %1276
  br i1 %1277, label %1140, label %1278

1278:                                             ; preds = %1271, %1133, %976, %990
  %1279 = phi i32 [ %978, %976 ], [ %993, %990 ], [ %1134, %1133 ], [ %1272, %1271 ]
  %1280 = load ptr, ptr @img, align 8, !tbaa !6
  %1281 = getelementptr inbounds i8, ptr %1280, i64 89404
  %1282 = load i32, ptr %1281, align 4, !tbaa !162
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1284, label %1456

1284:                                             ; preds = %1278
  %1285 = icmp sgt i32 %1279, 3
  br i1 %1285, label %1286, label %1303

1286:                                             ; preds = %1284
  %1287 = lshr i32 %1279, 2
  %1288 = getelementptr inbounds i8, ptr %39, i64 6392
  %1289 = load i32, ptr %1288, align 8, !tbaa !48
  %1290 = sdiv i32 %1289, 4
  %1291 = icmp sgt i32 %1289, 3
  %1292 = getelementptr inbounds i8, ptr %1280, i64 90220
  %1293 = getelementptr inbounds i8, ptr %39, i64 6520
  %1294 = getelementptr inbounds i8, ptr %1280, i64 28
  %1295 = getelementptr inbounds i8, ptr %0, i64 1616
  %1296 = zext nneg i32 %1287 to i64
  %1297 = zext nneg i32 %1290 to i64
  br label %1298

1298:                                             ; preds = %1286, %1379
  %1299 = phi i64 [ 0, %1286 ], [ %1380, %1379 ]
  br i1 %1291, label %1300, label %1379

1300:                                             ; preds = %1298
  %1301 = load i32, ptr %1292, align 4, !tbaa !159
  %1302 = icmp eq i32 %1301, 0
  br label %1309

1303:                                             ; preds = %1379, %1284
  %1304 = getelementptr inbounds i8, ptr %1280, i64 90220
  %1305 = load i32, ptr %1304, align 4, !tbaa !159
  %1306 = icmp sgt i32 %1305, -1
  br i1 %1306, label %1307, label %1456

1307:                                             ; preds = %1303
  %1308 = getelementptr inbounds i8, ptr %1280, i64 89424
  br label %1382

1309:                                             ; preds = %1300, %1376
  %1310 = phi i64 [ 0, %1300 ], [ %1377, %1376 ]
  br i1 %1302, label %1311, label %1321

1311:                                             ; preds = %1309
  %1312 = load i32, ptr %1294, align 4, !tbaa !89
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1314, label %1350

1314:                                             ; preds = %1311
  %1315 = load ptr, ptr %1293, align 8, !tbaa !59
  %1316 = getelementptr inbounds ptr, ptr %1315, i64 %1299
  %1317 = load ptr, ptr %1316, align 8, !tbaa !6
  %1318 = getelementptr inbounds i8, ptr %1317, i64 %1310
  %1319 = load i8, ptr %1318, align 1, !tbaa !115
  %1320 = icmp eq i8 %1319, 0
  br i1 %1320, label %1376, label %1328

1321:                                             ; preds = %1309
  %1322 = load ptr, ptr %1293, align 8, !tbaa !59
  %1323 = getelementptr inbounds ptr, ptr %1322, i64 %1299
  %1324 = load ptr, ptr %1323, align 8, !tbaa !6
  %1325 = getelementptr inbounds i8, ptr %1324, i64 %1310
  %1326 = load i8, ptr %1325, align 1, !tbaa !115
  %1327 = icmp eq i8 %1326, 0
  br i1 %1327, label %1347, label %1328

1328:                                             ; preds = %1321, %1314
  %1329 = load ptr, ptr %1295, align 8, !tbaa !148
  %1330 = load ptr, ptr %1329, align 8, !tbaa !6
  %1331 = getelementptr inbounds ptr, ptr %1330, i64 %1299
  %1332 = load ptr, ptr %1331, align 8, !tbaa !6
  %1333 = getelementptr inbounds ptr, ptr %1332, i64 %1310
  %1334 = load ptr, ptr %1333, align 8, !tbaa !6
  %1335 = getelementptr inbounds i8, ptr %1334, i64 2
  %1336 = load i16, ptr %1335, align 2, !tbaa !122
  %1337 = shl i16 %1336, 1
  store i16 %1337, ptr %1335, align 2, !tbaa !122
  %1338 = getelementptr inbounds i8, ptr %1329, i64 8
  %1339 = load ptr, ptr %1338, align 8, !tbaa !6
  %1340 = getelementptr inbounds ptr, ptr %1339, i64 %1299
  %1341 = load ptr, ptr %1340, align 8, !tbaa !6
  %1342 = getelementptr inbounds ptr, ptr %1341, i64 %1310
  %1343 = load ptr, ptr %1342, align 8, !tbaa !6
  %1344 = getelementptr inbounds i8, ptr %1343, i64 2
  %1345 = load i16, ptr %1344, align 2, !tbaa !122
  %1346 = shl i16 %1345, 1
  store i16 %1346, ptr %1344, align 2, !tbaa !122
  br label %1376

1347:                                             ; preds = %1321
  %1348 = load i32, ptr %1294, align 4, !tbaa !89
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1376, label %1350

1350:                                             ; preds = %1311, %1347
  %1351 = load ptr, ptr %1293, align 8, !tbaa !59
  %1352 = getelementptr inbounds ptr, ptr %1351, i64 %1299
  %1353 = load ptr, ptr %1352, align 8, !tbaa !6
  %1354 = getelementptr inbounds i8, ptr %1353, i64 %1310
  %1355 = load i8, ptr %1354, align 1, !tbaa !115
  %1356 = icmp eq i8 %1355, 0
  br i1 %1356, label %1357, label %1376

1357:                                             ; preds = %1350
  %1358 = load ptr, ptr %1295, align 8, !tbaa !148
  %1359 = load ptr, ptr %1358, align 8, !tbaa !6
  %1360 = getelementptr inbounds ptr, ptr %1359, i64 %1299
  %1361 = load ptr, ptr %1360, align 8, !tbaa !6
  %1362 = getelementptr inbounds ptr, ptr %1361, i64 %1310
  %1363 = load ptr, ptr %1362, align 8, !tbaa !6
  %1364 = getelementptr inbounds i8, ptr %1363, i64 2
  %1365 = load i16, ptr %1364, align 2, !tbaa !122
  %1366 = sdiv i16 %1365, 2
  store i16 %1366, ptr %1364, align 2, !tbaa !122
  %1367 = getelementptr inbounds i8, ptr %1358, i64 8
  %1368 = load ptr, ptr %1367, align 8, !tbaa !6
  %1369 = getelementptr inbounds ptr, ptr %1368, i64 %1299
  %1370 = load ptr, ptr %1369, align 8, !tbaa !6
  %1371 = getelementptr inbounds ptr, ptr %1370, i64 %1310
  %1372 = load ptr, ptr %1371, align 8, !tbaa !6
  %1373 = getelementptr inbounds i8, ptr %1372, i64 2
  %1374 = load i16, ptr %1373, align 2, !tbaa !122
  %1375 = sdiv i16 %1374, 2
  store i16 %1375, ptr %1373, align 2, !tbaa !122
  br label %1376

1376:                                             ; preds = %1314, %1328, %1357, %1350, %1347
  %1377 = add nuw nsw i64 %1310, 1
  %1378 = icmp eq i64 %1377, %1297
  br i1 %1378, label %1379, label %1309

1379:                                             ; preds = %1376, %1298
  %1380 = add nuw nsw i64 %1299, 1
  %1381 = icmp eq i64 %1380, %1296
  br i1 %1381, label %1303, label %1298

1382:                                             ; preds = %1307, %1450
  %1383 = phi i32 [ %1305, %1307 ], [ %1451, %1450 ]
  %1384 = phi i64 [ 0, %1307 ], [ %1452, %1450 ]
  %1385 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %1384
  %1386 = load i32, ptr %1385, align 4, !tbaa !36
  %1387 = icmp sgt i32 %1386, 0
  br i1 %1387, label %1388, label %1450

1388:                                             ; preds = %1382
  %1389 = load ptr, ptr @enc_picture, align 8
  %1390 = getelementptr inbounds i8, ptr %1389, i64 8
  %1391 = getelementptr inbounds ptr, ptr %1, i64 %1384
  %1392 = getelementptr inbounds i8, ptr %1389, i64 4
  %1393 = getelementptr inbounds i8, ptr %1389, i64 12
  %1394 = or disjoint i64 %1384, 1
  %1395 = getelementptr inbounds ptr, ptr %1, i64 %1394
  %1396 = load ptr, ptr %1395, align 8, !tbaa !6
  %1397 = load ptr, ptr %1396, align 8, !tbaa !6
  %1398 = getelementptr inbounds i8, ptr %1397, i64 4
  %1399 = load ptr, ptr %1391, align 8, !tbaa !6
  %1400 = trunc nuw nsw i64 %1384 to i32
  br label %1401

1401:                                             ; preds = %1388, %1441
  %1402 = phi i64 [ 0, %1388 ], [ %1444, %1441 ]
  %1403 = getelementptr inbounds ptr, ptr %1399, i64 %1402
  %1404 = load ptr, ptr %1403, align 8, !tbaa !6
  %1405 = getelementptr inbounds i8, ptr %1404, i64 4
  %1406 = load i32, ptr %1405, align 4, !tbaa !80
  switch i32 %1400, label %1408 [
    i32 0, label %1409
    i32 2, label %1407
  ]

1407:                                             ; preds = %1401
  br label %1409

1408:                                             ; preds = %1401
  br label %1409

1409:                                             ; preds = %1401, %1408, %1407
  %1410 = phi ptr [ %1393, %1408 ], [ %1390, %1407 ], [ %1392, %1401 ]
  %1411 = load i32, ptr %1398, align 4, !tbaa !80
  %1412 = getelementptr inbounds ptr, ptr %1399, i64 %1402
  %1413 = load ptr, ptr %1412, align 8, !tbaa !6
  %1414 = getelementptr inbounds i8, ptr %1413, i64 4
  %1415 = load i32, ptr %1414, align 4, !tbaa !80
  %1416 = icmp eq i32 %1411, %1415
  br i1 %1416, label %1441, label %1417

1417:                                             ; preds = %1409
  %1418 = load i32, ptr %1410, align 4, !tbaa !36
  %1419 = sub nsw i32 %1418, %1406
  %1420 = tail call i32 @llvm.smin.i32(i32 %1419, i32 127)
  %1421 = tail call i32 @llvm.smax.i32(i32 %1420, i32 -128)
  %1422 = sub nsw i32 %1411, %1415
  %1423 = tail call i32 @llvm.smin.i32(i32 %1422, i32 127)
  %1424 = tail call i32 @llvm.smax.i32(i32 %1423, i32 -128)
  %1425 = trunc nsw i32 %1424 to i8
  %1426 = sdiv i8 %1425, 2
  %1427 = sext i8 %1426 to i32
  %1428 = icmp slt i32 %1422, -1
  %1429 = sub nsw i32 0, %1427
  %1430 = select i1 %1428, i32 %1429, i32 %1427
  %1431 = trunc nsw i32 %1430 to i16
  %1432 = add nsw i16 %1431, 16384
  %1433 = trunc nsw i32 %1424 to i16
  %1434 = sdiv i16 %1432, %1433
  %1435 = sext i16 %1434 to i32
  %1436 = mul nsw i32 %1421, %1435
  %1437 = add nsw i32 %1436, 32
  %1438 = ashr i32 %1437, 6
  %1439 = tail call i32 @llvm.smin.i32(i32 %1438, i32 1023)
  %1440 = tail call i32 @llvm.smax.i32(i32 %1439, i32 -1024)
  br label %1441

1441:                                             ; preds = %1409, %1417
  %1442 = phi i32 [ %1440, %1417 ], [ 9999, %1409 ]
  %1443 = getelementptr inbounds [6 x [32 x i32]], ptr %1308, i64 0, i64 %1384, i64 %1402
  store i32 %1442, ptr %1443, align 4, !tbaa !36
  %1444 = add nuw nsw i64 %1402, 1
  %1445 = load i32, ptr %1385, align 4, !tbaa !36
  %1446 = sext i32 %1445 to i64
  %1447 = icmp slt i64 %1444, %1446
  br i1 %1447, label %1401, label %1448

1448:                                             ; preds = %1441
  %1449 = load i32, ptr %1304, align 4, !tbaa !159
  br label %1450

1450:                                             ; preds = %1448, %1382
  %1451 = phi i32 [ %1449, %1448 ], [ %1383, %1382 ]
  %1452 = add nuw nsw i64 %1384, 2
  %1453 = shl nsw i32 %1451, 2
  %1454 = sext i32 %1453 to i64
  %1455 = icmp slt i64 %1384, %1454
  br i1 %1455, label %1382, label %1456

1456:                                             ; preds = %1450, %1303, %1278
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @unmark_long_term_field_for_reference_by_frame_idx(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) unnamed_addr #1 {
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.15, i32 noundef signext 1868, ptr noundef nonnull @__PRETTY_FUNCTION__.unmark_long_term_field_for_reference_by_frame_idx) #17
  unreachable

8:                                                ; preds = %5
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %394, label %11

11:                                               ; preds = %8
  %12 = icmp slt i32 %4, 0
  %13 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !36
  %14 = add i32 %13, 4
  %15 = shl i32 2, %14
  %16 = select i1 %12, i32 %15, i32 0
  %17 = add nsw i32 %16, %4
  %18 = icmp eq i32 %2, 0
  %19 = sdiv i32 %17, 2
  %20 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 16), align 8, !tbaa !35
  %21 = zext i32 %9 to i64
  %22 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 56), align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds i8, ptr %22, i64 20
  %25 = load ptr, ptr getelementptr inbounds (i8, ptr @dpb, i64 56), align 8
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds i8, ptr %25, i64 20
  br label %28

28:                                               ; preds = %11, %391
  %29 = phi i64 [ 0, %11 ], [ %392, %391 ]
  %30 = getelementptr inbounds ptr, ptr %20, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds i8, ptr %31, i64 28
  %33 = load i32, ptr %32, align 4, !tbaa !86
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %35, label %391

35:                                               ; preds = %28
  switch i32 %0, label %391 [
    i32 1, label %36
    i32 2, label %205
  ]

36:                                               ; preds = %35
  %37 = getelementptr inbounds i8, ptr %31, i64 8
  %38 = load i32, ptr %37, align 8, !tbaa !78
  switch i32 %38, label %101 [
    i32 3, label %39
    i32 1, label %70
  ]

39:                                               ; preds = %36
  %40 = load i32, ptr %31, align 8, !tbaa !71
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %31, i64 48
  %45 = load ptr, ptr %44, align 8, !tbaa !41
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %45, i64 6380
  store i32 0, ptr %48, align 4, !tbaa !69
  %49 = getelementptr inbounds i8, ptr %45, i64 6376
  store i32 0, ptr %49, align 8, !tbaa !70
  br label %50

50:                                               ; preds = %47, %43, %39
  %51 = and i32 %40, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %31, i64 56
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %55, i64 6380
  store i32 0, ptr %58, align 4, !tbaa !69
  %59 = getelementptr inbounds i8, ptr %55, i64 6376
  store i32 0, ptr %59, align 8, !tbaa !70
  br label %60

60:                                               ; preds = %57, %53, %50
  %61 = icmp eq i32 %40, 3
  br i1 %61, label %62, label %388

62:                                               ; preds = %60
  %63 = getelementptr inbounds i8, ptr %31, i64 48
  %64 = load ptr, ptr %63, align 8, !tbaa !41
  %65 = icmp eq ptr %64, null
  br i1 %65, label %382, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %31, i64 56
  %68 = load ptr, ptr %67, align 8, !tbaa !42
  %69 = icmp eq ptr %68, null
  br i1 %69, label %382, label %374

70:                                               ; preds = %36
  %71 = load i32, ptr %31, align 8, !tbaa !71
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds i8, ptr %31, i64 48
  %76 = load ptr, ptr %75, align 8, !tbaa !41
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds i8, ptr %76, i64 6380
  store i32 0, ptr %79, align 4, !tbaa !69
  %80 = getelementptr inbounds i8, ptr %76, i64 6376
  store i32 0, ptr %80, align 8, !tbaa !70
  br label %81

81:                                               ; preds = %78, %74, %70
  %82 = and i32 %71, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds i8, ptr %31, i64 56
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %86, i64 6380
  store i32 0, ptr %89, align 4, !tbaa !69
  %90 = getelementptr inbounds i8, ptr %86, i64 6376
  store i32 0, ptr %90, align 8, !tbaa !70
  br label %91

91:                                               ; preds = %88, %84, %81
  %92 = icmp eq i32 %71, 3
  br i1 %92, label %93, label %388

93:                                               ; preds = %91
  %94 = getelementptr inbounds i8, ptr %31, i64 48
  %95 = load ptr, ptr %94, align 8, !tbaa !41
  %96 = icmp eq ptr %95, null
  br i1 %96, label %382, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds i8, ptr %31, i64 56
  %99 = load ptr, ptr %98, align 8, !tbaa !42
  %100 = icmp eq ptr %99, null
  br i1 %100, label %382, label %374

101:                                              ; preds = %36
  br i1 %18, label %170, label %102

102:                                              ; preds = %101
  br i1 %26, label %139, label %103

103:                                              ; preds = %102
  %104 = icmp eq ptr %25, %31
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i32, ptr %27, align 4, !tbaa !72
  %107 = icmp eq i32 %106, %3
  br i1 %107, label %391, label %108

108:                                              ; preds = %105, %103
  %109 = load i32, ptr %31, align 8, !tbaa !71
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %31, i64 48
  %114 = load ptr, ptr %113, align 8, !tbaa !41
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds i8, ptr %114, i64 6380
  store i32 0, ptr %117, align 4, !tbaa !69
  %118 = getelementptr inbounds i8, ptr %114, i64 6376
  store i32 0, ptr %118, align 8, !tbaa !70
  br label %119

119:                                              ; preds = %116, %112, %108
  %120 = and i32 %109, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds i8, ptr %31, i64 56
  %124 = load ptr, ptr %123, align 8, !tbaa !42
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds i8, ptr %124, i64 6380
  store i32 0, ptr %127, align 4, !tbaa !69
  %128 = getelementptr inbounds i8, ptr %124, i64 6376
  store i32 0, ptr %128, align 8, !tbaa !70
  br label %129

129:                                              ; preds = %126, %122, %119
  %130 = icmp eq i32 %109, 3
  br i1 %130, label %131, label %388

131:                                              ; preds = %129
  %132 = getelementptr inbounds i8, ptr %31, i64 48
  %133 = load ptr, ptr %132, align 8, !tbaa !41
  %134 = icmp eq ptr %133, null
  br i1 %134, label %382, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds i8, ptr %31, i64 56
  %137 = load ptr, ptr %136, align 8, !tbaa !42
  %138 = icmp eq ptr %137, null
  br i1 %138, label %382, label %374

139:                                              ; preds = %102
  %140 = load i32, ptr %31, align 8, !tbaa !71
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds i8, ptr %31, i64 48
  %145 = load ptr, ptr %144, align 8, !tbaa !41
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds i8, ptr %145, i64 6380
  store i32 0, ptr %148, align 4, !tbaa !69
  %149 = getelementptr inbounds i8, ptr %145, i64 6376
  store i32 0, ptr %149, align 8, !tbaa !70
  br label %150

150:                                              ; preds = %147, %143, %139
  %151 = and i32 %140, 2
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds i8, ptr %31, i64 56
  %155 = load ptr, ptr %154, align 8, !tbaa !42
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds i8, ptr %155, i64 6380
  store i32 0, ptr %158, align 4, !tbaa !69
  %159 = getelementptr inbounds i8, ptr %155, i64 6376
  store i32 0, ptr %159, align 8, !tbaa !70
  br label %160

160:                                              ; preds = %157, %153, %150
  %161 = icmp eq i32 %140, 3
  br i1 %161, label %162, label %388

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %31, i64 48
  %164 = load ptr, ptr %163, align 8, !tbaa !41
  %165 = icmp eq ptr %164, null
  br i1 %165, label %382, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %31, i64 56
  %168 = load ptr, ptr %167, align 8, !tbaa !42
  %169 = icmp eq ptr %168, null
  br i1 %169, label %382, label %374

170:                                              ; preds = %101
  %171 = getelementptr inbounds i8, ptr %31, i64 20
  %172 = load i32, ptr %171, align 4, !tbaa !72
  %173 = icmp eq i32 %172, %19
  br i1 %173, label %391, label %174

174:                                              ; preds = %170
  %175 = load i32, ptr %31, align 8, !tbaa !71
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds i8, ptr %31, i64 48
  %180 = load ptr, ptr %179, align 8, !tbaa !41
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds i8, ptr %180, i64 6380
  store i32 0, ptr %183, align 4, !tbaa !69
  %184 = getelementptr inbounds i8, ptr %180, i64 6376
  store i32 0, ptr %184, align 8, !tbaa !70
  br label %185

185:                                              ; preds = %182, %178, %174
  %186 = and i32 %175, 2
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %31, i64 56
  %190 = load ptr, ptr %189, align 8, !tbaa !42
  %191 = icmp eq ptr %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, ptr %190, i64 6380
  store i32 0, ptr %193, align 4, !tbaa !69
  %194 = getelementptr inbounds i8, ptr %190, i64 6376
  store i32 0, ptr %194, align 8, !tbaa !70
  br label %195

195:                                              ; preds = %192, %188, %185
  %196 = icmp eq i32 %175, 3
  br i1 %196, label %197, label %388

197:                                              ; preds = %195
  %198 = getelementptr inbounds i8, ptr %31, i64 48
  %199 = load ptr, ptr %198, align 8, !tbaa !41
  %200 = icmp eq ptr %199, null
  br i1 %200, label %382, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds i8, ptr %31, i64 56
  %203 = load ptr, ptr %202, align 8, !tbaa !42
  %204 = icmp eq ptr %203, null
  br i1 %204, label %382, label %374

205:                                              ; preds = %35
  %206 = getelementptr inbounds i8, ptr %31, i64 8
  %207 = load i32, ptr %206, align 8, !tbaa !78
  switch i32 %207, label %270 [
    i32 3, label %208
    i32 2, label %239
  ]

208:                                              ; preds = %205
  %209 = load i32, ptr %31, align 8, !tbaa !71
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds i8, ptr %31, i64 48
  %214 = load ptr, ptr %213, align 8, !tbaa !41
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds i8, ptr %214, i64 6380
  store i32 0, ptr %217, align 4, !tbaa !69
  %218 = getelementptr inbounds i8, ptr %214, i64 6376
  store i32 0, ptr %218, align 8, !tbaa !70
  br label %219

219:                                              ; preds = %216, %212, %208
  %220 = and i32 %209, 2
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds i8, ptr %31, i64 56
  %224 = load ptr, ptr %223, align 8, !tbaa !42
  %225 = icmp eq ptr %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds i8, ptr %224, i64 6380
  store i32 0, ptr %227, align 4, !tbaa !69
  %228 = getelementptr inbounds i8, ptr %224, i64 6376
  store i32 0, ptr %228, align 8, !tbaa !70
  br label %229

229:                                              ; preds = %226, %222, %219
  %230 = icmp eq i32 %209, 3
  br i1 %230, label %231, label %388

231:                                              ; preds = %229
  %232 = getelementptr inbounds i8, ptr %31, i64 48
  %233 = load ptr, ptr %232, align 8, !tbaa !41
  %234 = icmp eq ptr %233, null
  br i1 %234, label %382, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds i8, ptr %31, i64 56
  %237 = load ptr, ptr %236, align 8, !tbaa !42
  %238 = icmp eq ptr %237, null
  br i1 %238, label %382, label %374

239:                                              ; preds = %205
  %240 = load i32, ptr %31, align 8, !tbaa !71
  %241 = and i32 %240, 1
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %250, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds i8, ptr %31, i64 48
  %245 = load ptr, ptr %244, align 8, !tbaa !41
  %246 = icmp eq ptr %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds i8, ptr %245, i64 6380
  store i32 0, ptr %248, align 4, !tbaa !69
  %249 = getelementptr inbounds i8, ptr %245, i64 6376
  store i32 0, ptr %249, align 8, !tbaa !70
  br label %250

250:                                              ; preds = %247, %243, %239
  %251 = and i32 %240, 2
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds i8, ptr %31, i64 56
  %255 = load ptr, ptr %254, align 8, !tbaa !42
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds i8, ptr %255, i64 6380
  store i32 0, ptr %258, align 4, !tbaa !69
  %259 = getelementptr inbounds i8, ptr %255, i64 6376
  store i32 0, ptr %259, align 8, !tbaa !70
  br label %260

260:                                              ; preds = %257, %253, %250
  %261 = icmp eq i32 %240, 3
  br i1 %261, label %262, label %388

262:                                              ; preds = %260
  %263 = getelementptr inbounds i8, ptr %31, i64 48
  %264 = load ptr, ptr %263, align 8, !tbaa !41
  %265 = icmp eq ptr %264, null
  br i1 %265, label %382, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds i8, ptr %31, i64 56
  %268 = load ptr, ptr %267, align 8, !tbaa !42
  %269 = icmp eq ptr %268, null
  br i1 %269, label %382, label %374

270:                                              ; preds = %205
  br i1 %18, label %339, label %271

271:                                              ; preds = %270
  br i1 %23, label %308, label %272

272:                                              ; preds = %271
  %273 = icmp eq ptr %22, %31
  br i1 %273, label %274, label %277

274:                                              ; preds = %272
  %275 = load i32, ptr %24, align 4, !tbaa !72
  %276 = icmp eq i32 %275, %3
  br i1 %276, label %391, label %277

277:                                              ; preds = %274, %272
  %278 = load i32, ptr %31, align 8, !tbaa !71
  %279 = and i32 %278, 1
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %288, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds i8, ptr %31, i64 48
  %283 = load ptr, ptr %282, align 8, !tbaa !41
  %284 = icmp eq ptr %283, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds i8, ptr %283, i64 6380
  store i32 0, ptr %286, align 4, !tbaa !69
  %287 = getelementptr inbounds i8, ptr %283, i64 6376
  store i32 0, ptr %287, align 8, !tbaa !70
  br label %288

288:                                              ; preds = %285, %281, %277
  %289 = and i32 %278, 2
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds i8, ptr %31, i64 56
  %293 = load ptr, ptr %292, align 8, !tbaa !42
  %294 = icmp eq ptr %293, null
  br i1 %294, label %298, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds i8, ptr %293, i64 6380
  store i32 0, ptr %296, align 4, !tbaa !69
  %297 = getelementptr inbounds i8, ptr %293, i64 6376
  store i32 0, ptr %297, align 8, !tbaa !70
  br label %298

298:                                              ; preds = %295, %291, %288
  %299 = icmp eq i32 %278, 3
  br i1 %299, label %300, label %388

300:                                              ; preds = %298
  %301 = getelementptr inbounds i8, ptr %31, i64 48
  %302 = load ptr, ptr %301, align 8, !tbaa !41
  %303 = icmp eq ptr %302, null
  br i1 %303, label %382, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds i8, ptr %31, i64 56
  %306 = load ptr, ptr %305, align 8, !tbaa !42
  %307 = icmp eq ptr %306, null
  br i1 %307, label %382, label %374

308:                                              ; preds = %271
  %309 = load i32, ptr %31, align 8, !tbaa !71
  %310 = and i32 %309, 1
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %319, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds i8, ptr %31, i64 48
  %314 = load ptr, ptr %313, align 8, !tbaa !41
  %315 = icmp eq ptr %314, null
  br i1 %315, label %319, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds i8, ptr %314, i64 6380
  store i32 0, ptr %317, align 4, !tbaa !69
  %318 = getelementptr inbounds i8, ptr %314, i64 6376
  store i32 0, ptr %318, align 8, !tbaa !70
  br label %319

319:                                              ; preds = %316, %312, %308
  %320 = and i32 %309, 2
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %329, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds i8, ptr %31, i64 56
  %324 = load ptr, ptr %323, align 8, !tbaa !42
  %325 = icmp eq ptr %324, null
  br i1 %325, label %329, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds i8, ptr %324, i64 6380
  store i32 0, ptr %327, align 4, !tbaa !69
  %328 = getelementptr inbounds i8, ptr %324, i64 6376
  store i32 0, ptr %328, align 8, !tbaa !70
  br label %329

329:                                              ; preds = %326, %322, %319
  %330 = icmp eq i32 %309, 3
  br i1 %330, label %331, label %388

331:                                              ; preds = %329
  %332 = getelementptr inbounds i8, ptr %31, i64 48
  %333 = load ptr, ptr %332, align 8, !tbaa !41
  %334 = icmp eq ptr %333, null
  br i1 %334, label %382, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds i8, ptr %31, i64 56
  %337 = load ptr, ptr %336, align 8, !tbaa !42
  %338 = icmp eq ptr %337, null
  br i1 %338, label %382, label %374

339:                                              ; preds = %270
  %340 = getelementptr inbounds i8, ptr %31, i64 20
  %341 = load i32, ptr %340, align 4, !tbaa !72
  %342 = icmp eq i32 %341, %19
  br i1 %342, label %391, label %343

343:                                              ; preds = %339
  %344 = load i32, ptr %31, align 8, !tbaa !71
  %345 = and i32 %344, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %354, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds i8, ptr %31, i64 48
  %349 = load ptr, ptr %348, align 8, !tbaa !41
  %350 = icmp eq ptr %349, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds i8, ptr %349, i64 6380
  store i32 0, ptr %352, align 4, !tbaa !69
  %353 = getelementptr inbounds i8, ptr %349, i64 6376
  store i32 0, ptr %353, align 8, !tbaa !70
  br label %354

354:                                              ; preds = %351, %347, %343
  %355 = and i32 %344, 2
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %364, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds i8, ptr %31, i64 56
  %359 = load ptr, ptr %358, align 8, !tbaa !42
  %360 = icmp eq ptr %359, null
  br i1 %360, label %364, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds i8, ptr %359, i64 6380
  store i32 0, ptr %362, align 4, !tbaa !69
  %363 = getelementptr inbounds i8, ptr %359, i64 6376
  store i32 0, ptr %363, align 8, !tbaa !70
  br label %364

364:                                              ; preds = %361, %357, %354
  %365 = icmp eq i32 %344, 3
  br i1 %365, label %366, label %388

366:                                              ; preds = %364
  %367 = getelementptr inbounds i8, ptr %31, i64 48
  %368 = load ptr, ptr %367, align 8, !tbaa !41
  %369 = icmp eq ptr %368, null
  br i1 %369, label %382, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds i8, ptr %31, i64 56
  %372 = load ptr, ptr %371, align 8, !tbaa !42
  %373 = icmp eq ptr %372, null
  br i1 %373, label %382, label %374

374:                                              ; preds = %370, %335, %304, %266, %235, %201, %166, %135, %97, %66
  %375 = phi ptr [ %64, %66 ], [ %95, %97 ], [ %133, %135 ], [ %164, %166 ], [ %199, %201 ], [ %233, %235 ], [ %264, %266 ], [ %302, %304 ], [ %333, %335 ], [ %368, %370 ]
  %376 = phi ptr [ %68, %66 ], [ %99, %97 ], [ %137, %135 ], [ %168, %166 ], [ %203, %201 ], [ %237, %235 ], [ %268, %266 ], [ %306, %304 ], [ %337, %335 ], [ %372, %370 ]
  %377 = phi ptr [ %37, %66 ], [ %37, %97 ], [ %37, %135 ], [ %37, %166 ], [ %37, %201 ], [ %206, %235 ], [ %206, %266 ], [ %206, %304 ], [ %206, %335 ], [ %206, %370 ]
  %378 = getelementptr inbounds i8, ptr %375, i64 6380
  store i32 0, ptr %378, align 4, !tbaa !69
  %379 = getelementptr inbounds i8, ptr %375, i64 6376
  store i32 0, ptr %379, align 8, !tbaa !70
  %380 = getelementptr inbounds i8, ptr %376, i64 6380
  store i32 0, ptr %380, align 4, !tbaa !69
  %381 = getelementptr inbounds i8, ptr %376, i64 6376
  store i32 0, ptr %381, align 8, !tbaa !70
  br label %382

382:                                              ; preds = %374, %366, %370, %331, %335, %300, %304, %262, %266, %231, %235, %197, %201, %162, %166, %131, %135, %93, %97, %62, %66
  %383 = phi ptr [ %37, %66 ], [ %37, %62 ], [ %37, %97 ], [ %37, %93 ], [ %37, %135 ], [ %37, %131 ], [ %37, %166 ], [ %37, %162 ], [ %37, %201 ], [ %37, %197 ], [ %206, %235 ], [ %206, %231 ], [ %206, %266 ], [ %206, %262 ], [ %206, %304 ], [ %206, %300 ], [ %206, %335 ], [ %206, %331 ], [ %206, %370 ], [ %206, %366 ], [ %377, %374 ]
  %384 = getelementptr inbounds i8, ptr %31, i64 40
  %385 = load ptr, ptr %384, align 8, !tbaa !39
  %386 = getelementptr inbounds i8, ptr %385, i64 6380
  store i32 0, ptr %386, align 4, !tbaa !69
  %387 = getelementptr inbounds i8, ptr %385, i64 6376
  store i32 0, ptr %387, align 8, !tbaa !70
  br label %388

388:                                              ; preds = %382, %364, %329, %298, %260, %229, %195, %160, %129, %91, %60
  %389 = phi ptr [ %37, %60 ], [ %37, %91 ], [ %37, %129 ], [ %37, %160 ], [ %37, %195 ], [ %206, %229 ], [ %206, %260 ], [ %206, %298 ], [ %206, %329 ], [ %206, %364 ], [ %383, %382 ]
  %390 = getelementptr inbounds i8, ptr %31, i64 4
  store i32 0, ptr %390, align 4, !tbaa !77
  store i32 0, ptr %389, align 8, !tbaa !78
  br label %391

391:                                              ; preds = %388, %170, %105, %35, %28, %274, %339
  %392 = add nuw nsw i64 %29, 1
  %393 = icmp ult i64 %392, %21
  br i1 %393, label %28, label %394

394:                                              ; preds = %391, %8
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @remove_frame_from_dpb(i32 noundef signext %0) unnamed_addr #1 {
  %2 = load ptr, ptr @dpb, align 8, !tbaa !33
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load i32, ptr %5, align 8, !tbaa !71
  switch i32 %6, label %20 [
    i32 3, label %7
    i32 2, label %14
    i32 1, label %17
    i32 0, label %21
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %5, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  tail call void @free_storable_picture(ptr noundef %9)
  %10 = getelementptr inbounds i8, ptr %5, i64 48
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  tail call void @free_storable_picture(ptr noundef %11)
  %12 = getelementptr inbounds i8, ptr %5, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  tail call void @free_storable_picture(ptr noundef %13)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %21

14:                                               ; preds = %1
  %15 = getelementptr inbounds i8, ptr %5, i64 56
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  tail call void @free_storable_picture(ptr noundef %16)
  store ptr null, ptr %15, align 8, !tbaa !42
  br label %21

17:                                               ; preds = %1
  %18 = getelementptr inbounds i8, ptr %5, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  tail call void @free_storable_picture(ptr noundef %19)
  store ptr null, ptr %18, align 8, !tbaa !41
  br label %21

20:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.38, i32 noundef signext 500) #15
  br label %21

21:                                               ; preds = %20, %1, %17, %14, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %22 = load ptr, ptr @dpb, align 8, !tbaa !33
  %23 = getelementptr inbounds ptr, ptr %22, i64 %3
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load i32, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  %26 = add i32 %25, -1
  %27 = icmp ugt i32 %26, %0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = zext i32 %26 to i64
  br label %43

30:                                               ; preds = %21
  %31 = zext i32 %0 to i64
  %32 = zext i32 %26 to i64
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %31, %30 ], [ %36, %33 ]
  %35 = load ptr, ptr @dpb, align 8, !tbaa !33
  %36 = add nuw nsw i64 %34, 1
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds ptr, ptr %35, i64 %34
  store ptr %38, ptr %39, align 8, !tbaa !6
  %40 = icmp eq i64 %36, %32
  br i1 %40, label %41, label %33

41:                                               ; preds = %33
  %42 = load ptr, ptr @dpb, align 8, !tbaa !33
  br label %43

43:                                               ; preds = %28, %41
  %44 = phi i64 [ %29, %28 ], [ %32, %41 ]
  %45 = phi ptr [ %22, %28 ], [ %42, %41 ]
  %46 = getelementptr inbounds ptr, ptr %45, i64 %44
  store ptr %24, ptr %46, align 8, !tbaa !6
  store i32 %26, ptr getelementptr inbounds (i8, ptr @dpb, i64 28), align 4, !tbaa !31
  ret void
}

declare dso_local void @write_stored_frame(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { noreturn nounwind }

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
!10 = !{!11, !12, i64 1140}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !8, i64 108, !12, i64 1132, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !12, i64 1164, !12, i64 1168, !12, i64 1172, !12, i64 1176, !12, i64 1180, !13, i64 1184}
!12 = !{!"int", !8, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !14, i64 84, !12, i64 496, !14, i64 500, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!14 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!15 = !{!11, !12, i64 1144}
!16 = !{!11, !12, i64 1148}
!17 = !{!11, !12, i64 24}
!18 = !{!11, !12, i64 4}
!19 = !{!20, !12, i64 36}
!20 = !{!"decoded_picture_buffer", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !7, i64 56}
!21 = !{!20, !12, i64 32}
!22 = !{!23, !12, i64 32}
!23 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !24, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !25, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !25, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !26, i64 90584, !12, i64 90588, !12, i64 90592}
!24 = !{!"float", !8, i64 0}
!25 = !{!"double", !8, i64 0}
!26 = !{!"short", !8, i64 0}
!27 = !{!20, !12, i64 48}
!28 = !{!20, !12, i64 24}
!29 = !{!30, !12, i64 36}
!30 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !25, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!31 = !{!20, !12, i64 28}
!32 = !{!20, !7, i64 56}
!33 = !{!20, !7, i64 0}
!34 = !{!20, !7, i64 8}
!35 = !{!20, !7, i64 16}
!36 = !{!12, !12, i64 0}
!37 = !{!20, !12, i64 40}
!38 = !{!23, !12, i64 90468}
!39 = !{!40, !7, i64 40}
!40 = !{!"frame_store", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !7, i64 40, !7, i64 48, !7, i64 56}
!41 = !{!40, !7, i64 48}
!42 = !{!40, !7, i64 56}
!43 = !{!23, !12, i64 90548}
!44 = !{!23, !12, i64 90304}
!45 = !{!46, !7, i64 6472}
!46 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !12, i64 6360, !12, i64 6364, !12, i64 6368, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !12, i64 6392, !12, i64 6396, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !12, i64 6552, !12, i64 6556, !12, i64 6560, !12, i64 6564, !12, i64 6568, !12, i64 6572, !12, i64 6576}
!47 = !{!46, !12, i64 0}
!48 = !{!46, !12, i64 6392}
!49 = !{!46, !12, i64 6396}
!50 = !{!46, !12, i64 6400}
!51 = !{!46, !12, i64 6404}
!52 = !{!46, !12, i64 6412}
!53 = !{!46, !12, i64 6416}
!54 = !{!46, !7, i64 6480}
!55 = !{!46, !7, i64 6488}
!56 = !{!46, !7, i64 6496}
!57 = !{!46, !7, i64 6504}
!58 = !{!46, !7, i64 6512}
!59 = !{!46, !7, i64 6520}
!60 = !{!46, !7, i64 6424}
!61 = !{!46, !7, i64 6432}
!62 = !{!46, !7, i64 6448}
!63 = !{!46, !7, i64 6464}
!64 = !{!30, !12, i64 1904}
!65 = !{!30, !12, i64 1908}
!66 = !{!30, !12, i64 64}
!67 = !{!46, !7, i64 6440}
!68 = !{!46, !7, i64 6456}
!69 = !{!46, !12, i64 6380}
!70 = !{!46, !12, i64 6376}
!71 = !{!40, !12, i64 0}
!72 = !{!40, !12, i64 20}
!73 = !{!23, !12, i64 90284}
!74 = !{!46, !12, i64 6364}
!75 = !{!46, !12, i64 6372}
!76 = !{!46, !12, i64 6368}
!77 = !{!40, !12, i64 4}
!78 = !{!40, !12, i64 8}
!79 = !{!23, !12, i64 90276}
!80 = !{!46, !12, i64 4}
!81 = !{!23, !12, i64 90280}
!82 = !{!40, !12, i64 36}
!83 = !{!23, !12, i64 89408}
!84 = !{!23, !12, i64 89412}
!85 = !{!40, !12, i64 24}
!86 = !{!40, !12, i64 28}
!87 = !{!46, !7, i64 6528}
!88 = !{!46, !7, i64 6536}
!89 = !{!23, !12, i64 28}
!90 = !{!20, !12, i64 44}
!91 = !{!23, !12, i64 90316}
!92 = !{!23, !12, i64 90464}
!93 = !{!23, !7, i64 31560}
!94 = !{!95, !12, i64 4}
!95 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 808, !24, i64 812, !24, i64 816, !24, i64 820}
!96 = !{!23, !12, i64 90324}
!97 = !{!23, !12, i64 90328}
!98 = !{!23, !12, i64 90320}
!99 = !{!23, !7, i64 90336}
!100 = !{!101, !12, i64 0}
!101 = !{!"DecRefPicMarking_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24}
!102 = !{!101, !7, i64 24}
!103 = !{!101, !12, i64 4}
!104 = !{!46, !12, i64 6360}
!105 = !{!101, !12, i64 8}
!106 = !{!101, !12, i64 12}
!107 = !{!101, !12, i64 16}
!108 = !{!23, !12, i64 90268}
!109 = !{!46, !12, i64 8}
!110 = !{!23, !12, i64 90272}
!111 = !{!46, !12, i64 12}
!112 = !{!40, !12, i64 12}
!113 = !{!11, !12, i64 1132}
!114 = !{!40, !12, i64 32}
!115 = !{!8, !8, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"long long", !8, i64 0}
!118 = !{!46, !12, i64 6384}
!119 = !{!46, !12, i64 16}
!120 = !{!46, !7, i64 6544}
!121 = !{!46, !12, i64 6552}
!122 = !{!26, !26, i64 0}
!123 = !{!46, !12, i64 6560}
!124 = !{!46, !12, i64 6572}
!125 = !{!46, !12, i64 6576}
!126 = !{!46, !12, i64 6564}
!127 = !{!46, !12, i64 6568}
!128 = !{!23, !12, i64 24}
!129 = !{!130, !7, i64 64}
!130 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128}
!131 = !{!130, !7, i64 72}
!132 = !{!130, !7, i64 80}
!133 = !{!130, !7, i64 96}
!134 = !{!130, !7, i64 104}
!135 = !{!130, !7, i64 112}
!136 = !{!23, !12, i64 90472}
!137 = !{!23, !12, i64 52}
!138 = !{!23, !12, i64 60}
!139 = !{!23, !12, i64 56}
!140 = !{!23, !12, i64 64}
!141 = !{!46, !12, i64 6388}
!142 = !{!143, !12, i64 4}
!143 = !{!"colocated_params", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 16, !7, i64 1600, !7, i64 1608, !7, i64 1616, !7, i64 1624, !8, i64 1632, !7, i64 3216, !7, i64 3224, !7, i64 3232, !7, i64 3240, !8, i64 3248, !7, i64 4832, !7, i64 4840, !7, i64 4848, !7, i64 4856, !8, i64 4864, !7, i64 4872}
!144 = !{!143, !12, i64 8}
!145 = !{!143, !12, i64 0}
!146 = !{!143, !7, i64 1600}
!147 = !{!143, !7, i64 1608}
!148 = !{!143, !7, i64 1616}
!149 = !{!143, !7, i64 1624}
!150 = !{!143, !7, i64 4872}
!151 = !{!143, !7, i64 3216}
!152 = !{!143, !7, i64 3224}
!153 = !{!143, !7, i64 3232}
!154 = !{!143, !7, i64 3240}
!155 = !{!143, !7, i64 4832}
!156 = !{!143, !7, i64 4840}
!157 = !{!143, !7, i64 4848}
!158 = !{!143, !7, i64 4856}
!159 = !{!23, !12, i64 90220}
!160 = !{!11, !12, i64 1156}
!161 = !{!143, !8, i64 4864}
!162 = !{!23, !12, i64 89404}
