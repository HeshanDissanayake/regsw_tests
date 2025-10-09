; ModuleID = 'src/rtp.c'
source_filename = "src/rtp.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@CurrentRTPTimestamp = dso_local local_unnamed_addr global i32 0, align 4
@CurrentRTPSequenceNumber = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"p->v == 2\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"src/rtp.c\00", align 1
@__PRETTY_FUNCTION__.ComposeRTPPacket = private unnamed_addr constant [36 x i8] c"int ComposeRTPPacket(RTPpacket_t *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"p->p == 0\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"p->x == 0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"p->cc == 0\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"p->m == 0 || p->m == 1\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"p->pt < 128\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"p->seq < 65536\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"p->payload != NULL\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"p->paylen < 65536 - 40\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"p->packet != NULL\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"f != NULL\00", align 1
@__PRETTY_FUNCTION__.WriteRTPPacket = private unnamed_addr constant [42 x i8] c"int WriteRTPPacket(RTPpacket_t *, FILE *)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"p != NULL\00", align 1
@f = dso_local local_unnamed_addr global ptr null, align 8
@__PRETTY_FUNCTION__.WriteRTPNALU = private unnamed_addr constant [27 x i8] c"int WriteRTPNALU(NALU_t *)\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"n != NULL\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"n->len < 65000\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-1\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-2\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-3\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"Cannot write %d bytes of RTP packet to outfile, exit\0A\00", align 1
@RTPUpdateTimestamp.oldtr = internal unnamed_addr global i32 -1, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"Fatal: cannot open bitstream file '%s', exit (-1)\0A\00", align 1

; Function Attrs: nounwind
define dso_local noundef signext i32 @ComposeRTPPacket(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 83, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef signext 84, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef signext 85, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %0, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef signext 86, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %0, i64 16
  %22 = load i32, ptr %21, align 8, !tbaa !15
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef signext 87, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %0, i64 20
  %27 = load i32, ptr %26, align 4, !tbaa !16
  %28 = icmp ult i32 %27, 128
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef signext 88, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, ptr %0, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !17
  %33 = icmp ult i32 %32, 65536
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef signext 89, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, ptr %0, i64 40
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef signext 90, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %0, i64 48
  %42 = load i32, ptr %41, align 8, !tbaa !19
  %43 = icmp ult i32 %42, 65496
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef signext 91, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %0, i64 56
  %47 = load ptr, ptr %46, align 8, !tbaa !20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef signext 92, ptr noundef nonnull @__PRETTY_FUNCTION__.ComposeRTPPacket) #10
  unreachable

50:                                               ; preds = %45
  store i8 -128, ptr %47, align 1, !tbaa !21
  %51 = load i32, ptr %21, align 8, !tbaa !15
  %52 = shl i32 %51, 7
  %53 = load i32, ptr %26, align 4, !tbaa !16
  %54 = and i32 %53, 127
  %55 = or disjoint i32 %54, %52
  %56 = trunc i32 %55 to i8
  %57 = load ptr, ptr %46, align 8, !tbaa !20
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %56, ptr %58, align 1, !tbaa !21
  %59 = load i32, ptr %31, align 8, !tbaa !17
  %60 = trunc i32 %59 to i16
  %61 = tail call noundef i16 @llvm.bswap.i16(i16 %60)
  %62 = load ptr, ptr %46, align 8, !tbaa !20
  %63 = getelementptr inbounds i8, ptr %62, i64 2
  store i16 %61, ptr %63, align 1
  %64 = getelementptr inbounds i8, ptr %0, i64 28
  %65 = load i32, ptr %64, align 4, !tbaa !22
  %66 = tail call noundef i32 @llvm.bswap.i32(i32 %65)
  %67 = load ptr, ptr %46, align 8, !tbaa !20
  %68 = getelementptr inbounds i8, ptr %67, i64 4
  store i32 %66, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !23
  %71 = tail call noundef i32 @llvm.bswap.i32(i32 %70)
  %72 = load ptr, ptr %46, align 8, !tbaa !20
  %73 = getelementptr inbounds i8, ptr %72, i64 8
  store i32 %71, ptr %73, align 1
  %74 = load ptr, ptr %46, align 8, !tbaa !20
  %75 = getelementptr inbounds i8, ptr %74, i64 12
  %76 = load ptr, ptr %36, align 8, !tbaa !18
  %77 = load i32, ptr %41, align 8, !tbaa !19
  %78 = zext i32 %77 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %75, ptr align 1 %76, i64 %78, i1 false)
  %79 = load i32, ptr %41, align 8, !tbaa !19
  %80 = add i32 %79, 12
  %81 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %80, ptr %81, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local signext range(i32 -1, 1) i32 @WriteRTPPacket(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 -1, ptr %3, align 4, !tbaa !25
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef signext 151, ptr noundef nonnull @__PRETTY_FUNCTION__.WriteRTPPacket) #10
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef signext 152, ptr noundef nonnull @__PRETTY_FUNCTION__.WriteRTPPacket) #10
  unreachable

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %0, i64 64
  %11 = tail call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %1)
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %1)
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %0, i64 56
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = load i32, ptr %10, align 8, !tbaa !24
  %20 = zext i32 %19 to i64
  %21 = tail call i64 @fwrite(ptr noundef %18, i64 noundef %20, i64 noundef 1, ptr noundef nonnull %1)
  %22 = icmp ne i64 %21, 1
  %23 = sext i1 %22 to i32
  br label %24

