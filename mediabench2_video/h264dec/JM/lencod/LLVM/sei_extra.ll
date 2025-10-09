; ModuleID = 'src/sei.c'
source_filename = "src/sei.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.sei_struct = type { i32, i32, i8, ptr }
%struct.spare_picture_struct = type { i32, i32, i32, ptr }
%struct.subseq_information_struct = type { i32, i32, i32, i32, i32, ptr }
%struct.subseq_layer_information_struct = type { [2 x i16], [2 x i16], [8 x i8], i32, i32 }
%struct.subseq_char_information_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], ptr, i32 }
%struct.scene_information_struct = type { i32, i32, i32, ptr, i32 }
%struct.panscanrect_information_struct = type { i32, i32, i32, i32, i32, ptr, i32 }
%struct.user_data_unregistered_information_struct = type { ptr, i32, ptr, i32 }
%struct.user_data_registered_itu_t_t35_information_struct = type { ptr, i32, i32, i32, ptr, i32 }
%struct.recovery_point_information_struct = type { i32, i8, i8, i8, ptr, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@seiHasTemporal_reference = dso_local local_unnamed_addr global i32 0, align 4
@seiHasClock_timestamp = dso_local local_unnamed_addr global i32 0, align 4
@seiHasPanscan_rect = dso_local local_unnamed_addr global i32 0, align 4
@seiHasBuffering_period = dso_local local_unnamed_addr global i32 0, align 4
@seiHasHrd_picture = dso_local local_unnamed_addr global i32 0, align 4
@seiHasFiller_payload = dso_local local_unnamed_addr global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35 = dso_local local_unnamed_addr global i32 0, align 4
@seiHasUser_data_unregistered = dso_local local_unnamed_addr global i32 0, align 4
@seiHasRandom_access_point = dso_local local_unnamed_addr global i32 0, align 4
@seiHasRef_pic_buffer_management_repetition = dso_local local_unnamed_addr global i32 0, align 4
@seiHasSpare_picture = dso_local local_unnamed_addr global i32 0, align 4
@seiHasSceneInformation = dso_local local_unnamed_addr global i32 0, align 4
@seiHasSubseq_information = dso_local local_unnamed_addr global i32 0, align 4
@seiHasSubseq_layer_characteristics = dso_local local_unnamed_addr global i32 0, align 4
@seiHasSubseq_characteristics = dso_local local_unnamed_addr global i32 0, align 4
@sei_message = dso_local local_unnamed_addr global [2 x %struct.sei_struct] zeroinitializer, align 8
@.str = private unnamed_addr constant [37 x i8] c"InitSEIMessages: sei_message[i].data\00", align 1
@seiSparePicturePayload = dso_local local_unnamed_addr global %struct.spare_picture_struct zeroinitializer, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@img = external dso_local local_unnamed_addr global ptr, align 8
@seiHasSubseqInfo = dso_local local_unnamed_addr global i32 0, align 4
@seiHasSubseqLayerInfo = dso_local local_unnamed_addr global i32 0, align 4
@seiHasSubseqChar = dso_local local_unnamed_addr global i32 0, align 4
@seiHasPanScanRectInfo = dso_local local_unnamed_addr global i32 0, align 4
@seiHasUser_data_unregistered_info = dso_local local_unnamed_addr global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35_info = dso_local local_unnamed_addr global i32 0, align 4
@seiHasRecoveryPoint_info = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"payload_type >= 0 && payload_type < SEI_MAX_ELEMENTS\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"src/sei.c\00", align 1
@__PRETTY_FUNCTION__.write_sei_message = private unnamed_addr constant [46 x i8] c"void write_sei_message(int, byte *, int, int)\00", align 1
@seiHasSparePicture = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"InitSparePicture: seiSparePicturePayload.data\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"InitSparePicture: seiSparePicturePayload.data->streamBuffer\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"FinalizeSpareMBMap: dest\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"FinalizeSpareMBMap: dest->streamBuffer\00", align 1
@InitSubseqInfo.id = internal unnamed_addr global i16 0, align 2
@seiSubseqInfo = dso_local local_unnamed_addr global [2 x %struct.subseq_information_struct] zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data->streamBuffer\00", align 1
@start_frame_no_in_this_IGOP = external dso_local local_unnamed_addr global i32, align 4
@seiSubseqLayerInfo = dso_local local_unnamed_addr global %struct.subseq_layer_information_struct zeroinitializer, align 4
@seiSubseqChar = dso_local local_unnamed_addr global %struct.subseq_char_information_struct zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"InitSubseqChar: seiSubseqChar.data\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"InitSubseqChar: seiSubseqChar.data->streamBuffer\00", align 1
@seiSceneInformation = dso_local local_unnamed_addr global %struct.scene_information_struct zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [47 x i8] c"InitSceneInformation: seiSceneInformation.data\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"InitSceneInformation: seiSceneInformation.data->streamBuffer\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"sceneID < 256\00", align 1
@__PRETTY_FUNCTION__.UpdateSceneInformation = private unnamed_addr constant [52 x i8] c"void UpdateSceneInformation(Boolean, int, int, int)\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"sceneTransType <= 6\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"secondSceneID < 256\00", align 1
@seiPanScanRectInfo = dso_local local_unnamed_addr global %struct.panscanrect_information_struct zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [45 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data->streamBuffer\00", align 1
@seiUser_data_unregistered = dso_local local_unnamed_addr global %struct.user_data_unregistered_information_struct zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data->streamBuffer\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.byte\00", align 1
@seiUser_data_registered_itu_t_t35 = dso_local local_unnamed_addr global %struct.user_data_registered_itu_t_t35_information_struct zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data\00", align 1
@.str.22 = private unnamed_addr constant [81 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data->streamBuffer\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.byte\00", align 1
@seiRecoveryPoint = dso_local local_unnamed_addr global %struct.recovery_point_information_struct zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [39 x i8] c"InitRandomAccess: seiRandomAccess.data\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"InitRandomAccess: seiRandomAccess.data->streamBuffer\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"SEI: recovery_frame_cnt\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"SEI: exact_match_flag\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"SEI: broken_link_flag\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"SEI: changing_slice_group_idc\00", align 1

; Function Attrs: nounwind
define dso_local void @InitSEIMessages() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  store ptr %1, ptr getelementptr inbounds (i8, ptr @sei_message, i64 16), align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #19
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @sei_message, i64 16), align 8, !tbaa !6
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  store i8 5, ptr getelementptr inbounds (i8, ptr @sei_message, i64 8), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %6, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds (i8, ptr @sei_message, i64 4), align 4, !tbaa !13
  store i32 0, ptr @sei_message, align 8, !tbaa !14
  %7 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  store ptr %7, ptr getelementptr inbounds (i8, ptr @sei_message, i64 40), align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #19
  %10 = load ptr, ptr getelementptr inbounds (i8, ptr @sei_message, i64 40), align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ]
  store i8 5, ptr getelementptr inbounds (i8, ptr @sei_message, i64 32), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %12, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds (i8, ptr @sei_message, i64 28), align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds (i8, ptr @sei_message, i64 24), align 8, !tbaa !14
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  tail call void @InitSparePicture()
  tail call void @InitSubseqChar()
  %13 = load ptr, ptr @input, align 8, !tbaa !17
  %14 = getelementptr inbounds i8, ptr %13, i64 3584
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 1, ptr @seiHasSubseqLayerInfo, align 4, !tbaa !21
  store i32 0, ptr @seiSubseqLayerInfo, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 4), align 4
  store i32 2, ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 16), align 4, !tbaa !22
  br label %18

18:                                               ; preds = %17, %11
  store i32 1, ptr @seiHasSceneInformation, align 4, !tbaa !21
  store i32 0, ptr @seiSceneInformation, align 8, !tbaa !24
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 4), align 4, !tbaa !26
  store i32 -1, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 8), align 8, !tbaa !27
  %19 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %19, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #19
  %22 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %22, %21 ], [ %19, %18 ]
  %25 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %26 = getelementptr inbounds i8, ptr %24, i64 32
  store ptr %25, ptr %26, align 8, !tbaa !29
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #19
  %29 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  %30 = getelementptr inbounds i8, ptr %29, i64 32
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  br label %32

32:                                               ; preds = %23, %28
  %33 = phi ptr [ %31, %28 ], [ %25, %23 ]
  %34 = phi ptr [ %29, %28 ], [ %24, %23 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 4
  store i32 8, ptr %35, align 4, !tbaa !31
  store i32 0, ptr %34, align 8, !tbaa !32
  %36 = getelementptr inbounds i8, ptr %34, i64 8
  store i8 0, ptr %36, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %33, i8 0, i64 65496, i1 false)
  %37 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %37, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #19
  %40 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi ptr [ %40, %39 ], [ %37, %32 ]
  %43 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %44 = getelementptr inbounds i8, ptr %42, i64 32
  store ptr %43, ptr %44, align 8, !tbaa !29
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #19
  %47 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %47, i64 32
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  br label %50

50:                                               ; preds = %41, %46
  %51 = phi ptr [ %49, %46 ], [ %43, %41 ]
  %52 = phi ptr [ %47, %46 ], [ %42, %41 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %51, i8 0, i64 65496, i1 false)
  %53 = getelementptr inbounds i8, ptr %52, i64 4
  store i32 8, ptr %53, align 4, !tbaa !31
  store i32 0, ptr %52, align 8, !tbaa !32
  %54 = getelementptr inbounds i8, ptr %52, i64 8
  store i8 0, ptr %54, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 32), align 8, !tbaa !36
  store i32 1, ptr @seiHasPanScanRectInfo, align 4, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 4), i8 0, i64 16, i1 false)
  tail call void @InitUser_data_unregistered()
  tail call void @InitUser_data_registered_itu_t_t35()
  %55 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %55, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  tail call void @no_mem_exit(ptr noundef nonnull @.str.24) #19
  %58 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  br label %59

59:                                               ; preds = %57, %50
  %60 = phi ptr [ %58, %57 ], [ %55, %50 ]
  %61 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %62 = getelementptr inbounds i8, ptr %60, i64 32
  store ptr %61, ptr %62, align 8, !tbaa !29
  %63 = icmp eq ptr %61, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  tail call void @no_mem_exit(ptr noundef nonnull @.str.25) #19
  %65 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  %66 = getelementptr inbounds i8, ptr %65, i64 32
  %67 = load ptr, ptr %66, align 8, !tbaa !29
  br label %68

68:                                               ; preds = %59, %64
  %69 = phi ptr [ %67, %64 ], [ %61, %59 ]
  %70 = phi ptr [ %65, %64 ], [ %60, %59 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %69, i8 0, i64 65496, i1 false)
  %71 = getelementptr inbounds i8, ptr %70, i64 4
  store i32 8, ptr %71, align 4, !tbaa !31
  store i32 0, ptr %70, align 8, !tbaa !32
  %72 = getelementptr inbounds i8, ptr %70, i64 8
  store i8 0, ptr %72, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 16), align 8, !tbaa !39
  store i32 0, ptr @seiRecoveryPoint, align 8, !tbaa !40
  store i8 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 5), align 1, !tbaa !41
  store i8 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 4), align 4, !tbaa !42
  store i32 0, ptr @seiHasRecoveryPoint_info, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local void @clear_sei_message(i32 noundef signext %0) local_unnamed_addr #4 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %2
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %5, i8 0, i64 65496, i1 false)
  %6 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 0, ptr %6, align 4, !tbaa !13
  store i32 0, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @CloseSEIMessages() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  tail call void @free(ptr noundef %5) #19
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  tail call void @free(ptr noundef %6) #19
  br label %7

