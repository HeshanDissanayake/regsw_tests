; ModuleID = 'src/cabac.c'
source_filename = "src/cabac.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BiContextType = type { i16, i8, i64 }

@last_dquant = dso_local local_unnamed_addr global i32 0, align 4
@img = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"create_contexts_MotionInfo: enco_ctx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"create_contexts_TextureInfo: enco_ctx\00", align 1
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@giRDOpt_B8OnlyFlag = external dso_local local_unnamed_addr global i32, align 4
@type2ctx_bcbp = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 4
@maxpos = internal unnamed_addr constant [10 x i32] [i32 16, i32 15, i32 64, i32 32, i32 32, i32 16, i32 4, i32 15, i32 8, i32 16], align 4
@type2ctx_last = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 6], align 4
@pos2ctx_map = internal unnamed_addr constant [10 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c], align 8
@pos2ctx_last = internal unnamed_addr constant [10 x ptr] [ptr @pos2ctx_last4x4, ptr @pos2ctx_last4x4, ptr @pos2ctx_last8x8, ptr @pos2ctx_last8x4, ptr @pos2ctx_last8x4, ptr @pos2ctx_last4x4, ptr @pos2ctx_last4x4, ptr @pos2ctx_last4x4, ptr @pos2ctx_last2x4c, ptr @pos2ctx_last4x4c], align 8
@pos2ctx_map_int = internal unnamed_addr constant [10 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x8i, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c], align 8
@max_c2 = internal unnamed_addr constant [10 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 4, i32 3, i32 3], align 4
@type2ctx_abs = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 4
@writeRunLevel_CABAC.coeff = internal global [64 x i32] zeroinitializer, align 4
@writeRunLevel_CABAC.coeff_ctr = internal unnamed_addr global i32 0, align 4
@writeRunLevel_CABAC.pos = internal unnamed_addr global i32 0, align 4
@pos2ctx_map4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 14], align 4
@pos2ctx_map8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 5, i32 4, i32 4, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 6, i32 7, i32 7, i32 7, i32 8, i32 9, i32 10, i32 9, i32 8, i32 7, i32 7, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 7, i32 8, i32 9, i32 14, i32 10, i32 9, i32 8, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 9, i32 14, i32 10, i32 9, i32 11, i32 12, i32 13, i32 11, i32 14, i32 10, i32 12, i32 14], align 4
@pos2ctx_map8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 12, i32 8, i32 9, i32 10, i32 11, i32 9, i32 13, i32 13, i32 14, i32 14], align 4
@pos2ctx_map2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@pos2ctx_map4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@pos2ctx_last4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4
@pos2ctx_last8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8], align 4
@pos2ctx_last8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8], align 4
@pos2ctx_last2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@pos2ctx_last4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@pos2ctx_map8x8i = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 8, i32 4, i32 5, i32 6, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14], align 4
@pos2ctx_map8x4i = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 7, i32 6, i32 8, i32 9, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 12, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 14], align 4
@pos2ctx_map4x8i = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 2, i32 7, i32 7, i32 8, i32 8, i32 8, i32 5, i32 6, i32 9, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], align 4
@str = private unnamed_addr constant [47 x i8] c"Unsupported MB-MODE in writeMB_typeInfo_CABAC!\00", align 1
@switch.table.write_and_store_CBP_block_bit = private unnamed_addr constant [3 x i32] [i32 51, i32 3, i32 17], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @cabac_new_slice() local_unnamed_addr #0 {
  store i32 0, ptr @last_dquant, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind
define dso_local void @CheckAvailabilityOfNeighborsCABAC() local_unnamed_addr #1 {
  %1 = alloca %struct.pix_pos, align 4
  %2 = alloca %struct.pix_pos, align 4
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 31576
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = getelementptr inbounds i8, ptr %3, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !17
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.macroblock, ptr %5, i64 %8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @getNeighbour(i32 noundef signext %7, i32 noundef signext -1, i32 noundef signext 0, i32 noundef signext 1, ptr noundef nonnull %2) #11
  %10 = load ptr, ptr @img, align 8, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %10, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !17
  call void @getNeighbour(i32 noundef signext %12, i32 noundef signext 0, i32 noundef signext -1, i32 noundef signext 1, ptr noundef nonnull %1) #11
  %13 = load i32, ptr %1, align 4, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %0
  %16 = load ptr, ptr @img, align 8, !tbaa !10
  %17 = getelementptr inbounds i8, ptr %16, i64 31576
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = getelementptr inbounds i8, ptr %1, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !20
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %21
  br label %23

23:                                               ; preds = %0, %15
  %24 = phi ptr [ %22, %15 ], [ null, %0 ]
  %25 = getelementptr inbounds i8, ptr %9, i64 56
  store ptr %24, ptr %25, align 8
  %26 = load i32, ptr %2, align 4, !tbaa !18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @img, align 8, !tbaa !10
  %30 = getelementptr inbounds i8, ptr %29, i64 31576
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = getelementptr inbounds i8, ptr %2, i64 4
  %33 = load i32, ptr %32, align 4, !tbaa !20
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.macroblock, ptr %31, i64 %34
  br label %36

36:                                               ; preds = %23, %28
  %37 = phi ptr [ %35, %28 ], [ null, %23 ]
  %38 = getelementptr inbounds i8, ptr %9, i64 64
  store ptr %37, ptr %38, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare dso_local void @getNeighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local noalias noundef ptr @create_contexts_MotionInfo() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(1504) ptr @calloc(i64 noundef 1, i64 noundef 1504) #12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #11
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local noalias noundef ptr @create_contexts_TextureInfo() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(12128) ptr @calloc(i64 noundef 1, i64 noundef 12128) #12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #11
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @delete_contexts_MotionInfo(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %0) #11
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @delete_contexts_TextureInfo(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %0) #11
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_CABAC(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = tail call signext i32 @arienco_bits_written(ptr noundef nonnull %3) #11
  %5 = getelementptr inbounds i8, ptr %0, i64 40
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  tail call void %6(ptr noundef %0, ptr noundef nonnull %3) #11
  %7 = load i32, ptr %0, align 8, !tbaa !23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !24
  %11 = getelementptr inbounds i8, ptr %10, i64 40
  store i32 1, ptr %11, align 8, !tbaa !27
  br label %12

12:                                               ; preds = %9, %2
  %13 = tail call signext i32 @arienco_bits_written(ptr noundef nonnull %3) #11
  %14 = sub nsw i32 %13, %4
  %15 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %14, ptr %15, align 4, !tbaa !29
  ret i32 %14
}

declare dso_local signext i32 @arienco_bits_written(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @writeFieldModeInfo_CABAC(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 31568
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds i8, ptr %5, i64 32
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = getelementptr inbounds i8, ptr %3, i64 31576
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, ptr %3, i64 12
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %12
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !33
  %16 = getelementptr inbounds i8, ptr %13, i64 448
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds i8, ptr %13, i64 432
  %21 = load i32, ptr %20, align 8, !tbaa !37
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %22, i32 19
  %24 = load i32, ptr %23, align 8, !tbaa !38
  br label %25

25:                                               ; preds = %2, %19
  %26 = phi i32 [ %24, %19 ], [ 0, %2 ]
  %27 = getelementptr inbounds i8, ptr %13, i64 452
  %28 = load i32, ptr %27, align 4, !tbaa !39
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, ptr %13, i64 436
  %32 = load i32, ptr %31, align 4, !tbaa !40
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %33, i32 19
  %35 = load i32, ptr %34, align 8, !tbaa !38
  br label %36

36:                                               ; preds = %25, %30
  %37 = phi i32 [ %35, %30 ], [ 0, %25 ]
  %38 = add nsw i32 %37, %26
  %39 = icmp ne i32 %15, 0
  %40 = zext i1 %39 to i16
  %41 = getelementptr inbounds i8, ptr %7, i64 1392
  %42 = sext i32 %38 to i64
  %43 = getelementptr inbounds [4 x %struct.BiContextType], ptr %41, i64 0, i64 %42
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %40, ptr noundef nonnull %43) #11
  %44 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %38, ptr %44, align 8, !tbaa !41
  ret void
}

declare dso_local void @biari_encode_symbol(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @writeMB_skip_flagInfo_CABAC(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds i8, ptr %3, i64 31568
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds i8, ptr %8, i64 32
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = getelementptr inbounds i8, ptr %3, i64 31576
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = getelementptr inbounds i8, ptr %3, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %15
  %17 = getelementptr inbounds i8, ptr %0, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !33
  %19 = getelementptr inbounds i8, ptr %16, i64 56
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %6, label %22, label %58

22:                                               ; preds = %2
  br i1 %21, label %28, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, ptr %20, i64 520
  %25 = load i32, ptr %24, align 8, !tbaa !44
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %22, %23
  %29 = phi i32 [ %27, %23 ], [ 0, %22 ]
  %30 = getelementptr inbounds i8, ptr %16, i64 64
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds i8, ptr %31, i64 520
  %35 = load i32, ptr %34, align 8, !tbaa !44
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 8, i32 7
  br label %38

38:                                               ; preds = %28, %33
  %39 = phi i32 [ %37, %33 ], [ 7, %28 ]
  %40 = add nuw nsw i32 %39, %29
  %41 = icmp eq i32 %18, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %0, i64 8
  %44 = load i32, ptr %43, align 8, !tbaa !46
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %42, %46
  %48 = phi i16 [ 0, %46 ], [ 1, %42 ]
  %49 = getelementptr inbounds i8, ptr %10, i64 352
  %50 = zext nneg i32 %40 to i64
  %51 = getelementptr inbounds [11 x %struct.BiContextType], ptr %49, i64 0, i64 %50
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %48, ptr noundef nonnull %51) #11
  %52 = load i32, ptr %17, align 4, !tbaa !33
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %47
  %55 = getelementptr inbounds i8, ptr %0, i64 8
  %56 = load i32, ptr %55, align 8, !tbaa !46
  %57 = icmp eq i32 %56, 0
  br label %82

58:                                               ; preds = %2
  br i1 %21, label %64, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds i8, ptr %20, i64 520
  %61 = load i32, ptr %60, align 8, !tbaa !44
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  br label %64

64:                                               ; preds = %58, %59
  %65 = phi i32 [ %63, %59 ], [ 0, %58 ]
  %66 = getelementptr inbounds i8, ptr %16, i64 64
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds i8, ptr %67, i64 520
  %71 = load i32, ptr %70, align 8, !tbaa !44
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  br label %74

74:                                               ; preds = %64, %69
  %75 = phi i32 [ %73, %69 ], [ 0, %64 ]
  %76 = add nuw nsw i32 %75, %65
  %77 = icmp eq i32 %18, 0
  %78 = getelementptr inbounds i8, ptr %10, i64 176
  %79 = zext nneg i32 %76 to i64
  %80 = getelementptr inbounds [11 x %struct.BiContextType], ptr %78, i64 0, i64 %79
  %81 = zext i1 %77 to i16
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %81, ptr noundef nonnull %80) #11
  br label %82