24:                                               ; preds = %16, %13, %9
  %25 = phi i32 [ -1, %9 ], [ -1, %13 ], [ %23, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %25
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local signext i32 @WriteRTPNALU(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @f, align 8, !tbaa !26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef signext 192, ptr noundef nonnull @__PRETTY_FUNCTION__.WriteRTPNALU) #10
  unreachable

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef signext 193, ptr noundef nonnull @__PRETTY_FUNCTION__.WriteRTPNALU) #10
  unreachable

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %0, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !27
  %12 = icmp ult i32 %11, 65000
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef signext 194, ptr noundef nonnull @__PRETTY_FUNCTION__.WriteRTPNALU) #10
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %0, i64 20
  %16 = load i32, ptr %15, align 4, !tbaa !29
  %17 = shl i32 %16, 7
  %18 = getelementptr inbounds i8, ptr %0, i64 16
  %19 = load i32, ptr %18, align 8, !tbaa !30
  %20 = shl i32 %19, 5
  %21 = or i32 %20, %17
  %22 = getelementptr inbounds i8, ptr %0, i64 12
  %23 = load i32, ptr %22, align 4, !tbaa !31
  %24 = or i32 %21, %23
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !32
  store i8 %25, ptr %27, align 1, !tbaa !21
  %28 = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #11
  br label %31

31:                                               ; preds = %30, %14
  %32 = tail call noalias dereferenceable_or_null(65508) ptr @malloc(i64 noundef 65508) #12
  %33 = getelementptr inbounds i8, ptr %28, i64 56
  store ptr %32, ptr %33, align 8, !tbaa !20
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #11
  br label %36

36:                                               ; preds = %35, %31
  %37 = tail call noalias dereferenceable_or_null(65508) ptr @malloc(i64 noundef 65508) #12
  %38 = getelementptr inbounds i8, ptr %28, i64 40
  store ptr %37, ptr %38, align 8, !tbaa !18
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #11
  br label %41

41:                                               ; preds = %40, %36
  store i32 2, ptr %28, align 8, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %28, i64 4
  store i32 0, ptr %42, align 4, !tbaa !12
  %43 = getelementptr inbounds i8, ptr %28, i64 8
  store i32 0, ptr %43, align 8, !tbaa !13
  %44 = getelementptr inbounds i8, ptr %28, i64 12
  store i32 0, ptr %44, align 4, !tbaa !14
  %45 = load i32, ptr %0, align 8, !tbaa !33
  %46 = icmp eq i32 %45, 4
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds i8, ptr %28, i64 16
  store i32 %47, ptr %48, align 8, !tbaa !15
  %49 = getelementptr inbounds i8, ptr %28, i64 20
  store i32 105, ptr %49, align 4, !tbaa !16
  %50 = load i32, ptr @CurrentRTPSequenceNumber, align 4, !tbaa !25
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr @CurrentRTPSequenceNumber, align 4, !tbaa !25
  %52 = getelementptr inbounds i8, ptr %28, i64 24
  store i32 %50, ptr %52, align 8, !tbaa !17
  %53 = load i32, ptr @CurrentRTPTimestamp, align 4, !tbaa !25
  %54 = getelementptr inbounds i8, ptr %28, i64 28
  store i32 %53, ptr %54, align 4, !tbaa !22
  %55 = getelementptr inbounds i8, ptr %28, i64 32
  store i32 305419896, ptr %55, align 8, !tbaa !23
  %56 = load i32, ptr %10, align 4, !tbaa !27
  %57 = getelementptr inbounds i8, ptr %28, i64 48
  store i32 %56, ptr %57, align 8, !tbaa !19
  %58 = load ptr, ptr %26, align 8, !tbaa !32
  %59 = zext i32 %56 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %58, i64 %59, i1 false)
  %60 = tail call signext i32 @ComposeRTPPacket(ptr noundef nonnull %28)
  %61 = load ptr, ptr @f, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 -1, ptr %2, align 4, !tbaa !25
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %41
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef signext 151, ptr noundef nonnull @__PRETTY_FUNCTION__.WriteRTPPacket) #10
  unreachable