7:                                                ; preds = %0, %3
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  %8 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %8, i64 32
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %10) #19
  %13 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi ptr [ %13, %12 ], [ %8, %7 ]
  tail call void @free(ptr noundef %15) #19
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 4), align 4, !tbaa !45
  store i32 0, ptr @seiSparePicturePayload, align 8, !tbaa !46
  %16 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %16, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  tail call void @free(ptr noundef %20) #19
  %21 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  tail call void @free(ptr noundef %21) #19
  br label %22

22:                                               ; preds = %14, %18
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  %23 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %23, i64 32
  %27 = load ptr, ptr %26, align 8, !tbaa !29
  tail call void @free(ptr noundef %27) #19
  %28 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  tail call void @free(ptr noundef %28) #19
  br label %29

29:                                               ; preds = %22, %25
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  %30 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %30, i64 32
  %34 = load ptr, ptr %33, align 8, !tbaa !29
  tail call void @free(ptr noundef %34) #19
  %35 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  tail call void @free(ptr noundef %35) #19
  br label %36

36:                                               ; preds = %32, %29
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  %37 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @free(ptr noundef nonnull %37) #19
  br label %40

40:                                               ; preds = %36, %39
  %41 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %41, i64 32
  %45 = load ptr, ptr %44, align 8, !tbaa !29
  tail call void @free(ptr noundef %45) #19
  %46 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  tail call void @free(ptr noundef %46) #19
  br label %47

47:                                               ; preds = %43, %40
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  %48 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %48) #19
  br label %51

51:                                               ; preds = %47, %50
  %52 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %52, i64 32
  %56 = load ptr, ptr %55, align 8, !tbaa !29
  tail call void @free(ptr noundef %56) #19
  %57 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  tail call void @free(ptr noundef %57) #19
  br label %58

58:                                               ; preds = %51, %54
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  %59 = load ptr, ptr getelementptr inbounds (i8, ptr @sei_message, i64 16), align 8, !tbaa !6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @free(ptr noundef nonnull %59) #19
  br label %62

62:                                               ; preds = %61, %58
  store ptr null, ptr getelementptr inbounds (i8, ptr @sei_message, i64 16), align 8, !tbaa !6
  %63 = load ptr, ptr getelementptr inbounds (i8, ptr @sei_message, i64 40), align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void @free(ptr noundef nonnull %63) #19
  br label %66

66:                                               ; preds = %65, %62
  store ptr null, ptr getelementptr inbounds (i8, ptr @sei_message, i64 40), align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext range(i32 0, 2) i32 @HaveAggregationSEI() local_unnamed_addr #7 {
  %1 = load i32, ptr getelementptr inbounds (i8, ptr @sei_message, i64 24), align 8, !tbaa !14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @img, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 1
  %8 = load i32, ptr @seiHasSubseqInfo, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %14, label %43

11:                                               ; preds = %0
  %12 = load i32, ptr @seiHasSubseqInfo, align 4, !tbaa !21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %3, %11
  %15 = load i32, ptr @seiHasSubseqLayerInfo, align 4, !tbaa !21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @img, align 8, !tbaa !17
  %19 = load i32, ptr %18, align 8, !tbaa !57
  %20 = icmp ne i32 %19, 0
  %21 = load i32, ptr @seiHasSubseqChar, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %27, label %43

24:                                               ; preds = %14
  %25 = load i32, ptr @seiHasSubseqChar, align 4, !tbaa !21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %17, %24
  %28 = load i32, ptr @seiHasSceneInformation, align 4, !tbaa !21
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr @seiHasPanScanRectInfo, align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  %33 = load i32, ptr @seiHasUser_data_unregistered_info, align 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  %36 = load i32, ptr @seiHasUser_data_registered_itu_t_t35_info, align 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, ptr @seiHasRecoveryPoint_info, align 4, !tbaa !21
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %39, %27, %24, %17, %11, %3
  %44 = phi i32 [ 1, %3 ], [ 1, %11 ], [ 1, %17 ], [ 1, %24 ], [ 1, %27 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: nounwind
define dso_local void @write_sei_message(i32 noundef signext %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %3, 22
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef signext 153, ptr noundef nonnull @__PRETTY_FUNCTION__.write_sei_message) #20
  unreachable

7:                                                ; preds = %4
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = trunc nuw nsw i32 %3 to i8
  %13 = getelementptr inbounds i8, ptr %9, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  store i8 %12, ptr %16, align 1, !tbaa !58
  %17 = add i32 %11, 1
  %18 = icmp sgt i32 %2, 255
  br i1 %18, label %19, label %32

19:                                               ; preds = %7
  %20 = sext i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ %20, %19 ], [ %27, %21 ]
  %23 = phi i32 [ %2, %19 ], [ %26, %21 ]
  %24 = load ptr, ptr %13, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 %22
  store i8 -1, ptr %25, align 1, !tbaa !58
  %26 = add nsw i32 %23, -255
  %27 = add nsw i64 %22, 1
  %28 = icmp ugt i32 %23, 510
  br i1 %28, label %21, label %29

29:                                               ; preds = %21
  %30 = trunc nsw i64 %22 to i32
  %31 = trunc nsw i64 %27 to i32
  br label %32

32:                                               ; preds = %29, %7
  %33 = phi i32 [ %11, %7 ], [ %30, %29 ]
  %34 = phi i32 [ %2, %7 ], [ %26, %29 ]
  %35 = phi i32 [ %17, %7 ], [ %31, %29 ]
  %36 = trunc i32 %34 to i8
  %37 = load ptr, ptr %13, align 8, !tbaa !6
  %38 = add nsw i32 %33, 2
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  store i8 %36, ptr %40, align 1, !tbaa !58
  %41 = load ptr, ptr %13, align 8, !tbaa !6
  %42 = sext i32 %38 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  %44 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr align 1 %1, i64 %44, i1 false)
  %45 = add nsw i32 %38, %2
  store i32 %45, ptr %10, align 4, !tbaa !13
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local void @finalize_sei_message(i32 noundef signext %0) local_unnamed_addr #4 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %2
  %4 = getelementptr inbounds i8, ptr %3, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = getelementptr inbounds i8, ptr %3, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  store i8 -128, ptr %9, align 1, !tbaa !58
  %10 = load i32, ptr %4, align 4, !tbaa !13
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %4, align 4, !tbaa !13
  store i32 1, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @AppendTmpbits2Buf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %48

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = getelementptr inbounds i8, ptr %1, i64 32
  %8 = getelementptr inbounds i8, ptr %0, i64 4
  %9 = getelementptr inbounds i8, ptr %0, i64 32
  %10 = load i8, ptr %6, align 8, !tbaa !33
  br label %11

11:                                               ; preds = %5, %43
  %12 = phi i8 [ %10, %5 ], [ %40, %43 ]
  %13 = phi i64 [ 0, %5 ], [ %44, %43 ]
  br label %14

14:                                               ; preds = %11, %39
  %15 = phi i8 [ %12, %11 ], [ %40, %39 ]
  %16 = phi i32 [ 128, %11 ], [ %31, %39 ]
  %17 = phi i32 [ 0, %11 ], [ %41, %39 ]
  %18 = shl i8 %15, 1
  store i8 %18, ptr %6, align 8, !tbaa !33
  %19 = load ptr, ptr %7, align 8, !tbaa !29
  %20 = getelementptr inbounds i8, ptr %19, i64 %13
  %21 = load i8, ptr %20, align 1, !tbaa !58
  %22 = zext i8 %21 to i32
  %23 = and i32 %16, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  %26 = or disjoint i8 %18, 1
  store i8 %26, ptr %6, align 8, !tbaa !33
  br label %27

27:                                               ; preds = %25, %14
  %28 = phi i8 [ %26, %25 ], [ %18, %14 ]
  %29 = load i32, ptr %8, align 4, !tbaa !31
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %8, align 4, !tbaa !31
  %31 = lshr i32 %16, 1
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  store i32 8, ptr %8, align 4, !tbaa !31
  %34 = load ptr, ptr %9, align 8, !tbaa !29
  %35 = load i32, ptr %0, align 8, !tbaa !32
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %0, align 8, !tbaa !32
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  store i8 %28, ptr %38, align 1, !tbaa !58
  store i8 0, ptr %6, align 8, !tbaa !33
  br label %39

39:                                               ; preds = %27, %33
  %40 = phi i8 [ %28, %27 ], [ 0, %33 ]
  %41 = add nuw nsw i32 %17, 1
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %14

43:                                               ; preds = %39
  %44 = add nuw nsw i64 %13, 1
  %45 = load i32, ptr %1, align 8, !tbaa !32
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %11, label %48

48:                                               ; preds = %43, %2
  %49 = getelementptr inbounds i8, ptr %1, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !31
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = sub i32 8, %50
  %54 = sub i32 7, %50
  %55 = shl nuw i32 1, %54
  %56 = getelementptr inbounds i8, ptr %0, i64 8
  %57 = getelementptr inbounds i8, ptr %1, i64 8
  %58 = getelementptr inbounds i8, ptr %0, i64 4
  %59 = getelementptr inbounds i8, ptr %0, i64 32
  %60 = tail call i32 @llvm.smax.i32(i32 %53, i32 1)
  %61 = load i8, ptr %56, align 8, !tbaa !33
  br label %62

62:                                               ; preds = %52, %86
  %63 = phi i8 [ %61, %52 ], [ %87, %86 ]
  %64 = phi i32 [ %55, %52 ], [ %78, %86 ]
  %65 = phi i32 [ 0, %52 ], [ %88, %86 ]
  %66 = shl i8 %63, 1
  store i8 %66, ptr %56, align 8, !tbaa !33
  %67 = load i8, ptr %57, align 8, !tbaa !33
  %68 = zext i8 %67 to i32
  %69 = and i32 %64, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  %72 = or disjoint i8 %66, 1
  store i8 %72, ptr %56, align 8, !tbaa !33
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi i8 [ %72, %71 ], [ %66, %62 ]
  %75 = load i32, ptr %58, align 4, !tbaa !31
  %76 = add nsw i32 %75, -1
  store i32 %76, ptr %58, align 4, !tbaa !31
  %77 = lshr i32 %64, 1
  %78 = and i32 %77, 127
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  store i32 8, ptr %58, align 4, !tbaa !31
  %81 = load ptr, ptr %59, align 8, !tbaa !29
  %82 = load i32, ptr %0, align 8, !tbaa !32
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %0, align 8, !tbaa !32
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  store i8 %74, ptr %85, align 1, !tbaa !58
  store i8 0, ptr %56, align 8, !tbaa !33
  br label %86

86:                                               ; preds = %73, %80
  %87 = phi i8 [ %74, %73 ], [ 0, %80 ]
  %88 = add nuw nsw i32 %65, 1
  %89 = icmp eq i32 %88, %60
  br i1 %89, label %90, label %62

90:                                               ; preds = %86, %48
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitSparePicture() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #19
  %8 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %3 ]
  tail call void @free(ptr noundef %10) #19
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 4), align 4, !tbaa !45
  store i32 0, ptr @seiSparePicturePayload, align 8, !tbaa !46
  br label %11