82:                                               ; preds = %47, %54, %74
  %83 = phi i1 [ %77, %74 ], [ false, %47 ], [ %57, %54 ]
  %84 = phi i32 [ %76, %74 ], [ %40, %47 ], [ %40, %54 ]
  %85 = zext i1 %83 to i32
  %86 = getelementptr inbounds i8, ptr %16, i64 520
  store i32 %85, ptr %86, align 8, !tbaa !44
  %87 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %84, ptr %87, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeMB_transform_size_CABAC(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 31568
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds i8, ptr %5, i64 32
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = getelementptr inbounds i8, ptr %3, i64 31576
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, ptr %3, i64 12
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %12
  %14 = getelementptr inbounds i8, ptr %13, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, ptr %15, i64 468
  %19 = load i32, ptr %18, align 4, !tbaa !47
  br label %20

20:                                               ; preds = %2, %17
  %21 = phi i32 [ %19, %17 ], [ 0, %2 ]
  %22 = getelementptr inbounds i8, ptr %13, i64 64
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %23, i64 468
  %27 = load i32, ptr %26, align 4, !tbaa !47
  br label %28

28:                                               ; preds = %20, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %20 ]
  %30 = add nsw i32 %29, %21
  %31 = getelementptr inbounds i8, ptr %13, i64 468
  %32 = load i32, ptr %31, align 4, !tbaa !47
  %33 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %30, ptr %33, align 8, !tbaa !41
  %34 = icmp ne i32 %32, 0
  %35 = zext i1 %34 to i16
  %36 = getelementptr inbounds i8, ptr %7, i64 1456
  %37 = sext i32 %30 to i64
  %38 = getelementptr inbounds %struct.BiContextType, ptr %36, i64 %37
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %35, ptr noundef nonnull %38) #11
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeMB_typeInfo_CABAC(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds i8, ptr %3, i64 31568
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds i8, ptr %7, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = getelementptr inbounds i8, ptr %3, i64 31576
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = getelementptr inbounds i8, ptr %3, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.macroblock, ptr %11, i64 %14
  %16 = getelementptr inbounds i8, ptr %0, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !33
  switch i32 %5, label %89 [
    i32 2, label %18
    i32 1, label %70
  ]

18:                                               ; preds = %2
  %19 = getelementptr inbounds i8, ptr %15, i64 56
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %20, i64 72
  %24 = load i32, ptr %23, align 8, !tbaa !48
  %25 = and i32 %24, -5
  %26 = icmp ne i32 %25, 9
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %18, %22
  %29 = phi i32 [ %27, %22 ], [ 0, %18 ]
  %30 = getelementptr inbounds i8, ptr %15, i64 64
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds i8, ptr %31, i64 72
  %35 = load i32, ptr %34, align 8, !tbaa !48
  %36 = and i32 %35, -5
  %37 = icmp ne i32 %36, 9
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %28, %33
  %40 = phi i32 [ %38, %33 ], [ 0, %28 ]
  %41 = add nuw nsw i32 %40, %29
  %42 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %41, ptr %42, align 8, !tbaa !41
  %43 = zext nneg i32 %41 to i64
  %44 = getelementptr inbounds %struct.BiContextType, ptr %9, i64 %43
  switch i32 %17, label %47 [
    i32 0, label %45
    i32 25, label %46
  ]

45:                                               ; preds = %39
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef %44) #11
  br label %217

46:                                               ; preds = %39
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef %44) #11
  tail call void @biari_encode_symbol_final(ptr noundef %1, i16 noundef signext 1) #11
  br label %217

47:                                               ; preds = %39
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef %44) #11
  tail call void @biari_encode_symbol_final(ptr noundef %1, i16 noundef signext 0) #11
  %48 = add nsw i32 %17, -1
  %49 = sdiv i32 %48, 12
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds i8, ptr %9, i64 64
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %50, ptr noundef nonnull %51) #11
  %52 = mul i32 %49, 12
  %53 = sub i32 %48, %52
  %54 = add nsw i32 %53, 3
  %55 = icmp ult i32 %54, 7
  %56 = getelementptr inbounds i8, ptr %9, i64 80
  br i1 %55, label %57, label %58

57:                                               ; preds = %47
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %56) #11
  br label %63

58:                                               ; preds = %47
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %56) #11
  %59 = and i32 %53, -4
  %60 = icmp ne i32 %59, 4
  %61 = zext i1 %60 to i16
  %62 = getelementptr inbounds i8, ptr %9, i64 96
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %61, ptr noundef nonnull %62) #11
  br label %63

63:                                               ; preds = %58, %57
  %64 = trunc nsw i32 %53 to i16
  %65 = lshr i16 %64, 1
  %66 = and i16 %65, 1
  %67 = getelementptr inbounds i8, ptr %9, i64 112
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %66, ptr noundef nonnull %67) #11
  %68 = and i16 %64, 1
  %69 = getelementptr inbounds i8, ptr %9, i64 128
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %68, ptr noundef nonnull %69) #11
  br label %217

70:                                               ; preds = %2
  %71 = getelementptr inbounds i8, ptr %15, i64 56
  %72 = load ptr, ptr %71, align 8, !tbaa !43
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds i8, ptr %72, i64 72
  %76 = load i32, ptr %75, align 8, !tbaa !48
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  br label %79

79:                                               ; preds = %70, %74
  %80 = phi i32 [ %78, %74 ], [ 0, %70 ]
  %81 = getelementptr inbounds i8, ptr %15, i64 64
  %82 = load ptr, ptr %81, align 8, !tbaa !45
  %83 = icmp eq ptr %82, null
  br i1 %83, label %118, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds i8, ptr %82, i64 72
  %86 = load i32, ptr %85, align 8, !tbaa !48
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  br label %118

89:                                               ; preds = %2
  %90 = tail call i32 @llvm.smin.i32(i32 %17, i32 7)
  switch i32 %90, label %116 [
    i32 0, label %217
    i32 1, label %91
    i32 2, label %95
    i32 3, label %99
    i32 4, label %103
    i32 5, label %103
    i32 6, label %107
    i32 7, label %110
  ]

91:                                               ; preds = %89
  %92 = getelementptr inbounds i8, ptr %9, i64 240
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %92) #11
  %93 = getelementptr inbounds i8, ptr %9, i64 256
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %93) #11
  %94 = getelementptr inbounds i8, ptr %9, i64 272
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %94) #11
  br label %217

95:                                               ; preds = %89
  %96 = getelementptr inbounds i8, ptr %9, i64 240
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %96) #11
  %97 = getelementptr inbounds i8, ptr %9, i64 256
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %97) #11
  %98 = getelementptr inbounds i8, ptr %9, i64 288
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %98) #11
  br label %217

99:                                               ; preds = %89
  %100 = getelementptr inbounds i8, ptr %9, i64 240
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %100) #11
  %101 = getelementptr inbounds i8, ptr %9, i64 256
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %101) #11
  %102 = getelementptr inbounds i8, ptr %9, i64 288
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %102) #11
  br label %217

103:                                              ; preds = %89, %89
  %104 = getelementptr inbounds i8, ptr %9, i64 240
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %104) #11
  %105 = getelementptr inbounds i8, ptr %9, i64 256
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %105) #11
  %106 = getelementptr inbounds i8, ptr %9, i64 272
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %106) #11
  br label %217

107:                                              ; preds = %89
  %108 = getelementptr inbounds i8, ptr %9, i64 240
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %108) #11
  %109 = getelementptr inbounds i8, ptr %9, i64 288
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %109) #11
  br label %217

110:                                              ; preds = %89
  %111 = icmp slt i32 %17, 7
  %112 = add nsw i32 %17, -7
  %113 = select i1 %111, i32 0, i32 %112
  %114 = getelementptr inbounds i8, ptr %9, i64 240
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %114) #11
  %115 = getelementptr inbounds i8, ptr %9, i64 288
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %115) #11
  br label %189

116:                                              ; preds = %89
  %117 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef signext 1) #13
  unreachable

118:                                              ; preds = %84, %79
  %119 = phi i32 [ %88, %84 ], [ 0, %79 ]
  %120 = add nuw nsw i32 %119, %80
  %121 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %120, ptr %121, align 8, !tbaa !41
  %122 = icmp slt i32 %17, 24
  %123 = add nsw i32 %17, -24
  %124 = select i1 %122, i32 0, i32 %123
  %125 = tail call i32 @llvm.smin.i32(i32 %17, i32 24)
  %126 = icmp eq i32 %17, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %118
  %128 = getelementptr inbounds i8, ptr %9, i64 352
  %129 = zext nneg i32 %120 to i64
  %130 = getelementptr inbounds [11 x %struct.BiContextType], ptr %128, i64 0, i64 %129
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %130) #11
  br label %217

131:                                              ; preds = %118
  %132 = icmp slt i32 %17, 3
  br i1 %132, label %133, label %141

133:                                              ; preds = %131
  %134 = getelementptr inbounds i8, ptr %9, i64 352
  %135 = zext nneg i32 %120 to i64
  %136 = getelementptr inbounds [11 x %struct.BiContextType], ptr %134, i64 0, i64 %135
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %136) #11
  %137 = getelementptr inbounds i8, ptr %9, i64 416
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %137) #11
  %138 = icmp ne i32 %17, 1
  %139 = zext i1 %138 to i16
  %140 = getelementptr inbounds i8, ptr %9, i64 448
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %139, ptr noundef nonnull %140) #11
  br label %217

141:                                              ; preds = %131
  %142 = icmp ult i32 %17, 11
  br i1 %142, label %143, label %156

143:                                              ; preds = %141
  %144 = getelementptr inbounds i8, ptr %9, i64 352
  %145 = zext nneg i32 %120 to i64
  %146 = getelementptr inbounds [11 x %struct.BiContextType], ptr %144, i64 0, i64 %145
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %146) #11
  %147 = getelementptr inbounds i8, ptr %9, i64 416
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %147) #11
  %148 = getelementptr inbounds i8, ptr %9, i64 432
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %148) #11
  %149 = trunc nuw i32 %125 to i16
  %150 = add nsw i16 %149, -3
  %151 = lshr i16 %150, 2
  %152 = getelementptr inbounds i8, ptr %9, i64 448
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %151, ptr noundef nonnull %152) #11
  %153 = lshr i16 %150, 1
  %154 = and i16 %153, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %154, ptr noundef nonnull %152) #11
  %155 = and i16 %150, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %155, ptr noundef nonnull %152) #11
  br label %217

156:                                              ; preds = %141
  switch i32 %125, label %166 [
    i32 22, label %157
    i32 11, label %157
  ]

157:                                              ; preds = %156, %156
  %158 = getelementptr inbounds i8, ptr %9, i64 352
  %159 = zext nneg i32 %120 to i64
  %160 = getelementptr inbounds [11 x %struct.BiContextType], ptr %158, i64 0, i64 %159
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %160) #11
  %161 = getelementptr inbounds i8, ptr %9, i64 416
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %161) #11
  %162 = getelementptr inbounds i8, ptr %9, i64 432
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %162) #11
  %163 = getelementptr inbounds i8, ptr %9, i64 448
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %163) #11
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %163) #11
  %164 = icmp ne i32 %17, 11
  %165 = zext i1 %164 to i16
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %165, ptr noundef nonnull %163) #11
  br label %217

166:                                              ; preds = %156
  %167 = icmp ugt i32 %17, 22
  %168 = sext i1 %167 to i32
  %169 = add nsw i32 %125, %168
  %170 = getelementptr inbounds i8, ptr %9, i64 352
  %171 = zext nneg i32 %120 to i64
  %172 = getelementptr inbounds [11 x %struct.BiContextType], ptr %170, i64 0, i64 %171
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %172) #11
  %173 = getelementptr inbounds i8, ptr %9, i64 416
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %173) #11
  %174 = getelementptr inbounds i8, ptr %9, i64 432
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %174) #11
  %175 = trunc i32 %169 to i16
  %176 = add nsw i16 %175, -12
  %177 = lshr i16 %176, 3
  %178 = and i16 %177, 1
  %179 = getelementptr inbounds i8, ptr %9, i64 448
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %178, ptr noundef nonnull %179) #11
  %180 = lshr i16 %176, 2
  %181 = and i16 %180, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %181, ptr noundef nonnull %179) #11
  %182 = lshr i16 %175, 1
  %183 = and i16 %182, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %183, ptr noundef nonnull %179) #11
  %184 = and i16 %175, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %184, ptr noundef nonnull %179) #11
  %185 = icmp ugt i32 %169, 21
  %186 = zext i1 %185 to i32
  %187 = add nuw nsw i32 %169, %186
  %188 = icmp eq i32 %187, 24
  br i1 %188, label %189, label %217

189:                                              ; preds = %110, %166
  %190 = phi i32 [ %113, %110 ], [ %124, %166 ]
  %191 = icmp eq i32 %190, 25
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  tail call void @biari_encode_symbol_final(ptr noundef %1, i16 noundef signext 1) #11
  br label %217

193:                                              ; preds = %189
  tail call void @biari_encode_symbol_final(ptr noundef %1, i16 noundef signext 0) #11
  %194 = freeze i32 %190
  %195 = sdiv i32 %194, 12
  %196 = trunc i32 %195 to i16
  %197 = getelementptr inbounds i8, ptr %9, i64 304
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %196, ptr noundef nonnull %197) #11
  %198 = mul i32 %195, 12
  %199 = sub i32 %194, %198
  %200 = add nsw i32 %199, 3
  %201 = icmp ult i32 %200, 7
  %202 = getelementptr inbounds i8, ptr %9, i64 320
  br i1 %201, label %207, label %203

