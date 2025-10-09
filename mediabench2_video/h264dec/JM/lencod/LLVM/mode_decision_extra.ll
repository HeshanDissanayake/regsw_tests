; ModuleID = 'src/mode_decision.c'
source_filename = "src/mode_decision.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.RD_8x8DATA = type { i32, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], [3 x [16 x [16 x i32]]], [4 x i16], [4 x i16], [4 x i8], [4 x i8], [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i32]] }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_PARAMS = type { double, double, i32, [15 x i16], [2 x i16], i16, [2 x i16], [2 x i32] }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@b8_mode_table = dso_local local_unnamed_addr constant [6 x i32] [i32 0, i32 4, i32 5, i32 6, i32 7, i32 0], align 4
@mb_mode_table = dso_local local_unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 3, i32 8, i32 10, i32 9, i32 13, i32 14], align 4
@mb_mode_table_RCT = dso_local local_unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 8, i32 10, i32 10, i32 10, i32 10, i32 9, i32 13], align 4
@imgY_org = external dso_local local_unnamed_addr global ptr, align 8
@diffy = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@img = external dso_local local_unnamed_addr global ptr, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@DELTA_QP = external dso_local local_unnamed_addr global i32, align 4
@QP = external dso_local local_unnamed_addr global i32, align 4
@DELTA_QP2 = external dso_local local_unnamed_addr global i32, align 4
@QP2 = external dso_local local_unnamed_addr global i32, align 4
@enc_picture = external dso_local local_unnamed_addr global ptr, align 8
@imgUV_org = external dso_local local_unnamed_addr global ptr, align 8
@si_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@sp2_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@listXsize = external dso_local local_unnamed_addr global [6 x i32], align 4
@listX = external dso_local local_unnamed_addr global [6 x ptr], align 8
@refbits = external dso_local local_unnamed_addr global ptr, align 8
@motion_cost = external dso_local local_unnamed_addr global ptr, align 8
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@tr8x8 = external dso_local global %struct.RD_8x8DATA, align 4
@tr4x4 = external dso_local global %struct.RD_8x8DATA, align 4
@pred = external dso_local global [16 x [16 x i16]], align 2
@cs_cm = external dso_local local_unnamed_addr global ptr, align 8
@direct_ref_idx = external dso_local local_unnamed_addr global ptr, align 8
@direct_pdir = external dso_local local_unnamed_addr global ptr, align 8
@cbp_blk8x8 = external dso_local local_unnamed_addr global i32, align 4
@lrec = external dso_local local_unnamed_addr global ptr, align 8
@rec_resG = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@resTrans_R = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@resTrans_B = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@mprRGB = external dso_local local_unnamed_addr global [3 x [16 x [16 x i32]]], align 4
@cs_b8 = external dso_local local_unnamed_addr global ptr, align 8
@cbp8x8 = external dso_local local_unnamed_addr global i32, align 4
@cnt_nonz_8x8 = external dso_local local_unnamed_addr global i32, align 4
@__const.encode_one_macroblock.bmcost = private unnamed_addr constant [5 x i32] [i32 2147483647, i32 0, i32 0, i32 0, i32 0], align 4
@best_mode = external dso_local local_unnamed_addr global i16, align 2
@bi_pred_me = external dso_local global i16, align 2
@best8x8fwref = external dso_local local_unnamed_addr global [15 x [4 x i16]], align 2
@best8x8pdir = external dso_local local_unnamed_addr global [15 x [4 x i16]], align 2
@best8x8bwref = external dso_local local_unnamed_addr global [15 x [4 x i16]], align 2
@giRDOpt_B8OnlyFlag = external dso_local local_unnamed_addr global i32, align 4
@cs_mb = external dso_local local_unnamed_addr global ptr, align 8
@cofAC_8x8ts = external dso_local local_unnamed_addr global ptr, align 8
@best8x8mode = external dso_local local_unnamed_addr global [4 x i16], align 2
@cbp8_8x8ts = external dso_local local_unnamed_addr global i32, align 4
@cbp_blk8_8x8ts = external dso_local local_unnamed_addr global i64, align 8
@cnt_nonz8_8x8ts = external dso_local local_unnamed_addr global i32, align 4
@cofAC8x8 = external dso_local local_unnamed_addr global ptr, align 8
@gaaiMBAFF_NZCoeff = external dso_local local_unnamed_addr global [4 x [12 x i32]], align 4
@cbp_chroma_block = external dso_local local_unnamed_addr global [2 x [4 x [4 x i32]]], align 4
@temp_imgU = dso_local local_unnamed_addr global [16 x [16 x i16]] zeroinitializer, align 2
@temp_imgV = dso_local local_unnamed_addr global [16 x [16 x i16]] zeroinitializer, align 2
@cofAC = external dso_local local_unnamed_addr global ptr, align 8
@temp_imgY = dso_local local_unnamed_addr global [16 x [16 x i16]] zeroinitializer, align 2
@resTrans_G = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resB = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@rec_resR = external dso_local local_unnamed_addr global [16 x [16 x i32]], align 4
@cbp = external dso_local local_unnamed_addr global i32, align 4
@rdopt = external dso_local local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local void @rc_store_diff(i32 noundef signext %0, i32 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %5 = sext i32 %1 to i64
  %6 = sext i32 %0 to i64
  %7 = getelementptr ptr, ptr %4, i64 %5
  br label %8

8:                                                ; preds = %3, %25
  %9 = phi i64 [ 0, %3 ], [ %26, %25 ]
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %23, %10 ]
  %12 = getelementptr ptr, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr i16, ptr %13, i64 %9
  %15 = getelementptr i16, ptr %14, i64 %6
  %16 = load i16, ptr %15, align 2, !tbaa !10
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds [16 x i16], ptr %2, i64 %11, i64 %9
  %19 = load i16, ptr %18, align 2, !tbaa !10
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 %17, %20
  %22 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %11, i64 %9
  store i32 %21, ptr %22, align 4, !tbaa !12
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp eq i64 %23, 16
  br i1 %24, label %25, label %10

25:                                               ; preds = %10
  %26 = add nuw nsw i64 %9, 1
  %27 = icmp eq i64 %26, 16
  br i1 %27, label %28, label %8

28:                                               ; preds = %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @update_rc(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %53

7:                                                ; preds = %2
  %8 = tail call double @calc_MAD() #12
  %9 = load ptr, ptr @img, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 90408
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds i8, ptr %9, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %11, i64 %14
  store double %8, ptr %15, align 8, !tbaa !20
  %16 = load ptr, ptr @input, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 3920
  %18 = load i32, ptr %17, align 8, !tbaa !21
  %19 = getelementptr inbounds i8, ptr %9, i64 90432
  %20 = load i32, ptr %19, align 8, !tbaa !23
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %7
  %23 = getelementptr inbounds i8, ptr %9, i64 90368
  %24 = load double, ptr %23, align 8, !tbaa !24
  %25 = fadd double %8, %24
  store double %25, ptr %23, align 8, !tbaa !24
  %26 = getelementptr inbounds i8, ptr %0, i64 364
  %27 = load i32, ptr %26, align 4, !tbaa !25
  %28 = icmp ne i32 %27, 0
  %29 = icmp eq i16 %1, 10
  %30 = or i1 %29, %28
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %32, align 8, !tbaa !28
  %33 = getelementptr inbounds i8, ptr %0, i64 488
  %34 = load i32, ptr %33, align 8, !tbaa !29
  %35 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %34, ptr %35, align 4, !tbaa !30
  %36 = getelementptr inbounds i8, ptr %9, i64 40
  store i32 %34, ptr %36, align 8, !tbaa !31
  br label %37

37:                                               ; preds = %22, %31
  %38 = phi i32 [ 0, %31 ], [ 1, %22 ]
  %39 = getelementptr inbounds i8, ptr %0, i64 496
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds i8, ptr %16, i64 3556
  %41 = load i32, ptr %40, align 4, !tbaa !32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, ptr %0, i64 424
  %45 = load i32, ptr %44, align 8, !tbaa !33
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds i8, ptr %0, i64 8
  %48 = load i32, ptr %47, align 8, !tbaa !28
  %49 = getelementptr inbounds i8, ptr %0, i64 12
  %50 = select i1 %46, ptr @DELTA_QP, ptr @DELTA_QP2
  %51 = select i1 %46, ptr @QP, ptr @QP2
  store i32 %48, ptr %50, align 4, !tbaa !12
  %52 = load i32, ptr %49, align 4, !tbaa !30
  store i32 %52, ptr %51, align 4, !tbaa !12
  br label %53

53:                                               ; preds = %43, %7, %37, %2
  ret void
}

declare dso_local double @calc_MAD() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @fast_mode_intra_decision(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca [2 x %struct.pix_pos], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #12
  %5 = load ptr, ptr @img, align 8, !tbaa !6
  %6 = getelementptr inbounds i8, ptr %5, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !19
  call void @getNeighbour(i32 noundef signext %7, i32 noundef signext -1, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %4) #12
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !19
  %11 = getelementptr inbounds i8, ptr %4, i64 24
  call void @getNeighbour(i32 noundef signext %10, i32 noundef signext -1, i32 noundef signext 0, i32 noundef signext 0, ptr noundef nonnull %11) #12
  %12 = load ptr, ptr @img, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %12, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !19
  call void @getNeighbour(i32 noundef signext %14, i32 noundef signext 0, i32 noundef signext -1, i32 noundef signext 0, ptr noundef nonnull %3) #12
  %15 = fmul double %1, 0x3F65555555555555
  %16 = load ptr, ptr @img, align 8, !tbaa !6
  %17 = getelementptr inbounds i8, ptr %16, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds i8, ptr %16, i64 90296
  %20 = load i32, ptr %19, align 8, !tbaa !35
  %21 = add nsw i32 %20, -1
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %186, label %23

23:                                               ; preds = %2
  %24 = load i32, ptr %11, align 4, !tbaa !36
  %25 = load i32, ptr %3, align 4, !tbaa !36
  %26 = getelementptr inbounds i8, ptr %16, i64 136
  %27 = load i32, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds i8, ptr %16, i64 90288
  %29 = load i32, ptr %28, align 8, !tbaa !39
  %30 = add nsw i32 %29, -1
  %31 = icmp ne i32 %27, %30
  %32 = icmp ne i32 %24, 0
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp ne i32 %25, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %186

36:                                               ; preds = %23
  %37 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %16, i64 172
  %39 = load i32, ptr %38, align 4, !tbaa !40
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %16, i64 168
  %44 = load i32, ptr %43, align 8, !tbaa !41
  %45 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %46 = getelementptr inbounds i8, ptr %45, i64 6424
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds i8, ptr %16, i64 156
  %49 = load i32, ptr %48, align 4, !tbaa !44
  %50 = sext i32 %49 to i64
  %51 = getelementptr ptr, ptr %47, i64 %50
  %52 = getelementptr i8, ptr %51, i64 -8
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds i8, ptr %16, i64 152
  %55 = load i32, ptr %54, align 8, !tbaa !45
  %56 = sext i32 %44 to i64
  %57 = sext i32 %55 to i64
  %58 = getelementptr i16, ptr %42, i64 %56
  %59 = getelementptr i16, ptr %53, i64 %57
  %60 = getelementptr ptr, ptr %37, i64 %40
  %61 = getelementptr ptr, ptr %47, i64 %50
  br label %96

62:                                               ; preds = %96
  %63 = load ptr, ptr @imgUV_org, align 8, !tbaa !6
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %16, i64 180
  %66 = load i32, ptr %65, align 4, !tbaa !46
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = getelementptr inbounds i8, ptr %16, i64 176
  %71 = load i32, ptr %70, align 8, !tbaa !47
  %72 = getelementptr inbounds i8, ptr %45, i64 6464
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds i8, ptr %16, i64 164
  %76 = load i32, ptr %75, align 4, !tbaa !49
  %77 = add nsw i32 %76, -1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %74, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %16, i64 160
  %82 = load i32, ptr %81, align 8, !tbaa !50
  %83 = sext i32 %71 to i64
  %84 = add nsw i32 %82, -1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %63, i64 8
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds ptr, ptr %87, i64 %67
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %73, i64 8
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = getelementptr inbounds ptr, ptr %91, i64 %78
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = sext i32 %82 to i64
  %95 = sext i32 %76 to i64
  br label %126

96:                                               ; preds = %36, %96
  %97 = phi i64 [ 0, %36 ], [ %124, %96 ]
  %98 = phi i64 [ 0, %36 ], [ %123, %96 ]
  %99 = getelementptr i16, ptr %58, i64 %97
  %100 = load i16, ptr %99, align 2, !tbaa !10
  %101 = zext i16 %100 to i32
  %102 = getelementptr i16, ptr %59, i64 %97
  %103 = load i16, ptr %102, align 2, !tbaa !10
  %104 = zext i16 %103 to i32
  %105 = sub nsw i32 %101, %104
  %106 = call i32 @llvm.abs.i32(i32 %105, i1 true)
  %107 = zext nneg i32 %106 to i64
  %108 = add nsw i64 %98, %107
  %109 = getelementptr ptr, ptr %60, i64 %97
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = getelementptr inbounds i16, ptr %110, i64 %56
  %112 = load i16, ptr %111, align 2, !tbaa !10
  %113 = zext i16 %112 to i32
  %114 = getelementptr ptr, ptr %61, i64 %97
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = getelementptr i16, ptr %115, i64 %57
  %117 = getelementptr i8, ptr %116, i64 -2
  %118 = load i16, ptr %117, align 2, !tbaa !10
  %119 = zext i16 %118 to i32
  %120 = sub nsw i32 %113, %119
  %121 = call i32 @llvm.abs.i32(i32 %120, i1 true)
  %122 = zext nneg i32 %121 to i64
  %123 = add nsw i64 %108, %122
  %124 = add nuw nsw i64 %97, 1
  %125 = icmp eq i64 %124, 16
  br i1 %125, label %62, label %96

126:                                              ; preds = %62, %126
  %127 = phi i64 [ 0, %62 ], [ %181, %126 ]
  %128 = phi i64 [ %123, %62 ], [ %180, %126 ]
  %129 = add nsw i64 %127, %83
  %130 = getelementptr inbounds i16, ptr %69, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !10
  %132 = zext i16 %131 to i32
  %133 = add nsw i64 %127, %94
  %134 = getelementptr inbounds i16, ptr %80, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !10
  %136 = zext i16 %135 to i32
  %137 = sub nsw i32 %132, %136
  %138 = call i32 @llvm.abs.i32(i32 %137, i1 true)
  %139 = zext nneg i32 %138 to i64
  %140 = add nsw i64 %128, %139
  %141 = add nsw i64 %127, %67
  %142 = getelementptr inbounds ptr, ptr %64, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !6
  %144 = getelementptr inbounds i16, ptr %143, i64 %83
  %145 = load i16, ptr %144, align 2, !tbaa !10
  %146 = zext i16 %145 to i32
  %147 = add nsw i64 %127, %95
  %148 = getelementptr inbounds ptr, ptr %74, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !6
  %150 = getelementptr inbounds i16, ptr %149, i64 %85
  %151 = load i16, ptr %150, align 2, !tbaa !10
  %152 = zext i16 %151 to i32
  %153 = sub nsw i32 %146, %152
  %154 = call i32 @llvm.abs.i32(i32 %153, i1 true)
  %155 = zext nneg i32 %154 to i64
  %156 = add nsw i64 %140, %155
  %157 = getelementptr inbounds i16, ptr %89, i64 %129
  %158 = load i16, ptr %157, align 2, !tbaa !10
  %159 = zext i16 %158 to i32
  %160 = getelementptr inbounds i16, ptr %93, i64 %133
  %161 = load i16, ptr %160, align 2, !tbaa !10
  %162 = zext i16 %161 to i32
  %163 = sub nsw i32 %159, %162
  %164 = call i32 @llvm.abs.i32(i32 %163, i1 true)
  %165 = zext nneg i32 %164 to i64
  %166 = add nsw i64 %156, %165
  %167 = getelementptr inbounds ptr, ptr %87, i64 %141
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = getelementptr inbounds i16, ptr %168, i64 %83
  %170 = load i16, ptr %169, align 2, !tbaa !10
  %171 = zext i16 %170 to i32
  %172 = getelementptr inbounds ptr, ptr %91, i64 %147
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = getelementptr inbounds i16, ptr %173, i64 %85
  %175 = load i16, ptr %174, align 2, !tbaa !10
  %176 = zext i16 %175 to i32
  %177 = sub nsw i32 %171, %176
  %178 = call i32 @llvm.abs.i32(i32 %177, i1 true)
  %179 = zext nneg i32 %178 to i64
  %180 = add nsw i64 %166, %179
  %181 = add nuw nsw i64 %127, 1
  %182 = icmp eq i64 %181, 8
  br i1 %182, label %183, label %126

183:                                              ; preds = %126
  %184 = sitofp i64 %180 to double
  %185 = fmul double %184, 1.562500e-02
  br label %186

186:                                              ; preds = %2, %23, %183
  %187 = phi double [ %185, %183 ], [ 0.000000e+00, %23 ], [ 0.000000e+00, %2 ]
  %188 = fcmp ugt double %15, %187
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  store i16 1, ptr %0, align 2, !tbaa !10
  br label %190

190:                                              ; preds = %189, %186
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

declare dso_local void @getNeighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local void @init_enc_mb_params(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef signext %2, i32 noundef signext %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds i8, ptr %0, i64 428
  %6 = load i32, ptr %5, align 4, !tbaa !51
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds i8, ptr %1, i64 50
  store i16 %7, ptr %8, align 2, !tbaa !10
  %9 = add i16 %7, 1
  %10 = getelementptr inbounds i8, ptr %1, i64 52
  store i16 %9, ptr %10, align 2, !tbaa !10
  %11 = load ptr, ptr @img, align 8, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %11, i64 90220
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds i8, ptr %0, i64 424
  %17 = load i32, ptr %16, align 8, !tbaa !33
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i1 [ false, %4 ], [ %18, %15 ]
  %21 = zext i1 %20 to i16
  %22 = getelementptr inbounds i8, ptr %1, i64 54
  store i16 %21, ptr %22, align 2, !tbaa !53
  %23 = getelementptr inbounds i8, ptr %1, i64 56
  store i16 0, ptr %23, align 8, !tbaa !10
  %24 = getelementptr inbounds i8, ptr %1, i64 58
  store i16 -1, ptr %24, align 2, !tbaa !10
  %25 = load ptr, ptr @input, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 3892
  %27 = load i32, ptr %26, align 4, !tbaa !55
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds i8, ptr %1, i64 20
  %30 = getelementptr inbounds i8, ptr %1, i64 46
  store i16 %28, ptr %30, align 2, !tbaa !10
  %31 = icmp ne i32 %27, 2
  %32 = zext i1 %31 to i16
  %33 = getelementptr inbounds i8, ptr %1, i64 38
  store i16 %32, ptr %33, align 2, !tbaa !10
  %34 = getelementptr inbounds i8, ptr %1, i64 40
  store i16 1, ptr %34, align 4, !tbaa !10
  %35 = getelementptr inbounds i8, ptr %25, i64 2984
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %42, label %38

38:                                               ; preds = %19
  %39 = getelementptr inbounds i8, ptr %25, i64 3052
  %40 = load i32, ptr %39, align 4, !tbaa !57
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %38, %19
  %43 = phi i1 [ false, %19 ], [ %41, %38 ]
  %44 = zext i1 %43 to i16
  %45 = getelementptr inbounds i8, ptr %1, i64 48
  store i16 %44, ptr %45, align 4, !tbaa !10
  %46 = icmp eq i32 %2, 0
  %47 = zext i1 %46 to i16
  store i16 %47, ptr %29, align 4, !tbaa !10
  br i1 %46, label %48, label %88

48:                                               ; preds = %42
  %49 = getelementptr inbounds i8, ptr %25, i64 2996
  %50 = load i32, ptr %49, align 4, !tbaa !58
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i16
  %53 = getelementptr inbounds i8, ptr %1, i64 22
  store i16 %52, ptr %53, align 2, !tbaa !10
  %54 = getelementptr inbounds i8, ptr %25, i64 3000
  %55 = load i32, ptr %54, align 8, !tbaa !59
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i16
  %58 = getelementptr inbounds i8, ptr %1, i64 24
  store i16 %57, ptr %58, align 4, !tbaa !10
  %59 = getelementptr inbounds i8, ptr %25, i64 3004
  %60 = load i32, ptr %59, align 4, !tbaa !60
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i16
  %63 = getelementptr inbounds i8, ptr %1, i64 26
  store i16 %62, ptr %63, align 2, !tbaa !10
  %64 = getelementptr inbounds i8, ptr %25, i64 3008
  %65 = load i32, ptr %64, align 8, !tbaa !61
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i16
  %68 = getelementptr inbounds i8, ptr %1, i64 28
  store i16 %67, ptr %68, align 4, !tbaa !10
  %69 = getelementptr inbounds i8, ptr %25, i64 3012
  %70 = load i32, ptr %69, align 4, !tbaa !62
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %71, i1 %31, i1 false
  %73 = zext i1 %72 to i16
  %74 = getelementptr inbounds i8, ptr %1, i64 30
  store i16 %73, ptr %74, align 2, !tbaa !10
  %75 = getelementptr inbounds i8, ptr %25, i64 3016
  %76 = load i32, ptr %75, align 8, !tbaa !63
  %77 = icmp ne i32 %76, 0
  %78 = select i1 %77, i1 %31, i1 false
  %79 = zext i1 %78 to i16
  %80 = getelementptr inbounds i8, ptr %1, i64 32
  store i16 %79, ptr %80, align 4, !tbaa !10
  %81 = getelementptr inbounds i8, ptr %25, i64 3020
  %82 = load i32, ptr %81, align 4, !tbaa !64
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %83, i1 %31, i1 false
  %85 = zext i1 %84 to i16
  %86 = getelementptr inbounds i8, ptr %1, i64 34
  store i16 %85, ptr %86, align 2, !tbaa !10
  %87 = select i1 %66, i1 true, i1 %72
  br i1 %87, label %107, label %96

88:                                               ; preds = %42
  %89 = getelementptr inbounds i8, ptr %1, i64 22
  %90 = getelementptr inbounds i8, ptr %1, i64 24
  %91 = getelementptr inbounds i8, ptr %1, i64 26
  %92 = getelementptr inbounds i8, ptr %1, i64 28
  %93 = getelementptr inbounds i8, ptr %1, i64 30
  %94 = getelementptr inbounds i8, ptr %1, i64 32
  %95 = getelementptr inbounds i8, ptr %1, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %89, i8 0, i64 14, i1 false)
  br label %96

96:                                               ; preds = %48, %88
  %97 = phi ptr [ %94, %88 ], [ %80, %48 ]
  %98 = phi i1 [ false, %88 ], [ %78, %48 ]
  %99 = phi ptr [ %92, %88 ], [ %68, %48 ]
  %100 = phi ptr [ %90, %88 ], [ %58, %48 ]
  %101 = phi ptr [ %89, %88 ], [ %53, %48 ]
  %102 = phi ptr [ %91, %88 ], [ %63, %48 ]
  %103 = phi ptr [ %93, %88 ], [ %74, %48 ]
  %104 = phi i1 [ false, %88 ], [ %84, %48 ]
  %105 = phi ptr [ %95, %88 ], [ %86, %48 ]
  %106 = select i1 %98, i1 true, i1 %104
  br label %107

107:                                              ; preds = %96, %48
  %108 = phi ptr [ %86, %48 ], [ %105, %96 ]
  %109 = phi ptr [ %74, %48 ], [ %103, %96 ]
  %110 = phi ptr [ %63, %48 ], [ %102, %96 ]
  %111 = phi ptr [ %53, %48 ], [ %101, %96 ]
  %112 = phi ptr [ %58, %48 ], [ %100, %96 ]
  %113 = phi ptr [ %68, %48 ], [ %99, %96 ]
  %114 = phi ptr [ %80, %48 ], [ %97, %96 ]
  %115 = phi i1 [ true, %48 ], [ %106, %96 ]
  %116 = zext i1 %115 to i16
  %117 = getelementptr inbounds i8, ptr %1, i64 36
  store i16 %116, ptr %117, align 4, !tbaa !10
  %118 = getelementptr inbounds i8, ptr %11, i64 24
  %119 = load i32, ptr %118, align 8, !tbaa !14
  %120 = icmp eq i32 %119, 4
  %121 = zext i1 %120 to i16
  %122 = getelementptr inbounds i8, ptr %1, i64 44
  store i16 %121, ptr %122, align 4, !tbaa !10
  %123 = icmp eq i32 %119, 3
  %124 = load i32, ptr @si_frame_indicator, align 4
  %125 = icmp ne i32 %124, 0
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %159

127:                                              ; preds = %107
  store i16 0, ptr %30, align 2, !tbaa !10
  store i16 0, ptr %45, align 4, !tbaa !10
  store i16 0, ptr %29, align 4, !tbaa !10
  store i16 0, ptr %111, align 2, !tbaa !10
  store i16 0, ptr %112, align 4, !tbaa !10
  store i16 0, ptr %110, align 2, !tbaa !10
  store i16 0, ptr %113, align 4, !tbaa !10
  store i16 0, ptr %109, align 2, !tbaa !10
  store i16 0, ptr %114, align 4, !tbaa !10
  store i16 0, ptr %108, align 2, !tbaa !10
  store i16 0, ptr %117, align 4, !tbaa !10
  store i16 0, ptr %122, align 4, !tbaa !10
  %128 = getelementptr inbounds i8, ptr %11, i64 156
  %129 = load i32, ptr %128, align 4, !tbaa !44
  %130 = getelementptr inbounds i8, ptr %11, i64 152
  %131 = load i32, ptr %130, align 8, !tbaa !45
  %132 = load ptr, ptr @lrec, align 8, !tbaa !6
  %133 = sext i32 %131 to i64
  %134 = sext i32 %129 to i64
  %135 = add i32 %131, 15
  %136 = add i32 %129, 15
  %137 = tail call i32 @llvm.smax.i32(i32 %131, i32 %135)
  %138 = sext i32 %137 to i64
  %139 = tail call i32 @llvm.smax.i32(i32 %129, i32 %136)
  %140 = sext i32 %139 to i64
  br label %141

141:                                              ; preds = %153, %127
  %142 = phi i64 [ %134, %127 ], [ %154, %153 ]
  %143 = getelementptr inbounds ptr, ptr %132, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  br label %148

145:                                              ; preds = %148
  %146 = add nsw i64 %149, 1
  %147 = icmp eq i64 %149, %138
  br i1 %147, label %153, label %148

148:                                              ; preds = %145, %141
  %149 = phi i64 [ %133, %141 ], [ %146, %145 ]
  %150 = getelementptr inbounds i32, ptr %144, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !12
  %152 = icmp eq i32 %151, -16
  br i1 %152, label %145, label %156

153:                                              ; preds = %145
  %154 = add nsw i64 %142, 1
  %155 = icmp eq i64 %142, %140
  br i1 %155, label %156, label %141

156:                                              ; preds = %153, %148
  %157 = phi i16 [ 1, %148 ], [ 0, %153 ]
  %158 = phi i16 [ 0, %148 ], [ 1, %153 ]
  store i16 %157, ptr %33, align 2, !tbaa !10
  store i16 %158, ptr %34, align 4, !tbaa !10
  br label %159

159:                                              ; preds = %156, %107
  %160 = load i32, ptr @sp2_frame_indicator, align 4
  %161 = icmp ne i32 %160, 0
  %162 = select i1 %123, i1 %161, i1 false
  br i1 %162, label %163, label %196

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %11, i64 156
  %165 = load i32, ptr %164, align 4, !tbaa !44
  %166 = getelementptr inbounds i8, ptr %11, i64 152
  %167 = load i32, ptr %166, align 8, !tbaa !45
  %168 = load ptr, ptr @lrec, align 8, !tbaa !6
  %169 = sext i32 %167 to i64
  %170 = sext i32 %165 to i64
  %171 = add i32 %167, 15
  %172 = add i32 %165, 15
  %173 = tail call i32 @llvm.smax.i32(i32 %167, i32 %171)
  %174 = sext i32 %173 to i64
  %175 = tail call i32 @llvm.smax.i32(i32 %165, i32 %172)
  %176 = sext i32 %175 to i64
  br label %177

177:                                              ; preds = %189, %163
  %178 = phi i64 [ %170, %163 ], [ %190, %189 ]
  %179 = getelementptr inbounds ptr, ptr %168, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  br label %184

181:                                              ; preds = %184
  %182 = add nsw i64 %185, 1
  %183 = icmp eq i64 %185, %174
  br i1 %183, label %189, label %184

184:                                              ; preds = %181, %177
  %185 = phi i64 [ %169, %177 ], [ %182, %181 ]
  %186 = getelementptr inbounds i32, ptr %180, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !12
  %188 = icmp eq i32 %187, -16
  br i1 %188, label %181, label %193

189:                                              ; preds = %181
  %190 = add nsw i64 %178, 1
  %191 = icmp eq i64 %178, %176
  br i1 %191, label %192, label %177

192:                                              ; preds = %189
  store i16 0, ptr %30, align 2, !tbaa !10
  store i16 0, ptr %45, align 4, !tbaa !10
  store i16 0, ptr %29, align 4, !tbaa !10
  store i16 0, ptr %111, align 2, !tbaa !10
  store i16 0, ptr %112, align 4, !tbaa !10
  store i16 0, ptr %110, align 2, !tbaa !10
  store i16 0, ptr %113, align 4, !tbaa !10
  store i16 0, ptr %109, align 2, !tbaa !10
  store i16 0, ptr %114, align 4, !tbaa !10
  store i16 0, ptr %108, align 2, !tbaa !10
  store i16 0, ptr %117, align 4, !tbaa !10
  store i16 0, ptr %122, align 4, !tbaa !10
  store i16 0, ptr %33, align 2, !tbaa !10
  br label %194

193:                                              ; preds = %184
  store i16 0, ptr %30, align 2, !tbaa !10
  store i16 0, ptr %45, align 4, !tbaa !10
  store i16 0, ptr %29, align 4, !tbaa !10
  br label %194

194:                                              ; preds = %192, %193
  %195 = phi i16 [ 0, %193 ], [ 1, %192 ]
  store i16 %195, ptr %34, align 4, !tbaa !10
  br label %196

196:                                              ; preds = %194, %159
  %197 = icmp eq i32 %3, 0
  br i1 %197, label %222, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds i8, ptr %11, i64 90316
  %200 = load i32, ptr %199, align 4, !tbaa !65
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %222, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %11, i64 90504
  %204 = load ptr, ptr %203, align 8, !tbaa !66
  %205 = getelementptr inbounds i8, ptr %204, i64 40
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = getelementptr inbounds i8, ptr %11, i64 40
  %208 = load i32, ptr %207, align 8, !tbaa !31
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds double, ptr %206, i64 %209
  %211 = load double, ptr %210, align 8, !tbaa !20
  store double %211, ptr %1, align 8, !tbaa !67
  %212 = getelementptr inbounds i8, ptr %11, i64 90512
  %213 = load ptr, ptr %212, align 8, !tbaa !68
  %214 = getelementptr inbounds i8, ptr %213, i64 40
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = getelementptr inbounds double, ptr %215, i64 %209
  %217 = load double, ptr %216, align 8, !tbaa !20
  %218 = getelementptr inbounds i8, ptr %1, i64 8
  store double %217, ptr %218, align 8, !tbaa !69
  %219 = getelementptr inbounds i8, ptr %11, i64 90520
  %220 = load ptr, ptr %219, align 8, !tbaa !70
  %221 = getelementptr inbounds i8, ptr %220, i64 40
  br label %243

222:                                              ; preds = %198, %196
  %223 = getelementptr inbounds i8, ptr %11, i64 90504
  %224 = load ptr, ptr %223, align 8, !tbaa !66
  %225 = sext i32 %119 to i64
  %226 = getelementptr inbounds ptr, ptr %224, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !6
  %228 = getelementptr inbounds i8, ptr %11, i64 40
  %229 = load i32, ptr %228, align 8, !tbaa !31
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds double, ptr %227, i64 %230
  %232 = load double, ptr %231, align 8, !tbaa !20
  store double %232, ptr %1, align 8, !tbaa !67
  %233 = getelementptr inbounds i8, ptr %11, i64 90512
  %234 = load ptr, ptr %233, align 8, !tbaa !68
  %235 = getelementptr inbounds ptr, ptr %234, i64 %225
  %236 = load ptr, ptr %235, align 8, !tbaa !6
  %237 = getelementptr inbounds double, ptr %236, i64 %230
  %238 = load double, ptr %237, align 8, !tbaa !20
  %239 = getelementptr inbounds i8, ptr %1, i64 8
  store double %238, ptr %239, align 8, !tbaa !69
  %240 = getelementptr inbounds i8, ptr %11, i64 90520
  %241 = load ptr, ptr %240, align 8, !tbaa !70
  %242 = getelementptr inbounds ptr, ptr %241, i64 %225
  br label %243

243:                                              ; preds = %222, %202
  %244 = phi ptr [ %242, %222 ], [ %221, %202 ]
  %245 = phi i64 [ %230, %222 ], [ %209, %202 ]
  %246 = load ptr, ptr %244, align 8, !tbaa !6
  %247 = getelementptr inbounds i32, ptr %246, i64 %245
  %248 = load i32, ptr %247, align 4, !tbaa !12
  %249 = getelementptr inbounds i8, ptr %1, i64 16
  store i32 %248, ptr %249, align 8, !tbaa !71
  %250 = getelementptr inbounds i8, ptr %11, i64 89360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %250, i8 0, i64 30, i1 false), !tbaa !10
  br i1 %14, label %251, label %298

251:                                              ; preds = %243
  %252 = getelementptr inbounds i8, ptr %11, i64 28
  %253 = load i32, ptr @listXsize, align 4, !tbaa !12
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %275

255:                                              ; preds = %251
  %256 = load ptr, ptr @listX, align 8, !tbaa !6
  %257 = load i32, ptr %252, align 4, !tbaa !72
  %258 = zext nneg i32 %253 to i64
  br label %259

259:                                              ; preds = %255, %272
  %260 = phi i64 [ 0, %255 ], [ %273, %272 ]
  %261 = getelementptr inbounds ptr, ptr %256, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !6
  %263 = getelementptr inbounds i8, ptr %262, i64 6408
  store i32 0, ptr %263, align 8, !tbaa !73
  switch i32 %257, label %272 [
    i32 1, label %264
    i32 2, label %267
  ]

264:                                              ; preds = %259
  %265 = load i32, ptr %262, align 8, !tbaa !74
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %272, label %270

267:                                              ; preds = %259
  %268 = load i32, ptr %262, align 8, !tbaa !74
  %269 = icmp eq i32 %268, 2
  br i1 %269, label %272, label %270

270:                                              ; preds = %267, %264
  %271 = phi i32 [ -2, %264 ], [ 2, %267 ]
  store i32 %271, ptr %263, align 8, !tbaa !73
  br label %272

272:                                              ; preds = %270, %259, %264, %267
  %273 = add nuw nsw i64 %260, 1
  %274 = icmp ult i64 %273, %258
  br i1 %274, label %259, label %275

275:                                              ; preds = %272, %251
  %276 = load i32, ptr getelementptr inbounds (i8, ptr @listXsize, i64 4), align 4, !tbaa !12
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %368

278:                                              ; preds = %275
  %279 = load ptr, ptr getelementptr inbounds (i8, ptr @listX, i64 8), align 8, !tbaa !6
  %280 = load i32, ptr %252, align 4, !tbaa !72
  %281 = zext nneg i32 %276 to i64
  br label %282

282:                                              ; preds = %295, %278
  %283 = phi i64 [ 0, %278 ], [ %296, %295 ]
  %284 = getelementptr inbounds ptr, ptr %279, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !6
  %286 = getelementptr inbounds i8, ptr %285, i64 6408
  store i32 0, ptr %286, align 8, !tbaa !73
  switch i32 %280, label %295 [
    i32 1, label %290
    i32 2, label %287
  ]

287:                                              ; preds = %282
  %288 = load i32, ptr %285, align 8, !tbaa !74
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %295, label %293

290:                                              ; preds = %282
  %291 = load i32, ptr %285, align 8, !tbaa !74
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %295, label %293

293:                                              ; preds = %290, %287
  %294 = phi i32 [ 2, %287 ], [ -2, %290 ]
  store i32 %294, ptr %286, align 8, !tbaa !73
  br label %295

295:                                              ; preds = %293, %290, %287, %282
  %296 = add nuw nsw i64 %283, 1
  %297 = icmp ult i64 %296, %281
  br i1 %297, label %282, label %368

298:                                              ; preds = %243
  %299 = load i16, ptr %22, align 2, !tbaa !53
  %300 = icmp eq i16 %299, 0
  %301 = load i16, ptr %8, align 2, !tbaa !10
  %302 = load i16, ptr %10, align 2, !tbaa !10
  %303 = icmp sgt i16 %301, %302
  br i1 %300, label %344, label %304

304:                                              ; preds = %298
  br i1 %303, label %368, label %305

305:                                              ; preds = %304
  %306 = sext i16 %302 to i64
  %307 = getelementptr inbounds i8, ptr %11, i64 12
  %308 = sext i16 %301 to i64
  br label %309

309:                                              ; preds = %305, %341
  %310 = phi i64 [ %308, %305 ], [ %342, %341 ]
  %311 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !12
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %341

314:                                              ; preds = %309
  %315 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %310
  %316 = load ptr, ptr %315, align 8, !tbaa !6
  %317 = load i32, ptr %307, align 4, !tbaa !19
  %318 = and i32 %317, 1
  %319 = icmp eq i32 %318, 0
  %320 = and i32 %317, -2147483647
  %321 = icmp eq i32 %320, 1
  br label %322

322:                                              ; preds = %314, %336
  %323 = phi i64 [ 0, %314 ], [ %337, %336 ]
  %324 = getelementptr inbounds ptr, ptr %316, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !6
  %326 = getelementptr inbounds i8, ptr %325, i64 6408
  store i32 0, ptr %326, align 8, !tbaa !73
  br i1 %319, label %327, label %331

327:                                              ; preds = %322
  %328 = load i32, ptr %325, align 8, !tbaa !74
  %329 = icmp eq i32 %328, 2
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  store i32 -2, ptr %326, align 8, !tbaa !73
  br label %331

331:                                              ; preds = %330, %327, %322
  br i1 %321, label %332, label %336

332:                                              ; preds = %331
  %333 = load i32, ptr %325, align 8, !tbaa !74
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  store i32 2, ptr %326, align 8, !tbaa !73
  br label %336

336:                                              ; preds = %331, %332, %335
  %337 = add nuw nsw i64 %323, 1
  %338 = load i32, ptr %311, align 4, !tbaa !12
  %339 = sext i32 %338 to i64
  %340 = icmp slt i64 %337, %339
  br i1 %340, label %322, label %341

341:                                              ; preds = %336, %309
  %342 = add nsw i64 %310, 1
  %343 = icmp eq i64 %310, %306
  br i1 %343, label %368, label %309

344:                                              ; preds = %298
  br i1 %303, label %368, label %345

345:                                              ; preds = %344
  %346 = sext i16 %302 to i64
  %347 = sext i16 %301 to i64
  br label %348

348:                                              ; preds = %345, %365
  %349 = phi i64 [ %347, %345 ], [ %366, %365 ]
  %350 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !12
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %353, label %365

353:                                              ; preds = %348
  %354 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %349
  %355 = load ptr, ptr %354, align 8, !tbaa !6
  br label %356

356:                                              ; preds = %353, %356
  %357 = phi i64 [ 0, %353 ], [ %361, %356 ]
  %358 = getelementptr inbounds ptr, ptr %355, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !6
  %360 = getelementptr inbounds i8, ptr %359, i64 6408
  store i32 0, ptr %360, align 8, !tbaa !73
  %361 = add nuw nsw i64 %357, 1
  %362 = load i32, ptr %350, align 4, !tbaa !12
  %363 = sext i32 %362 to i64
  %364 = icmp slt i64 %361, %363
  br i1 %364, label %356, label %365

365:                                              ; preds = %356, %348
  %366 = add nsw i64 %349, 1
  %367 = icmp eq i64 %349, %346
  br i1 %367, label %368, label %348

368:                                              ; preds = %341, %365, %295, %275, %304, %344
  ret void
}

; Function Attrs: nounwind
define dso_local void @list_prediction_cost(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #2 {
  %7 = icmp slt i32 %0, 2
  %8 = getelementptr inbounds i8, ptr %3, i64 50
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [2 x i16], ptr %8, i64 0, i64 %9
  %11 = select i1 %7, ptr %10, ptr %8
  %12 = load i16, ptr %11, align 2, !tbaa !10
  %13 = sext i16 %12 to i32
  br i1 %7, label %14, label %115

14:                                               ; preds = %6
  %15 = sext i16 %12 to i64
  %16 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !12
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %229

19:                                               ; preds = %14
  %20 = icmp ne i32 %0, 0
  %21 = getelementptr inbounds i8, ptr %3, i64 16
  %22 = getelementptr inbounds i8, ptr %3, i64 8
  %23 = sext i32 %2 to i64
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds i32, ptr %4, i64 %9
  %26 = getelementptr inbounds i8, ptr %5, i64 %9
  br label %27

27:                                               ; preds = %19, %110
  %28 = phi i32 [ 0, %19 ], [ %112, %110 ]
  %29 = phi i16 [ 0, %19 ], [ %111, %110 ]
  %30 = load ptr, ptr @img, align 8, !tbaa !6
  %31 = getelementptr inbounds i8, ptr %30, i64 90584
  %32 = load i16, ptr %31, align 8, !tbaa !75
  %33 = icmp eq i16 %32, 0
  %34 = or i1 %20, %33
  %35 = icmp eq i16 %29, 0
  %36 = or i1 %35, %34
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = tail call signext i32 @CheckReliabilityOfRef(i32 noundef signext %1, i32 noundef signext 0, i32 noundef signext %28, i32 noundef signext %2) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %110, label %40

40:                                               ; preds = %37, %27
  %41 = load ptr, ptr @input, align 8, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %41, i64 1296
  %43 = load i32, ptr %42, align 8, !tbaa !76
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %41, i64 1300
  %47 = load i32, ptr %46, align 4, !tbaa !77
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %45, %40
  %50 = load ptr, ptr @img, align 8, !tbaa !6
  %51 = getelementptr inbounds i8, ptr %50, i64 24
  %52 = load i32, ptr %51, align 8, !tbaa !14
  switch i32 %52, label %69 [
    i32 0, label %53
    i32 3, label %53
  ]

53:                                               ; preds = %49, %49
  br i1 %44, label %54, label %62

54:                                               ; preds = %53
  %55 = getelementptr inbounds i8, ptr %41, i64 1300
  %56 = load i32, ptr %55, align 4, !tbaa !77
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %110, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @img, align 8, !tbaa !6
  %60 = getelementptr inbounds i8, ptr %59, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa !14
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i32 [ %61, %58 ], [ %52, %53 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = icmp eq i32 %63, 3
  %67 = and i1 %35, %66
  br i1 %67, label %69, label %110

68:                                               ; preds = %62
  br i1 %35, label %69, label %110

69:                                               ; preds = %49, %65, %68, %45
  %70 = getelementptr inbounds i8, ptr %41, i64 3136
  %71 = load i32, ptr %70, align 8, !tbaa !78
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %21, align 8, !tbaa !71
  %75 = load i32, ptr %16, align 4, !tbaa !12
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @refbits, align 8, !tbaa !6
  %79 = sext i16 %29 to i64
  %80 = getelementptr inbounds i32, ptr %78, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !12
  br label %82

82:                                               ; preds = %73, %77
  %83 = phi i32 [ %81, %77 ], [ 0, %73 ]
  %84 = mul nsw i32 %83, %74
  %85 = ashr i32 %84, 16
  br label %93

86:                                               ; preds = %69
  %87 = load double, ptr %22, align 8, !tbaa !69
  %88 = fmul double %87, 2.000000e+00
  %89 = tail call i32 @llvm.smin.i32(i32 %28, i32 1)
  %90 = sitofp i32 %89 to double
  %91 = fmul double %88, %90
  %92 = fptosi double %91 to i32
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi i32 [ %85, %82 ], [ %92, %86 ]
  %95 = load ptr, ptr @motion_cost, align 8, !tbaa !6
  %96 = getelementptr inbounds ptr, ptr %95, i64 %23
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = getelementptr inbounds ptr, ptr %97, i64 %9
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = sext i16 %29 to i64
  %101 = getelementptr inbounds ptr, ptr %99, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds i32, ptr %102, i64 %24
  %104 = load i32, ptr %103, align 4, !tbaa !12
  %105 = add nsw i32 %104, %94
  %106 = load i32, ptr %25, align 4, !tbaa !12
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %93
  store i32 %105, ptr %25, align 4, !tbaa !12
  %109 = trunc i16 %29 to i8
  store i8 %109, ptr %26, align 1, !tbaa !79
  br label %110

110:                                              ; preds = %37, %93, %108, %68, %65, %54
  %111 = add i16 %29, 1
  %112 = sext i16 %111 to i32
  %113 = load i32, ptr %16, align 4, !tbaa !12
  %114 = icmp sgt i32 %113, %112
  br i1 %114, label %27, label %229

115:                                              ; preds = %6
  %116 = icmp eq i32 %0, 2
  %117 = load ptr, ptr @input, align 8, !tbaa !6
  %118 = getelementptr inbounds i8, ptr %117, i64 3136
  %119 = load i32, ptr %118, align 8, !tbaa !78
  %120 = icmp eq i32 %119, 0
  br i1 %116, label %121, label %182

121:                                              ; preds = %115
  br i1 %120, label %156, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds i8, ptr %3, i64 16
  %124 = load i32, ptr %123, align 8, !tbaa !71
  %125 = sext i16 %12 to i64
  %126 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !12
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %135, label %129

129:                                              ; preds = %122
  %130 = load ptr, ptr @refbits, align 8, !tbaa !6
  %131 = load i8, ptr %5, align 1, !tbaa !79
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds i32, ptr %130, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !12
  br label %135

135:                                              ; preds = %122, %129
  %136 = phi i32 [ %134, %129 ], [ 0, %122 ]
  %137 = mul nsw i32 %136, %124
  %138 = ashr i32 %137, 16
  %139 = add nsw i32 %13, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !12
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %151, label %144

144:                                              ; preds = %135
  %145 = load ptr, ptr @refbits, align 8, !tbaa !6
  %146 = getelementptr inbounds i8, ptr %5, i64 1
  %147 = load i8, ptr %146, align 1, !tbaa !79
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds i32, ptr %145, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !12
  br label %151

151:                                              ; preds = %135, %144
  %152 = phi i32 [ %150, %144 ], [ 0, %135 ]
  %153 = mul nsw i32 %152, %124
  %154 = ashr i32 %153, 16
  %155 = add nsw i32 %154, %138
  br label %171

156:                                              ; preds = %121
  %157 = getelementptr inbounds i8, ptr %3, i64 8
  %158 = load double, ptr %157, align 8, !tbaa !69
  %159 = load i8, ptr %5, align 1, !tbaa !79
  %160 = icmp ne i8 %159, 0
  %161 = zext i1 %160 to i32
  %162 = getelementptr inbounds i8, ptr %5, i64 1
  %163 = load i8, ptr %162, align 1, !tbaa !79
  %164 = icmp ne i8 %163, 0
  %165 = zext i1 %164 to i32
  %166 = add nuw nsw i32 %165, %161
  %167 = uitofp nneg i32 %166 to double
  %168 = fmul double %158, %167
  %169 = fmul double %168, 2.000000e+00
  %170 = fptosi double %169 to i32
  br label %171

171:                                              ; preds = %156, %151
  %172 = phi i32 [ %155, %151 ], [ %170, %156 ]
  %173 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %172, ptr %173, align 4, !tbaa !12
  %174 = load i8, ptr %5, align 1, !tbaa !79
  %175 = zext i8 %174 to i16
  %176 = getelementptr inbounds i8, ptr %5, i64 1
  %177 = load i8, ptr %176, align 1, !tbaa !79
  %178 = zext i8 %177 to i16
  %179 = getelementptr inbounds i8, ptr %3, i64 16
  %180 = load i32, ptr %179, align 8, !tbaa !71
  %181 = tail call signext i32 @BIDPartitionCost(i32 noundef signext %2, i32 noundef signext %1, i16 noundef signext %175, i16 noundef signext %178, i32 noundef signext %180) #12
  br label %224

182:                                              ; preds = %115
  br i1 %120, label %210, label %183

183:                                              ; preds = %182
  %184 = getelementptr inbounds i8, ptr %3, i64 16
  %185 = load i32, ptr %184, align 8, !tbaa !71
  %186 = sext i16 %12 to i64
  %187 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !12
  %189 = icmp slt i32 %188, 2
  br i1 %189, label %193, label %190

190:                                              ; preds = %183
  %191 = load ptr, ptr @refbits, align 8, !tbaa !6
  %192 = load i32, ptr %191, align 4, !tbaa !12
  br label %193

193:                                              ; preds = %183, %190
  %194 = phi i32 [ %192, %190 ], [ 0, %183 ]
  %195 = mul nsw i32 %194, %185
  %196 = ashr i32 %195, 16
  %197 = add nsw i32 %13, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !12
  %201 = icmp slt i32 %200, 2
  br i1 %201, label %205, label %202

202:                                              ; preds = %193
  %203 = load ptr, ptr @refbits, align 8, !tbaa !6
  %204 = load i32, ptr %203, align 4, !tbaa !12
  br label %205

205:                                              ; preds = %193, %202
  %206 = phi i32 [ %204, %202 ], [ 0, %193 ]
  %207 = mul nsw i32 %206, %185
  %208 = ashr i32 %207, 16
  %209 = add nsw i32 %208, %196
  br label %215

210:                                              ; preds = %182
  %211 = getelementptr inbounds i8, ptr %3, i64 8
  %212 = load double, ptr %211, align 8, !tbaa !69
  %213 = fmul double %212, 4.000000e+00
  %214 = fptosi double %213 to i32
  br label %215

215:                                              ; preds = %210, %205
  %216 = phi i32 [ %209, %205 ], [ %214, %210 ]
  %217 = zext nneg i32 %0 to i64
  %218 = getelementptr inbounds i32, ptr %4, i64 %217
  store i32 %216, ptr %218, align 4, !tbaa !12
  %219 = getelementptr inbounds i8, ptr %3, i64 16
  %220 = load i32, ptr %219, align 8, !tbaa !71
  %221 = and i32 %0, 1
  %222 = xor i32 %221, 1
  %223 = tail call signext i32 @BPredPartitionCost(i32 noundef signext %2, i32 noundef signext %1, i16 noundef signext 0, i16 noundef signext 0, i32 noundef signext %220, i32 noundef signext %222) #12
  br label %224

224:                                              ; preds = %215, %171
  %225 = phi ptr [ %173, %171 ], [ %218, %215 ]
  %226 = phi i32 [ %181, %171 ], [ %223, %215 ]
  %227 = load i32, ptr %225, align 4, !tbaa !12
  %228 = add nsw i32 %227, %226
  store i32 %228, ptr %225, align 4, !tbaa !12
  br label %229

229:                                              ; preds = %110, %224, %14
  ret void
}

declare dso_local signext i32 @CheckReliabilityOfRef(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @BIDPartitionCost(i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @BPredPartitionCost(i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local signext range(i32 -32768, 32768) i32 @compute_ref_cost(ptr nocapture noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = getelementptr inbounds i8, ptr %0, i64 50
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !10
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr @refbits, align 8, !tbaa !6
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !12
  br label %19

19:                                               ; preds = %3, %14
  %20 = phi i32 [ %18, %14 ], [ 0, %3 ]
  %21 = mul nsw i32 %20, %5
  %22 = ashr i32 %21, 16
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local void @determine_prediction_list(i32 noundef signext %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #7 {
  %7 = load ptr, ptr @input, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %7, i64 1264
  %9 = load i32, ptr %8, align 8, !tbaa !80
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %0, 1
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = load i32, ptr %1, align 4, !tbaa !12
  %15 = getelementptr inbounds i8, ptr %1, i64 4
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %1, i64 8
  %20 = load i32, ptr %19, align 4, !tbaa !12
  %21 = icmp sgt i32 %14, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  store i16 0, ptr %3, align 2, !tbaa !10
  %23 = load i32, ptr %4, align 4, !tbaa !12
  %24 = add nsw i32 %23, %14
  store i32 %24, ptr %4, align 4, !tbaa !12
  br label %110

25:                                               ; preds = %18, %13
  %26 = icmp sgt i32 %16, %14
  %27 = getelementptr inbounds i8, ptr %1, i64 8
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %29 = icmp sgt i32 %16, %28
  %30 = select i1 %26, i1 true, i1 %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  store i16 1, ptr %3, align 2, !tbaa !10
  %32 = load i32, ptr %4, align 4, !tbaa !12
  %33 = add nsw i32 %32, %16
  store i32 %33, ptr %4, align 4, !tbaa !12
  br label %110

34:                                               ; preds = %25
  store i16 2, ptr %3, align 2, !tbaa !10
  %35 = load i32, ptr %4, align 4, !tbaa !12
  %36 = add nsw i32 %35, %28
  store i32 %36, ptr %4, align 4, !tbaa !12
  br label %110

37:                                               ; preds = %6
  %38 = load ptr, ptr @img, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 89362
  store i16 0, ptr %39, align 2, !tbaa !10
  store i16 0, ptr %5, align 2, !tbaa !10
  %40 = load i32, ptr %1, align 4, !tbaa !12
  %41 = getelementptr inbounds i8, ptr %1, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !12
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %59, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds i8, ptr %1, i64 8
  %46 = load i32, ptr %45, align 4, !tbaa !12
  %47 = icmp sgt i32 %40, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %1, i64 12
  %50 = load i32, ptr %49, align 4, !tbaa !12
  %51 = icmp sgt i32 %40, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %1, i64 16
  %54 = load i32, ptr %53, align 4, !tbaa !12
  %55 = icmp sgt i32 %40, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  store i16 0, ptr %3, align 2, !tbaa !10
  %57 = load i32, ptr %4, align 4, !tbaa !12
  %58 = add nsw i32 %57, %40
  store i32 %58, ptr %4, align 4, !tbaa !12
  br label %110

59:                                               ; preds = %52, %48, %44, %37
  %60 = icmp sgt i32 %42, %40
  %61 = getelementptr inbounds i8, ptr %1, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !12
  %63 = icmp sgt i32 %42, %62
  %64 = select i1 %60, i1 true, i1 %63
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds i8, ptr %1, i64 12
  %67 = load i32, ptr %66, align 4, !tbaa !12
  %68 = icmp sgt i32 %42, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds i8, ptr %1, i64 16
  %71 = load i32, ptr %70, align 4, !tbaa !12
  %72 = icmp sgt i32 %42, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  store i16 1, ptr %3, align 2, !tbaa !10
  %74 = load i32, ptr %4, align 4, !tbaa !12
  %75 = add nsw i32 %74, %42
  store i32 %75, ptr %4, align 4, !tbaa !12
  br label %110

76:                                               ; preds = %59, %69, %65
  %77 = icmp sgt i32 %62, %40
  %78 = icmp sgt i32 %62, %42
  %79 = or i1 %77, %78
  %80 = getelementptr inbounds i8, ptr %1, i64 12
  %81 = load i32, ptr %80, align 4, !tbaa !12
  %82 = icmp sgt i32 %62, %81
  %83 = select i1 %79, i1 true, i1 %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds i8, ptr %1, i64 16
  %86 = load i32, ptr %85, align 4, !tbaa !12
  %87 = icmp sgt i32 %62, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  store i16 2, ptr %3, align 2, !tbaa !10
  %89 = load i32, ptr %4, align 4, !tbaa !12
  %90 = add nsw i32 %89, %62
  store i32 %90, ptr %4, align 4, !tbaa !12
  br label %110

91:                                               ; preds = %76, %84
  %92 = icmp sgt i32 %81, %40
  %93 = icmp sgt i32 %81, %42
  %94 = or i1 %92, %93
  %95 = icmp sgt i32 %81, %62
  %96 = or i1 %95, %94
  %97 = getelementptr inbounds i8, ptr %1, i64 16
  %98 = load i32, ptr %97, align 4, !tbaa !12
  %99 = icmp sgt i32 %81, %98
  %100 = select i1 %96, i1 true, i1 %99
  store i16 2, ptr %3, align 2, !tbaa !10
  %101 = load i32, ptr %4, align 4, !tbaa !12
  br i1 %100, label %105, label %102

102:                                              ; preds = %91
  %103 = add nsw i32 %101, %81
  store i32 %103, ptr %4, align 4, !tbaa !12
  store i16 1, ptr %5, align 2, !tbaa !10
  store i16 1, ptr %39, align 2, !tbaa !10
  %104 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 0, ptr %104, align 1, !tbaa !79
  store i8 0, ptr %2, align 1, !tbaa !79
  br label %110

105:                                              ; preds = %91
  %106 = add nsw i32 %101, %98
  store i32 %106, ptr %4, align 4, !tbaa !12
  store i16 2, ptr %5, align 2, !tbaa !10
  %107 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 0, ptr %107, align 1, !tbaa !79
  store i8 0, ptr %2, align 1, !tbaa !79
  %108 = load ptr, ptr @img, align 8, !tbaa !6
  %109 = getelementptr inbounds i8, ptr %108, i64 89362
  store i16 2, ptr %109, align 2, !tbaa !10
  br label %110

110:                                              ; preds = %56, %88, %105, %102, %73, %22, %34, %31
  ret void
}

; Function Attrs: nounwind
define dso_local void @compute_mode_RD_cost(i32 noundef signext %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef signext %5, i16 noundef signext %6, ptr nocapture noundef %7) local_unnamed_addr #2 {
  %9 = load ptr, ptr @input, align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %9, i64 3892
  %11 = load i32, ptr %10, align 4, !tbaa !55
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %34

13:                                               ; preds = %8
  %14 = add i32 %0, -1
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = icmp eq i32 %0, 0
  %18 = icmp ne i16 %6, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 1156
  %23 = load i32, ptr %22, align 4, !tbaa !81
  %24 = icmp ne i32 %23, 0
  br label %31

25:                                               ; preds = %16
  %26 = icmp eq i32 %0, 8
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, ptr %2, i64 28
  %29 = load i16, ptr %28, align 4, !tbaa !10
  %30 = icmp ne i16 %29, 0
  br label %31

31:                                               ; preds = %20, %25, %27, %13
  %32 = phi i1 [ true, %13 ], [ false, %25 ], [ %30, %27 ], [ %24, %20 ]
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %8, %31
  %35 = phi i32 [ %33, %31 ], [ 0, %8 ]
  %36 = getelementptr inbounds i8, ptr %1, i64 468
  store i32 %35, ptr %36, align 4, !tbaa !85
  tail call void @SetModesAndRefframeForBlocks(i32 noundef signext %0) #12
  %37 = load ptr, ptr @img, align 8, !tbaa !6
  %38 = getelementptr inbounds i8, ptr %37, i64 90208
  store i32 0, ptr %38, align 8, !tbaa !86
  %39 = getelementptr inbounds i8, ptr %1, i64 416
  %40 = load i32, ptr %39, align 8, !tbaa !87
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds i8, ptr %1, i64 72
  %44 = load i32, ptr %43, align 8, !tbaa !88
  switch i32 %44, label %199 [
    i32 9, label %45
    i32 10, label %45
    i32 13, label %45
    i32 14, label %45
  ]

45:                                               ; preds = %42, %42, %42, %42, %34
  %46 = icmp eq i32 %0, 8
  %47 = icmp eq i32 %0, 0
  %48 = getelementptr inbounds i8, ptr %1, i64 364
  %49 = add i32 %0, -1
  %50 = icmp ult i32 %49, 3
  %51 = icmp ne i16 %6, 0
  %52 = and i1 %47, %51
  %53 = getelementptr inbounds i8, ptr %2, i64 28
  br label %54

54:                                               ; preds = %161, %45
  %55 = load double, ptr %2, align 8, !tbaa !67
  %56 = tail call signext i32 @RDCost_for_macroblocks(double noundef %55, i32 noundef signext %0, ptr noundef %3, ptr noundef %4, i32 noundef signext %5) #12
  %57 = icmp eq i32 %56, 0
  %58 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %57, label %136, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, ptr %58, i64 3908
  %61 = load i32, ptr %60, align 4, !tbaa !89
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %122, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @img, align 8, !tbaa !6
  %65 = getelementptr inbounds i8, ptr %64, i64 168
  %66 = load i32, ptr %65, align 8, !tbaa !41
  %67 = getelementptr inbounds i8, ptr %64, i64 172
  %68 = load i32, ptr %67, align 4, !tbaa !40
  br i1 %46, label %69, label %97

69:                                               ; preds = %63
  %70 = load i32, ptr %36, align 4, !tbaa !85
  %71 = icmp eq i32 %70, 1
  %72 = select i1 %71, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6684), ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6684)
  %73 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %74 = sext i32 %68 to i64
  %75 = sext i32 %66 to i64
  %76 = getelementptr ptr, ptr %73, i64 %74
  br label %77

77:                                               ; preds = %94, %69
  %78 = phi i64 [ 0, %69 ], [ %95, %94 ]
  br label %79

79:                                               ; preds = %79, %77
  %80 = phi i64 [ 0, %77 ], [ %92, %79 ]
  %81 = getelementptr ptr, ptr %76, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = getelementptr i16, ptr %82, i64 %78
  %84 = getelementptr i16, ptr %83, i64 %75
  %85 = load i16, ptr %84, align 2, !tbaa !10
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds [16 x i16], ptr %72, i64 %80, i64 %78
  %88 = load i16, ptr %87, align 2, !tbaa !10
  %89 = zext i16 %88 to i32
  %90 = sub nsw i32 %86, %89
  %91 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %80, i64 %78
  store i32 %90, ptr %91, align 4, !tbaa !12
  %92 = add nuw nsw i64 %80, 1
  %93 = icmp eq i64 %92, 16
  br i1 %93, label %94, label %79

94:                                               ; preds = %79
  %95 = add nuw nsw i64 %78, 1
  %96 = icmp eq i64 %95, 16
  br i1 %96, label %122, label %77

97:                                               ; preds = %63
  %98 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %99 = sext i32 %68 to i64
  %100 = sext i32 %66 to i64
  %101 = getelementptr ptr, ptr %98, i64 %99
  br label %102

102:                                              ; preds = %119, %97
  %103 = phi i64 [ 0, %97 ], [ %120, %119 ]
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi i64 [ 0, %102 ], [ %117, %104 ]
  %106 = getelementptr ptr, ptr %101, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = getelementptr i16, ptr %107, i64 %103
  %109 = getelementptr i16, ptr %108, i64 %100
  %110 = load i16, ptr %109, align 2, !tbaa !10
  %111 = zext i16 %110 to i32
  %112 = getelementptr inbounds [16 x i16], ptr @pred, i64 %105, i64 %103
  %113 = load i16, ptr %112, align 2, !tbaa !10
  %114 = zext i16 %113 to i32
  %115 = sub nsw i32 %111, %114
  %116 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %105, i64 %103
  store i32 %115, ptr %116, align 4, !tbaa !12
  %117 = add nuw nsw i64 %105, 1
  %118 = icmp eq i64 %117, 16
  br i1 %118, label %119, label %104

119:                                              ; preds = %104
  %120 = add nuw nsw i64 %103, 1
  %121 = icmp eq i64 %120, 16
  br i1 %121, label %122, label %102

122:                                              ; preds = %119, %94, %59
  tail call void @store_macroblock_parameters(i32 noundef signext %0) #12
  %123 = load ptr, ptr @input, align 8, !tbaa !6
  %124 = getelementptr inbounds i8, ptr %123, i64 3136
  %125 = load i32, ptr %124, align 8, !tbaa !78
  %126 = icmp eq i32 %125, 2
  %127 = and i1 %47, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, ptr %123, i64 4312
  %130 = load i32, ptr %129, align 8, !tbaa !90
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %48, align 4, !tbaa !25
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i16 1, ptr %7, align 2, !tbaa !10
  br label %136

136:                                              ; preds = %122, %128, %135, %132, %54
  %137 = phi ptr [ %123, %122 ], [ %123, %128 ], [ %123, %135 ], [ %123, %132 ], [ %58, %54 ]
  %138 = getelementptr inbounds i8, ptr %137, i64 3892
  %139 = load i32, ptr %138, align 4, !tbaa !55
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %163

141:                                              ; preds = %136
  br i1 %50, label %142, label %145

142:                                              ; preds = %141
  %143 = load i32, ptr %36, align 4, !tbaa !85
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %161, label %162

145:                                              ; preds = %141
  br i1 %52, label %146, label %154

146:                                              ; preds = %145
  %147 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %148 = getelementptr inbounds i8, ptr %147, i64 1156
  %149 = load i32, ptr %148, align 4, !tbaa !81
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %146
  %152 = load i32, ptr %36, align 4, !tbaa !85
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %162

154:                                              ; preds = %145
  br i1 %46, label %155, label %162

155:                                              ; preds = %154
  %156 = load i16, ptr %53, align 4, !tbaa !10
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = load i32, ptr %36, align 4, !tbaa !85
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158, %151, %142
  store i32 1, ptr %36, align 4, !tbaa !85
  br label %54

162:                                              ; preds = %142, %146, %151, %158, %155, %154
  store i32 0, ptr %36, align 4, !tbaa !85
  br label %163

163:                                              ; preds = %136, %162
  br i1 %52, label %164, label %199

164:                                              ; preds = %163
  %165 = load i16, ptr %7, align 2, !tbaa !10
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %199

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %2, i64 20
  %169 = load i16, ptr %168, align 2, !tbaa !10
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %199, label %171

171:                                              ; preds = %167
  %172 = load i32, ptr %48, align 4, !tbaa !25
  %173 = icmp eq i32 %172, 0
  %174 = and i32 %172, 15
  %175 = icmp eq i32 %174, 15
  %176 = or i1 %173, %175
  br i1 %176, label %199, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds i8, ptr %137, i64 3144
  %179 = load i32, ptr %178, align 8, !tbaa !91
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %177
  %182 = load ptr, ptr @img, align 8, !tbaa !6
  %183 = getelementptr inbounds i8, ptr %182, i64 90208
  store i32 1, ptr %183, align 8, !tbaa !86
  %184 = load double, ptr %2, align 8, !tbaa !67
  %185 = tail call signext i32 @RDCost_for_macroblocks(double noundef %184, i32 noundef signext 0, ptr noundef %3, ptr noundef %4, i32 noundef signext %5) #12
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %199, label %187

187:                                              ; preds = %181
  %188 = load ptr, ptr @input, align 8, !tbaa !6
  %189 = getelementptr inbounds i8, ptr %188, i64 3908
  %190 = load i32, ptr %189, align 4, !tbaa !89
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %187
  %193 = load ptr, ptr @img, align 8, !tbaa !6
  %194 = getelementptr inbounds i8, ptr %193, i64 168
  %195 = load i32, ptr %194, align 8, !tbaa !41
  %196 = getelementptr inbounds i8, ptr %193, i64 172
  %197 = load i32, ptr %196, align 4, !tbaa !40
  tail call void @rc_store_diff(i32 noundef signext %195, i32 noundef signext %197, ptr noundef nonnull @pred)
  br label %198

198:                                              ; preds = %192, %187
  tail call void @store_macroblock_parameters(i32 noundef signext 0) #12
  br label %199

199:                                              ; preds = %42, %163, %164, %167, %171, %177, %198, %181
  ret void
}

declare dso_local void @SetModesAndRefframeForBlocks(i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @RDCost_for_macroblocks(double noundef, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @store_macroblock_parameters(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @submacroblock_mode_decision(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4, i16 noundef signext %5, i32 noundef signext %6, ptr nocapture noundef %7, ptr nocapture noundef %8, ptr nocapture noundef %9, i32 noundef signext %10) local_unnamed_addr #2 {
  %12 = alloca i16, align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [5 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca [16 x [16 x i32]], align 4
  %21 = alloca [2 x [16 x [16 x i32]]], align 4
  %22 = alloca %struct.RD_PARAMS, align 8
  %23 = alloca %struct.RD_PARAMS, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i16 0, ptr %12, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #12
  store i16 -256, ptr %13, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %16) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %16, ptr noundef nonnull align 4 dereferenceable(20) @__const.encode_one_macroblock.bmcost, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #12
  store i32 0, ptr %17, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #12
  %24 = icmp eq i32 %10, 0
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %21) #12
  %25 = load ptr, ptr @img, align 8
  %26 = select i1 %24, i64 14152, i64 18248
  %27 = select i1 %24, i64 21320, i64 29512
  %28 = select i1 %24, i64 3, i64 2
  %29 = sdiv i32 %6, 2
  %30 = shl i32 %29, 3
  %31 = ashr exact i32 %30, 2
  %32 = mul i32 %29, 2
  %33 = sub i32 %6, %32
  %34 = shl nsw i32 %33, 1
  %35 = getelementptr inbounds i8, ptr %25, i64 128
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = getelementptr inbounds i8, ptr %25, i64 12
  %38 = sext i32 %34 to i64
  %39 = sext i32 %31 to i64
  %40 = load i32, ptr %37, align 4, !tbaa !19
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %36, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %43, i64 %38
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds i32, ptr %45, i64 %39
  store i32 0, ptr %46, align 4, !tbaa !12
  %47 = load i32, ptr %37, align 4, !tbaa !19
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %36, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = or disjoint i64 %38, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds i32, ptr %53, i64 %39
  store i32 0, ptr %54, align 4, !tbaa !12
  %55 = or disjoint i64 %39, 1
  %56 = load i32, ptr %37, align 4, !tbaa !19
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %36, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds ptr, ptr %59, i64 %38
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = getelementptr inbounds i32, ptr %61, i64 %55
  store i32 0, ptr %62, align 4, !tbaa !12
  %63 = load i32, ptr %37, align 4, !tbaa !19
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %36, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = getelementptr inbounds ptr, ptr %66, i64 %51
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds i32, ptr %68, i64 %55
  store i32 0, ptr %69, align 4, !tbaa !12
  %70 = select i1 %24, i64 5, i64 2
  %71 = getelementptr inbounds i8, ptr %25, i64 %26
  %72 = getelementptr inbounds i8, ptr %25, i64 %27
  %73 = select i1 %24, i64 2, i64 0
  %74 = shl nsw i32 %33, 3
  br i1 %24, label %77, label %75

75:                                               ; preds = %11
  %76 = getelementptr inbounds i8, ptr %2, i64 468
  store i32 1, ptr %76, align 4, !tbaa !85
  br label %77

77:                                               ; preds = %75, %11
  %78 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  tail call void @store_coding_state(ptr noundef %78) #12
  %79 = icmp eq i16 %5, 0
  %80 = getelementptr inbounds i8, ptr %0, i64 20
  %81 = getelementptr inbounds i8, ptr %0, i64 30
  %82 = getelementptr inbounds i8, ptr %0, i64 32
  %83 = getelementptr inbounds i8, ptr %0, i64 34
  %84 = shl i32 %6, 1
  %85 = and i32 %84, 2
  %86 = and i32 %6, 2
  %87 = getelementptr inbounds i8, ptr %13, i64 1
  %88 = getelementptr inbounds i8, ptr %0, i64 16
  %89 = getelementptr inbounds i8, ptr %0, i64 50
  %90 = getelementptr inbounds i8, ptr %16, i64 4
  %91 = getelementptr inbounds i8, ptr %16, i64 8
  %92 = getelementptr inbounds i8, ptr %0, i64 8
  %93 = getelementptr inbounds i8, ptr %1, i64 6148
  %94 = sext i32 %6 to i64
  %95 = getelementptr inbounds [4 x i16], ptr %93, i64 0, i64 %94
  %96 = getelementptr inbounds i8, ptr %1, i64 6156
  %97 = getelementptr inbounds [4 x i16], ptr %96, i64 0, i64 %94
  %98 = getelementptr inbounds i8, ptr %1, i64 6164
  %99 = getelementptr inbounds [4 x i8], ptr %98, i64 0, i64 %94
  %100 = getelementptr inbounds i8, ptr %1, i64 6168
  %101 = getelementptr inbounds [4 x i8], ptr %100, i64 0, i64 %94
  %102 = shl i32 %6, 2
  %103 = and i32 %102, -8
  %104 = add nsw i32 %103, %34
  %105 = shl i32 51, %104
  %106 = xor i32 %105, -1
  %107 = getelementptr inbounds i8, ptr %1, i64 4
  %108 = getelementptr inbounds i8, ptr %1, i64 1028
  %109 = getelementptr inbounds i8, ptr %1, i64 2052
  %110 = getelementptr inbounds i8, ptr %1, i64 3076
  %111 = getelementptr inbounds i8, ptr %1, i64 4100
  %112 = getelementptr inbounds i8, ptr %1, i64 5124
  %113 = getelementptr inbounds i8, ptr %1, i64 6172
  %114 = getelementptr inbounds i8, ptr %1, i64 6684
  %115 = getelementptr inbounds i8, ptr %1, i64 7196
  %116 = getelementptr inbounds i8, ptr %72, i64 1024
  %117 = getelementptr inbounds i8, ptr %21, i64 1024
  %118 = icmp slt i32 %6, 3
  %119 = sext i32 %74 to i64
  %120 = add nsw i32 %74, 8
  %121 = sext i32 %30 to i64
  %122 = add i32 %30, 8
  %123 = shl nsw i64 %121, 6
  %124 = shl nsw i64 %119, 2
  %125 = zext i1 %79 to i64
  %126 = getelementptr inbounds i8, ptr %3, i64 8
  %127 = getelementptr inbounds i8, ptr %3, i64 16
  %128 = getelementptr inbounds i8, ptr %3, i64 24
  %129 = sext i32 %120 to i64
  %130 = sext i32 %120 to i64
  %131 = getelementptr i8, ptr %20, i64 %123
  %132 = getelementptr i8, ptr %131, i64 %124
  %133 = getelementptr i8, ptr %25, i64 %26
  %134 = getelementptr i8, ptr %133, i64 %123
  %135 = getelementptr i8, ptr %134, i64 %124
  %136 = or disjoint i64 %119, 1
  %137 = or disjoint i64 %119, 2
  %138 = or disjoint i64 %119, 3
  %139 = or disjoint i64 %119, 4
  %140 = or disjoint i64 %119, 5
  %141 = or disjoint i64 %119, 6
  %142 = or disjoint i64 %119, 7
  br label %177

143:                                              ; preds = %869
  %144 = load ptr, ptr @img, align 8, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %144, i64 128
  %146 = load ptr, ptr %145, align 8, !tbaa !92
  %147 = getelementptr inbounds i8, ptr %144, i64 12
  %148 = load i32, ptr %147, align 4, !tbaa !19
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %146, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !6
  %152 = getelementptr inbounds ptr, ptr %151, i64 %38
  %153 = load ptr, ptr %152, align 8, !tbaa !6
  %154 = getelementptr inbounds i32, ptr %153, i64 %39
  store i32 %870, ptr %154, align 4, !tbaa !12
  %155 = load i32, ptr %147, align 4, !tbaa !19
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %146, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !6
  %159 = getelementptr inbounds ptr, ptr %158, i64 %51
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  %161 = getelementptr inbounds i32, ptr %160, i64 %39
  store i32 %871, ptr %161, align 4, !tbaa !12
  %162 = load i32, ptr %147, align 4, !tbaa !19
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %146, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = getelementptr inbounds ptr, ptr %165, i64 %38
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = getelementptr inbounds i32, ptr %167, i64 %55
  store i32 %873, ptr %168, align 4, !tbaa !12
  %169 = load i32, ptr %147, align 4, !tbaa !19
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %146, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = getelementptr inbounds ptr, ptr %172, i64 %51
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = getelementptr inbounds i32, ptr %174, i64 %55
  store i32 %872, ptr %175, align 4, !tbaa !12
  %176 = sext i16 %5 to i32
  br i1 %24, label %880, label %887

177:                                              ; preds = %77, %869
  %178 = phi i32 [ 0, %77 ], [ %870, %869 ]
  %179 = phi i32 [ 0, %77 ], [ %871, %869 ]
  %180 = phi i32 [ 0, %77 ], [ %872, %869 ]
  %181 = phi i32 [ 0, %77 ], [ %873, %869 ]
  %182 = phi i64 [ %125, %77 ], [ %878, %869 ]
  %183 = phi i32 [ 2147483647, %77 ], [ %877, %869 ]
  %184 = phi i32 [ 0, %77 ], [ %876, %869 ]
  %185 = phi double [ 0.000000e+00, %77 ], [ %875, %869 ]
  %186 = phi double [ 1.000000e+30, %77 ], [ %874, %869 ]
  %187 = getelementptr inbounds [6 x i32], ptr @b8_mode_table, i64 0, i64 %182
  %188 = load i32, ptr %187, align 4, !tbaa !12
  store i32 0, ptr %8, align 4, !tbaa !12
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [15 x i16], ptr %80, i64 0, i64 %189
  %191 = load i16, ptr %190, align 2, !tbaa !10
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %869, label %193

193:                                              ; preds = %177
  %194 = icmp ne i64 %182, 0
  %195 = icmp ne i64 %182, 5
  %196 = and i1 %194, %195
  %197 = or i1 %24, %196
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %200 = getelementptr inbounds i8, ptr %199, i64 1156
  %201 = load i32, ptr %200, align 4, !tbaa !81
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %869, label %203

203:                                              ; preds = %198, %193
  store i64 0, ptr %14, align 8, !tbaa !93
  %204 = trunc nuw nsw i64 %182 to i32
  switch i32 %204, label %276 [
    i32 5, label %205
    i32 0, label %205
  ]

205:                                              ; preds = %203, %203
  %206 = load ptr, ptr @input, align 8, !tbaa !6
  %207 = getelementptr inbounds i8, ptr %206, i64 3136
  %208 = load i32, ptr %207, align 8, !tbaa !78
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %249

210:                                              ; preds = %205
  store i32 0, ptr %15, align 4, !tbaa !12
  %211 = call signext i32 @Get_Direct_Cost8x8(i32 noundef signext %6, ptr noundef nonnull %15) #12
  %212 = icmp eq i32 %211, 2147483647
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr %7, align 4, !tbaa !12
  %215 = icmp eq i32 %214, 2147483647
  br i1 %215, label %216, label %217

216:                                              ; preds = %213, %210
  store i32 2147483647, ptr %7, align 4, !tbaa !12
  br i1 %24, label %247, label %223

217:                                              ; preds = %213
  %218 = add nsw i32 %214, %211
  store i32 %218, ptr %7, align 4, !tbaa !12
  br i1 %24, label %247, label %219

219:                                              ; preds = %217
  %220 = load i32, ptr %15, align 4, !tbaa !12
  %221 = load i32, ptr %9, align 4, !tbaa !12
  %222 = add nsw i32 %221, %220
  br label %223

223:                                              ; preds = %216, %219
  %224 = phi i32 [ %222, %219 ], [ 2147483647, %216 ]
  store i32 %224, ptr %9, align 4, !tbaa !12
  %225 = load ptr, ptr @input, align 8, !tbaa !6
  %226 = getelementptr inbounds i8, ptr %225, i64 3892
  %227 = load i32, ptr %226, align 4, !tbaa !55
  switch i32 %227, label %243 [
    i32 1, label %228
    i32 2, label %241
  ]

228:                                              ; preds = %223
  %229 = load i32, ptr %15, align 4, !tbaa !12
  %230 = icmp slt i32 %229, %211
  br i1 %230, label %243, label %231

231:                                              ; preds = %228
  %232 = load i16, ptr %81, align 2, !tbaa !10
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %243, label %234

234:                                              ; preds = %231
  %235 = load i16, ptr %82, align 4, !tbaa !10
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %234
  %238 = load i16, ptr %83, align 2, !tbaa !10
  %239 = icmp eq i16 %238, 0
  %240 = select i1 %239, i32 %229, i32 %211
  br label %243

241:                                              ; preds = %223
  %242 = load i32, ptr %15, align 4, !tbaa !12
  br label %243

243:                                              ; preds = %237, %223, %228, %231, %234, %241
  %244 = phi i32 [ %242, %241 ], [ %229, %234 ], [ %229, %231 ], [ %229, %228 ], [ %211, %223 ], [ %240, %237 ]
  store i32 %244, ptr %8, align 4, !tbaa !12
  %245 = load i32, ptr %226, align 4, !tbaa !55
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %247, label %249

247:                                              ; preds = %216, %217, %243
  %248 = phi i32 [ 2147483647, %243 ], [ %211, %217 ], [ %211, %216 ]
  store i32 %248, ptr %8, align 4, !tbaa !12
  br label %249

249:                                              ; preds = %247, %243, %205
  %250 = load ptr, ptr @img, align 8, !tbaa !6
  %251 = getelementptr inbounds i8, ptr %250, i64 144
  %252 = load i32, ptr %251, align 8, !tbaa !94
  %253 = add nsw i32 %252, %85
  %254 = getelementptr inbounds i8, ptr %250, i64 148
  %255 = load i32, ptr %254, align 4, !tbaa !95
  %256 = add nsw i32 %255, %86
  %257 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !6
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  %259 = sext i32 %256 to i64
  %260 = getelementptr inbounds ptr, ptr %258, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !6
  %262 = sext i32 %253 to i64
  %263 = getelementptr inbounds i8, ptr %261, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !79
  store i8 %264, ptr %13, align 2, !tbaa !79
  %265 = getelementptr inbounds i8, ptr %257, i64 8
  %266 = load ptr, ptr %265, align 8, !tbaa !6
  %267 = getelementptr inbounds ptr, ptr %266, i64 %259
  %268 = load ptr, ptr %267, align 8, !tbaa !6
  %269 = getelementptr inbounds i8, ptr %268, i64 %262
  %270 = load i8, ptr %269, align 1, !tbaa !79
  store i8 %270, ptr %87, align 1, !tbaa !79
  %271 = load ptr, ptr @direct_pdir, align 8, !tbaa !6
  %272 = getelementptr inbounds ptr, ptr %271, i64 %259
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  %274 = getelementptr inbounds i16, ptr %273, i64 %262
  %275 = load i16, ptr %274, align 2, !tbaa !10
  store i16 %275, ptr %12, align 2, !tbaa !10
  br label %493

276:                                              ; preds = %203
  %277 = load i32, ptr %88, align 8, !tbaa !71
  call void @PartitionMotionSearch(i32 noundef signext %188, i32 noundef signext %6, i32 noundef signext %277) #12
  store i32 2147483647, ptr %16, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %22) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !96
  call void @list_prediction_cost(i32 noundef signext 0, i32 noundef signext %6, i32 noundef signext %188, ptr noundef nonnull %22, ptr noundef nonnull %16, ptr noundef nonnull %13)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %22) #12
  %278 = load ptr, ptr @img, align 8, !tbaa !6
  %279 = getelementptr inbounds i8, ptr %278, i64 144
  %280 = load i32, ptr %279, align 8, !tbaa !94
  %281 = add i32 %280, %85
  %282 = getelementptr inbounds i8, ptr %278, i64 148
  %283 = load i32, ptr %282, align 4, !tbaa !95
  %284 = add i32 %283, %86
  %285 = add nsw i32 %284, 2
  %286 = load i8, ptr %13, align 2, !tbaa !79
  %287 = zext i8 %286 to i64
  %288 = sext i32 %281 to i64
  %289 = sext i32 %284 to i64
  %290 = sext i32 %285 to i64
  %291 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %292 = getelementptr inbounds i8, ptr %291, i64 6480
  %293 = load ptr, ptr %292, align 8, !tbaa !97
  %294 = load ptr, ptr %293, align 8, !tbaa !6
  %295 = getelementptr inbounds ptr, ptr %294, i64 %289
  %296 = load ptr, ptr %295, align 8, !tbaa !6
  %297 = getelementptr inbounds i8, ptr %296, i64 %288
  store i8 %286, ptr %297, align 1, !tbaa !79
  %298 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %299 = getelementptr inbounds i8, ptr %298, i64 24
  %300 = load i16, ptr %89, align 2, !tbaa !10
  %301 = sext i16 %300 to i64
  %302 = getelementptr inbounds [6 x [33 x i64]], ptr %299, i64 0, i64 %301, i64 %287
  %303 = load i64, ptr %302, align 8, !tbaa !93
  %304 = getelementptr inbounds i8, ptr %298, i64 6488
  %305 = load ptr, ptr %304, align 8, !tbaa !98
  %306 = load ptr, ptr %305, align 8, !tbaa !6
  %307 = getelementptr inbounds ptr, ptr %306, i64 %289
  %308 = load ptr, ptr %307, align 8, !tbaa !6
  %309 = getelementptr inbounds i64, ptr %308, i64 %288
  store i64 %303, ptr %309, align 8, !tbaa !93
  %310 = add nsw i64 %288, 1
  %311 = getelementptr inbounds i8, ptr %298, i64 6480
  %312 = load ptr, ptr %311, align 8, !tbaa !97
  %313 = load ptr, ptr %312, align 8, !tbaa !6
  %314 = getelementptr inbounds ptr, ptr %313, i64 %289
  %315 = load ptr, ptr %314, align 8, !tbaa !6
  %316 = getelementptr inbounds i8, ptr %315, i64 %310
  store i8 %286, ptr %316, align 1, !tbaa !79
  %317 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %318 = getelementptr inbounds i8, ptr %317, i64 24
  %319 = load i16, ptr %89, align 2, !tbaa !10
  %320 = sext i16 %319 to i64
  %321 = getelementptr inbounds [6 x [33 x i64]], ptr %318, i64 0, i64 %320, i64 %287
  %322 = load i64, ptr %321, align 8, !tbaa !93
  %323 = getelementptr inbounds i8, ptr %317, i64 6488
  %324 = load ptr, ptr %323, align 8, !tbaa !98
  %325 = load ptr, ptr %324, align 8, !tbaa !6
  %326 = getelementptr inbounds ptr, ptr %325, i64 %289
  %327 = load ptr, ptr %326, align 8, !tbaa !6
  %328 = getelementptr inbounds i64, ptr %327, i64 %310
  store i64 %322, ptr %328, align 8, !tbaa !93
  %329 = add nsw i64 %289, 1
  %330 = icmp slt i64 %329, %290
  br i1 %330, label %331, label %368

331:                                              ; preds = %276
  %332 = getelementptr inbounds i8, ptr %317, i64 6480
  %333 = load ptr, ptr %332, align 8, !tbaa !97
  %334 = load ptr, ptr %333, align 8, !tbaa !6
  %335 = getelementptr inbounds ptr, ptr %334, i64 %329
  %336 = load ptr, ptr %335, align 8, !tbaa !6
  %337 = getelementptr inbounds i8, ptr %336, i64 %288
  store i8 %286, ptr %337, align 1, !tbaa !79
  %338 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %339 = getelementptr inbounds i8, ptr %338, i64 24
  %340 = load i16, ptr %89, align 2, !tbaa !10
  %341 = sext i16 %340 to i64
  %342 = getelementptr inbounds [6 x [33 x i64]], ptr %339, i64 0, i64 %341, i64 %287
  %343 = load i64, ptr %342, align 8, !tbaa !93
  %344 = getelementptr inbounds i8, ptr %338, i64 6488
  %345 = load ptr, ptr %344, align 8, !tbaa !98
  %346 = load ptr, ptr %345, align 8, !tbaa !6
  %347 = getelementptr inbounds ptr, ptr %346, i64 %329
  %348 = load ptr, ptr %347, align 8, !tbaa !6
  %349 = getelementptr inbounds i64, ptr %348, i64 %288
  store i64 %343, ptr %349, align 8, !tbaa !93
  %350 = getelementptr inbounds i8, ptr %338, i64 6480
  %351 = load ptr, ptr %350, align 8, !tbaa !97
  %352 = load ptr, ptr %351, align 8, !tbaa !6
  %353 = getelementptr inbounds ptr, ptr %352, i64 %329
  %354 = load ptr, ptr %353, align 8, !tbaa !6
  %355 = getelementptr inbounds i8, ptr %354, i64 %310
  store i8 %286, ptr %355, align 1, !tbaa !79
  %356 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %357 = getelementptr inbounds i8, ptr %356, i64 24
  %358 = load i16, ptr %89, align 2, !tbaa !10
  %359 = sext i16 %358 to i64
  %360 = getelementptr inbounds [6 x [33 x i64]], ptr %357, i64 0, i64 %359, i64 %287
  %361 = load i64, ptr %360, align 8, !tbaa !93
  %362 = getelementptr inbounds i8, ptr %356, i64 6488
  %363 = load ptr, ptr %362, align 8, !tbaa !98
  %364 = load ptr, ptr %363, align 8, !tbaa !6
  %365 = getelementptr inbounds ptr, ptr %364, i64 %329
  %366 = load ptr, ptr %365, align 8, !tbaa !6
  %367 = getelementptr inbounds i64, ptr %366, i64 %310
  store i64 %361, ptr %367, align 8, !tbaa !93
  br label %368

368:                                              ; preds = %331, %276
  br i1 %79, label %491, label %369

369:                                              ; preds = %368
  store i32 2147483647, ptr %90, align 4, !tbaa !12
  store i32 2147483647, ptr %91, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %23) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !96
  call void @list_prediction_cost(i32 noundef signext 1, i32 noundef signext %6, i32 noundef signext %188, ptr noundef nonnull %23, ptr noundef nonnull %16, ptr noundef nonnull %13)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %23) #12
  %370 = load i32, ptr %88, align 8, !tbaa !12
  %371 = load i16, ptr %89, align 2, !tbaa.struct !99
  %372 = sext i16 %371 to i64
  %373 = load ptr, ptr @input, align 8, !tbaa !6
  %374 = getelementptr inbounds i8, ptr %373, i64 3136
  %375 = load i32, ptr %374, align 8, !tbaa !78
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %407, label %377

377:                                              ; preds = %369
  %378 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %372
  %379 = load i32, ptr %378, align 4, !tbaa !12
  %380 = icmp slt i32 %379, 2
  br i1 %380, label %387, label %381

381:                                              ; preds = %377
  %382 = load ptr, ptr @refbits, align 8, !tbaa !6
  %383 = load i8, ptr %13, align 2, !tbaa !79
  %384 = zext i8 %383 to i64
  %385 = getelementptr inbounds i32, ptr %382, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !12
  br label %387

387:                                              ; preds = %381, %377
  %388 = phi i32 [ %386, %381 ], [ 0, %377 ]
  %389 = mul nsw i32 %388, %370
  %390 = ashr i32 %389, 16
  %391 = add nsw i64 %372, 1
  %392 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !12
  %394 = icmp slt i32 %393, 2
  %395 = load i8, ptr %87, align 1, !tbaa !79
  br i1 %394, label %401, label %396

396:                                              ; preds = %387
  %397 = load ptr, ptr @refbits, align 8, !tbaa !6
  %398 = zext i8 %395 to i64
  %399 = getelementptr inbounds i32, ptr %397, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !12
  br label %401

401:                                              ; preds = %396, %387
  %402 = phi i32 [ %400, %396 ], [ 0, %387 ]
  %403 = mul nsw i32 %402, %370
  %404 = ashr i32 %403, 16
  %405 = add nsw i32 %404, %390
  %406 = load i8, ptr %13, align 2, !tbaa !79
  br label %420

407:                                              ; preds = %369
  %408 = load double, ptr %92, align 8, !tbaa !20
  %409 = load i8, ptr %13, align 2, !tbaa !79
  %410 = icmp ne i8 %409, 0
  %411 = zext i1 %410 to i32
  %412 = load i8, ptr %87, align 1, !tbaa !79
  %413 = icmp ne i8 %412, 0
  %414 = zext i1 %413 to i32
  %415 = add nuw nsw i32 %414, %411
  %416 = uitofp nneg i32 %415 to double
  %417 = fmul double %408, %416
  %418 = fmul double %417, 2.000000e+00
  %419 = fptosi double %418 to i32
  br label %420

420:                                              ; preds = %401, %407
  %421 = phi i8 [ %395, %401 ], [ %412, %407 ]
  %422 = phi i8 [ %406, %401 ], [ %409, %407 ]
  %423 = phi i32 [ %405, %401 ], [ %419, %407 ]
  %424 = zext i8 %422 to i16
  %425 = zext i8 %421 to i16
  %426 = call signext i32 @BIDPartitionCost(i32 noundef signext %188, i32 noundef signext %6, i16 noundef signext %424, i16 noundef signext %425, i32 noundef signext %370) #12
  %427 = add nsw i32 %426, %423
  store i32 %427, ptr %91, align 4, !tbaa !12
  call void @determine_prediction_list(i32 noundef signext %188, ptr noundef nonnull %16, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %19)
  %428 = load i8, ptr %13, align 2, !tbaa !79
  %429 = load i8, ptr %87, align 1, !tbaa !79
  %430 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %431 = getelementptr inbounds i8, ptr %430, i64 6480
  %432 = load ptr, ptr %431, align 8, !tbaa !97
  %433 = load ptr, ptr %432, align 8, !tbaa !6
  %434 = getelementptr inbounds ptr, ptr %433, i64 %289
  %435 = load ptr, ptr %434, align 8, !tbaa !6
  %436 = getelementptr inbounds i8, ptr %435, i64 %288
  store i8 %428, ptr %436, align 1, !tbaa !79
  %437 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %438 = getelementptr inbounds i8, ptr %437, i64 6480
  %439 = load ptr, ptr %438, align 8, !tbaa !97
  %440 = getelementptr inbounds i8, ptr %439, i64 8
  %441 = load ptr, ptr %440, align 8, !tbaa !6
  %442 = getelementptr inbounds ptr, ptr %441, i64 %289
  %443 = load ptr, ptr %442, align 8, !tbaa !6
  %444 = getelementptr inbounds i8, ptr %443, i64 %288
  store i8 %429, ptr %444, align 1, !tbaa !79
  %445 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %446 = getelementptr inbounds i8, ptr %445, i64 6480
  %447 = load ptr, ptr %446, align 8, !tbaa !97
  %448 = load ptr, ptr %447, align 8, !tbaa !6
  %449 = getelementptr inbounds ptr, ptr %448, i64 %289
  %450 = load ptr, ptr %449, align 8, !tbaa !6
  %451 = getelementptr inbounds i8, ptr %450, i64 %310
  store i8 %428, ptr %451, align 1, !tbaa !79
  %452 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %453 = getelementptr inbounds i8, ptr %452, i64 6480
  %454 = load ptr, ptr %453, align 8, !tbaa !97
  %455 = getelementptr inbounds i8, ptr %454, i64 8
  %456 = load ptr, ptr %455, align 8, !tbaa !6
  %457 = getelementptr inbounds ptr, ptr %456, i64 %289
  %458 = load ptr, ptr %457, align 8, !tbaa !6
  %459 = getelementptr inbounds i8, ptr %458, i64 %310
  store i8 %429, ptr %459, align 1, !tbaa !79
  br i1 %330, label %460, label %493

460:                                              ; preds = %420
  %461 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %462 = getelementptr inbounds i8, ptr %461, i64 6480
  %463 = load ptr, ptr %462, align 8, !tbaa !97
  %464 = load ptr, ptr %463, align 8, !tbaa !6
  %465 = getelementptr inbounds ptr, ptr %464, i64 %329
  %466 = load ptr, ptr %465, align 8, !tbaa !6
  %467 = getelementptr inbounds i8, ptr %466, i64 %288
  store i8 %428, ptr %467, align 1, !tbaa !79
  %468 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %469 = getelementptr inbounds i8, ptr %468, i64 6480
  %470 = load ptr, ptr %469, align 8, !tbaa !97
  %471 = getelementptr inbounds i8, ptr %470, i64 8
  %472 = load ptr, ptr %471, align 8, !tbaa !6
  %473 = getelementptr inbounds ptr, ptr %472, i64 %329
  %474 = load ptr, ptr %473, align 8, !tbaa !6
  %475 = getelementptr inbounds i8, ptr %474, i64 %288
  store i8 %429, ptr %475, align 1, !tbaa !79
  %476 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %477 = getelementptr inbounds i8, ptr %476, i64 6480
  %478 = load ptr, ptr %477, align 8, !tbaa !97
  %479 = load ptr, ptr %478, align 8, !tbaa !6
  %480 = getelementptr inbounds ptr, ptr %479, i64 %329
  %481 = load ptr, ptr %480, align 8, !tbaa !6
  %482 = getelementptr inbounds i8, ptr %481, i64 %310
  store i8 %428, ptr %482, align 1, !tbaa !79
  %483 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %484 = getelementptr inbounds i8, ptr %483, i64 6480
  %485 = load ptr, ptr %484, align 8, !tbaa !97
  %486 = getelementptr inbounds i8, ptr %485, i64 8
  %487 = load ptr, ptr %486, align 8, !tbaa !6
  %488 = getelementptr inbounds ptr, ptr %487, i64 %329
  %489 = load ptr, ptr %488, align 8, !tbaa !6
  %490 = getelementptr inbounds i8, ptr %489, i64 %310
  store i8 %429, ptr %490, align 1, !tbaa !79
  br label %493

491:                                              ; preds = %368
  store i16 0, ptr %12, align 2, !tbaa !10
  %492 = load i32, ptr %16, align 4, !tbaa !12
  store i32 %492, ptr %8, align 4, !tbaa !12
  br label %493

493:                                              ; preds = %420, %460, %491, %249
  %494 = phi i8 [ %264, %249 ], [ %286, %491 ], [ %428, %460 ], [ %428, %420 ]
  %495 = load ptr, ptr @input, align 8, !tbaa !6
  %496 = getelementptr inbounds i8, ptr %495, i64 3136
  %497 = load i32, ptr %496, align 8, !tbaa !78
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %506, label %499

499:                                              ; preds = %493
  %500 = load double, ptr %0, align 8, !tbaa !67
  %501 = load i16, ptr %12, align 2, !tbaa !10
  %502 = zext i8 %494 to i16
  %503 = load i8, ptr %87, align 1, !tbaa !79
  %504 = zext i8 %503 to i16
  %505 = call double @RDCost_for_8x8blocks(ptr noundef nonnull %17, ptr noundef nonnull %14, double noundef %500, i32 noundef signext %6, i32 noundef signext %188, i16 noundef signext %501, i16 noundef signext %502, i16 noundef signext %504) #12
  br label %535

506:                                              ; preds = %493
  %507 = load i32, ptr %8, align 4, !tbaa !12
  %508 = icmp eq i32 %507, 2147483647
  br i1 %508, label %535, label %509

509:                                              ; preds = %506
  %510 = load i32, ptr %88, align 8, !tbaa !71
  %511 = load i16, ptr %12, align 2, !tbaa !10
  %512 = icmp sgt i16 %511, 0
  %513 = zext i1 %512 to i64
  %514 = getelementptr inbounds [2 x i16], ptr %89, i64 0, i64 %513
  %515 = load i16, ptr %514, align 2, !tbaa !10
  %516 = sext i16 %515 to i64
  %517 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !12
  %519 = icmp slt i32 %518, 2
  br i1 %519, label %528, label %520

520:                                              ; preds = %509
  %521 = sext i16 %511 to i32
  %522 = load ptr, ptr @refbits, align 8, !tbaa !6
  %523 = call signext i32 @B8Mode2Value(i32 noundef signext %188, i32 noundef signext %521) #12
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, ptr %522, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !12
  %527 = load i32, ptr %8, align 4, !tbaa !12
  br label %528

528:                                              ; preds = %509, %520
  %529 = phi i32 [ %527, %520 ], [ %507, %509 ]
  %530 = phi i32 [ %526, %520 ], [ 0, %509 ]
  %531 = mul nsw i32 %530, %510
  %532 = ashr i32 %531, 16
  %533 = add i32 %529, -1
  %534 = add i32 %533, %532
  store i32 %534, ptr %8, align 4, !tbaa !12
  br label %535

535:                                              ; preds = %506, %528, %499
  %536 = phi double [ %505, %499 ], [ %185, %528 ], [ %185, %506 ]
  %537 = load ptr, ptr @input, align 8, !tbaa !6
  %538 = getelementptr inbounds i8, ptr %537, i64 3136
  %539 = load i32, ptr %538, align 8, !tbaa !78
  %540 = icmp ne i32 %539, 0
  %541 = fcmp olt double %536, %186
  %542 = select i1 %540, i1 %541, i1 false
  br i1 %542, label %543, label %545

543:                                              ; preds = %535
  %544 = load i32, ptr %8, align 4, !tbaa !12
  br label %550

545:                                              ; preds = %535
  %546 = icmp eq i32 %539, 0
  br i1 %546, label %547, label %860

547:                                              ; preds = %545
  %548 = load i32, ptr %8, align 4, !tbaa !12
  %549 = icmp slt i32 %548, %183
  br i1 %549, label %550, label %860

550:                                              ; preds = %543, %547
  %551 = phi i32 [ %544, %543 ], [ %548, %547 ]
  %552 = trunc i32 %188 to i16
  store i16 %552, ptr %95, align 2, !tbaa !10
  %553 = load i16, ptr %12, align 2, !tbaa !10
  store i16 %553, ptr %97, align 2, !tbaa !10
  store i8 %494, ptr %99, align 1, !tbaa !79
  %554 = load i8, ptr %87, align 1, !tbaa !79
  store i8 %554, ptr %101, align 1, !tbaa !79
  %555 = load ptr, ptr @img, align 8, !tbaa !6
  %556 = getelementptr inbounds i8, ptr %555, i64 31576
  %557 = load ptr, ptr %556, align 8, !tbaa !100
  %558 = getelementptr inbounds i8, ptr %555, i64 12
  %559 = load i32, ptr %558, align 4, !tbaa !19
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.macroblock, ptr %557, i64 %560, i32 14, i64 %94
  store i32 %188, ptr %561, align 4, !tbaa !12
  %562 = load i32, ptr %17, align 4, !tbaa !12
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %602, label %564

564:                                              ; preds = %550
  %565 = getelementptr inbounds i8, ptr %555, i64 128
  %566 = load ptr, ptr %565, align 8, !tbaa !92
  %567 = load i32, ptr %558, align 4, !tbaa !19
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds ptr, ptr %566, i64 %568
  %570 = load ptr, ptr %569, align 8, !tbaa !6
  %571 = getelementptr inbounds ptr, ptr %570, i64 %38
  %572 = load ptr, ptr %571, align 8, !tbaa !6
  %573 = getelementptr inbounds i32, ptr %572, i64 %39
  %574 = load i32, ptr %573, align 4, !tbaa !12
  %575 = load ptr, ptr %565, align 8, !tbaa !92
  %576 = load i32, ptr %558, align 4, !tbaa !19
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds ptr, ptr %575, i64 %577
  %579 = load ptr, ptr %578, align 8, !tbaa !6
  %580 = getelementptr inbounds ptr, ptr %579, i64 %51
  %581 = load ptr, ptr %580, align 8, !tbaa !6
  %582 = getelementptr inbounds i32, ptr %581, i64 %39
  %583 = load i32, ptr %582, align 4, !tbaa !12
  %584 = load ptr, ptr %565, align 8, !tbaa !92
  %585 = load i32, ptr %558, align 4, !tbaa !19
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds ptr, ptr %584, i64 %586
  %588 = load ptr, ptr %587, align 8, !tbaa !6
  %589 = getelementptr inbounds ptr, ptr %588, i64 %38
  %590 = load ptr, ptr %589, align 8, !tbaa !6
  %591 = getelementptr inbounds i32, ptr %590, i64 %55
  %592 = load i32, ptr %591, align 4, !tbaa !12
  %593 = load ptr, ptr %565, align 8, !tbaa !92
  %594 = load i32, ptr %558, align 4, !tbaa !19
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds ptr, ptr %593, i64 %595
  %597 = load ptr, ptr %596, align 8, !tbaa !6
  %598 = getelementptr inbounds ptr, ptr %597, i64 %51
  %599 = load ptr, ptr %598, align 8, !tbaa !6
  %600 = getelementptr inbounds i32, ptr %599, i64 %55
  %601 = load i32, ptr %600, align 4, !tbaa !12
  br label %602

602:                                              ; preds = %550, %564
  %603 = phi i32 [ %592, %564 ], [ 0, %550 ]
  %604 = phi i32 [ %574, %564 ], [ 0, %550 ]
  %605 = phi i32 [ %583, %564 ], [ 0, %550 ]
  %606 = phi i32 [ %601, %564 ], [ 0, %550 ]
  %607 = load ptr, ptr @input, align 8, !tbaa !6
  %608 = getelementptr inbounds i8, ptr %607, i64 3136
  %609 = load i32, ptr %608, align 8, !tbaa !78
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %796, label %611

611:                                              ; preds = %602
  %612 = load i32, ptr @cbp_blk8x8, align 4, !tbaa !12
  %613 = and i32 %612, %106
  %614 = load i64, ptr %14, align 8, !tbaa !93
  %615 = trunc i64 %614 to i32
  %616 = or i32 %613, %615
  store i32 %616, ptr @cbp_blk8x8, align 4, !tbaa !12
  %617 = getelementptr inbounds i8, ptr %555, i64 14136
  %618 = load ptr, ptr %617, align 8, !tbaa !101
  %619 = getelementptr inbounds ptr, ptr %618, i64 %94
  %620 = load ptr, ptr %619, align 8, !tbaa !6
  %621 = load ptr, ptr %620, align 8, !tbaa !6
  %622 = load ptr, ptr %3, align 8, !tbaa !6
  %623 = load ptr, ptr %621, align 8, !tbaa !6
  %624 = load ptr, ptr %622, align 8, !tbaa !6
  br label %625

625:                                              ; preds = %611, %625
  %626 = phi i64 [ 0, %611 ], [ %630, %625 ]
  %627 = getelementptr inbounds i32, ptr %623, i64 %626
  %628 = load i32, ptr %627, align 4, !tbaa !12
  %629 = getelementptr inbounds i32, ptr %624, i64 %626
  store i32 %628, ptr %629, align 4, !tbaa !12
  %630 = add nuw nsw i64 %626, 1
  %631 = icmp eq i64 %630, 65
  br i1 %631, label %632, label %625

632:                                              ; preds = %625
  %633 = getelementptr inbounds i8, ptr %621, i64 8
  %634 = load ptr, ptr %633, align 8, !tbaa !6
  %635 = getelementptr inbounds i8, ptr %622, i64 8
  %636 = load ptr, ptr %635, align 8, !tbaa !6
  br label %637

637:                                              ; preds = %637, %632
  %638 = phi i64 [ 0, %632 ], [ %642, %637 ]
  %639 = getelementptr inbounds i32, ptr %634, i64 %638
  %640 = load i32, ptr %639, align 4, !tbaa !12
  %641 = getelementptr inbounds i32, ptr %636, i64 %638
  store i32 %640, ptr %641, align 4, !tbaa !12
  %642 = add nuw nsw i64 %638, 1
  %643 = icmp eq i64 %642, 65
  br i1 %643, label %644, label %637

644:                                              ; preds = %637
  %645 = getelementptr inbounds i8, ptr %620, i64 8
  %646 = load ptr, ptr %645, align 8, !tbaa !6
  %647 = load ptr, ptr %126, align 8, !tbaa !6
  %648 = load ptr, ptr %646, align 8, !tbaa !6
  %649 = load ptr, ptr %647, align 8, !tbaa !6
  br label %650

650:                                              ; preds = %650, %644
  %651 = phi i64 [ 0, %644 ], [ %655, %650 ]
  %652 = getelementptr inbounds i32, ptr %648, i64 %651
  %653 = load i32, ptr %652, align 4, !tbaa !12
  %654 = getelementptr inbounds i32, ptr %649, i64 %651
  store i32 %653, ptr %654, align 4, !tbaa !12
  %655 = add nuw nsw i64 %651, 1
  %656 = icmp eq i64 %655, 65
  br i1 %656, label %657, label %650

657:                                              ; preds = %650
  %658 = getelementptr inbounds i8, ptr %646, i64 8
  %659 = load ptr, ptr %658, align 8, !tbaa !6
  %660 = getelementptr inbounds i8, ptr %647, i64 8
  %661 = load ptr, ptr %660, align 8, !tbaa !6
  br label %662

662:                                              ; preds = %662, %657
  %663 = phi i64 [ 0, %657 ], [ %667, %662 ]
  %664 = getelementptr inbounds i32, ptr %659, i64 %663
  %665 = load i32, ptr %664, align 4, !tbaa !12
  %666 = getelementptr inbounds i32, ptr %661, i64 %663
  store i32 %665, ptr %666, align 4, !tbaa !12
  %667 = add nuw nsw i64 %663, 1
  %668 = icmp eq i64 %667, 65
  br i1 %668, label %669, label %662

669:                                              ; preds = %662
  %670 = getelementptr inbounds i8, ptr %620, i64 16
  %671 = load ptr, ptr %670, align 8, !tbaa !6
  %672 = load ptr, ptr %127, align 8, !tbaa !6
  %673 = load ptr, ptr %671, align 8, !tbaa !6
  %674 = load ptr, ptr %672, align 8, !tbaa !6
  br label %675

675:                                              ; preds = %675, %669
  %676 = phi i64 [ 0, %669 ], [ %680, %675 ]
  %677 = getelementptr inbounds i32, ptr %673, i64 %676
  %678 = load i32, ptr %677, align 4, !tbaa !12
  %679 = getelementptr inbounds i32, ptr %674, i64 %676
  store i32 %678, ptr %679, align 4, !tbaa !12
  %680 = add nuw nsw i64 %676, 1
  %681 = icmp eq i64 %680, 65
  br i1 %681, label %682, label %675

682:                                              ; preds = %675
  %683 = getelementptr inbounds i8, ptr %671, i64 8
  %684 = load ptr, ptr %683, align 8, !tbaa !6
  %685 = getelementptr inbounds i8, ptr %672, i64 8
  %686 = load ptr, ptr %685, align 8, !tbaa !6
  br label %687

687:                                              ; preds = %687, %682
  %688 = phi i64 [ 0, %682 ], [ %692, %687 ]
  %689 = getelementptr inbounds i32, ptr %684, i64 %688
  %690 = load i32, ptr %689, align 4, !tbaa !12
  %691 = getelementptr inbounds i32, ptr %686, i64 %688
  store i32 %690, ptr %691, align 4, !tbaa !12
  %692 = add nuw nsw i64 %688, 1
  %693 = icmp eq i64 %692, 65
  br i1 %693, label %694, label %687

694:                                              ; preds = %687
  %695 = getelementptr inbounds i8, ptr %620, i64 24
  %696 = load ptr, ptr %695, align 8, !tbaa !6
  %697 = load ptr, ptr %128, align 8, !tbaa !6
  %698 = load ptr, ptr %696, align 8, !tbaa !6
  %699 = load ptr, ptr %697, align 8, !tbaa !6
  br label %700

700:                                              ; preds = %700, %694
  %701 = phi i64 [ 0, %694 ], [ %705, %700 ]
  %702 = getelementptr inbounds i32, ptr %698, i64 %701
  %703 = load i32, ptr %702, align 4, !tbaa !12
  %704 = getelementptr inbounds i32, ptr %699, i64 %701
  store i32 %703, ptr %704, align 4, !tbaa !12
  %705 = add nuw nsw i64 %701, 1
  %706 = icmp eq i64 %705, 65
  br i1 %706, label %707, label %700

707:                                              ; preds = %700
  %708 = getelementptr inbounds i8, ptr %696, i64 8
  %709 = load ptr, ptr %708, align 8, !tbaa !6
  %710 = getelementptr inbounds i8, ptr %697, i64 8
  %711 = load ptr, ptr %710, align 8, !tbaa !6
  br label %712

712:                                              ; preds = %712, %707
  %713 = phi i64 [ 0, %707 ], [ %717, %712 ]
  %714 = getelementptr inbounds i32, ptr %709, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !12
  %716 = getelementptr inbounds i32, ptr %711, i64 %713
  store i32 %715, ptr %716, align 4, !tbaa !12
  %717 = add nuw nsw i64 %713, 1
  %718 = icmp eq i64 %717, 65
  br i1 %718, label %719, label %712

719:                                              ; preds = %712
  %720 = getelementptr inbounds i8, ptr %555, i64 90572
  %721 = load i32, ptr %720, align 4, !tbaa !102
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %768

723:                                              ; preds = %719
  %724 = getelementptr inbounds i8, ptr %555, i64 156
  %725 = getelementptr inbounds i8, ptr %555, i64 152
  %726 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %727 = getelementptr inbounds i8, ptr %726, i64 6424
  %728 = load ptr, ptr %727, align 8, !tbaa !42
  %729 = getelementptr inbounds i8, ptr %555, i64 12600
  %730 = getelementptr inbounds i8, ptr %555, i64 24
  br label %731

731:                                              ; preds = %723, %764
  %732 = phi i64 [ %121, %723 ], [ %765, %764 ]
  %733 = load i32, ptr %724, align 4, !tbaa !44
  %734 = sext i32 %733 to i64
  %735 = add nsw i64 %732, %734
  %736 = getelementptr inbounds ptr, ptr %728, i64 %735
  %737 = load ptr, ptr %736, align 8, !tbaa !6
  %738 = load ptr, ptr @lrec, align 8
  %739 = getelementptr inbounds ptr, ptr %738, i64 %735
  br label %740

740:                                              ; preds = %731, %761
  %741 = phi i64 [ %119, %731 ], [ %762, %761 ]
  %742 = load i32, ptr %725, align 8, !tbaa !45
  %743 = sext i32 %742 to i64
  %744 = add nsw i64 %741, %743
  %745 = getelementptr inbounds i16, ptr %737, i64 %744
  %746 = load i16, ptr %745, align 2, !tbaa !10
  %747 = getelementptr inbounds [16 x [16 x i16]], ptr %113, i64 0, i64 %732, i64 %741
  store i16 %746, ptr %747, align 2, !tbaa !10
  %748 = getelementptr inbounds [16 x [16 x i16]], ptr %729, i64 0, i64 %732, i64 %741
  %749 = load i16, ptr %748, align 2, !tbaa !10
  %750 = getelementptr inbounds [16 x [16 x i16]], ptr %114, i64 0, i64 %732, i64 %741
  store i16 %749, ptr %750, align 2, !tbaa !10
  %751 = load i32, ptr %730, align 8, !tbaa !14
  %752 = icmp ne i32 %751, 3
  %753 = load i32, ptr @si_frame_indicator, align 4
  %754 = icmp ne i32 %753, 0
  %755 = select i1 %752, i1 true, i1 %754
  br i1 %755, label %761, label %756

756:                                              ; preds = %740
  %757 = load ptr, ptr %739, align 8, !tbaa !6
  %758 = getelementptr inbounds i32, ptr %757, i64 %744
  %759 = load i32, ptr %758, align 4, !tbaa !12
  %760 = getelementptr inbounds [16 x [16 x i32]], ptr %115, i64 0, i64 %732, i64 %741
  store i32 %759, ptr %760, align 4, !tbaa !12
  br label %761

761:                                              ; preds = %740, %756
  %762 = add nsw i64 %741, 1
  %763 = icmp eq i64 %762, %130
  br i1 %763, label %764, label %740

764:                                              ; preds = %761
  %765 = add nsw i64 %732, 1
  %766 = trunc i64 %765 to i32
  %767 = icmp eq i32 %122, %766
  br i1 %767, label %796, label %731

768:                                              ; preds = %719, %792
  %769 = phi i64 [ %793, %792 ], [ %121, %719 ]
  br label %770

770:                                              ; preds = %768, %770
  %771 = phi i64 [ %119, %768 ], [ %790, %770 ]
  %772 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %769, i64 %771
  %773 = load i32, ptr %772, align 4, !tbaa !12
  %774 = getelementptr inbounds [16 x [16 x i32]], ptr %107, i64 0, i64 %769, i64 %771
  store i32 %773, ptr %774, align 4, !tbaa !12
  %775 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %769, i64 %771
  %776 = load i32, ptr %775, align 4, !tbaa !12
  %777 = getelementptr inbounds [16 x [16 x i32]], ptr %108, i64 0, i64 %769, i64 %771
  store i32 %776, ptr %777, align 4, !tbaa !12
  %778 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %769, i64 %771
  %779 = load i32, ptr %778, align 4, !tbaa !12
  %780 = getelementptr inbounds [16 x [16 x i32]], ptr %109, i64 0, i64 %769, i64 %771
  store i32 %779, ptr %780, align 4, !tbaa !12
  %781 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %769, i64 %771
  %782 = load i32, ptr %781, align 4, !tbaa !12
  %783 = getelementptr inbounds [16 x [16 x i32]], ptr %110, i64 0, i64 %769, i64 %771
  store i32 %782, ptr %783, align 4, !tbaa !12
  %784 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %769, i64 %771
  %785 = load i32, ptr %784, align 4, !tbaa !12
  %786 = getelementptr inbounds [16 x [16 x i32]], ptr %111, i64 0, i64 %769, i64 %771
  store i32 %785, ptr %786, align 4, !tbaa !12
  %787 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %769, i64 %771
  %788 = load i32, ptr %787, align 4, !tbaa !12
  %789 = getelementptr inbounds [16 x [16 x i32]], ptr %112, i64 0, i64 %769, i64 %771
  store i32 %788, ptr %789, align 4, !tbaa !12
  %790 = add nsw i64 %771, 1
  %791 = icmp eq i64 %790, %129
  br i1 %791, label %792, label %770

792:                                              ; preds = %770
  %793 = add nsw i64 %769, 1
  %794 = trunc i64 %793 to i32
  %795 = icmp eq i32 %122, %794
  br i1 %795, label %796, label %768

796:                                              ; preds = %792, %764, %602
  %797 = getelementptr inbounds i8, ptr %555, i64 90212
  %798 = load i32, ptr %797, align 4, !tbaa !103
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %857, label %800

800:                                              ; preds = %796, %800
  %801 = phi i64 [ %854, %800 ], [ %121, %796 ]
  %802 = phi i64 [ %855, %800 ], [ 0, %796 ]
  %803 = shl nuw nsw i64 %802, 6
  %804 = getelementptr i8, ptr %132, i64 %803
  %805 = getelementptr i8, ptr %135, i64 %803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %804, ptr noundef nonnull align 4 dereferenceable(32) %805, i64 32, i1 false), !tbaa !12
  %806 = getelementptr inbounds [16 x [16 x i32]], ptr %72, i64 0, i64 %801, i64 %119
  %807 = load i32, ptr %806, align 4, !tbaa !12
  %808 = getelementptr inbounds [16 x [16 x i32]], ptr %21, i64 0, i64 %801, i64 %119
  store i32 %807, ptr %808, align 4, !tbaa !12
  %809 = getelementptr inbounds [16 x [16 x i32]], ptr %116, i64 0, i64 %801, i64 %119
  %810 = load i32, ptr %809, align 4, !tbaa !12
  %811 = getelementptr inbounds [16 x [16 x i32]], ptr %117, i64 0, i64 %801, i64 %119
  store i32 %810, ptr %811, align 4, !tbaa !12
  %812 = getelementptr inbounds [16 x [16 x i32]], ptr %72, i64 0, i64 %801, i64 %136
  %813 = load i32, ptr %812, align 4, !tbaa !12
  %814 = getelementptr inbounds [16 x [16 x i32]], ptr %21, i64 0, i64 %801, i64 %136
  store i32 %813, ptr %814, align 4, !tbaa !12
  %815 = getelementptr inbounds [16 x [16 x i32]], ptr %116, i64 0, i64 %801, i64 %136
  %816 = load i32, ptr %815, align 4, !tbaa !12
  %817 = getelementptr inbounds [16 x [16 x i32]], ptr %117, i64 0, i64 %801, i64 %136
  store i32 %816, ptr %817, align 4, !tbaa !12
  %818 = getelementptr inbounds [16 x [16 x i32]], ptr %72, i64 0, i64 %801, i64 %137
  %819 = load i32, ptr %818, align 4, !tbaa !12
  %820 = getelementptr inbounds [16 x [16 x i32]], ptr %21, i64 0, i64 %801, i64 %137
  store i32 %819, ptr %820, align 4, !tbaa !12
  %821 = getelementptr inbounds [16 x [16 x i32]], ptr %116, i64 0, i64 %801, i64 %137
  %822 = load i32, ptr %821, align 4, !tbaa !12
  %823 = getelementptr inbounds [16 x [16 x i32]], ptr %117, i64 0, i64 %801, i64 %137
  store i32 %822, ptr %823, align 4, !tbaa !12
  %824 = getelementptr inbounds [16 x [16 x i32]], ptr %72, i64 0, i64 %801, i64 %138
  %825 = load i32, ptr %824, align 4, !tbaa !12
  %826 = getelementptr inbounds [16 x [16 x i32]], ptr %21, i64 0, i64 %801, i64 %138
  store i32 %825, ptr %826, align 4, !tbaa !12
  %827 = getelementptr inbounds [16 x [16 x i32]], ptr %116, i64 0, i64 %801, i64 %138
  %828 = load i32, ptr %827, align 4, !tbaa !12
  %829 = getelementptr inbounds [16 x [16 x i32]], ptr %117, i64 0, i64 %801, i64 %138
  store i32 %828, ptr %829, align 4, !tbaa !12
  %830 = getelementptr inbounds [16 x [16 x i32]], ptr %72, i64 0, i64 %801, i64 %139
  %831 = load i32, ptr %830, align 4, !tbaa !12
  %832 = getelementptr inbounds [16 x [16 x i32]], ptr %21, i64 0, i64 %801, i64 %139
  store i32 %831, ptr %832, align 4, !tbaa !12
  %833 = getelementptr inbounds [16 x [16 x i32]], ptr %116, i64 0, i64 %801, i64 %139
  %834 = load i32, ptr %833, align 4, !tbaa !12
  %835 = getelementptr inbounds [16 x [16 x i32]], ptr %117, i64 0, i64 %801, i64 %139
  store i32 %834, ptr %835, align 4, !tbaa !12
  %836 = getelementptr inbounds [16 x [16 x i32]], ptr %72, i64 0, i64 %801, i64 %140
  %837 = load i32, ptr %836, align 4, !tbaa !12
  %838 = getelementptr inbounds [16 x [16 x i32]], ptr %21, i64 0, i64 %801, i64 %140
  store i32 %837, ptr %838, align 4, !tbaa !12
  %839 = getelementptr inbounds [16 x [16 x i32]], ptr %116, i64 0, i64 %801, i64 %140
  %840 = load i32, ptr %839, align 4, !tbaa !12
  %841 = getelementptr inbounds [16 x [16 x i32]], ptr %117, i64 0, i64 %801, i64 %140
  store i32 %840, ptr %841, align 4, !tbaa !12
  %842 = getelementptr inbounds [16 x [16 x i32]], ptr %72, i64 0, i64 %801, i64 %141
  %843 = load i32, ptr %842, align 4, !tbaa !12
  %844 = getelementptr inbounds [16 x [16 x i32]], ptr %21, i64 0, i64 %801, i64 %141
  store i32 %843, ptr %844, align 4, !tbaa !12
  %845 = getelementptr inbounds [16 x [16 x i32]], ptr %116, i64 0, i64 %801, i64 %141
  %846 = load i32, ptr %845, align 4, !tbaa !12
  %847 = getelementptr inbounds [16 x [16 x i32]], ptr %117, i64 0, i64 %801, i64 %141
  store i32 %846, ptr %847, align 4, !tbaa !12
  %848 = getelementptr inbounds [16 x [16 x i32]], ptr %72, i64 0, i64 %801, i64 %142
  %849 = load i32, ptr %848, align 4, !tbaa !12
  %850 = getelementptr inbounds [16 x [16 x i32]], ptr %21, i64 0, i64 %801, i64 %142
  store i32 %849, ptr %850, align 4, !tbaa !12
  %851 = getelementptr inbounds [16 x [16 x i32]], ptr %116, i64 0, i64 %801, i64 %142
  %852 = load i32, ptr %851, align 4, !tbaa !12
  %853 = getelementptr inbounds [16 x [16 x i32]], ptr %117, i64 0, i64 %801, i64 %142
  store i32 %852, ptr %853, align 4, !tbaa !12
  %854 = add nsw i64 %801, 1
  %855 = add nuw nsw i64 %802, 1
  %856 = icmp eq i64 %855, 8
  br i1 %856, label %857, label %800

857:                                              ; preds = %800, %796
  br i1 %118, label %858, label %860

858:                                              ; preds = %857
  %859 = load ptr, ptr @cs_b8, align 8, !tbaa !6
  call void @store_coding_state(ptr noundef %859) #12
  br label %860

860:                                              ; preds = %857, %858, %547, %545
  %861 = phi i32 [ %604, %858 ], [ %604, %857 ], [ %178, %547 ], [ %178, %545 ]
  %862 = phi i32 [ %605, %858 ], [ %605, %857 ], [ %179, %547 ], [ %179, %545 ]
  %863 = phi i32 [ %606, %858 ], [ %606, %857 ], [ %180, %547 ], [ %180, %545 ]
  %864 = phi i32 [ %603, %858 ], [ %603, %857 ], [ %181, %547 ], [ %181, %545 ]
  %865 = phi double [ %536, %858 ], [ %536, %857 ], [ %186, %547 ], [ %186, %545 ]
  %866 = phi i32 [ %562, %858 ], [ %562, %857 ], [ %184, %547 ], [ %184, %545 ]
  %867 = phi i32 [ %551, %858 ], [ %551, %857 ], [ %183, %547 ], [ %183, %545 ]
  %868 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  call void @reset_coding_state(ptr noundef %868) #12
  br label %869

869:                                              ; preds = %177, %198, %860
  %870 = phi i32 [ %178, %177 ], [ %861, %860 ], [ %178, %198 ]
  %871 = phi i32 [ %179, %177 ], [ %862, %860 ], [ %179, %198 ]
  %872 = phi i32 [ %180, %177 ], [ %863, %860 ], [ %180, %198 ]
  %873 = phi i32 [ %181, %177 ], [ %864, %860 ], [ %181, %198 ]
  %874 = phi double [ %186, %177 ], [ %865, %860 ], [ %186, %198 ]
  %875 = phi double [ %185, %177 ], [ %536, %860 ], [ %185, %198 ]
  %876 = phi i32 [ %184, %177 ], [ %866, %860 ], [ %184, %198 ]
  %877 = phi i32 [ %183, %177 ], [ %867, %860 ], [ %183, %198 ]
  %878 = add nuw nsw i64 %182, 1
  %879 = icmp ult i64 %878, %70
  br i1 %879, label %177, label %143

880:                                              ; preds = %143
  %881 = load i32, ptr %1, align 4, !tbaa !104
  %882 = add nsw i32 %881, %877
  store i32 %882, ptr %1, align 4, !tbaa !104
  %883 = load ptr, ptr @input, align 8, !tbaa !6
  %884 = getelementptr inbounds i8, ptr %883, i64 3136
  %885 = load i32, ptr %884, align 8, !tbaa !78
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %895, label %1087

887:                                              ; preds = %143
  %888 = load ptr, ptr @input, align 8, !tbaa !6
  %889 = getelementptr inbounds i8, ptr %888, i64 3136
  %890 = load i32, ptr %889, align 8, !tbaa !78
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %892, label %1087

892:                                              ; preds = %887
  %893 = load i32, ptr %1, align 4, !tbaa !104
  %894 = add nsw i32 %893, %877
  store i32 %894, ptr %1, align 4, !tbaa !104
  br label %895

895:                                              ; preds = %880, %892
  %896 = load i16, ptr %97, align 2, !tbaa !10
  %897 = load i16, ptr %95, align 2, !tbaa !10
  %898 = sext i16 %897 to i32
  store i64 0, ptr %14, align 8, !tbaa !93
  %899 = and i16 %896, -3
  %900 = icmp eq i16 %899, 0
  %901 = select i1 %900, i32 %898, i32 0
  %902 = add i16 %896, -1
  %903 = icmp ult i16 %902, 2
  %904 = select i1 %903, i32 %898, i32 0
  %905 = load i8, ptr %99, align 1, !tbaa !79
  %906 = zext i8 %905 to i16
  %907 = load i8, ptr %101, align 1, !tbaa !79
  %908 = zext i8 %907 to i16
  %909 = call signext i32 @LumaResidualCoding8x8(ptr noundef nonnull %18, ptr noundef nonnull %14, i32 noundef signext %6, i16 noundef signext %896, i32 noundef signext %901, i32 noundef signext %904, i16 noundef signext %906, i16 noundef signext %908) #12
  %910 = load i32, ptr @cbp_blk8x8, align 4, !tbaa !12
  %911 = and i32 %910, %106
  %912 = load i64, ptr %14, align 8, !tbaa !93
  %913 = trunc i64 %912 to i32
  %914 = or i32 %911, %913
  store i32 %914, ptr @cbp_blk8x8, align 4, !tbaa !12
  %915 = load ptr, ptr %3, align 8, !tbaa !6
  %916 = load ptr, ptr %915, align 8, !tbaa !6
  %917 = load ptr, ptr @img, align 8, !tbaa !6
  %918 = getelementptr inbounds i8, ptr %917, i64 14136
  %919 = load ptr, ptr %918, align 8, !tbaa !101
  %920 = getelementptr inbounds ptr, ptr %919, i64 %94
  %921 = load ptr, ptr %920, align 8, !tbaa !6
  %922 = load ptr, ptr %921, align 8, !tbaa !6
  %923 = load ptr, ptr %922, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %916, ptr noundef nonnull align 4 dereferenceable(260) %923, i64 260, i1 false)
  %924 = load ptr, ptr %3, align 8, !tbaa !6
  %925 = getelementptr inbounds i8, ptr %924, i64 8
  %926 = load ptr, ptr %925, align 8, !tbaa !6
  %927 = load ptr, ptr @img, align 8, !tbaa !6
  %928 = getelementptr inbounds i8, ptr %927, i64 14136
  %929 = load ptr, ptr %928, align 8, !tbaa !101
  %930 = getelementptr inbounds ptr, ptr %929, i64 %94
  %931 = load ptr, ptr %930, align 8, !tbaa !6
  %932 = load ptr, ptr %931, align 8, !tbaa !6
  %933 = getelementptr inbounds i8, ptr %932, i64 8
  %934 = load ptr, ptr %933, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %926, ptr noundef nonnull align 4 dereferenceable(260) %934, i64 260, i1 false)
  %935 = getelementptr inbounds i8, ptr %3, i64 8
  %936 = load ptr, ptr %935, align 8, !tbaa !6
  %937 = load ptr, ptr %936, align 8, !tbaa !6
  %938 = load ptr, ptr @img, align 8, !tbaa !6
  %939 = getelementptr inbounds i8, ptr %938, i64 14136
  %940 = load ptr, ptr %939, align 8, !tbaa !101
  %941 = getelementptr inbounds ptr, ptr %940, i64 %94
  %942 = load ptr, ptr %941, align 8, !tbaa !6
  %943 = getelementptr inbounds i8, ptr %942, i64 8
  %944 = load ptr, ptr %943, align 8, !tbaa !6
  %945 = load ptr, ptr %944, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %937, ptr noundef nonnull align 4 dereferenceable(260) %945, i64 260, i1 false)
  %946 = load ptr, ptr %935, align 8, !tbaa !6
  %947 = getelementptr inbounds i8, ptr %946, i64 8
  %948 = load ptr, ptr %947, align 8, !tbaa !6
  %949 = load ptr, ptr @img, align 8, !tbaa !6
  %950 = getelementptr inbounds i8, ptr %949, i64 14136
  %951 = load ptr, ptr %950, align 8, !tbaa !101
  %952 = getelementptr inbounds ptr, ptr %951, i64 %94
  %953 = load ptr, ptr %952, align 8, !tbaa !6
  %954 = getelementptr inbounds i8, ptr %953, i64 8
  %955 = load ptr, ptr %954, align 8, !tbaa !6
  %956 = getelementptr inbounds i8, ptr %955, i64 8
  %957 = load ptr, ptr %956, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %948, ptr noundef nonnull align 4 dereferenceable(260) %957, i64 260, i1 false)
  %958 = getelementptr inbounds i8, ptr %3, i64 16
  %959 = load ptr, ptr %958, align 8, !tbaa !6
  %960 = load ptr, ptr %959, align 8, !tbaa !6
  %961 = load ptr, ptr @img, align 8, !tbaa !6
  %962 = getelementptr inbounds i8, ptr %961, i64 14136
  %963 = load ptr, ptr %962, align 8, !tbaa !101
  %964 = getelementptr inbounds ptr, ptr %963, i64 %94
  %965 = load ptr, ptr %964, align 8, !tbaa !6
  %966 = getelementptr inbounds i8, ptr %965, i64 16
  %967 = load ptr, ptr %966, align 8, !tbaa !6
  %968 = load ptr, ptr %967, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %960, ptr noundef nonnull align 4 dereferenceable(260) %968, i64 260, i1 false)
  %969 = load ptr, ptr %958, align 8, !tbaa !6
  %970 = getelementptr inbounds i8, ptr %969, i64 8
  %971 = load ptr, ptr %970, align 8, !tbaa !6
  %972 = load ptr, ptr @img, align 8, !tbaa !6
  %973 = getelementptr inbounds i8, ptr %972, i64 14136
  %974 = load ptr, ptr %973, align 8, !tbaa !101
  %975 = getelementptr inbounds ptr, ptr %974, i64 %94
  %976 = load ptr, ptr %975, align 8, !tbaa !6
  %977 = getelementptr inbounds i8, ptr %976, i64 16
  %978 = load ptr, ptr %977, align 8, !tbaa !6
  %979 = getelementptr inbounds i8, ptr %978, i64 8
  %980 = load ptr, ptr %979, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %971, ptr noundef nonnull align 4 dereferenceable(260) %980, i64 260, i1 false)
  %981 = getelementptr inbounds i8, ptr %3, i64 24
  %982 = load ptr, ptr %981, align 8, !tbaa !6
  %983 = load ptr, ptr %982, align 8, !tbaa !6
  %984 = load ptr, ptr @img, align 8, !tbaa !6
  %985 = getelementptr inbounds i8, ptr %984, i64 14136
  %986 = load ptr, ptr %985, align 8, !tbaa !101
  %987 = getelementptr inbounds ptr, ptr %986, i64 %94
  %988 = load ptr, ptr %987, align 8, !tbaa !6
  %989 = getelementptr inbounds i8, ptr %988, i64 24
  %990 = load ptr, ptr %989, align 8, !tbaa !6
  %991 = load ptr, ptr %990, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %983, ptr noundef nonnull align 4 dereferenceable(260) %991, i64 260, i1 false)
  %992 = load ptr, ptr %981, align 8, !tbaa !6
  %993 = getelementptr inbounds i8, ptr %992, i64 8
  %994 = load ptr, ptr %993, align 8, !tbaa !6
  %995 = load ptr, ptr @img, align 8, !tbaa !6
  %996 = getelementptr inbounds i8, ptr %995, i64 14136
  %997 = load ptr, ptr %996, align 8, !tbaa !101
  %998 = getelementptr inbounds ptr, ptr %997, i64 %94
  %999 = load ptr, ptr %998, align 8, !tbaa !6
  %1000 = getelementptr inbounds i8, ptr %999, i64 24
  %1001 = load ptr, ptr %1000, align 8, !tbaa !6
  %1002 = getelementptr inbounds i8, ptr %1001, i64 8
  %1003 = load ptr, ptr %1002, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %994, ptr noundef nonnull align 4 dereferenceable(260) %1003, i64 260, i1 false)
  %1004 = load ptr, ptr @img, align 8, !tbaa !6
  %1005 = getelementptr inbounds i8, ptr %1004, i64 90572
  %1006 = load i32, ptr %1005, align 4, !tbaa !102
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1010, label %1008

1008:                                             ; preds = %895
  %1009 = sext i32 %120 to i64
  br label %1059

1010:                                             ; preds = %895, %1054
  %1011 = phi ptr [ %1055, %1054 ], [ %1004, %895 ]
  %1012 = phi i64 [ %1056, %1054 ], [ %121, %895 ]
  %1013 = getelementptr inbounds [16 x [16 x i16]], ptr %113, i64 0, i64 %1012, i64 %119
  %1014 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1015 = getelementptr inbounds i8, ptr %1014, i64 6424
  %1016 = load ptr, ptr %1015, align 8, !tbaa !42
  %1017 = getelementptr inbounds i8, ptr %1011, i64 156
  %1018 = load i32, ptr %1017, align 4, !tbaa !44
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr ptr, ptr %1016, i64 %1012
  %1021 = getelementptr ptr, ptr %1020, i64 %1019
  %1022 = load ptr, ptr %1021, align 8, !tbaa !6
  %1023 = getelementptr inbounds i8, ptr %1011, i64 152
  %1024 = load i32, ptr %1023, align 8, !tbaa !45
  %1025 = add nsw i32 %1024, %74
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds i16, ptr %1022, i64 %1026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1013, ptr noundef nonnull align 2 dereferenceable(16) %1027, i64 16, i1 false)
  %1028 = getelementptr inbounds [16 x [16 x i16]], ptr %114, i64 0, i64 %1012, i64 %119
  %1029 = load ptr, ptr @img, align 8, !tbaa !6
  %1030 = getelementptr inbounds i8, ptr %1029, i64 12600
  %1031 = getelementptr inbounds [16 x [16 x i16]], ptr %1030, i64 0, i64 %1012, i64 %119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1028, ptr noundef nonnull align 2 dereferenceable(16) %1031, i64 16, i1 false)
  %1032 = load ptr, ptr @img, align 8, !tbaa !6
  %1033 = getelementptr inbounds i8, ptr %1032, i64 24
  %1034 = load i32, ptr %1033, align 8, !tbaa !14
  %1035 = icmp ne i32 %1034, 3
  %1036 = load i32, ptr @si_frame_indicator, align 4
  %1037 = icmp ne i32 %1036, 0
  %1038 = select i1 %1035, i1 true, i1 %1037
  br i1 %1038, label %1054, label %1039

1039:                                             ; preds = %1010
  %1040 = getelementptr inbounds [16 x [16 x i32]], ptr %115, i64 0, i64 %1012, i64 %119
  %1041 = load ptr, ptr @lrec, align 8, !tbaa !6
  %1042 = getelementptr inbounds i8, ptr %1032, i64 156
  %1043 = load i32, ptr %1042, align 4, !tbaa !44
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr ptr, ptr %1041, i64 %1012
  %1046 = getelementptr ptr, ptr %1045, i64 %1044
  %1047 = load ptr, ptr %1046, align 8, !tbaa !6
  %1048 = getelementptr inbounds i8, ptr %1032, i64 152
  %1049 = load i32, ptr %1048, align 8, !tbaa !45
  %1050 = add nsw i32 %1049, %74
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds i32, ptr %1047, i64 %1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1040, ptr noundef nonnull align 4 dereferenceable(32) %1052, i64 32, i1 false)
  %1053 = load ptr, ptr @img, align 8, !tbaa !6
  br label %1054

1054:                                             ; preds = %1010, %1039
  %1055 = phi ptr [ %1032, %1010 ], [ %1053, %1039 ]
  %1056 = add nsw i64 %1012, 1
  %1057 = trunc i64 %1056 to i32
  %1058 = icmp eq i32 %122, %1057
  br i1 %1058, label %1087, label %1010

1059:                                             ; preds = %1008, %1083
  %1060 = phi i64 [ %121, %1008 ], [ %1084, %1083 ]
  br label %1061

1061:                                             ; preds = %1059, %1061
  %1062 = phi i64 [ %119, %1059 ], [ %1081, %1061 ]
  %1063 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1060, i64 %1062
  %1064 = load i32, ptr %1063, align 4, !tbaa !12
  %1065 = getelementptr inbounds [16 x [16 x i32]], ptr %107, i64 0, i64 %1060, i64 %1062
  store i32 %1064, ptr %1065, align 4, !tbaa !12
  %1066 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1060, i64 %1062
  %1067 = load i32, ptr %1066, align 4, !tbaa !12
  %1068 = getelementptr inbounds [16 x [16 x i32]], ptr %108, i64 0, i64 %1060, i64 %1062
  store i32 %1067, ptr %1068, align 4, !tbaa !12
  %1069 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1060, i64 %1062
  %1070 = load i32, ptr %1069, align 4, !tbaa !12
  %1071 = getelementptr inbounds [16 x [16 x i32]], ptr %109, i64 0, i64 %1060, i64 %1062
  store i32 %1070, ptr %1071, align 4, !tbaa !12
  %1072 = getelementptr inbounds [16 x [16 x i32]], ptr @mprRGB, i64 0, i64 %1060, i64 %1062
  %1073 = load i32, ptr %1072, align 4, !tbaa !12
  %1074 = getelementptr inbounds [16 x [16 x i32]], ptr %110, i64 0, i64 %1060, i64 %1062
  store i32 %1073, ptr %1074, align 4, !tbaa !12
  %1075 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 1024), i64 0, i64 %1060, i64 %1062
  %1076 = load i32, ptr %1075, align 4, !tbaa !12
  %1077 = getelementptr inbounds [16 x [16 x i32]], ptr %111, i64 0, i64 %1060, i64 %1062
  store i32 %1076, ptr %1077, align 4, !tbaa !12
  %1078 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds (i8, ptr @mprRGB, i64 2048), i64 0, i64 %1060, i64 %1062
  %1079 = load i32, ptr %1078, align 4, !tbaa !12
  %1080 = getelementptr inbounds [16 x [16 x i32]], ptr %112, i64 0, i64 %1060, i64 %1062
  store i32 %1079, ptr %1080, align 4, !tbaa !12
  %1081 = add nsw i64 %1062, 1
  %1082 = icmp eq i64 %1081, %1009
  br i1 %1082, label %1083, label %1061

1083:                                             ; preds = %1061
  %1084 = add nsw i64 %1060, 1
  %1085 = trunc i64 %1084 to i32
  %1086 = icmp eq i32 %122, %1085
  br i1 %1086, label %1087, label %1059

1087:                                             ; preds = %1083, %1054, %887, %880
  %1088 = phi ptr [ %144, %880 ], [ %144, %887 ], [ %1055, %1054 ], [ %1004, %1083 ]
  %1089 = phi i32 [ %876, %880 ], [ %876, %887 ], [ %909, %1054 ], [ %909, %1083 ]
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1097, label %1091

1091:                                             ; preds = %1087
  %1092 = shl nuw i32 1, %6
  %1093 = load i32, ptr @cbp8x8, align 4, !tbaa !12
  %1094 = or i32 %1093, %1092
  store i32 %1094, ptr @cbp8x8, align 4, !tbaa !12
  %1095 = load i32, ptr @cnt_nonz_8x8, align 4, !tbaa !12
  %1096 = add nsw i32 %1095, %1089
  store i32 %1096, ptr @cnt_nonz_8x8, align 4, !tbaa !12
  br label %1097

1097:                                             ; preds = %1091, %1087
  br i1 %24, label %1098, label %1142

1098:                                             ; preds = %1097
  br i1 %118, label %1099, label %1162

1099:                                             ; preds = %1098, %1137
  %1100 = phi ptr [ %1138, %1137 ], [ %1088, %1098 ]
  %1101 = phi i64 [ %1139, %1137 ], [ %121, %1098 ]
  %1102 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1103 = getelementptr inbounds i8, ptr %1102, i64 6424
  %1104 = load ptr, ptr %1103, align 8, !tbaa !42
  %1105 = getelementptr inbounds i8, ptr %1100, i64 156
  %1106 = load i32, ptr %1105, align 4, !tbaa !44
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr ptr, ptr %1104, i64 %1101
  %1109 = getelementptr ptr, ptr %1108, i64 %1107
  %1110 = load ptr, ptr %1109, align 8, !tbaa !6
  %1111 = getelementptr inbounds i8, ptr %1100, i64 152
  %1112 = load i32, ptr %1111, align 8, !tbaa !45
  %1113 = sext i32 %1112 to i64
  %1114 = getelementptr inbounds i16, ptr %1110, i64 %1113
  %1115 = getelementptr inbounds [16 x [16 x i16]], ptr %113, i64 0, i64 %1101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1114, ptr noundef nonnull align 4 dereferenceable(16) %1115, i64 16, i1 false)
  %1116 = load ptr, ptr @img, align 8, !tbaa !6
  %1117 = getelementptr inbounds i8, ptr %1116, i64 24
  %1118 = load i32, ptr %1117, align 8, !tbaa !14
  %1119 = icmp ne i32 %1118, 3
  %1120 = load i32, ptr @si_frame_indicator, align 4
  %1121 = icmp ne i32 %1120, 0
  %1122 = select i1 %1119, i1 true, i1 %1121
  br i1 %1122, label %1137, label %1123

1123:                                             ; preds = %1099
  %1124 = load ptr, ptr @lrec, align 8, !tbaa !6
  %1125 = getelementptr inbounds i8, ptr %1116, i64 156
  %1126 = load i32, ptr %1125, align 4, !tbaa !44
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr ptr, ptr %1124, i64 %1101
  %1129 = getelementptr ptr, ptr %1128, i64 %1127
  %1130 = load ptr, ptr %1129, align 8, !tbaa !6
  %1131 = getelementptr inbounds i8, ptr %1116, i64 152
  %1132 = load i32, ptr %1131, align 8, !tbaa !45
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds i32, ptr %1130, i64 %1133
  %1135 = getelementptr inbounds [16 x [16 x i32]], ptr %115, i64 0, i64 %1101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1134, ptr noundef nonnull align 4 dereferenceable(16) %1135, i64 16, i1 false)
  %1136 = load ptr, ptr @img, align 8, !tbaa !6
  br label %1137

1137:                                             ; preds = %1099, %1123
  %1138 = phi ptr [ %1116, %1099 ], [ %1136, %1123 ]
  %1139 = add nsw i64 %1101, 1
  %1140 = trunc i64 %1139 to i32
  %1141 = icmp eq i32 %122, %1140
  br i1 %1141, label %1151, label %1099

1142:                                             ; preds = %1097
  %1143 = load i16, ptr %95, align 2, !tbaa !10
  %1144 = sext i16 %1143 to i32
  %1145 = load i8, ptr %99, align 1, !tbaa !79
  %1146 = zext i8 %1145 to i32
  %1147 = load i8, ptr %101, align 1, !tbaa !79
  %1148 = zext i8 %1147 to i32
  %1149 = load i16, ptr %97, align 2, !tbaa !10
  %1150 = sext i16 %1149 to i32
  call void @StoreNewMotionVectorsBlock8x8(i32 noundef signext 0, i32 noundef signext %6, i32 noundef signext %1144, i32 noundef signext %1146, i32 noundef signext %1148, i32 noundef signext %1150, i32 noundef signext %176) #12
  br label %1151

1151:                                             ; preds = %1137, %1142
  %1152 = load i16, ptr %95, align 2, !tbaa !10
  %1153 = sext i16 %1152 to i32
  %1154 = load i16, ptr %97, align 2, !tbaa !10
  %1155 = sext i16 %1154 to i32
  %1156 = load i8, ptr %99, align 1, !tbaa !79
  %1157 = zext i8 %1156 to i32
  %1158 = load i8, ptr %101, align 1, !tbaa !79
  %1159 = zext i8 %1158 to i32
  call void @SetRefAndMotionVectors(i32 noundef signext %6, i32 noundef signext %1153, i32 noundef signext %1155, i32 noundef signext %1157, i32 noundef signext %1159) #12
  br i1 %118, label %1160, label %1171

1160:                                             ; preds = %1151
  %1161 = load ptr, ptr @cs_b8, align 8, !tbaa !6
  call void @reset_coding_state(ptr noundef %1161) #12
  br label %1171

1162:                                             ; preds = %1098
  %1163 = load i16, ptr %95, align 2, !tbaa !10
  %1164 = sext i16 %1163 to i32
  %1165 = load i16, ptr %97, align 2, !tbaa !10
  %1166 = sext i16 %1165 to i32
  %1167 = load i8, ptr %99, align 1, !tbaa !79
  %1168 = zext i8 %1167 to i32
  %1169 = load i8, ptr %101, align 1, !tbaa !79
  %1170 = zext i8 %1169 to i32
  call void @SetRefAndMotionVectors(i32 noundef signext %6, i32 noundef signext %1164, i32 noundef signext %1166, i32 noundef signext %1168, i32 noundef signext %1170) #12
  br label %1171

1171:                                             ; preds = %1162, %1160, %1151
  %1172 = load ptr, ptr @img, align 8, !tbaa !6
  %1173 = getelementptr inbounds i8, ptr %1172, i64 90212
  %1174 = load i32, ptr %1173, align 4, !tbaa !103
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1190, label %1176

1176:                                             ; preds = %1171
  %1177 = getelementptr inbounds [2 x [16 x [16 x i32]]], ptr %72, i64 %73
  %1178 = getelementptr inbounds i8, ptr %1177, i64 1024
  br label %1179

1179:                                             ; preds = %1176, %1179
  %1180 = phi i64 [ %121, %1176 ], [ %1187, %1179 ]
  %1181 = getelementptr inbounds [16 x [16 x i32]], ptr %71, i64 %28, i64 %1180, i64 %119
  %1182 = getelementptr inbounds [16 x [16 x i32]], ptr %20, i64 0, i64 %1180, i64 %119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1181, ptr noundef nonnull align 4 dereferenceable(32) %1182, i64 32, i1 false)
  %1183 = getelementptr inbounds [16 x [16 x i32]], ptr %1177, i64 0, i64 %1180, i64 %119
  %1184 = getelementptr inbounds [16 x [16 x i32]], ptr %21, i64 0, i64 %1180, i64 %119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1183, ptr noundef nonnull align 4 dereferenceable(32) %1184, i64 32, i1 false)
  %1185 = getelementptr inbounds [16 x [16 x i32]], ptr %1178, i64 0, i64 %1180, i64 %119
  %1186 = getelementptr inbounds [16 x [16 x i32]], ptr %117, i64 0, i64 %1180, i64 %119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1185, ptr noundef nonnull align 4 dereferenceable(32) %1186, i64 32, i1 false)
  %1187 = add nsw i64 %1180, 1
  %1188 = trunc i64 %1187 to i32
  %1189 = icmp eq i32 %122, %1188
  br i1 %1189, label %1190, label %1179

1190:                                             ; preds = %1179, %1171
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare dso_local void @store_coding_state(ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @Get_Direct_Cost8x8(i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local void @PartitionMotionSearch(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local double @RDCost_for_8x8blocks(ptr noundef, ptr noundef, double noundef, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @B8Mode2Value(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @reset_coding_state(ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @LumaResidualCoding8x8(ptr noundef, ptr noundef, i32 noundef signext, i16 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare dso_local void @StoreNewMotionVectorsBlock8x8(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @SetRefAndMotionVectors(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local void @encode_one_macroblock() local_unnamed_addr #2 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.RD_PARAMS, align 8
  %4 = alloca double, align 8
  %5 = alloca [2 x i8], align 2
  %6 = alloca [5 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca double, align 8
  %14 = alloca %struct.RD_PARAMS, align 8
  %15 = alloca %struct.RD_PARAMS, align 8
  %16 = alloca %struct.RD_PARAMS, align 8
  %17 = alloca %struct.RD_PARAMS, align 8
  %18 = alloca %struct.RD_PARAMS, align 8
  %19 = alloca %struct.RD_PARAMS, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.RD_PARAMS, align 8
  %24 = alloca %struct.RD_PARAMS, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 -256, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @__const.encode_one_macroblock.bmcost, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  store i32 0, ptr %10, align 4, !tbaa !12
  %25 = load ptr, ptr @img, align 8, !tbaa !6
  %26 = getelementptr inbounds i8, ptr %25, i64 24
  %27 = load i32, ptr %26, align 8, !tbaa !14
  %28 = icmp ne i32 %27, 2
  %29 = icmp eq i32 %27, 1
  %30 = zext i1 %29 to i16
  %31 = icmp eq i32 %27, 0
  %32 = icmp eq i32 %27, 3
  %33 = or i1 %31, %32
  br i1 %28, label %34, label %45

34:                                               ; preds = %0
  switch i32 %27, label %45 [
    i32 3, label %35
    i32 0, label %35
  ]

35:                                               ; preds = %34, %34
  %36 = getelementptr inbounds i8, ptr %25, i64 140
  %37 = load i32, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds i8, ptr %25, i64 88
  %39 = load i32, ptr %38, align 8, !tbaa !106
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, ptr %25, i64 92
  %43 = load i32, ptr %42, align 4, !tbaa !107
  %44 = icmp ne i32 %37, %43
  br label %45

45:                                               ; preds = %34, %35, %41, %0
  %46 = phi i1 [ true, %0 ], [ false, %35 ], [ false, %34 ], [ %44, %41 ]
  %47 = load ptr, ptr @input, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %47, i64 3580
  %49 = load i32, ptr %48, align 4, !tbaa !108
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = getelementptr inbounds i8, ptr %47, i64 3136
  %53 = load i32, ptr %52, align 8, !tbaa !78
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  switch i32 %27, label %56 [
    i32 3, label %61
    i32 0, label %61
  ]

56:                                               ; preds = %55
  br i1 %29, label %57, label %61

57:                                               ; preds = %56
  %58 = getelementptr inbounds i8, ptr %25, i64 90316
  %59 = load i32, ptr %58, align 4, !tbaa !65
  %60 = icmp sgt i32 %59, 0
  br label %61

61:                                               ; preds = %55, %55, %57, %56, %51, %45
  %62 = phi i1 [ false, %51 ], [ false, %45 ], [ true, %55 ], [ false, %56 ], [ %60, %57 ], [ true, %55 ]
  %63 = getelementptr inbounds i8, ptr %25, i64 31576
  %64 = load ptr, ptr %63, align 8, !tbaa !100
  %65 = getelementptr inbounds i8, ptr %25, i64 12
  %66 = load i32, ptr %65, align 4, !tbaa !19
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.macroblock, ptr %64, i64 %67
  %69 = tail call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %66) #12
  %70 = icmp sgt i32 %69, -1
  %71 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %70, label %72, label %77

72:                                               ; preds = %61
  %73 = getelementptr inbounds i8, ptr %71, i64 31576
  %74 = load ptr, ptr %73, align 8, !tbaa !100
  %75 = zext nneg i32 %69 to i64
  %76 = getelementptr inbounds %struct.macroblock, ptr %74, i64 %75
  br label %77

77:                                               ; preds = %61, %72
  %78 = phi ptr [ %76, %72 ], [ null, %61 ]
  %79 = getelementptr inbounds i8, ptr %71, i64 104
  %80 = load ptr, ptr %79, align 8, !tbaa !109
  %81 = getelementptr inbounds i8, ptr %71, i64 89336
  %82 = load ptr, ptr %81, align 8, !tbaa !110
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  store i16 0, ptr %11, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i16 0, ptr %12, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  store double 0.000000e+00, ptr %13, align 8, !tbaa !20
  %88 = load ptr, ptr @input, align 8, !tbaa !6
  %89 = getelementptr inbounds i8, ptr %88, i64 3964
  %90 = load i32, ptr %89, align 4, !tbaa !111
  switch i32 %90, label %93 [
    i32 1, label %91
    i32 2, label %92
  ]

91:                                               ; preds = %77
  tail call void @decide_intrabk_SAD() #12
  br label %93

92:                                               ; preds = %77
  tail call void @simplified_decide_intrabk_SAD() #12
  br label %93

93:                                               ; preds = %77, %92, %91
  %94 = load ptr, ptr @img, align 8, !tbaa !6
  %95 = getelementptr inbounds i8, ptr %94, i64 12
  %96 = load i32, ptr %95, align 4, !tbaa !19
  %97 = tail call signext i32 @RandomIntra(i32 noundef signext %96) #12
  %98 = zext i1 %46 to i32
  %99 = or i32 %97, %98
  %100 = shl i32 %99, 16
  %101 = ashr exact i32 %100, 16
  %102 = zext i1 %29 to i32
  call void @init_enc_mb_params(ptr noundef %68, ptr noundef nonnull %3, i32 noundef signext %101, i32 noundef signext %102)
  %103 = getelementptr inbounds i8, ptr %68, i64 416
  %104 = and i32 %99, 65535
  %105 = icmp ne i32 %104, 0
  %106 = getelementptr inbounds i8, ptr %3, i64 20
  %107 = getelementptr inbounds i8, ptr %3, i64 16
  %108 = getelementptr inbounds i8, ptr %6, i64 4
  %109 = getelementptr inbounds i8, ptr %3, i64 8
  %110 = getelementptr inbounds i8, ptr %3, i64 50
  %111 = getelementptr inbounds i8, ptr %5, i64 1
  %112 = getelementptr inbounds i8, ptr %6, i64 8
  %113 = getelementptr inbounds i8, ptr %6, i64 12
  %114 = getelementptr inbounds i8, ptr %6, i64 16
  %115 = getelementptr inbounds i8, ptr %68, i64 468
  %116 = getelementptr inbounds i8, ptr %68, i64 364
  %117 = getelementptr inbounds i8, ptr %87, i64 2
  %118 = getelementptr inbounds i8, ptr %3, i64 36
  %119 = getelementptr inbounds i8, ptr %68, i64 464
  %120 = getelementptr inbounds i8, ptr %68, i64 472
  %121 = getelementptr inbounds i8, ptr %3, i64 46
  %122 = getelementptr inbounds i8, ptr %68, i64 72
  %123 = getelementptr inbounds i8, ptr %3, i64 38
  %124 = getelementptr inbounds i8, ptr %3, i64 40
  br label %125

125:                                              ; preds = %93, %2043
  %126 = phi double [ 0x7FEFFFFFFFFFFFFF, %93 ], [ %608, %2043 ]
  %127 = phi i32 [ 0, %93 ], [ %607, %2043 ]
  %128 = phi i32 [ 0, %93 ], [ %2042, %2043 ]
  %129 = phi i32 [ 1, %93 ], [ 3, %2043 ]
  %130 = phi i1 [ true, %93 ], [ false, %2043 ]
  %131 = phi i32 [ 0, %93 ], [ %605, %2043 ]
  %132 = phi i32 [ 0, %93 ], [ %2048, %2043 ]
  br i1 %62, label %133, label %136

133:                                              ; preds = %125
  %134 = load ptr, ptr @input, align 8, !tbaa !6
  %135 = getelementptr inbounds i8, ptr %134, i64 3136
  store i32 %129, ptr %135, align 8, !tbaa !78
  br label %136

136:                                              ; preds = %133, %125
  store i32 0, ptr %103, align 8, !tbaa !87
  %137 = load ptr, ptr @cs_cm, align 8, !tbaa !6
  call void @store_coding_state(ptr noundef %137) #12
  br i1 %105, label %604, label %138

138:                                              ; preds = %136
  store i16 1, ptr @best_mode, align 2, !tbaa !10
  br i1 %29, label %139, label %149

139:                                              ; preds = %138
  call void @Get_Direct_Motion_Vectors() #12
  %140 = load ptr, ptr @input, align 8, !tbaa !6
  %141 = getelementptr inbounds i8, ptr %140, i64 3136
  %142 = load i32, ptr %141, align 8, !tbaa !78
  %143 = icmp eq i32 %142, 2
  %144 = load i16, ptr %106, align 4
  %145 = icmp ne i16 %144, 0
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  store i16 0, ptr @best_mode, align 2, !tbaa !10
  store i32 0, ptr %103, align 8, !tbaa !87
  store double 1.000000e+30, ptr %4, align 8, !tbaa !20
  %148 = load i32, ptr %9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %14) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @compute_mode_RD_cost(i32 noundef signext 0, ptr noundef nonnull %68, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %13, i32 noundef signext %148, i16 noundef signext 1, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %14) #12
  br label %149

149:                                              ; preds = %139, %147, %138
  %150 = load i16, ptr %11, align 2
  br label %151

151:                                              ; preds = %149, %427
  %152 = phi i16 [ %150, %149 ], [ %428, %427 ]
  %153 = phi i16 [ %150, %149 ], [ %429, %427 ]
  %154 = phi i16 [ %150, %149 ], [ %430, %427 ]
  %155 = phi i64 [ 1, %149 ], [ %435, %427 ]
  %156 = phi double [ %126, %149 ], [ %434, %427 ]
  %157 = phi i32 [ %127, %149 ], [ %433, %427 ]
  %158 = phi i32 [ 2147483647, %149 ], [ %432, %427 ]
  %159 = phi i32 [ %131, %149 ], [ %431, %427 ]
  store i16 0, ptr @bi_pred_me, align 2, !tbaa !10
  %160 = load ptr, ptr @img, align 8, !tbaa !6
  %161 = getelementptr inbounds i8, ptr %160, i64 89360
  %162 = getelementptr inbounds [15 x i16], ptr %161, i64 0, i64 %155
  store i16 0, ptr %162, align 2, !tbaa !10
  %163 = getelementptr inbounds [15 x i16], ptr %106, i64 0, i64 %155
  %164 = load i16, ptr %163, align 2, !tbaa !10
  %165 = icmp eq i16 %164, 0
  %166 = icmp ne i16 %154, 0
  %167 = select i1 %165, i1 true, i1 %166
  br i1 %167, label %427, label %168

168:                                              ; preds = %151
  store i32 0, ptr %7, align 4, !tbaa !12
  %169 = icmp eq i64 %155, 1
  %170 = load i32, ptr %107, align 8, !tbaa !12
  %171 = load double, ptr %109, align 8
  %172 = load i16, ptr %110, align 2
  %173 = sext i16 %172 to i32
  %174 = sext i16 %172 to i64
  %175 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %174
  %176 = add nsw i32 %173, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %177
  %179 = fmul double %171, 4.000000e+00
  %180 = fptosi double %179 to i32
  %181 = icmp ugt i64 %155, 1
  %182 = trunc nuw nsw i64 %155 to i32
  br label %183

183:                                              ; preds = %168, %341
  %184 = phi i1 [ true, %168 ], [ false, %341 ]
  %185 = phi i1 [ false, %168 ], [ true, %341 ]
  %186 = phi i64 [ 0, %168 ], [ 1, %341 ]
  %187 = trunc nuw nsw i64 %186 to i32
  call void @PartitionMotionSearch(i32 noundef signext %182, i32 noundef signext %187, i32 noundef signext %170) #12
  store i32 2147483647, ptr %6, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %15) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @list_prediction_cost(i32 noundef signext 0, i32 noundef signext %187, i32 noundef signext %182, ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %15) #12
  br i1 %29, label %188, label %305

188:                                              ; preds = %183
  store i32 2147483647, ptr %108, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %16) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @list_prediction_cost(i32 noundef signext 1, i32 noundef signext %187, i32 noundef signext %182, ptr noundef nonnull %16, ptr noundef nonnull %6, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %16) #12
  %189 = load ptr, ptr @input, align 8, !tbaa !6
  %190 = getelementptr inbounds i8, ptr %189, i64 3136
  %191 = load i32, ptr %190, align 8, !tbaa !78
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %220, label %193

193:                                              ; preds = %188
  %194 = load i32, ptr %175, align 4, !tbaa !12
  %195 = icmp slt i32 %194, 2
  br i1 %195, label %202, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr @refbits, align 8, !tbaa !6
  %198 = load i8, ptr %5, align 2, !tbaa !79
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds i32, ptr %197, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !12
  br label %202

202:                                              ; preds = %196, %193
  %203 = phi i32 [ %201, %196 ], [ 0, %193 ]
  %204 = mul nsw i32 %203, %170
  %205 = ashr i32 %204, 16
  %206 = load i32, ptr %178, align 4, !tbaa !12
  %207 = icmp slt i32 %206, 2
  %208 = load i8, ptr %111, align 1, !tbaa !79
  br i1 %207, label %214, label %209

209:                                              ; preds = %202
  %210 = load ptr, ptr @refbits, align 8, !tbaa !6
  %211 = zext i8 %208 to i64
  %212 = getelementptr inbounds i32, ptr %210, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !12
  br label %214

214:                                              ; preds = %209, %202
  %215 = phi i32 [ %213, %209 ], [ 0, %202 ]
  %216 = mul nsw i32 %215, %170
  %217 = ashr i32 %216, 16
  %218 = add nsw i32 %217, %205
  %219 = load i8, ptr %5, align 2, !tbaa !79
  br label %232

220:                                              ; preds = %188
  %221 = load i8, ptr %5, align 2, !tbaa !79
  %222 = icmp ne i8 %221, 0
  %223 = zext i1 %222 to i32
  %224 = load i8, ptr %111, align 1, !tbaa !79
  %225 = icmp ne i8 %224, 0
  %226 = zext i1 %225 to i32
  %227 = add nuw nsw i32 %226, %223
  %228 = uitofp nneg i32 %227 to double
  %229 = fmul double %171, %228
  %230 = fmul double %229, 2.000000e+00
  %231 = fptosi double %230 to i32
  br label %232

232:                                              ; preds = %214, %220
  %233 = phi i8 [ %208, %214 ], [ %224, %220 ]
  %234 = phi i8 [ %219, %214 ], [ %221, %220 ]
  %235 = phi i32 [ %218, %214 ], [ %231, %220 ]
  %236 = zext i8 %234 to i16
  %237 = zext i8 %233 to i16
  %238 = call signext i32 @BIDPartitionCost(i32 noundef signext %182, i32 noundef signext %187, i16 noundef signext %236, i16 noundef signext %237, i32 noundef signext %170) #12
  %239 = add nsw i32 %238, %235
  store i32 %239, ptr %112, align 4, !tbaa !12
  %240 = load ptr, ptr @input, align 8, !tbaa !6
  %241 = getelementptr inbounds i8, ptr %240, i64 1264
  %242 = load i32, ptr %241, align 8, !tbaa !80
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %169, %243
  br i1 %244, label %245, label %301

245:                                              ; preds = %232
  %246 = getelementptr inbounds i8, ptr %240, i64 3136
  %247 = load i32, ptr %246, align 8, !tbaa !78
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %269, label %249

249:                                              ; preds = %245
  %250 = load i32, ptr %175, align 4, !tbaa !12
  %251 = icmp slt i32 %250, 2
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr @refbits, align 8, !tbaa !6
  %254 = load i32, ptr %253, align 4, !tbaa !12
  br label %255

255:                                              ; preds = %252, %249
  %256 = phi i32 [ %254, %252 ], [ 0, %249 ]
  %257 = mul nsw i32 %256, %170
  %258 = ashr i32 %257, 16
  %259 = load i32, ptr %178, align 4, !tbaa !12
  %260 = icmp slt i32 %259, 2
  br i1 %260, label %264, label %261

261:                                              ; preds = %255
  %262 = load ptr, ptr @refbits, align 8, !tbaa !6
  %263 = load i32, ptr %262, align 4, !tbaa !12
  br label %264

264:                                              ; preds = %261, %255
  %265 = phi i32 [ %263, %261 ], [ 0, %255 ]
  %266 = mul nsw i32 %265, %170
  %267 = ashr i32 %266, 16
  %268 = add nsw i32 %267, %258
  br label %269

269:                                              ; preds = %245, %264
  %270 = phi i32 [ %268, %264 ], [ %180, %245 ]
  %271 = call signext i32 @BPredPartitionCost(i32 noundef signext 1, i32 noundef signext %187, i16 noundef signext 0, i16 noundef signext 0, i32 noundef signext %170, i32 noundef signext 0) #12
  %272 = add nsw i32 %271, %270
  store i32 %272, ptr %113, align 4, !tbaa !12
  %273 = load ptr, ptr @input, align 8, !tbaa !6
  %274 = getelementptr inbounds i8, ptr %273, i64 3136
  %275 = load i32, ptr %274, align 8, !tbaa !78
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %297, label %277

277:                                              ; preds = %269
  %278 = load i32, ptr %175, align 4, !tbaa !12
  %279 = icmp slt i32 %278, 2
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr @refbits, align 8, !tbaa !6
  %282 = load i32, ptr %281, align 4, !tbaa !12
  br label %283

283:                                              ; preds = %280, %277
  %284 = phi i32 [ %282, %280 ], [ 0, %277 ]
  %285 = mul nsw i32 %284, %170
  %286 = ashr i32 %285, 16
  %287 = load i32, ptr %178, align 4, !tbaa !12
  %288 = icmp slt i32 %287, 2
  br i1 %288, label %292, label %289

289:                                              ; preds = %283
  %290 = load ptr, ptr @refbits, align 8, !tbaa !6
  %291 = load i32, ptr %290, align 4, !tbaa !12
  br label %292

292:                                              ; preds = %289, %283
  %293 = phi i32 [ %291, %289 ], [ 0, %283 ]
  %294 = mul nsw i32 %293, %170
  %295 = ashr i32 %294, 16
  %296 = add nsw i32 %295, %286
  br label %297

297:                                              ; preds = %269, %292
  %298 = phi i32 [ %296, %292 ], [ %180, %269 ]
  %299 = call signext i32 @BPredPartitionCost(i32 noundef signext 1, i32 noundef signext %187, i16 noundef signext 0, i16 noundef signext 0, i32 noundef signext %170, i32 noundef signext 1) #12
  %300 = add nsw i32 %299, %298
  br label %302

301:                                              ; preds = %232
  store i32 2147483647, ptr %113, align 4, !tbaa !12
  br label %302

302:                                              ; preds = %301, %297
  %303 = phi i32 [ 2147483647, %301 ], [ %300, %297 ]
  store i32 %303, ptr %114, align 4, !tbaa !12
  call void @determine_prediction_list(i32 noundef signext %182, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull @bi_pred_me)
  %304 = load i16, ptr %2, align 2, !tbaa !10
  br label %309

305:                                              ; preds = %183
  store i16 0, ptr %2, align 2, !tbaa !10
  %306 = load i32, ptr %6, align 4, !tbaa !12
  %307 = load i32, ptr %7, align 4, !tbaa !12
  %308 = add nsw i32 %307, %306
  store i32 %308, ptr %7, align 4, !tbaa !12
  br label %309

309:                                              ; preds = %305, %302
  %310 = phi i16 [ 0, %305 ], [ %304, %302 ]
  %311 = sext i16 %310 to i32
  %312 = load i8, ptr %5, align 2, !tbaa !79
  %313 = zext i8 %312 to i32
  %314 = load i8, ptr %111, align 1, !tbaa !79
  %315 = zext i8 %314 to i32
  call void @assign_enc_picture_params(i32 noundef signext %182, i32 noundef signext %311, i32 noundef signext %187, i32 noundef signext %173, i32 noundef signext %313, i32 noundef signext %315, i32 noundef signext %102) #12
  %316 = zext i8 %312 to i16
  switch i32 %182, label %336 [
    i32 3, label %317
    i32 2, label %326
  ]

317:                                              ; preds = %309
  %318 = or disjoint i64 %186, 2
  %319 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 24), i64 0, i64 %318
  store i16 %316, ptr %319, align 2, !tbaa !10
  %320 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 24), i64 0, i64 %186
  store i16 %316, ptr %320, align 2, !tbaa !10
  %321 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 24), i64 0, i64 %318
  store i16 %310, ptr %321, align 2, !tbaa !10
  %322 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 24), i64 0, i64 %186
  store i16 %310, ptr %322, align 2, !tbaa !10
  %323 = zext i8 %314 to i16
  %324 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 24), i64 0, i64 %318
  store i16 %323, ptr %324, align 2, !tbaa !10
  %325 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 24), i64 0, i64 %186
  store i16 %323, ptr %325, align 2, !tbaa !10
  br label %338

326:                                              ; preds = %309
  %327 = shl nuw nsw i64 %186, 1
  %328 = or disjoint i64 %327, 1
  %329 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 16), i64 0, i64 %328
  store i16 %316, ptr %329, align 2, !tbaa !10
  %330 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 16), i64 0, i64 %327
  store i16 %316, ptr %330, align 2, !tbaa !10
  %331 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 16), i64 0, i64 %328
  store i16 %310, ptr %331, align 2, !tbaa !10
  %332 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 16), i64 0, i64 %327
  store i16 %310, ptr %332, align 2, !tbaa !10
  %333 = zext i8 %314 to i16
  %334 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 16), i64 0, i64 %328
  store i16 %333, ptr %334, align 2, !tbaa !10
  %335 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 16), i64 0, i64 %327
  store i16 %333, ptr %335, align 2, !tbaa !10
  br label %338

336:                                              ; preds = %309
  store i16 %316, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 14), align 2, !tbaa !10
  store i16 %316, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 12), align 2, !tbaa !10
  store i16 %316, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 10), align 2, !tbaa !10
  store i16 %316, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 8), align 2, !tbaa !10
  store i16 %310, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 14), align 2, !tbaa !10
  store i16 %310, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 12), align 2, !tbaa !10
  store i16 %310, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 10), align 2, !tbaa !10
  store i16 %310, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 8), align 2, !tbaa !10
  %337 = zext i8 %314 to i16
  store i16 %337, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 14), align 2, !tbaa !10
  store i16 %337, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 12), align 2, !tbaa !10
  store i16 %337, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 10), align 2, !tbaa !10
  store i16 %337, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 8), align 2, !tbaa !10
  br label %338

338:                                              ; preds = %326, %336, %317
  %339 = and i1 %181, %184
  br i1 %339, label %340, label %341

340:                                              ; preds = %338
  call void @SetRefAndMotionVectors(i32 noundef signext 0, i32 noundef signext %182, i32 noundef signext %311, i32 noundef signext %313, i32 noundef signext %315) #12
  br label %341

341:                                              ; preds = %338, %340
  %342 = or i1 %185, %169
  br i1 %342, label %343, label %183

343:                                              ; preds = %341
  %344 = load ptr, ptr @input, align 8, !tbaa !6
  %345 = getelementptr inbounds i8, ptr %344, i64 3136
  %346 = load i32, ptr %345, align 8, !tbaa !78
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %357

348:                                              ; preds = %343
  store i32 0, ptr %115, align 4, !tbaa !85
  %349 = getelementptr inbounds i8, ptr %344, i64 3892
  %350 = load i32, ptr %349, align 4, !tbaa !55
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %415, label %352

352:                                              ; preds = %348
  call void @SetModesAndRefframeForBlocks(i32 noundef signext %182) #12
  %353 = call signext i32 @TransformDecision(i32 noundef signext -1, ptr noundef nonnull %7) #12
  store i32 %353, ptr %115, align 4, !tbaa !85
  %354 = load ptr, ptr @input, align 8, !tbaa !6
  %355 = getelementptr inbounds i8, ptr %354, i64 3136
  %356 = load i32, ptr %355, align 8, !tbaa !78
  br label %357

357:                                              ; preds = %352, %343
  %358 = phi i32 [ %356, %352 ], [ %346, %343 ]
  %359 = icmp eq i32 %358, 2
  %360 = and i1 %169, %359
  br i1 %360, label %361, label %415

361:                                              ; preds = %357
  switch i32 %27, label %363 [
    i32 3, label %362
    i32 0, label %362
  ]

362:                                              ; preds = %361, %361
  store double 1.000000e+30, ptr %4, align 8, !tbaa !20
  br label %363

363:                                              ; preds = %362, %361
  store i32 0, ptr %9, align 4, !tbaa !12
  br i1 %29, label %364, label %366

364:                                              ; preds = %363
  store i64 0, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 8), align 2
  store i32 0, ptr %103, align 8, !tbaa !87
  %365 = load i32, ptr %9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %17) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @compute_mode_RD_cost(i32 noundef signext 1, ptr noundef %68, ptr noundef nonnull %17, ptr noundef nonnull %4, ptr noundef nonnull %13, i32 noundef signext %365, i16 noundef signext %30, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %17) #12
  br label %410

366:                                              ; preds = %363
  store i32 0, ptr %103, align 8, !tbaa !87
  %367 = load i32, ptr %9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %17) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @compute_mode_RD_cost(i32 noundef signext 1, ptr noundef %68, ptr noundef nonnull %17, ptr noundef nonnull %4, ptr noundef nonnull %13, i32 noundef signext %367, i16 noundef signext %30, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %17) #12
  switch i32 %27, label %410 [
    i32 3, label %368
    i32 0, label %368
  ]

368:                                              ; preds = %366, %366
  call void @FindSkipModeMotionVector() #12
  %369 = load ptr, ptr @input, align 8, !tbaa !6
  %370 = getelementptr inbounds i8, ptr %369, i64 4312
  %371 = load i32, ptr %370, align 8, !tbaa !90
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %410, label %373

373:                                              ; preds = %368
  %374 = load i32, ptr %116, align 4, !tbaa !25
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %410

376:                                              ; preds = %373
  %377 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %378 = getelementptr inbounds i8, ptr %377, i64 6480
  %379 = load ptr, ptr %378, align 8, !tbaa !97
  %380 = load ptr, ptr %379, align 8, !tbaa !6
  %381 = load ptr, ptr @img, align 8, !tbaa !6
  %382 = getelementptr inbounds i8, ptr %381, i64 148
  %383 = load i32, ptr %382, align 4, !tbaa !95
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds ptr, ptr %380, i64 %384
  %386 = load ptr, ptr %385, align 8, !tbaa !6
  %387 = getelementptr inbounds i8, ptr %381, i64 144
  %388 = load i32, ptr %387, align 8, !tbaa !94
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, ptr %386, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !79
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %393, label %410

393:                                              ; preds = %376
  %394 = getelementptr inbounds i8, ptr %377, i64 6504
  %395 = load ptr, ptr %394, align 8, !tbaa !112
  %396 = load ptr, ptr %395, align 8, !tbaa !6
  %397 = getelementptr inbounds ptr, ptr %396, i64 %384
  %398 = load ptr, ptr %397, align 8, !tbaa !6
  %399 = getelementptr inbounds ptr, ptr %398, i64 %389
  %400 = load ptr, ptr %399, align 8, !tbaa !6
  %401 = load i16, ptr %400, align 2, !tbaa !10
  %402 = load i16, ptr %87, align 2, !tbaa !10
  %403 = icmp eq i16 %401, %402
  br i1 %403, label %404, label %410

404:                                              ; preds = %393
  %405 = getelementptr inbounds i8, ptr %400, i64 2
  %406 = load i16, ptr %405, align 2, !tbaa !10
  %407 = load i16, ptr %117, align 2, !tbaa !10
  %408 = icmp eq i16 %406, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %404
  store i16 1, ptr %11, align 2, !tbaa !10
  store i16 0, ptr @best_mode, align 2, !tbaa !10
  br label %410

410:                                              ; preds = %364, %366, %368, %409, %404, %393, %376, %373
  %411 = load double, ptr %4, align 8, !tbaa !20
  %412 = load i16, ptr @best_mode, align 2, !tbaa !10
  %413 = zext i16 %412 to i32
  %414 = load i16, ptr %11, align 2
  br label %415

415:                                              ; preds = %348, %410, %357
  %416 = phi i16 [ %414, %410 ], [ %152, %357 ], [ %152, %348 ]
  %417 = phi i16 [ %414, %410 ], [ %153, %357 ], [ %153, %348 ]
  %418 = phi i32 [ %413, %410 ], [ %157, %357 ], [ %157, %348 ]
  %419 = phi double [ %411, %410 ], [ %156, %357 ], [ %156, %348 ]
  %420 = icmp eq i16 %417, 0
  %421 = load i32, ptr %7, align 4
  %422 = icmp slt i32 %421, %158
  %423 = select i1 %420, i1 %422, i1 false
  br i1 %423, label %424, label %427

424:                                              ; preds = %415
  %425 = trunc i64 %155 to i16
  store i16 %425, ptr @best_mode, align 2, !tbaa !10
  %426 = load i32, ptr %115, align 4, !tbaa !85
  br label %427

427:                                              ; preds = %151, %424, %415
  %428 = phi i16 [ %152, %151 ], [ %416, %415 ], [ %416, %424 ]
  %429 = phi i16 [ %153, %151 ], [ %417, %415 ], [ 0, %424 ]
  %430 = phi i16 [ %154, %151 ], [ %417, %415 ], [ 0, %424 ]
  %431 = phi i32 [ %159, %151 ], [ %159, %415 ], [ %426, %424 ]
  %432 = phi i32 [ %158, %151 ], [ %158, %415 ], [ %421, %424 ]
  %433 = phi i32 [ %157, %151 ], [ %418, %415 ], [ %418, %424 ]
  %434 = phi double [ %156, %151 ], [ %419, %415 ], [ %419, %424 ]
  %435 = add nuw nsw i64 %155, 1
  %436 = icmp eq i64 %435, 4
  br i1 %436, label %437, label %151

437:                                              ; preds = %427
  %438 = icmp eq i16 %428, 0
  %439 = load i16, ptr %118, align 4
  %440 = icmp ne i16 %439, 0
  %441 = select i1 %438, i1 %440, i1 false
  br i1 %441, label %442, label %595

442:                                              ; preds = %437
  store i32 1, ptr @giRDOpt_B8OnlyFlag, align 4, !tbaa !12
  store i32 2147483647, ptr @tr8x8, align 4, !tbaa !104
  store i32 2147483647, ptr @tr4x4, align 4, !tbaa !104
  %443 = load ptr, ptr @cs_mb, align 8, !tbaa !6
  call void @store_coding_state(ptr noundef %443) #12
  store i32 -1, ptr %119, align 8, !tbaa !113
  %444 = load ptr, ptr @input, align 8, !tbaa !6
  %445 = getelementptr inbounds i8, ptr %444, i64 3892
  %446 = load i32, ptr %445, align 4, !tbaa !55
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %492, label %448

448:                                              ; preds = %442
  store i32 0, ptr @tr8x8, align 4, !tbaa !104
  store i32 0, ptr @cnt_nonz_8x8, align 4, !tbaa !12
  store i32 0, ptr @cbp_blk8x8, align 4, !tbaa !12
  store i32 0, ptr @cbp8x8, align 4, !tbaa !12
  store i32 0, ptr %8, align 4, !tbaa !12
  %449 = load ptr, ptr @cofAC_8x8ts, align 8, !tbaa !6
  %450 = load ptr, ptr %449, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %18) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @submacroblock_mode_decision(ptr noundef nonnull %18, ptr noundef nonnull @tr8x8, ptr noundef nonnull %68, ptr noundef %450, ptr nonnull poison, i16 noundef signext %30, i32 noundef signext 0, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef signext 1)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %18) #12
  %451 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6148), align 4, !tbaa !10
  store i16 %451, ptr @best8x8mode, align 2, !tbaa !10
  %452 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6156), align 4, !tbaa !10
  store i16 %452, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 64), align 2, !tbaa !10
  %453 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6164), align 4, !tbaa !79
  %454 = zext i8 %453 to i16
  store i16 %454, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 64), align 2, !tbaa !10
  %455 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6168), align 4, !tbaa !79
  %456 = zext i8 %455 to i16
  store i16 %456, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 64), align 2, !tbaa !10
  %457 = load ptr, ptr @cofAC_8x8ts, align 8, !tbaa !6
  %458 = getelementptr inbounds i8, ptr %457, i64 8
  %459 = load ptr, ptr %458, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %18) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @submacroblock_mode_decision(ptr noundef nonnull %18, ptr noundef nonnull @tr8x8, ptr noundef nonnull %68, ptr noundef %459, ptr nonnull poison, i16 noundef signext %30, i32 noundef signext 1, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef signext 1)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %18) #12
  %460 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6150), align 2, !tbaa !10
  store i16 %460, ptr getelementptr inbounds (i8, ptr @best8x8mode, i64 2), align 2, !tbaa !10
  %461 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6158), align 2, !tbaa !10
  store i16 %461, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 66), align 2, !tbaa !10
  %462 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6165), align 1, !tbaa !79
  %463 = zext i8 %462 to i16
  store i16 %463, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 66), align 2, !tbaa !10
  %464 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6169), align 1, !tbaa !79
  %465 = zext i8 %464 to i16
  store i16 %465, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 66), align 2, !tbaa !10
  %466 = load ptr, ptr @cofAC_8x8ts, align 8, !tbaa !6
  %467 = getelementptr inbounds i8, ptr %466, i64 16
  %468 = load ptr, ptr %467, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %18) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @submacroblock_mode_decision(ptr noundef nonnull %18, ptr noundef nonnull @tr8x8, ptr noundef nonnull %68, ptr noundef %468, ptr nonnull poison, i16 noundef signext %30, i32 noundef signext 2, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef signext 1)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %18) #12
  %469 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6152), align 4, !tbaa !10
  store i16 %469, ptr getelementptr inbounds (i8, ptr @best8x8mode, i64 4), align 2, !tbaa !10
  %470 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6160), align 4, !tbaa !10
  store i16 %470, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 68), align 2, !tbaa !10
  %471 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6166), align 2, !tbaa !79
  %472 = zext i8 %471 to i16
  store i16 %472, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 68), align 2, !tbaa !10
  %473 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6170), align 2, !tbaa !79
  %474 = zext i8 %473 to i16
  store i16 %474, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 68), align 2, !tbaa !10
  %475 = load ptr, ptr @cofAC_8x8ts, align 8, !tbaa !6
  %476 = getelementptr inbounds i8, ptr %475, i64 24
  %477 = load ptr, ptr %476, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %18) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @submacroblock_mode_decision(ptr noundef nonnull %18, ptr noundef nonnull @tr8x8, ptr noundef nonnull %68, ptr noundef %477, ptr nonnull poison, i16 noundef signext %30, i32 noundef signext 3, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef signext 1)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %18) #12
  %478 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6154), align 2, !tbaa !10
  store i16 %478, ptr getelementptr inbounds (i8, ptr @best8x8mode, i64 6), align 2, !tbaa !10
  %479 = load i16, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6162), align 2, !tbaa !10
  store i16 %479, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 70), align 2, !tbaa !10
  %480 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6167), align 1, !tbaa !79
  %481 = zext i8 %480 to i16
  store i16 %481, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 70), align 2, !tbaa !10
  %482 = load i8, ptr getelementptr inbounds (i8, ptr @tr8x8, i64 6171), align 1, !tbaa !79
  %483 = zext i8 %482 to i16
  store i16 %483, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 70), align 2, !tbaa !10
  %484 = load i32, ptr @cbp8x8, align 4, !tbaa !12
  store i32 %484, ptr @cbp8_8x8ts, align 4, !tbaa !12
  %485 = load i32, ptr @cbp_blk8x8, align 4, !tbaa !12
  %486 = sext i32 %485 to i64
  store i64 %486, ptr @cbp_blk8_8x8ts, align 8, !tbaa !93
  %487 = load i32, ptr @cnt_nonz_8x8, align 4, !tbaa !12
  store i32 %487, ptr @cnt_nonz8_8x8ts, align 4, !tbaa !12
  store i32 0, ptr %115, align 4, !tbaa !85
  %488 = load ptr, ptr @input, align 8, !tbaa !6
  %489 = getelementptr inbounds i8, ptr %488, i64 3892
  %490 = load i32, ptr %489, align 4, !tbaa !55
  %491 = icmp eq i32 %490, 2
  br i1 %491, label %528, label %492

492:                                              ; preds = %442, %448
  store i32 0, ptr @tr4x4, align 4, !tbaa !104
  store i32 0, ptr @cnt_nonz_8x8, align 4, !tbaa !12
  store i32 0, ptr @cbp_blk8x8, align 4, !tbaa !12
  store i32 0, ptr @cbp8x8, align 4, !tbaa !12
  store i32 0, ptr %8, align 4, !tbaa !12
  %493 = load ptr, ptr @cofAC8x8, align 8, !tbaa !6
  %494 = load ptr, ptr %493, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %19) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @submacroblock_mode_decision(ptr noundef nonnull %19, ptr noundef nonnull @tr4x4, ptr noundef nonnull %68, ptr noundef %494, ptr nonnull poison, i16 noundef signext %30, i32 noundef signext 0, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef signext 0)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %19) #12
  %495 = load i16, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6148), align 4, !tbaa !10
  store i16 %495, ptr @best8x8mode, align 2, !tbaa !10
  %496 = load i16, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6156), align 4, !tbaa !10
  store i16 %496, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 64), align 2, !tbaa !10
  %497 = load i8, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6164), align 4, !tbaa !79
  %498 = zext i8 %497 to i16
  store i16 %498, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 64), align 2, !tbaa !10
  %499 = load i8, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6168), align 4, !tbaa !79
  %500 = zext i8 %499 to i16
  store i16 %500, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 64), align 2, !tbaa !10
  %501 = load ptr, ptr @cofAC8x8, align 8, !tbaa !6
  %502 = getelementptr inbounds i8, ptr %501, i64 8
  %503 = load ptr, ptr %502, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %19) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @submacroblock_mode_decision(ptr noundef nonnull %19, ptr noundef nonnull @tr4x4, ptr noundef nonnull %68, ptr noundef %503, ptr nonnull poison, i16 noundef signext %30, i32 noundef signext 1, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef signext 0)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %19) #12
  %504 = load i16, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6150), align 2, !tbaa !10
  store i16 %504, ptr getelementptr inbounds (i8, ptr @best8x8mode, i64 2), align 2, !tbaa !10
  %505 = load i16, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6158), align 2, !tbaa !10
  store i16 %505, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 66), align 2, !tbaa !10
  %506 = load i8, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6165), align 1, !tbaa !79
  %507 = zext i8 %506 to i16
  store i16 %507, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 66), align 2, !tbaa !10
  %508 = load i8, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6169), align 1, !tbaa !79
  %509 = zext i8 %508 to i16
  store i16 %509, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 66), align 2, !tbaa !10
  %510 = load ptr, ptr @cofAC8x8, align 8, !tbaa !6
  %511 = getelementptr inbounds i8, ptr %510, i64 16
  %512 = load ptr, ptr %511, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %19) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @submacroblock_mode_decision(ptr noundef nonnull %19, ptr noundef nonnull @tr4x4, ptr noundef nonnull %68, ptr noundef %512, ptr nonnull poison, i16 noundef signext %30, i32 noundef signext 2, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef signext 0)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %19) #12
  %513 = load i16, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6152), align 4, !tbaa !10
  store i16 %513, ptr getelementptr inbounds (i8, ptr @best8x8mode, i64 4), align 2, !tbaa !10
  %514 = load i16, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6160), align 4, !tbaa !10
  store i16 %514, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 68), align 2, !tbaa !10
  %515 = load i8, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6166), align 2, !tbaa !79
  %516 = zext i8 %515 to i16
  store i16 %516, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 68), align 2, !tbaa !10
  %517 = load i8, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6170), align 2, !tbaa !79
  %518 = zext i8 %517 to i16
  store i16 %518, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 68), align 2, !tbaa !10
  %519 = load ptr, ptr @cofAC8x8, align 8, !tbaa !6
  %520 = getelementptr inbounds i8, ptr %519, i64 24
  %521 = load ptr, ptr %520, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %19) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @submacroblock_mode_decision(ptr noundef nonnull %19, ptr noundef nonnull @tr4x4, ptr noundef nonnull %68, ptr noundef %521, ptr nonnull poison, i16 noundef signext %30, i32 noundef signext 3, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef signext 0)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %19) #12
  %522 = load i16, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6154), align 2, !tbaa !10
  store i16 %522, ptr getelementptr inbounds (i8, ptr @best8x8mode, i64 6), align 2, !tbaa !10
  %523 = load i16, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6162), align 2, !tbaa !10
  store i16 %523, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 70), align 2, !tbaa !10
  %524 = load i8, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6167), align 1, !tbaa !79
  %525 = zext i8 %524 to i16
  store i16 %525, ptr getelementptr inbounds (i8, ptr @best8x8fwref, i64 70), align 2, !tbaa !10
  %526 = load i8, ptr getelementptr inbounds (i8, ptr @tr4x4, i64 6171), align 1, !tbaa !79
  %527 = zext i8 %526 to i16
  store i16 %527, ptr getelementptr inbounds (i8, ptr @best8x8bwref, i64 70), align 2, !tbaa !10
  br label %528

528:                                              ; preds = %492, %448
  %529 = load ptr, ptr @cs_mb, align 8, !tbaa !6
  call void @reset_coding_state(ptr noundef %529) #12
  %530 = load ptr, ptr @input, align 8, !tbaa !6
  %531 = getelementptr inbounds i8, ptr %530, i64 3908
  %532 = load i32, ptr %531, align 4, !tbaa !89
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %565, label %534

534:                                              ; preds = %528
  %535 = load ptr, ptr @img, align 8, !tbaa !6
  %536 = getelementptr inbounds i8, ptr %535, i64 168
  %537 = load i32, ptr %536, align 8, !tbaa !41
  %538 = getelementptr inbounds i8, ptr %535, i64 172
  %539 = load i32, ptr %538, align 4, !tbaa !40
  %540 = getelementptr inbounds i8, ptr %535, i64 12600
  %541 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %542 = sext i32 %539 to i64
  %543 = sext i32 %537 to i64
  %544 = getelementptr ptr, ptr %541, i64 %542
  br label %545

545:                                              ; preds = %562, %534
  %546 = phi i64 [ 0, %534 ], [ %563, %562 ]
  br label %547

547:                                              ; preds = %547, %545
  %548 = phi i64 [ 0, %545 ], [ %560, %547 ]
  %549 = getelementptr ptr, ptr %544, i64 %548
  %550 = load ptr, ptr %549, align 8, !tbaa !6
  %551 = getelementptr i16, ptr %550, i64 %546
  %552 = getelementptr i16, ptr %551, i64 %543
  %553 = load i16, ptr %552, align 2, !tbaa !10
  %554 = zext i16 %553 to i32
  %555 = getelementptr inbounds [16 x i16], ptr %540, i64 %548, i64 %546
  %556 = load i16, ptr %555, align 2, !tbaa !10
  %557 = zext i16 %556 to i32
  %558 = sub nsw i32 %554, %557
  %559 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %548, i64 %546
  store i32 %558, ptr %559, align 4, !tbaa !12
  %560 = add nuw nsw i64 %548, 1
  %561 = icmp eq i64 %560, 16
  br i1 %561, label %562, label %547

562:                                              ; preds = %547
  %563 = add nuw nsw i64 %546, 1
  %564 = icmp eq i64 %563, 16
  br i1 %564, label %565, label %545

565:                                              ; preds = %562, %528
  %566 = getelementptr inbounds i8, ptr %530, i64 3136
  %567 = load i32, ptr %566, align 8, !tbaa !78
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %593

569:                                              ; preds = %565
  %570 = load i32, ptr @tr4x4, align 4, !tbaa !104
  %571 = icmp slt i32 %570, %432
  %572 = load i32, ptr @tr8x8, align 4
  %573 = icmp slt i32 %572, %432
  %574 = select i1 %571, i1 true, i1 %573
  br i1 %574, label %575, label %593

575:                                              ; preds = %569
  store i16 8, ptr @best_mode, align 2, !tbaa !10
  %576 = getelementptr inbounds i8, ptr %530, i64 3892
  %577 = load i32, ptr %576, align 4, !tbaa !55
  switch i32 %577, label %578 [
    i32 2, label %590
    i32 0, label %589
  ]

578:                                              ; preds = %575
  %579 = icmp slt i32 %572, %570
  br i1 %579, label %590, label %580

580:                                              ; preds = %578
  %581 = icmp slt i32 %570, %572
  br i1 %581, label %590, label %582

582:                                              ; preds = %580
  %583 = call signext i32 @GetBestTransformP8x8() #12
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %587

585:                                              ; preds = %582
  %586 = load i32, ptr @tr4x4, align 4, !tbaa !104
  br label %590

587:                                              ; preds = %582
  %588 = load i32, ptr @tr8x8, align 4, !tbaa !104
  br label %590

589:                                              ; preds = %575
  br label %590

590:                                              ; preds = %580, %578, %575, %589, %587, %585
  %591 = phi i32 [ 0, %585 ], [ 1, %587 ], [ 0, %589 ], [ 1, %575 ], [ 1, %578 ], [ 0, %580 ]
  %592 = phi i32 [ %586, %585 ], [ %588, %587 ], [ %570, %589 ], [ %572, %575 ], [ %572, %578 ], [ %570, %580 ]
  store i32 %591, ptr %115, align 4, !tbaa !85
  br label %593

593:                                              ; preds = %590, %569, %565
  %594 = phi i32 [ %432, %565 ], [ %432, %569 ], [ %592, %590 ]
  store i32 0, ptr @giRDOpt_B8OnlyFlag, align 4, !tbaa !12
  br label %596

595:                                              ; preds = %437
  store i32 2147483647, ptr @tr4x4, align 4, !tbaa !104
  br label %596

596:                                              ; preds = %595, %593
  %597 = phi i32 [ %594, %593 ], [ %432, %595 ]
  %598 = load ptr, ptr @input, align 8, !tbaa !6
  %599 = getelementptr inbounds i8, ptr %598, i64 3136
  %600 = load i32, ptr %599, align 8, !tbaa !78
  %601 = icmp ne i32 %600, 2
  %602 = and i1 %33, %601
  br i1 %602, label %603, label %604

603:                                              ; preds = %596
  call void @FindSkipModeMotionVector() #12
  br label %604

604:                                              ; preds = %136, %596, %603
  %605 = phi i32 [ %431, %603 ], [ %431, %596 ], [ %131, %136 ]
  %606 = phi i32 [ %597, %603 ], [ %597, %596 ], [ 2147483647, %136 ]
  %607 = phi i32 [ %433, %603 ], [ %433, %596 ], [ %127, %136 ]
  %608 = phi double [ %434, %603 ], [ %434, %596 ], [ %126, %136 ]
  %609 = load ptr, ptr @input, align 8, !tbaa !6
  %610 = getelementptr inbounds i8, ptr %609, i64 3136
  %611 = load i32, ptr %610, align 8, !tbaa !78
  %612 = icmp eq i32 %611, 0
  %613 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %612, label %1077, label %614

614:                                              ; preds = %604
  %615 = load i16, ptr %11, align 2
  %616 = icmp eq i16 %615, 0
  br i1 %616, label %617, label %993

617:                                              ; preds = %614
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #12
  %618 = icmp eq i32 %611, 2
  br i1 %618, label %619, label %625

619:                                              ; preds = %617
  %620 = getelementptr inbounds i8, ptr %613, i64 24
  %621 = load i32, ptr %620, align 8, !tbaa !14
  %622 = icmp eq i32 %621, 2
  br i1 %622, label %625, label %623

623:                                              ; preds = %619
  store double %608, ptr %4, align 8, !tbaa !20
  %624 = trunc i32 %607 to i16
  store i16 %624, ptr @best_mode, align 2, !tbaa !10
  br label %626

625:                                              ; preds = %619, %617
  store double 1.000000e+30, ptr %4, align 8, !tbaa !20
  br label %626

626:                                              ; preds = %625, %623
  %627 = getelementptr inbounds i8, ptr %613, i64 90572
  %628 = load i32, ptr %627, align 4, !tbaa !102
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %639

630:                                              ; preds = %626
  %631 = icmp ne i32 %611, 2
  %632 = or i1 %105, %631
  br i1 %632, label %639, label %633

633:                                              ; preds = %630
  %634 = getelementptr inbounds i8, ptr %609, i64 4316
  %635 = load i32, ptr %634, align 4, !tbaa !114
  %636 = freeze i32 %635
  %637 = icmp eq i32 %636, 0
  %638 = select i1 %637, i32 9, i32 5
  br label %639

639:                                              ; preds = %633, %630, %626
  %640 = phi i32 [ 11, %626 ], [ 9, %630 ], [ %638, %633 ]
  %641 = getelementptr inbounds i8, ptr %609, i64 1264
  %642 = load i32, ptr %641, align 8, !tbaa !80
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %646, label %644

644:                                              ; preds = %639
  %645 = getelementptr inbounds i8, ptr %613, i64 89362
  store i16 0, ptr %645, align 2, !tbaa !10
  br label %646

646:                                              ; preds = %644, %639
  %647 = getelementptr inbounds i8, ptr %613, i64 90548
  %648 = load i32, ptr %647, align 4, !tbaa !115
  %649 = icmp ne i32 %648, 0
  %650 = icmp ne i32 %640, 5
  %651 = and i1 %650, %649
  br i1 %651, label %652, label %655

652:                                              ; preds = %646
  call void @IntraChromaPrediction(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #12
  %653 = load ptr, ptr @img, align 8, !tbaa !6
  %654 = load ptr, ptr @input, align 8, !tbaa !6
  br label %655

655:                                              ; preds = %646, %652
  %656 = phi ptr [ %654, %652 ], [ %609, %646 ]
  %657 = phi ptr [ %653, %652 ], [ %613, %646 ]
  %658 = phi i32 [ 3, %652 ], [ 0, %646 ]
  store i32 0, ptr %103, align 8, !tbaa !87
  br label %659

659:                                              ; preds = %655, %833
  %660 = phi ptr [ %656, %655 ], [ %834, %833 ]
  %661 = phi ptr [ %657, %655 ], [ %835, %833 ]
  %662 = phi ptr [ %657, %655 ], [ %836, %833 ]
  %663 = phi i32 [ 0, %655 ], [ %839, %833 ]
  %664 = getelementptr inbounds i8, ptr %662, i64 90548
  %665 = load i32, ptr %664, align 4, !tbaa !115
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %667, label %668

667:                                              ; preds = %677, %691, %689, %659
  br label %697

668:                                              ; preds = %659
  br i1 %105, label %669, label %673

669:                                              ; preds = %668
  %670 = getelementptr inbounds i8, ptr %660, i64 3024
  %671 = load i32, ptr %670, align 8, !tbaa !116
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %679

673:                                              ; preds = %669, %668
  %674 = getelementptr inbounds i8, ptr %660, i64 3048
  %675 = load i32, ptr %674, align 8, !tbaa !117
  %676 = icmp eq i32 %675, 1
  br i1 %676, label %677, label %679

677:                                              ; preds = %673
  %678 = icmp eq i32 %663, 0
  br i1 %678, label %667, label %833

679:                                              ; preds = %673, %669
  %680 = icmp ne i32 %663, 2
  %681 = load i32, ptr %20, align 4
  %682 = icmp ne i32 %681, 0
  %683 = select i1 %680, i1 true, i1 %682
  br i1 %683, label %684, label %833

684:                                              ; preds = %679
  %685 = icmp ne i32 %663, 1
  %686 = load i32, ptr %21, align 4
  %687 = icmp ne i32 %686, 0
  %688 = select i1 %685, i1 true, i1 %687
  br i1 %688, label %689, label %833

689:                                              ; preds = %684
  %690 = icmp eq i32 %663, 3
  br i1 %690, label %691, label %667

691:                                              ; preds = %689
  %692 = select i1 %687, i1 %682, i1 false
  %693 = load i32, ptr %22, align 4
  %694 = icmp ne i32 %693, 0
  %695 = select i1 %692, i1 %694, i1 false
  br i1 %695, label %667, label %696

696:                                              ; preds = %691
  store i32 4, ptr %103, align 8, !tbaa !87
  br label %841

697:                                              ; preds = %667, %821
  %698 = phi ptr [ %822, %821 ], [ %660, %667 ]
  %699 = phi ptr [ %823, %821 ], [ %660, %667 ]
  %700 = phi ptr [ %824, %821 ], [ %661, %667 ]
  %701 = phi ptr [ %825, %821 ], [ %661, %667 ]
  %702 = phi ptr [ %826, %821 ], [ %661, %667 ]
  %703 = phi i32 [ %829, %821 ], [ 0, %667 ]
  %704 = phi i32 [ %827, %821 ], [ 0, %667 ]
  %705 = sext i32 %703 to i64
  %706 = getelementptr inbounds [9 x i32], ptr @mb_mode_table, i64 0, i64 %705
  %707 = load i32, ptr %706, align 4, !tbaa !12
  %708 = getelementptr inbounds i8, ptr %702, i64 90548
  %709 = load i32, ptr %708, align 4, !tbaa !115
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %749, label %711

711:                                              ; preds = %697
  %712 = getelementptr inbounds i8, ptr %699, i64 3136
  %713 = load i32, ptr %712, align 8, !tbaa !78
  %714 = icmp eq i32 %713, 2
  br i1 %714, label %715, label %721

715:                                              ; preds = %711
  store i32 0, ptr %9, align 4, !tbaa !12
  %716 = icmp eq i32 %703, 0
  %717 = and i1 %29, %716
  %718 = icmp eq i32 %703, 1
  %719 = and i1 %28, %718
  %720 = or i1 %717, %719
  br i1 %720, label %821, label %749

721:                                              ; preds = %711
  %722 = getelementptr inbounds i8, ptr %702, i64 90572
  %723 = load i32, ptr %722, align 4, !tbaa !102
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %748, label %725

725:                                              ; preds = %721
  %726 = getelementptr inbounds [11 x i32], ptr @mb_mode_table_RCT, i64 0, i64 %705
  %727 = load i32, ptr %726, align 4, !tbaa !12
  %728 = add nsw i64 %705, -5
  %729 = icmp ult i64 %728, 4
  br i1 %729, label %730, label %749

730:                                              ; preds = %725
  %731 = add nsw i32 %703, -5
  store i32 %731, ptr %9, align 4, !tbaa !12
  %732 = icmp ne i32 %731, 0
  %733 = load i32, ptr %20, align 4
  %734 = icmp ne i32 %733, 0
  %735 = select i1 %732, i1 true, i1 %734
  br i1 %735, label %736, label %821

736:                                              ; preds = %730
  %737 = icmp ne i32 %731, 1
  %738 = load i32, ptr %21, align 4
  %739 = icmp ne i32 %738, 0
  %740 = select i1 %737, i1 true, i1 %739
  br i1 %740, label %741, label %821

741:                                              ; preds = %736
  %742 = icmp eq i32 %731, 3
  br i1 %742, label %743, label %771

743:                                              ; preds = %741
  %744 = select i1 %739, i1 %734, i1 false
  %745 = load i32, ptr %22, align 4
  %746 = icmp ne i32 %745, 0
  %747 = select i1 %744, i1 %746, i1 false
  br i1 %747, label %771, label %821

748:                                              ; preds = %721
  store i32 0, ptr %9, align 4, !tbaa !12
  br label %749

749:                                              ; preds = %725, %715, %748, %697
  %750 = phi i32 [ %707, %748 ], [ %707, %697 ], [ %707, %715 ], [ %727, %725 ]
  %751 = icmp eq i32 %750, 1
  %752 = and i1 %29, %751
  br i1 %752, label %753, label %771

753:                                              ; preds = %749
  %754 = trunc i32 %704 to i16
  store i16 %754, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 14), align 2, !tbaa !10
  store i16 %754, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 12), align 2, !tbaa !10
  store i16 %754, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 10), align 2, !tbaa !10
  store i16 %754, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 8), align 2, !tbaa !10
  %755 = getelementptr inbounds i8, ptr %699, i64 1264
  %756 = load i32, ptr %755, align 8, !tbaa !80
  %757 = icmp ne i32 %756, 0
  %758 = icmp eq i32 %704, 2
  %759 = select i1 %757, i1 %758, i1 false
  br i1 %759, label %760, label %765

760:                                              ; preds = %753
  %761 = getelementptr inbounds i8, ptr %702, i64 89362
  %762 = load i16, ptr %761, align 2, !tbaa !10
  %763 = icmp slt i16 %762, 2
  %764 = select i1 %763, i32 1, i32 2
  br label %765

765:                                              ; preds = %760, %753
  %766 = phi i32 [ %704, %753 ], [ %764, %760 ]
  %767 = icmp slt i32 %766, 2
  %768 = sext i1 %767 to i32
  %769 = add nsw i32 %703, %768
  %770 = add nsw i32 %766, 1
  br label %771

771:                                              ; preds = %741, %743, %765, %749
  %772 = phi i1 [ true, %765 ], [ %751, %749 ], [ false, %743 ], [ false, %741 ]
  %773 = phi i32 [ 1, %765 ], [ %750, %749 ], [ 10, %743 ], [ 10, %741 ]
  %774 = phi i32 [ %770, %765 ], [ %704, %749 ], [ %704, %743 ], [ %704, %741 ]
  %775 = phi i32 [ %769, %765 ], [ %703, %749 ], [ 8, %743 ], [ %703, %741 ]
  %776 = getelementptr inbounds i8, ptr %699, i64 1936
  %777 = load i32, ptr %776, align 8, !tbaa !118
  %778 = icmp eq i32 %777, 0
  %779 = or i1 %105, %778
  %780 = xor i1 %779, true
  %781 = icmp sgt i32 %773, 9
  %782 = and i1 %781, %780
  %783 = load i16, ptr @best_mode, align 2
  %784 = icmp slt i16 %783, 4
  %785 = select i1 %782, i1 %784, i1 false
  br i1 %785, label %786, label %789

786:                                              ; preds = %771
  %787 = load i32, ptr %116, align 4, !tbaa !25
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %821, label %789

789:                                              ; preds = %786, %771
  %790 = sext i32 %773 to i64
  %791 = getelementptr inbounds [15 x i16], ptr %106, i64 0, i64 %790
  %792 = load i16, ptr %791, align 2, !tbaa !10
  %793 = icmp eq i16 %792, 0
  br i1 %793, label %798, label %794

794:                                              ; preds = %789
  %795 = load i32, ptr %9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %23) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @compute_mode_RD_cost(i32 noundef signext %773, ptr noundef %68, ptr noundef nonnull %23, ptr noundef nonnull %4, ptr noundef nonnull %13, i32 noundef signext %795, i16 noundef signext %30, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %23) #12
  %796 = load ptr, ptr @img, align 8, !tbaa !6
  %797 = load ptr, ptr @input, align 8, !tbaa !6
  br label %798

798:                                              ; preds = %794, %789
  %799 = phi ptr [ %797, %794 ], [ %698, %789 ]
  %800 = phi ptr [ %797, %794 ], [ %699, %789 ]
  %801 = phi ptr [ %796, %794 ], [ %700, %789 ]
  %802 = phi ptr [ %796, %794 ], [ %701, %789 ]
  %803 = phi ptr [ %796, %794 ], [ %702, %789 ]
  %804 = getelementptr inbounds i8, ptr %800, i64 1264
  %805 = load i32, ptr %804, align 8, !tbaa !80
  %806 = icmp ne i32 %805, 0
  %807 = and i1 %29, %806
  %808 = icmp eq i32 %774, 2
  %809 = select i1 %807, i1 %808, i1 false
  br i1 %809, label %810, label %821

810:                                              ; preds = %798
  %811 = getelementptr inbounds i8, ptr %802, i64 89360
  %812 = getelementptr inbounds [15 x i16], ptr %811, i64 0, i64 %790
  %813 = load i16, ptr %812, align 2, !tbaa !10
  %814 = icmp slt i16 %813, 2
  %815 = and i1 %772, %814
  %816 = load i16, ptr getelementptr inbounds (i8, ptr @best8x8pdir, i64 8), align 2
  %817 = icmp eq i16 %816, 2
  %818 = select i1 %815, i1 %817, i1 false
  br i1 %818, label %819, label %821

819:                                              ; preds = %810
  %820 = add nsw i16 %813, 1
  store i16 %820, ptr %812, align 2, !tbaa !10
  br label %821

821:                                              ; preds = %798, %810, %819, %786, %743, %730, %736, %715
  %822 = phi ptr [ %698, %715 ], [ %698, %786 ], [ %799, %819 ], [ %799, %810 ], [ %799, %798 ], [ %698, %743 ], [ %698, %736 ], [ %698, %730 ]
  %823 = phi ptr [ %699, %715 ], [ %699, %786 ], [ %800, %819 ], [ %800, %810 ], [ %800, %798 ], [ %699, %743 ], [ %699, %736 ], [ %699, %730 ]
  %824 = phi ptr [ %700, %715 ], [ %700, %786 ], [ %801, %819 ], [ %801, %810 ], [ %801, %798 ], [ %700, %743 ], [ %700, %736 ], [ %700, %730 ]
  %825 = phi ptr [ %701, %715 ], [ %701, %786 ], [ %802, %819 ], [ %802, %810 ], [ %802, %798 ], [ %701, %743 ], [ %701, %736 ], [ %701, %730 ]
  %826 = phi ptr [ %702, %715 ], [ %702, %786 ], [ %802, %819 ], [ %802, %810 ], [ %803, %798 ], [ %702, %743 ], [ %702, %736 ], [ %702, %730 ]
  %827 = phi i32 [ %704, %715 ], [ %774, %786 ], [ 2, %819 ], [ 2, %810 ], [ %774, %798 ], [ %704, %743 ], [ %704, %736 ], [ %704, %730 ]
  %828 = phi i32 [ %703, %715 ], [ %775, %786 ], [ %775, %819 ], [ %775, %810 ], [ %775, %798 ], [ 8, %743 ], [ 6, %736 ], [ 5, %730 ]
  %829 = add nsw i32 %828, 1
  %830 = icmp slt i32 %829, %640
  br i1 %830, label %697, label %831

831:                                              ; preds = %821
  %832 = load i32, ptr %103, align 8, !tbaa !87
  br label %833

833:                                              ; preds = %831, %677, %679, %684
  %834 = phi ptr [ %660, %684 ], [ %660, %679 ], [ %660, %677 ], [ %822, %831 ]
  %835 = phi ptr [ %661, %684 ], [ %661, %679 ], [ %661, %677 ], [ %824, %831 ]
  %836 = phi ptr [ %662, %684 ], [ %662, %679 ], [ %662, %677 ], [ %825, %831 ]
  %837 = phi ptr [ %660, %684 ], [ %660, %679 ], [ %660, %677 ], [ %823, %831 ]
  %838 = phi i32 [ 1, %684 ], [ 2, %679 ], [ %663, %677 ], [ %832, %831 ]
  %839 = add nsw i32 %838, 1
  store i32 %839, ptr %103, align 8, !tbaa !87
  %840 = icmp slt i32 %838, %658
  br i1 %840, label %659, label %841

841:                                              ; preds = %833, %696
  %842 = phi ptr [ %660, %696 ], [ %837, %833 ]
  %843 = phi ptr [ %662, %696 ], [ %836, %833 ]
  %844 = phi ptr [ %661, %696 ], [ %835, %833 ]
  %845 = getelementptr inbounds i8, ptr %843, i64 24
  %846 = load i32, ptr %845, align 8, !tbaa !14
  %847 = icmp eq i32 %846, 2
  br i1 %847, label %991, label %848

848:                                              ; preds = %841
  %849 = getelementptr inbounds i8, ptr %842, i64 3136
  %850 = load i32, ptr %849, align 8, !tbaa !78
  %851 = icmp eq i32 %850, 2
  br i1 %851, label %852, label %991

852:                                              ; preds = %848
  %853 = getelementptr inbounds i8, ptr %842, i64 4316
  %854 = load i32, ptr %853, align 4, !tbaa !114
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %991, label %856

856:                                              ; preds = %852
  %857 = load i32, ptr %842, align 8, !tbaa !119
  %858 = icmp slt i32 %857, 100
  br i1 %858, label %859, label %991

859:                                              ; preds = %856
  %860 = load double, ptr %13, align 8, !tbaa !20
  call void @fast_mode_intra_decision(ptr noundef nonnull %12, double noundef %860)
  %861 = load i16, ptr %12, align 2, !tbaa !10
  %862 = icmp eq i16 %861, 0
  %863 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %862, label %864, label %991

864:                                              ; preds = %859
  %865 = getelementptr inbounds i8, ptr %863, i64 90548
  %866 = load i32, ptr %865, align 4, !tbaa !115
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %869, label %868

868:                                              ; preds = %864
  call void @IntraChromaPrediction(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #12
  br label %869

869:                                              ; preds = %864, %868
  %870 = phi i32 [ 3, %868 ], [ 0, %864 ]
  store i32 0, ptr %103, align 8, !tbaa !87
  %871 = load ptr, ptr @input, align 8, !tbaa !6
  br label %872

872:                                              ; preds = %869, %984
  %873 = phi ptr [ %871, %869 ], [ %985, %984 ]
  %874 = phi i32 [ 0, %869 ], [ %987, %984 ]
  %875 = load ptr, ptr @img, align 8, !tbaa !6
  %876 = getelementptr inbounds i8, ptr %875, i64 90548
  %877 = load i32, ptr %876, align 4, !tbaa !115
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %908, label %879

879:                                              ; preds = %872
  br i1 %105, label %880, label %884

880:                                              ; preds = %879
  %881 = getelementptr inbounds i8, ptr %873, i64 3024
  %882 = load i32, ptr %881, align 8, !tbaa !116
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %890

884:                                              ; preds = %880, %879
  %885 = getelementptr inbounds i8, ptr %873, i64 3048
  %886 = load i32, ptr %885, align 8, !tbaa !117
  %887 = icmp eq i32 %886, 1
  br i1 %887, label %888, label %890

888:                                              ; preds = %884
  %889 = icmp eq i32 %874, 0
  br i1 %889, label %908, label %984

890:                                              ; preds = %884, %880
  %891 = icmp ne i32 %874, 2
  %892 = load i32, ptr %20, align 4
  %893 = icmp ne i32 %892, 0
  %894 = select i1 %891, i1 true, i1 %893
  br i1 %894, label %895, label %984

895:                                              ; preds = %890
  %896 = icmp ne i32 %874, 1
  %897 = load i32, ptr %21, align 4
  %898 = icmp ne i32 %897, 0
  %899 = select i1 %896, i1 true, i1 %898
  br i1 %899, label %900, label %984

900:                                              ; preds = %895
  %901 = icmp eq i32 %874, 3
  br i1 %901, label %902, label %908

902:                                              ; preds = %900
  %903 = select i1 %898, i1 %893, i1 false
  %904 = load i32, ptr %22, align 4
  %905 = icmp ne i32 %904, 0
  %906 = select i1 %903, i1 %905, i1 false
  br i1 %906, label %908, label %907

907:                                              ; preds = %902
  store i32 4, ptr %103, align 8, !tbaa !87
  br label %989

908:                                              ; preds = %888, %902, %900, %872
  %909 = load i16, ptr @best_mode, align 2
  br label %910

910:                                              ; preds = %908, %975
  %911 = phi ptr [ %873, %908 ], [ %976, %975 ]
  %912 = phi i16 [ %909, %908 ], [ %977, %975 ]
  %913 = phi ptr [ %873, %908 ], [ %978, %975 ]
  %914 = phi i64 [ 5, %908 ], [ %979, %975 ]
  %915 = getelementptr inbounds [9 x i32], ptr @mb_mode_table, i64 0, i64 %914
  %916 = load i32, ptr %915, align 4, !tbaa !12
  %917 = getelementptr inbounds i8, ptr %913, i64 1936
  %918 = load i32, ptr %917, align 8, !tbaa !118
  %919 = icmp eq i32 %918, 0
  %920 = or i1 %105, %919
  %921 = xor i1 %920, true
  %922 = lshr i64 416, %914
  %923 = and i64 %922, 1
  %924 = icmp ne i64 %923, 0
  %925 = select i1 %921, i1 %924, i1 false
  %926 = icmp slt i16 %912, 4
  %927 = select i1 %925, i1 %926, i1 false
  br i1 %927, label %928, label %931

928:                                              ; preds = %910
  %929 = load i32, ptr %116, align 4, !tbaa !25
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %975, label %931

931:                                              ; preds = %928, %910
  %932 = load ptr, ptr @img, align 8, !tbaa !6
  %933 = getelementptr inbounds i8, ptr %932, i64 90548
  %934 = load i32, ptr %933, align 4, !tbaa !115
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %965, label %936

936:                                              ; preds = %931
  %937 = getelementptr inbounds i8, ptr %913, i64 3136
  %938 = load i32, ptr %937, align 8, !tbaa !78
  %939 = icmp eq i32 %938, 2
  br i1 %939, label %940, label %941

940:                                              ; preds = %936
  store i32 0, ptr %9, align 4, !tbaa !12
  br label %965

941:                                              ; preds = %936
  %942 = getelementptr inbounds i8, ptr %932, i64 90572
  %943 = load i32, ptr %942, align 4, !tbaa !102
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %964, label %945

945:                                              ; preds = %941
  %946 = add nsw i64 %914, -5
  %947 = trunc nuw nsw i64 %946 to i32
  store i32 %947, ptr %9, align 4, !tbaa !12
  %948 = icmp ne i64 %946, 0
  %949 = load i32, ptr %20, align 4
  %950 = icmp ne i32 %949, 0
  %951 = select i1 %948, i1 true, i1 %950
  br i1 %951, label %952, label %975

952:                                              ; preds = %945
  %953 = icmp ne i64 %946, 1
  %954 = load i32, ptr %21, align 4
  %955 = icmp ne i32 %954, 0
  %956 = select i1 %953, i1 true, i1 %955
  br i1 %956, label %957, label %975

957:                                              ; preds = %952
  %958 = icmp eq i64 %946, 3
  br i1 %958, label %959, label %965

959:                                              ; preds = %957
  %960 = select i1 %955, i1 %950, i1 false
  %961 = load i32, ptr %22, align 4
  %962 = icmp ne i32 %961, 0
  %963 = select i1 %960, i1 %962, i1 false
  br i1 %963, label %965, label %981

964:                                              ; preds = %941
  store i32 0, ptr %9, align 4, !tbaa !12
  br label %965

965:                                              ; preds = %940, %957, %959, %964, %931
  %966 = phi i32 [ %916, %940 ], [ 10, %959 ], [ 10, %957 ], [ %916, %964 ], [ %916, %931 ]
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds [15 x i16], ptr %106, i64 0, i64 %967
  %969 = load i16, ptr %968, align 2, !tbaa !10
  %970 = icmp eq i16 %969, 0
  br i1 %970, label %975, label %971

971:                                              ; preds = %965
  %972 = load i32, ptr %9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %24) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !96
  call void @compute_mode_RD_cost(i32 noundef signext %966, ptr noundef %68, ptr noundef nonnull %24, ptr noundef nonnull %4, ptr noundef nonnull %13, i32 noundef signext %972, i16 noundef signext %30, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %24) #12
  %973 = load ptr, ptr @input, align 8, !tbaa !6
  %974 = load i16, ptr @best_mode, align 2
  br label %975

975:                                              ; preds = %965, %971, %945, %952, %928
  %976 = phi ptr [ %911, %965 ], [ %973, %971 ], [ %911, %945 ], [ %911, %952 ], [ %911, %928 ]
  %977 = phi i16 [ %912, %965 ], [ %974, %971 ], [ %912, %945 ], [ %912, %952 ], [ %912, %928 ]
  %978 = phi ptr [ %913, %965 ], [ %973, %971 ], [ %913, %945 ], [ %913, %952 ], [ %913, %928 ]
  %979 = add nuw nsw i64 %914, 1
  %980 = icmp eq i64 %979, 9
  br i1 %980, label %981, label %910

981:                                              ; preds = %959, %975
  %982 = phi ptr [ %976, %975 ], [ %911, %959 ]
  %983 = load i32, ptr %103, align 8, !tbaa !87
  br label %984

984:                                              ; preds = %981, %888, %890, %895
  %985 = phi ptr [ %873, %895 ], [ %873, %890 ], [ %873, %888 ], [ %982, %981 ]
  %986 = phi i32 [ 1, %895 ], [ 2, %890 ], [ %874, %888 ], [ %983, %981 ]
  %987 = add nsw i32 %986, 1
  store i32 %987, ptr %103, align 8, !tbaa !87
  %988 = icmp slt i32 %986, %870
  br i1 %988, label %872, label %989

989:                                              ; preds = %984, %907
  %990 = load ptr, ptr @img, align 8, !tbaa !6
  br label %991

991:                                              ; preds = %989, %859, %856, %852, %848, %841
  %992 = phi ptr [ %863, %859 ], [ %844, %856 ], [ %844, %852 ], [ %844, %848 ], [ %844, %841 ], [ %990, %989 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #12
  br label %993

993:                                              ; preds = %991, %614
  %994 = phi ptr [ %613, %614 ], [ %992, %991 ]
  %995 = getelementptr inbounds i8, ptr %994, i64 90540
  %996 = getelementptr inbounds i8, ptr %994, i64 128
  %997 = getelementptr inbounds i8, ptr %994, i64 12
  %998 = load i32, ptr %995, align 4, !tbaa !120
  %999 = icmp sgt i32 %998, -4
  br i1 %999, label %1000, label %2040

1000:                                             ; preds = %993
  %1001 = load ptr, ptr %996, align 8, !tbaa !92
  br label %1002

1002:                                             ; preds = %1000, %1002
  %1003 = phi i64 [ 0, %1000 ], [ %1012, %1002 ]
  %1004 = getelementptr inbounds [4 x [12 x i32]], ptr @gaaiMBAFF_NZCoeff, i64 0, i64 0, i64 %1003
  %1005 = load i32, ptr %1004, align 4, !tbaa !12
  %1006 = load i32, ptr %997, align 4, !tbaa !19
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds ptr, ptr %1001, i64 %1007
  %1009 = load ptr, ptr %1008, align 8, !tbaa !6
  %1010 = load ptr, ptr %1009, align 8, !tbaa !6
  %1011 = getelementptr inbounds i32, ptr %1010, i64 %1003
  store i32 %1005, ptr %1011, align 4, !tbaa !12
  %1012 = add nuw nsw i64 %1003, 1
  %1013 = load i32, ptr %995, align 4, !tbaa !120
  %1014 = add nsw i32 %1013, 3
  %1015 = sext i32 %1014 to i64
  %1016 = icmp slt i64 %1003, %1015
  br i1 %1016, label %1002, label %1017

1017:                                             ; preds = %1002
  %1018 = icmp sgt i32 %1013, -4
  br i1 %1018, label %1019, label %2040

1019:                                             ; preds = %1017
  %1020 = load ptr, ptr %996, align 8, !tbaa !92
  br label %1021

1021:                                             ; preds = %1021, %1019
  %1022 = phi i64 [ 0, %1019 ], [ %1032, %1021 ]
  %1023 = getelementptr inbounds [4 x [12 x i32]], ptr @gaaiMBAFF_NZCoeff, i64 0, i64 1, i64 %1022
  %1024 = load i32, ptr %1023, align 4, !tbaa !12
  %1025 = load i32, ptr %997, align 4, !tbaa !19
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds ptr, ptr %1020, i64 %1026
  %1028 = load ptr, ptr %1027, align 8, !tbaa !6
  %1029 = getelementptr inbounds i8, ptr %1028, i64 8
  %1030 = load ptr, ptr %1029, align 8, !tbaa !6
  %1031 = getelementptr inbounds i32, ptr %1030, i64 %1022
  store i32 %1024, ptr %1031, align 4, !tbaa !12
  %1032 = add nuw nsw i64 %1022, 1
  %1033 = load i32, ptr %995, align 4, !tbaa !120
  %1034 = add nsw i32 %1033, 3
  %1035 = sext i32 %1034 to i64
  %1036 = icmp slt i64 %1022, %1035
  br i1 %1036, label %1021, label %1037

1037:                                             ; preds = %1021
  %1038 = icmp sgt i32 %1033, -4
  br i1 %1038, label %1039, label %2040

1039:                                             ; preds = %1037
  %1040 = load ptr, ptr %996, align 8, !tbaa !92
  br label %1041

1041:                                             ; preds = %1041, %1039
  %1042 = phi i64 [ 0, %1039 ], [ %1052, %1041 ]
  %1043 = getelementptr inbounds [4 x [12 x i32]], ptr @gaaiMBAFF_NZCoeff, i64 0, i64 2, i64 %1042
  %1044 = load i32, ptr %1043, align 4, !tbaa !12
  %1045 = load i32, ptr %997, align 4, !tbaa !19
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds ptr, ptr %1040, i64 %1046
  %1048 = load ptr, ptr %1047, align 8, !tbaa !6
  %1049 = getelementptr inbounds i8, ptr %1048, i64 16
  %1050 = load ptr, ptr %1049, align 8, !tbaa !6
  %1051 = getelementptr inbounds i32, ptr %1050, i64 %1042
  store i32 %1044, ptr %1051, align 4, !tbaa !12
  %1052 = add nuw nsw i64 %1042, 1
  %1053 = load i32, ptr %995, align 4, !tbaa !120
  %1054 = add nsw i32 %1053, 3
  %1055 = sext i32 %1054 to i64
  %1056 = icmp slt i64 %1042, %1055
  br i1 %1056, label %1041, label %1057

1057:                                             ; preds = %1041
  %1058 = icmp sgt i32 %1053, -4
  br i1 %1058, label %1059, label %2040

1059:                                             ; preds = %1057
  %1060 = load ptr, ptr %996, align 8, !tbaa !92
  br label %1061

1061:                                             ; preds = %1061, %1059
  %1062 = phi i64 [ 0, %1059 ], [ %1072, %1061 ]
  %1063 = getelementptr inbounds [4 x [12 x i32]], ptr @gaaiMBAFF_NZCoeff, i64 0, i64 3, i64 %1062
  %1064 = load i32, ptr %1063, align 4, !tbaa !12
  %1065 = load i32, ptr %997, align 4, !tbaa !19
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds ptr, ptr %1060, i64 %1066
  %1068 = load ptr, ptr %1067, align 8, !tbaa !6
  %1069 = getelementptr inbounds i8, ptr %1068, i64 24
  %1070 = load ptr, ptr %1069, align 8, !tbaa !6
  %1071 = getelementptr inbounds i32, ptr %1070, i64 %1062
  store i32 %1064, ptr %1071, align 4, !tbaa !12
  %1072 = add nuw nsw i64 %1062, 1
  %1073 = load i32, ptr %995, align 4, !tbaa !120
  %1074 = add nsw i32 %1073, 3
  %1075 = sext i32 %1074 to i64
  %1076 = icmp slt i64 %1062, %1075
  br i1 %1076, label %1061, label %2040

1077:                                             ; preds = %604
  %1078 = load i32, ptr %115, align 4, !tbaa !85
  %1079 = load i32, ptr %120, align 8, !tbaa !121
  %1080 = getelementptr inbounds i8, ptr %613, i64 90548
  %1081 = load i32, ptr %1080, align 4, !tbaa !115
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1084, label %1083

1083:                                             ; preds = %1077
  call void @IntraChromaPrediction(ptr noundef null, ptr noundef null, ptr noundef null) #12
  br label %1084

1084:                                             ; preds = %1083, %1077
  %1085 = load i16, ptr %106, align 4, !tbaa !10
  %1086 = icmp ne i16 %1085, 0
  %1087 = and i1 %29, %1086
  br i1 %1087, label %1088, label %1155

1088:                                             ; preds = %1084
  %1089 = load i32, ptr %107, align 8, !tbaa !71
  %1090 = call signext i32 @Get_Direct_CostMB(i32 noundef signext %1089) #12
  store i32 %1090, ptr %7, align 4, !tbaa !12
  %1091 = icmp eq i32 %1090, 2147483647
  br i1 %1091, label %1098, label %1092

1092:                                             ; preds = %1088
  %1093 = load double, ptr %109, align 8, !tbaa !69
  %1094 = call double @llvm.fmuladd.f64(double %1093, double 1.600000e+01, double 4.999000e-01)
  %1095 = call double @llvm.floor.f64(double %1094)
  %1096 = fptosi double %1095 to i32
  %1097 = sub nsw i32 %1090, %1096
  store i32 %1097, ptr %7, align 4, !tbaa !12
  br label %1098

1098:                                             ; preds = %1092, %1088
  %1099 = phi i32 [ %1097, %1092 ], [ 2147483647, %1088 ]
  %1100 = icmp sgt i32 %1099, %606
  br i1 %1100, label %1154, label %1101

1101:                                             ; preds = %1098
  %1102 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %1103 = getelementptr inbounds i8, ptr %1102, i64 1156
  %1104 = load i32, ptr %1103, align 4, !tbaa !81
  %1105 = icmp eq i32 %1104, 0
  %1106 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %1105, label %1115, label %1107

1107:                                             ; preds = %1101
  %1108 = getelementptr inbounds i8, ptr %1106, i64 3892
  %1109 = load i32, ptr %1108, align 4, !tbaa !55
  switch i32 %1109, label %1110 [
    i32 0, label %1115
    i32 2, label %1116
  ]

1110:                                             ; preds = %1107
  %1111 = load i32, ptr %10, align 4, !tbaa !12
  %1112 = load i32, ptr %8, align 4, !tbaa !12
  %1113 = icmp slt i32 %1111, %1112
  %1114 = zext i1 %1113 to i32
  br label %1116

1115:                                             ; preds = %1107, %1101
  br label %1116

1116:                                             ; preds = %1110, %1107, %1115
  %1117 = phi i32 [ 0, %1115 ], [ 1, %1107 ], [ %1114, %1110 ]
  store i32 %1117, ptr %115, align 4, !tbaa !85
  %1118 = getelementptr inbounds i8, ptr %1106, i64 3908
  %1119 = load i32, ptr %1118, align 4, !tbaa !89
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1152, label %1121

1121:                                             ; preds = %1116
  %1122 = load ptr, ptr @img, align 8, !tbaa !6
  %1123 = getelementptr inbounds i8, ptr %1122, i64 168
  %1124 = load i32, ptr %1123, align 8, !tbaa !41
  %1125 = getelementptr inbounds i8, ptr %1122, i64 172
  %1126 = load i32, ptr %1125, align 4, !tbaa !40
  %1127 = getelementptr inbounds i8, ptr %1122, i64 12600
  %1128 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %1129 = sext i32 %1126 to i64
  %1130 = sext i32 %1124 to i64
  %1131 = getelementptr ptr, ptr %1128, i64 %1129
  br label %1132

1132:                                             ; preds = %1149, %1121
  %1133 = phi i64 [ 0, %1121 ], [ %1150, %1149 ]
  br label %1134

1134:                                             ; preds = %1134, %1132
  %1135 = phi i64 [ 0, %1132 ], [ %1147, %1134 ]
  %1136 = getelementptr ptr, ptr %1131, i64 %1135
  %1137 = load ptr, ptr %1136, align 8, !tbaa !6
  %1138 = getelementptr i16, ptr %1137, i64 %1133
  %1139 = getelementptr i16, ptr %1138, i64 %1130
  %1140 = load i16, ptr %1139, align 2, !tbaa !10
  %1141 = zext i16 %1140 to i32
  %1142 = getelementptr inbounds [16 x i16], ptr %1127, i64 %1135, i64 %1133
  %1143 = load i16, ptr %1142, align 2, !tbaa !10
  %1144 = zext i16 %1143 to i32
  %1145 = sub nsw i32 %1141, %1144
  %1146 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %1135, i64 %1133
  store i32 %1145, ptr %1146, align 4, !tbaa !12
  %1147 = add nuw nsw i64 %1135, 1
  %1148 = icmp eq i64 %1147, 16
  br i1 %1148, label %1149, label %1134

1149:                                             ; preds = %1134
  %1150 = add nuw nsw i64 %1133, 1
  %1151 = icmp eq i64 %1150, 16
  br i1 %1151, label %1152, label %1132

1152:                                             ; preds = %1149, %1116
  %1153 = load i32, ptr %7, align 4, !tbaa !12
  store i16 0, ptr @best_mode, align 2, !tbaa !10
  br label %1155

1154:                                             ; preds = %1098
  store i32 %1078, ptr %115, align 4, !tbaa !85
  store i32 %1079, ptr %120, align 8, !tbaa !121
  br label %1155

1155:                                             ; preds = %1152, %1154, %1084
  %1156 = phi i32 [ %1153, %1152 ], [ %606, %1154 ], [ %606, %1084 ]
  %1157 = load i16, ptr %121, align 2, !tbaa !10
  %1158 = icmp eq i16 %1157, 0
  br i1 %1158, label %1435, label %1159

1159:                                             ; preds = %1155
  store i32 1, ptr %115, align 4, !tbaa !85
  store i32 13, ptr %122, align 8, !tbaa !88
  %1160 = load double, ptr %3, align 8, !tbaa !67
  %1161 = call signext i32 @Mode_Decision_for_new_Intra8x8Macroblock(double noundef %1160, ptr noundef nonnull %7) #12
  %1162 = load i32, ptr %7, align 4, !tbaa !12
  %1163 = icmp sgt i32 %1162, %1156
  br i1 %1163, label %1434, label %1164

1164:                                             ; preds = %1159
  %1165 = load ptr, ptr @img, align 8, !tbaa !6
  %1166 = getelementptr inbounds i8, ptr %1165, i64 90572
  %1167 = load i32, ptr %1166, align 4, !tbaa !102
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1305, label %1169

1169:                                             ; preds = %1164
  %1170 = load i32, ptr @cbp_chroma_block, align 4, !tbaa !12
  %1171 = icmp eq i32 %1170, 0
  %1172 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 4), align 4, !tbaa !12
  %1173 = icmp eq i32 %1172, 0
  %1174 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 8), align 4, !tbaa !12
  %1175 = icmp eq i32 %1174, 0
  %1176 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 12), align 4, !tbaa !12
  %1177 = icmp eq i32 %1176, 0
  %1178 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 16), align 4, !tbaa !12
  %1179 = icmp eq i32 %1178, 0
  %1180 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 20), align 4, !tbaa !12
  %1181 = icmp eq i32 %1180, 0
  %1182 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 24), align 4, !tbaa !12
  %1183 = icmp eq i32 %1182, 0
  %1184 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 28), align 4, !tbaa !12
  %1185 = icmp eq i32 %1184, 0
  %1186 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 32), align 4, !tbaa !12
  %1187 = icmp eq i32 %1186, 0
  %1188 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 36), align 4, !tbaa !12
  %1189 = icmp eq i32 %1188, 0
  %1190 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 40), align 4, !tbaa !12
  %1191 = icmp eq i32 %1190, 0
  %1192 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 44), align 4, !tbaa !12
  %1193 = icmp eq i32 %1192, 0
  %1194 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 48), align 4, !tbaa !12
  %1195 = icmp eq i32 %1194, 0
  %1196 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 52), align 4, !tbaa !12
  %1197 = icmp eq i32 %1196, 0
  %1198 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 56), align 4, !tbaa !12
  %1199 = icmp eq i32 %1198, 0
  %1200 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 60), align 4, !tbaa !12
  %1201 = icmp eq i32 %1200, 0
  %1202 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 64), align 4, !tbaa !12
  %1203 = icmp eq i32 %1202, 0
  %1204 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 68), align 4, !tbaa !12
  %1205 = icmp eq i32 %1204, 0
  %1206 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 72), align 4, !tbaa !12
  %1207 = icmp eq i32 %1206, 0
  %1208 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 76), align 4, !tbaa !12
  %1209 = icmp eq i32 %1208, 0
  %1210 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 80), align 4, !tbaa !12
  %1211 = icmp eq i32 %1210, 0
  %1212 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 84), align 4, !tbaa !12
  %1213 = icmp eq i32 %1212, 0
  %1214 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 88), align 4, !tbaa !12
  %1215 = icmp eq i32 %1214, 0
  %1216 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 92), align 4, !tbaa !12
  %1217 = icmp eq i32 %1216, 0
  %1218 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 96), align 4, !tbaa !12
  %1219 = icmp eq i32 %1218, 0
  %1220 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 100), align 4, !tbaa !12
  %1221 = icmp eq i32 %1220, 0
  %1222 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 104), align 4, !tbaa !12
  %1223 = icmp eq i32 %1222, 0
  %1224 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 108), align 4, !tbaa !12
  %1225 = icmp eq i32 %1224, 0
  %1226 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 112), align 4, !tbaa !12
  %1227 = icmp eq i32 %1226, 0
  %1228 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 116), align 4, !tbaa !12
  %1229 = icmp eq i32 %1228, 0
  %1230 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 120), align 4, !tbaa !12
  %1231 = icmp eq i32 %1230, 0
  %1232 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 124), align 4, !tbaa !12
  %1233 = icmp eq i32 %1232, 0
  %1234 = select i1 %1233, i1 %1231, i1 false
  %1235 = select i1 %1234, i1 %1229, i1 false
  %1236 = select i1 %1235, i1 %1227, i1 false
  %1237 = select i1 %1236, i1 %1225, i1 false
  %1238 = select i1 %1237, i1 %1223, i1 false
  %1239 = select i1 %1238, i1 %1221, i1 false
  %1240 = select i1 %1239, i1 %1219, i1 false
  %1241 = select i1 %1240, i1 %1217, i1 false
  %1242 = select i1 %1241, i1 %1215, i1 false
  %1243 = select i1 %1242, i1 %1213, i1 false
  %1244 = select i1 %1243, i1 %1211, i1 false
  %1245 = select i1 %1244, i1 %1209, i1 false
  %1246 = select i1 %1245, i1 %1207, i1 false
  %1247 = select i1 %1246, i1 %1205, i1 false
  %1248 = select i1 %1247, i1 %1203, i1 false
  %1249 = select i1 %1248, i1 %1201, i1 false
  %1250 = select i1 %1249, i1 %1199, i1 false
  %1251 = select i1 %1250, i1 %1197, i1 false
  %1252 = select i1 %1251, i1 %1195, i1 false
  %1253 = select i1 %1252, i1 %1193, i1 false
  %1254 = select i1 %1253, i1 %1191, i1 false
  %1255 = select i1 %1254, i1 %1189, i1 false
  %1256 = select i1 %1255, i1 %1187, i1 false
  %1257 = select i1 %1256, i1 %1185, i1 false
  %1258 = select i1 %1257, i1 %1183, i1 false
  %1259 = select i1 %1258, i1 %1181, i1 false
  %1260 = select i1 %1259, i1 %1179, i1 false
  %1261 = select i1 %1260, i1 %1177, i1 false
  %1262 = select i1 %1261, i1 %1175, i1 false
  %1263 = select i1 %1262, i1 %1173, i1 false
  %1264 = select i1 %1263, i1 %1171, i1 false
  %1265 = select i1 %1264, i32 %128, i32 2
  %1266 = call signext i32 @dct_chroma_DC(i32 noundef signext 0, i32 noundef signext %1265) #12
  %1267 = call signext i32 @dct_chroma_DC(i32 noundef signext 1, i32 noundef signext %1266) #12
  %1268 = shl i32 %1267, 4
  %1269 = load ptr, ptr @img, align 8, !tbaa !6
  %1270 = getelementptr inbounds i8, ptr %1269, i64 156
  %1271 = load i32, ptr %1270, align 4, !tbaa !44
  %1272 = getelementptr inbounds i8, ptr %1269, i64 152
  %1273 = load i32, ptr %1272, align 8, !tbaa !45
  %1274 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1275 = getelementptr inbounds i8, ptr %1274, i64 6464
  %1276 = load ptr, ptr %1275, align 8, !tbaa !48
  %1277 = load ptr, ptr %1276, align 8, !tbaa !6
  %1278 = getelementptr inbounds i8, ptr %1276, i64 8
  %1279 = load ptr, ptr %1278, align 8, !tbaa !6
  %1280 = sext i32 %1273 to i64
  %1281 = sext i32 %1271 to i64
  br label %1282

1282:                                             ; preds = %1169, %1300
  %1283 = phi i64 [ 0, %1169 ], [ %1301, %1300 ]
  %1284 = add nsw i64 %1283, %1281
  %1285 = getelementptr inbounds ptr, ptr %1277, i64 %1284
  %1286 = load ptr, ptr %1285, align 8, !tbaa !6
  %1287 = getelementptr inbounds ptr, ptr %1279, i64 %1284
  %1288 = load ptr, ptr %1287, align 8, !tbaa !6
  br label %1289

1289:                                             ; preds = %1282, %1289
  %1290 = phi i64 [ 0, %1282 ], [ %1298, %1289 ]
  %1291 = add nsw i64 %1290, %1280
  %1292 = getelementptr inbounds i16, ptr %1286, i64 %1291
  %1293 = load i16, ptr %1292, align 2, !tbaa !10
  %1294 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgU, i64 0, i64 %1283, i64 %1290
  store i16 %1293, ptr %1294, align 2, !tbaa !10
  %1295 = getelementptr inbounds i16, ptr %1288, i64 %1291
  %1296 = load i16, ptr %1295, align 2, !tbaa !10
  %1297 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgV, i64 0, i64 %1283, i64 %1290
  store i16 %1296, ptr %1297, align 2, !tbaa !10
  %1298 = add nuw nsw i64 %1290, 1
  %1299 = icmp eq i64 %1298, 16
  br i1 %1299, label %1300, label %1289

1300:                                             ; preds = %1289
  %1301 = add nuw nsw i64 %1283, 1
  %1302 = icmp eq i64 %1301, 16
  br i1 %1302, label %1303, label %1282

1303:                                             ; preds = %1300
  %1304 = add nsw i32 %1268, %1161
  br label %1305

1305:                                             ; preds = %1303, %1164
  %1306 = phi ptr [ %1165, %1164 ], [ %1269, %1303 ]
  %1307 = phi i32 [ %1161, %1164 ], [ %1304, %1303 ]
  %1308 = phi i32 [ %128, %1164 ], [ %1267, %1303 ]
  store i32 %1307, ptr %116, align 4, !tbaa !25
  %1309 = load ptr, ptr @input, align 8, !tbaa !6
  %1310 = getelementptr inbounds i8, ptr %1309, i64 3892
  %1311 = load i32, ptr %1310, align 4, !tbaa !55
  %1312 = icmp eq i32 %1311, 2
  br i1 %1312, label %1317, label %1313

1313:                                             ; preds = %1305
  %1314 = load ptr, ptr @cofAC, align 8, !tbaa !6
  %1315 = getelementptr inbounds i8, ptr %1306, i64 14136
  %1316 = load ptr, ptr %1315, align 8, !tbaa !101
  store ptr %1316, ptr @cofAC, align 8, !tbaa !6
  store ptr %1314, ptr %1315, align 8, !tbaa !101
  br label %1317

1317:                                             ; preds = %1313, %1305
  %1318 = getelementptr inbounds i8, ptr %1306, i64 156
  %1319 = load i32, ptr %1318, align 4, !tbaa !44
  %1320 = getelementptr inbounds i8, ptr %1306, i64 152
  %1321 = load i32, ptr %1320, align 8, !tbaa !45
  %1322 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1323 = getelementptr inbounds i8, ptr %1322, i64 6424
  %1324 = load ptr, ptr %1323, align 8, !tbaa !42
  %1325 = sext i32 %1321 to i64
  %1326 = sext i32 %1319 to i64
  %1327 = getelementptr ptr, ptr %1324, i64 %1326
  br label %1328

1328:                                             ; preds = %1317, %1328
  %1329 = phi i64 [ 0, %1317 ], [ %1395, %1328 ]
  %1330 = getelementptr ptr, ptr %1327, i64 %1329
  %1331 = load ptr, ptr %1330, align 8, !tbaa !6
  %1332 = getelementptr inbounds i16, ptr %1331, i64 %1325
  %1333 = load i16, ptr %1332, align 2, !tbaa !10
  %1334 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 0
  store i16 %1333, ptr %1334, align 2, !tbaa !10
  %1335 = getelementptr i16, ptr %1331, i64 %1325
  %1336 = getelementptr i8, ptr %1335, i64 2
  %1337 = load i16, ptr %1336, align 2, !tbaa !10
  %1338 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 1
  store i16 %1337, ptr %1338, align 2, !tbaa !10
  %1339 = getelementptr i16, ptr %1331, i64 %1325
  %1340 = getelementptr i8, ptr %1339, i64 4
  %1341 = load i16, ptr %1340, align 2, !tbaa !10
  %1342 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 2
  store i16 %1341, ptr %1342, align 2, !tbaa !10
  %1343 = getelementptr i16, ptr %1331, i64 %1325
  %1344 = getelementptr i8, ptr %1343, i64 6
  %1345 = load i16, ptr %1344, align 2, !tbaa !10
  %1346 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 3
  store i16 %1345, ptr %1346, align 2, !tbaa !10
  %1347 = getelementptr i16, ptr %1331, i64 %1325
  %1348 = getelementptr i8, ptr %1347, i64 8
  %1349 = load i16, ptr %1348, align 2, !tbaa !10
  %1350 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 4
  store i16 %1349, ptr %1350, align 2, !tbaa !10
  %1351 = getelementptr i16, ptr %1331, i64 %1325
  %1352 = getelementptr i8, ptr %1351, i64 10
  %1353 = load i16, ptr %1352, align 2, !tbaa !10
  %1354 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 5
  store i16 %1353, ptr %1354, align 2, !tbaa !10
  %1355 = getelementptr i16, ptr %1331, i64 %1325
  %1356 = getelementptr i8, ptr %1355, i64 12
  %1357 = load i16, ptr %1356, align 2, !tbaa !10
  %1358 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 6
  store i16 %1357, ptr %1358, align 2, !tbaa !10
  %1359 = getelementptr i16, ptr %1331, i64 %1325
  %1360 = getelementptr i8, ptr %1359, i64 14
  %1361 = load i16, ptr %1360, align 2, !tbaa !10
  %1362 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 7
  store i16 %1361, ptr %1362, align 2, !tbaa !10
  %1363 = getelementptr i16, ptr %1331, i64 %1325
  %1364 = getelementptr i8, ptr %1363, i64 16
  %1365 = load i16, ptr %1364, align 2, !tbaa !10
  %1366 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 8
  store i16 %1365, ptr %1366, align 2, !tbaa !10
  %1367 = getelementptr i16, ptr %1331, i64 %1325
  %1368 = getelementptr i8, ptr %1367, i64 18
  %1369 = load i16, ptr %1368, align 2, !tbaa !10
  %1370 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 9
  store i16 %1369, ptr %1370, align 2, !tbaa !10
  %1371 = getelementptr i16, ptr %1331, i64 %1325
  %1372 = getelementptr i8, ptr %1371, i64 20
  %1373 = load i16, ptr %1372, align 2, !tbaa !10
  %1374 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 10
  store i16 %1373, ptr %1374, align 2, !tbaa !10
  %1375 = getelementptr i16, ptr %1331, i64 %1325
  %1376 = getelementptr i8, ptr %1375, i64 22
  %1377 = load i16, ptr %1376, align 2, !tbaa !10
  %1378 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 11
  store i16 %1377, ptr %1378, align 2, !tbaa !10
  %1379 = getelementptr i16, ptr %1331, i64 %1325
  %1380 = getelementptr i8, ptr %1379, i64 24
  %1381 = load i16, ptr %1380, align 2, !tbaa !10
  %1382 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 12
  store i16 %1381, ptr %1382, align 2, !tbaa !10
  %1383 = getelementptr i16, ptr %1331, i64 %1325
  %1384 = getelementptr i8, ptr %1383, i64 26
  %1385 = load i16, ptr %1384, align 2, !tbaa !10
  %1386 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 13
  store i16 %1385, ptr %1386, align 2, !tbaa !10
  %1387 = getelementptr i16, ptr %1331, i64 %1325
  %1388 = getelementptr i8, ptr %1387, i64 28
  %1389 = load i16, ptr %1388, align 2, !tbaa !10
  %1390 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 14
  store i16 %1389, ptr %1390, align 2, !tbaa !10
  %1391 = getelementptr i16, ptr %1331, i64 %1325
  %1392 = getelementptr i8, ptr %1391, i64 30
  %1393 = load i16, ptr %1392, align 2, !tbaa !10
  %1394 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %1329, i64 15
  store i16 %1393, ptr %1394, align 2, !tbaa !10
  %1395 = add nuw nsw i64 %1329, 1
  %1396 = icmp eq i64 %1395, 16
  br i1 %1396, label %1397, label %1328

1397:                                             ; preds = %1328
  %1398 = getelementptr inbounds i8, ptr %1309, i64 3908
  %1399 = load i32, ptr %1398, align 4, !tbaa !89
  %1400 = icmp eq i32 %1399, 0
  br i1 %1400, label %1431, label %1401

1401:                                             ; preds = %1397
  %1402 = getelementptr inbounds i8, ptr %1306, i64 168
  %1403 = load i32, ptr %1402, align 8, !tbaa !41
  %1404 = getelementptr inbounds i8, ptr %1306, i64 172
  %1405 = load i32, ptr %1404, align 4, !tbaa !40
  %1406 = getelementptr inbounds i8, ptr %1306, i64 12600
  %1407 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %1408 = sext i32 %1405 to i64
  %1409 = sext i32 %1403 to i64
  %1410 = getelementptr ptr, ptr %1407, i64 %1408
  br label %1411

1411:                                             ; preds = %1428, %1401
  %1412 = phi i64 [ 0, %1401 ], [ %1429, %1428 ]
  br label %1413

1413:                                             ; preds = %1413, %1411
  %1414 = phi i64 [ 0, %1411 ], [ %1426, %1413 ]
  %1415 = getelementptr ptr, ptr %1410, i64 %1414
  %1416 = load ptr, ptr %1415, align 8, !tbaa !6
  %1417 = getelementptr i16, ptr %1416, i64 %1412
  %1418 = getelementptr i16, ptr %1417, i64 %1409
  %1419 = load i16, ptr %1418, align 2, !tbaa !10
  %1420 = zext i16 %1419 to i32
  %1421 = getelementptr inbounds [16 x i16], ptr %1406, i64 %1414, i64 %1412
  %1422 = load i16, ptr %1421, align 2, !tbaa !10
  %1423 = zext i16 %1422 to i32
  %1424 = sub nsw i32 %1420, %1423
  %1425 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %1414, i64 %1412
  store i32 %1424, ptr %1425, align 4, !tbaa !12
  %1426 = add nuw nsw i64 %1414, 1
  %1427 = icmp eq i64 %1426, 16
  br i1 %1427, label %1428, label %1413

1428:                                             ; preds = %1413
  %1429 = add nuw nsw i64 %1412, 1
  %1430 = icmp eq i64 %1429, 16
  br i1 %1430, label %1431, label %1411

1431:                                             ; preds = %1428, %1397
  %1432 = load i32, ptr %7, align 4, !tbaa !12
  store i16 13, ptr @best_mode, align 2, !tbaa !10
  %1433 = load i32, ptr %115, align 4, !tbaa !85
  br label %1435

1434:                                             ; preds = %1159
  store i32 %1078, ptr %115, align 4, !tbaa !85
  br label %1435

1435:                                             ; preds = %1431, %1434, %1155
  %1436 = phi i32 [ %1432, %1431 ], [ %1156, %1434 ], [ %1156, %1155 ]
  %1437 = phi i32 [ %1433, %1431 ], [ %1078, %1434 ], [ %1078, %1155 ]
  %1438 = phi i32 [ %1308, %1431 ], [ %128, %1434 ], [ %128, %1155 ]
  %1439 = load i16, ptr %123, align 2, !tbaa !10
  %1440 = icmp eq i16 %1439, 0
  br i1 %1440, label %1598, label %1441

1441:                                             ; preds = %1435
  store i32 0, ptr %115, align 4, !tbaa !85
  store i32 9, ptr %122, align 8, !tbaa !88
  %1442 = load double, ptr %3, align 8, !tbaa !67
  %1443 = call signext i32 @Mode_Decision_for_Intra4x4Macroblock(double noundef %1442, ptr noundef nonnull %7) #12
  %1444 = load i32, ptr %7, align 4, !tbaa !12
  %1445 = icmp sgt i32 %1444, %1436
  br i1 %1445, label %1593, label %1446

1446:                                             ; preds = %1441
  %1447 = load ptr, ptr @img, align 8, !tbaa !6
  %1448 = getelementptr inbounds i8, ptr %1447, i64 90572
  %1449 = load i32, ptr %1448, align 4, !tbaa !102
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1552, label %1451

1451:                                             ; preds = %1446
  %1452 = load i32, ptr @cbp_chroma_block, align 4, !tbaa !12
  %1453 = icmp eq i32 %1452, 0
  %1454 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 4), align 4, !tbaa !12
  %1455 = icmp eq i32 %1454, 0
  %1456 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 8), align 4, !tbaa !12
  %1457 = icmp eq i32 %1456, 0
  %1458 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 12), align 4, !tbaa !12
  %1459 = icmp eq i32 %1458, 0
  %1460 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 16), align 4, !tbaa !12
  %1461 = icmp eq i32 %1460, 0
  %1462 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 20), align 4, !tbaa !12
  %1463 = icmp eq i32 %1462, 0
  %1464 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 24), align 4, !tbaa !12
  %1465 = icmp eq i32 %1464, 0
  %1466 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 28), align 4, !tbaa !12
  %1467 = icmp eq i32 %1466, 0
  %1468 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 32), align 4, !tbaa !12
  %1469 = icmp eq i32 %1468, 0
  %1470 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 36), align 4, !tbaa !12
  %1471 = icmp eq i32 %1470, 0
  %1472 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 40), align 4, !tbaa !12
  %1473 = icmp eq i32 %1472, 0
  %1474 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 44), align 4, !tbaa !12
  %1475 = icmp eq i32 %1474, 0
  %1476 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 48), align 4, !tbaa !12
  %1477 = icmp eq i32 %1476, 0
  %1478 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 52), align 4, !tbaa !12
  %1479 = icmp eq i32 %1478, 0
  %1480 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 56), align 4, !tbaa !12
  %1481 = icmp eq i32 %1480, 0
  %1482 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 60), align 4, !tbaa !12
  %1483 = icmp eq i32 %1482, 0
  %1484 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 64), align 4, !tbaa !12
  %1485 = icmp eq i32 %1484, 0
  %1486 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 68), align 4, !tbaa !12
  %1487 = icmp eq i32 %1486, 0
  %1488 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 72), align 4, !tbaa !12
  %1489 = icmp eq i32 %1488, 0
  %1490 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 76), align 4, !tbaa !12
  %1491 = icmp eq i32 %1490, 0
  %1492 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 80), align 4, !tbaa !12
  %1493 = icmp eq i32 %1492, 0
  %1494 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 84), align 4, !tbaa !12
  %1495 = icmp eq i32 %1494, 0
  %1496 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 88), align 4, !tbaa !12
  %1497 = icmp eq i32 %1496, 0
  %1498 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 92), align 4, !tbaa !12
  %1499 = icmp eq i32 %1498, 0
  %1500 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 96), align 4, !tbaa !12
  %1501 = icmp eq i32 %1500, 0
  %1502 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 100), align 4, !tbaa !12
  %1503 = icmp eq i32 %1502, 0
  %1504 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 104), align 4, !tbaa !12
  %1505 = icmp eq i32 %1504, 0
  %1506 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 108), align 4, !tbaa !12
  %1507 = icmp eq i32 %1506, 0
  %1508 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 112), align 4, !tbaa !12
  %1509 = icmp eq i32 %1508, 0
  %1510 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 116), align 4, !tbaa !12
  %1511 = icmp eq i32 %1510, 0
  %1512 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 120), align 4, !tbaa !12
  %1513 = icmp eq i32 %1512, 0
  %1514 = load i32, ptr getelementptr inbounds (i8, ptr @cbp_chroma_block, i64 124), align 4, !tbaa !12
  %1515 = icmp eq i32 %1514, 0
  %1516 = select i1 %1515, i1 %1513, i1 false
  %1517 = select i1 %1516, i1 %1511, i1 false
  %1518 = select i1 %1517, i1 %1509, i1 false
  %1519 = select i1 %1518, i1 %1507, i1 false
  %1520 = select i1 %1519, i1 %1505, i1 false
  %1521 = select i1 %1520, i1 %1503, i1 false
  %1522 = select i1 %1521, i1 %1501, i1 false
  %1523 = select i1 %1522, i1 %1499, i1 false
  %1524 = select i1 %1523, i1 %1497, i1 false
  %1525 = select i1 %1524, i1 %1495, i1 false
  %1526 = select i1 %1525, i1 %1493, i1 false
  %1527 = select i1 %1526, i1 %1491, i1 false
  %1528 = select i1 %1527, i1 %1489, i1 false
  %1529 = select i1 %1528, i1 %1487, i1 false
  %1530 = select i1 %1529, i1 %1485, i1 false
  %1531 = select i1 %1530, i1 %1483, i1 false
  %1532 = select i1 %1531, i1 %1481, i1 false
  %1533 = select i1 %1532, i1 %1479, i1 false
  %1534 = select i1 %1533, i1 %1477, i1 false
  %1535 = select i1 %1534, i1 %1475, i1 false
  %1536 = select i1 %1535, i1 %1473, i1 false
  %1537 = select i1 %1536, i1 %1471, i1 false
  %1538 = select i1 %1537, i1 %1469, i1 false
  %1539 = select i1 %1538, i1 %1467, i1 false
  %1540 = select i1 %1539, i1 %1465, i1 false
  %1541 = select i1 %1540, i1 %1463, i1 false
  %1542 = select i1 %1541, i1 %1461, i1 false
  %1543 = select i1 %1542, i1 %1459, i1 false
  %1544 = select i1 %1543, i1 %1457, i1 false
  %1545 = select i1 %1544, i1 %1455, i1 false
  %1546 = select i1 %1545, i1 %1453, i1 false
  %1547 = select i1 %1546, i32 %1438, i32 2
  %1548 = call signext i32 @dct_chroma_DC(i32 noundef signext 0, i32 noundef signext %1547) #12
  %1549 = call signext i32 @dct_chroma_DC(i32 noundef signext 1, i32 noundef signext %1548) #12
  %1550 = shl i32 %1549, 4
  %1551 = add nsw i32 %1550, %1443
  br label %1552

1552:                                             ; preds = %1451, %1446
  %1553 = phi i32 [ %1551, %1451 ], [ %1443, %1446 ]
  %1554 = phi i32 [ %1549, %1451 ], [ %1438, %1446 ]
  store i32 %1553, ptr %116, align 4, !tbaa !25
  %1555 = load ptr, ptr @input, align 8, !tbaa !6
  %1556 = getelementptr inbounds i8, ptr %1555, i64 3908
  %1557 = load i32, ptr %1556, align 4, !tbaa !89
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1590, label %1559

1559:                                             ; preds = %1552
  %1560 = load ptr, ptr @img, align 8, !tbaa !6
  %1561 = getelementptr inbounds i8, ptr %1560, i64 168
  %1562 = load i32, ptr %1561, align 8, !tbaa !41
  %1563 = getelementptr inbounds i8, ptr %1560, i64 172
  %1564 = load i32, ptr %1563, align 4, !tbaa !40
  %1565 = getelementptr inbounds i8, ptr %1560, i64 12600
  %1566 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %1567 = sext i32 %1564 to i64
  %1568 = sext i32 %1562 to i64
  %1569 = getelementptr ptr, ptr %1566, i64 %1567
  br label %1570

1570:                                             ; preds = %1587, %1559
  %1571 = phi i64 [ 0, %1559 ], [ %1588, %1587 ]
  br label %1572

1572:                                             ; preds = %1572, %1570
  %1573 = phi i64 [ 0, %1570 ], [ %1585, %1572 ]
  %1574 = getelementptr ptr, ptr %1569, i64 %1573
  %1575 = load ptr, ptr %1574, align 8, !tbaa !6
  %1576 = getelementptr i16, ptr %1575, i64 %1571
  %1577 = getelementptr i16, ptr %1576, i64 %1568
  %1578 = load i16, ptr %1577, align 2, !tbaa !10
  %1579 = zext i16 %1578 to i32
  %1580 = getelementptr inbounds [16 x i16], ptr %1565, i64 %1573, i64 %1571
  %1581 = load i16, ptr %1580, align 2, !tbaa !10
  %1582 = zext i16 %1581 to i32
  %1583 = sub nsw i32 %1579, %1582
  %1584 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %1573, i64 %1571
  store i32 %1583, ptr %1584, align 4, !tbaa !12
  %1585 = add nuw nsw i64 %1573, 1
  %1586 = icmp eq i64 %1585, 16
  br i1 %1586, label %1587, label %1572

1587:                                             ; preds = %1572
  %1588 = add nuw nsw i64 %1571, 1
  %1589 = icmp eq i64 %1588, 16
  br i1 %1589, label %1590, label %1570

1590:                                             ; preds = %1587, %1552
  %1591 = load i32, ptr %7, align 4, !tbaa !12
  store i16 9, ptr @best_mode, align 2, !tbaa !10
  %1592 = load i32, ptr %115, align 4, !tbaa !85
  br label %1598

1593:                                             ; preds = %1441
  store i32 %1437, ptr %115, align 4, !tbaa !85
  %1594 = load ptr, ptr @cofAC, align 8, !tbaa !6
  %1595 = load ptr, ptr @img, align 8, !tbaa !6
  %1596 = getelementptr inbounds i8, ptr %1595, i64 14136
  %1597 = load ptr, ptr %1596, align 8, !tbaa !101
  store ptr %1597, ptr @cofAC, align 8, !tbaa !6
  store ptr %1594, ptr %1596, align 8, !tbaa !101
  br label %1598

1598:                                             ; preds = %1590, %1593, %1435
  %1599 = phi i32 [ %1591, %1590 ], [ %1436, %1593 ], [ %1436, %1435 ]
  %1600 = phi i32 [ %1592, %1590 ], [ %1437, %1593 ], [ %1437, %1435 ]
  %1601 = phi i32 [ %1554, %1590 ], [ %1438, %1593 ], [ %1438, %1435 ]
  %1602 = load i16, ptr %124, align 8, !tbaa !10
  %1603 = icmp eq i16 %1602, 0
  br i1 %1603, label %2040, label %1604

1604:                                             ; preds = %1598
  store i32 0, ptr %115, align 4, !tbaa !85
  call void @intrapred_luma_16x16() #12
  %1605 = call signext i32 @find_sad_16x16(ptr noundef nonnull %9) #12
  store i32 %1605, ptr %7, align 4, !tbaa !12
  %1606 = icmp slt i32 %1605, %1599
  br i1 %1606, label %1607, label %2039

1607:                                             ; preds = %1604
  %1608 = load ptr, ptr @input, align 8, !tbaa !6
  %1609 = getelementptr inbounds i8, ptr %1608, i64 3908
  %1610 = load i32, ptr %1609, align 4, !tbaa !89
  %1611 = icmp eq i32 %1610, 0
  %1612 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %1611, label %1646, label %1613

1613:                                             ; preds = %1607
  %1614 = getelementptr inbounds i8, ptr %1612, i64 168
  %1615 = load i32, ptr %1614, align 8, !tbaa !41
  %1616 = getelementptr inbounds i8, ptr %1612, i64 172
  %1617 = load i32, ptr %1616, align 4, !tbaa !40
  %1618 = getelementptr inbounds i8, ptr %1612, i64 4792
  %1619 = load i32, ptr %9, align 4, !tbaa !12
  %1620 = sext i32 %1619 to i64
  %1621 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %1618, i64 0, i64 %1620
  %1622 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %1623 = sext i32 %1617 to i64
  %1624 = sext i32 %1615 to i64
  %1625 = getelementptr ptr, ptr %1622, i64 %1623
  br label %1626

1626:                                             ; preds = %1643, %1613
  %1627 = phi i64 [ 0, %1613 ], [ %1644, %1643 ]
  br label %1628

1628:                                             ; preds = %1628, %1626
  %1629 = phi i64 [ 0, %1626 ], [ %1641, %1628 ]
  %1630 = getelementptr ptr, ptr %1625, i64 %1629
  %1631 = load ptr, ptr %1630, align 8, !tbaa !6
  %1632 = getelementptr i16, ptr %1631, i64 %1627
  %1633 = getelementptr i16, ptr %1632, i64 %1624
  %1634 = load i16, ptr %1633, align 2, !tbaa !10
  %1635 = zext i16 %1634 to i32
  %1636 = getelementptr inbounds [16 x i16], ptr %1621, i64 %1629, i64 %1627
  %1637 = load i16, ptr %1636, align 2, !tbaa !10
  %1638 = zext i16 %1637 to i32
  %1639 = sub nsw i32 %1635, %1638
  %1640 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %1629, i64 %1627
  store i32 %1639, ptr %1640, align 4, !tbaa !12
  %1641 = add nuw nsw i64 %1629, 1
  %1642 = icmp eq i64 %1641, 16
  br i1 %1642, label %1643, label %1628

1643:                                             ; preds = %1628
  %1644 = add nuw nsw i64 %1627, 1
  %1645 = icmp eq i64 %1644, 16
  br i1 %1645, label %1646, label %1626

1646:                                             ; preds = %1643, %1607
  %1647 = getelementptr inbounds i8, ptr %1612, i64 90572
  %1648 = load i32, ptr %1647, align 4, !tbaa !102
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %1720, label %1650

1650:                                             ; preds = %1646
  %1651 = getelementptr inbounds i8, ptr %1612, i64 156
  %1652 = getelementptr inbounds i8, ptr %1612, i64 152
  %1653 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %1654 = getelementptr inbounds i8, ptr %1612, i64 4792
  %1655 = load ptr, ptr @imgUV_org, align 8, !tbaa !6
  %1656 = load ptr, ptr %1655, align 8, !tbaa !6
  %1657 = getelementptr inbounds i8, ptr %1612, i64 8504
  %1658 = getelementptr inbounds i8, ptr %1655, i64 8
  %1659 = load ptr, ptr %1658, align 8, !tbaa !6
  %1660 = getelementptr inbounds i8, ptr %1612, i64 10552
  %1661 = getelementptr inbounds i8, ptr %1612, i64 13112
  br label %1662

1662:                                             ; preds = %1650, %1717
  %1663 = phi i64 [ 0, %1650 ], [ %1718, %1717 ]
  %1664 = load i32, ptr %1651, align 4, !tbaa !44
  %1665 = trunc nuw nsw i64 %1663 to i32
  %1666 = add nsw i32 %1664, %1665
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds ptr, ptr %1653, i64 %1667
  %1669 = load ptr, ptr %1668, align 8, !tbaa !6
  %1670 = getelementptr inbounds ptr, ptr %1656, i64 %1667
  %1671 = load ptr, ptr %1670, align 8, !tbaa !6
  %1672 = getelementptr inbounds ptr, ptr %1659, i64 %1667
  %1673 = load ptr, ptr %1672, align 8, !tbaa !6
  br label %1674

1674:                                             ; preds = %1662, %1674
  %1675 = phi i64 [ 0, %1662 ], [ %1715, %1674 ]
  %1676 = load i32, ptr %1652, align 8, !tbaa !45
  %1677 = trunc nuw nsw i64 %1675 to i32
  %1678 = add nsw i32 %1676, %1677
  %1679 = sext i32 %1678 to i64
  %1680 = getelementptr inbounds i16, ptr %1669, i64 %1679
  %1681 = load i16, ptr %1680, align 2, !tbaa !10
  %1682 = zext i16 %1681 to i32
  %1683 = load i32, ptr %9, align 4, !tbaa !12
  %1684 = sext i32 %1683 to i64
  %1685 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %1654, i64 0, i64 %1684, i64 %1663, i64 %1675
  %1686 = load i16, ptr %1685, align 2, !tbaa !10
  %1687 = zext i16 %1686 to i32
  %1688 = getelementptr inbounds i16, ptr %1671, i64 %1679
  %1689 = load i16, ptr %1688, align 2, !tbaa !10
  %1690 = zext i16 %1689 to i32
  %1691 = load i32, ptr %103, align 8, !tbaa !87
  %1692 = sext i32 %1691 to i64
  %1693 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1657, i64 0, i64 %1692, i64 %1663, i64 %1675
  %1694 = load i16, ptr %1693, align 2, !tbaa !10
  %1695 = zext i16 %1694 to i32
  %1696 = sub nsw i32 %1690, %1695
  %1697 = getelementptr inbounds i16, ptr %1673, i64 %1679
  %1698 = load i16, ptr %1697, align 2, !tbaa !10
  %1699 = zext i16 %1698 to i32
  %1700 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1660, i64 0, i64 %1692, i64 %1663, i64 %1675
  %1701 = load i16, ptr %1700, align 2, !tbaa !10
  %1702 = zext i16 %1701 to i32
  %1703 = add nsw i32 %1696, %1702
  %1704 = sub nsw i32 %1699, %1703
  %1705 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1663, i64 %1675
  store i32 %1704, ptr %1705, align 4, !tbaa !12
  %1706 = ashr i32 %1704, 1
  %1707 = add nsw i32 %1706, %1696
  %1708 = add nsw i32 %1707, %1687
  %1709 = sub nsw i32 %1682, %1708
  %1710 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1663, i64 %1675
  store i32 %1709, ptr %1710, align 4, !tbaa !12
  %1711 = ashr i32 %1709, 1
  %1712 = add nsw i32 %1711, %1707
  %1713 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_G, i64 0, i64 %1663, i64 %1675
  store i32 %1712, ptr %1713, align 4, !tbaa !12
  %1714 = getelementptr inbounds [16 x [16 x i32]], ptr %1661, i64 0, i64 %1663, i64 %1675
  store i32 %1712, ptr %1714, align 4, !tbaa !12
  %1715 = add nuw nsw i64 %1675, 1
  %1716 = icmp eq i64 %1715, 16
  br i1 %1716, label %1717, label %1674

1717:                                             ; preds = %1674
  %1718 = add nuw nsw i64 %1663, 1
  %1719 = icmp eq i64 %1718, 16
  br i1 %1719, label %1720, label %1662

1720:                                             ; preds = %1717, %1646
  store i16 10, ptr @best_mode, align 2, !tbaa !10
  %1721 = load i32, ptr %9, align 4, !tbaa !12
  %1722 = call signext i32 @dct_luma_16x16(i32 noundef signext %1721) #12
  store i32 %1722, ptr %116, align 4, !tbaa !25
  %1723 = load ptr, ptr @img, align 8, !tbaa !6
  %1724 = getelementptr inbounds i8, ptr %1723, i64 90572
  %1725 = load i32, ptr %1724, align 4, !tbaa !102
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %2040, label %1727

1727:                                             ; preds = %1720
  %1728 = getelementptr inbounds i8, ptr %1723, i64 13112
  br label %1729

1729:                                             ; preds = %1727, %1729
  %1730 = phi i64 [ 0, %1727 ], [ %1811, %1729 ]
  %1731 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 0
  %1732 = load i32, ptr %1731, align 4, !tbaa !12
  %1733 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 0
  store i32 %1732, ptr %1733, align 4, !tbaa !12
  %1734 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 0
  %1735 = load i32, ptr %1734, align 4, !tbaa !12
  store i32 %1735, ptr %1731, align 4, !tbaa !12
  %1736 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 1
  %1737 = load i32, ptr %1736, align 4, !tbaa !12
  %1738 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 1
  store i32 %1737, ptr %1738, align 4, !tbaa !12
  %1739 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 1
  %1740 = load i32, ptr %1739, align 4, !tbaa !12
  store i32 %1740, ptr %1736, align 4, !tbaa !12
  %1741 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 2
  %1742 = load i32, ptr %1741, align 4, !tbaa !12
  %1743 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 2
  store i32 %1742, ptr %1743, align 4, !tbaa !12
  %1744 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 2
  %1745 = load i32, ptr %1744, align 4, !tbaa !12
  store i32 %1745, ptr %1741, align 4, !tbaa !12
  %1746 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 3
  %1747 = load i32, ptr %1746, align 4, !tbaa !12
  %1748 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 3
  store i32 %1747, ptr %1748, align 4, !tbaa !12
  %1749 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 3
  %1750 = load i32, ptr %1749, align 4, !tbaa !12
  store i32 %1750, ptr %1746, align 4, !tbaa !12
  %1751 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 4
  %1752 = load i32, ptr %1751, align 4, !tbaa !12
  %1753 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 4
  store i32 %1752, ptr %1753, align 4, !tbaa !12
  %1754 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 4
  %1755 = load i32, ptr %1754, align 4, !tbaa !12
  store i32 %1755, ptr %1751, align 4, !tbaa !12
  %1756 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 5
  %1757 = load i32, ptr %1756, align 4, !tbaa !12
  %1758 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 5
  store i32 %1757, ptr %1758, align 4, !tbaa !12
  %1759 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 5
  %1760 = load i32, ptr %1759, align 4, !tbaa !12
  store i32 %1760, ptr %1756, align 4, !tbaa !12
  %1761 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 6
  %1762 = load i32, ptr %1761, align 4, !tbaa !12
  %1763 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 6
  store i32 %1762, ptr %1763, align 4, !tbaa !12
  %1764 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 6
  %1765 = load i32, ptr %1764, align 4, !tbaa !12
  store i32 %1765, ptr %1761, align 4, !tbaa !12
  %1766 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 7
  %1767 = load i32, ptr %1766, align 4, !tbaa !12
  %1768 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 7
  store i32 %1767, ptr %1768, align 4, !tbaa !12
  %1769 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 7
  %1770 = load i32, ptr %1769, align 4, !tbaa !12
  store i32 %1770, ptr %1766, align 4, !tbaa !12
  %1771 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 8
  %1772 = load i32, ptr %1771, align 4, !tbaa !12
  %1773 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 8
  store i32 %1772, ptr %1773, align 4, !tbaa !12
  %1774 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 8
  %1775 = load i32, ptr %1774, align 4, !tbaa !12
  store i32 %1775, ptr %1771, align 4, !tbaa !12
  %1776 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 9
  %1777 = load i32, ptr %1776, align 4, !tbaa !12
  %1778 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 9
  store i32 %1777, ptr %1778, align 4, !tbaa !12
  %1779 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 9
  %1780 = load i32, ptr %1779, align 4, !tbaa !12
  store i32 %1780, ptr %1776, align 4, !tbaa !12
  %1781 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 10
  %1782 = load i32, ptr %1781, align 4, !tbaa !12
  %1783 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 10
  store i32 %1782, ptr %1783, align 4, !tbaa !12
  %1784 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 10
  %1785 = load i32, ptr %1784, align 4, !tbaa !12
  store i32 %1785, ptr %1781, align 4, !tbaa !12
  %1786 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 11
  %1787 = load i32, ptr %1786, align 4, !tbaa !12
  %1788 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 11
  store i32 %1787, ptr %1788, align 4, !tbaa !12
  %1789 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 11
  %1790 = load i32, ptr %1789, align 4, !tbaa !12
  store i32 %1790, ptr %1786, align 4, !tbaa !12
  %1791 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 12
  %1792 = load i32, ptr %1791, align 4, !tbaa !12
  %1793 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 12
  store i32 %1792, ptr %1793, align 4, !tbaa !12
  %1794 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 12
  %1795 = load i32, ptr %1794, align 4, !tbaa !12
  store i32 %1795, ptr %1791, align 4, !tbaa !12
  %1796 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 13
  %1797 = load i32, ptr %1796, align 4, !tbaa !12
  %1798 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 13
  store i32 %1797, ptr %1798, align 4, !tbaa !12
  %1799 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 13
  %1800 = load i32, ptr %1799, align 4, !tbaa !12
  store i32 %1800, ptr %1796, align 4, !tbaa !12
  %1801 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 14
  %1802 = load i32, ptr %1801, align 4, !tbaa !12
  %1803 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 14
  store i32 %1802, ptr %1803, align 4, !tbaa !12
  %1804 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 14
  %1805 = load i32, ptr %1804, align 4, !tbaa !12
  store i32 %1805, ptr %1801, align 4, !tbaa !12
  %1806 = getelementptr inbounds [16 x [16 x i32]], ptr %1728, i64 0, i64 %1730, i64 15
  %1807 = load i32, ptr %1806, align 4, !tbaa !12
  %1808 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1730, i64 15
  store i32 %1807, ptr %1808, align 4, !tbaa !12
  %1809 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_B, i64 0, i64 %1730, i64 15
  %1810 = load i32, ptr %1809, align 4, !tbaa !12
  store i32 %1810, ptr %1806, align 4, !tbaa !12
  %1811 = add nuw nsw i64 %1730, 1
  %1812 = icmp eq i64 %1811, 16
  br i1 %1812, label %1813, label %1729

1813:                                             ; preds = %1729
  %1814 = call signext i32 @dct_chroma(i32 noundef signext 0, i32 noundef signext 0) #12
  %1815 = load ptr, ptr @img, align 8, !tbaa !6
  %1816 = getelementptr inbounds i8, ptr %1815, i64 13112
  br label %1817

1817:                                             ; preds = %1813, %1817
  %1818 = phi i64 [ 0, %1813 ], [ %1899, %1817 ]
  %1819 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 0
  %1820 = load i32, ptr %1819, align 4, !tbaa !12
  %1821 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 0
  store i32 %1820, ptr %1821, align 4, !tbaa !12
  %1822 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 0
  %1823 = load i32, ptr %1822, align 4, !tbaa !12
  store i32 %1823, ptr %1819, align 4, !tbaa !12
  %1824 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 1
  %1825 = load i32, ptr %1824, align 4, !tbaa !12
  %1826 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 1
  store i32 %1825, ptr %1826, align 4, !tbaa !12
  %1827 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 1
  %1828 = load i32, ptr %1827, align 4, !tbaa !12
  store i32 %1828, ptr %1824, align 4, !tbaa !12
  %1829 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 2
  %1830 = load i32, ptr %1829, align 4, !tbaa !12
  %1831 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 2
  store i32 %1830, ptr %1831, align 4, !tbaa !12
  %1832 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 2
  %1833 = load i32, ptr %1832, align 4, !tbaa !12
  store i32 %1833, ptr %1829, align 4, !tbaa !12
  %1834 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 3
  %1835 = load i32, ptr %1834, align 4, !tbaa !12
  %1836 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 3
  store i32 %1835, ptr %1836, align 4, !tbaa !12
  %1837 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 3
  %1838 = load i32, ptr %1837, align 4, !tbaa !12
  store i32 %1838, ptr %1834, align 4, !tbaa !12
  %1839 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 4
  %1840 = load i32, ptr %1839, align 4, !tbaa !12
  %1841 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 4
  store i32 %1840, ptr %1841, align 4, !tbaa !12
  %1842 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 4
  %1843 = load i32, ptr %1842, align 4, !tbaa !12
  store i32 %1843, ptr %1839, align 4, !tbaa !12
  %1844 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 5
  %1845 = load i32, ptr %1844, align 4, !tbaa !12
  %1846 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 5
  store i32 %1845, ptr %1846, align 4, !tbaa !12
  %1847 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 5
  %1848 = load i32, ptr %1847, align 4, !tbaa !12
  store i32 %1848, ptr %1844, align 4, !tbaa !12
  %1849 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 6
  %1850 = load i32, ptr %1849, align 4, !tbaa !12
  %1851 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 6
  store i32 %1850, ptr %1851, align 4, !tbaa !12
  %1852 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 6
  %1853 = load i32, ptr %1852, align 4, !tbaa !12
  store i32 %1853, ptr %1849, align 4, !tbaa !12
  %1854 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 7
  %1855 = load i32, ptr %1854, align 4, !tbaa !12
  %1856 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 7
  store i32 %1855, ptr %1856, align 4, !tbaa !12
  %1857 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 7
  %1858 = load i32, ptr %1857, align 4, !tbaa !12
  store i32 %1858, ptr %1854, align 4, !tbaa !12
  %1859 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 8
  %1860 = load i32, ptr %1859, align 4, !tbaa !12
  %1861 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 8
  store i32 %1860, ptr %1861, align 4, !tbaa !12
  %1862 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 8
  %1863 = load i32, ptr %1862, align 4, !tbaa !12
  store i32 %1863, ptr %1859, align 4, !tbaa !12
  %1864 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 9
  %1865 = load i32, ptr %1864, align 4, !tbaa !12
  %1866 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 9
  store i32 %1865, ptr %1866, align 4, !tbaa !12
  %1867 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 9
  %1868 = load i32, ptr %1867, align 4, !tbaa !12
  store i32 %1868, ptr %1864, align 4, !tbaa !12
  %1869 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 10
  %1870 = load i32, ptr %1869, align 4, !tbaa !12
  %1871 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 10
  store i32 %1870, ptr %1871, align 4, !tbaa !12
  %1872 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 10
  %1873 = load i32, ptr %1872, align 4, !tbaa !12
  store i32 %1873, ptr %1869, align 4, !tbaa !12
  %1874 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 11
  %1875 = load i32, ptr %1874, align 4, !tbaa !12
  %1876 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 11
  store i32 %1875, ptr %1876, align 4, !tbaa !12
  %1877 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 11
  %1878 = load i32, ptr %1877, align 4, !tbaa !12
  store i32 %1878, ptr %1874, align 4, !tbaa !12
  %1879 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 12
  %1880 = load i32, ptr %1879, align 4, !tbaa !12
  %1881 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 12
  store i32 %1880, ptr %1881, align 4, !tbaa !12
  %1882 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 12
  %1883 = load i32, ptr %1882, align 4, !tbaa !12
  store i32 %1883, ptr %1879, align 4, !tbaa !12
  %1884 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 13
  %1885 = load i32, ptr %1884, align 4, !tbaa !12
  %1886 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 13
  store i32 %1885, ptr %1886, align 4, !tbaa !12
  %1887 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 13
  %1888 = load i32, ptr %1887, align 4, !tbaa !12
  store i32 %1888, ptr %1884, align 4, !tbaa !12
  %1889 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 14
  %1890 = load i32, ptr %1889, align 4, !tbaa !12
  %1891 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 14
  store i32 %1890, ptr %1891, align 4, !tbaa !12
  %1892 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 14
  %1893 = load i32, ptr %1892, align 4, !tbaa !12
  store i32 %1893, ptr %1889, align 4, !tbaa !12
  %1894 = getelementptr inbounds [16 x [16 x i32]], ptr %1816, i64 0, i64 %1818, i64 15
  %1895 = load i32, ptr %1894, align 4, !tbaa !12
  %1896 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1818, i64 15
  store i32 %1895, ptr %1896, align 4, !tbaa !12
  %1897 = getelementptr inbounds [16 x [16 x i32]], ptr @resTrans_R, i64 0, i64 %1818, i64 15
  %1898 = load i32, ptr %1897, align 4, !tbaa !12
  store i32 %1898, ptr %1894, align 4, !tbaa !12
  %1899 = add nuw nsw i64 %1818, 1
  %1900 = icmp eq i64 %1899, 16
  br i1 %1900, label %1901, label %1817

1901:                                             ; preds = %1817
  %1902 = call signext i32 @dct_chroma(i32 noundef signext 1, i32 noundef signext %1814) #12
  %1903 = load ptr, ptr @img, align 8, !tbaa !6
  %1904 = getelementptr inbounds i8, ptr %1903, i64 13112
  br label %1905

1905:                                             ; preds = %1901, %1905
  %1906 = phi i64 [ 0, %1901 ], [ %1955, %1905 ]
  %1907 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 0
  %1908 = load i32, ptr %1907, align 4, !tbaa !12
  %1909 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 0
  store i32 %1908, ptr %1909, align 4, !tbaa !12
  %1910 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 1
  %1911 = load i32, ptr %1910, align 4, !tbaa !12
  %1912 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 1
  store i32 %1911, ptr %1912, align 4, !tbaa !12
  %1913 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 2
  %1914 = load i32, ptr %1913, align 4, !tbaa !12
  %1915 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 2
  store i32 %1914, ptr %1915, align 4, !tbaa !12
  %1916 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 3
  %1917 = load i32, ptr %1916, align 4, !tbaa !12
  %1918 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 3
  store i32 %1917, ptr %1918, align 4, !tbaa !12
  %1919 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 4
  %1920 = load i32, ptr %1919, align 4, !tbaa !12
  %1921 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 4
  store i32 %1920, ptr %1921, align 4, !tbaa !12
  %1922 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 5
  %1923 = load i32, ptr %1922, align 4, !tbaa !12
  %1924 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 5
  store i32 %1923, ptr %1924, align 4, !tbaa !12
  %1925 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 6
  %1926 = load i32, ptr %1925, align 4, !tbaa !12
  %1927 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 6
  store i32 %1926, ptr %1927, align 4, !tbaa !12
  %1928 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 7
  %1929 = load i32, ptr %1928, align 4, !tbaa !12
  %1930 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 7
  store i32 %1929, ptr %1930, align 4, !tbaa !12
  %1931 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 8
  %1932 = load i32, ptr %1931, align 4, !tbaa !12
  %1933 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 8
  store i32 %1932, ptr %1933, align 4, !tbaa !12
  %1934 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 9
  %1935 = load i32, ptr %1934, align 4, !tbaa !12
  %1936 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 9
  store i32 %1935, ptr %1936, align 4, !tbaa !12
  %1937 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 10
  %1938 = load i32, ptr %1937, align 4, !tbaa !12
  %1939 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 10
  store i32 %1938, ptr %1939, align 4, !tbaa !12
  %1940 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 11
  %1941 = load i32, ptr %1940, align 4, !tbaa !12
  %1942 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 11
  store i32 %1941, ptr %1942, align 4, !tbaa !12
  %1943 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 12
  %1944 = load i32, ptr %1943, align 4, !tbaa !12
  %1945 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 12
  store i32 %1944, ptr %1945, align 4, !tbaa !12
  %1946 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 13
  %1947 = load i32, ptr %1946, align 4, !tbaa !12
  %1948 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 13
  store i32 %1947, ptr %1948, align 4, !tbaa !12
  %1949 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 14
  %1950 = load i32, ptr %1949, align 4, !tbaa !12
  %1951 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 14
  store i32 %1950, ptr %1951, align 4, !tbaa !12
  %1952 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906, i64 15
  %1953 = load i32, ptr %1952, align 4, !tbaa !12
  %1954 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1906, i64 15
  store i32 %1953, ptr %1954, align 4, !tbaa !12
  %1955 = add nuw nsw i64 %1906, 1
  %1956 = icmp eq i64 %1955, 16
  br i1 %1956, label %1957, label %1905

1957:                                             ; preds = %1905
  %1958 = shl i32 %1902, 4
  %1959 = load i32, ptr %116, align 4, !tbaa !25
  %1960 = add nsw i32 %1959, %1958
  store i32 %1960, ptr %116, align 4, !tbaa !25
  %1961 = getelementptr inbounds i8, ptr %1903, i64 156
  %1962 = load i32, ptr %1961, align 4, !tbaa !44
  %1963 = getelementptr inbounds i8, ptr %1903, i64 152
  %1964 = load i32, ptr %1963, align 8, !tbaa !45
  %1965 = getelementptr inbounds i8, ptr %1903, i64 90532
  %1966 = load i32, ptr %1965, align 4, !tbaa !122
  %1967 = getelementptr inbounds i8, ptr %1903, i64 4792
  %1968 = load i32, ptr %9, align 4, !tbaa !12
  %1969 = sext i32 %1968 to i64
  %1970 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %1971 = getelementptr inbounds i8, ptr %1970, i64 6424
  %1972 = load ptr, ptr %1971, align 8, !tbaa !42
  %1973 = getelementptr inbounds i8, ptr %1903, i64 90536
  %1974 = load i32, ptr %1973, align 8, !tbaa !123
  %1975 = getelementptr inbounds i8, ptr %1903, i64 8504
  %1976 = load i32, ptr %103, align 8, !tbaa !87
  %1977 = sext i32 %1976 to i64
  %1978 = getelementptr inbounds i8, ptr %1970, i64 6464
  %1979 = load ptr, ptr %1978, align 8, !tbaa !48
  %1980 = load ptr, ptr %1979, align 8, !tbaa !6
  %1981 = getelementptr inbounds i8, ptr %1903, i64 10552
  %1982 = getelementptr inbounds i8, ptr %1979, i64 8
  %1983 = load ptr, ptr %1982, align 8, !tbaa !6
  %1984 = sext i32 %1964 to i64
  %1985 = sext i32 %1962 to i64
  br label %1986

1986:                                             ; preds = %1957, %2036
  %1987 = phi i64 [ 0, %1957 ], [ %2037, %2036 ]
  %1988 = add nsw i64 %1987, %1985
  %1989 = getelementptr inbounds ptr, ptr %1972, i64 %1988
  %1990 = load ptr, ptr %1989, align 8, !tbaa !6
  %1991 = getelementptr inbounds ptr, ptr %1980, i64 %1988
  %1992 = load ptr, ptr %1991, align 8, !tbaa !6
  %1993 = getelementptr inbounds ptr, ptr %1983, i64 %1988
  %1994 = load ptr, ptr %1993, align 8, !tbaa !6
  br label %1995

1995:                                             ; preds = %1986, %1995
  %1996 = phi i64 [ 0, %1986 ], [ %2034, %1995 ]
  %1997 = add nsw i64 %1996, %1984
  %1998 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resG, i64 0, i64 %1987, i64 %1996
  %1999 = load i32, ptr %1998, align 4, !tbaa !12
  %2000 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resB, i64 0, i64 %1987, i64 %1996
  %2001 = load i32, ptr %2000, align 4, !tbaa !12
  %2002 = ashr i32 %2001, 1
  %2003 = sub nsw i32 %1999, %2002
  %2004 = add nsw i32 %2003, %2001
  %2005 = getelementptr inbounds [16 x [16 x i32]], ptr @rec_resR, i64 0, i64 %1987, i64 %1996
  %2006 = load i32, ptr %2005, align 4, !tbaa !12
  %2007 = ashr i32 %2006, 1
  %2008 = sub nsw i32 %2003, %2007
  %2009 = add nsw i32 %2008, %2006
  %2010 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %1967, i64 0, i64 %1969, i64 %1987, i64 %1996
  %2011 = load i16, ptr %2010, align 2, !tbaa !10
  %2012 = zext i16 %2011 to i32
  %2013 = add nsw i32 %2004, %2012
  %2014 = call i32 @llvm.smax.i32(i32 %2013, i32 0)
  %2015 = call i32 @llvm.smin.i32(i32 %1966, i32 %2014)
  %2016 = trunc i32 %2015 to i16
  %2017 = getelementptr inbounds i16, ptr %1990, i64 %1997
  store i16 %2016, ptr %2017, align 2, !tbaa !10
  %2018 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1975, i64 0, i64 %1977, i64 %1987, i64 %1996
  %2019 = load i16, ptr %2018, align 2, !tbaa !10
  %2020 = zext i16 %2019 to i32
  %2021 = add nsw i32 %2008, %2020
  %2022 = call i32 @llvm.smax.i32(i32 %2021, i32 0)
  %2023 = call i32 @llvm.smin.i32(i32 %1974, i32 %2022)
  %2024 = trunc i32 %2023 to i16
  %2025 = getelementptr inbounds i16, ptr %1992, i64 %1997
  store i16 %2024, ptr %2025, align 2, !tbaa !10
  %2026 = getelementptr inbounds [4 x [16 x [16 x i16]]], ptr %1981, i64 0, i64 %1977, i64 %1987, i64 %1996
  %2027 = load i16, ptr %2026, align 2, !tbaa !10
  %2028 = zext i16 %2027 to i32
  %2029 = add nsw i32 %2009, %2028
  %2030 = call i32 @llvm.smax.i32(i32 %2029, i32 0)
  %2031 = call i32 @llvm.smin.i32(i32 %1974, i32 %2030)
  %2032 = trunc i32 %2031 to i16
  %2033 = getelementptr inbounds i16, ptr %1994, i64 %1997
  store i16 %2032, ptr %2033, align 2, !tbaa !10
  %2034 = add nuw nsw i64 %1996, 1
  %2035 = icmp eq i64 %2034, 16
  br i1 %2035, label %2036, label %1995

2036:                                             ; preds = %1995
  %2037 = add nuw nsw i64 %1987, 1
  %2038 = icmp eq i64 %2037, 16
  br i1 %2038, label %2040, label %1986

2039:                                             ; preds = %1604
  store i32 %1600, ptr %115, align 4, !tbaa !85
  store i32 %1079, ptr %120, align 8, !tbaa !121
  br label %2040

2040:                                             ; preds = %1061, %2036, %993, %1017, %1037, %1057, %1598, %1720, %2039
  %2041 = phi i32 [ %1599, %1720 ], [ %1599, %2039 ], [ %1599, %1598 ], [ %606, %1057 ], [ %606, %1037 ], [ %606, %1017 ], [ %606, %993 ], [ %1599, %2036 ], [ %606, %1061 ]
  %2042 = phi i32 [ %1601, %1720 ], [ %1601, %2039 ], [ %1601, %1598 ], [ %128, %1057 ], [ %128, %1037 ], [ %128, %1017 ], [ %128, %993 ], [ %1902, %2036 ], [ %128, %1061 ]
  br i1 %130, label %2043, label %2050

2043:                                             ; preds = %2040
  %2044 = load i32, ptr %122, align 8, !tbaa !88
  %2045 = add i32 %2044, -9
  %2046 = and i32 %2045, -6
  %2047 = icmp eq i32 %2046, 0
  %2048 = zext i1 %2047 to i32
  %2049 = and i1 %62, %130
  br i1 %2049, label %125, label %2050

2050:                                             ; preds = %2040, %2043
  %2051 = phi i32 [ %2048, %2043 ], [ %132, %2040 ]
  %2052 = load ptr, ptr @input, align 8, !tbaa !6
  %2053 = getelementptr inbounds i8, ptr %2052, i64 3136
  %2054 = load i32, ptr %2053, align 8, !tbaa !78
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %2077, label %2056

2056:                                             ; preds = %2050
  %2057 = load i32, ptr @cbp, align 4, !tbaa !12
  %2058 = icmp ne i32 %2057, 0
  %2059 = load i16, ptr @best_mode, align 2
  %2060 = icmp eq i16 %2059, 10
  %2061 = select i1 %2058, i1 true, i1 %2060
  br i1 %2061, label %2073, label %2062

2062:                                             ; preds = %2056
  %2063 = getelementptr inbounds i8, ptr %2052, i64 3908
  %2064 = load i32, ptr %2063, align 4, !tbaa !89
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2066, label %2076

2066:                                             ; preds = %2062
  %2067 = getelementptr inbounds i8, ptr %68, i64 8
  store i32 0, ptr %2067, align 8, !tbaa !28
  %2068 = getelementptr inbounds i8, ptr %68, i64 488
  %2069 = load i32, ptr %2068, align 8, !tbaa !29
  %2070 = getelementptr inbounds i8, ptr %68, i64 12
  store i32 %2069, ptr %2070, align 4, !tbaa !30
  %2071 = load ptr, ptr @img, align 8, !tbaa !6
  %2072 = getelementptr inbounds i8, ptr %2071, i64 40
  store i32 %2069, ptr %2072, align 8, !tbaa !31
  br label %2073

2073:                                             ; preds = %2056, %2066
  %2074 = phi i32 [ 0, %2066 ], [ 1, %2056 ]
  %2075 = getelementptr inbounds i8, ptr %68, i64 496
  store i32 %2074, ptr %2075, align 8, !tbaa !124
  br label %2076

2076:                                             ; preds = %2073, %2062
  call void @set_stored_macroblock_parameters() #12
  br label %2369

2077:                                             ; preds = %2050
  %2078 = load i16, ptr @best_mode, align 2, !tbaa !10
  %2079 = sext i16 %2078 to i32
  call void @SetModesAndRefframeForBlocks(i32 noundef signext %2079) #12
  %2080 = load i16, ptr @best_mode, align 2, !tbaa !10
  switch i16 %2080, label %2205 [
    i16 8, label %2081
    i16 13, label %2115
  ]

2081:                                             ; preds = %2077
  %2082 = load i32, ptr %115, align 4, !tbaa !85
  %2083 = icmp ne i32 %2082, 0
  %2084 = load i32, ptr @cbp8_8x8ts, align 4
  %2085 = icmp eq i32 %2084, 0
  %2086 = select i1 %2083, i1 %2085, i1 false
  br i1 %2086, label %2087, label %2093

2087:                                             ; preds = %2081
  %2088 = load ptr, ptr @input, align 8, !tbaa !6
  %2089 = getelementptr inbounds i8, ptr %2088, i64 3892
  %2090 = load i32, ptr %2089, align 4, !tbaa !55
  %2091 = icmp eq i32 %2090, 2
  br i1 %2091, label %2093, label %2092

2092:                                             ; preds = %2087
  store i32 0, ptr %115, align 4, !tbaa !85
  br label %2093

2093:                                             ; preds = %2081, %2087, %2092
  call void @SetCoeffAndReconstruction8x8(ptr noundef nonnull %68) #12
  %2094 = getelementptr inbounds i8, ptr %68, i64 332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2094, i8 2, i64 16, i1 false)
  %2095 = load ptr, ptr @img, align 8, !tbaa !6
  %2096 = getelementptr inbounds i8, ptr %2095, i64 148
  %2097 = load i32, ptr %2096, align 4, !tbaa !95
  %2098 = sext i32 %2097 to i64
  br label %2099

2099:                                             ; preds = %2093, %2099
  %2100 = phi i64 [ %2098, %2093 ], [ %2108, %2099 ]
  %2101 = phi ptr [ %2095, %2093 ], [ %2109, %2099 ]
  %2102 = getelementptr inbounds ptr, ptr %80, i64 %2100
  %2103 = load ptr, ptr %2102, align 8, !tbaa !6
  %2104 = getelementptr inbounds i8, ptr %2101, i64 144
  %2105 = load i32, ptr %2104, align 8, !tbaa !94
  %2106 = sext i32 %2105 to i64
  %2107 = getelementptr inbounds i8, ptr %2103, i64 %2106
  store i32 33686018, ptr %2107, align 1
  %2108 = add nsw i64 %2100, 1
  %2109 = load ptr, ptr @img, align 8, !tbaa !6
  %2110 = getelementptr inbounds i8, ptr %2109, i64 148
  %2111 = load i32, ptr %2110, align 4, !tbaa !95
  %2112 = add nsw i32 %2111, 3
  %2113 = sext i32 %2112 to i64
  %2114 = icmp slt i64 %2100, %2113
  br i1 %2114, label %2099, label %2281

2115:                                             ; preds = %2077
  %2116 = getelementptr inbounds i8, ptr %68, i64 332
  %2117 = getelementptr inbounds i8, ptr %68, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2116, ptr noundef nonnull align 4 dereferenceable(16) %2117, i64 16, i1 false)
  %2118 = load ptr, ptr @img, align 8, !tbaa !6
  %2119 = getelementptr inbounds i8, ptr %2118, i64 148
  %2120 = load i32, ptr %2119, align 4, !tbaa !95
  %2121 = sext i32 %2120 to i64
  br label %2122

2122:                                             ; preds = %2115, %2122
  %2123 = phi i64 [ %2121, %2115 ], [ %2139, %2122 ]
  %2124 = phi ptr [ %2118, %2115 ], [ %2140, %2122 ]
  %2125 = getelementptr inbounds i8, ptr %2124, i64 104
  %2126 = load ptr, ptr %2125, align 8, !tbaa !109
  %2127 = getelementptr inbounds ptr, ptr %2126, i64 %2123
  %2128 = load ptr, ptr %2127, align 8, !tbaa !6
  %2129 = getelementptr inbounds i8, ptr %2124, i64 144
  %2130 = load i32, ptr %2129, align 8, !tbaa !94
  %2131 = sext i32 %2130 to i64
  %2132 = getelementptr inbounds i8, ptr %2128, i64 %2131
  %2133 = getelementptr inbounds i8, ptr %2124, i64 112
  %2134 = load ptr, ptr %2133, align 8, !tbaa !125
  %2135 = getelementptr inbounds ptr, ptr %2134, i64 %2123
  %2136 = load ptr, ptr %2135, align 8, !tbaa !6
  %2137 = getelementptr inbounds i8, ptr %2136, i64 %2131
  %2138 = load i32, ptr %2137, align 1
  store i32 %2138, ptr %2132, align 1
  %2139 = add nsw i64 %2123, 1
  %2140 = load ptr, ptr @img, align 8, !tbaa !6
  %2141 = getelementptr inbounds i8, ptr %2140, i64 148
  %2142 = load i32, ptr %2141, align 4, !tbaa !95
  %2143 = add nsw i32 %2142, 3
  %2144 = sext i32 %2143 to i64
  %2145 = icmp slt i64 %2123, %2144
  br i1 %2145, label %2122, label %2146

2146:                                             ; preds = %2122, %2146
  %2147 = phi i64 [ %2164, %2146 ], [ 0, %2122 ]
  %2148 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2149 = getelementptr inbounds i8, ptr %2148, i64 6424
  %2150 = load ptr, ptr %2149, align 8, !tbaa !42
  %2151 = load ptr, ptr @img, align 8, !tbaa !6
  %2152 = getelementptr inbounds i8, ptr %2151, i64 156
  %2153 = load i32, ptr %2152, align 4, !tbaa !44
  %2154 = trunc nuw nsw i64 %2147 to i32
  %2155 = add nsw i32 %2153, %2154
  %2156 = sext i32 %2155 to i64
  %2157 = getelementptr inbounds ptr, ptr %2150, i64 %2156
  %2158 = load ptr, ptr %2157, align 8, !tbaa !6
  %2159 = getelementptr inbounds i8, ptr %2151, i64 152
  %2160 = load i32, ptr %2159, align 8, !tbaa !45
  %2161 = sext i32 %2160 to i64
  %2162 = getelementptr inbounds i16, ptr %2158, i64 %2161
  %2163 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgY, i64 0, i64 %2147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %2162, ptr noundef nonnull align 2 dereferenceable(32) %2163, i64 32, i1 false)
  %2164 = add nuw nsw i64 %2147, 1
  %2165 = icmp eq i64 %2164, 16
  br i1 %2165, label %2166, label %2146

2166:                                             ; preds = %2146
  %2167 = load ptr, ptr @img, align 8, !tbaa !6
  %2168 = getelementptr inbounds i8, ptr %2167, i64 90572
  %2169 = load i32, ptr %2168, align 4, !tbaa !102
  %2170 = icmp eq i32 %2169, 0
  br i1 %2170, label %2205, label %2171

2171:                                             ; preds = %2166
  %2172 = getelementptr inbounds i8, ptr %2167, i64 164
  %2173 = load i32, ptr %2172, align 4, !tbaa !49
  %2174 = getelementptr inbounds i8, ptr %2167, i64 160
  %2175 = load i32, ptr %2174, align 8, !tbaa !50
  %2176 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2177 = getelementptr inbounds i8, ptr %2176, i64 6464
  %2178 = load ptr, ptr %2177, align 8, !tbaa !48
  %2179 = load ptr, ptr %2178, align 8, !tbaa !6
  %2180 = getelementptr inbounds i8, ptr %2178, i64 8
  %2181 = load ptr, ptr %2180, align 8, !tbaa !6
  %2182 = sext i32 %2175 to i64
  %2183 = sext i32 %2173 to i64
  br label %2184

2184:                                             ; preds = %2171, %2202
  %2185 = phi i64 [ 0, %2171 ], [ %2203, %2202 ]
  %2186 = add nsw i64 %2185, %2183
  %2187 = getelementptr inbounds ptr, ptr %2179, i64 %2186
  %2188 = load ptr, ptr %2187, align 8, !tbaa !6
  %2189 = getelementptr inbounds ptr, ptr %2181, i64 %2186
  %2190 = load ptr, ptr %2189, align 8, !tbaa !6
  br label %2191

2191:                                             ; preds = %2184, %2191
  %2192 = phi i64 [ 0, %2184 ], [ %2200, %2191 ]
  %2193 = add nsw i64 %2192, %2182
  %2194 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgU, i64 0, i64 %2185, i64 %2192
  %2195 = load i16, ptr %2194, align 2, !tbaa !10
  %2196 = getelementptr inbounds i16, ptr %2188, i64 %2193
  store i16 %2195, ptr %2196, align 2, !tbaa !10
  %2197 = getelementptr inbounds [16 x [16 x i16]], ptr @temp_imgV, i64 0, i64 %2185, i64 %2192
  %2198 = load i16, ptr %2197, align 2, !tbaa !10
  %2199 = getelementptr inbounds i16, ptr %2190, i64 %2193
  store i16 %2198, ptr %2199, align 2, !tbaa !10
  %2200 = add nuw nsw i64 %2192, 1
  %2201 = icmp eq i64 %2200, 16
  br i1 %2201, label %2202, label %2191

2202:                                             ; preds = %2191
  %2203 = add nuw nsw i64 %2185, 1
  %2204 = icmp eq i64 %2203, 16
  br i1 %2204, label %2205, label %2184

2205:                                             ; preds = %2202, %2077, %2166
  %2206 = load i16, ptr @best_mode, align 2
  %2207 = and i16 %2206, -5
  %2208 = icmp eq i16 %2207, 9
  br i1 %2208, label %2281, label %2209

2209:                                             ; preds = %2205
  %2210 = getelementptr inbounds i8, ptr %68, i64 332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2210, i8 2, i64 16, i1 false)
  %2211 = load ptr, ptr @img, align 8, !tbaa !6
  %2212 = getelementptr inbounds i8, ptr %2211, i64 148
  %2213 = load i32, ptr %2212, align 4, !tbaa !95
  %2214 = sext i32 %2213 to i64
  br label %2215

2215:                                             ; preds = %2209, %2215
  %2216 = phi i64 [ %2214, %2209 ], [ %2224, %2215 ]
  %2217 = phi ptr [ %2211, %2209 ], [ %2225, %2215 ]
  %2218 = getelementptr inbounds ptr, ptr %80, i64 %2216
  %2219 = load ptr, ptr %2218, align 8, !tbaa !6
  %2220 = getelementptr inbounds i8, ptr %2217, i64 144
  %2221 = load i32, ptr %2220, align 8, !tbaa !94
  %2222 = sext i32 %2221 to i64
  %2223 = getelementptr inbounds i8, ptr %2219, i64 %2222
  store i32 33686018, ptr %2223, align 1
  %2224 = add nsw i64 %2216, 1
  %2225 = load ptr, ptr @img, align 8, !tbaa !6
  %2226 = getelementptr inbounds i8, ptr %2225, i64 148
  %2227 = load i32, ptr %2226, align 4, !tbaa !95
  %2228 = add nsw i32 %2227, 3
  %2229 = sext i32 %2228 to i64
  %2230 = icmp slt i64 %2216, %2229
  br i1 %2230, label %2215, label %2231

2231:                                             ; preds = %2215
  %2232 = load i16, ptr @best_mode, align 2
  %2233 = icmp eq i16 %2232, 10
  br i1 %2233, label %2281, label %2234

2234:                                             ; preds = %2231
  %2235 = add i16 %2232, -1
  %2236 = icmp ult i16 %2235, 3
  br i1 %2236, label %2237, label %2238

2237:                                             ; preds = %2234
  store i32 %605, ptr %115, align 4, !tbaa !85
  br label %2238

2238:                                             ; preds = %2237, %2234
  call void @LumaResidualCoding() #12
  %2239 = load i32, ptr %116, align 4, !tbaa !25
  %2240 = icmp eq i32 %2239, 0
  %2241 = load i16, ptr @best_mode, align 2
  %2242 = icmp eq i16 %2241, 0
  %2243 = select i1 %2240, i1 %2242, i1 false
  br i1 %2243, label %2244, label %2245

2244:                                             ; preds = %2238
  store i32 0, ptr %115, align 4, !tbaa !85
  br label %2245

2245:                                             ; preds = %2244, %2238
  %2246 = load ptr, ptr @input, align 8, !tbaa !6
  %2247 = getelementptr inbounds i8, ptr %2246, i64 3908
  %2248 = load i32, ptr %2247, align 4, !tbaa !89
  %2249 = icmp eq i32 %2248, 0
  br i1 %2249, label %2281, label %2250

2250:                                             ; preds = %2245
  %2251 = load ptr, ptr @img, align 8, !tbaa !6
  %2252 = getelementptr inbounds i8, ptr %2251, i64 168
  %2253 = load i32, ptr %2252, align 8, !tbaa !41
  %2254 = getelementptr inbounds i8, ptr %2251, i64 172
  %2255 = load i32, ptr %2254, align 4, !tbaa !40
  %2256 = getelementptr inbounds i8, ptr %2251, i64 12600
  %2257 = load ptr, ptr @imgY_org, align 8, !tbaa !6
  %2258 = sext i32 %2255 to i64
  %2259 = sext i32 %2253 to i64
  %2260 = getelementptr ptr, ptr %2257, i64 %2258
  br label %2261

2261:                                             ; preds = %2278, %2250
  %2262 = phi i64 [ 0, %2250 ], [ %2279, %2278 ]
  br label %2263

2263:                                             ; preds = %2263, %2261
  %2264 = phi i64 [ 0, %2261 ], [ %2276, %2263 ]
  %2265 = getelementptr ptr, ptr %2260, i64 %2264
  %2266 = load ptr, ptr %2265, align 8, !tbaa !6
  %2267 = getelementptr i16, ptr %2266, i64 %2262
  %2268 = getelementptr i16, ptr %2267, i64 %2259
  %2269 = load i16, ptr %2268, align 2, !tbaa !10
  %2270 = zext i16 %2269 to i32
  %2271 = getelementptr inbounds [16 x i16], ptr %2256, i64 %2264, i64 %2262
  %2272 = load i16, ptr %2271, align 2, !tbaa !10
  %2273 = zext i16 %2272 to i32
  %2274 = sub nsw i32 %2270, %2273
  %2275 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %2264, i64 %2262
  store i32 %2274, ptr %2275, align 4, !tbaa !12
  %2276 = add nuw nsw i64 %2264, 1
  %2277 = icmp eq i64 %2276, 16
  br i1 %2277, label %2278, label %2263

2278:                                             ; preds = %2263
  %2279 = add nuw nsw i64 %2262, 1
  %2280 = icmp eq i64 %2279, 16
  br i1 %2280, label %2281, label %2261

2281:                                             ; preds = %2099, %2278, %2205, %2245, %2231
  %2282 = load i32, ptr %116, align 4, !tbaa !25
  %2283 = and i32 %2282, 15
  %2284 = icmp eq i32 %2283, 0
  br i1 %2284, label %2285, label %2288

2285:                                             ; preds = %2281
  %2286 = load i32, ptr %122, align 8, !tbaa !88
  switch i32 %2286, label %2287 [
    i32 9, label %2288
    i32 13, label %2288
  ]

2287:                                             ; preds = %2285
  store i32 0, ptr %115, align 4, !tbaa !85
  br label %2288

2288:                                             ; preds = %2285, %2285, %2287, %2281
  %2289 = load ptr, ptr @img, align 8, !tbaa !6
  %2290 = getelementptr inbounds i8, ptr %2289, i64 90548
  %2291 = load i32, ptr %2290, align 4, !tbaa !115
  %2292 = icmp eq i32 %2291, 0
  br i1 %2292, label %2295, label %2293

2293:                                             ; preds = %2288
  call void @IntraChromaPrediction(ptr noundef null, ptr noundef null, ptr noundef null) #12
  %2294 = load ptr, ptr @img, align 8, !tbaa !6
  br label %2295

2295:                                             ; preds = %2293, %2288
  %2296 = phi ptr [ %2294, %2293 ], [ %2289, %2288 ]
  %2297 = getelementptr inbounds i8, ptr %2296, i64 90196
  store i32 0, ptr %2297, align 4, !tbaa !126
  store i32 0, ptr %1, align 4, !tbaa !12
  %2298 = getelementptr inbounds i8, ptr %2296, i64 90572
  %2299 = load i32, ptr %2298, align 4, !tbaa !102
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2303, label %2301

2301:                                             ; preds = %2295
  %2302 = load i16, ptr @best_mode, align 2
  switch i16 %2302, label %2303 [
    i16 13, label %2310
    i16 10, label %2310
    i16 9, label %2310
  ]

2303:                                             ; preds = %2301, %2295
  %2304 = getelementptr inbounds i8, ptr %2296, i64 90548
  %2305 = load i32, ptr %2304, align 4, !tbaa !115
  %2306 = icmp eq i32 %2305, 0
  br i1 %2306, label %2308, label %2307

2307:                                             ; preds = %2303
  call void @ChromaResidualCoding(ptr noundef nonnull %1) #12
  br label %2308

2308:                                             ; preds = %2303, %2307
  %2309 = load i16, ptr @best_mode, align 2, !tbaa !10
  br label %2310

2310:                                             ; preds = %2308, %2301, %2301, %2301
  %2311 = phi i16 [ %2309, %2308 ], [ %2302, %2301 ], [ %2302, %2301 ], [ %2302, %2301 ]
  %2312 = icmp eq i16 %2311, 10
  br i1 %2312, label %2313, label %2319

2313:                                             ; preds = %2310
  %2314 = load i32, ptr %116, align 4, !tbaa !25
  %2315 = load i32, ptr %9, align 4, !tbaa !12
  %2316 = call signext i32 @I16Offset(i32 noundef signext %2314, i32 noundef signext %2315) #12
  %2317 = load ptr, ptr @img, align 8, !tbaa !6
  %2318 = getelementptr inbounds i8, ptr %2317, i64 90196
  store i32 %2316, ptr %2318, align 4, !tbaa !126
  br label %2319

2319:                                             ; preds = %2313, %2310
  call void @SetMotionVectorsMB(ptr noundef nonnull %68, i32 noundef signext %102) #12
  %2320 = load i16, ptr @best_mode, align 2
  %2321 = icmp eq i16 %2320, 1
  %2322 = select i1 %33, i1 %2321, i1 false
  br i1 %2322, label %2325, label %2323

2323:                                             ; preds = %2319
  %2324 = load ptr, ptr @img, align 8, !tbaa !6
  br label %2363

2325:                                             ; preds = %2319
  %2326 = load i32, ptr %116, align 4, !tbaa !25
  %2327 = icmp eq i32 %2326, 0
  %2328 = load ptr, ptr @img, align 8, !tbaa !6
  br i1 %2327, label %2329, label %2363

2329:                                             ; preds = %2325
  %2330 = load ptr, ptr @enc_picture, align 8, !tbaa !6
  %2331 = getelementptr inbounds i8, ptr %2330, i64 6480
  %2332 = load ptr, ptr %2331, align 8, !tbaa !97
  %2333 = load ptr, ptr %2332, align 8, !tbaa !6
  %2334 = getelementptr inbounds i8, ptr %2328, i64 148
  %2335 = load i32, ptr %2334, align 4, !tbaa !95
  %2336 = sext i32 %2335 to i64
  %2337 = getelementptr inbounds ptr, ptr %2333, i64 %2336
  %2338 = load ptr, ptr %2337, align 8, !tbaa !6
  %2339 = getelementptr inbounds i8, ptr %2328, i64 144
  %2340 = load i32, ptr %2339, align 8, !tbaa !94
  %2341 = sext i32 %2340 to i64
  %2342 = getelementptr inbounds i8, ptr %2338, i64 %2341
  %2343 = load i8, ptr %2342, align 1, !tbaa !79
  %2344 = icmp eq i8 %2343, 0
  br i1 %2344, label %2345, label %2363

2345:                                             ; preds = %2329
  %2346 = getelementptr inbounds i8, ptr %2330, i64 6504
  %2347 = load ptr, ptr %2346, align 8, !tbaa !112
  %2348 = load ptr, ptr %2347, align 8, !tbaa !6
  %2349 = getelementptr inbounds ptr, ptr %2348, i64 %2336
  %2350 = load ptr, ptr %2349, align 8, !tbaa !6
  %2351 = getelementptr inbounds ptr, ptr %2350, i64 %2341
  %2352 = load ptr, ptr %2351, align 8, !tbaa !6
  %2353 = load i16, ptr %2352, align 2, !tbaa !10
  %2354 = load i16, ptr %87, align 2, !tbaa !10
  %2355 = icmp eq i16 %2353, %2354
  br i1 %2355, label %2356, label %2363

2356:                                             ; preds = %2345
  %2357 = getelementptr inbounds i8, ptr %2352, i64 2
  %2358 = load i16, ptr %2357, align 2, !tbaa !10
  %2359 = load i16, ptr %117, align 2, !tbaa !10
  %2360 = icmp eq i16 %2358, %2359
  br i1 %2360, label %2361, label %2363

2361:                                             ; preds = %2356
  %2362 = getelementptr inbounds i8, ptr %68, i64 376
  store i32 0, ptr %122, align 8, !tbaa !88
  store i32 0, ptr %115, align 4, !tbaa !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2362, i8 0, i64 16, i1 false)
  br label %2363

2363:                                             ; preds = %2323, %2361, %2356, %2345, %2329, %2325
  %2364 = phi ptr [ %2324, %2323 ], [ %2328, %2361 ], [ %2328, %2356 ], [ %2328, %2345 ], [ %2328, %2329 ], [ %2328, %2325 ]
  %2365 = getelementptr inbounds i8, ptr %2364, i64 90220
  %2366 = load i32, ptr %2365, align 4, !tbaa !52
  %2367 = icmp eq i32 %2366, 0
  br i1 %2367, label %2369, label %2368

2368:                                             ; preds = %2363
  call void @set_mbaff_parameters() #12
  br label %2369

2369:                                             ; preds = %2363, %2368, %2076
  %2370 = load ptr, ptr @input, align 8, !tbaa !6
  %2371 = getelementptr inbounds i8, ptr %2370, i64 3908
  %2372 = load i32, ptr %2371, align 4, !tbaa !89
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2425, label %2374

2374:                                             ; preds = %2369
  %2375 = load i16, ptr @best_mode, align 2, !tbaa !10
  %2376 = load ptr, ptr @img, align 8, !tbaa !6
  %2377 = getelementptr inbounds i8, ptr %2376, i64 24
  %2378 = load i32, ptr %2377, align 8, !tbaa !14
  %2379 = icmp eq i32 %2378, 0
  br i1 %2379, label %2380, label %2425

2380:                                             ; preds = %2374
  %2381 = call double @calc_MAD() #12
  %2382 = load ptr, ptr @img, align 8, !tbaa !6
  %2383 = getelementptr inbounds i8, ptr %2382, i64 90408
  %2384 = load ptr, ptr %2383, align 8, !tbaa !18
  %2385 = getelementptr inbounds i8, ptr %2382, i64 12
  %2386 = load i32, ptr %2385, align 4, !tbaa !19
  %2387 = sext i32 %2386 to i64
  %2388 = getelementptr inbounds double, ptr %2384, i64 %2387
  store double %2381, ptr %2388, align 8, !tbaa !20
  %2389 = load ptr, ptr @input, align 8, !tbaa !6
  %2390 = getelementptr inbounds i8, ptr %2389, i64 3920
  %2391 = load i32, ptr %2390, align 8, !tbaa !21
  %2392 = getelementptr inbounds i8, ptr %2382, i64 90432
  %2393 = load i32, ptr %2392, align 8, !tbaa !23
  %2394 = icmp slt i32 %2391, %2393
  br i1 %2394, label %2395, label %2425

2395:                                             ; preds = %2380
  %2396 = getelementptr inbounds i8, ptr %2382, i64 90368
  %2397 = load double, ptr %2396, align 8, !tbaa !24
  %2398 = fadd double %2381, %2397
  store double %2398, ptr %2396, align 8, !tbaa !24
  %2399 = load i32, ptr %116, align 4, !tbaa !25
  %2400 = icmp ne i32 %2399, 0
  %2401 = icmp eq i16 %2375, 10
  %2402 = or i1 %2401, %2400
  br i1 %2402, label %2409, label %2403

2403:                                             ; preds = %2395
  %2404 = getelementptr inbounds i8, ptr %68, i64 8
  store i32 0, ptr %2404, align 8, !tbaa !28
  %2405 = getelementptr inbounds i8, ptr %68, i64 488
  %2406 = load i32, ptr %2405, align 8, !tbaa !29
  %2407 = getelementptr inbounds i8, ptr %68, i64 12
  store i32 %2406, ptr %2407, align 4, !tbaa !30
  %2408 = getelementptr inbounds i8, ptr %2382, i64 40
  store i32 %2406, ptr %2408, align 8, !tbaa !31
  br label %2409

2409:                                             ; preds = %2403, %2395
  %2410 = phi i32 [ 0, %2403 ], [ 1, %2395 ]
  %2411 = getelementptr inbounds i8, ptr %68, i64 496
  store i32 %2410, ptr %2411, align 8
  %2412 = getelementptr inbounds i8, ptr %2389, i64 3556
  %2413 = load i32, ptr %2412, align 4, !tbaa !32
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %2425, label %2415

2415:                                             ; preds = %2409
  %2416 = getelementptr inbounds i8, ptr %68, i64 424
  %2417 = load i32, ptr %2416, align 8, !tbaa !33
  %2418 = icmp eq i32 %2417, 0
  %2419 = getelementptr inbounds i8, ptr %68, i64 8
  %2420 = load i32, ptr %2419, align 8, !tbaa !28
  %2421 = getelementptr inbounds i8, ptr %68, i64 12
  %2422 = select i1 %2418, ptr @DELTA_QP, ptr @DELTA_QP2
  %2423 = select i1 %2418, ptr @QP, ptr @QP2
  store i32 %2420, ptr %2422, align 4, !tbaa !12
  %2424 = load i32, ptr %2421, align 4, !tbaa !30
  store i32 %2424, ptr %2423, align 4, !tbaa !12
  br label %2425

2425:                                             ; preds = %2415, %2409, %2380, %2374, %2369
  %2426 = load ptr, ptr @input, align 8, !tbaa !6
  %2427 = getelementptr inbounds i8, ptr %2426, i64 3136
  %2428 = load i32, ptr %2427, align 8, !tbaa !78
  %2429 = icmp eq i32 %2428, 0
  %2430 = load double, ptr %4, align 8
  %2431 = sitofp i32 %2041 to double
  %2432 = select i1 %2429, double %2431, double %2430
  %2433 = load ptr, ptr @rdopt, align 8, !tbaa !6
  store double %2432, ptr %2433, align 8, !tbaa !127
  %2434 = load ptr, ptr @img, align 8, !tbaa !6
  %2435 = getelementptr inbounds i8, ptr %2434, i64 90220
  %2436 = load i32, ptr %2435, align 4, !tbaa !52
  %2437 = icmp eq i32 %2436, 0
  br i1 %2437, label %2470, label %2438

2438:                                             ; preds = %2425
  %2439 = getelementptr inbounds i8, ptr %2434, i64 12
  %2440 = load i32, ptr %2439, align 4, !tbaa !19
  %2441 = and i32 %2440, 1
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2470, label %2443

2443:                                             ; preds = %2438
  %2444 = load i32, ptr %122, align 8, !tbaa !88
  %2445 = icmp eq i32 %2444, 0
  br i1 %2445, label %2446, label %2470

2446:                                             ; preds = %2443
  br i1 %29, label %2447, label %2454

2447:                                             ; preds = %2446
  %2448 = load i32, ptr %116, align 4, !tbaa !25
  %2449 = icmp eq i32 %2448, 0
  br i1 %2449, label %2450, label %2470

2450:                                             ; preds = %2447
  %2451 = getelementptr inbounds i8, ptr %78, i64 72
  %2452 = load i32, ptr %2451, align 8, !tbaa !88
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2458, label %2470

2454:                                             ; preds = %2446
  %2455 = getelementptr inbounds i8, ptr %78, i64 72
  %2456 = load i32, ptr %2455, align 8, !tbaa !88
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2462, label %2470

2458:                                             ; preds = %2450
  %2459 = getelementptr inbounds i8, ptr %78, i64 364
  %2460 = load i32, ptr %2459, align 4, !tbaa !25
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2462, label %2470

2462:                                             ; preds = %2454, %2458
  %2463 = call signext i32 @field_flag_inference() #12
  %2464 = getelementptr inbounds i8, ptr %3, i64 54
  %2465 = load i16, ptr %2464, align 2, !tbaa !53
  %2466 = sext i16 %2465 to i32
  %2467 = icmp eq i32 %2463, %2466
  br i1 %2467, label %2470, label %2468

2468:                                             ; preds = %2462
  %2469 = load ptr, ptr @rdopt, align 8, !tbaa !6
  store double 1.000000e+30, ptr %2469, align 8, !tbaa !127
  br label %2470

2470:                                             ; preds = %2454, %2450, %2443, %2468, %2462, %2458, %2447, %2438, %2425
  %2471 = load ptr, ptr @input, align 8, !tbaa !6
  %2472 = getelementptr inbounds i8, ptr %2471, i64 3580
  %2473 = load i32, ptr %2472, align 4, !tbaa !108
  %2474 = icmp eq i32 %2473, 0
  br i1 %2474, label %2477, label %2475

2475:                                             ; preds = %2470
  call void @update_refresh_map(i32 noundef signext %101, i32 noundef signext %2051, ptr noundef %68) #12
  %2476 = load ptr, ptr @input, align 8, !tbaa !6
  br label %2477

2477:                                             ; preds = %2475, %2470
  %2478 = phi ptr [ %2476, %2475 ], [ %2471, %2470 ]
  %2479 = getelementptr inbounds i8, ptr %2478, i64 3964
  %2480 = load i32, ptr %2479, align 4, !tbaa !111
  switch i32 %2480, label %2495 [
    i32 1, label %2481
    i32 2, label %2488
  ]

2481:                                             ; preds = %2477
  %2482 = load i16, ptr @best_mode, align 2, !tbaa !10
  %2483 = sext i16 %2482 to i32
  %2484 = load i16, ptr %110, align 2, !tbaa !10
  %2485 = sext i16 %2484 to i64
  %2486 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %2485
  %2487 = load i32, ptr %2486, align 4, !tbaa !12
  call void @skip_intrabk_SAD(i32 noundef signext %2483, i32 noundef signext %2487) #12
  br label %2495

2488:                                             ; preds = %2477
  %2489 = load i16, ptr @best_mode, align 2, !tbaa !10
  %2490 = sext i16 %2489 to i32
  %2491 = load i16, ptr %110, align 2, !tbaa !10
  %2492 = sext i16 %2491 to i64
  %2493 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %2492
  %2494 = load i32, ptr %2493, align 4, !tbaa !12
  call void @simplified_skip_intrabk_SAD(i32 noundef signext %2490, i32 noundef signext %2494) #12
  br label %2495

2495:                                             ; preds = %2477, %2488, %2481
  %2496 = load ptr, ptr @input, align 8, !tbaa !6
  %2497 = getelementptr inbounds i8, ptr %2496, i64 220
  %2498 = load i32, ptr %2497, align 4, !tbaa !129
  %2499 = icmp eq i32 %2498, 0
  br i1 %2499, label %2517, label %2500

2500:                                             ; preds = %2495
  %2501 = load ptr, ptr @img, align 8, !tbaa !6
  %2502 = getelementptr inbounds i8, ptr %2501, i64 24
  %2503 = load i32, ptr %2502, align 8, !tbaa !14
  %2504 = icmp ult i32 %2503, 2
  br i1 %2504, label %2505, label %2517

2505:                                             ; preds = %2500
  %2506 = load i32, ptr %122, align 8, !tbaa !88
  %2507 = add i32 %2506, -9
  %2508 = and i32 %2507, -6
  %2509 = icmp eq i32 %2508, 0
  %2510 = zext i1 %2509 to i32
  %2511 = getelementptr inbounds i8, ptr %2501, i64 89192
  %2512 = load ptr, ptr %2511, align 8, !tbaa !130
  %2513 = getelementptr inbounds i8, ptr %2501, i64 12
  %2514 = load i32, ptr %2513, align 4, !tbaa !19
  %2515 = sext i32 %2514 to i64
  %2516 = getelementptr inbounds i32, ptr %2512, i64 %2515
  store i32 %2510, ptr %2516, align 4, !tbaa !12
  br label %2517

2517:                                             ; preds = %2505, %2500, %2495
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #12
  ret void
}

declare dso_local signext i32 @FmoGetPreviousMBNr(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @decide_intrabk_SAD() local_unnamed_addr #3

declare dso_local void @simplified_decide_intrabk_SAD() local_unnamed_addr #3

declare dso_local signext i32 @RandomIntra(i32 noundef signext) local_unnamed_addr #3

declare dso_local void @Get_Direct_Motion_Vectors() local_unnamed_addr #3

declare dso_local void @assign_enc_picture_params(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @TransformDecision(i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local void @FindSkipModeMotionVector() local_unnamed_addr #3

declare dso_local signext i32 @GetBestTransformP8x8() local_unnamed_addr #3

declare dso_local void @IntraChromaPrediction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @Get_Direct_CostMB(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare dso_local signext i32 @Mode_Decision_for_new_Intra8x8Macroblock(double noundef, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @dct_chroma_DC(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @Mode_Decision_for_Intra4x4Macroblock(double noundef, ptr noundef) local_unnamed_addr #3

declare dso_local void @intrapred_luma_16x16() local_unnamed_addr #3

declare dso_local signext i32 @find_sad_16x16(ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @dct_luma_16x16(i32 noundef signext) local_unnamed_addr #3

declare dso_local signext i32 @dct_chroma(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @set_stored_macroblock_parameters() local_unnamed_addr #3

declare dso_local void @SetCoeffAndReconstruction8x8(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare dso_local void @LumaResidualCoding() local_unnamed_addr #3

declare dso_local void @ChromaResidualCoding(ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @I16Offset(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @SetMotionVectorsMB(ptr noundef, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @set_mbaff_parameters() local_unnamed_addr #3

declare dso_local signext i32 @field_flag_inference() local_unnamed_addr #3

declare dso_local void @update_refresh_map(i32 noundef signext, i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local void @skip_intrabk_SAD(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

declare dso_local void @simplified_skip_intrabk_SAD(i32 noundef signext, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext range(i32 0, 2) i32 @check_for_SI16() local_unnamed_addr #10 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 156
  %3 = load i32, ptr %2, align 4, !tbaa !44
  %4 = getelementptr inbounds i8, ptr %1, i64 152
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr @lrec, align 8, !tbaa !6
  %7 = sext i32 %5 to i64
  %8 = sext i32 %3 to i64
  %9 = add nsw i32 %5, 15
  %10 = sext i32 %9 to i64
  %11 = add nsw i32 %3, 15
  %12 = sext i32 %11 to i64
  br label %13

13:                                               ; preds = %0, %25
  %14 = phi i64 [ %8, %0 ], [ %26, %25 ]
  %15 = getelementptr inbounds ptr, ptr %6, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  br label %20

17:                                               ; preds = %20
  %18 = add nsw i64 %21, 1
  %19 = icmp slt i64 %21, %10
  br i1 %19, label %20, label %25

20:                                               ; preds = %13, %17
  %21 = phi i64 [ %7, %13 ], [ %18, %17 ]
  %22 = getelementptr inbounds i32, ptr %16, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = icmp eq i32 %23, -16
  br i1 %24, label %17, label %28

25:                                               ; preds = %17
  %26 = add nsw i64 %14, 1
  %27 = icmp slt i64 %14, %12
  br i1 %27, label %13, label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ 0, %20 ], [ 1, %25 ]
  ret i32 %29
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !13, i64 24}
!15 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !16, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !7, i64 104, !7, i64 112, !13, i64 120, !7, i64 128, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !13, i64 89200, !13, i64 89204, !13, i64 89208, !13, i64 89212, !8, i64 89216, !13, i64 89280, !13, i64 89284, !13, i64 89288, !13, i64 89292, !13, i64 89296, !17, i64 89304, !13, i64 89312, !13, i64 89316, !13, i64 89320, !13, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !13, i64 89392, !13, i64 89396, !13, i64 89400, !13, i64 89404, !13, i64 89408, !13, i64 89412, !13, i64 89416, !13, i64 89420, !8, i64 89424, !13, i64 90192, !13, i64 90196, !13, i64 90200, !13, i64 90204, !13, i64 90208, !13, i64 90212, !13, i64 90216, !13, i64 90220, !13, i64 90224, !13, i64 90228, !13, i64 90232, !13, i64 90236, !13, i64 90240, !8, i64 90244, !13, i64 90248, !13, i64 90252, !8, i64 90256, !13, i64 90264, !13, i64 90268, !13, i64 90272, !13, i64 90276, !13, i64 90280, !13, i64 90284, !13, i64 90288, !13, i64 90292, !13, i64 90296, !13, i64 90300, !13, i64 90304, !13, i64 90308, !13, i64 90312, !13, i64 90316, !13, i64 90320, !13, i64 90324, !13, i64 90328, !7, i64 90336, !13, i64 90344, !13, i64 90348, !13, i64 90352, !13, i64 90356, !13, i64 90360, !17, i64 90368, !13, i64 90376, !13, i64 90380, !13, i64 90384, !13, i64 90388, !13, i64 90392, !13, i64 90396, !13, i64 90400, !7, i64 90408, !13, i64 90416, !13, i64 90420, !13, i64 90424, !13, i64 90428, !13, i64 90432, !13, i64 90436, !13, i64 90440, !13, i64 90444, !13, i64 90448, !13, i64 90452, !13, i64 90456, !13, i64 90460, !13, i64 90464, !13, i64 90468, !13, i64 90472, !13, i64 90476, !13, i64 90480, !13, i64 90484, !13, i64 90488, !13, i64 90492, !13, i64 90496, !13, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !13, i64 90528, !13, i64 90532, !13, i64 90536, !13, i64 90540, !13, i64 90544, !13, i64 90548, !13, i64 90552, !13, i64 90556, !13, i64 90560, !8, i64 90564, !13, i64 90572, !13, i64 90576, !13, i64 90580, !11, i64 90584, !13, i64 90588, !13, i64 90592}
!16 = !{!"float", !8, i64 0}
!17 = !{!"double", !8, i64 0}
!18 = !{!15, !7, i64 90408}
!19 = !{!15, !13, i64 12}
!20 = !{!17, !17, i64 0}
!21 = !{!22, !13, i64 3920}
!22 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !8, i64 84, !8, i64 148, !13, i64 212, !13, i64 216, !13, i64 220, !13, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !13, i64 1228, !13, i64 1232, !13, i64 1236, !13, i64 1240, !13, i64 1244, !13, i64 1248, !13, i64 1252, !13, i64 1256, !13, i64 1260, !13, i64 1264, !13, i64 1268, !13, i64 1272, !13, i64 1276, !13, i64 1280, !13, i64 1284, !13, i64 1288, !13, i64 1292, !13, i64 1296, !13, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !13, i64 1904, !13, i64 1908, !13, i64 1912, !13, i64 1916, !13, i64 1920, !13, i64 1924, !13, i64 1928, !13, i64 1932, !13, i64 1936, !13, i64 1940, !13, i64 1944, !13, i64 1948, !8, i64 1952, !13, i64 2976, !13, i64 2980, !13, i64 2984, !13, i64 2988, !13, i64 2992, !13, i64 2996, !13, i64 3000, !13, i64 3004, !13, i64 3008, !13, i64 3012, !13, i64 3016, !13, i64 3020, !13, i64 3024, !13, i64 3028, !13, i64 3032, !13, i64 3036, !13, i64 3040, !13, i64 3044, !13, i64 3048, !13, i64 3052, !17, i64 3056, !13, i64 3064, !13, i64 3068, !13, i64 3072, !13, i64 3076, !13, i64 3080, !13, i64 3084, !13, i64 3088, !13, i64 3092, !13, i64 3096, !13, i64 3100, !13, i64 3104, !13, i64 3108, !13, i64 3112, !13, i64 3116, !13, i64 3120, !13, i64 3124, !13, i64 3128, !13, i64 3132, !13, i64 3136, !13, i64 3140, !13, i64 3144, !13, i64 3148, !8, i64 3152, !8, i64 3352, !13, i64 3552, !13, i64 3556, !13, i64 3560, !13, i64 3564, !13, i64 3568, !13, i64 3572, !13, i64 3576, !13, i64 3580, !13, i64 3584, !13, i64 3588, !13, i64 3592, !13, i64 3596, !13, i64 3600, !13, i64 3604, !13, i64 3608, !13, i64 3612, !13, i64 3616, !13, i64 3620, !8, i64 3624, !13, i64 3824, !13, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !13, i64 3864, !13, i64 3868, !13, i64 3872, !13, i64 3876, !13, i64 3880, !13, i64 3884, !13, i64 3888, !13, i64 3892, !13, i64 3896, !13, i64 3900, !13, i64 3904, !13, i64 3908, !13, i64 3912, !13, i64 3916, !13, i64 3920, !13, i64 3924, !13, i64 3928, !8, i64 3932, !13, i64 3964, !13, i64 3968, !13, i64 3972, !13, i64 3976, !13, i64 3980, !13, i64 3984, !13, i64 3988, !13, i64 3992, !13, i64 3996, !13, i64 4000, !13, i64 4004, !8, i64 4008, !8, i64 4056, !13, i64 4256, !13, i64 4260, !13, i64 4264, !13, i64 4268, !8, i64 4272, !13, i64 4312, !13, i64 4316, !13, i64 4320, !13, i64 4324}
!23 = !{!15, !13, i64 90432}
!24 = !{!15, !17, i64 90368}
!25 = !{!26, !13, i64 364}
!26 = !{!"macroblock", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !8, i64 20, !7, i64 56, !7, i64 64, !13, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !13, i64 364, !27, i64 368, !8, i64 376, !8, i64 392, !27, i64 408, !13, i64 416, !13, i64 420, !13, i64 424, !13, i64 428, !13, i64 432, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !13, i64 456, !13, i64 460, !13, i64 464, !13, i64 468, !13, i64 472, !11, i64 476, !17, i64 480, !13, i64 488, !13, i64 492, !13, i64 496, !13, i64 500, !13, i64 504, !13, i64 508, !13, i64 512, !13, i64 516, !13, i64 520}
!27 = !{!"long long", !8, i64 0}
!28 = !{!26, !13, i64 8}
!29 = !{!26, !13, i64 488}
!30 = !{!26, !13, i64 12}
!31 = !{!15, !13, i64 40}
!32 = !{!22, !13, i64 3556}
!33 = !{!26, !13, i64 424}
!34 = !{!15, !13, i64 140}
!35 = !{!15, !13, i64 90296}
!36 = !{!37, !13, i64 0}
!37 = !{!"pix_pos", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!38 = !{!15, !13, i64 136}
!39 = !{!15, !13, i64 90288}
!40 = !{!15, !13, i64 172}
!41 = !{!15, !13, i64 168}
!42 = !{!43, !7, i64 6424}
!43 = !{!"storable_picture", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !13, i64 6360, !13, i64 6364, !13, i64 6368, !13, i64 6372, !13, i64 6376, !13, i64 6380, !13, i64 6384, !13, i64 6388, !13, i64 6392, !13, i64 6396, !13, i64 6400, !13, i64 6404, !13, i64 6408, !13, i64 6412, !13, i64 6416, !7, i64 6424, !7, i64 6432, !7, i64 6440, !7, i64 6448, !7, i64 6456, !7, i64 6464, !7, i64 6472, !7, i64 6480, !7, i64 6488, !7, i64 6496, !7, i64 6504, !7, i64 6512, !7, i64 6520, !7, i64 6528, !7, i64 6536, !7, i64 6544, !13, i64 6552, !13, i64 6556, !13, i64 6560, !13, i64 6564, !13, i64 6568, !13, i64 6572, !13, i64 6576}
!44 = !{!15, !13, i64 156}
!45 = !{!15, !13, i64 152}
!46 = !{!15, !13, i64 180}
!47 = !{!15, !13, i64 176}
!48 = !{!43, !7, i64 6464}
!49 = !{!15, !13, i64 164}
!50 = !{!15, !13, i64 160}
!51 = !{!26, !13, i64 428}
!52 = !{!15, !13, i64 90220}
!53 = !{!54, !11, i64 54}
!54 = !{!"", !17, i64 0, !17, i64 8, !13, i64 16, !8, i64 20, !8, i64 50, !11, i64 54, !8, i64 56, !8, i64 60}
!55 = !{!22, !13, i64 3892}
!56 = !{!22, !13, i64 2984}
!57 = !{!22, !13, i64 3052}
!58 = !{!22, !13, i64 2996}
!59 = !{!22, !13, i64 3000}
!60 = !{!22, !13, i64 3004}
!61 = !{!22, !13, i64 3008}
!62 = !{!22, !13, i64 3012}
!63 = !{!22, !13, i64 3016}
!64 = !{!22, !13, i64 3020}
!65 = !{!15, !13, i64 90316}
!66 = !{!15, !7, i64 90504}
!67 = !{!54, !17, i64 0}
!68 = !{!15, !7, i64 90512}
!69 = !{!54, !17, i64 8}
!70 = !{!15, !7, i64 90520}
!71 = !{!54, !13, i64 16}
!72 = !{!15, !13, i64 28}
!73 = !{!43, !13, i64 6408}
!74 = !{!43, !13, i64 0}
!75 = !{!15, !11, i64 90584}
!76 = !{!22, !13, i64 1296}
!77 = !{!22, !13, i64 1300}
!78 = !{!22, !13, i64 3136}
!79 = !{!8, !8, i64 0}
!80 = !{!22, !13, i64 1264}
!81 = !{!82, !13, i64 1156}
!82 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !8, i64 40, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !13, i64 100, !13, i64 104, !8, i64 108, !13, i64 1132, !13, i64 1136, !13, i64 1140, !13, i64 1144, !13, i64 1148, !13, i64 1152, !13, i64 1156, !13, i64 1160, !13, i64 1164, !13, i64 1168, !13, i64 1172, !13, i64 1176, !13, i64 1180, !83, i64 1184}
!83 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !84, i64 84, !13, i64 496, !84, i64 500, !13, i64 912, !13, i64 916, !13, i64 920, !13, i64 924, !13, i64 928, !13, i64 932, !13, i64 936, !13, i64 940, !13, i64 944}
!84 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !13, i64 396, !13, i64 400, !13, i64 404, !13, i64 408}
!85 = !{!26, !13, i64 468}
!86 = !{!15, !13, i64 90208}
!87 = !{!26, !13, i64 416}
!88 = !{!26, !13, i64 72}
!89 = !{!22, !13, i64 3908}
!90 = !{!22, !13, i64 4312}
!91 = !{!22, !13, i64 3144}
!92 = !{!15, !7, i64 128}
!93 = !{!27, !27, i64 0}
!94 = !{!15, !13, i64 144}
!95 = !{!15, !13, i64 148}
!96 = !{i64 0, i64 8, !20, i64 8, i64 8, !20, i64 16, i64 4, !12, i64 20, i64 30, !79, i64 50, i64 4, !79, i64 54, i64 2, !10, i64 56, i64 4, !79, i64 60, i64 8, !79}
!97 = !{!43, !7, i64 6480}
!98 = !{!43, !7, i64 6488}
!99 = !{i64 0, i64 4, !79, i64 4, i64 2, !10, i64 6, i64 4, !79, i64 10, i64 8, !79}
!100 = !{!15, !7, i64 31576}
!101 = !{!15, !7, i64 14136}
!102 = !{!15, !13, i64 90572}
!103 = !{!15, !13, i64 90212}
!104 = !{!105, !13, i64 0}
!105 = !{!"", !13, i64 0, !8, i64 4, !8, i64 1028, !8, i64 2052, !8, i64 3076, !8, i64 6148, !8, i64 6156, !8, i64 6164, !8, i64 6168, !8, i64 6172, !8, i64 6684, !8, i64 7196}
!106 = !{!15, !13, i64 88}
!107 = !{!15, !13, i64 92}
!108 = !{!22, !13, i64 3580}
!109 = !{!15, !7, i64 104}
!110 = !{!15, !7, i64 89336}
!111 = !{!22, !13, i64 3964}
!112 = !{!43, !7, i64 6504}
!113 = !{!26, !13, i64 464}
!114 = !{!22, !13, i64 4316}
!115 = !{!15, !13, i64 90548}
!116 = !{!22, !13, i64 3024}
!117 = !{!22, !13, i64 3048}
!118 = !{!22, !13, i64 1936}
!119 = !{!22, !13, i64 0}
!120 = !{!15, !13, i64 90540}
!121 = !{!26, !13, i64 472}
!122 = !{!15, !13, i64 90532}
!123 = !{!15, !13, i64 90536}
!124 = !{!26, !13, i64 496}
!125 = !{!15, !7, i64 112}
!126 = !{!15, !13, i64 90196}
!127 = !{!128, !17, i64 0}
!128 = !{!"", !17, i64 0, !8, i64 8, !8, i64 520, !8, i64 1032, !7, i64 1544, !7, i64 1552, !13, i64 1560, !11, i64 1564, !8, i64 1568, !8, i64 1584, !7, i64 1600, !8, i64 1608, !13, i64 1624, !27, i64 1632, !13, i64 1640, !7, i64 1648, !7, i64 1656, !8, i64 1664, !13, i64 1696, !13, i64 1700, !13, i64 1704, !13, i64 1708, !13, i64 1712, !13, i64 1716, !13, i64 1720, !13, i64 1724, !13, i64 1728}
!129 = !{!22, !13, i64 220}
!130 = !{!15, !7, i64 89192}