11:                                               ; preds = %9, %0
  %12 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %12, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #19
  %15 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %12, %11 ]
  %18 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %19 = getelementptr inbounds i8, ptr %17, i64 32
  store ptr %18, ptr %19, align 8, !tbaa !29
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #19
  %22 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  %23 = getelementptr inbounds i8, ptr %22, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi ptr [ %24, %21 ], [ %18, %16 ]
  %27 = phi ptr [ %22, %21 ], [ %17, %16 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %26, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 4), align 4, !tbaa !45
  store i32 0, ptr @seiSparePicturePayload, align 8, !tbaa !46
  %28 = getelementptr inbounds i8, ptr %27, i64 4
  store i32 8, ptr %28, align 4, !tbaa !31
  store i32 0, ptr %27, align 8, !tbaa !32
  %29 = getelementptr inbounds i8, ptr %27, i64 8
  store i8 0, ptr %29, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @CloseSparePicture() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  %2 = getelementptr inbounds i8, ptr %1, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %3) #19
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi ptr [ %6, %5 ], [ %1, %0 ]
  tail call void @free(ptr noundef %8) #19
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 4), align 4, !tbaa !45
  store i32 0, ptr @seiSparePicturePayload, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local void @CalculateSparePicture() local_unnamed_addr #12 {
  ret void
}

; Function Attrs: nounwind
define dso_local void @ComposeSparePictureMessage(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.syntaxelement, align 8
  %5 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds i8, ptr %4, i64 32
  store ptr @ue_linfo, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %0, ptr %7, align 4, !tbaa !62
  %8 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %4, ptr noundef %5) #19
  store i32 %1, ptr %7, align 4, !tbaa !62
  %9 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %4, ptr noundef %5) #19
  call void @AppendTmpbits2Buf(ptr noundef %5, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #19
  ret void
}

declare dso_local void @ue_linfo(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #3

declare dso_local signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext range(i32 0, 2) i32 @CompressSpareMBMap(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #19
  %4 = load ptr, ptr @img, align 8, !tbaa !17
  %5 = getelementptr inbounds i8, ptr %4, i64 60
  %6 = load i32, ptr %5, align 4, !tbaa !63
  %7 = sdiv i32 %6, 16
  %8 = getelementptr inbounds i8, ptr %4, i64 52
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = sdiv i32 %9, 16
  %11 = mul nsw i32 %10, %7
  store i32 0, ptr %3, align 8, !tbaa !59
  %12 = getelementptr inbounds i8, ptr %3, i64 32
  store ptr @ue_linfo, ptr %12, align 8, !tbaa !61
  %13 = icmp sgt i32 %6, 15
  br i1 %13, label %14, label %172

14:                                               ; preds = %2
  %15 = add nsw i32 %7, -1
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 %10, -1
  %18 = sdiv i32 %17, 2
  %19 = getelementptr inbounds i8, ptr %3, i64 4
  br label %20

20:                                               ; preds = %14, %149
  %21 = phi ptr [ %4, %14 ], [ %150, %149 ]
  %22 = phi i32 [ 0, %14 ], [ %161, %149 ]
  %23 = phi i32 [ 0, %14 ], [ %160, %149 ]
  %24 = phi i32 [ 1, %14 ], [ %159, %149 ]
  %25 = phi i32 [ 0, %14 ], [ %158, %149 ]
  %26 = phi i32 [ %16, %14 ], [ %157, %149 ]
  %27 = phi i32 [ %16, %14 ], [ %156, %149 ]
  %28 = phi i32 [ %18, %14 ], [ %155, %149 ]
  %29 = phi i32 [ %18, %14 ], [ %154, %149 ]
  %30 = phi i32 [ %16, %14 ], [ %153, %149 ]
  %31 = phi i32 [ %18, %14 ], [ %152, %149 ]
  %32 = phi i32 [ 0, %14 ], [ %151, %149 ]
  %33 = getelementptr inbounds i8, ptr %21, i64 52
  %34 = load i32, ptr %33, align 4, !tbaa !64
  %35 = icmp sgt i32 %34, 15
  br i1 %35, label %36, label %149

36:                                               ; preds = %20, %134
  %37 = phi i32 [ %62, %134 ], [ %23, %20 ]
  %38 = phi i32 [ %143, %134 ], [ 0, %20 ]
  %39 = phi i32 [ %142, %134 ], [ %24, %20 ]
  %40 = phi i32 [ %141, %134 ], [ %25, %20 ]
  %41 = phi i32 [ %140, %134 ], [ %26, %20 ]
  %42 = phi i32 [ %139, %134 ], [ %27, %20 ]
  %43 = phi i32 [ %138, %134 ], [ %28, %20 ]
  %44 = phi i32 [ %137, %134 ], [ %29, %20 ]
  %45 = phi i32 [ %136, %134 ], [ %30, %20 ]
  %46 = phi i32 [ %135, %134 ], [ %31, %20 ]
  %47 = phi i32 [ %61, %134 ], [ %32, %20 ]
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds ptr, ptr %0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !17
  %51 = sext i32 %46 to i64
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !58
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %36
  %56 = add nsw i32 %47, 1
  br label %60

57:                                               ; preds = %36
  store i32 %47, ptr %19, align 4, !tbaa !62
  %58 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %3, ptr noundef %1) #19
  %59 = add nsw i32 %58, %37
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %62 = phi i32 [ %37, %55 ], [ %59, %57 ]
  %63 = icmp eq i32 %40, -1
  %64 = icmp eq i32 %39, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = icmp sgt i32 %46, %44
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = add nsw i32 %46, -1
  br label %134

70:                                               ; preds = %66
  %71 = icmp eq i32 %46, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = add nsw i32 %42, 1
  br label %134

74:                                               ; preds = %70
  %75 = icmp eq i32 %46, %44
  br i1 %75, label %76, label %134

76:                                               ; preds = %74
  %77 = add nsw i32 %44, -1
  br label %134

78:                                               ; preds = %60
  %79 = icmp eq i32 %40, 1
  %80 = select i1 %79, i1 %64, i1 false
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = icmp slt i32 %46, %43
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = add nsw i32 %46, 1
  br label %134

85:                                               ; preds = %81
  %86 = load ptr, ptr @img, align 8, !tbaa !17
  %87 = getelementptr inbounds i8, ptr %86, i64 52
  %88 = load i32, ptr %87, align 4, !tbaa !64
  %89 = sdiv i32 %88, 16
  %90 = add nsw i32 %89, -1
  %91 = icmp eq i32 %46, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = add nsw i32 %41, -1
  br label %134

94:                                               ; preds = %85
  %95 = icmp eq i32 %46, %43
  br i1 %95, label %96, label %134

96:                                               ; preds = %94
  %97 = add nsw i32 %43, 1
  br label %134

98:                                               ; preds = %78
  %99 = icmp eq i32 %40, 0
  %100 = icmp eq i32 %39, -1
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = icmp sgt i32 %45, %41
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = add nsw i32 %45, -1
  br label %134

106:                                              ; preds = %102
  %107 = icmp eq i32 %45, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = add nsw i32 %44, -1
  br label %134

110:                                              ; preds = %106
  %111 = icmp eq i32 %45, %41
  br i1 %111, label %112, label %134

112:                                              ; preds = %110
  %113 = add nsw i32 %41, -1
  br label %134

114:                                              ; preds = %98
  %115 = icmp eq i32 %39, 1
  %116 = select i1 %99, i1 %115, i1 false
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = icmp slt i32 %45, %42
  br i1 %118, label %119, label %121

119:                                              ; preds = %117
  %120 = add nsw i32 %45, 1
  br label %134

121:                                              ; preds = %117
  %122 = load ptr, ptr @img, align 8, !tbaa !17
  %123 = getelementptr inbounds i8, ptr %122, i64 60
  %124 = load i32, ptr %123, align 4, !tbaa !63
  %125 = sdiv i32 %124, 16
  %126 = add nsw i32 %125, -1
  %127 = icmp eq i32 %45, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = add nsw i32 %43, 1
  br label %134

130:                                              ; preds = %121
  %131 = icmp eq i32 %45, %42
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = add nsw i32 %42, 1
  br label %134

134:                                              ; preds = %72, %76, %74, %68, %108, %112, %110, %104, %119, %130, %132, %128, %114, %83, %94, %96, %92
  %135 = phi i32 [ %69, %68 ], [ 0, %72 ], [ %77, %76 ], [ %46, %74 ], [ %84, %83 ], [ %46, %92 ], [ %97, %96 ], [ %46, %94 ], [ %46, %104 ], [ %109, %108 ], [ %46, %112 ], [ %46, %110 ], [ %46, %119 ], [ %129, %128 ], [ %46, %132 ], [ %46, %130 ], [ %46, %114 ]
  %136 = phi i32 [ %45, %68 ], [ %73, %72 ], [ %45, %76 ], [ %45, %74 ], [ %45, %83 ], [ %93, %92 ], [ %45, %96 ], [ %45, %94 ], [ %105, %104 ], [ 0, %108 ], [ %113, %112 ], [ %45, %110 ], [ %120, %119 ], [ %45, %128 ], [ %133, %132 ], [ %45, %130 ], [ %45, %114 ]
  %137 = phi i32 [ %44, %68 ], [ %44, %72 ], [ %77, %76 ], [ %44, %74 ], [ %44, %83 ], [ %44, %92 ], [ %44, %96 ], [ %44, %94 ], [ %44, %104 ], [ %109, %108 ], [ %44, %112 ], [ %44, %110 ], [ %44, %119 ], [ %44, %128 ], [ %44, %132 ], [ %44, %130 ], [ %44, %114 ]
  %138 = phi i32 [ %43, %68 ], [ %43, %72 ], [ %43, %76 ], [ %43, %74 ], [ %43, %83 ], [ %43, %92 ], [ %97, %96 ], [ %43, %94 ], [ %43, %104 ], [ %43, %108 ], [ %43, %112 ], [ %43, %110 ], [ %43, %119 ], [ %129, %128 ], [ %43, %132 ], [ %43, %130 ], [ %43, %114 ]
  %139 = phi i32 [ %42, %68 ], [ %73, %72 ], [ %42, %76 ], [ %42, %74 ], [ %42, %83 ], [ %42, %92 ], [ %42, %96 ], [ %42, %94 ], [ %42, %104 ], [ %42, %108 ], [ %42, %112 ], [ %42, %110 ], [ %42, %119 ], [ %42, %128 ], [ %133, %132 ], [ %42, %130 ], [ %42, %114 ]
  %140 = phi i32 [ %41, %68 ], [ %41, %72 ], [ %41, %76 ], [ %41, %74 ], [ %41, %83 ], [ %93, %92 ], [ %41, %96 ], [ %41, %94 ], [ %41, %104 ], [ %41, %108 ], [ %113, %112 ], [ %41, %110 ], [ %41, %119 ], [ %41, %128 ], [ %41, %132 ], [ %41, %130 ], [ %41, %114 ]
  %141 = phi i32 [ -1, %68 ], [ 1, %72 ], [ 0, %76 ], [ -1, %74 ], [ 1, %83 ], [ -1, %92 ], [ 0, %96 ], [ 1, %94 ], [ 0, %104 ], [ 0, %108 ], [ -1, %112 ], [ 0, %110 ], [ 0, %119 ], [ 0, %128 ], [ 1, %132 ], [ 0, %130 ], [ %40, %114 ]
  %142 = phi i32 [ 0, %68 ], [ 0, %72 ], [ 1, %76 ], [ 0, %74 ], [ 0, %83 ], [ 0, %92 ], [ -1, %96 ], [ 0, %94 ], [ -1, %104 ], [ 1, %108 ], [ 0, %112 ], [ -1, %110 ], [ 1, %119 ], [ -1, %128 ], [ 0, %132 ], [ 1, %130 ], [ %39, %114 ]
  %143 = add nuw nsw i32 %38, 1
  %144 = load ptr, ptr @img, align 8, !tbaa !17
  %145 = getelementptr inbounds i8, ptr %144, i64 52
  %146 = load i32, ptr %145, align 4, !tbaa !64
  %147 = sdiv i32 %146, 16
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %36, label %149

149:                                              ; preds = %134, %20
  %150 = phi ptr [ %21, %20 ], [ %144, %134 ]
  %151 = phi i32 [ %32, %20 ], [ %61, %134 ]
  %152 = phi i32 [ %31, %20 ], [ %135, %134 ]
  %153 = phi i32 [ %30, %20 ], [ %136, %134 ]
  %154 = phi i32 [ %29, %20 ], [ %137, %134 ]
  %155 = phi i32 [ %28, %20 ], [ %138, %134 ]
  %156 = phi i32 [ %27, %20 ], [ %139, %134 ]
  %157 = phi i32 [ %26, %20 ], [ %140, %134 ]
  %158 = phi i32 [ %25, %20 ], [ %141, %134 ]
  %159 = phi i32 [ %24, %20 ], [ %142, %134 ]
  %160 = phi i32 [ %23, %20 ], [ %62, %134 ]
  %161 = add nuw nsw i32 %22, 1
  %162 = getelementptr inbounds i8, ptr %150, i64 60
  %163 = load i32, ptr %162, align 4, !tbaa !63
  %164 = sdiv i32 %163, 16
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %20, label %166

166:                                              ; preds = %149
  %167 = icmp eq i32 %151, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 %151, ptr %169, align 4, !tbaa !62
  %170 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %3, ptr noundef %1) #19
  %171 = add nsw i32 %170, %160
  br label %172