203:                                              ; preds = %193
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %202) #11
  %204 = and i32 %199, -4
  %205 = icmp ne i32 %204, 4
  %206 = zext i1 %205 to i16
  br label %207

207:                                              ; preds = %193, %203
  %208 = phi i16 [ %206, %203 ], [ 0, %193 ]
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %208, ptr noundef nonnull %202) #11
  %209 = trunc nsw i32 %199 to i8
  %210 = srem i8 %209, 4
  %211 = sdiv i8 %210, 2
  %212 = sext i8 %211 to i16
  %213 = getelementptr inbounds i8, ptr %9, i64 336
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %212, ptr noundef nonnull %213) #11
  %214 = mul i8 %211, 2
  %215 = sub i8 %210, %214
  %216 = sext i8 %215 to i16
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %216, ptr noundef nonnull %213) #11
  br label %217

217:                                              ; preds = %103, %89, %91, %95, %99, %107, %157, %143, %133, %127, %46, %63, %45, %207, %166, %192
  ret void
}

declare dso_local void @biari_encode_symbol_final(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #7

; Function Attrs: nounwind
define dso_local void @writeB8_typeInfo_CABAC(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds i8, ptr %3, i64 31568
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds i8, ptr %8, i64 32
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = getelementptr inbounds i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !33
  br i1 %6, label %27, label %13

13:                                               ; preds = %2
  switch i32 %12, label %58 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %19
    i32 3, label %23
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds i8, ptr %10, i64 544
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %15) #11
  br label %58

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %10, i64 544
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %17) #11
  %18 = getelementptr inbounds i8, ptr %10, i64 576
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %18) #11
  br label %58

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %10, i64 544
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %20) #11
  %21 = getelementptr inbounds i8, ptr %10, i64 576
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %21) #11
  %22 = getelementptr inbounds i8, ptr %10, i64 592
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %22) #11
  br label %58

23:                                               ; preds = %13
  %24 = getelementptr inbounds i8, ptr %10, i64 544
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %24) #11
  %25 = getelementptr inbounds i8, ptr %10, i64 576
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %25) #11
  %26 = getelementptr inbounds i8, ptr %10, i64 592
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %26) #11
  br label %58

27:                                               ; preds = %2
  %28 = icmp eq i32 %12, 0
  %29 = getelementptr inbounds i8, ptr %10, i64 672
  br i1 %28, label %30, label %31

30:                                               ; preds = %27
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %29) #11
  br label %58

31:                                               ; preds = %27
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %29) #11
  %32 = icmp slt i32 %12, 3
  %33 = getelementptr inbounds i8, ptr %10, i64 720
  br i1 %32, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %10, i64 688
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %35) #11
  %36 = icmp ne i32 %12, 1
  %37 = zext i1 %36 to i16
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %37, ptr noundef nonnull %33) #11
  br label %58

38:                                               ; preds = %31
  %39 = icmp ult i32 %12, 7
  %40 = getelementptr inbounds i8, ptr %10, i64 688
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %40) #11
  %41 = getelementptr inbounds i8, ptr %10, i64 704
  br i1 %39, label %42, label %47

42:                                               ; preds = %38
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %41) #11
  %43 = trunc nuw i32 %12 to i16
  %44 = add nsw i16 %43, -3
  %45 = lshr i16 %44, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %45, ptr noundef nonnull %33) #11
  %46 = and i16 %44, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %46, ptr noundef nonnull %33) #11
  br label %58

47:                                               ; preds = %38
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %41) #11
  %48 = add nsw i32 %12, -7
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  %51 = trunc i32 %48 to i16
  br i1 %50, label %54, label %52

52:                                               ; preds = %47
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %33) #11
  %53 = and i16 %51, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %53, ptr noundef nonnull %33) #11
  br label %58

54:                                               ; preds = %47
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %33) #11
  %55 = lshr i16 %51, 1
  %56 = and i16 %55, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %56, ptr noundef nonnull %33) #11
  %57 = and i16 %51, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %57, ptr noundef nonnull %33) #11
  br label %58

58:                                               ; preds = %13, %23, %19, %16, %14, %42, %54, %52, %34, %30
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeIntraPredMode_CABAC(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 31568
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds i8, ptr %5, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef %7) #11
  br label %25

12:                                               ; preds = %2
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef %7) #11
  %13 = load i32, ptr %8, align 4, !tbaa !33
  %14 = trunc i32 %13 to i16
  %15 = and i16 %14, 1
  %16 = getelementptr inbounds i8, ptr %7, i64 16
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %15, ptr noundef nonnull %16) #11
  %17 = load i32, ptr %8, align 4, !tbaa !33
  %18 = trunc i32 %17 to i16
  %19 = lshr i16 %18, 1
  %20 = and i16 %19, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %20, ptr noundef nonnull %16) #11
  %21 = load i32, ptr %8, align 4, !tbaa !33
  %22 = trunc i32 %21 to i16
  %23 = lshr i16 %22, 2
  %24 = and i16 %23, 1
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %24, ptr noundef nonnull %16) #11
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeRefFrame_CABAC(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = load ptr, ptr @img, align 8, !tbaa !10
  %6 = getelementptr inbounds i8, ptr %5, i64 31568
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds i8, ptr %7, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = getelementptr inbounds i8, ptr %5, i64 31576
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = getelementptr inbounds i8, ptr %5, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.macroblock, ptr %11, i64 %14
  %16 = load ptr, ptr @enc_picture, align 8, !tbaa !10
  %17 = getelementptr inbounds i8, ptr %16, i64 6480
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = getelementptr inbounds i8, ptr %5, i64 24
  %25 = load i32, ptr %24, align 8, !tbaa !42
  %26 = icmp eq i32 %25, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %27 = getelementptr inbounds i8, ptr %5, i64 72
  %28 = load i32, ptr %27, align 8, !tbaa !52
  %29 = getelementptr inbounds i8, ptr %5, i64 76
  %30 = load i32, ptr %29, align 4, !tbaa !53
  call void @getLuma4x4Neighbour(i32 noundef signext %13, i32 noundef signext %28, i32 noundef signext %30, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %3) #11
  %31 = load ptr, ptr @img, align 8, !tbaa !10
  %32 = getelementptr inbounds i8, ptr %31, i64 12
  %33 = load i32, ptr %32, align 4, !tbaa !17
  %34 = getelementptr inbounds i8, ptr %31, i64 72
  %35 = load i32, ptr %34, align 8, !tbaa !52
  %36 = getelementptr inbounds i8, ptr %31, i64 76
  %37 = load i32, ptr %36, align 4, !tbaa !53
  call void @getLuma4x4Neighbour(i32 noundef signext %33, i32 noundef signext %35, i32 noundef signext %37, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %4) #11
  %38 = getelementptr inbounds i8, ptr %3, i64 8
  %39 = load i32, ptr %38, align 4, !tbaa !54
  %40 = lshr i32 %39, 1
  %41 = and i32 %40, 1
  %42 = getelementptr inbounds i8, ptr %3, i64 12
  %43 = load i32, ptr %42, align 4, !tbaa !55
  %44 = and i32 %43, 2
  %45 = or disjoint i32 %41, %44
  %46 = getelementptr inbounds i8, ptr %4, i64 8
  %47 = load i32, ptr %46, align 4, !tbaa !54
  %48 = lshr i32 %47, 1
  %49 = and i32 %48, 1
  %50 = getelementptr inbounds i8, ptr %4, i64 12
  %51 = load i32, ptr %50, align 4, !tbaa !55
  %52 = and i32 %51, 2
  %53 = or disjoint i32 %49, %52
  %54 = load i32, ptr %4, align 4, !tbaa !18
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %117, label %56

56:                                               ; preds = %2
  %57 = load ptr, ptr @img, align 8, !tbaa !10
  %58 = getelementptr inbounds i8, ptr %57, i64 31576
  %59 = load ptr, ptr %58, align 8, !tbaa !12
  %60 = getelementptr inbounds i8, ptr %4, i64 4
  %61 = load i32, ptr %60, align 4, !tbaa !20
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.macroblock, ptr %59, i64 %62, i32 8
  %64 = load i32, ptr %63, align 8, !tbaa !48
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = getelementptr inbounds i8, ptr %57, i64 24
  %68 = load i32, ptr %67, align 8, !tbaa !42
  %69 = icmp ne i32 %68, 1
  %70 = load i32, ptr @giRDOpt_B8OnlyFlag, align 4
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %73, label %117

73:                                               ; preds = %66, %56
  %74 = getelementptr inbounds %struct.macroblock, ptr %59, i64 %62
  %75 = getelementptr inbounds i8, ptr %74, i64 376
  %76 = zext nneg i32 %53 to i64
  %77 = getelementptr inbounds [4 x i32], ptr %75, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !6
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i1 %26, i1 false
  br i1 %80, label %117, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds i8, ptr %57, i64 90220
  %83 = load i32, ptr %82, align 4, !tbaa !56
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %15, i64 424
  %87 = load i32, ptr %86, align 8, !tbaa !38
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = getelementptr inbounds i8, ptr %74, i64 424
  %91 = load i32, ptr %90, align 8, !tbaa !38
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = getelementptr inbounds i8, ptr %4, i64 20
  %95 = load i32, ptr %94, align 4, !tbaa !57
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %23, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !10
  %99 = getelementptr inbounds i8, ptr %4, i64 16
  %100 = load i32, ptr %99, align 4, !tbaa !58
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %98, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !59
  %104 = icmp ugt i8 %103, 1
  br label %117

105:                                              ; preds = %89, %85, %81
  %106 = getelementptr inbounds i8, ptr %4, i64 20
  %107 = load i32, ptr %106, align 4, !tbaa !57
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %23, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !10
  %111 = getelementptr inbounds i8, ptr %4, i64 16
  %112 = load i32, ptr %111, align 4, !tbaa !58
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %110, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !59
  %116 = icmp ne i8 %115, 0
  br label %117

117:                                              ; preds = %66, %73, %2, %105, %93
  %118 = phi i1 [ %104, %93 ], [ %116, %105 ], [ false, %2 ], [ false, %73 ], [ false, %66 ]
  %119 = load i32, ptr %3, align 4, !tbaa !18
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %182, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr @img, align 8, !tbaa !10
  %123 = getelementptr inbounds i8, ptr %122, i64 31576
  %124 = load ptr, ptr %123, align 8, !tbaa !12
  %125 = getelementptr inbounds i8, ptr %3, i64 4
  %126 = load i32, ptr %125, align 4, !tbaa !20
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.macroblock, ptr %124, i64 %127, i32 8
  %129 = load i32, ptr %128, align 8, !tbaa !48
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %122, i64 24
  %133 = load i32, ptr %132, align 8, !tbaa !42
  %134 = icmp ne i32 %133, 1
  %135 = load i32, ptr @giRDOpt_B8OnlyFlag, align 4
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %134, i1 true, i1 %136
  br i1 %137, label %138, label %182

138:                                              ; preds = %131, %121
  %139 = getelementptr inbounds %struct.macroblock, ptr %124, i64 %127
  %140 = getelementptr inbounds i8, ptr %139, i64 376
  %141 = zext nneg i32 %45 to i64
  %142 = getelementptr inbounds [4 x i32], ptr %140, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !6
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i1 %26, i1 false
  br i1 %145, label %182, label %146

146:                                              ; preds = %138
  %147 = getelementptr inbounds i8, ptr %122, i64 90220
  %148 = load i32, ptr %147, align 4, !tbaa !56
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %170, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds i8, ptr %15, i64 424
  %152 = load i32, ptr %151, align 8, !tbaa !38
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %150
  %155 = getelementptr inbounds i8, ptr %139, i64 424
  %156 = load i32, ptr %155, align 8, !tbaa !38
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = getelementptr inbounds i8, ptr %3, i64 20
  %160 = load i32, ptr %159, align 4, !tbaa !57
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %23, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !10
  %164 = getelementptr inbounds i8, ptr %3, i64 16
  %165 = load i32, ptr %164, align 4, !tbaa !58
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, ptr %163, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !59
  %169 = icmp ugt i8 %168, 1
  br label %182

170:                                              ; preds = %154, %150, %146
  %171 = getelementptr inbounds i8, ptr %3, i64 20
  %172 = load i32, ptr %171, align 4, !tbaa !57
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds ptr, ptr %23, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !10
  %176 = getelementptr inbounds i8, ptr %3, i64 16
  %177 = load i32, ptr %176, align 4, !tbaa !58
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, ptr %175, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !59
  %181 = icmp ne i8 %180, 0
  br label %182

182:                                              ; preds = %131, %138, %117, %170, %158
  %183 = phi i1 [ %169, %158 ], [ %181, %170 ], [ false, %117 ], [ false, %138 ], [ false, %131 ]
  %184 = zext i1 %183 to i32
  %185 = select i1 %118, i32 2, i32 0
  %186 = or disjoint i32 %185, %184
  %187 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %186, ptr %187, align 8, !tbaa !41
  %188 = getelementptr inbounds i8, ptr %0, i64 4
  %189 = load i32, ptr %188, align 4, !tbaa !33
  %190 = icmp eq i32 %189, 0
  %191 = getelementptr inbounds i8, ptr %9, i64 1136
  %192 = zext nneg i32 %186 to i64
  %193 = getelementptr inbounds %struct.BiContextType, ptr %191, i64 %192
  br i1 %190, label %205, label %194

194:                                              ; preds = %182
  call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %193) #11
  %195 = getelementptr inbounds i8, ptr %9, i64 1200
  %196 = icmp eq i32 %189, 1
  br i1 %196, label %205, label %197