64:                                               ; preds = %41
  %65 = getelementptr inbounds i8, ptr %28, i64 64
  %66 = tail call i64 @fwrite(ptr noundef nonnull %65, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %61)
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %61)
  %70 = icmp eq i64 %69, 1
  br i1 %70, label %73, label %71

71:                                               ; preds = %64, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %72 = load i32, ptr %65, align 8, !tbaa !24
  br label %79

73:                                               ; preds = %68
  %74 = load ptr, ptr %33, align 8, !tbaa !20
  %75 = load i32, ptr %65, align 8, !tbaa !24
  %76 = zext i32 %75 to i64
  %77 = tail call i64 @fwrite(ptr noundef %74, i64 noundef %76, i64 noundef 1, ptr noundef nonnull %61)
  %78 = icmp eq i64 %77, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br i1 %78, label %82, label %79

79:                                               ; preds = %71, %73
  %80 = phi i32 [ %72, %71 ], [ %75, %73 ]
  %81 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef signext %80)
  tail call void @exit(i32 noundef signext -1) #10
  unreachable

82:                                               ; preds = %73
  tail call void @free(ptr noundef %74) #11
  %83 = load ptr, ptr %38, align 8, !tbaa !18
  tail call void @free(ptr noundef %83) #11
  tail call void @free(ptr noundef nonnull %28) #11
  %84 = load i32, ptr %10, align 4, !tbaa !27
  %85 = shl i32 %84, 3
  ret i32 %85
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local void @RTPUpdateTimestamp(i32 noundef signext %0) local_unnamed_addr #8 {
  %2 = load i32, ptr @RTPUpdateTimestamp.oldtr, align 4, !tbaa !25
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = sub nsw i32 %0, %2
  %6 = icmp slt i32 %5, -10
  %7 = add nsw i32 %5, 256
  %8 = select i1 %6, i32 %7, i32 %5
  %9 = mul nsw i32 %8, 1000
  %10 = load i32, ptr @CurrentRTPTimestamp, align 4, !tbaa !25
  %11 = add nsw i32 %10, %9
  br label %12

12:                                               ; preds = %1, %4
  %13 = phi i32 [ %11, %4 ], [ 0, %1 ]
  %14 = phi i32 [ %0, %4 ], [ 0, %1 ]
  store i32 %13, ptr @CurrentRTPTimestamp, align 4, !tbaa !25
  store i32 %14, ptr @RTPUpdateTimestamp.oldtr, align 4, !tbaa !25
  ret void
}

; Function Attrs: nounwind
define dso_local void @OpenRTPFile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.20) #11
  store ptr %2, ptr @f, align 8, !tbaa !26
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call signext i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %0)
  tail call void @exit(i32 noundef signext -1) #10
  unreachable

6:                                                ; preds = %1
  ret void
}

declare dso_local ptr @fopen64(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
define dso_local void @CloseRTPFile() local_unnamed_addr #4 {
  %1 = load ptr, ptr @f, align 8, !tbaa !26
  %2 = tail call signext i32 @fclose(ptr noundef %1)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !8, i64 48, !11, i64 56, !8, i64 64}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !8, i64 4}
!13 = !{!7, !8, i64 8}
!14 = !{!7, !8, i64 12}
!15 = !{!7, !8, i64 16}
!16 = !{!7, !8, i64 20}
!17 = !{!7, !8, i64 24}
!18 = !{!7, !11, i64 40}
!19 = !{!7, !8, i64 48}
!20 = !{!7, !11, i64 56}
!21 = !{!9, !9, i64 0}
!22 = !{!7, !8, i64 28}
!23 = !{!7, !8, i64 32}
!24 = !{!7, !8, i64 64}
!25 = !{!8, !8, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{!28, !8, i64 4}
!28 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !11, i64 24}
!29 = !{!28, !8, i64 20}
!30 = !{!28, !8, i64 16}
!31 = !{!28, !8, i64 12}
!32 = !{!28, !11, i64 24}
!33 = !{!28, !8, i64 0}