172:                                              ; preds = %2, %168, %166
  %173 = phi i32 [ %171, %168 ], [ %160, %166 ], [ 0, %2 ]
  %174 = icmp slt i32 %173, %11
  br i1 %174, label %236, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 0, ptr %176, align 8, !tbaa !33
  %177 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 8, ptr %177, align 4, !tbaa !31
  store i32 0, ptr %1, align 8, !tbaa !32
  %178 = load ptr, ptr @img, align 8, !tbaa !17
  %179 = getelementptr inbounds i8, ptr %178, i64 60
  %180 = load i32, ptr %179, align 4, !tbaa !63
  %181 = icmp sgt i32 %180, 15
  br i1 %181, label %182, label %236

182:                                              ; preds = %175
  %183 = getelementptr inbounds i8, ptr %1, i64 32
  br label %184

184:                                              ; preds = %182, %227
  %185 = phi ptr [ %178, %182 ], [ %228, %227 ]
  %186 = phi i8 [ 0, %182 ], [ %229, %227 ]
  %187 = phi i64 [ 0, %182 ], [ %230, %227 ]
  %188 = getelementptr inbounds i8, ptr %185, i64 52
  %189 = load i32, ptr %188, align 4, !tbaa !64
  %190 = icmp sgt i32 %189, 15
  br i1 %190, label %191, label %227

191:                                              ; preds = %184
  %192 = getelementptr inbounds ptr, ptr %0, i64 %187
  br label %193

193:                                              ; preds = %191, %217
  %194 = phi ptr [ %185, %191 ], [ %218, %217 ]
  %195 = phi ptr [ %185, %191 ], [ %219, %217 ]
  %196 = phi i8 [ %186, %191 ], [ %220, %217 ]
  %197 = phi i64 [ 0, %191 ], [ %221, %217 ]
  %198 = shl i8 %196, 1
  store i8 %198, ptr %176, align 8, !tbaa !33
  %199 = load ptr, ptr %192, align 8, !tbaa !17
  %200 = getelementptr inbounds i8, ptr %199, i64 %197
  %201 = load i8, ptr %200, align 1, !tbaa !58
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %193
  %204 = or disjoint i8 %198, 1
  store i8 %204, ptr %176, align 8, !tbaa !33
  br label %205

205:                                              ; preds = %203, %193
  %206 = phi i8 [ %204, %203 ], [ %198, %193 ]
  %207 = load i32, ptr %177, align 4, !tbaa !31
  %208 = add nsw i32 %207, -1
  store i32 %208, ptr %177, align 4, !tbaa !31
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  store i32 8, ptr %177, align 4, !tbaa !31
  %211 = load ptr, ptr %183, align 8, !tbaa !29
  %212 = load i32, ptr %1, align 8, !tbaa !32
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %1, align 8, !tbaa !32
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, ptr %211, i64 %214
  store i8 %206, ptr %215, align 1, !tbaa !58
  store i8 0, ptr %176, align 8, !tbaa !33
  %216 = load ptr, ptr @img, align 8, !tbaa !17
  br label %217

217:                                              ; preds = %205, %210
  %218 = phi ptr [ %194, %205 ], [ %216, %210 ]
  %219 = phi ptr [ %195, %205 ], [ %216, %210 ]
  %220 = phi i8 [ %206, %205 ], [ 0, %210 ]
  %221 = add nuw nsw i64 %197, 1
  %222 = getelementptr inbounds i8, ptr %219, i64 52
  %223 = load i32, ptr %222, align 4, !tbaa !64
  %224 = sdiv i32 %223, 16
  %225 = sext i32 %224 to i64
  %226 = icmp slt i64 %221, %225
  br i1 %226, label %193, label %227

227:                                              ; preds = %217, %184
  %228 = phi ptr [ %185, %184 ], [ %218, %217 ]
  %229 = phi i8 [ %186, %184 ], [ %220, %217 ]
  %230 = add nuw nsw i64 %187, 1
  %231 = getelementptr inbounds i8, ptr %228, i64 60
  %232 = load i32, ptr %231, align 4, !tbaa !63
  %233 = sdiv i32 %232, 16
  %234 = sext i32 %233 to i64
  %235 = icmp slt i64 %230, %234
  br i1 %235, label %184, label %236

236:                                              ; preds = %227, %175, %172
  %237 = zext i1 %174 to i32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #19
  ret i32 %237
}

; Function Attrs: nounwind
define dso_local void @FinalizeSpareMBMap() local_unnamed_addr #0 {
  %1 = alloca %struct.syntaxelement, align 8
  %2 = load ptr, ptr @img, align 8, !tbaa !17
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = srem i32 %3, 256
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #19
  store i32 0, ptr %1, align 8, !tbaa !59
  %5 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr @ue_linfo, ptr %5, align 8, !tbaa !61
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  %7 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #19
  br label %10

10:                                               ; preds = %9, %0
  %11 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %12 = getelementptr inbounds i8, ptr %7, i64 32
  store ptr %11, ptr %12, align 8, !tbaa !29
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #19
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds i8, ptr %7, i64 4
  store i32 8, ptr %16, align 4, !tbaa !31
  store i32 0, ptr %7, align 8, !tbaa !32
  %17 = getelementptr inbounds i8, ptr %7, i64 8
  store i8 0, ptr %17, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %11, i8 0, i64 65496, i1 false)
  %18 = load i32, ptr @seiSparePicturePayload, align 8, !tbaa !46
  %19 = sub nsw i32 %4, %18
  %20 = lshr i32 %19, 23
  %21 = and i32 %20, 256
  %22 = add i32 %21, %19
  %23 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 %22, ptr %23, align 4, !tbaa !62
  %24 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef nonnull %7) #19
  %25 = load i32, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 4), align 4, !tbaa !45
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %23, align 4, !tbaa !62
  %27 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef nonnull %7) #19
  call void @AppendTmpbits2Buf(ptr noundef nonnull %7, ptr noundef %6)
  %28 = load i32, ptr %16, align 4, !tbaa !31
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %45, label %30

30:                                               ; preds = %15
  %31 = load i8, ptr %17, align 8, !tbaa !33
  %32 = shl i8 %31, 1
  %33 = or disjoint i8 %32, 1
  %34 = add nsw i32 %28, -1
  %35 = icmp eq i32 %34, 0
  %36 = zext i8 %33 to i32
  %37 = shl i32 %36, %34
  %38 = trunc i32 %37 to i8
  %39 = select i1 %35, i8 %33, i8 %38
  store i32 8, ptr %16, align 4, !tbaa !31
  %40 = load ptr, ptr %12, align 8, !tbaa !29
  %41 = load i32, ptr %7, align 8, !tbaa !32
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %7, align 8, !tbaa !32
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, ptr %40, i64 %43
  store i8 %39, ptr %44, align 1, !tbaa !58
  store i8 0, ptr %17, align 8, !tbaa !33
  br label %45

45:                                               ; preds = %30, %15
  %46 = load i32, ptr %7, align 8, !tbaa !32
  store i32 %46, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 8), align 8, !tbaa !65
  store ptr %7, ptr getelementptr inbounds (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  %47 = getelementptr inbounds i8, ptr %6, i64 32
  %48 = load ptr, ptr %47, align 8, !tbaa !29
  call void @free(ptr noundef %48) #19
  call void @free(ptr noundef %6) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #19
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitSubseqInfo(i32 noundef signext %0) local_unnamed_addr #0 {
  store i32 1, ptr @seiHasSubseqInfo, align 4, !tbaa !21
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %2
  store i32 %0, ptr %3, align 8, !tbaa !66
  %4 = load i16, ptr @InitSubseqInfo.id, align 2, !tbaa !68
  %5 = add i16 %4, 1
  store i16 %5, ptr @InitSubseqInfo.id, align 2, !tbaa !68
  %6 = zext i16 %4 to i32
  %7 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 %6, ptr %7, align 4, !tbaa !69
  %8 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 0, ptr %8, align 8, !tbaa !70
  %9 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 -1, ptr %9, align 4, !tbaa !71
  %10 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 0, ptr %10, align 8, !tbaa !72
  %11 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  %12 = getelementptr inbounds i8, ptr %3, i64 24
  store ptr %11, ptr %12, align 8, !tbaa !73
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #19
  %15 = load ptr, ptr %12, align 8, !tbaa !73
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %11, %1 ]
  %18 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %19 = getelementptr inbounds i8, ptr %17, i64 32
  store ptr %18, ptr %19, align 8, !tbaa !29
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #19
  %22 = load ptr, ptr %12, align 8, !tbaa !73
  %23 = getelementptr inbounds i8, ptr %22, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi ptr [ %24, %21 ], [ %18, %16 ]
  %27 = phi ptr [ %22, %21 ], [ %17, %16 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 4
  store i32 8, ptr %28, align 4, !tbaa !31
  store i32 0, ptr %27, align 8, !tbaa !32
  %29 = getelementptr inbounds i8, ptr %27, i64 8
  store i8 0, ptr %29, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %26, i8 0, i64 65496, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @UpdateSubseqInfo(i32 noundef signext %0) local_unnamed_addr #13 {
  %2 = load ptr, ptr @img, align 8, !tbaa !17
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %7, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !71
  %10 = add i32 %9, 1
  %11 = and i32 %10, 255
  store i32 %11, ptr %8, align 4, !tbaa !71
  br label %12

12:                                               ; preds = %6, %1
  switch i32 %0, label %46 [
    i32 0, label %13
    i32 1, label %22
  ]

13:                                               ; preds = %12
  %14 = load i32, ptr %2, align 8, !tbaa !57
  %15 = load ptr, ptr @input, align 8, !tbaa !17
  %16 = getelementptr inbounds i8, ptr %15, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !74
  %18 = add nsw i32 %17, -1
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, ptr getelementptr inbounds (i8, ptr @seiSubseqInfo, i64 8), align 8, !tbaa !70
  br label %46

21:                                               ; preds = %13
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqInfo, i64 8), align 8, !tbaa !70
  br label %46