197:                                              ; preds = %194
  call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %195) #11
  %198 = getelementptr inbounds i8, ptr %9, i64 1216
  %199 = add i32 %189, -2
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %197, %201
  %202 = phi i32 [ %203, %201 ], [ %199, %197 ]
  call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %198) #11
  %203 = add i32 %202, -1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %201

205:                                              ; preds = %201, %197, %194, %182
  %206 = phi ptr [ %193, %182 ], [ %195, %194 ], [ %198, %197 ], [ %198, %201 ]
  call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %206) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

declare dso_local void @getLuma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @unary_bin_encode(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, i32 noundef signext %3) local_unnamed_addr #1 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds %struct.BiContextType, ptr %2, i64 %7
  %9 = add i32 %1, -1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %13, %11 ], [ %9, %6 ]
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %8) #11
  %13 = add i32 %12, -1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %6, %4
  %16 = phi ptr [ %2, %4 ], [ %8, %6 ], [ %8, %11 ]
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 0, ptr noundef %16) #11
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeDquant_CABAC(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 31568
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds i8, ptr %5, i64 32
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = getelementptr inbounds i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = getelementptr inbounds i8, ptr %3, i64 31576
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = getelementptr inbounds i8, ptr %3, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.macroblock, ptr %11, i64 %14, i32 35
  %16 = load i32, ptr %15, align 4, !tbaa !60
  store i32 %16, ptr @last_dquant, align 4, !tbaa !6
  %17 = icmp slt i32 %9, 1
  %18 = zext i1 %17 to i32
  %19 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %20 = shl nuw i32 %19, 1
  %21 = or disjoint i32 %20, %18
  %22 = icmp ne i32 %16, 0
  %23 = icmp eq i32 %21, 1
  %24 = getelementptr inbounds i8, ptr %7, i64 1328
  %25 = zext i1 %22 to i64
  %26 = getelementptr inbounds %struct.BiContextType, ptr %24, i64 %25
  br i1 %23, label %38, label %27

27:                                               ; preds = %2
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %26) #11
  %28 = getelementptr inbounds i8, ptr %7, i64 1360
  %29 = icmp eq i32 %21, 2
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %28) #11
  %31 = getelementptr inbounds i8, ptr %7, i64 1376
  %32 = add i32 %21, -3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %34
  %35 = phi i32 [ %36, %34 ], [ %32, %30 ]
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %31) #11
  %36 = add i32 %35, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34, %30, %27, %2
  %39 = phi ptr [ %26, %2 ], [ %28, %27 ], [ %31, %30 ], [ %31, %34 ]
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %39) #11
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeMVD_CABAC(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = load ptr, ptr @img, align 8, !tbaa !10
  %6 = getelementptr inbounds i8, ptr %5, i64 72
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds i8, ptr %5, i64 76
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = and i32 %11, 1
  %13 = ashr i32 %11, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %14 = getelementptr inbounds i8, ptr %5, i64 31568
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = getelementptr inbounds i8, ptr %15, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = getelementptr inbounds i8, ptr %5, i64 31576
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = getelementptr inbounds i8, ptr %5, i64 12
  %21 = load i32, ptr %20, align 4, !tbaa !17
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.macroblock, ptr %19, i64 %22
  call void @getLuma4x4Neighbour(i32 noundef signext %21, i32 noundef signext %7, i32 noundef signext %9, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %3) #11
  %24 = load ptr, ptr @img, align 8, !tbaa !10
  %25 = getelementptr inbounds i8, ptr %24, i64 12
  %26 = load i32, ptr %25, align 4, !tbaa !17
  call void @getLuma4x4Neighbour(i32 noundef signext %26, i32 noundef signext %7, i32 noundef signext %9, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %4) #11
  %27 = load i32, ptr %4, align 4, !tbaa !18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %2
  %30 = load ptr, ptr @img, align 8, !tbaa !10
  %31 = getelementptr inbounds i8, ptr %30, i64 31576
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = getelementptr inbounds i8, ptr %4, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !20
  %35 = sext i32 %34 to i64
  %36 = zext nneg i32 %12 to i64
  %37 = getelementptr inbounds i8, ptr %4, i64 12
  %38 = load i32, ptr %37, align 4, !tbaa !55
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %4, i64 8
  %41 = load i32, ptr %40, align 4, !tbaa !54
  %42 = sext i32 %41 to i64
  %43 = sext i32 %13 to i64
  %44 = getelementptr inbounds %struct.macroblock, ptr %32, i64 %35, i32 9, i64 %36, i64 %39, i64 %42, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !6
  %46 = call i32 @llvm.abs.i32(i32 %45, i1 true)
  %47 = getelementptr inbounds i8, ptr %30, i64 90220
  %48 = load i32, ptr %47, align 4, !tbaa !56
  %49 = icmp ne i32 %48, 0
  %50 = icmp eq i32 %13, 1
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %67

52:                                               ; preds = %29
  %53 = getelementptr inbounds i8, ptr %23, i64 424
  %54 = load i32, ptr %53, align 8, !tbaa !38
  switch i32 %54, label %67 [
    i32 0, label %55
    i32 1, label %61
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.macroblock, ptr %32, i64 %35, i32 19
  %57 = load i32, ptr %56, align 8, !tbaa !38
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = shl nuw nsw i32 %46, %59
  br label %67

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.macroblock, ptr %32, i64 %35, i32 19
  %63 = load i32, ptr %62, align 8, !tbaa !38
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = lshr i32 %46, %65
  br label %67

67:                                               ; preds = %55, %52, %61, %2, %29
  %68 = phi i32 [ %46, %29 ], [ %66, %61 ], [ 0, %2 ], [ %60, %55 ], [ %46, %52 ]
  %69 = load i32, ptr %3, align 4, !tbaa !18
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %109, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr @img, align 8, !tbaa !10
  %73 = getelementptr inbounds i8, ptr %72, i64 31576
  %74 = load ptr, ptr %73, align 8, !tbaa !12
  %75 = getelementptr inbounds i8, ptr %3, i64 4
  %76 = load i32, ptr %75, align 4, !tbaa !20
  %77 = sext i32 %76 to i64
  %78 = zext nneg i32 %12 to i64
  %79 = getelementptr inbounds i8, ptr %3, i64 12
  %80 = load i32, ptr %79, align 4, !tbaa !55
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %3, i64 8
  %83 = load i32, ptr %82, align 4, !tbaa !54
  %84 = sext i32 %83 to i64
  %85 = sext i32 %13 to i64
  %86 = getelementptr inbounds %struct.macroblock, ptr %74, i64 %77, i32 9, i64 %78, i64 %81, i64 %84, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !6
  %88 = call i32 @llvm.abs.i32(i32 %87, i1 true)
  %89 = getelementptr inbounds i8, ptr %72, i64 90220
  %90 = load i32, ptr %89, align 4, !tbaa !56
  %91 = icmp ne i32 %90, 0
  %92 = icmp eq i32 %13, 1
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %109

94:                                               ; preds = %71
  %95 = getelementptr inbounds i8, ptr %23, i64 424
  %96 = load i32, ptr %95, align 8, !tbaa !38
  switch i32 %96, label %109 [
    i32 0, label %97
    i32 1, label %103
  ]

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.macroblock, ptr %74, i64 %77, i32 19
  %99 = load i32, ptr %98, align 8, !tbaa !38
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = shl nuw nsw i32 %88, %101
  br label %109

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.macroblock, ptr %74, i64 %77, i32 19
  %105 = load i32, ptr %104, align 8, !tbaa !38
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = lshr i32 %88, %107
  br label %109

109:                                              ; preds = %97, %94, %103, %67, %71
  %110 = phi i32 [ %88, %71 ], [ %108, %103 ], [ 0, %67 ], [ %102, %97 ], [ %88, %94 ]
  %111 = add nuw nsw i32 %110, %68
  %112 = icmp slt i32 %111, 3
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = mul nsw i32 %13, 5
  br label %122

115:                                              ; preds = %109
  %116 = icmp ugt i32 %111, 32
  %117 = mul nsw i32 %13, 5
  br i1 %116, label %118, label %120

118:                                              ; preds = %115
  %119 = add nsw i32 %117, 3
  br label %122

120:                                              ; preds = %115
  %121 = add nsw i32 %117, 2
  br label %122

122:                                              ; preds = %118, %120, %113
  %123 = phi i32 [ %114, %113 ], [ %119, %118 ], [ %121, %120 ]
  %124 = getelementptr inbounds i8, ptr %0, i64 4
  %125 = load i32, ptr %124, align 4, !tbaa !33
  %126 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %123, ptr %126, align 8, !tbaa !41
  %127 = icmp eq i32 %125, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, ptr %17, i64 816
  %130 = sext i32 %123 to i64
  %131 = getelementptr inbounds [10 x %struct.BiContextType], ptr %129, i64 0, i64 %130
  call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %131) #11
  br label %144

132:                                              ; preds = %122
  %133 = call i32 @llvm.abs.i32(i32 %125, i1 true)
  %134 = getelementptr inbounds i8, ptr %17, i64 816
  %135 = sext i32 %123 to i64
  %136 = getelementptr inbounds [10 x %struct.BiContextType], ptr %134, i64 0, i64 %135
  call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %136) #11
  %137 = add nsw i32 %133, -1
  %138 = mul nsw i32 %13, 5
  %139 = getelementptr inbounds i8, ptr %17, i64 976
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds %struct.BiContextType, ptr %139, i64 %140
  call void @unary_exp_golomb_mv_encode(ptr noundef %1, i32 noundef signext %137, ptr noundef nonnull %141, i32 noundef signext 3)
  %142 = lshr i32 %125, 31
  %143 = trunc nuw nsw i32 %142 to i16
  call void @biari_encode_symbol_eq_prob(ptr noundef %1, i16 noundef signext %143) #11
  br label %144

144:                                              ; preds = %132, %128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind
define dso_local void @unary_exp_golomb_mv_encode(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, i32 noundef signext %3) local_unnamed_addr #1 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %61, label %6

6:                                                ; preds = %4
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %7 = getelementptr inbounds i8, ptr %2, i64 16
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %61, label %9

9:                                                ; preds = %6
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef nonnull %7) #11
  %10 = getelementptr inbounds i8, ptr %2, i64 32
  %11 = icmp eq i32 %3, 2
  %12 = select i1 %11, i64 16, i64 0
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = icmp eq i32 %1, 2
  br i1 %14, label %61, label %15

15:                                               ; preds = %9
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef nonnull %13) #11
  %16 = icmp eq i32 %3, 3
  %17 = select i1 %16, i64 16, i64 0
  %18 = getelementptr inbounds i8, ptr %13, i64 %17
  %19 = icmp eq i32 %1, 3
  br i1 %19, label %61, label %20

20:                                               ; preds = %15
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef nonnull %18) #11
  %21 = icmp eq i32 %3, 4
  %22 = select i1 %21, i64 16, i64 0
  %23 = getelementptr inbounds i8, ptr %18, i64 %22
  %24 = icmp eq i32 %1, 4
  br i1 %24, label %61, label %25

25:                                               ; preds = %20
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef nonnull %23) #11
  %26 = icmp eq i32 %3, 5
  %27 = select i1 %26, i64 16, i64 0
  %28 = getelementptr inbounds i8, ptr %23, i64 %27
  %29 = icmp eq i32 %1, 5
  br i1 %29, label %61, label %30

30:                                               ; preds = %25
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef nonnull %28) #11
  %31 = icmp eq i32 %3, 6
  %32 = select i1 %31, i64 16, i64 0
  %33 = getelementptr inbounds i8, ptr %28, i64 %32
  %34 = icmp eq i32 %1, 6
  br i1 %34, label %61, label %35

35:                                               ; preds = %30
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef nonnull %33) #11
  %36 = icmp eq i32 %3, 7
  %37 = select i1 %36, i64 16, i64 0
  %38 = getelementptr inbounds i8, ptr %33, i64 %37
  %39 = icmp eq i32 %1, 7
  br i1 %39, label %61, label %40

40:                                               ; preds = %35
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %38) #11
  %41 = add i32 %1, -8
  %42 = icmp ult i32 %41, 8
  br i1 %42, label %51, label %43

43:                                               ; preds = %40, %43
  %44 = phi i32 [ %49, %43 ], [ 8, %40 ]
  %45 = phi i32 [ %48, %43 ], [ 3, %40 ]
  %46 = phi i32 [ %47, %43 ], [ %41, %40 ]
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext 1) #11
  %47 = sub i32 %46, %44
  %48 = add nuw nsw i32 %45, 1
  %49 = shl nuw i32 2, %45
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %40
  %52 = phi i32 [ %41, %40 ], [ %47, %43 ]
  %53 = phi i32 [ 3, %40 ], [ %48, %43 ]
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext 0) #11
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi i32 [ %56, %54 ], [ %53, %51 ]
  %56 = add nsw i32 %55, -1
  %57 = lshr i32 %52, %56
  %58 = trunc i32 %57 to i16
  %59 = and i16 %58, 1
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext %59) #11
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %63, label %54

61:                                               ; preds = %6, %35, %30, %25, %20, %15, %9, %4
  %62 = phi ptr [ %2, %4 ], [ %38, %35 ], [ %33, %30 ], [ %28, %25 ], [ %23, %20 ], [ %18, %15 ], [ %13, %9 ], [ %7, %6 ]
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 0, ptr noundef %62) #11
  br label %63

63:                                               ; preds = %54, %61
  ret void
}

declare dso_local void @biari_encode_symbol_eq_prob(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @writeCIPredMode_CABAC(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 31568
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds i8, ptr %5, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds i8, ptr %3, i64 31576
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, ptr %3, i64 12
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %12
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !33
  %16 = getelementptr inbounds i8, ptr %13, i64 56
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds i8, ptr %17, i64 416
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  br label %24

24:                                               ; preds = %2, %19
  %25 = phi i64 [ %23, %19 ], [ 0, %2 ]
  %26 = getelementptr inbounds i8, ptr %13, i64 64
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %27, i64 416
  %31 = load i32, ptr %30, align 8, !tbaa !61
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  br label %34

34:                                               ; preds = %24, %29
  %35 = phi i64 [ %33, %29 ], [ 0, %24 ]
  %36 = icmp eq i32 %15, 0
  %37 = getelementptr inbounds i8, ptr %7, i64 32
  %38 = getelementptr inbounds %struct.BiContextType, ptr %37, i64 %35
  %39 = getelementptr inbounds %struct.BiContextType, ptr %38, i64 %25
  br i1 %36, label %53, label %40

40:                                               ; preds = %34
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %39) #11
  %41 = add nsw i32 %15, -1
  %42 = getelementptr inbounds i8, ptr %7, i64 80
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %42) #11
  %45 = add i32 %15, -2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %47
  %48 = phi i32 [ %49, %47 ], [ %45, %44 ]
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull %42) #11
  %49 = add i32 %48, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %47

51:                                               ; preds = %47
  %52 = icmp eq i32 %41, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %40, %51, %44, %34
  %54 = phi ptr [ %39, %34 ], [ %42, %44 ], [ %42, %51 ], [ %42, %40 ]
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext 0, ptr noundef nonnull %54) #11
  br label %55

55:                                               ; preds = %53, %51
  ret void
}

; Function Attrs: nounwind
define dso_local void @unary_bin_max_encode(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4) local_unnamed_addr #1 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds %struct.BiContextType, ptr %2, i64 %8
  %10 = add i32 %1, -1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7, %12
  %13 = phi i32 [ %14, %12 ], [ %10, %7 ]
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %9) #11
  %14 = add i32 %13, -1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12, %7
  %17 = icmp ult i32 %1, %4
  br i1 %17, label %18, label %20

18:                                               ; preds = %16, %5
  %19 = phi ptr [ %2, %5 ], [ %9, %16 ]
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 0, ptr noundef %19) #11
  br label %20

20:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeCBP_BIT_CABAC(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 signext %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  %8 = shl i32 %0, 1
  %9 = and i32 %8, 2
  %10 = and i32 %0, -2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %3, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %14, i64 72
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = icmp eq i32 %18, 14
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %14, i64 364
  %22 = load i32, ptr %21, align 4, !tbaa !62
  %23 = shl nuw nsw i32 4, %0
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  br label %32

27:                                               ; preds = %6
  %28 = lshr exact i32 %9, 1
  %29 = xor i32 %2, -1
  %30 = lshr i32 %29, %28
  %31 = and i32 %30, 1
  br label %32

32:                                               ; preds = %16, %12, %20, %27
  %33 = phi i32 [ %26, %20 ], [ %31, %27 ], [ 0, %12 ], [ 0, %16 ]
  %34 = icmp eq i32 %9, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load ptr, ptr @img, align 8, !tbaa !10
  %37 = getelementptr inbounds i8, ptr %36, i64 12
  %38 = load i32, ptr %37, align 4, !tbaa !17
  call void @getLuma4x4Neighbour(i32 noundef signext %38, i32 noundef signext 0, i32 noundef signext %10, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %7) #11
  %39 = load i32, ptr %7, align 4, !tbaa !18
  %40 = icmp eq i32 %39, 0
  %41 = load ptr, ptr @img, align 8, !tbaa !10
  br i1 %40, label %66, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds i8, ptr %41, i64 31576
  %44 = load ptr, ptr %43, align 8, !tbaa !12
  %45 = getelementptr inbounds i8, ptr %7, i64 4
  %46 = load i32, ptr %45, align 4, !tbaa !20
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.macroblock, ptr %44, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 72
  %50 = load i32, ptr %49, align 8, !tbaa !48
  %51 = icmp eq i32 %50, 14
  br i1 %51, label %66, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds i8, ptr %48, i64 364
  %54 = load i32, ptr %53, align 4, !tbaa !62
  %55 = getelementptr inbounds i8, ptr %7, i64 12
  %56 = load i32, ptr %55, align 4, !tbaa !55
  %57 = or i32 %56, 1
  %58 = xor i32 %54, -1
  %59 = lshr i32 %58, %57
  %60 = and i32 %59, 1
  br label %66

61:                                               ; preds = %32
  %62 = xor i32 %2, -1
  %63 = lshr i32 %62, %10
  %64 = and i32 %63, 1
  %65 = load ptr, ptr @img, align 8, !tbaa !10
  br label %66

66:                                               ; preds = %35, %42, %52, %61
  %67 = phi ptr [ %41, %52 ], [ %65, %61 ], [ %41, %42 ], [ %41, %35 ]
  %68 = phi i32 [ %60, %52 ], [ %64, %61 ], [ 0, %42 ], [ 0, %35 ]
  %69 = trunc i32 %1 to i16
  %70 = getelementptr inbounds i8, ptr %67, i64 31568
  %71 = load ptr, ptr %70, align 8, !tbaa !30
  %72 = getelementptr inbounds i8, ptr %71, i64 40
  %73 = load ptr, ptr %72, align 8, !tbaa !49
  %74 = getelementptr inbounds i8, ptr %73, i64 96
  %75 = zext nneg i32 %68 to i64
  %76 = getelementptr inbounds %struct.BiContextType, ptr %74, i64 %75
  %77 = shl nuw nsw i32 %33, 1
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds %struct.BiContextType, ptr %76, i64 %78
  call void @biari_encode_symbol(ptr noundef %5, i16 noundef signext %69, ptr noundef nonnull %79) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeCBP_CABAC(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @img, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %3, i64 31568
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds i8, ptr %5, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds i8, ptr %3, i64 31576
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, ptr %3, i64 12
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %12
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !33
  %16 = and i32 %15, 1
  tail call void @writeCBP_BIT_CABAC(i32 noundef signext 0, i32 noundef signext %16, i32 noundef signext %15, ptr noundef %13, i32 signext poison, ptr noundef %1)
  %17 = and i32 %15, 2
  tail call void @writeCBP_BIT_CABAC(i32 noundef signext 1, i32 noundef signext %17, i32 noundef signext %15, ptr noundef %13, i32 signext poison, ptr noundef %1)
  %18 = and i32 %15, 4
  tail call void @writeCBP_BIT_CABAC(i32 noundef signext 2, i32 noundef signext %18, i32 noundef signext %15, ptr noundef %13, i32 signext poison, ptr noundef %1)
  %19 = and i32 %15, 8
  tail call void @writeCBP_BIT_CABAC(i32 noundef signext 3, i32 noundef signext %19, i32 noundef signext %15, ptr noundef %13, i32 signext poison, ptr noundef %1)
  %20 = load ptr, ptr @img, align 8, !tbaa !10
  %21 = getelementptr inbounds i8, ptr %20, i64 90548
  %22 = load i32, ptr %21, align 4, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %97, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds i8, ptr %13, i64 56
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %26, i64 72
  %30 = load i32, ptr %29, align 8, !tbaa !48
  %31 = icmp eq i32 %30, 14
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %26, i64 364
  %34 = load i32, ptr %33, align 4, !tbaa !62
  %35 = icmp sgt i32 %34, 15
  %36 = select i1 %35, i64 2, i64 0
  br label %37

37:                                               ; preds = %28, %32, %24
  %38 = phi i64 [ %36, %32 ], [ 0, %24 ], [ 2, %28 ]
  %39 = getelementptr inbounds i8, ptr %13, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %40, i64 72
  %44 = load i32, ptr %43, align 8, !tbaa !48
  %45 = icmp eq i32 %44, 14
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %40, i64 364
  %48 = load i32, ptr %47, align 4, !tbaa !62
  %49 = icmp sgt i32 %48, 15
  %50 = zext i1 %49 to i64
  br label %51

51:                                               ; preds = %42, %46, %37
  %52 = phi i64 [ %50, %46 ], [ 0, %37 ], [ 1, %42 ]
  %53 = or disjoint i64 %52, %38
  %54 = icmp sgt i32 %15, 15
  %55 = zext i1 %54 to i16
  %56 = getelementptr inbounds i8, ptr %7, i64 160
  %57 = getelementptr inbounds %struct.BiContextType, ptr %56, i64 %53
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %55, ptr noundef nonnull %57) #11
  br i1 %54, label %58, label %97

58:                                               ; preds = %51
  %59 = load ptr, ptr %25, align 8, !tbaa !43
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %59, i64 72
  %63 = load i32, ptr %62, align 8, !tbaa !48
  %64 = icmp eq i32 %63, 14
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %59, i64 364
  %67 = load i32, ptr %66, align 4, !tbaa !62
  %68 = icmp sgt i32 %67, 15
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = and i32 %67, 2147483632
  %71 = icmp eq i32 %70, 32
  %72 = select i1 %71, i64 2, i64 0
  br label %73

73:                                               ; preds = %61, %69, %65, %58
  %74 = phi i64 [ %72, %69 ], [ 0, %65 ], [ 0, %58 ], [ 2, %61 ]
  %75 = load ptr, ptr %39, align 8, !tbaa !45
  %76 = icmp eq ptr %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %75, i64 72
  %79 = load i32, ptr %78, align 8, !tbaa !48
  %80 = icmp eq i32 %79, 14
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %75, i64 364
  %83 = load i32, ptr %82, align 4, !tbaa !62
  %84 = icmp sgt i32 %83, 15
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = and i32 %83, 2147483632
  %87 = icmp eq i32 %86, 32
  %88 = zext i1 %87 to i64
  br label %89

89:                                               ; preds = %77, %85, %81, %73
  %90 = phi i64 [ %88, %85 ], [ 0, %81 ], [ 0, %73 ], [ 1, %77 ]
  %91 = or disjoint i64 %90, %74
  %92 = and i32 %15, 2147483632
  %93 = icmp eq i32 %92, 32
  %94 = zext i1 %93 to i16
  %95 = getelementptr inbounds i8, ptr %7, i64 224
  %96 = getelementptr inbounds %struct.BiContextType, ptr %95, i64 %91
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %94, ptr noundef nonnull %96) #11
  br label %97