22:                                               ; preds = %12
  %23 = load i32, ptr %2, align 8, !tbaa !57
  %24 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !21
  %25 = sub nsw i32 %23, %24
  %26 = load ptr, ptr @input, align 8, !tbaa !17
  %27 = getelementptr inbounds i8, ptr %26, i64 3584
  %28 = load i32, ptr %27, align 8, !tbaa !18
  %29 = add nsw i32 %28, 1
  %30 = srem i32 %25, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = getelementptr inbounds i8, ptr %26, i64 1244
  %34 = load i32, ptr %33, align 4, !tbaa !75
  %35 = icmp ne i32 %34, 0
  %36 = icmp sgt i32 %25, 0
  %37 = and i1 %36, %35
  br i1 %37, label %44, label %38

38:                                               ; preds = %32, %22
  %39 = icmp eq i32 %30, %28
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %26, i64 1244
  %42 = load i32, ptr %41, align 4, !tbaa !75
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32, %40
  store i32 1, ptr getelementptr inbounds (i8, ptr @seiSubseqInfo, i64 40), align 8, !tbaa !70
  br label %46

45:                                               ; preds = %40, %38
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqInfo, i64 40), align 8, !tbaa !70
  br label %46

46:                                               ; preds = %21, %20, %12, %44, %45
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeSubseqInfo(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %3
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  store i32 0, ptr %2, align 8, !tbaa !59
  %7 = getelementptr inbounds i8, ptr %2, i64 32
  store ptr @ue_linfo, ptr %7, align 8, !tbaa !61
  %8 = load i32, ptr %4, align 8, !tbaa !66
  %9 = getelementptr inbounds i8, ptr %2, i64 4
  store i32 %8, ptr %9, align 4, !tbaa !62
  %10 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %2, ptr noundef %6) #19
  %11 = getelementptr inbounds i8, ptr %4, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !69
  store i32 %12, ptr %9, align 4, !tbaa !62
  %13 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %2, ptr noundef %6) #19
  %14 = getelementptr inbounds i8, ptr %4, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds i8, ptr %2, i64 20
  store i32 %15, ptr %16, align 4, !tbaa !76
  %17 = getelementptr inbounds i8, ptr %2, i64 12
  store i32 1, ptr %17, align 4, !tbaa !77
  %18 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %2, ptr noundef %6) #19
  %19 = getelementptr inbounds i8, ptr %4, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !71
  store i32 %20, ptr %9, align 4, !tbaa !62
  %21 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %2, ptr noundef %6) #19
  %22 = getelementptr inbounds i8, ptr %6, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !31
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %42, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds i8, ptr %6, i64 8
  %27 = load i8, ptr %26, align 8, !tbaa !33
  %28 = shl i8 %27, 1
  %29 = or disjoint i8 %28, 1
  %30 = add nsw i32 %23, -1
  %31 = icmp eq i32 %30, 0
  %32 = zext i8 %29 to i32
  %33 = shl i32 %32, %30
  %34 = trunc i32 %33 to i8
  %35 = select i1 %31, i8 %29, i8 %34
  store i32 8, ptr %22, align 4, !tbaa !31
  %36 = getelementptr inbounds i8, ptr %6, i64 32
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  %38 = load i32, ptr %6, align 8, !tbaa !32
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %6, align 8, !tbaa !32
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  store i8 %35, ptr %41, align 1, !tbaa !58
  store i8 0, ptr %26, align 8, !tbaa !33
  br label %42

42:                                               ; preds = %25, %1
  %43 = load i32, ptr %6, align 8, !tbaa !32
  %44 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 %43, ptr %44, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

declare dso_local signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @ClearSubseqInfoPayload(i32 noundef signext %0) local_unnamed_addr #14 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %2
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 8, ptr %6, align 4, !tbaa !31
  store i32 0, ptr %5, align 8, !tbaa !32
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store i8 0, ptr %7, align 8, !tbaa !33
  %8 = getelementptr inbounds i8, ptr %5, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %9, i8 0, i64 65496, i1 false)
  %10 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 0, ptr %10, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @CloseSubseqInfo(i32 noundef signext %0) local_unnamed_addr #5 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %2
  %4 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 -1, ptr %4, align 4, !tbaa !71
  %5 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 0, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds i8, ptr %3, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds i8, ptr %7, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  tail call void @free(ptr noundef %9) #19
  %10 = load ptr, ptr %6, align 8, !tbaa !73
  tail call void @free(ptr noundef %10) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @InitSubseqLayerInfo() local_unnamed_addr #15 {
  store i32 1, ptr @seiHasSubseqLayerInfo, align 4, !tbaa !21
  store i32 0, ptr @seiSubseqLayerInfo, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 4), align 4
  store i32 2, ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 16), align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local void @CloseSubseqLayerInfo() local_unnamed_addr #12 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local void @FinalizeSubseqLayerInfo() local_unnamed_addr #16 {
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 20), align 4, !tbaa !78
  %1 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 16), align 4, !tbaa !22
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %20

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %16, %5 ]
  %7 = phi i64 [ 0, %3 ], [ %15, %5 ]
  %8 = getelementptr inbounds [2 x i16], ptr @seiSubseqLayerInfo, i64 0, i64 %6
  %9 = load i16, ptr %8, align 2, !tbaa !68
  %10 = getelementptr inbounds [8 x i8], ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 8), i64 0, i64 %7
  store i16 %9, ptr %10, align 4, !tbaa !68
  %11 = or disjoint i64 %7, 2
  %12 = getelementptr inbounds [2 x i16], ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 4), i64 0, i64 %6
  %13 = load i16, ptr %12, align 2, !tbaa !68
  %14 = getelementptr inbounds [8 x i8], ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 8), i64 0, i64 %11
  store i16 %13, ptr %14, align 2, !tbaa !68
  %15 = add nuw nsw i64 %7, 4
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, %4
  br i1 %17, label %18, label %5

18:                                               ; preds = %5
  %19 = shl i32 %1, 2
  store i32 %19, ptr getelementptr inbounds (i8, ptr @seiSubseqLayerInfo, i64 20), align 4, !tbaa !78
  br label %20

20:                                               ; preds = %18, %0
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitSubseqChar() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %1, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #19
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %8 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %7, ptr %8, align 8, !tbaa !29
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #19
  %11 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  %12 = getelementptr inbounds i8, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %13, %10 ], [ %7, %5 ]
  %16 = phi ptr [ %11, %10 ], [ %6, %5 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %15, i8 0, i64 65496, i1 false)
  %17 = getelementptr inbounds i8, ptr %16, i64 4
  store i32 8, ptr %17, align 4, !tbaa !31
  store i32 0, ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds i8, ptr %16, i64 8
  store i8 0, ptr %18, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 80), align 8, !tbaa !79
  store i32 0, ptr @seiHasSubseqChar, align 4, !tbaa !21
  %19 = load ptr, ptr @img, align 8, !tbaa !17
  %20 = getelementptr inbounds i8, ptr %19, i64 90200
  %21 = load i32, ptr %20, align 8, !tbaa !80
  store i32 %21, ptr @seiSubseqChar, align 8, !tbaa !81
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %22, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !69
  store i32 %24, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 4), align 4, !tbaa !82
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 8), align 8, !tbaa !83
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 16), align 8, !tbaa !84
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 28), align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @ClearSubseqCharPayload() local_unnamed_addr #14 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  %2 = getelementptr inbounds i8, ptr %1, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %3, i8 0, i64 65496, i1 false)
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 8, ptr %4, align 4, !tbaa !31
  store i32 0, ptr %1, align 8, !tbaa !32
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 0, ptr %5, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 80), align 8, !tbaa !79
  store i32 0, ptr @seiHasSubseqChar, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @UpdateSubseqChar() local_unnamed_addr #13 {
  %1 = load ptr, ptr @img, align 8, !tbaa !17
  %2 = getelementptr inbounds i8, ptr %1, i64 90200
  %3 = load i32, ptr %2, align 8, !tbaa !80
  store i32 %3, ptr @seiSubseqChar, align 8, !tbaa !81
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %4, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !69
  store i32 %6, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 4), align 4, !tbaa !82
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 8), align 8, !tbaa !83
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 16), align 8, !tbaa !84
  store i32 100, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 20), align 4, !tbaa !86
  store i32 30, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 24), align 8, !tbaa !87
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 28), align 4, !tbaa !85
  store i32 1, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 32), align 8, !tbaa !21
  store i32 2, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 52), align 4, !tbaa !21
  store i32 3, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 36), align 4, !tbaa !21
  store i32 4, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 56), align 8, !tbaa !21
  store i32 1, ptr @seiHasSubseqChar, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeSubseqChar() local_unnamed_addr #0 {
  %1 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #19
  %2 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  store i32 0, ptr %1, align 8, !tbaa !59
  %3 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr @ue_linfo, ptr %3, align 8, !tbaa !61
  %4 = load i32, ptr @seiSubseqChar, align 8, !tbaa !81
  %5 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 %4, ptr %5, align 4, !tbaa !62
  %6 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %7 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 4), align 4, !tbaa !82
  store i32 %7, ptr %5, align 4, !tbaa !62
  %8 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 8), align 8, !tbaa !83
  %10 = getelementptr inbounds i8, ptr %1, i64 20
  store i32 %9, ptr %10, align 4, !tbaa !76
  %11 = getelementptr inbounds i8, ptr %1, i64 12
  store i32 1, ptr %11, align 4, !tbaa !77
  %12 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  %13 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 8), align 8, !tbaa !83
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 12), align 4, !tbaa !88
  store i32 %16, ptr %10, align 4, !tbaa !76
  store i32 32, ptr %11, align 4, !tbaa !77
  %17 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 16), align 8, !tbaa !84
  store i32 %19, ptr %10, align 4, !tbaa !76
  store i32 1, ptr %11, align 4, !tbaa !77
  %20 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  %21 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 16), align 8, !tbaa !84
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 20), align 4, !tbaa !86
  store i32 %24, ptr %10, align 4, !tbaa !76
  store i32 16, ptr %11, align 4, !tbaa !77
  %25 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  %26 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 24), align 8, !tbaa !87
  store i32 %26, ptr %10, align 4, !tbaa !76
  store i32 16, ptr %11, align 4, !tbaa !77
  %27 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 28), align 4, !tbaa !85
  store i32 %29, ptr %5, align 4, !tbaa !62
  %30 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %31 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 28), align 4, !tbaa !85
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28, %33
  %34 = phi i64 [ %41, %33 ], [ 0, %28 ]
  %35 = getelementptr inbounds [5 x i32], ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 32), i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !21
  store i32 %36, ptr %5, align 4, !tbaa !62
  %37 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %38 = getelementptr inbounds [5 x i32], ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 52), i64 0, i64 %34
  %39 = load i32, ptr %38, align 4, !tbaa !21
  store i32 %39, ptr %5, align 4, !tbaa !62
  %40 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %41 = add nuw nsw i64 %34, 1
  %42 = load i32, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 28), align 4, !tbaa !85
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %33, label %45