97:                                               ; preds = %51, %89, %2
  ret void
}

; Function Attrs: nounwind
define dso_local void @write_and_store_CBP_block_bit(ptr nocapture noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #1 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = add i32 %2, -1
  %8 = icmp ult i32 %7, 5
  %9 = icmp eq i32 %2, 0
  switch i32 %2, label %10 [
    i32 7, label %12
    i32 8, label %18
    i32 6, label %18
    i32 9, label %18
  ]

10:                                               ; preds = %4
  %11 = load ptr, ptr @img, align 8, !tbaa !10
  br label %24

12:                                               ; preds = %4
  %13 = load ptr, ptr @img, align 8, !tbaa !10
  %14 = getelementptr inbounds i8, ptr %13, i64 84
  %15 = load i32, ptr %14, align 4, !tbaa !64
  %16 = icmp eq i32 %15, 0
  %17 = icmp ne i32 %15, 0
  br label %24

18:                                               ; preds = %4, %4, %4
  %19 = load ptr, ptr @img, align 8, !tbaa !10
  %20 = getelementptr inbounds i8, ptr %19, i64 84
  %21 = load i32, ptr %20, align 4, !tbaa !64
  %22 = icmp eq i32 %21, 0
  %23 = icmp ne i32 %21, 0
  br label %24

24:                                               ; preds = %10, %12, %18
  %25 = phi ptr [ %19, %18 ], [ %13, %12 ], [ %11, %10 ]
  %26 = phi i1 [ %22, %18 ], [ false, %12 ], [ false, %10 ]
  %27 = phi i1 [ false, %18 ], [ %17, %12 ], [ false, %10 ]
  %28 = phi i1 [ false, %18 ], [ %16, %12 ], [ false, %10 ]
  %29 = phi i1 [ %23, %18 ], [ false, %12 ], [ false, %10 ]
  %30 = select i1 %8, i1 true, i1 %28
  %31 = select i1 %30, i1 true, i1 %27
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, ptr %25, i64 76
  %34 = load i32, ptr %33, align 4, !tbaa !53
  %35 = getelementptr inbounds i8, ptr %25, i64 72
  %36 = load i32, ptr %35, align 8, !tbaa !52
  br label %37

37:                                               ; preds = %24, %32
  %38 = phi i32 [ %34, %32 ], [ 0, %24 ]
  %39 = phi i32 [ %36, %32 ], [ 0, %24 ]
  %40 = getelementptr inbounds i8, ptr %25, i64 80
  %41 = load i32, ptr %40, align 8, !tbaa !65
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %44 = icmp ult i32 %2, 6
  %45 = getelementptr inbounds i8, ptr %25, i64 12
  %46 = load i32, ptr %45, align 4, !tbaa !17
  br i1 %44, label %47, label %73

47:                                               ; preds = %37
  call void @getLuma4x4Neighbour(i32 noundef signext %46, i32 noundef signext %39, i32 noundef signext %38, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %5) #11
  %48 = load ptr, ptr @img, align 8, !tbaa !10
  %49 = getelementptr inbounds i8, ptr %48, i64 12
  %50 = load i32, ptr %49, align 4, !tbaa !17
  call void @getLuma4x4Neighbour(i32 noundef signext %50, i32 noundef signext %39, i32 noundef signext %38, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %6) #11
  br i1 %8, label %51, label %110

51:                                               ; preds = %47
  %52 = load i32, ptr %5, align 4, !tbaa !18
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds i8, ptr %5, i64 12
  %55 = load i32, ptr %54, align 4
  %56 = shl nsw i32 %55, 2
  %57 = getelementptr inbounds i8, ptr %5, i64 8
  %58 = load i32, ptr %57, align 4
  %59 = add nsw i32 %56, %58
  %60 = select i1 %53, i32 0, i32 %59
  %61 = load i32, ptr %6, align 4, !tbaa !18
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds i8, ptr %6, i64 12
  %64 = load i32, ptr %63, align 4
  %65 = shl nsw i32 %64, 2
  %66 = getelementptr inbounds i8, ptr %6, i64 8
  %67 = load i32, ptr %66, align 4
  %68 = add nsw i32 %65, %67
  %69 = select i1 %62, i32 0, i32 %68
  %70 = shl nsw i32 %38, 2
  %71 = or disjoint i32 %70, 1
  %72 = add nsw i32 %71, %39
  br label %110

73:                                               ; preds = %37
  call void @getChroma4x4Neighbour(i32 noundef signext %46, i32 noundef signext %39, i32 noundef signext %38, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %5) #11
  %74 = load ptr, ptr @img, align 8, !tbaa !10
  %75 = getelementptr inbounds i8, ptr %74, i64 12
  %76 = load i32, ptr %75, align 4, !tbaa !17
  call void @getChroma4x4Neighbour(i32 noundef signext %76, i32 noundef signext %39, i32 noundef signext %38, i32 noundef signext 0, i32 noundef signext -1, ptr noundef nonnull %6) #11
  %77 = select i1 %28, i1 true, i1 %27
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load i32, ptr %5, align 4, !tbaa !18
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds i8, ptr %5, i64 12
  %82 = load i32, ptr %81, align 4
  %83 = shl nsw i32 %82, 2
  %84 = getelementptr inbounds i8, ptr %5, i64 8
  %85 = load i32, ptr %84, align 4
  %86 = add nsw i32 %83, %85
  %87 = select i1 %80, i32 0, i32 %86
  %88 = load i32, ptr %6, align 4, !tbaa !18
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %78
  %91 = getelementptr inbounds i8, ptr %6, i64 12
  %92 = load i32, ptr %91, align 4, !tbaa !55
  %93 = shl nsw i32 %92, 2
  %94 = getelementptr inbounds i8, ptr %6, i64 8
  %95 = load i32, ptr %94, align 4, !tbaa !54
  %96 = add nsw i32 %93, %95
  br label %97

97:                                               ; preds = %73, %90, %78
  %98 = phi i32 [ %87, %90 ], [ %87, %78 ], [ 0, %73 ]
  %99 = phi i32 [ %96, %90 ], [ 0, %78 ], [ 0, %73 ]
  %100 = select i1 %26, i1 true, i1 %29
  %101 = select i1 %26, i32 17, i32 18
  br i1 %100, label %110, label %102

102:                                              ; preds = %97
  %103 = shl nsw i32 %38, 2
  br i1 %28, label %104, label %107

104:                                              ; preds = %102
  %105 = add nsw i32 %103, 19
  %106 = add nsw i32 %105, %39
  br label %110

107:                                              ; preds = %102
  %108 = add nsw i32 %103, 35
  %109 = add nsw i32 %108, %39
  br label %110

110:                                              ; preds = %47, %97, %51, %107, %104
  %111 = phi i32 [ %69, %51 ], [ %99, %97 ], [ %99, %104 ], [ %99, %107 ], [ 0, %47 ]
  %112 = phi i32 [ %60, %51 ], [ %98, %97 ], [ %98, %104 ], [ %98, %107 ], [ 0, %47 ]
  %113 = phi i32 [ %72, %51 ], [ %101, %97 ], [ %106, %104 ], [ %109, %107 ], [ 0, %47 ]
  %114 = icmp eq i32 %3, 0
  br i1 %114, label %132, label %115

115:                                              ; preds = %110
  %116 = add i32 %2, -2
  %117 = icmp ult i32 %116, 3
  %118 = getelementptr inbounds i8, ptr %0, i64 408
  %119 = load i64, ptr %118, align 8, !tbaa !66
  br i1 %117, label %124, label %120

120:                                              ; preds = %115
  %121 = zext nneg i32 %113 to i64
  %122 = shl nuw i64 1, %121
  %123 = or i64 %119, %122
  store i64 %123, ptr %118, align 8, !tbaa !66
  br label %132

124:                                              ; preds = %115
  %125 = zext nneg i32 %116 to i64
  %126 = getelementptr inbounds [3 x i32], ptr @switch.table.write_and_store_CBP_block_bit, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4
  %128 = shl i32 %127, %113
  %129 = sext i32 %128 to i64
  %130 = or i64 %119, %129
  store i64 %130, ptr %118, align 8, !tbaa !66
  %131 = select i1 %8, i32 1, i32 17
  br label %139

132:                                              ; preds = %120, %110
  br i1 %9, label %142, label %133

133:                                              ; preds = %132
  %134 = select i1 %8, i1 true, i1 %26
  %135 = select i1 %8, i32 1, i32 17
  br i1 %134, label %139, label %136

136:                                              ; preds = %133
  %137 = select i1 %28, i32 19, i32 35
  %138 = select i1 %29, i32 18, i32 %137
  br label %142

139:                                              ; preds = %124, %133
  %140 = phi i32 [ %135, %133 ], [ %131, %124 ]
  %141 = icmp eq i32 %2, 2
  br i1 %141, label %206, label %142

142:                                              ; preds = %132, %136, %139
  %143 = phi i32 [ %140, %139 ], [ %138, %136 ], [ 0, %132 ]
  %144 = load i32, ptr %6, align 4, !tbaa !18
  %145 = icmp eq i32 %144, 0
  %146 = load ptr, ptr @img, align 8, !tbaa !10
  br i1 %145, label %166, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds i8, ptr %146, i64 31576
  %149 = load ptr, ptr %148, align 8, !tbaa !12
  %150 = getelementptr inbounds i8, ptr %6, i64 4
  %151 = load i32, ptr %150, align 4, !tbaa !20
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.macroblock, ptr %149, i64 %152
  %154 = getelementptr inbounds i8, ptr %153, i64 72
  %155 = load i32, ptr %154, align 8, !tbaa !48
  %156 = icmp eq i32 %155, 14
  br i1 %156, label %166, label %157

157:                                              ; preds = %147
  %158 = getelementptr inbounds i8, ptr %153, i64 408
  %159 = load i64, ptr %158, align 8, !tbaa !66
  %160 = add nsw i32 %143, %111
  %161 = zext i32 %160 to i64
  %162 = shl nuw i64 1, %161
  %163 = and i64 %159, %162
  %164 = ashr i64 %163, %161
  %165 = trunc i64 %164 to i32
  br label %166

166:                                              ; preds = %147, %157, %142
  %167 = phi i32 [ %165, %157 ], [ %43, %142 ], [ 1, %147 ]
  %168 = load i32, ptr %5, align 4, !tbaa !18
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %189, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds i8, ptr %146, i64 31576
  %172 = load ptr, ptr %171, align 8, !tbaa !12
  %173 = getelementptr inbounds i8, ptr %5, i64 4
  %174 = load i32, ptr %173, align 4, !tbaa !20
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.macroblock, ptr %172, i64 %175
  %177 = getelementptr inbounds i8, ptr %176, i64 72
  %178 = load i32, ptr %177, align 8, !tbaa !48
  %179 = icmp eq i32 %178, 14
  br i1 %179, label %189, label %180

180:                                              ; preds = %170
  %181 = getelementptr inbounds i8, ptr %176, i64 408
  %182 = load i64, ptr %181, align 8, !tbaa !66
  %183 = add nsw i32 %143, %112
  %184 = zext i32 %183 to i64
  %185 = shl nuw i64 1, %184
  %186 = and i64 %182, %185
  %187 = ashr i64 %186, %184
  %188 = trunc i64 %187 to i32
  br label %189

189:                                              ; preds = %170, %180, %166
  %190 = phi i32 [ %188, %180 ], [ %43, %166 ], [ 1, %170 ]
  %191 = shl nsw i32 %167, 1
  %192 = add nsw i32 %190, %191
  %193 = trunc i32 %3 to i16
  %194 = getelementptr inbounds i8, ptr %146, i64 31568
  %195 = load ptr, ptr %194, align 8, !tbaa !30
  %196 = getelementptr inbounds i8, ptr %195, i64 40
  %197 = load ptr, ptr %196, align 8, !tbaa !49
  %198 = getelementptr inbounds i8, ptr %197, i64 288
  %199 = sext i32 %2 to i64
  %200 = getelementptr inbounds [10 x i32], ptr @type2ctx_bcbp, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !6
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [10 x [4 x %struct.BiContextType]], ptr %198, i64 0, i64 %202
  %204 = sext i32 %192 to i64
  %205 = getelementptr inbounds %struct.BiContextType, ptr %203, i64 %204
  call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %193, ptr noundef nonnull %205) #11
  br label %206

206:                                              ; preds = %189, %139
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret void
}

declare dso_local void @getChroma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @write_significance_map(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, i32 noundef signext %4) local_unnamed_addr #1 {
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [10 x i32], ptr @maxpos, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = add nsw i32 %8, -1
  %10 = load ptr, ptr @img, align 8, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %10, i64 28
  %12 = load i32, ptr %11, align 4, !tbaa !67
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %0, i64 424
  %16 = load i32, ptr %15, align 8, !tbaa !38
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %5, %14
  %19 = getelementptr inbounds i8, ptr %10, i64 31568
  %20 = load ptr, ptr %19, align 8, !tbaa !30
  %21 = getelementptr inbounds i8, ptr %20, i64 40
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = getelementptr inbounds i8, ptr %22, i64 7328
  %24 = getelementptr inbounds [10 x i32], ptr @type2ctx_last, i64 0, i64 %6
  %25 = load i32, ptr %24, align 4, !tbaa !6
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], ptr %23, i64 0, i64 %26
  %28 = getelementptr inbounds i8, ptr %22, i64 9728
  br label %40

29:                                               ; preds = %14
  %30 = getelementptr inbounds i8, ptr %10, i64 31568
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  %32 = getelementptr inbounds i8, ptr %31, i64 40
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = getelementptr inbounds i8, ptr %33, i64 928
  %35 = getelementptr inbounds [10 x i32], ptr @type2ctx_last, i64 0, i64 %6
  %36 = load i32, ptr %35, align 4, !tbaa !6
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], ptr %34, i64 0, i64 %37
  %39 = getelementptr inbounds i8, ptr %33, i64 3328
  br label %40

40:                                               ; preds = %29, %18
  %41 = phi ptr [ %39, %29 ], [ %28, %18 ]
  %42 = phi ptr [ %38, %29 ], [ %27, %18 ]
  %43 = phi i1 [ false, %29 ], [ true, %18 ]
  %44 = getelementptr inbounds [10 x i32], ptr @type2ctx_last, i64 0, i64 %6
  %45 = load i32, ptr %44, align 4, !tbaa !6
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], ptr %41, i64 0, i64 %46
  switch i32 %2, label %50 [
    i32 7, label %48
    i32 1, label %48
  ]

48:                                               ; preds = %40, %40
  %49 = getelementptr inbounds i8, ptr %3, i64 -4
  br label %50

50:                                               ; preds = %40, %48
  %51 = phi i32 [ 0, %40 ], [ 1, %48 ]
  %52 = phi i32 [ %9, %40 ], [ %8, %48 ]
  %53 = phi ptr [ %3, %40 ], [ %49, %48 ]
  %54 = icmp slt i32 %51, %52
  br i1 %43, label %62, label %55

55:                                               ; preds = %50
  br i1 %54, label %56, label %117

56:                                               ; preds = %55
  %57 = getelementptr inbounds [10 x ptr], ptr @pos2ctx_map, i64 0, i64 %6
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = getelementptr inbounds [10 x ptr], ptr @pos2ctx_last, i64 0, i64 %6
  %60 = zext nneg i32 %51 to i64
  %61 = zext nneg i32 %52 to i64
  br label %69

62:                                               ; preds = %50
  br i1 %54, label %63, label %117

63:                                               ; preds = %62
  %64 = getelementptr inbounds [10 x ptr], ptr @pos2ctx_map_int, i64 0, i64 %6
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  %66 = getelementptr inbounds [10 x ptr], ptr @pos2ctx_last, i64 0, i64 %6
  %67 = zext nneg i32 %51 to i64
  %68 = zext nneg i32 %52 to i64
  br label %93

69:                                               ; preds = %56, %89
  %70 = phi i64 [ %60, %56 ], [ %91, %89 ]
  %71 = phi i32 [ %4, %56 ], [ %90, %89 ]
  %72 = getelementptr inbounds i32, ptr %53, i64 %70
  %73 = load i32, ptr %72, align 4, !tbaa !6
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i16
  %76 = getelementptr inbounds i32, ptr %58, i64 %70
  %77 = load i32, ptr %76, align 4, !tbaa !6
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.BiContextType, ptr %42, i64 %78
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %75, ptr noundef %79) #11
  br i1 %74, label %80, label %89

80:                                               ; preds = %69
  %81 = add nsw i32 %71, -1
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i16
  %84 = load ptr, ptr %59, align 8, !tbaa !10
  %85 = getelementptr inbounds i32, ptr %84, i64 %70
  %86 = load i32, ptr %85, align 4, !tbaa !6
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.BiContextType, ptr %47, i64 %87
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %83, ptr noundef nonnull %88) #11
  br i1 %82, label %117, label %89

89:                                               ; preds = %69, %80
  %90 = phi i32 [ %81, %80 ], [ %71, %69 ]
  %91 = add nuw nsw i64 %70, 1
  %92 = icmp eq i64 %91, %61
  br i1 %92, label %117, label %69

93:                                               ; preds = %63, %113
  %94 = phi i64 [ %67, %63 ], [ %115, %113 ]
  %95 = phi i32 [ %4, %63 ], [ %114, %113 ]
  %96 = getelementptr inbounds i32, ptr %53, i64 %94
  %97 = load i32, ptr %96, align 4, !tbaa !6
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i16
  %100 = getelementptr inbounds i32, ptr %65, i64 %94
  %101 = load i32, ptr %100, align 4, !tbaa !6
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.BiContextType, ptr %42, i64 %102
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %99, ptr noundef %103) #11
  br i1 %98, label %104, label %113

104:                                              ; preds = %93
  %105 = add nsw i32 %95, -1
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i16
  %108 = load ptr, ptr %66, align 8, !tbaa !10
  %109 = getelementptr inbounds i32, ptr %108, i64 %94
  %110 = load i32, ptr %109, align 4, !tbaa !6
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.BiContextType, ptr %47, i64 %111
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %107, ptr noundef nonnull %112) #11
  br i1 %106, label %117, label %113

113:                                              ; preds = %93, %104
  %114 = phi i32 [ %105, %104 ], [ %95, %93 ]
  %115 = add nuw nsw i64 %94, 1
  %116 = icmp eq i64 %115, %68
  br i1 %116, label %117, label %93

117:                                              ; preds = %80, %89, %104, %113, %55, %62
  ret void
}

; Function Attrs: nounwind
define dso_local void @write_significant_coefficients(ptr nocapture readnone %0, ptr noundef %1, i32 noundef signext %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [10 x i32], ptr @maxpos, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = getelementptr inbounds [10 x i32], ptr @type2ctx_abs, i64 0, i64 %5
  %9 = getelementptr inbounds [10 x i32], ptr @max_c2, i64 0, i64 %5
  %10 = getelementptr inbounds [10 x i32], ptr @type2ctx_abs, i64 0, i64 %5
  %11 = zext i32 %7 to i64
  br label %12

12:                                               ; preds = %4, %63
  %13 = phi i64 [ %11, %4 ], [ %67, %63 ]
  %14 = phi i32 [ 0, %4 ], [ %65, %63 ]
  %15 = phi i32 [ 1, %4 ], [ %64, %63 ]
  %16 = trunc nuw i64 %13 to i32
  %17 = add i64 %13, 4294967295
  %18 = and i64 %17, 4294967295
  %19 = getelementptr inbounds i32, ptr %3, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %63, label %22

22:                                               ; preds = %12
  %23 = icmp slt i32 %20, 1
  %24 = tail call i32 @llvm.abs.i32(i32 %20, i1 true)
  %25 = zext i1 %23 to i16
  %26 = icmp ugt i32 %24, 1
  %27 = zext i1 %26 to i16
  %28 = tail call i32 @llvm.smin.i32(i32 %15, i32 4)
  %29 = load ptr, ptr @img, align 8, !tbaa !10
  %30 = getelementptr inbounds i8, ptr %29, i64 31568
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  %32 = getelementptr inbounds i8, ptr %31, i64 40
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = getelementptr inbounds i8, ptr %33, i64 5728
  %35 = load i32, ptr %8, align 4, !tbaa !6
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x [5 x %struct.BiContextType]], ptr %34, i64 0, i64 %36
  %38 = sext i32 %28 to i64
  %39 = getelementptr inbounds %struct.BiContextType, ptr %37, i64 %38
  tail call void @biari_encode_symbol(ptr noundef %1, i16 noundef signext %27, ptr noundef nonnull %39) #11
  br i1 %26, label %40, label %56

40:                                               ; preds = %22
  %41 = load i32, ptr %9, align 4, !tbaa !6
  %42 = tail call i32 @llvm.smin.i32(i32 %14, i32 %41)
  %43 = add nsw i32 %24, -2
  %44 = load ptr, ptr @img, align 8, !tbaa !10
  %45 = getelementptr inbounds i8, ptr %44, i64 31568
  %46 = load ptr, ptr %45, align 8, !tbaa !30
  %47 = getelementptr inbounds i8, ptr %46, i64 40
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = getelementptr inbounds i8, ptr %48, i64 6528
  %50 = load i32, ptr %10, align 4, !tbaa !6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [10 x [5 x %struct.BiContextType]], ptr %49, i64 0, i64 %51
  %53 = sext i32 %42 to i64
  %54 = getelementptr inbounds %struct.BiContextType, ptr %52, i64 %53
  tail call void @unary_exp_golomb_level_encode(ptr noundef %1, i32 noundef signext %43, ptr noundef nonnull %54)
  %55 = add nsw i32 %14, 1
  br label %60

56:                                               ; preds = %22
  %57 = icmp eq i32 %15, 0
  %58 = add nsw i32 %15, 1
  %59 = select i1 %57, i32 0, i32 %58
  br label %60

60:                                               ; preds = %56, %40
  %61 = phi i32 [ 0, %40 ], [ %59, %56 ]
  %62 = phi i32 [ %55, %40 ], [ %14, %56 ]
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %1, i16 noundef signext %25) #11
  br label %63

63:                                               ; preds = %12, %60
  %64 = phi i32 [ %61, %60 ], [ %15, %12 ]
  %65 = phi i32 [ %62, %60 ], [ %14, %12 ]
  %66 = icmp sgt i32 %16, 1
  %67 = add nsw i64 %13, -1
  br i1 %66, label %12, label %68

68:                                               ; preds = %63
  ret void
}

; Function Attrs: nounwind
define dso_local void @unary_exp_golomb_level_encode(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 0, ptr noundef %2) #11
  br label %51

6:                                                ; preds = %3
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %33, label %8

8:                                                ; preds = %6
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %9 = icmp eq i32 %1, 2
  br i1 %9, label %33, label %10

10:                                               ; preds = %8
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %11 = icmp eq i32 %1, 3
  br i1 %11, label %33, label %12