45:                                               ; preds = %33, %28
  %46 = getelementptr inbounds i8, ptr %2, i64 4
  %47 = load i32, ptr %46, align 4, !tbaa !31
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %2, i64 8
  %51 = load i8, ptr %50, align 8, !tbaa !33
  %52 = shl i8 %51, 1
  %53 = or disjoint i8 %52, 1
  %54 = add nsw i32 %47, -1
  %55 = icmp eq i32 %54, 0
  %56 = zext i8 %53 to i32
  %57 = shl i32 %56, %54
  %58 = trunc i32 %57 to i8
  %59 = select i1 %55, i8 %53, i8 %58
  store i32 8, ptr %46, align 4, !tbaa !31
  %60 = getelementptr inbounds i8, ptr %2, i64 32
  %61 = load ptr, ptr %60, align 8, !tbaa !29
  %62 = load i32, ptr %2, align 8, !tbaa !32
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %2, align 8, !tbaa !32
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  store i8 %59, ptr %65, align 1, !tbaa !58
  store i8 0, ptr %50, align 8, !tbaa !33
  br label %66

66:                                               ; preds = %49, %45
  %67 = load i32, ptr %2, align 8, !tbaa !32
  store i32 %67, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 80), align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @CloseSubseqChar() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  tail call void @free(ptr noundef %5) #19
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  tail call void @free(ptr noundef %6) #19
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiSubseqChar, i64 72), align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitSceneInformation() local_unnamed_addr #0 {
  store i32 1, ptr @seiHasSceneInformation, align 4, !tbaa !21
  store i32 0, ptr @seiSceneInformation, align 8, !tbaa !24
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 4), align 4, !tbaa !26
  store i32 -1, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 8), align 8, !tbaa !27
  %1 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %1, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #19
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %8 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %7, ptr %8, align 8, !tbaa !29
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #19
  %11 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  %12 = getelementptr inbounds i8, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %13, %10 ], [ %7, %5 ]
  %16 = phi ptr [ %11, %10 ], [ %6, %5 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 4
  store i32 8, ptr %17, align 4, !tbaa !31
  store i32 0, ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds i8, ptr %16, i64 8
  store i8 0, ptr %18, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %15, i8 0, i64 65496, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @CloseSceneInformation() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  tail call void @free(ptr noundef %5) #19
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  tail call void @free(ptr noundef %6) #19
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeSceneInformation() local_unnamed_addr #0 {
  %1 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #19
  %2 = load ptr, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 16), align 8, !tbaa !28
  store i32 0, ptr %1, align 8, !tbaa !59
  %3 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr @ue_linfo, ptr %3, align 8, !tbaa !61
  %4 = load i32, ptr @seiSceneInformation, align 8, !tbaa !24
  %5 = getelementptr inbounds i8, ptr %1, i64 20
  store i32 %4, ptr %5, align 4, !tbaa !76
  %6 = getelementptr inbounds i8, ptr %1, i64 12
  store i32 8, ptr %6, align 4, !tbaa !77
  %7 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  %8 = load i32, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 4), align 4, !tbaa !26
  %9 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 %8, ptr %9, align 4, !tbaa !62
  %10 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %11 = load i32, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 4), align 4, !tbaa !26
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 8), align 8, !tbaa !27
  store i32 %14, ptr %5, align 4, !tbaa !76
  store i32 8, ptr %6, align 4, !tbaa !77
  %15 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  br label %16

16:                                               ; preds = %13, %0
  %17 = getelementptr inbounds i8, ptr %2, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !31
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %2, i64 8
  %22 = load i8, ptr %21, align 8, !tbaa !33
  %23 = shl i8 %22, 1
  %24 = or disjoint i8 %23, 1
  %25 = add nsw i32 %18, -1
  %26 = icmp eq i32 %25, 0
  %27 = zext i8 %24 to i32
  %28 = shl i32 %27, %25
  %29 = trunc i32 %28 to i8
  %30 = select i1 %26, i8 %24, i8 %29
  store i32 8, ptr %17, align 4, !tbaa !31
  %31 = getelementptr inbounds i8, ptr %2, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !29
  %33 = load i32, ptr %2, align 8, !tbaa !32
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %2, align 8, !tbaa !32
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, ptr %32, i64 %35
  store i8 %30, ptr %36, align 1, !tbaa !58
  store i8 0, ptr %21, align 8, !tbaa !33
  br label %37

37:                                               ; preds = %20, %16
  %38 = load i32, ptr %2, align 8, !tbaa !32
  store i32 %38, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 24), align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #19
  ret void
}

; Function Attrs: nounwind
define dso_local void @UpdateSceneInformation(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #0 {
  store i32 %0, ptr @seiHasSceneInformation, align 4, !tbaa !21
  %5 = icmp slt i32 %1, 256
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef signext 1187, ptr noundef nonnull @__PRETTY_FUNCTION__.UpdateSceneInformation) #20
  unreachable

7:                                                ; preds = %4
  store i32 %1, ptr @seiSceneInformation, align 8, !tbaa !24
  %8 = icmp slt i32 %2, 7
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef signext 1190, ptr noundef nonnull @__PRETTY_FUNCTION__.UpdateSceneInformation) #20
  unreachable

10:                                               ; preds = %7
  store i32 %2, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 4), align 4, !tbaa !26
  %11 = icmp sgt i32 %2, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = icmp slt i32 %3, 256
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef signext 1195, ptr noundef nonnull @__PRETTY_FUNCTION__.UpdateSceneInformation) #20
  unreachable

15:                                               ; preds = %12
  store i32 %3, ptr getelementptr inbounds (i8, ptr @seiSceneInformation, i64 8), align 8, !tbaa !27
  br label %16

16:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitPanScanRectInfo() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %1, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #19
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %8 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %7, ptr %8, align 8, !tbaa !29
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #19
  %11 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  %12 = getelementptr inbounds i8, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %13, %10 ], [ %7, %5 ]
  %16 = phi ptr [ %11, %10 ], [ %6, %5 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %15, i8 0, i64 65496, i1 false)
  %17 = getelementptr inbounds i8, ptr %16, i64 4
  store i32 8, ptr %17, align 4, !tbaa !31
  store i32 0, ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds i8, ptr %16, i64 8
  store i8 0, ptr %18, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 32), align 8, !tbaa !36
  store i32 1, ptr @seiHasPanScanRectInfo, align 4, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 4), i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @ClearPanScanRectInfoPayload() local_unnamed_addr #14 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  %2 = getelementptr inbounds i8, ptr %1, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %3, i8 0, i64 65496, i1 false)
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 8, ptr %4, align 4, !tbaa !31
  store i32 0, ptr %1, align 8, !tbaa !32
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 0, ptr %5, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 32), align 8, !tbaa !36
  store i32 1, ptr @seiHasPanScanRectInfo, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @UpdatePanScanRectInfo() local_unnamed_addr #15 {
  store i32 3, ptr @seiPanScanRectInfo, align 8, !tbaa !90
  store i32 10, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 4), align 4, !tbaa !91
  store i32 40, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 8), align 8, !tbaa !92
  store i32 20, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 12), align 4, !tbaa !93
  store i32 32, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 16), align 8, !tbaa !94
  store i32 1, ptr @seiHasPanScanRectInfo, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizePanScanRectInfo() local_unnamed_addr #0 {
  %1 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #19
  %2 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  store i32 0, ptr %1, align 8, !tbaa !59
  %3 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr @ue_linfo, ptr %3, align 8, !tbaa !61
  %4 = load i32, ptr @seiPanScanRectInfo, align 8, !tbaa !90
  %5 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 %4, ptr %5, align 4, !tbaa !62
  %6 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %7 = load i32, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 4), align 4, !tbaa !91
  store i32 %7, ptr %5, align 4, !tbaa !62
  %8 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 8), align 8, !tbaa !92
  store i32 %9, ptr %5, align 4, !tbaa !62
  %10 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %11 = load i32, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 12), align 4, !tbaa !93
  store i32 %11, ptr %5, align 4, !tbaa !62
  %12 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %13 = load i32, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 16), align 8, !tbaa !94
  store i32 %13, ptr %5, align 4, !tbaa !62
  %14 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %1, ptr noundef %2) #19
  %15 = getelementptr inbounds i8, ptr %2, i64 4
  %16 = load i32, ptr %15, align 4, !tbaa !31
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %35, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds i8, ptr %2, i64 8
  %20 = load i8, ptr %19, align 8, !tbaa !33
  %21 = shl i8 %20, 1
  %22 = or disjoint i8 %21, 1
  %23 = add nsw i32 %16, -1
  %24 = icmp eq i32 %23, 0
  %25 = zext i8 %22 to i32
  %26 = shl i32 %25, %23
  %27 = trunc i32 %26 to i8
  %28 = select i1 %24, i8 %22, i8 %27
  store i32 8, ptr %15, align 4, !tbaa !31
  %29 = getelementptr inbounds i8, ptr %2, i64 32
  %30 = load ptr, ptr %29, align 8, !tbaa !29
  %31 = load i32, ptr %2, align 8, !tbaa !32
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %2, align 8, !tbaa !32
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, ptr %30, i64 %33
  store i8 %28, ptr %34, align 1, !tbaa !58
  store i8 0, ptr %19, align 8, !tbaa !33
  br label %35

35:                                               ; preds = %18, %0
  %36 = load i32, ptr %2, align 8, !tbaa !32
  store i32 %36, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 32), align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @ClosePanScanRectInfo() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  tail call void @free(ptr noundef %5) #19
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  tail call void @free(ptr noundef %6) #19
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiPanScanRectInfo, i64 24), align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitUser_data_unregistered() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %1, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #19
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %8 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %7, ptr %8, align 8, !tbaa !29
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #19
  br label %11

11:                                               ; preds = %10, %5
  %12 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  store ptr %12, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.20) #19
  %15 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %12, %11 ]
  %18 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  %19 = getelementptr inbounds i8, ptr %18, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %20, i8 0, i64 65496, i1 false)
  %21 = getelementptr inbounds i8, ptr %18, i64 4
  store i32 8, ptr %21, align 4, !tbaa !31
  store i32 0, ptr %18, align 8, !tbaa !32
  %22 = getelementptr inbounds i8, ptr %18, i64 8
  store i8 0, ptr %22, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 24), align 8, !tbaa !95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %17, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 8), align 8, !tbaa !96
  store i32 1, ptr @seiHasUser_data_unregistered_info, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @ClearUser_data_unregistered() local_unnamed_addr #14 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  %2 = getelementptr inbounds i8, ptr %1, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %3, i8 0, i64 65496, i1 false)
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 8, ptr %4, align 4, !tbaa !31
  store i32 0, ptr %1, align 8, !tbaa !32
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 0, ptr %5, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 24), align 8, !tbaa !95
  %6 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %6, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 8), align 8, !tbaa !96
  store i32 1, ptr @seiHasUser_data_unregistered_info, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local void @UpdateUser_data_unregistered() local_unnamed_addr #4 {
  %1 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  store i8 0, ptr %1, align 1, !tbaa !58
  %2 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %3 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 4, ptr %3, align 1, !tbaa !58
  %4 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %5 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 8, ptr %5, align 1, !tbaa !58
  %6 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %7 = getelementptr inbounds i8, ptr %6, i64 3
  store i8 12, ptr %7, align 1, !tbaa !58
  %8 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %9 = getelementptr inbounds i8, ptr %8, i64 4
  store i8 16, ptr %9, align 1, !tbaa !58
  %10 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %11 = getelementptr inbounds i8, ptr %10, i64 5
  store i8 20, ptr %11, align 1, !tbaa !58
  %12 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %13 = getelementptr inbounds i8, ptr %12, i64 6
  store i8 24, ptr %13, align 1, !tbaa !58
  store i32 7, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 8), align 8, !tbaa !96
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeUser_data_unregistered() local_unnamed_addr #0 {
  %1 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #19
  %2 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  store i32 0, ptr %1, align 8, !tbaa !59
  %3 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr @ue_linfo, ptr %3, align 8, !tbaa !61
  %4 = load i32, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 8), align 8, !tbaa !96
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = getelementptr inbounds i8, ptr %1, i64 20
  %8 = getelementptr inbounds i8, ptr %1, i64 12
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %16, %9 ]
  %11 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %12 = getelementptr inbounds i8, ptr %11, i64 %10
  %13 = load i8, ptr %12, align 1, !tbaa !58
  %14 = zext i8 %13 to i32
  store i32 %14, ptr %7, align 4, !tbaa !76
  store i32 8, ptr %8, align 4, !tbaa !77
  %15 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  %16 = add nuw nsw i64 %10, 1
  %17 = load i32, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 8), align 8, !tbaa !96
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %0
  %21 = getelementptr inbounds i8, ptr %2, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !31
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %2, i64 8
  %26 = load i8, ptr %25, align 8, !tbaa !33
  %27 = shl i8 %26, 1
  %28 = or disjoint i8 %27, 1
  %29 = add nsw i32 %22, -1
  %30 = icmp eq i32 %29, 0
  %31 = zext i8 %28 to i32
  %32 = shl i32 %31, %29
  %33 = trunc i32 %32 to i8
  %34 = select i1 %30, i8 %28, i8 %33
  store i32 8, ptr %21, align 4, !tbaa !31
  %35 = getelementptr inbounds i8, ptr %2, i64 32
  %36 = load ptr, ptr %35, align 8, !tbaa !29
  %37 = load i32, ptr %2, align 8, !tbaa !32
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %2, align 8, !tbaa !32
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  store i8 %34, ptr %40, align 1, !tbaa !58
  store i8 0, ptr %25, align 8, !tbaa !33
  br label %41

41:                                               ; preds = %24, %20
  %42 = load i32, ptr %2, align 8, !tbaa !32
  store i32 %42, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 24), align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @CloseUser_data_unregistered() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  tail call void @free(ptr noundef %5) #19
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  tail call void @free(ptr noundef %6) #19
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiUser_data_unregistered, i64 16), align 8, !tbaa !47
  %8 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %8) #19
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitUser_data_registered_itu_t_t35() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %1, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.21) #19
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %8 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %7, ptr %8, align 8, !tbaa !29
  %9 = icmp eq ptr %7, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  store ptr %11, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  br label %19

12:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #19
  %13 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  %14 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  store ptr %14, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  tail call void @no_mem_exit(ptr noundef nonnull @.str.23) #19
  %17 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  %18 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %10, %16, %12
  %20 = phi ptr [ %18, %16 ], [ %14, %12 ], [ %11, %10 ]
  %21 = phi ptr [ %17, %16 ], [ %13, %12 ], [ %6, %10 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 32
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %23, i8 0, i64 65496, i1 false)
  %24 = getelementptr inbounds i8, ptr %21, i64 4
  store i32 8, ptr %24, align 4, !tbaa !31
  store i32 0, ptr %21, align 8, !tbaa !32
  %25 = getelementptr inbounds i8, ptr %21, i64 8
  store i8 0, ptr %25, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 32), align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %20, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 8), align 8, !tbaa !98
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 12), align 4, !tbaa !99
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 16), align 8, !tbaa !100
  store i32 1, ptr @seiHasUser_data_registered_itu_t_t35_info, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @ClearUser_data_registered_itu_t_t35() local_unnamed_addr #14 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  %2 = getelementptr inbounds i8, ptr %1, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %3, i8 0, i64 65496, i1 false)
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 8, ptr %4, align 4, !tbaa !31
  store i32 0, ptr %1, align 8, !tbaa !32
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 0, ptr %5, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 32), align 8, !tbaa !97
  %6 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %6, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 8), align 8, !tbaa !98
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 12), align 4, !tbaa !99
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 16), align 8, !tbaa !100
  store i32 1, ptr @seiHasUser_data_registered_itu_t_t35_info, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local void @UpdateUser_data_registered_itu_t_t35() local_unnamed_addr #4 {
  store i32 82, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 12), align 4, !tbaa !99
  %1 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  store i8 0, ptr %1, align 1, !tbaa !58
  %2 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %3 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 3, ptr %3, align 1, !tbaa !58
  %4 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %5 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 6, ptr %5, align 1, !tbaa !58
  %6 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %7 = getelementptr inbounds i8, ptr %6, i64 3
  store i8 9, ptr %7, align 1, !tbaa !58
  %8 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %9 = getelementptr inbounds i8, ptr %8, i64 4
  store i8 12, ptr %9, align 1, !tbaa !58
  %10 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %11 = getelementptr inbounds i8, ptr %10, i64 5
  store i8 15, ptr %11, align 1, !tbaa !58
  %12 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %13 = getelementptr inbounds i8, ptr %12, i64 6
  store i8 18, ptr %13, align 1, !tbaa !58
  store i32 7, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 8), align 8, !tbaa !98
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeUser_data_registered_itu_t_t35() local_unnamed_addr #0 {
  %1 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #19
  %2 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  store i32 0, ptr %1, align 8, !tbaa !59
  %3 = getelementptr inbounds i8, ptr %1, i64 32
  store ptr @ue_linfo, ptr %3, align 8, !tbaa !61
  %4 = load i32, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 12), align 4, !tbaa !99
  %5 = getelementptr inbounds i8, ptr %1, i64 20
  store i32 %4, ptr %5, align 4, !tbaa !76
  %6 = getelementptr inbounds i8, ptr %1, i64 12
  store i32 8, ptr %6, align 4, !tbaa !77
  %7 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  %8 = load i32, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 12), align 4, !tbaa !99
  %9 = icmp eq i32 %8, 255
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 16), align 8, !tbaa !100
  store i32 %11, ptr %5, align 4, !tbaa !76
  store i32 8, ptr %6, align 4, !tbaa !77
  %12 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 8), align 8, !tbaa !98
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13, %16
  %17 = phi i64 [ %23, %16 ], [ 0, %13 ]
  %18 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  %20 = load i8, ptr %19, align 1, !tbaa !58
  %21 = zext i8 %20 to i32
  store i32 %21, ptr %5, align 4, !tbaa !76
  store i32 8, ptr %6, align 4, !tbaa !77
  %22 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef nonnull %1, ptr noundef %2) #19
  %23 = add nuw nsw i64 %17, 1
  %24 = load i32, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 8), align 8, !tbaa !98
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %16, label %27

27:                                               ; preds = %16, %13
  %28 = getelementptr inbounds i8, ptr %2, i64 4
  %29 = load i32, ptr %28, align 4, !tbaa !31
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %2, i64 8
  %33 = load i8, ptr %32, align 8, !tbaa !33
  %34 = shl i8 %33, 1
  %35 = or disjoint i8 %34, 1
  %36 = add nsw i32 %29, -1
  %37 = icmp eq i32 %36, 0
  %38 = zext i8 %35 to i32
  %39 = shl i32 %38, %36
  %40 = trunc i32 %39 to i8
  %41 = select i1 %37, i8 %35, i8 %40
  store i32 8, ptr %28, align 4, !tbaa !31
  %42 = getelementptr inbounds i8, ptr %2, i64 32
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  %44 = load i32, ptr %2, align 8, !tbaa !32
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %2, align 8, !tbaa !32
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, ptr %43, i64 %46
  store i8 %41, ptr %47, align 1, !tbaa !58
  store i8 0, ptr %32, align 8, !tbaa !33
  br label %48

48:                                               ; preds = %31, %27
  %49 = load i32, ptr %2, align 8, !tbaa !32
  store i32 %49, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 32), align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @CloseUser_data_registered_itu_t_t35() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  tail call void @free(ptr noundef %5) #19
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  tail call void @free(ptr noundef %6) #19
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiUser_data_registered_itu_t_t35, i64 24), align 8, !tbaa !50
  %8 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %8) #19
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitRandomAccess() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  store ptr %1, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.24) #19
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #18
  %8 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %7, ptr %8, align 8, !tbaa !29
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.25) #19
  %11 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  %12 = getelementptr inbounds i8, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %13, %10 ], [ %7, %5 ]
  %16 = phi ptr [ %11, %10 ], [ %6, %5 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %15, i8 0, i64 65496, i1 false)
  %17 = getelementptr inbounds i8, ptr %16, i64 4
  store i32 8, ptr %17, align 4, !tbaa !31
  store i32 0, ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds i8, ptr %16, i64 8
  store i8 0, ptr %18, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 16), align 8, !tbaa !39
  store i32 0, ptr @seiRecoveryPoint, align 8, !tbaa !40
  store i8 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 5), align 1, !tbaa !41
  store i8 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 4), align 4, !tbaa !42
  store i32 0, ptr @seiHasRecoveryPoint_info, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @ClearRandomAccess() local_unnamed_addr #14 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  %2 = getelementptr inbounds i8, ptr %1, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %3, i8 0, i64 65496, i1 false)
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 8, ptr %4, align 4, !tbaa !31
  store i32 0, ptr %1, align 8, !tbaa !32
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 0, ptr %5, align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 16), align 8, !tbaa !39
  store i32 0, ptr @seiRecoveryPoint, align 8, !tbaa !40
  store i8 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 5), align 1, !tbaa !41
  store i8 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 4), align 4, !tbaa !42
  store i32 0, ptr @seiHasRecoveryPoint_info, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @UpdateRandomAccess() local_unnamed_addr #13 {
  %1 = load ptr, ptr @img, align 8, !tbaa !17
  %2 = getelementptr inbounds i8, ptr %1, i64 24
  %3 = load i32, ptr %2, align 8, !tbaa !53
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, ptr @seiRecoveryPoint, align 8, !tbaa !40
  store i8 1, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 4), align 4, !tbaa !42
  store i8 0, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 5), align 1, !tbaa !41
  br label %6

6:                                                ; preds = %0, %5
  %7 = phi i32 [ 1, %5 ], [ 0, %0 ]
  store i32 %7, ptr @seiHasRecoveryPoint_info, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeRandomAccess() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  %2 = load i32, ptr @seiRecoveryPoint, align 8, !tbaa !40
  %3 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.26, i32 noundef signext %2, ptr noundef %1) #19
  %4 = load i8, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 4), align 4, !tbaa !42
  %5 = zext i8 %4 to i32
  %6 = tail call signext i32 @u_1(ptr noundef nonnull @.str.27, i32 noundef signext %5, ptr noundef %1) #19
  %7 = load i8, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 5), align 1, !tbaa !41
  %8 = zext i8 %7 to i32
  %9 = tail call signext i32 @u_1(ptr noundef nonnull @.str.28, i32 noundef signext %8, ptr noundef %1) #19
  %10 = load i8, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 6), align 2, !tbaa !101
  %11 = zext i8 %10 to i32
  %12 = tail call signext i32 @u_v(i32 noundef signext 2, ptr noundef nonnull @.str.29, i32 noundef signext %11, ptr noundef %1) #19
  %13 = getelementptr inbounds i8, ptr %1, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !31
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %33, label %16

16:                                               ; preds = %0
  %17 = getelementptr inbounds i8, ptr %1, i64 8
  %18 = load i8, ptr %17, align 8, !tbaa !33
  %19 = shl i8 %18, 1
  %20 = or disjoint i8 %19, 1
  %21 = add nsw i32 %14, -1
  %22 = icmp eq i32 %21, 0
  %23 = zext i8 %20 to i32
  %24 = shl i32 %23, %21
  %25 = trunc i32 %24 to i8
  %26 = select i1 %22, i8 %20, i8 %25
  store i32 8, ptr %13, align 4, !tbaa !31
  %27 = getelementptr inbounds i8, ptr %1, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !29
  %29 = load i32, ptr %1, align 8, !tbaa !32
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %1, align 8, !tbaa !32
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  store i8 %26, ptr %32, align 1, !tbaa !58
  store i8 0, ptr %17, align 8, !tbaa !33
  br label %33