12:                                               ; preds = %10
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %13 = icmp eq i32 %1, 4
  br i1 %13, label %33, label %14

14:                                               ; preds = %12
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %15 = icmp eq i32 %1, 5
  br i1 %15, label %33, label %16

16:                                               ; preds = %14
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %17 = icmp eq i32 %1, 6
  br i1 %17, label %33, label %18

18:                                               ; preds = %16
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %19 = icmp eq i32 %1, 7
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %21 = icmp eq i32 %1, 8
  br i1 %21, label %33, label %22

22:                                               ; preds = %20
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %23 = icmp eq i32 %1, 9
  br i1 %23, label %33, label %24

24:                                               ; preds = %22
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %25 = icmp eq i32 %1, 10
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %27 = icmp eq i32 %1, 11
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %29 = icmp eq i32 %1, 12
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 1, ptr noundef %2) #11
  %31 = add i32 %1, -13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %35

33:                                               ; preds = %8, %10, %12, %14, %16, %18, %20, %22, %24, %26, %28, %6
  tail call void @biari_encode_symbol(ptr noundef %0, i16 noundef signext 0, ptr noundef %2) #11
  br label %51

34:                                               ; preds = %30
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext 0) #11
  br label %51

35:                                               ; preds = %30, %35
  %36 = phi i32 [ %41, %35 ], [ 1, %30 ]
  %37 = phi i32 [ %40, %35 ], [ 0, %30 ]
  %38 = phi i32 [ %39, %35 ], [ %31, %30 ]
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext 1) #11
  %39 = sub i32 %38, %36
  %40 = add nuw nsw i32 %37, 1
  %41 = shl nuw i32 2, %37
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %35

43:                                               ; preds = %35
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext 0) #11
  br label %44

44:                                               ; preds = %43, %44
  %45 = phi i32 [ %46, %44 ], [ %40, %43 ]
  %46 = add nsw i32 %45, -1
  %47 = lshr i32 %39, %46
  %48 = trunc i32 %47 to i16
  %49 = and i16 %48, 1
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext %49) #11
  %50 = icmp eq i32 %46, 0
  br i1 %50, label %51, label %44

51:                                               ; preds = %44, %34, %33, %5
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeRunLevel_CABAC(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !33
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = load i32, ptr @writeRunLevel_CABAC.pos, align 4, !tbaa !6
  %10 = add nsw i32 %9, %8
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @writeRunLevel_CABAC.pos, align 4, !tbaa !6
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [64 x i32], ptr @writeRunLevel_CABAC.coeff, i64 0, i64 %12
  store i32 %4, ptr %13, align 4, !tbaa !6
  %14 = load i32, ptr @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !6
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !6
  br label %34

16:                                               ; preds = %2
  %17 = load ptr, ptr @img, align 8, !tbaa !10
  %18 = getelementptr inbounds i8, ptr %17, i64 31576
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = getelementptr inbounds i8, ptr %17, i64 12
  %21 = load i32, ptr %20, align 4, !tbaa !17
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.macroblock, ptr %19, i64 %22
  %24 = load i32, ptr @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !6
  %25 = icmp sgt i32 %24, 0
  %26 = getelementptr inbounds i8, ptr %0, i64 24
  %27 = load i32, ptr %26, align 8, !tbaa !41
  br i1 %25, label %28, label %32

28:                                               ; preds = %16
  tail call void @write_and_store_CBP_block_bit(ptr noundef %23, ptr noundef %1, i32 noundef signext %27, i32 noundef signext 1)
  %29 = load i32, ptr %26, align 8, !tbaa !41
  %30 = load i32, ptr @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !6
  tail call void @write_significance_map(ptr noundef %23, ptr noundef %1, i32 noundef signext %29, ptr noundef nonnull @writeRunLevel_CABAC.coeff, i32 noundef signext %30)
  %31 = load i32, ptr %26, align 8, !tbaa !41
  tail call void @write_significant_coefficients(ptr poison, ptr noundef %1, i32 noundef signext %31, ptr noundef nonnull @writeRunLevel_CABAC.coeff)
  br label %33

32:                                               ; preds = %16
  tail call void @write_and_store_CBP_block_bit(ptr noundef %23, ptr noundef %1, i32 noundef signext %27, i32 noundef signext 0)
  br label %33

33:                                               ; preds = %32, %28
  store i32 0, ptr @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !6
  store i32 0, ptr @writeRunLevel_CABAC.pos, align 4, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) @writeRunLevel_CABAC.coeff, i8 0, i64 256, i1 false)
  br label %34

34:                                               ; preds = %33, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind
define dso_local void @exp_golomb_encode_eq_prob(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #1 {
  %4 = shl nuw i32 1, %2
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %12, %6 ], [ %4, %3 ]
  %8 = phi i32 [ %11, %6 ], [ %2, %3 ]
  %9 = phi i32 [ %10, %6 ], [ %1, %3 ]
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext 1) #11
  %10 = sub i32 %9, %7
  %11 = add nsw i32 %8, 1
  %12 = shl nuw i32 1, %11
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  %15 = phi i32 [ %1, %3 ], [ %10, %6 ]
  %16 = phi i32 [ %2, %3 ], [ %11, %6 ]
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext 0) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14, %18
  %19 = phi i32 [ %20, %18 ], [ %16, %14 ]
  %20 = add nsw i32 %19, -1
  %21 = lshr i32 %15, %20
  %22 = trunc i32 %21 to i16
  %23 = and i16 %22, 1
  tail call void @biari_encode_symbol_eq_prob(ptr noundef %0, i16 noundef signext %23) #11
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %25, label %18

25:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn nounwind }

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
!12 = !{!13, !11, i64 31576}
!13 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !14, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !11, i64 104, !11, i64 112, !7, i64 120, !11, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !11, i64 14136, !11, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !11, i64 31560, !11, i64 31568, !11, i64 31576, !8, i64 31584, !11, i64 89184, !11, i64 89192, !7, i64 89200, !7, i64 89204, !7, i64 89208, !7, i64 89212, !8, i64 89216, !7, i64 89280, !7, i64 89284, !7, i64 89288, !7, i64 89292, !7, i64 89296, !15, i64 89304, !7, i64 89312, !7, i64 89316, !7, i64 89320, !7, i64 89324, !11, i64 89328, !11, i64 89336, !11, i64 89344, !11, i64 89352, !8, i64 89360, !7, i64 89392, !7, i64 89396, !7, i64 89400, !7, i64 89404, !7, i64 89408, !7, i64 89412, !7, i64 89416, !7, i64 89420, !8, i64 89424, !7, i64 90192, !7, i64 90196, !7, i64 90200, !7, i64 90204, !7, i64 90208, !7, i64 90212, !7, i64 90216, !7, i64 90220, !7, i64 90224, !7, i64 90228, !7, i64 90232, !7, i64 90236, !7, i64 90240, !8, i64 90244, !7, i64 90248, !7, i64 90252, !8, i64 90256, !7, i64 90264, !7, i64 90268, !7, i64 90272, !7, i64 90276, !7, i64 90280, !7, i64 90284, !7, i64 90288, !7, i64 90292, !7, i64 90296, !7, i64 90300, !7, i64 90304, !7, i64 90308, !7, i64 90312, !7, i64 90316, !7, i64 90320, !7, i64 90324, !7, i64 90328, !11, i64 90336, !7, i64 90344, !7, i64 90348, !7, i64 90352, !7, i64 90356, !7, i64 90360, !15, i64 90368, !7, i64 90376, !7, i64 90380, !7, i64 90384, !7, i64 90388, !7, i64 90392, !7, i64 90396, !7, i64 90400, !11, i64 90408, !7, i64 90416, !7, i64 90420, !7, i64 90424, !7, i64 90428, !7, i64 90432, !7, i64 90436, !7, i64 90440, !7, i64 90444, !7, i64 90448, !7, i64 90452, !7, i64 90456, !7, i64 90460, !7, i64 90464, !7, i64 90468, !7, i64 90472, !7, i64 90476, !7, i64 90480, !7, i64 90484, !7, i64 90488, !7, i64 90492, !7, i64 90496, !7, i64 90500, !11, i64 90504, !11, i64 90512, !11, i64 90520, !7, i64 90528, !7, i64 90532, !7, i64 90536, !7, i64 90540, !7, i64 90544, !7, i64 90548, !7, i64 90552, !7, i64 90556, !7, i64 90560, !8, i64 90564, !7, i64 90572, !7, i64 90576, !7, i64 90580, !16, i64 90584, !7, i64 90588, !7, i64 90592}
!14 = !{!"float", !8, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!13, !7, i64 12}
!18 = !{!19, !7, i64 0}
!19 = !{!"pix_pos", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!20 = !{!19, !7, i64 4}
!21 = !{!22, !11, i64 40}
!22 = !{!"syntaxelement", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !11, i64 32, !11, i64 40}
!23 = !{!22, !7, i64 0}
!24 = !{!25, !11, i64 0}
!25 = !{!"datapartition", !11, i64 0, !26, i64 8, !11, i64 104}
!26 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !11, i64 72, !11, i64 80, !7, i64 88, !7, i64 92}
!27 = !{!28, !7, i64 40}
!28 = !{!"", !7, i64 0, !7, i64 4, !8, i64 8, !7, i64 12, !7, i64 16, !8, i64 20, !8, i64 21, !7, i64 24, !7, i64 28, !11, i64 32, !7, i64 40}
!29 = !{!22, !7, i64 12}
!30 = !{!13, !11, i64 31568}
!31 = !{!32, !11, i64 32}
!32 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !7, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !7, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !8, i64 128}
!33 = !{!22, !7, i64 4}
!34 = !{!35, !7, i64 448}
!35 = !{!"macroblock", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !8, i64 20, !11, i64 56, !11, i64 64, !7, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !7, i64 364, !36, i64 368, !8, i64 376, !8, i64 392, !36, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !16, i64 476, !15, i64 480, !7, i64 488, !7, i64 492, !7, i64 496, !7, i64 500, !7, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520}
!36 = !{!"long long", !8, i64 0}
!37 = !{!35, !7, i64 432}
!38 = !{!35, !7, i64 424}
!39 = !{!35, !7, i64 452}
!40 = !{!35, !7, i64 436}
!41 = !{!22, !7, i64 24}
!42 = !{!13, !7, i64 24}
!43 = !{!35, !11, i64 56}
!44 = !{!35, !7, i64 520}
!45 = !{!35, !11, i64 64}
!46 = !{!22, !7, i64 8}
!47 = !{!35, !7, i64 468}
!48 = !{!35, !7, i64 72}
!49 = !{!32, !11, i64 40}
!50 = !{!51, !11, i64 6480}
!51 = !{!"storable_picture", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !7, i64 6360, !7, i64 6364, !7, i64 6368, !7, i64 6372, !7, i64 6376, !7, i64 6380, !7, i64 6384, !7, i64 6388, !7, i64 6392, !7, i64 6396, !7, i64 6400, !7, i64 6404, !7, i64 6408, !7, i64 6412, !7, i64 6416, !11, i64 6424, !11, i64 6432, !11, i64 6440, !11, i64 6448, !11, i64 6456, !11, i64 6464, !11, i64 6472, !11, i64 6480, !11, i64 6488, !11, i64 6496, !11, i64 6504, !11, i64 6512, !11, i64 6520, !11, i64 6528, !11, i64 6536, !11, i64 6544, !7, i64 6552, !7, i64 6556, !7, i64 6560, !7, i64 6564, !7, i64 6568, !7, i64 6572, !7, i64 6576}
!52 = !{!13, !7, i64 72}
!53 = !{!13, !7, i64 76}
!54 = !{!19, !7, i64 8}
!55 = !{!19, !7, i64 12}
!56 = !{!13, !7, i64 90220}
!57 = !{!19, !7, i64 20}
!58 = !{!19, !7, i64 16}
!59 = !{!8, !8, i64 0}
!60 = !{!35, !7, i64 492}
!61 = !{!35, !7, i64 416}
!62 = !{!35, !7, i64 364}
!63 = !{!13, !7, i64 90548}
!64 = !{!13, !7, i64 84}
!65 = !{!13, !7, i64 80}
!66 = !{!35, !36, i64 408}
!67 = !{!13, !7, i64 28}