33:                                               ; preds = %16, %0
  %34 = load i32, ptr %1, align 8, !tbaa !32
  store i32 %34, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 16), align 8, !tbaa !39
  ret void
}

declare dso_local signext i32 @ue_v(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @u_1(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @u_v(i32 noundef signext, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn
define dso_local void @CloseRandomAccess() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  tail call void @free(ptr noundef %5) #19
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  tail call void @free(ptr noundef %6) #19
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (i8, ptr @seiRecoveryPoint, i64 8), align 8, !tbaa !37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !11, i64 16}
!7 = !{!"", !8, i64 0, !8, i64 4, !9, i64 8, !11, i64 16}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !9, i64 8}
!13 = !{!7, !8, i64 4}
!14 = !{!7, !8, i64 0}
!15 = !{!16, !11, i64 16}
!16 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16}
!17 = !{!11, !11, i64 0}
!18 = !{!19, !8, i64 3584}
!19 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !9, i64 84, !9, i64 148, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !9, i64 228, !9, i64 428, !9, i64 628, !9, i64 828, !9, i64 1028, !8, i64 1228, !8, i64 1232, !8, i64 1236, !8, i64 1240, !8, i64 1244, !8, i64 1248, !8, i64 1252, !8, i64 1256, !8, i64 1260, !8, i64 1264, !8, i64 1268, !8, i64 1272, !8, i64 1276, !8, i64 1280, !8, i64 1284, !8, i64 1288, !8, i64 1292, !8, i64 1296, !8, i64 1300, !9, i64 1304, !9, i64 1504, !9, i64 1704, !8, i64 1904, !8, i64 1908, !8, i64 1912, !8, i64 1916, !8, i64 1920, !8, i64 1924, !8, i64 1928, !8, i64 1932, !8, i64 1936, !8, i64 1940, !8, i64 1944, !8, i64 1948, !9, i64 1952, !8, i64 2976, !8, i64 2980, !8, i64 2984, !8, i64 2988, !8, i64 2992, !8, i64 2996, !8, i64 3000, !8, i64 3004, !8, i64 3008, !8, i64 3012, !8, i64 3016, !8, i64 3020, !8, i64 3024, !8, i64 3028, !8, i64 3032, !8, i64 3036, !8, i64 3040, !8, i64 3044, !8, i64 3048, !8, i64 3052, !20, i64 3056, !8, i64 3064, !8, i64 3068, !8, i64 3072, !8, i64 3076, !8, i64 3080, !8, i64 3084, !8, i64 3088, !8, i64 3092, !8, i64 3096, !8, i64 3100, !8, i64 3104, !8, i64 3108, !8, i64 3112, !8, i64 3116, !8, i64 3120, !8, i64 3124, !8, i64 3128, !8, i64 3132, !8, i64 3136, !8, i64 3140, !8, i64 3144, !8, i64 3148, !9, i64 3152, !9, i64 3352, !8, i64 3552, !8, i64 3556, !8, i64 3560, !8, i64 3564, !8, i64 3568, !8, i64 3572, !8, i64 3576, !8, i64 3580, !8, i64 3584, !8, i64 3588, !8, i64 3592, !8, i64 3596, !8, i64 3600, !8, i64 3604, !8, i64 3608, !8, i64 3612, !8, i64 3616, !8, i64 3620, !9, i64 3624, !8, i64 3824, !8, i64 3828, !11, i64 3832, !11, i64 3840, !11, i64 3848, !11, i64 3856, !8, i64 3864, !8, i64 3868, !8, i64 3872, !8, i64 3876, !8, i64 3880, !8, i64 3884, !8, i64 3888, !8, i64 3892, !8, i64 3896, !8, i64 3900, !8, i64 3904, !8, i64 3908, !8, i64 3912, !8, i64 3916, !8, i64 3920, !8, i64 3924, !8, i64 3928, !9, i64 3932, !8, i64 3964, !8, i64 3968, !8, i64 3972, !8, i64 3976, !8, i64 3980, !8, i64 3984, !8, i64 3988, !8, i64 3992, !8, i64 3996, !8, i64 4000, !8, i64 4004, !9, i64 4008, !9, i64 4056, !8, i64 4256, !8, i64 4260, !8, i64 4264, !8, i64 4268, !9, i64 4272, !8, i64 4312, !8, i64 4316, !8, i64 4320, !8, i64 4324}
!20 = !{!"double", !9, i64 0}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !8, i64 16}
!23 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 16, !8, i64 20}
!24 = !{!25, !8, i64 0}
!25 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !8, i64 24}
!26 = !{!25, !8, i64 4}
!27 = !{!25, !8, i64 8}
!28 = !{!25, !11, i64 16}
!29 = !{!30, !11, i64 32}
!30 = !{!"", !8, i64 0, !8, i64 4, !9, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !9, i64 21, !8, i64 24, !8, i64 28, !11, i64 32, !8, i64 40}
!31 = !{!30, !8, i64 4}
!32 = !{!30, !8, i64 0}
!33 = !{!30, !9, i64 8}
!34 = !{!35, !11, i64 24}
!35 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !11, i64 24, !8, i64 32}
!36 = !{!35, !8, i64 32}
!37 = !{!38, !11, i64 8}
!38 = !{!"", !8, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !11, i64 8, !8, i64 16}
!39 = !{!38, !8, i64 16}
!40 = !{!38, !8, i64 0}
!41 = !{!38, !9, i64 5}
!42 = !{!38, !9, i64 4}
!43 = !{!44, !11, i64 72}
!44 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !9, i64 32, !9, i64 52, !11, i64 72, !8, i64 80}
!45 = !{!16, !8, i64 4}
!46 = !{!16, !8, i64 0}
!47 = !{!48, !11, i64 16}
!48 = !{!"", !11, i64 0, !8, i64 8, !11, i64 16, !8, i64 24}
!49 = !{!48, !11, i64 0}
!50 = !{!51, !11, i64 24}
!51 = !{!"", !11, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !11, i64 24, !8, i64 32}
!52 = !{!51, !11, i64 0}
!53 = !{!54, !8, i64 24}
!54 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !55, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !11, i64 104, !11, i64 112, !8, i64 120, !11, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !9, i64 184, !9, i64 4792, !9, i64 7352, !9, i64 8504, !9, i64 12600, !9, i64 13112, !11, i64 14136, !11, i64 14144, !9, i64 14152, !9, i64 18248, !9, i64 21320, !9, i64 29512, !11, i64 31560, !11, i64 31568, !11, i64 31576, !9, i64 31584, !11, i64 89184, !11, i64 89192, !8, i64 89200, !8, i64 89204, !8, i64 89208, !8, i64 89212, !9, i64 89216, !8, i64 89280, !8, i64 89284, !8, i64 89288, !8, i64 89292, !8, i64 89296, !20, i64 89304, !8, i64 89312, !8, i64 89316, !8, i64 89320, !8, i64 89324, !11, i64 89328, !11, i64 89336, !11, i64 89344, !11, i64 89352, !9, i64 89360, !8, i64 89392, !8, i64 89396, !8, i64 89400, !8, i64 89404, !8, i64 89408, !8, i64 89412, !8, i64 89416, !8, i64 89420, !9, i64 89424, !8, i64 90192, !8, i64 90196, !8, i64 90200, !8, i64 90204, !8, i64 90208, !8, i64 90212, !8, i64 90216, !8, i64 90220, !8, i64 90224, !8, i64 90228, !8, i64 90232, !8, i64 90236, !8, i64 90240, !9, i64 90244, !8, i64 90248, !8, i64 90252, !9, i64 90256, !8, i64 90264, !8, i64 90268, !8, i64 90272, !8, i64 90276, !8, i64 90280, !8, i64 90284, !8, i64 90288, !8, i64 90292, !8, i64 90296, !8, i64 90300, !8, i64 90304, !8, i64 90308, !8, i64 90312, !8, i64 90316, !8, i64 90320, !8, i64 90324, !8, i64 90328, !11, i64 90336, !8, i64 90344, !8, i64 90348, !8, i64 90352, !8, i64 90356, !8, i64 90360, !20, i64 90368, !8, i64 90376, !8, i64 90380, !8, i64 90384, !8, i64 90388, !8, i64 90392, !8, i64 90396, !8, i64 90400, !11, i64 90408, !8, i64 90416, !8, i64 90420, !8, i64 90424, !8, i64 90428, !8, i64 90432, !8, i64 90436, !8, i64 90440, !8, i64 90444, !8, i64 90448, !8, i64 90452, !8, i64 90456, !8, i64 90460, !8, i64 90464, !8, i64 90468, !8, i64 90472, !8, i64 90476, !8, i64 90480, !8, i64 90484, !8, i64 90488, !8, i64 90492, !8, i64 90496, !8, i64 90500, !11, i64 90504, !11, i64 90512, !11, i64 90520, !8, i64 90528, !8, i64 90532, !8, i64 90536, !8, i64 90540, !8, i64 90544, !8, i64 90548, !8, i64 90552, !8, i64 90556, !8, i64 90560, !9, i64 90564, !8, i64 90572, !8, i64 90576, !8, i64 90580, !56, i64 90584, !8, i64 90588, !8, i64 90592}
!55 = !{!"float", !9, i64 0}
!56 = !{!"short", !9, i64 0}
!57 = !{!54, !8, i64 0}
!58 = !{!9, !9, i64 0}
!59 = !{!60, !8, i64 0}
!60 = !{!"syntaxelement", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !11, i64 32, !11, i64 40}
!61 = !{!60, !11, i64 32}
!62 = !{!60, !8, i64 4}
!63 = !{!54, !8, i64 60}
!64 = !{!54, !8, i64 52}
!65 = !{!16, !8, i64 8}
!66 = !{!67, !8, i64 0}
!67 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !11, i64 24}
!68 = !{!56, !56, i64 0}
!69 = !{!67, !8, i64 4}
!70 = !{!67, !8, i64 8}
!71 = !{!67, !8, i64 12}
!72 = !{!67, !8, i64 16}
!73 = !{!67, !11, i64 24}
!74 = !{!19, !8, i64 8}
!75 = !{!19, !8, i64 1244}
!76 = !{!60, !8, i64 20}
!77 = !{!60, !8, i64 12}
!78 = !{!23, !8, i64 20}
!79 = !{!44, !8, i64 80}
!80 = !{!54, !8, i64 90200}
!81 = !{!44, !8, i64 0}
!82 = !{!44, !8, i64 4}
!83 = !{!44, !8, i64 8}
!84 = !{!44, !8, i64 16}
!85 = !{!44, !8, i64 28}
!86 = !{!44, !8, i64 20}
!87 = !{!44, !8, i64 24}
!88 = !{!44, !8, i64 12}
!89 = !{!25, !8, i64 24}
!90 = !{!35, !8, i64 0}
!91 = !{!35, !8, i64 4}
!92 = !{!35, !8, i64 8}
!93 = !{!35, !8, i64 12}
!94 = !{!35, !8, i64 16}
!95 = !{!48, !8, i64 24}
!96 = !{!48, !8, i64 8}
!97 = !{!51, !8, i64 32}
!98 = !{!51, !8, i64 8}
!99 = !{!51, !8, i64 12}
!100 = !{!51, !8, i64 16}
!101 = !{!38, !9, i64 6}
